//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit84;

interface

uses
  SysUtils, Classes, FXIniFiles, Vcl.Buttons, System.Generics.Collections, System, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.Generics.Collections, System.Rtti, System.Generics.Defaults, System.TypInfo, System.Classes;

type
  TFXIniFile = class(TIniFile)
  published
    //procedure ReadString(Section:string; Ident:string; ?:?; Default:string);//005D6974
  public
    //procedure ReadString(Section:string; Ident:string; ?:?; Default:string); virtual;//v4//005D6974
  end;
  TButtonLayout = (blGlyphLeft, blGlyphRight, blGlyphTop, blGlyphBottom);
  TButtonState = (bsUp, bsDisabled, bsDown, bsExclusive);
  TButtonStyle = (bsAutoDetect, bsWin31, bsNew);
  TSpeedButtonActionLink = class(TControlActionLink)
  published
    constructor Create;//005DAF70
  public
    FClient:TSpeedButton;//f20
    FImageIndex:Integer;//f24
    //function IsCheckedLinked:?; virtual;//v28//005DAFAC
    //function IsGroupIndexLinked:?; virtual;//v30//005DB0B0
    //function IsImageIndexLinked:?; virtual;//v40//005DB0E0
    procedure SetChecked(Value:Boolean); virtual;//v58//005DB104
    procedure SetGroupIndex(Value:Integer); virtual;//v60//005DB124
    //procedure v74(?:?); virtual;//v74//005DB144
    //function vA0(?:?):?; virtual;//vA0//005DAFEC
  end;
  TSpeedButton = class(TGraphicControl)
  published
    destructor Destroy();//005DB2A8
    constructor Create(AOwner:TComponent);//005DB1E8
    procedure Click;//005DBBDC
  public
    FGroupIndex:Integer;//f1C0
    FDragging:Boolean;//f1C1
    FAllowAllUp:Boolean;//f1C2
    FLayout:TButtonLayout;//f1C3
    FGlyph:TObject;//f1C4
    FDown:Boolean;//f1C8
    FDragging:Boolean;//f1C9
    FAllowAllUp:Boolean;//f1CA
    FLayout:TButtonLayout;//f1CB
    FSpacing:Integer;//f1CC
    FTransparent:Boolean;//f1D0
    FMouseInControl:Boolean;//f1D1
    FState:TButtonState;//f1D2
    FMargin:Integer;//f1D4
    FFlat:Boolean;//f1D8
    FMouseInControl:Boolean;//f1D9
    FState:TButtonState;//f1DA
    destructor Destroy(); virtual;//005DB2A8
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//005DB9AC
    constructor Create(AOwner:TComponent); virtual;//v3C//005DB1E8
    procedure vB8; virtual;//vB8//005DB338
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//005DBEB8
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//005DBF80
    procedure CMEnabledChanged; message CM_ENABLEDCHANGED;//005DBED8
    procedure CMFontChanged; message CM_FONTCHANGED;//005DC018
    procedure CMTextChanged; message CM_TEXTCHANGED;//005DC028
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//005DC05C
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//005DC0D8
    //procedure CMButtonPressed(?:?); message CM_BUTTONPRESSED;//005DBF0C
    procedure CMSysColorChange; message CM_SYSCOLORCHANGE;//005DC038
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?); dynamic;//005DBADC
    //procedure sub_004E8F54(?:?; ?:?; ?:?); dynamic;//005DBA34
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?); dynamic;//005DB9D8
    procedure sub_004E9934; dynamic;//005DBBF8
    procedure Click; dynamic;//005DBBDC
    //procedure sub_004E980C(?:?; ?:?); dynamic;//005DC164
    procedure SetGlyph(Value:TBitmap);//005DBC0C
    //function GetNumGlyphs:?;//005DBC28
    procedure SetNumGlyphs(Value:TNumGlyphs);//005DBC34
    function IsStoredGlyph(Value:TBitmap):Boolean;//005DBC74
    procedure SetDown(Value:Boolean);//005DBD60
    procedure SetFlat(Value:Boolean);//005DBDD0
    procedure SetGroupIndex(Value:Integer);//005DBDF0
    procedure SetLayout(Value:TButtonLayout);//005DBE04
    procedure SetMargin(Value:Integer);//005DBE24
    procedure SetSpacing(Value:Integer);//005DBE48
    procedure SetTransparent(Value:Boolean);//005DBE68
    procedure SetAllowAllUp(Value:Boolean);//005DBEA4
  end;
  TBitBtnActionLink = class(TControlActionLink)
  published
    constructor Create(AClient:TObject);//005DD174
  public
    FClient:TBitBtn;//f20
    FImageIndex:Integer;//f24
    procedure AssignClient(AClient:TObject); virtual;//v0//005DD150
    constructor Create(AClient:TObject); virtual;//v14//005DD174
    //function IsImageIndexLinked:?; virtual;//v40//005DD1B0
    //procedure v74(?:?); virtual;//v74//005DD298
  end;
  TBitBtnKind = (bkCustom, bkOK, bkCancel, bkHelp, bkYes, bkNo, bkClose, bkAbort, bkRetry, bkIgnore, bkAll);
  TBitBtn = class(TCustomButton)
  published
    procedure Click;//005DC3E4
    destructor Destroy();//005DC348
    constructor Create(AOwner:TComponent);//005DC294
  public
    FCanvas:TCanvas;//f2E8
    FKind:TBitBtnKind;//f2E9
    FLayout:TButtonLayout;//f2EA
    FGlyph:TObject;//f2EC
    FStyle:TButtonStyle;//f2F0
    FKind:TBitBtnKind;//f2F1
    FLayout:TButtonLayout;//f2F2
    FSpacing:Integer;//f2F4
    FModifiedGlyph:Boolean;//f2F5
    FMouseInControl:Boolean;//f2F6
    FMargin:Integer;//f2F8
    IsFocused:Boolean;//f2FC
    FModifiedGlyph:Boolean;//f2FD
    FMouseInControl:Boolean;//f2FE
    destructor Destroy(); virtual;//005DC348
    constructor Create(AOwner:TComponent); virtual;//v3C//005DC294
    procedure v9C; virtual;//v9C//005DC3D4
    procedure vC0; virtual;//vC0//005DC384
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//005DC3B0
    //procedure v110(?:?); virtual;//v110//005DC3C0
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//005DC9B4
    procedure CMEnabledChanged; message CM_ENABLEDCHANGED;//005DC99C
    procedure CMFontChanged; message CM_FONTCHANGED;//005DC984
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//005DCED4
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//005DCF1C
    //procedure sub_005DC4A4(?:?); dynamic;//005DC4A4
    //procedure sub_005DC494(?:?); dynamic;//005DC494
    procedure sub_004E5D1C; dynamic;//005DC9D4
    procedure sub_004E9934; dynamic;//005DCF58
    procedure Click; dynamic;//005DC3E4
    //procedure sub_004E980C(?:?; ?:?); dynamic;//005DCDC0
    function GetGlyph:TBitmap;//005DBC00
    procedure InternalCopyImage(Image:TBitmap; ImageList:ImgList.TCustomImageList; Index:Integer);//005DBCA0
    procedure CopyImage(ImageList:ImgList.TCustomImageList; Index:Integer);//005DC144
  end;
  TBitBtnStyleHook = class(TButtonStyleHook)
  public
    //procedure v40(?:?; ?:?); virtual;//v40//005DCF60
  end;
  TList<System.Integer>.arrayofT = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
  TList<System.Integer>.TEnumerator = class(TEnumerator<System.Integer>)
  published
    function Integer>.TEnumerator.MoveNext:Boolean;//005DD6B4
    constructor sub_005DD670(AList:TList<System.Integer>);//005DD670
  public
    FList:TList<System.Integer>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//005DD660
    procedure v4; virtual;//v4//005DD668
  end;
  TList<System.Integer> = class(TEnumerable<System.Integer>)
  published
    function Integer>.Add(Value:Integer):Integer;//005DD610
    //procedure Integer>.Error(Msg:string; Data:NativeInt; ?:?);//005DD5D8
    procedure Integer>.GetEnumerator;//005DD634
    function Integer>.ToArray:TArray<System.Integer>;//005DD620
    constructor sub_005DD4DC(AComparer:IComparer<System.Integer>);//005DD4DC
    constructor Classes.TShortCut>.Create();//005DD464
    destructor Integer>.Destroy();//005DD58C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Integer>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Integer>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Integer>;//f10
    FArrayManager:TArrayManager<System.Integer>;//f18
    FItems:TList<System.Integer>.arrayofT;//f20
    FComparer:IComparer<System.Integer>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Integer>;//f28
    destructor Integer>.Destroy(); virtual;//005DD58C
    procedure v0; virtual;//v0//005DD444
    //procedure v8(?:?); virtual;//v8//005DD44C
    //procedure Integer>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//005DD5D8
  end;
  TGlyphList = class(TImageList)
  published
    function AddMasked(Image:TBitmap; MaskColor:TColor):Integer;//005D9E38
    procedure Delete(Index:Integer);//005D9E64
    constructor sub_005D9D68(AWidth:Integer; AHeight:Integer);//005D9D68
    destructor Destroy();//005D9DBC
  public
    Used:TBits;//fB0
    FCount:Integer;//fB4
    destructor Destroy(); virtual;//005D9DBC
  end;
  TGlyphCache = class(TObject)
  published
    procedure ReturnList(List:TGlyphList);//005D9F64
    function Empty:Boolean;//005D9F8C
    function GetList(AWidth:Integer; AHeight:Integer):TGlyphList;//005D9F04
    constructor Create();//005D9E94
    destructor Destroy();//005D9ED8
  public
    GlyphLists:TList;//f4
  end;
  TButtonGlyph = class(TObject)
  published
    function Draw(Canvas:TCanvas; Client:TRect; BiDiFlags:Integer; Transparent:Boolean; State:TButtonState; Spacing:Integer; Margin:Integer; Layout:TButtonLayout; Caption:string; Offset:TPoint):TRect;//005DAED8
    destructor Destroy();//005DA034
    constructor Create();//005D9F98
  public
    FOriginal:TBitmap;//f4
    FGlyphList:TGlyphList;//f8
    FIndexs:?;//fC
    FTransparentColor:TColor;//f1C
    FNumGlyphs:TNumGlyphs;//f20
    FPaintOnGlass:Boolean;//f21
    FThemeDetails:TThemedElementDetails;//f24
    FThemesEnabled:Boolean;//f30
    FOnChange:TNotifyEvent;//f38
    f3C:TSpeedButton;//f3C
    FThemeTextColor:Boolean;//f40
    procedure Invalidate;//005DA090
    procedure GlyphChanged(Sender:TObject);//005DA0D4
    procedure SetGlyph(Value:TBitmap);//005DA104
    procedure SetNumGlyphs(Value:TNumGlyphs);//005DA17C
    function CreateButtonGlyph(State:TButtonState):Integer;//005DA1A4
    procedure DrawButtonGlyph(Canvas:Graphics.TCanvas; const GlyphPos:Types.TPoint; State:TButtonState; Transparent:Boolean);//005DA778
    procedure DrawButtonText(Canvas:Graphics.TCanvas; const Caption:UnicodeString; TextBounds:Types.TRect; State:TButtonState; Flags:LongInt);//005DAA7C
    procedure CalcButtonLayout(Canvas:Graphics.TCanvas; const Client:Types.TRect; const Offset:Types.TPoint; const Caption:UnicodeString; Layout:TButtonLayout; Margin:Integer; Spacing:Integer; var GlyphPos:Types.TPoint; var TextBounds:Types.TRect; BiDiFlags:LongInt);//005DAB50
  end;
    //function sub_005D955C(?:TBitBtnKind):?;//005D955C
    //function sub_005D9DEC(?:?):?;//005D9DEC
    procedure DoDrawText(DC:Windows.HDC; const Text:UnicodeString; var TextRect:Types.TRect; TextFlags:Cardinal);//005DA968
    procedure AssignClient(AClient:TObject);//005DAF4C
    //function IsCheckedLinked:?;//005DAFAC
    //function sub_005DAFEC(?:?):?;//005DAFEC
    //function IsGroupIndexLinked:?;//005DB0B0
    //function IsImageIndexLinked:?;//005DB0E0
    procedure SetChecked(Value:Boolean);//005DB104
    procedure SetGroupIndex(Value:Integer);//005DB124
    //procedure sub_005DB144(?:?);//005DB144
    //function sub_005DB2E0(?:?):?;//005DB2E0
    procedure sub_005DB338;//005DB338
    procedure sub_005DB948(?:TSpeedButton);//005DB948
    procedure CMFontChanged(var Message:TMessage);//005DB9AC
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?);//005DB9D8
    //procedure sub_004E8F54(?:?; ?:?; ?:?);//005DBA34
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?);//005DBADC
    procedure GetPalette;//005DBBE4
    procedure sub_004E9934;//005DBBF8
    //procedure sub_005DBC64(?:?);//005DBC64
    procedure sub_005DBD28(?:TSpeedButton);//005DBD28
    //procedure WMLButtonDblClk(?:?);//005DBEB8
    procedure CMEnabledChanged;//005DBED8
    //procedure CMButtonPressed(?:?);//005DBF0C
    //procedure CMDialogChar(?:?);//005DBF80
    procedure CMFontChanged;//005DC018
    procedure CMTextChanged;//005DC028
    procedure CMSysColorChange;//005DC038
    //procedure CMMouseEnter(?:?);//005DC05C
    //procedure CMMouseLeave(?:?);//005DC0D8
    //procedure sub_004E980C(?:?; ?:?);//005DC164

implementation

//005D6974
{*procedure TFXIniFile.ReadString(Section:string; Ident:string; ?:?; Default:string);
begin
 005D6974    push        ebp
 005D6975    mov         ebp,esp
 005D6977    add         esp,0FFFFFFF8
 005D697A    push        ebx
 005D697B    push        esi
 005D697C    push        edi
 005D697D    xor         ebx,ebx
 005D697F    mov         dword ptr [ebp-8],ebx
 005D6982    mov         dword ptr [ebp-4],ecx
 005D6985    mov         edi,edx
 005D6987    mov         esi,eax
 005D6989    mov         ebx,dword ptr [ebp+8]
 005D698C    xor         eax,eax
 005D698E    push        ebp
 005D698F    push        5D69FA
 005D6994    push        dword ptr fs:[eax]
 005D6997    mov         dword ptr fs:[eax],esp
 005D699A    mov         eax,ebx
 005D699C    call        @UStrClr
 005D69A1    cmp         dword ptr [esi+4],0;TFXIniFile.........FFileName:string
>005D69A5    je          005D69B6
 005D69A7    push        0
 005D69A9    push        ebx
 005D69AA    mov         ecx,dword ptr [ebp-4]
 005D69AD    mov         edx,edi
 005D69AF    mov         eax,esi
 005D69B1    call        TIniFile.ReadString
 005D69B6    cmp         dword ptr [ebx],0
>005D69B9    jne         005D69C5
 005D69BB    mov         eax,ebx
 005D69BD    mov         edx,dword ptr [ebp+0C]
 005D69C0    call        @UStrAsg
 005D69C5    lea         eax,[ebp-8]
 005D69C8    push        eax
 005D69C9    mov         eax,dword ptr [ebx]
 005D69CB    mov         ecx,5D6A18;'
'
 005D69D0    mov         edx,5D6A2C;'\n'
 005D69D5    call        AnsiReplaceStr
 005D69DA    mov         edx,dword ptr [ebp-8]
 005D69DD    mov         eax,ebx
 005D69DF    call        @UStrAsg
 005D69E4    xor         eax,eax
 005D69E6    pop         edx
 005D69E7    pop         ecx
 005D69E8    pop         ecx
 005D69E9    mov         dword ptr fs:[eax],edx
 005D69EC    push        5D6A01
 005D69F1    lea         eax,[ebp-8]
 005D69F4    call        @UStrClr
 005D69F9    ret
>005D69FA    jmp         @HandleFinally
>005D69FF    jmp         005D69F1
 005D6A01    pop         edi
 005D6A02    pop         esi
 005D6A03    pop         ebx
 005D6A04    pop         ecx
 005D6A05    pop         ecx
 005D6A06    pop         ebp
 005D6A07    ret         8
end;*}

//005D955C
{*function sub_005D955C(?:TBitBtnKind):?;
begin
 005D955C    push        ebp
 005D955D    mov         ebp,esp
 005D955F    push        0
 005D9561    push        ebx
 005D9562    push        esi
 005D9563    push        edi
 005D9564    mov         ebx,eax
 005D9566    xor         eax,eax
 005D9568    push        ebp
 005D9569    push        5D95D4
 005D956E    push        dword ptr fs:[eax]
 005D9571    mov         dword ptr fs:[eax],esp
 005D9574    mov         esi,ebx
 005D9576    and         esi,7F
 005D9579    cmp         dword ptr [esi*4+7CA804],0;gvar_007CA804:Pointer
>005D9581    jne         005D95B7
 005D9583    mov         dl,1
 005D9585    mov         eax,[004C1D10];TBitmap
 005D958A    call        TBitmap.Create;TBitmap.Create
 005D958F    mov         edi,eax
 005D9591    mov         dword ptr [esi*4+7CA804],edi;gvar_007CA804:Pointer
 005D9598    lea         eax,[ebp-4]
 005D959B    mov         edx,dword ptr [esi*4+7A1DEC]
 005D95A2    call        @UStrFromPWChar
 005D95A7    mov         ecx,dword ptr [ebp-4]
 005D95AA    mov         eax,edi
 005D95AC    mov         edx,dword ptr ds:[7C7C54];gvar_007C7C54
 005D95B2    call        TBitmap.LoadFromResourceName
 005D95B7    mov         ebx,dword ptr [esi*4+7CA804];gvar_007CA804:Pointer
 005D95BE    xor         eax,eax
 005D95C0    pop         edx
 005D95C1    pop         ecx
 005D95C2    pop         ecx
 005D95C3    mov         dword ptr fs:[eax],edx
 005D95C6    push        5D95DB
 005D95CB    lea         eax,[ebp-4]
 005D95CE    call        @UStrClr
 005D95D3    ret
>005D95D4    jmp         @HandleFinally
>005D95D9    jmp         005D95CB
 005D95DB    mov         eax,ebx
 005D95DD    pop         edi
 005D95DE    pop         esi
 005D95DF    pop         ebx
 005D95E0    pop         ecx
 005D95E1    pop         ebp
 005D95E2    ret
end;*}

//005D9D68
constructor sub_005D9D68(AWidth:Integer; AHeight:Integer);
begin
{*
 005D9D68    push        ebp
 005D9D69    mov         ebp,esp
 005D9D6B    push        ebx
 005D9D6C    push        esi
 005D9D6D    test        dl,dl
>005D9D6F    je          005D9D79
 005D9D71    add         esp,0FFFFFFF0
 005D9D74    call        @ClassCreate
 005D9D79    mov         ebx,edx
 005D9D7B    mov         esi,eax
 005D9D7D    mov         eax,dword ptr [ebp+8]
 005D9D80    push        eax
 005D9D81    xor         edx,edx
 005D9D83    mov         eax,esi
 005D9D85    call        TDragImageList.Create
 005D9D8A    mov         dl,1
 005D9D8C    mov         eax,[0046D5A0];TBits
 005D9D91    call        TObject.Create;TBits.Create
 005D9D96    mov         dword ptr [esi+0B0],eax;TGlyphList.Used:TBits
 005D9D9C    mov         eax,esi
 005D9D9E    test        bl,bl
>005D9DA0    je          005D9DB1
 005D9DA2    call        @AfterConstruction
 005D9DA7    pop         dword ptr fs:[0]
 005D9DAE    add         esp,0C
 005D9DB1    mov         eax,esi
 005D9DB3    pop         esi
 005D9DB4    pop         ebx
 005D9DB5    pop         ebp
 005D9DB6    ret         4
*}
end;

//005D9DBC
destructor TGlyphList.Destroy();
begin
{*
 005D9DBC    push        ebx
 005D9DBD    push        esi
 005D9DBE    call        @BeforeDestruction
 005D9DC3    mov         ebx,edx
 005D9DC5    mov         esi,eax
 005D9DC7    mov         eax,dword ptr [esi+0B0];TGlyphList.Used:TBits
 005D9DCD    call        TObject.Free
 005D9DD2    mov         dl,0FC
 005D9DD4    and         dl,bl
 005D9DD6    mov         eax,esi
 005D9DD8    call        TCustomImageList.Destroy
 005D9DDD    test        bl,bl
>005D9DDF    jle         005D9DE8
 005D9DE1    mov         eax,esi
 005D9DE3    call        @ClassDestroy
 005D9DE8    pop         esi
 005D9DE9    pop         ebx
 005D9DEA    ret
*}
end;

//005D9DEC
{*function sub_005D9DEC(?:?):?;
begin
 005D9DEC    push        ebx
 005D9DED    push        esi
 005D9DEE    mov         ebx,eax
 005D9DF0    mov         eax,dword ptr [ebx+0B0]
 005D9DF6    call        TBits.OpenBit
 005D9DFB    mov         esi,eax
 005D9DFD    mov         eax,dword ptr [ebx+0B0]
 005D9E03    cmp         esi,dword ptr [eax+4]
>005D9E06    jl          005D9E23
 005D9E08    xor         ecx,ecx
 005D9E0A    xor         edx,edx
 005D9E0C    mov         eax,ebx
 005D9E0E    call        TCustomImageList.Add
 005D9E13    mov         esi,eax
 005D9E15    lea         edx,[esi+1]
 005D9E18    mov         eax,dword ptr [ebx+0B0]
 005D9E1E    call        TBits.SetSize
 005D9E23    mov         cl,1
 005D9E25    mov         edx,esi
 005D9E27    mov         eax,dword ptr [ebx+0B0]
 005D9E2D    call        TBits.SetBit
 005D9E32    mov         eax,esi
 005D9E34    pop         esi
 005D9E35    pop         ebx
 005D9E36    ret
end;*}

//005D9E38
function TGlyphList.AddMasked(Image:TBitmap; MaskColor:TColor):Integer;
begin
{*
 005D9E38    push        ebx
 005D9E39    push        esi
 005D9E3A    push        edi
 005D9E3B    push        ebp
 005D9E3C    mov         ebp,ecx
 005D9E3E    mov         edi,edx
 005D9E40    mov         ebx,eax
 005D9E42    mov         eax,ebx
 005D9E44    call        005D9DEC
 005D9E49    mov         esi,eax
 005D9E4B    push        ebp
 005D9E4C    mov         ecx,edi
 005D9E4E    mov         edx,esi
 005D9E50    mov         eax,ebx
 005D9E52    call        TCustomImageList.ReplaceMasked
 005D9E57    inc         dword ptr [ebx+0B4]
 005D9E5D    mov         eax,esi
 005D9E5F    pop         ebp
 005D9E60    pop         edi
 005D9E61    pop         esi
 005D9E62    pop         ebx
 005D9E63    ret
*}
end;

//005D9E64
procedure TGlyphList.Delete(Index:Integer);
begin
{*
 005D9E64    push        ebx
 005D9E65    push        esi
 005D9E66    mov         esi,edx
 005D9E68    mov         ebx,eax
 005D9E6A    mov         edx,esi
 005D9E6C    mov         eax,dword ptr [ebx+0B0]
 005D9E72    call        TBits.GetBit
 005D9E77    test        al,al
>005D9E79    je          005D9E90
 005D9E7B    dec         dword ptr [ebx+0B4]
 005D9E81    xor         ecx,ecx
 005D9E83    mov         edx,esi
 005D9E85    mov         eax,dword ptr [ebx+0B0]
 005D9E8B    call        TBits.SetBit
 005D9E90    pop         esi
 005D9E91    pop         ebx
 005D9E92    ret
*}
end;

