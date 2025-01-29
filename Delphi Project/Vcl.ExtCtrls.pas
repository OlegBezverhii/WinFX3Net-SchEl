//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.ExtCtrls;

interface

uses
  SysUtils, Classes, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.TypInfo, System.Classes, Vcl.Controls, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, Vcl.ExtCtrls;

type
  TImage = class(TGraphicControl)
  published
    constructor Create(AOwner:TComponent);//0056448C
    destructor Destroy();//00564520
  public
    FPicture:TPicture;//f1C0
    FOnProgress:TProgressEvent;//f1C8
    FCenter:Boolean;//f1C9
    FIncrementalDisplay:Boolean;//f1CA
    FTransparent:Boolean;//f1CB
    FDrawing:Boolean;//f1CC
    FProportional:Boolean;//f1CD
    FStretch:Boolean;//f1D0
    FCenter:Boolean;//f1D1
    FIncrementalDisplay:Boolean;//f1D2
    FTransparent:Boolean;//f1D3
    FDrawing:Boolean;//f1D4
    FProportional:Boolean;//f1D5
    function CanObserve(const ID:Integer):Boolean; virtual;//v1C//0056456C
    constructor Create(AOwner:TComponent); virtual;//v3C//0056448C
    //function v48(?:?; ?:?):?; virtual;//v48//00564CD0
    procedure vB8; virtual;//vB8//0056474C
    procedure sub_00564D38; dynamic;//00564D38
    //procedure sub_005648EC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//005648EC
    procedure sub_004E5D1C; dynamic;//00564550
    procedure SetCenter(Value:Boolean);//00564A58
    procedure SetPicture(Value:TPicture);//00564A70
    procedure SetStretch(Value:Boolean);//00564A7C
    procedure SetTransparent(Value:Boolean);//00564A94
    procedure SetProportional(Value:Boolean);//00564AAC
  end;
  TBevelStyle = (bsLowered, bsRaised);
  TBevelShape = (bsBox, bsFrame, bsTopLine, bsBottomLine, bsLeftLine, bsRightLine, bsSpacer);
  TBevel = class(TGraphicControl)
  published
    constructor Create(AOwner:TComponent);//00564D9C
  public
    FStyle:TBevelStyle;//f1C0
    FShape:TBevelShape;//f1C1
    constructor Create(AOwner:TComponent); virtual;//v3C//00564D9C
    procedure vB8; virtual;//vB8//00564F6C
    procedure SetStyle(Value:TBevelStyle);//00564E04
    procedure SetShape(Value:TBevelShape);//00564E24
  end;
  TTimer = class(TComponent)
  published
    destructor Destroy();//00565270
    constructor Create;//00565220
  public
    FInterval:Cardinal;//f40
    FWindowHandle:HWND;//f44
    FOnTimer:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FEnabled:Boolean;//f50
    destructor Destroy(); virtual;//00565270
    constructor Create; virtual;//v3C//00565220
    procedure sub_005653EC; dynamic;//005653EC
    procedure SetEnabled(Value:Boolean);//005653B4
    procedure SetInterval(Value:Cardinal);//005653C4
    procedure SetOnTimer(Value:Classes.TNotifyEvent);//005653D4
  end;
  TCustomPanel = class(TCustomControl)
  published
    procedure GetControlsAlignment;//00565AD0
    constructor Create(AOwner:TComponent);//00565400
  public
    FAlignment:TAlignment;//f298
    FAutoSizeDocking:Boolean;//f299
    FBevelInner:TBevelCut;//f29A
    FBevelOuter:TBevelCut;//f29B
    FBevelWidth:TBevelWidth;//f29C
    FFullRepaint:Boolean;//f29D
    FLocked:Boolean;//f29E
    FParentBackgroundSet:Boolean;//f29F
    FBorderWidth:TBorderWidth;//f2A0
    FVerticalAlignment:TVerticalAlignment;//f2A1
    FBorderStyle:TBorderStyle;//f2A4
    FFullRepaint:Boolean;//f2A5
    FLocked:Boolean;//f2A6
    FParentBackgroundSet:Boolean;//f2A7
    FShowCaption:Boolean;//f2A8
    FVerticalAlignment:TVerticalAlignment;//f2A9
    constructor Create(AOwner:TComponent); virtual;//v3C//00565400
    //function v48(?:?; ?:?):?; virtual;//v48//00565C6C
    procedure v9C; virtual;//v9C//00565A04
    //procedure vB8(?:?); virtual;//vB8//00565AD8
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//005654E0
    procedure SetParentBackground(Value:Boolean); virtual;//vF0//00565C98
    procedure v108; virtual;//v108//005656EC
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//0056559C
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0056555C
    procedure CMTextChanged; message CM_TEXTCHANGED;//0056554C
    //procedure CMIsToolControl(?:?); message CM_ISTOOLCONTROL;//00565588
    //procedure CMDockClient(?:?); message CM_DOCKCLIENT;//00565B30
    procedure CMBorderChanged; message CM_BORDERCHANGED;//00565534
    procedure GetControlsAlignment; dynamic;//00565AD0
  end;
  TPanel = class(TCustomPanel)
    procedure SetAlignment(Value:TAlignment);//00565A14
    procedure SetBevelInner(Value:TBevelCut);//00565A2C
    procedure SetBevelOuter(Value:TBevelCut);//00565A48
    procedure SetBevelWidth(Value:TBevelWidth);//00565A64
    procedure SetBorderWidth(Value:TBorderWidth);//00565A80
    procedure SetBorderStyle(Value:TBorderStyle);//00565A9C
    procedure SetShowCaption(Value:Boolean);//00565AB0
    procedure SetVerticalAlignment(Value:TVerticalAlignment);//00565CD0
  end;
  TCustomRadioGroup = class(TCustomGroupBox)
  published
    destructor Destroy();//005661A8
    constructor Create(AOwner:TComponent);//00566118
    procedure FlipChildren(AllLevels:Boolean);//005661F4
    function GetButtons(Index:Integer):TRadioButton;//005666E8
    procedure GetChildren(Root:TComponent; Proc:TGetChildProc);//005666E0
  public
    FButtons:TList;//f298
    FItems:TStrings;//f29C
    FItemIndex:Integer;//f2A0
    FUpdating:Boolean;//f2A1
    FWordWrap:Boolean;//f2A2
    FColumns:Integer;//f2A4
    FReading:Boolean;//f2A8
    FUpdating:Boolean;//f2A9
    FWordWrap:Boolean;//f2AA
    destructor Destroy(); virtual;//005661A8
    procedure ReadState(Reader:TReader); virtual;//v18//0056641C
    constructor Create(AOwner:TComponent); virtual;//v3C//00566118
    //function v10C:?; virtual;//v10C//005666DC
    //procedure WMSize(?:?); message WM_SIZE;//005666C8
    procedure CMEnabledChanged; message CM_ENABLEDCHANGED;//00566670
    procedure CMFontChanged; message CM_FONTCHANGED;//005666B4
    procedure FlipChildren(AllLevels:Boolean); dynamic;//005661F4
    procedure GetChildren(Root:TComponent; Proc:TGetChildProc); dynamic;//005666E0
  end;
  TRadioGroup = class(TCustomRadioGroup)
    procedure SetColumns(Value:Integer);//0056649C
    procedure SetItemIndex(Value:Integer);//005664D4
    procedure SetItems(Value:TStrings);//00566558
    procedure SetWordWrap(Value:Boolean);//00566568
  end;
  TSplitterCanResizeEvent = procedure(Sender:TObject; var NewSize:Integer; var Accept:Boolean) of object;;
  TResizeStyle = (rsNone, rsLine, rsUpdate, rsPattern);
  TSplitter = class(TGraphicControl)
  published
    constructor Create(AOwner:TComponent);//00566700
    destructor Destroy();//00566794
  public
    FActiveControl:TWinControl;//f1C0
    FAutoSnap:Boolean;//f1C4
    FBeveled:Boolean;//f1C5
    FBrush:TBrush;//f1C8
    FControl:TControl;//f1CC
    FDownPos:TPoint;//f1D0
    FLineVisible:Boolean;//f1D4
    FLineDC:HDC;//f1D8
    FLineVisible:Boolean;//f1DC
    FMinSize:NaturalNumber;//f1E0
    FMaxSize:Integer;//f1E4
    FNewSize:Integer;//f1E8
    FOldKeyDown:TKeyEvent;//f1F0
    FPrevBrush:HBRUSH;//f1F4
    FOldSize:Integer;//f1F8
    FPrevBrush:HBRUSH;//f1FC
    FResizeStyle:TResizeStyle;//f200
    FSplit:Integer;//f204
    FOnCanResize:TSplitterCanResizeEvent;//f208
    f20A:word;//f20A
    f20C:dword;//f20C
    FOnMoved:TNotifyEvent;//f210
    f212:word;//f212
    f214:dword;//f214
    FOnPaint:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    destructor Destroy(); virtual;//00566794
    constructor Create(AOwner:TComponent); virtual;//v3C//00566700
    procedure v78; virtual;//v78//00566B10
    procedure vB8; virtual;//vB8//00566B50
    //function vBC(?:?):?; virtual;//vBC//00566D78
    //procedure vC0(?:?); virtual;//vC0//00566D48
    procedure sub_00567340; dynamic;//00567340
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?); dynamic;//00567294
    //procedure sub_004E8F54(?:?; ?:?; ?:?); dynamic;//005671E8
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?); dynamic;//00566DA4
    procedure SetBeveled(Value:Boolean);//00567328
  end;
  TBalloonFlags = (bfNone, bfInfo, bfWarning, bfError);
  TCustomTrayIcon = class(TComponent)
  published
    procedure SetDefaultIcon;//00567C34
    procedure ShowBalloonHint;//00567CC0
    procedure Refresh;//00567B04
    constructor Create(Owner:TComponent);//005673B0
    destructor Destroy();//00567558
  public
    FAnimate:Boolean;//f40
    FBalloonHint:string;//f44
    FIsClicked:Boolean;//f45
    FBalloonTitle:string;//f48
    FBalloonFlags:TBalloonFlags;//f4C
    FIsClicked:Boolean;//f4D
    FCurrentIcon:TIcon;//f50
    FData:PNotifyIconDataW;//f54
    FIcon:TIcon;//f58
    FIconList:TCustomImageList;//f5C
    FPopupMenu:TPopupMenu;//f60
    FTimer:TTimer;//f64
    FHint:string;//f68
    FIconIndex:Integer;//f6C
    FVisible:Boolean;//f70
    FOnBalloonClick:TNotifyEvent;//f78
    f7A:word;//f7A
    f7C:dword;//f7C
    FOnClick:TNotifyEvent;//f80
    f82:word;//f82
    f84:dword;//f84
    FOnDblClick:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    FOnMouseDown:TMouseEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    FOnMouseMove:TMouseMoveEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    FOnMouseUp:TMouseEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    FOnAnimate:TNotifyEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    destructor Destroy(); virtual;//00567558
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//00567C88
    constructor Create(Owner:TComponent); virtual;//v3C//005673B0
    //procedure v44(?:?); virtual;//v44//005675BC
    //procedure v48(?:?); virtual;//v48//00567B4C
    //procedure v4C(?:?); virtual;//v4C//005677C0
    procedure v50; virtual;//v50//00567B7C
    procedure ShowBalloonHint; virtual;//v54//00567CC0
  end;
  TGroupButton = class(TRadioButton)
  published
    constructor Create(RadioGroup:TCustomRadioGroup);//00565F40
    destructor Destroy();//00565FCC
  public
    FInClick:Boolean;//f2A0
    destructor Destroy(); virtual;//00565FCC
    //procedure sub_0050DB98(?:?); dynamic;//00566004
    //procedure sub_004EEC30(?:?); dynamic;//00566094
    //procedure sub_004EE9E0(?:?; ?:?); dynamic;//005660D8
  end;
    procedure DoRect;//00564368
    procedure Frame3D(Canvas:TCanvas; var Rect:Types.TRect; TopColor:Graphics.TColor; BottomColor:Graphics.TColor; Width:Integer);//0056442C
    procedure sub_004E5D1C;//00564550
    function CanObserve(const ID:Integer):Boolean;//0056456C
    //procedure sub_00564574(?:TImage; ?:?);//00564574
    //procedure sub_005646A0(?:TCanvas; ?:?);//005646A0
    procedure sub_0056474C;//0056474C
    //function sub_00564850(?:TImage):?;//00564850
    //procedure sub_005648EC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005648EC
    procedure sub_00564AC4(?:TImage);//00564AC4
    //function sub_00564CD0(?:?; ?:?):?;//00564CD0
    procedure sub_00564D38;//00564D38
    //procedure sub_00564E44(?:?; ?:?);//00564E44
    //procedure sub_00564F2C(?:TColor; ?:?; ?:?; ?:?; ?:?; ?:?);//00564F2C
    procedure sub_00564F6C;//00564F6C
    procedure sub_00565328(?:TTimer);//00565328
    procedure sub_005653EC;//005653EC
    procedure CreateParams(var Params:TCreateParams);//005654E0
    procedure CMBorderChanged;//00565534
    procedure CMTextChanged;//0056554C
    //procedure CMCtl3DChanged(?:?);//0056555C
    //procedure CMIsToolControl(?:?);//00565588
    //procedure WMWindowPosChangedMsg(?:?);//0056559C
    procedure AdjustColors(Bevel:Controls.TBevelCut);//005656AC
    procedure sub_005656EC;//005656EC
    procedure sub_00565A04;//00565A04
    //procedure sub_00565AD8(?:?);//00565AD8
    //procedure CMDockClient(?:?);//00565B30
    //function sub_00565C6C(?:?; ?:?):?;//00565C6C
    procedure SetParentBackground(Value:Boolean);//00565C98
    //procedure sub_0050DB98(?:?);//00566004
    //procedure sub_004EEC30(?:?);//00566094
    //procedure sub_004EE9E0(?:?; ?:?);//005660D8
    procedure CreateParams(var Params:Controls.TCreateParams);//00566108
    procedure AdjustBounds;//005661F8
    //procedure sub_00566394(?:?; ?:?);//00566394
    //procedure sub_005663CC(?:?);//005663CC
    procedure CMFontChanged(var Message:Messages.TMessage);//00566408
    procedure ReadState(Reader:TReader);//0056641C
    procedure CreateWnd;//00566448
    //procedure sub_0056645C(?:TCustomRadioGroup; ?:?);//0056645C
    procedure sub_0056657C(?:TCustomRadioGroup);//0056657C
    procedure CMEnabledChanged;//00566670
    procedure CMFontChanged;//005666B4
    //procedure WMSize(?:?);//005666C8
    //function sub_005666DC:?;//005666DC
    procedure sub_005667C4(?:TSplitter);//005667C4
    procedure sub_00566878(?:TSplitter);//00566878
    procedure sub_005668F8(?:TSplitter);//005668F8
    //function sub_00566940(?:TSplitter):?;//00566940
    procedure sub_00566B10;//00566B10
    procedure sub_00566B50;//00566B50
    //procedure sub_00566D48(?:?);//00566D48
    //function sub_00566D78(?:?):?;//00566D78
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?);//00566DA4
    procedure sub_00566F54(?:TSplitter);//00566F54
    //procedure sub_005670FC(?:TSplitter; ?:?; ?:?; ?:?; ?:?);//005670FC
    procedure sub_005671D0(?:TSplitter);//005671D0
    //procedure sub_004E8F54(?:?; ?:?; ?:?);//005671E8
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?);//00567294
    //procedure sub_005672EC(?:?; ?:?; ?:?; ?:?);//005672EC
    procedure sub_00567340;//00567340
    //procedure sub_005675BC(?:?);//005675BC
    function ShiftState:TShiftState;//00567780
    //procedure sub_005677C0(?:?);//005677C0
    //function sub_00567B30(?:TCustomTrayIcon; ?:?):?;//00567B30
    //procedure sub_00567B4C(?:?);//00567B4C
    procedure sub_00567B7C;//00567B7C
    //procedure sub_00567C70(?:TCustomTrayIcon; ?:?);//00567C70
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00567C88

implementation

//00564368
procedure DoRect;
begin
{*
 00564368    push        ebp
 00564369    mov         ebp,esp
 0056436B    add         esp,0FFFFFFD8
 0056436E    push        ebx
 0056436F    push        esi
 00564370    mov         ebx,dword ptr [ebp+8]
 00564373    mov         ebx,dword ptr [ebx-4]
 00564376    mov         eax,dword ptr [ebx+8]
 00564379    mov         dword ptr [ebp-8],eax
 0056437C    mov         eax,dword ptr [ebx+4]
 0056437F    mov         dword ptr [ebp-4],eax
 00564382    mov         eax,dword ptr [ebx]
 00564384    mov         dword ptr [ebp-10],eax
 00564387    mov         eax,dword ptr [ebx+0C]
 0056438A    mov         dword ptr [ebp-0C],eax
 0056438D    mov         eax,dword ptr [ebp+8]
 00564390    mov         edx,dword ptr [eax-0C]
 00564393    mov         eax,dword ptr [ebp+8]
 00564396    mov         eax,dword ptr [eax-8]
 00564399    mov         eax,dword ptr [eax+44]
 0056439C    call        TPen.SetColor
 005643A1    mov         eax,dword ptr [ebp-10]
 005643A4    mov         dword ptr [ebp-28],eax
 005643A7    mov         eax,dword ptr [ebp-0C]
 005643AA    mov         dword ptr [ebp-24],eax
 005643AD    mov         eax,dword ptr [ebx]
 005643AF    mov         dword ptr [ebp-20],eax
 005643B2    mov         eax,dword ptr [ebx+4]
 005643B5    mov         dword ptr [ebp-1C],eax
 005643B8    mov         eax,dword ptr [ebp-8]
 005643BB    mov         dword ptr [ebp-18],eax
 005643BE    mov         eax,dword ptr [ebp-4]
 005643C1    mov         dword ptr [ebp-14],eax
 005643C4    lea         edx,[ebp-28]
 005643C7    mov         eax,dword ptr [ebp+8]
 005643CA    mov         eax,dword ptr [eax-8]
 005643CD    mov         ecx,2
 005643D2    mov         esi,dword ptr [eax]
 005643D4    call        dword ptr [esi+70]
 005643D7    mov         eax,dword ptr [ebp+8]
 005643DA    mov         edx,dword ptr [eax+0C]
 005643DD    mov         eax,dword ptr [ebp+8]
 005643E0    mov         eax,dword ptr [eax-8]
 005643E3    mov         eax,dword ptr [eax+44]
 005643E6    call        TPen.SetColor
 005643EB    dec         dword ptr [ebp-10]
 005643EE    mov         eax,dword ptr [ebp-8]
 005643F1    mov         dword ptr [ebp-28],eax
 005643F4    mov         eax,dword ptr [ebp-4]
 005643F7    mov         dword ptr [ebp-24],eax
 005643FA    mov         eax,dword ptr [ebx+8]
 005643FD    mov         dword ptr [ebp-20],eax
 00564400    mov         eax,dword ptr [ebx+0C]
 00564403    mov         dword ptr [ebp-1C],eax
 00564406    mov         eax,dword ptr [ebp-10]
 00564409    mov         dword ptr [ebp-18],eax
 0056440C    mov         eax,dword ptr [ebp-0C]
 0056440F    mov         dword ptr [ebp-14],eax
 00564412    lea         edx,[ebp-28]
 00564415    mov         eax,dword ptr [ebp+8]
 00564418    mov         eax,dword ptr [eax-8]
 0056441B    mov         ecx,2
 00564420    mov         ebx,dword ptr [eax]
 00564422    call        dword ptr [ebx+70]
 00564425    pop         esi
 00564426    pop         ebx
 00564427    mov         esp,ebp
 00564429    pop         ebp
 0056442A    ret
*}
end;

//0056442C
procedure Frame3D(Canvas:TCanvas; var Rect:Types.TRect; TopColor:Graphics.TColor; BottomColor:Graphics.TColor; Width:Integer);
begin
{*
 0056442C    push        ebp
 0056442D    mov         ebp,esp
 0056442F    add         esp,0FFFFFFF4
 00564432    push        ebx
 00564433    mov         dword ptr [ebp-0C],ecx
 00564436    mov         dword ptr [ebp-4],edx
 00564439    mov         dword ptr [ebp-8],eax
 0056443C    mov         ebx,dword ptr [ebp+8]
 0056443F    mov         eax,dword ptr [ebp-8]
 00564442    mov         eax,dword ptr [eax+44]
 00564445    mov         edx,1
 0056444A    call        TPen.SetWidth
 0056444F    mov         eax,dword ptr [ebp-4]
 00564452    dec         dword ptr [eax+0C]
 00564455    mov         eax,dword ptr [ebp-4]
 00564458    dec         dword ptr [eax+8]
 0056445B    test        ebx,ebx
>0056445D    jle         00564479
 0056445F    dec         ebx
 00564460    push        ebp
 00564461    call        DoRect
 00564466    pop         ecx
 00564467    mov         eax,dword ptr [ebp-4]
 0056446A    or          ecx,0FFFFFFFF
 0056446D    or          edx,0FFFFFFFF
 00564470    call        InflateRect
 00564475    test        ebx,ebx
>00564477    jg          0056445F
 00564479    mov         eax,dword ptr [ebp-4]
 0056447C    inc         dword ptr [eax+0C]
 0056447F    mov         eax,dword ptr [ebp-4]
 00564482    inc         dword ptr [eax+8]
 00564485    pop         ebx
 00564486    mov         esp,ebp
 00564488    pop         ebp
 00564489    ret         8
*}
end;

//0056448C
constructor TImage.Create(AOwner:TComponent);
begin
{*
 0056448C    push        ebp
 0056448D    mov         ebp,esp
 0056448F    push        ecx
 00564490    push        ebx
 00564491    push        esi
 00564492    test        dl,dl
>00564494    je          0056449E
 00564496    add         esp,0FFFFFFF0
 00564499    call        @ClassCreate
 0056449E    mov         byte ptr [ebp-1],dl
 005644A1    mov         ebx,eax
 005644A3    xor         edx,edx
 005644A5    mov         eax,ebx
 005644A7    call        TGraphicControl.Create
 005644AC    mov         eax,[0056451C];0x80800 gvar_0056451C
 005644B1    or          dword ptr [ebx+60],eax;TImage.FControlStyle:TControlStyle
 005644B4    mov         dl,1
 005644B6    mov         eax,[004C0BB8];TPicture
 005644BB    call        TPicture.Create;TPicture.Create
 005644C0    mov         esi,eax
 005644C2    mov         dword ptr [ebx+1C0],esi;TImage.FPicture:TPicture
 005644C8    mov         dword ptr [esi+14],ebx;TPicture.?f14:TImage
 005644CB    mov         dword ptr [esi+10],564AC4;TPicture.FOnChange:TNotifyEvent sub_00564AC4
 005644D2    mov         dword ptr [esi+24],ebx;TPicture.?f24:TImage
 005644D5    mov         eax,ebx
 005644D7    mov         dx,0FFC5
 005644DB    call        @FindDynaInst;TImage.sub_005648EC
 005644E0    mov         dword ptr [esi+20],eax;TPicture.FOnProgress:TProgressEvent
 005644E3    mov         edx,69
 005644E8    mov         eax,ebx
 005644EA    call        TControl.SetHeight
 005644EF    mov         edx,69
 005644F4    mov         eax,ebx
 005644F6    call        TControl.SetWidth
 005644FB    mov         eax,ebx
 005644FD    cmp         byte ptr [ebp-1],0
>00564501    je          00564512
 00564503    call        @AfterConstruction
 00564508    pop         dword ptr fs:[0]
 0056450F    add         esp,0C
 00564512    mov         eax,ebx
 00564514    pop         esi
 00564515    pop         ebx
 00564516    pop         ecx
 00564517    pop         ebp
 00564518    ret
*}
end;

//00564520
destructor TSplitter.Destroy();
begin
{*
 00564520    push        ebx
 00564521    push        esi
 00564522    call        @BeforeDestruction
 00564527    mov         ebx,edx
 00564529    mov         esi,eax
 0056452B    mov         eax,dword ptr [esi+1C0]
 00564531    call        TObject.Free
 00564536    mov         dl,0FC
 00564538    and         dl,bl
 0056453A    mov         eax,esi
 0056453C    call        TGraphicControl.Destroy
 00564541    test        bl,bl
>00564543    jle         0056454C
 00564545    mov         eax,esi
 00564547    call        @ClassDestroy
 0056454C    pop         esi
 0056454D    pop         ebx
 0056454E    ret
*}
end;

//00564550
procedure TImage.sub_004E5D1C;
begin
{*
 00564550    xor         edx,edx
 00564552    mov         ecx,dword ptr [eax+1C0];TImage.FPicture:TPicture
 00564558    mov         ecx,dword ptr [ecx+0C];TPicture.FGraphic:TGraphic
 0056455B    test        ecx,ecx
>0056455D    je          00564568
 0056455F    mov         eax,ecx
 00564561    mov         edx,dword ptr [eax]
 00564563    call        dword ptr [edx+28];TGraphic.sub_004C7584
 00564566    mov         edx,eax
 00564568    mov         eax,edx
 0056456A    ret
*}
end;

//0056456C
function TImage.CanObserve(const ID:Integer):Boolean;
begin
{*
 0056456C    xor         eax,eax
 0056456E    dec         edx
>0056456F    jne         00564573
 00564571    mov         al,1
 00564573    ret
*}
end;

//00564574
{*procedure sub_00564574(?:TImage; ?:?);
begin
 00564574    push        ebx
 00564575    push        esi
 00564576    push        edi
 00564577    push        ebp
 00564578    add         esp,0FFFFFFE8
 0056457B    mov         ebp,edx
 0056457D    mov         ebx,eax
 0056457F    mov         eax,dword ptr [ebx+1C0]
 00564585    call        004C87A8
 0056458A    mov         esi,eax
 0056458C    mov         eax,dword ptr [ebx+1C0]
 00564592    call        004C87C0
 00564597    mov         edi,eax
 00564599    mov         eax,ebx
 0056459B    call        TControl.GetClientWidth
 005645A0    mov         dword ptr [esp],eax
 005645A3    mov         eax,ebx
 005645A5    call        TControl.GetClientHeight
 005645AA    mov         dword ptr [esp+4],eax
 005645AE    cmp         byte ptr [ebx+1D0],0
>005645B5    jne         005645D3
 005645B7    cmp         byte ptr [ebx+1D5],0
>005645BE    je          0056465D
 005645C4    cmp         esi,dword ptr [esp]
>005645C7    jg          005645D3
 005645C9    cmp         edi,dword ptr [esp+4]
>005645CD    jle         0056465D
 005645D3    cmp         byte ptr [ebx+1D5],0
>005645DA    je          00564656
 005645DC    test        esi,esi
>005645DE    jle         00564656
 005645E0    test        edi,edi
>005645E2    jle         00564656
 005645E4    mov         dword ptr [esp+10],esi
 005645E8    fild        dword ptr [esp+10]
 005645EC    mov         dword ptr [esp+14],edi
 005645F0    fild        dword ptr [esp+14]
 005645F4    fdivp       st(1),st
 005645F6    fstp        qword ptr [esp+8]
 005645FA    wait
 005645FB    cmp         edi,esi
>005645FD    jge         0056462B
 005645FF    mov         esi,dword ptr [esp]
 00564602    fild        dword ptr [esp]
 00564605    fdiv        qword ptr [esp+8]
 00564609    call        @TRUNC
 0056460E    mov         edi,eax
 00564610    cmp         edi,dword ptr [esp+4]
>00564614    jle         0056465D
 00564616    mov         edi,dword ptr [esp+4]
 0056461A    fild        dword ptr [esp+4]
 0056461E    fmul        qword ptr [esp+8]
 00564622    call        @TRUNC
 00564627    mov         esi,eax
>00564629    jmp         0056465D
 0056462B    mov         edi,dword ptr [esp+4]
 0056462F    fild        dword ptr [esp+4]
 00564633    fmul        qword ptr [esp+8]
 00564637    call        @TRUNC
 0056463C    mov         esi,eax
 0056463E    cmp         esi,dword ptr [esp]
>00564641    jle         0056465D
 00564643    mov         esi,dword ptr [esp]
 00564646    fild        dword ptr [esp]
 00564649    fdiv        qword ptr [esp+8]
 0056464D    call        @TRUNC
 00564652    mov         edi,eax
>00564654    jmp         0056465D
 00564656    mov         esi,dword ptr [esp]
 00564659    mov         edi,dword ptr [esp+4]
 0056465D    xor         eax,eax
 0056465F    mov         dword ptr [ebp],eax
 00564662    xor         eax,eax
 00564664    mov         dword ptr [ebp+4],eax
 00564667    mov         dword ptr [ebp+8],esi
 0056466A    mov         dword ptr [ebp+0C],edi
 0056466D    cmp         byte ptr [ebx+1D1],0
>00564674    je          00564696
 00564676    mov         ecx,dword ptr [esp+4]
 0056467A    sub         ecx,edi
 0056467C    sar         ecx,1
>0056467E    jns         00564683
 00564680    adc         ecx,0
 00564683    mov         edx,dword ptr [esp]
 00564686    sub         edx,esi
 00564688    sar         edx,1
>0056468A    jns         0056468F
 0056468C    adc         edx,0
 0056468F    mov         eax,ebp
 00564691    call        OffsetRect
 00564696    add         esp,18
 00564699    pop         ebp
 0056469A    pop         edi
 0056469B    pop         esi
 0056469C    pop         ebx
 0056469D    ret
end;*}

