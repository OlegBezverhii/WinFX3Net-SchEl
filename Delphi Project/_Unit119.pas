//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit119;

interface

uses
  SysUtils, Classes, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TComparer<FXCommMgr.TCommTask> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TCommTask>.Default(?:?);//00750160
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TFXCommHandler = class(TForm)
  published
    Bevel1:TBevel;//f3C0
    lbCommLog:TLabel;//f3C4
    Memo1:TMemo;//f3C8
    cbShowInfo:TCheckBox;//f3CC
    Panel1:TPanel;//f3D0
    lbBefore:TLabel;//f3D4
    PrepareBtn:TButton;//f3D8
    ReceiveBtn:TButton;//f3DC
    SendBtn:TButton;//f3E0
    RestartBtn:TButton;//f3E4
    CloseBtn:TButton;//f3E8
    gbPanelNum:TGroupBox;//f3EC
    lbPanelNum:TLabel;//f3F0
    rgPanelType:TRadioGroup;//f3F4
    cbRestart:TCheckBox;//f3F8
    RestartTimer:TTimer;//f3FC
    procedure CloseBtnClick(Sender:TObject);//00751CD0
    procedure RestartBtnClick(Sender:TObject);//00751C88
    procedure SendBtnClick(Sender:TObject);//00751C50
    procedure Translate(IniFile:TFXIniFile);//007511A4
    procedure CommDllOk;//00750DFC
    procedure RestartTimerTimer(Sender:TObject);//00751CA4
    procedure CommStateReport(CommState:TCommState; Section:Integer; ReportMsg:string);//00750E0C
    procedure FormShow(Sender:TObject);//00751C20
    procedure FormCreate(Sender:TObject);//00751114
    procedure FormDestroy(Sender:TObject);//00751188
    procedure FormClose(Sender:TObject; var Action:UITypes.TCloseAction);//00751198
    procedure ReceiveBtnClick(Sender:TObject);//00751C6C
    procedure PrepareBtnClick(Sender:TObject);//00751C3C
    procedure SetComm(AutoMode:Integer; CommPort:Integer; BaudRate:Integer);//00751C24
  end;
    destructor TCommTask>.Destroy();//0074FD08
    function TCommTask>.GetEnumerator:TEnumerator<FXCommMgr.TCommTask>;//0074FD2C
    //procedure TCommTask>.ToArray(?:?);//0074FD34
    function TCommTask>.MoveNext:Boolean;//0074FDE8
    procedure sub_0074FE38(?:TList<FXCommMgr.TCommTask>);//0074FE38
    //procedure sub_0074FE44(?:?; ?:?);//0074FE44
    //procedure sub_0074FE50(?:?; ?:?; ?:?);//0074FE50
    procedure sub_0074FE60;//0074FE60
    //procedure sub_0074FE68(?:?);//0074FE68
    constructor sub_0074FE80;//0074FE80
    constructor sub_0074FEF8(AComparer:IComparer<FXCommMgr.TCommTask>);//0074FEF8
    destructor TCommTask>.Destroy();//0074FFA8
    //procedure TCommTask>.Error(Msg:string; Data:NativeInt; ?:?);//0074FFF4
    procedure TCommTask>.Add(Value:TCommTask);//0075002C
    //procedure TCommTask>.ToArray(?:?);//0075003C
    procedure TCommTask>.GetEnumerator;//00750050
    //function sub_00750060(?:?):?;//00750060
    procedure sub_0075007C;//0075007C
    procedure sub_00750084;//00750084
    constructor sub_0075008C(AList:TList<FXCommMgr.TCommTask>);//0075008C
    function TCommTask>.TEnumerator.MoveNext:Boolean;//007500D0
    //procedure sub_007500F0(?:?; ?:?);//007500F0
    constructor sub_0075011C(AOwnsObjects:Boolean);//0075011C

implementation

{$R *.DFM}

//0074FD08
destructor TEnumerable<FXCommMgr.TCommTask>.Destroy();
begin
{*
 0074FD08    push        ebx
 0074FD09    push        esi
 0074FD0A    call        @BeforeDestruction
 0074FD0F    mov         ebx,edx
 0074FD11    mov         esi,eax
 0074FD13    mov         dl,0FC
 0074FD15    and         dl,bl
 0074FD17    mov         eax,esi
 0074FD19    call        TObject.Destroy
 0074FD1E    test        bl,bl
>0074FD20    jle         0074FD29
 0074FD22    mov         eax,esi
 0074FD24    call        @ClassDestroy
 0074FD29    pop         esi
 0074FD2A    pop         ebx
 0074FD2B    ret
*}
end;

//0074FD2C
function TEnumerable<FXCommMgr.TCommTask>.GetEnumerator:TEnumerator<FXCommMgr.TCommTask>;
begin
{*
 0074FD2C    mov         edx,dword ptr [eax]
 0074FD2E    call        dword ptr [edx]
 0074FD30    ret
*}
end;

