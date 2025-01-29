//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.CheckLst;

interface

uses
  SysUtils, Classes, System.TypInfo, System.Classes;

type
  TCheckListBox = class(TCustomListBox)
  published
    function GetState(Index:Integer):TCheckBoxState;//006C6C64
    constructor Create(AOwner:TComponent);//006C606C
    procedure SetChecked(Index:Integer; AChecked:Boolean);//006C6AF0
    function GetItemEnabled(Index:Integer):Boolean;//006C6C38
    procedure SetItemEnabled(Index:Integer; Value:Boolean);//006C6B24
    function GetChecked(Index:Integer):Boolean;//006C6C0C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetHeader(Index:Integer):Boolean;//006C72A4
    destructor Destroy();//006C6108
    procedure SetState(Index:Integer; AState:TCheckBoxState);//006C6B58
  public
    FAllowGrayed:Boolean;//f310
    FFlat:Boolean;//f311
    FStandardItemHeight:Integer;//f314
    FOnClickCheck:TNotifyEvent;//f318
    f31A:word;//f31A
    FHeaderBackgroundColor:TColor;//f31C
    FHeaderColor:TColor;//f320
    FHeaderBackgroundColor:TColor;//f324
    FWrapperList:TList;//f328
    destructor Destroy(); virtual;//006C6108
    constructor Create(AOwner:TComponent); virtual;//v3C//006C606C
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//006C61A8
    procedure CreateWnd; virtual;//vCC//006C6164
    //procedure v138(?:?; ?:?; ?:?); virtual;//v138//006C6260
    //procedure v140(?:?); virtual;//v140//006C6CBC
    //procedure v144(?:?); virtual;//v144//006C70EC
    procedure CMFontChanged; message CM_FONTCHANGED;//006C61CC
    //procedure sub_0050F8A8(?:?); dynamic;//006C6564
    procedure sub_006C6F34; dynamic;//006C6F34
    //procedure sub_0050E4B4(?:?); dynamic;//006C7230
    procedure sub_0050E4D4; dynamic;//006C708C
    procedure sub_0050E45C(?:Integer; ?:TCheckListBoxDataWrapper); dynamic;//006C7060
    procedure sub_0050E43C(?:Integer); dynamic;//006C6F54
    //procedure sub_0050E498(?:?; ?:?); dynamic;//006C7000
    //procedure sub_0050E480(?:?); dynamic;//006C6FF8
    //procedure sub_004EEC30(?:?); dynamic;//006C6C90
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?); dynamic;//006C6DF4
  end;
  TCheckListBoxDataWrapper = class(TObject)
  published
    function GetDefaultState:TCheckBoxState;//006C6068
  public
    FData:NativeInt;//f4
    FState:TCheckBoxState;//f8
    FDisabled:Boolean;//f9
    FHeader:Boolean;//fA
    procedure SetChecked(Check:Boolean);//006C6050
    function GetChecked:Boolean;//006C6060
  end;

implementation

//006C6050
procedure TCheckListBoxDataWrapper.SetChecked(Check:Boolean);
begin
{*
 006C6050    test        dl,dl
>006C6052    je          006C6059
 006C6054    mov         byte ptr [eax+8],1
 006C6058    ret
 006C6059    mov         byte ptr [eax+8],0
 006C605D    ret
*}
end;

//006C6060
function TCheckListBoxDataWrapper.GetChecked:Boolean;
begin
{*
 006C6060    cmp         byte ptr [eax+8],1
 006C6064    sete        al
 006C6067    ret
*}
end;

//006C6068
function TCheckListBoxDataWrapper.GetDefaultState:TCheckBoxState;
begin
{*
 006C6068    xor         eax,eax
 006C606A    ret
*}
end;

//006C606C
constructor TCheckListBox.Create(AOwner:TComponent);
begin
{*
 006C606C    push        ebx
 006C606D    push        esi
 006C606E    test        dl,dl
>006C6070    je          006C607A
 006C6072    add         esp,0FFFFFFF0
 006C6075    call        @ClassCreate
 006C607A    mov         ebx,edx
 006C607C    mov         esi,eax
 006C607E    xor         edx,edx
 006C6080    mov         eax,esi
 006C6082    call        TCustomListBox.Create
 006C6087    mov         byte ptr [esi+311],1;TCheckListBox.FFlat:Boolean
 006C608E    mov         dword ptr [esi+320],0FF000017;TCheckListBox.FHeaderColor:TColor
 006C6098    mov         dword ptr [esi+324],0FF000018;TCheckListBox.FHeaderBackgroundColor:TColor
 006C60A2    cmp         dword ptr ds:[901E24],0;gvar_00901E24
>006C60A9    jne         006C60BB
 006C60AB    cmp         dword ptr ds:[901E28],0;gvar_00901E28:Integer
>006C60B2    jne         006C60BB
 006C60B4    mov         eax,dword ptr [esi]
 006C60B6    call        006C69B8
 006C60BB    mov         dl,1
 006C60BD    mov         eax,[0046C204];TList
 006C60C2    call        TObject.Create;TList.Create
 006C60C7    mov         dword ptr [esi+328],eax;TCheckListBox.FWrapperList:TList
 006C60CD    mov         eax,esi
 006C60CF    test        bl,bl
>006C60D1    je          006C60E2
 006C60D3    call        @AfterConstruction
 006C60D8    pop         dword ptr fs:[0]
 006C60DF    add         esp,0C
 006C60E2    mov         eax,esi
 006C60E4    pop         esi
 006C60E5    pop         ebx
 006C60E6    ret
*}
end;

Initialization
//0079DA8C
{*
 0079DA8C    sub         dword ptr ds:[901E2C],1
>0079DA93    jae         0079DAAB
 0079DA95    mov         ecx,dword ptr ds:[504E98];TListBoxStyleHook
 0079DA9B    mov         edx,dword ptr ds:[6C4BC4];TCheckListBox
 0079DAA1    mov         eax,[005738E0];TCustomStyleEngine
 0079DAA6    call        TCustomStyleEngine.RegisterStyleHook
 0079DAAB    ret
*}
Finalization
end.