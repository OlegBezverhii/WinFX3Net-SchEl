//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit116;

interface

uses
  SysUtils, Classes, FXIniFiles, Vcl.Buttons, System.Generics.Collections, Vcl.StdCtrls, Vcl.StdActns, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TSelectDirCallback = class(TObject)
  published
    constructor Create;//007431CC
  public
    FDirectory:string;//f4
    function SelectDirCB(Wnd:Windows.HWND; uMsg:Windows.UINT; lParam:Windows.LPARAM; lpData:Windows.LPARAM):Integer;//00743210
  end;
  TLangSelectDlg = class(TForm)
  published
    OKBtn:TBitBtn;//f3C0
    CancelBtn:TBitBtn;//f3C4
    HelpBtn:TBitBtn;//f3C8
    Languages:TGroupBox;//f3CC
    LangInternal:TRadioButton;//f3D0
    LangGB:TRadioButton;//f3D4
    LangFI:TRadioButton;//f3D8
    LangSE:TRadioButton;//f3DC
    LangNO:TRadioButton;//f3E0
    LangDK:TRadioButton;//f3E4
    LangFL:TRadioButton;//f3E8
    LangFR:TRadioButton;//f3EC
    LangES:TRadioButton;//f3F0
    LangIT:TRadioButton;//f3F4
    LangEE:TRadioButton;//f3F8
    LangLV:TRadioButton;//f3FC
    LangLT:TRadioButton;//f400
    LangRU:TRadioButton;//f404
    LangNL:TRadioButton;//f408
    procedure FormCreate(Sender:TObject);//007438DC
    procedure FormShow(Sender:TObject);//00743998
    procedure OKBtnClick(Sender:TObject);//00744180
  end;
  TConfigInfoDlg = class(TForm)
  published
    OKBtn:TButton;//f3C0
    CancelBtn:TButton;//f3C4
    ListView1:TListView;//f3C8
    lbVersionConflict:TLabel;//f3CC
    Panel1:TPanel;//f3D0
    procedure Populate(FXCI:TFXCIRec; Clear:Boolean);//00745878
    procedure Populate(FXPanel:TFXPanel; Clear:Boolean);//00745914
    procedure Populate(FXNet:TFXNet; Clear:Boolean);//00745A40
    procedure FormCreate(Sender:TObject);//00745AC8
    procedure ListView1CustomDrawItem(Sender:TCustomListView; Item:TListItem; var DefaultDraw:Boolean; State:TCustomDrawState);//00745BE8
    procedure Translate(IniFile:TFXIniFile);//00744B44
    procedure FormShow(Sender:TObject);//00745BA8
  public
    WarnForIncompatibleVersion:Boolean;//f3D4
    WarnForWinFX32Conf:Boolean;//f3D5
  end;
    function SelectDirCB(Wnd:Windows.HWND; uMsg:Windows.UINT; lParam:Windows.LPARAM; lpData:Windows.LPARAM):Integer; stdcall;//00742EE8
    //function sub_00742F04(?:?; ?:WideString; ?:?; ?:?; ?:?):?;//00742F04
    function DirectoryExists(const Name:UnicodeString):Boolean;//007431C4
    //procedure sub_00745620(?:?; ?:?; ?:?);//00745620

implementation

{$R *.DFM}

//00742EE8
function SelectDirCB(Wnd:Windows.HWND; uMsg:Windows.UINT; lParam:Windows.LPARAM; lpData:Windows.LPARAM):Integer; stdcall;
begin
{*
 00742EE8    push        ebp
 00742EE9    mov         ebp,esp
 00742EEB    mov         eax,dword ptr [ebp+14]
 00742EEE    mov         edx,dword ptr [ebp+10]
 00742EF1    push        edx
 00742EF2    push        eax
 00742EF3    mov         ecx,dword ptr [ebp+0C]
 00742EF6    mov         edx,dword ptr [ebp+8]
 00742EF9    call        TSelectDirCallback.SelectDirCB
 00742EFE    pop         ebp
 00742EFF    ret         10
*}
end;

//00742F04
{*function sub_00742F04(?:?; ?:WideString; ?:?; ?:?; ?:?):?;
begin
 00742F04    push        ebp
 00742F05    mov         ebp,esp
 00742F07    add         esp,0FFFFFFB0
 00742F0A    push        ebx
 00742F0B    push        esi
 00742F0C    push        edi
 00742F0D    xor         ebx,ebx
 00742F0F    mov         dword ptr [ebp-4],ebx
 00742F12    mov         dword ptr [ebp-8],ebx
 00742F15    mov         dword ptr [ebp-0C],ecx
 00742F18    mov         esi,edx
 00742F1A    mov         edi,eax
 00742F1C    mov         ebx,dword ptr [ebp+8]
 00742F1F    xor         eax,eax
 00742F21    push        ebp
 00742F22    push        7431AD
 00742F27    push        dword ptr fs:[eax]
 00742F2A    mov         dword ptr fs:[eax],esp
 00742F2D    mov         byte ptr [ebp-0D],0
 00742F31    mov         eax,dword ptr [ebp-0C]
 00742F34    mov         eax,dword ptr [eax]
 00742F36    call        DirectoryExists
 00742F3B    test        al,al
>00742F3D    jne         00742F47
 00742F3F    mov         eax,dword ptr [ebp-0C]
 00742F42    call        @UStrClr
 00742F47    lea         eax,[ebp-50]
 00742F4A    xor         ecx,ecx
 00742F4C    mov         edx,20
 00742F51    call        @FillChar
 00742F56    lea         eax,[ebp-4]
 00742F59    call        @IntfClear
 00742F5E    push        eax
 00742F5F    call        shell32.SHGetMalloc
 00742F64    test        eax,eax
>00742F66    jne         0074318F
 00742F6C    cmp         dword ptr [ebp-4],0
>00742F70    je          0074318F
 00742F76    push        208
 00742F7B    mov         eax,dword ptr [ebp-4]
 00742F7E    push        eax
 00742F7F    mov         eax,dword ptr [eax]
 00742F81    call        dword ptr [eax+0C]
 00742F84    mov         dword ptr [ebp-28],eax
 00742F87    xor         eax,eax
 00742F89    push        ebp
 00742F8A    push        743188
 00742F8F    push        dword ptr fs:[eax]
 00742F92    mov         dword ptr fs:[eax],esp
 00742F95    xor         eax,eax
 00742F97    mov         dword ptr [ebp-2C],eax
 00742F9A    mov         eax,esi
 00742F9C    xor         edx,edx
 00742F9E    call        @WStrEqual
>00742FA3    je          00742FE0
 00742FA5    lea         eax,[ebp-8]
 00742FA8    call        @IntfClear
 00742FAD    push        eax
 00742FAE    call        shell32.SHGetDesktopFolder
 00742FB3    lea         eax,[ebp-1C]
 00742FB6    push        eax
 00742FB7    lea         eax,[ebp-2C]
 00742FBA    push        eax
 00742FBB    lea         eax,[ebp-18]
 00742FBE    push        eax
 00742FBF    mov         eax,esi
 00742FC1    call        @WStrToPWChar
 00742FC6    push        eax
 00742FC7    push        0
 00742FC9    mov         eax,[007C4A18];^Application:TApplication
 00742FCE    mov         eax,dword ptr [eax]
 00742FD0    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 00742FD6    push        eax
 00742FD7    mov         eax,dword ptr [ebp-8]
 00742FDA    push        eax
 00742FDB    mov         eax,dword ptr [eax]
 00742FDD    call        dword ptr [eax+0C]
 00742FE0    test        ebx,ebx
>00742FE2    je          00742FEF
 00742FE4    mov         eax,ebx
 00742FE6    call        TWinControl.HandleAllocated
 00742FEB    test        al,al
>00742FED    jne         00743001
 00742FEF    mov         eax,[007C4A18];^Application:TApplication
 00742FF4    mov         eax,dword ptr [eax]
 00742FF6    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 00742FFC    mov         dword ptr [ebp-50],eax
>00742FFF    jmp         0074300B
 00743001    mov         eax,ebx
 00743003    call        TWinControl.GetHandle
 00743008    mov         dword ptr [ebp-50],eax
 0074300B    mov         eax,dword ptr [ebp-2C]
 0074300E    mov         dword ptr [ebp-4C],eax
 00743011    mov         eax,dword ptr [ebp-28]
 00743014    mov         dword ptr [ebp-48],eax
 00743017    mov         eax,edi
 00743019    call        @UStrToPWChar
 0074301E    mov         dword ptr [ebp-44],eax
 00743021    mov         dword ptr [ebp-3C],742EE8;SelectDirCB:Integer
 00743028    mov         dword ptr [ebp-40],1
 0074302F    test        byte ptr [ebp+0C],8
>00743033    je          00743039
 00743035    or          dword ptr [ebp-40],40
 00743039    test        byte ptr [ebp+0C],1
>0074303D    jne         00743046
 0074303F    or          dword ptr [ebp-40],200
 00743046    test        byte ptr [ebp+0C],2
>0074304A    je          00743050
 0074304C    or          dword ptr [ebp-40],10
 00743050    test        byte ptr [ebp+0C],8
>00743054    jne         00743063
 00743056    test        byte ptr [ebp+0C],4
>0074305A    je          00743063
 0074305C    or          dword ptr [ebp-40],8000
 00743063    test        byte ptr [ebp+0C],10
>00743067    je          00743070
 00743069    or          dword ptr [ebp-40],4000
 00743070    test        byte ptr [ebp+0C],20
>00743074    je          0074307A
 00743076    or          dword ptr [ebp-40],20
 0074307A    mov         ecx,dword ptr [ebp-0C]
 0074307D    mov         ecx,dword ptr [ecx]
 0074307F    mov         dl,1
 00743081    mov         eax,[00742DCC];TSelectDirCallback
 00743086    call        TSelectDirCallback.Create;TSelectDirCallback.Create
 0074308B    mov         dword ptr [ebp-20],eax
 0074308E    xor         eax,eax
 00743090    push        ebp
 00743091    push        743133
 00743096    push        dword ptr fs:[eax]
 00743099    mov         dword ptr fs:[eax],esp
 0074309C    mov         eax,dword ptr [ebp-20]
 0074309F    mov         dword ptr [ebp-38],eax
 007430A2    xor         eax,eax
 007430A4    push        ebp
 007430A5    push        743116
 007430AA    push        dword ptr fs:[eax]
 007430AD    mov         dword ptr fs:[eax],esp
 007430B0    xor         eax,eax
 007430B2    call        DisableTaskWindows
 007430B7    mov         dword ptr [ebp-24],eax
 007430BA    push        1
 007430BC    call        kernel32.SetErrorMode
 007430C1    mov         dword ptr [ebp-14],eax
 007430C4    xor         eax,eax
 007430C6    push        ebp
 007430C7    push        7430FD
 007430CC    push        dword ptr fs:[eax]
 007430CF    mov         dword ptr fs:[eax],esp
 007430D2    lea         eax,[ebp-50]
 007430D5    push        eax
 007430D6    call        shell32.SHBrowseForFolderW
 007430DB    mov         dword ptr [ebp-30],eax
 007430DE    xor         eax,eax
 007430E0    pop         edx
 007430E1    pop         ecx
 007430E2    pop         ecx
 007430E3    mov         dword ptr fs:[eax],edx
 007430E6    push        743104
 007430EB    mov         eax,dword ptr [ebp-14]
 007430EE    push        eax
 007430EF    call        kernel32.SetErrorMode
 007430F4    mov         eax,dword ptr [ebp-24]
 007430F7    call        EnableTaskWindows
 007430FC    ret
>007430FD    jmp         @HandleFinally
>00743102    jmp         007430EB
 00743104    xor         eax,eax
 00743106    pop         edx
 00743107    pop         ecx
 00743108    pop         ecx
 00743109    mov         dword ptr fs:[eax],edx
 0074310C    push        74311D
 00743111    test        byte ptr [ebp+0C],8
 00743115    ret
>00743116    jmp         @HandleFinally
>0074311B    jmp         00743111
 0074311D    xor         eax,eax
 0074311F    pop         edx
 00743120    pop         ecx
 00743121    pop         ecx
 00743122    mov         dword ptr fs:[eax],edx
 00743125    push        74313A
 0074312A    mov         eax,dword ptr [ebp-20]
 0074312D    call        TObject.Free
 00743132    ret
>00743133    jmp         @HandleFinally
>00743138    jmp         0074312A
 0074313A    cmp         dword ptr [ebp-30],0
 0074313E    setne       byte ptr [ebp-0D]
 00743142    cmp         byte ptr [ebp-0D],0
>00743146    je          0074316D
 00743148    mov         eax,dword ptr [ebp-28]
 0074314B    push        eax
 0074314C    mov         eax,dword ptr [ebp-30]
 0074314F    push        eax
 00743150    call        shell32.SHGetPathFromIDListW
 00743155    mov         eax,dword ptr [ebp-30]
 00743158    push        eax
 00743159    mov         eax,dword ptr [ebp-4]
 0074315C    push        eax
 0074315D    mov         eax,dword ptr [eax]
 0074315F    call        dword ptr [eax+14]
 00743162    mov         eax,dword ptr [ebp-0C]
 00743165    mov         edx,dword ptr [ebp-28]
 00743168    call        @UStrFromPWChar
 0074316D    xor         eax,eax
 0074316F    pop         edx
 00743170    pop         ecx
 00743171    pop         ecx
 00743172    mov         dword ptr fs:[eax],edx
 00743175    push        74318F
 0074317A    mov         eax,dword ptr [ebp-28]
 0074317D    push        eax
 0074317E    mov         eax,dword ptr [ebp-4]
 00743181    push        eax
 00743182    mov         eax,dword ptr [eax]
 00743184    call        dword ptr [eax+14]
 00743187    ret
>00743188    jmp         @HandleFinally
>0074318D    jmp         0074317A
 0074318F    xor         eax,eax
 00743191    pop         edx
 00743192    pop         ecx
 00743193    pop         ecx
 00743194    mov         dword ptr fs:[eax],edx
 00743197    push        7431B4
 0074319C    lea         eax,[ebp-8]
 0074319F    call        @IntfClear
 007431A4    lea         eax,[ebp-4]
 007431A7    call        @IntfClear
 007431AC    ret
>007431AD    jmp         @HandleFinally
>007431B2    jmp         0074319C
 007431B4    movzx       eax,byte ptr [ebp-0D]
 007431B8    pop         edi
 007431B9    pop         esi
 007431BA    pop         ebx
 007431BB    mov         esp,ebp
 007431BD    pop         ebp
 007431BE    ret         8
end;*}