//005D9E94
constructor TGlyphCache.Create();
begin
{*
 005D9E94    push        ebx
 005D9E95    push        esi
 005D9E96    test        dl,dl
>005D9E98    je          005D9EA2
 005D9E9A    add         esp,0FFFFFFF0
 005D9E9D    call        @ClassCreate
 005D9EA2    mov         ebx,edx
 005D9EA4    mov         esi,eax
 005D9EA6    xor         edx,edx
 005D9EA8    mov         eax,esi
 005D9EAA    call        TObject.Create
 005D9EAF    mov         dl,1
 005D9EB1    mov         eax,[0046C204];TList
 005D9EB6    call        TObject.Create
 005D9EBB    mov         dword ptr [esi+4],eax
 005D9EBE    mov         eax,esi
 005D9EC0    test        bl,bl
>005D9EC2    je          005D9ED3
 005D9EC4    call        @AfterConstruction
 005D9EC9    pop         dword ptr fs:[0]
 005D9ED0    add         esp,0C
 005D9ED3    mov         eax,esi
 005D9ED5    pop         esi
 005D9ED6    pop         ebx
 005D9ED7    ret
*}
end;

//005D9ED8
destructor TGlyphCache.Destroy();
begin
{*
 005D9ED8    push        ebx
 005D9ED9    push        esi
 005D9EDA    call        @BeforeDestruction
 005D9EDF    mov         ebx,edx
 005D9EE1    mov         esi,eax
 005D9EE3    mov         eax,dword ptr [esi+4]
 005D9EE6    call        TObject.Free
 005D9EEB    mov         dl,0FC
 005D9EED    and         dl,bl
 005D9EEF    mov         eax,esi
 005D9EF1    call        TObject.Destroy
 005D9EF6    test        bl,bl
>005D9EF8    jle         005D9F01
 005D9EFA    mov         eax,esi
 005D9EFC    call        @ClassDestroy
 005D9F01    pop         esi
 005D9F02    pop         ebx
 005D9F03    ret
*}
end;

//005D9F04
function TGlyphCache.GetList(AWidth:Integer; AHeight:Integer):TGlyphList;
begin
{*
 005D9F04    push        ebx
 005D9F05    push        esi
 005D9F06    push        edi
 005D9F07    push        ebp
 005D9F08    push        ecx
 005D9F09    mov         dword ptr [esp],ecx
 005D9F0C    mov         ebp,edx
 005D9F0E    mov         edi,eax
 005D9F10    mov         eax,dword ptr [edi+4]
 005D9F13    mov         esi,dword ptr [eax+8]
 005D9F16    dec         esi
 005D9F17    cmp         esi,0
>005D9F1A    jl          005D9F3B
 005D9F1C    mov         eax,dword ptr [edi+4]
 005D9F1F    mov         edx,esi
 005D9F21    call        TList.Get
 005D9F26    mov         ebx,eax
 005D9F28    cmp         ebp,dword ptr [ebx+54]
>005D9F2B    jne         005D9F35
 005D9F2D    mov         eax,dword ptr [ebx+50]
 005D9F30    cmp         eax,dword ptr [esp]
>005D9F33    je          005D9F59
 005D9F35    dec         esi
 005D9F36    cmp         esi,0FFFFFFFF
>005D9F39    jne         005D9F1C
 005D9F3B    mov         eax,dword ptr [esp]
 005D9F3E    push        eax
 005D9F3F    mov         ecx,ebp
 005D9F41    mov         dl,1
 005D9F43    mov         eax,[005D95E4];TGlyphList
 005D9F48    call        005D9D68
 005D9F4D    mov         ebx,eax
 005D9F4F    mov         eax,dword ptr [edi+4]
 005D9F52    mov         edx,ebx
 005D9F54    call        TList.Add
 005D9F59    mov         eax,ebx
 005D9F5B    pop         edx
 005D9F5C    pop         ebp
 005D9F5D    pop         edi
 005D9F5E    pop         esi
 005D9F5F    pop         ebx
 005D9F60    ret
*}
end;

//005D9F64
procedure TGlyphCache.ReturnList(List:TGlyphList);
begin
{*
 005D9F64    push        ebx
 005D9F65    mov         ebx,edx
 005D9F67    test        ebx,ebx
>005D9F69    je          005D9F87
 005D9F6B    cmp         dword ptr [ebx+0B4],0
>005D9F72    jne         005D9F87
 005D9F74    mov         eax,dword ptr [eax+4]
 005D9F77    mov         edx,ebx
 005D9F79    xor         ecx,ecx
 005D9F7B    call        TList.RemoveItem
 005D9F80    mov         eax,ebx
 005D9F82    call        TObject.Free
 005D9F87    pop         ebx
 005D9F88    ret
*}
end;

//005D9F8C
function TGlyphCache.Empty:Boolean;
begin
{*
 005D9F8C    mov         eax,dword ptr [eax+4]
 005D9F8F    cmp         dword ptr [eax+8],0
 005D9F93    sete        al
 005D9F96    ret
*}
end;

//005D9F98
constructor TButtonGlyph.Create();
begin
{*
 005D9F98    push        ebp
 005D9F99    mov         ebp,esp
 005D9F9B    push        ecx
 005D9F9C    push        ebx
 005D9F9D    push        esi
 005D9F9E    test        dl,dl
>005D9FA0    je          005D9FAA
 005D9FA2    add         esp,0FFFFFFF0
 005D9FA5    call        @ClassCreate
 005D9FAA    mov         byte ptr [ebp-1],dl
 005D9FAD    mov         ebx,eax
 005D9FAF    xor         edx,edx
 005D9FB1    mov         eax,ebx
 005D9FB3    call        TObject.Create
 005D9FB8    mov         dl,1
 005D9FBA    mov         eax,[004C1D10];TBitmap
 005D9FBF    call        TBitmap.Create
 005D9FC4    mov         esi,eax
 005D9FC6    mov         dword ptr [ebx+4],esi
 005D9FC9    mov         dword ptr [esi+14],ebx
 005D9FCC    mov         dword ptr [esi+10],5DA0D4;TButtonGlyph.GlyphChanged
 005D9FD3    mov         dword ptr [ebx+1C],8080
 005D9FDA    mov         byte ptr [ebx+20],1
 005D9FDE    mov         byte ptr [ebx+21],0
 005D9FE2    mov         byte ptr [ebx+30],0
 005D9FE6    mov         byte ptr [ebx+40],1
 005D9FEA    xor         eax,eax
 005D9FEC    movzx       edx,al
 005D9FEF    mov         dword ptr [ebx+edx*4+0C],0FFFFFFFF
 005D9FF7    inc         eax
 005D9FF8    cmp         al,4
>005D9FFA    jne         005D9FEC
 005D9FFC    cmp         dword ptr ds:[7A1E70],0
>005DA003    jne         005DA016
 005DA005    mov         dl,1
 005DA007    mov         eax,[005D9848];TGlyphCache
 005DA00C    call        TGlyphCache.Create
 005DA011    mov         [007A1E70],eax
 005DA016    mov         eax,ebx
 005DA018    cmp         byte ptr [ebp-1],0
>005DA01C    je          005DA02D
 005DA01E    call        @AfterConstruction
 005DA023    pop         dword ptr fs:[0]
 005DA02A    add         esp,0C
 005DA02D    mov         eax,ebx
 005DA02F    pop         esi
 005DA030    pop         ebx
 005DA031    pop         ecx
 005DA032    pop         ebp
 005DA033    ret
*}
end;

//005DA034
destructor TButtonGlyph.Destroy();
begin
{*
 005DA034    push        ebx
 005DA035    push        esi
 005DA036    call        @BeforeDestruction
 005DA03B    mov         ebx,edx
 005DA03D    mov         esi,eax
 005DA03F    mov         eax,dword ptr [esi+4]
 005DA042    call        TObject.Free
 005DA047    mov         eax,esi
 005DA049    call        TButtonGlyph.Invalidate
 005DA04E    cmp         dword ptr ds:[7A1E70],0
>005DA055    je          005DA076
 005DA057    mov         eax,[007A1E70]
 005DA05C    call        TGlyphCache.Empty
 005DA061    test        al,al
>005DA063    je          005DA076
 005DA065    mov         eax,[007A1E70]
 005DA06A    call        TObject.Free
 005DA06F    xor         eax,eax
 005DA071    mov         [007A1E70],eax
 005DA076    mov         dl,0FC
 005DA078    and         dl,bl
 005DA07A    mov         eax,esi
 005DA07C    call        TObject.Destroy
 005DA081    test        bl,bl
>005DA083    jle         005DA08C
 005DA085    mov         eax,esi
 005DA087    call        @ClassDestroy
 005DA08C    pop         esi
 005DA08D    pop         ebx
 005DA08E    ret
*}
end;

//005DA090
procedure TButtonGlyph.Invalidate;
begin
{*
 005DA090    push        ebx
 005DA091    push        esi
 005DA092    push        edi
 005DA093    mov         esi,eax
 005DA095    xor         ebx,ebx
 005DA097    mov         edi,ebx
 005DA099    and         edi,7F
 005DA09C    mov         eax,dword ptr [esi+edi*4+0C]
 005DA0A0    cmp         eax,0FFFFFFFF
>005DA0A3    je          005DA0AF
 005DA0A5    mov         edx,eax
 005DA0A7    mov         eax,dword ptr [esi+8]
 005DA0AA    call        TGlyphList.Delete
 005DA0AF    mov         dword ptr [esi+edi*4+0C],0FFFFFFFF
 005DA0B7    inc         ebx
 005DA0B8    cmp         bl,4
>005DA0BB    jne         005DA097
 005DA0BD    mov         edx,dword ptr [esi+8]
 005DA0C0    mov         eax,[007A1E70]
 005DA0C5    call        TGlyphCache.ReturnList
 005DA0CA    xor         eax,eax
 005DA0CC    mov         dword ptr [esi+8],eax
 005DA0CF    pop         edi
 005DA0D0    pop         esi
 005DA0D1    pop         ebx
 005DA0D2    ret
*}
end;

//005DA0D4
procedure TButtonGlyph.GlyphChanged(Sender:TObject);
begin
{*
 005DA0D4    push        ebx
 005DA0D5    push        esi
 005DA0D6    mov         ebx,eax
 005DA0D8    mov         esi,dword ptr [ebx+4]
 005DA0DB    cmp         edx,esi
>005DA0DD    jne         005DA0FF
 005DA0DF    mov         eax,esi
 005DA0E1    call        TBitmap.GetTransparentColor
 005DA0E6    mov         dword ptr [ebx+1C],eax
 005DA0E9    mov         eax,ebx
 005DA0EB    call        TButtonGlyph.Invalidate
 005DA0F0    cmp         word ptr [ebx+3A],0
>005DA0F5    je          005DA0FF
 005DA0F7    mov         edx,ebx
 005DA0F9    mov         eax,dword ptr [ebx+3C]
 005DA0FC    call        dword ptr [ebx+38]
 005DA0FF    pop         esi
 005DA100    pop         ebx
 005DA101    ret
*}
end;

//005DA104
procedure TButtonGlyph.SetGlyph(Value:TBitmap);
begin
{*
 005DA104    push        ebx
 005DA105    push        esi
 005DA106    mov         ebx,edx
 005DA108    mov         esi,eax
 005DA10A    mov         eax,esi
 005DA10C    call        TButtonGlyph.Invalidate
 005DA111    mov         edx,ebx
 005DA113    mov         eax,dword ptr [esi+4]
 005DA116    mov         ecx,dword ptr [eax]
 005DA118    call        dword ptr [ecx+8]
 005DA11B    test        ebx,ebx
>005DA11D    je          005DA179
 005DA11F    mov         eax,ebx
 005DA121    mov         edx,dword ptr [eax]
 005DA123    call        dword ptr [edx+24]
 005DA126    test        eax,eax
>005DA128    jle         005DA179
 005DA12A    mov         eax,ebx
 005DA12C    call        TBitmap.GetTransparentColor
 005DA131    mov         dword ptr [esi+1C],eax
 005DA134    mov         eax,ebx
 005DA136    mov         edx,dword ptr [eax]
 005DA138    call        dword ptr [edx+30]
 005DA13B    push        eax
 005DA13C    mov         eax,ebx
 005DA13E    mov         edx,dword ptr [eax]
 005DA140    call        dword ptr [edx+24]
 005DA143    mov         edx,eax
 005DA145    pop         eax
 005DA146    mov         ecx,edx
 005DA148    cdq
 005DA149    idiv        eax,ecx
 005DA14B    test        edx,edx
>005DA14D    jne         005DA179
 005DA14F    mov         eax,ebx
 005DA151    mov         edx,dword ptr [eax]
 005DA153    call        dword ptr [edx+30]
 005DA156    push        eax
 005DA157    mov         eax,ebx
 005DA159    mov         edx,dword ptr [eax]
 005DA15B    call        dword ptr [edx+24]
 005DA15E    mov         edx,eax
 005DA160    pop         eax
 005DA161    mov         ecx,edx
 005DA163    cdq
 005DA164    idiv        eax,ecx
 005DA166    cmp         eax,4
>005DA169    jle         005DA170
 005DA16B    mov         eax,1
 005DA170    mov         edx,eax
 005DA172    mov         eax,esi
 005DA174    call        TButtonGlyph.SetNumGlyphs
 005DA179    pop         esi
 005DA17A    pop         ebx
 005DA17B    ret
*}
end;

//005DA17C
procedure TButtonGlyph.SetNumGlyphs(Value:TNumGlyphs);
begin
{*
 005DA17C    push        ebx
 005DA17D    push        esi
 005DA17E    mov         ebx,edx
 005DA180    mov         esi,eax
 005DA182    cmp         bl,byte ptr [esi+20]
>005DA185    je          005DA19F
 005DA187    test        bl,bl
>005DA189    jbe         005DA19F
 005DA18B    mov         eax,esi
 005DA18D    call        TButtonGlyph.Invalidate
 005DA192    mov         byte ptr [esi+20],bl
 005DA195    mov         edx,dword ptr [esi+4]
 005DA198    mov         eax,esi
 005DA19A    call        TButtonGlyph.GlyphChanged
 005DA19F    pop         esi
 005DA1A0    pop         ebx
 005DA1A1    ret
*}
end;