//0074FD34
{*procedure TEnumerable<FXCommMgr.TCommTask>.ToArray(?:?);
begin
 0074FD34    push        ebp
 0074FD35    mov         ebp,esp
 0074FD37    add         esp,0FFFFFFF4
 0074FD3A    push        ebx
 0074FD3B    mov         dword ptr [ebp-4],edx
 0074FD3E    mov         ebx,eax
 0074FD40    mov         dl,1
 0074FD42    mov         eax,[007497F4];TList<FXCommMgr.TCommTask>
 0074FD47    call        0074FE80
 0074FD4C    mov         dword ptr [ebp-8],eax
 0074FD4F    xor         eax,eax
 0074FD51    push        ebp
 0074FD52    push        74FDDC
 0074FD57    push        dword ptr fs:[eax]
 0074FD5A    mov         dword ptr fs:[eax],esp
 0074FD5D    mov         eax,ebx
 0074FD5F    call        TEnumerable<FXCommMgr.TCommTask>.GetEnumerator
 0074FD64    mov         dword ptr [ebp-0C],eax
 0074FD67    xor         eax,eax
 0074FD69    push        ebp
 0074FD6A    push        74FDB4
 0074FD6F    push        dword ptr fs:[eax]
 0074FD72    mov         dword ptr fs:[eax],esp
>0074FD75    jmp         0074FD8A
 0074FD77    mov         eax,dword ptr [ebp-0C]
 0074FD7A    mov         edx,dword ptr [eax]
 0074FD7C    call        dword ptr [edx]
 0074FD7E    mov         ebx,eax
 0074FD80    mov         edx,ebx
 0074FD82    mov         eax,dword ptr [ebp-8]
 0074FD85    call        TList<FXCommMgr.TCommTask>.Add
 0074FD8A    mov         eax,dword ptr [ebp-0C]
 0074FD8D    call        TEnumerator<FXCommMgr.TCommTask>.MoveNext
 0074FD92    test        al,al
>0074FD94    jne         0074FD77
 0074FD96    xor         eax,eax
 0074FD98    pop         edx
 0074FD99    pop         ecx
 0074FD9A    pop         ecx
 0074FD9B    mov         dword ptr fs:[eax],edx
 0074FD9E    push        74FDBB
 0074FDA3    cmp         dword ptr [ebp-0C],0
>0074FDA7    je          0074FDB3
 0074FDA9    mov         dl,1
 0074FDAB    mov         eax,dword ptr [ebp-0C]
 0074FDAE    mov         ecx,dword ptr [eax]
 0074FDB0    call        dword ptr [ecx-4]
 0074FDB3    ret
>0074FDB4    jmp         @HandleFinally
>0074FDB9    jmp         0074FDA3
 0074FDBB    mov         edx,dword ptr [ebp-4]
 0074FDBE    mov         eax,dword ptr [ebp-8]
 0074FDC1    call        TList<FXCommMgr.TCommTask>.ToArray
 0074FDC6    xor         eax,eax
 0074FDC8    pop         edx
 0074FDC9    pop         ecx
 0074FDCA    pop         ecx
 0074FDCB    mov         dword ptr fs:[eax],edx
 0074FDCE    push        74FDE3
 0074FDD3    mov         eax,dword ptr [ebp-8]
 0074FDD6    call        TObject.Free
 0074FDDB    ret
>0074FDDC    jmp         @HandleFinally
>0074FDE1    jmp         0074FDD3
 0074FDE3    pop         ebx
 0074FDE4    mov         esp,ebp
 0074FDE6    pop         ebp
 0074FDE7    ret
end;*}

//0074FDE8
function TEnumerator<FXCommMgr.TCommTask>.MoveNext:Boolean;
begin
{*
 0074FDE8    mov         edx,dword ptr [eax]
 0074FDEA    call        dword ptr [edx+4]
 0074FDED    ret
*}
end;

//0074FE38
procedure sub_0074FE38(?:TList<FXCommMgr.TCommTask>);
begin
{*
 0074FE38    add         eax,8
 0074FE3B    call        004357A0
 0074FE40    ret
*}
end;

//0074FE44
{*procedure sub_0074FE44(?:?; ?:?);
begin
 0074FE44    push        ebx
 0074FE45    mov         edx,dword ptr [edx]
 0074FE47    mov         ebx,dword ptr [eax]
 0074FE49    call        dword ptr [ebx+8]
 0074FE4C    pop         ebx
 0074FE4D    ret
end;*}

//0074FE50
{*procedure sub_0074FE50(?:?; ?:?; ?:?);
begin
 0074FE50    push        ebx
 0074FE51    mov         edx,dword ptr [edx]
 0074FE53    mov         ecx,dword ptr [ecx]
 0074FE55    mov         eax,dword ptr [eax+24]
 0074FE58    mov         ebx,dword ptr [eax]
 0074FE5A    call        dword ptr [ebx+0C]
 0074FE5D    pop         ebx
 0074FE5E    ret
end;*}

//0074FE60
procedure sub_0074FE60;
begin
{*
 0074FE60    call        TList<FXCommMgr.TCommTask>.GetEnumerator
 0074FE65    ret
*}
end;

//0074FE68
{*procedure sub_0074FE68(?:?);
begin
 0074FE68    push        ebx
 0074FE69    cmp         word ptr [eax+2A],0
>0074FE6E    je          0074FE7D
 0074FE70    push        ecx
 0074FE71    mov         ebx,eax
 0074FE73    mov         ecx,edx
 0074FE75    mov         edx,eax
 0074FE77    mov         eax,dword ptr [ebx+2C]
 0074FE7A    call        dword ptr [ebx+28]
 0074FE7D    pop         ebx
 0074FE7E    ret
end;*}

//0074FE80
constructor sub_0074FE80;
begin
{*
 0074FE80    push        ebp
 0074FE81    mov         ebp,esp
 0074FE83    push        0
 0074FE85    push        ebx
 0074FE86    push        esi
 0074FE87    test        dl,dl
>0074FE89    je          0074FE93
 0074FE8B    add         esp,0FFFFFFF0
 0074FE8E    call        @ClassCreate
 0074FE93    mov         ebx,edx
 0074FE95    mov         esi,eax
 0074FE97    xor         eax,eax
 0074FE99    push        ebp
 0074FE9A    push        74FED4
 0074FE9F    push        dword ptr fs:[eax]
 0074FEA2    mov         dword ptr fs:[eax],esp
 0074FEA5    lea         edx,[ebp-4]
 0074FEA8    mov         eax,[0075023C];TComparer<FXCommMgr.TCommTask>
 0074FEAD    call        TComparer<FXCommMgr.TCommTask>.Default
 0074FEB2    mov         ecx,dword ptr [ebp-4]
 0074FEB5    xor         edx,edx
 0074FEB7    mov         eax,esi
 0074FEB9    call        0074FEF8
 0074FEBE    xor         eax,eax
 0074FEC0    pop         edx
 0074FEC1    pop         ecx
 0074FEC2    pop         ecx
 0074FEC3    mov         dword ptr fs:[eax],edx
 0074FEC6    push        74FEDB
 0074FECB    lea         eax,[ebp-4]
 0074FECE    call        @IntfClear
 0074FED3    ret
>0074FED4    jmp         @HandleFinally
>0074FED9    jmp         0074FECB
 0074FEDB    mov         eax,esi
 0074FEDD    test        bl,bl
>0074FEDF    je          0074FEF0
 0074FEE1    call        @AfterConstruction
 0074FEE6    pop         dword ptr fs:[0]
 0074FEED    add         esp,0C
 0074FEF0    mov         eax,esi
 0074FEF2    pop         esi
 0074FEF3    pop         ebx
 0074FEF4    pop         ecx
 0074FEF5    pop         ebp
 0074FEF6    ret
*}
end;

