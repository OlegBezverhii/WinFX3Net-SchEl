//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit114;

interface

uses
  SysUtils, Classes, Vcl.CheckLst, FXIniFiles, Vcl.Buttons, System.Generics.Collections, Vcl.StdCtrls, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.Contnrs, System.ImageList, System.Generics.Collections, System.Generics.Defaults, System.SyncObjs, Winapi.CommCtrl, FXSelectPanelsDlg, FXSelectLoopsDlg, FXSelectZonesDlg, FXNetDocPrinterU;

type
  TCheckListBox = class(TCheckListBox)
  public
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//00739A64
  end;
  TSelectPanelsDlg = class(TForm)
  published
    clbPanels:TCheckListBox;//f3C0
    btnOK:TBitBtn;//f3C4
    btnCancel:TBitBtn;//f3C8
    btnSelectAll:TButton;//f3CC
    btnClearAll:TButton;//f3D0
    procedure Translate(IniFile:TFXIniFile);//00739CB8
    //procedure SetCheckMarks(?:?);//00739C30
    //procedure GetCheckMarks(?:?);//00739BC8
    procedure btnClearAllClick(Sender:TObject);//00739B88
    procedure btnSelectAllClick(Sender:TObject);//00739A74
    procedure FormCreate(Sender:TObject);//00739AB4
  end;
  TCheckListBox = class(TCheckListBox)
  public
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//0073A5F4
  end;
  TSelectLoopsDlg = class(TForm)
  published
    clbLoops:TCheckListBox;//f3C0
    btnOK:TBitBtn;//f3C4
    btnCancel:TBitBtn;//f3C8
    btnSelectAll:TButton;//f3CC
    btnClearAll:TButton;//f3D0
    procedure Translate(IniFile:TFXIniFile);//0073A7E0
    //procedure SetCheckMarks(?:?);//0073A758
    //procedure GetCheckMarks(?:?);//0073AAE0
    procedure btnClearAllClick(Sender:TObject);//0073A718
    procedure btnSelectAllClick(Sender:TObject);//0073A604
    procedure FormCreate(Sender:TObject);//0073A644
  end;
  TCheckListBox = class(TCheckListBox)
  public
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//0073B260
  end;
  TSelectZonesDlg = class(TForm)
  published
    clbZones:TCheckListBox;//f3C0
    btnOK:TBitBtn;//f3C4
    btnCancel:TBitBtn;//f3C8
    btnSelectAll:TButton;//f3CC
    btnClearAll:TButton;//f3D0
    lblFirstZone:TLabel;//f3D4
    edFirstZone:TEdit;//f3D8
    procedure Translate(IniFile:TFXIniFile);//0073B514
    //procedure SetCheckMarks(?:Integer; ?:?);//0073B4A4
    //procedure GetCheckMarks(?:?; ?:?);//0073B888
    procedure FormCreate(Sender:TObject);//0073B3D0
    procedure edFirstZoneChange(Sender:TObject);//0073B2F0
    procedure btnClearAllClick(Sender:TObject);//0073B2B0
    procedure btnSelectAllClick(Sender:TObject);//0073B270
  public
    ZonesOffset:Integer;//f3DC
  end;
  TAddress = class(TObject)
  public
    FPanel:byte;//f4
    FLoop:byte;//f5
    FAddr:word;//f6
    FZone:word;//f8
    FTypeStr:string;//fC
    FInpStr:string;//f10
    FOutStr:string;//f14
    FARec:TFXADRec;//f18
  end;
  TCanvases = (cnvPreview, cnvPrinter);
  TReportInclude = (riPanel, riAddress, riZone, riDevType, riInFunc, riOutFunc, riText, riTestBox);
  TReportIncludes = set of TReportInclude;
  TFXDocPreview = class(TPanel)
  public
    procedure v108; virtual;//v108//0073CBD0
  end;
  TFXDocPrinter = class(TObject)
  published
    procedure PrintBox(x:Integer; y:Integer; penw:Integer; h:Integer; w:Integer);//0073D350
    procedure PrintText(x:Integer; y:Integer; s:string);//0073D3D0
    procedure NewLine(LinesNeededOnSamePage:Integer);//0073D2C4
    procedure ClearPreview;//0073D250
    procedure AlignPreview;//0073D2B8
    procedure PrintReport(FirstPage:Integer; LastPage:Integer);//0073DFD4
    procedure Translate(IniFile:TFXIniFile);//0073E038
    procedure PrintPage(PageToPrint:Integer);//0073D79C
    procedure PrintHeader(s1:string; s2:string; s3:string);//0073D3F4
    procedure PrintFooter(s1:string; s2:string; s3:string);//0073D5C4
    procedure SelectCanvas(Canvas:TCanvases);//0073CE40
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetPageOffsetLeft:Integer;//0073CD30
    function GetPaperWidth:Integer;//0073CCF0
    constructor Create(PreviewHost:TComponent);//0073CBF8
    function GetPaperHeight:Integer;//0073CD10
    function GetPixelsPerInchX:Integer;//0073CE08
    function pix(mm:Integer; ppi:Integer):Integer;//0073CE28
    function GetPageOffsetBottom:Integer;//0073CDBC
    function GetPageOffsetTop:Integer;//0073CD50
    function GetPageOffsetRight:Integer;//0073CD70
  public
    NoPrinter:Boolean;//f4
    FPrinting:Boolean;//f5
    FPreviewPage:Integer;//f8
    FCurrentPage:Integer;//fC
    FNumberOfPages:Integer;//f10
    MyCanvas:TCanvas;//f14
    FLMargin:Integer;//f18
    FRMargin:Integer;//f1C
    FTMargin:Integer;//f20
    FBMargin:Integer;//f24
    FHeaderH:Integer;//f28
    FFooterH:Integer;//f2C
    FLHeight:Integer;//f30
    PrnPPI:Integer;//f34
    ScrPPI:Integer;//f38
    ppi:Integer;//f3C
    pw:Integer;//f40
    ph:Integer;//f44
    pc:Integer;//f48
    lm:Integer;//f4C
    tm:Integer;//f50
    rm:Integer;//f54
    bm:Integer;//f58
    hh:Integer;//f5C
    ht:Integer;//f60
    fh:Integer;//f64
    ft:Integer;//f68
    ct:Integer;//f6C
    hl:Integer;//f70
    x:Integer;//f74
    y:Integer;//f78
    h1:Integer;//f7C
    h2:Integer;//f80
    h3:Integer;//f84
    h4:Integer;//f88
    h5:Integer;//f8C
    h6:Integer;//f90
    h7:Integer;//f94
    h8:Integer;//f98
    x1:Integer;//f9C
    x2:Integer;//fA0
    x3:Integer;//fA4
    x4:Integer;//fA8
    x5:Integer;//fAC
    x6:Integer;//fB0
    x7:Integer;//fB4
    x8:Integer;//fB8
    x9:Integer;//fBC
    x0:Integer;//fC0
    dy:Integer;//fC4
    zoom:Integer;//fC8
    dyref:Integer;//fCC
    Line:Integer;//fD0
    FFont:TFont;//fD4
    AddrList:TObjectList;//fD8
    RepIncs:TReportIncludes;//fDC
    DocPreview:TFXDocPreview;//fE0
  end;
    //procedure WMMouseMove(?:?);//00739A64
    //procedure WMMouseMove(?:?);//0073A5F4
    //procedure WMMouseMove(?:?);//0073B260
    procedure sub_0073CB88(?:TFXDocPreview);//0073CB88
    procedure sub_0073CBD0;//0073CBD0
    //procedure sub_0073E404(?:?; ?:TFont);//0073E404
    //procedure sub_0073E420(?:?; ?:?);//0073E420

implementation

{$R *.DFM}

//00739A64
{*procedure TCheckListBox.WMMouseMove(?:?);
begin
 00739A64    cmp         word ptr [edx+8],0FFFFFFF6
>00739A69    jl          00739A70
 00739A6B    call        TControl.WMMouseMove
 00739A70    ret
end;*}