//005646A0
{*procedure sub_005646A0(?:TCanvas; ?:?);
begin
 005646A0    push        ebp
 005646A1    mov         ebp,esp
 005646A3    add         esp,0FFFFFFD8
 005646A6    push        ebx
 005646A7    mov         ebx,eax
 005646A9    lea         edx,[ebp-18]
 005646AC    mov         eax,dword ptr [ebp+8]
 005646AF    mov         eax,dword ptr [eax-4]
 005646B2    call        00564574
 005646B7    lea         eax,[ebp-4]
 005646BA    push        eax
 005646BB    push        0
 005646BD    push        2
 005646BF    lea         eax,[ebp-18]
 005646C2    push        eax
 005646C3    mov         eax,ebx
 005646C5    call        TCanvas.GetHandle
 005646CA    push        eax
 005646CB    call        004D426C
 005646D0    mov         dword ptr [ebp-8],eax
 005646D3    xor         edx,edx
 005646D5    push        ebp
 005646D6    push        564740
 005646DB    push        dword ptr fs:[edx]
 005646DE    mov         dword ptr fs:[edx],esp
 005646E1    mov         edx,dword ptr [ebp-4]
 005646E4    mov         eax,ebx
 005646E6    call        TCanvas.SetHandle
 005646EB    lea         edx,[ebp-28]
 005646EE    mov         eax,dword ptr [ebp+8]
 005646F1    mov         eax,dword ptr [eax-4]
 005646F4    call        00564574
 005646F9    lea         edx,[ebp-28]
 005646FC    mov         eax,dword ptr [ebp+8]
 005646FF    mov         eax,dword ptr [eax-4]
 00564702    mov         eax,dword ptr [eax+1C0]
 00564708    mov         ecx,dword ptr [eax+0C]
 0056470B    mov         eax,ebx
 0056470D    mov         ebx,dword ptr [eax]
 0056470F    call        dword ptr [ebx+88]
 00564715    push        0FF
 0056471A    lea         eax,[ebp-18]
 0056471D    push        eax
 0056471E    mov         eax,dword ptr [ebp-8]
 00564721    push        eax
 00564722    call        004D429C
 00564727    xor         eax,eax
 00564729    pop         edx
 0056472A    pop         ecx
 0056472B    pop         ecx
 0056472C    mov         dword ptr fs:[eax],edx
 0056472F    push        564747
 00564734    push        0FF
 00564736    mov         eax,dword ptr [ebp-8]
 00564739    push        eax
 0056473A    call        004D4284
 0056473F    ret
>00564740    jmp         @HandleFinally
>00564745    jmp         00564734
 00564747    pop         ebx
 00564748    mov         esp,ebp
 0056474A    pop         ebp
 0056474B    ret
end;*}

//0056474C
procedure sub_0056474C;
begin
{*
 0056474C    push        ebp
 0056474D    mov         ebp,esp
 0056474F    add         esp,0FFFFFFE8
 00564752    push        ebx
 00564753    mov         dword ptr [ebp-4],eax
 00564756    mov         eax,dword ptr [ebp-4]
 00564759    test        byte ptr [eax+1C],10;TImage.FComponentState:TComponentState
>0056475D    je          00564795
 0056475F    mov         eax,dword ptr [ebp-4]
 00564762    mov         ebx,dword ptr [eax+1B8];TImage.FCanvas:TCanvas
 00564768    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 0056476B    mov         dl,1
 0056476D    call        TPen.SetStyle
 00564772    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 00564775    mov         dl,1
 00564777    call        TBrush.SetStyle
 0056477C    mov         eax,dword ptr [ebp-4]
 0056477F    mov         eax,dword ptr [eax+58];TImage.FWidth:Integer
 00564782    push        eax
 00564783    mov         eax,dword ptr [ebp-4]
 00564786    mov         eax,dword ptr [eax+5C];TImage.FHeight:Integer
 00564789    push        eax
 0056478A    xor         ecx,ecx
 0056478C    xor         edx,edx
 0056478E    mov         eax,ebx
 00564790    mov         ebx,dword ptr [eax]
 00564792    call        dword ptr [ebx+7C];TCanvas.Rectangle
 00564795    mov         eax,dword ptr [ebp-4]
 00564798    movzx       eax,byte ptr [eax+1D4];TImage.FDrawing:Boolean
 0056479F    mov         byte ptr [ebp-5],al
 005647A2    mov         eax,dword ptr [ebp-4]
 005647A5    mov         byte ptr [eax+1D4],1;TImage.FDrawing:Boolean
 005647AC    xor         eax,eax
 005647AE    push        ebp
 005647AF    push        564841
 005647B4    push        dword ptr fs:[eax]
 005647B7    mov         dword ptr fs:[eax],esp
 005647BA    mov         eax,dword ptr [ebp-4]
 005647BD    test        byte ptr [eax+65],80;TImage.FAlign:TAlign
>005647C1    je          005647F9
 005647C3    mov         eax,dword ptr [ebp-4]
 005647C6    mov         eax,dword ptr [eax+1C0];TImage.FPicture:TPicture
 005647CC    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>005647D0    je          005647F9
 005647D2    mov         eax,dword ptr [ebp-4]
 005647D5    mov         eax,dword ptr [eax+1C0];TImage.FPicture:TPicture
 005647DB    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 005647DE    mov         edx,dword ptr [eax]
 005647E0    call        dword ptr [edx+4C];TGraphic.sub_004C7588
 005647E3    test        al,al
>005647E5    jne         005647F9
 005647E7    push        ebp
 005647E8    mov         eax,dword ptr [ebp-4]
 005647EB    mov         eax,dword ptr [eax+1B8];TImage.FCanvas:TCanvas
 005647F1    call        005646A0
 005647F6    pop         ecx
>005647F7    jmp         00564826
 005647F9    mov         eax,dword ptr [ebp-4]
 005647FC    mov         ebx,dword ptr [eax+1B8];TImage.FCanvas:TCanvas
 00564802    lea         edx,[ebp-18]
 00564805    mov         eax,dword ptr [ebp-4]
 00564808    call        00564574
 0056480D    lea         edx,[ebp-18]
 00564810    mov         eax,dword ptr [ebp-4]
 00564813    mov         eax,dword ptr [eax+1C0];TImage.FPicture:TPicture
 00564819    mov         ecx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 0056481C    mov         eax,ebx
 0056481E    mov         ebx,dword ptr [eax]
 00564820    call        dword ptr [ebx+88];TCanvas.StretchDraw
 00564826    xor         eax,eax
 00564828    pop         edx
 00564829    pop         ecx
 0056482A    pop         ecx
 0056482B    mov         dword ptr fs:[eax],edx
 0056482E    push        564848
 00564833    mov         eax,dword ptr [ebp-4]
 00564836    movzx       edx,byte ptr [ebp-5]
 0056483A    mov         byte ptr [eax+1D4],dl;TImage.FDrawing:Boolean
 00564840    ret
>00564841    jmp         @HandleFinally
>00564846    jmp         00564833
 00564848    pop         ebx
 00564849    mov         esp,ebp
 0056484B    pop         ebp
 0056484C    ret
*}
end;

//00564850
{*function sub_00564850(?:TImage):?;
begin
 00564850    push        ebx
 00564851    push        esi
 00564852    push        edi
 00564853    push        ebp
 00564854    mov         ebp,eax
 00564856    xor         ebx,ebx
 00564858    mov         eax,dword ptr [ebp+1C0]
 0056485E    mov         esi,dword ptr [eax+0C]
 00564861    cmp         byte ptr [ebp+69],0
>00564865    je          005648E2
 00564867    test        byte ptr [ebp+1C],1
>0056486B    jne         005648E2
 0056486D    test        esi,esi
>0056486F    je          005648E2
 00564871    cmp         byte ptr [esi+22],0
>00564875    je          005648E2
 00564877    mov         eax,esi
 00564879    mov         edx,dword ptr [eax]
 0056487B    call        dword ptr [edx+28]
 0056487E    test        eax,eax
>00564880    jne         00564888
 00564882    mov         byte ptr [esi+22],0
>00564886    jmp         005648E2
 00564888    mov         dl,1
 0056488A    mov         eax,ebp
 0056488C    call        GetParentForm
 00564891    mov         edi,eax
 00564893    test        edi,edi
>00564895    je          005648E2
 00564897    cmp         byte ptr [edi+2C1],0;TCustomForm.FActive:Boolean
>0056489E    je          005648E2
 005648A0    mov         eax,edi
 005648A2    call        TWinControl.HandleAllocated
 005648A7    test        al,al
>005648A9    je          005648E2
 005648AB    cmp         byte ptr [ebp+1D4],0
>005648B2    je          005648C6
 005648B4    push        0
 005648B6    xor         ecx,ecx
 005648B8    mov         edx,30F
 005648BD    mov         eax,edi
 005648BF    call        TControl.Perform
>005648C4    jmp         005648DC
 005648C6    push        0
 005648C8    push        0
 005648CA    push        30F
 005648CF    mov         eax,edi
 005648D1    call        TWinControl.GetHandle
 005648D6    push        eax
 005648D7    call        user32.PostMessageW
 005648DC    mov         bl,1
 005648DE    mov         byte ptr [esi+22],0
 005648E2    mov         eax,ebx
 005648E4    pop         ebp
 005648E5    pop         edi
 005648E6    pop         esi
 005648E7    pop         ebx
 005648E8    ret
end;*}

//005648EC
{*procedure TImage.sub_005648EC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005648EC    push        ebp
 005648ED    mov         ebp,esp
 005648EF    push        ecx
 005648F0    push        ebx
 005648F1    push        esi
 005648F2    push        edi
 005648F3    mov         byte ptr [ebp-1],cl
 005648F6    mov         edi,edx
 005648F8    mov         esi,eax
 005648FA    mov         ebx,dword ptr [ebp+10]
 005648FD    test        byte ptr [esi+1D2],bl;TImage.FIncrementalDisplay:Boolean
>00564903    je          00564926
 00564905    mov         eax,esi
 00564907    call        00564850
 0056490C    test        al,al
>0056490E    je          0056491C
 00564910    mov         eax,esi
 00564912    mov         edx,dword ptr [eax]
 00564914    call        dword ptr [edx+0B4];TControl.Update
>0056491A    jmp         00564926
 0056491C    mov         eax,esi
 0056491E    mov         edx,dword ptr [eax]
 00564920    call        dword ptr [edx+0B8];TImage.sub_0056474C
 00564926    cmp         word ptr [esi+1CA],0;TImage.FIncrementalDisplay:Boolean
>0056492E    je          00564950
 00564930    movzx       eax,byte ptr [ebp+14]
 00564934    push        eax
 00564935    push        ebx
 00564936    mov         eax,dword ptr [ebp+0C]
 00564939    push        eax
 0056493A    mov         eax,dword ptr [ebp+8]
 0056493D    push        eax
 0056493E    movzx       ecx,byte ptr [ebp-1]
 00564942    mov         edx,edi
 00564944    mov         eax,dword ptr [esi+1CC];TImage.FDrawing:Boolean
 0056494A    call        dword ptr [esi+1C8];TImage.FOnProgress
 00564950    pop         edi
 00564951    pop         esi
 00564952    pop         ebx
 00564953    pop         ecx
 00564954    pop         ebp
 00564955    ret         10
end;*}

//00564A58
procedure TImage.SetCenter(Value:Boolean);
begin
{*
 00564A58    cmp         dl,byte ptr [eax+1D1];TImage.FCenter:Boolean
>00564A5E    je          00564A6D
 00564A60    mov         byte ptr [eax+1D1],dl;TImage.FCenter:Boolean
 00564A66    mov         edx,eax
 00564A68    call        00564AC4
 00564A6D    ret
*}
end;

//00564A70
procedure TImage.SetPicture(Value:TPicture);
begin
{*
 00564A70    mov         eax,dword ptr [eax+1C0];TImage.FPicture:TPicture
 00564A76    mov         ecx,dword ptr [eax]
 00564A78    call        dword ptr [ecx+8];TPicture.Assign
 00564A7B    ret
*}
end;

//00564A7C
procedure TImage.SetStretch(Value:Boolean);
begin
{*
 00564A7C    cmp         dl,byte ptr [eax+1D0];TImage.FStretch:Boolean
>00564A82    je          00564A91
 00564A84    mov         byte ptr [eax+1D0],dl;TImage.FStretch:Boolean
 00564A8A    mov         edx,eax
 00564A8C    call        00564AC4
 00564A91    ret
*}
end;

//00564A94
procedure TImage.SetTransparent(Value:Boolean);
begin
{*
 00564A94    cmp         dl,byte ptr [eax+1D3];TImage.FTransparent:Boolean
>00564A9A    je          00564AA9
 00564A9C    mov         byte ptr [eax+1D3],dl;TImage.FTransparent:Boolean
 00564AA2    mov         edx,eax
 00564AA4    call        00564AC4
 00564AA9    ret
*}
end;

//00564AAC
procedure TImage.SetProportional(Value:Boolean);
begin
{*
 00564AAC    cmp         dl,byte ptr [eax+1D5];TImage.FProportional:Boolean
>00564AB2    je          00564AC1
 00564AB4    mov         byte ptr [eax+1D5],dl;TImage.FProportional:Boolean
 00564ABA    mov         edx,eax
 00564ABC    call        00564AC4
 00564AC1    ret
*}
end;

//00564AC4
procedure sub_00564AC4(?:TImage);
begin
{*
 00564AC4    push        ebp
 00564AC5    mov         ebp,esp
 00564AC7    add         esp,0FFFFFFD4
 00564ACA    push        ebx
 00564ACB    push        esi
 00564ACC    xor         ecx,ecx
 00564ACE    mov         dword ptr [ebp-2C],ecx
 00564AD1    mov         dword ptr [ebp-28],ecx
 00564AD4    mov         dword ptr [ebp-24],ecx
 00564AD7    mov         dword ptr [ebp-20],ecx
 00564ADA    mov         ebx,eax
 00564ADC    xor         eax,eax
 00564ADE    push        ebp
 00564ADF    push        564CBE
 00564AE4    push        dword ptr fs:[eax]
 00564AE7    mov         dword ptr fs:[eax],esp
 00564AEA    mov         eax,ebx
 00564AEC    mov         edx,dword ptr [eax]
 00564AEE    call        dword ptr [edx+24];TComponent.GetObservers
 00564AF1    mov         edx,1
 00564AF6    mov         ecx,dword ptr [eax]
 00564AF8    call        dword ptr [ecx+14];TObservers.IsObserving
 00564AFB    test        al,al
>00564AFD    je          00564B3B
 00564AFF    mov         eax,ebx
 00564B01    mov         edx,dword ptr [eax]
 00564B03    call        dword ptr [edx+24];TComponent.GetObservers
 00564B06    mov         dword ptr [ebp-4],eax
 00564B09    lea         edx,[ebp-20]
 00564B0C    mov         eax,dword ptr [ebp-4]
 00564B0F    call        TLinkObservers.GetEditLink
 00564B14    mov         eax,dword ptr [ebp-20]
 00564B17    mov         edx,dword ptr [eax]
 00564B19    call        dword ptr [edx+24]
 00564B1C    test        al,al
>00564B1E    je          00564B3B
 00564B20    mov         eax,ebx
 00564B22    mov         edx,dword ptr [eax]
 00564B24    call        dword ptr [edx+24];TComponent.GetObservers
 00564B27    mov         esi,eax
 00564B29    lea         edx,[ebp-24]
 00564B2C    mov         eax,esi
 00564B2E    call        TLinkObservers.GetEditLink
 00564B33    mov         eax,dword ptr [ebp-24]
 00564B36    mov         edx,dword ptr [eax]
 00564B38    call        dword ptr [edx+2C]
 00564B3B    cmp         byte ptr [ebx+6E],0;TImage.FAutoSize:Boolean
>00564B3F    je          00564B87
 00564B41    mov         eax,dword ptr [ebx+1C0];TImage.FPicture:TPicture
 00564B47    call        004C87A8
 00564B4C    test        eax,eax
>00564B4E    jle         00564B87
 00564B50    mov         eax,dword ptr [ebx+1C0];TImage.FPicture:TPicture
 00564B56    call        004C87C0
 00564B5B    test        eax,eax
>00564B5D    jle         00564B87
 00564B5F    mov         eax,dword ptr [ebx+1C0];TImage.FPicture:TPicture
 00564B65    call        004C87A8
 00564B6A    push        eax
 00564B6B    mov         eax,dword ptr [ebx+1C0];TImage.FPicture:TPicture
 00564B71    call        004C87C0
 00564B76    push        eax
 00564B77    mov         ecx,dword ptr [ebx+54];TImage.FTop:Integer
 00564B7A    mov         edx,dword ptr [ebx+50];TImage.FLeft:Integer
 00564B7D    mov         eax,ebx
 00564B7F    mov         esi,dword ptr [eax]
 00564B81    call        dword ptr [esi+0B0];TControl.SetBounds
 00564B87    mov         eax,dword ptr [ebx+1C0];TImage.FPicture:TPicture
 00564B8D    mov         esi,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00564B90    test        esi,esi
>00564B92    je          00564C2D
 00564B98    mov         eax,esi
 00564B9A    mov         edx,dword ptr ds:[4C14B0];TMetafile
 00564BA0    call        @IsClass
 00564BA5    test        al,al
>00564BA7    jne         00564BC8
 00564BA9    mov         eax,esi
 00564BAB    mov         edx,dword ptr ds:[4C2694];TIcon
 00564BB1    call        @IsClass
 00564BB6    test        al,al
>00564BB8    jne         00564BC8
 00564BBA    movzx       edx,byte ptr [ebx+1D3];TImage.FTransparent:Boolean
 00564BC1    mov         eax,esi
 00564BC3    mov         ecx,dword ptr [eax]
 00564BC5    call        dword ptr [ecx+40];TGraphic.SetTransparent
 00564BC8    lea         edx,[ebp-1C]
 00564BCB    mov         eax,ebx
 00564BCD    call        00564574
 00564BD2    mov         eax,esi
 00564BD4    mov         edx,dword ptr [eax]
 00564BD6    call        dword ptr [edx+2C];TGraphic.sub_004C758C
 00564BD9    test        al,al
>00564BDB    jne         00564C03
 00564BDD    cmp         dword ptr [ebp-1C],0
>00564BE1    jg          00564C03
 00564BE3    cmp         dword ptr [ebp-18],0
>00564BE7    jg          00564C03
 00564BE9    mov         eax,dword ptr [ebp-14]
 00564BEC    cmp         eax,dword ptr [ebx+58];TImage.FWidth:Integer
>00564BEF    jl          00564C03
 00564BF1    mov         eax,dword ptr [ebp-10]
 00564BF4    cmp         eax,dword ptr [ebx+5C];TImage.FHeight:Integer
>00564BF7    jl          00564C03
 00564BF9    mov         eax,[00564CCC];0x40 gvar_00564CCC
 00564BFE    or          dword ptr [ebx+60],eax;TImage.FControlStyle:TControlStyle
>00564C01    jmp         00564C0D
 00564C03    mov         eax,[00564CCC];0x40 gvar_00564CCC
 00564C08    not         eax
 00564C0A    and         dword ptr [ebx+60],eax;TImage.FControlStyle:TControlStyle
 00564C0D    mov         eax,ebx
 00564C0F    call        00564850
 00564C14    test        al,al
>00564C16    je          00564C37
 00564C18    cmp         byte ptr [ebx+1D4],0;TImage.FDrawing:Boolean
>00564C1F    je          00564C37
 00564C21    mov         eax,ebx
 00564C23    mov         edx,dword ptr [eax]
 00564C25    call        dword ptr [edx+0B4];TControl.Update
>00564C2B    jmp         00564C37
 00564C2D    mov         eax,[00564CCC];0x40 gvar_00564CCC
 00564C32    not         eax
 00564C34    and         dword ptr [ebx+60],eax;TImage.FControlStyle:TControlStyle
 00564C37    cmp         byte ptr [ebx+1D4],0;TImage.FDrawing:Boolean
>00564C3E    jne         00564C4A
 00564C40    mov         eax,ebx
 00564C42    mov         edx,dword ptr [eax]
 00564C44    call        dword ptr [edx+0A8];TControl.Invalidate
 00564C4A    mov         eax,ebx
 00564C4C    mov         edx,dword ptr [eax]
 00564C4E    call        dword ptr [edx+24];TComponent.GetObservers
 00564C51    mov         edx,1
 00564C56    mov         ecx,dword ptr [eax]
 00564C58    call        dword ptr [ecx+14];TObservers.IsObserving
 00564C5B    test        al,al
>00564C5D    je          00564C9D
 00564C5F    mov         eax,ebx
 00564C61    mov         edx,dword ptr [eax]
 00564C63    call        dword ptr [edx+24];TComponent.GetObservers
 00564C66    mov         dword ptr [ebp-8],eax
 00564C69    lea         edx,[ebp-28]
 00564C6C    mov         eax,dword ptr [ebp-8]
 00564C6F    call        TLinkObservers.GetEditLink
 00564C74    mov         eax,dword ptr [ebp-28]
 00564C77    mov         edx,dword ptr [eax]
 00564C79    call        dword ptr [edx+44]
 00564C7C    test        al,al
>00564C7E    je          00564C9D
 00564C80    mov         eax,ebx
 00564C82    mov         edx,dword ptr [eax]
 00564C84    call        dword ptr [edx+24];TComponent.GetObservers
 00564C87    mov         dword ptr [ebp-0C],eax
 00564C8A    lea         edx,[ebp-2C]
 00564C8D    mov         eax,dword ptr [ebp-0C]
 00564C90    call        TLinkObservers.GetEditLink
 00564C95    mov         eax,dword ptr [ebp-2C]
 00564C98    mov         edx,dword ptr [eax]
 00564C9A    call        dword ptr [edx+20]
 00564C9D    xor         eax,eax
 00564C9F    pop         edx
 00564CA0    pop         ecx
 00564CA1    pop         ecx
 00564CA2    mov         dword ptr fs:[eax],edx
 00564CA5    push        564CC5
 00564CAA    lea         eax,[ebp-2C]
 00564CAD    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 00564CB3    mov         ecx,4
 00564CB8    call        @FinalizeArray
 00564CBD    ret
>00564CBE    jmp         @HandleFinally
>00564CC3    jmp         00564CAA
 00564CC5    pop         esi
 00564CC6    pop         ebx
 00564CC7    mov         esp,ebp
 00564CC9    pop         ebp
 00564CCA    ret
*}
end;

//00564CD0
{*function sub_00564CD0(?:?; ?:?):?;
begin
 00564CD0    push        ebx
 00564CD1    push        esi
 00564CD2    push        edi
 00564CD3    push        ebp
 00564CD4    mov         ebp,ecx
 00564CD6    mov         edi,edx
 00564CD8    mov         esi,eax
 00564CDA    mov         bl,1
 00564CDC    test        byte ptr [esi+1C],10;TImage.FComponentState:TComponentState
>00564CE0    je          00564D00
 00564CE2    mov         eax,dword ptr [esi+1C0];TImage.FPicture:TPicture
 00564CE8    call        004C87A8
 00564CED    test        eax,eax
>00564CEF    jle         00564D31
 00564CF1    mov         eax,dword ptr [esi+1C0];TImage.FPicture:TPicture
 00564CF7    call        004C87C0
 00564CFC    test        eax,eax
>00564CFE    jle         00564D31
 00564D00    movzx       eax,byte ptr [esi+6D];TImage.FAlign:TAlign
 00564D04    test        al,al
>00564D06    je          00564D0E
 00564D08    add         al,0FD
 00564D0A    sub         al,2
>00564D0C    jae         00564D1B
 00564D0E    mov         eax,dword ptr [esi+1C0];TImage.FPicture:TPicture
 00564D14    call        004C87A8
 00564D19    mov         dword ptr [edi],eax
 00564D1B    movzx       eax,byte ptr [esi+6D];TImage.FAlign:TAlign
 00564D1F    sub         al,3
>00564D21    jae         00564D31
 00564D23    mov         eax,dword ptr [esi+1C0];TImage.FPicture:TPicture
 00564D29    call        004C87C0
 00564D2E    mov         dword ptr [ebp],eax
 00564D31    mov         eax,ebx
 00564D33    pop         ebp
 00564D34    pop         edi
 00564D35    pop         esi
 00564D36    pop         ebx
 00564D37    ret
end;*}

//00564D38
procedure TImage.sub_00564D38;
begin
{*
 00564D38    push        ebx
 00564D39    mov         ebx,eax
 00564D3B    mov         eax,ebx
 00564D3D    mov         ecx,dword ptr [eax]
 00564D3F    call        dword ptr [ecx-10];TControl.DefaultHandler
 00564D42    cmp         byte ptr [ebx+1D3],0;TImage.FTransparent:Boolean
>00564D49    je          00564D97
 00564D4B    mov         eax,dword ptr [ebx+1C0];TImage.FPicture:TPicture
 00564D51    mov         ebx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00564D54    test        ebx,ebx
>00564D56    je          00564D97
 00564D58    mov         eax,ebx
 00564D5A    mov         edx,dword ptr ds:[4C14B0];TMetafile
 00564D60    call        @IsClass
 00564D65    test        al,al
>00564D67    jne         00564D97
 00564D69    mov         eax,ebx
 00564D6B    mov         edx,dword ptr ds:[4C2694];TIcon
 00564D71    call        @IsClass
 00564D76    test        al,al
>00564D78    jne         00564D97
 00564D7A    mov         eax,ebx
 00564D7C    mov         edx,dword ptr [eax]
 00564D7E    call        dword ptr [edx+2C];TGraphic.sub_004C758C
 00564D81    test        al,al
>00564D83    je          00564D97
 00564D85    xor         edx,edx
 00564D87    mov         eax,ebx
 00564D89    mov         ecx,dword ptr [eax]
 00564D8B    call        dword ptr [ecx+40];TGraphic.SetTransparent
 00564D8E    mov         dl,1
 00564D90    mov         eax,ebx
 00564D92    mov         ecx,dword ptr [eax]
 00564D94    call        dword ptr [ecx+40];TGraphic.SetTransparent
 00564D97    pop         ebx
 00564D98    ret
*}
end;

//00564D9C
constructor TBevel.Create(AOwner:TComponent);
begin
{*
 00564D9C    push        ebx
 00564D9D    push        esi
 00564D9E    test        dl,dl
>00564DA0    je          00564DAA
 00564DA2    add         esp,0FFFFFFF0
 00564DA5    call        @ClassCreate
 00564DAA    mov         ebx,edx
 00564DAC    mov         esi,eax
 00564DAE    xor         edx,edx
 00564DB0    mov         eax,esi
 00564DB2    call        TGraphicControl.Create
 00564DB7    mov         eax,[00564E00];0x800 gvar_00564E00
 00564DBC    or          dword ptr [esi+60],eax;TBevel.FControlStyle:TControlStyle
 00564DBF    mov         byte ptr [esi+1C0],0;TBevel.FStyle:TBevelStyle
 00564DC6    mov         byte ptr [esi+1C1],0;TBevel.FShape:TBevelShape
 00564DCD    mov         edx,32
 00564DD2    mov         eax,esi
 00564DD4    call        TControl.SetWidth
 00564DD9    mov         edx,32
 00564DDE    mov         eax,esi
 00564DE0    call        TControl.SetHeight
 00564DE5    mov         eax,esi
 00564DE7    test        bl,bl
>00564DE9    je          00564DFA
 00564DEB    call        @AfterConstruction
 00564DF0    pop         dword ptr fs:[0]
 00564DF7    add         esp,0C
 00564DFA    mov         eax,esi
 00564DFC    pop         esi
 00564DFD    pop         ebx
 00564DFE    ret
*}
end;

//00564E04
procedure TBevel.SetStyle(Value:TBevelStyle);
begin
{*
 00564E04    push        esi
 00564E05    mov         esi,eax
 00564E07    cmp         dl,byte ptr [esi+1C0];TBevel.FStyle:TBevelStyle
>00564E0D    je          00564E1F
 00564E0F    mov         byte ptr [esi+1C0],dl;TBevel.FStyle:TBevelStyle
 00564E15    mov         eax,esi
 00564E17    mov         edx,dword ptr [eax]
 00564E19    call        dword ptr [edx+0A8];TControl.Invalidate
 00564E1F    pop         esi
 00564E20    ret
*}
end;

//00564E24
procedure TBevel.SetShape(Value:TBevelShape);
begin
{*
 00564E24    push        esi
 00564E25    mov         esi,eax
 00564E27    cmp         dl,byte ptr [esi+1C1];TBevel.FShape:TBevelShape
>00564E2D    je          00564E3F
 00564E2F    mov         byte ptr [esi+1C1],dl;TBevel.FShape:TBevelShape
 00564E35    mov         eax,esi
 00564E37    mov         edx,dword ptr [eax]
 00564E39    call        dword ptr [edx+0A8];TControl.Invalidate
 00564E3F    pop         esi
 00564E40    ret
*}
end;