//0074FEF8
constructor sub_0074FEF8(AComparer:IComparer<FXCommMgr.TCommTask>);
begin
{*
 0074FEF8    push        ebp
 0074FEF9    mov         ebp,esp
 0074FEFB    push        0
 0074FEFD    push        ebx
 0074FEFE    push        esi
 0074FEFF    push        edi
 0074FF00    test        dl,dl
>0074FF02    je          0074FF0C
 0074FF04    add         esp,0FFFFFFF0
 0074FF07    call        @ClassCreate
 0074FF0C    mov         esi,ecx
 0074FF0E    mov         ebx,edx
 0074FF10    mov         edi,eax
 0074FF12    xor         eax,eax
 0074FF14    push        ebp
 0074FF15    push        74FF83
 0074FF1A    push        dword ptr fs:[eax]
 0074FF1D    mov         dword ptr fs:[eax],esp
 0074FF20    xor         edx,edx
 0074FF22    mov         eax,edi
 0074FF24    call        TObject.Create
 0074FF29    mov         dword ptr [edi+14],edi
 0074FF2C    mov         dword ptr [edi+10],74FE44;sub_0074FE44
 0074FF33    mov         dword ptr [edi+1C],edi
 0074FF36    mov         dword ptr [edi+18],74FE50;sub_0074FE50
 0074FF3D    mov         eax,[00749430];TList<FXCommMgr.TCommTask>.arrayofT
 0074FF42    mov         dword ptr [edi+0C],eax
 0074FF45    lea         eax,[edi+24]
 0074FF48    mov         edx,esi
 0074FF4A    call        @IntfCopy
 0074FF4F    cmp         dword ptr [edi+24],0
>0074FF53    jne         0074FF6D
 0074FF55    lea         edx,[ebp-4]
 0074FF58    mov         eax,[0075023C];TComparer<FXCommMgr.TCommTask>
 0074FF5D    call        TComparer<FXCommMgr.TCommTask>.Default
 0074FF62    mov         edx,dword ptr [ebp-4]
 0074FF65    lea         eax,[edi+24]
 0074FF68    call        @IntfCopy
 0074FF6D    xor         eax,eax
 0074FF6F    pop         edx
 0074FF70    pop         ecx
 0074FF71    pop         ecx
 0074FF72    mov         dword ptr fs:[eax],edx
 0074FF75    push        74FF8A
 0074FF7A    lea         eax,[ebp-4]
 0074FF7D    call        @IntfClear
 0074FF82    ret
>0074FF83    jmp         @HandleFinally
>0074FF88    jmp         0074FF7A
 0074FF8A    mov         eax,edi
 0074FF8C    test        bl,bl
>0074FF8E    je          0074FF9F
 0074FF90    call        @AfterConstruction
 0074FF95    pop         dword ptr fs:[0]
 0074FF9C    add         esp,0C
 0074FF9F    mov         eax,edi
 0074FFA1    pop         edi
 0074FFA2    pop         esi
 0074FFA3    pop         ebx
 0074FFA4    pop         ecx
 0074FFA5    pop         ebp
 0074FFA6    ret
*}
end;

//0074FFA8
destructor TList<FXCommMgr.TCommTask>.Destroy();
begin
{*
 0074FFA8    push        ebx
 0074FFA9    push        esi
 0074FFAA    call        @BeforeDestruction
 0074FFAF    mov         ebx,edx
 0074FFB1    mov         esi,eax
 0074FFB3    cmp         dword ptr [esi+8],0
>0074FFB7    jle         0074FFC2
 0074FFB9    xor         edx,edx
 0074FFBB    mov         eax,esi
 0074FFBD    call        0074FE38
 0074FFC2    push        0
 0074FFC4    lea         eax,[esi+20]
 0074FFC7    mov         ecx,1
 0074FFCC    mov         edx,dword ptr ds:[749430];TList<FXCommMgr.TCommTask>.arrayofT
 0074FFD2    call        @DynArraySetLength
 0074FFD7    add         esp,4
 0074FFDA    mov         dl,0FC
 0074FFDC    and         dl,bl
 0074FFDE    mov         eax,esi
 0074FFE0    call        TEnumerable<FXCommMgr.TCommTask>.Destroy
 0074FFE5    test        bl,bl
>0074FFE7    jle         0074FFF0
 0074FFE9    mov         eax,esi
 0074FFEB    call        @ClassDestroy
 0074FFF0    pop         esi
 0074FFF1    pop         ebx
 0074FFF2    ret
*}
end;

//0074FFF4
{*procedure TList<FXCommMgr.TCommTask>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0074FFF4    push        ebp
 0074FFF5    mov         ebp,esp
 0074FFF7    add         esp,0FFFFFFF0
 0074FFFA    mov         dword ptr [ebp-8],ecx
 0074FFFD    mov         dword ptr [ebp-4],edx
 00750000    push        dword ptr [ebp+4]
 00750003    mov         eax,dword ptr [ebp-8]
 00750006    mov         dword ptr [ebp-10],eax
 00750009    mov         byte ptr [ebp-0C],0
 0075000D    lea         eax,[ebp-10]
 00750010    push        eax
 00750011    push        0
 00750013    mov         ecx,dword ptr [ebp-4]
 00750016    mov         dl,1
 00750018    mov         eax,[004180BC];EListError
 0075001D    call        Exception.CreateFmt;EListError.Create
>00750022    jmp         @RaiseExcept
end;*}

//0075002C
procedure TList<FXCommMgr.TCommTask>.Add(Value:TCommTask);
begin
{*
 0075002C    push        ecx
 0075002D    mov         dword ptr [esp],edx
 00750030    mov         edx,esp
 00750032    add         eax,8
 00750035    call        0043489C
 0075003A    pop         edx
 0075003B    ret
*}
end;