//007431C4
function DirectoryExists(const Name:UnicodeString):Boolean;
begin
{*
 007431C4    mov         dl,1
 007431C6    call        0041EAB0
 007431CB    ret
*}
end;

//007431CC
constructor TSelectDirCallback.Create;
begin
{*
 007431CC    push        ebx
 007431CD    push        esi
 007431CE    push        edi
 007431CF    test        dl,dl
>007431D1    je          007431DB
 007431D3    add         esp,0FFFFFFF0
 007431D6    call        @ClassCreate
 007431DB    mov         esi,ecx
 007431DD    mov         ebx,edx
 007431DF    mov         edi,eax
 007431E1    xor         edx,edx
 007431E3    mov         eax,edi
 007431E5    call        TObject.Create
 007431EA    lea         eax,[edi+4]
 007431ED    mov         edx,esi
 007431EF    call        @UStrAsg
 007431F4    mov         eax,edi
 007431F6    test        bl,bl
>007431F8    je          00743209
 007431FA    call        @AfterConstruction
 007431FF    pop         dword ptr fs:[0]
 00743206    add         esp,0C
 00743209    mov         eax,edi
 0074320B    pop         edi
 0074320C    pop         esi
 0074320D    pop         ebx
 0074320E    ret
*}
end;

//00743210
function TSelectDirCallback.SelectDirCB(Wnd:Windows.HWND; uMsg:Windows.UINT; lParam:Windows.LPARAM; lpData:Windows.LPARAM):Integer;
begin
{*
 00743210    push        ebp
 00743211    mov         ebp,esp
 00743213    add         esp,0FFFFFFD8
 00743216    push        ebx
 00743217    push        esi
 00743218    push        edi
 00743219    xor         ebx,ebx
 0074321B    mov         dword ptr [ebp-1C],ebx
 0074321E    mov         dword ptr [ebp-20],ebx
 00743221    mov         dword ptr [ebp-4],edx
 00743224    mov         esi,eax
 00743226    xor         eax,eax
 00743228    push        ebp
 00743229    push        74336D
 0074322E    push        dword ptr fs:[eax]
 00743231    mov         dword ptr fs:[eax],esp
 00743234    xor         eax,eax
 00743236    mov         dword ptr [ebp-8],eax
 00743239    cmp         ecx,1
>0074323C    jne         00743300
 00743242    mov         eax,[007C4A18];^Application:TApplication
 00743247    mov         eax,dword ptr [eax]
 00743249    mov         ebx,dword ptr [eax+58]
 0074324C    test        ebx,ebx
>0074324E    je          0074326B
 00743250    mov         eax,ebx
 00743252    call        TWinControl.GetHandle
 00743257    mov         edx,eax
 00743259    mov         eax,[007C4E78];^Screen:TScreen
 0074325E    mov         eax,dword ptr [eax]
 00743260    xor         ecx,ecx
 00743262    call        TScreen.MonitorFromWindow
 00743267    mov         ebx,eax
>00743269    jmp         0074327D
 0074326B    mov         eax,[007C4E78];^Screen:TScreen
 00743270    mov         eax,dword ptr [eax]
 00743272    xor         ecx,ecx
 00743274    xor         edx,edx
 00743276    call        TScreen.MonitorFromWindow
 0074327B    mov         ebx,eax
 0074327D    lea         eax,[ebp-18]
 00743280    push        eax
 00743281    mov         eax,dword ptr [ebp-4]
 00743284    push        eax
 00743285    call        user32.GetWindowRect
 0074328A    push        5
 0074328C    push        0
 0074328E    push        0
 00743290    mov         eax,ebx
 00743292    call        TMonitor.GetHeight
 00743297    mov         edi,eax
 00743299    mov         eax,dword ptr [ebp-0C]
 0074329C    sub         eax,dword ptr [ebp-14]
 0074329F    sub         edi,eax
 007432A1    sar         edi,1
>007432A3    jns         007432A8
 007432A5    adc         edi,0
 007432A8    mov         eax,ebx
 007432AA    call        005C7BC4
 007432AF    add         edi,eax
 007432B1    push        edi
 007432B2    mov         eax,ebx
 007432B4    call        TMonitor.GetWidth
 007432B9    mov         edi,eax
 007432BB    mov         eax,dword ptr [ebp-10]
 007432BE    sub         eax,dword ptr [ebp-18]
 007432C1    sub         edi,eax
 007432C3    sar         edi,1
>007432C5    jns         007432CA
 007432C7    adc         edi,0
 007432CA    mov         eax,ebx
 007432CC    call        005C7B90
 007432D1    add         edi,eax
 007432D3    push        edi
 007432D4    push        0
 007432D6    mov         eax,dword ptr [ebp-4]
 007432D9    push        eax
 007432DA    call        user32.SetWindowPos
 007432DF    cmp         dword ptr [esi+4],0
>007432E3    je          00743352
 007432E5    mov         eax,dword ptr [esi+4]
 007432E8    call        @UStrToPWChar
 007432ED    push        eax
 007432EE    push        1
 007432F0    push        467
 007432F5    mov         eax,dword ptr [ebp-4]
 007432F8    push        eax
 007432F9    call        user32.SendMessageW
>007432FE    jmp         00743352
 00743300    cmp         ecx,4
>00743303    je          0074330A
 00743305    cmp         ecx,3
>00743308    jne         00743352
 0074330A    lea         eax,[ebp-1C]
 0074330D    push        eax
 0074330E    lea         edx,[ebp-20]
 00743311    mov         eax,[007C4DD0];^SResString333:TResStringRec
 00743316    call        LoadResString
 0074331B    mov         eax,dword ptr [ebp-20]
 0074331E    mov         edx,dword ptr [ebp+0C]
 00743321    mov         dword ptr [ebp-28],edx
 00743324    mov         byte ptr [ebp-24],0A
 00743328    lea         edx,[ebp-28]
 0074332B    xor         ecx,ecx
 0074332D    call        Format
 00743332    mov         eax,dword ptr [ebp-1C]
 00743335    push        0
 00743337    push        0FF
 00743339    push        0FF
 0074333B    push        0
 0074333D    movzx       ecx,word ptr ds:[743380]
 00743344    mov         dl,1
 00743346    call        MessageDlgPosHelp
 0074334B    mov         dword ptr [ebp-8],1
 00743352    xor         eax,eax
 00743354    pop         edx
 00743355    pop         ecx
 00743356    pop         ecx
 00743357    mov         dword ptr fs:[eax],edx
 0074335A    push        743374
 0074335F    lea         eax,[ebp-20]
 00743362    mov         edx,2
 00743367    call        @UStrArrayClr
 0074336C    ret
>0074336D    jmp         @HandleFinally
>00743372    jmp         0074335F
 00743374    mov         eax,dword ptr [ebp-8]
 00743377    pop         edi
 00743378    pop         esi
 00743379    pop         ebx
 0074337A    mov         esp,ebp
 0074337C    pop         ebp
 0074337D    ret         8
*}
end;