//005DA1A4
function TButtonGlyph.CreateButtonGlyph(State:TButtonState):Integer;
begin
{*
 005DA1A4    push        ebp
 005DA1A5    mov         ebp,esp
 005DA1A7    add         esp,0FFFFFFC8
 005DA1AA    push        ebx
 005DA1AB    push        esi
 005DA1AC    push        edi
 005DA1AD    mov         byte ptr [ebp-5],dl
 005DA1B0    mov         dword ptr [ebp-4],eax
 005DA1B3    cmp         byte ptr [ebp-5],2
>005DA1B7    jne         005DA1C6
 005DA1B9    mov         eax,dword ptr [ebp-4]
 005DA1BC    cmp         byte ptr [eax+20],3
>005DA1C0    jae         005DA1C6
 005DA1C2    mov         byte ptr [ebp-5],0
 005DA1C6    movzx       eax,byte ptr [ebp-5]
 005DA1CA    mov         edx,dword ptr [ebp-4]
 005DA1CD    mov         ebx,dword ptr [edx+eax*4+0C]
 005DA1D1    cmp         ebx,0FFFFFFFF
>005DA1D4    jne         005DA76C
 005DA1DA    mov         eax,dword ptr [ebp-4]
 005DA1DD    mov         eax,dword ptr [eax+4]
 005DA1E0    mov         edx,dword ptr [eax]
 005DA1E2    call        dword ptr [edx+30]
 005DA1E5    mov         esi,eax
 005DA1E7    mov         eax,dword ptr [ebp-4]
 005DA1EA    mov         eax,dword ptr [eax+4]
 005DA1ED    mov         edx,dword ptr [eax]
 005DA1EF    call        dword ptr [edx+24]
 005DA1F2    or          esi,eax
>005DA1F4    je          005DA76C
 005DA1FA    mov         eax,dword ptr [ebp-4]
 005DA1FD    mov         eax,dword ptr [eax+4]
 005DA200    mov         edx,dword ptr [eax]
 005DA202    call        dword ptr [edx+30]
 005DA205    mov         edx,dword ptr [ebp-4]
 005DA208    movzx       edx,byte ptr [edx+20]
 005DA20C    mov         ecx,edx
 005DA20E    cdq
 005DA20F    idiv        eax,ecx
 005DA211    mov         edi,eax
 005DA213    mov         eax,dword ptr [ebp-4]
 005DA216    mov         eax,dword ptr [eax+4]
 005DA219    mov         edx,dword ptr [eax]
 005DA21B    call        dword ptr [edx+24]
 005DA21E    mov         esi,eax
 005DA220    mov         eax,dword ptr [ebp-4]
 005DA223    cmp         dword ptr [eax+8],0
>005DA227    jne         005DA257
 005DA229    cmp         dword ptr ds:[7A1E70],0
>005DA230    jne         005DA243
 005DA232    mov         dl,1
 005DA234    mov         eax,[005D9848];TGlyphCache
 005DA239    call        TGlyphCache.Create
 005DA23E    mov         [007A1E70],eax
 005DA243    mov         ecx,esi
 005DA245    mov         edx,edi
 005DA247    mov         eax,[007A1E70]
 005DA24C    call        TGlyphCache.GetList
 005DA251    mov         edx,dword ptr [ebp-4]
 005DA254    mov         dword ptr [edx+8],eax
 005DA257    mov         dl,1
 005DA259    mov         eax,[004C1D10];TBitmap
 005DA25E    call        TBitmap.Create
 005DA263    mov         dword ptr [ebp-0C],eax
 005DA266    xor         eax,eax
 005DA268    push        ebp
 005DA269    push        5DA74F
 005DA26E    push        dword ptr fs:[eax]
 005DA271    mov         dword ptr fs:[eax],esp
 005DA274    mov         edx,edi
 005DA276    mov         eax,dword ptr [ebp-0C]
 005DA279    mov         ecx,dword ptr [eax]
 005DA27B    call        dword ptr [ecx+44]
 005DA27E    mov         edx,esi
 005DA280    mov         eax,dword ptr [ebp-0C]
 005DA283    mov         ecx,dword ptr [eax]
 005DA285    call        dword ptr [ecx+38]
 005DA288    push        esi
 005DA289    lea         eax,[ebp-28]
 005DA28C    push        eax
 005DA28D    mov         ecx,edi
 005DA28F    xor         edx,edx
 005DA291    xor         eax,eax
 005DA293    call        Rect
 005DA298    mov         eax,dword ptr [ebp-0C]
 005DA29B    call        TBitmap.GetCanvas
 005DA2A0    mov         eax,dword ptr [eax+48]
 005DA2A3    mov         edx,0FF00000F
 005DA2A8    call        TBrush.SetColor
 005DA2AD    mov         eax,dword ptr [ebp-4]
 005DA2B0    mov         eax,dword ptr [eax+4]
 005DA2B3    mov         edx,dword ptr [eax]
 005DA2B5    call        dword ptr [edx+28]
 005DA2B8    call        CopyPalette
 005DA2BD    mov         edx,eax
 005DA2BF    mov         eax,dword ptr [ebp-0C]
 005DA2C2    mov         ecx,dword ptr [eax]
 005DA2C4    call        dword ptr [ecx+3C]
 005DA2C7    movzx       ebx,byte ptr [ebp-5]
 005DA2CB    mov         eax,dword ptr [ebp-4]
 005DA2CE    cmp         bl,byte ptr [eax+20]
>005DA2D1    jl          005DA2D5
 005DA2D3    xor         ebx,ebx
 005DA2D5    push        esi
 005DA2D6    lea         eax,[ebp-38]
 005DA2D9    push        eax
 005DA2DA    movzx       ecx,bl
 005DA2DD    inc         ecx
 005DA2DE    imul        ecx,edi
 005DA2E1    movzx       eax,bl
 005DA2E4    imul        edi
 005DA2E6    xor         edx,edx
 005DA2E8    call        Rect
 005DA2ED    movzx       eax,byte ptr [ebp-5]
 005DA2F1    sub         al,1
>005DA2F3    jb          005DA300
>005DA2F5    je          005DA374
 005DA2F7    dec         eax
 005DA2F8    sub         al,2
>005DA2FA    jae         005DA739
 005DA300    lea         eax,[ebp-38]
 005DA303    push        eax
 005DA304    mov         eax,dword ptr [ebp-4]
 005DA307    mov         eax,dword ptr [eax+4]
 005DA30A    call        TBitmap.GetCanvas
 005DA30F    push        eax
 005DA310    mov         eax,dword ptr [ebp-0C]
 005DA313    call        TBitmap.GetCanvas
 005DA318    lea         edx,[ebp-28]
 005DA31B    pop         ecx
 005DA31C    call        TCanvas.CopyRect
 005DA321    mov         eax,dword ptr [ebp-4]
 005DA324    mov         eax,dword ptr [eax+4]
 005DA327    cmp         byte ptr [eax+38],1
>005DA32B    jne         005DA351
 005DA32D    mov         eax,dword ptr [ebp-4]
 005DA330    mov         ecx,dword ptr [eax+1C]
 005DA333    mov         eax,dword ptr [ebp-4]
 005DA336    mov         eax,dword ptr [eax+8]
 005DA339    mov         edx,dword ptr [ebp-0C]
 005DA33C    call        TGlyphList.AddMasked
 005DA341    movzx       edx,byte ptr [ebp-5]
 005DA345    mov         ecx,dword ptr [ebp-4]
 005DA348    mov         dword ptr [ecx+edx*4+0C],eax
>005DA34C    jmp         005DA739
 005DA351    mov         eax,dword ptr [ebp-4]
 005DA354    mov         eax,dword ptr [eax+8]
 005DA357    mov         ecx,20000000
 005DA35C    mov         edx,dword ptr [ebp-0C]
 005DA35F    call        TGlyphList.AddMasked
 005DA364    movzx       edx,byte ptr [ebp-5]
 005DA368    mov         ecx,dword ptr [ebp-4]
 005DA36B    mov         dword ptr [ecx+edx*4+0C],eax
>005DA36F    jmp         005DA739
 005DA374    xor         eax,eax
 005DA376    mov         dword ptr [ebp-14],eax
 005DA379    xor         eax,eax
 005DA37B    mov         dword ptr [ebp-10],eax
 005DA37E    xor         eax,eax
 005DA380    push        ebp
 005DA381    push        5DA714
 005DA386    push        dword ptr fs:[eax]
 005DA389    mov         dword ptr fs:[eax],esp
 005DA38C    mov         dl,1
 005DA38E    mov         eax,[004C1D10];TBitmap
 005DA393    call        TBitmap.Create
 005DA398    mov         dword ptr [ebp-14],eax
 005DA39B    mov         dl,1
 005DA39D    mov         eax,[004C1D10];TBitmap
 005DA3A2    call        TBitmap.Create
 005DA3A7    mov         dword ptr [ebp-10],eax
 005DA3AA    mov         eax,dword ptr [ebp-4]
 005DA3AD    mov         edx,dword ptr [eax+4]
 005DA3B0    mov         eax,dword ptr [ebp-10]
 005DA3B3    mov         ecx,dword ptr [eax]
 005DA3B5    call        dword ptr [ecx+8]
 005DA3B8    mov         dl,1
 005DA3BA    mov         eax,dword ptr [ebp-10]
 005DA3BD    mov         ecx,dword ptr [eax]
 005DA3BF    call        dword ptr [ecx+78]
 005DA3C2    mov         eax,dword ptr [ebp-4]
 005DA3C5    cmp         byte ptr [eax+20],1
>005DA3C9    jbe         005DA5A7
 005DA3CF    mov         eax,dword ptr [ebp-0C]
 005DA3D2    call        TBitmap.GetCanvas
 005DA3D7    mov         dword ptr [ebp-18],eax
 005DA3DA    lea         eax,[ebp-38]
 005DA3DD    push        eax
 005DA3DE    mov         eax,dword ptr [ebp-10]
 005DA3E1    call        TBitmap.GetCanvas
 005DA3E6    mov         ecx,eax
 005DA3E8    lea         edx,[ebp-28]
 005DA3EB    mov         eax,dword ptr [ebp-18]
 005DA3EE    call        TCanvas.CopyRect
 005DA3F3    mov         dl,1
 005DA3F5    mov         eax,dword ptr [ebp-14]
 005DA3F8    call        TBitmap.SetMonochrome
 005DA3FD    mov         edx,edi
 005DA3FF    mov         eax,dword ptr [ebp-14]
 005DA402    mov         ecx,dword ptr [eax]
 005DA404    call        dword ptr [ecx+44]
 005DA407    mov         edx,esi
 005DA409    mov         eax,dword ptr [ebp-14]
 005DA40C    mov         ecx,dword ptr [eax]
 005DA40E    call        dword ptr [ecx+38]
 005DA411    mov         eax,dword ptr [ebp-10]
 005DA414    call        TBitmap.GetCanvas
 005DA419    mov         eax,dword ptr [eax+48]
 005DA41C    mov         edx,0FFFFFF
 005DA421    call        TBrush.SetColor
 005DA426    lea         eax,[ebp-38]
 005DA429    push        eax
 005DA42A    mov         eax,dword ptr [ebp-10]
 005DA42D    call        TBitmap.GetCanvas
 005DA432    push        eax
 005DA433    mov         eax,dword ptr [ebp-14]
 005DA436    call        TBitmap.GetCanvas
 005DA43B    lea         edx,[ebp-28]
 005DA43E    pop         ecx
 005DA43F    call        TCanvas.CopyRect
 005DA444    mov         eax,dword ptr [ebp-18]
 005DA447    mov         eax,dword ptr [eax+48]
 005DA44A    mov         edx,0FF000014
 005DA44F    call        TBrush.SetColor
 005DA454    mov         eax,dword ptr [ebp-18]
 005DA457    call        TCanvas.GetHandle
 005DA45C    mov         ebx,eax
 005DA45E    push        0
 005DA460    push        ebx
 005DA461    call        gdi32.SetTextColor
 005DA466    push        0FFFFFF
 005DA46B    push        ebx
 005DA46C    call        gdi32.SetBkColor
 005DA471    push        0E20746
 005DA476    push        0
 005DA478    push        0
 005DA47A    mov         eax,dword ptr [ebp-14]
 005DA47D    call        TBitmap.GetCanvas
 005DA482    call        TCanvas.GetHandle
 005DA487    push        eax
 005DA488    push        esi
 005DA489    push        edi
 005DA48A    push        0
 005DA48C    push        0
 005DA48E    push        ebx
 005DA48F    call        gdi32.BitBlt
 005DA494    mov         eax,dword ptr [ebp-10]
 005DA497    call        TBitmap.GetCanvas
 005DA49C    mov         eax,dword ptr [eax+48]
 005DA49F    mov         edx,808080
 005DA4A4    call        TBrush.SetColor
 005DA4A9    lea         eax,[ebp-38]
 005DA4AC    push        eax
 005DA4AD    mov         eax,dword ptr [ebp-10]
 005DA4B0    call        TBitmap.GetCanvas
 005DA4B5    push        eax
 005DA4B6    mov         eax,dword ptr [ebp-14]
 005DA4B9    call        TBitmap.GetCanvas
 005DA4BE    lea         edx,[ebp-28]
 005DA4C1    pop         ecx
 005DA4C2    call        TCanvas.CopyRect
 005DA4C7    mov         eax,dword ptr [ebp-18]
 005DA4CA    mov         eax,dword ptr [eax+48]
 005DA4CD    mov         edx,0FF000010
 005DA4D2    call        TBrush.SetColor
 005DA4D7    mov         eax,dword ptr [ebp-18]
 005DA4DA    call        TCanvas.GetHandle
 005DA4DF    mov         ebx,eax
 005DA4E1    push        0
 005DA4E3    push        ebx
 005DA4E4    call        gdi32.SetTextColor
 005DA4E9    push        0FFFFFF
 005DA4EE    push        ebx
 005DA4EF    call        gdi32.SetBkColor
 005DA4F4    push        0E20746
 005DA4F9    push        0
 005DA4FB    push        0
 005DA4FD    mov         eax,dword ptr [ebp-14]
 005DA500    call        TBitmap.GetCanvas
 005DA505    call        TCanvas.GetHandle
 005DA50A    push        eax
 005DA50B    push        esi
 005DA50C    push        edi
 005DA50D    push        0
 005DA50F    push        0
 005DA511    push        ebx
 005DA512    call        gdi32.BitBlt
 005DA517    mov         eax,dword ptr [ebp-4]
 005DA51A    mov         eax,dword ptr [eax+1C]
 005DA51D    call        ColorToRGB
 005DA522    push        eax
 005DA523    mov         eax,dword ptr [ebp-10]
 005DA526    call        TBitmap.GetCanvas
 005DA52B    mov         eax,dword ptr [eax+48]
 005DA52E    pop         edx
 005DA52F    call        TBrush.SetColor
 005DA534    lea         eax,[ebp-38]
 005DA537    push        eax
 005DA538    mov         eax,dword ptr [ebp-10]
 005DA53B    call        TBitmap.GetCanvas
 005DA540    push        eax
 005DA541    mov         eax,dword ptr [ebp-14]
 005DA544    call        TBitmap.GetCanvas
 005DA549    lea         edx,[ebp-28]
 005DA54C    pop         ecx
 005DA54D    call        TCanvas.CopyRect
 005DA552    mov         eax,dword ptr [ebp-18]
 005DA555    mov         eax,dword ptr [eax+48]
 005DA558    mov         edx,0FF00000F
 005DA55D    call        TBrush.SetColor
 005DA562    mov         eax,dword ptr [ebp-18]
 005DA565    call        TCanvas.GetHandle
 005DA56A    mov         ebx,eax
 005DA56C    push        0
 005DA56E    push        ebx
 005DA56F    call        gdi32.SetTextColor
 005DA574    push        0FFFFFF
 005DA579    push        ebx
 005DA57A    call        gdi32.SetBkColor
 005DA57F    push        0E20746
 005DA584    push        0
 005DA586    push        0
 005DA588    mov         eax,dword ptr [ebp-14]
 005DA58B    call        TBitmap.GetCanvas
 005DA590    call        TCanvas.GetHandle
 005DA595    push        eax
 005DA596    push        esi
 005DA597    push        edi
 005DA598    push        0
 005DA59A    push        0
 005DA59C    push        ebx
 005DA59D    call        gdi32.BitBlt
>005DA5A2    jmp         005DA6F6
 005DA5A7    mov         eax,dword ptr [ebp-4]
 005DA5AA    mov         edx,dword ptr [eax+4]
 005DA5AD    mov         eax,dword ptr [ebp-14]
 005DA5B0    mov         ecx,dword ptr [eax]
 005DA5B2    call        dword ptr [ecx+8]
 005DA5B5    mov         dl,1
 005DA5B7    mov         eax,dword ptr [ebp-14]
 005DA5BA    mov         ecx,dword ptr [eax]
 005DA5BC    call        dword ptr [ecx+78]
 005DA5BF    mov         eax,dword ptr [ebp-14]
 005DA5C2    call        TBitmap.GetCanvas
 005DA5C7    mov         eax,dword ptr [eax+48]
 005DA5CA    xor         edx,edx
 005DA5CC    call        TBrush.SetColor
 005DA5D1    mov         edx,edi
 005DA5D3    mov         eax,dword ptr [ebp-14]
 005DA5D6    mov         ecx,dword ptr [eax]
 005DA5D8    call        dword ptr [ecx+44]
 005DA5DB    mov         eax,dword ptr [ebp-14]
 005DA5DE    call        TBitmap.GetMonochrome
 005DA5E3    test        al,al
>005DA5E5    je          005DA61B
 005DA5E7    mov         eax,dword ptr [ebp-14]
 005DA5EA    call        TBitmap.GetCanvas
 005DA5EF    mov         eax,dword ptr [eax+40]
 005DA5F2    mov         edx,0FFFFFF
 005DA5F7    call        TFont.SetColor
 005DA5FC    xor         edx,edx
 005DA5FE    mov         eax,dword ptr [ebp-14]
 005DA601    call        TBitmap.SetMonochrome
 005DA606    mov         eax,dword ptr [ebp-14]
 005DA609    call        TBitmap.GetCanvas
 005DA60E    mov         eax,dword ptr [eax+48]
 005DA611    mov         edx,0FFFFFF
 005DA616    call        TBrush.SetColor
 005DA61B    mov         dl,1
 005DA61D    mov         eax,dword ptr [ebp-14]
 005DA620    call        TBitmap.SetMonochrome
 005DA625    mov         eax,dword ptr [ebp-0C]
 005DA628    call        TBitmap.GetCanvas
 005DA62D    mov         ebx,eax
 005DA62F    mov         eax,dword ptr [ebx+48]
 005DA632    mov         edx,0FF00000F
 005DA637    call        TBrush.SetColor
 005DA63C    lea         edx,[ebp-28]
 005DA63F    mov         eax,ebx
 005DA641    mov         ecx,dword ptr [eax]
 005DA643    call        dword ptr [ecx+54]
 005DA646    mov         eax,dword ptr [ebx+48]
 005DA649    mov         edx,0FF000014
 005DA64E    call        TBrush.SetColor
 005DA653    push        0
 005DA655    mov         eax,ebx
 005DA657    call        TCanvas.GetHandle
 005DA65C    push        eax
 005DA65D    call        gdi32.SetTextColor
 005DA662    push        0FFFFFF
 005DA667    mov         eax,ebx
 005DA669    call        TCanvas.GetHandle
 005DA66E    push        eax
 005DA66F    call        gdi32.SetBkColor
 005DA674    push        0E20746
 005DA679    push        0
 005DA67B    push        0
 005DA67D    mov         eax,dword ptr [ebp-14]
 005DA680    call        TBitmap.GetCanvas
 005DA685    call        TCanvas.GetHandle
 005DA68A    push        eax
 005DA68B    push        esi
 005DA68C    push        edi
 005DA68D    push        1
 005DA68F    push        1
 005DA691    mov         eax,ebx
 005DA693    call        TCanvas.GetHandle
 005DA698    push        eax
 005DA699    call        gdi32.BitBlt
 005DA69E    mov         eax,dword ptr [ebx+48]
 005DA6A1    mov         edx,0FF000010
 005DA6A6    call        TBrush.SetColor
 005DA6AB    push        0
 005DA6AD    mov         eax,ebx
 005DA6AF    call        TCanvas.GetHandle
 005DA6B4    push        eax
 005DA6B5    call        gdi32.SetTextColor
 005DA6BA    push        0FFFFFF
 005DA6BF    mov         eax,ebx
 005DA6C1    call        TCanvas.GetHandle
 005DA6C6    push        eax
 005DA6C7    call        gdi32.SetBkColor
 005DA6CC    push        0E20746
 005DA6D1    push        0
 005DA6D3    push        0
 005DA6D5    mov         eax,dword ptr [ebp-14]
 005DA6D8    call        TBitmap.GetCanvas
 005DA6DD    call        TCanvas.GetHandle
 005DA6E2    push        eax
 005DA6E3    push        esi
 005DA6E4    push        edi
 005DA6E5    push        0
 005DA6E7    push        0
 005DA6E9    mov         eax,ebx
 005DA6EB    call        TCanvas.GetHandle
 005DA6F0    push        eax
 005DA6F1    call        gdi32.BitBlt
 005DA6F6    xor         eax,eax
 005DA6F8    pop         edx
 005DA6F9    pop         ecx
 005DA6FA    pop         ecx
 005DA6FB    mov         dword ptr fs:[eax],edx
 005DA6FE    push        5DA71B
 005DA703    mov         eax,dword ptr [ebp-10]
 005DA706    call        TObject.Free
 005DA70B    mov         eax,dword ptr [ebp-14]
 005DA70E    call        TObject.Free
 005DA713    ret
>005DA714    jmp         @HandleFinally
>005DA719    jmp         005DA703
 005DA71B    mov         eax,dword ptr [ebp-4]
 005DA71E    mov         eax,dword ptr [eax+8]
 005DA721    mov         ecx,20000000
 005DA726    mov         edx,dword ptr [ebp-0C]
 005DA729    call        TGlyphList.AddMasked
 005DA72E    movzx       edx,byte ptr [ebp-5]
 005DA732    mov         ecx,dword ptr [ebp-4]
 005DA735    mov         dword ptr [ecx+edx*4+0C],eax
 005DA739    xor         eax,eax
 005DA73B    pop         edx
 005DA73C    pop         ecx
 005DA73D    pop         ecx
 005DA73E    mov         dword ptr fs:[eax],edx
 005DA741    push        5DA756
 005DA746    mov         eax,dword ptr [ebp-0C]
 005DA749    call        TObject.Free
 005DA74E    ret
>005DA74F    jmp         @HandleFinally
>005DA754    jmp         005DA746
 005DA756    movzx       eax,byte ptr [ebp-5]
 005DA75A    mov         edx,dword ptr [ebp-4]
 005DA75D    mov         ebx,dword ptr [edx+eax*4+0C]
 005DA761    mov         eax,dword ptr [ebp-4]
 005DA764    mov         eax,dword ptr [eax+4]
 005DA767    call        TBitmap.Dormant
 005DA76C    mov         eax,ebx
 005DA76E    pop         edi
 005DA76F    pop         esi
 005DA770    pop         ebx
 005DA771    mov         esp,ebp
 005DA773    pop         ebp
 005DA774    ret
*}
end;

//005DA778
procedure TButtonGlyph.DrawButtonGlyph(Canvas:Graphics.TCanvas; const GlyphPos:Types.TPoint; State:TButtonState; Transparent:Boolean);
begin
{*
 005DA778    push        ebp
 005DA779    mov         ebp,esp
 005DA77B    add         esp,0FFFFFFD0
 005DA77E    push        ebx
 005DA77F    push        esi
 005DA780    mov         esi,ecx
 005DA782    mov         dword ptr [ebp-4],edx
 005DA785    mov         ebx,eax
 005DA787    cmp         dword ptr [ebx+4],0
>005DA78B    je          005DA95F
 005DA791    mov         eax,dword ptr [ebx+4]
 005DA794    mov         edx,dword ptr [eax]
 005DA796    call        dword ptr [edx+30]
 005DA799    test        eax,eax
>005DA79B    je          005DA95F
 005DA7A1    mov         eax,dword ptr [ebx+4]
 005DA7A4    mov         edx,dword ptr [eax]
 005DA7A6    call        dword ptr [edx+24]
 005DA7A9    test        eax,eax
>005DA7AB    je          005DA95F
 005DA7B1    movzx       edx,byte ptr [ebp+0C]
 005DA7B5    mov         eax,ebx
 005DA7B7    call        TButtonGlyph.CreateButtonGlyph
 005DA7BC    mov         dword ptr [ebp-8],eax
 005DA7BF    cmp         byte ptr [ebx+30],0
>005DA7C3    je          005DA8E7
 005DA7C9    mov         eax,dword ptr [esi]
 005DA7CB    mov         dword ptr [ebp-30],eax
 005DA7CE    mov         eax,dword ptr [esi+4]
 005DA7D1    mov         dword ptr [ebp-2C],eax
 005DA7D4    mov         eax,dword ptr [ebx+4]
 005DA7D7    mov         edx,dword ptr [eax]
 005DA7D9    call        dword ptr [edx+30]
 005DA7DC    movzx       edx,byte ptr [ebx+20]
 005DA7E0    mov         ecx,edx
 005DA7E2    cdq
 005DA7E3    idiv        eax,ecx
 005DA7E5    add         eax,dword ptr [ebp-30]
 005DA7E8    mov         dword ptr [ebp-28],eax
 005DA7EB    mov         eax,dword ptr [ebx+4]
 005DA7EE    mov         edx,dword ptr [eax]
 005DA7F0    call        dword ptr [edx+24]
 005DA7F3    add         eax,dword ptr [ebp-2C]
 005DA7F6    mov         dword ptr [ebp-24],eax
 005DA7F9    movzx       eax,byte ptr [ebp+0C]
 005DA7FD    dec         al
>005DA7FF    je          005DA808
 005DA801    dec         eax
 005DA802    sub         al,2
>005DA804    jb          005DA80E
>005DA806    jmp         005DA814
 005DA808    mov         byte ptr [ebp-9],5
>005DA80C    jmp         005DA818
 005DA80E    mov         byte ptr [ebp-9],4
>005DA812    jmp         005DA818
 005DA814    mov         byte ptr [ebp-9],2
 005DA818    call        TStyleManager.GetActiveStyle
 005DA81D    mov         esi,eax
 005DA81F    movzx       edx,byte ptr [ebp-9]
 005DA823    lea         ecx,[ebp-20]
 005DA826    mov         eax,esi
 005DA828    mov         esi,dword ptr [eax]
 005DA82A    call        dword ptr [esi+5C]
 005DA82D    cmp         byte ptr [ebx+21],0
>005DA831    je          005DA8B9
 005DA837    lea         eax,[ebp-10]
 005DA83A    push        eax
 005DA83B    push        0
 005DA83D    push        2
 005DA83F    lea         eax,[ebp-30]
 005DA842    push        eax
 005DA843    mov         eax,dword ptr [ebp-4]
 005DA846    call        TCanvas.GetHandle
 005DA84B    push        eax
 005DA84C    call        004D426C
 005DA851    mov         dword ptr [ebp-14],eax
 005DA854    xor         edx,edx
 005DA856    push        ebp
 005DA857    push        5DA8B2
 005DA85C    push        dword ptr fs:[edx]
 005DA85F    mov         dword ptr fs:[edx],esp
 005DA862    call        TStyleManager.GetActiveStyle
 005DA867    mov         esi,eax
 005DA869    lea         eax,[ebp-30]
 005DA86C    push        eax
 005DA86D    mov         eax,dword ptr [ebx+8]
 005DA870    call        TCustomImageList.GetHandle
 005DA875    push        eax
 005DA876    mov         eax,dword ptr [ebp-8]
 005DA879    push        eax
 005DA87A    lea         ecx,[ebp-20]
 005DA87D    mov         edx,dword ptr [ebp-10]
 005DA880    mov         eax,esi
 005DA882    call        TCustomStyleServices.DrawIcon
 005DA887    push        0FF
 005DA88C    lea         eax,[ebp-30]
 005DA88F    push        eax
 005DA890    mov         eax,dword ptr [ebp-14]
 005DA893    push        eax
 005DA894    call        004D429C
 005DA899    xor         eax,eax
 005DA89B    pop         edx
 005DA89C    pop         ecx
 005DA89D    pop         ecx
 005DA89E    mov         dword ptr fs:[eax],edx
 005DA8A1    push        5DA95F
 005DA8A6    push        0FF
 005DA8A8    mov         eax,dword ptr [ebp-14]
 005DA8AB    push        eax
 005DA8AC    call        004D4284
 005DA8B1    ret
>005DA8B2    jmp         @HandleFinally
>005DA8B7    jmp         005DA8A6
 005DA8B9    call        TStyleManager.GetActiveStyle
 005DA8BE    mov         esi,eax
 005DA8C0    lea         eax,[ebp-30]
 005DA8C3    push        eax
 005DA8C4    mov         eax,dword ptr [ebx+8]
 005DA8C7    call        TCustomImageList.GetHandle
 005DA8CC    push        eax
 005DA8CD    mov         eax,dword ptr [ebp-8]
 005DA8D0    push        eax
 005DA8D1    mov         eax,dword ptr [ebp-4]
 005DA8D4    call        TCanvas.GetHandle
 005DA8D9    mov         edx,eax
 005DA8DB    lea         ecx,[ebp-20]
 005DA8DE    mov         eax,esi
 005DA8E0    call        TCustomStyleServices.DrawIcon
>005DA8E5    jmp         005DA95F
 005DA8E7    cmp         byte ptr [ebp+8],0
>005DA8EB    jne         005DA8F3
 005DA8ED    cmp         byte ptr [ebp+0C],3
>005DA8F1    jne         005DA927
 005DA8F3    push        1
 005DA8F5    push        1FFFFFFF
 005DA8FA    push        1FFFFFFF
 005DA8FF    push        0
 005DA901    push        0
 005DA903    mov         eax,dword ptr [esi+4]
 005DA906    push        eax
 005DA907    mov         eax,dword ptr [esi]
 005DA909    push        eax
 005DA90A    mov         eax,dword ptr [ebp-4]
 005DA90D    call        TCanvas.GetHandle
 005DA912    push        eax
 005DA913    mov         eax,dword ptr [ebp-8]
 005DA916    push        eax
 005DA917    mov         eax,dword ptr [ebx+8]
 005DA91A    call        TCustomImageList.GetHandle
 005DA91F    push        eax
 005DA920    call        comctl32.ImageList_DrawEx
>005DA925    jmp         005DA95F
 005DA927    push        0
 005DA929    push        1FFFFFFF
 005DA92E    mov         eax,0FF00000F
 005DA933    call        ColorToRGB
 005DA938    push        eax
 005DA939    push        0
 005DA93B    push        0
 005DA93D    mov         eax,dword ptr [esi+4]
 005DA940    push        eax
 005DA941    mov         eax,dword ptr [esi]
 005DA943    push        eax
 005DA944    mov         eax,dword ptr [ebp-4]
 005DA947    call        TCanvas.GetHandle
 005DA94C    push        eax
 005DA94D    mov         eax,dword ptr [ebp-8]
 005DA950    push        eax
 005DA951    mov         eax,dword ptr [ebx+8]
 005DA954    call        TCustomImageList.GetHandle
 005DA959    push        eax
 005DA95A    call        comctl32.ImageList_DrawEx
 005DA95F    pop         esi
 005DA960    pop         ebx
 005DA961    mov         esp,ebp
 005DA963    pop         ebp
 005DA964    ret         8
*}
end;