//0075003C
{*procedure TList<FXCommMgr.TCommTask>.ToArray(?:?);
begin
 0075003C    push        ecx
 0075003D    mov         dword ptr [esp],edx
 00750040    mov         edx,dword ptr [esp]
 00750043    add         eax,8
 00750046    call        00435980
 0075004B    pop         edx
 0075004C    ret
end;*}

//00750050
procedure TList<FXCommMgr.TCommTask>.GetEnumerator;
begin
{*
 00750050    mov         ecx,eax
 00750052    mov         dl,1
 00750054    mov         eax,[00749648];TList<FXCommMgr.TCommTask>.TEnumerator
 00750059    call        0075008C
 0075005E    ret
*}
end;

//00750060
{*function sub_00750060(?:?):?;
begin
 00750060    push        ebx
 00750061    push        esi
 00750062    mov         ebx,dword ptr [eax+4]
 00750065    mov         esi,dword ptr [eax+8]
 00750068    lea         eax,[ebx+8]
 0075006B    mov         edx,esi
 0075006D    call        00434534
 00750072    mov         eax,dword ptr [ebx+20]
 00750075    mov         eax,dword ptr [eax+esi*4]
 00750078    pop         esi
 00750079    pop         ebx
 0075007A    ret
end;*}

//0075007C
procedure sub_0075007C;
begin
{*
 0075007C    call        00750060
 00750081    ret
*}
end;

//00750084
procedure sub_00750084;
begin
{*
 00750084    call        TList<FXCommMgr.TCommTask>.TEnumerator.MoveNext
 00750089    ret
*}
end;

//0075008C
constructor sub_0075008C(AList:TList<FXCommMgr.TCommTask>);
begin
{*
 0075008C    push        ebx
 0075008D    push        esi
 0075008E    push        edi
 0075008F    test        dl,dl
>00750091    je          0075009B
 00750093    add         esp,0FFFFFFF0
 00750096    call        @ClassCreate
 0075009B    mov         esi,ecx
 0075009D    mov         ebx,edx
 0075009F    mov         edi,eax
 007500A1    xor         edx,edx
 007500A3    mov         eax,edi
 007500A5    call        TObject.Create
 007500AA    mov         dword ptr [edi+4],esi
 007500AD    mov         dword ptr [edi+8],0FFFFFFFF
 007500B4    mov         eax,edi
 007500B6    test        bl,bl
>007500B8    je          007500C9
 007500BA    call        @AfterConstruction
 007500BF    pop         dword ptr fs:[0]
 007500C6    add         esp,0C
 007500C9    mov         eax,edi
 007500CB    pop         edi
 007500CC    pop         esi
 007500CD    pop         ebx
 007500CE    ret
*}
end;

//007500D0
function TList<FXCommMgr.TCommTask>.TEnumerator.MoveNext:Boolean;
begin
{*
 007500D0    mov         edx,dword ptr [eax+4]
 007500D3    mov         edx,dword ptr [edx+8]
 007500D6    cmp         edx,dword ptr [eax+8]
>007500D9    jg          007500DE
 007500DB    xor         eax,eax
 007500DD    ret
 007500DE    inc         dword ptr [eax+8]
 007500E1    mov         edx,dword ptr [eax+4]
 007500E4    mov         edx,dword ptr [edx+8]
 007500E7    cmp         edx,dword ptr [eax+8]
 007500EA    setg        al
 007500ED    ret
*}
end;

//007500F0
{*procedure sub_007500F0(?:?; ?:?);
begin
 007500F0    push        ebx
 007500F1    push        esi
 007500F2    push        edi
 007500F3    mov         ebx,ecx
 007500F5    mov         edi,edx
 007500F7    mov         esi,eax
 007500F9    mov         ecx,ebx
 007500FB    mov         edx,edi
 007500FD    mov         eax,esi
 007500FF    call        0074FE68
 00750104    cmp         byte ptr [esi+30],0
>00750108    je          00750116
 0075010A    cmp         bl,1
>0075010D    jne         00750116
 0075010F    mov         eax,edi
 00750111    call        TObject.Free
 00750116    pop         edi
 00750117    pop         esi
 00750118    pop         ebx
 00750119    ret
end;*}

//0075011C
constructor sub_0075011C(AOwnsObjects:Boolean);
begin
{*
 0075011C    push        ebp
 0075011D    mov         ebp,esp
 0075011F    push        ecx
 00750120    push        ebx
 00750121    push        esi
 00750122    test        dl,dl
>00750124    je          0075012E
 00750126    add         esp,0FFFFFFF0
 00750129    call        @ClassCreate
 0075012E    mov         ebx,ecx
 00750130    mov         byte ptr [ebp-1],dl
 00750133    mov         esi,eax
 00750135    xor         edx,edx
 00750137    mov         eax,esi
 00750139    call        0074FE80
 0075013E    mov         byte ptr [esi+30],bl
 00750141    mov         eax,esi
 00750143    cmp         byte ptr [ebp-1],0
>00750147    je          00750158
 00750149    call        @AfterConstruction
 0075014E    pop         dword ptr fs:[0]
 00750155    add         esp,0C
 00750158    mov         eax,esi
 0075015A    pop         esi
 0075015B    pop         ebx
 0075015C    pop         ecx
 0075015D    pop         ebp
 0075015E    ret
*}
end;

//00750160
{*procedure TComparer<FXCommMgr.TCommTask>.Default(?:?);
begin
 00750160    push        ebx
 00750161    mov         ebx,edx
 00750163    mov         ecx,4
 00750168    mov         edx,dword ptr ds:[748CDC];TCommTask
 0075016E    xor         eax,eax
 00750170    call        _LookupVtableInfo
 00750175    mov         edx,eax
 00750177    mov         eax,ebx
 00750179    call        @IntfCopy
 0075017E    pop         ebx
 0075017F    ret
end;*}

//00750DFC
procedure TFXCommHandler.CommDllOk;
begin
{*
 00750DFC    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00750E01    mov         eax,dword ptr [eax]
 00750E03    call        TCommManager.CommDllOk
 00750E08    ret
*}
end;