//007438DC
procedure TLangSelectDlg.FormCreate(Sender:TObject);
begin
{*
 007438DC    push        ebp
 007438DD    mov         ebp,esp
 007438DF    add         esp,0FFFFFFF0
 007438E2    push        ebx
 007438E3    xor         ecx,ecx
 007438E5    mov         dword ptr [ebp-4],ecx
 007438E8    mov         dword ptr [ebp-10],ecx
 007438EB    mov         ebx,eax
 007438ED    xor         eax,eax
 007438EF    push        ebp
 007438F0    push        74394F
 007438F5    push        dword ptr fs:[eax]
 007438F8    mov         dword ptr fs:[eax],esp
 007438FB    lea         eax,[ebp-4]
 007438FE    push        eax
 007438FF    lea         edx,[ebp-10]
 00743902    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00743907    mov         eax,dword ptr [eax]
 00743909    call        005DDC74
 0074390E    mov         eax,dword ptr [ebp-10]
 00743911    mov         dword ptr [ebp-0C],eax
 00743914    mov         byte ptr [ebp-8],11
 00743918    lea         edx,[ebp-0C]
 0074391B    xor         ecx,ecx
 0074391D    mov         eax,743968;'Language selection (%s)'
 00743922    call        Format
 00743927    mov         edx,dword ptr [ebp-4]
 0074392A    mov         eax,ebx
 0074392C    call        TControl.SetText
 00743931    xor         eax,eax
 00743933    pop         edx
 00743934    pop         ecx
 00743935    pop         ecx
 00743936    mov         dword ptr fs:[eax],edx
 00743939    push        743956
 0074393E    lea         eax,[ebp-10]
 00743941    call        @UStrClr
 00743946    lea         eax,[ebp-4]
 00743949    call        @UStrClr
 0074394E    ret
>0074394F    jmp         @HandleFinally
>00743954    jmp         0074393E
 00743956    pop         ebx
 00743957    mov         esp,ebp
 00743959    pop         ebp
 0074395A    ret
*}
end;