//005DA968
procedure DoDrawText(DC:Windows.HDC; const Text:UnicodeString; var TextRect:Types.TRect; TextFlags:Cardinal);
begin
{*
 005DA968    push        ebp
 005DA969    mov         ebp,esp
 005DA96B    add         esp,0FFFFFFF4
 005DA96E    push        ebx
 005DA96F    push        esi
 005DA970    mov         dword ptr [ebp-8],ecx
 005DA973    mov         esi,edx
 005DA975    mov         dword ptr [ebp-4],eax
 005DA978    mov         eax,dword ptr [ebp+0C]
 005DA97B    mov         eax,dword ptr [eax-4]
 005DA97E    cmp         byte ptr [eax+30],0
>005DA982    je          005DAA4F
 005DA988    mov         eax,dword ptr [ebp+0C]
 005DA98B    cmp         byte ptr [eax+0C],1
>005DA98F    jne         005DA995
 005DA991    mov         al,1
>005DA993    jmp         005DA9B5
 005DA995    call        TStyleManager.GetActiveStyle
 005DA99A    mov         ebx,eax
 005DA99C    mov         eax,ebx
 005DA99E    call        TCustomStyleServices.GetIsSystemStyle
 005DA9A3    test        al,al
>005DA9A5    jne         005DA9B3
 005DA9A7    mov         eax,dword ptr [ebp+0C]
 005DA9AA    mov         eax,dword ptr [eax-4]
 005DA9AD    movzx       eax,byte ptr [eax+40]
>005DA9B1    jmp         005DA9B5
 005DA9B3    xor         eax,eax
 005DA9B5    test        al,al
>005DA9B7    je          005DA9FD
 005DA9B9    call        TStyleManager.GetActiveStyle
 005DA9BE    mov         ebx,eax
 005DA9C0    lea         eax,[ebp-0C]
 005DA9C3    push        eax
 005DA9C4    mov         eax,dword ptr [ebp+0C]
 005DA9C7    mov         eax,dword ptr [eax-4]
 005DA9CA    lea         edx,[eax+24]
 005DA9CD    mov         cl,2
 005DA9CF    mov         eax,ebx
 005DA9D1    call        TCustomStyleServices.GetElementColor
 005DA9D6    test        al,al
>005DA9D8    jne         005DA9DE
 005DA9DA    mov         al,1
>005DA9DC    jmp         005DA9E8
 005DA9DE    cmp         dword ptr [ebp-0C],1FFFFFFF
 005DA9E5    sete        al
 005DA9E8    test        al,al
>005DA9EA    je          005DAA0C
 005DA9EC    mov         eax,dword ptr [ebp+0C]
 005DA9EF    mov         eax,dword ptr [eax-8]
 005DA9F2    mov         eax,dword ptr [eax+40]
 005DA9F5    mov         eax,dword ptr [eax+18]
 005DA9F8    mov         dword ptr [ebp-0C],eax
>005DA9FB    jmp         005DAA0C
 005DA9FD    mov         eax,dword ptr [ebp+0C]
 005DAA00    mov         eax,dword ptr [eax-8]
 005DAA03    mov         eax,dword ptr [eax+40]
 005DAA06    mov         eax,dword ptr [eax+18]
 005DAA09    mov         dword ptr [ebp-0C],eax
 005DAA0C    mov         eax,dword ptr [ebp+8]
 005DAA0F    call        TTextFormatFlags.&op_Implicit
 005DAA14    call        TTextFormatFlags.&op_Implicit
 005DAA19    mov         ebx,eax
 005DAA1B    mov         eax,dword ptr [ebp+0C]
 005DAA1E    mov         eax,dword ptr [eax-4]
 005DAA21    cmp         byte ptr [eax+21],0
>005DAA25    je          005DAA2D
 005DAA27    or          ebx,800000;gvar_00800000
 005DAA2D    call        TStyleManager.GetActiveStyle
 005DAA32    push        esi
 005DAA33    mov         edx,dword ptr [ebp-8]
 005DAA36    push        edx
 005DAA37    push        ebx
 005DAA38    mov         edx,dword ptr [ebp-0C]
 005DAA3B    push        edx
 005DAA3C    mov         edx,dword ptr [ebp+0C]
 005DAA3F    mov         edx,dword ptr [edx-4]
 005DAA42    lea         ecx,[edx+24]
 005DAA45    mov         edx,dword ptr [ebp-4]
 005DAA48    call        TCustomStyleServices.DrawText
>005DAA4D    jmp         005DAA74
 005DAA4F    mov         ebx,esi
 005DAA51    test        ebx,ebx
>005DAA53    je          005DAA5A
 005DAA55    sub         ebx,4
 005DAA58    mov         ebx,dword ptr [ebx]
 005DAA5A    mov         eax,dword ptr [ebp+8]
 005DAA5D    push        eax
 005DAA5E    mov         eax,dword ptr [ebp-8]
 005DAA61    push        eax
 005DAA62    push        ebx
 005DAA63    mov         eax,esi
 005DAA65    call        @UStrToPWChar
 005DAA6A    push        eax
 005DAA6B    mov         eax,dword ptr [ebp-4]
 005DAA6E    push        eax
 005DAA6F    call        user32.DrawTextW
 005DAA74    pop         esi
 005DAA75    pop         ebx
 005DAA76    mov         esp,ebp
 005DAA78    pop         ebp
 005DAA79    ret         4
*}
end;

//005DAA7C
procedure TButtonGlyph.DrawButtonText(Canvas:Graphics.TCanvas; const Caption:UnicodeString; TextBounds:Types.TRect; State:TButtonState; Flags:LongInt);
begin
{*
 005DAA7C    push        ebp
 005DAA7D    mov         ebp,esp
 005DAA7F    add         esp,0FFFFFFE8
 005DAA82    push        ebx
 005DAA83    push        esi
 005DAA84    push        edi
 005DAA85    mov         esi,dword ptr [ebp+10]
 005DAA88    lea         edi,[ebp-18]
 005DAA8B    movs        dword ptr [edi],dword ptr [esi]
 005DAA8C    movs        dword ptr [edi],dword ptr [esi]
 005DAA8D    movs        dword ptr [edi],dword ptr [esi]
 005DAA8E    movs        dword ptr [edi],dword ptr [esi]
 005DAA8F    mov         ebx,ecx
 005DAA91    mov         dword ptr [ebp-8],edx
 005DAA94    mov         dword ptr [ebp-4],eax
 005DAA97    mov         esi,dword ptr [ebp+8]
 005DAA9A    mov         eax,dword ptr [ebp-8]
 005DAA9D    mov         eax,dword ptr [eax+48]
 005DAAA0    mov         dl,1
 005DAAA2    call        TBrush.SetStyle
 005DAAA7    cmp         byte ptr [ebp+0C],1
>005DAAAB    jne         005DAB2A
 005DAAAD    mov         eax,dword ptr [ebp-4]
 005DAAB0    cmp         byte ptr [eax+30],0
>005DAAB4    jne         005DAB2A
 005DAAB6    lea         eax,[ebp-18]
 005DAAB9    mov         ecx,1
 005DAABE    mov         edx,1
 005DAAC3    call        OffsetRect
 005DAAC8    mov         eax,dword ptr [ebp-8]
 005DAACB    mov         eax,dword ptr [eax+40]
 005DAACE    mov         edx,0FF000014
 005DAAD3    call        TFont.SetColor
 005DAAD8    push        ebp
 005DAAD9    mov         edi,esi
 005DAADB    or          edi,105
 005DAAE1    push        edi
 005DAAE2    mov         eax,dword ptr [ebp-8]
 005DAAE5    call        TCanvas.GetHandle
 005DAAEA    lea         ecx,[ebp-18]
 005DAAED    mov         edx,ebx
 005DAAEF    call        DoDrawText
 005DAAF4    pop         ecx
 005DAAF5    lea         eax,[ebp-18]
 005DAAF8    or          ecx,0FFFFFFFF
 005DAAFB    or          edx,0FFFFFFFF
 005DAAFE    call        OffsetRect
 005DAB03    mov         eax,dword ptr [ebp-8]
 005DAB06    mov         eax,dword ptr [eax+40]
 005DAB09    mov         edx,0FF000010
 005DAB0E    call        TFont.SetColor
 005DAB13    push        ebp
 005DAB14    push        edi
 005DAB15    mov         eax,dword ptr [ebp-8]
 005DAB18    call        TCanvas.GetHandle
 005DAB1D    lea         ecx,[ebp-18]
 005DAB20    mov         edx,ebx
 005DAB22    call        DoDrawText
 005DAB27    pop         ecx
>005DAB28    jmp         005DAB45
 005DAB2A    push        ebp
 005DAB2B    or          esi,105
 005DAB31    push        esi
 005DAB32    mov         eax,dword ptr [ebp-8]
 005DAB35    call        TCanvas.GetHandle
 005DAB3A    lea         ecx,[ebp-18]
 005DAB3D    mov         edx,ebx
 005DAB3F    call        DoDrawText
 005DAB44    pop         ecx
 005DAB45    pop         edi
 005DAB46    pop         esi
 005DAB47    pop         ebx
 005DAB48    mov         esp,ebp
 005DAB4A    pop         ebp
 005DAB4B    ret         0C
*}
end;

//005DAB50
procedure TButtonGlyph.CalcButtonLayout(Canvas:Graphics.TCanvas; const Client:Types.TRect; const Offset:Types.TPoint; const Caption:UnicodeString; Layout:TButtonLayout; Margin:Integer; Spacing:Integer; var GlyphPos:Types.TPoint; var TextBounds:Types.TRect; BiDiFlags:LongInt);
begin
{*
 005DAB50    push        ebp
 005DAB51    mov         ebp,esp
 005DAB53    add         esp,0FFFFFF7C
 005DAB59    push        ebx
 005DAB5A    push        esi
 005DAB5B    push        edi
 005DAB5C    mov         ebx,ecx
 005DAB5E    mov         dword ptr [ebp-4],edx
 005DAB61    mov         edi,eax
 005DAB63    mov         esi,dword ptr [ebp+10]
 005DAB66    mov         eax,dword ptr [ebp+8]
 005DAB69    and         eax,2
 005DAB6C    cmp         eax,2
>005DAB6F    jne         005DAB87
 005DAB71    cmp         byte ptr [ebp+1C],0
>005DAB75    jne         005DAB7D
 005DAB77    mov         byte ptr [ebp+1C],1
>005DAB7B    jmp         005DAB87
 005DAB7D    cmp         byte ptr [ebp+1C],1
>005DAB81    jne         005DAB87
 005DAB83    mov         byte ptr [ebp+1C],0
 005DAB87    mov         eax,dword ptr [ebx+8]
 005DAB8A    sub         eax,dword ptr [ebx]
 005DAB8C    mov         edx,dword ptr [ebx+0C]
 005DAB8F    sub         edx,dword ptr [ebx+4]
 005DAB92    mov         dword ptr [ebp-34],eax
 005DAB95    mov         dword ptr [ebp-30],edx
 005DAB98    mov         eax,dword ptr [ebp-34]
 005DAB9B    mov         dword ptr [ebp-14],eax
 005DAB9E    mov         eax,dword ptr [ebp-30]
 005DABA1    mov         dword ptr [ebp-10],eax
 005DABA4    cmp         dword ptr [edi+4],0
>005DABA8    je          005DABDD
 005DABAA    mov         eax,dword ptr [edi+4]
 005DABAD    mov         edx,dword ptr [eax]
 005DABAF    call        dword ptr [edx+30]
 005DABB2    movzx       edx,byte ptr [edi+20]
 005DABB6    mov         ecx,edx
 005DABB8    cdq
 005DABB9    idiv        eax,ecx
 005DABBB    mov         dword ptr [ebp-38],eax
 005DABBE    mov         eax,dword ptr [edi+4]
 005DABC1    mov         edx,dword ptr [eax]
 005DABC3    call        dword ptr [edx+24]
 005DABC6    mov         edx,dword ptr [ebp-38]
 005DABC9    mov         dword ptr [ebp-40],edx
 005DABCC    mov         dword ptr [ebp-3C],eax
 005DABCF    mov         eax,dword ptr [ebp-40]
 005DABD2    mov         dword ptr [ebp-1C],eax
 005DABD5    mov         eax,dword ptr [ebp-3C]
 005DABD8    mov         dword ptr [ebp-18],eax
>005DABDB    jmp         005DABF3
 005DABDD    xor         eax,eax
 005DABDF    mov         dword ptr [ebp-48],eax
 005DABE2    xor         eax,eax
 005DABE4    mov         dword ptr [ebp-44],eax
 005DABE7    mov         eax,dword ptr [ebp-48]
 005DABEA    mov         dword ptr [ebp-1C],eax
 005DABED    mov         eax,dword ptr [ebp-44]
 005DABF0    mov         dword ptr [ebp-18],eax
 005DABF3    mov         eax,dword ptr [ebp+20]
 005DABF6    test        eax,eax
>005DABF8    je          005DABFF
 005DABFA    sub         eax,4
 005DABFD    mov         eax,dword ptr [eax]
 005DABFF    test        eax,eax
>005DAC01    jle         005DAC91
 005DAC07    push        0
 005DAC09    lea         eax,[ebp-84]
 005DAC0F    push        eax
 005DAC10    mov         ecx,dword ptr [ebx+8]
 005DAC13    sub         ecx,dword ptr [ebx]
 005DAC15    xor         edx,edx
 005DAC17    xor         eax,eax
 005DAC19    call        Rect
 005DAC1E    mov         eax,dword ptr [ebp+0C]
 005DAC21    push        esi
 005DAC22    lea         esi,[ebp-84]
 005DAC28    mov         edi,eax
 005DAC2A    movs        dword ptr [edi],dword ptr [esi]
 005DAC2B    movs        dword ptr [edi],dword ptr [esi]
 005DAC2C    movs        dword ptr [edi],dword ptr [esi]
 005DAC2D    movs        dword ptr [edi],dword ptr [esi]
 005DAC2E    pop         esi
 005DAC2F    mov         eax,dword ptr [ebp-4]
 005DAC32    call        TCanvas.GetHandle
 005DAC37    mov         dword ptr [ebp-4C],eax
 005DAC3A    mov         edi,dword ptr [ebp+20]
 005DAC3D    test        edi,edi
>005DAC3F    je          005DAC46
 005DAC41    sub         edi,4
 005DAC44    mov         edi,dword ptr [edi]
 005DAC46    mov         eax,dword ptr [ebp+8]
 005DAC49    or          eax,400
 005DAC4E    push        eax
 005DAC4F    mov         eax,dword ptr [ebp+0C]
 005DAC52    push        eax
 005DAC53    push        edi
 005DAC54    mov         eax,dword ptr [ebp+20]
 005DAC57    call        @UStrToPWChar
 005DAC5C    push        eax
 005DAC5D    mov         eax,dword ptr [ebp-4C]
 005DAC60    push        eax
 005DAC61    call        user32.DrawTextW
 005DAC66    mov         eax,dword ptr [ebp+0C]
 005DAC69    mov         eax,dword ptr [eax+8]
 005DAC6C    mov         edx,dword ptr [ebp+0C]
 005DAC6F    sub         eax,dword ptr [edx]
 005DAC71    mov         edx,dword ptr [ebp+0C]
 005DAC74    mov         edx,dword ptr [edx+0C]
 005DAC77    mov         ecx,dword ptr [ebp+0C]
 005DAC7A    sub         edx,dword ptr [ecx+4]
 005DAC7D    mov         dword ptr [ebp-54],eax
 005DAC80    mov         dword ptr [ebp-50],edx
 005DAC83    mov         eax,dword ptr [ebp-54]
 005DAC86    mov         dword ptr [ebp-24],eax
 005DAC89    mov         eax,dword ptr [ebp-50]
 005DAC8C    mov         dword ptr [ebp-20],eax
>005DAC8F    jmp         005DACCC
 005DAC91    push        0
 005DAC93    lea         eax,[ebp-84]
 005DAC99    push        eax
 005DAC9A    xor         ecx,ecx
 005DAC9C    xor         edx,edx
 005DAC9E    xor         eax,eax
 005DACA0    call        Rect
 005DACA5    mov         eax,dword ptr [ebp+0C]
 005DACA8    push        esi
 005DACA9    lea         esi,[ebp-84]
 005DACAF    mov         edi,eax
 005DACB1    movs        dword ptr [edi],dword ptr [esi]
 005DACB2    movs        dword ptr [edi],dword ptr [esi]
 005DACB3    movs        dword ptr [edi],dword ptr [esi]
 005DACB4    movs        dword ptr [edi],dword ptr [esi]
 005DACB5    pop         esi
 005DACB6    xor         eax,eax
 005DACB8    mov         dword ptr [ebp-5C],eax
 005DACBB    xor         eax,eax
 005DACBD    mov         dword ptr [ebp-58],eax
 005DACC0    mov         eax,dword ptr [ebp-5C]
 005DACC3    mov         dword ptr [ebp-24],eax
 005DACC6    mov         eax,dword ptr [ebp-58]
 005DACC9    mov         dword ptr [ebp-20],eax
 005DACCC    movzx       eax,byte ptr [ebp+1C]
 005DACD0    sub         al,2
>005DACD2    jae         005DACF7
 005DACD4    mov         eax,dword ptr [ebp-10]
 005DACD7    mov         edx,eax
 005DACD9    sub         edx,dword ptr [ebp-18]
 005DACDC    inc         edx
 005DACDD    sar         edx,1
>005DACDF    jns         005DACE4
 005DACE1    adc         edx,0
 005DACE4    mov         dword ptr [esi+4],edx
 005DACE7    sub         eax,dword ptr [ebp-20]
 005DACEA    inc         eax
 005DACEB    sar         eax,1
>005DACED    jns         005DACF2
 005DACEF    adc         eax,0
 005DACF2    mov         dword ptr [ebp-8],eax
>005DACF5    jmp         005DAD17
 005DACF7    mov         eax,dword ptr [ebp-14]
 005DACFA    mov         edx,eax
 005DACFC    sub         edx,dword ptr [ebp-1C]
 005DACFF    inc         edx
 005DAD00    sar         edx,1
>005DAD02    jns         005DAD07
 005DAD04    adc         edx,0
 005DAD07    mov         dword ptr [esi],edx
 005DAD09    sub         eax,dword ptr [ebp-24]
 005DAD0C    inc         eax
 005DAD0D    sar         eax,1
>005DAD0F    jns         005DAD14
 005DAD11    adc         eax,0
 005DAD14    mov         dword ptr [ebp-0C],eax
 005DAD17    mov         edi,dword ptr [ebp-24]
 005DAD1A    test        edi,edi
>005DAD1C    je          005DAD24
 005DAD1E    cmp         dword ptr [ebp-1C],0
>005DAD22    jne         005DAD29
 005DAD24    xor         eax,eax
 005DAD26    mov         dword ptr [ebp+14],eax
 005DAD29    cmp         dword ptr [ebp+18],0FFFFFFFF
>005DAD2D    jne         005DADDE
 005DAD33    cmp         dword ptr [ebp+14],0
>005DAD37    jge         005DAD8D
 005DAD39    mov         eax,dword ptr [ebp-18]
 005DAD3C    add         eax,dword ptr [ebp-20]
 005DAD3F    mov         edx,dword ptr [ebp-1C]
 005DAD42    add         edx,edi
 005DAD44    mov         dword ptr [ebp-64],edx
 005DAD47    mov         dword ptr [ebp-60],eax
 005DAD4A    mov         eax,dword ptr [ebp-64]
 005DAD4D    mov         dword ptr [ebp-2C],eax
 005DAD50    mov         eax,dword ptr [ebp-60]
 005DAD53    mov         dword ptr [ebp-28],eax
 005DAD56    movzx       eax,byte ptr [ebp+1C]
 005DAD5A    sub         al,2
>005DAD5C    jae         005DAD71
 005DAD5E    mov         eax,dword ptr [ebp-14]
 005DAD61    sub         eax,dword ptr [ebp-2C]
 005DAD64    mov         ecx,3
 005DAD69    cdq
 005DAD6A    idiv        eax,ecx
 005DAD6C    mov         dword ptr [ebp+18],eax
>005DAD6F    jmp         005DAD82
 005DAD71    mov         eax,dword ptr [ebp-10]
 005DAD74    sub         eax,dword ptr [ebp-28]
 005DAD77    mov         ecx,3
 005DAD7C    cdq
 005DAD7D    idiv        eax,ecx
 005DAD7F    mov         dword ptr [ebp+18],eax
 005DAD82    mov         eax,dword ptr [ebp+18]
 005DAD85    mov         dword ptr [ebp+14],eax
>005DAD88    jmp         005DAE37
 005DAD8D    mov         eax,dword ptr [ebp-18]
 005DAD90    add         eax,dword ptr [ebp+14]
 005DAD93    add         eax,dword ptr [ebp-20]
 005DAD96    mov         edx,dword ptr [ebp-1C]
 005DAD99    add         edx,dword ptr [ebp+14]
 005DAD9C    add         edx,edi
 005DAD9E    mov         dword ptr [ebp-6C],edx
 005DADA1    mov         dword ptr [ebp-68],eax
 005DADA4    mov         eax,dword ptr [ebp-6C]
 005DADA7    mov         dword ptr [ebp-2C],eax
 005DADAA    mov         eax,dword ptr [ebp-68]
 005DADAD    mov         dword ptr [ebp-28],eax
 005DADB0    movzx       eax,byte ptr [ebp+1C]
 005DADB4    sub         al,2
>005DADB6    jae         005DADCB
 005DADB8    mov         eax,dword ptr [ebp-14]
 005DADBB    sub         eax,dword ptr [ebp-2C]
 005DADBE    inc         eax
 005DADBF    sar         eax,1
>005DADC1    jns         005DADC6
 005DADC3    adc         eax,0
 005DADC6    mov         dword ptr [ebp+18],eax
>005DADC9    jmp         005DAE37
 005DADCB    mov         eax,dword ptr [ebp-10]
 005DADCE    sub         eax,dword ptr [ebp-28]
 005DADD1    inc         eax
 005DADD2    sar         eax,1
>005DADD4    jns         005DADD9
 005DADD6    adc         eax,0
 005DADD9    mov         dword ptr [ebp+18],eax
>005DADDC    jmp         005DAE37
 005DADDE    cmp         dword ptr [ebp+14],0
>005DADE2    jge         005DAE37
 005DADE4    mov         eax,dword ptr [ebp+18]
 005DADE7    add         eax,dword ptr [ebp-18]
 005DADEA    push        eax
 005DADEB    mov         eax,dword ptr [ebp-10]
 005DADEE    pop         edx
 005DADEF    sub         eax,edx
 005DADF1    mov         edx,dword ptr [ebp+18]
 005DADF4    add         edx,dword ptr [ebp-1C]
 005DADF7    mov         ecx,dword ptr [ebp-14]
 005DADFA    sub         ecx,edx
 005DADFC    mov         dword ptr [ebp-74],ecx
 005DADFF    mov         dword ptr [ebp-70],eax
 005DAE02    mov         eax,dword ptr [ebp-74]
 005DAE05    mov         dword ptr [ebp-2C],eax
 005DAE08    mov         eax,dword ptr [ebp-70]
 005DAE0B    mov         dword ptr [ebp-28],eax
 005DAE0E    movzx       eax,byte ptr [ebp+1C]
 005DAE12    sub         al,2
>005DAE14    jae         005DAE27
 005DAE16    mov         eax,dword ptr [ebp-2C]
 005DAE19    sub         eax,edi
 005DAE1B    sar         eax,1
>005DAE1D    jns         005DAE22
 005DAE1F    adc         eax,0
 005DAE22    mov         dword ptr [ebp+14],eax
>005DAE25    jmp         005DAE37
 005DAE27    mov         eax,dword ptr [ebp-28]
 005DAE2A    sub         eax,dword ptr [ebp-20]
 005DAE2D    sar         eax,1
>005DAE2F    jns         005DAE34
 005DAE31    adc         eax,0
 005DAE34    mov         dword ptr [ebp+14],eax
 005DAE37    movzx       eax,byte ptr [ebp+1C]
 005DAE3B    sub         al,1
>005DAE3D    jb          005DAE4B
>005DAE3F    je          005DAE5B
 005DAE41    dec         al
>005DAE43    je          005DAE70
 005DAE45    dec         al
>005DAE47    je          005DAE81
>005DAE49    jmp         005DAE99
 005DAE4B    mov         eax,dword ptr [ebp+18]
 005DAE4E    mov         dword ptr [esi],eax
 005DAE50    add         eax,dword ptr [ebp-1C]
 005DAE53    add         eax,dword ptr [ebp+14]
 005DAE56    mov         dword ptr [ebp-0C],eax
>005DAE59    jmp         005DAE99
 005DAE5B    mov         eax,dword ptr [ebp-14]
 005DAE5E    sub         eax,dword ptr [ebp+18]
 005DAE61    sub         eax,dword ptr [ebp-1C]
 005DAE64    mov         dword ptr [esi],eax
 005DAE66    sub         eax,dword ptr [ebp+14]
 005DAE69    sub         eax,edi
 005DAE6B    mov         dword ptr [ebp-0C],eax
>005DAE6E    jmp         005DAE99
 005DAE70    mov         eax,dword ptr [ebp+18]
 005DAE73    mov         dword ptr [esi+4],eax
 005DAE76    add         eax,dword ptr [ebp-18]
 005DAE79    add         eax,dword ptr [ebp+14]
 005DAE7C    mov         dword ptr [ebp-8],eax
>005DAE7F    jmp         005DAE99
 005DAE81    mov         eax,dword ptr [ebp-10]
 005DAE84    sub         eax,dword ptr [ebp+18]
 005DAE87    sub         eax,dword ptr [ebp-18]
 005DAE8A    mov         dword ptr [esi+4],eax
 005DAE8D    mov         eax,dword ptr [esi+4]
 005DAE90    sub         eax,dword ptr [ebp+14]
 005DAE93    sub         eax,dword ptr [ebp-20]
 005DAE96    mov         dword ptr [ebp-8],eax
 005DAE99    mov         eax,dword ptr [ebx]
 005DAE9B    mov         edx,dword ptr [ebp+24]
 005DAE9E    add         eax,dword ptr [edx]
 005DAEA0    add         dword ptr [esi],eax
 005DAEA2    mov         eax,dword ptr [ebx+4]
 005DAEA5    mov         edx,dword ptr [ebp+24]
 005DAEA8    add         eax,dword ptr [edx+4]
 005DAEAB    add         dword ptr [esi+4],eax
 005DAEAE    mov         ecx,dword ptr [ebx+4]
 005DAEB1    add         ecx,dword ptr [ebp-8]
 005DAEB4    mov         eax,dword ptr [ebp+24]
 005DAEB7    add         ecx,dword ptr [eax+4]
 005DAEBA    mov         edx,dword ptr [ebx]
 005DAEBC    add         edx,dword ptr [ebp-0C]
 005DAEBF    mov         eax,dword ptr [ebp+24]
 005DAEC2    add         edx,dword ptr [eax]
 005DAEC4    mov         eax,dword ptr [ebp+0C]
 005DAEC7    call        OffsetRect
 005DAECC    pop         edi
 005DAECD    pop         esi
 005DAECE    pop         ebx
 005DAECF    mov         esp,ebp
 005DAED1    pop         ebp
 005DAED2    ret         20
*}
end;