//00750E0C
procedure TFXCommHandler.CommStateReport(CommState:TCommState; Section:Integer; ReportMsg:string);
begin
{*
 00750E0C    push        ebp
 00750E0D    mov         ebp,esp
 00750E0F    push        0
 00750E11    push        0
 00750E13    push        0
 00750E15    push        ebx
 00750E16    push        esi
 00750E17    push        edi
 00750E18    mov         edi,ecx
 00750E1A    mov         ebx,edx
 00750E1C    mov         esi,eax
 00750E1E    mov         eax,dword ptr [ebp+8]
 00750E21    call        @UStrAddRef
 00750E26    xor         eax,eax
 00750E28    push        ebp
 00750E29    push        750FFB
 00750E2E    push        dword ptr fs:[eax]
 00750E31    mov         dword ptr fs:[eax],esp
 00750E34    mov         eax,dword ptr [esi+3C8];TFXCommHandler.Memo1:TMemo
 00750E3A    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00750E40    mov         edx,dword ptr [ebp+8]
 00750E43    mov         ecx,dword ptr [eax]
 00750E45    call        dword ptr [ecx+3C];TStrings.Add
 00750E48    cmp         bl,11
>00750E4B    jne         00750F23
 00750E51    cmp         edi,1
>00750E54    jne         00750F23
 00750E5A    mov         eax,[007C4470];^gvar_007CA841
 00750E5F    cmp         byte ptr [eax],0
>00750E62    je          00750F23
 00750E68    lea         edx,[ebp-4]
 00750E6B    mov         eax,[007C45FC];^gvar_0090368C:TFXPanel
 00750E70    mov         eax,dword ptr [eax]
 00750E72    mov         eax,dword ptr [eax+8]
 00750E75    call        00671498
 00750E7A    cmp         dword ptr [ebp-4],0
>00750E7E    je          00750EC4
 00750E80    lea         edx,[ebp-8]
 00750E83    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 00750E88    mov         eax,dword ptr [eax]
 00750E8A    call        0066B33C
 00750E8F    mov         edx,dword ptr [ebp-8]
 00750E92    mov         eax,dword ptr [ebp-4]
 00750E95    call        @UStrEqual
>00750E9A    je          00750F23
 00750EA0    mov         eax,dword ptr [esi+3C8];TFXCommHandler.Memo1:TMemo
 00750EA6    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00750EAC    mov         edx,751018;'Reading from this panel is denied!'
 00750EB1    mov         ecx,dword ptr [eax]
 00750EB3    call        dword ptr [ecx+3C];TStrings.Add
 00750EB6    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00750EBB    mov         eax,dword ptr [eax]
 00750EBD    call        TCommManager.Cancel
>00750EC2    jmp         00750F23
 00750EC4    lea         edx,[ebp-0C]
 00750EC7    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 00750ECC    mov         eax,dword ptr [eax]
 00750ECE    call        0066B33C
 00750ED3    mov         edx,dword ptr [ebp-0C]
 00750ED6    mov         eax,[007C45FC];^gvar_0090368C:TFXPanel
 00750EDB    mov         eax,dword ptr [eax]
 00750EDD    mov         eax,dword ptr [eax+8]
 00750EE0    call        TFXPCI.IsLicenseeCompany
 00750EE5    test        al,al
>00750EE7    jne         00750F23
 00750EE9    mov         eax,[007C45FC];^gvar_0090368C:TFXPanel
 00750EEE    mov         eax,dword ptr [eax]
 00750EF0    mov         eax,dword ptr [eax+8]
 00750EF3    mov         edx,75106C;'Panel itself'
 00750EF8    call        TFXPCI.IsLicenseeCompany
 00750EFD    test        al,al
>00750EFF    jne         00750F23
 00750F01    mov         eax,dword ptr [esi+3C8];TFXCommHandler.Memo1:TMemo
 00750F07    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00750F0D    mov         edx,751018;'Reading from this panel is denied!'
 00750F12    mov         ecx,dword ptr [eax]
 00750F14    call        dword ptr [ecx+3C];TStrings.Add
 00750F17    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00750F1C    mov         eax,dword ptr [eax]
 00750F1E    call        TCommManager.Cancel
 00750F23    cmp         bl,12
>00750F26    jne         00750F5F
 00750F28    mov         eax,dword ptr [esi+3CC];TFXCommHandler.cbShowInfo:TCheckBox
 00750F2E    mov         edx,dword ptr [eax]
 00750F30    call        dword ptr [edx+108];TCheckBox.GetChecked
 00750F36    test        al,al
>00750F38    je          00750F5F
 00750F3A    mov         edx,dword ptr ds:[7C45FC];^gvar_0090368C:TFXPanel
 00750F40    mov         edx,dword ptr [edx]
 00750F42    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 00750F47    mov         eax,dword ptr [eax]
 00750F49    mov         cl,1
 00750F4B    call        TConfigInfoDlg.Populate
 00750F50    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 00750F55    mov         eax,dword ptr [eax]
 00750F57    mov         edx,dword ptr [eax]
 00750F59    call        dword ptr [edx+13C]
 00750F5F    cmp         bl,11
>00750F62    jne         00750FB4
 00750F64    cmp         edi,2
>00750F67    jne         00750FB4
 00750F69    mov         eax,[007C4BFC];^gvar_007CA840
 00750F6E    cmp         byte ptr [eax],0
>00750F71    je          00750FB4
 00750F73    mov         eax,[007C45FC];^gvar_0090368C:TFXPanel
 00750F78    mov         eax,dword ptr [eax]
 00750F7A    mov         eax,dword ptr [eax+0C]
 00750F7D    cmp         byte ptr [eax+10C],1
>00750F84    jne         00750FB4
 00750F86    mov         eax,dword ptr [esi+3C8];TFXCommHandler.Memo1:TMemo
 00750F8C    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00750F92    mov         edx,751094;'Reading from networked panel is denied with standalone license!'
 00750F97    mov         ecx,dword ptr [eax]
 00750F99    call        dword ptr [ecx+3C];TStrings.Add
 00750F9C    mov         eax,[007C48B8];^gvar_007C3ED0
 00750FA1    mov         eax,dword ptr [eax]
 00750FA3    call        ShowMessage
 00750FA8    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00750FAD    mov         eax,dword ptr [eax]
 00750FAF    call        TCommManager.Cancel
 00750FB4    cmp         bl,0A
>00750FB7    jne         00750FD8
 00750FB9    mov         eax,dword ptr [esi+3F8];TFXCommHandler.cbRestart:TCheckBox
 00750FBF    mov         edx,dword ptr [eax]
 00750FC1    call        dword ptr [edx+108];TCheckBox.GetChecked
 00750FC7    test        al,al
>00750FC9    je          00750FD8
 00750FCB    mov         dl,1
 00750FCD    mov         eax,dword ptr [esi+3FC];TFXCommHandler.RestartTimer:TTimer
 00750FD3    call        TTimer.SetEnabled
 00750FD8    xor         eax,eax
 00750FDA    pop         edx
 00750FDB    pop         ecx
 00750FDC    pop         ecx
 00750FDD    mov         dword ptr fs:[eax],edx
 00750FE0    push        751002
 00750FE5    lea         eax,[ebp-0C]
 00750FE8    mov         edx,3
 00750FED    call        @UStrArrayClr
 00750FF2    lea         eax,[ebp+8]
 00750FF5    call        @UStrClr
 00750FFA    ret
>00750FFB    jmp         @HandleFinally
>00751000    jmp         00750FE5
 00751002    pop         edi
 00751003    pop         esi
 00751004    pop         ebx
 00751005    mov         esp,ebp
 00751007    pop         ebp
 00751008    ret         4
*}
end;