//00743998
procedure TLangSelectDlg.FormShow(Sender:TObject);
begin
{*
 00743998    push        ebp
 00743999    mov         ebp,esp
 0074399B    mov         ecx,0E
 007439A0    push        0
 007439A2    push        0
 007439A4    dec         ecx
>007439A5    jne         007439A0
 007439A7    push        ebx
 007439A8    push        esi
 007439A9    mov         ebx,eax
 007439AB    mov         esi,dword ptr ds:[7C4A18];^Application:TApplication
 007439B1    xor         eax,eax
 007439B3    push        ebp
 007439B4    push        743E9A
 007439B9    push        dword ptr fs:[eax]
 007439BC    mov         dword ptr fs:[eax],esp
 007439BF    lea         edx,[ebp-8]
 007439C2    mov         eax,dword ptr [esi]
 007439C4    call        005CBE20
 007439C9    mov         eax,dword ptr [ebp-8]
 007439CC    lea         edx,[ebp-4]
 007439CF    call        0041EFA4
 007439D4    lea         eax,[ebp-4]
 007439D7    mov         edx,743EB4;'\WINFX3NETV6GB.TXT'
 007439DC    call        @UStrCat
 007439E1    mov         eax,dword ptr [ebp-4]
 007439E4    mov         dl,1
 007439E6    call        0041EA18
 007439EB    mov         edx,eax
 007439ED    mov         eax,dword ptr [ebx+3D4];TLangSelectDlg.LangGB:TRadioButton
 007439F3    mov         ecx,dword ptr [eax]
 007439F5    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 007439FB    lea         edx,[ebp-10]
 007439FE    mov         eax,dword ptr [esi]
 00743A00    call        005CBE20
 00743A05    mov         eax,dword ptr [ebp-10]
 00743A08    lea         edx,[ebp-0C]
 00743A0B    call        0041EFA4
 00743A10    lea         eax,[ebp-0C]
 00743A13    mov         edx,743EE8;'\WINFX3NETV6FI.TXT'
 00743A18    call        @UStrCat
 00743A1D    mov         eax,dword ptr [ebp-0C]
 00743A20    mov         dl,1
 00743A22    call        0041EA18
 00743A27    mov         edx,eax
 00743A29    mov         eax,dword ptr [ebx+3D8];TLangSelectDlg.LangFI:TRadioButton
 00743A2F    mov         ecx,dword ptr [eax]
 00743A31    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743A37    lea         edx,[ebp-18]
 00743A3A    mov         eax,dword ptr [esi]
 00743A3C    call        005CBE20
 00743A41    mov         eax,dword ptr [ebp-18]
 00743A44    lea         edx,[ebp-14]
 00743A47    call        0041EFA4
 00743A4C    lea         eax,[ebp-14]
 00743A4F    mov         edx,743F1C;'\WINFX3NETV6SE.TXT'
 00743A54    call        @UStrCat
 00743A59    mov         eax,dword ptr [ebp-14]
 00743A5C    mov         dl,1
 00743A5E    call        0041EA18
 00743A63    mov         edx,eax
 00743A65    mov         eax,dword ptr [ebx+3DC];TLangSelectDlg.LangSE:TRadioButton
 00743A6B    mov         ecx,dword ptr [eax]
 00743A6D    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743A73    lea         edx,[ebp-20]
 00743A76    mov         eax,dword ptr [esi]
 00743A78    call        005CBE20
 00743A7D    mov         eax,dword ptr [ebp-20]
 00743A80    lea         edx,[ebp-1C]
 00743A83    call        0041EFA4
 00743A88    lea         eax,[ebp-1C]
 00743A8B    mov         edx,743F50;'\WINFX3NETV6NO.TXT'
 00743A90    call        @UStrCat
 00743A95    mov         eax,dword ptr [ebp-1C]
 00743A98    mov         dl,1
 00743A9A    call        0041EA18
 00743A9F    mov         edx,eax
 00743AA1    mov         eax,dword ptr [ebx+3E0];TLangSelectDlg.LangNO:TRadioButton
 00743AA7    mov         ecx,dword ptr [eax]
 00743AA9    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743AAF    lea         edx,[ebp-28]
 00743AB2    mov         eax,dword ptr [esi]
 00743AB4    call        005CBE20
 00743AB9    mov         eax,dword ptr [ebp-28]
 00743ABC    lea         edx,[ebp-24]
 00743ABF    call        0041EFA4
 00743AC4    lea         eax,[ebp-24]
 00743AC7    mov         edx,743F84;'\WINFX3NETV6DK.TXT'
 00743ACC    call        @UStrCat
 00743AD1    mov         eax,dword ptr [ebp-24]
 00743AD4    mov         dl,1
 00743AD6    call        0041EA18
 00743ADB    mov         edx,eax
 00743ADD    mov         eax,dword ptr [ebx+3E4];TLangSelectDlg.LangDK:TRadioButton
 00743AE3    mov         ecx,dword ptr [eax]
 00743AE5    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743AEB    lea         edx,[ebp-30]
 00743AEE    mov         eax,dword ptr [esi]
 00743AF0    call        005CBE20
 00743AF5    mov         eax,dword ptr [ebp-30]
 00743AF8    lea         edx,[ebp-2C]
 00743AFB    call        0041EFA4
 00743B00    lea         eax,[ebp-2C]
 00743B03    mov         edx,743FB8;'\WINFX3NETV6NL.TXT'
 00743B08    call        @UStrCat
 00743B0D    mov         eax,dword ptr [ebp-2C]
 00743B10    mov         dl,1
 00743B12    call        0041EA18
 00743B17    mov         edx,eax
 00743B19    mov         eax,dword ptr [ebx+408];TLangSelectDlg.LangNL:TRadioButton
 00743B1F    mov         ecx,dword ptr [eax]
 00743B21    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743B27    lea         edx,[ebp-38]
 00743B2A    mov         eax,dword ptr [esi]
 00743B2C    call        005CBE20
 00743B31    mov         eax,dword ptr [ebp-38]
 00743B34    lea         edx,[ebp-34]
 00743B37    call        0041EFA4
 00743B3C    lea         eax,[ebp-34]
 00743B3F    mov         edx,743FEC;'\WINFX3NETV6FL.TXT'
 00743B44    call        @UStrCat
 00743B49    mov         eax,dword ptr [ebp-34]
 00743B4C    mov         dl,1
 00743B4E    call        0041EA18
 00743B53    mov         edx,eax
 00743B55    mov         eax,dword ptr [ebx+3E8];TLangSelectDlg.LangFL:TRadioButton
 00743B5B    mov         ecx,dword ptr [eax]
 00743B5D    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743B63    lea         edx,[ebp-40]
 00743B66    mov         eax,dword ptr [esi]
 00743B68    call        005CBE20
 00743B6D    mov         eax,dword ptr [ebp-40]
 00743B70    lea         edx,[ebp-3C]
 00743B73    call        0041EFA4
 00743B78    lea         eax,[ebp-3C]
 00743B7B    mov         edx,744020;'\WINFX3NETV6FR.TXT'
 00743B80    call        @UStrCat
 00743B85    mov         eax,dword ptr [ebp-3C]
 00743B88    mov         dl,1
 00743B8A    call        0041EA18
 00743B8F    mov         edx,eax
 00743B91    mov         eax,dword ptr [ebx+3EC];TLangSelectDlg.LangFR:TRadioButton
 00743B97    mov         ecx,dword ptr [eax]
 00743B99    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743B9F    lea         edx,[ebp-48]
 00743BA2    mov         eax,dword ptr [esi]
 00743BA4    call        005CBE20
 00743BA9    mov         eax,dword ptr [ebp-48]
 00743BAC    lea         edx,[ebp-44]
 00743BAF    call        0041EFA4
 00743BB4    lea         eax,[ebp-44]
 00743BB7    mov         edx,744054;'\WINFX3NETV6ES.TXT'
 00743BBC    call        @UStrCat
 00743BC1    mov         eax,dword ptr [ebp-44]
 00743BC4    mov         dl,1
 00743BC6    call        0041EA18
 00743BCB    mov         edx,eax
 00743BCD    mov         eax,dword ptr [ebx+3F0];TLangSelectDlg.LangES:TRadioButton
 00743BD3    mov         ecx,dword ptr [eax]
 00743BD5    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743BDB    lea         edx,[ebp-50]
 00743BDE    mov         eax,dword ptr [esi]
 00743BE0    call        005CBE20
 00743BE5    mov         eax,dword ptr [ebp-50]
 00743BE8    lea         edx,[ebp-4C]
 00743BEB    call        0041EFA4
 00743BF0    lea         eax,[ebp-4C]
 00743BF3    mov         edx,744088;'\WINFX3NETV6IT.TXT'
 00743BF8    call        @UStrCat
 00743BFD    mov         eax,dword ptr [ebp-4C]
 00743C00    mov         dl,1
 00743C02    call        0041EA18
 00743C07    mov         edx,eax
 00743C09    mov         eax,dword ptr [ebx+3F4];TLangSelectDlg.LangIT:TRadioButton
 00743C0F    mov         ecx,dword ptr [eax]
 00743C11    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743C17    lea         edx,[ebp-58]
 00743C1A    mov         eax,dword ptr [esi]
 00743C1C    call        005CBE20
 00743C21    mov         eax,dword ptr [ebp-58]
 00743C24    lea         edx,[ebp-54]
 00743C27    call        0041EFA4
 00743C2C    lea         eax,[ebp-54]
 00743C2F    mov         edx,7440BC;'\WINFX3NETV6EE.TXT'
 00743C34    call        @UStrCat
 00743C39    mov         eax,dword ptr [ebp-54]
 00743C3C    mov         dl,1
 00743C3E    call        0041EA18
 00743C43    mov         edx,eax
 00743C45    mov         eax,dword ptr [ebx+3F8];TLangSelectDlg.LangEE:TRadioButton
 00743C4B    mov         ecx,dword ptr [eax]
 00743C4D    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743C53    lea         edx,[ebp-60]
 00743C56    mov         eax,dword ptr [esi]
 00743C58    call        005CBE20
 00743C5D    mov         eax,dword ptr [ebp-60]
 00743C60    lea         edx,[ebp-5C]
 00743C63    call        0041EFA4
 00743C68    lea         eax,[ebp-5C]
 00743C6B    mov         edx,7440F0;'\WINFX3NETV6LV.TXT'
 00743C70    call        @UStrCat
 00743C75    mov         eax,dword ptr [ebp-5C]
 00743C78    mov         dl,1
 00743C7A    call        0041EA18
 00743C7F    mov         edx,eax
 00743C81    mov         eax,dword ptr [ebx+3FC];TLangSelectDlg.LangLV:TRadioButton
 00743C87    mov         ecx,dword ptr [eax]
 00743C89    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743C8F    lea         edx,[ebp-68]
 00743C92    mov         eax,dword ptr [esi]
 00743C94    call        005CBE20
 00743C99    mov         eax,dword ptr [ebp-68]
 00743C9C    lea         edx,[ebp-64]
 00743C9F    call        0041EFA4
 00743CA4    lea         eax,[ebp-64]
 00743CA7    mov         edx,744124;'\WINFX3NETV6LT.TXT'
 00743CAC    call        @UStrCat
 00743CB1    mov         eax,dword ptr [ebp-64]
 00743CB4    mov         dl,1
 00743CB6    call        0041EA18
 00743CBB    mov         edx,eax
 00743CBD    mov         eax,dword ptr [ebx+400];TLangSelectDlg.LangLT:TRadioButton
 00743CC3    mov         ecx,dword ptr [eax]
 00743CC5    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743CCB    lea         edx,[ebp-70]
 00743CCE    mov         eax,dword ptr [esi]
 00743CD0    call        005CBE20
 00743CD5    mov         eax,dword ptr [ebp-70]
 00743CD8    lea         edx,[ebp-6C]
 00743CDB    call        0041EFA4
 00743CE0    lea         eax,[ebp-6C]
 00743CE3    mov         edx,744158;'\WINFX3NETV6RU.TXT'
 00743CE8    call        @UStrCat
 00743CED    mov         eax,dword ptr [ebp-6C]
 00743CF0    mov         dl,1
 00743CF2    call        0041EA18
 00743CF7    mov         edx,eax
 00743CF9    mov         eax,dword ptr [ebx+404];TLangSelectDlg.LangRU:TRadioButton
 00743CFF    mov         ecx,dword ptr [eax]
 00743D01    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00743D07    movzx       eax,byte ptr ds:[902C99];gvar_00902C99
 00743D0E    cmp         eax,0F
>00743D11    ja          00743E7F
 00743D17    jmp         dword ptr [eax*4+743D1E]
 00743D17    dd          00743D5E
 00743D17    dd          00743D73
 00743D17    dd          00743D88
 00743D17    dd          00743D9D
 00743D17    dd          00743DB2
 00743D17    dd          00743DC7
 00743D17    dd          00743DF1
 00743D17    dd          00743E03
 00743D17    dd          00743E15
 00743D17    dd          00743E27
 00743D17    dd          00743E39
 00743D17    dd          00743E4B
 00743D17    dd          00743E5D
 00743D17    dd          00743E6F
 00743D17    dd          00743E7F
 00743D17    dd          00743DDC
 00743D5E    mov         dl,1
 00743D60    mov         eax,dword ptr [ebx+3D0];TLangSelectDlg.LangInternal:TRadioButton
 00743D66    mov         ecx,dword ptr [eax]
 00743D68    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743D6E    jmp         00743E7F
 00743D73    mov         dl,1
 00743D75    mov         eax,dword ptr [ebx+3D4];TLangSelectDlg.LangGB:TRadioButton
 00743D7B    mov         ecx,dword ptr [eax]
 00743D7D    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743D83    jmp         00743E7F
 00743D88    mov         dl,1
 00743D8A    mov         eax,dword ptr [ebx+3D8];TLangSelectDlg.LangFI:TRadioButton
 00743D90    mov         ecx,dword ptr [eax]
 00743D92    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743D98    jmp         00743E7F
 00743D9D    mov         dl,1
 00743D9F    mov         eax,dword ptr [ebx+3DC];TLangSelectDlg.LangSE:TRadioButton
 00743DA5    mov         ecx,dword ptr [eax]
 00743DA7    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743DAD    jmp         00743E7F
 00743DB2    mov         dl,1
 00743DB4    mov         eax,dword ptr [ebx+3E0];TLangSelectDlg.LangNO:TRadioButton
 00743DBA    mov         ecx,dword ptr [eax]
 00743DBC    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743DC2    jmp         00743E7F
 00743DC7    mov         dl,1
 00743DC9    mov         eax,dword ptr [ebx+3E4];TLangSelectDlg.LangDK:TRadioButton
 00743DCF    mov         ecx,dword ptr [eax]
 00743DD1    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743DD7    jmp         00743E7F
 00743DDC    mov         dl,1
 00743DDE    mov         eax,dword ptr [ebx+408];TLangSelectDlg.LangNL:TRadioButton
 00743DE4    mov         ecx,dword ptr [eax]
 00743DE6    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743DEC    jmp         00743E7F
 00743DF1    mov         dl,1
 00743DF3    mov         eax,dword ptr [ebx+3E8];TLangSelectDlg.LangFL:TRadioButton
 00743DF9    mov         ecx,dword ptr [eax]
 00743DFB    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743E01    jmp         00743E7F
 00743E03    mov         dl,1
 00743E05    mov         eax,dword ptr [ebx+3EC];TLangSelectDlg.LangFR:TRadioButton
 00743E0B    mov         ecx,dword ptr [eax]
 00743E0D    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743E13    jmp         00743E7F
 00743E15    mov         dl,1
 00743E17    mov         eax,dword ptr [ebx+3F0];TLangSelectDlg.LangES:TRadioButton
 00743E1D    mov         ecx,dword ptr [eax]
 00743E1F    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743E25    jmp         00743E7F
 00743E27    mov         dl,1
 00743E29    mov         eax,dword ptr [ebx+3F4];TLangSelectDlg.LangIT:TRadioButton
 00743E2F    mov         ecx,dword ptr [eax]
 00743E31    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743E37    jmp         00743E7F
 00743E39    mov         dl,1
 00743E3B    mov         eax,dword ptr [ebx+3F8];TLangSelectDlg.LangEE:TRadioButton
 00743E41    mov         ecx,dword ptr [eax]
 00743E43    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743E49    jmp         00743E7F
 00743E4B    mov         dl,1
 00743E4D    mov         eax,dword ptr [ebx+3FC];TLangSelectDlg.LangLV:TRadioButton
 00743E53    mov         ecx,dword ptr [eax]
 00743E55    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743E5B    jmp         00743E7F
 00743E5D    mov         dl,1
 00743E5F    mov         eax,dword ptr [ebx+400];TLangSelectDlg.LangLT:TRadioButton
 00743E65    mov         ecx,dword ptr [eax]
 00743E67    call        dword ptr [ecx+10C];TRadioButton.SetChecked
>00743E6D    jmp         00743E7F
 00743E6F    mov         dl,1
 00743E71    mov         eax,dword ptr [ebx+404];TLangSelectDlg.LangRU:TRadioButton
 00743E77    mov         ecx,dword ptr [eax]
 00743E79    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 00743E7F    xor         eax,eax
 00743E81    pop         edx
 00743E82    pop         ecx
 00743E83    pop         ecx
 00743E84    mov         dword ptr fs:[eax],edx
 00743E87    push        743EA1
 00743E8C    lea         eax,[ebp-70]
 00743E8F    mov         edx,1C
 00743E94    call        @UStrArrayClr
 00743E99    ret
>00743E9A    jmp         @HandleFinally
>00743E9F    jmp         00743E8C
 00743EA1    pop         esi
 00743EA2    pop         ebx
 00743EA3    mov         esp,ebp
 00743EA5    pop         ebp
 00743EA6    ret
*}
end;