//005DAED8
function TButtonGlyph.Draw(Canvas:TCanvas; Client:TRect; BiDiFlags:Integer; Transparent:Boolean; State:TButtonState; Spacing:Integer; Margin:Integer; Layout:TButtonLayout; Caption:string; Offset:TPoint):TRect;
begin
{*
 005DAED8    push        ebp
 005DAED9    mov         ebp,esp
 005DAEDB    add         esp,0FFFFFFF4
 005DAEDE    push        ebx
 005DAEDF    push        esi
 005DAEE0    push        edi
 005DAEE1    mov         dword ptr [ebp-4],ecx
 005DAEE4    mov         esi,edx
 005DAEE6    mov         ebx,eax
 005DAEE8    mov         edi,dword ptr [ebp+24]
 005DAEEB    mov         eax,dword ptr [ebp+28]
 005DAEEE    push        eax
 005DAEEF    push        edi
 005DAEF0    movzx       eax,byte ptr [ebp+20]
 005DAEF4    push        eax
 005DAEF5    mov         eax,dword ptr [ebp+1C]
 005DAEF8    push        eax
 005DAEF9    mov         eax,dword ptr [ebp+18]
 005DAEFC    push        eax
 005DAEFD    lea         eax,[ebp-0C]
 005DAF00    push        eax
 005DAF01    mov         eax,dword ptr [ebp+8]
 005DAF04    push        eax
 005DAF05    mov         eax,dword ptr [ebp+0C]
 005DAF08    push        eax
 005DAF09    mov         ecx,dword ptr [ebp-4]
 005DAF0C    mov         edx,esi
 005DAF0E    mov         eax,ebx
 005DAF10    call        TButtonGlyph.CalcButtonLayout
 005DAF15    movzx       eax,byte ptr [ebp+14]
 005DAF19    push        eax
 005DAF1A    movzx       eax,byte ptr [ebp+10]
 005DAF1E    push        eax
 005DAF1F    lea         ecx,[ebp-0C]
 005DAF22    mov         edx,esi
 005DAF24    mov         eax,ebx
 005DAF26    call        TButtonGlyph.DrawButtonGlyph
 005DAF2B    mov         eax,dword ptr [ebp+8]
 005DAF2E    push        eax
 005DAF2F    movzx       eax,byte ptr [ebp+14]
 005DAF33    push        eax
 005DAF34    mov         eax,dword ptr [ebp+0C]
 005DAF37    push        eax
 005DAF38    mov         ecx,edi
 005DAF3A    mov         edx,esi
 005DAF3C    mov         eax,ebx
 005DAF3E    call        TButtonGlyph.DrawButtonText
 005DAF43    pop         edi
 005DAF44    pop         esi
 005DAF45    pop         ebx
 005DAF46    mov         esp,ebp
 005DAF48    pop         ebp
 005DAF49    ret         24
*}
end;

//005DAF4C
procedure TBitBtnActionLink.AssignClient(AClient:TObject);
begin
{*
 005DAF4C    push        ebx
 005DAF4D    push        esi
 005DAF4E    mov         esi,edx
 005DAF50    mov         ebx,eax
 005DAF52    mov         edx,esi
 005DAF54    mov         eax,ebx
 005DAF56    call        TControlActionLink.AssignClient
 005DAF5B    mov         eax,esi
 005DAF5D    mov         edx,dword ptr ds:[5D6D10];TSpeedButton
 005DAF63    call        @AsClass
 005DAF68    mov         dword ptr [ebx+20],eax
 005DAF6B    pop         esi
 005DAF6C    pop         ebx
 005DAF6D    ret
*}
end;

//005DAF70
constructor TBitBtnActionLink.Create;
begin
{*
 005DAF70    push        ebx
 005DAF71    push        esi
 005DAF72    test        dl,dl
>005DAF74    je          005DAF7E
 005DAF76    add         esp,0FFFFFFF0
 005DAF79    call        @ClassCreate
 005DAF7E    mov         ebx,edx
 005DAF80    mov         esi,eax
 005DAF82    xor         edx,edx
 005DAF84    mov         eax,esi
 005DAF86    call        TBasicActionLink.Create
 005DAF8B    mov         dword ptr [esi+24],0FFFFFFFF
 005DAF92    mov         eax,esi
 005DAF94    test        bl,bl
>005DAF96    je          005DAFA7
 005DAF98    call        @AfterConstruction
 005DAF9D    pop         dword ptr fs:[0]
 005DAFA4    add         esp,0C
 005DAFA7    mov         eax,esi
 005DAFA9    pop         esi
 005DAFAA    pop         ebx
 005DAFAB    ret
*}
end;

//005DAFAC
{*function TSpeedButtonActionLink.IsCheckedLinked:?;
begin
 005DAFAC    push        ebx
 005DAFAD    mov         ebx,eax
 005DAFAF    mov         eax,ebx
 005DAFB1    call        TContainedActionLink.IsCheckedLinked
 005DAFB6    test        al,al
>005DAFB8    je          005DAFE4
 005DAFBA    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DAFBD    cmp         dword ptr [eax+1C0],0;TSpeedButton.FGroupIndex:Integer
>005DAFC4    je          005DAFE4
 005DAFC6    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DAFC9    cmp         byte ptr [eax+1CA],0;TSpeedButton.FAllowAllUp:Boolean
>005DAFD0    je          005DAFE4
 005DAFD2    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DAFD5    movzx       eax,byte ptr [eax+1C8];TSpeedButton.FDown:Boolean
 005DAFDC    mov         edx,dword ptr [ebx+10];TSpeedButtonActionLink.FAction:TBasicAction
 005DAFDF    cmp         al,byte ptr [edx+70]
>005DAFE2    je          005DAFE8
 005DAFE4    xor         eax,eax
 005DAFE6    pop         ebx
 005DAFE7    ret
 005DAFE8    mov         al,1
 005DAFEA    pop         ebx
 005DAFEB    ret
end;*}

//005DAFEC
{*function sub_005DAFEC(?:?):?;
begin
 005DAFEC    push        ebp
 005DAFED    mov         ebp,esp
 005DAFEF    add         esp,0FFFFFFF8
 005DAFF2    push        ebx
 005DAFF3    push        esi
 005DAFF4    push        edi
 005DAFF5    mov         edi,edx
 005DAFF7    mov         ebx,eax
 005DAFF9    mov         eax,dword ptr [ebx+10];TSpeedButtonActionLink.FAction:TBasicAction
 005DAFFC    mov         eax,dword ptr [eax+64]
 005DAFFF    mov         esi,dword ptr [eax+74]
 005DB002    test        esi,esi
>005DB004    je          005DB036
 005DB006    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB009    call        TBitBtn.GetGlyph
 005DB00E    test        eax,eax
>005DB010    je          005DB036
 005DB012    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB015    call        TBitBtn.GetGlyph
 005DB01A    mov         edx,dword ptr [eax]
 005DB01C    call        dword ptr [edx+30];TBitmap.GetWidth
 005DB01F    cmp         eax,dword ptr [esi+54]
>005DB022    jne         005DB036
 005DB024    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB027    call        TBitBtn.GetGlyph
 005DB02C    mov         edx,dword ptr [eax]
 005DB02E    call        dword ptr [edx+24];TBitmap.GetHeight
 005DB031    cmp         eax,dword ptr [esi+50]
>005DB034    je          005DB03A
 005DB036    xor         eax,eax
>005DB038    jmp         005DB03C
 005DB03A    mov         al,1
 005DB03C    mov         byte ptr [ebp-1],al
 005DB03F    cmp         byte ptr [ebp-1],0
>005DB043    je          005DB0A2
 005DB045    mov         dl,1
 005DB047    mov         eax,[004C1D10];TBitmap
 005DB04C    call        TBitmap.Create;TBitmap.Create
 005DB051    mov         dword ptr [ebp-8],eax
 005DB054    xor         eax,eax
 005DB056    push        ebp
 005DB057    push        5DB09B
 005DB05C    push        dword ptr fs:[eax]
 005DB05F    mov         dword ptr fs:[eax],esp
 005DB062    push        edi
 005DB063    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB066    mov         ecx,esi
 005DB068    mov         edx,dword ptr [ebp-8]
 005DB06B    call        TBitBtn.InternalCopyImage
 005DB070    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB073    call        TBitBtn.GetGlyph
 005DB078    mov         edx,eax
 005DB07A    mov         eax,dword ptr [ebp-8]
 005DB07D    mov         ecx,dword ptr [eax]
 005DB07F    call        dword ptr [ecx-2C];TGraphic.Equals
 005DB082    mov         byte ptr [ebp-1],al
 005DB085    xor         eax,eax
 005DB087    pop         edx
 005DB088    pop         ecx
 005DB089    pop         ecx
 005DB08A    mov         dword ptr fs:[eax],edx
 005DB08D    push        5DB0A2
 005DB092    mov         eax,dword ptr [ebp-8]
 005DB095    call        TObject.Free
 005DB09A    ret
>005DB09B    jmp         @HandleFinally
>005DB0A0    jmp         005DB092
 005DB0A2    movzx       eax,byte ptr [ebp-1]
 005DB0A6    pop         edi
 005DB0A7    pop         esi
 005DB0A8    pop         ebx
 005DB0A9    pop         ecx
 005DB0AA    pop         ecx
 005DB0AB    pop         ebp
 005DB0AC    ret
end;*}

//005DB0B0
{*function TSpeedButtonActionLink.IsGroupIndexLinked:?;
begin
 005DB0B0    push        ebx
 005DB0B1    mov         ebx,eax
 005DB0B3    mov         eax,ebx
 005DB0B5    call        TContainedActionLink.IsGroupIndexLinked
 005DB0BA    test        al,al
>005DB0BC    je          005DB0D5
 005DB0BE    cmp         dword ptr [ebx+20],0;TSpeedButtonActionLink.FClient:TSpeedButton
>005DB0C2    je          005DB0D5
 005DB0C4    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB0C7    mov         eax,dword ptr [eax+1C0];TSpeedButton.FGroupIndex:Integer
 005DB0CD    mov         edx,dword ptr [ebx+10];TSpeedButtonActionLink.FAction:TBasicAction
 005DB0D0    cmp         eax,dword ptr [edx+74]
>005DB0D3    je          005DB0D9
 005DB0D5    xor         eax,eax
 005DB0D7    pop         ebx
 005DB0D8    ret
 005DB0D9    mov         al,1
 005DB0DB    pop         ebx
 005DB0DC    ret
end;*}

//005DB0E0
{*function TSpeedButtonActionLink.IsImageIndexLinked:?;
begin
 005DB0E0    push        ebx
 005DB0E1    mov         ebx,eax
 005DB0E3    mov         eax,ebx
 005DB0E5    call        TContainedActionLink.IsImageIndexLinked
 005DB0EA    test        al,al
>005DB0EC    je          005DB0FC
 005DB0EE    mov         eax,dword ptr [ebx+10];TSpeedButtonActionLink.FAction:TBasicAction
 005DB0F1    mov         eax,dword ptr [eax+90]
 005DB0F7    cmp         eax,dword ptr [ebx+24];TSpeedButtonActionLink.FImageIndex:Integer
>005DB0FA    je          005DB100
 005DB0FC    xor         eax,eax
 005DB0FE    pop         ebx
 005DB0FF    ret
 005DB100    mov         al,1
 005DB102    pop         ebx
 005DB103    ret
end;*}

//005DB104
procedure TSpeedButtonActionLink.SetChecked(Value:Boolean);
begin
{*
 005DB104    push        ebx
 005DB105    push        esi
 005DB106    mov         ebx,edx
 005DB108    mov         esi,eax
 005DB10A    mov         eax,esi
 005DB10C    mov         edx,dword ptr [eax]
 005DB10E    call        dword ptr [edx+28]
 005DB111    test        al,al
>005DB113    je          005DB11F
 005DB115    mov         edx,ebx
 005DB117    mov         eax,dword ptr [esi+20]
 005DB11A    call        TSpeedButton.SetDown
 005DB11F    pop         esi
 005DB120    pop         ebx
 005DB121    ret
*}
end;

//005DB124
procedure TSpeedButtonActionLink.SetGroupIndex(Value:Integer);
begin
{*
 005DB124    push        ebx
 005DB125    push        esi
 005DB126    mov         esi,edx
 005DB128    mov         ebx,eax
 005DB12A    mov         eax,ebx
 005DB12C    mov         edx,dword ptr [eax]
 005DB12E    call        dword ptr [edx+30]
 005DB131    test        al,al
>005DB133    je          005DB13F
 005DB135    mov         edx,esi
 005DB137    mov         eax,dword ptr [ebx+20]
 005DB13A    call        TSpeedButton.SetGroupIndex
 005DB13F    pop         esi
 005DB140    pop         ebx
 005DB141    ret
*}
end;

//005DB144
{*procedure sub_005DB144(?:?);
begin
 005DB144    push        ebx
 005DB145    push        esi
 005DB146    push        edi
 005DB147    push        ebp
 005DB148    mov         edi,edx
 005DB14A    mov         ebx,eax
 005DB14C    mov         eax,ebx
 005DB14E    mov         edx,dword ptr [eax]
 005DB150    call        dword ptr [edx+40];TSpeedButtonActionLink.IsImageIndexLinked
 005DB153    test        al,al
>005DB155    jne         005DB168
 005DB157    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB15A    call        TBitBtn.GetGlyph
 005DB15F    mov         edx,dword ptr [eax]
 005DB161    call        dword ptr [edx+20];TBitmap.GetEmpty
 005DB164    test        al,al
>005DB166    je          005DB1E3
 005DB168    mov         esi,dword ptr [ebx+10];TSpeedButtonActionLink.FAction:TBasicAction
 005DB16B    mov         eax,esi
 005DB16D    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 005DB173    call        @IsClass
 005DB178    test        al,al
>005DB17A    je          005DB1E0
 005DB17C    mov         ebp,dword ptr [esi+64]
 005DB17F    test        ebp,ebp
>005DB181    je          005DB1E0
 005DB183    cmp         dword ptr [ebp+74],0
>005DB187    je          005DB1E0
 005DB189    test        edi,edi
>005DB18B    jl          005DB19C
 005DB18D    mov         eax,dword ptr [ebp+74]
 005DB190    mov         edx,dword ptr [eax]
 005DB192    call        dword ptr [edx+48]
 005DB195    cmp         edi,eax
 005DB197    setl        al
>005DB19A    jmp         005DB19E
 005DB19C    xor         eax,eax
 005DB19E    test        al,al
>005DB1A0    je          005DB1D6
 005DB1A2    mov         edx,dword ptr [ebx+24];TSpeedButtonActionLink.FImageIndex:Integer
 005DB1A5    mov         eax,ebx
 005DB1A7    mov         ecx,dword ptr [eax]
 005DB1A9    call        dword ptr [ecx+0A0];TSpeedButtonActionLink.sub_005DAFEC
 005DB1AF    test        al,al
>005DB1B1    jne         005DB1C4
 005DB1B3    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB1B6    call        TBitBtn.GetGlyph
 005DB1BB    mov         edx,dword ptr [eax]
 005DB1BD    call        dword ptr [edx+20];TBitmap.GetEmpty
 005DB1C0    test        al,al
>005DB1C2    je          005DB1E0
 005DB1C4    mov         eax,dword ptr [esi+64]
 005DB1C7    mov         edx,dword ptr [eax+74]
 005DB1CA    mov         ecx,edi
 005DB1CC    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB1CF    call        TBitBtn.CopyImage
>005DB1D4    jmp         005DB1E0
 005DB1D6    xor         edx,edx
 005DB1D8    mov         eax,dword ptr [ebx+20];TSpeedButtonActionLink.FClient:TSpeedButton
 005DB1DB    call        TSpeedButton.SetGlyph
 005DB1E0    mov         dword ptr [ebx+24],edi;TSpeedButtonActionLink.FImageIndex:Integer
 005DB1E3    pop         ebp
 005DB1E4    pop         edi
 005DB1E5    pop         esi
 005DB1E6    pop         ebx
 005DB1E7    ret
end;*}

//005DB1E8
constructor TSpeedButton.Create(AOwner:TComponent);
begin
{*
 005DB1E8    push        ebp
 005DB1E9    mov         ebp,esp
 005DB1EB    push        ecx
 005DB1EC    push        ebx
 005DB1ED    push        esi
 005DB1EE    push        edi
 005DB1EF    test        dl,dl
>005DB1F1    je          005DB1FB
 005DB1F3    add         esp,0FFFFFFF0
 005DB1F6    call        @ClassCreate
 005DB1FB    mov         edi,ecx
 005DB1FD    mov         byte ptr [ebp-1],dl
 005DB200    mov         ebx,eax
 005DB202    mov         dl,1
 005DB204    mov         eax,[005D9A1C];TButtonGlyph
 005DB209    call        TButtonGlyph.Create;TButtonGlyph.Create
 005DB20E    mov         esi,eax
 005DB210    mov         dword ptr [ebx+1C4],esi;TSpeedButton.FGlyph:TObject
 005DB216    mov         dword ptr [esi+3C],ebx;TButtonGlyph.?f3C:TSpeedButton
 005DB219    mov         dword ptr [esi+38],5DBC64;TButtonGlyph.FOnChange:TNotifyEvent sub_005DBC64
 005DB220    mov         ecx,edi
 005DB222    xor         edx,edx
 005DB224    mov         eax,ebx
 005DB226    call        TGraphicControl.Create
 005DB22B    push        17
 005DB22D    push        16
 005DB22F    xor         ecx,ecx
 005DB231    xor         edx,edx
 005DB233    mov         eax,ebx
 005DB235    mov         esi,dword ptr [eax]
 005DB237    call        dword ptr [esi+0B0];TControl.SetBounds
 005DB23D    mov         eax,[005DB2A4];0x82 gvar_005DB2A4
 005DB242    mov         dword ptr [ebx+60],eax;TSpeedButton.FControlStyle:TControlStyle
 005DB245    mov         dl,1
 005DB247    mov         eax,ebx
 005DB249    call        TGroupBox.SetParentFont
 005DB24E    mov         edx,0FF00000F
 005DB253    mov         eax,ebx
 005DB255    call        TGroupBox.SetColor
 005DB25A    mov         dword ptr [ebx+1CC],4;TSpeedButton.FSpacing:Integer
 005DB264    mov         dword ptr [ebx+1D4],0FFFFFFFF;TSpeedButton.FMargin:Integer
 005DB26E    mov         byte ptr [ebx+1CB],0;TSpeedButton.FLayout:TButtonLayout
 005DB275    mov         byte ptr [ebx+1D0],1;TSpeedButton.FTransparent:Boolean
 005DB27C    inc         dword ptr ds:[7A1E74]
 005DB282    mov         eax,ebx
 005DB284    cmp         byte ptr [ebp-1],0
>005DB288    je          005DB299
 005DB28A    call        @AfterConstruction
 005DB28F    pop         dword ptr fs:[0]
 005DB296    add         esp,0C
 005DB299    mov         eax,ebx
 005DB29B    pop         edi
 005DB29C    pop         esi
 005DB29D    pop         ebx
 005DB29E    pop         ecx
 005DB29F    pop         ebp
 005DB2A0    ret
*}
end;

//005DB2A8
destructor TSpeedButton.Destroy();
begin
{*
 005DB2A8    push        ebx
 005DB2A9    push        esi
 005DB2AA    call        @BeforeDestruction
 005DB2AF    mov         ebx,edx
 005DB2B1    mov         esi,eax
 005DB2B3    dec         dword ptr ds:[7A1E74]
 005DB2B9    mov         dl,0FC
 005DB2BB    and         dl,bl
 005DB2BD    mov         eax,esi
 005DB2BF    call        TGraphicControl.Destroy
 005DB2C4    mov         eax,dword ptr [esi+1C4];TSpeedButton.FGlyph:TObject
 005DB2CA    call        TObject.Free
 005DB2CF    test        bl,bl
>005DB2D1    jle         005DB2DA
 005DB2D3    mov         eax,esi
 005DB2D5    call        @ClassDestroy
 005DB2DA    pop         esi
 005DB2DB    pop         ebx
 005DB2DC    ret
*}
end;