//00751114
procedure TFXCommHandler.FormCreate(Sender:TObject);
begin
{*
 00751114    push        ebx
 00751115    mov         ebx,eax
 00751117    mov         edx,75115C;'Communication Handler'
 0075111C    mov         eax,ebx
 0075111E    call        TControl.SetText
 00751123    mov         dl,1
 00751125    mov         eax,[00748D08];TCommManager
 0075112A    call        TCommManager.Create;TCommManager.Create
 0075112F    mov         edx,dword ptr ds:[7C4A34];^gvar_00903690:TCommManager
 00751135    mov         dword ptr [edx],eax
 00751137    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 0075113C    mov         eax,dword ptr [eax]
 0075113E    mov         dword ptr [eax+24C],ebx
 00751144    mov         dword ptr [eax+248],750E0C;TFXCommHandler.CommStateReport
 0075114E    pop         ebx
 0075114F    ret
*}
end;

//00751188
procedure TFXCommHandler.FormDestroy(Sender:TObject);
begin
{*
 00751188    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 0075118D    mov         eax,dword ptr [eax]
 0075118F    call        TObject.Free
 00751194    ret
*}
end;

//00751198
procedure TFXCommHandler.FormClose(Sender:TObject; var Action:UITypes.TCloseAction);
begin
{*
 00751198    mov         eax,[007C4420];^gvar_007CA838
 0075119D    mov         byte ptr [eax],0
 007511A0    ret
*}
end;