//00744180
procedure TLangSelectDlg.OKBtnClick(Sender:TObject);
begin
{*
 00744180    push        ebx
 00744181    push        esi
 00744182    mov         ebx,eax
 00744184    mov         esi,902C98;gvar_00902C98:Integer
 00744189    mov         eax,dword ptr [ebx+3D0];TLangSelectDlg.LangInternal:TRadioButton
 0074418F    mov         edx,dword ptr [eax]
 00744191    call        dword ptr [edx+108];TRadioButton.GetChecked
 00744197    test        al,al
>00744199    je          0074419E
 0074419B    mov         byte ptr [esi],0
 0074419E    mov         eax,dword ptr [ebx+3D4];TLangSelectDlg.LangGB:TRadioButton
 007441A4    mov         edx,dword ptr [eax]
 007441A6    call        dword ptr [edx+108];TRadioButton.GetChecked
 007441AC    test        al,al
>007441AE    je          007441B3
 007441B0    mov         byte ptr [esi],1
 007441B3    mov         eax,dword ptr [ebx+3D8];TLangSelectDlg.LangFI:TRadioButton
 007441B9    mov         edx,dword ptr [eax]
 007441BB    call        dword ptr [edx+108];TRadioButton.GetChecked
 007441C1    test        al,al
>007441C3    je          007441C8
 007441C5    mov         byte ptr [esi],2
 007441C8    mov         eax,dword ptr [ebx+3DC];TLangSelectDlg.LangSE:TRadioButton
 007441CE    mov         edx,dword ptr [eax]
 007441D0    call        dword ptr [edx+108];TRadioButton.GetChecked
 007441D6    test        al,al
>007441D8    je          007441DD
 007441DA    mov         byte ptr [esi],3
 007441DD    mov         eax,dword ptr [ebx+3E0];TLangSelectDlg.LangNO:TRadioButton
 007441E3    mov         edx,dword ptr [eax]
 007441E5    call        dword ptr [edx+108];TRadioButton.GetChecked
 007441EB    test        al,al
>007441ED    je          007441F2
 007441EF    mov         byte ptr [esi],4
 007441F2    mov         eax,dword ptr [ebx+3E4];TLangSelectDlg.LangDK:TRadioButton
 007441F8    mov         edx,dword ptr [eax]
 007441FA    call        dword ptr [edx+108];TRadioButton.GetChecked
 00744200    test        al,al
>00744202    je          00744207
 00744204    mov         byte ptr [esi],5
 00744207    mov         eax,dword ptr [ebx+408];TLangSelectDlg.LangNL:TRadioButton
 0074420D    mov         edx,dword ptr [eax]
 0074420F    call        dword ptr [edx+108];TRadioButton.GetChecked
 00744215    test        al,al
>00744217    je          0074421C
 00744219    mov         byte ptr [esi],0F
 0074421C    mov         eax,dword ptr [ebx+3E8];TLangSelectDlg.LangFL:TRadioButton
 00744222    mov         edx,dword ptr [eax]
 00744224    call        dword ptr [edx+108];TRadioButton.GetChecked
 0074422A    test        al,al
>0074422C    je          00744231
 0074422E    mov         byte ptr [esi],6
 00744231    mov         eax,dword ptr [ebx+3EC];TLangSelectDlg.LangFR:TRadioButton
 00744237    mov         edx,dword ptr [eax]
 00744239    call        dword ptr [edx+108];TRadioButton.GetChecked
 0074423F    test        al,al
>00744241    je          00744246
 00744243    mov         byte ptr [esi],7
 00744246    mov         eax,dword ptr [ebx+3F0];TLangSelectDlg.LangES:TRadioButton
 0074424C    mov         edx,dword ptr [eax]
 0074424E    call        dword ptr [edx+108];TRadioButton.GetChecked
 00744254    test        al,al
>00744256    je          0074425B
 00744258    mov         byte ptr [esi],8
 0074425B    mov         eax,dword ptr [ebx+3F4];TLangSelectDlg.LangIT:TRadioButton
 00744261    mov         edx,dword ptr [eax]
 00744263    call        dword ptr [edx+108];TRadioButton.GetChecked
 00744269    test        al,al
>0074426B    je          00744270
 0074426D    mov         byte ptr [esi],9
 00744270    mov         eax,dword ptr [ebx+3F8];TLangSelectDlg.LangEE:TRadioButton
 00744276    mov         edx,dword ptr [eax]
 00744278    call        dword ptr [edx+108];TRadioButton.GetChecked
 0074427E    test        al,al
>00744280    je          00744285
 00744282    mov         byte ptr [esi],0A
 00744285    mov         eax,dword ptr [ebx+3FC];TLangSelectDlg.LangLV:TRadioButton
 0074428B    mov         edx,dword ptr [eax]
 0074428D    call        dword ptr [edx+108];TRadioButton.GetChecked
 00744293    test        al,al
>00744295    je          0074429A
 00744297    mov         byte ptr [esi],0B
 0074429A    mov         eax,dword ptr [ebx+400];TLangSelectDlg.LangLT:TRadioButton
 007442A0    mov         edx,dword ptr [eax]
 007442A2    call        dword ptr [edx+108];TRadioButton.GetChecked
 007442A8    test        al,al
>007442AA    je          007442AF
 007442AC    mov         byte ptr [esi],0C
 007442AF    mov         eax,dword ptr [ebx+404];TLangSelectDlg.LangRU:TRadioButton
 007442B5    mov         edx,dword ptr [eax]
 007442B7    call        dword ptr [edx+108];TRadioButton.GetChecked
 007442BD    test        al,al
>007442BF    je          007442C4
 007442C1    mov         byte ptr [esi],0D
 007442C4    pop         esi
 007442C5    pop         ebx
 007442C6    ret
*}
end;