//005DB2E0
{*function sub_005DB2E0(?:?):?;
begin
 005DB2E0    push        ebp
 005DB2E1    mov         ebp,esp
 005DB2E3    push        ebx
 005DB2E4    mov         eax,dword ptr [ebp+8]
 005DB2E7    mov         eax,dword ptr [eax-4]
 005DB2EA    test        byte ptr [eax+65],80
 005DB2EE    setne       al
 005DB2F1    test        al,al
>005DB2F3    je          005DB334
 005DB2F5    mov         eax,dword ptr [ebp+8]
 005DB2F8    mov         eax,dword ptr [eax-4]
 005DB2FB    mov         ebx,dword ptr [eax+40]
>005DB2FE    jmp         005DB303
 005DB300    mov         ebx,dword ptr [ebx+40]
 005DB303    test        ebx,ebx
>005DB305    je          005DB310
 005DB307    cmp         byte ptr [ebx+280],0
>005DB30E    je          005DB300
 005DB310    test        ebx,ebx
>005DB312    je          005DB332
 005DB314    cmp         byte ptr [ebx+280],0
>005DB31B    je          005DB332
 005DB31D    mov         eax,ebx
 005DB31F    mov         edx,dword ptr ds:[5B7120];TCustomForm
 005DB325    call        @IsClass
 005DB32A    test        al,al
>005DB32C    jne         005DB332
 005DB32E    xor         eax,eax
>005DB330    jmp         005DB334
 005DB332    mov         al,1
 005DB334    pop         ebx
 005DB335    pop         ebp
 005DB336    ret
end;*}

//005DB338
procedure sub_005DB338;
begin
{*
 005DB338    push        ebp
 005DB339    mov         ebp,esp
 005DB33B    add         esp,0FFFFFFA0
 005DB33E    push        ebx
 005DB33F    push        esi
 005DB340    push        edi
 005DB341    xor         edx,edx
 005DB343    mov         dword ptr [ebp-60],edx
 005DB346    mov         dword ptr [ebp-5C],edx
 005DB349    mov         dword ptr [ebp-4],eax
 005DB34C    lea         esi,[ebp-4]
 005DB34F    xor         eax,eax
 005DB351    push        ebp
 005DB352    push        5DB937
 005DB357    push        dword ptr fs:[eax]
 005DB35A    mov         dword ptr fs:[eax],esp
 005DB35D    mov         eax,dword ptr [esi]
 005DB35F    mov         edx,dword ptr [eax]
 005DB361    call        dword ptr [edx+6C]
 005DB364    test        al,al
>005DB366    jne         005DB37C
 005DB368    mov         eax,dword ptr [esi]
 005DB36A    mov         byte ptr [eax+1DA],1;TSpeedButton.FState:TButtonState
 005DB371    mov         eax,dword ptr [esi]
 005DB373    mov         byte ptr [eax+1C9],0;TSpeedButton.FDragging:Boolean
>005DB37A    jmp         005DB3B1
 005DB37C    mov         eax,dword ptr [esi]
 005DB37E    cmp         byte ptr [eax+1DA],1;TSpeedButton.FState:TButtonState
>005DB385    jne         005DB3B1
 005DB387    mov         eax,dword ptr [esi]
 005DB389    cmp         byte ptr [eax+1C8],0;TSpeedButton.FDown:Boolean
>005DB390    je          005DB3A8
 005DB392    mov         eax,dword ptr [esi]
 005DB394    cmp         dword ptr [eax+1C0],0;TSpeedButton.FGroupIndex:Integer
>005DB39B    je          005DB3A8
 005DB39D    mov         eax,dword ptr [esi]
 005DB39F    mov         byte ptr [eax+1DA],3;TSpeedButton.FState:TButtonState
>005DB3A6    jmp         005DB3B1
 005DB3A8    mov         eax,dword ptr [esi]
 005DB3AA    mov         byte ptr [eax+1DA],0;TSpeedButton.FState:TButtonState
 005DB3B1    mov         eax,dword ptr [esi]
 005DB3B3    mov         edx,dword ptr [eax+74];TSpeedButton.FFont:TFont
 005DB3B6    mov         eax,dword ptr [esi]
 005DB3B8    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB3BE    call        TCanvas.SetFont
 005DB3C3    mov         eax,dword ptr [esi]
 005DB3C5    call        00585D90
 005DB3CA    test        al,al
>005DB3CC    je          005DB717
 005DB3D2    push        ebp
 005DB3D3    call        005DB2E0
 005DB3D8    pop         ecx
 005DB3D9    mov         byte ptr [ebp-0D],al
 005DB3DC    cmp         byte ptr [ebp-0D],0
>005DB3E0    jne         005DB42C
 005DB3E2    mov         eax,dword ptr [esi]
 005DB3E4    cmp         byte ptr [eax+1D0],0;TSpeedButton.FTransparent:Boolean
>005DB3EB    je          005DB414
 005DB3ED    call        TStyleManager.GetActiveStyle
 005DB3F2    mov         ebx,eax
 005DB3F4    push        0
 005DB3F6    push        1
 005DB3F8    push        0
 005DB3FA    mov         eax,dword ptr [esi]
 005DB3FC    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB402    call        TCanvas.GetHandle
 005DB407    mov         ecx,eax
 005DB409    xor         edx,edx
 005DB40B    mov         eax,ebx
 005DB40D    call        TCustomStyleServices.DrawParentBackground
>005DB412    jmp         005DB455
 005DB414    mov         eax,dword ptr [esi]
 005DB416    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB41C    call        TCanvas.GetHandle
 005DB421    mov         edx,eax
 005DB423    mov         eax,dword ptr [esi]
 005DB425    call        004E3750
>005DB42A    jmp         005DB455
 005DB42C    push        4
 005DB42E    call        gdi32.GetStockObject
 005DB433    push        eax
 005DB434    lea         edx,[ebp-58]
 005DB437    mov         eax,dword ptr [esi]
 005DB439    mov         ecx,dword ptr [eax]
 005DB43B    call        dword ptr [ecx+64]
 005DB43E    lea         eax,[ebp-58]
 005DB441    push        eax
 005DB442    mov         eax,dword ptr [esi]
 005DB444    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB44A    call        TCanvas.GetHandle
 005DB44F    push        eax
 005DB450    call        user32.FillRect
 005DB455    mov         eax,dword ptr [esi]
 005DB457    mov         edx,dword ptr [eax]
 005DB459    call        dword ptr [edx+6C]
 005DB45C    test        al,al
>005DB45E    jne         005DB466
 005DB460    mov         byte ptr [ebp-0E],5
>005DB464    jmp         005DB490
 005DB466    mov         eax,dword ptr [esi]
 005DB468    movzx       eax,byte ptr [eax+1DA];TSpeedButton.FState:TButtonState
 005DB46F    add         al,0FE
 005DB471    sub         al,2
>005DB473    jae         005DB47B
 005DB475    mov         byte ptr [ebp-0E],4
>005DB479    jmp         005DB490
 005DB47B    mov         eax,dword ptr [esi]
 005DB47D    cmp         byte ptr [eax+1D9],0;TSpeedButton.FMouseInControl:Boolean
>005DB484    je          005DB48C
 005DB486    mov         byte ptr [ebp-0E],3
>005DB48A    jmp         005DB490
 005DB48C    mov         byte ptr [ebp-0E],2
 005DB490    xor         ebx,ebx
 005DB492    mov         eax,dword ptr [esi]
 005DB494    cmp         byte ptr [eax+1D8],0;TSpeedButton.FFlat:Boolean
>005DB49B    jne         005DB4A6
 005DB49D    call        TStyleManager.GetIsCustomStyleActive
 005DB4A2    test        al,al
>005DB4A4    je          005DB4C8
 005DB4A6    movzx       eax,byte ptr [ebp-0E]
 005DB4AA    sub         al,2
>005DB4AC    je          005DB4C6
 005DB4AE    dec         al
>005DB4B0    je          005DB4C2
 005DB4B2    dec         al
>005DB4B4    je          005DB4BE
 005DB4B6    dec         al
>005DB4B8    jne         005DB4C8
 005DB4BA    mov         bl,5
>005DB4BC    jmp         005DB4C8
 005DB4BE    mov         bl,4
>005DB4C0    jmp         005DB4C8
 005DB4C2    mov         bl,3
>005DB4C4    jmp         005DB4C8
 005DB4C6    mov         bl,2
 005DB4C8    lea         edx,[ebp-3C]
 005DB4CB    mov         eax,dword ptr [esi]
 005DB4CD    mov         ecx,dword ptr [eax]
 005DB4CF    call        dword ptr [ecx+64]
 005DB4D2    test        bl,bl
>005DB4D4    jne         005DB540
 005DB4D6    call        TStyleManager.GetActiveStyle
 005DB4DB    mov         dword ptr [ebp-14],eax
 005DB4DE    movzx       edx,byte ptr [ebp-0E]
 005DB4E2    lea         ecx,[ebp-48]
 005DB4E5    mov         eax,dword ptr [ebp-14]
 005DB4E8    mov         edi,dword ptr [eax]
 005DB4EA    call        dword ptr [edi+5C];TCustomStyleServices.GetElementDetails
 005DB4ED    call        TStyleManager.GetActiveStyle
 005DB4F2    mov         edi,eax
 005DB4F4    lea         eax,[ebp-3C]
 005DB4F7    push        eax
 005DB4F8    push        0
 005DB4FA    mov         eax,dword ptr [esi]
 005DB4FC    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB502    call        TCanvas.GetHandle
 005DB507    mov         edx,eax
 005DB509    lea         ecx,[ebp-48]
 005DB50C    mov         eax,edi
 005DB50E    call        TCustomStyleServices.DrawElement
 005DB513    call        TStyleManager.GetActiveStyle
 005DB518    mov         edi,eax
 005DB51A    lea         eax,[ebp-3C]
 005DB51D    push        eax
 005DB51E    lea         eax,[ebp-3C]
 005DB521    push        eax
 005DB522    mov         eax,dword ptr [esi]
 005DB524    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB52A    call        TCanvas.GetHandle
 005DB52F    mov         edx,eax
 005DB531    lea         ecx,[ebp-48]
 005DB534    mov         eax,edi
 005DB536    call        TCustomStyleServices.GetElementContentRect
>005DB53B    jmp         005DB60A
 005DB540    call        TStyleManager.GetActiveStyle
 005DB545    mov         dword ptr [ebp-18],eax
 005DB548    mov         edx,ebx
 005DB54A    lea         ecx,[ebp-48]
 005DB54D    mov         eax,dword ptr [ebp-18]
 005DB550    mov         edi,dword ptr [eax]
 005DB552    call        dword ptr [edi+0F8];TCustomStyleServices.GetElementDetails
 005DB558    call        TStyleManager.GetIsCustomStyleActive
 005DB55D    test        al,al
>005DB55F    jne         005DB5A5
 005DB561    call        TStyleManager.GetActiveStyle
 005DB566    mov         edi,eax
 005DB568    lea         eax,[ebp-3C]
 005DB56B    push        eax
 005DB56C    push        0
 005DB56E    mov         eax,dword ptr [esi]
 005DB570    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB576    call        TCanvas.GetHandle
 005DB57B    mov         edx,eax
 005DB57D    lea         ecx,[ebp-48]
 005DB580    mov         eax,edi
 005DB582    call        TCustomStyleServices.DrawElement
 005DB587    cmp         bl,5
>005DB58A    jne         005DB5E2
 005DB58C    call        TStyleManager.GetActiveStyle
 005DB591    mov         dword ptr [ebp-1C],eax
 005DB594    movzx       edx,byte ptr [ebp-0E]
 005DB598    lea         ecx,[ebp-48]
 005DB59B    mov         eax,dword ptr [ebp-1C]
 005DB59E    mov         edi,dword ptr [eax]
 005DB5A0    call        dword ptr [edi+5C];TCustomStyleServices.GetElementDetails
>005DB5A3    jmp         005DB5E2
 005DB5A5    mov         eax,dword ptr [esi]
 005DB5A7    cmp         byte ptr [eax+1D8],0;TSpeedButton.FFlat:Boolean
>005DB5AE    je          005DB5BC
 005DB5B0    cmp         byte ptr [ebp-0E],4
>005DB5B4    je          005DB5BC
 005DB5B6    cmp         byte ptr [ebp-0E],3
>005DB5BA    jne         005DB5E2
 005DB5BC    call        TStyleManager.GetActiveStyle
 005DB5C1    mov         edi,eax
 005DB5C3    lea         eax,[ebp-3C]
 005DB5C6    push        eax
 005DB5C7    push        0
 005DB5C9    mov         eax,dword ptr [esi]
 005DB5CB    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB5D1    call        TCanvas.GetHandle
 005DB5D6    mov         edx,eax
 005DB5D8    lea         ecx,[ebp-48]
 005DB5DB    mov         eax,edi
 005DB5DD    call        TCustomStyleServices.DrawElement
 005DB5E2    call        TStyleManager.GetActiveStyle
 005DB5E7    mov         edi,eax
 005DB5E9    lea         eax,[ebp-3C]
 005DB5EC    push        eax
 005DB5ED    lea         eax,[ebp-3C]
 005DB5F0    push        eax
 005DB5F1    mov         eax,dword ptr [esi]
 005DB5F3    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB5F9    call        TCanvas.GetHandle
 005DB5FE    mov         edx,eax
 005DB600    lea         ecx,[ebp-48]
 005DB603    mov         eax,edi
 005DB605    call        TCustomStyleServices.GetElementContentRect
 005DB60A    xor         eax,eax
 005DB60C    mov         dword ptr [ebp-24],eax
 005DB60F    xor         eax,eax
 005DB611    mov         dword ptr [ebp-20],eax
 005DB614    mov         eax,dword ptr [ebp-24]
 005DB617    mov         dword ptr [ebp-0C],eax
 005DB61A    mov         eax,dword ptr [ebp-20]
 005DB61D    mov         dword ptr [ebp-8],eax
 005DB620    cmp         byte ptr [ebp-0E],4
>005DB624    jne         005DB674
 005DB626    test        bl,bl
>005DB628    je          005DB651
 005DB62A    xor         edx,edx
 005DB62C    mov         eax,6
 005DB631    call        CheckWin32Version
 005DB636    test        al,al
>005DB638    jne         005DB651
 005DB63A    mov         eax,dword ptr [esi]
 005DB63C    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB642    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 005DB645    mov         edx,0FF00000E
 005DB64A    call        TFont.SetColor
>005DB64F    jmp         005DB674
 005DB651    mov         eax,dword ptr [esi]
 005DB653    cmp         byte ptr [eax+1D8],0;TSpeedButton.FFlat:Boolean
>005DB65A    je          005DB674
 005DB65C    mov         dword ptr [ebp-2C],1
 005DB663    xor         eax,eax
 005DB665    mov         dword ptr [ebp-28],eax
 005DB668    mov         eax,dword ptr [ebp-2C]
 005DB66B    mov         dword ptr [ebp-0C],eax
 005DB66E    mov         eax,dword ptr [ebp-28]
 005DB671    mov         dword ptr [ebp-8],eax
 005DB674    mov         eax,dword ptr [esi]
 005DB676    mov         eax,dword ptr [eax+1C4];TSpeedButton.FGlyph:TObject
 005DB67C    movzx       edx,byte ptr [ebp-0D]
 005DB680    mov         byte ptr [eax+21],dl
 005DB683    mov         edx,dword ptr [ebp-48]
 005DB686    mov         dword ptr [eax+24],edx
 005DB689    mov         edx,dword ptr [ebp-44]
 005DB68C    mov         dword ptr [eax+28],edx
 005DB68F    mov         edx,dword ptr [ebp-40]
 005DB692    mov         dword ptr [eax+2C],edx
 005DB695    mov         byte ptr [eax+30],1
 005DB699    mov         eax,dword ptr [esi]
 005DB69B    test        byte ptr [eax+188],1;TSpeedButton.FStyleElements:TStyleElements
 005DB6A2    setne       al
 005DB6A5    mov         edx,dword ptr [esi]
 005DB6A7    mov         ebx,dword ptr [edx+1C4];TSpeedButton.FGlyph:TObject
 005DB6AD    mov         byte ptr [ebx+40],al
 005DB6B0    lea         eax,[ebp-0C]
 005DB6B3    push        eax
 005DB6B4    lea         edx,[ebp-5C]
 005DB6B7    mov         eax,dword ptr [esi]
 005DB6B9    call        TControl.GetText
 005DB6BE    mov         eax,dword ptr [ebp-5C]
 005DB6C1    push        eax
 005DB6C2    mov         eax,dword ptr [esi]
 005DB6C4    movzx       eax,byte ptr [eax+1CB];TSpeedButton.FLayout:TButtonLayout
 005DB6CB    push        eax
 005DB6CC    mov         eax,dword ptr [esi]
 005DB6CE    mov         eax,dword ptr [eax+1D4];TSpeedButton.FMargin:Integer
 005DB6D4    push        eax
 005DB6D5    mov         eax,dword ptr [esi]
 005DB6D7    mov         eax,dword ptr [eax+1CC];TSpeedButton.FSpacing:Integer
 005DB6DD    push        eax
 005DB6DE    mov         eax,dword ptr [esi]
 005DB6E0    movzx       eax,byte ptr [eax+1DA];TSpeedButton.FState:TButtonState
 005DB6E7    push        eax
 005DB6E8    mov         eax,dword ptr [esi]
 005DB6EA    movzx       eax,byte ptr [eax+1D0];TSpeedButton.FTransparent:Boolean
 005DB6F1    push        eax
 005DB6F2    xor         edx,edx
 005DB6F4    mov         eax,dword ptr [esi]
 005DB6F6    call        TControl.DrawTextBiDiModeFlags
 005DB6FB    push        eax
 005DB6FC    lea         eax,[ebp-58]
 005DB6FF    push        eax
 005DB700    lea         ecx,[ebp-3C]
 005DB703    mov         eax,dword ptr [esi]
 005DB705    mov         edx,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB70B    mov         eax,ebx
 005DB70D    call        TButtonGlyph.Draw
>005DB712    jmp         005DB91C
 005DB717    mov         eax,dword ptr [esi]
 005DB719    mov         eax,dword ptr [eax+5C];TSpeedButton.FHeight:Integer
 005DB71C    push        eax
 005DB71D    lea         eax,[ebp-3C]
 005DB720    push        eax
 005DB721    mov         eax,dword ptr [esi]
 005DB723    mov         ecx,dword ptr [eax+58];TSpeedButton.FWidth:Integer
 005DB726    xor         edx,edx
 005DB728    xor         eax,eax
 005DB72A    call        Rect
 005DB72F    mov         eax,dword ptr [esi]
 005DB731    cmp         byte ptr [eax+1D8],0;TSpeedButton.FFlat:Boolean
>005DB738    jne         005DB773
 005DB73A    mov         ebx,2010
 005DB73F    mov         eax,dword ptr [esi]
 005DB741    movzx       eax,byte ptr [eax+1DA];TSpeedButton.FState:TButtonState
 005DB748    add         al,0FE
 005DB74A    sub         al,2
>005DB74C    jae         005DB754
 005DB74E    or          ebx,200
 005DB754    push        ebx
 005DB755    push        4
 005DB757    lea         eax,[ebp-3C]
 005DB75A    push        eax
 005DB75B    mov         eax,dword ptr [esi]
 005DB75D    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB763    call        TCanvas.GetHandle
 005DB768    push        eax
 005DB769    call        user32.DrawFrameControl
>005DB76E    jmp         005DB826
 005DB773    mov         eax,dword ptr [esi]
 005DB775    movzx       eax,byte ptr [eax+1DA];TSpeedButton.FState:TButtonState
 005DB77C    add         al,0FE
 005DB77E    sub         al,2
>005DB780    jb          005DB7A0
 005DB782    mov         eax,dword ptr [esi]
 005DB784    cmp         byte ptr [eax+1D9],0;TSpeedButton.FMouseInControl:Boolean
>005DB78B    je          005DB798
 005DB78D    mov         eax,dword ptr [esi]
 005DB78F    cmp         byte ptr [eax+1DA],1;TSpeedButton.FState:TButtonState
>005DB796    jne         005DB7A0
 005DB798    mov         eax,dword ptr [esi]
 005DB79A    test        byte ptr [eax+1C],10;TSpeedButton.FComponentState:TComponentState
>005DB79E    je          005DB7E8
 005DB7A0    mov         eax,dword ptr [esi]
 005DB7A2    movzx       eax,byte ptr [eax+1D0];TSpeedButton.FTransparent:Boolean
 005DB7A9    mov         eax,dword ptr [eax*4+7A1E80]
 005DB7B0    or          eax,0F
 005DB7B3    push        eax
 005DB7B4    mov         eax,dword ptr [esi]
 005DB7B6    movzx       eax,byte ptr [eax+1DA];TSpeedButton.FState:TButtonState
 005DB7BD    add         al,0FE
 005DB7BF    sub         al,2
 005DB7C1    setb        al
 005DB7C4    and         eax,7F
 005DB7C7    mov         eax,dword ptr [eax*4+7A1E78]
 005DB7CE    push        eax
 005DB7CF    lea         eax,[ebp-3C]
 005DB7D2    push        eax
 005DB7D3    mov         eax,dword ptr [esi]
 005DB7D5    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB7DB    call        TCanvas.GetHandle
 005DB7E0    push        eax
 005DB7E1    call        user32.DrawEdge
>005DB7E6    jmp         005DB818
 005DB7E8    mov         eax,dword ptr [esi]
 005DB7EA    cmp         byte ptr [eax+1D0],0;TSpeedButton.FTransparent:Boolean
>005DB7F1    jne         005DB818
 005DB7F3    mov         eax,dword ptr [esi]
 005DB7F5    mov         edx,dword ptr [eax+7C];TSpeedButton.FColor:TColor
 005DB7F8    mov         eax,dword ptr [esi]
 005DB7FA    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB800    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005DB803    call        TBrush.SetColor
 005DB808    lea         edx,[ebp-3C]
 005DB80B    mov         eax,dword ptr [esi]
 005DB80D    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB813    mov         ecx,dword ptr [eax]
 005DB815    call        dword ptr [ecx+54];TCanvas.FillRect
 005DB818    lea         eax,[ebp-3C]
 005DB81B    or          ecx,0FFFFFFFF
 005DB81E    or          edx,0FFFFFFFF
 005DB821    call        InflateRect
 005DB826    mov         eax,dword ptr [esi]
 005DB828    movzx       eax,byte ptr [eax+1DA];TSpeedButton.FState:TButtonState
 005DB82F    add         al,0FE
 005DB831    sub         al,2
>005DB833    jae         005DB897
 005DB835    mov         eax,dword ptr [esi]
 005DB837    cmp         byte ptr [eax+1DA],3;TSpeedButton.FState:TButtonState
>005DB83E    jne         005DB887
 005DB840    mov         eax,dword ptr [esi]
 005DB842    cmp         byte ptr [eax+1D8],0;TSpeedButton.FFlat:Boolean
>005DB849    je          005DB856
 005DB84B    mov         eax,dword ptr [esi]
 005DB84D    cmp         byte ptr [eax+1D9],0;TSpeedButton.FMouseInControl:Boolean
>005DB854    jne         005DB887
 005DB856    mov         edx,0FF000014
 005DB85B    mov         eax,0FF00000F
 005DB860    call        AllocPatternBitmap
 005DB865    mov         edx,eax
 005DB867    mov         eax,dword ptr [esi]
 005DB869    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB86F    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005DB872    call        TBrush.SetBitmap
 005DB877    lea         edx,[ebp-3C]
 005DB87A    mov         eax,dword ptr [esi]
 005DB87C    mov         eax,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB882    mov         ecx,dword ptr [eax]
 005DB884    call        dword ptr [ecx+54];TCanvas.FillRect
 005DB887    mov         dword ptr [ebp-0C],1
 005DB88E    mov         dword ptr [ebp-8],1
>005DB895    jmp         005DB8A1
 005DB897    xor         eax,eax
 005DB899    mov         dword ptr [ebp-0C],eax
 005DB89C    xor         eax,eax
 005DB89E    mov         dword ptr [ebp-8],eax
 005DB8A1    call        TStyleManager.GetActiveStyle
 005DB8A6    mov         ebx,eax
 005DB8A8    mov         eax,ebx
 005DB8AA    mov         edx,dword ptr [eax]
 005DB8AC    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005DB8AF    mov         edx,dword ptr [esi]
 005DB8B1    mov         edi,dword ptr [edx+1C4];TSpeedButton.FGlyph:TObject
 005DB8B7    mov         byte ptr [edi+30],al
 005DB8BA    lea         eax,[ebp-0C]
 005DB8BD    push        eax
 005DB8BE    lea         edx,[ebp-60]
 005DB8C1    mov         eax,dword ptr [esi]
 005DB8C3    call        TControl.GetText
 005DB8C8    mov         eax,dword ptr [ebp-60]
 005DB8CB    push        eax
 005DB8CC    mov         eax,dword ptr [esi]
 005DB8CE    movzx       eax,byte ptr [eax+1CB];TSpeedButton.FLayout:TButtonLayout
 005DB8D5    push        eax
 005DB8D6    mov         eax,dword ptr [esi]
 005DB8D8    mov         eax,dword ptr [eax+1D4];TSpeedButton.FMargin:Integer
 005DB8DE    push        eax
 005DB8DF    mov         eax,dword ptr [esi]
 005DB8E1    mov         eax,dword ptr [eax+1CC];TSpeedButton.FSpacing:Integer
 005DB8E7    push        eax
 005DB8E8    mov         eax,dword ptr [esi]
 005DB8EA    movzx       eax,byte ptr [eax+1DA];TSpeedButton.FState:TButtonState
 005DB8F1    push        eax
 005DB8F2    mov         eax,dword ptr [esi]
 005DB8F4    movzx       eax,byte ptr [eax+1D0];TSpeedButton.FTransparent:Boolean
 005DB8FB    push        eax
 005DB8FC    xor         edx,edx
 005DB8FE    mov         eax,dword ptr [esi]
 005DB900    call        TControl.DrawTextBiDiModeFlags
 005DB905    push        eax
 005DB906    lea         eax,[ebp-58]
 005DB909    push        eax
 005DB90A    lea         ecx,[ebp-3C]
 005DB90D    mov         eax,dword ptr [esi]
 005DB90F    mov         edx,dword ptr [eax+1B8];TSpeedButton.FCanvas:TCanvas
 005DB915    mov         eax,edi
 005DB917    call        TButtonGlyph.Draw
 005DB91C    xor         eax,eax
 005DB91E    pop         edx
 005DB91F    pop         ecx
 005DB920    pop         ecx
 005DB921    mov         dword ptr fs:[eax],edx
 005DB924    push        5DB93E
 005DB929    lea         eax,[ebp-60]
 005DB92C    mov         edx,2
 005DB931    call        @UStrArrayClr
 005DB936    ret
>005DB937    jmp         @HandleFinally
>005DB93C    jmp         005DB929
 005DB93E    pop         edi
 005DB93F    pop         esi
 005DB940    pop         ebx
 005DB941    mov         esp,ebp
 005DB943    pop         ebp
 005DB944    ret
*}
end;