//00739A74
procedure TSelectPanelsDlg.btnSelectAllClick(Sender:TObject);
begin
{*
 00739A74    push        ebx
 00739A75    push        esi
 00739A76    push        edi
 00739A77    mov         edi,eax
 00739A79    mov         eax,dword ptr [edi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739A7F    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 00739A85    mov         edx,dword ptr [eax]
 00739A87    call        dword ptr [edx+14];TStrings.GetCount
 00739A8A    mov         ebx,eax
 00739A8C    sub         ebx,1
>00739A8F    jno         00739A96
 00739A91    call        @IntOver
 00739A96    test        ebx,ebx
>00739A98    jl          00739AB0
 00739A9A    inc         ebx
 00739A9B    xor         esi,esi
 00739A9D    mov         eax,dword ptr [edi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739AA3    mov         cl,1
 00739AA5    mov         edx,esi
 00739AA7    call        TCheckListBox.SetChecked
 00739AAC    inc         esi
 00739AAD    dec         ebx
>00739AAE    jne         00739A9D
 00739AB0    pop         edi
 00739AB1    pop         esi
 00739AB2    pop         ebx
 00739AB3    ret
*}
end;

//00739AB4
procedure TSelectPanelsDlg.FormCreate(Sender:TObject);
begin
{*
 00739AB4    push        ebp
 00739AB5    mov         ebp,esp
 00739AB7    add         esp,0FFFFFFE8
 00739ABA    push        ebx
 00739ABB    xor         ecx,ecx
 00739ABD    mov         dword ptr [ebp-4],ecx
 00739AC0    mov         dword ptr [ebp-18],ecx
 00739AC3    mov         ebx,eax
 00739AC5    xor         eax,eax
 00739AC7    push        ebp
 00739AC8    push        739B36
 00739ACD    push        dword ptr fs:[eax]
 00739AD0    mov         dword ptr fs:[eax],esp
 00739AD3    lea         eax,[ebp-4]
 00739AD6    push        eax
 00739AD7    mov         eax,739B50;'Select Panels'
 00739ADC    mov         dword ptr [ebp-14],eax
 00739ADF    mov         byte ptr [ebp-10],11
 00739AE3    lea         edx,[ebp-18]
 00739AE6    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00739AEB    mov         eax,dword ptr [eax]
 00739AED    call        005DDC74
 00739AF2    mov         eax,dword ptr [ebp-18]
 00739AF5    mov         dword ptr [ebp-0C],eax
 00739AF8    mov         byte ptr [ebp-8],11
 00739AFC    lea         edx,[ebp-14]
 00739AFF    mov         ecx,1
 00739B04    mov         eax,739B78;'%s (%s)'
 00739B09    call        Format
 00739B0E    mov         edx,dword ptr [ebp-4]
 00739B11    mov         eax,ebx
 00739B13    call        TControl.SetText
 00739B18    xor         eax,eax
 00739B1A    pop         edx
 00739B1B    pop         ecx
 00739B1C    pop         ecx
 00739B1D    mov         dword ptr fs:[eax],edx
 00739B20    push        739B3D
 00739B25    lea         eax,[ebp-18]
 00739B28    call        @UStrClr
 00739B2D    lea         eax,[ebp-4]
 00739B30    call        @UStrClr
 00739B35    ret
>00739B36    jmp         @HandleFinally
>00739B3B    jmp         00739B25
 00739B3D    pop         ebx
 00739B3E    mov         esp,ebp
 00739B40    pop         ebp
 00739B41    ret
*}
end;

//00739B88
procedure TSelectPanelsDlg.btnClearAllClick(Sender:TObject);
begin
{*
 00739B88    push        ebx
 00739B89    push        esi
 00739B8A    push        edi
 00739B8B    mov         edi,eax
 00739B8D    mov         eax,dword ptr [edi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739B93    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 00739B99    mov         edx,dword ptr [eax]
 00739B9B    call        dword ptr [edx+14];TStrings.GetCount
 00739B9E    mov         ebx,eax
 00739BA0    sub         ebx,1
>00739BA3    jno         00739BAA
 00739BA5    call        @IntOver
 00739BAA    test        ebx,ebx
>00739BAC    jl          00739BC4
 00739BAE    inc         ebx
 00739BAF    xor         esi,esi
 00739BB1    mov         eax,dword ptr [edi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739BB7    xor         ecx,ecx
 00739BB9    mov         edx,esi
 00739BBB    call        TCheckListBox.SetChecked
 00739BC0    inc         esi
 00739BC1    dec         ebx
>00739BC2    jne         00739BB1
 00739BC4    pop         edi
 00739BC5    pop         esi
 00739BC6    pop         ebx
 00739BC7    ret
*}
end;

//00739BC8
{*procedure TSelectPanelsDlg.GetCheckMarks(?:?);
begin
 00739BC8    push        ebx
 00739BC9    push        esi
 00739BCA    push        edi
 00739BCB    mov         edi,edx
 00739BCD    mov         esi,eax
 00739BCF    mov         eax,dword ptr ds:[739C28];0x0 gvar_00739C28
 00739BD5    mov         dword ptr [edi],eax
 00739BD7    mov         al,byte ptr ds:[739C2C];0x0 gvar_00739C2C
 00739BDD    mov         byte ptr [edi+4],al
 00739BE0    mov         bl,1
 00739BE2    movzx       edx,bl
 00739BE5    sub         edx,1
>00739BE8    jno         00739BEF
 00739BEA    call        @IntOver
 00739BEF    mov         eax,dword ptr [esi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739BF5    call        TCheckListBox.GetChecked
 00739BFA    test        al,al
>00739BFC    je          00739C1B
 00739BFE    mov         eax,ebx
 00739C00    cmp         al,27
>00739C02    ja          00739C1B
 00739C04    and         eax,7F
 00739C07    mov         edx,edi
 00739C09    mov         ecx,edx
 00739C0B    and         ecx,3
 00739C0E    sub         edx,ecx
 00739C10    add         ecx,ecx
 00739C12    add         ecx,ecx
 00739C14    add         ecx,ecx
 00739C16    add         eax,ecx
 00739C18    bts         dword ptr [edx],eax
 00739C1B    inc         ebx
 00739C1C    cmp         bl,21
>00739C1F    jne         00739BE2
 00739C21    pop         edi
 00739C22    pop         esi
 00739C23    pop         ebx
 00739C24    ret
end;*}

//00739C30
{*procedure TSelectPanelsDlg.SetCheckMarks(?:?);
begin
 00739C30    push        ebx
 00739C31    push        esi
 00739C32    push        edi
 00739C33    add         esp,0FFFFFFF8
 00739C36    mov         esi,edx
 00739C38    lea         edi,[esp]
 00739C3B    movs        dword ptr [edi],dword ptr [esi]
 00739C3C    movs        byte ptr [edi],byte ptr [esi]
 00739C3D    mov         esi,eax
 00739C3F    xor         ebx,ebx
 00739C41    xor         ecx,ecx
 00739C43    mov         edx,ebx
 00739C45    mov         eax,dword ptr [esi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739C4B    call        TCheckListBox.SetChecked
 00739C50    inc         ebx
 00739C51    cmp         ebx,20
>00739C54    jne         00739C41
 00739C56    mov         ebx,1
 00739C5B    mov         eax,ebx
 00739C5D    cmp         eax,27
>00739C60    ja          00739C76
 00739C62    mov         edx,esp
 00739C64    mov         ecx,edx
 00739C66    and         ecx,3
 00739C69    sub         edx,ecx
 00739C6B    add         ecx,ecx
 00739C6D    add         ecx,ecx
 00739C6F    add         ecx,ecx
 00739C71    add         eax,ecx
 00739C73    bt          dword ptr [edx],eax
>00739C76    jae         00739C93
 00739C78    mov         edx,ebx
 00739C7A    sub         edx,1
>00739C7D    jno         00739C84
 00739C7F    call        @IntOver
 00739C84    mov         cl,1
 00739C86    mov         eax,dword ptr [esi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739C8C    call        TCheckListBox.SetChecked
>00739C91    jmp         00739CAC
 00739C93    mov         edx,ebx
 00739C95    sub         edx,1
>00739C98    jno         00739C9F
 00739C9A    call        @IntOver
 00739C9F    xor         ecx,ecx
 00739CA1    mov         eax,dword ptr [esi+3C0];TSelectPanelsDlg.clbPanels:TCheckListBox
 00739CA7    call        TCheckListBox.SetChecked
 00739CAC    inc         ebx
 00739CAD    cmp         ebx,21
>00739CB0    jne         00739C5B
 00739CB2    pop         ecx
 00739CB3    pop         edx
 00739CB4    pop         edi
 00739CB5    pop         esi
 00739CB6    pop         ebx
 00739CB7    ret
end;*}

//00739CB8
procedure TSelectPanelsDlg.Translate(IniFile:TFXIniFile);
begin
{*
 00739CB8    push        ebp
 00739CB9    mov         ebp,esp
 00739CBB    xor         ecx,ecx
 00739CBD    push        ecx
 00739CBE    push        ecx
 00739CBF    push        ecx
 00739CC0    push        ecx
 00739CC1    push        ecx
 00739CC2    push        ecx
 00739CC3    push        ecx
 00739CC4    push        ebx
 00739CC5    push        esi
 00739CC6    push        edi
 00739CC7    mov         esi,edx
 00739CC9    mov         ebx,eax
 00739CCB    xor         eax,eax
 00739CCD    push        ebp
 00739CCE    push        739DE4
 00739CD3    push        dword ptr fs:[eax]
 00739CD6    mov         dword ptr fs:[eax],esp
 00739CD9    push        739E00;'Select Panels'
 00739CDE    lea         eax,[ebp-8]
 00739CE1    push        eax
 00739CE2    mov         ecx,739E28;'sSelectPanels'
 00739CE7    mov         edx,739E50;'AddressReport'
 00739CEC    mov         eax,esi
 00739CEE    mov         edi,dword ptr [eax]
 00739CF0    call        dword ptr [edi+4];TFXIniFile.ReadString
 00739CF3    push        dword ptr [ebp-8]
 00739CF6    push        739E78;' ('
 00739CFB    lea         edx,[ebp-0C]
 00739CFE    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00739D03    mov         eax,dword ptr [eax]
 00739D05    call        005DDC74
 00739D0A    push        dword ptr [ebp-0C]
 00739D0D    push        739E8C;')'
 00739D12    lea         eax,[ebp-4]
 00739D15    mov         edx,4
 00739D1A    call        @UStrCatN
 00739D1F    mov         edx,dword ptr [ebp-4]
 00739D22    mov         eax,ebx
 00739D24    call        TControl.SetText
 00739D29    push        739E9C;'OK'
 00739D2E    lea         eax,[ebp-10]
 00739D31    push        eax
 00739D32    mov         ecx,739EB0;'sOKBtn'
 00739D37    mov         edx,739ECC;'CommonTexts'
 00739D3C    mov         eax,esi
 00739D3E    mov         edi,dword ptr [eax]
 00739D40    call        dword ptr [edi+4];TFXIniFile.ReadString
 00739D43    mov         edx,dword ptr [ebp-10]
 00739D46    mov         eax,dword ptr [ebx+3C4];TSelectPanelsDlg.btnOK:TBitBtn
 00739D4C    call        TControl.SetText
 00739D51    push        739EF0;'Cancel'
 00739D56    lea         eax,[ebp-14]
 00739D59    push        eax
 00739D5A    mov         ecx,739F0C;'sCancelBtn'
 00739D5F    mov         edx,739ECC;'CommonTexts'
 00739D64    mov         eax,esi
 00739D66    mov         edi,dword ptr [eax]
 00739D68    call        dword ptr [edi+4];TFXIniFile.ReadString
 00739D6B    mov         edx,dword ptr [ebp-14]
 00739D6E    mov         eax,dword ptr [ebx+3C8];TSelectPanelsDlg.btnCancel:TBitBtn
 00739D74    call        TControl.SetText
 00739D79    push        739F30;'Select all'
 00739D7E    lea         eax,[ebp-18]
 00739D81    push        eax
 00739D82    mov         ecx,739F54;'sSelectAllBtn'
 00739D87    mov         edx,739ECC;'CommonTexts'
 00739D8C    mov         eax,esi
 00739D8E    mov         edi,dword ptr [eax]
 00739D90    call        dword ptr [edi+4];TFXIniFile.ReadString
 00739D93    mov         edx,dword ptr [ebp-18]
 00739D96    mov         eax,dword ptr [ebx+3CC];TSelectPanelsDlg.btnSelectAll:TButton
 00739D9C    call        TControl.SetText
 00739DA1    push        739F7C;'Clear all'
 00739DA6    lea         eax,[ebp-1C]
 00739DA9    push        eax
 00739DAA    mov         ecx,739F9C;'sClearAllBtn'
 00739DAF    mov         edx,739ECC;'CommonTexts'
 00739DB4    mov         eax,esi
 00739DB6    mov         esi,dword ptr [eax]
 00739DB8    call        dword ptr [esi+4];TFXIniFile.ReadString
 00739DBB    mov         edx,dword ptr [ebp-1C]
 00739DBE    mov         eax,dword ptr [ebx+3D0];TSelectPanelsDlg.btnClearAll:TButton
 00739DC4    call        TControl.SetText
 00739DC9    xor         eax,eax
 00739DCB    pop         edx
 00739DCC    pop         ecx
 00739DCD    pop         ecx
 00739DCE    mov         dword ptr fs:[eax],edx
 00739DD1    push        739DEB
 00739DD6    lea         eax,[ebp-1C]
 00739DD9    mov         edx,7
 00739DDE    call        @UStrArrayClr
 00739DE3    ret
>00739DE4    jmp         @HandleFinally
>00739DE9    jmp         00739DD6
 00739DEB    pop         edi
 00739DEC    pop         esi
 00739DED    pop         ebx
 00739DEE    mov         esp,ebp
 00739DF0    pop         ebp
 00739DF1    ret
*}
end;

//0073A5F4
{*procedure TCheckListBox.WMMouseMove(?:?);
begin
 0073A5F4    cmp         word ptr [edx+8],0FFFFFFF6
>0073A5F9    jl          0073A600
 0073A5FB    call        TControl.WMMouseMove
 0073A600    ret
end;*}

//0073A604
procedure TSelectLoopsDlg.btnSelectAllClick(Sender:TObject);
begin
{*
 0073A604    push        ebx
 0073A605    push        esi
 0073A606    push        edi
 0073A607    mov         edi,eax
 0073A609    mov         eax,dword ptr [edi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073A60F    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0073A615    mov         edx,dword ptr [eax]
 0073A617    call        dword ptr [edx+14];TStrings.GetCount
 0073A61A    mov         ebx,eax
 0073A61C    sub         ebx,1
>0073A61F    jno         0073A626
 0073A621    call        @IntOver
 0073A626    test        ebx,ebx
>0073A628    jl          0073A640
 0073A62A    inc         ebx
 0073A62B    xor         esi,esi
 0073A62D    mov         eax,dword ptr [edi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073A633    mov         cl,1
 0073A635    mov         edx,esi
 0073A637    call        TCheckListBox.SetChecked
 0073A63C    inc         esi
 0073A63D    dec         ebx
>0073A63E    jne         0073A62D
 0073A640    pop         edi
 0073A641    pop         esi
 0073A642    pop         ebx
 0073A643    ret
*}
end;

//0073A644
procedure TSelectLoopsDlg.FormCreate(Sender:TObject);
begin
{*
 0073A644    push        ebp
 0073A645    mov         ebp,esp
 0073A647    add         esp,0FFFFFFE8
 0073A64A    push        ebx
 0073A64B    xor         ecx,ecx
 0073A64D    mov         dword ptr [ebp-4],ecx
 0073A650    mov         dword ptr [ebp-18],ecx
 0073A653    mov         ebx,eax
 0073A655    xor         eax,eax
 0073A657    push        ebp
 0073A658    push        73A6C6
 0073A65D    push        dword ptr fs:[eax]
 0073A660    mov         dword ptr fs:[eax],esp
 0073A663    lea         eax,[ebp-4]
 0073A666    push        eax
 0073A667    mov         eax,73A6E0;'Select Loops'
 0073A66C    mov         dword ptr [ebp-14],eax
 0073A66F    mov         byte ptr [ebp-10],11
 0073A673    lea         edx,[ebp-18]
 0073A676    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0073A67B    mov         eax,dword ptr [eax]
 0073A67D    call        005DDC74
 0073A682    mov         eax,dword ptr [ebp-18]
 0073A685    mov         dword ptr [ebp-0C],eax
 0073A688    mov         byte ptr [ebp-8],11
 0073A68C    lea         edx,[ebp-14]
 0073A68F    mov         ecx,1
 0073A694    mov         eax,73A708;'%s (%s)'
 0073A699    call        Format
 0073A69E    mov         edx,dword ptr [ebp-4]
 0073A6A1    mov         eax,ebx
 0073A6A3    call        TControl.SetText
 0073A6A8    xor         eax,eax
 0073A6AA    pop         edx
 0073A6AB    pop         ecx
 0073A6AC    pop         ecx
 0073A6AD    mov         dword ptr fs:[eax],edx
 0073A6B0    push        73A6CD
 0073A6B5    lea         eax,[ebp-18]
 0073A6B8    call        @UStrClr
 0073A6BD    lea         eax,[ebp-4]
 0073A6C0    call        @UStrClr
 0073A6C5    ret
>0073A6C6    jmp         @HandleFinally
>0073A6CB    jmp         0073A6B5
 0073A6CD    pop         ebx
 0073A6CE    mov         esp,ebp
 0073A6D0    pop         ebp
 0073A6D1    ret
*}
end;

//0073A718
procedure TSelectLoopsDlg.btnClearAllClick(Sender:TObject);
begin
{*
 0073A718    push        ebx
 0073A719    push        esi
 0073A71A    push        edi
 0073A71B    mov         edi,eax
 0073A71D    mov         eax,dword ptr [edi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073A723    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0073A729    mov         edx,dword ptr [eax]
 0073A72B    call        dword ptr [edx+14];TStrings.GetCount
 0073A72E    mov         ebx,eax
 0073A730    sub         ebx,1
>0073A733    jno         0073A73A
 0073A735    call        @IntOver
 0073A73A    test        ebx,ebx
>0073A73C    jl          0073A754
 0073A73E    inc         ebx
 0073A73F    xor         esi,esi
 0073A741    mov         eax,dword ptr [edi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073A747    xor         ecx,ecx
 0073A749    mov         edx,esi
 0073A74B    call        TCheckListBox.SetChecked
 0073A750    inc         esi
 0073A751    dec         ebx
>0073A752    jne         0073A741
 0073A754    pop         edi
 0073A755    pop         esi
 0073A756    pop         ebx
 0073A757    ret
*}
end;

//0073A758
{*procedure TSelectLoopsDlg.SetCheckMarks(?:?);
begin
 0073A758    push        ebx
 0073A759    push        esi
 0073A75A    push        edi
 0073A75B    add         esp,0FFFFFFE0
 0073A75E    mov         esi,edx
 0073A760    lea         edi,[esp]
 0073A763    mov         ecx,8
 0073A768    rep movs    dword ptr [edi],dword ptr [esi]
 0073A76A    mov         esi,eax
 0073A76C    xor         ebx,ebx
 0073A76E    xor         ecx,ecx
 0073A770    mov         edx,ebx
 0073A772    mov         eax,dword ptr [esi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073A778    call        TCheckListBox.SetChecked
 0073A77D    inc         ebx
 0073A77E    cmp         ebx,0FF
>0073A784    jne         0073A76E
 0073A786    mov         ebx,1
 0073A78B    mov         eax,ebx
 0073A78D    cmp         eax,0FF
>0073A792    ja          0073A798
 0073A794    bt          dword ptr [esp],eax
>0073A798    jae         0073A7B5
 0073A79A    mov         edx,ebx
 0073A79C    sub         edx,1
>0073A79F    jno         0073A7A6
 0073A7A1    call        @IntOver
 0073A7A6    mov         cl,1
 0073A7A8    mov         eax,dword ptr [esi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073A7AE    call        TCheckListBox.SetChecked
>0073A7B3    jmp         0073A7CE
 0073A7B5    mov         edx,ebx
 0073A7B7    sub         edx,1
>0073A7BA    jno         0073A7C1
 0073A7BC    call        @IntOver
 0073A7C1    xor         ecx,ecx
 0073A7C3    mov         eax,dword ptr [esi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073A7C9    call        TCheckListBox.SetChecked
 0073A7CE    inc         ebx
 0073A7CF    cmp         ebx,100
>0073A7D5    jne         0073A78B
 0073A7D7    add         esp,20
 0073A7DA    pop         edi
 0073A7DB    pop         esi
 0073A7DC    pop         ebx
 0073A7DD    ret
end;*}

//0073A7E0
procedure TSelectLoopsDlg.Translate(IniFile:TFXIniFile);
begin
{*
 0073A7E0    push        ebp
 0073A7E1    mov         ebp,esp
 0073A7E3    xor         ecx,ecx
 0073A7E5    push        ecx
 0073A7E6    push        ecx
 0073A7E7    push        ecx
 0073A7E8    push        ecx
 0073A7E9    push        ecx
 0073A7EA    push        ecx
 0073A7EB    push        ecx
 0073A7EC    push        ebx
 0073A7ED    push        esi
 0073A7EE    push        edi
 0073A7EF    mov         esi,edx
 0073A7F1    mov         ebx,eax
 0073A7F3    xor         eax,eax
 0073A7F5    push        ebp
 0073A7F6    push        73A90C
 0073A7FB    push        dword ptr fs:[eax]
 0073A7FE    mov         dword ptr fs:[eax],esp
 0073A801    push        73A928;'Select Loops'
 0073A806    lea         eax,[ebp-8]
 0073A809    push        eax
 0073A80A    mov         ecx,73A950;'sSelectLoops'
 0073A80F    mov         edx,73A978;'AddressReport'
 0073A814    mov         eax,esi
 0073A816    mov         edi,dword ptr [eax]
 0073A818    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073A81B    push        dword ptr [ebp-8]
 0073A81E    push        73A9A0;' ('
 0073A823    lea         edx,[ebp-0C]
 0073A826    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0073A82B    mov         eax,dword ptr [eax]
 0073A82D    call        005DDC74
 0073A832    push        dword ptr [ebp-0C]
 0073A835    push        73A9B4;')'
 0073A83A    lea         eax,[ebp-4]
 0073A83D    mov         edx,4
 0073A842    call        @UStrCatN
 0073A847    mov         edx,dword ptr [ebp-4]
 0073A84A    mov         eax,ebx
 0073A84C    call        TControl.SetText
 0073A851    push        73A9C4;'OK'
 0073A856    lea         eax,[ebp-10]
 0073A859    push        eax
 0073A85A    mov         ecx,73A9D8;'sOKBtn'
 0073A85F    mov         edx,73A9F4;'CommonTexts'
 0073A864    mov         eax,esi
 0073A866    mov         edi,dword ptr [eax]
 0073A868    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073A86B    mov         edx,dword ptr [ebp-10]
 0073A86E    mov         eax,dword ptr [ebx+3C4];TSelectLoopsDlg.btnOK:TBitBtn
 0073A874    call        TControl.SetText
 0073A879    push        73AA18;'Cancel'
 0073A87E    lea         eax,[ebp-14]
 0073A881    push        eax
 0073A882    mov         ecx,73AA34;'sCancelBtn'
 0073A887    mov         edx,73A9F4;'CommonTexts'
 0073A88C    mov         eax,esi
 0073A88E    mov         edi,dword ptr [eax]
 0073A890    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073A893    mov         edx,dword ptr [ebp-14]
 0073A896    mov         eax,dword ptr [ebx+3C8];TSelectLoopsDlg.btnCancel:TBitBtn
 0073A89C    call        TControl.SetText
 0073A8A1    push        73AA58;'Select all'
 0073A8A6    lea         eax,[ebp-18]
 0073A8A9    push        eax
 0073A8AA    mov         ecx,73AA7C;'sSelectAllBtn'
 0073A8AF    mov         edx,73A9F4;'CommonTexts'
 0073A8B4    mov         eax,esi
 0073A8B6    mov         edi,dword ptr [eax]
 0073A8B8    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073A8BB    mov         edx,dword ptr [ebp-18]
 0073A8BE    mov         eax,dword ptr [ebx+3CC];TSelectLoopsDlg.btnSelectAll:TButton
 0073A8C4    call        TControl.SetText
 0073A8C9    push        73AAA4;'Clear all'
 0073A8CE    lea         eax,[ebp-1C]
 0073A8D1    push        eax
 0073A8D2    mov         ecx,73AAC4;'sClearAllBtn'
 0073A8D7    mov         edx,73A9F4;'CommonTexts'
 0073A8DC    mov         eax,esi
 0073A8DE    mov         esi,dword ptr [eax]
 0073A8E0    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073A8E3    mov         edx,dword ptr [ebp-1C]
 0073A8E6    mov         eax,dword ptr [ebx+3D0];TSelectLoopsDlg.btnClearAll:TButton
 0073A8EC    call        TControl.SetText
 0073A8F1    xor         eax,eax
 0073A8F3    pop         edx
 0073A8F4    pop         ecx
 0073A8F5    pop         ecx
 0073A8F6    mov         dword ptr fs:[eax],edx
 0073A8F9    push        73A913
 0073A8FE    lea         eax,[ebp-1C]
 0073A901    mov         edx,7
 0073A906    call        @UStrArrayClr
 0073A90B    ret
>0073A90C    jmp         @HandleFinally
>0073A911    jmp         0073A8FE
 0073A913    pop         edi
 0073A914    pop         esi
 0073A915    pop         ebx
 0073A916    mov         esp,ebp
 0073A918    pop         ebp
 0073A919    ret
*}
end;

//0073AAE0
{*procedure TSelectLoopsDlg.GetCheckMarks(?:?);
begin
 0073AAE0    push        ebx
 0073AAE1    push        esi
 0073AAE2    push        edi
 0073AAE3    mov         edi,edx
 0073AAE5    mov         esi,eax
 0073AAE7    push        esi
 0073AAE8    push        edi
 0073AAE9    mov         esi,73AB30
 0073AAEE    mov         ecx,8
 0073AAF3    rep movs    dword ptr [edi],dword ptr [esi]
 0073AAF5    pop         edi
 0073AAF6    pop         esi
 0073AAF7    mov         ebx,1
 0073AAFC    mov         edx,ebx
 0073AAFE    sub         edx,1
>0073AB01    jno         0073AB08
 0073AB03    call        @IntOver
 0073AB08    mov         eax,dword ptr [esi+3C0];TSelectLoopsDlg.clbLoops:TCheckListBox
 0073AB0E    call        TCheckListBox.GetChecked
 0073AB13    test        al,al
>0073AB15    je          0073AB23
 0073AB17    mov         eax,ebx
 0073AB19    cmp         eax,0FF
>0073AB1E    ja          0073AB23
 0073AB20    bts         dword ptr [edi],eax
 0073AB23    inc         ebx
 0073AB24    cmp         ebx,100
>0073AB2A    jne         0073AAFC
 0073AB2C    pop         edi
 0073AB2D    pop         esi
 0073AB2E    pop         ebx
 0073AB2F    ret
end;*}

//0073B260
{*procedure TCheckListBox.WMMouseMove(?:?);
begin
 0073B260    cmp         word ptr [edx+8],0FFFFFFF6
>0073B265    jl          0073B26C
 0073B267    call        TControl.WMMouseMove
 0073B26C    ret
end;*}

//0073B270
procedure TSelectZonesDlg.btnSelectAllClick(Sender:TObject);
begin
{*
 0073B270    push        ebx
 0073B271    push        esi
 0073B272    push        edi
 0073B273    mov         edi,eax
 0073B275    mov         eax,dword ptr [edi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B27B    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0073B281    mov         edx,dword ptr [eax]
 0073B283    call        dword ptr [edx+14];TStrings.GetCount
 0073B286    mov         ebx,eax
 0073B288    sub         ebx,1
>0073B28B    jno         0073B292
 0073B28D    call        @IntOver
 0073B292    test        ebx,ebx
>0073B294    jl          0073B2AC
 0073B296    inc         ebx
 0073B297    xor         esi,esi
 0073B299    mov         eax,dword ptr [edi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B29F    mov         cl,1
 0073B2A1    mov         edx,esi
 0073B2A3    call        TCheckListBox.SetChecked
 0073B2A8    inc         esi
 0073B2A9    dec         ebx
>0073B2AA    jne         0073B299
 0073B2AC    pop         edi
 0073B2AD    pop         esi
 0073B2AE    pop         ebx
 0073B2AF    ret
*}
end;

//0073B2B0
procedure TSelectZonesDlg.btnClearAllClick(Sender:TObject);
begin
{*
 0073B2B0    push        ebx
 0073B2B1    push        esi
 0073B2B2    push        edi
 0073B2B3    mov         edi,eax
 0073B2B5    mov         eax,dword ptr [edi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B2BB    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0073B2C1    mov         edx,dword ptr [eax]
 0073B2C3    call        dword ptr [edx+14];TStrings.GetCount
 0073B2C6    mov         ebx,eax
 0073B2C8    sub         ebx,1
>0073B2CB    jno         0073B2D2
 0073B2CD    call        @IntOver
 0073B2D2    test        ebx,ebx
>0073B2D4    jl          0073B2EC
 0073B2D6    inc         ebx
 0073B2D7    xor         esi,esi
 0073B2D9    mov         eax,dword ptr [edi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B2DF    xor         ecx,ecx
 0073B2E1    mov         edx,esi
 0073B2E3    call        TCheckListBox.SetChecked
 0073B2E8    inc         esi
 0073B2E9    dec         ebx
>0073B2EA    jne         0073B2D9
 0073B2EC    pop         edi
 0073B2ED    pop         esi
 0073B2EE    pop         ebx
 0073B2EF    ret
*}
end;

//0073B2F0
procedure TSelectZonesDlg.edFirstZoneChange(Sender:TObject);
begin
{*
 0073B2F0    push        ebp
 0073B2F1    mov         ebp,esp
 0073B2F3    add         esp,0FFFFFFF0
 0073B2F6    push        ebx
 0073B2F7    push        esi
 0073B2F8    push        edi
 0073B2F9    xor         ecx,ecx
 0073B2FB    mov         dword ptr [ebp-8],ecx
 0073B2FE    mov         dword ptr [ebp-4],ecx
 0073B301    mov         ebx,eax
 0073B303    xor         eax,eax
 0073B305    push        ebp
 0073B306    push        73B3AA
 0073B30B    push        dword ptr fs:[eax]
 0073B30E    mov         dword ptr fs:[eax],esp
 0073B311    lea         edx,[ebp-4]
 0073B314    mov         eax,dword ptr [ebx+3D8];TSelectZonesDlg.edFirstZone:TEdit
 0073B31A    call        TControl.GetText
 0073B31F    mov         eax,dword ptr [ebp-4]
 0073B322    lea         edx,[ebx+3DC];TSelectZonesDlg.ZonesOffset:Integer
 0073B328    call        0041E5A0
 0073B32D    test        al,al
>0073B32F    je          0073B38C
 0073B331    mov         eax,dword ptr [ebx+3DC];TSelectZonesDlg.ZonesOffset:Integer
 0073B337    test        eax,eax
>0073B339    jle         0073B38C
 0073B33B    cmp         eax,2616
>0073B340    jg          0073B38C
 0073B342    xor         esi,esi
 0073B344    lea         eax,[ebp-8]
 0073B347    push        eax
 0073B348    mov         eax,dword ptr [ebx+3DC];TSelectZonesDlg.ZonesOffset:Integer
 0073B34E    add         eax,esi
>0073B350    jno         0073B357
 0073B352    call        @IntOver
 0073B357    mov         dword ptr [ebp-10],eax
 0073B35A    mov         byte ptr [ebp-0C],0
 0073B35E    lea         edx,[ebp-10]
 0073B361    xor         ecx,ecx
 0073B363    mov         eax,73B3C4;'%.4d'
 0073B368    call        Format
 0073B36D    mov         ecx,dword ptr [ebp-8]
 0073B370    mov         eax,dword ptr [ebx+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B376    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 0073B37C    mov         edx,esi
 0073B37E    mov         edi,dword ptr [eax]
 0073B380    call        dword ptr [edi+20];TStrings.Put
 0073B383    inc         esi
 0073B384    cmp         esi,0FA
>0073B38A    jne         0073B344
 0073B38C    xor         eax,eax
 0073B38E    pop         edx
 0073B38F    pop         ecx
 0073B390    pop         ecx
 0073B391    mov         dword ptr fs:[eax],edx
 0073B394    push        73B3B1
 0073B399    lea         eax,[ebp-8]
 0073B39C    call        @UStrClr
 0073B3A1    lea         eax,[ebp-4]
 0073B3A4    call        @UStrClr
 0073B3A9    ret
>0073B3AA    jmp         @HandleFinally
>0073B3AF    jmp         0073B399
 0073B3B1    pop         edi
 0073B3B2    pop         esi
 0073B3B3    pop         ebx
 0073B3B4    mov         esp,ebp
 0073B3B6    pop         ebp
 0073B3B7    ret
*}
end;

//0073B3D0
procedure TSelectZonesDlg.FormCreate(Sender:TObject);
begin
{*
 0073B3D0    push        ebp
 0073B3D1    mov         ebp,esp
 0073B3D3    add         esp,0FFFFFFE8
 0073B3D6    push        ebx
 0073B3D7    xor         ecx,ecx
 0073B3D9    mov         dword ptr [ebp-4],ecx
 0073B3DC    mov         dword ptr [ebp-18],ecx
 0073B3DF    mov         ebx,eax
 0073B3E1    xor         eax,eax
 0073B3E3    push        ebp
 0073B3E4    push        73B452
 0073B3E9    push        dword ptr fs:[eax]
 0073B3EC    mov         dword ptr fs:[eax],esp
 0073B3EF    lea         eax,[ebp-4]
 0073B3F2    push        eax
 0073B3F3    mov         eax,73B46C;'Select Zones'
 0073B3F8    mov         dword ptr [ebp-14],eax
 0073B3FB    mov         byte ptr [ebp-10],11
 0073B3FF    lea         edx,[ebp-18]
 0073B402    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0073B407    mov         eax,dword ptr [eax]
 0073B409    call        005DDC74
 0073B40E    mov         eax,dword ptr [ebp-18]
 0073B411    mov         dword ptr [ebp-0C],eax
 0073B414    mov         byte ptr [ebp-8],11
 0073B418    lea         edx,[ebp-14]
 0073B41B    mov         ecx,1
 0073B420    mov         eax,73B494;'%s (%s)'
 0073B425    call        Format
 0073B42A    mov         edx,dword ptr [ebp-4]
 0073B42D    mov         eax,ebx
 0073B42F    call        TControl.SetText
 0073B434    xor         eax,eax
 0073B436    pop         edx
 0073B437    pop         ecx
 0073B438    pop         ecx
 0073B439    mov         dword ptr fs:[eax],edx
 0073B43C    push        73B459
 0073B441    lea         eax,[ebp-18]
 0073B444    call        @UStrClr
 0073B449    lea         eax,[ebp-4]
 0073B44C    call        @UStrClr
 0073B451    ret
>0073B452    jmp         @HandleFinally
>0073B457    jmp         0073B441
 0073B459    pop         ebx
 0073B45A    mov         esp,ebp
 0073B45C    pop         ebp
 0073B45D    ret
*}
end;

//0073B4A4
{*procedure TSelectZonesDlg.SetCheckMarks(?:Integer; ?:?);
begin
 0073B4A4    push        ebx
 0073B4A5    push        esi
 0073B4A6    push        edi
 0073B4A7    add         esp,0FFFFFFE0
 0073B4AA    mov         esi,ecx
 0073B4AC    lea         edi,[esp]
 0073B4AF    mov         ecx,8
 0073B4B4    rep movs    dword ptr [edi],dword ptr [esi]
 0073B4B6    mov         esi,eax
 0073B4B8    xor         ebx,ebx
 0073B4BA    xor         ecx,ecx
 0073B4BC    mov         edx,ebx
 0073B4BE    mov         eax,dword ptr [esi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B4C4    call        TCheckListBox.SetChecked
 0073B4C9    inc         ebx
 0073B4CA    cmp         ebx,0FA
>0073B4D0    jne         0073B4BA
 0073B4D2    xor         ebx,ebx
 0073B4D4    mov         eax,ebx
 0073B4D6    cmp         eax,0FF
>0073B4DB    ja          0073B4E1
 0073B4DD    bt          dword ptr [esp],eax
>0073B4E1    jae         0073B4F4
 0073B4E3    mov         cl,1
 0073B4E5    mov         edx,ebx
 0073B4E7    mov         eax,dword ptr [esi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B4ED    call        TCheckListBox.SetChecked
>0073B4F2    jmp         0073B503
 0073B4F4    xor         ecx,ecx
 0073B4F6    mov         edx,ebx
 0073B4F8    mov         eax,dword ptr [esi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B4FE    call        TCheckListBox.SetChecked
 0073B503    inc         ebx
 0073B504    cmp         ebx,0FA
>0073B50A    jne         0073B4D4
 0073B50C    add         esp,20
 0073B50F    pop         edi
 0073B510    pop         esi
 0073B511    pop         ebx
 0073B512    ret
end;*}

//0073B514
procedure TSelectZonesDlg.Translate(IniFile:TFXIniFile);
begin
{*
 0073B514    push        ebp
 0073B515    mov         ebp,esp
 0073B517    xor         ecx,ecx
 0073B519    push        ecx
 0073B51A    push        ecx
 0073B51B    push        ecx
 0073B51C    push        ecx
 0073B51D    push        ecx
 0073B51E    push        ecx
 0073B51F    push        ecx
 0073B520    push        ecx
 0073B521    push        ebx
 0073B522    push        esi
 0073B523    push        edi
 0073B524    mov         esi,edx
 0073B526    mov         ebx,eax
 0073B528    xor         eax,eax
 0073B52A    push        ebp
 0073B52B    push        73B669
 0073B530    push        dword ptr fs:[eax]
 0073B533    mov         dword ptr fs:[eax],esp
 0073B536    push        73B684;'Select Zones'
 0073B53B    lea         eax,[ebp-8]
 0073B53E    push        eax
 0073B53F    mov         ecx,73B6AC;'sSelectZones'
 0073B544    mov         edx,73B6D4;'AddressReport'
 0073B549    mov         eax,esi
 0073B54B    mov         edi,dword ptr [eax]
 0073B54D    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073B550    push        dword ptr [ebp-8]
 0073B553    push        73B6FC;' ('
 0073B558    lea         edx,[ebp-0C]
 0073B55B    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0073B560    mov         eax,dword ptr [eax]
 0073B562    call        005DDC74
 0073B567    push        dword ptr [ebp-0C]
 0073B56A    push        73B710;')'
 0073B56F    lea         eax,[ebp-4]
 0073B572    mov         edx,4
 0073B577    call        @UStrCatN
 0073B57C    mov         edx,dword ptr [ebp-4]
 0073B57F    mov         eax,ebx
 0073B581    call        TControl.SetText
 0073B586    push        73B720;'OK'
 0073B58B    lea         eax,[ebp-10]
 0073B58E    push        eax
 0073B58F    mov         ecx,73B734;'sOKBtn'
 0073B594    mov         edx,73B750;'CommonTexts'
 0073B599    mov         eax,esi
 0073B59B    mov         edi,dword ptr [eax]
 0073B59D    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073B5A0    mov         edx,dword ptr [ebp-10]
 0073B5A3    mov         eax,dword ptr [ebx+3C4];TSelectZonesDlg.btnOK:TBitBtn
 0073B5A9    call        TControl.SetText
 0073B5AE    push        73B774;'Cancel'
 0073B5B3    lea         eax,[ebp-14]
 0073B5B6    push        eax
 0073B5B7    mov         ecx,73B790;'sCancelBtn'
 0073B5BC    mov         edx,73B750;'CommonTexts'
 0073B5C1    mov         eax,esi
 0073B5C3    mov         edi,dword ptr [eax]
 0073B5C5    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073B5C8    mov         edx,dword ptr [ebp-14]
 0073B5CB    mov         eax,dword ptr [ebx+3C8];TSelectZonesDlg.btnCancel:TBitBtn
 0073B5D1    call        TControl.SetText
 0073B5D6    push        73B7B4;'Select all'
 0073B5DB    lea         eax,[ebp-18]
 0073B5DE    push        eax
 0073B5DF    mov         ecx,73B7D8;'sSelectAllBtn'
 0073B5E4    mov         edx,73B750;'CommonTexts'
 0073B5E9    mov         eax,esi
 0073B5EB    mov         edi,dword ptr [eax]
 0073B5ED    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073B5F0    mov         edx,dword ptr [ebp-18]
 0073B5F3    mov         eax,dword ptr [ebx+3CC];TSelectZonesDlg.btnSelectAll:TButton
 0073B5F9    call        TControl.SetText
 0073B5FE    push        73B800;'Clear all'
 0073B603    lea         eax,[ebp-1C]
 0073B606    push        eax
 0073B607    mov         ecx,73B820;'sClearAllBtn'
 0073B60C    mov         edx,73B750;'CommonTexts'
 0073B611    mov         eax,esi
 0073B613    mov         edi,dword ptr [eax]
 0073B615    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073B618    mov         edx,dword ptr [ebp-1C]
 0073B61B    mov         eax,dword ptr [ebx+3D0];TSelectZonesDlg.btnClearAll:TButton
 0073B621    call        TControl.SetText
 0073B626    push        73B848;'First zone'
 0073B62B    lea         eax,[ebp-20]
 0073B62E    push        eax
 0073B62F    mov         ecx,73B86C;'slblFirstZone'
 0073B634    mov         edx,73B6D4;'AddressReport'
 0073B639    mov         eax,esi
 0073B63B    mov         esi,dword ptr [eax]
 0073B63D    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073B640    mov         edx,dword ptr [ebp-20]
 0073B643    mov         eax,dword ptr [ebx+3D4];TSelectZonesDlg.lblFirstZone:TLabel
 0073B649    call        TControl.SetText
 0073B64E    xor         eax,eax
 0073B650    pop         edx
 0073B651    pop         ecx
 0073B652    pop         ecx
 0073B653    mov         dword ptr fs:[eax],edx
 0073B656    push        73B670
 0073B65B    lea         eax,[ebp-20]
 0073B65E    mov         edx,8
 0073B663    call        @UStrArrayClr
 0073B668    ret
>0073B669    jmp         @HandleFinally
>0073B66E    jmp         0073B65B
 0073B670    pop         edi
 0073B671    pop         esi
 0073B672    pop         ebx
 0073B673    mov         esp,ebp
 0073B675    pop         ebp
 0073B676    ret
*}
end;

//0073B888
{*procedure TSelectZonesDlg.GetCheckMarks(?:?; ?:?);
begin
 0073B888    push        ebx
 0073B889    push        esi
 0073B88A    push        edi
 0073B88B    push        ebp
 0073B88C    mov         edi,ecx
 0073B88E    mov         ebp,edx
 0073B890    mov         esi,eax
 0073B892    push        esi
 0073B893    push        edi
 0073B894    mov         esi,73B8D8
 0073B899    mov         ecx,8
 0073B89E    rep movs    dword ptr [edi],dword ptr [esi]
 0073B8A0    pop         edi
 0073B8A1    pop         esi
 0073B8A2    xor         ebx,ebx
 0073B8A4    mov         edx,ebx
 0073B8A6    mov         eax,dword ptr [esi+3C0];TSelectZonesDlg.clbZones:TCheckListBox
 0073B8AC    call        TCheckListBox.GetChecked
 0073B8B1    test        al,al
>0073B8B3    je          0073B8C1
 0073B8B5    mov         eax,ebx
 0073B8B7    cmp         eax,0FF
>0073B8BC    ja          0073B8C1
 0073B8BE    bts         dword ptr [edi],eax
 0073B8C1    inc         ebx
 0073B8C2    cmp         ebx,0FA
>0073B8C8    jne         0073B8A4
 0073B8CA    mov         eax,dword ptr [esi+3DC];TSelectZonesDlg.ZonesOffset:Integer
 0073B8D0    mov         dword ptr [ebp],eax
 0073B8D3    pop         ebp
 0073B8D4    pop         edi
 0073B8D5    pop         esi
 0073B8D6    pop         ebx
 0073B8D7    ret
end;*}

//0073CB88
procedure sub_0073CB88(?:TFXDocPreview);
begin
{*
 0073CB88    push        ebx
 0073CB89    push        ecx
 0073CB8A    mov         ebx,eax
 0073CB8C    mov         eax,dword ptr [ebx+40]
 0073CB8F    call        TControl.GetClientWidth
 0073CB94    sar         eax,1
>0073CB96    jns         0073CB9B
 0073CB98    adc         eax,0
 0073CB9B    mov         edx,dword ptr [ebx+58]
 0073CB9E    sar         edx,1
>0073CBA0    jns         0073CBA5
 0073CBA2    adc         edx,0
 0073CBA5    sub         eax,edx
>0073CBA7    jno         0073CBAE
 0073CBA9    call        @IntOver
 0073CBAE    mov         dword ptr [esp],eax
 0073CBB1    cmp         dword ptr [esp],6
>0073CBB5    jge         0073CBBE
 0073CBB7    mov         eax,6
>0073CBBC    jmp         0073CBC1
 0073CBBE    mov         eax,dword ptr [esp]
 0073CBC1    mov         edx,eax
 0073CBC3    mov         eax,ebx
 0073CBC5    call        TControl.SetLeft
 0073CBCA    pop         edx
 0073CBCB    pop         ebx
 0073CBCC    ret
*}
end;

//0073CBD0
procedure sub_0073CBD0;
begin
{*
 0073CBD0    mov         eax,[00902C88];gvar_00902C88:TFXDocPrinter
 0073CBD5    cmp         byte ptr [eax+5],0
>0073CBD9    jne         0073CBF7
 0073CBDB    mov         eax,[00902C88];gvar_00902C88:TFXDocPrinter
 0073CBE0    call        TFXDocPrinter.ClearPreview
 0073CBE5    mov         eax,[00902C88];gvar_00902C88:TFXDocPrinter
 0073CBEA    mov         edx,dword ptr [eax+8]
 0073CBED    mov         eax,[00902C88];gvar_00902C88:TFXDocPrinter
 0073CBF2    call        TFXDocPrinter.PrintPage
 0073CBF7    ret
*}
end;

//0073CBF8
constructor TFXDocPrinter.Create(PreviewHost:TComponent);
begin
{*
 0073CBF8    push        ebp
 0073CBF9    mov         ebp,esp
 0073CBFB    push        ecx
 0073CBFC    push        ebx
 0073CBFD    push        esi
 0073CBFE    push        edi
 0073CBFF    test        dl,dl
>0073CC01    je          0073CC0B
 0073CC03    add         esp,0FFFFFFF0
 0073CC06    call        @ClassCreate
 0073CC0B    mov         esi,ecx
 0073CC0D    mov         byte ptr [ebp-1],dl
 0073CC10    mov         ebx,eax
 0073CC12    xor         edx,edx
 0073CC14    mov         eax,ebx
 0073CC16    call        TObject.Create
 0073CC1B    mov         dword ptr [ebx+30],64;TFXDocPrinter.FLHeight:Integer
 0073CC22    mov         ecx,esi
 0073CC24    mov         dl,1
 0073CC26    mov         eax,[0073BBF8];TFXDocPreview
 0073CC2B    call        TCustomPanel.Create;TFXDocPreview.Create
 0073CC30    mov         edi,eax
 0073CC32    mov         dword ptr [ebx+0E0],edi;TFXDocPrinter.DocPreview:TFXDocPreview
 0073CC38    mov         eax,edi
 0073CC3A    mov         edx,esi
 0073CC3C    mov         ecx,dword ptr [eax]
 0073CC3E    call        dword ptr [ecx+8C];TFXDocPreview.sub_004F22F8
 0073CC44    mov         eax,dword ptr [ebx+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073CC4A    mov         edx,6
 0073CC4F    call        TControl.SetLeft
 0073CC54    mov         eax,dword ptr [ebx+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073CC5A    mov         edx,6
 0073CC5F    call        TControl.SetTop
 0073CC64    call        Printer
 0073CC69    call        TPrinter.GetPrinters
 0073CC6E    mov         edx,dword ptr [eax]
 0073CC70    call        dword ptr [edx+14];TStrings.GetCount
 0073CC73    test        eax,eax
>0073CC75    jne         0073CC85
 0073CC77    mov         byte ptr [ebx+4],1;TFXDocPrinter.NoPrinter:Boolean
 0073CC7B    mov         eax,73CCB0;'Warning! No printers installed'
 0073CC80    call        ShowMessage
 0073CC85    mov         eax,ebx
 0073CC87    cmp         byte ptr [ebp-1],0
>0073CC8B    je          0073CC9C
 0073CC8D    call        @AfterConstruction
 0073CC92    pop         dword ptr fs:[0]
 0073CC99    add         esp,0C
 0073CC9C    mov         eax,ebx
 0073CC9E    pop         edi
 0073CC9F    pop         esi
 0073CCA0    pop         ebx
 0073CCA1    pop         ecx
 0073CCA2    pop         ebp
 0073CCA3    ret
*}
end;

//0073CCF0
function TFXDocPrinter.GetPaperWidth:Integer;
begin
{*
 0073CCF0    cmp         byte ptr [eax+4],0;TFXDocPrinter.NoPrinter:Boolean
>0073CCF4    je          0073CCFC
 0073CCF6    mov         eax,1360
 0073CCFB    ret
 0073CCFC    push        6E
 0073CCFE    call        Printer
 0073CD03    call        TPrinter.GetHandle
 0073CD08    push        eax
 0073CD09    call        gdi32.GetDeviceCaps
 0073CD0E    ret
*}
end;

//0073CD10
function TFXDocPrinter.GetPaperHeight:Integer;
begin
{*
 0073CD10    cmp         byte ptr [eax+4],0;TFXDocPrinter.NoPrinter:Boolean
>0073CD14    je          0073CD1C
 0073CD16    mov         eax,1B67
 0073CD1B    ret
 0073CD1C    push        6F
 0073CD1E    call        Printer
 0073CD23    call        TPrinter.GetHandle
 0073CD28    push        eax
 0073CD29    call        gdi32.GetDeviceCaps
 0073CD2E    ret
*}
end;

//0073CD30
function TFXDocPrinter.GetPageOffsetLeft:Integer;
begin
{*
 0073CD30    cmp         byte ptr [eax+4],0;TFXDocPrinter.NoPrinter:Boolean
>0073CD34    je          0073CD3C
 0073CD36    mov         eax,76
 0073CD3B    ret
 0073CD3C    push        70
 0073CD3E    call        Printer
 0073CD43    call        TPrinter.GetHandle
 0073CD48    push        eax
 0073CD49    call        gdi32.GetDeviceCaps
 0073CD4E    ret
*}
end;

//0073CD50
function TFXDocPrinter.GetPageOffsetTop:Integer;
begin
{*
 0073CD50    cmp         byte ptr [eax+4],0;TFXDocPrinter.NoPrinter:Boolean
>0073CD54    je          0073CD5C
 0073CD56    mov         eax,0A5
 0073CD5B    ret
 0073CD5C    push        71
 0073CD5E    call        Printer
 0073CD63    call        TPrinter.GetHandle
 0073CD68    push        eax
 0073CD69    call        gdi32.GetDeviceCaps
 0073CD6E    ret
*}
end;

//0073CD70
function TFXDocPrinter.GetPageOffsetRight:Integer;
begin
{*
 0073CD70    push        ebx
 0073CD71    push        esi
 0073CD72    mov         ebx,eax
 0073CD74    cmp         byte ptr [ebx+4],0;TFXDocPrinter.NoPrinter:Boolean
>0073CD78    je          0073CD82
 0073CD7A    mov         eax,76
 0073CD7F    pop         esi
 0073CD80    pop         ebx
 0073CD81    ret
 0073CD82    mov         eax,ebx
 0073CD84    call        TFXDocPrinter.GetPaperWidth
 0073CD89    mov         esi,eax
 0073CD8B    mov         eax,ebx
 0073CD8D    call        TFXDocPrinter.GetPageOffsetLeft
 0073CD92    sub         esi,eax
>0073CD94    jno         0073CD9B
 0073CD96    call        @IntOver
 0073CD9B    push        8
 0073CD9D    call        Printer
 0073CDA2    call        TPrinter.GetHandle
 0073CDA7    push        eax
 0073CDA8    call        gdi32.GetDeviceCaps
 0073CDAD    xchg        eax,esi
 0073CDAE    sub         eax,esi
>0073CDB0    jno         0073CDB7
 0073CDB2    call        @IntOver
 0073CDB7    pop         esi
 0073CDB8    pop         ebx
 0073CDB9    ret
*}
end;

//0073CDBC
function TFXDocPrinter.GetPageOffsetBottom:Integer;
begin
{*
 0073CDBC    push        ebx
 0073CDBD    push        esi
 0073CDBE    mov         ebx,eax
 0073CDC0    cmp         byte ptr [ebx+4],0;TFXDocPrinter.NoPrinter:Boolean
>0073CDC4    je          0073CDCE
 0073CDC6    mov         eax,0A5
 0073CDCB    pop         esi
 0073CDCC    pop         ebx
 0073CDCD    ret
 0073CDCE    mov         eax,ebx
 0073CDD0    call        TFXDocPrinter.GetPaperHeight
 0073CDD5    mov         esi,eax
 0073CDD7    mov         eax,ebx
 0073CDD9    call        TFXDocPrinter.GetPageOffsetTop
 0073CDDE    sub         esi,eax
>0073CDE0    jno         0073CDE7
 0073CDE2    call        @IntOver
 0073CDE7    push        0A
 0073CDE9    call        Printer
 0073CDEE    call        TPrinter.GetHandle
 0073CDF3    push        eax
 0073CDF4    call        gdi32.GetDeviceCaps
 0073CDF9    xchg        eax,esi
 0073CDFA    sub         eax,esi
>0073CDFC    jno         0073CE03
 0073CDFE    call        @IntOver
 0073CE03    pop         esi
 0073CE04    pop         ebx
 0073CE05    ret
*}
end;

//0073CE08
function TFXDocPrinter.GetPixelsPerInchX:Integer;
begin
{*
 0073CE08    cmp         byte ptr [eax+4],0;TFXDocPrinter.NoPrinter:Boolean
>0073CE0C    je          0073CE14
 0073CE0E    mov         eax,258
 0073CE13    ret
 0073CE14    push        58
 0073CE16    call        Printer
 0073CE1B    call        TPrinter.GetHandle
 0073CE20    push        eax
 0073CE21    call        gdi32.GetDeviceCaps
 0073CE26    ret
*}
end;

//0073CE28
function TFXDocPrinter.pix(mm:Integer; ppi:Integer):Integer;
begin
{*
 0073CE28    push        0FE
 0073CE2D    push        ecx
 0073CE2E    imul        eax,edx,0A
>0073CE31    jno         0073CE38
 0073CE33    call        @IntOver
 0073CE38    push        eax
 0073CE39    call        kernel32.MulDiv
 0073CE3E    ret
*}
end;

//0073CE40
procedure TFXDocPrinter.SelectCanvas(Canvas:TCanvases);
begin
{*
 0073CE40    push        ebx
 0073CE41    push        esi
 0073CE42    add         esp,0FFFFFFD0
 0073CE45    mov         ebx,edx
 0073CE47    mov         esi,eax
 0073CE49    mov         dword ptr [esi+0C8],64;TFXDocPrinter.zoom:Integer
 0073CE53    mov         eax,[007C4E78];^Screen:TScreen
 0073CE58    mov         eax,dword ptr [eax]
 0073CE5A    mov         eax,dword ptr [eax+50];TScreen.FPixelsPerInch:Integer
 0073CE5D    mov         dword ptr [esi+38],eax;TFXDocPrinter.ScrPPI:Integer
 0073CE60    mov         eax,esi
 0073CE62    call        TFXDocPrinter.GetPixelsPerInchX
 0073CE67    mov         dword ptr [esi+34],eax;TFXDocPrinter.PrnPPI:Integer
 0073CE6A    sub         bl,1
>0073CE6D    jb          0073CE7A
>0073CE6F    je          0073D081
>0073CE75    jmp         0073D239
 0073CE7A    mov         eax,dword ptr [esi+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073CE80    mov         eax,dword ptr [eax+290];TFXDocPreview.FCanvas:TCanvas
 0073CE86    mov         dword ptr [esi+14],eax;TFXDocPrinter.MyCanvas:TCanvas
 0073CE89    mov         eax,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073CE8C    push        eax
 0073CE8D    mov         eax,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CE90    push        eax
 0073CE91    mov         eax,esi
 0073CE93    call        TFXDocPrinter.GetPaperWidth
 0073CE98    push        eax
 0073CE99    call        kernel32.MulDiv
 0073CE9E    mov         dword ptr [esi+40],eax;TFXDocPrinter.pw:Integer
 0073CEA1    mov         eax,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073CEA4    push        eax
 0073CEA5    mov         eax,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CEA8    push        eax
 0073CEA9    mov         eax,esi
 0073CEAB    call        TFXDocPrinter.GetPaperHeight
 0073CEB0    push        eax
 0073CEB1    call        kernel32.MulDiv
 0073CEB6    mov         dword ptr [esi+44],eax;TFXDocPrinter.ph:Integer
 0073CEB9    push        64
 0073CEBB    mov         eax,dword ptr [esi+0C8];TFXDocPrinter.zoom:Integer
 0073CEC1    push        eax
 0073CEC2    mov         eax,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073CEC5    push        eax
 0073CEC6    call        kernel32.MulDiv
 0073CECB    mov         dword ptr [esi+40],eax;TFXDocPrinter.pw:Integer
 0073CECE    push        64
 0073CED0    mov         eax,dword ptr [esi+0C8];TFXDocPrinter.zoom:Integer
 0073CED6    push        eax
 0073CED7    mov         eax,dword ptr [esi+44];TFXDocPrinter.ph:Integer
 0073CEDA    push        eax
 0073CEDB    call        kernel32.MulDiv
 0073CEE0    mov         dword ptr [esi+44],eax;TFXDocPrinter.ph:Integer
 0073CEE3    mov         eax,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073CEE6    sar         eax,1
>0073CEE8    jns         0073CEED
 0073CEEA    adc         eax,0
 0073CEED    mov         dword ptr [esi+48],eax;TFXDocPrinter.pc:Integer
 0073CEF0    mov         eax,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CEF3    mov         dword ptr [esi+3C],eax;TFXDocPrinter.ppi:Integer
 0073CEF6    mov         ecx,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CEF9    mov         edx,dword ptr [esi+18];TFXDocPrinter.FLMargin:Integer
 0073CEFC    mov         eax,esi
 0073CEFE    call        TFXDocPrinter.pix
 0073CF03    mov         dword ptr [esp],eax
 0073CF06    mov         eax,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073CF09    push        eax
 0073CF0A    mov         eax,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CF0D    push        eax
 0073CF0E    mov         eax,esi
 0073CF10    call        TFXDocPrinter.GetPageOffsetLeft
 0073CF15    push        eax
 0073CF16    call        kernel32.MulDiv
 0073CF1B    mov         dword ptr [esp+4],eax
 0073CF1F    mov         eax,dword ptr [esp]
 0073CF22    cmp         eax,dword ptr [esp+4]
>0073CF26    jle         0073CF2D
 0073CF28    mov         eax,dword ptr [esp]
>0073CF2B    jmp         0073CF31
 0073CF2D    mov         eax,dword ptr [esp+4]
 0073CF31    mov         dword ptr [esi+4C],eax;TFXDocPrinter.lm:Integer
 0073CF34    mov         ecx,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CF37    mov         edx,dword ptr [esi+20];TFXDocPrinter.FTMargin:Integer
 0073CF3A    mov         eax,esi
 0073CF3C    call        TFXDocPrinter.pix
 0073CF41    mov         dword ptr [esp+8],eax
 0073CF45    mov         eax,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073CF48    push        eax
 0073CF49    mov         eax,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CF4C    push        eax
 0073CF4D    mov         eax,esi
 0073CF4F    call        TFXDocPrinter.GetPageOffsetTop
 0073CF54    push        eax
 0073CF55    call        kernel32.MulDiv
 0073CF5A    mov         dword ptr [esp+0C],eax
 0073CF5E    mov         eax,dword ptr [esp+8]
 0073CF62    cmp         eax,dword ptr [esp+0C]
>0073CF66    jle         0073CF6E
 0073CF68    mov         eax,dword ptr [esp+8]
>0073CF6C    jmp         0073CF72
 0073CF6E    mov         eax,dword ptr [esp+0C]
 0073CF72    mov         dword ptr [esi+50],eax;TFXDocPrinter.tm:Integer
 0073CF75    mov         ecx,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CF78    mov         edx,dword ptr [esi+1C];TFXDocPrinter.FRMargin:Integer
 0073CF7B    mov         eax,esi
 0073CF7D    call        TFXDocPrinter.pix
 0073CF82    mov         edx,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073CF85    sub         edx,eax
>0073CF87    jno         0073CF8E
 0073CF89    call        @IntOver
 0073CF8E    mov         dword ptr [esp+10],edx
 0073CF92    mov         eax,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073CF95    push        eax
 0073CF96    mov         eax,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CF99    push        eax
 0073CF9A    mov         eax,esi
 0073CF9C    call        TFXDocPrinter.GetPageOffsetRight
 0073CFA1    push        eax
 0073CFA2    call        kernel32.MulDiv
 0073CFA7    mov         edx,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073CFAA    sub         edx,eax
>0073CFAC    jno         0073CFB3
 0073CFAE    call        @IntOver
 0073CFB3    mov         dword ptr [esp+14],edx
 0073CFB7    mov         eax,dword ptr [esp+10]
 0073CFBB    cmp         eax,dword ptr [esp+14]
>0073CFBF    jge         0073CFC7
 0073CFC1    mov         eax,dword ptr [esp+10]
>0073CFC5    jmp         0073CFCB
 0073CFC7    mov         eax,dword ptr [esp+14]
 0073CFCB    mov         dword ptr [esi+54],eax;TFXDocPrinter.rm:Integer
 0073CFCE    mov         ecx,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CFD1    mov         edx,dword ptr [esi+24];TFXDocPrinter.FBMargin:Integer
 0073CFD4    mov         eax,esi
 0073CFD6    call        TFXDocPrinter.pix
 0073CFDB    mov         edx,dword ptr [esi+44];TFXDocPrinter.ph:Integer
 0073CFDE    sub         edx,eax
>0073CFE0    jno         0073CFE7
 0073CFE2    call        @IntOver
 0073CFE7    mov         dword ptr [esi+58],edx;TFXDocPrinter.bm:Integer
 0073CFEA    mov         ecx,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073CFED    mov         edx,dword ptr [esi+28];TFXDocPrinter.FHeaderH:Integer
 0073CFF0    mov         eax,esi
 0073CFF2    call        TFXDocPrinter.pix
 0073CFF7    mov         dword ptr [esi+5C],eax;TFXDocPrinter.hh:Integer
 0073CFFA    mov         eax,dword ptr [esi+50];TFXDocPrinter.tm:Integer
 0073CFFD    mov         dword ptr [esi+60],eax;TFXDocPrinter.ht:Integer
 0073D000    mov         ecx,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073D003    mov         edx,dword ptr [esi+2C];TFXDocPrinter.FFooterH:Integer
 0073D006    mov         eax,esi
 0073D008    call        TFXDocPrinter.pix
 0073D00D    mov         dword ptr [esi+64],eax;TFXDocPrinter.fh:Integer
 0073D010    mov         ecx,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073D013    mov         edx,dword ptr [esi+24];TFXDocPrinter.FBMargin:Integer
 0073D016    mov         eax,esi
 0073D018    call        TFXDocPrinter.pix
 0073D01D    mov         edx,dword ptr [esi+44];TFXDocPrinter.ph:Integer
 0073D020    sub         edx,eax
>0073D022    jno         0073D029
 0073D024    call        @IntOver
 0073D029    sub         edx,dword ptr [esi+64]
>0073D02C    jno         0073D033
 0073D02E    call        @IntOver
 0073D033    mov         dword ptr [esi+68],edx;TFXDocPrinter.ft:Integer
 0073D036    mov         eax,dword ptr [esi+50];TFXDocPrinter.tm:Integer
 0073D039    add         eax,dword ptr [esi+5C];TFXDocPrinter.hh:Integer
>0073D03C    jno         0073D043
 0073D03E    call        @IntOver
 0073D043    mov         dword ptr [esi+6C],eax;TFXDocPrinter.ct:Integer
 0073D046    mov         dword ptr [esi+70],2;TFXDocPrinter.hl:Integer
 0073D04D    mov         edx,73D24C;'X'
 0073D052    mov         eax,dword ptr [esi+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D055    call        TCustomCanvas.TextHeight
 0073D05A    mov         dword ptr [esi+0CC],eax;TFXDocPrinter.dyref:Integer
 0073D060    mov         edx,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073D063    mov         eax,dword ptr [esi+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073D069    call        TControl.SetWidth
 0073D06E    mov         edx,dword ptr [esi+44];TFXDocPrinter.ph:Integer
 0073D071    mov         eax,dword ptr [esi+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073D077    call        TControl.SetHeight
>0073D07C    jmp         0073D239
 0073D081    call        Printer
 0073D086    call        TPrinter.GetCanvas
 0073D08B    mov         dword ptr [esi+14],eax;TFXDocPrinter.MyCanvas:TCanvas
 0073D08E    call        Printer
 0073D093    call        TPrinter.GetPageWidth
 0073D098    mov         dword ptr [esi+40],eax;TFXDocPrinter.pw:Integer
 0073D09B    call        Printer
 0073D0A0    call        TPrinter.GetPageHeight
 0073D0A5    mov         dword ptr [esi+44],eax;TFXDocPrinter.ph:Integer
 0073D0A8    mov         eax,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073D0AB    sar         eax,1
>0073D0AD    jns         0073D0B2
 0073D0AF    adc         eax,0
 0073D0B2    mov         dword ptr [esi+48],eax;TFXDocPrinter.pc:Integer
 0073D0B5    mov         eax,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D0B8    mov         dword ptr [esi+3C],eax;TFXDocPrinter.ppi:Integer
 0073D0BB    mov         ecx,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D0BE    mov         edx,dword ptr [esi+18];TFXDocPrinter.FLMargin:Integer
 0073D0C1    mov         eax,esi
 0073D0C3    call        TFXDocPrinter.pix
 0073D0C8    mov         ebx,eax
 0073D0CA    mov         eax,esi
 0073D0CC    call        TFXDocPrinter.GetPageOffsetLeft
 0073D0D1    sub         ebx,eax
>0073D0D3    jno         0073D0DA
 0073D0D5    call        @IntOver
 0073D0DA    mov         dword ptr [esp+18],ebx
 0073D0DE    cmp         dword ptr [esp+18],0
>0073D0E3    jge         0073D0E9
 0073D0E5    xor         eax,eax
>0073D0E7    jmp         0073D0ED
 0073D0E9    mov         eax,dword ptr [esp+18]
 0073D0ED    mov         dword ptr [esi+4C],eax;TFXDocPrinter.lm:Integer
 0073D0F0    mov         ecx,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D0F3    mov         edx,dword ptr [esi+20];TFXDocPrinter.FTMargin:Integer
 0073D0F6    mov         eax,esi
 0073D0F8    call        TFXDocPrinter.pix
 0073D0FD    mov         ebx,eax
 0073D0FF    mov         eax,esi
 0073D101    call        TFXDocPrinter.GetPageOffsetTop
 0073D106    sub         ebx,eax
>0073D108    jno         0073D10F
 0073D10A    call        @IntOver
 0073D10F    mov         dword ptr [esp+1C],ebx
 0073D113    cmp         dword ptr [esp+1C],0
>0073D118    jge         0073D11E
 0073D11A    xor         eax,eax
>0073D11C    jmp         0073D122
 0073D11E    mov         eax,dword ptr [esp+1C]
 0073D122    mov         dword ptr [esi+50],eax;TFXDocPrinter.tm:Integer
 0073D125    mov         eax,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073D128    mov         dword ptr [esp+20],eax
 0073D12C    mov         ecx,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D12F    mov         edx,dword ptr [esi+1C];TFXDocPrinter.FRMargin:Integer
 0073D132    mov         eax,esi
 0073D134    call        TFXDocPrinter.pix
 0073D139    mov         ebx,dword ptr [esi+40];TFXDocPrinter.pw:Integer
 0073D13C    sub         ebx,eax
>0073D13E    jno         0073D145
 0073D140    call        @IntOver
 0073D145    mov         eax,esi
 0073D147    call        TFXDocPrinter.GetPageOffsetRight
 0073D14C    add         ebx,eax
>0073D14E    jno         0073D155
 0073D150    call        @IntOver
 0073D155    mov         dword ptr [esp+24],ebx
 0073D159    mov         eax,dword ptr [esp+20]
 0073D15D    cmp         eax,dword ptr [esp+24]
>0073D161    jge         0073D169
 0073D163    mov         eax,dword ptr [esp+20]
>0073D167    jmp         0073D16D
 0073D169    mov         eax,dword ptr [esp+24]
 0073D16D    mov         dword ptr [esi+54],eax;TFXDocPrinter.rm:Integer
 0073D170    mov         eax,dword ptr [esi+44];TFXDocPrinter.ph:Integer
 0073D173    mov         dword ptr [esp+28],eax
 0073D177    mov         ecx,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D17A    mov         edx,dword ptr [esi+24];TFXDocPrinter.FBMargin:Integer
 0073D17D    mov         eax,esi
 0073D17F    call        TFXDocPrinter.pix
 0073D184    mov         ebx,dword ptr [esi+44];TFXDocPrinter.ph:Integer
 0073D187    sub         ebx,eax
>0073D189    jno         0073D190
 0073D18B    call        @IntOver
 0073D190    mov         eax,esi
 0073D192    call        TFXDocPrinter.GetPageOffsetBottom
 0073D197    add         ebx,eax
>0073D199    jno         0073D1A0
 0073D19B    call        @IntOver
 0073D1A0    mov         dword ptr [esp+2C],ebx
 0073D1A4    mov         eax,dword ptr [esp+28]
 0073D1A8    cmp         eax,dword ptr [esp+2C]
>0073D1AC    jge         0073D1B4
 0073D1AE    mov         eax,dword ptr [esp+28]
>0073D1B2    jmp         0073D1B8
 0073D1B4    mov         eax,dword ptr [esp+2C]
 0073D1B8    mov         dword ptr [esi+58],eax;TFXDocPrinter.bm:Integer
 0073D1BB    mov         ecx,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D1BE    mov         edx,dword ptr [esi+28];TFXDocPrinter.FHeaderH:Integer
 0073D1C1    mov         eax,esi
 0073D1C3    call        TFXDocPrinter.pix
 0073D1C8    mov         dword ptr [esi+5C],eax;TFXDocPrinter.hh:Integer
 0073D1CB    mov         eax,dword ptr [esi+50];TFXDocPrinter.tm:Integer
 0073D1CE    mov         dword ptr [esi+60],eax;TFXDocPrinter.ht:Integer
 0073D1D1    mov         ecx,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D1D4    mov         edx,dword ptr [esi+2C];TFXDocPrinter.FFooterH:Integer
 0073D1D7    mov         eax,esi
 0073D1D9    call        TFXDocPrinter.pix
 0073D1DE    mov         dword ptr [esi+64],eax;TFXDocPrinter.fh:Integer
 0073D1E1    mov         ecx,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D1E4    mov         edx,dword ptr [esi+24];TFXDocPrinter.FBMargin:Integer
 0073D1E7    mov         eax,esi
 0073D1E9    call        TFXDocPrinter.pix
 0073D1EE    mov         ebx,dword ptr [esi+44];TFXDocPrinter.ph:Integer
 0073D1F1    sub         ebx,eax
>0073D1F3    jno         0073D1FA
 0073D1F5    call        @IntOver
 0073D1FA    sub         ebx,dword ptr [esi+64]
>0073D1FD    jno         0073D204
 0073D1FF    call        @IntOver
 0073D204    mov         eax,esi
 0073D206    call        TFXDocPrinter.GetPageOffsetBottom
 0073D20B    add         ebx,eax
>0073D20D    jno         0073D214
 0073D20F    call        @IntOver
 0073D214    mov         dword ptr [esi+68],ebx;TFXDocPrinter.ft:Integer
 0073D217    mov         eax,dword ptr [esi+50];TFXDocPrinter.tm:Integer
 0073D21A    add         eax,dword ptr [esi+5C];TFXDocPrinter.hh:Integer
>0073D21D    jno         0073D224
 0073D21F    call        @IntOver
 0073D224    mov         dword ptr [esi+6C],eax;TFXDocPrinter.ct:Integer
 0073D227    mov         eax,dword ptr [esi+38];TFXDocPrinter.ScrPPI:Integer
 0073D22A    push        eax
 0073D22B    mov         eax,dword ptr [esi+34];TFXDocPrinter.PrnPPI:Integer
 0073D22E    push        eax
 0073D22F    push        2
 0073D231    call        kernel32.MulDiv
 0073D236    mov         dword ptr [esi+70],eax;TFXDocPrinter.hl:Integer
 0073D239    add         esp,30
 0073D23C    pop         esi
 0073D23D    pop         ebx
 0073D23E    ret
*}
end;

//0073D250
procedure TFXDocPrinter.ClearPreview;
begin
{*
 0073D250    push        ebx
 0073D251    add         esp,0FFFFFFF0
 0073D254    mov         ebx,eax
 0073D256    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D259    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0073D25C    mov         edx,0FFFFFF
 0073D261    call        TBrush.SetColor
 0073D266    mov         edx,esp
 0073D268    mov         eax,dword ptr [ebx+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073D26E    mov         ecx,dword ptr [eax]
 0073D270    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0073D273    mov         edx,esp
 0073D275    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D278    mov         ecx,dword ptr [eax]
 0073D27A    call        dword ptr [ecx+54];TCanvas.FillRect
 0073D27D    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D280    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0073D283    xor         edx,edx
 0073D285    call        TBrush.SetColor
 0073D28A    mov         edx,esp
 0073D28C    mov         eax,dword ptr [ebx+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073D292    mov         ecx,dword ptr [eax]
 0073D294    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0073D297    mov         edx,esp
 0073D299    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D29C    mov         ecx,dword ptr [eax]
 0073D29E    call        dword ptr [ecx+5C];TCanvas.FrameRect
 0073D2A1    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D2A4    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0073D2A7    mov         edx,0FFFFFF
 0073D2AC    call        TBrush.SetColor
 0073D2B1    add         esp,10
 0073D2B4    pop         ebx
 0073D2B5    ret
*}
end;

//0073D2B8
procedure TFXDocPrinter.AlignPreview;
begin
{*
 0073D2B8    mov         eax,dword ptr [eax+0E0];TFXDocPrinter.DocPreview:TFXDocPreview
 0073D2BE    call        0073CB88
 0073D2C3    ret
*}
end;

//0073D2C4
procedure TFXDocPrinter.NewLine(LinesNeededOnSamePage:Integer);
begin
{*
 0073D2C4    push        ebx
 0073D2C5    push        esi
 0073D2C6    mov         ebx,edx
 0073D2C8    mov         ecx,dword ptr [eax+0C4];TFXDocPrinter.dy:Integer
 0073D2CE    imul        ebx,ecx
>0073D2D1    jno         0073D2D8
 0073D2D3    call        @IntOver
 0073D2D8    add         ebx,dword ptr [eax+78];TFXDocPrinter.y:Integer
>0073D2DB    jno         0073D2E2
 0073D2DD    call        @IntOver
 0073D2E2    mov         esi,dword ptr [eax+68];TFXDocPrinter.ft:Integer
 0073D2E5    sub         esi,ecx
>0073D2E7    jno         0073D2EE
 0073D2E9    call        @IntOver
 0073D2EE    cmp         ebx,esi
>0073D2F0    jg          0073D2F6
 0073D2F2    test        edx,edx
>0073D2F4    jne         0073D31F
 0073D2F6    add         dword ptr [eax+0C],1;TFXDocPrinter.FCurrentPage:Integer
>0073D2FA    jno         0073D301
 0073D2FC    call        @IntOver
 0073D301    add         dword ptr [eax+10],1;TFXDocPrinter.FNumberOfPages:Integer
>0073D305    jno         0073D30C
 0073D307    call        @IntOver
 0073D30C    mov         dword ptr [eax+0D0],1;TFXDocPrinter.Line:Integer
 0073D316    mov         edx,dword ptr [eax+6C];TFXDocPrinter.ct:Integer
 0073D319    mov         dword ptr [eax+78],edx;TFXDocPrinter.y:Integer
 0073D31C    pop         esi
 0073D31D    pop         ebx
 0073D31E    ret
 0073D31F    mov         edx,dword ptr [eax+0D0];TFXDocPrinter.Line:Integer
 0073D325    imul        edx,ecx
>0073D328    jno         0073D32F
 0073D32A    call        @IntOver
 0073D32F    add         edx,dword ptr [eax+6C];TFXDocPrinter.ct:Integer
>0073D332    jno         0073D339
 0073D334    call        @IntOver
 0073D339    mov         dword ptr [eax+78],edx;TFXDocPrinter.y:Integer
 0073D33C    add         dword ptr [eax+0D0],1;TFXDocPrinter.Line:Integer
>0073D343    jno         0073D34A
 0073D345    call        @IntOver
 0073D34A    pop         esi
 0073D34B    pop         ebx
 0073D34C    ret
*}
end;

//0073D350
procedure TFXDocPrinter.PrintBox(x:Integer; y:Integer; penw:Integer; h:Integer; w:Integer);
begin
{*
 0073D350    push        ebp
 0073D351    mov         ebp,esp
 0073D353    add         esp,0FFFFFFE8
 0073D356    push        ebx
 0073D357    push        esi
 0073D358    push        edi
 0073D359    mov         dword ptr [ebp-8],ecx
 0073D35C    mov         dword ptr [ebp-4],edx
 0073D35F    mov         ebx,eax
 0073D361    mov         esi,dword ptr [ebp+10]
 0073D364    mov         eax,dword ptr [ebx+38];TFXDocPrinter.ScrPPI:Integer
 0073D367    push        eax
 0073D368    mov         eax,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D36B    push        eax
 0073D36C    push        esi
 0073D36D    call        kernel32.MulDiv
 0073D372    mov         esi,eax
 0073D374    mov         eax,dword ptr [ebx+38];TFXDocPrinter.ScrPPI:Integer
 0073D377    push        eax
 0073D378    mov         eax,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D37B    push        eax
 0073D37C    mov         eax,dword ptr [ebp+0C]
 0073D37F    push        eax
 0073D380    call        kernel32.MulDiv
 0073D385    mov         dword ptr [ebp+0C],eax
 0073D388    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D38B    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0073D38E    mov         edx,dword ptr [ebp+8]
 0073D391    call        TPen.SetWidth
 0073D396    mov         ecx,dword ptr [ebp-8]
 0073D399    mov         edx,dword ptr [ebp-4]
 0073D39C    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D39F    mov         edi,dword ptr [eax]
 0073D3A1    call        dword ptr [edi+64];TCanvas.MoveTo
 0073D3A4    mov         eax,dword ptr [ebp+0C]
 0073D3A7    push        eax
 0073D3A8    lea         eax,[ebp-18]
 0073D3AB    push        eax
 0073D3AC    mov         ecx,esi
 0073D3AE    mov         edx,dword ptr [ebp-8]
 0073D3B1    mov         eax,dword ptr [ebp-4]
 0073D3B4    call        Bounds
 0073D3B9    lea         edx,[ebp-18]
 0073D3BC    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D3BF    call        TCustomCanvas.Rectangle
 0073D3C4    pop         edi
 0073D3C5    pop         esi
 0073D3C6    pop         ebx
 0073D3C7    mov         esp,ebp
 0073D3C9    pop         ebp
 0073D3CA    ret         0C
*}
end;

//0073D3D0
procedure TFXDocPrinter.PrintText(x:Integer; y:Integer; s:string);
begin
{*
 0073D3D0    push        ebp
 0073D3D1    mov         ebp,esp
 0073D3D3    push        ebx
 0073D3D4    push        esi
 0073D3D5    push        edi
 0073D3D6    mov         edi,edx
 0073D3D8    mov         esi,eax
 0073D3DA    mov         eax,dword ptr [ebp+8]
 0073D3DD    push        eax
 0073D3DE    mov         edx,edi
 0073D3E0    mov         eax,dword ptr [esi+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D3E3    mov         ebx,dword ptr [eax]
 0073D3E5    call        dword ptr [ebx+90];TCanvas.TextOut
 0073D3EB    pop         edi
 0073D3EC    pop         esi
 0073D3ED    pop         ebx
 0073D3EE    pop         ebp
 0073D3EF    ret         4
*}
end;

//0073D3F4
procedure TFXDocPrinter.PrintHeader(s1:string; s2:string; s3:string);
begin
{*
 0073D3F4    push        ebp
 0073D3F5    mov         ebp,esp
 0073D3F7    add         esp,0FFFFFFF8
 0073D3FA    push        ebx
 0073D3FB    push        esi
 0073D3FC    mov         dword ptr [ebp-8],ecx
 0073D3FF    mov         dword ptr [ebp-4],edx
 0073D402    mov         ebx,eax
 0073D404    mov         eax,dword ptr [ebp-4]
 0073D407    call        @UStrAddRef
 0073D40C    mov         eax,dword ptr [ebp-8]
 0073D40F    call        @UStrAddRef
 0073D414    mov         eax,dword ptr [ebp+8]
 0073D417    call        @UStrAddRef
 0073D41C    xor         eax,eax
 0073D41E    push        ebp
 0073D41F    push        73D59D
 0073D424    push        dword ptr fs:[eax]
 0073D427    mov         dword ptr fs:[eax],esp
 0073D42A    mov         eax,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
 0073D42D    mov         dword ptr [ebx+74],eax;TFXDocPrinter.x:Integer
 0073D430    mov         eax,dword ptr [ebx+60];TFXDocPrinter.ht:Integer
 0073D433    mov         dword ptr [ebx+78],eax;TFXDocPrinter.y:Integer
 0073D436    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D439    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0073D43C    mov         edx,0FFFFFF
 0073D441    call        TBrush.SetColor
 0073D446    push        64
 0073D448    mov         eax,dword ptr [ebx+0C8];TFXDocPrinter.zoom:Integer
 0073D44E    push        eax
 0073D44F    push        0A
 0073D451    call        kernel32.MulDiv
 0073D456    mov         edx,eax
 0073D458    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D45B    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0073D45E    call        TFont.SetSize
 0073D463    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D466    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0073D469    movzx       edx,byte ptr ds:[73D5AC];0x1 gvar_0073D5AC
 0073D470    call        TFont.SetStyle
 0073D475    push        64
 0073D477    push        64
 0073D479    mov         edx,73D5BC;'X'
 0073D47E    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D481    call        TCustomCanvas.TextHeight
 0073D486    push        eax
 0073D487    call        kernel32.MulDiv
 0073D48C    mov         dword ptr [ebx+0C4],eax;TFXDocPrinter.dy:Integer
 0073D492    mov         eax,dword ptr [ebp-4]
 0073D495    push        eax
 0073D496    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D499    mov         edx,dword ptr [ebx+74];TFXDocPrinter.x:Integer
 0073D49C    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D49F    mov         esi,dword ptr [eax]
 0073D4A1    call        dword ptr [esi+90];TCanvas.TextOut
 0073D4A7    mov         edx,dword ptr [ebp-8]
 0073D4AA    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D4AD    call        TCustomCanvas.TextWidth
 0073D4B2    sar         eax,1
>0073D4B4    jns         0073D4B9
 0073D4B6    adc         eax,0
 0073D4B9    mov         esi,dword ptr [ebx+48];TFXDocPrinter.pc:Integer
 0073D4BC    sub         esi,eax
>0073D4BE    jno         0073D4C5
 0073D4C0    call        @IntOver
 0073D4C5    mov         dword ptr [ebx+74],esi;TFXDocPrinter.x:Integer
 0073D4C8    mov         eax,dword ptr [ebp-8]
 0073D4CB    push        eax
 0073D4CC    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D4CF    mov         edx,esi
 0073D4D1    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D4D4    mov         esi,dword ptr [eax]
 0073D4D6    call        dword ptr [esi+90];TCanvas.TextOut
 0073D4DC    mov         edx,dword ptr [ebp+8]
 0073D4DF    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D4E2    call        TCustomCanvas.TextWidth
 0073D4E7    mov         esi,dword ptr [ebx+54];TFXDocPrinter.rm:Integer
 0073D4EA    sub         esi,eax
>0073D4EC    jno         0073D4F3
 0073D4EE    call        @IntOver
 0073D4F3    mov         dword ptr [ebx+74],esi;TFXDocPrinter.x:Integer
 0073D4F6    mov         eax,dword ptr [ebp+8]
 0073D4F9    push        eax
 0073D4FA    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D4FD    mov         edx,esi
 0073D4FF    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D502    mov         esi,dword ptr [eax]
 0073D504    call        dword ptr [esi+90];TCanvas.TextOut
 0073D50A    mov         eax,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
 0073D50D    mov         dword ptr [ebx+74],eax;TFXDocPrinter.x:Integer
 0073D510    mov         eax,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D513    add         eax,dword ptr [ebx+0C4];TFXDocPrinter.dy:Integer
>0073D519    jno         0073D520
 0073D51B    call        @IntOver
 0073D520    add         eax,dword ptr [ebx+70];TFXDocPrinter.hl:Integer
>0073D523    jno         0073D52A
 0073D525    call        @IntOver
 0073D52A    mov         dword ptr [ebx+78],eax;TFXDocPrinter.y:Integer
 0073D52D    push        64
 0073D52F    mov         eax,dword ptr [ebx+0C8];TFXDocPrinter.zoom:Integer
 0073D535    push        eax
 0073D536    mov         eax,dword ptr [ebx+70];TFXDocPrinter.hl:Integer
 0073D539    push        eax
 0073D53A    call        kernel32.MulDiv
 0073D53F    mov         edx,eax
 0073D541    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D544    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0073D547    call        TPen.SetWidth
 0073D54C    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D54F    mov         edx,dword ptr [ebx+74];TFXDocPrinter.x:Integer
 0073D552    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D555    mov         esi,dword ptr [eax]
 0073D557    call        dword ptr [esi+64];TCanvas.MoveTo
 0073D55A    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D55D    mov         edx,dword ptr [ebx+54];TFXDocPrinter.rm:Integer
 0073D560    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D563    mov         esi,dword ptr [eax]
 0073D565    call        dword ptr [esi+60];TCanvas.LineTo
 0073D568    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D56B    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0073D56E    movzx       edx,byte ptr ds:[73D5C0];0x0 gvar_0073D5C0
 0073D575    call        TFont.SetStyle
 0073D57A    xor         eax,eax
 0073D57C    pop         edx
 0073D57D    pop         ecx
 0073D57E    pop         ecx
 0073D57F    mov         dword ptr fs:[eax],edx
 0073D582    push        73D5A4
 0073D587    lea         eax,[ebp-8]
 0073D58A    mov         edx,2
 0073D58F    call        @UStrArrayClr
 0073D594    lea         eax,[ebp+8]
 0073D597    call        @UStrClr
 0073D59C    ret
>0073D59D    jmp         @HandleFinally
>0073D5A2    jmp         0073D587
 0073D5A4    pop         esi
 0073D5A5    pop         ebx
 0073D5A6    pop         ecx
 0073D5A7    pop         ecx
 0073D5A8    pop         ebp
 0073D5A9    ret         4
*}
end;

//0073D5C4
procedure TFXDocPrinter.PrintFooter(s1:string; s2:string; s3:string);
begin
{*
 0073D5C4    push        ebp
 0073D5C5    mov         ebp,esp
 0073D5C7    add         esp,0FFFFFFF8
 0073D5CA    push        ebx
 0073D5CB    push        esi
 0073D5CC    mov         dword ptr [ebp-8],ecx
 0073D5CF    mov         dword ptr [ebp-4],edx
 0073D5D2    mov         ebx,eax
 0073D5D4    mov         eax,dword ptr [ebp-4]
 0073D5D7    call        @UStrAddRef
 0073D5DC    mov         eax,dword ptr [ebp-8]
 0073D5DF    call        @UStrAddRef
 0073D5E4    mov         eax,dword ptr [ebp+8]
 0073D5E7    call        @UStrAddRef
 0073D5EC    xor         eax,eax
 0073D5EE    push        ebp
 0073D5EF    push        73D774
 0073D5F4    push        dword ptr fs:[eax]
 0073D5F7    mov         dword ptr fs:[eax],esp
 0073D5FA    mov         eax,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
 0073D5FD    mov         dword ptr [ebx+74],eax;TFXDocPrinter.x:Integer
 0073D600    mov         eax,dword ptr [ebx+68];TFXDocPrinter.ft:Integer
 0073D603    add         eax,dword ptr [ebx+70];TFXDocPrinter.hl:Integer
>0073D606    jno         0073D60D
 0073D608    call        @IntOver
 0073D60D    mov         dword ptr [ebx+78],eax;TFXDocPrinter.y:Integer
 0073D610    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D613    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0073D616    mov         edx,0FFFFFF
 0073D61B    call        TBrush.SetColor
 0073D620    push        64
 0073D622    mov         eax,dword ptr [ebx+0C8];TFXDocPrinter.zoom:Integer
 0073D628    push        eax
 0073D629    push        0A
 0073D62B    call        kernel32.MulDiv
 0073D630    mov         edx,eax
 0073D632    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D635    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0073D638    call        TFont.SetSize
 0073D63D    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D640    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0073D643    movzx       edx,byte ptr ds:[73D784];0x1 gvar_0073D784
 0073D64A    call        TFont.SetStyle
 0073D64F    push        64
 0073D651    push        64
 0073D653    mov         edx,73D794;'X'
 0073D658    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D65B    call        TCustomCanvas.TextHeight
 0073D660    push        eax
 0073D661    call        kernel32.MulDiv
 0073D666    mov         dword ptr [ebx+0C4],eax;TFXDocPrinter.dy:Integer
 0073D66C    push        64
 0073D66E    mov         eax,dword ptr [ebx+0C8];TFXDocPrinter.zoom:Integer
 0073D674    push        eax
 0073D675    mov         eax,dword ptr [ebx+70];TFXDocPrinter.hl:Integer
 0073D678    push        eax
 0073D679    call        kernel32.MulDiv
 0073D67E    mov         edx,eax
 0073D680    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D683    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0073D686    call        TPen.SetWidth
 0073D68B    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D68E    mov         edx,dword ptr [ebx+74];TFXDocPrinter.x:Integer
 0073D691    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D694    mov         esi,dword ptr [eax]
 0073D696    call        dword ptr [esi+64];TCanvas.MoveTo
 0073D699    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D69C    mov         edx,dword ptr [ebx+54];TFXDocPrinter.rm:Integer
 0073D69F    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D6A2    mov         esi,dword ptr [eax]
 0073D6A4    call        dword ptr [esi+60];TCanvas.LineTo
 0073D6A7    mov         edx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D6AA    mov         eax,dword ptr [ebx+70];TFXDocPrinter.hl:Integer
 0073D6AD    add         edx,eax
>0073D6AF    jno         0073D6B6
 0073D6B1    call        @IntOver
 0073D6B6    add         edx,eax
>0073D6B8    jno         0073D6BF
 0073D6BA    call        @IntOver
 0073D6BF    mov         dword ptr [ebx+78],edx;TFXDocPrinter.y:Integer
 0073D6C2    mov         esi,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
 0073D6C5    mov         dword ptr [ebx+74],esi;TFXDocPrinter.x:Integer
 0073D6C8    mov         eax,dword ptr [ebp-4]
 0073D6CB    push        eax
 0073D6CC    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D6CF    mov         edx,esi
 0073D6D1    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D6D4    mov         esi,dword ptr [eax]
 0073D6D6    call        dword ptr [esi+90];TCanvas.TextOut
 0073D6DC    mov         edx,dword ptr [ebp-8]
 0073D6DF    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D6E2    call        TCustomCanvas.TextWidth
 0073D6E7    sar         eax,1
>0073D6E9    jns         0073D6EE
 0073D6EB    adc         eax,0
 0073D6EE    mov         esi,dword ptr [ebx+48];TFXDocPrinter.pc:Integer
 0073D6F1    sub         esi,eax
>0073D6F3    jno         0073D6FA
 0073D6F5    call        @IntOver
 0073D6FA    mov         dword ptr [ebx+74],esi;TFXDocPrinter.x:Integer
 0073D6FD    mov         eax,dword ptr [ebp-8]
 0073D700    push        eax
 0073D701    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D704    mov         edx,esi
 0073D706    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D709    mov         esi,dword ptr [eax]
 0073D70B    call        dword ptr [esi+90];TCanvas.TextOut
 0073D711    mov         edx,dword ptr [ebp+8]
 0073D714    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D717    call        TCustomCanvas.TextWidth
 0073D71C    mov         esi,dword ptr [ebx+54];TFXDocPrinter.rm:Integer
 0073D71F    sub         esi,eax
>0073D721    jno         0073D728
 0073D723    call        @IntOver
 0073D728    mov         dword ptr [ebx+74],esi;TFXDocPrinter.x:Integer
 0073D72B    mov         eax,dword ptr [ebp+8]
 0073D72E    push        eax
 0073D72F    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073D732    mov         edx,esi
 0073D734    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D737    mov         esi,dword ptr [eax]
 0073D739    call        dword ptr [esi+90];TCanvas.TextOut
 0073D73F    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D742    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0073D745    movzx       edx,byte ptr ds:[73D798];0x0 gvar_0073D798
 0073D74C    call        TFont.SetStyle
 0073D751    xor         eax,eax
 0073D753    pop         edx
 0073D754    pop         ecx
 0073D755    pop         ecx
 0073D756    mov         dword ptr fs:[eax],edx
 0073D759    push        73D77B
 0073D75E    lea         eax,[ebp-8]
 0073D761    mov         edx,2
 0073D766    call        @UStrArrayClr
 0073D76B    lea         eax,[ebp+8]
 0073D76E    call        @UStrClr
 0073D773    ret
>0073D774    jmp         @HandleFinally
>0073D779    jmp         0073D75E
 0073D77B    pop         esi
 0073D77C    pop         ebx
 0073D77D    pop         ecx
 0073D77E    pop         ecx
 0073D77F    pop         ebp
 0073D780    ret         4
*}
end;

//0073D79C
procedure TFXDocPrinter.PrintPage(PageToPrint:Integer);
begin
{*
 0073D79C    push        ebp
 0073D79D    mov         ebp,esp
 0073D79F    mov         ecx,0C
 0073D7A4    push        0
 0073D7A6    push        0
 0073D7A8    dec         ecx
>0073D7A9    jne         0073D7A4
 0073D7AB    push        ebx
 0073D7AC    push        esi
 0073D7AD    push        edi
 0073D7AE    mov         dword ptr [ebp-1C],edx
 0073D7B1    mov         ebx,eax
 0073D7B3    xor         eax,eax
 0073D7B5    push        ebp
 0073D7B6    push        73DE8E
 0073D7BB    push        dword ptr fs:[eax]
 0073D7BE    mov         dword ptr fs:[eax],esp
 0073D7C1    xor         eax,eax
 0073D7C3    mov         dword ptr [ebx+0C],eax;TFXDocPrinter.FCurrentPage:Integer
 0073D7C6    xor         eax,eax
 0073D7C8    mov         dword ptr [ebx+10],eax;TFXDocPrinter.FNumberOfPages:Integer
 0073D7CB    xor         eax,eax
 0073D7CD    mov         dword ptr [ebx+0D0],eax;TFXDocPrinter.Line:Integer
 0073D7D3    mov         eax,dword ptr [ebx+68];TFXDocPrinter.ft:Integer
 0073D7D6    mov         dword ptr [ebx+78],eax;TFXDocPrinter.y:Integer
 0073D7D9    mov         edx,dword ptr [ebx+0D4];TFXDocPrinter.FFont:TFont
 0073D7DF    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D7E2    call        TCanvas.SetFont
 0073D7E7    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D7EA    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0073D7ED    movzx       edx,byte ptr ds:[73DE9C];0x0 gvar_0073DE9C
 0073D7F4    call        TFont.SetStyle
 0073D7F9    mov         ecx,dword ptr [ebx+0D4];TFXDocPrinter.FFont:TFont
 0073D7FF    mov         eax,dword ptr [ecx+10];TFont.FResource:PResource
 0073D802    mov         eax,dword ptr [eax+18]
 0073D805    cdq
 0073D806    xor         eax,edx
 0073D808    sub         eax,edx
>0073D80A    jno         0073D811
 0073D80C    call        @IntOver
 0073D811    mov         dword ptr [ebp-28],eax
 0073D814    push        64
 0073D816    mov         eax,dword ptr [ebx+30];TFXDocPrinter.FLHeight:Integer
 0073D819    push        eax
 0073D81A    mov         edx,73DEAC;'X'
 0073D81F    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073D822    call        TCustomCanvas.TextHeight
 0073D827    push        eax
 0073D828    call        kernel32.MulDiv
 0073D82D    mov         dword ptr [ebx+0C4],eax;TFXDocPrinter.dy:Integer
 0073D833    test        byte ptr [ebx+0DC],1;TFXDocPrinter.RepIncs:TReportIncludes
>0073D83A    je          0073D85D
 0073D83C    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D83F    mov         edx,2
 0073D844    mov         eax,ebx
 0073D846    call        TFXDocPrinter.pix
 0073D84B    add         eax,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
>0073D84E    jno         0073D855
 0073D850    call        @IntOver
 0073D855    mov         dword ptr [ebx+9C],eax;TFXDocPrinter.x1:Integer
>0073D85B    jmp         0073D866
 0073D85D    mov         eax,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
 0073D860    mov         dword ptr [ebx+9C],eax;TFXDocPrinter.x1:Integer
 0073D866    mov         eax,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
 0073D869    mov         dword ptr [ebx+7C],eax;TFXDocPrinter.h1:Integer
 0073D86C    test        byte ptr [ebx+0DC],1;TFXDocPrinter.RepIncs:TReportIncludes
>0073D873    je          0073D899
 0073D875    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D878    mov         edx,0A
 0073D87D    mov         eax,ebx
 0073D87F    call        TFXDocPrinter.pix
 0073D884    add         eax,dword ptr [ebx+9C];TFXDocPrinter.x1:Integer
>0073D88A    jno         0073D891
 0073D88C    call        @IntOver
 0073D891    mov         dword ptr [ebx+0A0],eax;TFXDocPrinter.x2:Integer
>0073D897    jmp         0073D8A5
 0073D899    mov         eax,dword ptr [ebx+9C];TFXDocPrinter.x1:Integer
 0073D89F    mov         dword ptr [ebx+0A0],eax;TFXDocPrinter.x2:Integer
 0073D8A5    mov         eax,dword ptr [ebx+0A0];TFXDocPrinter.x2:Integer
 0073D8AB    mov         dword ptr [ebx+80],eax;TFXDocPrinter.h2:Integer
 0073D8B1    test        byte ptr [ebx+0DC],2;TFXDocPrinter.RepIncs:TReportIncludes
>0073D8B8    je          0073D8DE
 0073D8BA    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D8BD    mov         edx,11
 0073D8C2    mov         eax,ebx
 0073D8C4    call        TFXDocPrinter.pix
 0073D8C9    add         eax,dword ptr [ebx+0A0];TFXDocPrinter.x2:Integer
>0073D8CF    jno         0073D8D6
 0073D8D1    call        @IntOver
 0073D8D6    mov         dword ptr [ebx+0A4],eax;TFXDocPrinter.x3:Integer
>0073D8DC    jmp         0073D8EA
 0073D8DE    mov         eax,dword ptr [ebx+0A0];TFXDocPrinter.x2:Integer
 0073D8E4    mov         dword ptr [ebx+0A4],eax;TFXDocPrinter.x3:Integer
 0073D8EA    mov         eax,dword ptr [ebx+0A4];TFXDocPrinter.x3:Integer
 0073D8F0    mov         dword ptr [ebx+84],eax;TFXDocPrinter.h3:Integer
 0073D8F6    test        byte ptr [ebx+0DC],4;TFXDocPrinter.RepIncs:TReportIncludes
>0073D8FD    je          0073D923
 0073D8FF    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D902    mov         edx,0C
 0073D907    mov         eax,ebx
 0073D909    call        TFXDocPrinter.pix
 0073D90E    add         eax,dword ptr [ebx+0A4];TFXDocPrinter.x3:Integer
>0073D914    jno         0073D91B
 0073D916    call        @IntOver
 0073D91B    mov         dword ptr [ebx+0A8],eax;TFXDocPrinter.x4:Integer
>0073D921    jmp         0073D92F
 0073D923    mov         eax,dword ptr [ebx+0A4];TFXDocPrinter.x3:Integer
 0073D929    mov         dword ptr [ebx+0A8],eax;TFXDocPrinter.x4:Integer
 0073D92F    mov         eax,dword ptr [ebx+0A8];TFXDocPrinter.x4:Integer
 0073D935    mov         dword ptr [ebx+88],eax;TFXDocPrinter.h4:Integer
 0073D93B    test        byte ptr [ebx+0DC],8;TFXDocPrinter.RepIncs:TReportIncludes
>0073D942    je          0073D968
 0073D944    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D947    mov         edx,28
 0073D94C    mov         eax,ebx
 0073D94E    call        TFXDocPrinter.pix
 0073D953    add         eax,dword ptr [ebx+0A8];TFXDocPrinter.x4:Integer
>0073D959    jno         0073D960
 0073D95B    call        @IntOver
 0073D960    mov         dword ptr [ebx+0AC],eax;TFXDocPrinter.x5:Integer
>0073D966    jmp         0073D974
 0073D968    mov         eax,dword ptr [ebx+0A8];TFXDocPrinter.x4:Integer
 0073D96E    mov         dword ptr [ebx+0AC],eax;TFXDocPrinter.x5:Integer
 0073D974    mov         eax,dword ptr [ebx+0AC];TFXDocPrinter.x5:Integer
 0073D97A    mov         dword ptr [ebx+8C],eax;TFXDocPrinter.h5:Integer
 0073D980    test        byte ptr [ebx+0DC],40;TFXDocPrinter.RepIncs:TReportIncludes
>0073D987    je          0073D9AD
 0073D989    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D98C    mov         edx,32
 0073D991    mov         eax,ebx
 0073D993    call        TFXDocPrinter.pix
 0073D998    add         eax,dword ptr [ebx+0AC];TFXDocPrinter.x5:Integer
>0073D99E    jno         0073D9A5
 0073D9A0    call        @IntOver
 0073D9A5    mov         dword ptr [ebx+0B0],eax;TFXDocPrinter.x6:Integer
>0073D9AB    jmp         0073D9B9
 0073D9AD    mov         eax,dword ptr [ebx+0AC];TFXDocPrinter.x5:Integer
 0073D9B3    mov         dword ptr [ebx+0B0],eax;TFXDocPrinter.x6:Integer
 0073D9B9    mov         eax,dword ptr [ebx+0B0];TFXDocPrinter.x6:Integer
 0073D9BF    mov         dword ptr [ebx+90],eax;TFXDocPrinter.h6:Integer
 0073D9C5    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D9C8    mov         edx,32
 0073D9CD    mov         eax,ebx
 0073D9CF    call        TFXDocPrinter.pix
 0073D9D4    mov         esi,eax
 0073D9D6    add         esi,dword ptr [ebx+0B0];TFXDocPrinter.x6:Integer
>0073D9DC    jno         0073D9E3
 0073D9DE    call        @IntOver
 0073D9E3    mov         dword ptr [ebx+0B4],esi;TFXDocPrinter.x7:Integer
 0073D9E9    mov         dword ptr [ebx+94],esi;TFXDocPrinter.h7:Integer
 0073D9EF    mov         ecx,dword ptr [ebx+3C];TFXDocPrinter.ppi:Integer
 0073D9F2    mov         edx,3
 0073D9F7    mov         eax,ebx
 0073D9F9    call        TFXDocPrinter.pix
 0073D9FE    mov         edx,dword ptr [ebx+54];TFXDocPrinter.rm:Integer
 0073DA01    sub         edx,dword ptr [ebp-28]
>0073DA04    jno         0073DA0B
 0073DA06    call        @IntOver
 0073DA0B    sub         edx,eax
>0073DA0D    jno         0073DA14
 0073DA0F    call        @IntOver
 0073DA14    mov         dword ptr [ebx+0B8],edx;TFXDocPrinter.x8:Integer
 0073DA1A    mov         edx,dword ptr ds:[7C3E38];^'Tested'
 0073DA20    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073DA23    call        TCustomCanvas.TextWidth
 0073DA28    mov         edx,dword ptr [ebx+54];TFXDocPrinter.rm:Integer
 0073DA2B    sub         edx,eax
>0073DA2D    jno         0073DA34
 0073DA2F    call        @IntOver
 0073DA34    mov         dword ptr [ebx+98],edx;TFXDocPrinter.h8:Integer
 0073DA3A    mov         eax,dword ptr [ebx+0D8];TFXDocPrinter.AddrList:TObjectList
 0073DA40    mov         eax,dword ptr [eax+8];TObjectList.FCount:Integer
 0073DA43    sub         eax,1
>0073DA46    jno         0073DA4D
 0073DA48    call        @IntOver
 0073DA4D    test        eax,eax
>0073DA4F    jl          0073DDC4
 0073DA55    inc         eax
 0073DA56    mov         dword ptr [ebp-2C],eax
 0073DA59    mov         dword ptr [ebp-20],0
 0073DA60    mov         edx,1
 0073DA65    mov         eax,ebx
 0073DA67    call        TFXDocPrinter.NewLine
 0073DA6C    mov         eax,dword ptr [ebx+0C];TFXDocPrinter.FCurrentPage:Integer
 0073DA6F    cmp         eax,dword ptr [ebp-1C]
>0073DA72    jne         0073DDA3
 0073DA78    cmp         dword ptr [ebx+0D0],1;TFXDocPrinter.Line:Integer
>0073DA7F    jne         0073DB90
 0073DA85    test        byte ptr [ebx+0DC],1;TFXDocPrinter.RepIncs:TReportIncludes
>0073DA8C    je          0073DA9C
 0073DA8E    lea         eax,[ebp-4]
 0073DA91    mov         edx,dword ptr ds:[7C3E24];^'Panel'
 0073DA97    call        @UStrLAsg
 0073DA9C    test        byte ptr [ebx+0DC],2;TFXDocPrinter.RepIncs:TReportIncludes
>0073DAA3    je          0073DAB3
 0073DAA5    lea         eax,[ebp-8]
 0073DAA8    mov         edx,dword ptr ds:[7C3E28];^'Address'
 0073DAAE    call        @UStrLAsg
 0073DAB3    test        byte ptr [ebx+0DC],4;TFXDocPrinter.RepIncs:TReportIncludes
>0073DABA    je          0073DACA
 0073DABC    lea         eax,[ebp-0C]
 0073DABF    mov         edx,dword ptr ds:[7C3E2C];^'Zone'
 0073DAC5    call        @UStrLAsg
 0073DACA    test        byte ptr [ebx+0DC],8;TFXDocPrinter.RepIncs:TReportIncludes
>0073DAD1    je          0073DAE1
 0073DAD3    lea         eax,[ebp-10]
 0073DAD6    mov         edx,dword ptr ds:[7C3E30];^'Device type'
 0073DADC    call        @UStrLAsg
 0073DAE1    test        byte ptr [ebx+0DC],40;TFXDocPrinter.RepIncs:TReportIncludes
>0073DAE8    je          0073DAF8
 0073DAEA    lea         eax,[ebp-14]
 0073DAED    mov         edx,dword ptr ds:[7C3E34];^'Text'
 0073DAF3    call        @UStrLAsg
 0073DAF8    test        byte ptr [ebx+0DC],80;TFXDocPrinter.RepIncs:TReportIncludes
>0073DAFF    je          0073DB0F
 0073DB01    lea         eax,[ebp-18]
 0073DB04    mov         edx,dword ptr ds:[7C3E38];^'Tested'
 0073DB0A    call        @UStrLAsg
 0073DB0F    mov         eax,dword ptr [ebp-4]
 0073DB12    push        eax
 0073DB13    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DB16    mov         edx,dword ptr [ebx+7C];TFXDocPrinter.h1:Integer
 0073DB19    mov         eax,ebx
 0073DB1B    call        TFXDocPrinter.PrintText
 0073DB20    mov         eax,dword ptr [ebp-8]
 0073DB23    push        eax
 0073DB24    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DB27    mov         edx,dword ptr [ebx+80];TFXDocPrinter.h2:Integer
 0073DB2D    mov         eax,ebx
 0073DB2F    call        TFXDocPrinter.PrintText
 0073DB34    mov         eax,dword ptr [ebp-0C]
 0073DB37    push        eax
 0073DB38    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DB3B    mov         edx,dword ptr [ebx+84];TFXDocPrinter.h3:Integer
 0073DB41    mov         eax,ebx
 0073DB43    call        TFXDocPrinter.PrintText
 0073DB48    mov         eax,dword ptr [ebp-10]
 0073DB4B    push        eax
 0073DB4C    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DB4F    mov         edx,dword ptr [ebx+88];TFXDocPrinter.h4:Integer
 0073DB55    mov         eax,ebx
 0073DB57    call        TFXDocPrinter.PrintText
 0073DB5C    mov         eax,dword ptr [ebp-14]
 0073DB5F    push        eax
 0073DB60    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DB63    mov         edx,dword ptr [ebx+8C];TFXDocPrinter.h5:Integer
 0073DB69    mov         eax,ebx
 0073DB6B    call        TFXDocPrinter.PrintText
 0073DB70    mov         eax,dword ptr [ebp-18]
 0073DB73    push        eax
 0073DB74    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DB77    mov         edx,dword ptr [ebx+98];TFXDocPrinter.h8:Integer
 0073DB7D    mov         eax,ebx
 0073DB7F    call        TFXDocPrinter.PrintText
 0073DB84    mov         edx,1
 0073DB89    mov         eax,ebx
 0073DB8B    call        TFXDocPrinter.NewLine
 0073DB90    mov         esi,dword ptr [ebx+0D8];TFXDocPrinter.AddrList:TObjectList
 0073DB96    mov         edx,dword ptr [ebp-20]
 0073DB99    mov         eax,esi
 0073DB9B    call        TList.Get
 0073DBA0    mov         esi,eax
 0073DBA2    movzx       eax,byte ptr [esi+4]
 0073DBA6    mov         byte ptr [ebp-21],al
 0073DBA9    movzx       eax,byte ptr [esi+5]
 0073DBAD    mov         byte ptr [ebp-22],al
 0073DBB0    movzx       edi,word ptr [esi+6]
 0073DBB4    movzx       eax,word ptr [esi+8]
 0073DBB8    mov         word ptr [ebp-24],ax
 0073DBBC    test        byte ptr [ebx+0DC],1;TFXDocPrinter.RepIncs:TReportIncludes
>0073DBC3    je          0073DBE3
 0073DBC5    lea         eax,[ebp-4]
 0073DBC8    push        eax
 0073DBC9    movzx       eax,byte ptr [ebp-21]
 0073DBCD    mov         dword ptr [ebp-34],eax
 0073DBD0    mov         byte ptr [ebp-30],0
 0073DBD4    lea         edx,[ebp-34]
 0073DBD7    xor         ecx,ecx
 0073DBD9    mov         eax,73DEBC;'%.2d'
 0073DBDE    call        Format
 0073DBE3    test        byte ptr [ebx+0DC],2;TFXDocPrinter.RepIncs:TReportIncludes
>0073DBEA    je          0073DC17
 0073DBEC    lea         eax,[ebp-8]
 0073DBEF    push        eax
 0073DBF0    movzx       eax,byte ptr [ebp-22]
 0073DBF4    mov         dword ptr [ebp-44],eax
 0073DBF7    mov         byte ptr [ebp-40],0
 0073DBFB    movzx       eax,di
 0073DBFE    mov         dword ptr [ebp-3C],eax
 0073DC01    mov         byte ptr [ebp-38],0
 0073DC05    lea         edx,[ebp-44]
 0073DC08    mov         ecx,1
 0073DC0D    mov         eax,73DED4;'%.3d.%.3d'
 0073DC12    call        Format
 0073DC17    test        byte ptr [ebx+0DC],4;TFXDocPrinter.RepIncs:TReportIncludes
>0073DC1E    je          0073DC3E
 0073DC20    lea         eax,[ebp-0C]
 0073DC23    push        eax
 0073DC24    movzx       eax,word ptr [ebp-24]
 0073DC28    mov         dword ptr [ebp-34],eax
 0073DC2B    mov         byte ptr [ebp-30],0
 0073DC2F    lea         edx,[ebp-34]
 0073DC32    xor         ecx,ecx
 0073DC34    mov         eax,73DEF4;'%.4d'
 0073DC39    call        Format
 0073DC3E    test        byte ptr [ebx+0DC],8;TFXDocPrinter.RepIncs:TReportIncludes
>0073DC45    je          0073DC52
 0073DC47    lea         eax,[ebp-10]
 0073DC4A    mov         edx,dword ptr [esi+0C]
 0073DC4D    call        @UStrLAsg
 0073DC52    test        byte ptr [ebx+0DC],40;TFXDocPrinter.RepIncs:TReportIncludes
>0073DC59    je          0073DC7F
 0073DC5B    lea         eax,[ebp-14]
 0073DC5E    push        eax
 0073DC5F    movzx       edx,byte ptr [ebp-21]
 0073DC63    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073DC68    mov         eax,dword ptr [eax]
 0073DC6A    call        TFXNet.GetPanel
 0073DC6F    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 0073DC72    movzx       edx,byte ptr [esi+5]
 0073DC76    movzx       ecx,word ptr [esi+6]
 0073DC7A    call        TFXPTD.TextOfAddress
 0073DC7F    test        byte ptr [ebx+0D0],1;TFXDocPrinter.Line:Integer
>0073DC86    je          0073DC9A
 0073DC88    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073DC8B    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0073DC8E    mov         edx,0FFFFFF
 0073DC93    call        TBrush.SetColor
>0073DC98    jmp         0073DCAA
 0073DC9A    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073DC9D    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0073DCA0    mov         edx,0DDEEDD
 0073DCA5    call        TBrush.SetColor
 0073DCAA    mov         edi,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DCAD    mov         eax,edi
 0073DCAF    mov         esi,dword ptr [ebx+0C4];TFXDocPrinter.dy:Integer
 0073DCB5    add         eax,esi
>0073DCB7    jno         0073DCBE
 0073DCB9    call        @IntOver
 0073DCBE    mov         edx,esi
 0073DCC0    test        edx,edx
>0073DCC2    jns         0073DCC7
 0073DCC4    add         edx,0F
 0073DCC7    sar         edx,4
 0073DCCA    sub         eax,edx
>0073DCCC    jno         0073DCD3
 0073DCCE    call        @IntOver
 0073DCD3    push        eax
 0073DCD4    lea         eax,[ebp-44]
 0073DCD7    push        eax
 0073DCD8    test        esi,esi
>0073DCDA    jns         0073DCDF
 0073DCDC    add         esi,0F
 0073DCDF    sar         esi,4
 0073DCE2    mov         edx,edi
 0073DCE4    sub         edx,esi
>0073DCE6    jno         0073DCED
 0073DCE8    call        @IntOver
 0073DCED    mov         ecx,dword ptr [ebx+54];TFXDocPrinter.rm:Integer
 0073DCF0    mov         eax,dword ptr [ebx+4C];TFXDocPrinter.lm:Integer
 0073DCF3    call        Rect
 0073DCF8    lea         edx,[ebp-44]
 0073DCFB    mov         eax,dword ptr [ebx+14];TFXDocPrinter.MyCanvas:TCanvas
 0073DCFE    mov         ecx,dword ptr [eax]
 0073DD00    call        dword ptr [ecx+54];TCanvas.FillRect
 0073DD03    mov         eax,dword ptr [ebp-4]
 0073DD06    push        eax
 0073DD07    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DD0A    mov         edx,dword ptr [ebx+9C];TFXDocPrinter.x1:Integer
 0073DD10    mov         eax,ebx
 0073DD12    call        TFXDocPrinter.PrintText
 0073DD17    mov         eax,dword ptr [ebp-8]
 0073DD1A    push        eax
 0073DD1B    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DD1E    mov         edx,dword ptr [ebx+0A0];TFXDocPrinter.x2:Integer
 0073DD24    mov         eax,ebx
 0073DD26    call        TFXDocPrinter.PrintText
 0073DD2B    mov         eax,dword ptr [ebp-0C]
 0073DD2E    push        eax
 0073DD2F    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DD32    mov         edx,dword ptr [ebx+0A4];TFXDocPrinter.x3:Integer
 0073DD38    mov         eax,ebx
 0073DD3A    call        TFXDocPrinter.PrintText
 0073DD3F    mov         eax,dword ptr [ebp-10]
 0073DD42    push        eax
 0073DD43    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DD46    mov         edx,dword ptr [ebx+0A8];TFXDocPrinter.x4:Integer
 0073DD4C    mov         eax,ebx
 0073DD4E    call        TFXDocPrinter.PrintText
 0073DD53    mov         eax,dword ptr [ebp-14]
 0073DD56    push        eax
 0073DD57    mov         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
 0073DD5A    mov         edx,dword ptr [ebx+0AC];TFXDocPrinter.x5:Integer
 0073DD60    mov         eax,ebx
 0073DD62    call        TFXDocPrinter.PrintText
 0073DD67    test        byte ptr [ebx+0DC],80;TFXDocPrinter.RepIncs:TReportIncludes
>0073DD6E    je          0073DDB8
 0073DD70    mov         eax,dword ptr [ebp-28]
 0073DD73    push        eax
 0073DD74    mov         eax,dword ptr [ebp-28]
 0073DD77    push        eax
 0073DD78    push        1
 0073DD7A    mov         ecx,dword ptr [ebx+0C4];TFXDocPrinter.dy:Integer
 0073DD80    test        ecx,ecx
>0073DD82    jns         0073DD87
 0073DD84    add         ecx,0F
 0073DD87    sar         ecx,4
 0073DD8A    add         ecx,dword ptr [ebx+78];TFXDocPrinter.y:Integer
>0073DD8D    jno         0073DD94
 0073DD8F    call        @IntOver
 0073DD94    mov         edx,dword ptr [ebx+0B8];TFXDocPrinter.x8:Integer
 0073DD9A    mov         eax,ebx
 0073DD9C    call        TFXDocPrinter.PrintBox
>0073DDA1    jmp         0073DDB8
 0073DDA3    cmp         dword ptr [ebx+0D0],1;TFXDocPrinter.Line:Integer
>0073DDAA    jne         0073DDB8
 0073DDAC    mov         edx,1
 0073DDB1    mov         eax,ebx
 0073DDB3    call        TFXDocPrinter.NewLine
 0073DDB8    inc         dword ptr [ebp-20]
 0073DDBB    dec         dword ptr [ebp-2C]
>0073DDBE    jne         0073DA60
 0073DDC4    push        73DF0C;'Page '
 0073DDC9    lea         edx,[ebp-4C]
 0073DDCC    mov         eax,dword ptr [ebp-1C]
 0073DDCF    call        IntToStr
 0073DDD4    push        dword ptr [ebp-4C]
 0073DDD7    push        73DF24;'('
 0073DDDC    lea         edx,[ebp-50]
 0073DDDF    mov         eax,dword ptr [ebx+10];TFXDocPrinter.FNumberOfPages:Integer
 0073DDE2    call        IntToStr
 0073DDE7    push        dword ptr [ebp-50]
 0073DDEA    push        73DF34;')'
 0073DDEF    lea         eax,[ebp-48]
 0073DDF2    mov         edx,5
 0073DDF7    call        @UStrCatN
 0073DDFC    mov         eax,dword ptr [ebp-48]
 0073DDFF    push        eax
 0073DE00    mov         ecx,73DF44;'System FX3Net Configuration'
 0073DE05    mov         edx,73DF88;'Schneider Electric'
 0073DE0A    mov         eax,ebx
 0073DE0C    call        TFXDocPrinter.PrintHeader
 0073DE11    push        0
 0073DE13    lea         eax,[ebp-5C]
 0073DE16    push        eax
 0073DE17    lea         edx,[ebp-60]
 0073DE1A    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 0073DE1F    mov         eax,dword ptr [eax]
 0073DE21    call        0066B3F4
 0073DE26    mov         eax,dword ptr [ebp-60]
 0073DE29    mov         cl,20
 0073DE2B    mov         dl,2C
 0073DE2D    call        005DDB14
 0073DE32    mov         edx,dword ptr [ebp-5C]
 0073DE35    lea         eax,[ebp-58]
 0073DE38    call        @UStrFromLStr
 0073DE3D    mov         ecx,dword ptr [ebp-58]
 0073DE40    lea         eax,[ebp-54]
 0073DE43    mov         edx,73DFBC;'Licensee: '
 0073DE48    call        @UStrCat3
 0073DE4D    mov         ecx,dword ptr [ebp-54]
 0073DE50    xor         edx,edx
 0073DE52    mov         eax,ebx
 0073DE54    call        TFXDocPrinter.PrintFooter
 0073DE59    xor         eax,eax
 0073DE5B    pop         edx
 0073DE5C    pop         ecx
 0073DE5D    pop         ecx
 0073DE5E    mov         dword ptr fs:[eax],edx
 0073DE61    push        73DE95
 0073DE66    lea         eax,[ebp-60]
 0073DE69    mov         edx,2
 0073DE6E    call        @LStrArrayClr
 0073DE73    lea         eax,[ebp-58]
 0073DE76    mov         edx,5
 0073DE7B    call        @UStrArrayClr
 0073DE80    lea         eax,[ebp-18]
 0073DE83    mov         edx,6
 0073DE88    call        @UStrArrayClr
 0073DE8D    ret
>0073DE8E    jmp         @HandleFinally
>0073DE93    jmp         0073DE66
 0073DE95    pop         edi
 0073DE96    pop         esi
 0073DE97    pop         ebx
 0073DE98    mov         esp,ebp
 0073DE9A    pop         ebp
 0073DE9B    ret
*}
end;

//0073DFD4
procedure TFXDocPrinter.PrintReport(FirstPage:Integer; LastPage:Integer);
begin
{*
 0073DFD4    push        ebx
 0073DFD5    push        esi
 0073DFD6    push        edi
 0073DFD7    push        ebp
 0073DFD8    mov         ebp,ecx
 0073DFDA    mov         ebx,edx
 0073DFDC    mov         edi,eax
 0073DFDE    mov         byte ptr [edi+5],1;TFXDocPrinter.FPrinting:Boolean
 0073DFE2    mov         dl,1
 0073DFE4    mov         eax,edi
 0073DFE6    call        TFXDocPrinter.SelectCanvas
 0073DFEB    call        Printer
 0073DFF0    call        TPrinter.BeginDoc
 0073DFF5    mov         esi,ebp
 0073DFF7    sub         esi,ebx
>0073DFF9    jl          0073E017
 0073DFFB    inc         esi
 0073DFFC    mov         edx,ebx
 0073DFFE    mov         eax,edi
 0073E000    call        TFXDocPrinter.PrintPage
 0073E005    cmp         ebp,ebx
>0073E007    jle         0073E013
 0073E009    call        Printer
 0073E00E    call        TPrinter.NewPage
 0073E013    inc         ebx
 0073E014    dec         esi
>0073E015    jne         0073DFFC
 0073E017    call        Printer
 0073E01C    call        TPrinter.EndDoc
 0073E021    xor         edx,edx
 0073E023    mov         eax,[00902C88];gvar_00902C88:TFXDocPrinter
 0073E028    call        TFXDocPrinter.SelectCanvas
 0073E02D    mov         byte ptr [edi+5],0;TFXDocPrinter.FPrinting:Boolean
 0073E031    pop         ebp
 0073E032    pop         edi
 0073E033    pop         esi
 0073E034    pop         ebx
 0073E035    ret
*}
end;

//0073E038
procedure TFXDocPrinter.Translate(IniFile:TFXIniFile);
begin
{*
 0073E038    push        ebp
 0073E039    mov         ebp,esp
 0073E03B    xor         ecx,ecx
 0073E03D    push        ecx
 0073E03E    push        ecx
 0073E03F    push        ecx
 0073E040    push        ecx
 0073E041    push        ecx
 0073E042    push        ecx
 0073E043    push        ecx
 0073E044    push        ecx
 0073E045    push        ebx
 0073E046    push        esi
 0073E047    mov         ebx,edx
 0073E049    xor         eax,eax
 0073E04B    push        ebp
 0073E04C    push        73E1AA
 0073E051    push        dword ptr fs:[eax]
 0073E054    mov         dword ptr fs:[eax],esp
 0073E057    push        73E1C4;'Panel'
 0073E05C    lea         eax,[ebp-4]
 0073E05F    push        eax
 0073E060    mov         ecx,73E1DC;'sRepPanel'
 0073E065    mov         edx,73E1FC;'AddressReport'
 0073E06A    mov         eax,ebx
 0073E06C    mov         esi,dword ptr [eax]
 0073E06E    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073E071    mov         edx,dword ptr [ebp-4]
 0073E074    mov         eax,7C3E24;^'Panel'
 0073E079    call        @UStrAsg
 0073E07E    push        73E224;'Address'
 0073E083    lea         eax,[ebp-8]
 0073E086    push        eax
 0073E087    mov         ecx,73E240;'sRepAddress'
 0073E08C    mov         edx,73E1FC;'AddressReport'
 0073E091    mov         eax,ebx
 0073E093    mov         esi,dword ptr [eax]
 0073E095    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073E098    mov         edx,dword ptr [ebp-8]
 0073E09B    mov         eax,7C3E28;^'Address'
 0073E0A0    call        @UStrAsg
 0073E0A5    push        73E264;'Zone'
 0073E0AA    lea         eax,[ebp-0C]
 0073E0AD    push        eax
 0073E0AE    mov         ecx,73E27C;'sRepZone'
 0073E0B3    mov         edx,73E1FC;'AddressReport'
 0073E0B8    mov         eax,ebx
 0073E0BA    mov         esi,dword ptr [eax]
 0073E0BC    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073E0BF    mov         edx,dword ptr [ebp-0C]
 0073E0C2    mov         eax,7C3E2C;^'Zone'
 0073E0C7    call        @UStrAsg
 0073E0CC    push        73E29C;'Device type'
 0073E0D1    lea         eax,[ebp-10]
 0073E0D4    push        eax
 0073E0D5    mov         ecx,73E2C0;'sRepDevType'
 0073E0DA    mov         edx,73E1FC;'AddressReport'
 0073E0DF    mov         eax,ebx
 0073E0E1    mov         esi,dword ptr [eax]
 0073E0E3    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073E0E6    mov         edx,dword ptr [ebp-10]
 0073E0E9    mov         eax,7C3E30;^'Device type'
 0073E0EE    call        @UStrAsg
 0073E0F3    push        73E2E4;'Text'
 0073E0F8    lea         eax,[ebp-14]
 0073E0FB    push        eax
 0073E0FC    mov         ecx,73E2FC;'sRepText'
 0073E101    mov         edx,73E1FC;'AddressReport'
 0073E106    mov         eax,ebx
 0073E108    mov         esi,dword ptr [eax]
 0073E10A    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073E10D    mov         edx,dword ptr [ebp-14]
 0073E110    mov         eax,7C3E34;^'Text'
 0073E115    call        @UStrAsg
 0073E11A    push        73E31C;'Tested'
 0073E11F    lea         eax,[ebp-18]
 0073E122    push        eax
 0073E123    mov         ecx,73E338;'sRepTested'
 0073E128    mov         edx,73E1FC;'AddressReport'
 0073E12D    mov         eax,ebx
 0073E12F    mov         esi,dword ptr [eax]
 0073E131    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073E134    mov         edx,dword ptr [ebp-18]
 0073E137    mov         eax,7C3E38;^'Tested'
 0073E13C    call        @UStrAsg
 0073E141    push        73E35C;'Inp. function'
 0073E146    lea         eax,[ebp-1C]
 0073E149    push        eax
 0073E14A    mov         ecx,73E384;'sRepInpFunction'
 0073E14F    mov         edx,73E1FC;'AddressReport'
 0073E154    mov         eax,ebx
 0073E156    mov         esi,dword ptr [eax]
 0073E158    call        dword ptr [esi+4];TFXIniFile.ReadString
 0073E15B    mov         edx,dword ptr [ebp-1C]
 0073E15E    mov         eax,7C3E3C;^'Inp. function'
 0073E163    call        @UStrAsg
 0073E168    push        73E3B0;'Outp. function'
 0073E16D    lea         eax,[ebp-20]
 0073E170    push        eax
 0073E171    mov         ecx,73E3DC;'sRepOutfunction'
 0073E176    mov         edx,73E1FC;'AddressReport'
 0073E17B    mov         eax,ebx
 0073E17D    mov         ebx,dword ptr [eax]
 0073E17F    call        dword ptr [ebx+4];TFXIniFile.ReadString
 0073E182    mov         edx,dword ptr [ebp-20]
 0073E185    mov         eax,7C3E40;^'Outp. function'
 0073E18A    call        @UStrAsg
 0073E18F    xor         eax,eax
 0073E191    pop         edx
 0073E192    pop         ecx
 0073E193    pop         ecx
 0073E194    mov         dword ptr fs:[eax],edx
 0073E197    push        73E1B1
 0073E19C    lea         eax,[ebp-20]
 0073E19F    mov         edx,8
 0073E1A4    call        @UStrArrayClr
 0073E1A9    ret
>0073E1AA    jmp         @HandleFinally
>0073E1AF    jmp         0073E19C
 0073E1B1    pop         esi
 0073E1B2    pop         ebx
 0073E1B3    mov         esp,ebp
 0073E1B5    pop         ebp
 0073E1B6    ret
*}
end;

//0073E404
{*procedure sub_0073E404(?:?; ?:TFont);
begin
 0073E404    push        esi
 0073E405    mov         esi,eax
 0073E407    mov         dword ptr [esi+0D4],edx
 0073E40D    mov         eax,dword ptr [esi+0E0]
 0073E413    mov         edx,dword ptr [eax]
 0073E415    call        dword ptr [edx+0A8]
 0073E41B    pop         esi
 0073E41C    ret
end;*}

//0073E420
{*procedure sub_0073E420(?:?; ?:?);
begin
 0073E420    push        esi
 0073E421    mov         esi,eax
 0073E423    mov         dword ptr [esi+30],edx
 0073E426    mov         eax,dword ptr [esi+0E0]
 0073E42C    mov         edx,dword ptr [eax]
 0073E42E    call        dword ptr [edx+0A8]
 0073E434    pop         esi
 0073E435    ret
end;*}

Initialization
Finalization
//0073E438
{*
 0073E438    push        ebp
 0073E439    mov         ebp,esp
 0073E43B    xor         eax,eax
 0073E43D    push        ebp
 0073E43E    push        73E4AF
 0073E443    push        dword ptr fs:[eax]
 0073E446    mov         dword ptr fs:[eax],esp
 0073E449    inc         dword ptr ds:[902C8C]
>0073E44F    jne         0073E4A1
 0073E451    mov         eax,7C3E24;^'Panel'
 0073E456    call        @UStrClr
 0073E45B    mov         eax,7C3E28;^'Address'
 0073E460    call        @UStrClr
 0073E465    mov         eax,7C3E2C;^'Zone'
 0073E46A    call        @UStrClr
 0073E46F    mov         eax,7C3E30;^'Device type'
 0073E474    call        @UStrClr
 0073E479    mov         eax,7C3E34;^'Text'
 0073E47E    call        @UStrClr
 0073E483    mov         eax,7C3E38;^'Tested'
 0073E488    call        @UStrClr
 0073E48D    mov         eax,7C3E3C;^'Inp. function'
 0073E492    call        @UStrClr
 0073E497    mov         eax,7C3E40;^'Outp. function'
 0073E49C    call        @UStrClr
 0073E4A1    xor         eax,eax
 0073E4A3    pop         edx
 0073E4A4    pop         ecx
 0073E4A5    pop         ecx
 0073E4A6    mov         dword ptr fs:[eax],edx
 0073E4A9    push        73E4B6
 0073E4AE    ret
>0073E4AF    jmp         @HandleFinally
>0073E4B4    jmp         0073E4AE
 0073E4B6    pop         ebp
 0073E4B7    ret
*}
end.