//00744B44
procedure TConfigInfoDlg.Translate(IniFile:TFXIniFile);
begin
{*
 00744B44    push        ebp
 00744B45    mov         ebp,esp
 00744B47    mov         ecx,8
 00744B4C    push        0
 00744B4E    push        0
 00744B50    dec         ecx
>00744B51    jne         00744B4C
 00744B53    push        ebx
 00744B54    push        esi
 00744B55    push        edi
 00744B56    mov         ebx,edx
 00744B58    mov         esi,eax
 00744B5A    xor         eax,eax
 00744B5C    push        ebp
 00744B5D    push        744E2D
 00744B62    push        dword ptr fs:[eax]
 00744B65    mov         dword ptr fs:[eax],esp
 00744B68    push        744E48;'Configuration info'
 00744B6D    lea         eax,[ebp-8]
 00744B70    push        eax
 00744B71    mov         ecx,744E7C;'sConfigInfoDlg'
 00744B76    mov         edx,744EA8;'ConfigInfoDlg'
 00744B7B    mov         eax,ebx
 00744B7D    mov         edi,dword ptr [eax]
 00744B7F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744B82    push        dword ptr [ebp-8]
 00744B85    push        744ED0;' ('
 00744B8A    lea         edx,[ebp-0C]
 00744B8D    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00744B92    mov         eax,dword ptr [eax]
 00744B94    call        005DDC74
 00744B99    push        dword ptr [ebp-0C]
 00744B9C    push        744EE4;')'
 00744BA1    lea         eax,[ebp-4]
 00744BA4    mov         edx,4
 00744BA9    call        @UStrCatN
 00744BAE    mov         edx,dword ptr [ebp-4]
 00744BB1    mov         eax,esi
 00744BB3    call        TControl.SetText
 00744BB8    push        744EF4;'OK'
 00744BBD    lea         eax,[ebp-10]
 00744BC0    push        eax
 00744BC1    mov         ecx,744F08;'sOKBtn'
 00744BC6    mov         edx,744F24;'CommonTexts'
 00744BCB    mov         eax,ebx
 00744BCD    mov         edi,dword ptr [eax]
 00744BCF    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744BD2    mov         edx,dword ptr [ebp-10]
 00744BD5    mov         eax,dword ptr [esi+3C0];TConfigInfoDlg.OKBtn:TButton
 00744BDB    call        TControl.SetText
 00744BE0    push        744F48;'Cancel'
 00744BE5    lea         eax,[ebp-14]
 00744BE8    push        eax
 00744BE9    mov         ecx,744F64;'sCancelBtn'
 00744BEE    mov         edx,744F24;'CommonTexts'
 00744BF3    mov         eax,ebx
 00744BF5    mov         edi,dword ptr [eax]
 00744BF7    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744BFA    mov         edx,dword ptr [ebp-14]
 00744BFD    mov         eax,dword ptr [esi+3C4];TConfigInfoDlg.CancelBtn:TButton
 00744C03    call        TControl.SetText
 00744C08    push        744F88;'Data item'
 00744C0D    lea         eax,[ebp-18]
 00744C10    push        eax
 00744C11    mov         ecx,744FA8;'sDataItem'
 00744C16    mov         edx,744EA8;'ConfigInfoDlg'
 00744C1B    mov         eax,ebx
 00744C1D    mov         edi,dword ptr [eax]
 00744C1F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744C22    mov         eax,dword ptr [ebp-18]
 00744C25    push        eax
 00744C26    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00744C2C    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00744C32    xor         edx,edx
 00744C34    call        TListColumns.GetItem
 00744C39    pop         edx
 00744C3A    call        TListColumn.SetCaption
 00744C3F    push        744FC8;'Made by'
 00744C44    lea         eax,[ebp-1C]
 00744C47    push        eax
 00744C48    mov         ecx,744FE4;'sMadeBy'
 00744C4D    mov         edx,744EA8;'ConfigInfoDlg'
 00744C52    mov         eax,ebx
 00744C54    mov         edi,dword ptr [eax]
 00744C56    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744C59    mov         eax,dword ptr [ebp-1C]
 00744C5C    push        eax
 00744C5D    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00744C63    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00744C69    mov         edx,1
 00744C6E    call        TListColumns.GetItem
 00744C73    pop         edx
 00744C74    call        TListColumn.SetCaption
 00744C79    push        745000;'Date'
 00744C7E    lea         eax,[ebp-20]
 00744C81    push        eax
 00744C82    mov         ecx,745018;'sDate'
 00744C87    mov         edx,744EA8;'ConfigInfoDlg'
 00744C8C    mov         eax,ebx
 00744C8E    mov         edi,dword ptr [eax]
 00744C90    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744C93    mov         eax,dword ptr [ebp-20]
 00744C96    push        eax
 00744C97    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00744C9D    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00744CA3    mov         edx,2
 00744CA8    call        TListColumns.GetItem
 00744CAD    pop         edx
 00744CAE    call        TListColumn.SetCaption
 00744CB3    push        745030;'Time'
 00744CB8    lea         eax,[ebp-24]
 00744CBB    push        eax
 00744CBC    mov         ecx,745048;'sTime'
 00744CC1    mov         edx,744EA8;'ConfigInfoDlg'
 00744CC6    mov         eax,ebx
 00744CC8    mov         edi,dword ptr [eax]
 00744CCA    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744CCD    mov         eax,dword ptr [ebp-24]
 00744CD0    push        eax
 00744CD1    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00744CD7    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00744CDD    mov         edx,3
 00744CE2    call        TListColumns.GetItem
 00744CE7    pop         edx
 00744CE8    call        TListColumn.SetCaption
 00744CED    push        745060;'Version'
 00744CF2    lea         eax,[ebp-28]
 00744CF5    push        eax
 00744CF6    mov         ecx,74507C;'sVersion'
 00744CFB    mov         edx,744EA8;'ConfigInfoDlg'
 00744D00    mov         eax,ebx
 00744D02    mov         edi,dword ptr [eax]
 00744D04    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744D07    mov         eax,dword ptr [ebp-28]
 00744D0A    push        eax
 00744D0B    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00744D11    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00744D17    mov         edx,4
 00744D1C    call        TListColumns.GetItem
 00744D21    pop         edx
 00744D22    call        TListColumn.SetCaption
 00744D27    push        74509C;'WARNING! This configuration contains data that is made with a newer version!
Do...
 00744D2C    lea         eax,[ebp-2C]
 00744D2F    push        eax
 00744D30    mov         ecx,745264;'slbVersionConflict'
 00744D35    mov         edx,744EA8;'ConfigInfoDlg'
 00744D3A    mov         eax,ebx
 00744D3C    mov         edi,dword ptr [eax]
 00744D3E    call        dword ptr [edi+4];TFXIniFile.ReadString
 00744D41    mov         edx,dword ptr [ebp-2C]
 00744D44    mov         eax,dword ptr [esi+3CC];TConfigInfoDlg.lbVersionConflict:TLabel
 00744D4A    call        TControl.SetText
 00744D4F    push        745298;'Warning! Parts or all of this configuration is made with the WinFX32 configurati...
 00744D54    lea         eax,[ebp-30]
 00744D57    push        eax
 00744D58    mov         ecx,7454E8;'sWarnForWinFX32Conf'
 00744D5D    mov         edx,744EA8;'ConfigInfoDlg'
 00744D62    mov         eax,ebx
 00744D64    mov         esi,dword ptr [eax]
 00744D66    call        dword ptr [esi+4];TFXIniFile.ReadString
 00744D69    mov         edx,dword ptr [ebp-30]
 00744D6C    mov         eax,7C3E54;^'Warning! Parts or all of this configuration is made with the WinFX32 config...
 00744D71    call        @UStrAsg
 00744D76    push        74551C;'Panel data'
 00744D7B    lea         eax,[ebp-34]
 00744D7E    push        eax
 00744D7F    mov         ecx,745540;'sPanelData'
 00744D84    mov         edx,744F24;'CommonTexts'
 00744D89    mov         eax,ebx
 00744D8B    mov         esi,dword ptr [eax]
 00744D8D    call        dword ptr [esi+4];TFXIniFile.ReadString
 00744D90    mov         edx,dword ptr [ebp-34]
 00744D93    mov         eax,7C3E58;^'Panel data'
 00744D98    call        @UStrAsg
 00744D9D    push        745564;'IO data'
 00744DA2    lea         eax,[ebp-38]
 00744DA5    push        eax
 00744DA6    mov         ecx,745580;'sIOData'
 00744DAB    mov         edx,744F24;'CommonTexts'
 00744DB0    mov         eax,ebx
 00744DB2    mov         esi,dword ptr [eax]
 00744DB4    call        dword ptr [esi+4];TFXIniFile.ReadString
 00744DB7    mov         edx,dword ptr [ebp-38]
 00744DBA    mov         eax,7C3E5C;^'IO data'
 00744DBF    call        @UStrAsg
 00744DC4    push        74559C;'Address data'
 00744DC9    lea         eax,[ebp-3C]
 00744DCC    push        eax
 00744DCD    mov         ecx,7455C4;'sAddressData'
 00744DD2    mov         edx,744F24;'CommonTexts'
 00744DD7    mov         eax,ebx
 00744DD9    mov         esi,dword ptr [eax]
 00744DDB    call        dword ptr [esi+4];TFXIniFile.ReadString
 00744DDE    mov         edx,dword ptr [ebp-3C]
 00744DE1    mov         eax,7C3E60;^'Address data'
 00744DE6    call        @UStrAsg
 00744DEB    push        7455EC;'Text data'
 00744DF0    lea         eax,[ebp-40]
 00744DF3    push        eax
 00744DF4    mov         ecx,74560C;'sTextData'
 00744DF9    mov         edx,744F24;'CommonTexts'
 00744DFE    mov         eax,ebx
 00744E00    mov         ebx,dword ptr [eax]
 00744E02    call        dword ptr [ebx+4];TFXIniFile.ReadString
 00744E05    mov         edx,dword ptr [ebp-40]
 00744E08    mov         eax,7C3E64;^'Text data'
 00744E0D    call        @UStrAsg
 00744E12    xor         eax,eax
 00744E14    pop         edx
 00744E15    pop         ecx
 00744E16    pop         ecx
 00744E17    mov         dword ptr fs:[eax],edx
 00744E1A    push        744E34
 00744E1F    lea         eax,[ebp-40]
 00744E22    mov         edx,10
 00744E27    call        @UStrArrayClr
 00744E2C    ret
>00744E2D    jmp         @HandleFinally
>00744E32    jmp         00744E1F
 00744E34    pop         edi
 00744E35    pop         esi
 00744E36    pop         ebx
 00744E37    mov         esp,ebp
 00744E39    pop         ebp
 00744E3A    ret
*}
end;