//00564E44
{*procedure sub_00564E44(?:?; ?:?);
begin
 00564E44    push        ebp
 00564E45    mov         ebp,esp
 00564E47    add         esp,0FFFFFFB8
 00564E4A    push        ebx
 00564E4B    push        esi
 00564E4C    push        edi
 00564E4D    mov         ebx,eax
 00564E4F    mov         eax,dword ptr [ebp+8]
 00564E52    mov         eax,dword ptr [eax-4]
 00564E55    mov         esi,dword ptr [eax+1B8]
 00564E5B    mov         eax,dword ptr [ebp+8]
 00564E5E    mov         edx,dword ptr [eax-8]
 00564E61    mov         eax,dword ptr [esi+44]
 00564E64    call        TPen.SetColor
 00564E69    mov         eax,dword ptr [ebx+0C]
 00564E6C    mov         edx,dword ptr [ebx]
 00564E6E    mov         dword ptr [ebp-8],edx
 00564E71    mov         dword ptr [ebp-4],eax
 00564E74    mov         ecx,dword ptr [ebx+4]
 00564E77    mov         eax,ecx
 00564E79    mov         dword ptr [ebp-10],edx
 00564E7C    mov         dword ptr [ebp-0C],eax
 00564E7F    mov         eax,dword ptr [ebx+8]
 00564E82    mov         edx,ecx
 00564E84    mov         dword ptr [ebp-18],eax
 00564E87    mov         dword ptr [ebp-14],edx
 00564E8A    mov         eax,dword ptr [ebp-8]
 00564E8D    mov         dword ptr [ebp-48],eax
 00564E90    mov         eax,dword ptr [ebp-4]
 00564E93    mov         dword ptr [ebp-44],eax
 00564E96    mov         eax,dword ptr [ebp-10]
 00564E99    mov         dword ptr [ebp-40],eax
 00564E9C    mov         eax,dword ptr [ebp-0C]
 00564E9F    mov         dword ptr [ebp-3C],eax
 00564EA2    mov         eax,dword ptr [ebp-18]
 00564EA5    mov         dword ptr [ebp-38],eax
 00564EA8    mov         eax,dword ptr [ebp-14]
 00564EAB    mov         dword ptr [ebp-34],eax
 00564EAE    lea         edx,[ebp-48]
 00564EB1    mov         ecx,2
 00564EB6    mov         eax,esi
 00564EB8    mov         edi,dword ptr [eax]
 00564EBA    call        dword ptr [edi+70]
 00564EBD    mov         eax,dword ptr [ebp+8]
 00564EC0    mov         edx,dword ptr [eax-0C]
 00564EC3    mov         eax,dword ptr [esi+44]
 00564EC6    call        TPen.SetColor
 00564ECB    mov         ecx,dword ptr [ebx+8]
 00564ECE    mov         eax,ecx
 00564ED0    mov         edx,dword ptr [ebx+4]
 00564ED3    mov         dword ptr [ebp-20],eax
 00564ED6    mov         dword ptr [ebp-1C],edx
 00564ED9    mov         eax,ecx
 00564EDB    mov         ecx,dword ptr [ebx+0C]
 00564EDE    mov         edx,ecx
 00564EE0    mov         dword ptr [ebp-28],eax
 00564EE3    mov         dword ptr [ebp-24],edx
 00564EE6    mov         eax,ecx
 00564EE8    mov         edx,dword ptr [ebx]
 00564EEA    mov         dword ptr [ebp-30],edx
 00564EED    mov         dword ptr [ebp-2C],eax
 00564EF0    mov         eax,dword ptr [ebp-20]
 00564EF3    mov         dword ptr [ebp-48],eax
 00564EF6    mov         eax,dword ptr [ebp-1C]
 00564EF9    mov         dword ptr [ebp-44],eax
 00564EFC    mov         eax,dword ptr [ebp-28]
 00564EFF    mov         dword ptr [ebp-40],eax
 00564F02    mov         eax,dword ptr [ebp-24]
 00564F05    mov         dword ptr [ebp-3C],eax
 00564F08    mov         eax,dword ptr [ebp-30]
 00564F0B    mov         dword ptr [ebp-38],eax
 00564F0E    mov         eax,dword ptr [ebp-2C]
 00564F11    mov         dword ptr [ebp-34],eax
 00564F14    lea         edx,[ebp-48]
 00564F17    mov         ecx,2
 00564F1C    mov         eax,esi
 00564F1E    mov         ebx,dword ptr [eax]
 00564F20    call        dword ptr [ebx+70]
 00564F23    pop         edi
 00564F24    pop         esi
 00564F25    pop         ebx
 00564F26    mov         esp,ebp
 00564F28    pop         ebp
 00564F29    ret
end;*}