//007511A4
procedure TFXCommHandler.Translate(IniFile:TFXIniFile);
begin
{*
 007511A4    push        ebp
 007511A5    mov         ebp,esp
 007511A7    mov         ecx,8
 007511AC    push        0
 007511AE    push        0
 007511B0    dec         ecx
>007511B1    jne         007511AC
 007511B3    push        ebx
 007511B4    push        esi
 007511B5    push        edi
 007511B6    mov         ebx,edx
 007511B8    mov         esi,eax
 007511BA    xor         eax,eax
 007511BC    push        ebp
 007511BD    push        751439
 007511C2    push        dword ptr fs:[eax]
 007511C5    mov         dword ptr fs:[eax],esp
 007511C8    push        751454;'Communication Handler'
 007511CD    lea         eax,[ebp-8]
 007511D0    push        eax
 007511D1    mov         ecx,75148C;'sCHCaption'
 007511D6    mov         edx,7514B0;'CommHandlerDlg'
 007511DB    mov         eax,ebx
 007511DD    mov         edi,dword ptr [eax]
 007511DF    call        dword ptr [edi+4];TFXIniFile.ReadString
 007511E2    push        dword ptr [ebp-8]
 007511E5    push        7514DC;' ('
 007511EA    lea         edx,[ebp-0C]
 007511ED    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007511F2    mov         eax,dword ptr [eax]
 007511F4    call        005DDC74
 007511F9    push        dword ptr [ebp-0C]
 007511FC    push        7514F0;')'
 00751201    lea         eax,[ebp-4]
 00751204    mov         edx,4
 00751209    call        @UStrCatN
 0075120E    mov         edx,dword ptr [ebp-4]
 00751211    mov         eax,esi
 00751213    call        TControl.SetText
 00751218    push        751500;'Prepare panel'
 0075121D    lea         eax,[ebp-10]
 00751220    push        eax
 00751221    mov         ecx,751528;'sPrepareBtn'
 00751226    mov         edx,7514B0;'CommHandlerDlg'
 0075122B    mov         eax,ebx
 0075122D    mov         edi,dword ptr [eax]
 0075122F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00751232    mov         edx,dword ptr [ebp-10]
 00751235    mov         eax,dword ptr [esi+3D8];TFXCommHandler.PrepareBtn:TButton
 0075123B    call        TControl.SetText
 00751240    push        75154C;'Send'
 00751245    lea         eax,[ebp-14]
 00751248    push        eax
 00751249    mov         ecx,751564;'sSendBtn'
 0075124E    mov         edx,7514B0;'CommHandlerDlg'
 00751253    mov         eax,ebx
 00751255    mov         edi,dword ptr [eax]
 00751257    call        dword ptr [edi+4];TFXIniFile.ReadString
 0075125A    mov         edx,dword ptr [ebp-14]
 0075125D    mov         eax,dword ptr [esi+3E0];TFXCommHandler.SendBtn:TButton
 00751263    call        TControl.SetText
 00751268    push        751584;'Receive'
 0075126D    lea         eax,[ebp-18]
 00751270    push        eax
 00751271    mov         ecx,7515A0;'sReceiveBtn'
 00751276    mov         edx,7514B0;'CommHandlerDlg'
 0075127B    mov         eax,ebx
 0075127D    mov         edi,dword ptr [eax]
 0075127F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00751282    mov         edx,dword ptr [ebp-18]
 00751285    mov         eax,dword ptr [esi+3DC];TFXCommHandler.ReceiveBtn:TButton
 0075128B    call        TControl.SetText
 00751290    push        7515C4;'Restart panel'
 00751295    lea         eax,[ebp-1C]
 00751298    push        eax
 00751299    mov         ecx,7515EC;'sRestartBtn'
 0075129E    mov         edx,7514B0;'CommHandlerDlg'
 007512A3    mov         eax,ebx
 007512A5    mov         edi,dword ptr [eax]
 007512A7    call        dword ptr [edi+4];TFXIniFile.ReadString
 007512AA    mov         edx,dword ptr [ebp-1C]
 007512AD    mov         eax,dword ptr [esi+3E4];TFXCommHandler.RestartBtn:TButton
 007512B3    call        TControl.SetText
 007512B8    push        751610;'Close'
 007512BD    lea         eax,[ebp-20]
 007512C0    push        eax
 007512C1    mov         ecx,751628;'sCloseBtn'
 007512C6    mov         edx,7514B0;'CommHandlerDlg'
 007512CB    mov         eax,ebx
 007512CD    mov         edi,dword ptr [eax]
 007512CF    call        dword ptr [edi+4];TFXIniFile.ReadString
 007512D2    mov         edx,dword ptr [ebp-20]
 007512D5    mov         eax,dword ptr [esi+3E8];TFXCommHandler.CloseBtn:TButton
 007512DB    call        TControl.SetText
 007512E0    push        751648;'Before proceeding, check that  the cable is connected and that the panel is read...
 007512E5    lea         eax,[ebp-24]
 007512E8    push        eax
 007512E9    mov         ecx,751728;'slbBefore'
 007512EE    mov         edx,7514B0;'CommHandlerDlg'
 007512F3    mov         eax,ebx
 007512F5    mov         edi,dword ptr [eax]
 007512F7    call        dword ptr [edi+4];TFXIniFile.ReadString
 007512FA    mov         edx,dword ptr [ebp-24]
 007512FD    mov         eax,dword ptr [esi+3D4];TFXCommHandler.lbBefore:TLabel
 00751303    call        TControl.SetText
 00751308    push        751748;'Communication log:'
 0075130D    lea         eax,[ebp-28]
 00751310    push        eax
 00751311    mov         ecx,75177C;'slbCommLog'
 00751316    mov         edx,7514B0;'CommHandlerDlg'
 0075131B    mov         eax,ebx
 0075131D    mov         edi,dword ptr [eax]
 0075131F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00751322    mov         edx,dword ptr [ebp-28]
 00751325    mov         eax,dword ptr [esi+3C4];TFXCommHandler.lbCommLog:TLabel
 0075132B    call        TControl.SetText
 00751330    push        7517A0;'Panel type'
 00751335    lea         eax,[ebp-2C]
 00751338    push        eax
 00751339    mov         ecx,7517C4;'srgPanelType'
 0075133E    mov         edx,7514B0;'CommHandlerDlg'
 00751343    mov         eax,ebx
 00751345    mov         edi,dword ptr [eax]
 00751347    call        dword ptr [edi+4];TFXIniFile.ReadString
 0075134A    mov         edx,dword ptr [ebp-2C]
 0075134D    mov         eax,dword ptr [esi+3F4];TFXCommHandler.rgPanelType:TRadioGroup
 00751353    call        TControl.SetText
 00751358    push        7517EC;'Show configuration info at receival'
 0075135D    lea         eax,[ebp-30]
 00751360    push        eax
 00751361    mov         ecx,751840;'sShowInfo'
 00751366    mov         edx,7514B0;'CommHandlerDlg'
 0075136B    mov         eax,ebx
 0075136D    mov         edi,dword ptr [eax]
 0075136F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00751372    mov         edx,dword ptr [ebp-30]
 00751375    mov         eax,dword ptr [esi+3CC];TFXCommHandler.cbShowInfo:TCheckBox
 0075137B    call        TControl.SetText
 00751380    push        751860;'Restart after sending data'
 00751385    lea         eax,[ebp-34]
 00751388    push        eax
 00751389    mov         ecx,7518A4;'scbRestart'
 0075138E    mov         edx,7514B0;'CommHandlerDlg'
 00751393    mov         eax,ebx
 00751395    mov         edi,dword ptr [eax]
 00751397    call        dword ptr [edi+4];TFXIniFile.ReadString
 0075139A    mov         edx,dword ptr [ebp-34]
 0075139D    mov         eax,dword ptr [esi+3F8];TFXCommHandler.cbRestart:TCheckBox
 007513A3    call        TControl.SetText
 007513A8    push        7518C8;'Panel id'
 007513AD    lea         eax,[ebp-38]
 007513B0    push        eax
 007513B1    mov         ecx,7518E8;'slbPanelID'
 007513B6    mov         edx,75190C;'FXNetFrame'
 007513BB    mov         eax,ebx
 007513BD    mov         edi,dword ptr [eax]
 007513BF    call        dword ptr [edi+4];TFXIniFile.ReadString
 007513C2    mov         edx,dword ptr [ebp-38]
 007513C5    mov         eax,dword ptr [esi+3EC];TFXCommHandler.gbPanelNum:TGroupBox
 007513CB    call        TControl.SetText
 007513D0    push        751930;'Warning! The FX panel is of an older version, and might not be able to handle al...
 007513D5    lea         eax,[ebp-3C]
 007513D8    push        eax
 007513D9    mov         ecx,751B14;'sOlderFXWarning'
 007513DE    mov         edx,7514B0;'CommHandlerDlg'
 007513E3    mov         eax,ebx
 007513E5    mov         esi,dword ptr [eax]
 007513E7    call        dword ptr [esi+4];TFXIniFile.ReadString
 007513EA    mov         edx,dword ptr [ebp-3C]
 007513ED    mov         eax,[007C4ADC];^gvar_007C3ECC
 007513F2    call        @UStrAsg
 007513F7    push        751B40;'The configuration can not be read because of license restrictions.'
 007513FC    lea         eax,[ebp-40]
 007513FF    push        eax
 00751400    mov         ecx,751BD4;'sLicenseRestrictions'
 00751405    mov         edx,751C0C;'Messages'
 0075140A    mov         eax,ebx
 0075140C    mov         ebx,dword ptr [eax]
 0075140E    call        dword ptr [ebx+4];TFXIniFile.ReadString
 00751411    mov         edx,dword ptr [ebp-40]
 00751414    mov         eax,[007C48B8];^gvar_007C3ED0
 00751419    call        @UStrAsg
 0075141E    xor         eax,eax
 00751420    pop         edx
 00751421    pop         ecx
 00751422    pop         ecx
 00751423    mov         dword ptr fs:[eax],edx
 00751426    push        751440
 0075142B    lea         eax,[ebp-40]
 0075142E    mov         edx,10
 00751433    call        @UStrArrayClr
 00751438    ret
>00751439    jmp         @HandleFinally
>0075143E    jmp         0075142B
 00751440    pop         edi
 00751441    pop         esi
 00751442    pop         ebx
 00751443    mov         esp,ebp
 00751445    pop         ebp
 00751446    ret
*}
end;