//00745620
{*procedure sub_00745620(?:?; ?:?; ?:?);
begin
 00745620    push        ebp
 00745621    mov         ebp,esp
 00745623    add         esp,0FFFFFF9C
 00745626    push        esi
 00745627    push        edi
 00745628    xor         ecx,ecx
 0074562A    mov         dword ptr [ebp-5C],ecx
 0074562D    mov         dword ptr [ebp-60],ecx
 00745630    mov         dword ptr [ebp-64],ecx
 00745633    mov         dword ptr [ebp-50],ecx
 00745636    mov         dword ptr [ebp-54],ecx
 00745639    mov         dword ptr [ebp-58],ecx
 0074563C    mov         dword ptr [ebp-8],ecx
 0074563F    mov         dword ptr [ebp-0C],ecx
 00745642    mov         esi,eax
 00745644    lea         edi,[ebp-4C]
 00745647    mov         ecx,10
 0074564C    rep movs    dword ptr [edi],dword ptr [esi]
 0074564E    mov         dword ptr [ebp-4],edx
 00745651    mov         eax,dword ptr [ebp-4]
 00745654    call        @UStrAddRef
 00745659    mov         esi,dword ptr [ebp+8]
 0074565C    add         esi,0FFFFFFF8
 0074565F    xor         eax,eax
 00745661    push        ebp
 00745662    push        745848
 00745667    push        dword ptr fs:[eax]
 0074566A    mov         dword ptr fs:[eax],esp
 0074566D    mov         eax,dword ptr [ebp+8]
 00745670    mov         eax,dword ptr [eax-4]
 00745673    mov         eax,dword ptr [eax+3C8]
 00745679    mov         eax,dword ptr [eax+2BC]
 0074567F    call        TListItems.Add
 00745684    mov         dword ptr [esi],eax
 00745686    mov         eax,dword ptr [esi]
 00745688    mov         edx,dword ptr [ebp-4]
 0074568B    call        TListItem.SetCaption
 00745690    lea         eax,[ebp-54]
 00745693    push        eax
 00745694    lea         eax,[ebp-58]
 00745697    lea         edx,[ebp-44]
 0074569A    mov         ecx,0
 0074569F    call        @LStrFromString
 007456A4    mov         eax,dword ptr [ebp-58]
 007456A7    mov         cl,20
 007456A9    mov         dl,2C
 007456AB    call        005DDB14
 007456B0    mov         edx,dword ptr [ebp-54]
 007456B3    lea         eax,[ebp-50]
 007456B6    call        @UStrFromLStr
 007456BB    mov         edx,dword ptr [ebp-50]
 007456BE    mov         eax,dword ptr [esi]
 007456C0    mov         eax,dword ptr [eax+8]
 007456C3    mov         ecx,dword ptr [eax]
 007456C5    call        dword ptr [ecx+3C]
 007456C8    fldz
 007456CA    fcomp       qword ptr [ebp-4C]
 007456CD    wait
 007456CE    fnstsw      al
 007456D0    sahf
>007456D1    jne         007456F3
 007456D3    mov         eax,dword ptr [esi]
 007456D5    mov         eax,dword ptr [eax+8]
 007456D8    mov         edx,745864;'-'
 007456DD    mov         ecx,dword ptr [eax]
 007456DF    call        dword ptr [ecx+3C]
 007456E2    mov         eax,dword ptr [esi]
 007456E4    mov         eax,dword ptr [eax+8]
 007456E7    mov         edx,745864;'-'
 007456EC    mov         ecx,dword ptr [eax]
 007456EE    call        dword ptr [ecx+3C]
>007456F1    jmp         00745733
 007456F3    push        dword ptr [ebp-48]
 007456F6    push        dword ptr [ebp-4C]
 007456F9    lea         edx,[ebp-8]
 007456FC    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 00745701    call        004220EC
 00745706    mov         eax,dword ptr [esi]
 00745708    mov         eax,dword ptr [eax+8]
 0074570B    mov         edx,dword ptr [ebp-8]
 0074570E    mov         ecx,dword ptr [eax]
 00745710    call        dword ptr [ecx+3C]
 00745713    push        dword ptr [ebp-48]
 00745716    push        dword ptr [ebp-4C]
 00745719    lea         edx,[ebp-0C]
 0074571C    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 00745721    call        00422104
 00745726    mov         eax,dword ptr [esi]
 00745728    mov         eax,dword ptr [eax+8]
 0074572B    mov         edx,dword ptr [ebp-0C]
 0074572E    mov         ecx,dword ptr [eax]
 00745730    call        dword ptr [ecx+3C]
 00745733    lea         edx,[ebp-60]
 00745736    movzx       eax,byte ptr [ebp-10]
 0074573A    call        IntToStr
 0074573F    push        dword ptr [ebp-60]
 00745742    push        745874;'.'
 00745747    lea         edx,[ebp-64]
 0074574A    movzx       eax,byte ptr [ebp-0F]
 0074574E    call        IntToStr
 00745753    push        dword ptr [ebp-64]
 00745756    lea         eax,[ebp-5C]
 00745759    mov         edx,3
 0074575E    call        @UStrCatN
 00745763    mov         edx,dword ptr [ebp-5C]
 00745766    mov         eax,dword ptr [esi]
 00745768    mov         eax,dword ptr [eax+8]
 0074576B    mov         ecx,dword ptr [eax]
 0074576D    call        dword ptr [ecx+3C]
 00745770    movzx       eax,byte ptr [ebp-10]
 00745774    mov         edx,100
 00745779    mul         eax,edx
 0074577B    mov         ecx,eax
>0074577D    jno         00745784
 0074577F    call        @IntOver
 00745784    movzx       eax,byte ptr [ebp-0F]
 00745788    add         ecx,eax
>0074578A    jno         00745791
 0074578C    call        @IntOver
 00745791    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00745796    mov         eax,dword ptr [eax]
 00745798    movzx       eax,word ptr [eax+4]
 0074579C    mov         edx,100
 007457A1    mul         eax,edx
>007457A3    jno         007457AA
 007457A5    call        @IntOver
 007457AA    mov         edx,dword ptr ds:[7C4800];^gvar_007CA844:TToolInfo
 007457B0    mov         edx,dword ptr [edx]
 007457B2    movzx       edx,word ptr [edx+6]
 007457B6    add         eax,edx
>007457B8    jno         007457BF
 007457BA    call        @IntOver
 007457BF    cmp         ecx,eax
>007457C1    jbe         007457D0
 007457C3    mov         eax,dword ptr [ebp+8]
 007457C6    mov         eax,dword ptr [eax-4]
 007457C9    mov         byte ptr [eax+3D4],1
 007457D0    movzx       ecx,byte ptr [ebp-10]
 007457D4    test        cl,cl
>007457D6    jbe         0074580B
 007457D8    movzx       eax,cl
 007457DB    mov         edx,100
 007457E0    mul         eax,edx
>007457E2    jno         007457E9
 007457E4    call        @IntOver
 007457E9    movzx       edx,byte ptr [ebp-0F]
 007457ED    add         eax,edx
>007457EF    jno         007457F6
 007457F1    call        @IntOver
 007457F6    cmp         eax,dword ptr ds:[7C3E6C];0x300 gvar_007C3E6C
>007457FC    jge         0074580B
 007457FE    mov         eax,dword ptr [ebp+8]
 00745801    mov         eax,dword ptr [eax-4]
 00745804    mov         byte ptr [eax+3D5],1
 0074580B    xor         eax,eax
 0074580D    pop         edx
 0074580E    pop         ecx
 0074580F    pop         ecx
 00745810    mov         dword ptr fs:[eax],edx
 00745813    push        74584F
 00745818    lea         eax,[ebp-64]
 0074581B    mov         edx,3
 00745820    call        @UStrArrayClr
 00745825    lea         eax,[ebp-58]
 00745828    mov         edx,2
 0074582D    call        @LStrArrayClr
 00745832    lea         eax,[ebp-50]
 00745835    call        @UStrClr
 0074583A    lea         eax,[ebp-0C]
 0074583D    mov         edx,3
 00745842    call        @UStrArrayClr
 00745847    ret
>00745848    jmp         @HandleFinally
>0074584D    jmp         00745818
 0074584F    pop         edi
 00745850    pop         esi
 00745851    mov         esp,ebp
 00745853    pop         ebp
 00745854    ret
end;*}

//00745878
procedure TConfigInfoDlg.Populate(FXCI:TFXCIRec; Clear:Boolean);
begin
{*
 00745878    push        ebp
 00745879    mov         ebp,esp
 0074587B    add         esp,0FFFFFDF8
 00745881    push        esi
 00745882    push        edi
 00745883    mov         esi,edx
 00745885    lea         edi,[ebp-208]
 0074588B    push        ecx
 0074588C    mov         ecx,80
 00745891    rep movs    dword ptr [edi],dword ptr [esi]
 00745893    pop         ecx
 00745894    mov         dword ptr [ebp-4],eax
 00745897    test        cl,cl
>00745899    je          007458AC
 0074589B    mov         eax,dword ptr [ebp-4]
 0074589E    mov         eax,dword ptr [eax+3C8];TConfigInfoDlg.ListView1:TListView
 007458A4    mov         edx,dword ptr [eax]
 007458A6    call        dword ptr [edx+114];TCustomListView.Clear
 007458AC    push        ebp
 007458AD    mov         edx,dword ptr ds:[7C3E58];^'Panel data'
 007458B3    lea         eax,[ebp-208]
 007458B9    call        00745620
 007458BE    pop         ecx
 007458BF    push        ebp
 007458C0    mov         edx,dword ptr ds:[7C3E5C];^'IO data'
 007458C6    lea         eax,[ebp-1C8]
 007458CC    call        00745620
 007458D1    pop         ecx
 007458D2    push        ebp
 007458D3    mov         edx,dword ptr ds:[7C3E60];^'Address data'
 007458D9    lea         eax,[ebp-188]
 007458DF    call        00745620
 007458E4    pop         ecx
 007458E5    push        ebp
 007458E6    mov         edx,dword ptr ds:[7C3E64];^'Text data'
 007458EC    lea         eax,[ebp-148]
 007458F2    call        00745620
 007458F7    pop         ecx
 007458F8    push        ebp
 007458F9    mov         edx,dword ptr ds:[7C3E68];^'Written by'
 007458FF    lea         eax,[ebp-0C8]
 00745905    call        00745620
 0074590A    pop         ecx
 0074590B    pop         edi
 0074590C    pop         esi
 0074590D    mov         esp,ebp
 0074590F    pop         ebp
 00745910    ret
*}
end;

//00745914
procedure TConfigInfoDlg.Populate(FXPanel:TFXPanel; Clear:Boolean);
begin
{*
 00745914    push        ebp
 00745915    mov         ebp,esp
 00745917    push        0
 00745919    push        0
 0074591B    push        0
 0074591D    push        0
 0074591F    push        0
 00745921    push        ebx
 00745922    push        esi
 00745923    push        edi
 00745924    mov         esi,edx
 00745926    mov         edi,eax
 00745928    xor         eax,eax
 0074592A    push        ebp
 0074592B    push        745A09
 00745930    push        dword ptr fs:[eax]
 00745933    mov         dword ptr fs:[eax],esp
 00745936    test        cl,cl
>00745938    je          00745948
 0074593A    mov         eax,dword ptr [edi+3C8];TConfigInfoDlg.ListView1:TListView
 00745940    mov         edx,dword ptr [eax]
 00745942    call        dword ptr [edx+114];TCustomListView.Clear
 00745948    mov         eax,dword ptr [edi+3C8];TConfigInfoDlg.ListView1:TListView
 0074594E    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00745954    call        TListItems.Add
 00745959    mov         ebx,eax
 0074595B    lea         edx,[ebp-10]
 0074595E    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 00745961    movzx       eax,byte ptr [eax+122]
 00745968    call        IntToStr
 0074596D    mov         ecx,dword ptr [ebp-10]
 00745970    lea         eax,[ebp-0C]
 00745973    mov         edx,745A24;'00'
 00745978    call        @UStrCat3
 0074597D    mov         eax,dword ptr [ebp-0C]
 00745980    lea         ecx,[ebp-8]
 00745983    mov         edx,2
 00745988    call        00431F5C
 0074598D    push        dword ptr [ebp-8]
 00745990    push        745A38;' - '
 00745995    mov         eax,dword ptr [esi+4];TFXPanel.iType:Integer
 00745998    add         eax,0FFFFFFFD
 0074599B    cmp         eax,5
>0074599E    jbe         007459A5
 007459A0    call        @BoundErr
 007459A5    add         eax,3
 007459A8    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 007459AE    push        dword ptr [edx+eax*4-0C]
 007459B2    lea         eax,[ebp-4]
 007459B5    mov         edx,3
 007459BA    call        @UStrCatN
 007459BF    mov         edx,dword ptr [ebp-4]
 007459C2    mov         eax,ebx
 007459C4    call        TListItem.SetCaption
 007459C9    lea         edx,[ebp-14]
 007459CC    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 007459CF    call        006A2434
 007459D4    mov         edx,dword ptr [ebp-14]
 007459D7    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 007459DA    mov         ecx,dword ptr [eax]
 007459DC    call        dword ptr [ecx+3C];TStrings.Add
 007459DF    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 007459E2    lea         edx,[eax+4];TFXPCI.FXCI:TFXCIRec
 007459E5    xor         ecx,ecx
 007459E7    mov         eax,edi
 007459E9    call        TConfigInfoDlg.Populate
 007459EE    xor         eax,eax
 007459F0    pop         edx
 007459F1    pop         ecx
 007459F2    pop         ecx
 007459F3    mov         dword ptr fs:[eax],edx
 007459F6    push        745A10
 007459FB    lea         eax,[ebp-14]
 007459FE    mov         edx,5
 00745A03    call        @UStrArrayClr
 00745A08    ret
>00745A09    jmp         @HandleFinally
>00745A0E    jmp         007459FB
 00745A10    pop         edi
 00745A11    pop         esi
 00745A12    pop         ebx
 00745A13    mov         esp,ebp
 00745A15    pop         ebp
 00745A16    ret
*}
end;