//005DB948
procedure sub_005DB948(?:TSpeedButton);
begin
{*
 005DB948    push        ebx
 005DB949    push        esi
 005DB94A    add         esp,0FFFFFFF8
 005DB94D    mov         esi,eax
 005DB94F    cmp         byte ptr [esi+1D8],0
>005DB956    je          005DB9A6
 005DB958    mov         eax,esi
 005DB95A    mov         edx,dword ptr [eax]
 005DB95C    call        dword ptr [edx+6C]
 005DB95F    test        al,al
>005DB961    je          005DB9A6
 005DB963    push        esp
 005DB964    call        user32.GetCursorPos
 005DB969    mov         eax,esp
 005DB96B    mov         dl,1
 005DB96D    call        FindDragTarget
 005DB972    cmp         esi,eax
 005DB974    sete        bl
 005DB977    xor         bl,1
 005DB97A    mov         byte ptr [esi+1D9],bl
 005DB980    test        bl,bl
>005DB982    je          005DB996
 005DB984    push        0
 005DB986    xor         ecx,ecx
 005DB988    mov         edx,0B014
 005DB98D    mov         eax,esi
 005DB98F    call        TControl.Perform
>005DB994    jmp         005DB9A6
 005DB996    push        0
 005DB998    xor         ecx,ecx
 005DB99A    mov         edx,0B013
 005DB99F    mov         eax,esi
 005DB9A1    call        TControl.Perform
 005DB9A6    pop         ecx
 005DB9A7    pop         edx
 005DB9A8    pop         esi
 005DB9A9    pop         ebx
 005DB9AA    ret
*}
end;

//005DB9AC
procedure TSpeedButton.CMFontChanged(var Message:TMessage);
begin
{*
 005DB9AC    push        ebx
 005DB9AD    mov         ebx,eax
 005DB9AF    mov         eax,ebx
 005DB9B1    call        TWinControl.CMFontChanged
 005DB9B6    mov         eax,ebx
 005DB9B8    mov         edx,dword ptr [eax]
 005DB9BA    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DB9BD    test        al,al
>005DB9BF    je          005DB9C5
 005DB9C1    xor         eax,eax
>005DB9C3    jmp         005DB9C7
 005DB9C5    mov         al,1
 005DB9C7    mov         edx,eax
 005DB9C9    mov         eax,dword ptr [ebx+1C4];TSpeedButton.FGlyph:TObject
 005DB9CF    call        TButtonGlyph.CreateButtonGlyph
 005DB9D4    pop         ebx
 005DB9D5    ret
*}
end;

//005DB9D8
{*procedure TSpeedButton.sub_004E8C70(?:?; ?:?; ?:?; ?:?);
begin
 005DB9D8    push        ebp
 005DB9D9    mov         ebp,esp
 005DB9DB    push        ecx
 005DB9DC    push        ebx
 005DB9DD    push        esi
 005DB9DE    mov         word ptr [ebp-2],cx
 005DB9E2    mov         ebx,edx
 005DB9E4    mov         esi,eax
 005DB9E6    mov         eax,dword ptr [ebp+0C]
 005DB9E9    push        eax
 005DB9EA    mov         eax,dword ptr [ebp+8]
 005DB9ED    push        eax
 005DB9EE    mov         edx,ebx
 005DB9F0    movzx       ecx,word ptr [ebp-2]
 005DB9F4    mov         eax,esi
 005DB9F6    call        TControl.sub_004E8C70
 005DB9FB    test        bl,bl
>005DB9FD    jne         005DBA2B
 005DB9FF    mov         eax,esi
 005DBA01    mov         edx,dword ptr [eax]
 005DBA03    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DBA06    test        al,al
>005DBA08    je          005DBA2B
 005DBA0A    cmp         byte ptr [esi+1C8],0;TSpeedButton.FDown:Boolean
>005DBA11    jne         005DBA24
 005DBA13    mov         byte ptr [esi+1DA],2;TSpeedButton.FState:TButtonState
 005DBA1A    mov         eax,esi
 005DBA1C    mov         edx,dword ptr [eax]
 005DBA1E    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBA24    mov         byte ptr [esi+1C9],1;TSpeedButton.FDragging:Boolean
 005DBA2B    pop         esi
 005DBA2C    pop         ebx
 005DBA2D    pop         ecx
 005DBA2E    pop         ebp
 005DBA2F    ret         8
end;*}

//005DBA34
{*procedure TSpeedButton.sub_004E8F54(?:?; ?:?; ?:?);
begin
 005DBA34    push        ebp
 005DBA35    mov         ebp,esp
 005DBA37    push        ecx
 005DBA38    push        ebx
 005DBA39    push        esi
 005DBA3A    push        edi
 005DBA3B    mov         ebx,ecx
 005DBA3D    mov         word ptr [ebp-2],dx
 005DBA41    mov         esi,eax
 005DBA43    mov         edi,dword ptr [ebp+8]
 005DBA46    push        edi
 005DBA47    mov         ecx,ebx
 005DBA49    movzx       edx,word ptr [ebp-2]
 005DBA4D    mov         eax,esi
 005DBA4F    call        TControl.sub_004E8F54
 005DBA54    cmp         byte ptr [esi+1C9],0;TSpeedButton.FDragging:Boolean
>005DBA5B    je          005DBAC3
 005DBA5D    cmp         byte ptr [esi+1C8],0;TSpeedButton.FDown:Boolean
>005DBA64    jne         005DBA6C
 005DBA66    mov         byte ptr [ebp-3],0
>005DBA6A    jmp         005DBA70
 005DBA6C    mov         byte ptr [ebp-3],3
 005DBA70    test        ebx,ebx
>005DBA72    jl          005DBAA1
 005DBA74    mov         eax,esi
 005DBA76    call        TControl.GetClientWidth
 005DBA7B    cmp         ebx,eax
>005DBA7D    jge         005DBAA1
 005DBA7F    test        edi,edi
>005DBA81    jl          005DBAA1
 005DBA83    mov         eax,esi
 005DBA85    call        TControl.GetClientHeight
 005DBA8A    cmp         edi,eax
>005DBA8C    jg          005DBAA1
 005DBA8E    cmp         byte ptr [esi+1C8],0;TSpeedButton.FDown:Boolean
>005DBA95    je          005DBA9D
 005DBA97    mov         byte ptr [ebp-3],3
>005DBA9B    jmp         005DBAA1
 005DBA9D    mov         byte ptr [ebp-3],2
 005DBAA1    movzx       eax,byte ptr [ebp-3]
 005DBAA5    cmp         al,byte ptr [esi+1DA];TSpeedButton.FState:TButtonState
>005DBAAB    je          005DBAD3
 005DBAAD    movzx       eax,byte ptr [ebp-3]
 005DBAB1    mov         byte ptr [esi+1DA],al;TSpeedButton.FState:TButtonState
 005DBAB7    mov         eax,esi
 005DBAB9    mov         edx,dword ptr [eax]
 005DBABB    call        dword ptr [edx+0A8];TControl.Invalidate
>005DBAC1    jmp         005DBAD3
 005DBAC3    cmp         byte ptr [esi+1D9],0;TSpeedButton.FMouseInControl:Boolean
>005DBACA    jne         005DBAD3
 005DBACC    mov         eax,esi
 005DBACE    call        005DB948
 005DBAD3    pop         edi
 005DBAD4    pop         esi
 005DBAD5    pop         ebx
 005DBAD6    pop         ecx
 005DBAD7    pop         ebp
 005DBAD8    ret         4
end;*}

//005DBADC
{*procedure TSpeedButton.sub_004E9010(?:?; ?:?; ?:?; ?:?);
begin
 005DBADC    push        ebp
 005DBADD    mov         ebp,esp
 005DBADF    push        ecx
 005DBAE0    push        ebx
 005DBAE1    push        esi
 005DBAE2    push        edi
 005DBAE3    mov         word ptr [ebp-3],cx
 005DBAE7    mov         byte ptr [ebp-1],dl
 005DBAEA    mov         ebx,eax
 005DBAEC    mov         edi,dword ptr [ebp+8]
 005DBAEF    mov         esi,dword ptr [ebp+0C]
 005DBAF2    push        esi
 005DBAF3    push        edi
 005DBAF4    movzx       edx,byte ptr [ebp-1]
 005DBAF8    movzx       ecx,word ptr [ebp-3]
 005DBAFC    mov         eax,ebx
 005DBAFE    call        TControl.sub_004E9010
 005DBB03    cmp         byte ptr [ebx+1C9],0;TSpeedButton.FDragging:Boolean
>005DBB0A    je          005DBBD2
 005DBB10    mov         byte ptr [ebx+1C9],0;TSpeedButton.FDragging:Boolean
 005DBB17    test        esi,esi
>005DBB19    jl          005DBB35
 005DBB1B    mov         eax,ebx
 005DBB1D    call        TControl.GetClientWidth
 005DBB22    cmp         esi,eax
>005DBB24    jge         005DBB35
 005DBB26    test        edi,edi
>005DBB28    jl          005DBB35
 005DBB2A    mov         eax,ebx
 005DBB2C    call        TControl.GetClientHeight
 005DBB31    cmp         edi,eax
>005DBB33    jle         005DBB39
 005DBB35    xor         eax,eax
>005DBB37    jmp         005DBB3B
 005DBB39    mov         al,1
 005DBB3B    mov         byte ptr [ebp-4],al
 005DBB3E    cmp         dword ptr [ebx+1C0],0;TSpeedButton.FGroupIndex:Integer
>005DBB45    jne         005DBB74
 005DBB47    mov         byte ptr [ebx+1DA],0;TSpeedButton.FState:TButtonState
 005DBB4E    mov         byte ptr [ebx+1D9],0;TSpeedButton.FMouseInControl:Boolean
 005DBB55    cmp         byte ptr [ebp-4],0
>005DBB59    je          005DBBBA
 005DBB5B    movzx       eax,byte ptr [ebx+1DA];TSpeedButton.FState:TButtonState
 005DBB62    add         al,0FE
 005DBB64    sub         al,2
>005DBB66    jb          005DBBBA
 005DBB68    mov         eax,ebx
 005DBB6A    mov         edx,dword ptr [eax]
 005DBB6C    call        dword ptr [edx+0A8];TControl.Invalidate
>005DBB72    jmp         005DBBBA
 005DBB74    cmp         byte ptr [ebp-4],0
>005DBB78    je          005DBBA0
 005DBB7A    movzx       edx,byte ptr [ebx+1C8];TSpeedButton.FDown:Boolean
 005DBB81    xor         dl,1
 005DBB84    mov         eax,ebx
 005DBB86    call        TSpeedButton.SetDown
 005DBB8B    cmp         byte ptr [ebx+1C8],0;TSpeedButton.FDown:Boolean
>005DBB92    je          005DBBBA
 005DBB94    mov         eax,ebx
 005DBB96    mov         edx,dword ptr [eax]
 005DBB98    call        dword ptr [edx+0AC];TControl.Repaint
>005DBB9E    jmp         005DBBBA
 005DBBA0    cmp         byte ptr [ebx+1C8],0;TSpeedButton.FDown:Boolean
>005DBBA7    je          005DBBB0
 005DBBA9    mov         byte ptr [ebx+1DA],3;TSpeedButton.FState:TButtonState
 005DBBB0    mov         eax,ebx
 005DBBB2    mov         edx,dword ptr [eax]
 005DBBB4    call        dword ptr [edx+0AC];TControl.Repaint
 005DBBBA    cmp         byte ptr [ebp-4],0
>005DBBBE    je          005DBBCB
 005DBBC0    mov         eax,ebx
 005DBBC2    mov         si,0FFEB
 005DBBC6    call        @CallDynaInst;TSpeedButton.Click
 005DBBCB    mov         eax,ebx
 005DBBCD    call        005DB948
 005DBBD2    pop         edi
 005DBBD3    pop         esi
 005DBBD4    pop         ebx
 005DBBD5    pop         ecx
 005DBBD6    pop         ebp
 005DBBD7    ret         8
end;*}

//005DBBDC
procedure TSpeedButton.Click;
begin
{*
 005DBBDC    call        TControl.Click
 005DBBE1    ret
*}
end;

//005DBBE4
procedure TBitBtn.GetPalette;
begin
{*
 005DBBE4    push        ebx
 005DBBE5    mov         ebx,eax
 005DBBE7    mov         eax,ebx
 005DBBE9    call        TBitBtn.GetGlyph
 005DBBEE    mov         edx,dword ptr [eax]
 005DBBF0    call        dword ptr [edx+28]
 005DBBF3    pop         ebx
 005DBBF4    ret
*}
end;

//005DBBF8
procedure TSpeedButton.sub_004E9934;
begin
{*
 005DBBF8    mov         eax,[005D6B48];TSpeedButtonActionLink
 005DBBFD    ret
*}
end;

//005DBC00
function TBitBtn.GetGlyph:TBitmap;
begin
{*
 005DBC00    mov         eax,dword ptr [eax+1C4]
 005DBC06    mov         eax,dword ptr [eax+4]
 005DBC09    ret
*}
end;

//005DBC0C
procedure TSpeedButton.SetGlyph(Value:TBitmap);
begin
{*
 005DBC0C    push        esi
 005DBC0D    mov         esi,eax
 005DBC0F    mov         eax,dword ptr [esi+1C4];TSpeedButton.FGlyph:TObject
 005DBC15    call        TButtonGlyph.SetGlyph
 005DBC1A    mov         eax,esi
 005DBC1C    mov         edx,dword ptr [eax]
 005DBC1E    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBC24    pop         esi
 005DBC25    ret
*}
end;

//005DBC28
{*function TSpeedButton.GetNumGlyphs:?;
begin
 005DBC28    mov         eax,dword ptr [eax+1C4];TSpeedButton.FGlyph:TObject
 005DBC2E    movzx       eax,byte ptr [eax+20]
 005DBC32    ret
end;*}

//005DBC34
procedure TSpeedButton.SetNumGlyphs(Value:TNumGlyphs);
begin
{*
 005DBC34    push        esi
 005DBC35    mov         esi,eax
 005DBC37    test        dl,dl
>005DBC39    jae         005DBC3F
 005DBC3B    mov         dl,1
>005DBC3D    jmp         005DBC46
 005DBC3F    cmp         dl,4
>005DBC42    jbe         005DBC46
 005DBC44    mov         dl,4
 005DBC46    mov         eax,dword ptr [esi+1C4];TSpeedButton.FGlyph:TObject
 005DBC4C    cmp         dl,byte ptr [eax+20]
>005DBC4F    je          005DBC60
 005DBC51    call        TButtonGlyph.SetNumGlyphs
 005DBC56    mov         eax,esi
 005DBC58    mov         edx,dword ptr [eax]
 005DBC5A    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBC60    pop         esi
 005DBC61    ret
*}
end;

//005DBC64
{*procedure sub_005DBC64(?:?);
begin
 005DBC64    push        esi
 005DBC65    mov         esi,eax
 005DBC67    mov         eax,esi
 005DBC69    mov         edx,dword ptr [eax]
 005DBC6B    call        dword ptr [edx+0A8]
 005DBC71    pop         esi
 005DBC72    ret
end;*}

//005DBC74
function TSpeedButton.IsStoredGlyph(Value:TBitmap):Boolean;
begin
{*
 005DBC74    push        ebx
 005DBC75    mov         ebx,dword ptr [eax+78];TSpeedButton.FActionLink:TControlActionLink
 005DBC78    test        ebx,ebx
>005DBC7A    je          005DBC9C
 005DBC7C    mov         eax,ebx
 005DBC7E    mov         edx,dword ptr [eax]
 005DBC80    call        dword ptr [edx+40];TContainedActionLink.IsImageIndexLinked
 005DBC83    test        al,al
>005DBC85    je          005DBC9C
 005DBC87    mov         edx,dword ptr [ebx+24]
 005DBC8A    mov         eax,ebx
 005DBC8C    mov         ecx,dword ptr [eax]
 005DBC8E    call        dword ptr [ecx+0A0]
 005DBC94    test        al,al
>005DBC96    je          005DBC9C
 005DBC98    xor         eax,eax
 005DBC9A    pop         ebx
 005DBC9B    ret
 005DBC9C    mov         al,1
 005DBC9E    pop         ebx
 005DBC9F    ret
*}
end;

//005DBCA0
procedure TBitBtn.InternalCopyImage(Image:TBitmap; ImageList:ImgList.TCustomImageList; Index:Integer);
begin
{*
 005DBCA0    push        ebp
 005DBCA1    mov         ebp,esp
 005DBCA3    add         esp,0FFFFFFF0
 005DBCA6    push        ebx
 005DBCA7    push        esi
 005DBCA8    mov         esi,ecx
 005DBCAA    mov         ebx,edx
 005DBCAC    mov         edx,dword ptr [esi+54]
 005DBCAF    mov         eax,ebx
 005DBCB1    mov         ecx,dword ptr [eax]
 005DBCB3    call        dword ptr [ecx+44]
 005DBCB6    mov         edx,dword ptr [esi+50]
 005DBCB9    mov         eax,ebx
 005DBCBB    mov         ecx,dword ptr [eax]
 005DBCBD    call        dword ptr [ecx+38]
 005DBCC0    mov         eax,ebx
 005DBCC2    call        TBitmap.GetCanvas
 005DBCC7    mov         eax,dword ptr [eax+48]
 005DBCCA    mov         edx,0FF00FF
 005DBCCF    call        TBrush.SetColor
 005DBCD4    mov         eax,ebx
 005DBCD6    mov         edx,dword ptr [eax]
 005DBCD8    call        dword ptr [edx+24]
 005DBCDB    push        eax
 005DBCDC    lea         eax,[ebp-10]
 005DBCDF    push        eax
 005DBCE0    mov         eax,ebx
 005DBCE2    mov         edx,dword ptr [eax]
 005DBCE4    call        dword ptr [edx+30]
 005DBCE7    mov         ecx,eax
 005DBCE9    xor         edx,edx
 005DBCEB    xor         eax,eax
 005DBCED    call        Rect
 005DBCF2    lea         eax,[ebp-10]
 005DBCF5    push        eax
 005DBCF6    mov         eax,ebx
 005DBCF8    call        TBitmap.GetCanvas
 005DBCFD    pop         edx
 005DBCFE    mov         ecx,dword ptr [eax]
 005DBD00    call        dword ptr [ecx+54]
 005DBD03    push        0
 005DBD05    mov         eax,dword ptr [ebp+8]
 005DBD08    push        eax
 005DBD09    push        1
 005DBD0B    mov         eax,ebx
 005DBD0D    call        TBitmap.GetCanvas
 005DBD12    mov         edx,eax
 005DBD14    xor         ecx,ecx
 005DBD16    mov         eax,esi
 005DBD18    call        TCustomImageList.Draw
 005DBD1D    pop         esi
 005DBD1E    pop         ebx
 005DBD1F    mov         esp,ebp
 005DBD21    pop         ebp
 005DBD22    ret         4
*}
end;

//005DBD28
procedure sub_005DBD28(?:TSpeedButton);
begin
{*
 005DBD28    add         esp,0FFFFFFF0
 005DBD2B    mov         edx,dword ptr [eax+1C0]
 005DBD31    test        edx,edx
>005DBD33    je          005DBD5A
 005DBD35    cmp         dword ptr [eax+40],0
>005DBD39    je          005DBD5A
 005DBD3B    mov         dword ptr [esp],0B018
 005DBD42    mov         dword ptr [esp+4],edx
 005DBD46    mov         dword ptr [esp+8],eax
 005DBD4A    xor         edx,edx
 005DBD4C    mov         dword ptr [esp+0C],edx
 005DBD50    mov         edx,esp
 005DBD52    mov         eax,dword ptr [eax+40]
 005DBD55    call        TWinControl.Broadcast
 005DBD5A    add         esp,10
 005DBD5D    ret
*}
end;