//00564F2C
{*procedure sub_00564F2C(?:TColor; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00564F2C    push        ebp
 00564F2D    mov         ebp,esp
 00564F2F    push        ebx
 00564F30    push        esi
 00564F31    push        edi
 00564F32    mov         edi,ecx
 00564F34    mov         esi,edx
 00564F36    mov         edx,dword ptr [ebp+10]
 00564F39    mov         edx,dword ptr [edx-4]
 00564F3C    mov         ebx,dword ptr [edx+1B8]
 00564F42    mov         edx,eax
 00564F44    mov         eax,dword ptr [ebx+44]
 00564F47    call        TPen.SetColor
 00564F4C    mov         ecx,edi
 00564F4E    mov         edx,esi
 00564F50    mov         eax,ebx
 00564F52    mov         esi,dword ptr [eax]
 00564F54    call        dword ptr [esi+64]
 00564F57    mov         ecx,dword ptr [ebp+8]
 00564F5A    mov         edx,dword ptr [ebp+0C]
 00564F5D    mov         eax,ebx
 00564F5F    mov         ebx,dword ptr [eax]
 00564F61    call        dword ptr [ebx+60]
 00564F64    pop         edi
 00564F65    pop         esi
 00564F66    pop         ebx
 00564F67    pop         ebp
 00564F68    ret         8
end;*}

//00564F6C
procedure sub_00564F6C;
begin
{*
 00564F6C    push        ebp
 00564F6D    mov         ebp,esp
 00564F6F    add         esp,0FFFFFFE4
 00564F72    push        ebx
 00564F73    mov         dword ptr [ebp-4],eax
 00564F76    mov         eax,dword ptr [ebp-4]
 00564F79    mov         ebx,dword ptr [eax+1B8];TBevel.FCanvas:TCanvas
 00564F7F    mov         eax,dword ptr [ebp-4]
 00564F82    test        byte ptr [eax+1C],10;TBevel.FComponentState:TComponentState
>00564F86    je          0056500D
 00564F8C    mov         eax,dword ptr [ebp-4]
 00564F8F    cmp         byte ptr [eax+1C1],6;TBevel.FShape:TBevelShape
>00564F96    jne         00564FE5
 00564F98    mov         dl,2
 00564F9A    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 00564F9D    call        TPen.SetStyle
 00564FA2    mov         dl,0E
 00564FA4    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 00564FA7    call        TPen.SetMode
 00564FAC    mov         edx,0FFD8CE
 00564FB1    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 00564FB4    call        TPen.SetColor
 00564FB9    mov         dl,1
 00564FBB    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 00564FBE    call        TBrush.SetStyle
 00564FC3    mov         eax,dword ptr [ebp-4]
 00564FC6    call        TControl.GetClientWidth
 00564FCB    push        eax
 00564FCC    mov         eax,dword ptr [ebp-4]
 00564FCF    call        TControl.GetClientHeight
 00564FD4    push        eax
 00564FD5    xor         ecx,ecx
 00564FD7    xor         edx,edx
 00564FD9    mov         eax,ebx
 00564FDB    mov         ebx,dword ptr [eax]
 00564FDD    call        dword ptr [ebx+7C];TCanvas.Rectangle
>00564FE0    jmp         0056521A
 00564FE5    xor         edx,edx
 00564FE7    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 00564FEA    call        TPen.SetStyle
 00564FEF    mov         dl,4
 00564FF1    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 00564FF4    call        TPen.SetMode
 00564FF9    xor         edx,edx
 00564FFB    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 00564FFE    call        TPen.SetColor
 00565003    xor         edx,edx
 00565005    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 00565008    call        TBrush.SetStyle
 0056500D    mov         edx,1
 00565012    mov         eax,dword ptr [ebx+44];TCanvas.FPen:TPen
 00565015    call        TPen.SetWidth
 0056501A    mov         eax,dword ptr [ebp-4]
 0056501D    cmp         byte ptr [eax+1C0],0;TBevel.FStyle:TBevelStyle
>00565024    jne         0056504C
 00565026    call        StyleServices
 0056502B    mov         edx,0FF000010
 00565030    call        TCustomStyleServices.GetSystemColor
 00565035    mov         dword ptr [ebp-8],eax
 00565038    call        StyleServices
 0056503D    mov         edx,0FF000014
 00565042    call        TCustomStyleServices.GetSystemColor
 00565047    mov         dword ptr [ebp-0C],eax
>0056504A    jmp         00565070
 0056504C    call        StyleServices
 00565051    mov         edx,0FF000014
 00565056    call        TCustomStyleServices.GetSystemColor
 0056505B    mov         dword ptr [ebp-8],eax
 0056505E    call        StyleServices
 00565063    mov         edx,0FF000010
 00565068    call        TCustomStyleServices.GetSystemColor
 0056506D    mov         dword ptr [ebp-0C],eax
 00565070    mov         eax,dword ptr [ebp-4]
 00565073    movzx       eax,byte ptr [eax+1C1];TBevel.FShape:TBevelShape
 0056507A    cmp         eax,5
>0056507D    ja          0056521A
 00565083    jmp         dword ptr [eax*4+56508A]
 00565083    dd          005650A2
 00565083    dd          005650CD
 00565083    dd          00565137
 00565083    dd          0056516D
 00565083    dd          005651AB
 00565083    dd          005651DE
 005650A2    push        ebp
 005650A3    mov         eax,dword ptr [ebp-4]
 005650A6    mov         eax,dword ptr [eax+5C];TBevel.FHeight:Integer
 005650A9    dec         eax
 005650AA    push        eax
 005650AB    lea         eax,[ebp-1C]
 005650AE    push        eax
 005650AF    mov         eax,dword ptr [ebp-4]
 005650B2    mov         ecx,dword ptr [eax+58];TBevel.FWidth:Integer
 005650B5    dec         ecx
 005650B6    xor         edx,edx
 005650B8    xor         eax,eax
 005650BA    call        Rect
 005650BF    lea         eax,[ebp-1C]
 005650C2    call        00564E44
 005650C7    pop         ecx
>005650C8    jmp         0056521A
 005650CD    mov         ebx,dword ptr [ebp-8]
 005650D0    mov         eax,dword ptr [ebp-0C]
 005650D3    mov         dword ptr [ebp-8],eax
 005650D6    push        ebp
 005650D7    mov         eax,dword ptr [ebp-4]
 005650DA    mov         eax,dword ptr [eax+5C];TBevel.FHeight:Integer
 005650DD    dec         eax
 005650DE    push        eax
 005650DF    lea         eax,[ebp-1C]
 005650E2    push        eax
 005650E3    mov         eax,dword ptr [ebp-4]
 005650E6    mov         ecx,dword ptr [eax+58];TBevel.FWidth:Integer
 005650E9    dec         ecx
 005650EA    mov         edx,1
 005650EF    mov         eax,1
 005650F4    call        Rect
 005650F9    lea         eax,[ebp-1C]
 005650FC    call        00564E44
 00565101    pop         ecx
 00565102    mov         dword ptr [ebp-0C],ebx
 00565105    mov         dword ptr [ebp-8],ebx
 00565108    push        ebp
 00565109    mov         eax,dword ptr [ebp-4]
 0056510C    mov         eax,dword ptr [eax+5C];TBevel.FHeight:Integer
 0056510F    sub         eax,2
 00565112    push        eax
 00565113    lea         eax,[ebp-1C]
 00565116    push        eax
 00565117    mov         eax,dword ptr [ebp-4]
 0056511A    mov         ecx,dword ptr [eax+58];TBevel.FWidth:Integer
 0056511D    sub         ecx,2
 00565120    xor         edx,edx
 00565122    xor         eax,eax
 00565124    call        Rect
 00565129    lea         eax,[ebp-1C]
 0056512C    call        00564E44
 00565131    pop         ecx
>00565132    jmp         0056521A
 00565137    push        ebp
 00565138    mov         eax,dword ptr [ebp-4]
 0056513B    mov         eax,dword ptr [eax+58];TBevel.FWidth:Integer
 0056513E    push        eax
 0056513F    push        0
 00565141    xor         ecx,ecx
 00565143    xor         edx,edx
 00565145    mov         eax,dword ptr [ebp-8]
 00565148    call        00564F2C
 0056514D    pop         ecx
 0056514E    push        ebp
 0056514F    mov         eax,dword ptr [ebp-4]
 00565152    mov         eax,dword ptr [eax+58];TBevel.FWidth:Integer
 00565155    push        eax
 00565156    push        1
 00565158    mov         ecx,1
 0056515D    xor         edx,edx
 0056515F    mov         eax,dword ptr [ebp-0C]
 00565162    call        00564F2C
 00565167    pop         ecx
>00565168    jmp         0056521A
 0056516D    push        ebp
 0056516E    mov         edx,dword ptr [ebp-4]
 00565171    mov         edx,dword ptr [edx+58];TBevel.FWidth:Integer
 00565174    push        edx
 00565175    mov         eax,dword ptr [ebp-4]
 00565178    mov         eax,dword ptr [eax+5C];TBevel.FHeight:Integer
 0056517B    sub         eax,2
 0056517E    push        eax
 0056517F    mov         ecx,eax
 00565181    xor         edx,edx
 00565183    mov         eax,dword ptr [ebp-8]
 00565186    call        00564F2C
 0056518B    pop         ecx
 0056518C    push        ebp
 0056518D    mov         edx,dword ptr [ebp-4]
 00565190    mov         edx,dword ptr [edx+58];TBevel.FWidth:Integer
 00565193    push        edx
 00565194    mov         eax,dword ptr [ebp-4]
 00565197    mov         eax,dword ptr [eax+5C];TBevel.FHeight:Integer
 0056519A    dec         eax
 0056519B    push        eax
 0056519C    mov         ecx,eax
 0056519E    xor         edx,edx
 005651A0    mov         eax,dword ptr [ebp-0C]
 005651A3    call        00564F2C
 005651A8    pop         ecx
>005651A9    jmp         0056521A
 005651AB    push        ebp
 005651AC    push        0
 005651AE    mov         eax,dword ptr [ebp-4]
 005651B1    mov         eax,dword ptr [eax+5C];TBevel.FHeight:Integer
 005651B4    push        eax
 005651B5    xor         ecx,ecx
 005651B7    xor         edx,edx
 005651B9    mov         eax,dword ptr [ebp-8]
 005651BC    call        00564F2C
 005651C1    pop         ecx
 005651C2    push        ebp
 005651C3    push        1
 005651C5    mov         eax,dword ptr [ebp-4]
 005651C8    mov         eax,dword ptr [eax+5C];TBevel.FHeight:Integer
 005651CB    push        eax
 005651CC    xor         ecx,ecx
 005651CE    mov         edx,1
 005651D3    mov         eax,dword ptr [ebp-0C]
 005651D6    call        00564F2C
 005651DB    pop         ecx
>005651DC    jmp         0056521A
 005651DE    push        ebp
 005651DF    mov         eax,dword ptr [ebp-4]
 005651E2    mov         eax,dword ptr [eax+58];TBevel.FWidth:Integer
 005651E5    sub         eax,2
 005651E8    push        eax
 005651E9    mov         edx,dword ptr [ebp-4]
 005651EC    mov         edx,dword ptr [edx+5C];TBevel.FHeight:Integer
 005651EF    push        edx
 005651F0    mov         edx,eax
 005651F2    xor         ecx,ecx
 005651F4    mov         eax,dword ptr [ebp-8]
 005651F7    call        00564F2C
 005651FC    pop         ecx
 005651FD    push        ebp
 005651FE    mov         eax,dword ptr [ebp-4]
 00565201    mov         eax,dword ptr [eax+58];TBevel.FWidth:Integer
 00565204    dec         eax
 00565205    push        eax
 00565206    mov         edx,dword ptr [ebp-4]
 00565209    mov         edx,dword ptr [edx+5C];TBevel.FHeight:Integer
 0056520C    push        edx
 0056520D    mov         edx,eax
 0056520F    xor         ecx,ecx
 00565211    mov         eax,dword ptr [ebp-0C]
 00565214    call        00564F2C
 00565219    pop         ecx
 0056521A    pop         ebx
 0056521B    mov         esp,ebp
 0056521D    pop         ebp
 0056521E    ret
*}
end;

//00565220
constructor TTimer.Create;
begin
{*
 00565220    push        ebx
 00565221    push        esi
 00565222    test        dl,dl
>00565224    je          0056522E
 00565226    add         esp,0FFFFFFF0
 00565229    call        @ClassCreate
 0056522E    mov         ebx,edx
 00565230    mov         esi,eax
 00565232    xor         edx,edx
 00565234    mov         eax,esi
 00565236    call        TComponent.Create
 0056523B    mov         byte ptr [esi+50],1
 0056523F    mov         dword ptr [esi+40],3E8
 00565246    push        esi
 00565247    push        5652B4
 0056524C    call        AllocateHWnd
 00565251    mov         dword ptr [esi+44],eax
 00565254    mov         eax,esi
 00565256    test        bl,bl
>00565258    je          00565269
 0056525A    call        @AfterConstruction
 0056525F    pop         dword ptr fs:[0]
 00565266    add         esp,0C
 00565269    mov         eax,esi
 0056526B    pop         esi
 0056526C    pop         ebx
 0056526D    ret
*}
end;

//00565270
destructor TTimer.Destroy();
begin
{*
 00565270    push        ebx
 00565271    push        esi
 00565272    call        @BeforeDestruction
 00565277    mov         ebx,edx
 00565279    mov         esi,eax
 0056527B    mov         byte ptr [esi+50],0;TTimer.FEnabled:Boolean
 0056527F    cmp         dword ptr [esi+44],0;TTimer.FWindowHandle:HWND
>00565283    je          00565299
 00565285    mov         eax,esi
 00565287    call        00565328
 0056528C    mov         eax,dword ptr [esi+44];TTimer.FWindowHandle:HWND
 0056528F    call        DeallocateHWnd
 00565294    xor         eax,eax
 00565296    mov         dword ptr [esi+44],eax;TTimer.FWindowHandle:HWND
 00565299    mov         dl,0FC
 0056529B    and         dl,bl
 0056529D    mov         eax,esi
 0056529F    call        TComponent.Destroy
 005652A4    test        bl,bl
>005652A6    jle         005652AF
 005652A8    mov         eax,esi
 005652AA    call        @ClassDestroy
 005652AF    pop         esi
 005652B0    pop         ebx
 005652B1    ret
*}
end;

//00565328
procedure sub_00565328(?:TTimer);
begin
{*
 00565328    push        ebp
 00565329    mov         ebp,esp
 0056532B    push        0
 0056532D    push        ebx
 0056532E    push        esi
 0056532F    mov         ebx,eax
 00565331    xor         eax,eax
 00565333    push        ebp
 00565334    push        5653A7
 00565339    push        dword ptr fs:[eax]
 0056533C    mov         dword ptr fs:[eax],esp
 0056533F    push        1
 00565341    mov         eax,dword ptr [ebx+44];TTimer.FWindowHandle:HWND
 00565344    push        eax
 00565345    call        user32.KillTimer
 0056534A    mov         esi,dword ptr [ebx+40];TTimer.FInterval:Cardinal
 0056534D    test        esi,esi
>0056534F    je          00565391
 00565351    cmp         byte ptr [ebx+50],0;TTimer.FEnabled:Boolean
>00565355    je          00565391
 00565357    cmp         word ptr [ebx+4A],0;TTimer.?f4A:word
>0056535C    je          00565391
 0056535E    push        0
 00565360    push        esi
 00565361    push        1
 00565363    mov         eax,dword ptr [ebx+44];TTimer.FWindowHandle:HWND
 00565366    push        eax
 00565367    call        user32.SetTimer
 0056536C    test        eax,eax
>0056536E    jne         00565391
 00565370    lea         edx,[ebp-4]
 00565373    mov         eax,[007C4E7C];^SResString241:TResStringRec
 00565378    call        LoadResString
 0056537D    mov         ecx,dword ptr [ebp-4]
 00565380    mov         dl,1
 00565382    mov         eax,[0046BDEC];EOutOfResources
 00565387    call        Exception.Create;EOutOfResources.Create
 0056538C    call        @RaiseExcept
 00565391    xor         eax,eax
 00565393    pop         edx
 00565394    pop         ecx
 00565395    pop         ecx
 00565396    mov         dword ptr fs:[eax],edx
 00565399    push        5653AE
 0056539E    lea         eax,[ebp-4]
 005653A1    call        @UStrClr
 005653A6    ret
>005653A7    jmp         @HandleFinally
>005653AC    jmp         0056539E
 005653AE    pop         esi
 005653AF    pop         ebx
 005653B0    pop         ecx
 005653B1    pop         ebp
 005653B2    ret
*}
end;

//005653B4
procedure TTimer.SetEnabled(Value:Boolean);
begin
{*
 005653B4    cmp         dl,byte ptr [eax+50]
>005653B7    je          005653C1
 005653B9    mov         byte ptr [eax+50],dl
 005653BC    call        00565328
 005653C1    ret
*}
end;

//005653C4
procedure TTimer.SetInterval(Value:Cardinal);
begin
{*
 005653C4    cmp         edx,dword ptr [eax+40]
>005653C7    je          005653D1
 005653C9    mov         dword ptr [eax+40],edx
 005653CC    call        00565328
 005653D1    ret
*}
end;

//005653D4
procedure TTimer.SetOnTimer(Value:Classes.TNotifyEvent);
begin
{*
 005653D4    push        ebp
 005653D5    mov         ebp,esp
 005653D7    mov         edx,dword ptr [ebp+8]
 005653DA    mov         dword ptr [eax+48],edx
 005653DD    mov         edx,dword ptr [ebp+0C]
 005653E0    mov         dword ptr [eax+4C],edx
 005653E3    call        00565328
 005653E8    pop         ebp
 005653E9    ret         8
*}
end;

//005653EC
procedure TTimer.sub_005653EC;
begin
{*
 005653EC    push        ebx
 005653ED    cmp         word ptr [eax+4A],0;TTimer.?f4A:word
>005653F2    je          005653FE
 005653F4    mov         ebx,eax
 005653F6    mov         edx,eax
 005653F8    mov         eax,dword ptr [ebx+4C];TTimer.?f4C:dword
 005653FB    call        dword ptr [ebx+48];TTimer.FOnTimer
 005653FE    pop         ebx
 005653FF    ret
*}
end;

//00565400
constructor TCustomPanel.Create(AOwner:TComponent);
begin
{*
 00565400    push        ebx
 00565401    push        esi
 00565402    test        dl,dl
>00565404    je          0056540E
 00565406    add         esp,0FFFFFFF0
 00565409    call        @ClassCreate
 0056540E    mov         ebx,edx
 00565410    mov         esi,eax
 00565412    xor         edx,edx
 00565414    mov         eax,esi
 00565416    call        TCustomControl.Create
 0056541B    mov         eax,[005654D4];0x2808EB gvar_005654D4
 00565420    mov         dword ptr [esi+60],eax;TCustomPanel.FControlStyle:TControlStyle
 00565423    call        StyleServices
 00565428    mov         edx,dword ptr [eax]
 0056542A    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0056542D    test        al,al
>0056542F    je          00565447
 00565431    mov         eax,dword ptr [esi+60];TCustomPanel.FControlStyle:TControlStyle
 00565434    or          eax,dword ptr ds:[5654D8];0x40000 gvar_005654D8
 0056543A    mov         edx,dword ptr ds:[5654DC];0x40 gvar_005654DC
 00565440    not         edx
 00565442    and         edx,eax
 00565444    mov         dword ptr [esi+60],edx;TCustomPanel.FControlStyle:TControlStyle
 00565447    mov         edx,0B9
 0056544C    mov         eax,esi
 0056544E    call        TControl.SetWidth
 00565453    mov         edx,29
 00565458    mov         eax,esi
 0056545A    call        TControl.SetHeight
 0056545F    mov         byte ptr [esi+298],2;TCustomPanel.FAlignment:TAlignment
 00565466    mov         byte ptr [esi+2A9],2;TCustomPanel.FVerticalAlignment:TVerticalAlignment
 0056546D    mov         dl,2
 0056546F    mov         eax,esi
 00565471    call        TPanel.SetBevelOuter
 00565476    mov         edx,1
 0056547B    mov         eax,esi
 0056547D    call        TPanel.SetBevelWidth
 00565482    mov         byte ptr [esi+2A4],0;TCustomPanel.FBorderStyle:TBorderStyle
 00565489    mov         edx,0FF00000F
 0056548E    mov         eax,esi
 00565490    call        TGroupBox.SetColor
 00565495    mov         byte ptr [esi+2A5],1;TCustomPanel.FFullRepaint:Boolean
 0056549C    mov         dl,1
 0056549E    mov         eax,esi
 005654A0    call        TPanel.SetUseDockManager
 005654A5    mov         dl,1
 005654A7    mov         eax,esi
 005654A9    mov         ecx,dword ptr [eax]
 005654AB    call        dword ptr [ecx+0F0];TPanel.SetParentBackground
 005654B1    mov         byte ptr [esi+2A8],1;TCustomPanel.FShowCaption:Boolean
 005654B8    mov         eax,esi
 005654BA    test        bl,bl
>005654BC    je          005654CD
 005654BE    call        @AfterConstruction
 005654C3    pop         dword ptr fs:[0]
 005654CA    add         esp,0C
 005654CD    mov         eax,esi
 005654CF    pop         esi
 005654D0    pop         ebx
 005654D1    ret
*}
end;

//005654E0
procedure TCustomPanel.CreateParams(var Params:TCreateParams);
begin
{*
 005654E0    push        ebx
 005654E1    push        esi
 005654E2    mov         esi,edx
 005654E4    mov         ebx,eax
 005654E6    mov         edx,esi
 005654E8    mov         eax,ebx
 005654EA    call        TWinControl.CreateParams
 005654EF    movzx       eax,byte ptr [ebx+2A4];TCustomPanel.FBorderStyle:TBorderStyle
 005654F6    mov         eax,dword ptr [eax*4+7A19DC];#0+#0+#0+#0+#0+#0+€'+#0
 005654FD    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 00565500    mov         eax,[007C4770];^gvar_007CA5E0
 00565505    cmp         byte ptr [eax],0
>00565508    je          0056552A
 0056550A    cmp         byte ptr [ebx+204],0;TCustomPanel.FCtl3D:Boolean
>00565511    je          0056552A
 00565513    cmp         byte ptr [ebx+2A4],1;TCustomPanel.FBorderStyle:TBorderStyle
>0056551A    jne         0056552A
 0056551C    and         dword ptr [esi+4],0FF7FFFFF;TCreateParams.Style:DWORD
 00565523    or          dword ptr [esi+8],200;TCreateParams.ExStyle:DWORD
 0056552A    and         dword ptr [esi+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 0056552E    pop         esi
 0056552F    pop         ebx
 00565530    ret
*}
end;

//00565534
procedure TCustomPanel.CMBorderChanged;
begin
{*
 00565534    push        esi
 00565535    mov         esi,eax
 00565537    mov         eax,esi
 00565539    call        TWinControl.CMBorderChanged
 0056553E    mov         eax,esi
 00565540    mov         edx,dword ptr [eax]
 00565542    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565548    pop         esi
 00565549    ret
*}
end;

//0056554C
procedure TCustomPanel.CMTextChanged;
begin
{*
 0056554C    push        esi
 0056554D    mov         esi,eax
 0056554F    mov         eax,esi
 00565551    mov         edx,dword ptr [eax]
 00565553    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565559    pop         esi
 0056555A    ret
*}
end;

//0056555C
{*procedure TCustomPanel.CMCtl3DChanged(?:?);
begin
 0056555C    push        ebx
 0056555D    push        esi
 0056555E    mov         esi,edx
 00565560    mov         ebx,eax
 00565562    mov         eax,[007C4770];^gvar_007CA5E0
 00565567    cmp         byte ptr [eax],0
>0056556A    je          0056557C
 0056556C    cmp         byte ptr [ebx+2A4],1;TCustomPanel.FBorderStyle:TBorderStyle
>00565573    jne         0056557C
 00565575    mov         eax,ebx
 00565577    call        TWinControl.RecreateWnd
 0056557C    mov         edx,esi
 0056557E    mov         eax,ebx
 00565580    call        TWinControl.CMCtl3DChanged
 00565585    pop         esi
 00565586    pop         ebx
 00565587    ret
end;*}

//00565588
{*procedure TCustomPanel.CMIsToolControl(?:?);
begin
 00565588    cmp         byte ptr [eax+2A6],0;TCustomPanel.FLocked:Boolean
>0056558F    jne         00565598
 00565591    mov         dword ptr [edx+0C],1
 00565598    ret
end;*}

//0056559C
{*procedure TCustomPanel.WMWindowPosChangedMsg(?:?);
begin
 0056559C    push        ebp
 0056559D    mov         ebp,esp
 0056559F    add         esp,0FFFFFFEC
 005655A2    push        ebx
 005655A3    push        esi
 005655A4    push        edi
 005655A5    xor         ecx,ecx
 005655A7    mov         dword ptr [ebp-14],ecx
 005655AA    mov         edi,edx
 005655AC    mov         ebx,eax
 005655AE    xor         eax,eax
 005655B0    push        ebp
 005655B1    push        56569C
 005655B6    push        dword ptr fs:[eax]
 005655B9    mov         dword ptr fs:[eax],esp
 005655BC    cmp         byte ptr [ebx+2A5],0;TCustomPanel.FFullRepaint:Boolean
>005655C3    jne         005655DE
 005655C5    cmp         byte ptr [ebx+2A8],0;TCustomPanel.FShowCaption:Boolean
>005655CC    je          005655ED
 005655CE    lea         edx,[ebp-14]
 005655D1    mov         eax,ebx
 005655D3    call        TControl.GetText
 005655D8    cmp         dword ptr [ebp-14],0
>005655DC    je          005655ED
 005655DE    mov         eax,ebx
 005655E0    mov         edx,dword ptr [eax]
 005655E2    call        dword ptr [edx+0A8];TWinControl.Invalidate
>005655E8    jmp         0056567D
 005655ED    mov         esi,dword ptr [ebx+2A0];TCustomPanel.FBorderWidth:TBorderWidth
 005655F3    cmp         byte ptr [ebx+29A],0;TCustomPanel.FBevelInner:TBevelCut
>005655FA    je          00565604
 005655FC    mov         eax,dword ptr [ebx+29C];TCustomPanel.FBevelWidth:TBevelWidth
 00565602    add         esi,eax
 00565604    cmp         byte ptr [ebx+29B],0;TCustomPanel.FBevelOuter:TBevelCut
>0056560B    je          00565615
 0056560D    mov         eax,dword ptr [ebx+29C];TCustomPanel.FBevelWidth:TBevelWidth
 00565613    add         esi,eax
 00565615    test        esi,esi
>00565617    jle         0056567D
 00565619    mov         eax,dword ptr [ebx+58];TCustomPanel.FWidth:Integer
 0056561C    mov         dword ptr [ebp-8],eax
 0056561F    mov         eax,dword ptr [ebx+5C];TCustomPanel.FHeight:Integer
 00565622    mov         dword ptr [ebp-4],eax
 00565625    mov         eax,dword ptr [edi+8]
 00565628    mov         eax,dword ptr [eax+10]
 0056562B    cmp         eax,dword ptr [ebp-8]
>0056562E    je          00565651
 00565630    xor         eax,eax
 00565632    mov         dword ptr [ebp-0C],eax
 00565635    mov         eax,dword ptr [ebp-8]
 00565638    sub         eax,esi
 0056563A    dec         eax
 0056563B    mov         dword ptr [ebp-10],eax
 0056563E    push        0FF
 00565640    lea         eax,[ebp-10]
 00565643    push        eax
 00565644    mov         eax,ebx
 00565646    call        TWinControl.GetHandle
 0056564B    push        eax
 0056564C    call        user32.InvalidateRect
 00565651    mov         eax,dword ptr [edi+8]
 00565654    mov         eax,dword ptr [eax+14]
 00565657    cmp         eax,dword ptr [ebp-4]
>0056565A    je          0056567D
 0056565C    xor         eax,eax
 0056565E    mov         dword ptr [ebp-10],eax
 00565661    mov         eax,dword ptr [ebp-4]
 00565664    sub         eax,esi
 00565666    dec         eax
 00565667    mov         dword ptr [ebp-0C],eax
 0056566A    push        0FF
 0056566C    lea         eax,[ebp-10]
 0056566F    push        eax
 00565670    mov         eax,ebx
 00565672    call        TWinControl.GetHandle
 00565677    push        eax
 00565678    call        user32.InvalidateRect
 0056567D    mov         edx,edi
 0056567F    mov         eax,ebx
 00565681    call        TWinControl.WMWindowPosChangedMsg
 00565686    xor         eax,eax
 00565688    pop         edx
 00565689    pop         ecx
 0056568A    pop         ecx
 0056568B    mov         dword ptr fs:[eax],edx
 0056568E    push        5656A3
 00565693    lea         eax,[ebp-14]
 00565696    call        @UStrClr
 0056569B    ret
>0056569C    jmp         @HandleFinally
>005656A1    jmp         00565693
 005656A3    pop         edi
 005656A4    pop         esi
 005656A5    pop         ebx
 005656A6    mov         esp,ebp
 005656A8    pop         ebp
 005656A9    ret
end;*}

//005656AC
procedure AdjustColors(Bevel:Controls.TBevelCut);
begin
{*
 005656AC    push        ebp
 005656AD    mov         ebp,esp
 005656AF    mov         edx,dword ptr [ebp+8]
 005656B2    mov         edx,dword ptr [edx-4]
 005656B5    mov         ecx,dword ptr [ebp+8]
 005656B8    mov         dword ptr [ecx-8],edx
 005656BB    cmp         al,1
>005656BD    jne         005656CB
 005656BF    mov         edx,dword ptr [ebp+8]
 005656C2    mov         edx,dword ptr [edx-0C]
 005656C5    mov         ecx,dword ptr [ebp+8]
 005656C8    mov         dword ptr [ecx-8],edx
 005656CB    mov         edx,dword ptr [ebp+8]
 005656CE    mov         edx,dword ptr [edx-0C]
 005656D1    mov         ecx,dword ptr [ebp+8]
 005656D4    mov         dword ptr [ecx-10],edx
 005656D7    cmp         al,1
>005656D9    jne         005656E7
 005656DB    mov         eax,dword ptr [ebp+8]
 005656DE    mov         eax,dword ptr [eax-4]
 005656E1    mov         edx,dword ptr [ebp+8]
 005656E4    mov         dword ptr [edx-10],eax
 005656E7    pop         ebp
 005656E8    ret
*}
end;

//005656EC
procedure sub_005656EC;
begin
{*
 005656EC    push        ebp
 005656ED    mov         ebp,esp
 005656EF    add         esp,0FFFFFFB4
 005656F2    push        ebx
 005656F3    push        esi
 005656F4    push        edi
 005656F5    xor         edx,edx
 005656F7    mov         dword ptr [ebp-48],edx
 005656FA    mov         dword ptr [ebp-44],edx
 005656FD    mov         dword ptr [ebp-40],edx
 00565700    mov         ebx,eax
 00565702    xor         eax,eax
 00565704    push        ebp
 00565705    push        5659F4
 0056570A    push        dword ptr fs:[eax]
 0056570D    mov         dword ptr fs:[eax],esp
 00565710    lea         edx,[ebp-30]
 00565713    mov         eax,ebx
 00565715    mov         ecx,dword ptr [eax]
 00565717    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0056571A    mov         eax,dword ptr [ebx+7C];TCustomPanel.FColor:TColor
 0056571D    mov         dword ptr [ebp-18],eax
 00565720    mov         dword ptr [ebp-4],0FF000014
 00565727    mov         dword ptr [ebp-0C],0FF000010
 0056572E    call        StyleServices
 00565733    mov         esi,eax
 00565735    mov         eax,esi
 00565737    mov         edx,dword ptr [eax]
 00565739    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0056573C    test        al,al
>0056573E    je          005657D8
 00565744    test        byte ptr [ebx+188],2;TCustomPanel.FStyleElements:TStyleElements
>0056574B    je          005657D8
 00565751    lea         ecx,[ebp-3C]
 00565754    mov         dl,2
 00565756    mov         eax,esi
 00565758    mov         edi,dword ptr [eax]
 0056575A    call        dword ptr [edi+0B8];TCustomStyleServices.GetElementDetails
 00565760    lea         eax,[ebp-14]
 00565763    push        eax
 00565764    mov         cl,1
 00565766    lea         edx,[ebp-3C]
 00565769    mov         eax,esi
 0056576B    call        TCustomStyleServices.GetElementColor
 00565770    test        al,al
>00565772    je          00565783
 00565774    cmp         dword ptr [ebp-14],1FFFFFFF
>0056577B    je          00565783
 0056577D    mov         eax,dword ptr [ebp-14]
 00565780    mov         dword ptr [ebp-18],eax
 00565783    lea         ecx,[ebp-3C]
 00565786    mov         dl,3
 00565788    mov         eax,esi
 0056578A    mov         edi,dword ptr [eax]
 0056578C    call        dword ptr [edi+0B8];TCustomStyleServices.GetElementDetails
 00565792    lea         eax,[ebp-14]
 00565795    push        eax
 00565796    mov         cl,4
 00565798    lea         edx,[ebp-3C]
 0056579B    mov         eax,esi
 0056579D    call        TCustomStyleServices.GetElementColor
 005657A2    test        al,al
>005657A4    je          005657B5
 005657A6    cmp         dword ptr [ebp-14],1FFFFFFF
>005657AD    je          005657B5
 005657AF    mov         eax,dword ptr [ebp-14]
 005657B2    mov         dword ptr [ebp-4],eax
 005657B5    lea         eax,[ebp-14]
 005657B8    push        eax
 005657B9    mov         cl,5
 005657BB    lea         edx,[ebp-3C]
 005657BE    mov         eax,esi
 005657C0    call        TCustomStyleServices.GetElementColor
 005657C5    test        al,al
>005657C7    je          005657D8
 005657C9    cmp         dword ptr [ebp-14],1FFFFFFF
>005657D0    je          005657D8
 005657D2    mov         eax,dword ptr [ebp-14]
 005657D5    mov         dword ptr [ebp-0C],eax
 005657D8    movzx       eax,byte ptr [ebx+29B];TCustomPanel.FBevelOuter:TBevelCut
 005657DF    test        al,al
>005657E1    je          00565806
 005657E3    push        ebp
 005657E4    call        AdjustColors
 005657E9    pop         ecx
 005657EA    mov         eax,dword ptr [ebp-10]
 005657ED    push        eax
 005657EE    mov         eax,dword ptr [ebx+29C];TCustomPanel.FBevelWidth:TBevelWidth
 005657F4    push        eax
 005657F5    lea         edx,[ebp-30]
 005657F8    mov         ecx,dword ptr [ebp-8]
 005657FB    mov         eax,dword ptr [ebx+290];TCustomPanel.FCanvas:TCanvas
 00565801    call        Frame3D
 00565806    mov         eax,esi
 00565808    mov         edx,dword ptr [eax]
 0056580A    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0056580D    test        al,al
>0056580F    je          00565817
 00565811    test        byte ptr [ebx+62],4;TCustomPanel.FEnabled:Boolean
>00565815    jne         00565835
 00565817    mov         eax,dword ptr [ebp-18]
 0056581A    push        eax
 0056581B    mov         eax,dword ptr [ebx+2A0];TCustomPanel.FBorderWidth:TBorderWidth
 00565821    push        eax
 00565822    lea         edx,[ebp-30]
 00565825    mov         ecx,dword ptr [ebp-18]
 00565828    mov         eax,dword ptr [ebx+290];TCustomPanel.FCanvas:TCanvas
 0056582E    call        Frame3D
>00565833    jmp         00565849
 00565835    mov         eax,dword ptr [ebx+2A0];TCustomPanel.FBorderWidth:TBorderWidth
 0056583B    neg         eax
 0056583D    mov         ecx,eax
 0056583F    mov         edx,eax
 00565841    lea         eax,[ebp-30]
 00565844    call        InflateRect
 00565849    movzx       eax,byte ptr [ebx+29A];TCustomPanel.FBevelInner:TBevelCut
 00565850    test        al,al
>00565852    je          00565877
 00565854    push        ebp
 00565855    call        AdjustColors
 0056585A    pop         ecx
 0056585B    mov         eax,dword ptr [ebp-10]
 0056585E    push        eax
 0056585F    mov         eax,dword ptr [ebx+29C];TCustomPanel.FBevelWidth:TBevelWidth
 00565865    push        eax
 00565866    lea         edx,[ebp-30]
 00565869    mov         ecx,dword ptr [ebp-8]
 0056586C    mov         eax,dword ptr [ebx+290];TCustomPanel.FCanvas:TCanvas
 00565872    call        Frame3D
 00565877    mov         eax,dword ptr [ebx+290];TCustomPanel.FCanvas:TCanvas
 0056587D    mov         dword ptr [ebp-20],eax
 00565880    mov         eax,esi
 00565882    mov         edx,dword ptr [eax]
 00565884    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00565887    test        al,al
>00565889    je          0056589F
 0056588B    mov         eax,ebx
 0056588D    call        TGroupBox.GetParentBackground
 00565892    test        al,al
>00565894    je          0056589F
 00565896    test        byte ptr [ebx+188],2;TCustomPanel.FStyleElements:TStyleElements
>0056589D    jne         005658B8
 0056589F    mov         eax,dword ptr [ebp-20]
 005658A2    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005658A5    mov         edx,dword ptr [ebp-18]
 005658A8    call        TBrush.SetColor
 005658AD    lea         edx,[ebp-30]
 005658B0    mov         eax,dword ptr [ebp-20]
 005658B3    mov         ecx,dword ptr [eax]
 005658B5    call        dword ptr [ecx+54];TCanvas.FillRect
 005658B8    cmp         byte ptr [ebx+2A8],0;TCustomPanel.FShowCaption:Boolean
>005658BF    je          005659D9
 005658C5    lea         edx,[ebp-40]
 005658C8    mov         eax,ebx
 005658CA    call        TControl.GetText
 005658CF    cmp         dword ptr [ebp-40],0
>005658D3    je          005659D9
 005658D9    mov         eax,dword ptr [ebp-20]
 005658DC    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005658DF    mov         dl,1
 005658E1    call        TBrush.SetStyle
 005658E6    mov         edx,dword ptr [ebx+74];TCustomPanel.FFont:TFont
 005658E9    mov         eax,dword ptr [ebp-20]
 005658EC    call        TCanvas.SetFont
 005658F1    movzx       eax,byte ptr [ebx+2A9];TCustomPanel.FVerticalAlignment:TVerticalAlignment
 005658F8    mov         eax,dword ptr [eax*4+7A19F0]
 005658FF    or          eax,60
 00565902    movzx       edx,byte ptr [ebx+298];TCustomPanel.FAlignment:TAlignment
 00565909    or          eax,dword ptr [edx*4+7A19E4]
 00565910    mov         dword ptr [ebp-1C],eax
 00565913    mov         edx,dword ptr [ebp-1C]
 00565916    mov         eax,ebx
 00565918    call        TControl.DrawTextBiDiModeFlags
 0056591D    mov         dword ptr [ebp-1C],eax
 00565920    mov         eax,esi
 00565922    mov         edx,dword ptr [eax]
 00565924    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00565927    test        al,al
>00565929    je          005659A6
 0056592B    test        byte ptr [ebx+188],1;TCustomPanel.FStyleElements:TStyleElements
>00565932    je          005659A6
 00565934    lea         ecx,[ebp-3C]
 00565937    mov         dl,2
 00565939    mov         eax,esi
 0056593B    mov         edi,dword ptr [eax]
 0056593D    call        dword ptr [edi+0B8];TCustomStyleServices.GetElementDetails
 00565943    lea         eax,[ebp-14]
 00565946    push        eax
 00565947    mov         cl,2
 00565949    lea         edx,[ebp-3C]
 0056594C    mov         eax,esi
 0056594E    call        TCustomStyleServices.GetElementColor
 00565953    test        al,al
>00565955    je          00565960
 00565957    cmp         dword ptr [ebp-14],1FFFFFFF
>0056595E    jne         0056596C
 00565960    mov         eax,dword ptr [ebp-20]
 00565963    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00565966    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 00565969    mov         dword ptr [ebp-14],eax
 0056596C    lea         edx,[ebp-44]
 0056596F    mov         eax,ebx
 00565971    call        TControl.GetText
 00565976    mov         eax,dword ptr [ebp-44]
 00565979    push        eax
 0056597A    lea         eax,[ebp-30]
 0056597D    push        eax
 0056597E    mov         eax,dword ptr [ebp-1C]
 00565981    call        TTextFormatFlags.&op_Implicit
 00565986    call        TTextFormatFlags.&op_Implicit
 0056598B    push        eax
 0056598C    mov         eax,dword ptr [ebp-14]
 0056598F    push        eax
 00565990    mov         eax,dword ptr [ebp-20]
 00565993    call        TCanvas.GetHandle
 00565998    mov         edx,eax
 0056599A    lea         ecx,[ebp-3C]
 0056599D    mov         eax,esi
 0056599F    call        TCustomStyleServices.DrawText
>005659A4    jmp         005659D9
 005659A6    mov         eax,dword ptr [ebp-20]
 005659A9    call        TCanvas.GetHandle
 005659AE    mov         esi,eax
 005659B0    lea         edx,[ebp-48]
 005659B3    mov         eax,ebx
 005659B5    call        TControl.GetText
 005659BA    mov         ebx,dword ptr [ebp-48]
 005659BD    mov         eax,dword ptr [ebp-1C]
 005659C0    push        eax
 005659C1    lea         eax,[ebp-30]
 005659C4    push        eax
 005659C5    push        0FF
 005659C7    mov         dword ptr [ebp-4C],ebx
 005659CA    mov         eax,dword ptr [ebp-4C]
 005659CD    call        @UStrToPWChar
 005659D2    push        eax
 005659D3    push        esi
 005659D4    call        user32.DrawTextW
 005659D9    xor         eax,eax
 005659DB    pop         edx
 005659DC    pop         ecx
 005659DD    pop         ecx
 005659DE    mov         dword ptr fs:[eax],edx
 005659E1    push        5659FB
 005659E6    lea         eax,[ebp-48]
 005659E9    mov         edx,3
 005659EE    call        @UStrArrayClr
 005659F3    ret
>005659F4    jmp         @HandleFinally
>005659F9    jmp         005659E6
 005659FB    pop         edi
 005659FC    pop         esi
 005659FD    pop         ebx
 005659FE    mov         esp,ebp
 00565A00    pop         ebp
 00565A01    ret
*}
end;

//00565A04
procedure sub_00565A04;
begin
{*
 00565A04    push        esi
 00565A05    mov         esi,eax
 00565A07    mov         eax,esi
 00565A09    mov         edx,dword ptr [eax]
 00565A0B    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565A11    pop         esi
 00565A12    ret
*}
end;

//00565A14
procedure TPanel.SetAlignment(Value:TAlignment);
begin
{*
 00565A14    push        esi
 00565A15    mov         esi,eax
 00565A17    mov         byte ptr [esi+298],dl;TPanel.FAlignment:TAlignment
 00565A1D    mov         eax,esi
 00565A1F    mov         edx,dword ptr [eax]
 00565A21    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565A27    pop         esi
 00565A28    ret
*}
end;

//00565A2C
procedure TPanel.SetBevelInner(Value:TBevelCut);
begin
{*
 00565A2C    push        esi
 00565A2D    mov         esi,eax
 00565A2F    mov         byte ptr [esi+29A],dl;TPanel.FBevelInner:TBevelCut
 00565A35    mov         eax,esi
 00565A37    call        TWinControl.Realign
 00565A3C    mov         eax,esi
 00565A3E    mov         edx,dword ptr [eax]
 00565A40    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565A46    pop         esi
 00565A47    ret
*}
end;

//00565A48
procedure TPanel.SetBevelOuter(Value:TBevelCut);
begin
{*
 00565A48    push        esi
 00565A49    mov         esi,eax
 00565A4B    mov         byte ptr [esi+29B],dl;TPanel.FBevelOuter:TBevelCut
 00565A51    mov         eax,esi
 00565A53    call        TWinControl.Realign
 00565A58    mov         eax,esi
 00565A5A    mov         edx,dword ptr [eax]
 00565A5C    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565A62    pop         esi
 00565A63    ret
*}
end;

//00565A64
procedure TPanel.SetBevelWidth(Value:TBevelWidth);
begin
{*
 00565A64    push        esi
 00565A65    mov         esi,eax
 00565A67    mov         dword ptr [esi+29C],edx;TPanel.FBevelWidth:TBevelWidth
 00565A6D    mov         eax,esi
 00565A6F    call        TWinControl.Realign
 00565A74    mov         eax,esi
 00565A76    mov         edx,dword ptr [eax]
 00565A78    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565A7E    pop         esi
 00565A7F    ret
*}
end;

//00565A80
procedure TPanel.SetBorderWidth(Value:TBorderWidth);
begin
{*
 00565A80    push        esi
 00565A81    mov         esi,eax
 00565A83    mov         dword ptr [esi+2A0],edx;TPanel.FBorderWidth:TBorderWidth
 00565A89    mov         eax,esi
 00565A8B    call        TWinControl.Realign
 00565A90    mov         eax,esi
 00565A92    mov         edx,dword ptr [eax]
 00565A94    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565A9A    pop         esi
 00565A9B    ret
*}
end;

//00565A9C
procedure TPanel.SetBorderStyle(Value:TBorderStyle);
begin
{*
 00565A9C    cmp         dl,byte ptr [eax+2A4];TPanel.FBorderStyle:TBorderStyle
>00565AA2    je          00565AAF
 00565AA4    mov         byte ptr [eax+2A4],dl;TPanel.FBorderStyle:TBorderStyle
 00565AAA    call        TWinControl.RecreateWnd
 00565AAF    ret
*}
end;

//00565AB0
procedure TPanel.SetShowCaption(Value:Boolean);
begin
{*
 00565AB0    push        esi
 00565AB1    mov         esi,eax
 00565AB3    cmp         dl,byte ptr [esi+2A8];TPanel.FShowCaption:Boolean
>00565AB9    je          00565ACB
 00565ABB    mov         byte ptr [esi+2A8],dl;TPanel.FShowCaption:Boolean
 00565AC1    mov         eax,esi
 00565AC3    mov         edx,dword ptr [eax]
 00565AC5    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565ACB    pop         esi
 00565ACC    ret
*}
end;

//00565AD0
procedure TCustomPanel.GetControlsAlignment;
begin
{*
 00565AD0    movzx       eax,byte ptr [eax+298];TCustomPanel.FAlignment:TAlignment
 00565AD7    ret
*}
end;

//00565AD8
{*procedure sub_00565AD8(?:?);
begin
 00565AD8    push        ebx
 00565AD9    push        esi
 00565ADA    mov         esi,edx
 00565ADC    mov         ebx,eax
 00565ADE    mov         edx,esi
 00565AE0    mov         eax,ebx
 00565AE2    call        004EA530
 00565AE7    mov         eax,dword ptr [ebx+2A0];TCustomPanel.FBorderWidth:TBorderWidth
 00565AED    neg         eax
 00565AEF    mov         ecx,eax
 00565AF1    mov         edx,eax
 00565AF3    mov         eax,esi
 00565AF5    call        InflateRect
 00565AFA    xor         eax,eax
 00565AFC    cmp         byte ptr [ebx+29B],0;TCustomPanel.FBevelOuter:TBevelCut
>00565B03    je          00565B0D
 00565B05    mov         edx,dword ptr [ebx+29C];TCustomPanel.FBevelWidth:TBevelWidth
 00565B0B    add         eax,edx
 00565B0D    cmp         byte ptr [ebx+29A],0;TCustomPanel.FBevelInner:TBevelCut
>00565B14    je          00565B1E
 00565B16    mov         edx,dword ptr [ebx+29C];TCustomPanel.FBevelWidth:TBevelWidth
 00565B1C    add         eax,edx
 00565B1E    mov         edx,eax
 00565B20    neg         edx
 00565B22    mov         ecx,edx
 00565B24    mov         ebx,esi
 00565B26    mov         eax,ebx
 00565B28    call        InflateRect
 00565B2D    pop         esi
 00565B2E    pop         ebx
 00565B2F    ret
end;*}

//00565B30
{*procedure TCustomPanel.CMDockClient(?:?);
begin
 00565B30    push        ebp
 00565B31    mov         ebp,esp
 00565B33    add         esp,0FFFFFFE8
 00565B36    push        ebx
 00565B37    push        esi
 00565B38    push        edi
 00565B39    mov         dword ptr [ebp-8],edx
 00565B3C    mov         dword ptr [ebp-4],eax
 00565B3F    mov         eax,dword ptr [ebp-4]
 00565B42    cmp         byte ptr [eax+6E],0;TCustomPanel.FAutoSize:Boolean
>00565B46    je          00565C59
 00565B4C    mov         eax,dword ptr [ebp-4]
 00565B4F    mov         byte ptr [eax+299],1;TCustomPanel.FAutoSizeDocking:Boolean
 00565B56    xor         eax,eax
 00565B58    push        ebp
 00565B59    push        565C52
 00565B5E    push        dword ptr fs:[eax]
 00565B61    mov         dword ptr fs:[eax],esp
 00565B64    mov         eax,dword ptr [ebp-8]
 00565B67    mov         eax,dword ptr [eax+4]
 00565B6A    lea         esi,[eax+4C]
 00565B6D    lea         edi,[ebp-18]
 00565B70    movs        dword ptr [edi],dword ptr [esi]
 00565B71    movs        dword ptr [edi],dword ptr [esi]
 00565B72    movs        dword ptr [edi],dword ptr [esi]
 00565B73    movs        dword ptr [edi],dword ptr [esi]
 00565B74    mov         eax,dword ptr [ebp-4]
 00565B77    movzx       eax,byte ptr [eax+6D];TCustomPanel.FAlign:TAlign
 00565B7B    dec         al
>00565B7D    je          00565BDF
 00565B7F    dec         al
>00565B81    je          00565BF8
 00565B83    dec         al
>00565B85    je          00565B90
 00565B87    dec         al
>00565B89    je          00565BAD
>00565B8B    jmp         00565C28
 00565B90    mov         eax,dword ptr [ebp-4]
 00565B93    cmp         dword ptr [eax+58],0;TCustomPanel.FWidth:Integer
>00565B97    jne         00565C28
 00565B9D    mov         edx,dword ptr [ebp-10]
 00565BA0    sub         edx,dword ptr [ebp-18]
 00565BA3    mov         eax,dword ptr [ebp-4]
 00565BA6    call        TControl.SetWidth
>00565BAB    jmp         00565C28
 00565BAD    mov         eax,dword ptr [ebp-4]
 00565BB0    cmp         dword ptr [eax+58],0;TCustomPanel.FWidth:Integer
>00565BB4    jne         00565C28
 00565BB6    mov         esi,dword ptr [ebp-10]
 00565BB9    sub         esi,dword ptr [ebp-18]
 00565BBC    push        esi
 00565BBD    mov         eax,dword ptr [ebp-4]
 00565BC0    mov         eax,dword ptr [eax+5C];TCustomPanel.FHeight:Integer
 00565BC3    push        eax
 00565BC4    mov         eax,dword ptr [ebp-4]
 00565BC7    mov         ecx,dword ptr [eax+54];TCustomPanel.FTop:Integer
 00565BCA    mov         eax,dword ptr [ebp-4]
 00565BCD    mov         edx,dword ptr [eax+50];TCustomPanel.FLeft:Integer
 00565BD0    sub         edx,esi
 00565BD2    mov         eax,dword ptr [ebp-4]
 00565BD5    mov         ebx,dword ptr [eax]
 00565BD7    call        dword ptr [ebx+0B0];TWinControl.SetBounds
>00565BDD    jmp         00565C28
 00565BDF    mov         eax,dword ptr [ebp-4]
 00565BE2    cmp         dword ptr [eax+5C],0;TCustomPanel.FHeight:Integer
>00565BE6    jne         00565C28
 00565BE8    mov         edx,dword ptr [ebp-0C]
 00565BEB    sub         edx,dword ptr [ebp-14]
 00565BEE    mov         eax,dword ptr [ebp-4]
 00565BF1    call        TControl.SetHeight
>00565BF6    jmp         00565C28
 00565BF8    mov         eax,dword ptr [ebp-4]
 00565BFB    cmp         dword ptr [eax+5C],0;TCustomPanel.FHeight:Integer
>00565BFF    jne         00565C28
 00565C01    mov         esi,dword ptr [ebp-0C]
 00565C04    sub         esi,dword ptr [ebp-14]
 00565C07    mov         eax,dword ptr [ebp-4]
 00565C0A    mov         eax,dword ptr [eax+58];TCustomPanel.FWidth:Integer
 00565C0D    push        eax
 00565C0E    push        esi
 00565C0F    mov         eax,dword ptr [ebp-4]
 00565C12    mov         ecx,dword ptr [eax+54];TCustomPanel.FTop:Integer
 00565C15    sub         ecx,esi
 00565C17    mov         eax,dword ptr [ebp-4]
 00565C1A    mov         edx,dword ptr [eax+50];TCustomPanel.FLeft:Integer
 00565C1D    mov         eax,dword ptr [ebp-4]
 00565C20    mov         ebx,dword ptr [eax]
 00565C22    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 00565C28    mov         edx,dword ptr [ebp-8]
 00565C2B    mov         eax,dword ptr [ebp-4]
 00565C2E    call        TWinControl.CMDockClient
 00565C33    call        @TryFinallyExit
>00565C38    jmp         00565C64
 00565C3A    xor         eax,eax
 00565C3C    pop         edx
 00565C3D    pop         ecx
 00565C3E    pop         ecx
 00565C3F    mov         dword ptr fs:[eax],edx
 00565C42    push        565C59
 00565C47    mov         eax,dword ptr [ebp-4]
 00565C4A    mov         byte ptr [eax+299],0;TCustomPanel.FAutoSizeDocking:Boolean
 00565C51    ret
>00565C52    jmp         @HandleFinally
>00565C57    jmp         00565C47
 00565C59    mov         edx,dword ptr [ebp-8]
 00565C5C    mov         eax,dword ptr [ebp-4]
 00565C5F    call        TWinControl.CMDockClient
 00565C64    pop         edi
 00565C65    pop         esi
 00565C66    pop         ebx
 00565C67    mov         esp,ebp
 00565C69    pop         ebp
 00565C6A    ret
end;*}

//00565C6C
{*function sub_00565C6C(?:?; ?:?):?;
begin
 00565C6C    push        ebx
 00565C6D    push        esi
 00565C6E    push        edi
 00565C6F    mov         edi,ecx
 00565C71    mov         esi,edx
 00565C73    mov         ebx,eax
 00565C75    cmp         byte ptr [ebx+299],0;TCustomPanel.FAutoSizeDocking:Boolean
>00565C7C    jne         00565C8D
 00565C7E    mov         ecx,edi
 00565C80    mov         edx,esi
 00565C82    mov         eax,ebx
 00565C84    call        004F0EB0
 00565C89    test        al,al
>00565C8B    jne         00565C91
 00565C8D    xor         eax,eax
>00565C8F    jmp         00565C93
 00565C91    mov         al,1
 00565C93    pop         edi
 00565C94    pop         esi
 00565C95    pop         ebx
 00565C96    ret
end;*}

//00565C98
procedure TPanel.SetParentBackground(Value:Boolean);
begin
{*
 00565C98    push        ebx
 00565C99    push        esi
 00565C9A    mov         ebx,edx
 00565C9C    mov         esi,eax
 00565C9E    test        bl,bl
>00565CA0    je          00565CAE
 00565CA2    mov         eax,[00565CCC];0x40 gvar_00565CCC
 00565CA7    not         eax
 00565CA9    and         dword ptr [esi+60],eax;TPanel.FControlStyle:TControlStyle
>00565CAC    jmp         00565CB6
 00565CAE    mov         eax,[00565CCC];0x40 gvar_00565CCC
 00565CB3    or          dword ptr [esi+60],eax;TPanel.FControlStyle:TControlStyle
 00565CB6    mov         byte ptr [esi+2A7],1;TPanel.FParentBackgroundSet:Boolean
 00565CBD    mov         edx,ebx
 00565CBF    mov         eax,esi
 00565CC1    call        TGroupBox.SetParentBackground
 00565CC6    pop         esi
 00565CC7    pop         ebx
 00565CC8    ret
*}
end;

//00565CD0
procedure TPanel.SetVerticalAlignment(Value:TVerticalAlignment);
begin
{*
 00565CD0    push        esi
 00565CD1    mov         esi,eax
 00565CD3    mov         byte ptr [esi+2A9],dl;TPanel.FVerticalAlignment:TVerticalAlignment
 00565CD9    mov         eax,esi
 00565CDB    mov         edx,dword ptr [eax]
 00565CDD    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00565CE3    pop         esi
 00565CE4    ret
*}
end;

//00565F40
constructor TGroupButton.Create(RadioGroup:TCustomRadioGroup);
begin
{*
 00565F40    push        ebx
 00565F41    push        esi
 00565F42    push        edi
 00565F43    test        dl,dl
>00565F45    je          00565F4F
 00565F47    add         esp,0FFFFFFF0
 00565F4A    call        @ClassCreate
 00565F4F    mov         esi,ecx
 00565F51    mov         ebx,edx
 00565F53    mov         edi,eax
 00565F55    mov         ecx,esi
 00565F57    xor         edx,edx
 00565F59    mov         eax,edi
 00565F5B    call        TRadioButton.Create
 00565F60    mov         edx,edi
 00565F62    mov         eax,dword ptr [esi+298];TCustomRadioGroup.FButtons:TList
 00565F68    call        TList.Add
 00565F6D    xor         edx,edx
 00565F6F    mov         eax,edi
 00565F71    call        TControl.SetVisible
 00565F76    mov         eax,esi
 00565F78    mov         edx,dword ptr [eax]
 00565F7A    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00565F7D    mov         edx,eax
 00565F7F    mov         eax,edi
 00565F81    mov         ecx,dword ptr [eax]
 00565F83    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00565F89    xor         edx,edx
 00565F8B    mov         eax,edi
 00565F8D    call        TGroupBox.SetParentShowHint
 00565F92    mov         dword ptr [edi+124],esi;TGroupButton.?f124:TMessageForm
 00565F98    mov         dword ptr [edi+120],566394;TGroupButton.FOnClick:TNotifyEvent sub_00566394
 00565FA2    mov         edx,esi
 00565FA4    mov         eax,edi
 00565FA6    mov         ecx,dword ptr [eax]
 00565FA8    call        dword ptr [ecx+8C];TGroupButton.sub_004F22F8
 00565FAE    mov         eax,edi
 00565FB0    test        bl,bl
>00565FB2    je          00565FC3
 00565FB4    call        @AfterConstruction
 00565FB9    pop         dword ptr fs:[0]
 00565FC0    add         esp,0C
 00565FC3    mov         eax,edi
 00565FC5    pop         edi
 00565FC6    pop         esi
 00565FC7    pop         ebx
 00565FC8    ret
*}
end;

//00565FCC
destructor TGroupButton.Destroy();
begin
{*
 00565FCC    push        ebx
 00565FCD    push        esi
 00565FCE    call        @BeforeDestruction
 00565FD3    mov         ebx,edx
 00565FD5    mov         esi,eax
 00565FD7    mov         eax,dword ptr [esi+4];TGroupButton.FOwner:TComponent
 00565FDA    mov         eax,dword ptr [eax+298]
 00565FE0    mov         edx,esi
 00565FE2    xor         ecx,ecx
 00565FE4    call        TList.RemoveItem
 00565FE9    mov         dl,0FC
 00565FEB    and         dl,bl
 00565FED    mov         eax,esi
 00565FEF    call        TWinControl.Destroy
 00565FF4    test        bl,bl
>00565FF6    jle         00565FFF
 00565FF8    mov         eax,esi
 00565FFA    call        @ClassDestroy
 00565FFF    pop         esi
 00566000    pop         ebx
 00566001    ret
*}
end;

//00566004
{*procedure TGroupButton.sub_0050DB98(?:?);
begin
 00566004    push        ebp
 00566005    mov         ebp,esp
 00566007    push        ecx
 00566008    push        ebx
 00566009    push        esi
 0056600A    push        edi
 0056600B    mov         ebx,edx
 0056600D    mov         dword ptr [ebp-4],eax
 00566010    mov         eax,dword ptr [ebp-4]
 00566013    cmp         byte ptr [eax+2A0],0;TGroupButton.FInClick:Boolean
>0056601A    jne         0056608C
 0056601C    mov         eax,dword ptr [ebp-4]
 0056601F    mov         byte ptr [eax+2A0],1;TGroupButton.FInClick:Boolean
 00566026    xor         eax,eax
 00566028    push        ebp
 00566029    push        566069
 0056602E    push        dword ptr fs:[eax]
 00566031    mov         dword ptr fs:[eax],esp
 00566034    movzx       esi,word ptr [ebx+6]
 00566038    test        si,si
>0056603B    je          00566043
 0056603D    cmp         si,5
>00566041    jne         0056605F
 00566043    mov         eax,dword ptr [ebp-4]
 00566046    mov         eax,dword ptr [eax+40];TGroupButton.FParent:TWinControl
 00566049    mov         edx,dword ptr [eax]
 0056604B    call        dword ptr [edx+10C]
 00566051    test        al,al
>00566053    je          0056605F
 00566055    mov         edx,ebx
 00566057    mov         eax,dword ptr [ebp-4]
 0056605A    call        TRadioButton.sub_0050DB98
 0056605F    xor         eax,eax
 00566061    pop         edx
 00566062    pop         ecx
 00566063    pop         ecx
 00566064    mov         dword ptr fs:[eax],edx
>00566067    jmp         00566082
>00566069    jmp         @HandleAnyException
 0056606E    mov         eax,[007C4A18];^Application:TApplication
 00566073    mov         eax,dword ptr [eax]
 00566075    mov         edx,dword ptr [ebp-4]
 00566078    call        TApplication.HandleException
 0056607D    call        @DoneExcept
 00566082    mov         eax,dword ptr [ebp-4]
 00566085    mov         byte ptr [eax+2A0],0;TGroupButton.FInClick:Boolean
 0056608C    pop         edi
 0056608D    pop         esi
 0056608E    pop         ebx
 0056608F    pop         ecx
 00566090    pop         ebp
 00566091    ret
end;*}

//00566094
{*procedure TGroupButton.sub_004EEC30(?:?);
begin
 00566094    push        ebx
 00566095    push        esi
 00566096    push        edi
 00566097    mov         ebx,edx
 00566099    mov         edi,eax
 0056609B    mov         edx,ebx
 0056609D    mov         eax,edi
 0056609F    call        TWinControl.sub_004EEC30
 005660A4    mov         edx,ebx
 005660A6    mov         eax,dword ptr [edi+40];TGroupButton.FParent:TWinControl
 005660A9    mov         si,0FFB6
 005660AD    call        @CallDynaInst;TWinControl.sub_004EEC30
 005660B2    cmp         word ptr [ebx],8
>005660B6    je          005660BE
 005660B8    cmp         word ptr [ebx],20
>005660BC    jne         005660D2
 005660BE    mov         eax,dword ptr [edi+40];TGroupButton.FParent:TWinControl
 005660C1    mov         edx,dword ptr [eax]
 005660C3    call        dword ptr [edx+10C]
 005660C9    test        al,al
>005660CB    jne         005660D2
 005660CD    mov         word ptr [ebx],0
 005660D2    pop         edi
 005660D3    pop         esi
 005660D4    pop         ebx
 005660D5    ret
end;*}

//005660D8
{*procedure TGroupButton.sub_004EE9E0(?:?; ?:?);
begin
 005660D8    push        esi
 005660D9    push        edi
 005660DA    push        ecx
 005660DB    mov         word ptr [esp],cx
 005660DF    mov         edi,edx
 005660E1    mov         esi,eax
 005660E3    mov         edx,edi
 005660E5    movzx       ecx,word ptr [esp]
 005660E9    mov         eax,esi
 005660EB    call        TWinControl.sub_004EE9E0
 005660F0    mov         edx,edi
 005660F2    movzx       ecx,word ptr [esp]
 005660F6    mov         eax,dword ptr [esi+40];TGroupButton.FParent:TWinControl
 005660F9    mov         si,0FFB8
 005660FD    call        @CallDynaInst;TWinControl.sub_004EE9E0
 00566102    pop         edx
 00566103    pop         edi
 00566104    pop         esi
 00566105    ret
end;*}

//00566108
procedure TCustomControlBar.CreateParams(var Params:Controls.TCreateParams);
begin
{*
 00566108    push        ebx
 00566109    mov         ebx,edx
 0056610B    mov         edx,ebx
 0056610D    call        TRadioButton.CreateParams
 00566112    and         dword ptr [ebx+24],0FFFFFFFC
 00566116    pop         ebx
 00566117    ret
*}
end;

//00566118
constructor TCustomRadioGroup.Create(AOwner:TComponent);
begin
{*
 00566118    push        ebp
 00566119    mov         ebp,esp
 0056611B    push        ecx
 0056611C    push        ebx
 0056611D    push        esi
 0056611E    test        dl,dl
>00566120    je          0056612A
 00566122    add         esp,0FFFFFFF0
 00566125    call        @ClassCreate
 0056612A    mov         byte ptr [ebp-1],dl
 0056612D    mov         ebx,eax
 0056612F    xor         edx,edx
 00566131    mov         eax,ebx
 00566133    call        TCustomGroupBox.Create
 00566138    mov         eax,[005661A4];0x400A0 gvar_005661A4
 0056613D    mov         dword ptr [ebx+60],eax;TCustomRadioGroup.FControlStyle:TControlStyle
 00566140    mov         dl,1
 00566142    mov         eax,[0046C204];TList
 00566147    call        TObject.Create;TList.Create
 0056614C    mov         dword ptr [ebx+298],eax;TCustomRadioGroup.FButtons:TList
 00566152    mov         dl,1
 00566154    mov         eax,[0046F9A0];TStringList
 00566159    call        TStringList.Create;TStringList.Create
 0056615E    mov         esi,eax
 00566160    mov         dword ptr [ebx+29C],esi;TCustomRadioGroup.FItems:TStrings
 00566166    mov         dword ptr [esi+44],ebx;TStringList.?f44:TCustomRadioGroup
 00566169    mov         dword ptr [esi+40],5663CC;TStringList.FOnChange:TNotifyEvent sub_005663CC
 00566170    mov         dword ptr [ebx+2A0],0FFFFFFFF;TCustomRadioGroup.FItemIndex:Integer
 0056617A    mov         dword ptr [ebx+2A4],1;TCustomRadioGroup.FColumns:Integer
 00566184    mov         eax,ebx
 00566186    cmp         byte ptr [ebp-1],0
>0056618A    je          0056619B
 0056618C    call        @AfterConstruction
 00566191    pop         dword ptr fs:[0]
 00566198    add         esp,0C
 0056619B    mov         eax,ebx
 0056619D    pop         esi
 0056619E    pop         ebx
 0056619F    pop         ecx
 005661A0    pop         ebp
 005661A1    ret
*}
end;

//005661A8
destructor TCustomRadioGroup.Destroy();
begin
{*
 005661A8    push        ebx
 005661A9    push        esi
 005661AA    call        @BeforeDestruction
 005661AF    mov         ebx,edx
 005661B1    mov         esi,eax
 005661B3    xor         edx,edx
 005661B5    mov         eax,esi
 005661B7    call        0056645C
 005661BC    mov         eax,dword ptr [esi+29C];TCustomRadioGroup.FItems:TStrings
 005661C2    xor         edx,edx
 005661C4    mov         dword ptr [eax+40],edx
 005661C7    mov         dword ptr [eax+44],edx
 005661CA    call        TObject.Free
 005661CF    mov         eax,dword ptr [esi+298];TCustomRadioGroup.FButtons:TList
 005661D5    call        TObject.Free
 005661DA    mov         dl,0FC
 005661DC    and         dl,bl
 005661DE    mov         eax,esi
 005661E0    call        TCustomControl.Destroy
 005661E5    test        bl,bl
>005661E7    jle         005661F0
 005661E9    mov         eax,esi
 005661EB    call        @ClassDestroy
 005661F0    pop         esi
 005661F1    pop         ebx
 005661F2    ret
*}
end;

//005661F4
procedure TCustomRadioGroup.FlipChildren(AllLevels:Boolean);
begin
{*
 005661F4    ret
*}
end;

//005661F8
procedure TCustomLinkLabel.AdjustBounds;
begin
{*
 005661F8    push        ebp
 005661F9    mov         ebp,esp
 005661FB    add         esp,0FFFFFFA4
 005661FE    push        ebx
 005661FF    push        esi
 00566200    push        edi
 00566201    mov         ebx,eax
 00566203    mov         eax,dword ptr [ebx+298]
 00566209    cmp         dword ptr [eax+8],0
>0056620D    je          0056638C
 00566213    cmp         byte ptr [ebx+2A8],0
>0056621A    jne         0056638C
 00566220    push        0
 00566222    call        user32.GetDC
 00566227    mov         esi,eax
 00566229    mov         eax,dword ptr [ebx+74]
 0056622C    call        TFont.GetHandle
 00566231    push        eax
 00566232    push        esi
 00566233    call        gdi32.SelectObject
 00566238    mov         edi,eax
 0056623A    lea         eax,[ebp-5C]
 0056623D    push        eax
 0056623E    push        esi
 0056623F    call        gdi32.GetTextMetricsW
 00566244    push        edi
 00566245    push        esi
 00566246    call        gdi32.SelectObject
 0056624B    push        esi
 0056624C    push        0
 0056624E    call        user32.ReleaseDC
 00566253    mov         eax,dword ptr [ebx+298]
 00566259    mov         esi,dword ptr [eax+8]
 0056625C    mov         eax,esi
 0056625E    mov         ecx,dword ptr [ebx+2A4]
 00566264    add         eax,ecx
 00566266    dec         eax
 00566267    cdq
 00566268    idiv        eax,ecx
 0056626A    mov         dword ptr [ebp-4],eax
 0056626D    mov         eax,dword ptr [ebx+58]
 00566270    sub         eax,0A
 00566273    cdq
 00566274    idiv        eax,ecx
 00566276    mov         dword ptr [ebp-8],eax
 00566279    mov         eax,dword ptr [ebx+5C]
 0056627C    mov         ecx,dword ptr [ebp-5C]
 0056627F    sub         eax,ecx
 00566281    sub         eax,5
 00566284    mov         dword ptr [ebp-14],eax
 00566287    mov         eax,dword ptr [ebp-14]
 0056628A    cdq
 0056628B    idiv        eax,dword ptr [ebp-4]
 0056628E    mov         dword ptr [ebp-0C],eax
 00566291    mov         eax,dword ptr [ebp-14]
 00566294    cdq
 00566295    idiv        eax,dword ptr [ebp-4]
 00566298    sar         edx,1
>0056629A    jns         0056629F
 0056629C    adc         edx,0
 0056629F    inc         ecx
 005662A0    add         edx,ecx
 005662A2    mov         dword ptr [ebp-10],edx
 005662A5    push        esi
 005662A6    call        user32.BeginDeferWindowPos
 005662AB    mov         dword ptr [ebp-18],eax
 005662AE    xor         eax,eax
 005662B0    push        ebp
 005662B1    push        566385
 005662B6    push        dword ptr fs:[eax]
 005662B9    mov         dword ptr fs:[eax],esp
 005662BC    mov         eax,dword ptr [ebx+298]
 005662C2    mov         eax,dword ptr [eax+8]
 005662C5    dec         eax
 005662C6    test        eax,eax
>005662C8    jl          0056636E
 005662CE    inc         eax
 005662CF    mov         dword ptr [ebp-20],eax
 005662D2    mov         dword ptr [ebp-14],0
 005662D9    mov         eax,dword ptr [ebx+298]
 005662DF    mov         edx,dword ptr [ebp-14]
 005662E2    call        TList.Get
 005662E7    mov         edi,eax
 005662E9    movzx       edx,byte ptr [ebx+71]
 005662ED    mov         eax,edi
 005662EF    mov         ecx,dword ptr [eax]
 005662F1    call        dword ptr [ecx+94]
 005662F7    mov         eax,dword ptr [ebp-14]
 005662FA    cdq
 005662FB    idiv        eax,dword ptr [ebp-4]
 005662FE    imul        dword ptr [ebp-8]
 00566301    add         eax,8
 00566304    mov         dword ptr [ebp-1C],eax
 00566307    mov         eax,edi
 00566309    mov         si,0FFC6
 0056630D    call        @CallDynaInst
 00566312    test        al,al
>00566314    je          00566326
 00566316    mov         eax,ebx
 00566318    call        TControl.GetClientWidth
 0056631D    sub         eax,dword ptr [ebp-1C]
 00566320    sub         eax,dword ptr [ebp-8]
 00566323    mov         dword ptr [ebp-1C],eax
 00566326    push        14
 00566328    mov         eax,dword ptr [ebp-0C]
 0056632B    push        eax
 0056632C    mov         eax,dword ptr [ebp-8]
 0056632F    push        eax
 00566330    mov         eax,dword ptr [ebp-14]
 00566333    cdq
 00566334    idiv        eax,dword ptr [ebp-4]
 00566337    imul        edx,dword ptr [ebp-0C]
 0056633B    add         edx,dword ptr [ebp-10]
 0056633E    push        edx
 0056633F    mov         eax,dword ptr [ebp-1C]
 00566342    push        eax
 00566343    push        0
 00566345    mov         eax,edi
 00566347    call        TWinControl.GetHandle
 0056634C    push        eax
 0056634D    mov         eax,dword ptr [ebp-18]
 00566350    push        eax
 00566351    call        user32.DeferWindowPos
 00566356    mov         dword ptr [ebp-18],eax
 00566359    mov         dl,1
 0056635B    mov         eax,edi
 0056635D    call        TControl.SetVisible
 00566362    inc         dword ptr [ebp-14]
 00566365    dec         dword ptr [ebp-20]
>00566368    jne         005662D9
 0056636E    xor         eax,eax
 00566370    pop         edx
 00566371    pop         ecx
 00566372    pop         ecx
 00566373    mov         dword ptr fs:[eax],edx
 00566376    push        56638C
 0056637B    mov         eax,dword ptr [ebp-18]
 0056637E    push        eax
 0056637F    call        user32.EndDeferWindowPos
 00566384    ret
>00566385    jmp         @HandleFinally
>0056638A    jmp         0056637B
 0056638C    pop         edi
 0056638D    pop         esi
 0056638E    pop         ebx
 0056638F    mov         esp,ebp
 00566391    pop         ebp
 00566392    ret
*}
end;

//00566394
{*procedure sub_00566394(?:?; ?:?);
begin
 00566394    push        ebx
 00566395    push        esi
 00566396    mov         ebx,edx
 00566398    mov         esi,eax
 0056639A    cmp         byte ptr [esi+2A9],0
>005663A1    jne         005663C8
 005663A3    mov         edx,ebx
 005663A5    mov         eax,dword ptr [esi+298]
 005663AB    call        TList.IndexOf
 005663B0    mov         dword ptr [esi+2A0],eax
 005663B6    mov         eax,esi
 005663B8    call        TControl.Changed
 005663BD    mov         eax,esi
 005663BF    mov         si,0FFEB
 005663C3    call        @CallDynaInst
 005663C8    pop         esi
 005663C9    pop         ebx
 005663CA    ret
end;*}

//005663CC
{*procedure sub_005663CC(?:?);
begin
 005663CC    push        ebx
 005663CD    mov         ebx,eax
 005663CF    cmp         byte ptr [ebx+2A8],0
>005663D6    jne         00566404
 005663D8    mov         eax,dword ptr [ebx+29C]
 005663DE    mov         edx,dword ptr [eax]
 005663E0    call        dword ptr [edx+14]
 005663E3    cmp         eax,dword ptr [ebx+2A0]
>005663E9    jg          005663FD
 005663EB    mov         eax,dword ptr [ebx+29C]
 005663F1    mov         edx,dword ptr [eax]
 005663F3    call        dword ptr [edx+14]
 005663F6    dec         eax
 005663F7    mov         dword ptr [ebx+2A0],eax
 005663FD    mov         eax,ebx
 005663FF    call        0056657C
 00566404    pop         ebx
 00566405    ret
end;*}

//00566408
procedure TCustomLinkLabel.CMFontChanged(var Message:Messages.TMessage);
begin
{*
 00566408    push        ebx
 00566409    mov         ebx,eax
 0056640B    mov         eax,ebx
 0056640D    call        TWinControl.CMFontChanged
 00566412    mov         eax,ebx
 00566414    call        TCustomLinkLabel.AdjustBounds
 00566419    pop         ebx
 0056641A    ret
*}
end;

//0056641C
procedure TCustomRadioGroup.ReadState(Reader:TReader);
begin
{*
 0056641C    push        ebx
 0056641D    mov         ebx,eax
 0056641F    mov         byte ptr [ebx+2A8],1;TCustomRadioGroup.FReading:Boolean
 00566426    mov         eax,ebx
 00566428    call        TWinControl.ReadState
 0056642D    mov         byte ptr [ebx+2A8],0;TCustomRadioGroup.FReading:Boolean
 00566434    mov         eax,ebx
 00566436    call        TWinControl.HandleAllocated
 0056643B    test        al,al
>0056643D    je          00566446
 0056643F    mov         eax,ebx
 00566441    call        0056657C
 00566446    pop         ebx
 00566447    ret
*}
end;

//00566448
procedure TCustomLinkLabel.CreateWnd;
begin
{*
 00566448    push        ebx
 00566449    mov         ebx,eax
 0056644B    mov         eax,ebx
 0056644D    call        TWinControl.CreateWnd
 00566452    mov         eax,ebx
 00566454    call        0056657C
 00566459    pop         ebx
 0056645A    ret
*}
end;

//0056645C
{*procedure sub_0056645C(?:TCustomRadioGroup; ?:?);
begin
 0056645C    push        ebx
 0056645D    push        esi
 0056645E    push        edi
 0056645F    mov         esi,edx
 00566461    mov         ebx,eax
>00566463    jmp         00566473
 00566465    mov         ecx,ebx
 00566467    mov         dl,1
 00566469    mov         eax,[00565CE8];TGroupButton
 0056646E    call        TGroupButton.Create;TGroupButton.Create
 00566473    mov         eax,dword ptr [ebx+298];TCustomRadioGroup.FButtons:TList
 00566479    cmp         esi,dword ptr [eax+8];TList.FCount:Integer
>0056647C    jg          00566465
>0056647E    jmp         0056648C
 00566480    mov         eax,edi
 00566482    call        TList.Last
 00566487    call        TObject.Free
 0056648C    mov         edi,dword ptr [ebx+298];TCustomRadioGroup.FButtons:TList
 00566492    cmp         esi,dword ptr [edi+8];TList.FCount:Integer
>00566495    jl          00566480
 00566497    pop         edi
 00566498    pop         esi
 00566499    pop         ebx
 0056649A    ret
end;*}

//0056649C
procedure TRadioGroup.SetColumns(Value:Integer);
begin
{*
 0056649C    push        esi
 0056649D    mov         esi,eax
 0056649F    cmp         edx,1
>005664A2    jge         005664A9
 005664A4    mov         edx,1
 005664A9    cmp         edx,10
>005664AC    jle         005664B3
 005664AE    mov         edx,10
 005664B3    cmp         edx,dword ptr [esi+2A4];TRadioGroup.FColumns:Integer
>005664B9    je          005664D2
 005664BB    mov         dword ptr [esi+2A4],edx;TRadioGroup.FColumns:Integer
 005664C1    mov         eax,esi
 005664C3    call        TCustomLinkLabel.AdjustBounds
 005664C8    mov         eax,esi
 005664CA    mov         edx,dword ptr [eax]
 005664CC    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005664D2    pop         esi
 005664D3    ret
*}
end;

//005664D4
procedure TRadioGroup.SetItemIndex(Value:Integer);
begin
{*
 005664D4    push        ebx
 005664D5    push        esi
 005664D6    push        edi
 005664D7    push        ebp
 005664D8    mov         esi,edx
 005664DA    mov         ebx,eax
 005664DC    cmp         byte ptr [ebx+2A8],0;TRadioGroup.FReading:Boolean
>005664E3    je          005664ED
 005664E5    mov         dword ptr [ebx+2A0],esi;TRadioGroup.FItemIndex:Integer
>005664EB    jmp         00566550
 005664ED    mov         eax,ebx
 005664EF    call        TWinControl.HandleNeeded
 005664F4    cmp         esi,0FFFFFFFF
>005664F7    jge         005664FC
 005664F9    or          esi,0FFFFFFFF
 005664FC    mov         ebp,dword ptr [ebx+298];TRadioGroup.FButtons:TList
 00566502    mov         eax,dword ptr [ebp+8];TList.FCount:Integer
 00566505    cmp         esi,eax
>00566507    jl          0056650C
 00566509    mov         esi,eax
 0056650B    dec         esi
 0056650C    mov         edi,dword ptr [ebx+2A0];TRadioGroup.FItemIndex:Integer
 00566512    cmp         esi,edi
>00566514    je          00566550
 00566516    test        edi,edi
>00566518    jl          0056652D
 0056651A    mov         edx,edi
 0056651C    mov         eax,ebp
 0056651E    call        TList.Get
 00566523    xor         edx,edx
 00566525    mov         ecx,dword ptr [eax]
 00566527    call        dword ptr [ecx+10C]
 0056652D    mov         edi,esi
 0056652F    mov         dword ptr [ebx+2A0],edi;TRadioGroup.FItemIndex:Integer
 00566535    test        edi,edi
>00566537    jl          00566550
 00566539    mov         edx,edi
 0056653B    mov         eax,dword ptr [ebx+298];TRadioGroup.FButtons:TList
 00566541    call        TList.Get
 00566546    mov         dl,1
 00566548    mov         ecx,dword ptr [eax]
 0056654A    call        dword ptr [ecx+10C]
 00566550    pop         ebp
 00566551    pop         edi
 00566552    pop         esi
 00566553    pop         ebx
 00566554    ret
*}
end;

//00566558
procedure TRadioGroup.SetItems(Value:TStrings);
begin
{*
 00566558    push        esi
 00566559    mov         esi,eax
 0056655B    mov         eax,dword ptr [esi+29C];TRadioGroup.FItems:TStrings
 00566561    mov         ecx,dword ptr [eax]
 00566563    call        dword ptr [ecx+8];TStrings.Assign
 00566566    pop         esi
 00566567    ret
*}
end;

//00566568
procedure TRadioGroup.SetWordWrap(Value:Boolean);
begin
{*
 00566568    cmp         dl,byte ptr [eax+2AA];TRadioGroup.FWordWrap:Boolean
>0056656E    je          0056657B
 00566570    mov         byte ptr [eax+2AA],dl;TRadioGroup.FWordWrap:Boolean
 00566576    call        0056657C
 0056657B    ret
*}
end;

//0056657C
procedure sub_0056657C(?:TCustomRadioGroup);
begin
{*
 0056657C    push        ebp
 0056657D    mov         ebp,esp
 0056657F    add         esp,0FFFFFFF8
 00566582    push        ebx
 00566583    push        esi
 00566584    push        edi
 00566585    xor         edx,edx
 00566587    mov         dword ptr [ebp-8],edx
 0056658A    mov         esi,eax
 0056658C    xor         eax,eax
 0056658E    push        ebp
 0056658F    push        566661
 00566594    push        dword ptr fs:[eax]
 00566597    mov         dword ptr fs:[eax],esp
 0056659A    mov         eax,dword ptr [esi+29C];TCustomRadioGroup.FItems:TStrings
 005665A0    mov         edx,dword ptr [eax]
 005665A2    call        dword ptr [edx+14];TStrings.GetCount
 005665A5    mov         edx,eax
 005665A7    mov         eax,esi
 005665A9    call        0056645C
 005665AE    mov         eax,dword ptr [esi+298];TCustomRadioGroup.FButtons:TList
 005665B4    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005665B7    dec         eax
 005665B8    test        eax,eax
>005665BA    jl          00566608
 005665BC    inc         eax
 005665BD    mov         dword ptr [ebp-4],eax
 005665C0    xor         ebx,ebx
 005665C2    lea         ecx,[ebp-8]
 005665C5    mov         edx,ebx
 005665C7    mov         eax,dword ptr [esi+29C];TCustomRadioGroup.FItems:TStrings
 005665CD    mov         edi,dword ptr [eax]
 005665CF    call        dword ptr [edi+0C];TStrings.Get
 005665D2    mov         eax,dword ptr [ebp-8]
 005665D5    push        eax
 005665D6    mov         edx,ebx
 005665D8    mov         eax,dword ptr [esi+298];TCustomRadioGroup.FButtons:TList
 005665DE    call        TList.Get
 005665E3    pop         edx
 005665E4    call        TControl.SetText
 005665E9    mov         edx,ebx
 005665EB    mov         eax,dword ptr [esi+298];TCustomRadioGroup.FButtons:TList
 005665F1    call        TList.Get
 005665F6    movzx       edx,byte ptr [esi+2AA];TCustomRadioGroup.FWordWrap:Boolean
 005665FD    call        TButton.SetWordWrap
 00566602    inc         ebx
 00566603    dec         dword ptr [ebp-4]
>00566606    jne         005665C2
 00566608    cmp         dword ptr [esi+2A0],0;TCustomRadioGroup.FItemIndex:Integer
>0056660F    jl          0056663A
 00566611    mov         byte ptr [esi+2A9],1;TCustomRadioGroup.FUpdating:Boolean
 00566618    mov         edx,dword ptr [esi+2A0];TCustomRadioGroup.FItemIndex:Integer
 0056661E    mov         eax,dword ptr [esi+298];TCustomRadioGroup.FButtons:TList
 00566624    call        TList.Get
 00566629    mov         dl,1
 0056662B    mov         ecx,dword ptr [eax]
 0056662D    call        dword ptr [ecx+10C]
 00566633    mov         byte ptr [esi+2A9],0;TCustomRadioGroup.FUpdating:Boolean
 0056663A    mov         eax,esi
 0056663C    call        TCustomLinkLabel.AdjustBounds
 00566641    mov         eax,esi
 00566643    mov         edx,dword ptr [eax]
 00566645    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0056664B    xor         eax,eax
 0056664D    pop         edx
 0056664E    pop         ecx
 0056664F    pop         ecx
 00566650    mov         dword ptr fs:[eax],edx
 00566653    push        566668
 00566658    lea         eax,[ebp-8]
 0056665B    call        @UStrClr
 00566660    ret
>00566661    jmp         @HandleFinally
>00566666    jmp         00566658
 00566668    pop         edi
 00566669    pop         esi
 0056666A    pop         ebx
 0056666B    pop         ecx
 0056666C    pop         ecx
 0056666D    pop         ebp
 0056666E    ret
*}
end;

//00566670
procedure TCustomRadioGroup.CMEnabledChanged;
begin
{*
 00566670    push        ebx
 00566671    push        esi
 00566672    push        edi
 00566673    mov         ebx,eax
 00566675    mov         eax,ebx
 00566677    call        TWinControl.CMEnabledChanged
 0056667C    mov         eax,dword ptr [ebx+298];TCustomRadioGroup.FButtons:TList
 00566682    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 00566685    dec         esi
 00566686    test        esi,esi
>00566688    jl          005666AF
 0056668A    inc         esi
 0056668B    xor         edi,edi
 0056668D    mov         eax,ebx
 0056668F    mov         edx,dword ptr [eax]
 00566691    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00566694    push        eax
 00566695    mov         edx,edi
 00566697    mov         eax,dword ptr [ebx+298];TCustomRadioGroup.FButtons:TList
 0056669D    call        TList.Get
 005666A2    pop         edx
 005666A3    mov         ecx,dword ptr [eax]
 005666A5    call        dword ptr [ecx+88]
 005666AB    inc         edi
 005666AC    dec         esi
>005666AD    jne         0056668D
 005666AF    pop         edi
 005666B0    pop         esi
 005666B1    pop         ebx
 005666B2    ret
*}
end;

//005666B4
procedure TCustomRadioGroup.CMFontChanged;
begin
{*
 005666B4    push        ebx
 005666B5    mov         ebx,eax
 005666B7    mov         eax,ebx
 005666B9    call        TWinControl.CMFontChanged
 005666BE    mov         eax,ebx
 005666C0    call        TCustomLinkLabel.AdjustBounds
 005666C5    pop         ebx
 005666C6    ret
*}
end;

//005666C8
{*procedure TCustomRadioGroup.WMSize(?:?);
begin
 005666C8    push        ebx
 005666C9    mov         ebx,eax
 005666CB    mov         eax,ebx
 005666CD    call        TCustomGroupBox.WMSize
 005666D2    mov         eax,ebx
 005666D4    call        TCustomLinkLabel.AdjustBounds
 005666D9    pop         ebx
 005666DA    ret
end;*}

//005666DC
{*function sub_005666DC:?;
begin
 005666DC    mov         al,1
 005666DE    ret
end;*}

//005666E0
procedure TCustomRadioGroup.GetChildren(Root:TComponent; Proc:TGetChildProc);
begin
{*
 005666E0    push        ebp
 005666E1    mov         ebp,esp
 005666E3    pop         ebp
 005666E4    ret         8
*}
end;

//005666E8
function TCustomRadioGroup.GetButtons(Index:Integer):TRadioButton;
begin
{*
 005666E8    push        ebx
 005666E9    push        esi
 005666EA    mov         esi,edx
 005666EC    mov         ebx,eax
 005666EE    mov         edx,esi
 005666F0    mov         eax,dword ptr [ebx+298];TCustomRadioGroup.FButtons:TList
 005666F6    call        TList.Get
 005666FB    pop         esi
 005666FC    pop         ebx
 005666FD    ret
*}
end;

//00566700
constructor TSplitter.Create(AOwner:TComponent);
begin
{*
 00566700    push        ebx
 00566701    push        esi
 00566702    test        dl,dl
>00566704    je          0056670E
 00566706    add         esp,0FFFFFFF0
 00566709    call        @ClassCreate
 0056670E    mov         ebx,edx
 00566710    mov         esi,eax
 00566712    xor         edx,edx
 00566714    mov         eax,esi
 00566716    call        TGraphicControl.Create
 0056671B    mov         eax,[00566790];0x200000 gvar_00566790
 00566720    not         eax
 00566722    and         dword ptr [esi+60],eax;TSplitter.FControlStyle:TControlStyle
 00566725    mov         byte ptr [esi+1C4],1;TSplitter.FAutoSnap:Boolean
 0056672C    mov         edx,64
 00566731    mov         eax,esi
 00566733    call        TControl.SetHeight
 00566738    mov         dl,3
 0056673A    mov         eax,esi
 0056673C    call        TGroupBox.SetAlign
 00566741    mov         edx,3
 00566746    mov         eax,esi
 00566748    call        TControl.SetWidth
 0056674D    mov         dx,0FFF2
 00566751    mov         eax,esi
 00566753    call        TControl.SetCursor
 00566758    mov         dword ptr [esi+1E0],1E;TSplitter.FMinSize:NaturalNumber
 00566762    mov         byte ptr [esi+200],3;TSplitter.FResizeStyle:TResizeStyle
 00566769    mov         dword ptr [esi+1F8],0FFFFFFFF;TSplitter.FOldSize:Integer
 00566773    mov         eax,esi
 00566775    test        bl,bl
>00566777    je          00566788
 00566779    call        @AfterConstruction
 0056677E    pop         dword ptr fs:[0]
 00566785    add         esp,0C
 00566788    mov         eax,esi
 0056678A    pop         esi
 0056678B    pop         ebx
 0056678C    ret
*}
end;

//00566794
destructor TSplitter.Destroy();
begin
{*
 00566794    push        ebx
 00566795    push        esi
 00566796    call        @BeforeDestruction
 0056679B    mov         ebx,edx
 0056679D    mov         esi,eax
 0056679F    mov         eax,dword ptr [esi+1C8];TSplitter.FBrush:TBrush
 005667A5    call        TObject.Free
 005667AA    mov         dl,0FC
 005667AC    and         dl,bl
 005667AE    mov         eax,esi
 005667B0    call        TGraphicControl.Destroy
 005667B5    test        bl,bl
>005667B7    jle         005667C0
 005667B9    mov         eax,esi
 005667BB    call        @ClassDestroy
 005667C0    pop         esi
 005667C1    pop         ebx
 005667C2    ret
*}
end;

//005667C4
procedure sub_005667C4(?:TSplitter);
begin
{*
 005667C4    push        ebx
 005667C5    push        esi
 005667C6    mov         ebx,eax
 005667C8    push        412
 005667CD    push        0
 005667CF    mov         eax,dword ptr [ebx+40]
 005667D2    call        TWinControl.GetHandle
 005667D7    push        eax
 005667D8    call        user32.GetDCEx
 005667DD    mov         dword ptr [ebx+1D8],eax
 005667E3    cmp         byte ptr [ebx+200],3
>005667EA    jne         00566873
 005667F0    cmp         dword ptr [ebx+1C8],0
>005667F7    jne         00566855
 005667F9    mov         dl,1
 005667FB    mov         eax,[004BE308];TBrush
 00566800    call        TBrush.Create;TBrush.Create
 00566805    mov         dword ptr [ebx+1C8],eax
 0056680B    call        TStyleManager.GetIsCustomStyleActive
 00566810    test        al,al
>00566812    je          0056683C
 00566814    call        StyleServices
 00566819    mov         esi,eax
 0056681B    mov         dl,19
 0056681D    mov         eax,esi
 0056681F    call        TCustomStyleServices.GetStyleColor
 00566824    mov         edx,eax
 00566826    xor         eax,eax
 00566828    call        AllocPatternBitmap
 0056682D    mov         edx,eax
 0056682F    mov         eax,dword ptr [ebx+1C8]
 00566835    call        TBrush.SetBitmap
>0056683A    jmp         00566855
 0056683C    mov         edx,0FFFFFF
 00566841    xor         eax,eax
 00566843    call        AllocPatternBitmap
 00566848    mov         edx,eax
 0056684A    mov         eax,dword ptr [ebx+1C8]
 00566850    call        TBrush.SetBitmap
 00566855    mov         eax,dword ptr [ebx+1C8]
 0056685B    call        TBrush.GetHandle
 00566860    push        eax
 00566861    mov         eax,dword ptr [ebx+1D8]
 00566867    push        eax
 00566868    call        gdi32.SelectObject
 0056686D    mov         dword ptr [ebx+1FC],eax
 00566873    pop         esi
 00566874    pop         ebx
 00566875    ret
*}
end;

//00566878
procedure sub_00566878(?:TSplitter);
begin
{*
 00566878    push        esi
 00566879    add         esp,0FFFFFFF0
 0056687C    movzx       edx,byte ptr [eax+1DC]
 00566883    xor         dl,1
 00566886    mov         byte ptr [eax+1DC],dl
 0056688C    mov         esi,dword ptr [eax+50]
 0056688F    mov         edx,esi
 00566891    mov         ecx,dword ptr [eax+54]
 00566894    mov         dword ptr [esp+8],edx
 00566898    mov         dword ptr [esp+0C],ecx
 0056689C    mov         edx,dword ptr [esp+8]
 005668A0    mov         dword ptr [esp],edx
 005668A3    mov         edx,dword ptr [esp+0C]
 005668A7    mov         dword ptr [esp+4],edx
 005668AB    movzx       edx,byte ptr [eax+6D]
 005668AF    add         dl,0FD
 005668B2    sub         dl,2
>005668B5    jae         005668C2
 005668B7    add         esi,dword ptr [eax+204]
 005668BD    mov         dword ptr [esp],esi
>005668C0    jmp         005668CF
 005668C2    mov         edx,dword ptr [eax+54]
 005668C5    add         edx,dword ptr [eax+204]
 005668CB    mov         dword ptr [esp+4],edx
 005668CF    push        5A0049
 005668D4    mov         edx,dword ptr [eax+5C]
 005668D7    push        edx
 005668D8    mov         edx,dword ptr [eax+58]
 005668DB    push        edx
 005668DC    mov         edx,dword ptr [esp+10]
 005668E0    push        edx
 005668E1    mov         edx,dword ptr [esp+10]
 005668E5    push        edx
 005668E6    mov         eax,dword ptr [eax+1D8]
 005668EC    push        eax
 005668ED    call        gdi32.PatBlt
 005668F2    add         esp,10
 005668F5    pop         esi
 005668F6    ret
*}
end;

//005668F8
procedure sub_005668F8(?:TSplitter);
begin
{*
 005668F8    push        ebx
 005668F9    mov         ebx,eax
 005668FB    mov         eax,dword ptr [ebx+1FC]
 00566901    test        eax,eax
>00566903    je          00566912
 00566905    push        eax
 00566906    mov         eax,dword ptr [ebx+1D8]
 0056690C    push        eax
 0056690D    call        gdi32.SelectObject
 00566912    mov         eax,dword ptr [ebx+1D8]
 00566918    push        eax
 00566919    mov         eax,dword ptr [ebx+40]
 0056691C    call        TWinControl.GetHandle
 00566921    push        eax
 00566922    call        user32.ReleaseDC
 00566927    mov         eax,dword ptr [ebx+1C8]
 0056692D    test        eax,eax
>0056692F    je          0056693E
 00566931    call        TObject.Free
 00566936    xor         eax,eax
 00566938    mov         dword ptr [ebx+1C8],eax
 0056693E    pop         ebx
 0056693F    ret
*}
end;

//00566940
{*function sub_00566940(?:TSplitter):?;
begin
 00566940    push        ebx
 00566941    push        esi
 00566942    push        edi
 00566943    push        ebp
 00566944    add         esp,0FFFFFFE0
 00566947    mov         esi,eax
 00566949    xor         ebx,ebx
 0056694B    mov         eax,dword ptr [esi+50]
 0056694E    mov         edx,dword ptr [esi+54]
 00566951    mov         dword ptr [esp+8],eax
 00566955    mov         dword ptr [esp+0C],edx
 00566959    mov         eax,dword ptr [esp+8]
 0056695D    mov         dword ptr [esp],eax
 00566960    mov         eax,dword ptr [esp+0C]
 00566964    mov         dword ptr [esp+4],eax
 00566968    movzx       eax,byte ptr [esi+6D]
 0056696C    dec         al
>0056696E    je          005669C5
 00566970    dec         al
>00566972    je          005669E6
 00566974    dec         al
>00566976    je          00566981
 00566978    dec         al
>0056697A    je          005669A0
>0056697C    jmp         00566B04
 00566981    mov         eax,esi
 00566983    call        TControl.GetAlignWithMargins
 00566988    test        al,al
>0056698A    jne         00566991
 0056698C    dec         dword ptr [esp]
>0056698F    jmp         00566A0B
 00566991    mov         eax,dword ptr [esi+84]
 00566997    mov         eax,dword ptr [eax+8]
 0056699A    inc         eax
 0056699B    sub         dword ptr [esp],eax
>0056699E    jmp         00566A0B
 005669A0    mov         eax,esi
 005669A2    call        TControl.GetAlignWithMargins
 005669A7    test        al,al
>005669A9    jne         005669B3
 005669AB    mov         eax,dword ptr [esi+58]
 005669AE    add         dword ptr [esp],eax
>005669B1    jmp         00566A0B
 005669B3    mov         eax,dword ptr [esi+84]
 005669B9    mov         eax,dword ptr [eax+10]
 005669BC    add         eax,dword ptr [esi+58]
 005669BF    inc         eax
 005669C0    add         dword ptr [esp],eax
>005669C3    jmp         00566A0B
 005669C5    mov         eax,esi
 005669C7    call        TControl.GetAlignWithMargins
 005669CC    test        al,al
>005669CE    jne         005669D6
 005669D0    dec         dword ptr [esp+4]
>005669D4    jmp         00566A0B
 005669D6    mov         eax,dword ptr [esi+84]
 005669DC    mov         eax,dword ptr [eax+0C]
 005669DF    inc         eax
 005669E0    sub         dword ptr [esp+4],eax
>005669E4    jmp         00566A0B
 005669E6    mov         eax,esi
 005669E8    call        TControl.GetAlignWithMargins
 005669ED    test        al,al
>005669EF    jne         005669FA
 005669F1    mov         eax,dword ptr [esi+5C]
 005669F4    add         dword ptr [esp+4],eax
>005669F8    jmp         00566A0B
 005669FA    mov         eax,dword ptr [esi+84]
 00566A00    mov         eax,dword ptr [eax+14]
 00566A03    add         eax,dword ptr [esi+5C]
 00566A06    inc         eax
 00566A07    add         dword ptr [esp+4],eax
 00566A0B    mov         eax,dword ptr [esi+40]
 00566A0E    call        TWinControl.GetControlCount
 00566A13    mov         edi,eax
 00566A15    dec         edi
 00566A16    test        edi,edi
>00566A18    jl          00566B02
 00566A1E    inc         edi
 00566A1F    xor         ebp,ebp
 00566A21    mov         edx,ebp
 00566A23    mov         eax,dword ptr [esi+40]
 00566A26    call        TWinControl.GetControl
 00566A2B    mov         ebx,eax
 00566A2D    cmp         byte ptr [ebx+69],0;TControl.FVisible:Boolean
>00566A31    je          00566AFA
 00566A37    mov         eax,ebx
 00566A39    mov         edx,dword ptr [eax]
 00566A3B    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00566A3E    test        al,al
>00566A40    je          00566AFA
 00566A46    movzx       eax,byte ptr [ebx+6D];TControl.FAlign:TAlign
 00566A4A    dec         eax
 00566A4B    sub         al,4
>00566A4D    jae         00566AFA
 00566A53    movzx       eax,byte ptr [ebx+6D];TControl.FAlign:TAlign
 00566A57    add         al,0FD
 00566A59    sub         al,2
 00566A5B    setb        al
 00566A5E    movzx       edx,byte ptr [esi+6D]
 00566A62    add         dl,0FD
 00566A65    sub         dl,2
 00566A68    setb        dl
 00566A6B    cmp         al,dl
>00566A6D    jne         00566AFA
 00566A73    lea         edx,[esp+10]
 00566A77    mov         eax,ebx
 00566A79    call        TControl.GetBoundsRect
 00566A7E    mov         eax,ebx
 00566A80    call        TControl.GetAlignWithMargins
 00566A85    test        al,al
>00566A87    je          00566AAB
 00566A89    mov         eax,dword ptr [ebx+84];TControl.FMargins:TMargins
 00566A8F    mov         edx,dword ptr [eax+10];TMargins.FRight:TMarginSize
 00566A92    add         dword ptr [esp+18],edx
 00566A96    mov         edx,dword ptr [eax+8];TMargins.FLeft:TMarginSize
 00566A99    sub         dword ptr [esp+10],edx
 00566A9D    mov         edx,dword ptr [eax+14];TMargins.FBottom:TMarginSize
 00566AA0    add         dword ptr [esp+1C],edx
 00566AA4    mov         eax,dword ptr [eax+0C];TMargins.FTop:TMarginSize
 00566AA7    sub         dword ptr [esp+14],eax
 00566AAB    mov         eax,dword ptr [esp+18]
 00566AAF    sub         eax,dword ptr [esp+10]
>00566AB3    jne         00566ACB
 00566AB5    movzx       eax,byte ptr [esi+6D]
 00566AB9    sub         al,1
>00566ABB    je          00566AC1
 00566ABD    sub         al,2
>00566ABF    jne         00566AC7
 00566AC1    dec         dword ptr [esp+10]
>00566AC5    jmp         00566ACB
 00566AC7    inc         dword ptr [esp+18]
 00566ACB    mov         eax,dword ptr [esp+1C]
 00566ACF    sub         eax,dword ptr [esp+14]
>00566AD3    jne         00566AEB
 00566AD5    movzx       eax,byte ptr [esi+6D]
 00566AD9    sub         al,1
>00566ADB    je          00566AE1
 00566ADD    sub         al,2
>00566ADF    jne         00566AE7
 00566AE1    dec         dword ptr [esp+14]
>00566AE5    jmp         00566AEB
 00566AE7    inc         dword ptr [esp+1C]
 00566AEB    mov         edx,esp
 00566AED    lea         eax,[esp+10]
 00566AF1    call        TRect.Contains
 00566AF6    test        al,al
>00566AF8    jne         00566B04
 00566AFA    inc         ebp
 00566AFB    dec         edi
>00566AFC    jne         00566A21
 00566B02    xor         ebx,ebx
 00566B04    mov         eax,ebx
 00566B06    add         esp,20
 00566B09    pop         ebp
 00566B0A    pop         edi
 00566B0B    pop         esi
 00566B0C    pop         ebx
 00566B0D    ret
end;*}

//00566B10
procedure sub_00566B10;
begin
{*
 00566B10    push        ebx
 00566B11    mov         ebx,eax
 00566B13    mov         eax,ebx
 00566B15    call        004E5FB8
 00566B1A    movzx       eax,word ptr [ebx+88];TSplitter.FCursor:TCursor
 00566B21    cmp         ax,0FFFFFFF1
>00566B25    je          00566B2D
 00566B27    cmp         ax,0FFFFFFF2
>00566B2B    jne         00566B4E
 00566B2D    movzx       eax,byte ptr [ebx+6D];TSplitter.FAlign:TAlign
 00566B31    dec         eax
 00566B32    sub         al,2
>00566B34    jae         00566B43
 00566B36    mov         dx,0FFF1
 00566B3A    mov         eax,ebx
 00566B3C    call        TControl.SetCursor
>00566B41    jmp         00566B4E
 00566B43    mov         dx,0FFF2
 00566B47    mov         eax,ebx
 00566B49    call        TControl.SetCursor
 00566B4E    pop         ebx
 00566B4F    ret
*}
end;

//00566B50
procedure sub_00566B50;
begin
{*
 00566B50    push        ebx
 00566B51    push        esi
 00566B52    add         esp,0FFFFFFE0
 00566B55    mov         ebx,eax
 00566B57    mov         edx,esp
 00566B59    mov         eax,ebx
 00566B5B    mov         ecx,dword ptr [eax]
 00566B5D    call        dword ptr [ecx+64];TSplitter.sub_004E6794
 00566B60    call        TStyleManager.GetIsCustomStyleActive
 00566B65    test        al,al
>00566B67    je          00566B93
 00566B69    test        byte ptr [ebx+188],2;TSplitter.FStyleElements:TStyleElements
>00566B70    je          00566B93
 00566B72    call        StyleServices
 00566B77    mov         edx,0FF00000F
 00566B7C    call        TCustomStyleServices.GetSystemColor
 00566B81    mov         edx,eax
 00566B83    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 00566B89    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00566B8C    call        TBrush.SetColor
>00566B91    jmp         00566BA4
 00566B93    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 00566B99    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00566B9C    mov         edx,dword ptr [ebx+7C];TSplitter.FColor:TColor
 00566B9F    call        TBrush.SetColor
 00566BA4    lea         edx,[esp+10]
 00566BA8    mov         eax,ebx
 00566BAA    mov         ecx,dword ptr [eax]
 00566BAC    call        dword ptr [ecx+64];TSplitter.sub_004E6794
 00566BAF    lea         edx,[esp+10]
 00566BB3    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 00566BB9    mov         ecx,dword ptr [eax]
 00566BBB    call        dword ptr [ecx+54];TCanvas.FillRect
 00566BBE    cmp         byte ptr [ebx+1C5],0;TSplitter.FBeveled:Boolean
>00566BC5    je          00566CD5
 00566BCB    movzx       eax,byte ptr [ebx+6D];TSplitter.FAlign:TAlign
 00566BCF    add         al,0FD
 00566BD1    sub         al,2
>00566BD3    jae         00566BE6
 00566BD5    mov         eax,esp
 00566BD7    mov         ecx,2
 00566BDC    or          edx,0FFFFFFFF
 00566BDF    call        InflateRect
>00566BE4    jmp         00566BF5
 00566BE6    mov         eax,esp
 00566BE8    or          ecx,0FFFFFFFF
 00566BEB    mov         edx,2
 00566BF0    call        InflateRect
 00566BF5    mov         eax,esp
 00566BF7    mov         ecx,1
 00566BFC    mov         edx,1
 00566C01    call        OffsetRect
 00566C06    call        TStyleManager.GetIsCustomStyleActive
 00566C0B    test        al,al
>00566C0D    je          00566C36
 00566C0F    test        byte ptr [ebx+188],4;TSplitter.FStyleElements:TStyleElements
>00566C16    je          00566C36
 00566C18    call        StyleServices
 00566C1D    mov         edx,0FF000014
 00566C22    call        TCustomStyleServices.GetSystemColor
 00566C27    call        ColorToRGB
 00566C2C    push        eax
 00566C2D    call        gdi32.CreateSolidBrush
 00566C32    mov         esi,eax
>00566C34    jmp         00566C48
 00566C36    mov         eax,0FF000014
 00566C3B    call        ColorToRGB
 00566C40    push        eax
 00566C41    call        gdi32.CreateSolidBrush
 00566C46    mov         esi,eax
 00566C48    push        esi
 00566C49    lea         eax,[esp+4]
 00566C4D    push        eax
 00566C4E    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 00566C54    call        TCanvas.GetHandle
 00566C59    push        eax
 00566C5A    call        user32.FrameRect
 00566C5F    push        esi
 00566C60    call        gdi32.DeleteObject
 00566C65    mov         eax,esp
 00566C67    mov         ecx,0FFFFFFFE
 00566C6C    mov         edx,0FFFFFFFE
 00566C71    call        OffsetRect
 00566C76    call        TStyleManager.GetIsCustomStyleActive
 00566C7B    test        al,al
>00566C7D    je          00566CA6
 00566C7F    test        byte ptr [ebx+188],4;TSplitter.FStyleElements:TStyleElements
>00566C86    je          00566CA6
 00566C88    call        StyleServices
 00566C8D    mov         edx,0FF000010
 00566C92    call        TCustomStyleServices.GetSystemColor
 00566C97    call        ColorToRGB
 00566C9C    push        eax
 00566C9D    call        gdi32.CreateSolidBrush
 00566CA2    mov         esi,eax
>00566CA4    jmp         00566CB8
 00566CA6    mov         eax,0FF000010
 00566CAB    call        ColorToRGB
 00566CB0    push        eax
 00566CB1    call        gdi32.CreateSolidBrush
 00566CB6    mov         esi,eax
 00566CB8    push        esi
 00566CB9    lea         eax,[esp+4]
 00566CBD    push        eax
 00566CBE    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 00566CC4    call        TCanvas.GetHandle
 00566CC9    push        eax
 00566CCA    call        user32.FrameRect
 00566CCF    push        esi
 00566CD0    call        gdi32.DeleteObject
 00566CD5    test        byte ptr [ebx+1C],10;TSplitter.FComponentState:TComponentState
>00566CD9    je          00566D27
 00566CDB    mov         esi,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 00566CE1    mov         eax,dword ptr [esi+44];TCanvas.FPen:TPen
 00566CE4    mov         dl,2
 00566CE6    call        TPen.SetStyle
 00566CEB    mov         eax,dword ptr [esi+44];TCanvas.FPen:TPen
 00566CEE    mov         dl,0E
 00566CF0    call        TPen.SetMode
 00566CF5    mov         eax,dword ptr [esi+44];TCanvas.FPen:TPen
 00566CF8    mov         edx,0FFD8CE
 00566CFD    call        TPen.SetColor
 00566D02    mov         eax,dword ptr [esi+48];TCanvas.FBrush:TBrush
 00566D05    mov         dl,1
 00566D07    call        TBrush.SetStyle
 00566D0C    mov         eax,ebx
 00566D0E    call        TControl.GetClientWidth
 00566D13    push        eax
 00566D14    mov         eax,ebx
 00566D16    call        TControl.GetClientHeight
 00566D1B    push        eax
 00566D1C    xor         ecx,ecx
 00566D1E    xor         edx,edx
 00566D20    mov         eax,esi
 00566D22    mov         esi,dword ptr [eax]
 00566D24    call        dword ptr [esi+7C];TCanvas.Rectangle
 00566D27    cmp         word ptr [ebx+21A],0;TSplitter.?f21A:word
>00566D2F    je          00566D3F
 00566D31    mov         edx,ebx
 00566D33    mov         eax,dword ptr [ebx+21C];TSplitter.?f21C:dword
 00566D39    call        dword ptr [ebx+218];TSplitter.FOnPaint
 00566D3F    add         esp,20
 00566D42    pop         esi
 00566D43    pop         ebx
 00566D44    ret
*}
end;

//00566D48
{*procedure sub_00566D48(?:?);
begin
 00566D48    push        ebx
 00566D49    push        esi
 00566D4A    mov         esi,edx
 00566D4C    mov         ebx,eax
 00566D4E    mov         edx,esi
 00566D50    mov         eax,ebx
 00566D52    mov         ecx,dword ptr [eax]
 00566D54    call        dword ptr [ecx+0BC];TSplitter.sub_00566D78
 00566D5A    test        al,al
>00566D5C    je          00566D75
 00566D5E    mov         edx,dword ptr [esi]
 00566D60    cmp         edx,dword ptr [ebx+1E0];TSplitter.FMinSize:NaturalNumber
>00566D66    jg          00566D75
 00566D68    cmp         byte ptr [ebx+1C4],0;TSplitter.FAutoSnap:Boolean
>00566D6F    je          00566D75
 00566D71    xor         edx,edx
 00566D73    mov         dword ptr [esi],edx
 00566D75    pop         esi
 00566D76    pop         ebx
 00566D77    ret
end;*}

//00566D78
{*function sub_00566D78(?:?):?;
begin
 00566D78    push        ebx
 00566D79    push        ecx
 00566D7A    mov         byte ptr [esp],1
 00566D7E    cmp         word ptr [eax+20A],0;TSplitter.?f20A:word
>00566D86    je          00566D9B
 00566D88    push        esp
 00566D89    mov         ecx,edx
 00566D8B    mov         ebx,eax
 00566D8D    mov         edx,eax
 00566D8F    mov         eax,dword ptr [ebx+20C];TSplitter.?f20C:dword
 00566D95    call        dword ptr [ebx+208];TSplitter.FOnCanResize
 00566D9B    movzx       eax,byte ptr [esp]
 00566D9F    pop         edx
 00566DA0    pop         ebx
 00566DA1    ret
end;*}

//00566DA4
{*procedure TSplitter.sub_004E8C70(?:?; ?:?; ?:?; ?:?);
begin
 00566DA4    push        ebp
 00566DA5    mov         ebp,esp
 00566DA7    add         esp,0FFFFFFF4
 00566DAA    push        ebx
 00566DAB    push        esi
 00566DAC    push        edi
 00566DAD    mov         word ptr [ebp-3],cx
 00566DB1    mov         byte ptr [ebp-1],dl
 00566DB4    mov         ebx,eax
 00566DB6    mov         eax,dword ptr [ebp+0C]
 00566DB9    push        eax
 00566DBA    mov         eax,dword ptr [ebp+8]
 00566DBD    push        eax
 00566DBE    movzx       edx,byte ptr [ebp-1]
 00566DC2    movzx       ecx,word ptr [ebp-3]
 00566DC6    mov         eax,ebx
 00566DC8    call        TControl.sub_004E8C70
 00566DCD    cmp         byte ptr [ebp-1],0
>00566DD1    jne         00566F4A
 00566DD7    mov         eax,ebx
 00566DD9    call        00566940
 00566DDE    mov         dword ptr [ebx+1CC],eax;TSplitter.FControl:TControl
 00566DE4    mov         eax,dword ptr [ebp+0C]
 00566DE7    mov         dword ptr [ebp-0C],eax
 00566DEA    mov         eax,dword ptr [ebp+8]
 00566DED    mov         dword ptr [ebp-8],eax
 00566DF0    mov         eax,dword ptr [ebp-0C]
 00566DF3    mov         dword ptr [ebx+1D0],eax;TSplitter.FDownPos:TPoint
 00566DF9    mov         eax,dword ptr [ebp-8]
 00566DFC    mov         dword ptr [ebx+1D4],eax;TSplitter.FLineVisible:Boolean
 00566E02    cmp         dword ptr [ebx+1CC],0;TSplitter.FControl:TControl
>00566E09    je          00566F4A
 00566E0F    movzx       eax,byte ptr [ebx+6D];TSplitter.FAlign:TAlign
 00566E13    add         al,0FD
 00566E15    sub         al,2
>00566E17    jae         00566E79
 00566E19    mov         eax,dword ptr [ebx+40];TSplitter.FParent:TWinControl
 00566E1C    call        TControl.GetClientWidth
 00566E21    sub         eax,dword ptr [ebx+1E0]
 00566E27    mov         dword ptr [ebx+1E4],eax;TSplitter.FMaxSize:Integer
 00566E2D    mov         eax,dword ptr [ebx+40];TSplitter.FParent:TWinControl
 00566E30    call        TWinControl.GetControlCount
 00566E35    mov         esi,eax
 00566E37    dec         esi
 00566E38    test        esi,esi
>00566E3A    jl          00566E68
 00566E3C    inc         esi
 00566E3D    xor         edi,edi
 00566E3F    mov         edx,edi
 00566E41    mov         eax,dword ptr [ebx+40];TSplitter.FParent:TWinControl
 00566E44    call        TWinControl.GetControl
 00566E49    cmp         byte ptr [eax+69],0;TControl.FVisible:Boolean
>00566E4D    je          00566E64
 00566E4F    movzx       edx,byte ptr [eax+6D];TControl.FAlign:TAlign
 00566E53    add         dl,0FD
 00566E56    sub         dl,2
>00566E59    jae         00566E64
 00566E5B    mov         eax,dword ptr [eax+58];TControl.FWidth:Integer
 00566E5E    sub         dword ptr [ebx+1E4],eax
 00566E64    inc         edi
 00566E65    dec         esi
>00566E66    jne         00566E3F
 00566E68    mov         eax,dword ptr [ebx+1CC];TSplitter.FControl:TControl
 00566E6E    mov         eax,dword ptr [eax+58];TControl.FWidth:Integer
 00566E71    add         dword ptr [ebx+1E4],eax;TSplitter.FMaxSize:Integer
>00566E77    jmp         00566ED5
 00566E79    mov         eax,dword ptr [ebx+40];TSplitter.FParent:TWinControl
 00566E7C    call        TControl.GetClientHeight
 00566E81    sub         eax,dword ptr [ebx+1E0]
 00566E87    mov         dword ptr [ebx+1E4],eax;TSplitter.FMaxSize:Integer
 00566E8D    mov         eax,dword ptr [ebx+40];TSplitter.FParent:TWinControl
 00566E90    call        TWinControl.GetControlCount
 00566E95    mov         esi,eax
 00566E97    dec         esi
 00566E98    test        esi,esi
>00566E9A    jl          00566EC6
 00566E9C    inc         esi
 00566E9D    xor         edi,edi
 00566E9F    mov         edx,edi
 00566EA1    mov         eax,dword ptr [ebx+40];TSplitter.FParent:TWinControl
 00566EA4    call        TWinControl.GetControl
 00566EA9    cmp         byte ptr [eax+69],0;TControl.FVisible:Boolean
>00566EAD    je          00566EC2
 00566EAF    movzx       edx,byte ptr [eax+6D];TControl.FAlign:TAlign
 00566EB3    dec         edx
 00566EB4    sub         dl,2
>00566EB7    jae         00566EC2
 00566EB9    mov         eax,dword ptr [eax+5C];TControl.FHeight:Integer
 00566EBC    sub         dword ptr [ebx+1E4],eax
 00566EC2    inc         edi
 00566EC3    dec         esi
>00566EC4    jne         00566E9F
 00566EC6    mov         eax,dword ptr [ebx+1CC];TSplitter.FControl:TControl
 00566ECC    mov         eax,dword ptr [eax+5C];TControl.FHeight:Integer
 00566ECF    add         dword ptr [ebx+1E4],eax;TSplitter.FMaxSize:Integer
 00566ED5    mov         ecx,dword ptr [ebp+8]
 00566ED8    mov         edx,dword ptr [ebp+0C]
 00566EDB    mov         eax,ebx
 00566EDD    call        005671D0
 00566EE2    mov         eax,ebx
 00566EE4    call        005667C4
 00566EE9    mov         dl,1
 00566EEB    mov         eax,ebx
 00566EED    call        ValidParentForm
 00566EF2    mov         edx,eax
 00566EF4    mov         ecx,dword ptr [edx+2B4];TCustomForm.FActiveControl:TWinControl
 00566EFA    test        ecx,ecx
>00566EFC    je          00566F34
 00566EFE    mov         eax,ecx
 00566F00    mov         dword ptr [ebx+1C0],eax;TSplitter.FActiveControl:TWinControl
 00566F06    mov         edx,dword ptr [eax+238];TWinControl.FOnKeyDown:TKeyEvent
 00566F0C    mov         dword ptr [ebx+1F0],edx;TSplitter.FOldKeyDown:TKeyEvent
 00566F12    mov         edx,dword ptr [eax+23C];TWinControl.?f23C:TMessageForm
 00566F18    mov         dword ptr [ebx+1F4],edx;TSplitter.FPrevBrush:HBRUSH
 00566F1E    mov         eax,dword ptr [ebx+1C0];TSplitter.FActiveControl:TWinControl
 00566F24    mov         dword ptr [eax+23C],ebx;TWinControl.?f23C:TMessageForm
 00566F2A    mov         dword ptr [eax+238],5672EC;TWinControl.FOnKeyDown:TKeyEvent sub_005672EC
 00566F34    movzx       eax,byte ptr [ebx+200];TSplitter.FResizeStyle:TResizeStyle
 00566F3B    sub         al,1
>00566F3D    je          00566F43
 00566F3F    sub         al,2
>00566F41    jne         00566F4A
 00566F43    mov         eax,ebx
 00566F45    call        00566878
 00566F4A    pop         edi
 00566F4B    pop         esi
 00566F4C    pop         ebx
 00566F4D    mov         esp,ebp
 00566F4F    pop         ebp
 00566F50    ret         8
end;*}

//00566F54
procedure sub_00566F54(?:TSplitter);
begin
{*
 00566F54    push        ebp
 00566F55    mov         ebp,esp
 00566F57    push        ecx
 00566F58    push        ebx
 00566F59    mov         dword ptr [ebp-4],eax
 00566F5C    mov         eax,dword ptr [ebp-4]
 00566F5F    mov         eax,dword ptr [eax+1E8]
 00566F65    mov         edx,dword ptr [ebp-4]
 00566F68    cmp         eax,dword ptr [edx+1F8]
>00566F6E    je          005670F8
 00566F74    mov         edx,dword ptr [ebp-4]
 00566F77    movzx       edx,byte ptr [edx+6D]
 00566F7B    dec         dl
>00566F7D    je          00566FBB
 00566F7F    dec         dl
>00566F81    je          0056704F
 00566F87    dec         dl
>00566F89    je          00566F94
 00566F8B    dec         dl
>00566F8D    je          00566FE2
>00566F8F    jmp         005670BC
 00566F94    mov         edx,dword ptr [ebp-4]
 00566F97    mov         edx,dword ptr [edx+1CC]
 00566F9D    mov         ebx,dword ptr [edx+50]
 00566FA0    xchg        eax,edx
 00566FA1    call        TControl.SetWidth
 00566FA6    mov         eax,dword ptr [ebp-4]
 00566FA9    mov         eax,dword ptr [eax+1CC]
 00566FAF    mov         edx,ebx
 00566FB1    call        TControl.SetLeft
>00566FB6    jmp         005670BC
 00566FBB    mov         edx,dword ptr [ebp-4]
 00566FBE    mov         edx,dword ptr [edx+1CC]
 00566FC4    mov         ebx,dword ptr [edx+54]
 00566FC7    xchg        eax,edx
 00566FC8    call        TControl.SetHeight
 00566FCD    mov         eax,dword ptr [ebp-4]
 00566FD0    mov         eax,dword ptr [eax+1CC]
 00566FD6    mov         edx,ebx
 00566FD8    call        TControl.SetTop
>00566FDD    jmp         005670BC
 00566FE2    mov         eax,dword ptr [ebp-4]
 00566FE5    mov         eax,dword ptr [eax+40]
 00566FE8    call        TWinControl.DisableAlign
 00566FED    xor         edx,edx
 00566FEF    push        ebp
 00566FF0    push        567048
 00566FF5    push        dword ptr fs:[edx]
 00566FF8    mov         dword ptr fs:[edx],esp
 00566FFB    mov         eax,dword ptr [ebp-4]
 00566FFE    mov         eax,dword ptr [eax+1CC]
 00567004    mov         edx,dword ptr [eax+58]
 00567007    mov         ecx,dword ptr [ebp-4]
 0056700A    sub         edx,dword ptr [ecx+1E8]
 00567010    add         edx,dword ptr [eax+50]
 00567013    call        TControl.SetLeft
 00567018    mov         eax,dword ptr [ebp-4]
 0056701B    mov         edx,dword ptr [eax+1E8]
 00567021    mov         eax,dword ptr [ebp-4]
 00567024    mov         eax,dword ptr [eax+1CC]
 0056702A    call        TControl.SetWidth
 0056702F    xor         eax,eax
 00567031    pop         edx
 00567032    pop         ecx
 00567033    pop         ecx
 00567034    mov         dword ptr fs:[eax],edx
 00567037    push        5670BC
 0056703C    mov         eax,dword ptr [ebp-4]
 0056703F    mov         eax,dword ptr [eax+40]
 00567042    call        TWinControl.EnableAlign
 00567047    ret
>00567048    jmp         @HandleFinally
>0056704D    jmp         0056703C
 0056704F    mov         eax,dword ptr [ebp-4]
 00567052    mov         eax,dword ptr [eax+40]
 00567055    call        TWinControl.DisableAlign
 0056705A    xor         edx,edx
 0056705C    push        ebp
 0056705D    push        5670B5
 00567062    push        dword ptr fs:[edx]
 00567065    mov         dword ptr fs:[edx],esp
 00567068    mov         eax,dword ptr [ebp-4]
 0056706B    mov         eax,dword ptr [eax+1CC]
 00567071    mov         edx,dword ptr [eax+5C]
 00567074    mov         ecx,dword ptr [ebp-4]
 00567077    sub         edx,dword ptr [ecx+1E8]
 0056707D    add         edx,dword ptr [eax+54]
 00567080    call        TControl.SetTop
 00567085    mov         eax,dword ptr [ebp-4]
 00567088    mov         edx,dword ptr [eax+1E8]
 0056708E    mov         eax,dword ptr [ebp-4]
 00567091    mov         eax,dword ptr [eax+1CC]
 00567097    call        TControl.SetHeight
 0056709C    xor         eax,eax
 0056709E    pop         edx
 0056709F    pop         ecx
 005670A0    pop         ecx
 005670A1    mov         dword ptr fs:[eax],edx
 005670A4    push        5670BC
 005670A9    mov         eax,dword ptr [ebp-4]
 005670AC    mov         eax,dword ptr [eax+40]
 005670AF    call        TWinControl.EnableAlign
 005670B4    ret
>005670B5    jmp         @HandleFinally
>005670BA    jmp         005670A9
 005670BC    mov         eax,dword ptr [ebp-4]
 005670BF    mov         edx,dword ptr [eax]
 005670C1    call        dword ptr [edx+0B4]
 005670C7    mov         eax,dword ptr [ebp-4]
 005670CA    cmp         word ptr [eax+212],0
>005670D2    je          005670E6
 005670D4    mov         ebx,dword ptr [ebp-4]
 005670D7    mov         edx,dword ptr [ebp-4]
 005670DA    mov         eax,dword ptr [ebx+214]
 005670E0    call        dword ptr [ebx+210]
 005670E6    mov         eax,dword ptr [ebp-4]
 005670E9    mov         eax,dword ptr [eax+1E8]
 005670EF    mov         edx,dword ptr [ebp-4]
 005670F2    mov         dword ptr [edx+1F8],eax
 005670F8    pop         ebx
 005670F9    pop         ecx
 005670FA    pop         ebp
 005670FB    ret
*}
end;

//005670FC
{*procedure sub_005670FC(?:TSplitter; ?:?; ?:?; ?:?; ?:?);
begin
 005670FC    push        ebp
 005670FD    mov         ebp,esp
 005670FF    push        ecx
 00567100    push        esi
 00567101    push        edi
 00567102    mov         dword ptr [ebp-4],ecx
 00567105    mov         ecx,edx
 00567107    mov         esi,eax
 00567109    mov         edi,dword ptr [ebp+0C]
 0056710C    movzx       edx,byte ptr [esi+6D]
 00567110    mov         eax,edx
 00567112    add         al,0FD
 00567114    sub         al,2
>00567116    jae         00567125
 00567118    sub         ecx,dword ptr [esi+1D0]
 0056711E    mov         eax,dword ptr [ebp+8]
 00567121    mov         dword ptr [eax],ecx
>00567123    jmp         00567133
 00567125    mov         eax,dword ptr [ebp-4]
 00567128    sub         eax,dword ptr [esi+1D4]
 0056712E    mov         ecx,dword ptr [ebp+8]
 00567131    mov         dword ptr [ecx],eax
 00567133    xor         eax,eax
 00567135    mov         ecx,edx
 00567137    dec         cl
>00567139    je          00567169
 0056713B    dec         cl
>0056713D    je          00567179
 0056713F    dec         cl
>00567141    je          00567149
 00567143    dec         cl
>00567145    je          00567159
>00567147    jmp         00567187
 00567149    mov         eax,dword ptr [esi+1CC]
 0056714F    mov         eax,dword ptr [eax+58]
 00567152    mov         ecx,dword ptr [ebp+8]
 00567155    add         eax,dword ptr [ecx]
>00567157    jmp         00567187
 00567159    mov         eax,dword ptr [esi+1CC]
 0056715F    mov         eax,dword ptr [eax+58]
 00567162    mov         ecx,dword ptr [ebp+8]
 00567165    sub         eax,dword ptr [ecx]
>00567167    jmp         00567187
 00567169    mov         eax,dword ptr [esi+1CC]
 0056716F    mov         eax,dword ptr [eax+5C]
 00567172    mov         ecx,dword ptr [ebp+8]
 00567175    add         eax,dword ptr [ecx]
>00567177    jmp         00567187
 00567179    mov         eax,dword ptr [esi+1CC]
 0056717F    mov         eax,dword ptr [eax+5C]
 00567182    mov         ecx,dword ptr [ebp+8]
 00567185    sub         eax,dword ptr [ecx]
 00567187    mov         dword ptr [edi],eax
 00567189    cmp         eax,dword ptr [esi+1E0]
>0056718F    jge         0056719B
 00567191    mov         ecx,dword ptr [esi+1E0]
 00567197    mov         dword ptr [edi],ecx
>00567199    jmp         005671AB
 0056719B    cmp         eax,dword ptr [esi+1E4]
>005671A1    jle         005671AB
 005671A3    mov         ecx,dword ptr [esi+1E4]
 005671A9    mov         dword ptr [edi],ecx
 005671AB    cmp         eax,dword ptr [edi]
>005671AD    je          005671C8
 005671AF    sub         dl,2
>005671B2    je          005671B9
 005671B4    sub         dl,2
>005671B7    jne         005671BD
 005671B9    sub         eax,dword ptr [edi]
>005671BB    jmp         005671C3
 005671BD    mov         edx,dword ptr [edi]
 005671BF    sub         edx,eax
 005671C1    mov         eax,edx
 005671C3    mov         edx,dword ptr [ebp+8]
 005671C6    add         dword ptr [edx],eax
 005671C8    pop         edi
 005671C9    pop         esi
 005671CA    pop         ecx
 005671CB    pop         ebp
 005671CC    ret         8
end;*}

//005671D0
procedure sub_005671D0(?:TSplitter);
begin
{*
 005671D0    push        ebx
 005671D1    lea         ebx,[eax+1E8];TSplitter.FNewSize:Integer
 005671D7    push        ebx
 005671D8    lea         ebx,[eax+204];TSplitter.FSplit:Integer
 005671DE    push        ebx
 005671DF    call        005670FC
 005671E4    pop         ebx
 005671E5    ret
*}
end;

//005671E8
{*procedure TSplitter.sub_004E8F54(?:?; ?:?; ?:?);
begin
 005671E8    push        ebp
 005671E9    mov         ebp,esp
 005671EB    add         esp,0FFFFFFF4
 005671EE    push        ebx
 005671EF    push        esi
 005671F0    push        edi
 005671F1    mov         esi,ecx
 005671F3    mov         word ptr [ebp-2],dx
 005671F7    mov         ebx,eax
 005671F9    mov         edi,dword ptr [ebp+8]
 005671FC    push        edi
 005671FD    mov         ecx,esi
 005671FF    movzx       edx,word ptr [ebp-2]
 00567203    mov         eax,ebx
 00567205    call        TControl.sub_004E8F54
 0056720A    test        byte ptr [ebp-2],8
>0056720E    je          0056728B
 00567210    cmp         dword ptr [ebx+1CC],0;TSplitter.FControl:TControl
>00567217    je          0056728B
 00567219    lea         eax,[ebp-8]
 0056721C    push        eax
 0056721D    lea         eax,[ebp-0C]
 00567220    push        eax
 00567221    mov         ecx,edi
 00567223    mov         edx,esi
 00567225    mov         eax,ebx
 00567227    call        005670FC
 0056722C    lea         edx,[ebp-8]
 0056722F    mov         eax,ebx
 00567231    mov         ecx,dword ptr [eax]
 00567233    call        dword ptr [ecx+0C0];TSplitter.sub_00566D48
 00567239    test        al,al
>0056723B    je          0056728B
 0056723D    movzx       eax,byte ptr [ebx+200];TSplitter.FResizeStyle:TResizeStyle
 00567244    sub         al,1
>00567246    je          0056724C
 00567248    sub         al,2
>0056724A    jne         00567253
 0056724C    mov         eax,ebx
 0056724E    call        00566878
 00567253    mov         eax,dword ptr [ebp-8]
 00567256    mov         dword ptr [ebx+1E8],eax;TSplitter.FNewSize:Integer
 0056725C    mov         eax,dword ptr [ebp-0C]
 0056725F    mov         dword ptr [ebx+204],eax;TSplitter.FSplit:Integer
 00567265    cmp         byte ptr [ebx+200],2;TSplitter.FResizeStyle:TResizeStyle
>0056726C    jne         00567275
 0056726E    mov         eax,ebx
 00567270    call        00566F54
 00567275    movzx       eax,byte ptr [ebx+200];TSplitter.FResizeStyle:TResizeStyle
 0056727C    sub         al,1
>0056727E    je          00567284
 00567280    sub         al,2
>00567282    jne         0056728B
 00567284    mov         eax,ebx
 00567286    call        00566878
 0056728B    pop         edi
 0056728C    pop         esi
 0056728D    pop         ebx
 0056728E    mov         esp,ebp
 00567290    pop         ebp
 00567291    ret         4
end;*}

//00567294
{*procedure TSplitter.sub_004E9010(?:?; ?:?; ?:?; ?:?);
begin
 00567294    push        ebp
 00567295    mov         ebp,esp
 00567297    push        ecx
 00567298    push        ebx
 00567299    push        esi
 0056729A    mov         word ptr [ebp-2],cx
 0056729E    mov         ebx,eax
 005672A0    mov         eax,dword ptr [ebp+0C]
 005672A3    push        eax
 005672A4    mov         eax,dword ptr [ebp+8]
 005672A7    push        eax
 005672A8    movzx       ecx,word ptr [ebp-2]
 005672AC    mov         eax,ebx
 005672AE    call        TControl.sub_004E9010
 005672B3    cmp         dword ptr [ebx+1CC],0;TSplitter.FControl:TControl
>005672BA    je          005672E4
 005672BC    movzx       eax,byte ptr [ebx+200];TSplitter.FResizeStyle:TResizeStyle
 005672C3    sub         al,1
>005672C5    je          005672CB
 005672C7    sub         al,2
>005672C9    jne         005672D2
 005672CB    mov         eax,ebx
 005672CD    call        00566878
 005672D2    mov         eax,ebx
 005672D4    call        00566F54
 005672D9    mov         eax,ebx
 005672DB    mov         si,0FFC5
 005672DF    call        @CallDynaInst;TSplitter.sub_00567340
 005672E4    pop         esi
 005672E5    pop         ebx
 005672E6    pop         ecx
 005672E7    pop         ebp
 005672E8    ret         8
end;*}

//005672EC
{*procedure sub_005672EC(?:?; ?:?; ?:?; ?:?);
begin
 005672EC    push        ebp
 005672ED    mov         ebp,esp
 005672EF    push        esi
 005672F0    mov         esi,eax
 005672F2    cmp         word ptr [ecx],1B
>005672F6    jne         00567305
 005672F8    mov         eax,esi
 005672FA    mov         si,0FFC5
 005672FE    call        @CallDynaInst
>00567303    jmp         00567320
 00567305    cmp         word ptr [esi+1F2],0
>0056730D    je          00567320
 0056730F    movzx       eax,word ptr [ebp+8]
 00567313    push        eax
 00567314    mov         eax,dword ptr [esi+1F4]
 0056731A    call        dword ptr [esi+1F0]
 00567320    pop         esi
 00567321    pop         ebp
 00567322    ret         4
end;*}

//00567328
procedure TSplitter.SetBeveled(Value:Boolean);
begin
{*
 00567328    push        esi
 00567329    mov         esi,eax
 0056732B    mov         byte ptr [esi+1C5],dl;TSplitter.FBeveled:Boolean
 00567331    mov         eax,esi
 00567333    mov         edx,dword ptr [eax]
 00567335    call        dword ptr [edx+0AC];TControl.Repaint
 0056733B    pop         esi
 0056733C    ret
*}
end;

//00567340
procedure TSplitter.sub_00567340;
begin
{*
 00567340    push        ebx
 00567341    mov         ebx,eax
 00567343    cmp         dword ptr [ebx+1CC],0;TSplitter.FControl:TControl
>0056734A    je          00567395
 0056734C    cmp         byte ptr [ebx+1DC],0;TSplitter.FLineVisible:Boolean
>00567353    je          0056735C
 00567355    mov         eax,ebx
 00567357    call        00566878
 0056735C    xor         eax,eax
 0056735E    mov         dword ptr [ebx+1CC],eax;TSplitter.FControl:TControl
 00567364    mov         eax,ebx
 00567366    call        005668F8
 0056736B    mov         eax,dword ptr [ebx+1C0];TSplitter.FActiveControl:TWinControl
 00567371    test        eax,eax
>00567373    je          00567395
 00567375    mov         edx,dword ptr [ebx+1F0];TSplitter.FOldKeyDown:TKeyEvent
 0056737B    mov         dword ptr [eax+238],edx;TWinControl.FOnKeyDown:TKeyEvent
 00567381    mov         edx,dword ptr [ebx+1F4];TSplitter.FPrevBrush:HBRUSH
 00567387    mov         dword ptr [eax+23C],edx;TWinControl.?f23C:TMessageForm
 0056738D    xor         eax,eax
 0056738F    mov         dword ptr [ebx+1C0],eax;TSplitter.FActiveControl:TWinControl
 00567395    cmp         word ptr [ebx+212],0;TSplitter.?f212:word
>0056739D    je          005673AD
 0056739F    mov         edx,ebx
 005673A1    mov         eax,dword ptr [ebx+214];TSplitter.?f214:dword
 005673A7    call        dword ptr [ebx+210];TSplitter.FOnMoved
 005673AD    pop         ebx
 005673AE    ret
*}
end;

//005673B0
constructor TCustomTrayIcon.Create(Owner:TComponent);
begin
{*
 005673B0    push        ebp
 005673B1    mov         ebp,esp
 005673B3    push        0
 005673B5    push        0
 005673B7    push        0
 005673B9    push        ebx
 005673BA    push        esi
 005673BB    test        dl,dl
>005673BD    je          005673C7
 005673BF    add         esp,0FFFFFFF0
 005673C2    call        @ClassCreate
 005673C7    mov         byte ptr [ebp-1],dl
 005673CA    mov         ebx,eax
 005673CC    xor         eax,eax
 005673CE    push        ebp
 005673CF    push        567531
 005673D4    push        dword ptr fs:[eax]
 005673D7    mov         dword ptr fs:[eax],esp
 005673DA    xor         edx,edx
 005673DC    mov         eax,ebx
 005673DE    call        TComponent.Create
 005673E3    mov         eax,3BC
 005673E8    call        @GetMem
 005673ED    mov         dword ptr [ebx+54],eax;TCustomTrayIcon.FData:PNotifyIconDataW
 005673F0    mov         byte ptr [ebx+40],0;TCustomTrayIcon.FAnimate:Boolean
 005673F4    mov         byte ptr [ebx+4C],0;TCustomTrayIcon.FBalloonFlags:TBalloonFlags
 005673F8    mov         edx,2710
 005673FD    mov         eax,ebx
 005673FF    call        00567C70
 00567404    mov         dl,1
 00567406    mov         eax,[004C2694];TIcon
 0056740B    call        TIcon.Create;TIcon.Create
 00567410    mov         dword ptr [ebx+58],eax;TCustomTrayIcon.FIcon:TIcon
 00567413    mov         dl,1
 00567415    mov         eax,[004C2694];TIcon
 0056741A    call        TIcon.Create;TIcon.Create
 0056741F    mov         dword ptr [ebx+50],eax;TCustomTrayIcon.FCurrentIcon:TIcon
 00567422    xor         ecx,ecx
 00567424    mov         dl,1
 00567426    mov         eax,[00561460];TTimer
 0056742B    call        TTimer.Create;TTimer.Create
 00567430    mov         dword ptr [ebx+64],eax;TCustomTrayIcon.FTimer:TTimer
 00567433    xor         eax,eax
 00567435    mov         dword ptr [ebx+6C],eax;TCustomTrayIcon.FIconIndex:Integer
 00567438    mov         byte ptr [ebx+70],0;TCustomTrayIcon.FVisible:Boolean
 0056743C    mov         byte ptr [ebx+4D],0;TCustomTrayIcon.FIsClicked:Boolean
 00567440    mov         eax,dword ptr [ebx+64];TCustomTrayIcon.FTimer:TTimer
 00567443    xor         edx,edx
 00567445    call        TTimer.SetEnabled
 0056744A    push        ebx
 0056744B    mov         eax,dword ptr [ebx]
 0056744D    mov         eax,dword ptr [eax+50];TCustomTrayIcon.FCurrentIcon:TIcon
 00567450    push        eax
 00567451    mov         eax,dword ptr [ebx+64];TCustomTrayIcon.FTimer:TTimer
 00567454    call        TTimer.SetOnTimer
 00567459    mov         eax,dword ptr [ebx+64];TCustomTrayIcon.FTimer:TTimer
 0056745C    mov         edx,3E8
 00567461    call        TTimer.SetInterval
 00567466    test        byte ptr [ebx+1C],10;TCustomTrayIcon.FComponentState:TComponentState
>0056746A    jne         00567516
 00567470    mov         eax,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567473    xor         ecx,ecx
 00567475    mov         edx,3BC
 0056747A    call        @FillChar
 0056747F    call        004D7F00
 00567484    mov         edx,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567487    mov         dword ptr [edx],eax
 00567489    push        ebx
 0056748A    mov         eax,dword ptr [ebx]
 0056748C    mov         eax,dword ptr [eax+4C];TCustomTrayIcon.FBalloonFlags:TBalloonFlags
 0056748F    push        eax
 00567490    call        AllocateHWnd
 00567495    mov         esi,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567498    mov         dword ptr [esi+4],eax
 0056749B    lea         edx,[ebp-8]
 0056749E    mov         eax,[007C4A18];^Application:TApplication
 005674A3    mov         eax,dword ptr [eax]
 005674A5    call        005CAD90
 005674AA    mov         edx,dword ptr [ebp-8]
 005674AD    lea         eax,[esi+18]
 005674B0    mov         ecx,7F
 005674B5    call        StrPLCopy
 005674BA    mov         eax,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 005674BD    mov         edx,dword ptr [eax+4]
 005674C0    mov         dword ptr [eax+8],edx
 005674C3    mov         dword ptr [eax+320],2710
 005674CD    mov         eax,dword ptr [ebx+50];TCustomTrayIcon.FCurrentIcon:TIcon
 005674D0    call        TIcon.GetHandle
 005674D5    mov         esi,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 005674D8    mov         dword ptr [esi+14],eax
 005674DB    mov         dword ptr [esi+0C],3
 005674E2    mov         dword ptr [esi+10],401
 005674E9    lea         edx,[ebp-0C]
 005674EC    mov         eax,[007C4A18];^Application:TApplication
 005674F1    mov         eax,dword ptr [eax]
 005674F3    call        005CAD90
 005674F8    mov         eax,dword ptr [ebp-0C]
 005674FB    test        eax,eax
>005674FD    je          00567504
 005674FF    sub         eax,4
 00567502    mov         eax,dword ptr [eax]
 00567504    test        eax,eax
>00567506    jle         0056750F
 00567508    mov         eax,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 0056750B    or          dword ptr [eax+0C],4
 0056750F    mov         eax,ebx
 00567511    call        TCustomTrayIcon.Refresh
 00567516    xor         eax,eax
 00567518    pop         edx
 00567519    pop         ecx
 0056751A    pop         ecx
 0056751B    mov         dword ptr fs:[eax],edx
 0056751E    push        567538
 00567523    lea         eax,[ebp-0C]
 00567526    mov         edx,2
 0056752B    call        @UStrArrayClr
 00567530    ret
>00567531    jmp         @HandleFinally
>00567536    jmp         00567523
 00567538    mov         eax,ebx
 0056753A    cmp         byte ptr [ebp-1],0
>0056753E    je          0056754F
 00567540    call        @AfterConstruction
 00567545    pop         dword ptr fs:[0]
 0056754C    add         esp,0C
 0056754F    mov         eax,ebx
 00567551    pop         esi
 00567552    pop         ebx
 00567553    mov         esp,ebp
 00567555    pop         ebp
 00567556    ret
*}
end;

//00567558
destructor TCustomTrayIcon.Destroy();
begin
{*
 00567558    push        ebx
 00567559    push        esi
 0056755A    call        @BeforeDestruction
 0056755F    mov         ebx,edx
 00567561    mov         esi,eax
 00567563    test        byte ptr [esi+1C],10;TCustomTrayIcon.FComponentState:TComponentState
>00567567    jne         00567580
 00567569    mov         edx,2
 0056756E    mov         eax,esi
 00567570    call        00567B30
 00567575    mov         eax,dword ptr [esi+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567578    mov         eax,dword ptr [eax+4]
 0056757B    call        DeallocateHWnd
 00567580    mov         eax,dword ptr [esi+50];TCustomTrayIcon.FCurrentIcon:TIcon
 00567583    call        TObject.Free
 00567588    mov         eax,dword ptr [esi+58];TCustomTrayIcon.FIcon:TIcon
 0056758B    call        TObject.Free
 00567590    mov         eax,dword ptr [esi+64];TCustomTrayIcon.FTimer:TTimer
 00567593    call        TObject.Free
 00567598    mov         eax,dword ptr [esi+54];TCustomTrayIcon.FData:PNotifyIconDataW
 0056759B    call        @FreeMem
 005675A0    mov         dl,0FC
 005675A2    and         dl,bl
 005675A4    mov         eax,esi
 005675A6    call        TComponent.Destroy
 005675AB    test        bl,bl
>005675AD    jle         005675B6
 005675AF    mov         eax,esi
 005675B1    call        @ClassDestroy
 005675B6    pop         esi
 005675B7    pop         ebx
 005675B8    ret
*}
end;

//005675BC
{*procedure sub_005675BC(?:?);
begin
 005675BC    push        ebp
 005675BD    mov         ebp,esp
 005675BF    push        0
 005675C1    push        ebx
 005675C2    push        esi
 005675C3    mov         ebx,edx
 005675C5    mov         esi,eax
 005675C7    xor         eax,eax
 005675C9    push        ebp
 005675CA    push        567674
 005675CF    push        dword ptr fs:[eax]
 005675D2    mov         dword ptr fs:[eax],esp
 005675D5    cmp         bl,byte ptr [esi+70];TCustomTrayIcon.FVisible:Boolean
>005675D8    je          0056765E
 005675DE    mov         byte ptr [esi+70],bl;TCustomTrayIcon.FVisible:Boolean
 005675E1    cmp         byte ptr [esi+40],0;TCustomTrayIcon.FAnimate:Boolean
>005675E5    je          005675F9
 005675E7    cmp         byte ptr [esi+40],0;TCustomTrayIcon.FAnimate:Boolean
>005675EB    je          00567600
 005675ED    mov         eax,dword ptr [esi+50];TCustomTrayIcon.FCurrentIcon:TIcon
 005675F0    mov         edx,dword ptr [eax]
 005675F2    call        dword ptr [edx+20];TIcon.GetEmpty
 005675F5    test        al,al
>005675F7    je          00567600
 005675F9    mov         eax,esi
 005675FB    call        TCustomTrayIcon.SetDefaultIcon
 00567600    test        byte ptr [esi+1C],10;TCustomTrayIcon.FComponentState:TComponentState
>00567604    jne         0056765E
 00567606    cmp         byte ptr [esi+70],0;TCustomTrayIcon.FVisible:Boolean
>0056760A    je          00567617
 0056760C    xor         edx,edx
 0056760E    mov         eax,esi
 00567610    call        00567B30
>00567615    jmp         0056764E
 00567617    test        byte ptr [esi+1C],1;TCustomTrayIcon.FComponentState:TComponentState
>0056761B    jne         0056764E
 0056761D    mov         edx,2
 00567622    mov         eax,esi
 00567624    call        00567B30
 00567629    test        al,al
>0056762B    jne         0056764E
 0056762D    lea         edx,[ebp-4]
 00567630    mov         eax,[007C4B78];^SResString334:TResStringRec
 00567635    call        LoadResString
 0056763A    mov         ecx,dword ptr [ebp-4]
 0056763D    mov         dl,1
 0056763F    mov         eax,[0046BDEC];EOutOfResources
 00567644    call        Exception.Create;EOutOfResources.Create
 00567649    call        @RaiseExcept
 0056764E    cmp         byte ptr [esi+40],0;TCustomTrayIcon.FAnimate:Boolean
>00567652    je          0056765E
 00567654    mov         edx,ebx
 00567656    mov         eax,dword ptr [esi+64];TCustomTrayIcon.FTimer:TTimer
 00567659    call        TTimer.SetEnabled
 0056765E    xor         eax,eax
 00567660    pop         edx
 00567661    pop         ecx
 00567662    pop         ecx
 00567663    mov         dword ptr fs:[eax],edx
 00567666    push        56767B
 0056766B    lea         eax,[ebp-4]
 0056766E    call        @UStrClr
 00567673    ret
>00567674    jmp         @HandleFinally
>00567679    jmp         0056766B
 0056767B    pop         esi
 0056767C    pop         ebx
 0056767D    pop         ecx
 0056767E    pop         ebp
 0056767F    ret
end;*}

//00567780
function ShiftState:TShiftState;
begin
{*
 00567780    push        ebx
 00567781    movzx       ebx,word ptr ds:[5677BC]
 00567788    push        10
 0056778A    call        user32.GetKeyState
 0056778F    test        ax,ax
>00567792    jge         00567798
 00567794    or          bx,1
 00567798    push        11
 0056779A    call        user32.GetKeyState
 0056779F    test        ax,ax
>005677A2    jge         005677A8
 005677A4    or          bx,4
 005677A8    push        12
 005677AA    call        user32.GetKeyState
 005677AF    test        ax,ax
>005677B2    jge         005677B8
 005677B4    or          bx,2
 005677B8    mov         eax,ebx
 005677BA    pop         ebx
 005677BB    ret
*}
end;

//005677C0
{*procedure sub_005677C0(?:?);
begin
 005677C0    push        ebx
 005677C1    push        esi
 005677C2    add         esp,0FFFFFFF8
 005677C5    mov         ecx,edx
 005677C7    mov         ebx,eax
 005677C9    mov         eax,dword ptr [ecx]
 005677CB    sub         eax,11
>005677CE    je          005677E1
 005677D0    sub         eax,5
>005677D3    je          005677ED
 005677D5    sub         eax,3EB
>005677DA    je          00567808
>005677DC    jmp         00567AD9
 005677E1    mov         dword ptr [ecx+0C],1
>005677E8    jmp         00567AF2
 005677ED    cmp         dword ptr [ecx+4],0
>005677F1    je          00567AF2
 005677F7    mov         edx,2
 005677FC    mov         eax,ebx
 005677FE    call        00567B30
>00567803    jmp         00567AF2
 00567808    mov         eax,dword ptr [ecx+8]
 0056780B    cdq
 0056780C    cmp         eax,206
>00567811    jg          00567846
>00567813    je          00567A24
 00567819    add         eax,0FFFFFE00
 0056781E    cmp         eax,5
>00567821    ja          00567AF2
 00567827    jmp         dword ptr [eax*4+56782E]
 00567827    dd          00567883
 00567827    dd          005678BC
 00567827    dd          005678FE
 00567827    dd          00567A24
 00567827    dd          00567962
 00567827    dd          005679A4
 00567846    cmp         eax,209
>0056784B    jg          0056786A
>0056784D    je          00567A24
 00567853    sub         eax,207
>00567858    je          00567A45
 0056785E    dec         eax
>0056785F    je          00567A84
>00567865    jmp         00567AF2
 0056786A    add         eax,0FFFFFBFD
 0056786F    sub         eax,2
>00567872    jb          00567ABF
>00567878    je          00567AC8
>0056787E    jmp         00567AF2
 00567883    cmp         word ptr [ebx+9A],0;TCustomTrayIcon.?f9A:word
>0056788B    je          00567AF2
 00567891    call        ShiftState
 00567896    mov         esi,eax
 00567898    push        esp
 00567899    call        user32.GetCursorPos
 0056789E    mov         eax,dword ptr [esp]
 005678A1    push        eax
 005678A2    mov         eax,dword ptr [esp+8]
 005678A6    push        eax
 005678A7    mov         ecx,esi
 005678A9    mov         edx,ebx
 005678AB    mov         eax,dword ptr [ebx+9C];TCustomTrayIcon.?f9C:dword
 005678B1    call        dword ptr [ebx+98];TCustomTrayIcon.FOnMouseMove
>005678B7    jmp         00567AF2
 005678BC    cmp         word ptr [ebx+92],0;TCustomTrayIcon.?f92:word
>005678C4    je          005678F5
 005678C6    call        ShiftState
 005678CB    mov         esi,eax
 005678CD    or          si,word ptr ds:[567AF8];0x8 gvar_00567AF8
 005678D4    push        esp
 005678D5    call        user32.GetCursorPos
 005678DA    push        esi
 005678DB    mov         eax,dword ptr [esp+4]
 005678DF    push        eax
 005678E0    mov         eax,dword ptr [esp+0C]
 005678E4    push        eax
 005678E5    xor         ecx,ecx
 005678E7    mov         edx,ebx
 005678E9    mov         eax,dword ptr [ebx+94];TCustomTrayIcon.?f94:dword
 005678EF    call        dword ptr [ebx+90];TCustomTrayIcon.FOnMouseDown
 005678F5    mov         byte ptr [ebx+4D],1;TCustomTrayIcon.FIsClicked:Boolean
>005678F9    jmp         00567AF2
 005678FE    call        ShiftState
 00567903    mov         esi,eax
 00567905    or          si,word ptr ds:[567AF8];0x8 gvar_00567AF8
 0056790C    push        esp
 0056790D    call        user32.GetCursorPos
 00567912    cmp         byte ptr [ebx+4D],0;TCustomTrayIcon.FIsClicked:Boolean
>00567916    je          00567934
 00567918    cmp         word ptr [ebx+82],0;TCustomTrayIcon.?f82:word
>00567920    je          00567934
 00567922    mov         edx,ebx
 00567924    mov         eax,dword ptr [ebx+84];TCustomTrayIcon.?f84:dword
 0056792A    call        dword ptr [ebx+80];TCustomTrayIcon.FOnClick
 00567930    mov         byte ptr [ebx+4D],0;TCustomTrayIcon.FIsClicked:Boolean
 00567934    cmp         word ptr [ebx+0A2],0;TCustomTrayIcon.?fA2:word
>0056793C    je          00567AF2
 00567942    push        esi
 00567943    mov         eax,dword ptr [esp+4]
 00567947    push        eax
 00567948    mov         eax,dword ptr [esp+0C]
 0056794C    push        eax
 0056794D    xor         ecx,ecx
 0056794F    mov         edx,ebx
 00567951    mov         eax,dword ptr [ebx+0A4];TCustomTrayIcon.?fA4:dword
 00567957    call        dword ptr [ebx+0A0];TCustomTrayIcon.FOnMouseUp
>0056795D    jmp         00567AF2
 00567962    cmp         word ptr [ebx+92],0;TCustomTrayIcon.?f92:word
>0056796A    je          00567AF2
 00567970    call        ShiftState
 00567975    mov         esi,eax
 00567977    or          si,word ptr ds:[567AFC];0x10 gvar_00567AFC
 0056797E    push        esp
 0056797F    call        user32.GetCursorPos
 00567984    push        esi
 00567985    mov         eax,dword ptr [esp+4]
 00567989    push        eax
 0056798A    mov         eax,dword ptr [esp+0C]
 0056798E    push        eax
 0056798F    mov         cl,1
 00567991    mov         edx,ebx
 00567993    mov         eax,dword ptr [ebx+94];TCustomTrayIcon.?f94:dword
 00567999    call        dword ptr [ebx+90];TCustomTrayIcon.FOnMouseDown
>0056799F    jmp         00567AF2
 005679A4    call        ShiftState
 005679A9    mov         esi,eax
 005679AB    or          si,word ptr ds:[567AFC];0x10 gvar_00567AFC
 005679B2    push        esp
 005679B3    call        user32.GetCursorPos
 005679B8    cmp         word ptr [ebx+0A2],0;TCustomTrayIcon.?fA2:word
>005679C0    je          005679DD
 005679C2    push        esi
 005679C3    mov         eax,dword ptr [esp+4]
 005679C7    push        eax
 005679C8    mov         eax,dword ptr [esp+0C]
 005679CC    push        eax
 005679CD    mov         cl,1
 005679CF    mov         edx,ebx
 005679D1    mov         eax,dword ptr [ebx+0A4];TCustomTrayIcon.?fA4:dword
 005679D7    call        dword ptr [ebx+0A0];TCustomTrayIcon.FOnMouseUp
 005679DD    cmp         dword ptr [ebx+60],0;TCustomTrayIcon.FPopupMenu:TPopupMenu
>005679E1    je          00567AF2
 005679E7    mov         eax,[007C4A18];^Application:TApplication
 005679EC    mov         eax,dword ptr [eax]
 005679EE    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 005679F4    push        eax
 005679F5    call        user32.SetForegroundWindow
 005679FA    mov         eax,[007C4A18];^Application:TApplication
 005679FF    mov         eax,dword ptr [eax]
 00567A01    call        TApplication.ProcessMessages
 00567A06    mov         eax,dword ptr [ebx+60];TCustomTrayIcon.FPopupMenu:TPopupMenu
 00567A09    mov         byte ptr [eax+71],0;TPopupMenu.FAutoPopup:Boolean
 00567A0D    mov         edx,dword ptr [ebx+4];TCustomTrayIcon.FOwner:TComponent
 00567A10    mov         dword ptr [eax+74],edx;TPopupMenu.FPopupComponent:TComponent
 00567A13    mov         ecx,dword ptr [esp+4]
 00567A17    mov         edx,dword ptr [esp]
 00567A1A    mov         ebx,dword ptr [eax]
 00567A1C    call        dword ptr [ebx+54];TPopupMenu.Popup
>00567A1F    jmp         00567AF2
 00567A24    cmp         word ptr [ebx+8A],0;TCustomTrayIcon.?f8A:word
>00567A2C    je          00567AF2
 00567A32    mov         edx,ebx
 00567A34    mov         eax,dword ptr [ebx+8C];TCustomTrayIcon.?f8C:dword
 00567A3A    call        dword ptr [ebx+88];TCustomTrayIcon.FOnDblClick
>00567A40    jmp         00567AF2
 00567A45    cmp         word ptr [ebx+92],0;TCustomTrayIcon.?f92:word
>00567A4D    je          00567AF2
 00567A53    call        ShiftState
 00567A58    mov         esi,eax
 00567A5A    or          si,word ptr ds:[567B00];0x20 gvar_00567B00
 00567A61    push        esp
 00567A62    call        user32.GetCursorPos
 00567A67    push        esi
 00567A68    mov         eax,dword ptr [esp+4]
 00567A6C    push        eax
 00567A6D    mov         eax,dword ptr [esp+0C]
 00567A71    push        eax
 00567A72    mov         cl,2
 00567A74    mov         edx,ebx
 00567A76    mov         eax,dword ptr [ebx+94];TCustomTrayIcon.?f94:dword
 00567A7C    call        dword ptr [ebx+90];TCustomTrayIcon.FOnMouseDown
>00567A82    jmp         00567AF2
 00567A84    cmp         word ptr [ebx+0A2],0;TCustomTrayIcon.?fA2:word
>00567A8C    je          00567AF2
 00567A8E    call        ShiftState
 00567A93    mov         esi,eax
 00567A95    or          si,word ptr ds:[567B00];0x20 gvar_00567B00
 00567A9C    push        esp
 00567A9D    call        user32.GetCursorPos
 00567AA2    push        esi
 00567AA3    mov         eax,dword ptr [esp+4]
 00567AA7    push        eax
 00567AA8    mov         eax,dword ptr [esp+0C]
 00567AAC    push        eax
 00567AAD    mov         cl,2
 00567AAF    mov         edx,ebx
 00567AB1    mov         eax,dword ptr [ebx+0A4];TCustomTrayIcon.?fA4:dword
 00567AB7    call        dword ptr [ebx+0A0];TCustomTrayIcon.FOnMouseUp
>00567ABD    jmp         00567AF2
 00567ABF    mov         eax,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567AC2    and         dword ptr [eax+0C],0FFFFFFEF
>00567AC6    jmp         00567AF2
 00567AC8    cmp         word ptr [ebx+7A],0;TCustomTrayIcon.?f7A:word
>00567ACD    je          00567AF2
 00567ACF    mov         edx,ebx
 00567AD1    mov         eax,dword ptr [ebx+7C];TCustomTrayIcon.?f7C:dword
 00567AD4    call        dword ptr [ebx+78];TCustomTrayIcon.FOnBalloonClick
>00567AD7    jmp         00567AF2
 00567AD9    mov         eax,dword ptr [ecx]
 00567ADB    cmp         eax,dword ptr ds:[7CA720];gvar_007CA720
>00567AE1    jne         00567AF2
 00567AE3    cmp         byte ptr [ebx+70],0;TCustomTrayIcon.FVisible:Boolean
>00567AE7    je          00567AF2
 00567AE9    xor         edx,edx
 00567AEB    mov         eax,ebx
 00567AED    call        00567B30
 00567AF2    pop         ecx
 00567AF3    pop         edx
 00567AF4    pop         esi
 00567AF5    pop         ebx
 00567AF6    ret
end;*}

//00567B04
procedure TCustomTrayIcon.Refresh;
begin
{*
 00567B04    push        ebx
 00567B05    mov         ebx,eax
 00567B07    test        byte ptr [ebx+1C],10;TCustomTrayIcon.FComponentState:TComponentState
>00567B0B    jne         00567B2D
 00567B0D    mov         eax,dword ptr [ebx+50];TCustomTrayIcon.FCurrentIcon:TIcon
 00567B10    call        TIcon.GetHandle
 00567B15    mov         edx,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567B18    mov         dword ptr [edx+14],eax
 00567B1B    cmp         byte ptr [ebx+70],0;TCustomTrayIcon.FVisible:Boolean
>00567B1F    je          00567B2D
 00567B21    mov         edx,1
 00567B26    mov         eax,ebx
 00567B28    call        00567B30
 00567B2D    pop         ebx
 00567B2E    ret
*}
end;

//00567B30
{*function sub_00567B30(?:TCustomTrayIcon; ?:?):?;
begin
 00567B30    push        ebx
 00567B31    push        esi
 00567B32    mov         esi,edx
 00567B34    mov         ebx,eax
 00567B36    mov         eax,dword ptr [ebx+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567B39    push        eax
 00567B3A    push        esi
 00567B3B    call        shell32.Shell_NotifyIconW
 00567B40    cmp         eax,1
 00567B43    sbb         eax,eax
 00567B45    inc         eax
 00567B46    pop         esi
 00567B47    pop         ebx
 00567B48    ret
end;*}

//00567B4C
{*procedure sub_00567B4C(?:?);
begin
 00567B4C    push        ebx
 00567B4D    push        esi
 00567B4E    mov         ebx,eax
 00567B50    cmp         edx,dword ptr [ebx+6C];TCustomTrayIcon.FIconIndex:Integer
>00567B53    je          00567B78
 00567B55    mov         esi,edx
 00567B57    mov         dword ptr [ebx+6C],esi;TCustomTrayIcon.FIconIndex:Integer
 00567B5A    test        byte ptr [ebx+1C],10;TCustomTrayIcon.FComponentState:TComponentState
>00567B5E    jne         00567B78
 00567B60    mov         eax,dword ptr [ebx+5C];TCustomTrayIcon.FIconList:TCustomImageList
 00567B63    test        eax,eax
>00567B65    je          00567B71
 00567B67    mov         ecx,dword ptr [ebx+50];TCustomTrayIcon.FCurrentIcon:TIcon
 00567B6A    mov         edx,esi
 00567B6C    call        TCustomImageList.GetIcon
 00567B71    mov         eax,ebx
 00567B73    call        TCustomTrayIcon.Refresh
 00567B78    pop         esi
 00567B79    pop         ebx
 00567B7A    ret
end;*}

//00567B7C
procedure sub_00567B7C;
begin
{*
 00567B7C    push        ebx
 00567B7D    push        esi
 00567B7E    mov         ebx,eax
 00567B80    cmp         word ptr [ebx+0AA],0;TCustomTrayIcon.?fAA:word
>00567B88    je          00567B98
 00567B8A    mov         edx,ebx
 00567B8C    mov         eax,dword ptr [ebx+0AC];TCustomTrayIcon.?fAC:dword
 00567B92    call        dword ptr [ebx+0A8];TCustomTrayIcon.FOnAnimate
 00567B98    mov         esi,dword ptr [ebx+5C];TCustomTrayIcon.FIconList:TCustomImageList
 00567B9B    test        esi,esi
>00567B9D    je          00567BB9
 00567B9F    mov         eax,esi
 00567BA1    mov         edx,dword ptr [eax]
 00567BA3    call        dword ptr [edx+48];TCustomImageList.sub_005A8A54
 00567BA6    dec         eax
 00567BA7    cmp         eax,dword ptr [ebx+6C];TCustomTrayIcon.FIconIndex:Integer
>00567BAA    jle         00567BB9
 00567BAC    mov         edx,dword ptr [ebx+6C];TCustomTrayIcon.FIconIndex:Integer
 00567BAF    inc         edx
 00567BB0    mov         eax,ebx
 00567BB2    mov         ecx,dword ptr [eax]
 00567BB4    call        dword ptr [ecx+48];TCustomTrayIcon.sub_00567B4C
>00567BB7    jmp         00567BC2
 00567BB9    xor         edx,edx
 00567BBB    mov         eax,ebx
 00567BBD    mov         ecx,dword ptr [eax]
 00567BBF    call        dword ptr [ecx+48];TCustomTrayIcon.sub_00567B4C
 00567BC2    mov         eax,ebx
 00567BC4    call        TCustomTrayIcon.Refresh
 00567BC9    pop         esi
 00567BCA    pop         ebx
 00567BCB    ret
*}
end;

//00567C34
procedure TCustomTrayIcon.SetDefaultIcon;
begin
{*
 00567C34    push        ebx
 00567C35    mov         ebx,eax
 00567C37    mov         eax,dword ptr [ebx+58];TCustomTrayIcon.FIcon:TIcon
 00567C3A    mov         edx,dword ptr [eax]
 00567C3C    call        dword ptr [edx+20];TIcon.GetEmpty
 00567C3F    test        al,al
>00567C41    jne         00567C50
 00567C43    mov         edx,dword ptr [ebx+58];TCustomTrayIcon.FIcon:TIcon
 00567C46    mov         eax,dword ptr [ebx+50];TCustomTrayIcon.FCurrentIcon:TIcon
 00567C49    mov         ecx,dword ptr [eax]
 00567C4B    call        dword ptr [ecx+8];TIcon.Assign
>00567C4E    jmp         00567C65
 00567C50    mov         eax,[007C4A18];^Application:TApplication
 00567C55    mov         eax,dword ptr [eax]
 00567C57    mov         edx,dword ptr [eax+0B8];TApplication.FIcon:TIcon
 00567C5D    mov         eax,dword ptr [ebx+50];TCustomTrayIcon.FCurrentIcon:TIcon
 00567C60    mov         ecx,dword ptr [eax]
 00567C62    call        dword ptr [ecx+8];TIcon.Assign
 00567C65    mov         eax,ebx
 00567C67    call        TCustomTrayIcon.Refresh
 00567C6C    pop         ebx
 00567C6D    ret
*}
end;

//00567C70
{*procedure sub_00567C70(?:TCustomTrayIcon; ?:?);
begin
 00567C70    mov         eax,dword ptr [eax+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567C73    mov         dword ptr [eax+320],edx
 00567C79    ret
end;*}

//00567C88
procedure TCustomTrayIcon.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00567C88    push        ebx
 00567C89    push        esi
 00567C8A    push        edi
 00567C8B    mov         ebx,ecx
 00567C8D    mov         esi,edx
 00567C8F    mov         edi,eax
 00567C91    mov         ecx,ebx
 00567C93    mov         edx,esi
 00567C95    mov         eax,edi
 00567C97    call        TComponent.Notification
 00567C9C    cmp         esi,dword ptr [edi+60];TCustomTrayIcon.FPopupMenu:TPopupMenu
>00567C9F    jne         00567CAB
 00567CA1    cmp         bl,1
>00567CA4    jne         00567CAB
 00567CA6    xor         eax,eax
 00567CA8    mov         dword ptr [edi+60],eax;TCustomTrayIcon.FPopupMenu:TPopupMenu
 00567CAB    cmp         esi,dword ptr [edi+5C];TCustomTrayIcon.FIconList:TCustomImageList
>00567CAE    jne         00567CBA
 00567CB0    cmp         bl,1
>00567CB3    jne         00567CBA
 00567CB5    xor         eax,eax
 00567CB7    mov         dword ptr [edi+5C],eax;TCustomTrayIcon.FIconList:TCustomImageList
 00567CBA    pop         edi
 00567CBB    pop         esi
 00567CBC    pop         ebx
 00567CBD    ret
*}
end;

//00567CC0
procedure TCustomTrayIcon.ShowBalloonHint;
begin
{*
 00567CC0    mov         edx,dword ptr [eax+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567CC3    or          dword ptr [edx+0C],10
 00567CC7    movzx       edx,byte ptr [eax+4C];TCustomTrayIcon.FBalloonFlags:TBalloonFlags
 00567CCB    mov         ecx,dword ptr [eax+54];TCustomTrayIcon.FData:PNotifyIconDataW
 00567CCE    mov         dword ptr [ecx+3A4],edx
 00567CD4    mov         edx,1
 00567CD9    call        00567B30
 00567CDE    ret
*}
end;

Initialization
//0079D5CC
{*
 0079D5CC    sub         dword ptr ds:[7CA724],1
>0079D5D3    jae         0079D618
 0079D5D5    mov         eax,[004DC470];TControl
 0079D5DA    call        StartClassGroup
 0079D5DF    mov         eax,[004DC470];TControl
 0079D5E4    call        ActivateClassGroup
 0079D5E9    mov         edx,dword ptr ds:[4DC470];TControl
 0079D5EF    mov         eax,[00561460];TTimer
 0079D5F4    call        GroupDescendentsWith
 0079D5F9    mov         edx,dword ptr ds:[4DC470];TControl
 0079D5FF    mov         eax,[00563C38];TCustomTrayIcon
 0079D604    call        GroupDescendentsWith
 0079D609    push        79D61C
 0079D60E    call        user32.RegisterWindowMessageW
 0079D613    mov         [007CA720],eax;gvar_007CA720
 0079D618    ret
*}
Finalization
end.