//00745A40
procedure TConfigInfoDlg.Populate(FXNet:TFXNet; Clear:Boolean);
begin
{*
 00745A40    push        ebx
 00745A41    push        esi
 00745A42    push        edi
 00745A43    mov         ebx,ecx
 00745A45    mov         edi,edx
 00745A47    mov         esi,eax
 00745A49    xor         edx,edx
 00745A4B    mov         eax,dword ptr [esi+3D0];TConfigInfoDlg.Panel1:TPanel
 00745A51    call        TControl.SetVisible
 00745A56    mov         byte ptr [esi+3D4],0;TConfigInfoDlg.WarnForIncompatibleVersion:Boolean
 00745A5D    mov         byte ptr [esi+3D5],0;TConfigInfoDlg.WarnForWinFX32Conf:Boolean
 00745A64    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00745A6A    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00745A70    call        TListItems.BeginUpdate
 00745A75    test        bl,bl
>00745A77    je          00745A87
 00745A79    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00745A7F    mov         edx,dword ptr [eax]
 00745A81    call        dword ptr [edx+114];TCustomListView.Clear
 00745A87    xor         ebx,ebx
 00745A89    mov         edx,ebx
 00745A8B    mov         eax,edi
 00745A8D    call        TFXNet.GetPanel
 00745A92    test        eax,eax
>00745A94    je          00745AAA
 00745A96    mov         edx,ebx
 00745A98    mov         eax,edi
 00745A9A    call        TFXNet.GetPanel
 00745A9F    mov         edx,eax
 00745AA1    xor         ecx,ecx
 00745AA3    mov         eax,esi
 00745AA5    call        TConfigInfoDlg.Populate
 00745AAA    inc         ebx
 00745AAB    cmp         ebx,21
>00745AAE    jne         00745A89
 00745AB0    mov         eax,dword ptr [esi+3C8];TConfigInfoDlg.ListView1:TListView
 00745AB6    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00745ABC    call        TListItems.EndUpdate
 00745AC1    pop         edi
 00745AC2    pop         esi
 00745AC3    pop         ebx
 00745AC4    ret
*}
end;

//00745AC8
procedure TConfigInfoDlg.FormCreate(Sender:TObject);
begin
{*
 00745AC8    push        ebp
 00745AC9    mov         ebp,esp
 00745ACB    add         esp,0FFFFFFE8
 00745ACE    push        ebx
 00745ACF    xor         ecx,ecx
 00745AD1    mov         dword ptr [ebp-4],ecx
 00745AD4    mov         dword ptr [ebp-18],ecx
 00745AD7    mov         ebx,eax
 00745AD9    xor         eax,eax
 00745ADB    push        ebp
 00745ADC    push        745B4A
 00745AE1    push        dword ptr fs:[eax]
 00745AE4    mov         dword ptr fs:[eax],esp
 00745AE7    lea         eax,[ebp-4]
 00745AEA    push        eax
 00745AEB    mov         eax,745B64;'Configuration info'
 00745AF0    mov         dword ptr [ebp-14],eax
 00745AF3    mov         byte ptr [ebp-10],11
 00745AF7    lea         edx,[ebp-18]
 00745AFA    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00745AFF    mov         eax,dword ptr [eax]
 00745B01    call        005DDC74
 00745B06    mov         eax,dword ptr [ebp-18]
 00745B09    mov         dword ptr [ebp-0C],eax
 00745B0C    mov         byte ptr [ebp-8],11
 00745B10    lea         edx,[ebp-14]
 00745B13    mov         ecx,1
 00745B18    mov         eax,745B98;'%s (%s)'
 00745B1D    call        Format
 00745B22    mov         edx,dword ptr [ebp-4]
 00745B25    mov         eax,ebx
 00745B27    call        TControl.SetText
 00745B2C    xor         eax,eax
 00745B2E    pop         edx
 00745B2F    pop         ecx
 00745B30    pop         ecx
 00745B31    mov         dword ptr fs:[eax],edx
 00745B34    push        745B51
 00745B39    lea         eax,[ebp-18]
 00745B3C    call        @UStrClr
 00745B41    lea         eax,[ebp-4]
 00745B44    call        @UStrClr
 00745B49    ret
>00745B4A    jmp         @HandleFinally
>00745B4F    jmp         00745B39
 00745B51    pop         ebx
 00745B52    mov         esp,ebp
 00745B54    pop         ebp
 00745B55    ret
*}
end;

//00745BA8
procedure TConfigInfoDlg.FormShow(Sender:TObject);
begin
{*
 00745BA8    push        ebx
 00745BA9    mov         ebx,eax
 00745BAB    cmp         byte ptr [ebx+3D4],0;TConfigInfoDlg.WarnForIncompatibleVersion:Boolean
>00745BB2    je          00745BC3
 00745BB4    mov         dl,1
 00745BB6    mov         eax,dword ptr [ebx+3D0];TConfigInfoDlg.Panel1:TPanel
 00745BBC    call        TControl.SetVisible
>00745BC1    jmp         00745BD0
 00745BC3    xor         edx,edx
 00745BC5    mov         eax,dword ptr [ebx+3D0];TConfigInfoDlg.Panel1:TPanel
 00745BCB    call        TControl.SetVisible
 00745BD0    cmp         byte ptr [ebx+3D5],0;TConfigInfoDlg.WarnForWinFX32Conf:Boolean
>00745BD7    je          00745BE3
 00745BD9    mov         eax,[007C3E54];^'Warning! Parts or all of this configuration is made with the WinFX32 co...
 00745BDE    call        ShowMessage
 00745BE3    pop         ebx
 00745BE4    ret
*}
end;

//00745BE8
procedure TConfigInfoDlg.ListView1CustomDrawItem(Sender:TCustomListView; Item:TListItem; var DefaultDraw:Boolean; State:TCustomDrawState);
begin
{*
 00745BE8    push        ebp
 00745BE9    mov         ebp,esp
 00745BEB    push        ebx
 00745BEC    push        esi
 00745BED    mov         esi,ecx
 00745BEF    mov         ebx,eax
 00745BF1    mov         eax,esi
 00745BF3    call        TListItem.GetIndex
 00745BF8    mov         ecx,6
 00745BFD    cdq
 00745BFE    idiv        eax,ecx
 00745C00    test        edx,edx
>00745C02    jne         00745C3A
 00745C04    mov         eax,dword ptr [ebx+3C8];TConfigInfoDlg.ListView1:TListView
 00745C0A    mov         eax,dword ptr [eax+298];TListView.FCanvas:TCanvas
 00745C10    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00745C13    mov         edx,0FFCCB6
 00745C18    call        TBrush.SetColor
 00745C1D    mov         eax,dword ptr [ebx+3C8];TConfigInfoDlg.ListView1:TListView
 00745C23    mov         eax,dword ptr [eax+298];TListView.FCanvas:TCanvas
 00745C29    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00745C2C    movzx       edx,byte ptr ds:[745C74];0x1 gvar_00745C74
 00745C33    call        TFont.SetStyle
>00745C38    jmp         00745C6E
 00745C3A    mov         eax,dword ptr [ebx+3C8];TConfigInfoDlg.ListView1:TListView
 00745C40    mov         eax,dword ptr [eax+298];TListView.FCanvas:TCanvas
 00745C46    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00745C49    mov         edx,0FF000005
 00745C4E    call        TBrush.SetColor
 00745C53    mov         eax,dword ptr [ebx+3C8];TConfigInfoDlg.ListView1:TListView
 00745C59    mov         eax,dword ptr [eax+298];TListView.FCanvas:TCanvas
 00745C5F    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00745C62    movzx       edx,byte ptr ds:[745C78];0x0 gvar_00745C78
 00745C69    call        TFont.SetStyle
 00745C6E    pop         esi
 00745C6F    pop         ebx
 00745C70    pop         ebp
 00745C71    ret         8
*}
end;

Initialization
Finalization
//00745C7C
{*
 00745C7C    push        ebp
 00745C7D    mov         ebp,esp
 00745C7F    xor         eax,eax
 00745C81    push        ebp
 00745C82    push        745CDF
 00745C87    push        dword ptr fs:[eax]
 00745C8A    mov         dword ptr fs:[eax],esp
 00745C8D    inc         dword ptr ds:[902CA0]
>00745C93    jne         00745CD1
 00745C95    mov         eax,7C3E54;^'Warning! Parts or all of this configuration is made with the WinFX32 config...
 00745C9A    call        @UStrClr
 00745C9F    mov         eax,7C3E58;^'Panel data'
 00745CA4    call        @UStrClr
 00745CA9    mov         eax,7C3E5C;^'IO data'
 00745CAE    call        @UStrClr
 00745CB3    mov         eax,7C3E60;^'Address data'
 00745CB8    call        @UStrClr
 00745CBD    mov         eax,7C3E64;^'Text data'
 00745CC2    call        @UStrClr
 00745CC7    mov         eax,7C3E68;^'Written by'
 00745CCC    call        @UStrClr
 00745CD1    xor         eax,eax
 00745CD3    pop         edx
 00745CD4    pop         ecx
 00745CD5    pop         ecx
 00745CD6    mov         dword ptr fs:[eax],edx
 00745CD9    push        745CE6
 00745CDE    ret
>00745CDF    jmp         @HandleFinally
>00745CE4    jmp         00745CDE
 00745CE6    pop         ebp
 00745CE7    ret
*}
end.