//005DBD60
procedure TSpeedButton.SetDown(Value:Boolean);
begin
{*
 005DBD60    push        ebx
 005DBD61    push        esi
 005DBD62    mov         ebx,edx
 005DBD64    mov         esi,eax
 005DBD66    cmp         dword ptr [esi+1C0],0
>005DBD6D    jne         005DBD71
 005DBD6F    xor         ebx,ebx
 005DBD71    cmp         bl,byte ptr [esi+1C8]
>005DBD77    je          005DBDCD
 005DBD79    cmp         byte ptr [esi+1C8],0
>005DBD80    je          005DBD8B
 005DBD82    cmp         byte ptr [esi+1CA],0
>005DBD89    je          005DBDCD
 005DBD8B    mov         byte ptr [esi+1C8],bl
 005DBD91    test        bl,bl
>005DBD93    je          005DBDB1
 005DBD95    cmp         byte ptr [esi+1DA],0
>005DBD9C    jne         005DBDA8
 005DBD9E    mov         eax,esi
 005DBDA0    mov         edx,dword ptr [eax]
 005DBDA2    call        dword ptr [edx+0A8]
 005DBDA8    mov         byte ptr [esi+1DA],3
>005DBDAF    jmp         005DBDC2
 005DBDB1    mov         byte ptr [esi+1DA],0
 005DBDB8    mov         eax,esi
 005DBDBA    mov         edx,dword ptr [eax]
 005DBDBC    call        dword ptr [edx+0AC]
 005DBDC2    test        bl,bl
>005DBDC4    je          005DBDCD
 005DBDC6    mov         eax,esi
 005DBDC8    call        005DBD28
 005DBDCD    pop         esi
 005DBDCE    pop         ebx
 005DBDCF    ret
*}
end;

//005DBDD0
procedure TSpeedButton.SetFlat(Value:Boolean);
begin
{*
 005DBDD0    push        esi
 005DBDD1    mov         esi,eax
 005DBDD3    cmp         dl,byte ptr [esi+1D8];TSpeedButton.FFlat:Boolean
>005DBDD9    je          005DBDEB
 005DBDDB    mov         byte ptr [esi+1D8],dl;TSpeedButton.FFlat:Boolean
 005DBDE1    mov         eax,esi
 005DBDE3    mov         edx,dword ptr [eax]
 005DBDE5    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBDEB    pop         esi
 005DBDEC    ret
*}
end;

//005DBDF0
procedure TSpeedButton.SetGroupIndex(Value:Integer);
begin
{*
 005DBDF0    cmp         edx,dword ptr [eax+1C0]
>005DBDF6    je          005DBE03
 005DBDF8    mov         dword ptr [eax+1C0],edx
 005DBDFE    call        005DBD28
 005DBE03    ret
*}
end;

//005DBE04
procedure TSpeedButton.SetLayout(Value:TButtonLayout);
begin
{*
 005DBE04    push        esi
 005DBE05    mov         esi,eax
 005DBE07    cmp         dl,byte ptr [esi+1CB];TSpeedButton.FLayout:TButtonLayout
>005DBE0D    je          005DBE1F
 005DBE0F    mov         byte ptr [esi+1CB],dl;TSpeedButton.FLayout:TButtonLayout
 005DBE15    mov         eax,esi
 005DBE17    mov         edx,dword ptr [eax]
 005DBE19    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBE1F    pop         esi
 005DBE20    ret
*}
end;

//005DBE24
procedure TSpeedButton.SetMargin(Value:Integer);
begin
{*
 005DBE24    push        esi
 005DBE25    mov         esi,eax
 005DBE27    cmp         edx,dword ptr [esi+1D4];TSpeedButton.FMargin:Integer
>005DBE2D    je          005DBE44
 005DBE2F    cmp         edx,0FFFFFFFF
>005DBE32    jl          005DBE44
 005DBE34    mov         dword ptr [esi+1D4],edx;TSpeedButton.FMargin:Integer
 005DBE3A    mov         eax,esi
 005DBE3C    mov         edx,dword ptr [eax]
 005DBE3E    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBE44    pop         esi
 005DBE45    ret
*}
end;

//005DBE48
procedure TSpeedButton.SetSpacing(Value:Integer);
begin
{*
 005DBE48    push        esi
 005DBE49    mov         esi,eax
 005DBE4B    cmp         edx,dword ptr [esi+1CC];TSpeedButton.FSpacing:Integer
>005DBE51    je          005DBE63
 005DBE53    mov         dword ptr [esi+1CC],edx;TSpeedButton.FSpacing:Integer
 005DBE59    mov         eax,esi
 005DBE5B    mov         edx,dword ptr [eax]
 005DBE5D    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBE63    pop         esi
 005DBE64    ret
*}
end;

//005DBE68
procedure TSpeedButton.SetTransparent(Value:Boolean);
begin
{*
 005DBE68    push        esi
 005DBE69    mov         esi,eax
 005DBE6B    cmp         dl,byte ptr [esi+1D0];TSpeedButton.FTransparent:Boolean
>005DBE71    je          005DBE9B
 005DBE73    mov         byte ptr [esi+1D0],dl;TSpeedButton.FTransparent:Boolean
 005DBE79    test        dl,dl
>005DBE7B    je          005DBE89
 005DBE7D    mov         eax,[005DBEA0];0x40 gvar_005DBEA0
 005DBE82    not         eax
 005DBE84    and         dword ptr [esi+60],eax;TSpeedButton.FControlStyle:TControlStyle
>005DBE87    jmp         005DBE91
 005DBE89    mov         eax,[005DBEA0];0x40 gvar_005DBEA0
 005DBE8E    or          dword ptr [esi+60],eax;TSpeedButton.FControlStyle:TControlStyle
 005DBE91    mov         eax,esi
 005DBE93    mov         edx,dword ptr [eax]
 005DBE95    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBE9B    pop         esi
 005DBE9C    ret
*}
end;

//005DBEA4
procedure TSpeedButton.SetAllowAllUp(Value:Boolean);
begin
{*
 005DBEA4    cmp         dl,byte ptr [eax+1CA];TSpeedButton.FAllowAllUp:Boolean
>005DBEAA    je          005DBEB7
 005DBEAC    mov         byte ptr [eax+1CA],dl;TSpeedButton.FAllowAllUp:Boolean
 005DBEB2    call        005DBD28
 005DBEB7    ret
*}
end;

//005DBEB8
{*procedure TSpeedButton.WMLButtonDblClk(?:?);
begin
 005DBEB8    push        esi
 005DBEB9    mov         esi,eax
 005DBEBB    mov         eax,esi
 005DBEBD    call        TControl.WMLButtonDblClk
 005DBEC2    cmp         byte ptr [esi+1C8],0;TSpeedButton.FDown:Boolean
>005DBEC9    je          005DBED6
 005DBECB    mov         eax,esi
 005DBECD    mov         si,0FFEA
 005DBED1    call        @CallDynaInst;TControl.sub_004E8C50
 005DBED6    pop         esi
 005DBED7    ret
end;*}

//005DBED8
procedure TSpeedButton.CMEnabledChanged;
begin
{*
 005DBED8    push        esi
 005DBED9    mov         esi,eax
 005DBEDB    mov         eax,esi
 005DBEDD    mov         edx,dword ptr [eax]
 005DBEDF    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DBEE2    and         eax,7F
 005DBEE5    movzx       edx,byte ptr [eax+7A1E88]
 005DBEEC    mov         eax,dword ptr [esi+1C4];TSpeedButton.FGlyph:TObject
 005DBEF2    call        TButtonGlyph.CreateButtonGlyph
 005DBEF7    mov         eax,esi
 005DBEF9    call        005DB948
 005DBEFE    mov         eax,esi
 005DBF00    mov         edx,dword ptr [eax]
 005DBF02    call        dword ptr [edx+0AC];TControl.Repaint
 005DBF08    pop         esi
 005DBF09    ret
*}
end;

//005DBF0C
{*procedure TSpeedButton.CMButtonPressed(?:?);
begin
 005DBF0C    push        ebx
 005DBF0D    push        esi
 005DBF0E    mov         ebx,eax
 005DBF10    mov         eax,dword ptr [edx+4]
 005DBF13    cmp         eax,dword ptr [ebx+1C0];TSpeedButton.FGroupIndex:Integer
>005DBF19    jne         005DBF7D
 005DBF1B    mov         esi,dword ptr [edx+8]
 005DBF1E    cmp         ebx,esi
>005DBF20    je          005DBF7D
 005DBF22    cmp         byte ptr [esi+1C8],0
>005DBF29    je          005DBF70
 005DBF2B    cmp         byte ptr [ebx+1C8],0;TSpeedButton.FDown:Boolean
>005DBF32    je          005DBF70
 005DBF34    mov         byte ptr [ebx+1C8],0;TSpeedButton.FDown:Boolean
 005DBF3B    mov         byte ptr [ebx+1DA],0;TSpeedButton.FState:TButtonState
 005DBF42    mov         eax,ebx
 005DBF44    mov         edx,dword ptr [eax]
 005DBF46    call        dword ptr [edx+5C];TButton.GetAction
 005DBF49    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 005DBF4F    call        @IsClass
 005DBF54    test        al,al
>005DBF56    je          005DBF66
 005DBF58    mov         eax,ebx
 005DBF5A    mov         edx,dword ptr [eax]
 005DBF5C    call        dword ptr [edx+5C];TButton.GetAction
 005DBF5F    xor         edx,edx
 005DBF61    mov         ecx,dword ptr [eax]
 005DBF63    call        dword ptr [ecx+70]
 005DBF66    mov         eax,ebx
 005DBF68    mov         edx,dword ptr [eax]
 005DBF6A    call        dword ptr [edx+0A8];TControl.Invalidate
 005DBF70    movzx       eax,byte ptr [esi+1CA]
 005DBF77    mov         byte ptr [ebx+1CA],al;TSpeedButton.FAllowAllUp:Boolean
 005DBF7D    pop         esi
 005DBF7E    pop         ebx
 005DBF7F    ret
end;*}

//005DBF80
{*procedure TSpeedButton.CMDialogChar(?:?);
begin
 005DBF80    push        ebp
 005DBF81    mov         ebp,esp
 005DBF83    push        0
 005DBF85    push        ebx
 005DBF86    push        esi
 005DBF87    push        edi
 005DBF88    mov         edi,edx
 005DBF8A    mov         ebx,eax
 005DBF8C    xor         eax,eax
 005DBF8E    push        ebp
 005DBF8F    push        5DC00A
 005DBF94    push        dword ptr fs:[eax]
 005DBF97    mov         dword ptr fs:[eax],esp
 005DBF9A    lea         edx,[ebp-4]
 005DBF9D    mov         eax,ebx
 005DBF9F    call        TControl.GetText
 005DBFA4    mov         edx,dword ptr [ebp-4]
 005DBFA7    movzx       eax,word ptr [edi+4]
 005DBFAB    call        IsAccel
 005DBFB0    test        al,al
>005DBFB2    je          005DBFEB
 005DBFB4    mov         eax,ebx
 005DBFB6    mov         edx,dword ptr [eax]
 005DBFB8    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DBFBB    test        al,al
>005DBFBD    je          005DBFEB
 005DBFBF    cmp         byte ptr [ebx+69],0;TSpeedButton.FVisible:Boolean
>005DBFC3    je          005DBFEB
 005DBFC5    cmp         dword ptr [ebx+40],0;TSpeedButton.FParent:TWinControl
>005DBFC9    je          005DBFEB
 005DBFCB    mov         eax,dword ptr [ebx+40];TSpeedButton.FParent:TWinControl
 005DBFCE    cmp         byte ptr [eax+205],0;TWinControl.FShowing:Boolean
>005DBFD5    je          005DBFEB
 005DBFD7    mov         eax,ebx
 005DBFD9    mov         si,0FFEB
 005DBFDD    call        @CallDynaInst;TSpeedButton.Click
 005DBFE2    mov         dword ptr [edi+0C],1
>005DBFE9    jmp         005DBFF4
 005DBFEB    mov         edx,edi
 005DBFED    mov         eax,ebx
 005DBFEF    mov         ecx,dword ptr [eax]
 005DBFF1    call        dword ptr [ecx-10];TControl.DefaultHandler
 005DBFF4    xor         eax,eax
 005DBFF6    pop         edx
 005DBFF7    pop         ecx
 005DBFF8    pop         ecx
 005DBFF9    mov         dword ptr fs:[eax],edx
 005DBFFC    push        5DC011
 005DC001    lea         eax,[ebp-4]
 005DC004    call        @UStrClr
 005DC009    ret
>005DC00A    jmp         @HandleFinally
>005DC00F    jmp         005DC001
 005DC011    pop         edi
 005DC012    pop         esi
 005DC013    pop         ebx
 005DC014    pop         ecx
 005DC015    pop         ebp
 005DC016    ret
end;*}

//005DC018
procedure TSpeedButton.CMFontChanged;
begin
{*
 005DC018    push        esi
 005DC019    mov         esi,eax
 005DC01B    mov         eax,esi
 005DC01D    mov         edx,dword ptr [eax]
 005DC01F    call        dword ptr [edx+0A8];TControl.Invalidate
 005DC025    pop         esi
 005DC026    ret
*}
end;

//005DC028
procedure TSpeedButton.CMTextChanged;
begin
{*
 005DC028    push        esi
 005DC029    mov         esi,eax
 005DC02B    mov         eax,esi
 005DC02D    mov         edx,dword ptr [eax]
 005DC02F    call        dword ptr [edx+0A8];TControl.Invalidate
 005DC035    pop         esi
 005DC036    ret
*}
end;

//005DC038
procedure TSpeedButton.CMSysColorChange;
begin
{*
 005DC038    push        ebx
 005DC039    push        esi
 005DC03A    mov         ebx,eax
 005DC03C    mov         esi,dword ptr [ebx+1C4];TSpeedButton.FGlyph:TObject
 005DC042    mov         eax,esi
 005DC044    call        TButtonGlyph.Invalidate
 005DC049    movzx       edx,byte ptr [ebx+1DA];TSpeedButton.FState:TButtonState
 005DC050    mov         eax,esi
 005DC052    call        TButtonGlyph.CreateButtonGlyph
 005DC057    pop         esi
 005DC058    pop         ebx
 005DC059    ret
*}
end;

//005DC05C
{*procedure TSpeedButton.CMMouseEnter(?:?);
begin
 005DC05C    push        esi
 005DC05D    mov         esi,eax
 005DC05F    mov         eax,esi
 005DC061    call        TControl.CMMouseEnter
 005DC066    cmp         byte ptr [esi+1D8],0;TSpeedButton.FFlat:Boolean
>005DC06D    je          005DC097
 005DC06F    cmp         byte ptr [esi+1D9],0;TSpeedButton.FMouseInControl:Boolean
>005DC076    jne         005DC097
 005DC078    mov         eax,esi
 005DC07A    mov         edx,dword ptr [eax]
 005DC07C    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DC07F    test        al,al
>005DC081    je          005DC097
 005DC083    mov         eax,esi
 005DC085    call        TGroupBox.GetDragMode
 005DC08A    cmp         al,1
>005DC08C    je          005DC097
 005DC08E    call        user32.GetCapture
 005DC093    test        eax,eax
>005DC095    je          005DC09B
 005DC097    xor         eax,eax
>005DC099    jmp         005DC09D
 005DC09B    mov         al,1
 005DC09D    test        al,al
>005DC09F    je          005DC0A5
 005DC0A1    mov         al,1
>005DC0A3    jmp         005DC0AF
 005DC0A5    call        TStyleManager.GetActiveStyle
 005DC0AA    mov         edx,dword ptr [eax]
 005DC0AC    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005DC0AF    test        al,al
>005DC0B1    je          005DC0D5
 005DC0B3    test        byte ptr [esi+1C],10;TSpeedButton.FComponentState:TComponentState
>005DC0B7    jne         005DC0D5
 005DC0B9    mov         byte ptr [esi+1D9],1;TSpeedButton.FMouseInControl:Boolean
 005DC0C0    mov         eax,esi
 005DC0C2    mov         edx,dword ptr [eax]
 005DC0C4    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DC0C7    test        al,al
>005DC0C9    je          005DC0D5
 005DC0CB    mov         eax,esi
 005DC0CD    mov         edx,dword ptr [eax]
 005DC0CF    call        dword ptr [edx+0AC];TControl.Repaint
 005DC0D5    pop         esi
 005DC0D6    ret
end;*}

//005DC0D8
{*procedure TSpeedButton.CMMouseLeave(?:?);
begin
 005DC0D8    push        esi
 005DC0D9    mov         esi,eax
 005DC0DB    mov         eax,esi
 005DC0DD    call        TControl.CMMouseLeave
 005DC0E2    cmp         byte ptr [esi+1D8],0;TSpeedButton.FFlat:Boolean
>005DC0E9    je          005DC108
 005DC0EB    cmp         byte ptr [esi+1D9],0;TSpeedButton.FMouseInControl:Boolean
>005DC0F2    je          005DC108
 005DC0F4    mov         eax,esi
 005DC0F6    mov         edx,dword ptr [eax]
 005DC0F8    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DC0FB    test        al,al
>005DC0FD    je          005DC108
 005DC0FF    cmp         byte ptr [esi+1C9],0;TSpeedButton.FDragging:Boolean
>005DC106    je          005DC10C
 005DC108    xor         eax,eax
>005DC10A    jmp         005DC10E
 005DC10C    mov         al,1
 005DC10E    test        al,al
>005DC110    je          005DC116
 005DC112    mov         al,1
>005DC114    jmp         005DC120
 005DC116    call        TStyleManager.GetActiveStyle
 005DC11B    mov         edx,dword ptr [eax]
 005DC11D    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005DC120    test        al,al
>005DC122    je          005DC140
 005DC124    mov         byte ptr [esi+1D9],0;TSpeedButton.FMouseInControl:Boolean
 005DC12B    mov         eax,esi
 005DC12D    mov         edx,dword ptr [eax]
 005DC12F    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 005DC132    test        al,al
>005DC134    je          005DC140
 005DC136    mov         eax,esi
 005DC138    mov         edx,dword ptr [eax]
 005DC13A    call        dword ptr [edx+0AC];TControl.Repaint
 005DC140    pop         esi
 005DC141    ret
end;*}

//005DC144
procedure TBitBtn.CopyImage(ImageList:ImgList.TCustomImageList; Index:Integer);
begin
{*
 005DC144    push        ebx
 005DC145    push        esi
 005DC146    push        edi
 005DC147    mov         edi,ecx
 005DC149    mov         esi,edx
 005DC14B    mov         ebx,eax
 005DC14D    push        edi
 005DC14E    mov         eax,ebx
 005DC150    call        TBitBtn.GetGlyph
 005DC155    mov         edx,eax
 005DC157    mov         ecx,esi
 005DC159    mov         eax,ebx
 005DC15B    call        TBitBtn.InternalCopyImage
 005DC160    pop         edi
 005DC161    pop         esi
 005DC162    pop         ebx
 005DC163    ret
*}
end;

//005DC164
{*procedure TSpeedButton.sub_004E980C(?:?; ?:?);
begin
 005DC164    push        ebx
 005DC165    push        esi
 005DC166    push        edi
 005DC167    push        ebp
 005DC168    mov         ebx,ecx
 005DC16A    mov         ebp,edx
 005DC16C    mov         esi,eax
 005DC16E    mov         ecx,ebx
 005DC170    mov         edx,ebp
 005DC172    mov         eax,esi
 005DC174    call        TControl.sub_004E980C
 005DC179    mov         eax,ebp
 005DC17B    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 005DC181    call        @IsClass
 005DC186    test        al,al
>005DC188    je          005DC26E
 005DC18E    mov         edi,dword ptr [esi+78];TSpeedButton.FActionLink:TControlActionLink
 005DC191    test        bl,bl
>005DC193    je          005DC1BA
 005DC195    mov         edx,dword ptr [edi+24]
 005DC198    mov         eax,edi
 005DC19A    mov         ecx,dword ptr [eax]
 005DC19C    call        dword ptr [ecx+0A0]
 005DC1A2    test        al,al
>005DC1A4    jne         005DC1BA
 005DC1A6    mov         eax,esi
 005DC1A8    call        TBitBtn.GetGlyph
 005DC1AD    mov         edx,dword ptr [eax]
 005DC1AF    call        dword ptr [edx+20];TBitmap.GetEmpty
 005DC1B2    test        al,al
>005DC1B4    je          005DC26E
 005DC1BA    test        bl,bl
>005DC1BC    jne         005DC1CF
 005DC1BE    cmp         dword ptr [edi+24],0FFFFFFFF
>005DC1C2    jne         005DC1CF
 005DC1C4    mov         eax,dword ptr [edi+24]
 005DC1C7    cmp         eax,dword ptr [ebp+90]
>005DC1CD    je          005DC1EC
 005DC1CF    mov         eax,ebp
 005DC1D1    mov         edx,dword ptr [eax+90]
 005DC1D7    mov         dword ptr [edi+24],edx
 005DC1DA    cmp         dword ptr [eax+90],0FFFFFFFF
>005DC1E1    je          005DC1EC
 005DC1E3    xor         edx,edx
 005DC1E5    mov         eax,esi
 005DC1E7    call        TSpeedButton.SetGlyph
 005DC1EC    test        bl,bl
>005DC1EE    jne         005DC1F9
 005DC1F0    cmp         dword ptr [esi+1C0],0;TSpeedButton.FGroupIndex:Integer
>005DC1F7    jne         005DC203
 005DC1F9    mov         edx,dword ptr [ebp+74]
 005DC1FC    mov         eax,esi
 005DC1FE    call        TSpeedButton.SetGroupIndex
 005DC203    mov         eax,esi
 005DC205    call        TBitBtn.GetGlyph
 005DC20A    mov         edx,dword ptr [eax]
 005DC20C    call        dword ptr [edx+20];TBitmap.GetEmpty
 005DC20F    test        al,al
>005DC211    je          005DC21C
 005DC213    cmp         dword ptr [ebp+64],0
 005DC217    setne       al
>005DC21A    jmp         005DC21E
 005DC21C    xor         eax,eax
 005DC21E    test        al,al
>005DC220    je          005DC22E
 005DC222    mov         eax,dword ptr [ebp+64]
 005DC225    cmp         dword ptr [eax+74],0
 005DC229    setne       al
>005DC22C    jmp         005DC230
 005DC22E    xor         eax,eax
 005DC230    test        al,al
>005DC232    je          005DC240
 005DC234    cmp         dword ptr [ebp+90],0
 005DC23B    setge       al
>005DC23E    jmp         005DC242
 005DC240    xor         eax,eax
 005DC242    test        al,al
>005DC244    je          005DC26E
 005DC246    mov         ebx,ebp
 005DC248    mov         eax,dword ptr [ebx+64]
 005DC24B    mov         eax,dword ptr [eax+74]
 005DC24E    mov         edx,dword ptr [eax]
 005DC250    call        dword ptr [edx+48]
 005DC253    cmp         eax,dword ptr [ebx+90]
>005DC259    jle         005DC26E
 005DC25B    mov         ecx,dword ptr [ebx+90]
 005DC261    mov         eax,dword ptr [ebx+64]
 005DC264    mov         edx,dword ptr [eax+74]
 005DC267    mov         eax,esi
 005DC269    call        TBitBtn.CopyImage
 005DC26E    pop         ebp
 005DC26F    pop         edi
 005DC270    pop         esi
 005DC271    pop         ebx
 005DC272    ret
end;*}

Initialization
//0079D828
{*
 0079D828    sub         dword ptr ds:[7CA7FC],1
>0079D82F    jae         0079D847
 0079D831    mov         ecx,dword ptr ds:[5D843C];TBitBtnStyleHook
 0079D837    mov         edx,dword ptr ds:[5D7820];TBitBtn
 0079D83D    mov         eax,[005738E0];TCustomStyleEngine
 0079D842    call        TCustomStyleEngine.RegisterStyleHook
 0079D847    ret
*}
Finalization
end.