//00751C20
procedure TFXCommHandler.FormShow(Sender:TObject);
begin
{*
 00751C20    ret
*}
end;

//00751C24
procedure TFXCommHandler.SetComm(AutoMode:Integer; CommPort:Integer; BaudRate:Integer);
begin
{*
 00751C24    push        ebp
 00751C25    mov         ebp,esp
 00751C27    mov         eax,dword ptr [ebp+8]
 00751C2A    push        eax
 00751C2B    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00751C30    mov         eax,dword ptr [eax]
 00751C32    call        TCommManager.SetComm
 00751C37    pop         ebp
 00751C38    ret         4
*}
end;

//00751C3C
procedure TFXCommHandler.PrepareBtnClick(Sender:TObject);
begin
{*
 00751C3C    mov         ax,5910
 00751C40    mov         edx,dword ptr ds:[7C4A34];^gvar_00903690:TCommManager
 00751C46    mov         edx,dword ptr [edx]
 00751C48    xchg        eax,edx
 00751C49    call        TCommManager.Prepare
 00751C4E    ret
*}
end;

//00751C50
procedure TFXCommHandler.SendBtnClick(Sender:TObject);
begin
{*
 00751C50    mov         eax,dword ptr [eax+3F4];TFXCommHandler.rgPanelType:TRadioGroup
 00751C56    mov         edx,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 00751C5C    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00751C61    mov         eax,dword ptr [eax]
 00751C63    call        TCommManager.Transmit
 00751C68    ret
*}
end;

//00751C6C
procedure TFXCommHandler.ReceiveBtnClick(Sender:TObject);
begin
{*
 00751C6C    mov         eax,dword ptr [eax+3F4];TFXCommHandler.rgPanelType:TRadioGroup
 00751C72    mov         edx,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 00751C78    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00751C7D    mov         eax,dword ptr [eax]
 00751C7F    call        TCommManager.Request
 00751C84    ret
*}
end;

//00751C88
procedure TFXCommHandler.RestartBtnClick(Sender:TObject);
begin
{*
 00751C88    mov         eax,dword ptr [eax+3F4];TFXCommHandler.rgPanelType:TRadioGroup
 00751C8E    mov         edx,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 00751C94    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00751C99    mov         eax,dword ptr [eax]
 00751C9B    call        TCommManager.Restart
 00751CA0    ret
*}
end;

//00751CA4
procedure TFXCommHandler.RestartTimerTimer(Sender:TObject);
begin
{*
 00751CA4    push        ebx
 00751CA5    mov         ebx,eax
 00751CA7    xor         edx,edx
 00751CA9    mov         eax,dword ptr [ebx+3FC];TFXCommHandler.RestartTimer:TTimer
 00751CAF    call        TTimer.SetEnabled
 00751CB4    mov         eax,dword ptr [ebx+3F4];TFXCommHandler.rgPanelType:TRadioGroup
 00751CBA    mov         edx,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 00751CC0    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00751CC5    mov         eax,dword ptr [eax]
 00751CC7    call        TCommManager.Restart
 00751CCC    pop         ebx
 00751CCD    ret
*}
end;

//00751CD0
procedure TFXCommHandler.CloseBtnClick(Sender:TObject);
begin
{*
 00751CD0    call        TCustomForm.Close
 00751CD5    ret
*}
end;

Initialization
Finalization
//00751CD8
{*
 00751CD8    push        ebp
 00751CD9    mov         ebp,esp
 00751CDB    xor         eax,eax
 00751CDD    push        ebp
 00751CDE    push        751D27
 00751CE3    push        dword ptr fs:[eax]
 00751CE6    mov         dword ptr fs:[eax],esp
 00751CE9    inc         dword ptr ds:[9036C4]
>00751CEF    jne         00751D19
 00751CF1    mov         eax,7C3EF4;^'FX101'
 00751CF6    call        @UStrClr
 00751CFB    mov         eax,7C3EF8;^'FX3Net (MC2 v. >= 3x)'
 00751D00    call        @UStrClr
 00751D05    mov         eax,7C3EFC;^'FXNet (MC v. = 1x, 2x)'
 00751D0A    call        @UStrClr
 00751D0F    mov         eax,7C3F00;^'FXNet (MC v. = 2x)'
 00751D14    call        @UStrClr
 00751D19    xor         eax,eax
 00751D1B    pop         edx
 00751D1C    pop         ecx
 00751D1D    pop         ecx
 00751D1E    mov         dword ptr fs:[eax],edx
 00751D21    push        751D2E
 00751D26    ret
>00751D27    jmp         @HandleFinally
>00751D2C    jmp         00751D26
 00751D2E    pop         ebp
 00751D2F    ret
*}
end.