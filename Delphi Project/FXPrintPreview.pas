//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXPrintPreview;

interface

uses
  SysUtils, Classes, Vcl.ExtCtrls, System.Generics.Defaults, Vcl.Dialogs, Vcl.Forms, Vcl.StdCtrls, FXPrintPreview;

type
  Previews = (pvFXNet, pvFXPanel);
  TPreviewPanel = class(TPanel)
  published
    procedure Paint;//0075CFB8
    procedure AlignCenter;//0075DD40
    constructor Create(Owner:TComponent);//007529E4
    destructor Destroy();//00752A58
  public
    destructor Destroy(); virtual;//00752A58
    constructor Create(Owner:TComponent); virtual;//v3C//007529E4
    procedure Paint; virtual;//v108//0075CFB8
  end;
  TPreviewForm = class(TForm)
  published
    Panel1:TPanel;//f3C0
    PrintDialog1:TPrintDialog;//f3C4
    ScrollBox1:TScrollBox;//f3C8
    btnPrint:TButton;//f3CC
    btnPrevious:TButton;//f3D0
    btnNext:TButton;//f3D4
    btnClose:TButton;//f3D8
    procedure btnPrintClick(Sender:TObject);//0075D614
    procedure btnCloseClick(Sender:TObject);//0075DD18
    procedure btnPreviousClick(Sender:TObject);//0075DC14
    procedure ShowPreview(WhatToShow:Previews);//0075DDD4
    procedure btnNextClick(Sender:TObject);//0075DC94
    procedure FormClose(Sender:TObject; var Action:UITypes.TCloseAction);//0075DD84
    procedure FormDestroy(Sender:TObject);//00752BF8
    procedure FormCreate(Sender:TObject);//00752A7C
    procedure FormResize(Sender:TObject);//0075DD34
    procedure FormMouseWheel(Sender:TObject; Shift:Classes.TShiftState; WheelDelta:Integer; MousePos:Types.TPoint; var Handled:Boolean);//0075DD90
    procedure Translate(IniFile:TFXIniFile);//00752C0C
  public
    PreviewPanel:TPreviewPanel;//f3DC
    Page:Integer;//f3E0
  end;
    //function sub_007529D0:?;//007529D0
    //function sub_007537B0(?:?):?;//007537B0
    procedure sub_007537D8(?:UString; ?:UString; ?:UnicodeString);//007537D8
    //procedure sub_007539BC(?:?; ?:UnicodeString; ?:?);//007539BC
    //procedure sub_00753BA0(?:?);//00753BA0
    //procedure sub_00753C3C(?:?; ?:?);//00753C3C
    //procedure sub_00753D68(?:?; ?:?; ?:?);//00753D68
    //procedure sub_00754410(?:?; ?:?; ?:?);//00754410
    //procedure sub_00754690(?:Integer; ?:Integer; ?:?);//00754690
    //procedure sub_0075473C(?:Integer; ?:Integer; ?:?);//0075473C
    //procedure sub_00759218(?:?; ?:Integer; ?:Integer; ?:?);//00759218
    //procedure sub_0075A188(?:?; ?:Integer; ?:Integer; ?:?);//0075A188
    //procedure sub_0075B198(?:?; ?:Integer; ?:Integer; ?:?);//0075B198
    //procedure sub_0075C070(?:?; ?:Integer; ?:Integer; ?:?);//0075C070

implementation

{$R *.DFM}

//007529D0
{*function sub_007529D0:?;
begin
 007529D0    push        58
 007529D2    call        Printer
 007529D7    call        TPrinter.GetHandle
 007529DC    push        eax
 007529DD    call        gdi32.GetDeviceCaps
 007529E2    ret
end;*}

//007529E4
constructor TPreviewPanel.Create(Owner:TComponent);
begin
{*
 007529E4    push        ebx
 007529E5    push        esi
 007529E6    test        dl,dl
>007529E8    je          007529F2
 007529EA    add         esp,0FFFFFFF0
 007529ED    call        @ClassCreate
 007529F2    mov         ebx,edx
 007529F4    mov         esi,eax
 007529F6    xor         edx,edx
 007529F8    mov         eax,esi
 007529FA    call        TCustomPanel.Create
 007529FF    mov         edx,0FFFFFF
 00752A04    mov         eax,esi
 00752A06    call        TGroupBox.SetColor
 00752A0B    xor         edx,edx
 00752A0D    mov         eax,esi
 00752A0F    call        TControl.SetLeft
 00752A14    mov         edx,8
 00752A19    mov         eax,esi
 00752A1B    call        TControl.SetTop
 00752A20    mov         dword ptr ds:[903754],64;gvar_00903754
 00752A2A    mov         eax,[00903708];gvar_00903708:Integer
 00752A2F    add         eax,32
>00752A32    jno         00752A39
 00752A34    call        @IntOver
 00752A39    mov         [00903758],eax;gvar_00903758
 00752A3E    mov         eax,esi
 00752A40    test        bl,bl
>00752A42    je          00752A53
 00752A44    call        @AfterConstruction
 00752A49    pop         dword ptr fs:[0]
 00752A50    add         esp,0C
 00752A53    mov         eax,esi
 00752A55    pop         esi
 00752A56    pop         ebx
 00752A57    ret
*}
end;

//00752A58
destructor TPreviewPanel.Destroy();
begin
{*
 00752A58    push        ebx
 00752A59    push        esi
 00752A5A    call        @BeforeDestruction
 00752A5F    mov         ebx,edx
 00752A61    mov         esi,eax
 00752A63    mov         dl,0FC
 00752A65    and         dl,bl
 00752A67    mov         eax,esi
 00752A69    call        TCustomControl.Destroy
 00752A6E    test        bl,bl
>00752A70    jle         00752A79
 00752A72    mov         eax,esi
 00752A74    call        @ClassDestroy
 00752A79    pop         esi
 00752A7A    pop         ebx
 00752A7B    ret
*}
end;

//00752A7C
procedure TPreviewForm.FormCreate(Sender:TObject);
begin
{*
 00752A7C    push        ebp
 00752A7D    mov         ebp,esp
 00752A7F    add         esp,0FFFFFFF0
 00752A82    push        ebx
 00752A83    push        esi
 00752A84    xor         ecx,ecx
 00752A86    mov         dword ptr [ebp-4],ecx
 00752A89    mov         dword ptr [ebp-10],ecx
 00752A8C    mov         ebx,eax
 00752A8E    xor         eax,eax
 00752A90    push        ebp
 00752A91    push        752BB7
 00752A96    push        dword ptr fs:[eax]
 00752A99    mov         dword ptr fs:[eax],esp
 00752A9C    lea         eax,[ebp-4]
 00752A9F    push        eax
 00752AA0    lea         edx,[ebp-10]
 00752AA3    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00752AA8    mov         eax,dword ptr [eax]
 00752AAA    call        005DDC74
 00752AAF    mov         eax,dword ptr [ebp-10]
 00752AB2    mov         dword ptr [ebp-0C],eax
 00752AB5    mov         byte ptr [ebp-8],11
 00752AB9    lea         edx,[ebp-0C]
 00752ABC    xor         ecx,ecx
 00752ABE    mov         eax,752BD0;'Print Preview (%s)'
 00752AC3    call        Format
 00752AC8    mov         edx,dword ptr [ebp-4]
 00752ACB    mov         eax,ebx
 00752ACD    call        TControl.SetText
 00752AD2    mov         dword ptr ds:[9036E4],14;gvar_009036E4
 00752ADC    mov         dword ptr ds:[9036EC],0A;gvar_009036EC
 00752AE6    mov         dword ptr ds:[9036E8],0F;gvar_009036E8
 00752AF0    mov         dword ptr ds:[9036F0],0A;gvar_009036F0
 00752AFA    mov         dword ptr ds:[9036F4],8;gvar_009036F4
 00752B04    mov         dword ptr ds:[9036F8],8;gvar_009036F8
 00752B0E    mov         dword ptr ds:[9036FC],5;gvar_009036FC
 00752B18    mov         dword ptr ds:[903700],0A;gvar_00903700
 00752B22    mov         dword ptr ds:[903704],0F;gvar_00903704
 00752B2C    mov         ecx,dword ptr [ebx+3C8];TPreviewForm.ScrollBox1:TScrollBox
 00752B32    mov         dl,1
 00752B34    mov         eax,[00751D70];TPreviewPanel
 00752B39    call        TPreviewPanel.Create;TPreviewPanel.Create
 00752B3E    mov         esi,eax
 00752B40    mov         dword ptr [ebx+3DC],esi;TPreviewForm.PreviewPanel:TPreviewPanel
 00752B46    mov         edx,dword ptr [ebx+3C8];TPreviewForm.ScrollBox1:TScrollBox
 00752B4C    mov         eax,esi
 00752B4E    mov         ecx,dword ptr [eax]
 00752B50    call        dword ptr [ecx+8C];TPreviewPanel.sub_004F22F8
 00752B56    xor         edx,edx
 00752B58    mov         eax,dword ptr [ebx+3DC];TPreviewForm.PreviewPanel:TPreviewPanel
 00752B5E    call        TGroupBox.SetParentColor
 00752B63    mov         edx,0FFFFFF
 00752B68    mov         eax,dword ptr [ebx+3DC];TPreviewForm.PreviewPanel:TPreviewPanel
 00752B6E    call        TGroupBox.SetColor
 00752B73    mov         eax,dword ptr [ebx+3DC];TPreviewForm.PreviewPanel:TPreviewPanel
 00752B79    call        TPreviewPanel.AlignCenter
 00752B7E    mov         dword ptr ds:[9036D8],1;gvar_009036D8
 00752B88    mov         dword ptr ds:[9036E0],1;gvar_009036E0
 00752B92    mov         byte ptr ds:[9036D4],0;gvar_009036D4
 00752B99    xor         eax,eax
 00752B9B    pop         edx
 00752B9C    pop         ecx
 00752B9D    pop         ecx
 00752B9E    mov         dword ptr fs:[eax],edx
 00752BA1    push        752BBE
 00752BA6    lea         eax,[ebp-10]
 00752BA9    call        @UStrClr
 00752BAE    lea         eax,[ebp-4]
 00752BB1    call        @UStrClr
 00752BB6    ret
>00752BB7    jmp         @HandleFinally
>00752BBC    jmp         00752BA6
 00752BBE    pop         esi
 00752BBF    pop         ebx
 00752BC0    mov         esp,ebp
 00752BC2    pop         ebp
 00752BC3    ret
*}
end;

//00752BF8
procedure TPreviewForm.FormDestroy(Sender:TObject);
begin
{*
 00752BF8    mov         edx,dword ptr [eax+3DC];TPreviewForm.PreviewPanel:TPreviewPanel
 00752BFE    test        edx,edx
>00752C00    je          00752C09
 00752C02    mov         eax,edx
 00752C04    call        TObject.Free
 00752C09    ret
*}
end;

//00752C0C
procedure TPreviewForm.Translate(IniFile:TFXIniFile);
begin
{*
 00752C0C    push        ebp
 00752C0D    mov         ebp,esp
 00752C0F    mov         ecx,0E
 00752C14    push        0
 00752C16    push        0
 00752C18    dec         ecx
>00752C19    jne         00752C14
 00752C1B    push        ebx
 00752C1C    push        esi
 00752C1D    push        edi
 00752C1E    mov         ebx,edx
 00752C20    mov         esi,eax
 00752C22    xor         eax,eax
 00752C24    push        ebp
 00752C25    push        753093
 00752C2A    push        dword ptr fs:[eax]
 00752C2D    mov         dword ptr fs:[eax],esp
 00752C30    push        7530B0;'Print'
 00752C35    lea         eax,[ebp-4]
 00752C38    push        eax
 00752C39    mov         ecx,7530C8;'sbtnPrint'
 00752C3E    mov         edx,7530E8;'CommonTexts'
 00752C43    mov         eax,ebx
 00752C45    mov         edi,dword ptr [eax]
 00752C47    call        dword ptr [edi+4];TFXIniFile.ReadString
 00752C4A    mov         edx,dword ptr [ebp-4]
 00752C4D    mov         eax,dword ptr [esi+3CC];TPreviewForm.btnPrint:TButton
 00752C53    call        TControl.SetText
 00752C58    push        75310C;'Previous'
 00752C5D    lea         eax,[ebp-8]
 00752C60    push        eax
 00752C61    mov         ecx,75312C;'sbtnPrevious'
 00752C66    mov         edx,7530E8;'CommonTexts'
 00752C6B    mov         eax,ebx
 00752C6D    mov         edi,dword ptr [eax]
 00752C6F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00752C72    mov         edx,dword ptr [ebp-8]
 00752C75    mov         eax,dword ptr [esi+3D0];TPreviewForm.btnPrevious:TButton
 00752C7B    call        TControl.SetText
 00752C80    push        753154;'Next'
 00752C85    lea         eax,[ebp-0C]
 00752C88    push        eax
 00752C89    mov         ecx,75316C;'sbtnNext'
 00752C8E    mov         edx,7530E8;'CommonTexts'
 00752C93    mov         eax,ebx
 00752C95    mov         edi,dword ptr [eax]
 00752C97    call        dword ptr [edi+4];TFXIniFile.ReadString
 00752C9A    mov         edx,dword ptr [ebp-0C]
 00752C9D    mov         eax,dword ptr [esi+3D4];TPreviewForm.btnNext:TButton
 00752CA3    call        TControl.SetText
 00752CA8    push        75318C;'Close'
 00752CAD    lea         eax,[ebp-10]
 00752CB0    push        eax
 00752CB1    mov         ecx,7531A4;'sbtnClose'
 00752CB6    mov         edx,7530E8;'CommonTexts'
 00752CBB    mov         eax,ebx
 00752CBD    mov         edi,dword ptr [eax]
 00752CBF    call        dword ptr [edi+4];TFXIniFile.ReadString
 00752CC2    mov         edx,dword ptr [ebp-10]
 00752CC5    mov         eax,dword ptr [esi+3D8];TPreviewForm.btnClose:TButton
 00752CCB    call        TControl.SetText
 00752CD0    push        7531C4;'Customer text: '
 00752CD5    lea         eax,[ebp-14]
 00752CD8    push        eax
 00752CD9    mov         ecx,7531F0;'sCustomerText'
 00752CDE    mov         edx,753218;'PrintPreviewDlg'
 00752CE3    mov         eax,ebx
 00752CE5    mov         esi,dword ptr [eax]
 00752CE7    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752CEA    mov         edx,dword ptr [ebp-14]
 00752CED    mov         eax,7C3F04;^'Customer text: '
 00752CF2    call        @UStrAsg
 00752CF7    push        753244;'Control groups: '
 00752CFC    lea         eax,[ebp-18]
 00752CFF    push        eax
 00752D00    mov         ecx,753274;'sControlZones'
 00752D05    mov         edx,753218;'PrintPreviewDlg'
 00752D0A    mov         eax,ebx
 00752D0C    mov         esi,dword ptr [eax]
 00752D0E    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752D11    mov         edx,dword ptr [ebp-18]
 00752D14    mov         eax,7C3F08;^'Control groups: '
 00752D19    call        @UStrAsg
 00752D1E    push        75329C;'Address'
 00752D23    lea         eax,[ebp-1C]
 00752D26    push        eax
 00752D27    mov         ecx,7532B8;'sAddrCol'
 00752D2C    mov         edx,7532D8;'FXAdFrame'
 00752D31    mov         eax,ebx
 00752D33    mov         esi,dword ptr [eax]
 00752D35    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752D38    mov         edx,dword ptr [ebp-1C]
 00752D3B    mov         eax,7C3F0C;^'Address'
 00752D40    call        @UStrAsg
 00752D45    push        7532F8;'D-Zone'
 00752D4A    lea         eax,[ebp-20]
 00752D4D    push        eax
 00752D4E    mov         ecx,753314;'sDZoneCol'
 00752D53    mov         edx,7532D8;'FXAdFrame'
 00752D58    mov         eax,ebx
 00752D5A    mov         esi,dword ptr [eax]
 00752D5C    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752D5F    mov         edx,dword ptr [ebp-20]
 00752D62    mov         eax,7C3F10;^'D-Zone'
 00752D67    call        @UStrAsg
 00752D6C    push        753334;'Ctrl A'
 00752D71    lea         eax,[ebp-24]
 00752D74    push        eax
 00752D75    mov         ecx,753350;'sControlACol'
 00752D7A    mov         edx,7532D8;'FXAdFrame'
 00752D7F    mov         eax,ebx
 00752D81    mov         esi,dword ptr [eax]
 00752D83    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752D86    mov         edx,dword ptr [ebp-24]
 00752D89    mov         eax,7C3F14;^'Ctrl A'
 00752D8E    call        @UStrAsg
 00752D93    push        753378;'Ctrl B'
 00752D98    lea         eax,[ebp-28]
 00752D9B    push        eax
 00752D9C    mov         ecx,753394;'sControlBCol'
 00752DA1    mov         edx,7532D8;'FXAdFrame'
 00752DA6    mov         eax,ebx
 00752DA8    mov         esi,dword ptr [eax]
 00752DAA    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752DAD    mov         edx,dword ptr [ebp-28]
 00752DB0    mov         eax,7C3F18;^'Ctrl B'
 00752DB5    call        @UStrAsg
 00752DBA    push        7533BC;'Type'
 00752DBF    lea         eax,[ebp-2C]
 00752DC2    push        eax
 00752DC3    mov         ecx,7533D4;'sTypeCol'
 00752DC8    mov         edx,7532D8;'FXAdFrame'
 00752DCD    mov         eax,ebx
 00752DCF    mov         esi,dword ptr [eax]
 00752DD1    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752DD4    mov         edx,dword ptr [ebp-2C]
 00752DD7    mov         eax,7C3F1C;^'Type'
 00752DDC    call        @UStrAsg
 00752DE1    push        7533F4;'Fire'
 00752DE6    lea         eax,[ebp-30]
 00752DE9    push        eax
 00752DEA    mov         ecx,75340C;'sFireCol'
 00752DEF    mov         edx,7532D8;'FXAdFrame'
 00752DF4    mov         eax,ebx
 00752DF6    mov         esi,dword ptr [eax]
 00752DF8    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752DFB    mov         edx,dword ptr [ebp-30]
 00752DFE    mov         eax,7C3F24;^'Fire'
 00752E03    call        @UStrAsg
 00752E08    push        75342C;'PreA'
 00752E0D    lea         eax,[ebp-34]
 00752E10    push        eax
 00752E11    mov         ecx,753444;'sPrewCol'
 00752E16    mov         edx,7532D8;'FXAdFrame'
 00752E1B    mov         eax,ebx
 00752E1D    mov         esi,dword ptr [eax]
 00752E1F    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752E22    mov         edx,dword ptr [ebp-34]
 00752E25    mov         eax,7C3F28;^'PreA'
 00752E2A    call        @UStrAsg
 00752E2F    push        753464;'D-Fire'
 00752E34    lea         eax,[ebp-38]
 00752E37    push        eax
 00752E38    mov         ecx,753480;'sDFireCol'
 00752E3D    mov         edx,7532D8;'FXAdFrame'
 00752E42    mov         eax,ebx
 00752E44    mov         esi,dword ptr [eax]
 00752E46    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752E49    mov         edx,dword ptr [ebp-38]
 00752E4C    mov         eax,7C3F2C;^'D-Fire'
 00752E51    call        @UStrAsg
 00752E56    push        7534A0;'D-PreA'
 00752E5B    lea         eax,[ebp-3C]
 00752E5E    push        eax
 00752E5F    mov         ecx,7534BC;'sDPrewCol'
 00752E64    mov         edx,7532D8;'FXAdFrame'
 00752E69    mov         eax,ebx
 00752E6B    mov         esi,dword ptr [eax]
 00752E6D    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752E70    mov         edx,dword ptr [ebp-3C]
 00752E73    mov         eax,7C3F30;^'D-PreA'
 00752E78    call        @UStrAsg
 00752E7D    push        7534DC;'Mode'
 00752E82    lea         eax,[ebp-40]
 00752E85    push        eax
 00752E86    mov         ecx,7534F4;'sModeCol'
 00752E8B    mov         edx,7532D8;'FXAdFrame'
 00752E90    mov         eax,ebx
 00752E92    mov         esi,dword ptr [eax]
 00752E94    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752E97    mov         edx,dword ptr [ebp-40]
 00752E9A    mov         eax,7C3F34;^'Mode'
 00752E9F    call        @UStrAsg
 00752EA4    push        753514;'InDel.'
 00752EA9    lea         eax,[ebp-44]
 00752EAC    push        eax
 00752EAD    mov         ecx,753530;'sIDelCol'
 00752EB2    mov         edx,7532D8;'FXAdFrame'
 00752EB7    mov         eax,ebx
 00752EB9    mov         esi,dword ptr [eax]
 00752EBB    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752EBE    mov         edx,dword ptr [ebp-44]
 00752EC1    mov         eax,7C3F38;^'InDel.'
 00752EC6    call        @UStrAsg
 00752ECB    push        753550;'InFilt'
 00752ED0    lea         eax,[ebp-48]
 00752ED3    push        eax
 00752ED4    mov         ecx,75356C;'sIFiltCol'
 00752ED9    mov         edx,7532D8;'FXAdFrame'
 00752EDE    mov         eax,ebx
 00752EE0    mov         esi,dword ptr [eax]
 00752EE2    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752EE5    mov         edx,dword ptr [ebp-48]
 00752EE8    mov         eax,7C3F3C;^'InFilt'
 00752EED    call        @UStrAsg
 00752EF2    push        75358C;'DayM'
 00752EF7    lea         eax,[ebp-4C]
 00752EFA    push        eax
 00752EFB    mov         ecx,7535A4;'sDayMCol'
 00752F00    mov         edx,7532D8;'FXAdFrame'
 00752F05    mov         eax,ebx
 00752F07    mov         esi,dword ptr [eax]
 00752F09    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752F0C    mov         edx,dword ptr [ebp-4C]
 00752F0F    mov         eax,7C3F40;^'DayM'
 00752F14    call        @UStrAsg
 00752F19    push        7535C4;'ZDis'
 00752F1E    lea         eax,[ebp-50]
 00752F21    push        eax
 00752F22    mov         ecx,7535DC;'sZDisCol'
 00752F27    mov         edx,7532D8;'FXAdFrame'
 00752F2C    mov         eax,ebx
 00752F2E    mov         esi,dword ptr [eax]
 00752F30    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752F33    mov         edx,dword ptr [ebp-50]
 00752F36    mov         eax,7C3F44;^'ZDis'
 00752F3B    call        @UStrAsg
 00752F40    push        7535FC;'EOL'
 00752F45    lea         eax,[ebp-54]
 00752F48    push        eax
 00752F49    mov         ecx,753610;'sEOLCol'
 00752F4E    mov         edx,7532D8;'FXAdFrame'
 00752F53    mov         eax,ebx
 00752F55    mov         esi,dword ptr [eax]
 00752F57    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752F5A    mov         edx,dword ptr [ebp-54]
 00752F5D    mov         eax,7C3F4C;^'EOL'
 00752F62    call        @UStrAsg
 00752F67    push        75362C;'NC'
 00752F6C    lea         eax,[ebp-58]
 00752F6F    push        eax
 00752F70    mov         ecx,753640;'sNCCol'
 00752F75    mov         edx,7532D8;'FXAdFrame'
 00752F7A    mov         eax,ebx
 00752F7C    mov         esi,dword ptr [eax]
 00752F7E    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752F81    mov         edx,dword ptr [ebp-58]
 00752F84    mov         eax,7C3F50;^'NC'
 00752F89    call        @UStrAsg
 00752F8E    push        75365C;'SC=A'
 00752F93    lea         eax,[ebp-5C]
 00752F96    push        eax
 00752F97    mov         ecx,753674;'sSCACol'
 00752F9C    mov         edx,7532D8;'FXAdFrame'
 00752FA1    mov         eax,ebx
 00752FA3    mov         esi,dword ptr [eax]
 00752FA5    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752FA8    mov         edx,dword ptr [ebp-5C]
 00752FAB    mov         eax,7C3F54;^'SC=A'
 00752FB0    call        @UStrAsg
 00752FB5    push        753690;'BM'
 00752FBA    lea         eax,[ebp-60]
 00752FBD    push        eax
 00752FBE    mov         ecx,7536A4;'sBreakCol'
 00752FC3    mov         edx,7532D8;'FXAdFrame'
 00752FC8    mov         eax,ebx
 00752FCA    mov         esi,dword ptr [eax]
 00752FCC    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752FCF    mov         edx,dword ptr [ebp-60]
 00752FD2    mov         eax,7C3F58;^'BM'
 00752FD7    call        @UStrAsg
 00752FDC    push        7536C4;'Exi'
 00752FE1    lea         eax,[ebp-64]
 00752FE4    push        eax
 00752FE5    mov         ecx,7536D8;'sExiCol'
 00752FEA    mov         edx,7532D8;'FXAdFrame'
 00752FEF    mov         eax,ebx
 00752FF1    mov         esi,dword ptr [eax]
 00752FF3    call        dword ptr [esi+4];TFXIniFile.ReadString
 00752FF6    mov         edx,dword ptr [ebp-64]
 00752FF9    mov         eax,7C3F5C;^'Exi'
 00752FFE    call        @UStrAsg
 00753003    push        7536F4;'Ver.'
 00753008    lea         eax,[ebp-68]
 0075300B    push        eax
 0075300C    mov         ecx,75370C;'sDKCol'
 00753011    mov         edx,7532D8;'FXAdFrame'
 00753016    mov         eax,ebx
 00753018    mov         esi,dword ptr [eax]
 0075301A    call        dword ptr [esi+4];TFXIniFile.ReadString
 0075301D    mov         edx,dword ptr [ebp-68]
 00753020    mov         eax,7C3F60;^'Ver.'
 00753025    call        @UStrAsg
 0075302A    push        753728;'Input funct.'
 0075302F    lea         eax,[ebp-6C]
 00753032    push        eax
 00753033    mov         ecx,753750;'sInputCol'
 00753038    mov         edx,7532D8;'FXAdFrame'
 0075303D    mov         eax,ebx
 0075303F    mov         esi,dword ptr [eax]
 00753041    call        dword ptr [esi+4];TFXIniFile.ReadString
 00753044    mov         edx,dword ptr [ebp-6C]
 00753047    mov         eax,7C3F20;^'Input funct.'
 0075304C    call        @UStrAsg
 00753051    push        753770;'Output funct.'
 00753056    lea         eax,[ebp-70]
 00753059    push        eax
 0075305A    mov         ecx,753798;'sOutputCol'
 0075305F    mov         edx,7532D8;'FXAdFrame'
 00753064    mov         eax,ebx
 00753066    mov         ebx,dword ptr [eax]
 00753068    call        dword ptr [ebx+4];TFXIniFile.ReadString
 0075306B    mov         edx,dword ptr [ebp-70]
 0075306E    mov         eax,7C3F48;^'Output funct.'
 00753073    call        @UStrAsg
 00753078    xor         eax,eax
 0075307A    pop         edx
 0075307B    pop         ecx
 0075307C    pop         ecx
 0075307D    mov         dword ptr fs:[eax],edx
 00753080    push        75309A
 00753085    lea         eax,[ebp-70]
 00753088    mov         edx,1C
 0075308D    call        @UStrArrayClr
 00753092    ret
>00753093    jmp         @HandleFinally
>00753098    jmp         00753085
 0075309A    pop         edi
 0075309B    pop         esi
 0075309C    pop         ebx
 0075309D    mov         esp,ebp
 0075309F    pop         ebp
 007530A0    ret
*}
end;

//007537B0
{*function sub_007537B0(?:?):?;
begin
 007537B0    push        0FE
 007537B5    push        edx
 007537B6    imul        eax,eax,0A
>007537B9    jno         007537C0
 007537BB    call        @IntOver
 007537C0    push        eax
 007537C1    call        kernel32.MulDiv
 007537C6    push        64
 007537C8    mov         edx,dword ptr ds:[903754];gvar_00903754
 007537CE    push        edx
 007537CF    push        eax
 007537D0    call        kernel32.MulDiv
 007537D5    ret
end;*}

//007537D8
procedure sub_007537D8(?:UString; ?:UString; ?:UnicodeString);
begin
{*
 007537D8    push        ebp
 007537D9    mov         ebp,esp
 007537DB    add         esp,0FFFFFFF4
 007537DE    push        ebx
 007537DF    push        esi
 007537E0    push        edi
 007537E1    mov         dword ptr [ebp-0C],ecx
 007537E4    mov         dword ptr [ebp-8],edx
 007537E7    mov         dword ptr [ebp-4],eax
 007537EA    mov         eax,dword ptr [ebp-4]
 007537ED    call        @UStrAddRef
 007537F2    mov         eax,dword ptr [ebp-8]
 007537F5    call        @UStrAddRef
 007537FA    mov         eax,dword ptr [ebp-0C]
 007537FD    call        @UStrAddRef
 00753802    mov         ebx,9036CC;gvar_009036CC:TCanvas
 00753807    mov         esi,903730;gvar_00903730
 0075380C    xor         eax,eax
 0075380E    push        ebp
 0075380F    push        753996
 00753814    push        dword ptr fs:[eax]
 00753817    mov         dword ptr fs:[eax],esp
 0075381A    mov         eax,[00903714];gvar_00903714
 0075381F    mov         dword ptr [esi],eax
 00753821    mov         eax,[00903724];gvar_00903724
 00753826    mov         [00903734],eax;gvar_00903734
 0075382B    mov         eax,dword ptr [ebx]
 0075382D    mov         eax,dword ptr [eax+48]
 00753830    mov         edx,0FFFFFF
 00753835    call        TBrush.SetColor
 0075383A    push        64
 0075383C    mov         eax,[00903754];gvar_00903754
 00753841    push        eax
 00753842    push        0A
 00753844    call        kernel32.MulDiv
 00753849    mov         edx,eax
 0075384B    mov         eax,dword ptr [ebx]
 0075384D    mov         eax,dword ptr [eax+40]
 00753850    call        TFont.SetSize
 00753855    mov         eax,dword ptr [ebx]
 00753857    mov         eax,dword ptr [eax+40]
 0075385A    movzx       edx,byte ptr ds:[7539A4];0x1 gvar_007539A4
 00753861    call        TFont.SetStyle
 00753866    push        64
 00753868    push        64
 0075386A    mov         edx,7539B4;'X'
 0075386F    mov         eax,dword ptr [ebx]
 00753871    call        TCustomCanvas.TextHeight
 00753876    push        eax
 00753877    call        kernel32.MulDiv
 0075387C    mov         [00903738],eax;gvar_00903738:Integer
 00753881    mov         eax,dword ptr [ebp-4]
 00753884    push        eax
 00753885    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075388B    mov         edx,dword ptr [esi]
 0075388D    mov         eax,dword ptr [ebx]
 0075388F    mov         edi,dword ptr [eax]
 00753891    call        dword ptr [edi+90]
 00753897    mov         edx,dword ptr [ebp-8]
 0075389A    mov         eax,dword ptr [ebx]
 0075389C    call        TCustomCanvas.TextWidth
 007538A1    sar         eax,1
>007538A3    jns         007538A8
 007538A5    adc         eax,0
 007538A8    mov         edx,dword ptr ds:[903710];gvar_00903710
 007538AE    sub         edx,eax
>007538B0    jno         007538B7
 007538B2    call        @IntOver
 007538B7    mov         dword ptr [esi],edx
 007538B9    mov         eax,dword ptr [ebp-8]
 007538BC    push        eax
 007538BD    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007538C3    mov         edx,dword ptr [esi]
 007538C5    mov         eax,dword ptr [ebx]
 007538C7    mov         edi,dword ptr [eax]
 007538C9    call        dword ptr [edi+90]
 007538CF    mov         edx,dword ptr [ebp-0C]
 007538D2    mov         eax,dword ptr [ebx]
 007538D4    call        TCustomCanvas.TextWidth
 007538D9    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 007538DF    sub         edx,eax
>007538E1    jno         007538E8
 007538E3    call        @IntOver
 007538E8    mov         dword ptr [esi],edx
 007538EA    mov         eax,dword ptr [ebp-0C]
 007538ED    push        eax
 007538EE    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007538F4    mov         edx,dword ptr [esi]
 007538F6    mov         eax,dword ptr [ebx]
 007538F8    mov         edi,dword ptr [eax]
 007538FA    call        dword ptr [edi+90]
 00753900    mov         eax,[00903714];gvar_00903714
 00753905    mov         dword ptr [esi],eax
 00753907    mov         eax,[00903738];gvar_00903738:Integer
 0075390C    add         dword ptr ds:[903734],eax;gvar_00903734
>00753912    jno         00753919
 00753914    call        @IntOver
 00753919    push        64
 0075391B    mov         eax,[00903754];gvar_00903754
 00753920    push        eax
 00753921    push        3
 00753923    call        kernel32.MulDiv
 00753928    mov         edx,eax
 0075392A    mov         eax,dword ptr [ebx]
 0075392C    mov         eax,dword ptr [eax+44]
 0075392F    call        TPen.SetWidth
 00753934    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075393A    add         ecx,3
>0075393D    jno         00753944
 0075393F    call        @IntOver
 00753944    mov         edx,dword ptr [esi]
 00753946    mov         eax,dword ptr [ebx]
 00753948    mov         esi,dword ptr [eax]
 0075394A    call        dword ptr [esi+64]
 0075394D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753953    add         ecx,3
>00753956    jno         0075395D
 00753958    call        @IntOver
 0075395D    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753963    mov         eax,dword ptr [ebx]
 00753965    mov         esi,dword ptr [eax]
 00753967    call        dword ptr [esi+60]
 0075396A    mov         eax,dword ptr [ebx]
 0075396C    mov         eax,dword ptr [eax+40]
 0075396F    movzx       edx,byte ptr ds:[7539B8];0x0 gvar_007539B8
 00753976    call        TFont.SetStyle
 0075397B    xor         eax,eax
 0075397D    pop         edx
 0075397E    pop         ecx
 0075397F    pop         ecx
 00753980    mov         dword ptr fs:[eax],edx
 00753983    push        75399D
 00753988    lea         eax,[ebp-0C]
 0075398B    mov         edx,3
 00753990    call        @UStrArrayClr
 00753995    ret
>00753996    jmp         @HandleFinally
>0075399B    jmp         00753988
 0075399D    pop         edi
 0075399E    pop         esi
 0075399F    pop         ebx
 007539A0    mov         esp,ebp
 007539A2    pop         ebp
 007539A3    ret
*}
end;

//007539BC
{*procedure sub_007539BC(?:?; ?:UnicodeString; ?:?);
begin
 007539BC    push        ebp
 007539BD    mov         ebp,esp
 007539BF    add         esp,0FFFFFFF4
 007539C2    push        ebx
 007539C3    push        esi
 007539C4    push        edi
 007539C5    mov         dword ptr [ebp-0C],ecx
 007539C8    mov         dword ptr [ebp-8],edx
 007539CB    mov         dword ptr [ebp-4],eax
 007539CE    mov         eax,dword ptr [ebp-4]
 007539D1    call        @UStrAddRef
 007539D6    mov         eax,dword ptr [ebp-8]
 007539D9    call        @UStrAddRef
 007539DE    mov         eax,dword ptr [ebp-0C]
 007539E1    call        @UStrAddRef
 007539E6    mov         ebx,9036CC;gvar_009036CC:TCanvas
 007539EB    mov         esi,903730;gvar_00903730
 007539F0    xor         eax,eax
 007539F2    push        ebp
 007539F3    push        753B7A
 007539F8    push        dword ptr fs:[eax]
 007539FB    mov         dword ptr fs:[eax],esp
 007539FE    mov         eax,[00903714];gvar_00903714
 00753A03    mov         dword ptr [esi],eax
 00753A05    mov         eax,[00903728];gvar_00903728
 00753A0A    mov         [00903734],eax;gvar_00903734
 00753A0F    mov         eax,dword ptr [ebx]
 00753A11    mov         eax,dword ptr [eax+48]
 00753A14    mov         edx,0FFFFFF
 00753A19    call        TBrush.SetColor
 00753A1E    push        64
 00753A20    mov         eax,[00903754];gvar_00903754
 00753A25    push        eax
 00753A26    push        0A
 00753A28    call        kernel32.MulDiv
 00753A2D    mov         edx,eax
 00753A2F    mov         eax,dword ptr [ebx]
 00753A31    mov         eax,dword ptr [eax+40]
 00753A34    call        TFont.SetSize
 00753A39    mov         eax,dword ptr [ebx]
 00753A3B    mov         eax,dword ptr [eax+40]
 00753A3E    movzx       edx,byte ptr ds:[753B88];0x1 gvar_00753B88
 00753A45    call        TFont.SetStyle
 00753A4A    push        64
 00753A4C    push        64
 00753A4E    mov         edx,753B98;'X'
 00753A53    mov         eax,dword ptr [ebx]
 00753A55    call        TCustomCanvas.TextHeight
 00753A5A    push        eax
 00753A5B    call        kernel32.MulDiv
 00753A60    mov         [00903738],eax;gvar_00903738:Integer
 00753A65    push        64
 00753A67    mov         eax,[00903754];gvar_00903754
 00753A6C    push        eax
 00753A6D    push        3
 00753A6F    call        kernel32.MulDiv
 00753A74    mov         edx,eax
 00753A76    mov         eax,dword ptr [ebx]
 00753A78    mov         eax,dword ptr [eax+44]
 00753A7B    call        TPen.SetWidth
 00753A80    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753A86    add         ecx,3
>00753A89    jno         00753A90
 00753A8B    call        @IntOver
 00753A90    mov         edx,dword ptr [esi]
 00753A92    mov         eax,dword ptr [ebx]
 00753A94    mov         edi,dword ptr [eax]
 00753A96    call        dword ptr [edi+64]
 00753A99    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753A9F    add         ecx,3
>00753AA2    jno         00753AA9
 00753AA4    call        @IntOver
 00753AA9    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753AAF    mov         eax,dword ptr [ebx]
 00753AB1    mov         edi,dword ptr [eax]
 00753AB3    call        dword ptr [edi+60]
 00753AB6    mov         eax,[00903738];gvar_00903738:Integer
 00753ABB    add         dword ptr ds:[903734],eax;gvar_00903734
>00753AC1    jno         00753AC8
 00753AC3    call        @IntOver
 00753AC8    mov         eax,[00903714];gvar_00903714
 00753ACD    mov         dword ptr [esi],eax
 00753ACF    mov         eax,dword ptr [ebp-4]
 00753AD2    push        eax
 00753AD3    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753AD9    mov         edx,dword ptr [esi]
 00753ADB    mov         eax,dword ptr [ebx]
 00753ADD    mov         edi,dword ptr [eax]
 00753ADF    call        dword ptr [edi+90]
 00753AE5    mov         edx,dword ptr [ebp-8]
 00753AE8    mov         eax,dword ptr [ebx]
 00753AEA    call        TCustomCanvas.TextWidth
 00753AEF    sar         eax,1
>00753AF1    jns         00753AF6
 00753AF3    adc         eax,0
 00753AF6    mov         edx,dword ptr ds:[903710];gvar_00903710
 00753AFC    sub         edx,eax
>00753AFE    jno         00753B05
 00753B00    call        @IntOver
 00753B05    mov         dword ptr [esi],edx
 00753B07    mov         eax,dword ptr [ebp-8]
 00753B0A    push        eax
 00753B0B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753B11    mov         edx,dword ptr [esi]
 00753B13    mov         eax,dword ptr [ebx]
 00753B15    mov         edi,dword ptr [eax]
 00753B17    call        dword ptr [edi+90]
 00753B1D    mov         edx,dword ptr [ebp-0C]
 00753B20    mov         eax,dword ptr [ebx]
 00753B22    call        TCustomCanvas.TextWidth
 00753B27    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753B2D    sub         edx,eax
>00753B2F    jno         00753B36
 00753B31    call        @IntOver
 00753B36    mov         dword ptr [esi],edx
 00753B38    mov         eax,dword ptr [ebp-0C]
 00753B3B    push        eax
 00753B3C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753B42    mov         edx,dword ptr [esi]
 00753B44    mov         eax,dword ptr [ebx]
 00753B46    mov         esi,dword ptr [eax]
 00753B48    call        dword ptr [esi+90]
 00753B4E    mov         eax,dword ptr [ebx]
 00753B50    mov         eax,dword ptr [eax+40]
 00753B53    movzx       edx,byte ptr ds:[753B9C];0x0 gvar_00753B9C
 00753B5A    call        TFont.SetStyle
 00753B5F    xor         eax,eax
 00753B61    pop         edx
 00753B62    pop         ecx
 00753B63    pop         ecx
 00753B64    mov         dword ptr fs:[eax],edx
 00753B67    push        753B81
 00753B6C    lea         eax,[ebp-0C]
 00753B6F    mov         edx,3
 00753B74    call        @UStrArrayClr
 00753B79    ret
>00753B7A    jmp         @HandleFinally
>00753B7F    jmp         00753B6C
 00753B81    pop         edi
 00753B82    pop         esi
 00753B83    pop         ebx
 00753B84    mov         esp,ebp
 00753B86    pop         ebp
 00753B87    ret
end;*}

//00753BA0
{*procedure sub_00753BA0(?:?);
begin
 00753BA0    mov         edx,eax
 00753BA2    imul        edx,dword ptr ds:[903738];gvar_00903738:Integer
>00753BA9    jno         00753BB0
 00753BAB    call        @IntOver
 00753BB0    add         edx,dword ptr ds:[903734];gvar_00903734
>00753BB6    jno         00753BBD
 00753BB8    call        @IntOver
 00753BBD    mov         ecx,dword ptr ds:[903728];gvar_00903728
 00753BC3    sub         ecx,dword ptr ds:[903738];gvar_00903738:Integer
>00753BC9    jno         00753BD0
 00753BCB    call        @IntOver
 00753BD0    cmp         edx,ecx
>00753BD2    jg          00753BD8
 00753BD4    test        eax,eax
>00753BD6    jne         00753C09
 00753BD8    add         dword ptr ds:[9036DC],1;gvar_009036DC
>00753BDF    jno         00753BE6
 00753BE1    call        @IntOver
 00753BE6    add         dword ptr ds:[9036E0],1;gvar_009036E0
>00753BED    jno         00753BF4
 00753BEF    call        @IntOver
 00753BF4    mov         dword ptr ds:[903750],1;gvar_00903750
 00753BFE    mov         eax,[0090372C];gvar_0090372C
 00753C03    mov         [00903734],eax;gvar_00903734
 00753C08    ret
 00753C09    mov         eax,[00903750];gvar_00903750
 00753C0E    imul        dword ptr ds:[903738];gvar_00903738:Integer
>00753C14    jno         00753C1B
 00753C16    call        @IntOver
 00753C1B    add         eax,dword ptr ds:[90372C];gvar_0090372C
>00753C21    jno         00753C28
 00753C23    call        @IntOver
 00753C28    mov         [00903734],eax;gvar_00903734
 00753C2D    add         dword ptr ds:[903750],1;gvar_00903750
>00753C34    jno         00753C3B
 00753C36    call        @IntOver
 00753C3B    ret
end;*}

//00753C3C
{*procedure sub_00753C3C(?:?; ?:?);
begin
 00753C3C    push        ebp
 00753C3D    mov         ebp,esp
 00753C3F    push        0
 00753C41    push        0
 00753C43    push        ebx
 00753C44    push        esi
 00753C45    push        edi
 00753C46    mov         esi,edx
 00753C48    mov         ebx,eax
 00753C4A    xor         eax,eax
 00753C4C    push        ebp
 00753C4D    push        753D51
 00753C52    push        dword ptr fs:[eax]
 00753C55    mov         dword ptr fs:[eax],esp
 00753C58    mov         edi,dword ptr ds:[903714];gvar_00903714
 00753C5E    mov         eax,[0090372C];gvar_0090372C
 00753C63    mov         [00903734],eax;gvar_00903734
 00753C68    lea         eax,[ebp-4]
 00753C6B    mov         edx,dword ptr ds:[7C4620];^gvar_007C2BBC
 00753C71    mov         edx,dword ptr [edx]
 00753C73    call        @UStrLAsg
 00753C78    cmp         ebx,dword ptr ds:[9036DC];gvar_009036DC
>00753C7E    jg          00753CB5
 00753C80    cmp         esi,dword ptr ds:[9036DC];gvar_009036DC
>00753C86    jl          00753CB5
 00753C88    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753C8D    mov         eax,dword ptr [eax+40]
 00753C90    movzx       edx,byte ptr ds:[753D60];0x1 gvar_00753D60
 00753C97    call        TFont.SetStyle
 00753C9C    mov         eax,dword ptr [ebp-4]
 00753C9F    push        eax
 00753CA0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753CA6    mov         edx,edi
 00753CA8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753CAD    mov         edi,dword ptr [eax]
 00753CAF    call        dword ptr [edi+90]
 00753CB5    mov         eax,1
 00753CBA    call        00753BA0
 00753CBF    mov         edi,dword ptr ds:[903714];gvar_00903714
 00753CC5    add         edi,dword ptr ds:[903744];gvar_00903744
>00753CCB    jno         00753CD2
 00753CCD    call        @IntOver
 00753CD2    lea         eax,[ebp-8]
 00753CD5    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 00753CDB    mov         edx,dword ptr [edx]
 00753CDD    mov         edx,dword ptr [edx+4]
 00753CE0    call        @UStrLAsg
 00753CE5    cmp         ebx,dword ptr ds:[9036DC];gvar_009036DC
>00753CEB    jg          00753D22
 00753CED    cmp         esi,dword ptr ds:[9036DC];gvar_009036DC
>00753CF3    jl          00753D22
 00753CF5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753CFA    mov         eax,dword ptr [eax+40]
 00753CFD    movzx       edx,byte ptr ds:[753D64];0x0 gvar_00753D64
 00753D04    call        TFont.SetStyle
 00753D09    mov         eax,dword ptr [ebp-8]
 00753D0C    push        eax
 00753D0D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753D13    mov         edx,edi
 00753D15    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753D1A    mov         ebx,dword ptr [eax]
 00753D1C    call        dword ptr [ebx+90]
 00753D22    mov         eax,1
 00753D27    call        00753BA0
 00753D2C    mov         eax,1
 00753D31    call        00753BA0
 00753D36    xor         eax,eax
 00753D38    pop         edx
 00753D39    pop         ecx
 00753D3A    pop         ecx
 00753D3B    mov         dword ptr fs:[eax],edx
 00753D3E    push        753D58
 00753D43    lea         eax,[ebp-8]
 00753D46    mov         edx,2
 00753D4B    call        @UStrArrayClr
 00753D50    ret
>00753D51    jmp         @HandleFinally
>00753D56    jmp         00753D43
 00753D58    pop         edi
 00753D59    pop         esi
 00753D5A    pop         ebx
 00753D5B    pop         ecx
 00753D5C    pop         ecx
 00753D5D    pop         ebp
 00753D5E    ret
end;*}

//00753D68
{*procedure sub_00753D68(?:?; ?:?; ?:?);
begin
 00753D68    push        ebp
 00753D69    mov         ebp,esp
 00753D6B    push        ecx
 00753D6C    mov         ecx,0C
 00753D71    push        0
 00753D73    push        0
 00753D75    dec         ecx
>00753D76    jne         00753D71
 00753D78    xchg        ecx,dword ptr [ebp-4]
 00753D7B    push        ebx
 00753D7C    push        esi
 00753D7D    mov         ebx,ecx
 00753D7F    mov         dword ptr [ebp-2C],edx
 00753D82    mov         dword ptr [ebp-28],eax
 00753D85    xor         eax,eax
 00753D87    push        ebp
 00753D88    push        7543E8
 00753D8D    push        dword ptr fs:[eax]
 00753D90    mov         dword ptr fs:[eax],esp
 00753D93    mov         esi,dword ptr ds:[903714];gvar_00903714
 00753D99    lea         eax,[ebp-4]
 00753D9C    mov         edx,dword ptr ds:[7C4B94];^gvar_007C2BE8
 00753DA2    mov         edx,dword ptr [edx]
 00753DA4    call        @UStrLAsg
 00753DA9    mov         eax,[009036DC];gvar_009036DC
 00753DAE    cmp         eax,dword ptr [ebp-28]
>00753DB1    jl          00753DEA
 00753DB3    mov         eax,[009036DC];gvar_009036DC
 00753DB8    cmp         eax,dword ptr [ebp-2C]
>00753DBB    jg          00753DEA
 00753DBD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753DC2    mov         eax,dword ptr [eax+40]
 00753DC5    movzx       edx,byte ptr ds:[7543F8];0x1 gvar_007543F8
 00753DCC    call        TFont.SetStyle
 00753DD1    mov         eax,dword ptr [ebp-4]
 00753DD4    push        eax
 00753DD5    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753DDB    mov         edx,esi
 00753DDD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753DE2    mov         esi,dword ptr [eax]
 00753DE4    call        dword ptr [esi+90]
 00753DEA    mov         eax,1
 00753DEF    call        00753BA0
 00753DF4    mov         eax,[00903714];gvar_00903714
 00753DF9    add         eax,dword ptr ds:[903744];gvar_00903744
>00753DFF    jno         00753E06
 00753E01    call        @IntOver
 00753E06    mov         dword ptr [ebp-30],eax
 00753E09    mov         edx,ebx
 00753E0B    mov         eax,0A
 00753E10    call        007537B0
 00753E15    mov         edx,dword ptr ds:[903714];gvar_00903714
 00753E1B    add         edx,dword ptr ds:[903744];gvar_00903744
>00753E21    jno         00753E28
 00753E23    call        @IntOver
 00753E28    add         eax,edx
>00753E2A    jno         00753E31
 00753E2C    call        @IntOver
 00753E31    mov         dword ptr [ebp-34],eax
 00753E34    mov         edx,ebx
 00753E36    mov         eax,19
 00753E3B    call        007537B0
 00753E40    mov         edx,dword ptr ds:[903714];gvar_00903714
 00753E46    add         edx,dword ptr ds:[903744];gvar_00903744
>00753E4C    jno         00753E53
 00753E4E    call        @IntOver
 00753E53    add         eax,edx
>00753E55    jno         00753E5C
 00753E57    call        @IntOver
 00753E5C    mov         dword ptr [ebp-38],eax
 00753E5F    mov         edx,ebx
 00753E61    mov         eax,64
 00753E66    call        007537B0
 00753E6B    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753E71    sub         edx,eax
>00753E73    jno         00753E7A
 00753E75    call        @IntOver
 00753E7A    mov         dword ptr [ebp-3C],edx
 00753E7D    mov         edx,ebx
 00753E7F    mov         eax,50
 00753E84    call        007537B0
 00753E89    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753E8F    sub         edx,eax
>00753E91    jno         00753E98
 00753E93    call        @IntOver
 00753E98    mov         dword ptr [ebp-40],edx
 00753E9B    mov         edx,ebx
 00753E9D    mov         eax,3C
 00753EA2    call        007537B0
 00753EA7    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753EAD    sub         edx,eax
>00753EAF    jno         00753EB6
 00753EB1    call        @IntOver
 00753EB6    mov         dword ptr [ebp-44],edx
 00753EB9    mov         edx,ebx
 00753EBB    mov         eax,28
 00753EC0    call        007537B0
 00753EC5    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753ECB    sub         edx,eax
>00753ECD    jno         00753ED4
 00753ECF    call        @IntOver
 00753ED4    mov         dword ptr [ebp-48],edx
 00753ED7    mov         edx,ebx
 00753ED9    mov         eax,14
 00753EDE    call        007537B0
 00753EE3    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00753EE9    sub         edx,eax
>00753EEB    jno         00753EF2
 00753EED    call        @IntOver
 00753EF2    mov         dword ptr [ebp-4C],edx
 00753EF5    lea         eax,[ebp-8]
 00753EF8    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753EFE    mov         edx,dword ptr [edx]
 00753F00    call        @UStrLAsg
 00753F05    lea         eax,[ebp-0C]
 00753F08    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753F0E    mov         edx,dword ptr [edx+4]
 00753F11    call        @UStrLAsg
 00753F16    lea         eax,[ebp-10]
 00753F19    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753F1F    mov         edx,dword ptr [edx+8]
 00753F22    call        @UStrLAsg
 00753F27    lea         eax,[ebp-14]
 00753F2A    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753F30    mov         edx,dword ptr [edx+0C]
 00753F33    call        @UStrLAsg
 00753F38    lea         eax,[ebp-18]
 00753F3B    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753F41    mov         edx,dword ptr [edx+10]
 00753F44    call        @UStrLAsg
 00753F49    lea         eax,[ebp-1C]
 00753F4C    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753F52    mov         edx,dword ptr [edx+14]
 00753F55    call        @UStrLAsg
 00753F5A    lea         eax,[ebp-20]
 00753F5D    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753F63    mov         edx,dword ptr [edx+18]
 00753F66    call        @UStrLAsg
 00753F6B    lea         eax,[ebp-24]
 00753F6E    mov         edx,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00753F74    mov         edx,dword ptr [edx+1C]
 00753F77    call        @UStrLAsg
 00753F7C    mov         eax,[009036DC];gvar_009036DC
 00753F81    cmp         eax,dword ptr [ebp-28]
>00753F84    jl          00754118
 00753F8A    mov         eax,[009036DC];gvar_009036DC
 00753F8F    cmp         eax,dword ptr [ebp-2C]
>00753F92    jg          00754118
 00753F98    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753F9D    mov         eax,dword ptr [eax+40]
 00753FA0    movzx       edx,byte ptr ds:[7543F8];0x1 gvar_007543F8
 00753FA7    call        TFont.SetStyle
 00753FAC    mov         eax,dword ptr [ebp-8]
 00753FAF    push        eax
 00753FB0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753FB6    mov         edx,dword ptr [ebp-30]
 00753FB9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753FBE    mov         ebx,dword ptr [eax]
 00753FC0    call        dword ptr [ebx+90]
 00753FC6    mov         eax,dword ptr [ebp-0C]
 00753FC9    push        eax
 00753FCA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00753FD0    mov         edx,dword ptr [ebp-34]
 00753FD3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00753FD8    mov         ebx,dword ptr [eax]
 00753FDA    call        dword ptr [ebx+90]
 00753FE0    mov         eax,[00903734];gvar_00903734
 00753FE5    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00753FEB    jno         00753FF2
 00753FED    call        @IntOver
 00753FF2    push        eax
 00753FF3    lea         eax,[ebp-5C]
 00753FF6    push        eax
 00753FF7    mov         ecx,dword ptr [ebp-3C]
 00753FFA    mov         edx,dword ptr ds:[903734];gvar_00903734
 00754000    mov         eax,dword ptr [ebp-38]
 00754003    call        Rect
 00754008    mov         eax,[00903734];gvar_00903734
 0075400D    push        eax
 0075400E    mov         eax,dword ptr [ebp-10]
 00754011    push        eax
 00754012    mov         ecx,dword ptr [ebp-38]
 00754015    lea         edx,[ebp-5C]
 00754018    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075401D    mov         ebx,dword ptr [eax]
 0075401F    call        dword ptr [ebx+98]
 00754025    mov         eax,dword ptr [ebp-14]
 00754028    push        eax
 00754029    mov         edx,dword ptr [ebp-14]
 0075402C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754031    call        TCustomCanvas.TextWidth
 00754036    mov         edx,dword ptr [ebp-40]
 00754039    sub         edx,eax
>0075403B    jno         00754042
 0075403D    call        @IntOver
 00754042    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754048    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075404D    mov         ebx,dword ptr [eax]
 0075404F    call        dword ptr [ebx+90]
 00754055    mov         eax,dword ptr [ebp-18]
 00754058    push        eax
 00754059    mov         edx,dword ptr [ebp-18]
 0075405C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754061    call        TCustomCanvas.TextWidth
 00754066    mov         edx,dword ptr [ebp-44]
 00754069    sub         edx,eax
>0075406B    jno         00754072
 0075406D    call        @IntOver
 00754072    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754078    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075407D    mov         ebx,dword ptr [eax]
 0075407F    call        dword ptr [ebx+90]
 00754085    mov         eax,dword ptr [ebp-1C]
 00754088    push        eax
 00754089    mov         edx,dword ptr [ebp-1C]
 0075408C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754091    call        TCustomCanvas.TextWidth
 00754096    mov         edx,dword ptr [ebp-48]
 00754099    sub         edx,eax
>0075409B    jno         007540A2
 0075409D    call        @IntOver
 007540A2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007540A8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007540AD    mov         ebx,dword ptr [eax]
 007540AF    call        dword ptr [ebx+90]
 007540B5    mov         eax,dword ptr [ebp-20]
 007540B8    push        eax
 007540B9    mov         edx,dword ptr [ebp-20]
 007540BC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007540C1    call        TCustomCanvas.TextWidth
 007540C6    mov         edx,dword ptr [ebp-4C]
 007540C9    sub         edx,eax
>007540CB    jno         007540D2
 007540CD    call        @IntOver
 007540D2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007540D8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007540DD    mov         ebx,dword ptr [eax]
 007540DF    call        dword ptr [ebx+90]
 007540E5    mov         eax,dword ptr [ebp-24]
 007540E8    push        eax
 007540E9    mov         edx,dword ptr [ebp-24]
 007540EC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007540F1    call        TCustomCanvas.TextWidth
 007540F6    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 007540FC    sub         edx,eax
>007540FE    jno         00754105
 00754100    call        @IntOver
 00754105    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075410B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754110    mov         ebx,dword ptr [eax]
 00754112    call        dword ptr [ebx+90]
 00754118    mov         eax,1
 0075411D    call        00753BA0
 00754122    xor         ebx,ebx
 00754124    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00754129    mov         eax,dword ptr [eax]
 0075412B    mov         edx,ebx
 0075412D    call        TFXNet.GetPanel
 00754132    test        eax,eax
>00754134    je          007543AC
 0075413A    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0075413F    mov         eax,dword ptr [eax]
 00754141    mov         edx,ebx
 00754143    call        TFXNet.GetPanel
 00754148    mov         esi,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 0075414B    lea         edx,[ebp-64]
 0075414E    mov         eax,ebx
 00754150    call        IntToStr
 00754155    mov         ecx,dword ptr [ebp-64]
 00754158    lea         eax,[ebp-60]
 0075415B    mov         edx,754408;'0'
 00754160    call        @UStrCat3
 00754165    mov         eax,dword ptr [ebp-60]
 00754168    lea         ecx,[ebp-8]
 0075416B    mov         edx,2
 00754170    call        00431F5C
 00754175    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0075417A    mov         eax,dword ptr [eax]
 0075417C    mov         edx,ebx
 0075417E    call        TFXNet.GetPanel
 00754183    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 00754186    add         eax,0FFFFFFFD
 00754189    cmp         eax,5
>0075418C    jbe         00754193
 0075418E    call        @BoundErr
 00754193    add         eax,3
 00754196    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 0075419C    mov         edx,dword ptr [edx+eax*4-0C]
 007541A0    lea         eax,[ebp-0C]
 007541A3    call        @UStrLAsg
 007541A8    lea         edx,[ebp-10]
 007541AB    mov         eax,esi
 007541AD    call        006A2434
 007541B2    lea         edx,[ebp-14]
 007541B5    movzx       eax,byte ptr [esi+122]
 007541BC    call        IntToStr
 007541C1    mov         eax,esi
 007541C3    call        006A3430
 007541C8    movzx       eax,al
 007541CB    lea         edx,[ebp-18]
 007541CE    call        IntToStr
 007541D3    mov         eax,esi
 007541D5    call        006A34B0
 007541DA    movzx       eax,al
 007541DD    lea         edx,[ebp-1C]
 007541E0    call        IntToStr
 007541E5    lea         edx,[ebp-20]
 007541E8    movzx       eax,word ptr [esi+123]
 007541EF    call        IntToStr
 007541F4    mov         eax,esi
 007541F6    call        006A2DE4
 007541FB    movzx       eax,ax
 007541FE    lea         edx,[ebp-24]
 00754201    call        IntToStr
 00754206    mov         eax,[009036DC];gvar_009036DC
 0075420B    cmp         eax,dword ptr [ebp-28]
>0075420E    jl          007543A2
 00754214    mov         eax,[009036DC];gvar_009036DC
 00754219    cmp         eax,dword ptr [ebp-2C]
>0075421C    jg          007543A2
 00754222    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754227    mov         eax,dword ptr [eax+40]
 0075422A    movzx       edx,byte ptr ds:[75440C];0x0 gvar_0075440C
 00754231    call        TFont.SetStyle
 00754236    mov         eax,dword ptr [ebp-8]
 00754239    push        eax
 0075423A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754240    mov         edx,dword ptr [ebp-30]
 00754243    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754248    mov         esi,dword ptr [eax]
 0075424A    call        dword ptr [esi+90]
 00754250    mov         eax,dword ptr [ebp-0C]
 00754253    push        eax
 00754254    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075425A    mov         edx,dword ptr [ebp-34]
 0075425D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754262    mov         esi,dword ptr [eax]
 00754264    call        dword ptr [esi+90]
 0075426A    mov         eax,[00903734];gvar_00903734
 0075426F    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00754275    jno         0075427C
 00754277    call        @IntOver
 0075427C    push        eax
 0075427D    lea         eax,[ebp-5C]
 00754280    push        eax
 00754281    mov         ecx,dword ptr [ebp-3C]
 00754284    mov         edx,dword ptr ds:[903734];gvar_00903734
 0075428A    mov         eax,dword ptr [ebp-38]
 0075428D    call        Rect
 00754292    mov         eax,[00903734];gvar_00903734
 00754297    push        eax
 00754298    mov         eax,dword ptr [ebp-10]
 0075429B    push        eax
 0075429C    mov         ecx,dword ptr [ebp-38]
 0075429F    lea         edx,[ebp-5C]
 007542A2    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007542A7    mov         esi,dword ptr [eax]
 007542A9    call        dword ptr [esi+98]
 007542AF    mov         eax,dword ptr [ebp-14]
 007542B2    push        eax
 007542B3    mov         edx,dword ptr [ebp-14]
 007542B6    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007542BB    call        TCustomCanvas.TextWidth
 007542C0    mov         edx,dword ptr [ebp-40]
 007542C3    sub         edx,eax
>007542C5    jno         007542CC
 007542C7    call        @IntOver
 007542CC    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007542D2    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007542D7    mov         esi,dword ptr [eax]
 007542D9    call        dword ptr [esi+90]
 007542DF    mov         eax,dword ptr [ebp-18]
 007542E2    push        eax
 007542E3    mov         edx,dword ptr [ebp-18]
 007542E6    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007542EB    call        TCustomCanvas.TextWidth
 007542F0    mov         edx,dword ptr [ebp-44]
 007542F3    sub         edx,eax
>007542F5    jno         007542FC
 007542F7    call        @IntOver
 007542FC    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754302    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754307    mov         esi,dword ptr [eax]
 00754309    call        dword ptr [esi+90]
 0075430F    mov         eax,dword ptr [ebp-1C]
 00754312    push        eax
 00754313    mov         edx,dword ptr [ebp-1C]
 00754316    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075431B    call        TCustomCanvas.TextWidth
 00754320    mov         edx,dword ptr [ebp-48]
 00754323    sub         edx,eax
>00754325    jno         0075432C
 00754327    call        @IntOver
 0075432C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754332    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754337    mov         esi,dword ptr [eax]
 00754339    call        dword ptr [esi+90]
 0075433F    mov         eax,dword ptr [ebp-20]
 00754342    push        eax
 00754343    mov         edx,dword ptr [ebp-20]
 00754346    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075434B    call        TCustomCanvas.TextWidth
 00754350    mov         edx,dword ptr [ebp-4C]
 00754353    sub         edx,eax
>00754355    jno         0075435C
 00754357    call        @IntOver
 0075435C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754362    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754367    mov         esi,dword ptr [eax]
 00754369    call        dword ptr [esi+90]
 0075436F    mov         eax,dword ptr [ebp-24]
 00754372    push        eax
 00754373    mov         edx,dword ptr [ebp-24]
 00754376    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075437B    call        TCustomCanvas.TextWidth
 00754380    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00754386    sub         edx,eax
>00754388    jno         0075438F
 0075438A    call        @IntOver
 0075438F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754395    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075439A    mov         esi,dword ptr [eax]
 0075439C    call        dword ptr [esi+90]
 007543A2    mov         eax,1
 007543A7    call        00753BA0
 007543AC    inc         ebx
 007543AD    cmp         ebx,21
>007543B0    jne         00754124
 007543B6    mov         eax,1
 007543BB    call        00753BA0
 007543C0    xor         eax,eax
 007543C2    pop         edx
 007543C3    pop         ecx
 007543C4    pop         ecx
 007543C5    mov         dword ptr fs:[eax],edx
 007543C8    push        7543EF
 007543CD    lea         eax,[ebp-64]
 007543D0    mov         edx,2
 007543D5    call        @UStrArrayClr
 007543DA    lea         eax,[ebp-24]
 007543DD    mov         edx,9
 007543E2    call        @UStrArrayClr
 007543E7    ret
>007543E8    jmp         @HandleFinally
>007543ED    jmp         007543CD
 007543EF    pop         esi
 007543F0    pop         ebx
 007543F1    mov         esp,ebp
 007543F3    pop         ebp
 007543F4    ret
end;*}

//00754410
{*procedure sub_00754410(?:?; ?:?; ?:?);
begin
 00754410    push        ebp
 00754411    mov         ebp,esp
 00754413    push        ecx
 00754414    mov         ecx,4
 00754419    push        0
 0075441B    push        0
 0075441D    dec         ecx
>0075441E    jne         00754419
 00754420    xchg        ecx,dword ptr [ebp-4]
 00754423    push        ebx
 00754424    push        esi
 00754425    mov         ebx,ecx
 00754427    mov         dword ptr [ebp-14],edx
 0075442A    mov         dword ptr [ebp-10],eax
 0075442D    xor         eax,eax
 0075442F    push        ebp
 00754430    push        754668
 00754435    push        dword ptr fs:[eax]
 00754438    mov         dword ptr fs:[eax],esp
 0075443B    mov         esi,dword ptr ds:[903714];gvar_00903714
 00754441    lea         eax,[ebp-4]
 00754444    mov         edx,dword ptr ds:[7C43AC];^gvar_007C2BE0
 0075444A    mov         edx,dword ptr [edx]
 0075444C    call        @UStrLAsg
 00754451    mov         eax,[009036DC];gvar_009036DC
 00754456    cmp         eax,dword ptr [ebp-10]
>00754459    jl          00754492
 0075445B    mov         eax,[009036DC];gvar_009036DC
 00754460    cmp         eax,dword ptr [ebp-14]
>00754463    jg          00754492
 00754465    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075446A    mov         eax,dword ptr [eax+40]
 0075446D    movzx       edx,byte ptr ds:[754678];0x1 gvar_00754678
 00754474    call        TFont.SetStyle
 00754479    mov         eax,dword ptr [ebp-4]
 0075447C    push        eax
 0075447D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754483    mov         edx,esi
 00754485    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075448A    mov         esi,dword ptr [eax]
 0075448C    call        dword ptr [esi+90]
 00754492    mov         eax,1
 00754497    call        00753BA0
 0075449C    mov         eax,[00903714];gvar_00903714
 007544A1    add         eax,dword ptr ds:[903744];gvar_00903744
>007544A7    jno         007544AE
 007544A9    call        @IntOver
 007544AE    mov         dword ptr [ebp-18],eax
 007544B1    mov         edx,ebx
 007544B3    mov         eax,0A
 007544B8    call        007537B0
 007544BD    mov         edx,dword ptr ds:[903714];gvar_00903714
 007544C3    add         edx,dword ptr ds:[903744];gvar_00903744
>007544C9    jno         007544D0
 007544CB    call        @IntOver
 007544D0    add         eax,edx
>007544D2    jno         007544D9
 007544D4    call        @IntOver
 007544D9    mov         dword ptr [ebp-1C],eax
 007544DC    lea         eax,[ebp-8]
 007544DF    mov         edx,dword ptr ds:[7C4A08];^gvar_00901E54:UnicodeString
 007544E5    mov         edx,dword ptr [edx]
 007544E7    call        @UStrLAsg
 007544EC    lea         eax,[ebp-0C]
 007544EF    mov         edx,dword ptr ds:[7C4A08];^gvar_00901E54:UnicodeString
 007544F5    mov         edx,dword ptr [edx+0C]
 007544F8    call        @UStrLAsg
 007544FD    mov         eax,[009036DC];gvar_009036DC
 00754502    cmp         eax,dword ptr [ebp-10]
>00754505    jl          00754559
 00754507    mov         eax,[009036DC];gvar_009036DC
 0075450C    cmp         eax,dword ptr [ebp-14]
>0075450F    jg          00754559
 00754511    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754516    mov         eax,dword ptr [eax+40]
 00754519    movzx       edx,byte ptr ds:[754678];0x1 gvar_00754678
 00754520    call        TFont.SetStyle
 00754525    mov         eax,dword ptr [ebp-8]
 00754528    push        eax
 00754529    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075452F    mov         edx,dword ptr [ebp-18]
 00754532    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754537    mov         ebx,dword ptr [eax]
 00754539    call        dword ptr [ebx+90]
 0075453F    mov         eax,dword ptr [ebp-0C]
 00754542    push        eax
 00754543    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754549    mov         edx,dword ptr [ebp-1C]
 0075454C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754551    mov         ebx,dword ptr [eax]
 00754553    call        dword ptr [ebx+90]
 00754559    mov         eax,1
 0075455E    call        00753BA0
 00754563    xor         ebx,ebx
 00754565    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0075456A    mov         eax,dword ptr [eax]
 0075456C    mov         edx,ebx
 0075456E    call        TFXNet.GetPanel
 00754573    test        eax,eax
>00754575    je          0075462C
 0075457B    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00754580    mov         eax,dword ptr [eax]
 00754582    mov         edx,ebx
 00754584    call        TFXNet.GetPanel
 00754589    mov         esi,eax
 0075458B    lea         edx,[ebp-24]
 0075458E    mov         eax,ebx
 00754590    call        IntToStr
 00754595    mov         ecx,dword ptr [ebp-24]
 00754598    lea         eax,[ebp-20]
 0075459B    mov         edx,754688;'0'
 007545A0    call        @UStrCat3
 007545A5    mov         eax,dword ptr [ebp-20]
 007545A8    lea         ecx,[ebp-8]
 007545AB    mov         edx,2
 007545B0    call        00431F5C
 007545B5    lea         edx,[ebp-0C]
 007545B8    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 007545BB    mov         eax,dword ptr [eax+171]
 007545C1    call        006D5940
 007545C6    mov         eax,[009036DC];gvar_009036DC
 007545CB    cmp         eax,dword ptr [ebp-10]
>007545CE    jl          00754622
 007545D0    mov         eax,[009036DC];gvar_009036DC
 007545D5    cmp         eax,dword ptr [ebp-14]
>007545D8    jg          00754622
 007545DA    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007545DF    mov         eax,dword ptr [eax+40]
 007545E2    movzx       edx,byte ptr ds:[75468C];0x0 gvar_0075468C
 007545E9    call        TFont.SetStyle
 007545EE    mov         eax,dword ptr [ebp-8]
 007545F1    push        eax
 007545F2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007545F8    mov         edx,dword ptr [ebp-18]
 007545FB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754600    mov         esi,dword ptr [eax]
 00754602    call        dword ptr [esi+90]
 00754608    mov         eax,dword ptr [ebp-0C]
 0075460B    push        eax
 0075460C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754612    mov         edx,dword ptr [ebp-1C]
 00754615    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075461A    mov         esi,dword ptr [eax]
 0075461C    call        dword ptr [esi+90]
 00754622    mov         eax,1
 00754627    call        00753BA0
 0075462C    inc         ebx
 0075462D    cmp         ebx,21
>00754630    jne         00754565
 00754636    mov         eax,1
 0075463B    call        00753BA0
 00754640    xor         eax,eax
 00754642    pop         edx
 00754643    pop         ecx
 00754644    pop         ecx
 00754645    mov         dword ptr fs:[eax],edx
 00754648    push        75466F
 0075464D    lea         eax,[ebp-24]
 00754650    mov         edx,2
 00754655    call        @UStrArrayClr
 0075465A    lea         eax,[ebp-0C]
 0075465D    mov         edx,3
 00754662    call        @UStrArrayClr
 00754667    ret
>00754668    jmp         @HandleFinally
>0075466D    jmp         0075464D
 0075466F    pop         esi
 00754670    pop         ebx
 00754671    mov         esp,ebp
 00754673    pop         ebp
 00754674    ret
end;*}

//00754690
{*procedure sub_00754690(?:Integer; ?:Integer; ?:?);
begin
 00754690    push        ebx
 00754691    push        esi
 00754692    push        edi
 00754693    mov         edi,ecx
 00754695    mov         esi,edx
 00754697    mov         ebx,eax
 00754699    mov         dword ptr ds:[903750],1;gvar_00903750
 007546A3    mov         dword ptr ds:[9036DC],1;gvar_009036DC
 007546AD    mov         dword ptr ds:[9036E0],1;gvar_009036E0
 007546B7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007546BC    mov         eax,dword ptr [eax+48]
 007546BF    mov         edx,0FFFFFF
 007546C4    call        TBrush.SetColor
 007546C9    push        64
 007546CB    mov         eax,[00903754];gvar_00903754
 007546D0    push        eax
 007546D1    push        8
 007546D3    call        kernel32.MulDiv
 007546D8    mov         edx,eax
 007546DA    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007546DF    mov         eax,dword ptr [eax+40]
 007546E2    call        TFont.SetSize
 007546E7    push        64
 007546E9    push        64
 007546EB    mov         edx,754738;'X'
 007546F0    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007546F5    call        TCustomCanvas.TextHeight
 007546FA    push        eax
 007546FB    call        kernel32.MulDiv
 00754700    mov         [00903738],eax;gvar_00903738:Integer
 00754705    mov         ecx,edi
 00754707    mov         edx,esi
 00754709    mov         eax,ebx
 0075470B    call        00753C3C
 00754710    mov         ecx,edi
 00754712    mov         edx,esi
 00754714    mov         eax,ebx
 00754716    call        00753D68
 0075471B    mov         ecx,edi
 0075471D    mov         edx,esi
 0075471F    mov         eax,ebx
 00754721    call        00754410
 00754726    pop         edi
 00754727    pop         esi
 00754728    pop         ebx
 00754729    ret
end;*}

//0075473C
{*procedure sub_0075473C(?:Integer; ?:Integer; ?:?);
begin
 0075473C    push        ebp
 0075473D    mov         ebp,esp
 0075473F    push        ecx
 00754740    mov         ecx,56
 00754745    push        0
 00754747    push        0
 00754749    dec         ecx
>0075474A    jne         00754745
 0075474C    xchg        ecx,dword ptr [ebp-4]
 0075474F    push        ebx
 00754750    push        esi
 00754751    push        edi
 00754752    mov         dword ptr [ebp-4C],ecx
 00754755    mov         dword ptr [ebp-48],edx
 00754758    mov         dword ptr [ebp-44],eax
 0075475B    xor         eax,eax
 0075475D    push        ebp
 0075475E    push        7590F4
 00754763    push        dword ptr fs:[eax]
 00754766    mov         dword ptr fs:[eax],esp
 00754769    mov         dword ptr ds:[903750],1;gvar_00903750
 00754773    mov         dword ptr ds:[9036DC],1;gvar_009036DC
 0075477D    mov         dword ptr ds:[9036E0],1;gvar_009036E0
 00754787    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075478C    mov         eax,dword ptr [eax+48]
 0075478F    mov         edx,0FFFFFF
 00754794    call        TBrush.SetColor
 00754799    push        64
 0075479B    mov         eax,[00903754];gvar_00903754
 007547A0    push        eax
 007547A1    push        8
 007547A3    call        kernel32.MulDiv
 007547A8    mov         edx,eax
 007547AA    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007547AF    mov         eax,dword ptr [eax+40]
 007547B2    call        TFont.SetSize
 007547B7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007547BC    mov         eax,dword ptr [eax+40]
 007547BF    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 007547C6    call        TFont.SetStyle
 007547CB    push        64
 007547CD    push        64
 007547CF    mov         edx,759114;'X'
 007547D4    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007547D9    call        TCustomCanvas.TextHeight
 007547DE    push        eax
 007547DF    call        kernel32.MulDiv
 007547E4    mov         [00903738],eax;gvar_00903738:Integer
 007547E9    lea         eax,[ebp-8]
 007547EC    mov         edx,759124;'   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   ....
 007547F1    call        @UStrLAsg
 007547F6    mov         dl,1
 007547F8    mov         eax,[0046F9A0];TStringList
 007547FD    call        TStringList.Create;TStringList.Create
 00754802    mov         dword ptr [ebp-9C],eax
 00754808    xor         eax,eax
 0075480A    push        ebp
 0075480B    push        75495F
 00754810    push        dword ptr fs:[eax]
 00754813    mov         dword ptr fs:[eax],esp
 00754816    mov         eax,[00903714];gvar_00903714
 0075481B    mov         [00903730],eax;gvar_00903730
 00754820    mov         eax,[0090372C];gvar_0090372C
 00754825    mov         [00903734],eax;gvar_00903734
 0075482A    lea         eax,[ebp-0C]
 0075482D    mov         edx,dword ptr ds:[7C4A28];^gvar_007C2C14
 00754833    mov         edx,dword ptr [edx]
 00754835    call        @UStrLAsg
 0075483A    mov         eax,[009036DC];gvar_009036DC
 0075483F    cmp         eax,dword ptr [ebp-44]
>00754842    jl          0075487F
 00754844    mov         eax,[009036DC];gvar_009036DC
 00754849    cmp         eax,dword ptr [ebp-48]
>0075484C    jg          0075487F
 0075484E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754853    mov         eax,dword ptr [eax+40]
 00754856    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 0075485D    call        TFont.SetStyle
 00754862    mov         eax,dword ptr [ebp-0C]
 00754865    push        eax
 00754866    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075486C    mov         edx,dword ptr ds:[903730];gvar_00903730
 00754872    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754877    mov         ebx,dword ptr [eax]
 00754879    call        dword ptr [ebx+90]
 0075487F    mov         eax,1
 00754884    call        00753BA0
 00754889    mov         eax,[00903714];gvar_00903714
 0075488E    add         eax,dword ptr ds:[903744];gvar_00903744
>00754894    jno         0075489B
 00754896    call        @IntOver
 0075489B    mov         [00903730],eax;gvar_00903730
 007548A0    lea         eax,[ebp-18C]
 007548A6    mov         edx,dword ptr ds:[903768];gvar_00903768
 007548AC    add         edx,5
 007548AF    call        @UStrFromString
 007548B4    mov         edx,dword ptr [ebp-18C]
 007548BA    mov         eax,dword ptr [ebp-9C]
 007548C0    mov         ecx,dword ptr [eax]
 007548C2    call        dword ptr [ecx+30];TStrings.SetTextStr
 007548C5    mov         eax,dword ptr [ebp-9C]
 007548CB    mov         edx,dword ptr [eax]
 007548CD    call        dword ptr [edx+14];TStringList.GetCount
 007548D0    mov         esi,eax
 007548D2    sub         esi,1
>007548D5    jno         007548DC
 007548D7    call        @IntOver
 007548DC    test        esi,esi
>007548DE    jl          00754946
 007548E0    inc         esi
 007548E1    xor         ebx,ebx
 007548E3    lea         ecx,[ebp-0C]
 007548E6    mov         edx,ebx
 007548E8    mov         eax,dword ptr [ebp-9C]
 007548EE    mov         edi,dword ptr [eax]
 007548F0    call        dword ptr [edi+0C];TStringList.Get
 007548F3    mov         eax,[009036DC];gvar_009036DC
 007548F8    cmp         eax,dword ptr [ebp-44]
>007548FB    jl          00754938
 007548FD    mov         eax,[009036DC];gvar_009036DC
 00754902    cmp         eax,dword ptr [ebp-48]
>00754905    jg          00754938
 00754907    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075490C    mov         eax,dword ptr [eax+40]
 0075490F    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00754916    call        TFont.SetStyle
 0075491B    mov         eax,dword ptr [ebp-0C]
 0075491E    push        eax
 0075491F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754925    mov         edx,dword ptr ds:[903730];gvar_00903730
 0075492B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754930    mov         edi,dword ptr [eax]
 00754932    call        dword ptr [edi+90]
 00754938    mov         eax,1
 0075493D    call        00753BA0
 00754942    inc         ebx
 00754943    dec         esi
>00754944    jne         007548E3
 00754946    xor         eax,eax
 00754948    pop         edx
 00754949    pop         ecx
 0075494A    pop         ecx
 0075494B    mov         dword ptr fs:[eax],edx
 0075494E    push        754966
 00754953    mov         eax,dword ptr [ebp-9C]
 00754959    call        TObject.Free
 0075495E    ret
>0075495F    jmp         @HandleFinally
>00754964    jmp         00754953
 00754966    mov         eax,[00903714];gvar_00903714
 0075496B    mov         [00903730],eax;gvar_00903730
 00754970    mov         eax,1
 00754975    call        00753BA0
 0075497A    lea         eax,[ebp-0C]
 0075497D    mov         edx,dword ptr ds:[7C49B0];^gvar_007C2DE8
 00754983    mov         edx,dword ptr [edx]
 00754985    call        @UStrLAsg
 0075498A    mov         eax,[009036DC];gvar_009036DC
 0075498F    cmp         eax,dword ptr [ebp-44]
>00754992    jl          007549CF
 00754994    mov         eax,[009036DC];gvar_009036DC
 00754999    cmp         eax,dword ptr [ebp-48]
>0075499C    jg          007549CF
 0075499E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007549A3    mov         eax,dword ptr [eax+40]
 007549A6    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 007549AD    call        TFont.SetStyle
 007549B2    mov         eax,dword ptr [ebp-0C]
 007549B5    push        eax
 007549B6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007549BC    mov         edx,dword ptr ds:[903730];gvar_00903730
 007549C2    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007549C7    mov         ebx,dword ptr [eax]
 007549C9    call        dword ptr [ebx+90]
 007549CF    mov         eax,0C
 007549D4    call        00753BA0
 007549D9    mov         eax,[00903714];gvar_00903714
 007549DE    add         eax,dword ptr ds:[903744];gvar_00903744
>007549E4    jno         007549EB
 007549E6    call        @IntOver
 007549EB    mov         [00903730],eax;gvar_00903730
 007549F0    mov         esi,dword ptr ds:[903714];gvar_00903714
 007549F6    add         esi,dword ptr ds:[903748];gvar_00903748
>007549FC    jno         00754A03
 007549FE    call        @IntOver
 00754A03    mov         ebx,1
 00754A08    mov         eax,ebx
 00754A0A    cmp         eax,0C
>00754A0D    ja          00754D1A
 00754A13    jmp         dword ptr [eax*4+754A1A]
 00754A13    dd          00754D1A
 00754A13    dd          00754A4E
 00754A13    dd          00754A81
 00754A13    dd          00754AB4
 00754A13    dd          00754B08
 00754A13    dd          00754B5C
 00754A13    dd          00754BB0
 00754A13    dd          00754BE3
 00754A13    dd          00754C1C
 00754A13    dd          00754C55
 00754A13    dd          00754C98
 00754A13    dd          00754CD8
 00754A13    dd          00754CFE
 00754A4E    lea         eax,[ebp-0C]
 00754A51    mov         edx,dword ptr ds:[7C4EB8];^gvar_007C2DF0
 00754A57    mov         edx,dword ptr [edx]
 00754A59    call        @UStrLAsg
 00754A5E    lea         eax,[ebp-10]
 00754A61    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754A67    movzx       edx,byte ptr [edx+166]
 00754A6E    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 00754A74    mov         edx,dword ptr [ecx+edx*4]
 00754A77    call        @UStrLAsg
>00754A7C    jmp         00754D1A
 00754A81    lea         eax,[ebp-0C]
 00754A84    mov         edx,dword ptr ds:[7C46D0];^gvar_007C2DF4
 00754A8A    mov         edx,dword ptr [edx]
 00754A8C    call        @UStrLAsg
 00754A91    lea         eax,[ebp-10]
 00754A94    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754A9A    movzx       edx,byte ptr [edx+167]
 00754AA1    mov         ecx,dword ptr ds:[7C4F08];^gvar_00901EFC:UnicodeString
 00754AA7    mov         edx,dword ptr [ecx+edx*4]
 00754AAA    call        @UStrLAsg
>00754AAF    jmp         00754D1A
 00754AB4    mov         eax,[007C4414];^gvar_007C2DF8
 00754AB9    push        dword ptr [eax]
 00754ABB    push        7591E8;', '
 00754AC0    mov         eax,[007C4E10];^gvar_007C2DFC
 00754AC5    push        dword ptr [eax]
 00754AC7    lea         eax,[ebp-0C]
 00754ACA    mov         edx,3
 00754ACF    call        @UStrCatN
 00754AD4    lea         eax,[ebp-10]
 00754AD7    push        eax
 00754AD8    mov         eax,[00903768];gvar_00903768
 00754ADD    movzx       eax,word ptr [eax+168]
 00754AE4    mov         dword ptr [ebp-194],eax
 00754AEA    mov         byte ptr [ebp-190],0
 00754AF1    lea         edx,[ebp-194]
 00754AF7    xor         ecx,ecx
 00754AF9    mov         eax,7591FC;' %.4d'
 00754AFE    call        Format
>00754B03    jmp         00754D1A
 00754B08    mov         eax,[007C4414];^gvar_007C2DF8
 00754B0D    push        dword ptr [eax]
 00754B0F    push        7591E8;', '
 00754B14    mov         eax,[007C4EA4];^gvar_007C2E00
 00754B19    push        dword ptr [eax]
 00754B1B    lea         eax,[ebp-0C]
 00754B1E    mov         edx,3
 00754B23    call        @UStrCatN
 00754B28    lea         eax,[ebp-10]
 00754B2B    push        eax
 00754B2C    mov         eax,[00903768];gvar_00903768
 00754B31    movzx       eax,word ptr [eax+16A]
 00754B38    mov         dword ptr [ebp-194],eax
 00754B3E    mov         byte ptr [ebp-190],0
 00754B45    lea         edx,[ebp-194]
 00754B4B    xor         ecx,ecx
 00754B4D    mov         eax,7591FC;' %.4d'
 00754B52    call        Format
>00754B57    jmp         00754D1A
 00754B5C    mov         eax,[007C4414];^gvar_007C2DF8
 00754B61    push        dword ptr [eax]
 00754B63    push        7591E8;', '
 00754B68    mov         eax,[007C4A24];^gvar_007C2E04
 00754B6D    push        dword ptr [eax]
 00754B6F    lea         eax,[ebp-0C]
 00754B72    mov         edx,3
 00754B77    call        @UStrCatN
 00754B7C    lea         eax,[ebp-10]
 00754B7F    push        eax
 00754B80    mov         eax,[00903768];gvar_00903768
 00754B85    movzx       eax,word ptr [eax+16C]
 00754B8C    mov         dword ptr [ebp-194],eax
 00754B92    mov         byte ptr [ebp-190],0
 00754B99    lea         edx,[ebp-194]
 00754B9F    xor         ecx,ecx
 00754BA1    mov         eax,7591FC;' %.4d'
 00754BA6    call        Format
>00754BAB    jmp         00754D1A
 00754BB0    lea         eax,[ebp-0C]
 00754BB3    mov         edx,dword ptr ds:[7C41B0];^gvar_007C2E08
 00754BB9    mov         edx,dword ptr [edx]
 00754BBB    call        @UStrLAsg
 00754BC0    lea         eax,[ebp-10]
 00754BC3    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754BC9    movzx       edx,byte ptr [edx+16F]
 00754BD0    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00754BD6    mov         edx,dword ptr [ecx+edx*4]
 00754BD9    call        @UStrLAsg
>00754BDE    jmp         00754D1A
 00754BE3    mov         eax,[007C4BBC];^gvar_007C2E10
 00754BE8    push        dword ptr [eax]
 00754BEA    push        7591E8;', '
 00754BEF    mov         eax,[007C45A4];^gvar_007C2E14
 00754BF4    push        dword ptr [eax]
 00754BF6    lea         eax,[ebp-0C]
 00754BF9    mov         edx,3
 00754BFE    call        @UStrCatN
 00754C03    lea         edx,[ebp-10]
 00754C06    mov         eax,[00903768];gvar_00903768
 00754C0B    movzx       eax,byte ptr [eax+16E]
 00754C12    call        IntToStr
>00754C17    jmp         00754D1A
 00754C1C    mov         eax,[007C4E64];^gvar_007C2E18
 00754C21    push        dword ptr [eax]
 00754C23    push        7591E8;', '
 00754C28    mov         eax,[007C4308];^gvar_007C2E1C
 00754C2D    push        dword ptr [eax]
 00754C2F    lea         eax,[ebp-0C]
 00754C32    mov         edx,3
 00754C37    call        @UStrCatN
 00754C3C    lea         edx,[ebp-10]
 00754C3F    mov         eax,[00903768];gvar_00903768
 00754C44    movzx       eax,byte ptr [eax+179]
 00754C4B    call        IntToStr
>00754C50    jmp         00754D1A
 00754C55    mov         eax,[007C46E4];^gvar_007C2E20
 00754C5A    push        dword ptr [eax]
 00754C5C    push        7591E8;', '
 00754C61    mov         eax,[007C4438];^gvar_007C2E24
 00754C66    push        dword ptr [eax]
 00754C68    lea         eax,[ebp-0C]
 00754C6B    mov         edx,3
 00754C70    call        @UStrCatN
 00754C75    lea         eax,[ebp-10]
 00754C78    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754C7E    movzx       edx,byte ptr [edx+182]
 00754C85    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00754C8B    mov         edx,dword ptr [ecx+edx*4]
 00754C8E    call        @UStrLAsg
>00754C93    jmp         00754D1A
 00754C98    mov         eax,[007C4E0C];^gvar_007C2E28
 00754C9D    push        dword ptr [eax]
 00754C9F    push        7591E8;', '
 00754CA4    mov         eax,[007C4250];^gvar_007C2E2C
 00754CA9    push        dword ptr [eax]
 00754CAB    lea         eax,[ebp-0C]
 00754CAE    mov         edx,3
 00754CB3    call        @UStrCatN
 00754CB8    lea         eax,[ebp-10]
 00754CBB    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754CC1    movzx       edx,byte ptr [edx+182]
 00754CC8    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00754CCE    mov         edx,dword ptr [ecx+edx*4]
 00754CD1    call        @UStrLAsg
>00754CD6    jmp         00754D1A
 00754CD8    lea         eax,[ebp-0C]
 00754CDB    mov         edx,dword ptr ds:[7C4D98];^gvar_007C2E30
 00754CE1    mov         edx,dword ptr [edx]
 00754CE3    call        @UStrLAsg
 00754CE8    lea         edx,[ebp-10]
 00754CEB    mov         eax,[00903768];gvar_00903768
 00754CF0    movzx       eax,word ptr [eax+17D]
 00754CF7    call        IntToStr
>00754CFC    jmp         00754D1A
 00754CFE    lea         eax,[ebp-0C]
 00754D01    call        @UStrClr
 00754D06    lea         eax,[ebp-10]
 00754D09    mov         edx,dword ptr ds:[903774];gvar_00903774
 00754D0F    add         edx,27C06
 00754D15    call        @UStrFromString
 00754D1A    mov         eax,[009036DC];gvar_009036DC
 00754D1F    cmp         eax,dword ptr [ebp-44]
>00754D22    jl          00754E05
 00754D28    mov         eax,[009036DC];gvar_009036DC
 00754D2D    cmp         eax,dword ptr [ebp-48]
>00754D30    jg          00754E05
 00754D36    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754D3B    mov         eax,dword ptr [eax+40]
 00754D3E    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00754D45    call        TFont.SetStyle
 00754D4A    mov         eax,[00903734];gvar_00903734
 00754D4F    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00754D55    jno         00754D5C
 00754D57    call        @IntOver
 00754D5C    push        eax
 00754D5D    lea         eax,[ebp-188]
 00754D63    push        eax
 00754D64    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 00754D6A    mov         edx,dword ptr ds:[903734];gvar_00903734
 00754D70    mov         eax,esi
 00754D72    call        Rect
 00754D77    mov         eax,[00903734];gvar_00903734
 00754D7C    push        eax
 00754D7D    push        dword ptr [ebp-8]
 00754D80    push        dword ptr [ebp-8]
 00754D83    push        dword ptr [ebp-8]
 00754D86    push        dword ptr [ebp-8]
 00754D89    lea         eax,[ebp-198]
 00754D8F    mov         edx,4
 00754D94    call        @UStrCatN
 00754D99    mov         eax,dword ptr [ebp-198]
 00754D9F    push        eax
 00754DA0    mov         ecx,esi
 00754DA2    lea         edx,[ebp-188]
 00754DA8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754DAD    mov         edi,dword ptr [eax]
 00754DAF    call        dword ptr [edi+98]
 00754DB5    mov         eax,dword ptr [ebp-0C]
 00754DB8    push        eax
 00754DB9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754DBF    mov         edx,dword ptr ds:[903730];gvar_00903730
 00754DC5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754DCA    mov         edi,dword ptr [eax]
 00754DCC    call        dword ptr [edi+90]
 00754DD2    mov         eax,dword ptr [ebp-10]
 00754DD5    push        eax
 00754DD6    mov         edx,dword ptr [ebp-10]
 00754DD9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754DDE    call        TCustomCanvas.TextWidth
 00754DE3    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00754DE9    sub         edx,eax
>00754DEB    jno         00754DF2
 00754DED    call        @IntOver
 00754DF2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754DF8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754DFD    mov         edi,dword ptr [eax]
 00754DFF    call        dword ptr [edi+90]
 00754E05    mov         eax,1
 00754E0A    call        00753BA0
 00754E0F    inc         ebx
 00754E10    cmp         ebx,0D
>00754E13    jne         00754A08
 00754E19    mov         eax,[00903714];gvar_00903714
 00754E1E    mov         [00903730],eax;gvar_00903730
 00754E23    mov         eax,1
 00754E28    call        00753BA0
 00754E2D    lea         eax,[ebp-0C]
 00754E30    mov         edx,dword ptr ds:[7C4324];^gvar_007C2D94
 00754E36    mov         edx,dword ptr [edx]
 00754E38    call        @UStrLAsg
 00754E3D    mov         eax,[009036DC];gvar_009036DC
 00754E42    cmp         eax,dword ptr [ebp-44]
>00754E45    jl          00754E82
 00754E47    mov         eax,[009036DC];gvar_009036DC
 00754E4C    cmp         eax,dword ptr [ebp-48]
>00754E4F    jg          00754E82
 00754E51    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754E56    mov         eax,dword ptr [eax+40]
 00754E59    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00754E60    call        TFont.SetStyle
 00754E65    mov         eax,dword ptr [ebp-0C]
 00754E68    push        eax
 00754E69    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00754E6F    mov         edx,dword ptr ds:[903730];gvar_00903730
 00754E75    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00754E7A    mov         ebx,dword ptr [eax]
 00754E7C    call        dword ptr [ebx+90]
 00754E82    mov         eax,1
 00754E87    call        00753BA0
 00754E8C    mov         eax,[00903714];gvar_00903714
 00754E91    add         eax,dword ptr ds:[903744];gvar_00903744
>00754E97    jno         00754E9E
 00754E99    call        @IntOver
 00754E9E    mov         [00903730],eax;gvar_00903730
 00754EA3    mov         ebx,1
 00754EA8    mov         eax,ebx
 00754EAA    cmp         eax,5
>00754EAD    ja          00755000
 00754EB3    jmp         dword ptr [eax*4+754EBA]
 00754EB3    dd          00755000
 00754EB3    dd          00754ED2
 00754EB3    dd          00754F15
 00754EB3    dd          00754F4E
 00754EB3    dd          00754F88
 00754EB3    dd          00754FC2
 00754ED2    mov         eax,[007C4734];^gvar_007C2D98
 00754ED7    push        dword ptr [eax]
 00754ED9    push        7591E8;', '
 00754EDE    mov         eax,[007C4930];^gvar_007C2D9C
 00754EE3    push        dword ptr [eax]
 00754EE5    lea         eax,[ebp-0C]
 00754EE8    mov         edx,3
 00754EED    call        @UStrCatN
 00754EF2    lea         eax,[ebp-10]
 00754EF5    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754EFB    movzx       edx,byte ptr [edx+17A]
 00754F02    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00754F08    mov         edx,dword ptr [ecx+edx*4]
 00754F0B    call        @UStrLAsg
>00754F10    jmp         00755000
 00754F15    mov         eax,[007C4734];^gvar_007C2D98
 00754F1A    push        dword ptr [eax]
 00754F1C    push        7591E8;', '
 00754F21    mov         eax,[007C4574];^gvar_007C2DA4
 00754F26    push        dword ptr [eax]
 00754F28    lea         eax,[ebp-0C]
 00754F2B    mov         edx,3
 00754F30    call        @UStrCatN
 00754F35    lea         edx,[ebp-10]
 00754F38    mov         eax,[00903768];gvar_00903768
 00754F3D    movzx       eax,byte ptr [eax+195]
 00754F44    call        IntToStr
>00754F49    jmp         00755000
 00754F4E    lea         eax,[ebp-0C]
 00754F51    mov         edx,dword ptr ds:[7C474C];^gvar_007C2DAC
 00754F57    mov         edx,dword ptr [edx]
 00754F59    call        @UStrLAsg
 00754F5E    lea         eax,[ebp-10]
 00754F61    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754F67    movzx       edx,byte ptr [edx+177]
 00754F6E    cmp         edx,1
>00754F71    jbe         00754F78
 00754F73    call        @BoundErr
 00754F78    mov         ecx,dword ptr ds:[7C4E04];^gvar_007C2DB0:array[2] of ?
 00754F7E    mov         edx,dword ptr [ecx+edx*4]
 00754F81    call        @UStrLAsg
>00754F86    jmp         00755000
 00754F88    lea         eax,[ebp-0C]
 00754F8B    mov         edx,dword ptr ds:[7C43D8];^gvar_007C2DB8
 00754F91    mov         edx,dword ptr [edx]
 00754F93    call        @UStrLAsg
 00754F98    lea         eax,[ebp-10]
 00754F9B    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754FA1    movzx       edx,byte ptr [edx+170]
 00754FA8    cmp         edx,2
>00754FAB    jbe         00754FB2
 00754FAD    call        @BoundErr
 00754FB2    mov         ecx,dword ptr ds:[7C4684];^gvar_00901EF0:UnicodeString
 00754FB8    mov         edx,dword ptr [ecx+edx*4]
 00754FBB    call        @UStrLAsg
>00754FC0    jmp         00755000
 00754FC2    mov         eax,[007C4C14];^gvar_007C2DBC
 00754FC7    push        dword ptr [eax]
 00754FC9    push        7591E8;', '
 00754FCE    mov         eax,[007C4700];^gvar_007C2DC0
 00754FD3    push        dword ptr [eax]
 00754FD5    lea         eax,[ebp-0C]
 00754FD8    mov         edx,3
 00754FDD    call        @UStrCatN
 00754FE2    lea         eax,[ebp-10]
 00754FE5    mov         edx,dword ptr ds:[903768];gvar_00903768
 00754FEB    movzx       edx,byte ptr [edx+194]
 00754FF2    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00754FF8    mov         edx,dword ptr [ecx+edx*4]
 00754FFB    call        @UStrLAsg
 00755000    mov         eax,[009036DC];gvar_009036DC
 00755005    cmp         eax,dword ptr [ebp-44]
>00755008    jl          007550EB
 0075500E    mov         eax,[009036DC];gvar_009036DC
 00755013    cmp         eax,dword ptr [ebp-48]
>00755016    jg          007550EB
 0075501C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755021    mov         eax,dword ptr [eax+40]
 00755024    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 0075502B    call        TFont.SetStyle
 00755030    mov         eax,[00903734];gvar_00903734
 00755035    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>0075503B    jno         00755042
 0075503D    call        @IntOver
 00755042    push        eax
 00755043    lea         eax,[ebp-188]
 00755049    push        eax
 0075504A    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 00755050    mov         edx,dword ptr ds:[903734];gvar_00903734
 00755056    mov         eax,esi
 00755058    call        Rect
 0075505D    mov         eax,[00903734];gvar_00903734
 00755062    push        eax
 00755063    push        dword ptr [ebp-8]
 00755066    push        dword ptr [ebp-8]
 00755069    push        dword ptr [ebp-8]
 0075506C    push        dword ptr [ebp-8]
 0075506F    lea         eax,[ebp-19C]
 00755075    mov         edx,4
 0075507A    call        @UStrCatN
 0075507F    mov         eax,dword ptr [ebp-19C]
 00755085    push        eax
 00755086    mov         ecx,esi
 00755088    lea         edx,[ebp-188]
 0075508E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755093    mov         edi,dword ptr [eax]
 00755095    call        dword ptr [edi+98]
 0075509B    mov         eax,dword ptr [ebp-0C]
 0075509E    push        eax
 0075509F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007550A5    mov         edx,dword ptr ds:[903730];gvar_00903730
 007550AB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007550B0    mov         edi,dword ptr [eax]
 007550B2    call        dword ptr [edi+90]
 007550B8    mov         eax,dword ptr [ebp-10]
 007550BB    push        eax
 007550BC    mov         edx,dword ptr [ebp-10]
 007550BF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007550C4    call        TCustomCanvas.TextWidth
 007550C9    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 007550CF    sub         edx,eax
>007550D1    jno         007550D8
 007550D3    call        @IntOver
 007550D8    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007550DE    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007550E3    mov         edi,dword ptr [eax]
 007550E5    call        dword ptr [edi+90]
 007550EB    mov         eax,1
 007550F0    call        00753BA0
 007550F5    inc         ebx
 007550F6    cmp         ebx,6
>007550F9    jne         00754EA8
 007550FF    mov         eax,[00903714];gvar_00903714
 00755104    mov         [00903730],eax;gvar_00903730
 00755109    mov         eax,1
 0075510E    call        00753BA0
 00755113    lea         eax,[ebp-0C]
 00755116    mov         edx,dword ptr ds:[7C4DD8];^gvar_007C2DC4
 0075511C    mov         edx,dword ptr [edx]
 0075511E    call        @UStrLAsg
 00755123    mov         eax,[009036DC];gvar_009036DC
 00755128    cmp         eax,dword ptr [ebp-44]
>0075512B    jl          00755168
 0075512D    mov         eax,[009036DC];gvar_009036DC
 00755132    cmp         eax,dword ptr [ebp-48]
>00755135    jg          00755168
 00755137    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075513C    mov         eax,dword ptr [eax+40]
 0075513F    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00755146    call        TFont.SetStyle
 0075514B    mov         eax,dword ptr [ebp-0C]
 0075514E    push        eax
 0075514F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00755155    mov         edx,dword ptr ds:[903730];gvar_00903730
 0075515B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755160    mov         ebx,dword ptr [eax]
 00755162    call        dword ptr [ebx+90]
 00755168    mov         eax,1
 0075516D    call        00753BA0
 00755172    mov         eax,[00903714];gvar_00903714
 00755177    add         eax,dword ptr ds:[903744];gvar_00903744
>0075517D    jno         00755184
 0075517F    call        @IntOver
 00755184    mov         [00903730],eax;gvar_00903730
 00755189    mov         ebx,1
 0075518E    mov         eax,ebx
 00755190    cmp         eax,5
>00755193    ja          007552FA
 00755199    jmp         dword ptr [eax*4+7551A0]
 00755199    dd          007552FA
 00755199    dd          007551B8
 00755199    dd          007551FD
 00755199    dd          00755242
 00755199    dd          00755284
 00755199    dd          007552C6
 007551B8    mov         eax,[007C4BEC];^gvar_007C2DC8
 007551BD    push        dword ptr [eax]
 007551BF    push        7591E8;', '
 007551C4    mov         eax,[007C45B0];^gvar_007C2DCC
 007551C9    push        dword ptr [eax]
 007551CB    lea         eax,[ebp-0C]
 007551CE    mov         edx,3
 007551D3    call        @UStrCatN
 007551D8    mov         dl,1
 007551DA    mov         eax,[00903768];gvar_00903768
 007551DF    call        TFXPPD.GetBattPackMonitoring
 007551E4    and         eax,7F
 007551E7    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007551ED    mov         edx,dword ptr [edx+eax*4]
 007551F0    lea         eax,[ebp-10]
 007551F3    call        @UStrLAsg
>007551F8    jmp         007552FA
 007551FD    mov         eax,[007C4BEC];^gvar_007C2DC8
 00755202    push        dword ptr [eax]
 00755204    push        7591E8;', '
 00755209    mov         eax,[007C463C];^gvar_007C2DD0
 0075520E    push        dword ptr [eax]
 00755210    lea         eax,[ebp-0C]
 00755213    mov         edx,3
 00755218    call        @UStrCatN
 0075521D    mov         dl,2
 0075521F    mov         eax,[00903768];gvar_00903768
 00755224    call        TFXPPD.GetBattPackMonitoring
 00755229    and         eax,7F
 0075522C    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00755232    mov         edx,dword ptr [edx+eax*4]
 00755235    lea         eax,[ebp-10]
 00755238    call        @UStrLAsg
>0075523D    jmp         007552FA
 00755242    mov         eax,[007C4BEC];^gvar_007C2DC8
 00755247    push        dword ptr [eax]
 00755249    push        7591E8;', '
 0075524E    mov         eax,[007C41B4];^gvar_007C2DD4
 00755253    push        dword ptr [eax]
 00755255    lea         eax,[ebp-0C]
 00755258    mov         edx,3
 0075525D    call        @UStrCatN
 00755262    mov         dl,3
 00755264    mov         eax,[00903768];gvar_00903768
 00755269    call        TFXPPD.GetBattPackMonitoring
 0075526E    and         eax,7F
 00755271    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00755277    mov         edx,dword ptr [edx+eax*4]
 0075527A    lea         eax,[ebp-10]
 0075527D    call        @UStrLAsg
>00755282    jmp         007552FA
 00755284    mov         eax,[007C4BEC];^gvar_007C2DC8
 00755289    push        dword ptr [eax]
 0075528B    push        7591E8;', '
 00755290    mov         eax,[007C4BF4];^gvar_007C2DD8
 00755295    push        dword ptr [eax]
 00755297    lea         eax,[ebp-0C]
 0075529A    mov         edx,3
 0075529F    call        @UStrCatN
 007552A4    mov         dl,4
 007552A6    mov         eax,[00903768];gvar_00903768
 007552AB    call        TFXPPD.GetBattPackMonitoring
 007552B0    and         eax,7F
 007552B3    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007552B9    mov         edx,dword ptr [edx+eax*4]
 007552BC    lea         eax,[ebp-10]
 007552BF    call        @UStrLAsg
>007552C4    jmp         007552FA
 007552C6    mov         eax,[007C4DE4];^gvar_007C2DDC
 007552CB    push        dword ptr [eax]
 007552CD    push        7591E8;', '
 007552D2    mov         eax,[007C41C4];^gvar_007C2DE4
 007552D7    push        dword ptr [eax]
 007552D9    lea         eax,[ebp-0C]
 007552DC    mov         edx,3
 007552E1    call        @UStrCatN
 007552E6    lea         edx,[ebp-10]
 007552E9    mov         eax,[00903768];gvar_00903768
 007552EE    movzx       eax,byte ptr [eax+17C]
 007552F5    call        IntToStr
 007552FA    mov         eax,[009036DC];gvar_009036DC
 007552FF    cmp         eax,dword ptr [ebp-44]
>00755302    jl          007553E5
 00755308    mov         eax,[009036DC];gvar_009036DC
 0075530D    cmp         eax,dword ptr [ebp-48]
>00755310    jg          007553E5
 00755316    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075531B    mov         eax,dword ptr [eax+40]
 0075531E    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00755325    call        TFont.SetStyle
 0075532A    mov         eax,[00903734];gvar_00903734
 0075532F    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00755335    jno         0075533C
 00755337    call        @IntOver
 0075533C    push        eax
 0075533D    lea         eax,[ebp-188]
 00755343    push        eax
 00755344    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 0075534A    mov         edx,dword ptr ds:[903734];gvar_00903734
 00755350    mov         eax,esi
 00755352    call        Rect
 00755357    mov         eax,[00903734];gvar_00903734
 0075535C    push        eax
 0075535D    push        dword ptr [ebp-8]
 00755360    push        dword ptr [ebp-8]
 00755363    push        dword ptr [ebp-8]
 00755366    push        dword ptr [ebp-8]
 00755369    lea         eax,[ebp-1A0]
 0075536F    mov         edx,4
 00755374    call        @UStrCatN
 00755379    mov         eax,dword ptr [ebp-1A0]
 0075537F    push        eax
 00755380    mov         ecx,esi
 00755382    lea         edx,[ebp-188]
 00755388    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075538D    mov         edi,dword ptr [eax]
 0075538F    call        dword ptr [edi+98]
 00755395    mov         eax,dword ptr [ebp-0C]
 00755398    push        eax
 00755399    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075539F    mov         edx,dword ptr ds:[903730];gvar_00903730
 007553A5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007553AA    mov         edi,dword ptr [eax]
 007553AC    call        dword ptr [edi+90]
 007553B2    mov         eax,dword ptr [ebp-10]
 007553B5    push        eax
 007553B6    mov         edx,dword ptr [ebp-10]
 007553B9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007553BE    call        TCustomCanvas.TextWidth
 007553C3    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 007553C9    sub         edx,eax
>007553CB    jno         007553D2
 007553CD    call        @IntOver
 007553D2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007553D8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007553DD    mov         edi,dword ptr [eax]
 007553DF    call        dword ptr [edi+90]
 007553E5    mov         eax,1
 007553EA    call        00753BA0
 007553EF    inc         ebx
 007553F0    cmp         ebx,6
>007553F3    jne         0075518E
 007553F9    mov         eax,0B
 007553FE    call        00753BA0
 00755403    mov         eax,[00903714];gvar_00903714
 00755408    mov         [00903730],eax;gvar_00903730
 0075540D    mov         esi,dword ptr ds:[903714];gvar_00903714
 00755413    add         esi,dword ptr ds:[903748];gvar_00903748
>00755419    jno         00755420
 0075541B    call        @IntOver
 00755420    lea         eax,[ebp-0C]
 00755423    mov         edx,dword ptr ds:[7C45B8];^gvar_007C2C20
 00755429    mov         edx,dword ptr [edx]
 0075542B    call        @UStrLAsg
 00755430    mov         eax,[009036DC];gvar_009036DC
 00755435    cmp         eax,dword ptr [ebp-44]
>00755438    jl          00755475
 0075543A    mov         eax,[009036DC];gvar_009036DC
 0075543F    cmp         eax,dword ptr [ebp-48]
>00755442    jg          00755475
 00755444    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755449    mov         eax,dword ptr [eax+40]
 0075544C    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00755453    call        TFont.SetStyle
 00755458    mov         eax,dword ptr [ebp-0C]
 0075545B    push        eax
 0075545C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00755462    mov         edx,dword ptr ds:[903730];gvar_00903730
 00755468    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075546D    mov         ebx,dword ptr [eax]
 0075546F    call        dword ptr [ebx+90]
 00755475    mov         eax,1
 0075547A    call        00753BA0
 0075547F    mov         eax,[00903714];gvar_00903714
 00755484    add         eax,dword ptr ds:[903744];gvar_00903744
>0075548A    jno         00755491
 0075548C    call        @IntOver
 00755491    mov         [00903730],eax;gvar_00903730
 00755496    mov         ebx,1
 0075549B    mov         eax,ebx
 0075549D    cmp         eax,0D
>007554A0    ja          007557A3
 007554A6    jmp         dword ptr [eax*4+7554AD]
 007554A6    dd          007557A3
 007554A6    dd          007554E5
 007554A6    dd          00755522
 007554A6    dd          00755555
 007554A6    dd          00755588
 007554A6    dd          007555C5
 007554A6    dd          007555EE
 007554A6    dd          0075562B
 007554A6    dd          0075565E
 007554A6    dd          00755691
 007554A6    dd          007556CE
 007554A6    dd          007556F7
 007554A6    dd          00755731
 007554A6    dd          0075576B
 007554E5    lea         eax,[ebp-0C]
 007554E8    mov         edx,dword ptr ds:[7C433C];^gvar_007C2C24
 007554EE    mov         edx,dword ptr [edx]
 007554F0    call        @UStrLAsg
 007554F5    lea         eax,[ebp-10]
 007554F8    mov         edx,dword ptr ds:[903768];gvar_00903768
 007554FE    movzx       edx,byte ptr [edx+104]
 00755505    cmp         edx,2
>00755508    jbe         0075550F
 0075550A    call        @BoundErr
 0075550F    mov         ecx,dword ptr ds:[7C47B4];^gvar_00901E84:UnicodeString
 00755515    mov         edx,dword ptr [ecx+edx*4]
 00755518    call        @UStrLAsg
>0075551D    jmp         007557A3
 00755522    lea         eax,[ebp-0C]
 00755525    mov         edx,dword ptr ds:[7C418C];^gvar_007C2C28
 0075552B    mov         edx,dword ptr [edx]
 0075552D    call        @UStrLAsg
 00755532    lea         eax,[ebp-10]
 00755535    mov         edx,dword ptr ds:[903768];gvar_00903768
 0075553B    movzx       edx,byte ptr [edx+105]
 00755542    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00755548    mov         edx,dword ptr [ecx+edx*4]
 0075554B    call        @UStrLAsg
>00755550    jmp         007557A3
 00755555    lea         eax,[ebp-0C]
 00755558    mov         edx,dword ptr ds:[7C4E88];^gvar_007C2C2C
 0075555E    mov         edx,dword ptr [edx]
 00755560    call        @UStrLAsg
 00755565    lea         eax,[ebp-10]
 00755568    mov         edx,dword ptr ds:[903768];gvar_00903768
 0075556E    movzx       edx,byte ptr [edx+106]
 00755575    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0075557B    mov         edx,dword ptr [ecx+edx*4]
 0075557E    call        @UStrLAsg
>00755583    jmp         007557A3
 00755588    lea         eax,[ebp-0C]
 0075558B    mov         edx,dword ptr ds:[7C4554];^gvar_007C2C30
 00755591    mov         edx,dword ptr [edx]
 00755593    call        @UStrLAsg
 00755598    lea         eax,[ebp-10]
 0075559B    mov         edx,dword ptr ds:[903768];gvar_00903768
 007555A1    movzx       edx,byte ptr [edx+107]
 007555A8    cmp         edx,4
>007555AB    jbe         007555B2
 007555AD    call        @BoundErr
 007555B2    mov         ecx,dword ptr ds:[7C41D8];^gvar_007C2C74:array[5] of ?
 007555B8    mov         edx,dword ptr [ecx+edx*4]
 007555BB    call        @UStrLAsg
>007555C0    jmp         007557A3
 007555C5    lea         eax,[ebp-0C]
 007555C8    mov         edx,dword ptr ds:[7C46B8];^gvar_007C2C34
 007555CE    mov         edx,dword ptr [edx]
 007555D0    call        @UStrLAsg
 007555D5    lea         eax,[ebp-10]
 007555D8    mov         edx,dword ptr ds:[903774];gvar_00903774
 007555DE    add         edx,27C46
 007555E4    call        @UStrFromString
>007555E9    jmp         007557A3
 007555EE    lea         eax,[ebp-0C]
 007555F1    mov         edx,dword ptr ds:[7C4B74];^gvar_007C2C38
 007555F7    mov         edx,dword ptr [edx]
 007555F9    call        @UStrLAsg
 007555FE    lea         eax,[ebp-10]
 00755601    mov         edx,dword ptr ds:[903768];gvar_00903768
 00755607    movzx       edx,byte ptr [edx+108]
 0075560E    cmp         edx,1
>00755611    jbe         00755618
 00755613    call        @BoundErr
 00755618    mov         ecx,dword ptr ds:[7C4230];^gvar_00901E90:UnicodeString
 0075561E    mov         edx,dword ptr [ecx+edx*4]
 00755621    call        @UStrLAsg
>00755626    jmp         007557A3
 0075562B    lea         eax,[ebp-0C]
 0075562E    mov         edx,dword ptr ds:[7C49D4];^gvar_007C2C3C
 00755634    mov         edx,dword ptr [edx]
 00755636    call        @UStrLAsg
 0075563B    lea         eax,[ebp-10]
 0075563E    mov         edx,dword ptr ds:[903768];gvar_00903768
 00755644    movzx       edx,byte ptr [edx+109]
 0075564B    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00755651    mov         edx,dword ptr [ecx+edx*4]
 00755654    call        @UStrLAsg
>00755659    jmp         007557A3
 0075565E    lea         eax,[ebp-0C]
 00755661    mov         edx,dword ptr ds:[7C4940];^gvar_007C2C40
 00755667    mov         edx,dword ptr [edx]
 00755669    call        @UStrLAsg
 0075566E    lea         eax,[ebp-10]
 00755671    mov         edx,dword ptr ds:[903768];gvar_00903768
 00755677    movzx       edx,byte ptr [edx+10A]
 0075567E    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00755684    mov         edx,dword ptr [ecx+edx*4]
 00755687    call        @UStrLAsg
>0075568C    jmp         007557A3
 00755691    lea         eax,[ebp-0C]
 00755694    mov         edx,dword ptr ds:[7C4D8C];^gvar_007C2C44
 0075569A    mov         edx,dword ptr [edx]
 0075569C    call        @UStrLAsg
 007556A1    lea         eax,[ebp-10]
 007556A4    mov         edx,dword ptr ds:[903768];gvar_00903768
 007556AA    movzx       edx,byte ptr [edx+10B]
 007556B1    cmp         edx,4
>007556B4    jbe         007556BB
 007556B6    call        @BoundErr
 007556BB    mov         ecx,dword ptr ds:[7C41D8];^gvar_007C2C74:array[5] of ?
 007556C1    mov         edx,dword ptr [ecx+edx*4]
 007556C4    call        @UStrLAsg
>007556C9    jmp         007557A3
 007556CE    lea         eax,[ebp-0C]
 007556D1    mov         edx,dword ptr ds:[7C46B8];^gvar_007C2C34
 007556D7    mov         edx,dword ptr [edx]
 007556D9    call        @UStrLAsg
 007556DE    lea         eax,[ebp-10]
 007556E1    mov         edx,dword ptr ds:[903774];gvar_00903774
 007556E7    add         edx,27C86
 007556ED    call        @UStrFromString
>007556F2    jmp         007557A3
 007556F7    lea         eax,[ebp-0C]
 007556FA    mov         edx,dword ptr ds:[7C4BF8];^gvar_007C2C4C
 00755700    mov         edx,dword ptr [edx]
 00755702    call        @UStrLAsg
 00755707    lea         eax,[ebp-10]
 0075570A    mov         edx,dword ptr ds:[903768];gvar_00903768
 00755710    movzx       edx,byte ptr [edx+10C]
 00755717    cmp         edx,1
>0075571A    jbe         00755721
 0075571C    call        @BoundErr
 00755721    mov         ecx,dword ptr ds:[7C42D8];^gvar_00901E98:UnicodeString
 00755727    mov         edx,dword ptr [ecx+edx*4]
 0075572A    call        @UStrLAsg
>0075572F    jmp         007557A3
 00755731    lea         eax,[ebp-0C]
 00755734    mov         edx,dword ptr ds:[7C4E20];^gvar_007C2C50
 0075573A    mov         edx,dword ptr [edx]
 0075573C    call        @UStrLAsg
 00755741    lea         eax,[ebp-10]
 00755744    mov         edx,dword ptr ds:[903768];gvar_00903768
 0075574A    movzx       edx,byte ptr [edx+10D]
 00755751    cmp         edx,4
>00755754    jbe         0075575B
 00755756    call        @BoundErr
 0075575B    mov         ecx,dword ptr ds:[7C41D8];^gvar_007C2C74:array[5] of ?
 00755761    mov         edx,dword ptr [ecx+edx*4]
 00755764    call        @UStrLAsg
>00755769    jmp         007557A3
 0075576B    lea         eax,[ebp-0C]
 0075576E    mov         edx,dword ptr ds:[7C477C];^gvar_007C2C54
 00755774    mov         edx,dword ptr [edx]
 00755776    call        @UStrLAsg
 0075577B    lea         eax,[ebp-10]
 0075577E    mov         edx,dword ptr ds:[903768];gvar_00903768
 00755784    movzx       edx,byte ptr [edx+10E]
 0075578B    cmp         edx,1
>0075578E    jbe         00755795
 00755790    call        @BoundErr
 00755795    mov         ecx,dword ptr ds:[7C4BE4];^gvar_00901EA0:UnicodeString
 0075579B    mov         edx,dword ptr [ecx+edx*4]
 0075579E    call        @UStrLAsg
 007557A3    mov         eax,[009036DC];gvar_009036DC
 007557A8    cmp         eax,dword ptr [ebp-44]
>007557AB    jl          0075588E
 007557B1    mov         eax,[009036DC];gvar_009036DC
 007557B6    cmp         eax,dword ptr [ebp-48]
>007557B9    jg          0075588E
 007557BF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007557C4    mov         eax,dword ptr [eax+40]
 007557C7    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 007557CE    call        TFont.SetStyle
 007557D3    mov         eax,[00903734];gvar_00903734
 007557D8    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>007557DE    jno         007557E5
 007557E0    call        @IntOver
 007557E5    push        eax
 007557E6    lea         eax,[ebp-188]
 007557EC    push        eax
 007557ED    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 007557F3    mov         edx,dword ptr ds:[903734];gvar_00903734
 007557F9    mov         eax,esi
 007557FB    call        Rect
 00755800    mov         eax,[00903734];gvar_00903734
 00755805    push        eax
 00755806    push        dword ptr [ebp-8]
 00755809    push        dword ptr [ebp-8]
 0075580C    push        dword ptr [ebp-8]
 0075580F    push        dword ptr [ebp-8]
 00755812    lea         eax,[ebp-1A4]
 00755818    mov         edx,4
 0075581D    call        @UStrCatN
 00755822    mov         eax,dword ptr [ebp-1A4]
 00755828    push        eax
 00755829    mov         ecx,esi
 0075582B    lea         edx,[ebp-188]
 00755831    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755836    mov         edi,dword ptr [eax]
 00755838    call        dword ptr [edi+98]
 0075583E    mov         eax,dword ptr [ebp-0C]
 00755841    push        eax
 00755842    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00755848    mov         edx,dword ptr ds:[903730];gvar_00903730
 0075584E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755853    mov         edi,dword ptr [eax]
 00755855    call        dword ptr [edi+90]
 0075585B    mov         eax,dword ptr [ebp-10]
 0075585E    push        eax
 0075585F    mov         edx,dword ptr [ebp-10]
 00755862    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755867    call        TCustomCanvas.TextWidth
 0075586C    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00755872    sub         edx,eax
>00755874    jno         0075587B
 00755876    call        @IntOver
 0075587B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00755881    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755886    mov         edi,dword ptr [eax]
 00755888    call        dword ptr [edi+90]
 0075588E    mov         eax,1
 00755893    call        00753BA0
 00755898    inc         ebx
 00755899    cmp         ebx,0E
>0075589C    jne         0075549B
 007558A2    mov         eax,5
 007558A7    call        00753BA0
 007558AC    mov         eax,[00903714];gvar_00903714
 007558B1    mov         [00903730],eax;gvar_00903730
 007558B6    mov         esi,dword ptr ds:[903714];gvar_00903714
 007558BC    add         esi,dword ptr ds:[903748];gvar_00903748
>007558C2    jno         007558C9
 007558C4    call        @IntOver
 007558C9    lea         eax,[ebp-0C]
 007558CC    mov         edx,dword ptr ds:[7C490C];^gvar_007C2C90
 007558D2    mov         edx,dword ptr [edx]
 007558D4    call        @UStrLAsg
 007558D9    mov         eax,[009036DC];gvar_009036DC
 007558DE    cmp         eax,dword ptr [ebp-44]
>007558E1    jl          0075591E
 007558E3    mov         eax,[009036DC];gvar_009036DC
 007558E8    cmp         eax,dword ptr [ebp-48]
>007558EB    jg          0075591E
 007558ED    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007558F2    mov         eax,dword ptr [eax+40]
 007558F5    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 007558FC    call        TFont.SetStyle
 00755901    mov         eax,dword ptr [ebp-0C]
 00755904    push        eax
 00755905    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075590B    mov         edx,dword ptr ds:[903730];gvar_00903730
 00755911    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755916    mov         ebx,dword ptr [eax]
 00755918    call        dword ptr [ebx+90]
 0075591E    mov         eax,1
 00755923    call        00753BA0
 00755928    mov         eax,[00903714];gvar_00903714
 0075592D    add         eax,dword ptr ds:[903744];gvar_00903744
>00755933    jno         0075593A
 00755935    call        @IntOver
 0075593A    mov         [00903730],eax;gvar_00903730
 0075593F    mov         ebx,1
 00755944    mov         eax,ebx
 00755946    dec         eax
>00755947    je          00755957
 00755949    dec         eax
>0075594A    je          0075597D
 0075594C    dec         eax
>0075594D    je          007559A3
 0075594F    dec         eax
>00755950    je          007559C9
>00755952    jmp         007559EE
 00755957    lea         eax,[ebp-0C]
 0075595A    mov         edx,dword ptr ds:[7C4788];^gvar_007C2C98
 00755960    mov         edx,dword ptr [edx]
 00755962    call        @UStrLAsg
 00755967    lea         edx,[ebp-10]
 0075596A    mov         eax,[00903768];gvar_00903768
 0075596F    movzx       eax,byte ptr [eax+122]
 00755976    call        IntToStr
>0075597B    jmp         007559EE
 0075597D    lea         eax,[ebp-0C]
 00755980    mov         edx,dword ptr ds:[7C4374];^gvar_007C2CA0
 00755986    mov         edx,dword ptr [edx]
 00755988    call        @UStrLAsg
 0075598D    lea         edx,[ebp-10]
 00755990    mov         eax,[00903768];gvar_00903768
 00755995    movzx       eax,word ptr [eax+123]
 0075599C    call        IntToStr
>007559A1    jmp         007559EE
 007559A3    lea         eax,[ebp-0C]
 007559A6    mov         edx,dword ptr ds:[7C4C48];^gvar_007C2CA4
 007559AC    mov         edx,dword ptr [edx]
 007559AE    call        @UStrLAsg
 007559B3    lea         edx,[ebp-10]
 007559B6    mov         eax,[00903768];gvar_00903768
 007559BB    movzx       eax,byte ptr [eax+125]
 007559C2    call        IntToStr
>007559C7    jmp         007559EE
 007559C9    lea         eax,[ebp-0C]
 007559CC    mov         edx,dword ptr ds:[7C4588];^gvar_007C2CA8
 007559D2    mov         edx,dword ptr [edx]
 007559D4    call        @UStrLAsg
 007559D9    mov         eax,[00903768];gvar_00903768
 007559DE    call        006A2DE4
 007559E3    movzx       eax,ax
 007559E6    lea         edx,[ebp-10]
 007559E9    call        IntToStr
 007559EE    mov         eax,[009036DC];gvar_009036DC
 007559F3    cmp         eax,dword ptr [ebp-44]
>007559F6    jl          00755AD9
 007559FC    mov         eax,[009036DC];gvar_009036DC
 00755A01    cmp         eax,dword ptr [ebp-48]
>00755A04    jg          00755AD9
 00755A0A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755A0F    mov         eax,dword ptr [eax+40]
 00755A12    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00755A19    call        TFont.SetStyle
 00755A1E    mov         eax,[00903734];gvar_00903734
 00755A23    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00755A29    jno         00755A30
 00755A2B    call        @IntOver
 00755A30    push        eax
 00755A31    lea         eax,[ebp-188]
 00755A37    push        eax
 00755A38    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 00755A3E    mov         edx,dword ptr ds:[903734];gvar_00903734
 00755A44    mov         eax,esi
 00755A46    call        Rect
 00755A4B    mov         eax,[00903734];gvar_00903734
 00755A50    push        eax
 00755A51    push        dword ptr [ebp-8]
 00755A54    push        dword ptr [ebp-8]
 00755A57    push        dword ptr [ebp-8]
 00755A5A    push        dword ptr [ebp-8]
 00755A5D    lea         eax,[ebp-1A8]
 00755A63    mov         edx,4
 00755A68    call        @UStrCatN
 00755A6D    mov         eax,dword ptr [ebp-1A8]
 00755A73    push        eax
 00755A74    mov         ecx,esi
 00755A76    lea         edx,[ebp-188]
 00755A7C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755A81    mov         edi,dword ptr [eax]
 00755A83    call        dword ptr [edi+98]
 00755A89    mov         eax,dword ptr [ebp-0C]
 00755A8C    push        eax
 00755A8D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00755A93    mov         edx,dword ptr ds:[903730];gvar_00903730
 00755A99    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755A9E    mov         edi,dword ptr [eax]
 00755AA0    call        dword ptr [edi+90]
 00755AA6    mov         eax,dword ptr [ebp-10]
 00755AA9    push        eax
 00755AAA    mov         edx,dword ptr [ebp-10]
 00755AAD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755AB2    call        TCustomCanvas.TextWidth
 00755AB7    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00755ABD    sub         edx,eax
>00755ABF    jno         00755AC6
 00755AC1    call        @IntOver
 00755AC6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00755ACC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755AD1    mov         edi,dword ptr [eax]
 00755AD3    call        dword ptr [edi+90]
 00755AD9    mov         eax,1
 00755ADE    call        00753BA0
 00755AE3    inc         ebx
 00755AE4    cmp         ebx,5
>00755AE7    jne         00755944
 00755AED    mov         eax,10
 00755AF2    call        00753BA0
 00755AF7    mov         eax,[00903714];gvar_00903714
 00755AFC    mov         [00903730],eax;gvar_00903730
 00755B01    mov         esi,dword ptr ds:[903714];gvar_00903714
 00755B07    add         esi,dword ptr ds:[903748];gvar_00903748
>00755B0D    jno         00755B14
 00755B0F    call        @IntOver
 00755B14    lea         eax,[ebp-0C]
 00755B17    mov         edx,dword ptr ds:[7C4314];^gvar_007C2CC0
 00755B1D    mov         edx,dword ptr [edx]
 00755B1F    call        @UStrLAsg
 00755B24    mov         eax,[009036DC];gvar_009036DC
 00755B29    cmp         eax,dword ptr [ebp-44]
>00755B2C    jl          00755B69
 00755B2E    mov         eax,[009036DC];gvar_009036DC
 00755B33    cmp         eax,dword ptr [ebp-48]
>00755B36    jg          00755B69
 00755B38    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755B3D    mov         eax,dword ptr [eax+40]
 00755B40    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00755B47    call        TFont.SetStyle
 00755B4C    mov         eax,dword ptr [ebp-0C]
 00755B4F    push        eax
 00755B50    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00755B56    mov         edx,dword ptr ds:[903730];gvar_00903730
 00755B5C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755B61    mov         ebx,dword ptr [eax]
 00755B63    call        dword ptr [ebx+90]
 00755B69    mov         eax,1
 00755B6E    call        00753BA0
 00755B73    mov         ebx,1
 00755B78    mov         eax,ebx
 00755B7A    cmp         eax,10
>00755B7D    ja          00755F87
 00755B83    jmp         dword ptr [eax*4+755B8A]
 00755B83    dd          00755F87
 00755B83    dd          00755BCE
 00755B83    dd          00755C24
 00755B83    dd          00755C67
 00755B83    dd          00755C93
 00755B83    dd          00755CBF
 00755B83    dd          00755D15
 00755B83    dd          00755D58
 00755B83    dd          00755D84
 00755B83    dd          00755DB0
 00755B83    dd          00755E06
 00755B83    dd          00755E49
 00755B83    dd          00755E75
 00755B83    dd          00755EA1
 00755B83    dd          00755EF7
 00755B83    dd          00755F37
 00755B83    dd          00755F60
 00755BCE    mov         eax,[00903714];gvar_00903714
 00755BD3    add         eax,dword ptr ds:[903744];gvar_00903744
>00755BD9    jno         00755BE0
 00755BDB    call        @IntOver
 00755BE0    mov         [00903730],eax;gvar_00903730
 00755BE5    lea         eax,[ebp-0C]
 00755BE8    mov         edx,dword ptr ds:[7C44DC];^gvar_007C2CC4
 00755BEE    mov         edx,dword ptr [edx]
 00755BF0    call        @UStrLAsg
 00755BF5    mov         dl,1
 00755BF7    mov         eax,[00903768];gvar_00903768
 00755BFC    call        TFXPPD.GetLCType
 00755C01    movzx       eax,al
 00755C04    cmp         eax,9
>00755C07    jbe         00755C0E
 00755C09    call        @BoundErr
 00755C0E    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 00755C14    mov         edx,dword ptr [edx+eax*4]
 00755C17    lea         eax,[ebp-10]
 00755C1A    call        @UStrLAsg
>00755C1F    jmp         00755F87
 00755C24    mov         eax,[00903714];gvar_00903714
 00755C29    add         eax,dword ptr ds:[903748];gvar_00903748
>00755C2F    jno         00755C36
 00755C31    call        @IntOver
 00755C36    mov         [00903730],eax;gvar_00903730
 00755C3B    lea         eax,[ebp-0C]
 00755C3E    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 00755C44    mov         edx,dword ptr [edx]
 00755C46    call        @UStrLAsg
 00755C4B    mov         dl,1
 00755C4D    mov         eax,[00903768];gvar_00903768
 00755C52    call        TFXPPD.GetLCFirstLoop
 00755C57    movzx       eax,al
 00755C5A    lea         edx,[ebp-10]
 00755C5D    call        IntToStr
>00755C62    jmp         00755F87
 00755C67    lea         eax,[ebp-0C]
 00755C6A    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 00755C70    mov         edx,dword ptr [edx]
 00755C72    call        @UStrLAsg
 00755C77    mov         dl,1
 00755C79    mov         eax,[00903768];gvar_00903768
 00755C7E    call        TFXPPD.GetLCNumOfLoops
 00755C83    movzx       eax,al
 00755C86    lea         edx,[ebp-10]
 00755C89    call        IntToStr
>00755C8E    jmp         00755F87
 00755C93    lea         eax,[ebp-0C]
 00755C96    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 00755C9C    mov         edx,dword ptr [edx]
 00755C9E    call        @UStrLAsg
 00755CA3    mov         dl,1
 00755CA5    mov         eax,[00903768];gvar_00903768
 00755CAA    call        TFXPPD.GetLCLastLoop
 00755CAF    movzx       eax,al
 00755CB2    lea         edx,[ebp-10]
 00755CB5    call        IntToStr
>00755CBA    jmp         00755F87
 00755CBF    mov         eax,[00903714];gvar_00903714
 00755CC4    add         eax,dword ptr ds:[903744];gvar_00903744
>00755CCA    jno         00755CD1
 00755CCC    call        @IntOver
 00755CD1    mov         [00903730],eax;gvar_00903730
 00755CD6    lea         eax,[ebp-0C]
 00755CD9    mov         edx,dword ptr ds:[7C455C];^gvar_007C2CC8
 00755CDF    mov         edx,dword ptr [edx]
 00755CE1    call        @UStrLAsg
 00755CE6    mov         dl,2
 00755CE8    mov         eax,[00903768];gvar_00903768
 00755CED    call        TFXPPD.GetLCType
 00755CF2    movzx       eax,al
 00755CF5    cmp         eax,9
>00755CF8    jbe         00755CFF
 00755CFA    call        @BoundErr
 00755CFF    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 00755D05    mov         edx,dword ptr [edx+eax*4]
 00755D08    lea         eax,[ebp-10]
 00755D0B    call        @UStrLAsg
>00755D10    jmp         00755F87
 00755D15    mov         eax,[00903714];gvar_00903714
 00755D1A    add         eax,dword ptr ds:[903748];gvar_00903748
>00755D20    jno         00755D27
 00755D22    call        @IntOver
 00755D27    mov         [00903730],eax;gvar_00903730
 00755D2C    lea         eax,[ebp-0C]
 00755D2F    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 00755D35    mov         edx,dword ptr [edx]
 00755D37    call        @UStrLAsg
 00755D3C    mov         dl,2
 00755D3E    mov         eax,[00903768];gvar_00903768
 00755D43    call        TFXPPD.GetLCFirstLoop
 00755D48    movzx       eax,al
 00755D4B    lea         edx,[ebp-10]
 00755D4E    call        IntToStr
>00755D53    jmp         00755F87
 00755D58    lea         eax,[ebp-0C]
 00755D5B    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 00755D61    mov         edx,dword ptr [edx]
 00755D63    call        @UStrLAsg
 00755D68    mov         dl,2
 00755D6A    mov         eax,[00903768];gvar_00903768
 00755D6F    call        TFXPPD.GetLCNumOfLoops
 00755D74    movzx       eax,al
 00755D77    lea         edx,[ebp-10]
 00755D7A    call        IntToStr
>00755D7F    jmp         00755F87
 00755D84    lea         eax,[ebp-0C]
 00755D87    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 00755D8D    mov         edx,dword ptr [edx]
 00755D8F    call        @UStrLAsg
 00755D94    mov         dl,2
 00755D96    mov         eax,[00903768];gvar_00903768
 00755D9B    call        TFXPPD.GetLCLastLoop
 00755DA0    movzx       eax,al
 00755DA3    lea         edx,[ebp-10]
 00755DA6    call        IntToStr
>00755DAB    jmp         00755F87
 00755DB0    mov         eax,[00903714];gvar_00903714
 00755DB5    add         eax,dword ptr ds:[903744];gvar_00903744
>00755DBB    jno         00755DC2
 00755DBD    call        @IntOver
 00755DC2    mov         [00903730],eax;gvar_00903730
 00755DC7    lea         eax,[ebp-0C]
 00755DCA    mov         edx,dword ptr ds:[7C4E84];^gvar_007C2CCC
 00755DD0    mov         edx,dword ptr [edx]
 00755DD2    call        @UStrLAsg
 00755DD7    mov         dl,3
 00755DD9    mov         eax,[00903768];gvar_00903768
 00755DDE    call        TFXPPD.GetLCType
 00755DE3    movzx       eax,al
 00755DE6    cmp         eax,9
>00755DE9    jbe         00755DF0
 00755DEB    call        @BoundErr
 00755DF0    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 00755DF6    mov         edx,dword ptr [edx+eax*4]
 00755DF9    lea         eax,[ebp-10]
 00755DFC    call        @UStrLAsg
>00755E01    jmp         00755F87
 00755E06    mov         eax,[00903714];gvar_00903714
 00755E0B    add         eax,dword ptr ds:[903748];gvar_00903748
>00755E11    jno         00755E18
 00755E13    call        @IntOver
 00755E18    mov         [00903730],eax;gvar_00903730
 00755E1D    lea         eax,[ebp-0C]
 00755E20    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 00755E26    mov         edx,dword ptr [edx]
 00755E28    call        @UStrLAsg
 00755E2D    mov         dl,3
 00755E2F    mov         eax,[00903768];gvar_00903768
 00755E34    call        TFXPPD.GetLCFirstLoop
 00755E39    movzx       eax,al
 00755E3C    lea         edx,[ebp-10]
 00755E3F    call        IntToStr
>00755E44    jmp         00755F87
 00755E49    lea         eax,[ebp-0C]
 00755E4C    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 00755E52    mov         edx,dword ptr [edx]
 00755E54    call        @UStrLAsg
 00755E59    mov         dl,3
 00755E5B    mov         eax,[00903768];gvar_00903768
 00755E60    call        TFXPPD.GetLCNumOfLoops
 00755E65    movzx       eax,al
 00755E68    lea         edx,[ebp-10]
 00755E6B    call        IntToStr
>00755E70    jmp         00755F87
 00755E75    lea         eax,[ebp-0C]
 00755E78    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 00755E7E    mov         edx,dword ptr [edx]
 00755E80    call        @UStrLAsg
 00755E85    mov         dl,3
 00755E87    mov         eax,[00903768];gvar_00903768
 00755E8C    call        TFXPPD.GetLCLastLoop
 00755E91    movzx       eax,al
 00755E94    lea         edx,[ebp-10]
 00755E97    call        IntToStr
>00755E9C    jmp         00755F87
 00755EA1    mov         eax,[00903714];gvar_00903714
 00755EA6    add         eax,dword ptr ds:[903744];gvar_00903744
>00755EAC    jno         00755EB3
 00755EAE    call        @IntOver
 00755EB3    mov         [00903730],eax;gvar_00903730
 00755EB8    lea         eax,[ebp-0C]
 00755EBB    mov         edx,dword ptr ds:[7C4B3C];^gvar_007C2CD0
 00755EC1    mov         edx,dword ptr [edx]
 00755EC3    call        @UStrLAsg
 00755EC8    mov         dl,4
 00755ECA    mov         eax,[00903768];gvar_00903768
 00755ECF    call        TFXPPD.GetLCType
 00755ED4    movzx       eax,al
 00755ED7    cmp         eax,9
>00755EDA    jbe         00755EE1
 00755EDC    call        @BoundErr
 00755EE1    mov         edx,dword ptr ds:[7C44F0];^gvar_00901EA8:UnicodeString
 00755EE7    mov         edx,dword ptr [edx+eax*4]
 00755EEA    lea         eax,[ebp-10]
 00755EED    call        @UStrLAsg
>00755EF2    jmp         00755F87
 00755EF7    mov         eax,[00903714];gvar_00903714
 00755EFC    add         eax,dword ptr ds:[903748];gvar_00903748
>00755F02    jno         00755F09
 00755F04    call        @IntOver
 00755F09    mov         [00903730],eax;gvar_00903730
 00755F0E    lea         eax,[ebp-0C]
 00755F11    mov         edx,dword ptr ds:[7C4408];^gvar_007C2CD8
 00755F17    mov         edx,dword ptr [edx]
 00755F19    call        @UStrLAsg
 00755F1E    mov         dl,4
 00755F20    mov         eax,[00903768];gvar_00903768
 00755F25    call        TFXPPD.GetLCFirstLoop
 00755F2A    movzx       eax,al
 00755F2D    lea         edx,[ebp-10]
 00755F30    call        IntToStr
>00755F35    jmp         00755F87
 00755F37    lea         eax,[ebp-0C]
 00755F3A    mov         edx,dword ptr ds:[7C48F0];^gvar_007C2CDC
 00755F40    mov         edx,dword ptr [edx]
 00755F42    call        @UStrLAsg
 00755F47    mov         dl,4
 00755F49    mov         eax,[00903768];gvar_00903768
 00755F4E    call        TFXPPD.GetLCNumOfLoops
 00755F53    movzx       eax,al
 00755F56    lea         edx,[ebp-10]
 00755F59    call        IntToStr
>00755F5E    jmp         00755F87
 00755F60    lea         eax,[ebp-0C]
 00755F63    mov         edx,dword ptr ds:[7C4650];^gvar_007C2CE0
 00755F69    mov         edx,dword ptr [edx]
 00755F6B    call        @UStrLAsg
 00755F70    mov         dl,4
 00755F72    mov         eax,[00903768];gvar_00903768
 00755F77    call        TFXPPD.GetLCLastLoop
 00755F7C    movzx       eax,al
 00755F7F    lea         edx,[ebp-10]
 00755F82    call        IntToStr
 00755F87    mov         eax,[009036DC];gvar_009036DC
 00755F8C    cmp         eax,dword ptr [ebp-44]
>00755F8F    jl          00756072
 00755F95    mov         eax,[009036DC];gvar_009036DC
 00755F9A    cmp         eax,dword ptr [ebp-48]
>00755F9D    jg          00756072
 00755FA3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00755FA8    mov         eax,dword ptr [eax+40]
 00755FAB    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00755FB2    call        TFont.SetStyle
 00755FB7    mov         eax,[00903734];gvar_00903734
 00755FBC    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00755FC2    jno         00755FC9
 00755FC4    call        @IntOver
 00755FC9    push        eax
 00755FCA    lea         eax,[ebp-188]
 00755FD0    push        eax
 00755FD1    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 00755FD7    mov         edx,dword ptr ds:[903734];gvar_00903734
 00755FDD    mov         eax,esi
 00755FDF    call        Rect
 00755FE4    mov         eax,[00903734];gvar_00903734
 00755FE9    push        eax
 00755FEA    push        dword ptr [ebp-8]
 00755FED    push        dword ptr [ebp-8]
 00755FF0    push        dword ptr [ebp-8]
 00755FF3    push        dword ptr [ebp-8]
 00755FF6    lea         eax,[ebp-1AC]
 00755FFC    mov         edx,4
 00756001    call        @UStrCatN
 00756006    mov         eax,dword ptr [ebp-1AC]
 0075600C    push        eax
 0075600D    mov         ecx,esi
 0075600F    lea         edx,[ebp-188]
 00756015    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075601A    mov         edi,dword ptr [eax]
 0075601C    call        dword ptr [edi+98]
 00756022    mov         eax,dword ptr [ebp-0C]
 00756025    push        eax
 00756026    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075602C    mov         edx,dword ptr ds:[903730];gvar_00903730
 00756032    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756037    mov         edi,dword ptr [eax]
 00756039    call        dword ptr [edi+90]
 0075603F    mov         eax,dword ptr [ebp-10]
 00756042    push        eax
 00756043    mov         edx,dword ptr [ebp-10]
 00756046    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075604B    call        TCustomCanvas.TextWidth
 00756050    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 00756056    sub         edx,eax
>00756058    jno         0075605F
 0075605A    call        @IntOver
 0075605F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756065    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075606A    mov         edi,dword ptr [eax]
 0075606C    call        dword ptr [edi+90]
 00756072    mov         eax,1
 00756077    call        00753BA0
 0075607C    inc         ebx
 0075607D    cmp         ebx,11
>00756080    jne         00755B78
 00756086    mov         eax,0A
 0075608B    call        00753BA0
 00756090    mov         eax,[00903714];gvar_00903714
 00756095    mov         [00903730],eax;gvar_00903730
 0075609A    mov         esi,dword ptr ds:[903714];gvar_00903714
 007560A0    add         esi,dword ptr ds:[903748];gvar_00903748
>007560A6    jno         007560AD
 007560A8    call        @IntOver
 007560AD    lea         eax,[ebp-0C]
 007560B0    mov         edx,dword ptr ds:[7C439C];^gvar_007C2CE8
 007560B6    mov         edx,dword ptr [edx]
 007560B8    call        @UStrLAsg
 007560BD    mov         eax,[009036DC];gvar_009036DC
 007560C2    cmp         eax,dword ptr [ebp-44]
>007560C5    jl          00756102
 007560C7    mov         eax,[009036DC];gvar_009036DC
 007560CC    cmp         eax,dword ptr [ebp-48]
>007560CF    jg          00756102
 007560D1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007560D6    mov         eax,dword ptr [eax+40]
 007560D9    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 007560E0    call        TFont.SetStyle
 007560E5    mov         eax,dword ptr [ebp-0C]
 007560E8    push        eax
 007560E9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007560EF    mov         edx,dword ptr ds:[903730];gvar_00903730
 007560F5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007560FA    mov         ebx,dword ptr [eax]
 007560FC    call        dword ptr [ebx+90]
 00756102    mov         eax,1
 00756107    call        00753BA0
 0075610C    mov         ebx,1
 00756111    mov         eax,ebx
 00756113    cmp         eax,9
>00756116    ja          0075638E
 0075611C    jmp         dword ptr [eax*4+756123]
 0075611C    dd          0075638E
 0075611C    dd          0075614B
 0075611C    dd          0075617F
 0075611C    dd          007561C9
 0075611C    dd          007561FC
 0075611C    dd          0075622F
 0075611C    dd          00756262
 0075611C    dd          00756295
 0075611C    dd          007562C8
 0075611C    dd          00756339
 0075614B    mov         eax,[00903714];gvar_00903714
 00756150    add         eax,dword ptr ds:[903744];gvar_00903744
>00756156    jno         0075615D
 00756158    call        @IntOver
 0075615D    mov         [00903730],eax;gvar_00903730
 00756162    lea         eax,[ebp-0C]
 00756165    mov         edx,dword ptr ds:[7C4D40];^gvar_007C2CEC
 0075616B    mov         edx,dword ptr [edx]
 0075616D    call        @UStrLAsg
 00756172    lea         eax,[ebp-10]
 00756175    call        @UStrClr
>0075617A    jmp         0075638E
 0075617F    mov         eax,[00903714];gvar_00903714
 00756184    add         eax,dword ptr ds:[903748];gvar_00903748
>0075618A    jno         00756191
 0075618C    call        @IntOver
 00756191    mov         [00903730],eax;gvar_00903730
 00756196    lea         eax,[ebp-0C]
 00756199    mov         edx,dword ptr ds:[7C4D5C];^gvar_007C2CF0
 0075619F    mov         edx,dword ptr [edx]
 007561A1    call        @UStrLAsg
 007561A6    lea         eax,[ebp-10]
 007561A9    mov         edx,dword ptr ds:[903768];gvar_00903768
 007561AF    movzx       edx,byte ptr [edx+150]
 007561B6    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007561BC    mov         edx,dword ptr [ecx+edx*4]
 007561BF    call        @UStrLAsg
>007561C4    jmp         0075638E
 007561C9    lea         eax,[ebp-0C]
 007561CC    mov         edx,dword ptr ds:[7C44BC];^gvar_007C2CF4
 007561D2    mov         edx,dword ptr [edx]
 007561D4    call        @UStrLAsg
 007561D9    lea         eax,[ebp-10]
 007561DC    mov         edx,dword ptr ds:[903768];gvar_00903768
 007561E2    movzx       edx,byte ptr [edx+151]
 007561E9    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007561EF    mov         edx,dword ptr [ecx+edx*4]
 007561F2    call        @UStrLAsg
>007561F7    jmp         0075638E
 007561FC    lea         eax,[ebp-0C]
 007561FF    mov         edx,dword ptr ds:[7C4174];^gvar_007C2CF8
 00756205    mov         edx,dword ptr [edx]
 00756207    call        @UStrLAsg
 0075620C    lea         eax,[ebp-10]
 0075620F    mov         edx,dword ptr ds:[903768];gvar_00903768
 00756215    movzx       edx,byte ptr [edx+152]
 0075621C    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756222    mov         edx,dword ptr [ecx+edx*4]
 00756225    call        @UStrLAsg
>0075622A    jmp         0075638E
 0075622F    lea         eax,[ebp-0C]
 00756232    mov         edx,dword ptr ds:[7C4934];^gvar_007C2CFC
 00756238    mov         edx,dword ptr [edx]
 0075623A    call        @UStrLAsg
 0075623F    lea         eax,[ebp-10]
 00756242    mov         edx,dword ptr ds:[903768];gvar_00903768
 00756248    movzx       edx,byte ptr [edx+153]
 0075624F    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756255    mov         edx,dword ptr [ecx+edx*4]
 00756258    call        @UStrLAsg
>0075625D    jmp         0075638E
 00756262    lea         eax,[ebp-0C]
 00756265    mov         edx,dword ptr ds:[7C4834];^gvar_007C2D00
 0075626B    mov         edx,dword ptr [edx]
 0075626D    call        @UStrLAsg
 00756272    lea         eax,[ebp-10]
 00756275    mov         edx,dword ptr ds:[903768];gvar_00903768
 0075627B    movzx       edx,byte ptr [edx+154]
 00756282    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756288    mov         edx,dword ptr [ecx+edx*4]
 0075628B    call        @UStrLAsg
>00756290    jmp         0075638E
 00756295    lea         eax,[ebp-0C]
 00756298    mov         edx,dword ptr ds:[7C46B4];^gvar_007C2D04
 0075629E    mov         edx,dword ptr [edx]
 007562A0    call        @UStrLAsg
 007562A5    lea         eax,[ebp-10]
 007562A8    mov         edx,dword ptr ds:[903768];gvar_00903768
 007562AE    movzx       edx,byte ptr [edx+155]
 007562B5    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007562BB    mov         edx,dword ptr [ecx+edx*4]
 007562BE    call        @UStrLAsg
>007562C3    jmp         0075638E
 007562C8    mov         eax,[007C48CC];^gvar_007C2D08
 007562CD    push        dword ptr [eax]
 007562CF    push        759214;' '
 007562D4    mov         eax,[007C4A3C];^gvar_007C2D0C
 007562D9    push        dword ptr [eax]
 007562DB    lea         eax,[ebp-0C]
 007562DE    mov         edx,3
 007562E3    call        @UStrCatN
 007562E8    mov         eax,[00903768];gvar_00903768
 007562ED    movzx       eax,byte ptr [eax+197]
 007562F4    sub         al,1
>007562F6    jb          00756303
>007562F8    je          00756315
 007562FA    dec         al
>007562FC    je          00756327
>007562FE    jmp         0075638E
 00756303    lea         eax,[ebp-10]
 00756306    mov         edx,dword ptr ds:[7C4268];^gvar_007C2D10
 0075630C    mov         edx,dword ptr [edx]
 0075630E    call        @UStrLAsg
>00756313    jmp         0075638E
 00756315    lea         eax,[ebp-10]
 00756318    mov         edx,dword ptr ds:[7C4B90];^gvar_007C2D14
 0075631E    mov         edx,dword ptr [edx]
 00756320    call        @UStrLAsg
>00756325    jmp         0075638E
 00756327    lea         eax,[ebp-10]
 0075632A    mov         edx,dword ptr ds:[7C430C];^gvar_007C2D18
 00756330    mov         edx,dword ptr [edx]
 00756332    call        @UStrLAsg
>00756337    jmp         0075638E
 00756339    mov         eax,[00903714];gvar_00903714
 0075633E    add         eax,dword ptr ds:[903744];gvar_00903744
>00756344    jno         0075634B
 00756346    call        @IntOver
 0075634B    mov         [00903730],eax;gvar_00903730
 00756350    mov         eax,[007C487C];^gvar_007C2D1C
 00756355    push        dword ptr [eax]
 00756357    push        759214;' '
 0075635C    mov         eax,[007C4160];^gvar_007C2D20
 00756361    push        dword ptr [eax]
 00756363    lea         eax,[ebp-0C]
 00756366    mov         edx,3
 0075636B    call        @UStrCatN
 00756370    lea         eax,[ebp-10]
 00756373    mov         edx,dword ptr ds:[903768];gvar_00903768
 00756379    movzx       edx,byte ptr [edx+178]
 00756380    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756386    mov         edx,dword ptr [ecx+edx*4]
 00756389    call        @UStrLAsg
 0075638E    mov         eax,[009036DC];gvar_009036DC
 00756393    cmp         eax,dword ptr [ebp-44]
>00756396    jl          00756479
 0075639C    mov         eax,[009036DC];gvar_009036DC
 007563A1    cmp         eax,dword ptr [ebp-48]
>007563A4    jg          00756479
 007563AA    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007563AF    mov         eax,dword ptr [eax+40]
 007563B2    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 007563B9    call        TFont.SetStyle
 007563BE    mov         eax,[00903734];gvar_00903734
 007563C3    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>007563C9    jno         007563D0
 007563CB    call        @IntOver
 007563D0    push        eax
 007563D1    lea         eax,[ebp-188]
 007563D7    push        eax
 007563D8    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 007563DE    mov         edx,dword ptr ds:[903734];gvar_00903734
 007563E4    mov         eax,esi
 007563E6    call        Rect
 007563EB    mov         eax,[00903734];gvar_00903734
 007563F0    push        eax
 007563F1    push        dword ptr [ebp-8]
 007563F4    push        dword ptr [ebp-8]
 007563F7    push        dword ptr [ebp-8]
 007563FA    push        dword ptr [ebp-8]
 007563FD    lea         eax,[ebp-1B0]
 00756403    mov         edx,4
 00756408    call        @UStrCatN
 0075640D    mov         eax,dword ptr [ebp-1B0]
 00756413    push        eax
 00756414    mov         ecx,esi
 00756416    lea         edx,[ebp-188]
 0075641C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756421    mov         edi,dword ptr [eax]
 00756423    call        dword ptr [edi+98]
 00756429    mov         eax,dword ptr [ebp-0C]
 0075642C    push        eax
 0075642D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756433    mov         edx,dword ptr ds:[903730];gvar_00903730
 00756439    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075643E    mov         edi,dword ptr [eax]
 00756440    call        dword ptr [edi+90]
 00756446    mov         eax,dword ptr [ebp-10]
 00756449    push        eax
 0075644A    mov         edx,dword ptr [ebp-10]
 0075644D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756452    call        TCustomCanvas.TextWidth
 00756457    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 0075645D    sub         edx,eax
>0075645F    jno         00756466
 00756461    call        @IntOver
 00756466    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075646C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756471    mov         edi,dword ptr [eax]
 00756473    call        dword ptr [edi+90]
 00756479    mov         eax,1
 0075647E    call        00753BA0
 00756483    inc         ebx
 00756484    cmp         ebx,0A
>00756487    jne         00756111
 0075648D    mov         eax,0C
 00756492    call        00753BA0
 00756497    mov         eax,[00903714];gvar_00903714
 0075649C    mov         [00903730],eax;gvar_00903730
 007564A1    mov         esi,dword ptr ds:[903714];gvar_00903714
 007564A7    add         esi,dword ptr ds:[903748];gvar_00903748
>007564AD    jno         007564B4
 007564AF    call        @IntOver
 007564B4    lea         eax,[ebp-0C]
 007564B7    mov         edx,dword ptr ds:[7C4BC0];^gvar_007C2D2C
 007564BD    mov         edx,dword ptr [edx]
 007564BF    call        @UStrLAsg
 007564C4    mov         eax,[009036DC];gvar_009036DC
 007564C9    cmp         eax,dword ptr [ebp-44]
>007564CC    jl          00756509
 007564CE    mov         eax,[009036DC];gvar_009036DC
 007564D3    cmp         eax,dword ptr [ebp-48]
>007564D6    jg          00756509
 007564D8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007564DD    mov         eax,dword ptr [eax+40]
 007564E0    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 007564E7    call        TFont.SetStyle
 007564EC    mov         eax,dword ptr [ebp-0C]
 007564EF    push        eax
 007564F0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007564F6    mov         edx,dword ptr ds:[903730];gvar_00903730
 007564FC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756501    mov         ebx,dword ptr [eax]
 00756503    call        dword ptr [ebx+90]
 00756509    mov         eax,1
 0075650E    call        00753BA0
 00756513    mov         ebx,1
 00756518    mov         eax,ebx
 0075651A    cmp         eax,0B
>0075651D    ja          007567EE
 00756523    jmp         dword ptr [eax*4+75652A]
 00756523    dd          007567EE
 00756523    dd          0075655A
 00756523    dd          0075658E
 00756523    dd          007565CE
 00756523    dd          007565F7
 00756523    dd          0075662B
 00756523    dd          00756675
 00756523    dd          007566B0
 00756523    dd          007566EB
 00756523    dd          0075671E
 00756523    dd          0075676F
 00756523    dd          007567C0
 0075655A    mov         eax,[00903714];gvar_00903714
 0075655F    add         eax,dword ptr ds:[903744];gvar_00903744
>00756565    jno         0075656C
 00756567    call        @IntOver
 0075656C    mov         [00903730],eax;gvar_00903730
 00756571    lea         eax,[ebp-0C]
 00756574    mov         edx,dword ptr ds:[7C4C04];^gvar_007C2D30
 0075657A    mov         edx,dword ptr [edx]
 0075657C    call        @UStrLAsg
 00756581    lea         eax,[ebp-10]
 00756584    call        @UStrClr
>00756589    jmp         007567EE
 0075658E    mov         eax,[00903714];gvar_00903714
 00756593    add         eax,dword ptr ds:[903748];gvar_00903748
>00756599    jno         007565A0
 0075659B    call        @IntOver
 007565A0    mov         [00903730],eax;gvar_00903730
 007565A5    lea         eax,[ebp-0C]
 007565A8    mov         edx,dword ptr ds:[7C43B4];^gvar_007C2D34
 007565AE    mov         edx,dword ptr [edx]
 007565B0    call        @UStrLAsg
 007565B5    lea         edx,[ebp-10]
 007565B8    mov         eax,[00903768];gvar_00903768
 007565BD    movzx       eax,word ptr [eax+14C]
 007565C4    call        IntToStr
>007565C9    jmp         007567EE
 007565CE    lea         eax,[ebp-0C]
 007565D1    mov         edx,dword ptr ds:[7C4434];^gvar_007C2D38
 007565D7    mov         edx,dword ptr [edx]
 007565D9    call        @UStrLAsg
 007565DE    lea         edx,[ebp-10]
 007565E1    mov         eax,[00903768];gvar_00903768
 007565E6    movzx       eax,word ptr [eax+14E]
 007565ED    call        IntToStr
>007565F2    jmp         007567EE
 007565F7    mov         eax,[00903714];gvar_00903714
 007565FC    add         eax,dword ptr ds:[903744];gvar_00903744
>00756602    jno         00756609
 00756604    call        @IntOver
 00756609    mov         [00903730],eax;gvar_00903730
 0075660E    lea         eax,[ebp-0C]
 00756611    mov         edx,dword ptr ds:[7C4B20];^gvar_007C2D3C
 00756617    mov         edx,dword ptr [edx]
 00756619    call        @UStrLAsg
 0075661E    lea         eax,[ebp-10]
 00756621    call        @UStrClr
>00756626    jmp         007567EE
 0075662B    mov         eax,[00903714];gvar_00903714
 00756630    add         eax,dword ptr ds:[903748];gvar_00903748
>00756636    jno         0075663D
 00756638    call        @IntOver
 0075663D    mov         [00903730],eax;gvar_00903730
 00756642    lea         eax,[ebp-0C]
 00756645    mov         edx,dword ptr ds:[7C41F4];^gvar_007C2D40
 0075664B    mov         edx,dword ptr [edx]
 0075664D    call        @UStrLAsg
 00756652    lea         eax,[ebp-10]
 00756655    mov         edx,dword ptr ds:[903768];gvar_00903768
 0075665B    movzx       edx,byte ptr [edx+146]
 00756662    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756668    mov         edx,dword ptr [ecx+edx*4]
 0075666B    call        @UStrLAsg
>00756670    jmp         007567EE
 00756675    mov         ecx,dword ptr ds:[7C4C98];^gvar_007C2D4C
 0075667B    mov         ecx,dword ptr [ecx]
 0075667D    mov         edx,dword ptr ds:[7C4D1C];^gvar_007C2D48
 00756683    mov         edx,dword ptr [edx]
 00756685    lea         eax,[ebp-0C]
 00756688    call        @UStrCat3
 0075668D    lea         eax,[ebp-10]
 00756690    mov         edx,dword ptr ds:[903768];gvar_00903768
 00756696    movzx       edx,byte ptr [edx+147]
 0075669D    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007566A3    mov         edx,dword ptr [ecx+edx*4]
 007566A6    call        @UStrLAsg
>007566AB    jmp         007567EE
 007566B0    mov         ecx,dword ptr ds:[7C4BD4];^gvar_007C2D50
 007566B6    mov         ecx,dword ptr [ecx]
 007566B8    mov         edx,dword ptr ds:[7C4D1C];^gvar_007C2D48
 007566BE    mov         edx,dword ptr [edx]
 007566C0    lea         eax,[ebp-0C]
 007566C3    call        @UStrCat3
 007566C8    lea         eax,[ebp-10]
 007566CB    mov         edx,dword ptr ds:[903768];gvar_00903768
 007566D1    movzx       edx,byte ptr [edx+148]
 007566D8    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007566DE    mov         edx,dword ptr [ecx+edx*4]
 007566E1    call        @UStrLAsg
>007566E6    jmp         007567EE
 007566EB    lea         eax,[ebp-0C]
 007566EE    mov         edx,dword ptr ds:[7C4C44];^gvar_007C2D44
 007566F4    mov         edx,dword ptr [edx]
 007566F6    call        @UStrLAsg
 007566FB    lea         eax,[ebp-10]
 007566FE    mov         edx,dword ptr ds:[903768];gvar_00903768
 00756704    movzx       edx,byte ptr [edx+149]
 0075670B    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756711    mov         edx,dword ptr [ecx+edx*4]
 00756714    call        @UStrLAsg
>00756719    jmp         007567EE
 0075671E    mov         eax,[00903714];gvar_00903714
 00756723    add         eax,dword ptr ds:[903744];gvar_00903744
>00756729    jno         00756730
 0075672B    call        @IntOver
 00756730    mov         [00903730],eax;gvar_00903730
 00756735    lea         eax,[ebp-0C]
 00756738    mov         edx,dword ptr ds:[7C4B04];^gvar_007C2D54
 0075673E    mov         edx,dword ptr [edx]
 00756740    call        @UStrLAsg
 00756745    lea         eax,[ebp-10]
 00756748    mov         edx,dword ptr ds:[903768];gvar_00903768
 0075674E    movzx       edx,byte ptr [edx+14B]
 00756755    cmp         edx,3
>00756758    jbe         0075675F
 0075675A    call        @BoundErr
 0075675F    mov         ecx,dword ptr ds:[7C4558];^gvar_00901ED0:UnicodeString
 00756765    mov         edx,dword ptr [ecx+edx*4]
 00756768    call        @UStrLAsg
>0075676D    jmp         007567EE
 0075676F    mov         eax,[00903714];gvar_00903714
 00756774    add         eax,dword ptr ds:[903744];gvar_00903744
>0075677A    jno         00756781
 0075677C    call        @IntOver
 00756781    mov         [00903730],eax;gvar_00903730
 00756786    lea         eax,[ebp-0C]
 00756789    mov         edx,dword ptr ds:[7C4850];^gvar_007C2D58
 0075678F    mov         edx,dword ptr [edx]
 00756791    call        @UStrLAsg
 00756796    lea         eax,[ebp-10]
 00756799    mov         edx,dword ptr ds:[903768];gvar_00903768
 0075679F    movzx       edx,byte ptr [edx+176]
 007567A6    cmp         edx,3
>007567A9    jbe         007567B0
 007567AB    call        @BoundErr
 007567B0    mov         ecx,dword ptr ds:[7C42D4];^gvar_00901EE0:UnicodeString
 007567B6    mov         edx,dword ptr [ecx+edx*4]
 007567B9    call        @UStrLAsg
>007567BE    jmp         007567EE
 007567C0    lea         eax,[ebp-0C]
 007567C3    mov         edx,dword ptr ds:[7C4ABC];^gvar_007C2D60
 007567C9    mov         edx,dword ptr [edx]
 007567CB    call        @UStrLAsg
 007567D0    lea         eax,[ebp-10]
 007567D3    mov         edx,dword ptr ds:[903768];gvar_00903768
 007567D9    movzx       edx,byte ptr [edx+14A]
 007567E0    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 007567E6    mov         edx,dword ptr [ecx+edx*4]
 007567E9    call        @UStrLAsg
 007567EE    mov         eax,[009036DC];gvar_009036DC
 007567F3    cmp         eax,dword ptr [ebp-44]
>007567F6    jl          007568D9
 007567FC    mov         eax,[009036DC];gvar_009036DC
 00756801    cmp         eax,dword ptr [ebp-48]
>00756804    jg          007568D9
 0075680A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075680F    mov         eax,dword ptr [eax+40]
 00756812    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00756819    call        TFont.SetStyle
 0075681E    mov         eax,[00903734];gvar_00903734
 00756823    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00756829    jno         00756830
 0075682B    call        @IntOver
 00756830    push        eax
 00756831    lea         eax,[ebp-188]
 00756837    push        eax
 00756838    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 0075683E    mov         edx,dword ptr ds:[903734];gvar_00903734
 00756844    mov         eax,esi
 00756846    call        Rect
 0075684B    mov         eax,[00903734];gvar_00903734
 00756850    push        eax
 00756851    push        dword ptr [ebp-8]
 00756854    push        dword ptr [ebp-8]
 00756857    push        dword ptr [ebp-8]
 0075685A    push        dword ptr [ebp-8]
 0075685D    lea         eax,[ebp-1B4]
 00756863    mov         edx,4
 00756868    call        @UStrCatN
 0075686D    mov         eax,dword ptr [ebp-1B4]
 00756873    push        eax
 00756874    mov         ecx,esi
 00756876    lea         edx,[ebp-188]
 0075687C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756881    mov         edi,dword ptr [eax]
 00756883    call        dword ptr [edi+98]
 00756889    mov         eax,dword ptr [ebp-0C]
 0075688C    push        eax
 0075688D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756893    mov         edx,dword ptr ds:[903730];gvar_00903730
 00756899    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075689E    mov         edi,dword ptr [eax]
 007568A0    call        dword ptr [edi+90]
 007568A6    mov         eax,dword ptr [ebp-10]
 007568A9    push        eax
 007568AA    mov         edx,dword ptr [ebp-10]
 007568AD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007568B2    call        TCustomCanvas.TextWidth
 007568B7    mov         edx,dword ptr ds:[90371C];gvar_0090371C
 007568BD    sub         edx,eax
>007568BF    jno         007568C6
 007568C1    call        @IntOver
 007568C6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007568CC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007568D1    mov         edi,dword ptr [eax]
 007568D3    call        dword ptr [edi+90]
 007568D9    mov         eax,1
 007568DE    call        00753BA0
 007568E3    inc         ebx
 007568E4    cmp         ebx,0C
>007568E7    jne         00756518
 007568ED    mov         eax,8
 007568F2    call        00753BA0
 007568F7    mov         eax,[00903714];gvar_00903714
 007568FC    mov         [00903730],eax;gvar_00903730
 00756901    lea         eax,[ebp-0C]
 00756904    mov         edx,dword ptr ds:[7C4264];^gvar_007C2D64
 0075690A    mov         edx,dword ptr [edx]
 0075690C    call        @UStrLAsg
 00756911    lea         eax,[ebp-10]
 00756914    mov         edx,dword ptr ds:[7C4714];^gvar_007C2D6C
 0075691A    mov         edx,dword ptr [edx]
 0075691C    call        @UStrLAsg
 00756921    lea         eax,[ebp-14]
 00756924    mov         edx,dword ptr ds:[7C48C0];^gvar_007C2D70
 0075692A    mov         edx,dword ptr [edx]
 0075692C    call        @UStrLAsg
 00756931    mov         esi,dword ptr ds:[903714];gvar_00903714
 00756937    mov         eax,[0090371C];gvar_0090371C
 0075693C    sub         eax,dword ptr ds:[90374C];gvar_0090374C
>00756942    jno         00756949
 00756944    call        @IntOver
 00756949    mov         dword ptr [ebp-54],eax
 0075694C    mov         eax,[0090371C];gvar_0090371C
 00756951    mov         dword ptr [ebp-58],eax
 00756954    mov         eax,[009036DC];gvar_009036DC
 00756959    cmp         eax,dword ptr [ebp-44]
>0075695C    jl          007569FD
 00756962    mov         eax,[009036DC];gvar_009036DC
 00756967    cmp         eax,dword ptr [ebp-48]
>0075696A    jg          007569FD
 00756970    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756975    mov         eax,dword ptr [eax+40]
 00756978    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 0075697F    call        TFont.SetStyle
 00756984    mov         eax,dword ptr [ebp-0C]
 00756987    push        eax
 00756988    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075698E    mov         edx,esi
 00756990    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756995    mov         ebx,dword ptr [eax]
 00756997    call        dword ptr [ebx+90]
 0075699D    mov         eax,dword ptr [ebp-10]
 007569A0    push        eax
 007569A1    mov         edx,dword ptr [ebp-10]
 007569A4    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007569A9    call        TCustomCanvas.TextWidth
 007569AE    mov         edx,dword ptr [ebp-54]
 007569B1    sub         edx,eax
>007569B3    jno         007569BA
 007569B5    call        @IntOver
 007569BA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007569C0    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007569C5    mov         ebx,dword ptr [eax]
 007569C7    call        dword ptr [ebx+90]
 007569CD    mov         eax,dword ptr [ebp-14]
 007569D0    push        eax
 007569D1    mov         edx,dword ptr [ebp-14]
 007569D4    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007569D9    call        TCustomCanvas.TextWidth
 007569DE    mov         edx,dword ptr [ebp-58]
 007569E1    sub         edx,eax
>007569E3    jno         007569EA
 007569E5    call        @IntOver
 007569EA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007569F0    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007569F5    mov         ebx,dword ptr [eax]
 007569F7    call        dword ptr [ebx+90]
 007569FD    mov         eax,1
 00756A02    call        00753BA0
 00756A07    mov         ebx,1
 00756A0C    mov         eax,ebx
 00756A0E    cmp         eax,8
>00756A11    ja          00756CE2
 00756A17    jmp         dword ptr [eax*4+756A1E]
 00756A17    dd          00756CE2
 00756A17    dd          00756A42
 00756A17    dd          00756A97
 00756A17    dd          00756AEC
 00756A17    dd          00756B41
 00756A17    dd          00756B96
 00756A17    dd          00756BEB
 00756A17    dd          00756C40
 00756A17    dd          00756C92
 00756A42    lea         eax,[ebp-0C]
 00756A45    mov         edx,dword ptr ds:[7C4A90];^gvar_007C2D74
 00756A4B    mov         edx,dword ptr [edx]
 00756A4D    call        @UStrLAsg
 00756A52    xor         edx,edx
 00756A54    mov         eax,[00903768];gvar_00903768
 00756A59    call        TFXPPD.GetPrintEventStatus
 00756A5E    and         eax,7F
 00756A61    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756A67    mov         edx,dword ptr [edx+eax*4]
 00756A6A    lea         eax,[ebp-10]
 00756A6D    call        @UStrLAsg
 00756A72    xor         edx,edx
 00756A74    mov         eax,[00903768];gvar_00903768
 00756A79    call        TFXPPD.GetLogEventStatus
 00756A7E    and         eax,7F
 00756A81    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756A87    mov         edx,dword ptr [edx+eax*4]
 00756A8A    lea         eax,[ebp-14]
 00756A8D    call        @UStrLAsg
>00756A92    jmp         00756CE2
 00756A97    lea         eax,[ebp-0C]
 00756A9A    mov         edx,dword ptr ds:[7C415C];^gvar_007C2D78
 00756AA0    mov         edx,dword ptr [edx]
 00756AA2    call        @UStrLAsg
 00756AA7    mov         dl,1
 00756AA9    mov         eax,[00903768];gvar_00903768
 00756AAE    call        TFXPPD.GetPrintEventStatus
 00756AB3    and         eax,7F
 00756AB6    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756ABC    mov         edx,dword ptr [edx+eax*4]
 00756ABF    lea         eax,[ebp-10]
 00756AC2    call        @UStrLAsg
 00756AC7    mov         dl,1
 00756AC9    mov         eax,[00903768];gvar_00903768
 00756ACE    call        TFXPPD.GetLogEventStatus
 00756AD3    and         eax,7F
 00756AD6    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756ADC    mov         edx,dword ptr [edx+eax*4]
 00756ADF    lea         eax,[ebp-14]
 00756AE2    call        @UStrLAsg
>00756AE7    jmp         00756CE2
 00756AEC    lea         eax,[ebp-0C]
 00756AEF    mov         edx,dword ptr ds:[7C48A0];^gvar_007C2D7C
 00756AF5    mov         edx,dword ptr [edx]
 00756AF7    call        @UStrLAsg
 00756AFC    mov         dl,2
 00756AFE    mov         eax,[00903768];gvar_00903768
 00756B03    call        TFXPPD.GetPrintEventStatus
 00756B08    and         eax,7F
 00756B0B    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756B11    mov         edx,dword ptr [edx+eax*4]
 00756B14    lea         eax,[ebp-10]
 00756B17    call        @UStrLAsg
 00756B1C    mov         dl,2
 00756B1E    mov         eax,[00903768];gvar_00903768
 00756B23    call        TFXPPD.GetLogEventStatus
 00756B28    and         eax,7F
 00756B2B    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756B31    mov         edx,dword ptr [edx+eax*4]
 00756B34    lea         eax,[ebp-14]
 00756B37    call        @UStrLAsg
>00756B3C    jmp         00756CE2
 00756B41    lea         eax,[ebp-0C]
 00756B44    mov         edx,dword ptr ds:[7C4290];^gvar_007C2D80
 00756B4A    mov         edx,dword ptr [edx]
 00756B4C    call        @UStrLAsg
 00756B51    mov         dl,3
 00756B53    mov         eax,[00903768];gvar_00903768
 00756B58    call        TFXPPD.GetPrintEventStatus
 00756B5D    and         eax,7F
 00756B60    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756B66    mov         edx,dword ptr [edx+eax*4]
 00756B69    lea         eax,[ebp-10]
 00756B6C    call        @UStrLAsg
 00756B71    mov         dl,3
 00756B73    mov         eax,[00903768];gvar_00903768
 00756B78    call        TFXPPD.GetLogEventStatus
 00756B7D    and         eax,7F
 00756B80    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756B86    mov         edx,dword ptr [edx+eax*4]
 00756B89    lea         eax,[ebp-14]
 00756B8C    call        @UStrLAsg
>00756B91    jmp         00756CE2
 00756B96    lea         eax,[ebp-0C]
 00756B99    mov         edx,dword ptr ds:[7C44EC];^gvar_007C2D84
 00756B9F    mov         edx,dword ptr [edx]
 00756BA1    call        @UStrLAsg
 00756BA6    mov         dl,4
 00756BA8    mov         eax,[00903768];gvar_00903768
 00756BAD    call        TFXPPD.GetPrintEventStatus
 00756BB2    and         eax,7F
 00756BB5    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756BBB    mov         edx,dword ptr [edx+eax*4]
 00756BBE    lea         eax,[ebp-10]
 00756BC1    call        @UStrLAsg
 00756BC6    mov         dl,4
 00756BC8    mov         eax,[00903768];gvar_00903768
 00756BCD    call        TFXPPD.GetLogEventStatus
 00756BD2    and         eax,7F
 00756BD5    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756BDB    mov         edx,dword ptr [edx+eax*4]
 00756BDE    lea         eax,[ebp-14]
 00756BE1    call        @UStrLAsg
>00756BE6    jmp         00756CE2
 00756BEB    lea         eax,[ebp-0C]
 00756BEE    mov         edx,dword ptr ds:[7C48E8];^gvar_007C2D88
 00756BF4    mov         edx,dword ptr [edx]
 00756BF6    call        @UStrLAsg
 00756BFB    mov         dl,5
 00756BFD    mov         eax,[00903768];gvar_00903768
 00756C02    call        TFXPPD.GetPrintEventStatus
 00756C07    and         eax,7F
 00756C0A    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756C10    mov         edx,dword ptr [edx+eax*4]
 00756C13    lea         eax,[ebp-10]
 00756C16    call        @UStrLAsg
 00756C1B    mov         dl,5
 00756C1D    mov         eax,[00903768];gvar_00903768
 00756C22    call        TFXPPD.GetLogEventStatus
 00756C27    and         eax,7F
 00756C2A    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756C30    mov         edx,dword ptr [edx+eax*4]
 00756C33    lea         eax,[ebp-14]
 00756C36    call        @UStrLAsg
>00756C3B    jmp         00756CE2
 00756C40    lea         eax,[ebp-0C]
 00756C43    mov         edx,dword ptr ds:[7C47F8];^gvar_007C2D8C
 00756C49    mov         edx,dword ptr [edx]
 00756C4B    call        @UStrLAsg
 00756C50    mov         dl,6
 00756C52    mov         eax,[00903768];gvar_00903768
 00756C57    call        TFXPPD.GetPrintEventStatus
 00756C5C    and         eax,7F
 00756C5F    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756C65    mov         edx,dword ptr [edx+eax*4]
 00756C68    lea         eax,[ebp-10]
 00756C6B    call        @UStrLAsg
 00756C70    mov         dl,6
 00756C72    mov         eax,[00903768];gvar_00903768
 00756C77    call        TFXPPD.GetLogEventStatus
 00756C7C    and         eax,7F
 00756C7F    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756C85    mov         edx,dword ptr [edx+eax*4]
 00756C88    lea         eax,[ebp-14]
 00756C8B    call        @UStrLAsg
>00756C90    jmp         00756CE2
 00756C92    lea         eax,[ebp-0C]
 00756C95    mov         edx,dword ptr ds:[7C446C];^gvar_007C2D90
 00756C9B    mov         edx,dword ptr [edx]
 00756C9D    call        @UStrLAsg
 00756CA2    mov         dl,7
 00756CA4    mov         eax,[00903768];gvar_00903768
 00756CA9    call        TFXPPD.GetPrintEventStatus
 00756CAE    and         eax,7F
 00756CB1    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756CB7    mov         edx,dword ptr [edx+eax*4]
 00756CBA    lea         eax,[ebp-10]
 00756CBD    call        @UStrLAsg
 00756CC2    mov         dl,7
 00756CC4    mov         eax,[00903768];gvar_00903768
 00756CC9    call        TFXPPD.GetLogEventStatus
 00756CCE    and         eax,7F
 00756CD1    mov         edx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 00756CD7    mov         edx,dword ptr [edx+eax*4]
 00756CDA    lea         eax,[ebp-14]
 00756CDD    call        @UStrLAsg
 00756CE2    mov         eax,[009036DC];gvar_009036DC
 00756CE7    cmp         eax,dword ptr [ebp-44]
>00756CEA    jl          00756E09
 00756CF0    mov         eax,[009036DC];gvar_009036DC
 00756CF5    cmp         eax,dword ptr [ebp-48]
>00756CF8    jg          00756E09
 00756CFE    mov         esi,dword ptr ds:[903714];gvar_00903714
 00756D04    add         esi,dword ptr ds:[903744];gvar_00903744
>00756D0A    jno         00756D11
 00756D0C    call        @IntOver
 00756D11    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756D16    mov         eax,dword ptr [eax+40]
 00756D19    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00756D20    call        TFont.SetStyle
 00756D25    mov         eax,[00903734];gvar_00903734
 00756D2A    add         eax,dword ptr ds:[903738];gvar_00903738:Integer
>00756D30    jno         00756D37
 00756D32    call        @IntOver
 00756D37    push        eax
 00756D38    lea         eax,[ebp-188]
 00756D3E    push        eax
 00756D3F    mov         ecx,dword ptr ds:[90371C];gvar_0090371C
 00756D45    mov         edx,dword ptr ds:[903734];gvar_00903734
 00756D4B    mov         eax,esi
 00756D4D    call        Rect
 00756D52    mov         eax,[00903734];gvar_00903734
 00756D57    push        eax
 00756D58    push        dword ptr [ebp-8]
 00756D5B    push        dword ptr [ebp-8]
 00756D5E    push        dword ptr [ebp-8]
 00756D61    push        dword ptr [ebp-8]
 00756D64    lea         eax,[ebp-1B8]
 00756D6A    mov         edx,4
 00756D6F    call        @UStrCatN
 00756D74    mov         eax,dword ptr [ebp-1B8]
 00756D7A    push        eax
 00756D7B    mov         ecx,esi
 00756D7D    lea         edx,[ebp-188]
 00756D83    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756D88    mov         edi,dword ptr [eax]
 00756D8A    call        dword ptr [edi+98]
 00756D90    mov         eax,dword ptr [ebp-0C]
 00756D93    push        eax
 00756D94    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756D9A    mov         edx,esi
 00756D9C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756DA1    mov         esi,dword ptr [eax]
 00756DA3    call        dword ptr [esi+90]
 00756DA9    mov         eax,dword ptr [ebp-10]
 00756DAC    push        eax
 00756DAD    mov         edx,dword ptr [ebp-10]
 00756DB0    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756DB5    call        TCustomCanvas.TextWidth
 00756DBA    mov         edx,dword ptr [ebp-54]
 00756DBD    sub         edx,eax
>00756DBF    jno         00756DC6
 00756DC1    call        @IntOver
 00756DC6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756DCC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756DD1    mov         esi,dword ptr [eax]
 00756DD3    call        dword ptr [esi+90]
 00756DD9    mov         eax,dword ptr [ebp-14]
 00756DDC    push        eax
 00756DDD    mov         edx,dword ptr [ebp-14]
 00756DE0    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756DE5    call        TCustomCanvas.TextWidth
 00756DEA    mov         edx,dword ptr [ebp-58]
 00756DED    sub         edx,eax
>00756DEF    jno         00756DF6
 00756DF1    call        @IntOver
 00756DF6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756DFC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756E01    mov         esi,dword ptr [eax]
 00756E03    call        dword ptr [esi+90]
 00756E09    mov         eax,1
 00756E0E    call        00753BA0
 00756E13    inc         ebx
 00756E14    cmp         ebx,9
>00756E17    jne         00756A0C
 00756E1D    mov         eax,4
 00756E22    call        00753BA0
 00756E27    mov         eax,[00903714];gvar_00903714
 00756E2C    mov         [00903730],eax;gvar_00903730
 00756E31    lea         eax,[ebp-0C]
 00756E34    mov         edx,dword ptr ds:[7C43EC];^gvar_007C2E34
 00756E3A    mov         edx,dword ptr [edx]
 00756E3C    call        @UStrLAsg
 00756E41    mov         esi,dword ptr ds:[903714];gvar_00903714
 00756E47    mov         eax,[009036DC];gvar_009036DC
 00756E4C    cmp         eax,dword ptr [ebp-44]
>00756E4F    jl          00756E88
 00756E51    mov         eax,[009036DC];gvar_009036DC
 00756E56    cmp         eax,dword ptr [ebp-48]
>00756E59    jg          00756E88
 00756E5B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756E60    mov         eax,dword ptr [eax+40]
 00756E63    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00756E6A    call        TFont.SetStyle
 00756E6F    mov         eax,dword ptr [ebp-0C]
 00756E72    push        eax
 00756E73    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756E79    mov         edx,esi
 00756E7B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756E80    mov         ebx,dword ptr [eax]
 00756E82    call        dword ptr [ebx+90]
 00756E88    mov         eax,1
 00756E8D    call        00753BA0
 00756E92    lea         eax,[ebp-0C]
 00756E95    mov         edx,dword ptr ds:[7C45D4];^gvar_007C2E3C
 00756E9B    mov         edx,dword ptr [edx]
 00756E9D    call        @UStrLAsg
 00756EA2    mov         esi,dword ptr ds:[903714];gvar_00903714
 00756EA8    add         esi,dword ptr ds:[903744];gvar_00903744
>00756EAE    jno         00756EB5
 00756EB0    call        @IntOver
 00756EB5    mov         eax,[009036DC];gvar_009036DC
 00756EBA    cmp         eax,dword ptr [ebp-44]
>00756EBD    jl          00756EF6
 00756EBF    mov         eax,[009036DC];gvar_009036DC
 00756EC4    cmp         eax,dword ptr [ebp-48]
>00756EC7    jg          00756EF6
 00756EC9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756ECE    mov         eax,dword ptr [eax+40]
 00756ED1    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00756ED8    call        TFont.SetStyle
 00756EDD    mov         eax,dword ptr [ebp-0C]
 00756EE0    push        eax
 00756EE1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00756EE7    mov         edx,esi
 00756EE9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00756EEE    mov         ebx,dword ptr [eax]
 00756EF0    call        dword ptr [ebx+90]
 00756EF6    mov         eax,1
 00756EFB    call        00753BA0
 00756F00    mov         esi,dword ptr ds:[903714];gvar_00903714
 00756F06    add         esi,dword ptr ds:[903744];gvar_00903744
>00756F0C    jno         00756F13
 00756F0E    call        @IntOver
 00756F13    mov         edx,dword ptr [ebp-4C]
 00756F16    mov         eax,0A
 00756F1B    call        007537B0
 00756F20    mov         edx,dword ptr ds:[903714];gvar_00903714
 00756F26    add         edx,dword ptr ds:[903744];gvar_00903744
>00756F2C    jno         00756F33
 00756F2E    call        @IntOver
 00756F33    add         eax,edx
>00756F35    jno         00756F3C
 00756F37    call        @IntOver
 00756F3C    mov         dword ptr [ebp-54],eax
 00756F3F    mov         edx,dword ptr [ebp-4C]
 00756F42    mov         eax,37
 00756F47    call        007537B0
 00756F4C    mov         edx,dword ptr ds:[903714];gvar_00903714
 00756F52    add         edx,dword ptr ds:[903744];gvar_00903744
>00756F58    jno         00756F5F
 00756F5A    call        @IntOver
 00756F5F    add         eax,edx
>00756F61    jno         00756F68
 00756F63    call        @IntOver
 00756F68    mov         dword ptr [ebp-58],eax
 00756F6B    mov         edx,dword ptr [ebp-4C]
 00756F6E    mov         eax,46
 00756F73    call        007537B0
 00756F78    mov         edx,dword ptr ds:[903714];gvar_00903714
 00756F7E    add         edx,dword ptr ds:[903744];gvar_00903744
>00756F84    jno         00756F8B
 00756F86    call        @IntOver
 00756F8B    add         eax,edx
>00756F8D    jno         00756F94
 00756F8F    call        @IntOver
 00756F94    mov         dword ptr [ebp-5C],eax
 00756F97    mov         edx,dword ptr [ebp-4C]
 00756F9A    mov         eax,55
 00756F9F    call        007537B0
 00756FA4    mov         edx,dword ptr ds:[903714];gvar_00903714
 00756FAA    add         edx,dword ptr ds:[903744];gvar_00903744
>00756FB0    jno         00756FB7
 00756FB2    call        @IntOver
 00756FB7    add         eax,edx
>00756FB9    jno         00756FC0
 00756FBB    call        @IntOver
 00756FC0    mov         dword ptr [ebp-60],eax
 00756FC3    mov         edx,dword ptr [ebp-4C]
 00756FC6    mov         eax,64
 00756FCB    call        007537B0
 00756FD0    mov         edx,dword ptr ds:[903714];gvar_00903714
 00756FD6    add         edx,dword ptr ds:[903744];gvar_00903744
>00756FDC    jno         00756FE3
 00756FDE    call        @IntOver
 00756FE3    add         eax,edx
>00756FE5    jno         00756FEC
 00756FE7    call        @IntOver
 00756FEC    mov         dword ptr [ebp-64],eax
 00756FEF    mov         edx,dword ptr [ebp-4C]
 00756FF2    mov         eax,73
 00756FF7    call        007537B0
 00756FFC    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757002    add         edx,dword ptr ds:[903744];gvar_00903744
>00757008    jno         0075700F
 0075700A    call        @IntOver
 0075700F    add         eax,edx
>00757011    jno         00757018
 00757013    call        @IntOver
 00757018    mov         dword ptr [ebp-68],eax
 0075701B    xor         ebx,ebx
 0075701D    mov         eax,ebx
 0075701F    sub         eax,1
>00757022    jb          0075702E
 00757024    sub         eax,2
>00757027    jb          007570A3
>00757029    jmp         007571BD
 0075702E    lea         eax,[ebp-0C]
 00757031    mov         edx,dword ptr ds:[7C4640];^gvar_007C2E68
 00757037    mov         edx,dword ptr [edx]
 00757039    call        @UStrLAsg
 0075703E    lea         eax,[ebp-10]
 00757041    mov         edx,dword ptr ds:[7C4630];^gvar_007C2E6C
 00757047    mov         edx,dword ptr [edx]
 00757049    call        @UStrLAsg
 0075704E    lea         eax,[ebp-14]
 00757051    mov         edx,dword ptr ds:[7C42F8];^gvar_007C2E70
 00757057    mov         edx,dword ptr [edx]
 00757059    call        @UStrLAsg
 0075705E    lea         eax,[ebp-18]
 00757061    mov         edx,dword ptr ds:[7C4DC8];^gvar_007C2EA0
 00757067    mov         edx,dword ptr [edx]
 00757069    call        @UStrLAsg
 0075706E    lea         eax,[ebp-1C]
 00757071    mov         edx,dword ptr ds:[7C47A4];^gvar_007C2E74
 00757077    mov         edx,dword ptr [edx]
 00757079    call        @UStrLAsg
 0075707E    lea         eax,[ebp-20]
 00757081    mov         edx,dword ptr ds:[7C482C];^gvar_007C2E78
 00757087    mov         edx,dword ptr [edx]
 00757089    call        @UStrLAsg
 0075708E    lea         eax,[ebp-24]
 00757091    mov         edx,dword ptr ds:[7C48A4];^gvar_007C2E80
 00757097    mov         edx,dword ptr [edx]
 00757099    call        @UStrLAsg
>0075709E    jmp         007571BD
 007570A3    lea         edx,[ebp-1BC]
 007570A9    mov         eax,ebx
 007570AB    call        IntToStr
 007570B0    mov         ecx,dword ptr [ebp-1BC]
 007570B6    lea         eax,[ebp-0C]
 007570B9    mov         edx,759214;' '
 007570BE    call        @UStrCat3
 007570C3    mov         ecx,ebx
 007570C5    cmp         ecx,0FF
>007570CB    jbe         007570D2
 007570CD    call        @BoundErr
 007570D2    xor         edx,edx
 007570D4    mov         eax,[0090376C];gvar_0090376C
 007570D9    call        TFXPIO.GetCCIFunction
 007570DE    mov         edx,eax
 007570E0    lea         ecx,[ebp-10]
 007570E3    mov         eax,[0090376C];gvar_0090376C
 007570E8    call        TFXPIO.CCIFunctionToString
 007570ED    mov         ecx,ebx
 007570EF    cmp         ecx,0FF
>007570F5    jbe         007570FC
 007570F7    call        @BoundErr
 007570FC    xor         edx,edx
 007570FE    mov         eax,[0090376C];gvar_0090376C
 00757103    call        TFXPIO.GetCCIType
 00757108    mov         edx,eax
 0075710A    lea         ecx,[ebp-14]
 0075710D    mov         eax,[0090376C];gvar_0090376C
 00757112    call        TFXPIO.CCITypeToString
 00757117    mov         ecx,ebx
 00757119    cmp         ecx,0FF
>0075711F    jbe         00757126
 00757121    call        @BoundErr
 00757126    xor         edx,edx
 00757128    mov         eax,[0090376C];gvar_0090376C
 0075712D    call        TFXPIO.GetCCIShortIsFault
 00757132    mov         edx,eax
 00757134    lea         ecx,[ebp-18]
 00757137    mov         eax,[0090376C];gvar_0090376C
 0075713C    call        TFXPIO.ADOMonitoringToString
 00757141    mov         ecx,ebx
 00757143    cmp         ecx,0FF
>00757149    jbe         00757150
 0075714B    call        @BoundErr
 00757150    xor         edx,edx
 00757152    mov         eax,[0090376C];gvar_0090376C
 00757157    call        TFXPIO.GetCCICtrlGroupA
 0075715C    movzx       eax,ax
 0075715F    lea         edx,[ebp-1C]
 00757162    call        IntToStr
 00757167    mov         ecx,ebx
 00757169    cmp         ecx,0FF
>0075716F    jbe         00757176
 00757171    call        @BoundErr
 00757176    xor         edx,edx
 00757178    mov         eax,[0090376C];gvar_0090376C
 0075717D    call        TFXPIO.GetCCICtrlGroupB
 00757182    movzx       eax,ax
 00757185    lea         edx,[ebp-20]
 00757188    call        IntToStr
 0075718D    lea         eax,[ebp-1FC]
 00757193    push        eax
 00757194    mov         ecx,ebx
 00757196    cmp         ecx,0FF
>0075719C    jbe         007571A3
 0075719E    call        @BoundErr
 007571A3    xor         edx,edx
 007571A5    mov         eax,[0090376C];gvar_0090376C
 007571AA    call        TFXPIO.GetCCIDescription
 007571AF    lea         edx,[ebp-1FC]
 007571B5    lea         eax,[ebp-24]
 007571B8    call        @UStrFromString
 007571BD    mov         eax,[009036DC];gvar_009036DC
 007571C2    cmp         eax,dword ptr [ebp-44]
>007571C5    jl          007572A2
 007571CB    mov         eax,[009036DC];gvar_009036DC
 007571D0    cmp         eax,dword ptr [ebp-48]
>007571D3    jg          007572A2
 007571D9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007571DE    mov         eax,dword ptr [eax+40]
 007571E1    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 007571E8    call        TFont.SetStyle
 007571ED    mov         eax,dword ptr [ebp-0C]
 007571F0    push        eax
 007571F1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007571F7    mov         edx,esi
 007571F9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007571FE    mov         edi,dword ptr [eax]
 00757200    call        dword ptr [edi+90]
 00757206    mov         eax,dword ptr [ebp-10]
 00757209    push        eax
 0075720A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757210    mov         edx,dword ptr [ebp-54]
 00757213    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757218    mov         edi,dword ptr [eax]
 0075721A    call        dword ptr [edi+90]
 00757220    mov         eax,dword ptr [ebp-14]
 00757223    push        eax
 00757224    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075722A    mov         edx,dword ptr [ebp-58]
 0075722D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757232    mov         edi,dword ptr [eax]
 00757234    call        dword ptr [edi+90]
 0075723A    mov         eax,dword ptr [ebp-18]
 0075723D    push        eax
 0075723E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757244    mov         edx,dword ptr [ebp-5C]
 00757247    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075724C    mov         edi,dword ptr [eax]
 0075724E    call        dword ptr [edi+90]
 00757254    mov         eax,dword ptr [ebp-1C]
 00757257    push        eax
 00757258    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075725E    mov         edx,dword ptr [ebp-60]
 00757261    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757266    mov         edi,dword ptr [eax]
 00757268    call        dword ptr [edi+90]
 0075726E    mov         eax,dword ptr [ebp-20]
 00757271    push        eax
 00757272    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757278    mov         edx,dword ptr [ebp-64]
 0075727B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757280    mov         edi,dword ptr [eax]
 00757282    call        dword ptr [edi+90]
 00757288    mov         eax,dword ptr [ebp-24]
 0075728B    push        eax
 0075728C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757292    mov         edx,dword ptr [ebp-68]
 00757295    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075729A    mov         edi,dword ptr [eax]
 0075729C    call        dword ptr [edi+90]
 007572A2    mov         eax,1
 007572A7    call        00753BA0
 007572AC    inc         ebx
 007572AD    cmp         ebx,3
>007572B0    jne         0075701D
 007572B6    mov         eax,1
 007572BB    call        00753BA0
 007572C0    lea         eax,[ebp-0C]
 007572C3    mov         edx,dword ptr ds:[7C4D64];^gvar_007C2E40
 007572C9    mov         edx,dword ptr [edx]
 007572CB    call        @UStrLAsg
 007572D0    mov         esi,dword ptr ds:[903714];gvar_00903714
 007572D6    add         esi,dword ptr ds:[903744];gvar_00903744
>007572DC    jno         007572E3
 007572DE    call        @IntOver
 007572E3    mov         eax,[009036DC];gvar_009036DC
 007572E8    cmp         eax,dword ptr [ebp-44]
>007572EB    jl          00757324
 007572ED    mov         eax,[009036DC];gvar_009036DC
 007572F2    cmp         eax,dword ptr [ebp-48]
>007572F5    jg          00757324
 007572F7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007572FC    mov         eax,dword ptr [eax+40]
 007572FF    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00757306    call        TFont.SetStyle
 0075730B    mov         eax,dword ptr [ebp-0C]
 0075730E    push        eax
 0075730F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757315    mov         edx,esi
 00757317    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075731C    mov         ebx,dword ptr [eax]
 0075731E    call        dword ptr [ebx+90]
 00757324    mov         eax,3
 00757329    call        00753BA0
 0075732E    mov         esi,dword ptr ds:[903714];gvar_00903714
 00757334    add         esi,dword ptr ds:[903744];gvar_00903744
>0075733A    jno         00757341
 0075733C    call        @IntOver
 00757341    mov         edx,dword ptr [ebp-4C]
 00757344    mov         eax,0A
 00757349    call        007537B0
 0075734E    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757354    add         edx,dword ptr ds:[903744];gvar_00903744
>0075735A    jno         00757361
 0075735C    call        @IntOver
 00757361    add         eax,edx
>00757363    jno         0075736A
 00757365    call        @IntOver
 0075736A    mov         dword ptr [ebp-54],eax
 0075736D    mov         edx,dword ptr [ebp-4C]
 00757370    mov         eax,37
 00757375    call        007537B0
 0075737A    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757380    add         edx,dword ptr ds:[903744];gvar_00903744
>00757386    jno         0075738D
 00757388    call        @IntOver
 0075738D    add         eax,edx
>0075738F    jno         00757396
 00757391    call        @IntOver
 00757396    mov         dword ptr [ebp-58],eax
 00757399    mov         edx,dword ptr [ebp-4C]
 0075739C    mov         eax,64
 007573A1    call        007537B0
 007573A6    mov         edx,dword ptr ds:[903714];gvar_00903714
 007573AC    add         edx,dword ptr ds:[903744];gvar_00903744
>007573B2    jno         007573B9
 007573B4    call        @IntOver
 007573B9    add         eax,edx
>007573BB    jno         007573C2
 007573BD    call        @IntOver
 007573C2    mov         dword ptr [ebp-5C],eax
 007573C5    xor         ebx,ebx
 007573C7    mov         eax,ebx
 007573C9    sub         eax,1
>007573CC    jb          007573D8
 007573CE    sub         eax,3
>007573D1    jb          0075741D
>007573D3    jmp         007574C7
 007573D8    lea         eax,[ebp-0C]
 007573DB    mov         edx,dword ptr ds:[7C4DC4];^gvar_007C2E84
 007573E1    mov         edx,dword ptr [edx]
 007573E3    call        @UStrLAsg
 007573E8    lea         eax,[ebp-10]
 007573EB    mov         edx,dword ptr ds:[7C4DC0];^gvar_007C2E88
 007573F1    mov         edx,dword ptr [edx]
 007573F3    call        @UStrLAsg
 007573F8    lea         eax,[ebp-14]
 007573FB    mov         edx,dword ptr ds:[7C4CAC];^gvar_007C2E8C
 00757401    mov         edx,dword ptr [edx]
 00757403    call        @UStrLAsg
 00757408    lea         eax,[ebp-18]
 0075740B    mov         edx,dword ptr ds:[7C4274];^gvar_007C2E90
 00757411    mov         edx,dword ptr [edx]
 00757413    call        @UStrLAsg
>00757418    jmp         007574C7
 0075741D    lea         edx,[ebp-200]
 00757423    mov         eax,ebx
 00757425    call        IntToStr
 0075742A    mov         ecx,dword ptr [ebp-200]
 00757430    lea         eax,[ebp-0C]
 00757433    mov         edx,759214;' '
 00757438    call        @UStrCat3
 0075743D    mov         ecx,ebx
 0075743F    cmp         ecx,0FF
>00757445    jbe         0075744C
 00757447    call        @BoundErr
 0075744C    xor         edx,edx
 0075744E    mov         eax,[0090376C];gvar_0090376C
 00757453    call        TFXPIO.GetCCOFunction
 00757458    mov         edx,eax
 0075745A    lea         ecx,[ebp-10]
 0075745D    mov         eax,[0090376C];gvar_0090376C
 00757462    call        TFXPIO.OutFunctionToString
 00757467    lea         eax,[ebp-284]
 0075746D    push        eax
 0075746E    mov         ecx,ebx
 00757470    cmp         ecx,0FF
>00757476    jbe         0075747D
 00757478    call        @BoundErr
 0075747D    xor         edx,edx
 0075747F    mov         eax,[0090376C];gvar_0090376C
 00757484    call        TFXPIO.GetCCOCtrlGroups
 00757489    lea         eax,[ebp-284]
 0075748F    lea         edx,[ebp-14]
 00757492    call        006955F8
 00757497    lea         eax,[ebp-1FC]
 0075749D    push        eax
 0075749E    mov         ecx,ebx
 007574A0    cmp         ecx,0FF
>007574A6    jbe         007574AD
 007574A8    call        @BoundErr
 007574AD    xor         edx,edx
 007574AF    mov         eax,[0090376C];gvar_0090376C
 007574B4    call        TFXPIO.GetCCODescription
 007574B9    lea         edx,[ebp-1FC]
 007574BF    lea         eax,[ebp-18]
 007574C2    call        @UStrFromString
 007574C7    mov         eax,[009036DC];gvar_009036DC
 007574CC    cmp         eax,dword ptr [ebp-44]
>007574CF    jl          0075755A
 007574D5    mov         eax,[009036DC];gvar_009036DC
 007574DA    cmp         eax,dword ptr [ebp-48]
>007574DD    jg          0075755A
 007574DF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007574E4    mov         eax,dword ptr [eax+40]
 007574E7    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 007574EE    call        TFont.SetStyle
 007574F3    mov         eax,dword ptr [ebp-0C]
 007574F6    push        eax
 007574F7    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007574FD    mov         edx,esi
 007574FF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757504    mov         edi,dword ptr [eax]
 00757506    call        dword ptr [edi+90]
 0075750C    mov         eax,dword ptr [ebp-10]
 0075750F    push        eax
 00757510    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757516    mov         edx,dword ptr [ebp-54]
 00757519    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075751E    mov         edi,dword ptr [eax]
 00757520    call        dword ptr [edi+90]
 00757526    mov         eax,dword ptr [ebp-14]
 00757529    push        eax
 0075752A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757530    mov         edx,dword ptr [ebp-58]
 00757533    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757538    mov         edi,dword ptr [eax]
 0075753A    call        dword ptr [edi+90]
 00757540    mov         eax,dword ptr [ebp-18]
 00757543    push        eax
 00757544    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075754A    mov         edx,dword ptr [ebp-5C]
 0075754D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757552    mov         edi,dword ptr [eax]
 00757554    call        dword ptr [edi+90]
 0075755A    mov         eax,1
 0075755F    call        00753BA0
 00757564    inc         ebx
 00757565    cmp         ebx,4
>00757568    jne         007573C7
 0075756E    mov         eax,1
 00757573    call        00753BA0
 00757578    lea         eax,[ebp-0C]
 0075757B    mov         edx,dword ptr ds:[7C43DC];^gvar_007C2E44
 00757581    mov         edx,dword ptr [edx]
 00757583    call        @UStrLAsg
 00757588    mov         esi,dword ptr ds:[903714];gvar_00903714
 0075758E    add         esi,dword ptr ds:[903744];gvar_00903744
>00757594    jno         0075759B
 00757596    call        @IntOver
 0075759B    mov         eax,[009036DC];gvar_009036DC
 007575A0    cmp         eax,dword ptr [ebp-44]
>007575A3    jl          007575DC
 007575A5    mov         eax,[009036DC];gvar_009036DC
 007575AA    cmp         eax,dword ptr [ebp-48]
>007575AD    jg          007575DC
 007575AF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007575B4    mov         eax,dword ptr [eax+40]
 007575B7    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 007575BE    call        TFont.SetStyle
 007575C3    mov         eax,dword ptr [ebp-0C]
 007575C6    push        eax
 007575C7    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007575CD    mov         edx,esi
 007575CF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007575D4    mov         ebx,dword ptr [eax]
 007575D6    call        dword ptr [ebx+90]
 007575DC    mov         eax,2
 007575E1    call        00753BA0
 007575E6    mov         esi,dword ptr ds:[903714];gvar_00903714
 007575EC    add         esi,dword ptr ds:[903744];gvar_00903744
>007575F2    jno         007575F9
 007575F4    call        @IntOver
 007575F9    mov         edx,dword ptr [ebp-4C]
 007575FC    mov         eax,0A
 00757601    call        007537B0
 00757606    mov         edx,dword ptr ds:[903714];gvar_00903714
 0075760C    add         edx,dword ptr ds:[903744];gvar_00903744
>00757612    jno         00757619
 00757614    call        @IntOver
 00757619    add         eax,edx
>0075761B    jno         00757622
 0075761D    call        @IntOver
 00757622    mov         dword ptr [ebp-54],eax
 00757625    mov         edx,dword ptr [ebp-4C]
 00757628    mov         eax,37
 0075762D    call        007537B0
 00757632    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757638    add         edx,dword ptr ds:[903744];gvar_00903744
>0075763E    jno         00757645
 00757640    call        @IntOver
 00757645    add         eax,edx
>00757647    jno         0075764E
 00757649    call        @IntOver
 0075764E    mov         dword ptr [ebp-58],eax
 00757651    mov         edx,dword ptr [ebp-4C]
 00757654    mov         eax,46
 00757659    call        007537B0
 0075765E    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757664    add         edx,dword ptr ds:[903744];gvar_00903744
>0075766A    jno         00757671
 0075766C    call        @IntOver
 00757671    add         eax,edx
>00757673    jno         0075767A
 00757675    call        @IntOver
 0075767A    mov         dword ptr [ebp-5C],eax
 0075767D    mov         edx,dword ptr [ebp-4C]
 00757680    mov         eax,55
 00757685    call        007537B0
 0075768A    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757690    add         edx,dword ptr ds:[903744];gvar_00903744
>00757696    jno         0075769D
 00757698    call        @IntOver
 0075769D    add         eax,edx
>0075769F    jno         007576A6
 007576A1    call        @IntOver
 007576A6    mov         dword ptr [ebp-60],eax
 007576A9    mov         edx,dword ptr [ebp-4C]
 007576AC    mov         eax,7D
 007576B1    call        007537B0
 007576B6    mov         edx,dword ptr ds:[903714];gvar_00903714
 007576BC    add         edx,dword ptr ds:[903744];gvar_00903744
>007576C2    jno         007576C9
 007576C4    call        @IntOver
 007576C9    add         eax,edx
>007576CB    jno         007576D2
 007576CD    call        @IntOver
 007576D2    mov         dword ptr [ebp-64],eax
 007576D5    xor         ebx,ebx
 007576D7    mov         eax,ebx
 007576D9    sub         eax,1
>007576DC    jb          007576E5
>007576DE    je          0075774A
>007576E0    jmp         00757848
 007576E5    lea         eax,[ebp-0C]
 007576E8    mov         edx,dword ptr ds:[7C442C];^gvar_007C2E94
 007576EE    mov         edx,dword ptr [edx]
 007576F0    call        @UStrLAsg
 007576F5    lea         eax,[ebp-10]
 007576F8    mov         edx,dword ptr ds:[7C4428];^gvar_007C2E98
 007576FE    mov         edx,dword ptr [edx]
 00757700    call        @UStrLAsg
 00757705    lea         eax,[ebp-14]
 00757708    mov         edx,dword ptr ds:[7C49FC];^gvar_007C2E9C
 0075770E    mov         edx,dword ptr [edx]
 00757710    call        @UStrLAsg
 00757715    lea         eax,[ebp-18]
 00757718    mov         edx,dword ptr ds:[7C4DC8];^gvar_007C2EA0
 0075771E    mov         edx,dword ptr [edx]
 00757720    call        @UStrLAsg
 00757725    lea         eax,[ebp-1C]
 00757728    mov         edx,dword ptr ds:[7C4338];^gvar_007C2EA4
 0075772E    mov         edx,dword ptr [edx]
 00757730    call        @UStrLAsg
 00757735    lea         eax,[ebp-20]
 00757738    mov         edx,dword ptr ds:[7C4670];^gvar_007C2EA8
 0075773E    mov         edx,dword ptr [edx]
 00757740    call        @UStrLAsg
>00757745    jmp         00757848
 0075774A    lea         edx,[ebp-288]
 00757750    mov         eax,ebx
 00757752    call        IntToStr
 00757757    mov         ecx,dword ptr [ebp-288]
 0075775D    lea         eax,[ebp-0C]
 00757760    mov         edx,759214;' '
 00757765    call        @UStrCat3
 0075776A    mov         ecx,ebx
 0075776C    cmp         ecx,0FF
>00757772    jbe         00757779
 00757774    call        @BoundErr
 00757779    xor         edx,edx
 0075777B    mov         eax,[0090376C];gvar_0090376C
 00757780    call        TFXPIO.GetADOFunction
 00757785    mov         edx,eax
 00757787    lea         ecx,[ebp-10]
 0075778A    mov         eax,[0090376C];gvar_0090376C
 0075778F    call        TFXPIO.OutFunctionToString
 00757794    mov         ecx,ebx
 00757796    cmp         ecx,0FF
>0075779C    jbe         007577A3
 0075779E    call        @BoundErr
 007577A3    xor         edx,edx
 007577A5    mov         eax,[0090376C];gvar_0090376C
 007577AA    call        TFXPIO.GetADOMode
 007577AF    mov         edx,eax
 007577B1    lea         ecx,[ebp-14]
 007577B4    mov         eax,[0090376C];gvar_0090376C
 007577B9    call        TFXPIO.ADOModeToString
 007577BE    mov         ecx,ebx
 007577C0    cmp         ecx,0FF
>007577C6    jbe         007577CD
 007577C8    call        @BoundErr
 007577CD    xor         edx,edx
 007577CF    mov         eax,[0090376C];gvar_0090376C
 007577D4    call        TFXPIO.GetADOMonitoring
 007577D9    mov         edx,eax
 007577DB    lea         ecx,[ebp-18]
 007577DE    mov         eax,[0090376C];gvar_0090376C
 007577E3    call        TFXPIO.ADOMonitoringToString
 007577E8    lea         eax,[ebp-284]
 007577EE    push        eax
 007577EF    mov         ecx,ebx
 007577F1    cmp         ecx,0FF
>007577F7    jbe         007577FE
 007577F9    call        @BoundErr
 007577FE    xor         edx,edx
 00757800    mov         eax,[0090376C];gvar_0090376C
 00757805    call        TFXPIO.GetADOCtrlGroups
 0075780A    lea         eax,[ebp-284]
 00757810    lea         edx,[ebp-1C]
 00757813    call        006955F8
 00757818    lea         eax,[ebp-1FC]
 0075781E    push        eax
 0075781F    mov         ecx,ebx
 00757821    cmp         ecx,0FF
>00757827    jbe         0075782E
 00757829    call        @BoundErr
 0075782E    xor         edx,edx
 00757830    mov         eax,[0090376C];gvar_0090376C
 00757835    call        TFXPIO.GetADODescription
 0075783A    lea         edx,[ebp-1FC]
 00757840    lea         eax,[ebp-20]
 00757843    call        @UStrFromString
 00757848    mov         eax,[009036DC];gvar_009036DC
 0075784D    cmp         eax,dword ptr [ebp-44]
>00757850    jl          00757913
 00757856    mov         eax,[009036DC];gvar_009036DC
 0075785B    cmp         eax,dword ptr [ebp-48]
>0075785E    jg          00757913
 00757864    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757869    mov         eax,dword ptr [eax+40]
 0075786C    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00757873    call        TFont.SetStyle
 00757878    mov         eax,dword ptr [ebp-0C]
 0075787B    push        eax
 0075787C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757882    mov         edx,esi
 00757884    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757889    mov         edi,dword ptr [eax]
 0075788B    call        dword ptr [edi+90]
 00757891    mov         eax,dword ptr [ebp-10]
 00757894    push        eax
 00757895    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075789B    mov         edx,dword ptr [ebp-54]
 0075789E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007578A3    mov         edi,dword ptr [eax]
 007578A5    call        dword ptr [edi+90]
 007578AB    mov         eax,dword ptr [ebp-14]
 007578AE    push        eax
 007578AF    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007578B5    mov         edx,dword ptr [ebp-58]
 007578B8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007578BD    mov         edi,dword ptr [eax]
 007578BF    call        dword ptr [edi+90]
 007578C5    mov         eax,dword ptr [ebp-18]
 007578C8    push        eax
 007578C9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007578CF    mov         edx,dword ptr [ebp-5C]
 007578D2    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007578D7    mov         edi,dword ptr [eax]
 007578D9    call        dword ptr [edi+90]
 007578DF    mov         eax,dword ptr [ebp-1C]
 007578E2    push        eax
 007578E3    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007578E9    mov         edx,dword ptr [ebp-60]
 007578EC    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007578F1    mov         edi,dword ptr [eax]
 007578F3    call        dword ptr [edi+90]
 007578F9    mov         eax,dword ptr [ebp-20]
 007578FC    push        eax
 007578FD    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757903    mov         edx,dword ptr [ebp-64]
 00757906    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075790B    mov         edi,dword ptr [eax]
 0075790D    call        dword ptr [edi+90]
 00757913    mov         eax,1
 00757918    call        00753BA0
 0075791D    inc         ebx
 0075791E    cmp         ebx,2
>00757921    jne         007576D7
 00757927    mov         dword ptr [ebp-50],1
 0075792E    mov         edx,dword ptr [ebp-50]
 00757931    cmp         edx,0FF
>00757937    jbe         0075793E
 00757939    call        @BoundErr
 0075793E    mov         eax,[0090376C];gvar_0090376C
 00757943    call        TFXPIO.GetIOCtrlrType
 00757948    sub         al,1
>0075794A    jb          00757967
>0075794C    je          00757A63
 00757952    dec         al
>00757954    je          00758637
 0075795A    dec         al
>0075795C    je          00758AB1
>00757962    jmp         00759096
 00757967    mov         eax,1
 0075796C    call        00753BA0
 00757971    mov         eax,[007C4668];^gvar_007C2E4C
 00757976    push        dword ptr [eax]
 00757978    push        759214;' '
 0075797D    lea         edx,[ebp-28C]
 00757983    mov         eax,dword ptr [ebp-50]
 00757986    call        IntToStr
 0075798B    push        dword ptr [ebp-28C]
 00757991    lea         eax,[ebp-0C]
 00757994    mov         edx,3
 00757999    call        @UStrCatN
 0075799E    mov         edx,dword ptr [ebp-50]
 007579A1    cmp         edx,0FF
>007579A7    jbe         007579AE
 007579A9    call        @BoundErr
 007579AE    mov         eax,[0090376C];gvar_0090376C
 007579B3    call        TFXPIO.GetIOCtrlrType
 007579B8    mov         edx,eax
 007579BA    lea         ecx,[ebp-10]
 007579BD    mov         eax,[0090376C];gvar_0090376C
 007579C2    call        TFXPIO.IOCTypeToString
 007579C7    mov         esi,dword ptr ds:[903714];gvar_00903714
 007579CD    mov         edx,dword ptr [ebp-4C]
 007579D0    mov         eax,14
 007579D5    call        007537B0
 007579DA    mov         edx,dword ptr ds:[903714];gvar_00903714
 007579E0    add         edx,dword ptr ds:[903744];gvar_00903744
>007579E6    jno         007579ED
 007579E8    call        @IntOver
 007579ED    add         eax,edx
>007579EF    jno         007579F6
 007579F1    call        @IntOver
 007579F6    mov         dword ptr [ebp-54],eax
 007579F9    mov         eax,[009036DC];gvar_009036DC
 007579FE    cmp         eax,dword ptr [ebp-44]
>00757A01    jl          00757A54
 00757A03    mov         eax,[009036DC];gvar_009036DC
 00757A08    cmp         eax,dword ptr [ebp-48]
>00757A0B    jg          00757A54
 00757A0D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757A12    mov         eax,dword ptr [eax+40]
 00757A15    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00757A1C    call        TFont.SetStyle
 00757A21    mov         eax,dword ptr [ebp-0C]
 00757A24    push        eax
 00757A25    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757A2B    mov         edx,esi
 00757A2D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757A32    mov         ebx,dword ptr [eax]
 00757A34    call        dword ptr [ebx+90]
 00757A3A    mov         eax,dword ptr [ebp-10]
 00757A3D    push        eax
 00757A3E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757A44    mov         edx,dword ptr [ebp-54]
 00757A47    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757A4C    mov         ebx,dword ptr [eax]
 00757A4E    call        dword ptr [ebx+90]
 00757A54    mov         eax,1
 00757A59    call        00753BA0
>00757A5E    jmp         00759096
 00757A63    mov         eax,7
 00757A68    call        00753BA0
 00757A6D    mov         eax,[007C4668];^gvar_007C2E4C
 00757A72    push        dword ptr [eax]
 00757A74    push        759214;' '
 00757A79    lea         edx,[ebp-290]
 00757A7F    mov         eax,dword ptr [ebp-50]
 00757A82    call        IntToStr
 00757A87    push        dword ptr [ebp-290]
 00757A8D    lea         eax,[ebp-0C]
 00757A90    mov         edx,3
 00757A95    call        @UStrCatN
 00757A9A    mov         edx,dword ptr [ebp-50]
 00757A9D    cmp         edx,0FF
>00757AA3    jbe         00757AAA
 00757AA5    call        @BoundErr
 00757AAA    mov         eax,[0090376C];gvar_0090376C
 00757AAF    call        TFXPIO.GetIOCtrlrType
 00757AB4    mov         edx,eax
 00757AB6    lea         ecx,[ebp-10]
 00757AB9    mov         eax,[0090376C];gvar_0090376C
 00757ABE    call        TFXPIO.IOCTypeToString
 00757AC3    mov         esi,dword ptr ds:[903714];gvar_00903714
 00757AC9    mov         edx,dword ptr [ebp-4C]
 00757ACC    mov         eax,14
 00757AD1    call        007537B0
 00757AD6    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757ADC    add         edx,dword ptr ds:[903744];gvar_00903744
>00757AE2    jno         00757AE9
 00757AE4    call        @IntOver
 00757AE9    add         eax,edx
>00757AEB    jno         00757AF2
 00757AED    call        @IntOver
 00757AF2    mov         dword ptr [ebp-54],eax
 00757AF5    mov         eax,[009036DC];gvar_009036DC
 00757AFA    cmp         eax,dword ptr [ebp-44]
>00757AFD    jl          00757B50
 00757AFF    mov         eax,[009036DC];gvar_009036DC
 00757B04    cmp         eax,dword ptr [ebp-48]
>00757B07    jg          00757B50
 00757B09    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757B0E    mov         eax,dword ptr [eax+40]
 00757B11    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00757B18    call        TFont.SetStyle
 00757B1D    mov         eax,dword ptr [ebp-0C]
 00757B20    push        eax
 00757B21    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757B27    mov         edx,esi
 00757B29    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757B2E    mov         ebx,dword ptr [eax]
 00757B30    call        dword ptr [ebx+90]
 00757B36    mov         eax,dword ptr [ebp-10]
 00757B39    push        eax
 00757B3A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757B40    mov         edx,dword ptr [ebp-54]
 00757B43    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757B48    mov         ebx,dword ptr [eax]
 00757B4A    call        dword ptr [ebx+90]
 00757B50    mov         eax,6
 00757B55    call        00753BA0
 00757B5A    lea         eax,[ebp-0C]
 00757B5D    mov         edx,dword ptr ds:[7C4D50];^gvar_007C2E54
 00757B63    mov         edx,dword ptr [edx]
 00757B65    call        @UStrLAsg
 00757B6A    mov         esi,dword ptr ds:[903714];gvar_00903714
 00757B70    add         esi,dword ptr ds:[903744];gvar_00903744
>00757B76    jno         00757B7D
 00757B78    call        @IntOver
 00757B7D    mov         eax,[009036DC];gvar_009036DC
 00757B82    cmp         eax,dword ptr [ebp-44]
>00757B85    jl          00757BBE
 00757B87    mov         eax,[009036DC];gvar_009036DC
 00757B8C    cmp         eax,dword ptr [ebp-48]
>00757B8F    jg          00757BBE
 00757B91    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757B96    mov         eax,dword ptr [eax+40]
 00757B99    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00757BA0    call        TFont.SetStyle
 00757BA5    mov         eax,dword ptr [ebp-0C]
 00757BA8    push        eax
 00757BA9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757BAF    mov         edx,esi
 00757BB1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757BB6    mov         ebx,dword ptr [eax]
 00757BB8    call        dword ptr [ebx+90]
 00757BBE    mov         eax,5
 00757BC3    call        00753BA0
 00757BC8    mov         esi,dword ptr ds:[903714];gvar_00903714
 00757BCE    add         esi,dword ptr ds:[903744];gvar_00903744
>00757BD4    jno         00757BDB
 00757BD6    call        @IntOver
 00757BDB    mov         edx,dword ptr [ebp-4C]
 00757BDE    mov         eax,0A
 00757BE3    call        007537B0
 00757BE8    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757BEE    add         edx,dword ptr ds:[903744];gvar_00903744
>00757BF4    jno         00757BFB
 00757BF6    call        @IntOver
 00757BFB    add         eax,edx
>00757BFD    jno         00757C04
 00757BFF    call        @IntOver
 00757C04    mov         dword ptr [ebp-54],eax
 00757C07    mov         edx,dword ptr [ebp-4C]
 00757C0A    mov         eax,37
 00757C0F    call        007537B0
 00757C14    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757C1A    add         edx,dword ptr ds:[903744];gvar_00903744
>00757C20    jno         00757C27
 00757C22    call        @IntOver
 00757C27    add         eax,edx
>00757C29    jno         00757C30
 00757C2B    call        @IntOver
 00757C30    mov         dword ptr [ebp-58],eax
 00757C33    mov         edx,dword ptr [ebp-4C]
 00757C36    mov         eax,46
 00757C3B    call        007537B0
 00757C40    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757C46    add         edx,dword ptr ds:[903744];gvar_00903744
>00757C4C    jno         00757C53
 00757C4E    call        @IntOver
 00757C53    add         eax,edx
>00757C55    jno         00757C5C
 00757C57    call        @IntOver
 00757C5C    mov         dword ptr [ebp-5C],eax
 00757C5F    mov         edx,dword ptr [ebp-4C]
 00757C62    mov         eax,55
 00757C67    call        007537B0
 00757C6C    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757C72    add         edx,dword ptr ds:[903744];gvar_00903744
>00757C78    jno         00757C7F
 00757C7A    call        @IntOver
 00757C7F    add         eax,edx
>00757C81    jno         00757C88
 00757C83    call        @IntOver
 00757C88    mov         dword ptr [ebp-60],eax
 00757C8B    mov         edx,dword ptr [ebp-4C]
 00757C8E    mov         eax,64
 00757C93    call        007537B0
 00757C98    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757C9E    add         edx,dword ptr ds:[903744];gvar_00903744
>00757CA4    jno         00757CAB
 00757CA6    call        @IntOver
 00757CAB    add         eax,edx
>00757CAD    jno         00757CB4
 00757CAF    call        @IntOver
 00757CB4    mov         dword ptr [ebp-64],eax
 00757CB7    xor         ebx,ebx
 00757CB9    mov         eax,ebx
 00757CBB    sub         eax,1
>00757CBE    jb          00757CCA
 00757CC0    sub         eax,4
>00757CC3    jb          00757D2F
>00757CC5    jmp         00757E65
 00757CCA    lea         eax,[ebp-0C]
 00757CCD    mov         edx,dword ptr ds:[7C4640];^gvar_007C2E68
 00757CD3    mov         edx,dword ptr [edx]
 00757CD5    call        @UStrLAsg
 00757CDA    lea         eax,[ebp-10]
 00757CDD    mov         edx,dword ptr ds:[7C4630];^gvar_007C2E6C
 00757CE3    mov         edx,dword ptr [edx]
 00757CE5    call        @UStrLAsg
 00757CEA    lea         eax,[ebp-14]
 00757CED    mov         edx,dword ptr ds:[7C42F8];^gvar_007C2E70
 00757CF3    mov         edx,dword ptr [edx]
 00757CF5    call        @UStrLAsg
 00757CFA    lea         eax,[ebp-18]
 00757CFD    mov         edx,dword ptr ds:[7C47A4];^gvar_007C2E74
 00757D03    mov         edx,dword ptr [edx]
 00757D05    call        @UStrLAsg
 00757D0A    lea         eax,[ebp-1C]
 00757D0D    mov         edx,dword ptr ds:[7C482C];^gvar_007C2E78
 00757D13    mov         edx,dword ptr [edx]
 00757D15    call        @UStrLAsg
 00757D1A    lea         eax,[ebp-20]
 00757D1D    mov         edx,dword ptr ds:[7C48A4];^gvar_007C2E80
 00757D23    mov         edx,dword ptr [edx]
 00757D25    call        @UStrLAsg
>00757D2A    jmp         00757E65
 00757D2F    lea         edx,[ebp-294]
 00757D35    mov         eax,ebx
 00757D37    call        IntToStr
 00757D3C    mov         ecx,dword ptr [ebp-294]
 00757D42    lea         eax,[ebp-0C]
 00757D45    mov         edx,759214;' '
 00757D4A    call        @UStrCat3
 00757D4F    mov         ecx,ebx
 00757D51    cmp         ecx,0FF
>00757D57    jbe         00757D5E
 00757D59    call        @BoundErr
 00757D5E    mov         edx,dword ptr [ebp-50]
 00757D61    cmp         edx,0FF
>00757D67    jbe         00757D6E
 00757D69    call        @BoundErr
 00757D6E    mov         eax,[0090376C];gvar_0090376C
 00757D73    call        TFXPIO.GetCCIFunction
 00757D78    mov         edx,eax
 00757D7A    lea         ecx,[ebp-10]
 00757D7D    mov         eax,[0090376C];gvar_0090376C
 00757D82    call        TFXPIO.CCIFunctionToString
 00757D87    mov         ecx,ebx
 00757D89    cmp         ecx,0FF
>00757D8F    jbe         00757D96
 00757D91    call        @BoundErr
 00757D96    mov         edx,dword ptr [ebp-50]
 00757D99    cmp         edx,0FF
>00757D9F    jbe         00757DA6
 00757DA1    call        @BoundErr
 00757DA6    mov         eax,[0090376C];gvar_0090376C
 00757DAB    call        TFXPIO.GetCCIType
 00757DB0    mov         edx,eax
 00757DB2    lea         ecx,[ebp-14]
 00757DB5    mov         eax,[0090376C];gvar_0090376C
 00757DBA    call        TFXPIO.CCITypeToString
 00757DBF    mov         ecx,ebx
 00757DC1    cmp         ecx,0FF
>00757DC7    jbe         00757DCE
 00757DC9    call        @BoundErr
 00757DCE    mov         edx,dword ptr [ebp-50]
 00757DD1    cmp         edx,0FF
>00757DD7    jbe         00757DDE
 00757DD9    call        @BoundErr
 00757DDE    mov         eax,[0090376C];gvar_0090376C
 00757DE3    call        TFXPIO.GetCCICtrlGroupA
 00757DE8    movzx       eax,ax
 00757DEB    lea         edx,[ebp-18]
 00757DEE    call        IntToStr
 00757DF3    mov         ecx,ebx
 00757DF5    cmp         ecx,0FF
>00757DFB    jbe         00757E02
 00757DFD    call        @BoundErr
 00757E02    mov         edx,dword ptr [ebp-50]
 00757E05    cmp         edx,0FF
>00757E0B    jbe         00757E12
 00757E0D    call        @BoundErr
 00757E12    mov         eax,[0090376C];gvar_0090376C
 00757E17    call        TFXPIO.GetCCICtrlGroupB
 00757E1C    movzx       eax,ax
 00757E1F    lea         edx,[ebp-1C]
 00757E22    call        IntToStr
 00757E27    lea         eax,[ebp-1FC]
 00757E2D    push        eax
 00757E2E    mov         ecx,ebx
 00757E30    cmp         ecx,0FF
>00757E36    jbe         00757E3D
 00757E38    call        @BoundErr
 00757E3D    mov         edx,dword ptr [ebp-50]
 00757E40    cmp         edx,0FF
>00757E46    jbe         00757E4D
 00757E48    call        @BoundErr
 00757E4D    mov         eax,[0090376C];gvar_0090376C
 00757E52    call        TFXPIO.GetCCIDescription
 00757E57    lea         edx,[ebp-1FC]
 00757E5D    lea         eax,[ebp-20]
 00757E60    call        @UStrFromString
 00757E65    mov         eax,[009036DC];gvar_009036DC
 00757E6A    cmp         eax,dword ptr [ebp-44]
>00757E6D    jl          00757F30
 00757E73    mov         eax,[009036DC];gvar_009036DC
 00757E78    cmp         eax,dword ptr [ebp-48]
>00757E7B    jg          00757F30
 00757E81    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757E86    mov         eax,dword ptr [eax+40]
 00757E89    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00757E90    call        TFont.SetStyle
 00757E95    mov         eax,dword ptr [ebp-0C]
 00757E98    push        eax
 00757E99    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757E9F    mov         edx,esi
 00757EA1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757EA6    mov         edi,dword ptr [eax]
 00757EA8    call        dword ptr [edi+90]
 00757EAE    mov         eax,dword ptr [ebp-10]
 00757EB1    push        eax
 00757EB2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757EB8    mov         edx,dword ptr [ebp-54]
 00757EBB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757EC0    mov         edi,dword ptr [eax]
 00757EC2    call        dword ptr [edi+90]
 00757EC8    mov         eax,dword ptr [ebp-14]
 00757ECB    push        eax
 00757ECC    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757ED2    mov         edx,dword ptr [ebp-58]
 00757ED5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757EDA    mov         edi,dword ptr [eax]
 00757EDC    call        dword ptr [edi+90]
 00757EE2    mov         eax,dword ptr [ebp-18]
 00757EE5    push        eax
 00757EE6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757EEC    mov         edx,dword ptr [ebp-5C]
 00757EEF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757EF4    mov         edi,dword ptr [eax]
 00757EF6    call        dword ptr [edi+90]
 00757EFC    mov         eax,dword ptr [ebp-1C]
 00757EFF    push        eax
 00757F00    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757F06    mov         edx,dword ptr [ebp-60]
 00757F09    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757F0E    mov         edi,dword ptr [eax]
 00757F10    call        dword ptr [edi+90]
 00757F16    mov         eax,dword ptr [ebp-20]
 00757F19    push        eax
 00757F1A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757F20    mov         edx,dword ptr [ebp-64]
 00757F23    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757F28    mov         edi,dword ptr [eax]
 00757F2A    call        dword ptr [edi+90]
 00757F30    mov         eax,1
 00757F35    call        00753BA0
 00757F3A    inc         ebx
 00757F3B    cmp         ebx,5
>00757F3E    jne         00757CB9
 00757F44    mov         eax,4
 00757F49    call        00753BA0
 00757F4E    lea         eax,[ebp-0C]
 00757F51    mov         edx,dword ptr ds:[7C4768];^gvar_007C2E58
 00757F57    mov         edx,dword ptr [edx]
 00757F59    call        @UStrLAsg
 00757F5E    mov         esi,dword ptr ds:[903714];gvar_00903714
 00757F64    add         esi,dword ptr ds:[903744];gvar_00903744
>00757F6A    jno         00757F71
 00757F6C    call        @IntOver
 00757F71    mov         eax,[009036DC];gvar_009036DC
 00757F76    cmp         eax,dword ptr [ebp-44]
>00757F79    jl          00757FB2
 00757F7B    mov         eax,[009036DC];gvar_009036DC
 00757F80    cmp         eax,dword ptr [ebp-48]
>00757F83    jg          00757FB2
 00757F85    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757F8A    mov         eax,dword ptr [eax+40]
 00757F8D    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00757F94    call        TFont.SetStyle
 00757F99    mov         eax,dword ptr [ebp-0C]
 00757F9C    push        eax
 00757F9D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00757FA3    mov         edx,esi
 00757FA5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00757FAA    mov         ebx,dword ptr [eax]
 00757FAC    call        dword ptr [ebx+90]
 00757FB2    mov         eax,3
 00757FB7    call        00753BA0
 00757FBC    mov         esi,dword ptr ds:[903714];gvar_00903714
 00757FC2    add         esi,dword ptr ds:[903744];gvar_00903744
>00757FC8    jno         00757FCF
 00757FCA    call        @IntOver
 00757FCF    mov         edx,dword ptr [ebp-4C]
 00757FD2    mov         eax,0A
 00757FD7    call        007537B0
 00757FDC    mov         edx,dword ptr ds:[903714];gvar_00903714
 00757FE2    add         edx,dword ptr ds:[903744];gvar_00903744
>00757FE8    jno         00757FEF
 00757FEA    call        @IntOver
 00757FEF    add         eax,edx
>00757FF1    jno         00757FF8
 00757FF3    call        @IntOver
 00757FF8    mov         dword ptr [ebp-54],eax
 00757FFB    mov         edx,dword ptr [ebp-4C]
 00757FFE    mov         eax,37
 00758003    call        007537B0
 00758008    mov         edx,dword ptr ds:[903714];gvar_00903714
 0075800E    add         edx,dword ptr ds:[903744];gvar_00903744
>00758014    jno         0075801B
 00758016    call        @IntOver
 0075801B    add         eax,edx
>0075801D    jno         00758024
 0075801F    call        @IntOver
 00758024    mov         dword ptr [ebp-58],eax
 00758027    mov         edx,dword ptr [ebp-4C]
 0075802A    mov         eax,64
 0075802F    call        007537B0
 00758034    mov         edx,dword ptr ds:[903714];gvar_00903714
 0075803A    add         edx,dword ptr ds:[903744];gvar_00903744
>00758040    jno         00758047
 00758042    call        @IntOver
 00758047    add         eax,edx
>00758049    jno         00758050
 0075804B    call        @IntOver
 00758050    mov         dword ptr [ebp-5C],eax
 00758053    xor         ebx,ebx
 00758055    mov         eax,ebx
 00758057    sub         eax,1
>0075805A    jb          00758066
 0075805C    sub         eax,2
>0075805F    jb          007580AB
>00758061    jmp         0075817F
 00758066    lea         eax,[ebp-0C]
 00758069    mov         edx,dword ptr ds:[7C4DC4];^gvar_007C2E84
 0075806F    mov         edx,dword ptr [edx]
 00758071    call        @UStrLAsg
 00758076    lea         eax,[ebp-10]
 00758079    mov         edx,dword ptr ds:[7C4DC0];^gvar_007C2E88
 0075807F    mov         edx,dword ptr [edx]
 00758081    call        @UStrLAsg
 00758086    lea         eax,[ebp-14]
 00758089    mov         edx,dword ptr ds:[7C4CAC];^gvar_007C2E8C
 0075808F    mov         edx,dword ptr [edx]
 00758091    call        @UStrLAsg
 00758096    lea         eax,[ebp-18]
 00758099    mov         edx,dword ptr ds:[7C4274];^gvar_007C2E90
 0075809F    mov         edx,dword ptr [edx]
 007580A1    call        @UStrLAsg
>007580A6    jmp         0075817F
 007580AB    lea         edx,[ebp-298]
 007580B1    mov         eax,ebx
 007580B3    call        IntToStr
 007580B8    mov         ecx,dword ptr [ebp-298]
 007580BE    lea         eax,[ebp-0C]
 007580C1    mov         edx,759214;' '
 007580C6    call        @UStrCat3
 007580CB    mov         ecx,ebx
 007580CD    cmp         ecx,0FF
>007580D3    jbe         007580DA
 007580D5    call        @BoundErr
 007580DA    mov         edx,dword ptr [ebp-50]
 007580DD    cmp         edx,0FF
>007580E3    jbe         007580EA
 007580E5    call        @BoundErr
 007580EA    mov         eax,[0090376C];gvar_0090376C
 007580EF    call        TFXPIO.GetCCOFunction
 007580F4    mov         edx,eax
 007580F6    lea         ecx,[ebp-10]
 007580F9    mov         eax,[0090376C];gvar_0090376C
 007580FE    call        TFXPIO.OutFunctionToString
 00758103    lea         eax,[ebp-284]
 00758109    push        eax
 0075810A    mov         ecx,ebx
 0075810C    cmp         ecx,0FF
>00758112    jbe         00758119
 00758114    call        @BoundErr
 00758119    mov         edx,dword ptr [ebp-50]
 0075811C    cmp         edx,0FF
>00758122    jbe         00758129
 00758124    call        @BoundErr
 00758129    mov         eax,[0090376C];gvar_0090376C
 0075812E    call        TFXPIO.GetCCOCtrlGroups
 00758133    lea         eax,[ebp-284]
 00758139    lea         edx,[ebp-14]
 0075813C    call        006955F8
 00758141    lea         eax,[ebp-1FC]
 00758147    push        eax
 00758148    mov         ecx,ebx
 0075814A    cmp         ecx,0FF
>00758150    jbe         00758157
 00758152    call        @BoundErr
 00758157    mov         edx,dword ptr [ebp-50]
 0075815A    cmp         edx,0FF
>00758160    jbe         00758167
 00758162    call        @BoundErr
 00758167    mov         eax,[0090376C];gvar_0090376C
 0075816C    call        TFXPIO.GetCCODescription
 00758171    lea         edx,[ebp-1FC]
 00758177    lea         eax,[ebp-18]
 0075817A    call        @UStrFromString
 0075817F    mov         eax,[009036DC];gvar_009036DC
 00758184    cmp         eax,dword ptr [ebp-44]
>00758187    jl          00758212
 0075818D    mov         eax,[009036DC];gvar_009036DC
 00758192    cmp         eax,dword ptr [ebp-48]
>00758195    jg          00758212
 00758197    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075819C    mov         eax,dword ptr [eax+40]
 0075819F    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 007581A6    call        TFont.SetStyle
 007581AB    mov         eax,dword ptr [ebp-0C]
 007581AE    push        eax
 007581AF    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007581B5    mov         edx,esi
 007581B7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007581BC    mov         edi,dword ptr [eax]
 007581BE    call        dword ptr [edi+90]
 007581C4    mov         eax,dword ptr [ebp-10]
 007581C7    push        eax
 007581C8    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007581CE    mov         edx,dword ptr [ebp-54]
 007581D1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007581D6    mov         edi,dword ptr [eax]
 007581D8    call        dword ptr [edi+90]
 007581DE    mov         eax,dword ptr [ebp-14]
 007581E1    push        eax
 007581E2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007581E8    mov         edx,dword ptr [ebp-58]
 007581EB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007581F0    mov         edi,dword ptr [eax]
 007581F2    call        dword ptr [edi+90]
 007581F8    mov         eax,dword ptr [ebp-18]
 007581FB    push        eax
 007581FC    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758202    mov         edx,dword ptr [ebp-5C]
 00758205    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075820A    mov         edi,dword ptr [eax]
 0075820C    call        dword ptr [edi+90]
 00758212    mov         eax,1
 00758217    call        00753BA0
 0075821C    inc         ebx
 0075821D    cmp         ebx,3
>00758220    jne         00758055
 00758226    mov         eax,6
 0075822B    call        00753BA0
 00758230    lea         eax,[ebp-0C]
 00758233    mov         edx,dword ptr ds:[7C4B6C];^gvar_007C2E60
 00758239    mov         edx,dword ptr [edx]
 0075823B    call        @UStrLAsg
 00758240    mov         esi,dword ptr ds:[903714];gvar_00903714
 00758246    add         esi,dword ptr ds:[903744];gvar_00903744
>0075824C    jno         00758253
 0075824E    call        @IntOver
 00758253    mov         eax,[009036DC];gvar_009036DC
 00758258    cmp         eax,dword ptr [ebp-44]
>0075825B    jl          00758294
 0075825D    mov         eax,[009036DC];gvar_009036DC
 00758262    cmp         eax,dword ptr [ebp-48]
>00758265    jg          00758294
 00758267    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075826C    mov         eax,dword ptr [eax+40]
 0075826F    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00758276    call        TFont.SetStyle
 0075827B    mov         eax,dword ptr [ebp-0C]
 0075827E    push        eax
 0075827F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758285    mov         edx,esi
 00758287    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075828C    mov         ebx,dword ptr [eax]
 0075828E    call        dword ptr [ebx+90]
 00758294    mov         eax,5
 00758299    call        00753BA0
 0075829E    mov         esi,dword ptr ds:[903714];gvar_00903714
 007582A4    add         esi,dword ptr ds:[903744];gvar_00903744
>007582AA    jno         007582B1
 007582AC    call        @IntOver
 007582B1    mov         edx,dword ptr [ebp-4C]
 007582B4    mov         eax,0A
 007582B9    call        007537B0
 007582BE    mov         edx,dword ptr ds:[903714];gvar_00903714
 007582C4    add         edx,dword ptr ds:[903744];gvar_00903744
>007582CA    jno         007582D1
 007582CC    call        @IntOver
 007582D1    add         eax,edx
>007582D3    jno         007582DA
 007582D5    call        @IntOver
 007582DA    mov         dword ptr [ebp-54],eax
 007582DD    mov         edx,dword ptr [ebp-4C]
 007582E0    mov         eax,37
 007582E5    call        007537B0
 007582EA    mov         edx,dword ptr ds:[903714];gvar_00903714
 007582F0    add         edx,dword ptr ds:[903744];gvar_00903744
>007582F6    jno         007582FD
 007582F8    call        @IntOver
 007582FD    add         eax,edx
>007582FF    jno         00758306
 00758301    call        @IntOver
 00758306    mov         dword ptr [ebp-58],eax
 00758309    mov         edx,dword ptr [ebp-4C]
 0075830C    mov         eax,46
 00758311    call        007537B0
 00758316    mov         edx,dword ptr ds:[903714];gvar_00903714
 0075831C    add         edx,dword ptr ds:[903744];gvar_00903744
>00758322    jno         00758329
 00758324    call        @IntOver
 00758329    add         eax,edx
>0075832B    jno         00758332
 0075832D    call        @IntOver
 00758332    mov         dword ptr [ebp-5C],eax
 00758335    mov         edx,dword ptr [ebp-4C]
 00758338    mov         eax,55
 0075833D    call        007537B0
 00758342    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758348    add         edx,dword ptr ds:[903744];gvar_00903744
>0075834E    jno         00758355
 00758350    call        @IntOver
 00758355    add         eax,edx
>00758357    jno         0075835E
 00758359    call        @IntOver
 0075835E    mov         dword ptr [ebp-60],eax
 00758361    mov         edx,dword ptr [ebp-4C]
 00758364    mov         eax,7D
 00758369    call        007537B0
 0075836E    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758374    add         edx,dword ptr ds:[903744];gvar_00903744
>0075837A    jno         00758381
 0075837C    call        @IntOver
 00758381    add         eax,edx
>00758383    jno         0075838A
 00758385    call        @IntOver
 0075838A    mov         dword ptr [ebp-64],eax
 0075838D    xor         ebx,ebx
 0075838F    mov         eax,ebx
 00758391    sub         eax,1
>00758394    jb          007583A0
 00758396    sub         eax,4
>00758399    jb          00758405
>0075839B    jmp         00758549
 007583A0    lea         eax,[ebp-0C]
 007583A3    mov         edx,dword ptr ds:[7C442C];^gvar_007C2E94
 007583A9    mov         edx,dword ptr [edx]
 007583AB    call        @UStrLAsg
 007583B0    lea         eax,[ebp-10]
 007583B3    mov         edx,dword ptr ds:[7C4428];^gvar_007C2E98
 007583B9    mov         edx,dword ptr [edx]
 007583BB    call        @UStrLAsg
 007583C0    lea         eax,[ebp-14]
 007583C3    mov         edx,dword ptr ds:[7C49FC];^gvar_007C2E9C
 007583C9    mov         edx,dword ptr [edx]
 007583CB    call        @UStrLAsg
 007583D0    lea         eax,[ebp-18]
 007583D3    mov         edx,dword ptr ds:[7C4DC8];^gvar_007C2EA0
 007583D9    mov         edx,dword ptr [edx]
 007583DB    call        @UStrLAsg
 007583E0    lea         eax,[ebp-1C]
 007583E3    mov         edx,dword ptr ds:[7C4338];^gvar_007C2EA4
 007583E9    mov         edx,dword ptr [edx]
 007583EB    call        @UStrLAsg
 007583F0    lea         eax,[ebp-20]
 007583F3    mov         edx,dword ptr ds:[7C4670];^gvar_007C2EA8
 007583F9    mov         edx,dword ptr [edx]
 007583FB    call        @UStrLAsg
>00758400    jmp         00758549
 00758405    lea         edx,[ebp-29C]
 0075840B    mov         eax,ebx
 0075840D    call        IntToStr
 00758412    mov         ecx,dword ptr [ebp-29C]
 00758418    lea         eax,[ebp-0C]
 0075841B    mov         edx,759214;' '
 00758420    call        @UStrCat3
 00758425    mov         ecx,ebx
 00758427    cmp         ecx,0FF
>0075842D    jbe         00758434
 0075842F    call        @BoundErr
 00758434    mov         edx,dword ptr [ebp-50]
 00758437    cmp         edx,0FF
>0075843D    jbe         00758444
 0075843F    call        @BoundErr
 00758444    mov         eax,[0090376C];gvar_0090376C
 00758449    call        TFXPIO.GetADOFunction
 0075844E    mov         edx,eax
 00758450    lea         ecx,[ebp-10]
 00758453    mov         eax,[0090376C];gvar_0090376C
 00758458    call        TFXPIO.OutFunctionToString
 0075845D    mov         ecx,ebx
 0075845F    cmp         ecx,0FF
>00758465    jbe         0075846C
 00758467    call        @BoundErr
 0075846C    mov         edx,dword ptr [ebp-50]
 0075846F    cmp         edx,0FF
>00758475    jbe         0075847C
 00758477    call        @BoundErr
 0075847C    mov         eax,[0090376C];gvar_0090376C
 00758481    call        TFXPIO.GetADOMode
 00758486    mov         edx,eax
 00758488    lea         ecx,[ebp-14]
 0075848B    mov         eax,[0090376C];gvar_0090376C
 00758490    call        TFXPIO.ADOModeToString
 00758495    mov         ecx,ebx
 00758497    cmp         ecx,0FF
>0075849D    jbe         007584A4
 0075849F    call        @BoundErr
 007584A4    mov         edx,dword ptr [ebp-50]
 007584A7    cmp         edx,0FF
>007584AD    jbe         007584B4
 007584AF    call        @BoundErr
 007584B4    mov         eax,[0090376C];gvar_0090376C
 007584B9    call        TFXPIO.GetADOMonitoring
 007584BE    mov         edx,eax
 007584C0    lea         ecx,[ebp-18]
 007584C3    mov         eax,[0090376C];gvar_0090376C
 007584C8    call        TFXPIO.ADOMonitoringToString
 007584CD    lea         eax,[ebp-284]
 007584D3    push        eax
 007584D4    mov         ecx,ebx
 007584D6    cmp         ecx,0FF
>007584DC    jbe         007584E3
 007584DE    call        @BoundErr
 007584E3    mov         edx,dword ptr [ebp-50]
 007584E6    cmp         edx,0FF
>007584EC    jbe         007584F3
 007584EE    call        @BoundErr
 007584F3    mov         eax,[0090376C];gvar_0090376C
 007584F8    call        TFXPIO.GetADOCtrlGroups
 007584FD    lea         eax,[ebp-284]
 00758503    lea         edx,[ebp-1C]
 00758506    call        006955F8
 0075850B    lea         eax,[ebp-1FC]
 00758511    push        eax
 00758512    mov         ecx,ebx
 00758514    cmp         ecx,0FF
>0075851A    jbe         00758521
 0075851C    call        @BoundErr
 00758521    mov         edx,dword ptr [ebp-50]
 00758524    cmp         edx,0FF
>0075852A    jbe         00758531
 0075852C    call        @BoundErr
 00758531    mov         eax,[0090376C];gvar_0090376C
 00758536    call        TFXPIO.GetADODescription
 0075853B    lea         edx,[ebp-1FC]
 00758541    lea         eax,[ebp-20]
 00758544    call        @UStrFromString
 00758549    mov         eax,[009036DC];gvar_009036DC
 0075854E    cmp         eax,dword ptr [ebp-44]
>00758551    jl          00758614
 00758557    mov         eax,[009036DC];gvar_009036DC
 0075855C    cmp         eax,dword ptr [ebp-48]
>0075855F    jg          00758614
 00758565    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075856A    mov         eax,dword ptr [eax+40]
 0075856D    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00758574    call        TFont.SetStyle
 00758579    mov         eax,dword ptr [ebp-0C]
 0075857C    push        eax
 0075857D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758583    mov         edx,esi
 00758585    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075858A    mov         edi,dword ptr [eax]
 0075858C    call        dword ptr [edi+90]
 00758592    mov         eax,dword ptr [ebp-10]
 00758595    push        eax
 00758596    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075859C    mov         edx,dword ptr [ebp-54]
 0075859F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007585A4    mov         edi,dword ptr [eax]
 007585A6    call        dword ptr [edi+90]
 007585AC    mov         eax,dword ptr [ebp-14]
 007585AF    push        eax
 007585B0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007585B6    mov         edx,dword ptr [ebp-58]
 007585B9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007585BE    mov         edi,dword ptr [eax]
 007585C0    call        dword ptr [edi+90]
 007585C6    mov         eax,dword ptr [ebp-18]
 007585C9    push        eax
 007585CA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007585D0    mov         edx,dword ptr [ebp-5C]
 007585D3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007585D8    mov         edi,dword ptr [eax]
 007585DA    call        dword ptr [edi+90]
 007585E0    mov         eax,dword ptr [ebp-1C]
 007585E3    push        eax
 007585E4    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007585EA    mov         edx,dword ptr [ebp-60]
 007585ED    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007585F2    mov         edi,dword ptr [eax]
 007585F4    call        dword ptr [edi+90]
 007585FA    mov         eax,dword ptr [ebp-20]
 007585FD    push        eax
 007585FE    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758604    mov         edx,dword ptr [ebp-64]
 00758607    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075860C    mov         edi,dword ptr [eax]
 0075860E    call        dword ptr [edi+90]
 00758614    mov         eax,1
 00758619    call        00753BA0
 0075861E    inc         ebx
 0075861F    cmp         ebx,5
>00758622    jne         0075838F
 00758628    mov         eax,1
 0075862D    call        00753BA0
>00758632    jmp         00759096
 00758637    mov         eax,13
 0075863C    call        00753BA0
 00758641    mov         eax,[007C4668];^gvar_007C2E4C
 00758646    push        dword ptr [eax]
 00758648    push        759214;' '
 0075864D    lea         edx,[ebp-2A0]
 00758653    mov         eax,dword ptr [ebp-50]
 00758656    call        IntToStr
 0075865B    push        dword ptr [ebp-2A0]
 00758661    lea         eax,[ebp-0C]
 00758664    mov         edx,3
 00758669    call        @UStrCatN
 0075866E    mov         edx,dword ptr [ebp-50]
 00758671    cmp         edx,0FF
>00758677    jbe         0075867E
 00758679    call        @BoundErr
 0075867E    mov         eax,[0090376C];gvar_0090376C
 00758683    call        TFXPIO.GetIOCtrlrType
 00758688    mov         edx,eax
 0075868A    lea         ecx,[ebp-10]
 0075868D    mov         eax,[0090376C];gvar_0090376C
 00758692    call        TFXPIO.IOCTypeToString
 00758697    mov         esi,dword ptr ds:[903714];gvar_00903714
 0075869D    mov         edx,dword ptr [ebp-4C]
 007586A0    mov         eax,14
 007586A5    call        007537B0
 007586AA    mov         edx,dword ptr ds:[903714];gvar_00903714
 007586B0    add         edx,dword ptr ds:[903744];gvar_00903744
>007586B6    jno         007586BD
 007586B8    call        @IntOver
 007586BD    add         eax,edx
>007586BF    jno         007586C6
 007586C1    call        @IntOver
 007586C6    mov         dword ptr [ebp-54],eax
 007586C9    mov         eax,[009036DC];gvar_009036DC
 007586CE    cmp         eax,dword ptr [ebp-44]
>007586D1    jl          00758724
 007586D3    mov         eax,[009036DC];gvar_009036DC
 007586D8    cmp         eax,dword ptr [ebp-48]
>007586DB    jg          00758724
 007586DD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007586E2    mov         eax,dword ptr [eax+40]
 007586E5    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 007586EC    call        TFont.SetStyle
 007586F1    mov         eax,dword ptr [ebp-0C]
 007586F4    push        eax
 007586F5    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007586FB    mov         edx,esi
 007586FD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758702    mov         ebx,dword ptr [eax]
 00758704    call        dword ptr [ebx+90]
 0075870A    mov         eax,dword ptr [ebp-10]
 0075870D    push        eax
 0075870E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758714    mov         edx,dword ptr [ebp-54]
 00758717    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075871C    mov         ebx,dword ptr [eax]
 0075871E    call        dword ptr [ebx+90]
 00758724    mov         eax,1
 00758729    call        00753BA0
 0075872E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758733    mov         eax,dword ptr [eax+40]
 00758736    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 0075873D    call        TFont.SetStyle
 00758742    lea         eax,[ebp-0C]
 00758745    mov         edx,dword ptr ds:[7C4768];^gvar_007C2E58
 0075874B    mov         edx,dword ptr [edx]
 0075874D    call        @UStrLAsg
 00758752    mov         esi,dword ptr ds:[903714];gvar_00903714
 00758758    add         esi,dword ptr ds:[903744];gvar_00903744
>0075875E    jno         00758765
 00758760    call        @IntOver
 00758765    mov         eax,[009036DC];gvar_009036DC
 0075876A    cmp         eax,dword ptr [ebp-44]
>0075876D    jl          007587A6
 0075876F    mov         eax,[009036DC];gvar_009036DC
 00758774    cmp         eax,dword ptr [ebp-48]
>00758777    jg          007587A6
 00758779    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075877E    mov         eax,dword ptr [eax+40]
 00758781    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00758788    call        TFont.SetStyle
 0075878D    mov         eax,dword ptr [ebp-0C]
 00758790    push        eax
 00758791    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758797    mov         edx,esi
 00758799    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075879E    mov         ebx,dword ptr [eax]
 007587A0    call        dword ptr [ebx+90]
 007587A6    mov         eax,1
 007587AB    call        00753BA0
 007587B0    mov         esi,dword ptr ds:[903714];gvar_00903714
 007587B6    add         esi,dword ptr ds:[903744];gvar_00903744
>007587BC    jno         007587C3
 007587BE    call        @IntOver
 007587C3    mov         edx,dword ptr [ebp-4C]
 007587C6    mov         eax,0A
 007587CB    call        007537B0
 007587D0    mov         edx,dword ptr ds:[903714];gvar_00903714
 007587D6    add         edx,dword ptr ds:[903744];gvar_00903744
>007587DC    jno         007587E3
 007587DE    call        @IntOver
 007587E3    add         eax,edx
>007587E5    jno         007587EC
 007587E7    call        @IntOver
 007587EC    mov         dword ptr [ebp-54],eax
 007587EF    mov         edx,dword ptr [ebp-4C]
 007587F2    mov         eax,37
 007587F7    call        007537B0
 007587FC    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758802    add         edx,dword ptr ds:[903744];gvar_00903744
>00758808    jno         0075880F
 0075880A    call        @IntOver
 0075880F    add         eax,edx
>00758811    jno         00758818
 00758813    call        @IntOver
 00758818    mov         dword ptr [ebp-58],eax
 0075881B    mov         edx,dword ptr [ebp-4C]
 0075881E    mov         eax,64
 00758823    call        007537B0
 00758828    mov         edx,dword ptr ds:[903714];gvar_00903714
 0075882E    add         edx,dword ptr ds:[903744];gvar_00903744
>00758834    jno         0075883B
 00758836    call        @IntOver
 0075883B    add         eax,edx
>0075883D    jno         00758844
 0075883F    call        @IntOver
 00758844    mov         dword ptr [ebp-5C],eax
 00758847    lea         eax,[ebp-0C]
 0075884A    mov         edx,dword ptr ds:[7C4DC4];^gvar_007C2E84
 00758850    mov         edx,dword ptr [edx]
 00758852    call        @UStrLAsg
 00758857    lea         eax,[ebp-10]
 0075885A    mov         edx,dword ptr ds:[7C4DC0];^gvar_007C2E88
 00758860    mov         edx,dword ptr [edx]
 00758862    call        @UStrLAsg
 00758867    lea         eax,[ebp-14]
 0075886A    mov         edx,dword ptr ds:[7C4CAC];^gvar_007C2E8C
 00758870    mov         edx,dword ptr [edx]
 00758872    call        @UStrLAsg
 00758877    lea         eax,[ebp-18]
 0075887A    mov         edx,dword ptr ds:[7C4274];^gvar_007C2E90
 00758880    mov         edx,dword ptr [edx]
 00758882    call        @UStrLAsg
 00758887    mov         eax,[009036DC];gvar_009036DC
 0075888C    cmp         eax,dword ptr [ebp-44]
>0075888F    jl          00758902
 00758891    mov         eax,[009036DC];gvar_009036DC
 00758896    cmp         eax,dword ptr [ebp-48]
>00758899    jg          00758902
 0075889B    mov         eax,dword ptr [ebp-0C]
 0075889E    push        eax
 0075889F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007588A5    mov         edx,esi
 007588A7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007588AC    mov         ebx,dword ptr [eax]
 007588AE    call        dword ptr [ebx+90]
 007588B4    mov         eax,dword ptr [ebp-10]
 007588B7    push        eax
 007588B8    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007588BE    mov         edx,dword ptr [ebp-54]
 007588C1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007588C6    mov         ebx,dword ptr [eax]
 007588C8    call        dword ptr [ebx+90]
 007588CE    mov         eax,dword ptr [ebp-14]
 007588D1    push        eax
 007588D2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007588D8    mov         edx,dword ptr [ebp-58]
 007588DB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007588E0    mov         ebx,dword ptr [eax]
 007588E2    call        dword ptr [ebx+90]
 007588E8    mov         eax,dword ptr [ebp-18]
 007588EB    push        eax
 007588EC    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007588F2    mov         edx,dword ptr [ebp-5C]
 007588F5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 007588FA    mov         ebx,dword ptr [eax]
 007588FC    call        dword ptr [ebx+90]
 00758902    mov         eax,1
 00758907    call        00753BA0
 0075890C    mov         ebx,1
 00758911    lea         edx,[ebp-2A8]
 00758917    mov         eax,ebx
 00758919    call        IntToStr
 0075891E    mov         ecx,dword ptr [ebp-2A8]
 00758924    lea         eax,[ebp-2A4]
 0075892A    mov         edx,759214;' '
 0075892F    call        @UStrCat3
 00758934    mov         eax,dword ptr [ebp-2A4]
 0075893A    lea         ecx,[ebp-0C]
 0075893D    mov         edx,2
 00758942    call        00431F5C
 00758947    mov         ecx,ebx
 00758949    cmp         ecx,0FF
>0075894F    jbe         00758956
 00758951    call        @BoundErr
 00758956    mov         edx,dword ptr [ebp-50]
 00758959    cmp         edx,0FF
>0075895F    jbe         00758966
 00758961    call        @BoundErr
 00758966    mov         eax,[0090376C];gvar_0090376C
 0075896B    call        TFXPIO.GetCCOFunction
 00758970    mov         edx,eax
 00758972    lea         ecx,[ebp-10]
 00758975    mov         eax,[0090376C];gvar_0090376C
 0075897A    call        TFXPIO.OutFunctionToString
 0075897F    lea         eax,[ebp-284]
 00758985    push        eax
 00758986    mov         ecx,ebx
 00758988    cmp         ecx,0FF
>0075898E    jbe         00758995
 00758990    call        @BoundErr
 00758995    mov         edx,dword ptr [ebp-50]
 00758998    cmp         edx,0FF
>0075899E    jbe         007589A5
 007589A0    call        @BoundErr
 007589A5    mov         eax,[0090376C];gvar_0090376C
 007589AA    call        TFXPIO.GetCCOCtrlGroups
 007589AF    lea         eax,[ebp-284]
 007589B5    lea         edx,[ebp-14]
 007589B8    call        006955F8
 007589BD    lea         eax,[ebp-1FC]
 007589C3    push        eax
 007589C4    mov         ecx,ebx
 007589C6    cmp         ecx,0FF
>007589CC    jbe         007589D3
 007589CE    call        @BoundErr
 007589D3    mov         edx,dword ptr [ebp-50]
 007589D6    cmp         edx,0FF
>007589DC    jbe         007589E3
 007589DE    call        @BoundErr
 007589E3    mov         eax,[0090376C];gvar_0090376C
 007589E8    call        TFXPIO.GetCCODescription
 007589ED    lea         edx,[ebp-1FC]
 007589F3    lea         eax,[ebp-18]
 007589F6    call        @UStrFromString
 007589FB    mov         eax,[009036DC];gvar_009036DC
 00758A00    cmp         eax,dword ptr [ebp-44]
>00758A03    jl          00758A8E
 00758A09    mov         eax,[009036DC];gvar_009036DC
 00758A0E    cmp         eax,dword ptr [ebp-48]
>00758A11    jg          00758A8E
 00758A13    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758A18    mov         eax,dword ptr [eax+40]
 00758A1B    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00758A22    call        TFont.SetStyle
 00758A27    mov         eax,dword ptr [ebp-0C]
 00758A2A    push        eax
 00758A2B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758A31    mov         edx,esi
 00758A33    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758A38    mov         edi,dword ptr [eax]
 00758A3A    call        dword ptr [edi+90]
 00758A40    mov         eax,dword ptr [ebp-10]
 00758A43    push        eax
 00758A44    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758A4A    mov         edx,dword ptr [ebp-54]
 00758A4D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758A52    mov         edi,dword ptr [eax]
 00758A54    call        dword ptr [edi+90]
 00758A5A    mov         eax,dword ptr [ebp-14]
 00758A5D    push        eax
 00758A5E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758A64    mov         edx,dword ptr [ebp-58]
 00758A67    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758A6C    mov         edi,dword ptr [eax]
 00758A6E    call        dword ptr [edi+90]
 00758A74    mov         eax,dword ptr [ebp-18]
 00758A77    push        eax
 00758A78    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758A7E    mov         edx,dword ptr [ebp-5C]
 00758A81    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758A86    mov         edi,dword ptr [eax]
 00758A88    call        dword ptr [edi+90]
 00758A8E    mov         eax,1
 00758A93    call        00753BA0
 00758A98    inc         ebx
 00758A99    cmp         ebx,11
>00758A9C    jne         00758911
 00758AA2    mov         eax,1
 00758AA7    call        00753BA0
>00758AAC    jmp         00759096
 00758AB1    mov         eax,0F
 00758AB6    call        00753BA0
 00758ABB    mov         eax,[007C4668];^gvar_007C2E4C
 00758AC0    push        dword ptr [eax]
 00758AC2    push        759214;' '
 00758AC7    lea         edx,[ebp-2AC]
 00758ACD    mov         eax,dword ptr [ebp-50]
 00758AD0    call        IntToStr
 00758AD5    push        dword ptr [ebp-2AC]
 00758ADB    lea         eax,[ebp-0C]
 00758ADE    mov         edx,3
 00758AE3    call        @UStrCatN
 00758AE8    mov         edx,dword ptr [ebp-50]
 00758AEB    cmp         edx,0FF
>00758AF1    jbe         00758AF8
 00758AF3    call        @BoundErr
 00758AF8    mov         eax,[0090376C];gvar_0090376C
 00758AFD    call        TFXPIO.GetIOCtrlrType
 00758B02    mov         edx,eax
 00758B04    lea         ecx,[ebp-10]
 00758B07    mov         eax,[0090376C];gvar_0090376C
 00758B0C    call        TFXPIO.IOCTypeToString
 00758B11    mov         esi,dword ptr ds:[903714];gvar_00903714
 00758B17    mov         edx,dword ptr [ebp-4C]
 00758B1A    mov         eax,14
 00758B1F    call        007537B0
 00758B24    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758B2A    add         edx,dword ptr ds:[903744];gvar_00903744
>00758B30    jno         00758B37
 00758B32    call        @IntOver
 00758B37    add         eax,edx
>00758B39    jno         00758B40
 00758B3B    call        @IntOver
 00758B40    mov         dword ptr [ebp-54],eax
 00758B43    mov         eax,[009036DC];gvar_009036DC
 00758B48    cmp         eax,dword ptr [ebp-44]
>00758B4B    jl          00758B9E
 00758B4D    mov         eax,[009036DC];gvar_009036DC
 00758B52    cmp         eax,dword ptr [ebp-48]
>00758B55    jg          00758B9E
 00758B57    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758B5C    mov         eax,dword ptr [eax+40]
 00758B5F    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00758B66    call        TFont.SetStyle
 00758B6B    mov         eax,dword ptr [ebp-0C]
 00758B6E    push        eax
 00758B6F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758B75    mov         edx,esi
 00758B77    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758B7C    mov         ebx,dword ptr [eax]
 00758B7E    call        dword ptr [ebx+90]
 00758B84    mov         eax,dword ptr [ebp-10]
 00758B87    push        eax
 00758B88    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758B8E    mov         edx,dword ptr [ebp-54]
 00758B91    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758B96    mov         ebx,dword ptr [eax]
 00758B98    call        dword ptr [ebx+90]
 00758B9E    mov         eax,1
 00758BA3    call        00753BA0
 00758BA8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758BAD    mov         eax,dword ptr [eax+40]
 00758BB0    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00758BB7    call        TFont.SetStyle
 00758BBC    lea         eax,[ebp-0C]
 00758BBF    mov         edx,dword ptr ds:[7C4B6C];^gvar_007C2E60
 00758BC5    mov         edx,dword ptr [edx]
 00758BC7    call        @UStrLAsg
 00758BCC    mov         esi,dword ptr ds:[903714];gvar_00903714
 00758BD2    add         esi,dword ptr ds:[903744];gvar_00903744
>00758BD8    jno         00758BDF
 00758BDA    call        @IntOver
 00758BDF    mov         eax,[009036DC];gvar_009036DC
 00758BE4    cmp         eax,dword ptr [ebp-44]
>00758BE7    jl          00758C20
 00758BE9    mov         eax,[009036DC];gvar_009036DC
 00758BEE    cmp         eax,dword ptr [ebp-48]
>00758BF1    jg          00758C20
 00758BF3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758BF8    mov         eax,dword ptr [eax+40]
 00758BFB    movzx       edx,byte ptr ds:[7591D8];0x1 gvar_007591D8
 00758C02    call        TFont.SetStyle
 00758C07    mov         eax,dword ptr [ebp-0C]
 00758C0A    push        eax
 00758C0B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758C11    mov         edx,esi
 00758C13    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758C18    mov         ebx,dword ptr [eax]
 00758C1A    call        dword ptr [ebx+90]
 00758C20    mov         eax,1
 00758C25    call        00753BA0
 00758C2A    mov         esi,dword ptr ds:[903714];gvar_00903714
 00758C30    add         esi,dword ptr ds:[903744];gvar_00903744
>00758C36    jno         00758C3D
 00758C38    call        @IntOver
 00758C3D    mov         edx,dword ptr [ebp-4C]
 00758C40    mov         eax,0A
 00758C45    call        007537B0
 00758C4A    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758C50    add         edx,dword ptr ds:[903744];gvar_00903744
>00758C56    jno         00758C5D
 00758C58    call        @IntOver
 00758C5D    add         eax,edx
>00758C5F    jno         00758C66
 00758C61    call        @IntOver
 00758C66    mov         dword ptr [ebp-54],eax
 00758C69    mov         edx,dword ptr [ebp-4C]
 00758C6C    mov         eax,37
 00758C71    call        007537B0
 00758C76    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758C7C    add         edx,dword ptr ds:[903744];gvar_00903744
>00758C82    jno         00758C89
 00758C84    call        @IntOver
 00758C89    add         eax,edx
>00758C8B    jno         00758C92
 00758C8D    call        @IntOver
 00758C92    mov         dword ptr [ebp-58],eax
 00758C95    mov         edx,dword ptr [ebp-4C]
 00758C98    mov         eax,46
 00758C9D    call        007537B0
 00758CA2    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758CA8    add         edx,dword ptr ds:[903744];gvar_00903744
>00758CAE    jno         00758CB5
 00758CB0    call        @IntOver
 00758CB5    add         eax,edx
>00758CB7    jno         00758CBE
 00758CB9    call        @IntOver
 00758CBE    mov         dword ptr [ebp-5C],eax
 00758CC1    mov         edx,dword ptr [ebp-4C]
 00758CC4    mov         eax,55
 00758CC9    call        007537B0
 00758CCE    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758CD4    add         edx,dword ptr ds:[903744];gvar_00903744
>00758CDA    jno         00758CE1
 00758CDC    call        @IntOver
 00758CE1    add         eax,edx
>00758CE3    jno         00758CEA
 00758CE5    call        @IntOver
 00758CEA    mov         dword ptr [ebp-60],eax
 00758CED    mov         edx,dword ptr [ebp-4C]
 00758CF0    mov         eax,7D
 00758CF5    call        007537B0
 00758CFA    mov         edx,dword ptr ds:[903714];gvar_00903714
 00758D00    add         edx,dword ptr ds:[903744];gvar_00903744
>00758D06    jno         00758D0D
 00758D08    call        @IntOver
 00758D0D    add         eax,edx
>00758D0F    jno         00758D16
 00758D11    call        @IntOver
 00758D16    mov         dword ptr [ebp-64],eax
 00758D19    lea         eax,[ebp-0C]
 00758D1C    mov         edx,dword ptr ds:[7C442C];^gvar_007C2E94
 00758D22    mov         edx,dword ptr [edx]
 00758D24    call        @UStrLAsg
 00758D29    lea         eax,[ebp-10]
 00758D2C    mov         edx,dword ptr ds:[7C4428];^gvar_007C2E98
 00758D32    mov         edx,dword ptr [edx]
 00758D34    call        @UStrLAsg
 00758D39    lea         eax,[ebp-14]
 00758D3C    mov         edx,dword ptr ds:[7C49FC];^gvar_007C2E9C
 00758D42    mov         edx,dword ptr [edx]
 00758D44    call        @UStrLAsg
 00758D49    lea         eax,[ebp-18]
 00758D4C    mov         edx,dword ptr ds:[7C4DC8];^gvar_007C2EA0
 00758D52    mov         edx,dword ptr [edx]
 00758D54    call        @UStrLAsg
 00758D59    lea         eax,[ebp-1C]
 00758D5C    mov         edx,dword ptr ds:[7C4338];^gvar_007C2EA4
 00758D62    mov         edx,dword ptr [edx]
 00758D64    call        @UStrLAsg
 00758D69    lea         eax,[ebp-20]
 00758D6C    mov         edx,dword ptr ds:[7C4670];^gvar_007C2EA8
 00758D72    mov         edx,dword ptr [edx]
 00758D74    call        @UStrLAsg
 00758D79    mov         eax,[009036DC];gvar_009036DC
 00758D7E    cmp         eax,dword ptr [ebp-44]
>00758D81    jl          00758E44
 00758D87    mov         eax,[009036DC];gvar_009036DC
 00758D8C    cmp         eax,dword ptr [ebp-48]
>00758D8F    jg          00758E44
 00758D95    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758D9A    mov         eax,dword ptr [eax+40]
 00758D9D    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00758DA4    call        TFont.SetStyle
 00758DA9    mov         eax,dword ptr [ebp-0C]
 00758DAC    push        eax
 00758DAD    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758DB3    mov         edx,esi
 00758DB5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758DBA    mov         ebx,dword ptr [eax]
 00758DBC    call        dword ptr [ebx+90]
 00758DC2    mov         eax,dword ptr [ebp-10]
 00758DC5    push        eax
 00758DC6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758DCC    mov         edx,dword ptr [ebp-54]
 00758DCF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758DD4    mov         ebx,dword ptr [eax]
 00758DD6    call        dword ptr [ebx+90]
 00758DDC    mov         eax,dword ptr [ebp-14]
 00758DDF    push        eax
 00758DE0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758DE6    mov         edx,dword ptr [ebp-58]
 00758DE9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758DEE    mov         ebx,dword ptr [eax]
 00758DF0    call        dword ptr [ebx+90]
 00758DF6    mov         eax,dword ptr [ebp-18]
 00758DF9    push        eax
 00758DFA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758E00    mov         edx,dword ptr [ebp-5C]
 00758E03    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758E08    mov         ebx,dword ptr [eax]
 00758E0A    call        dword ptr [ebx+90]
 00758E10    mov         eax,dword ptr [ebp-1C]
 00758E13    push        eax
 00758E14    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758E1A    mov         edx,dword ptr [ebp-60]
 00758E1D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758E22    mov         ebx,dword ptr [eax]
 00758E24    call        dword ptr [ebx+90]
 00758E2A    mov         eax,dword ptr [ebp-20]
 00758E2D    push        eax
 00758E2E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758E34    mov         edx,dword ptr [ebp-64]
 00758E37    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758E3C    mov         ebx,dword ptr [eax]
 00758E3E    call        dword ptr [ebx+90]
 00758E44    mov         eax,1
 00758E49    call        00753BA0
 00758E4E    mov         ebx,1
 00758E53    lea         edx,[ebp-2B4]
 00758E59    mov         eax,ebx
 00758E5B    call        IntToStr
 00758E60    mov         ecx,dword ptr [ebp-2B4]
 00758E66    lea         eax,[ebp-2B0]
 00758E6C    mov         edx,759214;' '
 00758E71    call        @UStrCat3
 00758E76    mov         eax,dword ptr [ebp-2B0]
 00758E7C    lea         ecx,[ebp-0C]
 00758E7F    mov         edx,2
 00758E84    call        00431F5C
 00758E89    mov         ecx,ebx
 00758E8B    cmp         ecx,0FF
>00758E91    jbe         00758E98
 00758E93    call        @BoundErr
 00758E98    mov         edx,dword ptr [ebp-50]
 00758E9B    cmp         edx,0FF
>00758EA1    jbe         00758EA8
 00758EA3    call        @BoundErr
 00758EA8    mov         eax,[0090376C];gvar_0090376C
 00758EAD    call        TFXPIO.GetADOFunction
 00758EB2    mov         edx,eax
 00758EB4    lea         ecx,[ebp-10]
 00758EB7    mov         eax,[0090376C];gvar_0090376C
 00758EBC    call        TFXPIO.OutFunctionToString
 00758EC1    mov         ecx,ebx
 00758EC3    cmp         ecx,0FF
>00758EC9    jbe         00758ED0
 00758ECB    call        @BoundErr
 00758ED0    mov         edx,dword ptr [ebp-50]
 00758ED3    cmp         edx,0FF
>00758ED9    jbe         00758EE0
 00758EDB    call        @BoundErr
 00758EE0    mov         eax,[0090376C];gvar_0090376C
 00758EE5    call        TFXPIO.GetADOMode
 00758EEA    mov         edx,eax
 00758EEC    lea         ecx,[ebp-14]
 00758EEF    mov         eax,[0090376C];gvar_0090376C
 00758EF4    call        TFXPIO.ADOModeToString
 00758EF9    mov         ecx,ebx
 00758EFB    cmp         ecx,0FF
>00758F01    jbe         00758F08
 00758F03    call        @BoundErr
 00758F08    mov         edx,dword ptr [ebp-50]
 00758F0B    cmp         edx,0FF
>00758F11    jbe         00758F18
 00758F13    call        @BoundErr
 00758F18    mov         eax,[0090376C];gvar_0090376C
 00758F1D    call        TFXPIO.GetADOMonitoring
 00758F22    mov         edx,eax
 00758F24    lea         ecx,[ebp-18]
 00758F27    mov         eax,[0090376C];gvar_0090376C
 00758F2C    call        TFXPIO.ADOMonitoringToString
 00758F31    lea         eax,[ebp-284]
 00758F37    push        eax
 00758F38    mov         ecx,ebx
 00758F3A    cmp         ecx,0FF
>00758F40    jbe         00758F47
 00758F42    call        @BoundErr
 00758F47    mov         edx,dword ptr [ebp-50]
 00758F4A    cmp         edx,0FF
>00758F50    jbe         00758F57
 00758F52    call        @BoundErr
 00758F57    mov         eax,[0090376C];gvar_0090376C
 00758F5C    call        TFXPIO.GetADOCtrlGroups
 00758F61    lea         eax,[ebp-284]
 00758F67    lea         edx,[ebp-1C]
 00758F6A    call        006955F8
 00758F6F    lea         eax,[ebp-1FC]
 00758F75    push        eax
 00758F76    mov         ecx,ebx
 00758F78    cmp         ecx,0FF
>00758F7E    jbe         00758F85
 00758F80    call        @BoundErr
 00758F85    mov         edx,dword ptr [ebp-50]
 00758F88    cmp         edx,0FF
>00758F8E    jbe         00758F95
 00758F90    call        @BoundErr
 00758F95    mov         eax,[0090376C];gvar_0090376C
 00758F9A    call        TFXPIO.GetADODescription
 00758F9F    lea         edx,[ebp-1FC]
 00758FA5    lea         eax,[ebp-20]
 00758FA8    call        @UStrFromString
 00758FAD    mov         eax,[009036DC];gvar_009036DC
 00758FB2    cmp         eax,dword ptr [ebp-44]
>00758FB5    jl          00759078
 00758FBB    mov         eax,[009036DC];gvar_009036DC
 00758FC0    cmp         eax,dword ptr [ebp-48]
>00758FC3    jg          00759078
 00758FC9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758FCE    mov         eax,dword ptr [eax+40]
 00758FD1    movzx       edx,byte ptr ds:[759104];0x0 gvar_00759104
 00758FD8    call        TFont.SetStyle
 00758FDD    mov         eax,dword ptr [ebp-0C]
 00758FE0    push        eax
 00758FE1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00758FE7    mov         edx,esi
 00758FE9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00758FEE    mov         edi,dword ptr [eax]
 00758FF0    call        dword ptr [edi+90]
 00758FF6    mov         eax,dword ptr [ebp-10]
 00758FF9    push        eax
 00758FFA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759000    mov         edx,dword ptr [ebp-54]
 00759003    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00759008    mov         edi,dword ptr [eax]
 0075900A    call        dword ptr [edi+90]
 00759010    mov         eax,dword ptr [ebp-14]
 00759013    push        eax
 00759014    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075901A    mov         edx,dword ptr [ebp-58]
 0075901D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00759022    mov         edi,dword ptr [eax]
 00759024    call        dword ptr [edi+90]
 0075902A    mov         eax,dword ptr [ebp-18]
 0075902D    push        eax
 0075902E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759034    mov         edx,dword ptr [ebp-5C]
 00759037    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075903C    mov         edi,dword ptr [eax]
 0075903E    call        dword ptr [edi+90]
 00759044    mov         eax,dword ptr [ebp-1C]
 00759047    push        eax
 00759048    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075904E    mov         edx,dword ptr [ebp-60]
 00759051    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00759056    mov         edi,dword ptr [eax]
 00759058    call        dword ptr [edi+90]
 0075905E    mov         eax,dword ptr [ebp-20]
 00759061    push        eax
 00759062    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759068    mov         edx,dword ptr [ebp-64]
 0075906B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 00759070    mov         edi,dword ptr [eax]
 00759072    call        dword ptr [edi+90]
 00759078    mov         eax,1
 0075907D    call        00753BA0
 00759082    inc         ebx
 00759083    cmp         ebx,0D
>00759086    jne         00758E53
 0075908C    mov         eax,1
 00759091    call        00753BA0
 00759096    inc         dword ptr [ebp-50]
 00759099    cmp         dword ptr [ebp-50],5
>0075909D    jne         0075792E
 007590A3    xor         eax,eax
 007590A5    pop         edx
 007590A6    pop         ecx
 007590A7    pop         ecx
 007590A8    mov         dword ptr fs:[eax],edx
 007590AB    push        7590FB
 007590B0    lea         eax,[ebp-2B4]
 007590B6    mov         edx,0C
 007590BB    call        @UStrArrayClr
 007590C0    lea         eax,[ebp-200]
 007590C6    call        @UStrClr
 007590CB    lea         eax,[ebp-1BC]
 007590D1    mov         edx,0A
 007590D6    call        @UStrArrayClr
 007590DB    lea         eax,[ebp-18C]
 007590E1    call        @UStrClr
 007590E6    lea         eax,[ebp-40]
 007590E9    mov         edx,10
 007590EE    call        @UStrArrayClr
 007590F3    ret
>007590F4    jmp         @HandleFinally
>007590F9    jmp         007590B0
 007590FB    pop         edi
 007590FC    pop         esi
 007590FD    pop         ebx
 007590FE    mov         esp,ebp
 00759100    pop         ebp
 00759101    ret
end;*}

//00759218
{*procedure sub_00759218(?:?; ?:Integer; ?:Integer; ?:?);
begin
 00759218    push        ebp
 00759219    mov         ebp,esp
 0075921B    push        ecx
 0075921C    mov         ecx,35
 00759221    push        0
 00759223    push        0
 00759225    dec         ecx
>00759226    jne         00759221
 00759228    push        ecx
 00759229    xchg        ecx,dword ptr [ebp-4]
 0075922C    push        ebx
 0075922D    push        esi
 0075922E    push        edi
 0075922F    mov         dword ptr [ebp-4C],ecx
 00759232    mov         dword ptr [ebp-48],edx
 00759235    mov         dword ptr [ebp-44],eax
 00759238    mov         ebx,dword ptr [ebp+8]
 0075923B    mov         esi,9036CC;gvar_009036CC:TCanvas
 00759240    xor         eax,eax
 00759242    push        ebp
 00759243    push        75A102
 00759248    push        dword ptr fs:[eax]
 0075924B    mov         dword ptr fs:[eax],esp
 0075924E    mov         edx,ebx
 00759250    mov         eax,0A
 00759255    call        007537B0
 0075925A    add         eax,dword ptr ds:[903714];gvar_00903714
>00759260    jno         00759267
 00759262    call        @IntOver
 00759267    mov         dword ptr [ebp-58],eax
 0075926A    mov         edx,ebx
 0075926C    mov         eax,15
 00759271    call        007537B0
 00759276    add         eax,dword ptr ds:[903714];gvar_00903714
>0075927C    jno         00759283
 0075927E    call        @IntOver
 00759283    mov         dword ptr [ebp-5C],eax
 00759286    mov         edx,ebx
 00759288    mov         eax,1E
 0075928D    call        007537B0
 00759292    add         eax,dword ptr ds:[903714];gvar_00903714
>00759298    jno         0075929F
 0075929A    call        @IntOver
 0075929F    mov         dword ptr [ebp-60],eax
 007592A2    mov         edx,ebx
 007592A4    mov         eax,27
 007592A9    call        007537B0
 007592AE    add         eax,dword ptr ds:[903714];gvar_00903714
>007592B4    jno         007592BB
 007592B6    call        @IntOver
 007592BB    mov         dword ptr [ebp-64],eax
 007592BE    mov         edx,ebx
 007592C0    mov         eax,29
 007592C5    call        007537B0
 007592CA    add         eax,dword ptr ds:[903714];gvar_00903714
>007592D0    jno         007592D7
 007592D2    call        @IntOver
 007592D7    mov         dword ptr [ebp-68],eax
 007592DA    mov         edx,ebx
 007592DC    mov         eax,4D
 007592E1    call        007537B0
 007592E6    add         eax,dword ptr ds:[903714];gvar_00903714
>007592EC    jno         007592F3
 007592EE    call        @IntOver
 007592F3    mov         dword ptr [ebp-6C],eax
 007592F6    mov         edx,ebx
 007592F8    mov         eax,57
 007592FD    call        007537B0
 00759302    add         eax,dword ptr ds:[903714];gvar_00903714
>00759308    jno         0075930F
 0075930A    call        @IntOver
 0075930F    mov         dword ptr [ebp-70],eax
 00759312    mov         edx,ebx
 00759314    mov         eax,62
 00759319    call        007537B0
 0075931E    add         eax,dword ptr ds:[903714];gvar_00903714
>00759324    jno         0075932B
 00759326    call        @IntOver
 0075932B    mov         dword ptr [ebp-74],eax
 0075932E    mov         edx,ebx
 00759330    mov         eax,6D
 00759335    call        007537B0
 0075933A    add         eax,dword ptr ds:[903714];gvar_00903714
>00759340    jno         00759347
 00759342    call        @IntOver
 00759347    mov         dword ptr [ebp-78],eax
 0075934A    mov         edx,ebx
 0075934C    mov         eax,6E
 00759351    call        007537B0
 00759356    add         eax,dword ptr ds:[903714];gvar_00903714
>0075935C    jno         00759363
 0075935E    call        @IntOver
 00759363    mov         dword ptr [ebp-7C],eax
 00759366    mov         edx,ebx
 00759368    mov         eax,88
 0075936D    call        007537B0
 00759372    add         eax,dword ptr ds:[903714];gvar_00903714
>00759378    jno         0075937F
 0075937A    call        @IntOver
 0075937F    mov         dword ptr [ebp-80],eax
 00759382    mov         edx,ebx
 00759384    mov         eax,91
 00759389    call        007537B0
 0075938E    add         eax,dword ptr ds:[903714];gvar_00903714
>00759394    jno         0075939B
 00759396    call        @IntOver
 0075939B    mov         dword ptr [ebp-84],eax
 007593A1    mov         edx,ebx
 007593A3    mov         eax,9A
 007593A8    call        007537B0
 007593AD    add         eax,dword ptr ds:[903714];gvar_00903714
>007593B3    jno         007593BA
 007593B5    call        @IntOver
 007593BA    mov         dword ptr [ebp-88],eax
 007593C0    mov         edx,ebx
 007593C2    mov         eax,0A3
 007593C7    call        007537B0
 007593CC    add         eax,dword ptr ds:[903714];gvar_00903714
>007593D2    jno         007593D9
 007593D4    call        @IntOver
 007593D9    mov         dword ptr [ebp-8C],eax
 007593DF    xor         eax,eax
 007593E1    call        00753BA0
 007593E6    lea         eax,[ebp-0C]
 007593E9    mov         edx,dword ptr ds:[7C3F0C];^'Address'
 007593EF    call        @UStrLAsg
 007593F4    lea         eax,[ebp-10]
 007593F7    mov         edx,dword ptr ds:[7C3F10];^'D-Zone'
 007593FD    call        @UStrLAsg
 00759402    lea         eax,[ebp-14]
 00759405    mov         edx,dword ptr ds:[7C3F14];^'Ctrl A'
 0075940B    call        @UStrLAsg
 00759410    lea         eax,[ebp-18]
 00759413    mov         edx,dword ptr ds:[7C3F18];^'Ctrl B'
 00759419    call        @UStrLAsg
 0075941E    lea         eax,[ebp-1C]
 00759421    mov         edx,dword ptr ds:[7C3F1C];^'Type'
 00759427    call        @UStrLAsg
 0075942C    lea         eax,[ebp-20]
 0075942F    mov         edx,dword ptr ds:[7C3F24];^'Fire'
 00759435    call        @UStrLAsg
 0075943A    lea         eax,[ebp-24]
 0075943D    mov         edx,dword ptr ds:[7C3F28];^'PreA'
 00759443    call        @UStrLAsg
 00759448    lea         eax,[ebp-28]
 0075944B    mov         edx,dword ptr ds:[7C3F2C];^'D-Fire'
 00759451    call        @UStrLAsg
 00759456    lea         eax,[ebp-2C]
 00759459    mov         edx,dword ptr ds:[7C3F30];^'D-PreA'
 0075945F    call        @UStrLAsg
 00759464    lea         eax,[ebp-30]
 00759467    mov         edx,dword ptr ds:[7C3F34];^'Mode'
 0075946D    call        @UStrLAsg
 00759472    lea         eax,[ebp-34]
 00759475    mov         edx,dword ptr ds:[7C3F38];^'InDel.'
 0075947B    call        @UStrLAsg
 00759480    lea         eax,[ebp-38]
 00759483    mov         edx,dword ptr ds:[7C3F3C];^'InFilt'
 00759489    call        @UStrLAsg
 0075948E    lea         eax,[ebp-3C]
 00759491    mov         edx,dword ptr ds:[7C3F40];^'DayM'
 00759497    call        @UStrLAsg
 0075949C    lea         eax,[ebp-40]
 0075949F    mov         edx,dword ptr ds:[7C3F44];^'ZDis'
 007594A5    call        @UStrLAsg
 007594AA    mov         eax,[009036DC];gvar_009036DC
 007594AF    cmp         eax,dword ptr [ebp-48]
>007594B2    jl          00759706
 007594B8    mov         eax,[009036DC];gvar_009036DC
 007594BD    cmp         eax,dword ptr [ebp-4C]
>007594C0    jg          00759706
 007594C6    mov         eax,dword ptr [esi]
 007594C8    mov         eax,dword ptr [eax+40]
 007594CB    movzx       edx,byte ptr ds:[75A114];0x1 gvar_0075A114
 007594D2    call        TFont.SetStyle
 007594D7    mov         eax,dword ptr [ebp-0C]
 007594DA    push        eax
 007594DB    mov         edx,dword ptr [ebp-0C]
 007594DE    mov         eax,dword ptr [esi]
 007594E0    call        TCustomCanvas.TextWidth
 007594E5    mov         edx,dword ptr [ebp-58]
 007594E8    sub         edx,eax
>007594EA    jno         007594F1
 007594EC    call        @IntOver
 007594F1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007594F7    mov         eax,dword ptr [esi]
 007594F9    mov         ebx,dword ptr [eax]
 007594FB    call        dword ptr [ebx+90]
 00759501    mov         eax,dword ptr [ebp-10]
 00759504    push        eax
 00759505    mov         edx,dword ptr [ebp-10]
 00759508    mov         eax,dword ptr [esi]
 0075950A    call        TCustomCanvas.TextWidth
 0075950F    mov         edx,dword ptr [ebp-5C]
 00759512    sub         edx,eax
>00759514    jno         0075951B
 00759516    call        @IntOver
 0075951B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759521    mov         eax,dword ptr [esi]
 00759523    mov         ebx,dword ptr [eax]
 00759525    call        dword ptr [ebx+90]
 0075952B    mov         eax,dword ptr [ebp-14]
 0075952E    push        eax
 0075952F    mov         edx,dword ptr [ebp-14]
 00759532    mov         eax,dword ptr [esi]
 00759534    call        TCustomCanvas.TextWidth
 00759539    mov         edx,dword ptr [ebp-60]
 0075953C    sub         edx,eax
>0075953E    jno         00759545
 00759540    call        @IntOver
 00759545    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075954B    mov         eax,dword ptr [esi]
 0075954D    mov         ebx,dword ptr [eax]
 0075954F    call        dword ptr [ebx+90]
 00759555    mov         eax,dword ptr [ebp-18]
 00759558    push        eax
 00759559    mov         edx,dword ptr [ebp-18]
 0075955C    mov         eax,dword ptr [esi]
 0075955E    call        TCustomCanvas.TextWidth
 00759563    mov         edx,dword ptr [ebp-64]
 00759566    sub         edx,eax
>00759568    jno         0075956F
 0075956A    call        @IntOver
 0075956F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759575    mov         eax,dword ptr [esi]
 00759577    mov         ebx,dword ptr [eax]
 00759579    call        dword ptr [ebx+90]
 0075957F    mov         eax,dword ptr [ebp-1C]
 00759582    push        eax
 00759583    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759589    mov         edx,dword ptr [ebp-68]
 0075958C    mov         eax,dword ptr [esi]
 0075958E    mov         ebx,dword ptr [eax]
 00759590    call        dword ptr [ebx+90]
 00759596    mov         eax,dword ptr [ebp-20]
 00759599    push        eax
 0075959A    mov         edx,dword ptr [ebp-20]
 0075959D    mov         eax,dword ptr [esi]
 0075959F    call        TCustomCanvas.TextWidth
 007595A4    mov         edx,dword ptr [ebp-6C]
 007595A7    sub         edx,eax
>007595A9    jno         007595B0
 007595AB    call        @IntOver
 007595B0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007595B6    mov         eax,dword ptr [esi]
 007595B8    mov         ebx,dword ptr [eax]
 007595BA    call        dword ptr [ebx+90]
 007595C0    mov         eax,dword ptr [ebp-24]
 007595C3    push        eax
 007595C4    mov         edx,dword ptr [ebp-24]
 007595C7    mov         eax,dword ptr [esi]
 007595C9    call        TCustomCanvas.TextWidth
 007595CE    mov         edx,dword ptr [ebp-70]
 007595D1    sub         edx,eax
>007595D3    jno         007595DA
 007595D5    call        @IntOver
 007595DA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007595E0    mov         eax,dword ptr [esi]
 007595E2    mov         ebx,dword ptr [eax]
 007595E4    call        dword ptr [ebx+90]
 007595EA    mov         eax,dword ptr [ebp-28]
 007595ED    push        eax
 007595EE    mov         edx,dword ptr [ebp-28]
 007595F1    mov         eax,dword ptr [esi]
 007595F3    call        TCustomCanvas.TextWidth
 007595F8    mov         edx,dword ptr [ebp-74]
 007595FB    sub         edx,eax
>007595FD    jno         00759604
 007595FF    call        @IntOver
 00759604    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075960A    mov         eax,dword ptr [esi]
 0075960C    mov         ebx,dword ptr [eax]
 0075960E    call        dword ptr [ebx+90]
 00759614    mov         eax,dword ptr [ebp-2C]
 00759617    push        eax
 00759618    mov         edx,dword ptr [ebp-2C]
 0075961B    mov         eax,dword ptr [esi]
 0075961D    call        TCustomCanvas.TextWidth
 00759622    mov         edx,dword ptr [ebp-78]
 00759625    sub         edx,eax
>00759627    jno         0075962E
 00759629    call        @IntOver
 0075962E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759634    mov         eax,dword ptr [esi]
 00759636    mov         ebx,dword ptr [eax]
 00759638    call        dword ptr [ebx+90]
 0075963E    mov         eax,dword ptr [ebp-30]
 00759641    push        eax
 00759642    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759648    mov         edx,dword ptr [ebp-7C]
 0075964B    mov         eax,dword ptr [esi]
 0075964D    mov         ebx,dword ptr [eax]
 0075964F    call        dword ptr [ebx+90]
 00759655    mov         eax,dword ptr [ebp-34]
 00759658    push        eax
 00759659    mov         edx,dword ptr [ebp-34]
 0075965C    mov         eax,dword ptr [esi]
 0075965E    call        TCustomCanvas.TextWidth
 00759663    mov         edx,dword ptr [ebp-80]
 00759666    sub         edx,eax
>00759668    jno         0075966F
 0075966A    call        @IntOver
 0075966F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759675    mov         eax,dword ptr [esi]
 00759677    mov         ebx,dword ptr [eax]
 00759679    call        dword ptr [ebx+90]
 0075967F    mov         eax,dword ptr [ebp-38]
 00759682    push        eax
 00759683    mov         edx,dword ptr [ebp-38]
 00759686    mov         eax,dword ptr [esi]
 00759688    call        TCustomCanvas.TextWidth
 0075968D    mov         edx,dword ptr [ebp-84]
 00759693    sub         edx,eax
>00759695    jno         0075969C
 00759697    call        @IntOver
 0075969C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007596A2    mov         eax,dword ptr [esi]
 007596A4    mov         ebx,dword ptr [eax]
 007596A6    call        dword ptr [ebx+90]
 007596AC    mov         eax,dword ptr [ebp-3C]
 007596AF    push        eax
 007596B0    mov         edx,dword ptr [ebp-3C]
 007596B3    mov         eax,dword ptr [esi]
 007596B5    call        TCustomCanvas.TextWidth
 007596BA    mov         edx,dword ptr [ebp-88]
 007596C0    sub         edx,eax
>007596C2    jno         007596C9
 007596C4    call        @IntOver
 007596C9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007596CF    mov         eax,dword ptr [esi]
 007596D1    mov         ebx,dword ptr [eax]
 007596D3    call        dword ptr [ebx+90]
 007596D9    mov         eax,dword ptr [ebp-40]
 007596DC    push        eax
 007596DD    mov         edx,dword ptr [ebp-40]
 007596E0    mov         eax,dword ptr [esi]
 007596E2    call        TCustomCanvas.TextWidth
 007596E7    mov         edx,dword ptr [ebp-8C]
 007596ED    sub         edx,eax
>007596EF    jno         007596F6
 007596F1    call        @IntOver
 007596F6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 007596FC    mov         eax,dword ptr [esi]
 007596FE    mov         ebx,dword ptr [eax]
 00759700    call        dword ptr [ebx+90]
 00759706    mov         eax,4
 0075970B    call        00753BA0
 00759710    xor         eax,eax
 00759712    mov         dword ptr [ebp-90],eax
 00759718    mov         dword ptr [ebp-94],1
 00759722    mov         eax,dword ptr [ebp-44]
 00759725    cmp         eax,7
>00759728    jbe         0075972F
 0075972A    call        @BoundErr
 0075972F    imul        eax,eax,43B3
>00759735    jno         0075973C
 00759737    call        @IntOver
 0075973C    mov         edx,dword ptr ds:[903770];gvar_00903770
 00759742    lea         eax,[edx+eax*4]
 00759745    mov         edx,dword ptr [ebp-90]
 0075974B    cmp         edx,1
>0075974E    jbe         00759755
 00759750    call        @BoundErr
 00759755    imul        edx,edx,43B3
>0075975B    jno         00759762
 0075975D    call        @IntOver
 00759762    lea         eax,[eax+edx*2]
 00759765    mov         edx,dword ptr [ebp-94]
 0075976B    dec         edx
 0075976C    cmp         edx,9E
>00759772    jbe         00759779
 00759774    call        @BoundErr
 00759779    inc         edx
 0075977A    imul        edx,edx,6D
>0075977D    jno         00759784
 0075977F    call        @IntOver
 00759784    push        esi
 00759785    lea         esi,[eax+edx*2-0D6]
 0075978C    lea         edi,[ebp-172]
 00759792    mov         ecx,36
 00759797    rep movs    dword ptr [edi],dword ptr [esi]
 00759799    movs        word ptr [edi],word ptr [esi]
 0075979B    pop         esi
 0075979C    movzx       ebx,byte ptr [ebp-168]
 007597A3    test        bl,bl
>007597A5    je          0075A0B1
 007597AB    mov         eax,[00903768];gvar_00903768
 007597B0    call        006A3430
 007597B5    movzx       eax,al
 007597B8    add         eax,dword ptr [ebp-44]
>007597BB    jno         007597C2
 007597BD    call        @IntOver
 007597C2    lea         edx,[ebp-190]
 007597C8    call        IntToStr
 007597CD    mov         ecx,dword ptr [ebp-190]
 007597D3    lea         eax,[ebp-18C]
 007597D9    mov         edx,75A124;'00'
 007597DE    call        @UStrCat3
 007597E3    mov         eax,dword ptr [ebp-18C]
 007597E9    lea         ecx,[ebp-188]
 007597EF    mov         edx,3
 007597F4    call        00431F5C
 007597F9    push        dword ptr [ebp-188]
 007597FF    push        75A138;'.'
 00759804    lea         edx,[ebp-19C]
 0075980A    imul        eax,dword ptr [ebp-90],64
>00759811    jno         00759818
 00759813    call        @IntOver
 00759818    add         eax,dword ptr [ebp-94]
>0075981E    jno         00759825
 00759820    call        @IntOver
 00759825    call        IntToStr
 0075982A    mov         ecx,dword ptr [ebp-19C]
 00759830    lea         eax,[ebp-198]
 00759836    mov         edx,75A124;'00'
 0075983B    call        @UStrCat3
 00759840    mov         eax,dword ptr [ebp-198]
 00759846    lea         ecx,[ebp-194]
 0075984C    mov         edx,3
 00759851    call        00431F5C
 00759856    push        dword ptr [ebp-194]
 0075985C    lea         eax,[ebp-0C]
 0075985F    mov         edx,3
 00759864    call        @UStrCatN
 00759869    mov         eax,[00903768];gvar_00903768
 0075986E    movzx       eax,word ptr [eax+123]
 00759875    movzx       edx,byte ptr [ebp-16D]
 0075987C    add         eax,edx
>0075987E    jno         00759885
 00759880    call        @IntOver
 00759885    sub         eax,1
>00759888    jno         0075988F
 0075988A    call        @IntOver
 0075988F    lea         edx,[ebp-1A4]
 00759895    call        IntToStr
 0075989A    mov         ecx,dword ptr [ebp-1A4]
 007598A0    lea         eax,[ebp-1A0]
 007598A6    mov         edx,75A148;'000'
 007598AB    call        @UStrCat3
 007598B0    mov         eax,dword ptr [ebp-1A0]
 007598B6    lea         ecx,[ebp-10]
 007598B9    mov         edx,4
 007598BE    call        00431F5C
 007598C3    lea         edx,[ebp-14]
 007598C6    movzx       eax,word ptr [ebp-16C]
 007598CD    call        IntToStr
 007598D2    lea         edx,[ebp-18]
 007598D5    movzx       eax,word ptr [ebp-16A]
 007598DC    call        IntToStr
 007598E1    movzx       edi,bl
 007598E4    mov         eax,edi
 007598E6    mov         edx,100
 007598EB    mul         eax,edx
 007598ED    mov         edx,eax
>007598EF    jno         007598F6
 007598F1    call        @IntOver
 007598F6    movzx       eax,byte ptr [ebp-167]
 007598FD    add         edx,eax
>007598FF    jno         00759906
 00759901    call        @IntOver
 00759906    cmp         edx,0FFFF
>0075990C    jbe         00759913
 0075990E    call        @BoundErr
 00759913    lea         ecx,[ebp-1C]
 00759916    mov         eax,[00903770];gvar_00903770
 0075991B    call        TFXPAD.ApoIntToType
 00759920    lea         ecx,[ebp-20]
 00759923    movzx       edx,word ptr [ebp-166]
 0075992A    mov         eax,[00903770];gvar_00903770
 0075992F    call        TFXPAD.ApoIntToLevel
 00759934    lea         ecx,[ebp-24]
 00759937    movzx       edx,word ptr [ebp-164]
 0075993E    mov         eax,[00903770];gvar_00903770
 00759943    call        TFXPAD.ApoIntToLevel
 00759948    lea         ecx,[ebp-28]
 0075994B    movzx       edx,word ptr [ebp-162]
 00759952    mov         eax,[00903770];gvar_00903770
 00759957    call        TFXPAD.ApoIntToLevel
 0075995C    lea         ecx,[ebp-2C]
 0075995F    movzx       edx,word ptr [ebp-160]
 00759966    mov         eax,[00903770];gvar_00903770
 0075996B    call        TFXPAD.ApoIntToLevel
 00759970    lea         eax,[ebp-30]
 00759973    push        eax
 00759974    mov         eax,edi
 00759976    mov         edx,100
 0075997B    mul         eax,edx
 0075997D    mov         edx,eax
>0075997F    jno         00759986
 00759981    call        @IntOver
 00759986    movzx       eax,byte ptr [ebp-167]
 0075998D    add         edx,eax
>0075998F    jno         00759996
 00759991    call        @IntOver
 00759996    cmp         edx,0FFFF
>0075999C    jbe         007599A3
 0075999E    call        @BoundErr
 007599A3    movzx       ecx,byte ptr [ebp-15C]
 007599AA    mov         eax,[00903770];gvar_00903770
 007599AF    call        TFXPAD.ApoIntToMode
 007599B4    movzx       eax,byte ptr [ebp-15B]
 007599BB    mov         edx,0A
 007599C0    mul         eax,edx
>007599C2    jno         007599C9
 007599C4    call        @IntOver
 007599C9    lea         edx,[ebp-34]
 007599CC    call        IntToStr
 007599D1    lea         edx,[ebp-38]
 007599D4    movzx       eax,byte ptr [ebp-15A]
 007599DB    call        IntToStr
 007599E0    lea         edx,[ebp-3C]
 007599E3    movzx       eax,byte ptr [ebp-159]
 007599EA    call        IntToStr
 007599EF    lea         edx,[ebp-40]
 007599F2    movzx       eax,byte ptr [ebp-158]
 007599F9    call        IntToStr
 007599FE    mov         eax,[009036DC];gvar_009036DC
 00759A03    cmp         eax,dword ptr [ebp-48]
>00759A06    jl          00759C5A
 00759A0C    mov         eax,[009036DC];gvar_009036DC
 00759A11    cmp         eax,dword ptr [ebp-4C]
>00759A14    jg          00759C5A
 00759A1A    mov         eax,dword ptr [esi]
 00759A1C    mov         eax,dword ptr [eax+40]
 00759A1F    movzx       edx,byte ptr ds:[75A150];0x0 gvar_0075A150
 00759A26    call        TFont.SetStyle
 00759A2B    mov         eax,dword ptr [ebp-0C]
 00759A2E    push        eax
 00759A2F    mov         edx,dword ptr [ebp-0C]
 00759A32    mov         eax,dword ptr [esi]
 00759A34    call        TCustomCanvas.TextWidth
 00759A39    mov         edx,dword ptr [ebp-58]
 00759A3C    sub         edx,eax
>00759A3E    jno         00759A45
 00759A40    call        @IntOver
 00759A45    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759A4B    mov         eax,dword ptr [esi]
 00759A4D    mov         ebx,dword ptr [eax]
 00759A4F    call        dword ptr [ebx+90]
 00759A55    mov         eax,dword ptr [ebp-10]
 00759A58    push        eax
 00759A59    mov         edx,dword ptr [ebp-10]
 00759A5C    mov         eax,dword ptr [esi]
 00759A5E    call        TCustomCanvas.TextWidth
 00759A63    mov         edx,dword ptr [ebp-5C]
 00759A66    sub         edx,eax
>00759A68    jno         00759A6F
 00759A6A    call        @IntOver
 00759A6F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759A75    mov         eax,dword ptr [esi]
 00759A77    mov         ebx,dword ptr [eax]
 00759A79    call        dword ptr [ebx+90]
 00759A7F    mov         eax,dword ptr [ebp-14]
 00759A82    push        eax
 00759A83    mov         edx,dword ptr [ebp-14]
 00759A86    mov         eax,dword ptr [esi]
 00759A88    call        TCustomCanvas.TextWidth
 00759A8D    mov         edx,dword ptr [ebp-60]
 00759A90    sub         edx,eax
>00759A92    jno         00759A99
 00759A94    call        @IntOver
 00759A99    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759A9F    mov         eax,dword ptr [esi]
 00759AA1    mov         ebx,dword ptr [eax]
 00759AA3    call        dword ptr [ebx+90]
 00759AA9    mov         eax,dword ptr [ebp-18]
 00759AAC    push        eax
 00759AAD    mov         edx,dword ptr [ebp-18]
 00759AB0    mov         eax,dword ptr [esi]
 00759AB2    call        TCustomCanvas.TextWidth
 00759AB7    mov         edx,dword ptr [ebp-64]
 00759ABA    sub         edx,eax
>00759ABC    jno         00759AC3
 00759ABE    call        @IntOver
 00759AC3    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759AC9    mov         eax,dword ptr [esi]
 00759ACB    mov         ebx,dword ptr [eax]
 00759ACD    call        dword ptr [ebx+90]
 00759AD3    mov         eax,dword ptr [ebp-1C]
 00759AD6    push        eax
 00759AD7    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759ADD    mov         edx,dword ptr [ebp-68]
 00759AE0    mov         eax,dword ptr [esi]
 00759AE2    mov         ebx,dword ptr [eax]
 00759AE4    call        dword ptr [ebx+90]
 00759AEA    mov         eax,dword ptr [ebp-20]
 00759AED    push        eax
 00759AEE    mov         edx,dword ptr [ebp-20]
 00759AF1    mov         eax,dword ptr [esi]
 00759AF3    call        TCustomCanvas.TextWidth
 00759AF8    mov         edx,dword ptr [ebp-6C]
 00759AFB    sub         edx,eax
>00759AFD    jno         00759B04
 00759AFF    call        @IntOver
 00759B04    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759B0A    mov         eax,dword ptr [esi]
 00759B0C    mov         ebx,dword ptr [eax]
 00759B0E    call        dword ptr [ebx+90]
 00759B14    mov         eax,dword ptr [ebp-24]
 00759B17    push        eax
 00759B18    mov         edx,dword ptr [ebp-24]
 00759B1B    mov         eax,dword ptr [esi]
 00759B1D    call        TCustomCanvas.TextWidth
 00759B22    mov         edx,dword ptr [ebp-70]
 00759B25    sub         edx,eax
>00759B27    jno         00759B2E
 00759B29    call        @IntOver
 00759B2E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759B34    mov         eax,dword ptr [esi]
 00759B36    mov         ebx,dword ptr [eax]
 00759B38    call        dword ptr [ebx+90]
 00759B3E    mov         eax,dword ptr [ebp-28]
 00759B41    push        eax
 00759B42    mov         edx,dword ptr [ebp-28]
 00759B45    mov         eax,dword ptr [esi]
 00759B47    call        TCustomCanvas.TextWidth
 00759B4C    mov         edx,dword ptr [ebp-74]
 00759B4F    sub         edx,eax
>00759B51    jno         00759B58
 00759B53    call        @IntOver
 00759B58    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759B5E    mov         eax,dword ptr [esi]
 00759B60    mov         ebx,dword ptr [eax]
 00759B62    call        dword ptr [ebx+90]
 00759B68    mov         eax,dword ptr [ebp-2C]
 00759B6B    push        eax
 00759B6C    mov         edx,dword ptr [ebp-2C]
 00759B6F    mov         eax,dword ptr [esi]
 00759B71    call        TCustomCanvas.TextWidth
 00759B76    mov         edx,dword ptr [ebp-78]
 00759B79    sub         edx,eax
>00759B7B    jno         00759B82
 00759B7D    call        @IntOver
 00759B82    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759B88    mov         eax,dword ptr [esi]
 00759B8A    mov         ebx,dword ptr [eax]
 00759B8C    call        dword ptr [ebx+90]
 00759B92    mov         eax,dword ptr [ebp-30]
 00759B95    push        eax
 00759B96    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759B9C    mov         edx,dword ptr [ebp-7C]
 00759B9F    mov         eax,dword ptr [esi]
 00759BA1    mov         ebx,dword ptr [eax]
 00759BA3    call        dword ptr [ebx+90]
 00759BA9    mov         eax,dword ptr [ebp-34]
 00759BAC    push        eax
 00759BAD    mov         edx,dword ptr [ebp-34]
 00759BB0    mov         eax,dword ptr [esi]
 00759BB2    call        TCustomCanvas.TextWidth
 00759BB7    mov         edx,dword ptr [ebp-80]
 00759BBA    sub         edx,eax
>00759BBC    jno         00759BC3
 00759BBE    call        @IntOver
 00759BC3    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759BC9    mov         eax,dword ptr [esi]
 00759BCB    mov         ebx,dword ptr [eax]
 00759BCD    call        dword ptr [ebx+90]
 00759BD3    mov         eax,dword ptr [ebp-38]
 00759BD6    push        eax
 00759BD7    mov         edx,dword ptr [ebp-38]
 00759BDA    mov         eax,dword ptr [esi]
 00759BDC    call        TCustomCanvas.TextWidth
 00759BE1    mov         edx,dword ptr [ebp-84]
 00759BE7    sub         edx,eax
>00759BE9    jno         00759BF0
 00759BEB    call        @IntOver
 00759BF0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759BF6    mov         eax,dword ptr [esi]
 00759BF8    mov         ebx,dword ptr [eax]
 00759BFA    call        dword ptr [ebx+90]
 00759C00    mov         eax,dword ptr [ebp-3C]
 00759C03    push        eax
 00759C04    mov         edx,dword ptr [ebp-3C]
 00759C07    mov         eax,dword ptr [esi]
 00759C09    call        TCustomCanvas.TextWidth
 00759C0E    mov         edx,dword ptr [ebp-88]
 00759C14    sub         edx,eax
>00759C16    jno         00759C1D
 00759C18    call        @IntOver
 00759C1D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759C23    mov         eax,dword ptr [esi]
 00759C25    mov         ebx,dword ptr [eax]
 00759C27    call        dword ptr [ebx+90]
 00759C2D    mov         eax,dword ptr [ebp-40]
 00759C30    push        eax
 00759C31    mov         edx,dword ptr [ebp-40]
 00759C34    mov         eax,dword ptr [esi]
 00759C36    call        TCustomCanvas.TextWidth
 00759C3B    mov         edx,dword ptr [ebp-8C]
 00759C41    sub         edx,eax
>00759C43    jno         00759C4A
 00759C45    call        @IntOver
 00759C4A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759C50    mov         eax,dword ptr [esi]
 00759C52    mov         ebx,dword ptr [eax]
 00759C54    call        dword ptr [ebx+90]
 00759C5A    mov         eax,3
 00759C5F    call        00753BA0
 00759C64    lea         eax,[ebp-0C]
 00759C67    mov         edx,dword ptr ds:[7C3F04];^'Customer text: '
 00759C6D    call        @UStrLAsg
 00759C72    lea         eax,[ebp-10]
 00759C75    mov         edx,dword ptr [ebp-44]
 00759C78    cmp         edx,7
>00759C7B    jbe         00759C82
 00759C7D    call        @BoundErr
 00759C82    imul        edx,edx,9F0
>00759C88    jno         00759C8F
 00759C8A    call        @IntOver
 00759C8F    mov         ecx,dword ptr ds:[903774];gvar_00903774
 00759C95    lea         edi,[ecx+edx*8]
 00759C98    mov         edx,dword ptr [ebp-90]
 00759C9E    cmp         edx,1
>00759CA1    jbe         00759CA8
 00759CA3    call        @BoundErr
 00759CA8    imul        edx,edx,4F8
>00759CAE    jno         00759CB5
 00759CB0    call        @IntOver
 00759CB5    lea         edx,[edi+edx*8]
 00759CB8    mov         ecx,dword ptr [ebp-94]
 00759CBE    dec         ecx
 00759CBF    cmp         ecx,9E
>00759CC5    jbe         00759CCC
 00759CC7    call        @BoundErr
 00759CCC    inc         ecx
 00759CCD    imul        ecx,ecx,8
>00759CD0    jno         00759CD7
 00759CD2    call        @IntOver
 00759CD7    lea         edx,[edx+ecx*8-3A]
 00759CDB    call        @UStrFromString
 00759CE0    mov         eax,[009036DC];gvar_009036DC
 00759CE5    cmp         eax,dword ptr [ebp-48]
>00759CE8    jl          00759D46
 00759CEA    mov         eax,[009036DC];gvar_009036DC
 00759CEF    cmp         eax,dword ptr [ebp-4C]
>00759CF2    jg          00759D46
 00759CF4    mov         eax,dword ptr [esi]
 00759CF6    mov         eax,dword ptr [eax+40]
 00759CF9    movzx       edx,byte ptr ds:[75A150];0x0 gvar_0075A150
 00759D00    call        TFont.SetStyle
 00759D05    mov         eax,dword ptr [ebp-0C]
 00759D08    push        eax
 00759D09    mov         edx,dword ptr [ebp-0C]
 00759D0C    mov         eax,dword ptr [esi]
 00759D0E    call        TCustomCanvas.TextWidth
 00759D13    mov         edx,dword ptr [ebp-68]
 00759D16    sub         edx,eax
>00759D18    jno         00759D1F
 00759D1A    call        @IntOver
 00759D1F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759D25    mov         eax,dword ptr [esi]
 00759D27    mov         ebx,dword ptr [eax]
 00759D29    call        dword ptr [ebx+90]
 00759D2F    mov         eax,dword ptr [ebp-10]
 00759D32    push        eax
 00759D33    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759D39    mov         edx,dword ptr [ebp-68]
 00759D3C    mov         eax,dword ptr [esi]
 00759D3E    mov         ebx,dword ptr [eax]
 00759D40    call        dword ptr [ebx+90]
 00759D46    mov         eax,2
 00759D4B    call        00753BA0
 00759D50    lea         eax,[ebp-0C]
 00759D53    mov         ecx,75A160;': '
 00759D58    mov         edx,dword ptr ds:[7C3F20];^'Input funct.'
 00759D5E    call        @UStrCat3
 00759D63    lea         ecx,[ebp-10]
 00759D66    movzx       edx,byte ptr [ebp-154]
 00759D6D    mov         eax,[00903770];gvar_00903770
 00759D72    call        TFXPAD.ComIntToInput
 00759D77    lea         eax,[ebp-14]
 00759D7A    mov         ecx,75A160;': '
 00759D7F    mov         edx,dword ptr ds:[7C3F48];^'Output funct.'
 00759D85    call        @UStrCat3
 00759D8A    lea         ecx,[ebp-18]
 00759D8D    movzx       edx,byte ptr [ebp-153]
 00759D94    mov         eax,[00903770];gvar_00903770
 00759D99    call        TFXPAD.ApoIntToOutput
 00759D9E    mov         eax,[009036DC];gvar_009036DC
 00759DA3    cmp         eax,dword ptr [ebp-48]
>00759DA6    jl          00759E4D
 00759DAC    mov         eax,[009036DC];gvar_009036DC
 00759DB1    cmp         eax,dword ptr [ebp-4C]
>00759DB4    jg          00759E4D
 00759DBA    mov         eax,dword ptr [esi]
 00759DBC    mov         eax,dword ptr [eax+40]
 00759DBF    movzx       edx,byte ptr ds:[75A150];0x0 gvar_0075A150
 00759DC6    call        TFont.SetStyle
 00759DCB    mov         eax,dword ptr [ebp-0C]
 00759DCE    push        eax
 00759DCF    mov         edx,dword ptr [ebp-0C]
 00759DD2    mov         eax,dword ptr [esi]
 00759DD4    call        TCustomCanvas.TextWidth
 00759DD9    mov         edx,dword ptr [ebp-68]
 00759DDC    sub         edx,eax
>00759DDE    jno         00759DE5
 00759DE0    call        @IntOver
 00759DE5    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759DEB    mov         eax,dword ptr [esi]
 00759DED    mov         ebx,dword ptr [eax]
 00759DEF    call        dword ptr [ebx+90]
 00759DF5    mov         eax,dword ptr [ebp-10]
 00759DF8    push        eax
 00759DF9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759DFF    mov         edx,dword ptr [ebp-68]
 00759E02    mov         eax,dword ptr [esi]
 00759E04    mov         ebx,dword ptr [eax]
 00759E06    call        dword ptr [ebx+90]
 00759E0C    mov         eax,dword ptr [ebp-14]
 00759E0F    push        eax
 00759E10    mov         edx,dword ptr [ebp-14]
 00759E13    mov         eax,dword ptr [esi]
 00759E15    call        TCustomCanvas.TextWidth
 00759E1A    mov         edx,dword ptr [ebp-78]
 00759E1D    sub         edx,eax
>00759E1F    jno         00759E26
 00759E21    call        @IntOver
 00759E26    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759E2C    mov         eax,dword ptr [esi]
 00759E2E    mov         ebx,dword ptr [eax]
 00759E30    call        dword ptr [ebx+90]
 00759E36    mov         eax,dword ptr [ebp-18]
 00759E39    push        eax
 00759E3A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759E40    mov         edx,dword ptr [ebp-78]
 00759E43    mov         eax,dword ptr [esi]
 00759E45    mov         ebx,dword ptr [eax]
 00759E47    call        dword ptr [ebx+90]
 00759E4D    mov         eax,1
 00759E52    call        00753BA0
 00759E57    lea         eax,[ebp-0C]
 00759E5A    mov         edx,dword ptr ds:[7C3F08];^'Control groups: '
 00759E60    call        @UStrLAsg
 00759E65    mov         eax,[009036DC];gvar_009036DC
 00759E6A    cmp         eax,dword ptr [ebp-48]
>00759E6D    jl          00759EA3
 00759E6F    mov         eax,[009036DC];gvar_009036DC
 00759E74    cmp         eax,dword ptr [ebp-4C]
>00759E77    jg          00759EA3
 00759E79    mov         eax,dword ptr [ebp-0C]
 00759E7C    push        eax
 00759E7D    mov         edx,dword ptr [ebp-0C]
 00759E80    mov         eax,dword ptr [esi]
 00759E82    call        TCustomCanvas.TextWidth
 00759E87    mov         edx,dword ptr [ebp-68]
 00759E8A    sub         edx,eax
>00759E8C    jno         00759E93
 00759E8E    call        @IntOver
 00759E93    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759E99    mov         eax,dword ptr [esi]
 00759E9B    mov         ebx,dword ptr [eax]
 00759E9D    call        dword ptr [ebx+90]
 00759EA3    xor         ebx,ebx
 00759EA5    mov         dword ptr [ebp-98],1
 00759EAF    lea         eax,[ebp-10]
 00759EB2    mov         edx,75A174;' '
 00759EB7    call        @UStrLAsg
 00759EBC    lea         edx,[ebp-4]
 00759EBF    lea         eax,[ebp-14C]
 00759EC5    call        006955F8
 00759ECA    mov         eax,dword ptr [ebp-4]
 00759ECD    mov         edx,dword ptr ds:[7C47A0];^gvar_007C286C
 00759ED3    mov         edx,dword ptr [edx]
 00759ED5    call        @UStrEqual
>00759EDA    je          00759EEE
 00759EDC    mov         eax,dword ptr [ebp-4]
 00759EDF    mov         edx,dword ptr ds:[7C4750];^gvar_007C2870
 00759EE5    mov         edx,dword ptr [edx]
 00759EE7    call        @UStrEqual
>00759EEC    jne         00759F42
 00759EEE    lea         eax,[ebp-10]
 00759EF1    mov         edx,dword ptr [ebp-4]
 00759EF4    call        @UStrCat
 00759EF9    mov         eax,[009036DC];gvar_009036DC
 00759EFE    cmp         eax,dword ptr [ebp-48]
>00759F01    jl          0075A0A7
 00759F07    mov         eax,[009036DC];gvar_009036DC
 00759F0C    cmp         eax,dword ptr [ebp-4C]
>00759F0F    jg          0075A0A7
 00759F15    mov         eax,dword ptr [esi]
 00759F17    mov         eax,dword ptr [eax+40]
 00759F1A    movzx       edx,byte ptr ds:[75A150];0x0 gvar_0075A150
 00759F21    call        TFont.SetStyle
 00759F26    mov         eax,dword ptr [ebp-10]
 00759F29    push        eax
 00759F2A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 00759F30    mov         edx,dword ptr [ebp-68]
 00759F33    mov         eax,dword ptr [esi]
 00759F35    mov         ebx,dword ptr [eax]
 00759F37    call        dword ptr [ebx+90]
>00759F3D    jmp         0075A0A7
 00759F42    mov         eax,1
 00759F47    add         eax,ebx
>00759F49    jno         00759F50
 00759F4B    call        @IntOver
 00759F50    mov         ecx,eax
 00759F52    mov         edx,dword ptr [ebp-4]
 00759F55    mov         eax,75A184;';'
 00759F5A    call        Pos
 00759F5F    mov         ebx,eax
 00759F61    lea         eax,[ebp-1AC]
 00759F67    push        eax
 00759F68    mov         edi,ebx
 00759F6A    sub         edi,dword ptr [ebp-98]
>00759F70    jno         00759F77
 00759F72    call        @IntOver
 00759F77    add         edi,1
>00759F7A    jno         00759F81
 00759F7C    call        @IntOver
 00759F81    mov         ecx,edi
 00759F83    mov         edx,dword ptr [ebp-98]
 00759F89    mov         eax,dword ptr [ebp-4]
 00759F8C    call        00431F88
 00759F91    mov         ecx,dword ptr [ebp-1AC]
 00759F97    lea         eax,[ebp-1A8]
 00759F9D    mov         edx,dword ptr [ebp-10]
 00759FA0    call        @UStrCat3
 00759FA5    mov         edx,dword ptr [ebp-1A8]
 00759FAB    mov         eax,dword ptr [esi]
 00759FAD    call        TCustomCanvas.TextWidth
 00759FB2    mov         edx,dword ptr [ebp-8C]
 00759FB8    sub         edx,dword ptr [ebp-68]
>00759FBB    jno         00759FC2
 00759FBD    call        @IntOver
 00759FC2    cmp         eax,edx
>00759FC4    jge         0075A001
 00759FC6    lea         eax,[ebp-1B0]
 00759FCC    push        eax
 00759FCD    mov         ecx,edi
 00759FCF    mov         edx,dword ptr [ebp-98]
 00759FD5    mov         eax,dword ptr [ebp-4]
 00759FD8    call        00431F88
 00759FDD    mov         edx,dword ptr [ebp-1B0]
 00759FE3    lea         eax,[ebp-10]
 00759FE6    call        @UStrCat
 00759FEB    mov         eax,1
 00759FF0    add         eax,ebx
>00759FF2    jno         00759FF9
 00759FF4    call        @IntOver
 00759FF9    mov         dword ptr [ebp-98],eax
>00759FFF    jmp         0075A05F
 0075A001    mov         eax,[009036DC];gvar_009036DC
 0075A006    cmp         eax,dword ptr [ebp-48]
>0075A009    jl          0075A03D
 0075A00B    mov         eax,[009036DC];gvar_009036DC
 0075A010    cmp         eax,dword ptr [ebp-4C]
>0075A013    jg          0075A03D
 0075A015    mov         eax,dword ptr [esi]
 0075A017    mov         eax,dword ptr [eax+40]
 0075A01A    movzx       edx,byte ptr ds:[75A150];0x0 gvar_0075A150
 0075A021    call        TFont.SetStyle
 0075A026    mov         eax,dword ptr [ebp-10]
 0075A029    push        eax
 0075A02A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A030    mov         edx,dword ptr [ebp-68]
 0075A033    mov         eax,dword ptr [esi]
 0075A035    mov         ebx,dword ptr [eax]
 0075A037    call        dword ptr [ebx+90]
 0075A03D    mov         ebx,dword ptr [ebp-98]
 0075A043    sub         ebx,1
>0075A046    jno         0075A04D
 0075A048    call        @IntOver
 0075A04D    mov         eax,1
 0075A052    call        00753BA0
 0075A057    lea         eax,[ebp-10]
 0075A05A    call        @UStrClr
 0075A05F    test        ebx,ebx
>0075A061    jne         0075A09F
 0075A063    mov         eax,[009036DC];gvar_009036DC
 0075A068    cmp         eax,dword ptr [ebp-48]
>0075A06B    jl          0075A09F
 0075A06D    mov         eax,[009036DC];gvar_009036DC
 0075A072    cmp         eax,dword ptr [ebp-4C]
>0075A075    jg          0075A09F
 0075A077    mov         eax,dword ptr [esi]
 0075A079    mov         eax,dword ptr [eax+40]
 0075A07C    movzx       edx,byte ptr ds:[75A150];0x0 gvar_0075A150
 0075A083    call        TFont.SetStyle
 0075A088    mov         eax,dword ptr [ebp-10]
 0075A08B    push        eax
 0075A08C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A092    mov         edx,dword ptr [ebp-68]
 0075A095    mov         eax,dword ptr [esi]
 0075A097    mov         edi,dword ptr [eax]
 0075A099    call        dword ptr [edi+90]
 0075A09F    test        ebx,ebx
>0075A0A1    jne         00759F42
 0075A0A7    mov         eax,4
 0075A0AC    call        00753BA0
 0075A0B1    inc         dword ptr [ebp-94]
 0075A0B7    cmp         dword ptr [ebp-94],7F
>0075A0BE    jne         00759722
 0075A0C4    inc         dword ptr [ebp-90]
 0075A0CA    cmp         dword ptr [ebp-90],1
>0075A0D1    jne         00759718
 0075A0D7    xor         eax,eax
 0075A0D9    pop         edx
 0075A0DA    pop         ecx
 0075A0DB    pop         ecx
 0075A0DC    mov         dword ptr fs:[eax],edx
 0075A0DF    push        75A109
 0075A0E4    lea         eax,[ebp-1B0]
 0075A0EA    mov         edx,0B
 0075A0EF    call        @UStrArrayClr
 0075A0F4    lea         eax,[ebp-40]
 0075A0F7    mov         edx,10
 0075A0FC    call        @UStrArrayClr
 0075A101    ret
>0075A102    jmp         @HandleFinally
>0075A107    jmp         0075A0E4
 0075A109    pop         edi
 0075A10A    pop         esi
 0075A10B    pop         ebx
 0075A10C    mov         esp,ebp
 0075A10E    pop         ebp
 0075A10F    ret         4
end;*}

//0075A188
{*procedure sub_0075A188(?:?; ?:Integer; ?:Integer; ?:?);
begin
 0075A188    push        ebp
 0075A189    mov         ebp,esp
 0075A18B    push        ecx
 0075A18C    mov         ecx,35
 0075A191    push        0
 0075A193    push        0
 0075A195    dec         ecx
>0075A196    jne         0075A191
 0075A198    push        ecx
 0075A199    xchg        ecx,dword ptr [ebp-4]
 0075A19C    push        ebx
 0075A19D    push        esi
 0075A19E    push        edi
 0075A19F    mov         dword ptr [ebp-4C],ecx
 0075A1A2    mov         dword ptr [ebp-48],edx
 0075A1A5    mov         dword ptr [ebp-44],eax
 0075A1A8    mov         ebx,dword ptr [ebp+8]
 0075A1AB    mov         esi,9036CC;gvar_009036CC:TCanvas
 0075A1B0    xor         eax,eax
 0075A1B2    push        ebp
 0075A1B3    push        75B111
 0075A1B8    push        dword ptr fs:[eax]
 0075A1BB    mov         dword ptr fs:[eax],esp
 0075A1BE    mov         edx,ebx
 0075A1C0    mov         eax,0A
 0075A1C5    call        007537B0
 0075A1CA    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A1D0    jno         0075A1D7
 0075A1D2    call        @IntOver
 0075A1D7    mov         dword ptr [ebp-58],eax
 0075A1DA    mov         edx,ebx
 0075A1DC    mov         eax,15
 0075A1E1    call        007537B0
 0075A1E6    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A1EC    jno         0075A1F3
 0075A1EE    call        @IntOver
 0075A1F3    mov         dword ptr [ebp-5C],eax
 0075A1F6    mov         edx,ebx
 0075A1F8    mov         eax,1E
 0075A1FD    call        007537B0
 0075A202    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A208    jno         0075A20F
 0075A20A    call        @IntOver
 0075A20F    mov         dword ptr [ebp-60],eax
 0075A212    mov         edx,ebx
 0075A214    mov         eax,27
 0075A219    call        007537B0
 0075A21E    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A224    jno         0075A22B
 0075A226    call        @IntOver
 0075A22B    mov         dword ptr [ebp-64],eax
 0075A22E    mov         edx,ebx
 0075A230    mov         eax,29
 0075A235    call        007537B0
 0075A23A    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A240    jno         0075A247
 0075A242    call        @IntOver
 0075A247    mov         dword ptr [ebp-68],eax
 0075A24A    mov         edx,ebx
 0075A24C    mov         eax,4D
 0075A251    call        007537B0
 0075A256    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A25C    jno         0075A263
 0075A25E    call        @IntOver
 0075A263    mov         dword ptr [ebp-6C],eax
 0075A266    mov         edx,ebx
 0075A268    mov         eax,57
 0075A26D    call        007537B0
 0075A272    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A278    jno         0075A27F
 0075A27A    call        @IntOver
 0075A27F    mov         dword ptr [ebp-70],eax
 0075A282    mov         edx,ebx
 0075A284    mov         eax,62
 0075A289    call        007537B0
 0075A28E    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A294    jno         0075A29B
 0075A296    call        @IntOver
 0075A29B    mov         dword ptr [ebp-74],eax
 0075A29E    mov         edx,ebx
 0075A2A0    mov         eax,6D
 0075A2A5    call        007537B0
 0075A2AA    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A2B0    jno         0075A2B7
 0075A2B2    call        @IntOver
 0075A2B7    mov         dword ptr [ebp-78],eax
 0075A2BA    mov         edx,ebx
 0075A2BC    mov         eax,6E
 0075A2C1    call        007537B0
 0075A2C6    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A2CC    jno         0075A2D3
 0075A2CE    call        @IntOver
 0075A2D3    mov         dword ptr [ebp-7C],eax
 0075A2D6    mov         edx,ebx
 0075A2D8    mov         eax,88
 0075A2DD    call        007537B0
 0075A2E2    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A2E8    jno         0075A2EF
 0075A2EA    call        @IntOver
 0075A2EF    mov         dword ptr [ebp-80],eax
 0075A2F2    mov         edx,ebx
 0075A2F4    mov         eax,91
 0075A2F9    call        007537B0
 0075A2FE    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A304    jno         0075A30B
 0075A306    call        @IntOver
 0075A30B    mov         dword ptr [ebp-84],eax
 0075A311    mov         edx,ebx
 0075A313    mov         eax,9A
 0075A318    call        007537B0
 0075A31D    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A323    jno         0075A32A
 0075A325    call        @IntOver
 0075A32A    mov         dword ptr [ebp-88],eax
 0075A330    mov         edx,ebx
 0075A332    mov         eax,0A3
 0075A337    call        007537B0
 0075A33C    add         eax,dword ptr ds:[903714];gvar_00903714
>0075A342    jno         0075A349
 0075A344    call        @IntOver
 0075A349    mov         dword ptr [ebp-8C],eax
 0075A34F    xor         eax,eax
 0075A351    call        00753BA0
 0075A356    lea         eax,[ebp-0C]
 0075A359    mov         edx,dword ptr ds:[7C3F0C];^'Address'
 0075A35F    call        @UStrLAsg
 0075A364    lea         eax,[ebp-10]
 0075A367    mov         edx,dword ptr ds:[7C3F10];^'D-Zone'
 0075A36D    call        @UStrLAsg
 0075A372    lea         eax,[ebp-14]
 0075A375    mov         edx,dword ptr ds:[7C3F14];^'Ctrl A'
 0075A37B    call        @UStrLAsg
 0075A380    lea         eax,[ebp-18]
 0075A383    mov         edx,dword ptr ds:[7C3F18];^'Ctrl B'
 0075A389    call        @UStrLAsg
 0075A38E    lea         eax,[ebp-1C]
 0075A391    mov         edx,dword ptr ds:[7C3F1C];^'Type'
 0075A397    call        @UStrLAsg
 0075A39C    lea         eax,[ebp-20]
 0075A39F    mov         edx,dword ptr ds:[7C3F24];^'Fire'
 0075A3A5    call        @UStrLAsg
 0075A3AA    lea         eax,[ebp-24]
 0075A3AD    mov         edx,dword ptr ds:[7C3F28];^'PreA'
 0075A3B3    call        @UStrLAsg
 0075A3B8    lea         eax,[ebp-28]
 0075A3BB    mov         edx,dword ptr ds:[7C3F2C];^'D-Fire'
 0075A3C1    call        @UStrLAsg
 0075A3C6    lea         eax,[ebp-2C]
 0075A3C9    mov         edx,dword ptr ds:[7C3F30];^'D-PreA'
 0075A3CF    call        @UStrLAsg
 0075A3D4    lea         eax,[ebp-30]
 0075A3D7    mov         edx,dword ptr ds:[7C3F34];^'Mode'
 0075A3DD    call        @UStrLAsg
 0075A3E2    lea         eax,[ebp-34]
 0075A3E5    mov         edx,dword ptr ds:[7C3F38];^'InDel.'
 0075A3EB    call        @UStrLAsg
 0075A3F0    lea         eax,[ebp-38]
 0075A3F3    mov         edx,dword ptr ds:[7C3F3C];^'InFilt'
 0075A3F9    call        @UStrLAsg
 0075A3FE    lea         eax,[ebp-3C]
 0075A401    mov         edx,dword ptr ds:[7C3F40];^'DayM'
 0075A407    call        @UStrLAsg
 0075A40C    lea         eax,[ebp-40]
 0075A40F    mov         edx,dword ptr ds:[7C3F44];^'ZDis'
 0075A415    call        @UStrLAsg
 0075A41A    mov         eax,[009036DC];gvar_009036DC
 0075A41F    cmp         eax,dword ptr [ebp-48]
>0075A422    jl          0075A676
 0075A428    mov         eax,[009036DC];gvar_009036DC
 0075A42D    cmp         eax,dword ptr [ebp-4C]
>0075A430    jg          0075A676
 0075A436    mov         eax,dword ptr [esi]
 0075A438    mov         eax,dword ptr [eax+40]
 0075A43B    movzx       edx,byte ptr ds:[75B124];0x1 gvar_0075B124
 0075A442    call        TFont.SetStyle
 0075A447    mov         eax,dword ptr [ebp-0C]
 0075A44A    push        eax
 0075A44B    mov         edx,dword ptr [ebp-0C]
 0075A44E    mov         eax,dword ptr [esi]
 0075A450    call        TCustomCanvas.TextWidth
 0075A455    mov         edx,dword ptr [ebp-58]
 0075A458    sub         edx,eax
>0075A45A    jno         0075A461
 0075A45C    call        @IntOver
 0075A461    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A467    mov         eax,dword ptr [esi]
 0075A469    mov         ebx,dword ptr [eax]
 0075A46B    call        dword ptr [ebx+90]
 0075A471    mov         eax,dword ptr [ebp-10]
 0075A474    push        eax
 0075A475    mov         edx,dword ptr [ebp-10]
 0075A478    mov         eax,dword ptr [esi]
 0075A47A    call        TCustomCanvas.TextWidth
 0075A47F    mov         edx,dword ptr [ebp-5C]
 0075A482    sub         edx,eax
>0075A484    jno         0075A48B
 0075A486    call        @IntOver
 0075A48B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A491    mov         eax,dword ptr [esi]
 0075A493    mov         ebx,dword ptr [eax]
 0075A495    call        dword ptr [ebx+90]
 0075A49B    mov         eax,dword ptr [ebp-14]
 0075A49E    push        eax
 0075A49F    mov         edx,dword ptr [ebp-14]
 0075A4A2    mov         eax,dword ptr [esi]
 0075A4A4    call        TCustomCanvas.TextWidth
 0075A4A9    mov         edx,dword ptr [ebp-60]
 0075A4AC    sub         edx,eax
>0075A4AE    jno         0075A4B5
 0075A4B0    call        @IntOver
 0075A4B5    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A4BB    mov         eax,dword ptr [esi]
 0075A4BD    mov         ebx,dword ptr [eax]
 0075A4BF    call        dword ptr [ebx+90]
 0075A4C5    mov         eax,dword ptr [ebp-18]
 0075A4C8    push        eax
 0075A4C9    mov         edx,dword ptr [ebp-18]
 0075A4CC    mov         eax,dword ptr [esi]
 0075A4CE    call        TCustomCanvas.TextWidth
 0075A4D3    mov         edx,dword ptr [ebp-64]
 0075A4D6    sub         edx,eax
>0075A4D8    jno         0075A4DF
 0075A4DA    call        @IntOver
 0075A4DF    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A4E5    mov         eax,dword ptr [esi]
 0075A4E7    mov         ebx,dword ptr [eax]
 0075A4E9    call        dword ptr [ebx+90]
 0075A4EF    mov         eax,dword ptr [ebp-1C]
 0075A4F2    push        eax
 0075A4F3    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A4F9    mov         edx,dword ptr [ebp-68]
 0075A4FC    mov         eax,dword ptr [esi]
 0075A4FE    mov         ebx,dword ptr [eax]
 0075A500    call        dword ptr [ebx+90]
 0075A506    mov         eax,dword ptr [ebp-20]
 0075A509    push        eax
 0075A50A    mov         edx,dword ptr [ebp-20]
 0075A50D    mov         eax,dword ptr [esi]
 0075A50F    call        TCustomCanvas.TextWidth
 0075A514    mov         edx,dword ptr [ebp-6C]
 0075A517    sub         edx,eax
>0075A519    jno         0075A520
 0075A51B    call        @IntOver
 0075A520    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A526    mov         eax,dword ptr [esi]
 0075A528    mov         ebx,dword ptr [eax]
 0075A52A    call        dword ptr [ebx+90]
 0075A530    mov         eax,dword ptr [ebp-24]
 0075A533    push        eax
 0075A534    mov         edx,dword ptr [ebp-24]
 0075A537    mov         eax,dword ptr [esi]
 0075A539    call        TCustomCanvas.TextWidth
 0075A53E    mov         edx,dword ptr [ebp-70]
 0075A541    sub         edx,eax
>0075A543    jno         0075A54A
 0075A545    call        @IntOver
 0075A54A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A550    mov         eax,dword ptr [esi]
 0075A552    mov         ebx,dword ptr [eax]
 0075A554    call        dword ptr [ebx+90]
 0075A55A    mov         eax,dword ptr [ebp-28]
 0075A55D    push        eax
 0075A55E    mov         edx,dword ptr [ebp-28]
 0075A561    mov         eax,dword ptr [esi]
 0075A563    call        TCustomCanvas.TextWidth
 0075A568    mov         edx,dword ptr [ebp-74]
 0075A56B    sub         edx,eax
>0075A56D    jno         0075A574
 0075A56F    call        @IntOver
 0075A574    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A57A    mov         eax,dword ptr [esi]
 0075A57C    mov         ebx,dword ptr [eax]
 0075A57E    call        dword ptr [ebx+90]
 0075A584    mov         eax,dword ptr [ebp-2C]
 0075A587    push        eax
 0075A588    mov         edx,dword ptr [ebp-2C]
 0075A58B    mov         eax,dword ptr [esi]
 0075A58D    call        TCustomCanvas.TextWidth
 0075A592    mov         edx,dword ptr [ebp-78]
 0075A595    sub         edx,eax
>0075A597    jno         0075A59E
 0075A599    call        @IntOver
 0075A59E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A5A4    mov         eax,dword ptr [esi]
 0075A5A6    mov         ebx,dword ptr [eax]
 0075A5A8    call        dword ptr [ebx+90]
 0075A5AE    mov         eax,dword ptr [ebp-30]
 0075A5B1    push        eax
 0075A5B2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A5B8    mov         edx,dword ptr [ebp-7C]
 0075A5BB    mov         eax,dword ptr [esi]
 0075A5BD    mov         ebx,dword ptr [eax]
 0075A5BF    call        dword ptr [ebx+90]
 0075A5C5    mov         eax,dword ptr [ebp-34]
 0075A5C8    push        eax
 0075A5C9    mov         edx,dword ptr [ebp-34]
 0075A5CC    mov         eax,dword ptr [esi]
 0075A5CE    call        TCustomCanvas.TextWidth
 0075A5D3    mov         edx,dword ptr [ebp-80]
 0075A5D6    sub         edx,eax
>0075A5D8    jno         0075A5DF
 0075A5DA    call        @IntOver
 0075A5DF    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A5E5    mov         eax,dword ptr [esi]
 0075A5E7    mov         ebx,dword ptr [eax]
 0075A5E9    call        dword ptr [ebx+90]
 0075A5EF    mov         eax,dword ptr [ebp-38]
 0075A5F2    push        eax
 0075A5F3    mov         edx,dword ptr [ebp-38]
 0075A5F6    mov         eax,dword ptr [esi]
 0075A5F8    call        TCustomCanvas.TextWidth
 0075A5FD    mov         edx,dword ptr [ebp-84]
 0075A603    sub         edx,eax
>0075A605    jno         0075A60C
 0075A607    call        @IntOver
 0075A60C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A612    mov         eax,dword ptr [esi]
 0075A614    mov         ebx,dword ptr [eax]
 0075A616    call        dword ptr [ebx+90]
 0075A61C    mov         eax,dword ptr [ebp-3C]
 0075A61F    push        eax
 0075A620    mov         edx,dword ptr [ebp-3C]
 0075A623    mov         eax,dword ptr [esi]
 0075A625    call        TCustomCanvas.TextWidth
 0075A62A    mov         edx,dword ptr [ebp-88]
 0075A630    sub         edx,eax
>0075A632    jno         0075A639
 0075A634    call        @IntOver
 0075A639    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A63F    mov         eax,dword ptr [esi]
 0075A641    mov         ebx,dword ptr [eax]
 0075A643    call        dword ptr [ebx+90]
 0075A649    mov         eax,dword ptr [ebp-40]
 0075A64C    push        eax
 0075A64D    mov         edx,dword ptr [ebp-40]
 0075A650    mov         eax,dword ptr [esi]
 0075A652    call        TCustomCanvas.TextWidth
 0075A657    mov         edx,dword ptr [ebp-8C]
 0075A65D    sub         edx,eax
>0075A65F    jno         0075A666
 0075A661    call        @IntOver
 0075A666    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075A66C    mov         eax,dword ptr [esi]
 0075A66E    mov         ebx,dword ptr [eax]
 0075A670    call        dword ptr [ebx+90]
 0075A676    mov         eax,4
 0075A67B    call        00753BA0
 0075A680    xor         eax,eax
 0075A682    mov         dword ptr [ebp-90],eax
 0075A688    mov         dword ptr [ebp-94],1
 0075A692    mov         eax,dword ptr [ebp-44]
 0075A695    cmp         eax,7
>0075A698    jbe         0075A69F
 0075A69A    call        @BoundErr
 0075A69F    imul        eax,eax,43B3
>0075A6A5    jno         0075A6AC
 0075A6A7    call        @IntOver
 0075A6AC    mov         edx,dword ptr ds:[903770];gvar_00903770
 0075A6B2    lea         eax,[edx+eax*4]
 0075A6B5    mov         edx,dword ptr [ebp-90]
 0075A6BB    cmp         edx,1
>0075A6BE    jbe         0075A6C5
 0075A6C0    call        @BoundErr
 0075A6C5    imul        edx,edx,43B3
>0075A6CB    jno         0075A6D2
 0075A6CD    call        @IntOver
 0075A6D2    lea         eax,[eax+edx*2]
 0075A6D5    mov         edx,dword ptr [ebp-94]
 0075A6DB    dec         edx
 0075A6DC    cmp         edx,9E
>0075A6E2    jbe         0075A6E9
 0075A6E4    call        @BoundErr
 0075A6E9    inc         edx
 0075A6EA    imul        edx,edx,6D
>0075A6ED    jno         0075A6F4
 0075A6EF    call        @IntOver
 0075A6F4    push        esi
 0075A6F5    lea         esi,[eax+edx*2-0D6]
 0075A6FC    lea         edi,[ebp-172]
 0075A702    mov         ecx,36
 0075A707    rep movs    dword ptr [edi],dword ptr [esi]
 0075A709    movs        word ptr [edi],word ptr [esi]
 0075A70B    pop         esi
 0075A70C    cmp         byte ptr [ebp-168],0
>0075A713    je          0075B0BD
 0075A719    mov         eax,[00903768];gvar_00903768
 0075A71E    call        006A3430
 0075A723    movzx       eax,al
 0075A726    add         eax,dword ptr [ebp-44]
>0075A729    jno         0075A730
 0075A72B    call        @IntOver
 0075A730    lea         edx,[ebp-190]
 0075A736    call        IntToStr
 0075A73B    mov         ecx,dword ptr [ebp-190]
 0075A741    lea         eax,[ebp-18C]
 0075A747    mov         edx,75B134;'00'
 0075A74C    call        @UStrCat3
 0075A751    mov         eax,dword ptr [ebp-18C]
 0075A757    lea         ecx,[ebp-188]
 0075A75D    mov         edx,3
 0075A762    call        00431F5C
 0075A767    push        dword ptr [ebp-188]
 0075A76D    push        75B148;'.'
 0075A772    lea         edx,[ebp-19C]
 0075A778    imul        eax,dword ptr [ebp-90],0C8
>0075A782    jno         0075A789
 0075A784    call        @IntOver
 0075A789    add         eax,dword ptr [ebp-94]
>0075A78F    jno         0075A796
 0075A791    call        @IntOver
 0075A796    call        IntToStr
 0075A79B    mov         ecx,dword ptr [ebp-19C]
 0075A7A1    lea         eax,[ebp-198]
 0075A7A7    mov         edx,75B134;'00'
 0075A7AC    call        @UStrCat3
 0075A7B1    mov         eax,dword ptr [ebp-198]
 0075A7B7    lea         ecx,[ebp-194]
 0075A7BD    mov         edx,3
 0075A7C2    call        00431F5C
 0075A7C7    push        dword ptr [ebp-194]
 0075A7CD    lea         eax,[ebp-0C]
 0075A7D0    mov         edx,3
 0075A7D5    call        @UStrCatN
 0075A7DA    mov         eax,[00903768];gvar_00903768
 0075A7DF    movzx       eax,word ptr [eax+123]
 0075A7E6    movzx       edx,byte ptr [ebp-16D]
 0075A7ED    add         eax,edx
>0075A7EF    jno         0075A7F6
 0075A7F1    call        @IntOver
 0075A7F6    sub         eax,1
>0075A7F9    jno         0075A800
 0075A7FB    call        @IntOver
 0075A800    lea         edx,[ebp-1A4]
 0075A806    call        IntToStr
 0075A80B    mov         ecx,dword ptr [ebp-1A4]
 0075A811    lea         eax,[ebp-1A0]
 0075A817    mov         edx,75B158;'000'
 0075A81C    call        @UStrCat3
 0075A821    mov         eax,dword ptr [ebp-1A0]
 0075A827    lea         ecx,[ebp-10]
 0075A82A    mov         edx,4
 0075A82F    call        00431F5C
 0075A834    lea         edx,[ebp-14]
 0075A837    movzx       eax,word ptr [ebp-16C]
 0075A83E    call        IntToStr
 0075A843    lea         edx,[ebp-18]
 0075A846    movzx       eax,word ptr [ebp-16A]
 0075A84D    call        IntToStr
 0075A852    lea         eax,[ebp-1C]
 0075A855    push        eax
 0075A856    movzx       ebx,byte ptr [ebp-167]
 0075A85D    mov         ecx,ebx
 0075A85F    movzx       edx,byte ptr [ebp-168]
 0075A866    mov         eax,[00903770];gvar_00903770
 0075A86B    call        TFXPAD.SapIntToType
 0075A870    lea         eax,[ebp-20]
 0075A873    push        eax
 0075A874    movzx       eax,byte ptr [ebp-168]
 0075A87B    mov         edx,100
 0075A880    mul         eax,edx
 0075A882    mov         edx,eax
>0075A884    jno         0075A88B
 0075A886    call        @IntOver
 0075A88B    movzx       eax,bl
 0075A88E    add         edx,eax
>0075A890    jno         0075A897
 0075A892    call        @IntOver
 0075A897    cmp         edx,0FFFF
>0075A89D    jbe         0075A8A4
 0075A89F    call        @BoundErr
 0075A8A4    movzx       ecx,word ptr [ebp-166]
 0075A8AB    mov         eax,[00903770];gvar_00903770
 0075A8B0    call        TFXPAD.SapIntToLevel
 0075A8B5    lea         eax,[ebp-24]
 0075A8B8    push        eax
 0075A8B9    movzx       eax,byte ptr [ebp-168]
 0075A8C0    mov         edx,100
 0075A8C5    mul         eax,edx
 0075A8C7    mov         edx,eax
>0075A8C9    jno         0075A8D0
 0075A8CB    call        @IntOver
 0075A8D0    movzx       eax,bl
 0075A8D3    add         edx,eax
>0075A8D5    jno         0075A8DC
 0075A8D7    call        @IntOver
 0075A8DC    cmp         edx,0FFFF
>0075A8E2    jbe         0075A8E9
 0075A8E4    call        @BoundErr
 0075A8E9    movzx       ecx,word ptr [ebp-164]
 0075A8F0    mov         eax,[00903770];gvar_00903770
 0075A8F5    call        TFXPAD.SapIntToLevel
 0075A8FA    lea         eax,[ebp-28]
 0075A8FD    push        eax
 0075A8FE    movzx       eax,byte ptr [ebp-168]
 0075A905    mov         edx,100
 0075A90A    mul         eax,edx
 0075A90C    mov         edx,eax
>0075A90E    jno         0075A915
 0075A910    call        @IntOver
 0075A915    movzx       eax,bl
 0075A918    add         edx,eax
>0075A91A    jno         0075A921
 0075A91C    call        @IntOver
 0075A921    cmp         edx,0FFFF
>0075A927    jbe         0075A92E
 0075A929    call        @BoundErr
 0075A92E    movzx       ecx,word ptr [ebp-162]
 0075A935    mov         eax,[00903770];gvar_00903770
 0075A93A    call        TFXPAD.SapIntToLevel
 0075A93F    lea         eax,[ebp-2C]
 0075A942    push        eax
 0075A943    movzx       eax,byte ptr [ebp-168]
 0075A94A    mov         edx,100
 0075A94F    mul         eax,edx
 0075A951    mov         edx,eax
>0075A953    jno         0075A95A
 0075A955    call        @IntOver
 0075A95A    movzx       eax,bl
 0075A95D    add         edx,eax
>0075A95F    jno         0075A966
 0075A961    call        @IntOver
 0075A966    cmp         edx,0FFFF
>0075A96C    jbe         0075A973
 0075A96E    call        @BoundErr
 0075A973    movzx       ecx,word ptr [ebp-160]
 0075A97A    mov         eax,[00903770];gvar_00903770
 0075A97F    call        TFXPAD.SapIntToLevel
 0075A984    movzx       eax,byte ptr [ebp-15C]
 0075A98B    push        eax
 0075A98C    lea         eax,[ebp-30]
 0075A98F    push        eax
 0075A990    mov         ecx,ebx
 0075A992    movzx       edx,byte ptr [ebp-168]
 0075A999    mov         eax,[00903770];gvar_00903770
 0075A99E    call        TFXPAD.SapIntToMode
 0075A9A3    movzx       eax,byte ptr [ebp-15B]
 0075A9AA    mov         edx,0A
 0075A9AF    mul         eax,edx
>0075A9B1    jno         0075A9B8
 0075A9B3    call        @IntOver
 0075A9B8    lea         edx,[ebp-34]
 0075A9BB    call        IntToStr
 0075A9C0    lea         edx,[ebp-38]
 0075A9C3    movzx       eax,byte ptr [ebp-15A]
 0075A9CA    call        IntToStr
 0075A9CF    lea         edx,[ebp-3C]
 0075A9D2    movzx       eax,byte ptr [ebp-159]
 0075A9D9    call        IntToStr
 0075A9DE    lea         edx,[ebp-40]
 0075A9E1    movzx       eax,byte ptr [ebp-158]
 0075A9E8    call        IntToStr
 0075A9ED    mov         eax,[009036DC];gvar_009036DC
 0075A9F2    cmp         eax,dword ptr [ebp-48]
>0075A9F5    jl          0075AC49
 0075A9FB    mov         eax,[009036DC];gvar_009036DC
 0075AA00    cmp         eax,dword ptr [ebp-4C]
>0075AA03    jg          0075AC49
 0075AA09    mov         eax,dword ptr [esi]
 0075AA0B    mov         eax,dword ptr [eax+40]
 0075AA0E    movzx       edx,byte ptr ds:[75B160];0x0 gvar_0075B160
 0075AA15    call        TFont.SetStyle
 0075AA1A    mov         eax,dword ptr [ebp-0C]
 0075AA1D    push        eax
 0075AA1E    mov         edx,dword ptr [ebp-0C]
 0075AA21    mov         eax,dword ptr [esi]
 0075AA23    call        TCustomCanvas.TextWidth
 0075AA28    mov         edx,dword ptr [ebp-58]
 0075AA2B    sub         edx,eax
>0075AA2D    jno         0075AA34
 0075AA2F    call        @IntOver
 0075AA34    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AA3A    mov         eax,dword ptr [esi]
 0075AA3C    mov         ebx,dword ptr [eax]
 0075AA3E    call        dword ptr [ebx+90]
 0075AA44    mov         eax,dword ptr [ebp-10]
 0075AA47    push        eax
 0075AA48    mov         edx,dword ptr [ebp-10]
 0075AA4B    mov         eax,dword ptr [esi]
 0075AA4D    call        TCustomCanvas.TextWidth
 0075AA52    mov         edx,dword ptr [ebp-5C]
 0075AA55    sub         edx,eax
>0075AA57    jno         0075AA5E
 0075AA59    call        @IntOver
 0075AA5E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AA64    mov         eax,dword ptr [esi]
 0075AA66    mov         ebx,dword ptr [eax]
 0075AA68    call        dword ptr [ebx+90]
 0075AA6E    mov         eax,dword ptr [ebp-14]
 0075AA71    push        eax
 0075AA72    mov         edx,dword ptr [ebp-14]
 0075AA75    mov         eax,dword ptr [esi]
 0075AA77    call        TCustomCanvas.TextWidth
 0075AA7C    mov         edx,dword ptr [ebp-60]
 0075AA7F    sub         edx,eax
>0075AA81    jno         0075AA88
 0075AA83    call        @IntOver
 0075AA88    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AA8E    mov         eax,dword ptr [esi]
 0075AA90    mov         ebx,dword ptr [eax]
 0075AA92    call        dword ptr [ebx+90]
 0075AA98    mov         eax,dword ptr [ebp-18]
 0075AA9B    push        eax
 0075AA9C    mov         edx,dword ptr [ebp-18]
 0075AA9F    mov         eax,dword ptr [esi]
 0075AAA1    call        TCustomCanvas.TextWidth
 0075AAA6    mov         edx,dword ptr [ebp-64]
 0075AAA9    sub         edx,eax
>0075AAAB    jno         0075AAB2
 0075AAAD    call        @IntOver
 0075AAB2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AAB8    mov         eax,dword ptr [esi]
 0075AABA    mov         ebx,dword ptr [eax]
 0075AABC    call        dword ptr [ebx+90]
 0075AAC2    mov         eax,dword ptr [ebp-1C]
 0075AAC5    push        eax
 0075AAC6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AACC    mov         edx,dword ptr [ebp-68]
 0075AACF    mov         eax,dword ptr [esi]
 0075AAD1    mov         ebx,dword ptr [eax]
 0075AAD3    call        dword ptr [ebx+90]
 0075AAD9    mov         eax,dword ptr [ebp-20]
 0075AADC    push        eax
 0075AADD    mov         edx,dword ptr [ebp-20]
 0075AAE0    mov         eax,dword ptr [esi]
 0075AAE2    call        TCustomCanvas.TextWidth
 0075AAE7    mov         edx,dword ptr [ebp-6C]
 0075AAEA    sub         edx,eax
>0075AAEC    jno         0075AAF3
 0075AAEE    call        @IntOver
 0075AAF3    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AAF9    mov         eax,dword ptr [esi]
 0075AAFB    mov         ebx,dword ptr [eax]
 0075AAFD    call        dword ptr [ebx+90]
 0075AB03    mov         eax,dword ptr [ebp-24]
 0075AB06    push        eax
 0075AB07    mov         edx,dword ptr [ebp-24]
 0075AB0A    mov         eax,dword ptr [esi]
 0075AB0C    call        TCustomCanvas.TextWidth
 0075AB11    mov         edx,dword ptr [ebp-70]
 0075AB14    sub         edx,eax
>0075AB16    jno         0075AB1D
 0075AB18    call        @IntOver
 0075AB1D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AB23    mov         eax,dword ptr [esi]
 0075AB25    mov         ebx,dword ptr [eax]
 0075AB27    call        dword ptr [ebx+90]
 0075AB2D    mov         eax,dword ptr [ebp-28]
 0075AB30    push        eax
 0075AB31    mov         edx,dword ptr [ebp-28]
 0075AB34    mov         eax,dword ptr [esi]
 0075AB36    call        TCustomCanvas.TextWidth
 0075AB3B    mov         edx,dword ptr [ebp-74]
 0075AB3E    sub         edx,eax
>0075AB40    jno         0075AB47
 0075AB42    call        @IntOver
 0075AB47    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AB4D    mov         eax,dword ptr [esi]
 0075AB4F    mov         ebx,dword ptr [eax]
 0075AB51    call        dword ptr [ebx+90]
 0075AB57    mov         eax,dword ptr [ebp-2C]
 0075AB5A    push        eax
 0075AB5B    mov         edx,dword ptr [ebp-2C]
 0075AB5E    mov         eax,dword ptr [esi]
 0075AB60    call        TCustomCanvas.TextWidth
 0075AB65    mov         edx,dword ptr [ebp-78]
 0075AB68    sub         edx,eax
>0075AB6A    jno         0075AB71
 0075AB6C    call        @IntOver
 0075AB71    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AB77    mov         eax,dword ptr [esi]
 0075AB79    mov         ebx,dword ptr [eax]
 0075AB7B    call        dword ptr [ebx+90]
 0075AB81    mov         eax,dword ptr [ebp-30]
 0075AB84    push        eax
 0075AB85    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AB8B    mov         edx,dword ptr [ebp-7C]
 0075AB8E    mov         eax,dword ptr [esi]
 0075AB90    mov         ebx,dword ptr [eax]
 0075AB92    call        dword ptr [ebx+90]
 0075AB98    mov         eax,dword ptr [ebp-34]
 0075AB9B    push        eax
 0075AB9C    mov         edx,dword ptr [ebp-34]
 0075AB9F    mov         eax,dword ptr [esi]
 0075ABA1    call        TCustomCanvas.TextWidth
 0075ABA6    mov         edx,dword ptr [ebp-80]
 0075ABA9    sub         edx,eax
>0075ABAB    jno         0075ABB2
 0075ABAD    call        @IntOver
 0075ABB2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075ABB8    mov         eax,dword ptr [esi]
 0075ABBA    mov         ebx,dword ptr [eax]
 0075ABBC    call        dword ptr [ebx+90]
 0075ABC2    mov         eax,dword ptr [ebp-38]
 0075ABC5    push        eax
 0075ABC6    mov         edx,dword ptr [ebp-38]
 0075ABC9    mov         eax,dword ptr [esi]
 0075ABCB    call        TCustomCanvas.TextWidth
 0075ABD0    mov         edx,dword ptr [ebp-84]
 0075ABD6    sub         edx,eax
>0075ABD8    jno         0075ABDF
 0075ABDA    call        @IntOver
 0075ABDF    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075ABE5    mov         eax,dword ptr [esi]
 0075ABE7    mov         ebx,dword ptr [eax]
 0075ABE9    call        dword ptr [ebx+90]
 0075ABEF    mov         eax,dword ptr [ebp-3C]
 0075ABF2    push        eax
 0075ABF3    mov         edx,dword ptr [ebp-3C]
 0075ABF6    mov         eax,dword ptr [esi]
 0075ABF8    call        TCustomCanvas.TextWidth
 0075ABFD    mov         edx,dword ptr [ebp-88]
 0075AC03    sub         edx,eax
>0075AC05    jno         0075AC0C
 0075AC07    call        @IntOver
 0075AC0C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AC12    mov         eax,dword ptr [esi]
 0075AC14    mov         ebx,dword ptr [eax]
 0075AC16    call        dword ptr [ebx+90]
 0075AC1C    mov         eax,dword ptr [ebp-40]
 0075AC1F    push        eax
 0075AC20    mov         edx,dword ptr [ebp-40]
 0075AC23    mov         eax,dword ptr [esi]
 0075AC25    call        TCustomCanvas.TextWidth
 0075AC2A    mov         edx,dword ptr [ebp-8C]
 0075AC30    sub         edx,eax
>0075AC32    jno         0075AC39
 0075AC34    call        @IntOver
 0075AC39    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AC3F    mov         eax,dword ptr [esi]
 0075AC41    mov         ebx,dword ptr [eax]
 0075AC43    call        dword ptr [ebx+90]
 0075AC49    mov         eax,3
 0075AC4E    call        00753BA0
 0075AC53    lea         eax,[ebp-0C]
 0075AC56    mov         edx,dword ptr ds:[7C3F04];^'Customer text: '
 0075AC5C    call        @UStrLAsg
 0075AC61    lea         eax,[ebp-10]
 0075AC64    mov         edx,dword ptr [ebp-44]
 0075AC67    cmp         edx,7
>0075AC6A    jbe         0075AC71
 0075AC6C    call        @BoundErr
 0075AC71    imul        edx,edx,9F0
>0075AC77    jno         0075AC7E
 0075AC79    call        @IntOver
 0075AC7E    mov         ecx,dword ptr ds:[903774];gvar_00903774
 0075AC84    lea         edi,[ecx+edx*8]
 0075AC87    mov         edx,dword ptr [ebp-90]
 0075AC8D    cmp         edx,1
>0075AC90    jbe         0075AC97
 0075AC92    call        @BoundErr
 0075AC97    imul        edx,edx,4F8
>0075AC9D    jno         0075ACA4
 0075AC9F    call        @IntOver
 0075ACA4    lea         edx,[edi+edx*8]
 0075ACA7    mov         ecx,dword ptr [ebp-94]
 0075ACAD    dec         ecx
 0075ACAE    cmp         ecx,9E
>0075ACB4    jbe         0075ACBB
 0075ACB6    call        @BoundErr
 0075ACBB    inc         ecx
 0075ACBC    imul        ecx,ecx,8
>0075ACBF    jno         0075ACC6
 0075ACC1    call        @IntOver
 0075ACC6    lea         edx,[edx+ecx*8-3A]
 0075ACCA    call        @UStrFromString
 0075ACCF    mov         eax,[009036DC];gvar_009036DC
 0075ACD4    cmp         eax,dword ptr [ebp-48]
>0075ACD7    jl          0075AD35
 0075ACD9    mov         eax,[009036DC];gvar_009036DC
 0075ACDE    cmp         eax,dword ptr [ebp-4C]
>0075ACE1    jg          0075AD35
 0075ACE3    mov         eax,dword ptr [esi]
 0075ACE5    mov         eax,dword ptr [eax+40]
 0075ACE8    movzx       edx,byte ptr ds:[75B160];0x0 gvar_0075B160
 0075ACEF    call        TFont.SetStyle
 0075ACF4    mov         eax,dword ptr [ebp-0C]
 0075ACF7    push        eax
 0075ACF8    mov         edx,dword ptr [ebp-0C]
 0075ACFB    mov         eax,dword ptr [esi]
 0075ACFD    call        TCustomCanvas.TextWidth
 0075AD02    mov         edx,dword ptr [ebp-68]
 0075AD05    sub         edx,eax
>0075AD07    jno         0075AD0E
 0075AD09    call        @IntOver
 0075AD0E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AD14    mov         eax,dword ptr [esi]
 0075AD16    mov         ebx,dword ptr [eax]
 0075AD18    call        dword ptr [ebx+90]
 0075AD1E    mov         eax,dword ptr [ebp-10]
 0075AD21    push        eax
 0075AD22    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AD28    mov         edx,dword ptr [ebp-68]
 0075AD2B    mov         eax,dword ptr [esi]
 0075AD2D    mov         ebx,dword ptr [eax]
 0075AD2F    call        dword ptr [ebx+90]
 0075AD35    mov         eax,2
 0075AD3A    call        00753BA0
 0075AD3F    lea         eax,[ebp-0C]
 0075AD42    mov         ecx,75B170;': '
 0075AD47    mov         edx,dword ptr ds:[7C3F20];^'Input funct.'
 0075AD4D    call        @UStrCat3
 0075AD52    movzx       eax,byte ptr [ebp-154]
 0075AD59    push        eax
 0075AD5A    lea         eax,[ebp-10]
 0075AD5D    push        eax
 0075AD5E    movzx       ecx,byte ptr [ebp-167]
 0075AD65    movzx       ebx,byte ptr [ebp-168]
 0075AD6C    mov         edx,ebx
 0075AD6E    mov         eax,[00903770];gvar_00903770
 0075AD73    call        TFXPAD.SapIntToInput
 0075AD78    lea         eax,[ebp-14]
 0075AD7B    mov         ecx,75B170;': '
 0075AD80    mov         edx,dword ptr ds:[7C3F48];^'Output funct.'
 0075AD86    call        @UStrCat3
 0075AD8B    movzx       eax,byte ptr [ebp-153]
 0075AD92    push        eax
 0075AD93    lea         eax,[ebp-18]
 0075AD96    push        eax
 0075AD97    movzx       ecx,byte ptr [ebp-167]
 0075AD9E    mov         edx,ebx
 0075ADA0    mov         eax,[00903770];gvar_00903770
 0075ADA5    call        TFXPAD.SapIntToOutput
 0075ADAA    mov         eax,[009036DC];gvar_009036DC
 0075ADAF    cmp         eax,dword ptr [ebp-48]
>0075ADB2    jl          0075AE59
 0075ADB8    mov         eax,[009036DC];gvar_009036DC
 0075ADBD    cmp         eax,dword ptr [ebp-4C]
>0075ADC0    jg          0075AE59
 0075ADC6    mov         eax,dword ptr [esi]
 0075ADC8    mov         eax,dword ptr [eax+40]
 0075ADCB    movzx       edx,byte ptr ds:[75B160];0x0 gvar_0075B160
 0075ADD2    call        TFont.SetStyle
 0075ADD7    mov         eax,dword ptr [ebp-0C]
 0075ADDA    push        eax
 0075ADDB    mov         edx,dword ptr [ebp-0C]
 0075ADDE    mov         eax,dword ptr [esi]
 0075ADE0    call        TCustomCanvas.TextWidth
 0075ADE5    mov         edx,dword ptr [ebp-68]
 0075ADE8    sub         edx,eax
>0075ADEA    jno         0075ADF1
 0075ADEC    call        @IntOver
 0075ADF1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075ADF7    mov         eax,dword ptr [esi]
 0075ADF9    mov         ebx,dword ptr [eax]
 0075ADFB    call        dword ptr [ebx+90]
 0075AE01    mov         eax,dword ptr [ebp-10]
 0075AE04    push        eax
 0075AE05    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AE0B    mov         edx,dword ptr [ebp-68]
 0075AE0E    mov         eax,dword ptr [esi]
 0075AE10    mov         ebx,dword ptr [eax]
 0075AE12    call        dword ptr [ebx+90]
 0075AE18    mov         eax,dword ptr [ebp-14]
 0075AE1B    push        eax
 0075AE1C    mov         edx,dword ptr [ebp-14]
 0075AE1F    mov         eax,dword ptr [esi]
 0075AE21    call        TCustomCanvas.TextWidth
 0075AE26    mov         edx,dword ptr [ebp-78]
 0075AE29    sub         edx,eax
>0075AE2B    jno         0075AE32
 0075AE2D    call        @IntOver
 0075AE32    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AE38    mov         eax,dword ptr [esi]
 0075AE3A    mov         ebx,dword ptr [eax]
 0075AE3C    call        dword ptr [ebx+90]
 0075AE42    mov         eax,dword ptr [ebp-18]
 0075AE45    push        eax
 0075AE46    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AE4C    mov         edx,dword ptr [ebp-78]
 0075AE4F    mov         eax,dword ptr [esi]
 0075AE51    mov         ebx,dword ptr [eax]
 0075AE53    call        dword ptr [ebx+90]
 0075AE59    mov         eax,1
 0075AE5E    call        00753BA0
 0075AE63    lea         eax,[ebp-0C]
 0075AE66    mov         edx,dword ptr ds:[7C3F08];^'Control groups: '
 0075AE6C    call        @UStrLAsg
 0075AE71    mov         eax,[009036DC];gvar_009036DC
 0075AE76    cmp         eax,dword ptr [ebp-48]
>0075AE79    jl          0075AEAF
 0075AE7B    mov         eax,[009036DC];gvar_009036DC
 0075AE80    cmp         eax,dword ptr [ebp-4C]
>0075AE83    jg          0075AEAF
 0075AE85    mov         eax,dword ptr [ebp-0C]
 0075AE88    push        eax
 0075AE89    mov         edx,dword ptr [ebp-0C]
 0075AE8C    mov         eax,dword ptr [esi]
 0075AE8E    call        TCustomCanvas.TextWidth
 0075AE93    mov         edx,dword ptr [ebp-68]
 0075AE96    sub         edx,eax
>0075AE98    jno         0075AE9F
 0075AE9A    call        @IntOver
 0075AE9F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AEA5    mov         eax,dword ptr [esi]
 0075AEA7    mov         ebx,dword ptr [eax]
 0075AEA9    call        dword ptr [ebx+90]
 0075AEAF    xor         ebx,ebx
 0075AEB1    mov         dword ptr [ebp-98],1
 0075AEBB    lea         eax,[ebp-10]
 0075AEBE    mov         edx,75B184;' '
 0075AEC3    call        @UStrLAsg
 0075AEC8    lea         edx,[ebp-4]
 0075AECB    lea         eax,[ebp-14C]
 0075AED1    call        006955F8
 0075AED6    mov         eax,dword ptr [ebp-4]
 0075AED9    mov         edx,dword ptr ds:[7C47A0];^gvar_007C286C
 0075AEDF    mov         edx,dword ptr [edx]
 0075AEE1    call        @UStrEqual
>0075AEE6    je          0075AEFA
 0075AEE8    mov         eax,dword ptr [ebp-4]
 0075AEEB    mov         edx,dword ptr ds:[7C4750];^gvar_007C2870
 0075AEF1    mov         edx,dword ptr [edx]
 0075AEF3    call        @UStrEqual
>0075AEF8    jne         0075AF4E
 0075AEFA    lea         eax,[ebp-10]
 0075AEFD    mov         edx,dword ptr [ebp-4]
 0075AF00    call        @UStrCat
 0075AF05    mov         eax,[009036DC];gvar_009036DC
 0075AF0A    cmp         eax,dword ptr [ebp-48]
>0075AF0D    jl          0075B0B3
 0075AF13    mov         eax,[009036DC];gvar_009036DC
 0075AF18    cmp         eax,dword ptr [ebp-4C]
>0075AF1B    jg          0075B0B3
 0075AF21    mov         eax,dword ptr [esi]
 0075AF23    mov         eax,dword ptr [eax+40]
 0075AF26    movzx       edx,byte ptr ds:[75B160];0x0 gvar_0075B160
 0075AF2D    call        TFont.SetStyle
 0075AF32    mov         eax,dword ptr [ebp-10]
 0075AF35    push        eax
 0075AF36    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075AF3C    mov         edx,dword ptr [ebp-68]
 0075AF3F    mov         eax,dword ptr [esi]
 0075AF41    mov         ebx,dword ptr [eax]
 0075AF43    call        dword ptr [ebx+90]
>0075AF49    jmp         0075B0B3
 0075AF4E    mov         eax,1
 0075AF53    add         eax,ebx
>0075AF55    jno         0075AF5C
 0075AF57    call        @IntOver
 0075AF5C    mov         ecx,eax
 0075AF5E    mov         edx,dword ptr [ebp-4]
 0075AF61    mov         eax,75B194;';'
 0075AF66    call        Pos
 0075AF6B    mov         ebx,eax
 0075AF6D    lea         eax,[ebp-1AC]
 0075AF73    push        eax
 0075AF74    mov         edi,ebx
 0075AF76    sub         edi,dword ptr [ebp-98]
>0075AF7C    jno         0075AF83
 0075AF7E    call        @IntOver
 0075AF83    add         edi,1
>0075AF86    jno         0075AF8D
 0075AF88    call        @IntOver
 0075AF8D    mov         ecx,edi
 0075AF8F    mov         edx,dword ptr [ebp-98]
 0075AF95    mov         eax,dword ptr [ebp-4]
 0075AF98    call        00431F88
 0075AF9D    mov         ecx,dword ptr [ebp-1AC]
 0075AFA3    lea         eax,[ebp-1A8]
 0075AFA9    mov         edx,dword ptr [ebp-10]
 0075AFAC    call        @UStrCat3
 0075AFB1    mov         edx,dword ptr [ebp-1A8]
 0075AFB7    mov         eax,dword ptr [esi]
 0075AFB9    call        TCustomCanvas.TextWidth
 0075AFBE    mov         edx,dword ptr [ebp-8C]
 0075AFC4    sub         edx,dword ptr [ebp-68]
>0075AFC7    jno         0075AFCE
 0075AFC9    call        @IntOver
 0075AFCE    cmp         eax,edx
>0075AFD0    jge         0075B00D
 0075AFD2    lea         eax,[ebp-1B0]
 0075AFD8    push        eax
 0075AFD9    mov         ecx,edi
 0075AFDB    mov         edx,dword ptr [ebp-98]
 0075AFE1    mov         eax,dword ptr [ebp-4]
 0075AFE4    call        00431F88
 0075AFE9    mov         edx,dword ptr [ebp-1B0]
 0075AFEF    lea         eax,[ebp-10]
 0075AFF2    call        @UStrCat
 0075AFF7    mov         eax,1
 0075AFFC    add         eax,ebx
>0075AFFE    jno         0075B005
 0075B000    call        @IntOver
 0075B005    mov         dword ptr [ebp-98],eax
>0075B00B    jmp         0075B06B
 0075B00D    mov         eax,[009036DC];gvar_009036DC
 0075B012    cmp         eax,dword ptr [ebp-48]
>0075B015    jl          0075B049
 0075B017    mov         eax,[009036DC];gvar_009036DC
 0075B01C    cmp         eax,dword ptr [ebp-4C]
>0075B01F    jg          0075B049
 0075B021    mov         eax,dword ptr [esi]
 0075B023    mov         eax,dword ptr [eax+40]
 0075B026    movzx       edx,byte ptr ds:[75B160];0x0 gvar_0075B160
 0075B02D    call        TFont.SetStyle
 0075B032    mov         eax,dword ptr [ebp-10]
 0075B035    push        eax
 0075B036    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B03C    mov         edx,dword ptr [ebp-68]
 0075B03F    mov         eax,dword ptr [esi]
 0075B041    mov         ebx,dword ptr [eax]
 0075B043    call        dword ptr [ebx+90]
 0075B049    mov         ebx,dword ptr [ebp-98]
 0075B04F    sub         ebx,1
>0075B052    jno         0075B059
 0075B054    call        @IntOver
 0075B059    mov         eax,1
 0075B05E    call        00753BA0
 0075B063    lea         eax,[ebp-10]
 0075B066    call        @UStrClr
 0075B06B    test        ebx,ebx
>0075B06D    jne         0075B0AB
 0075B06F    mov         eax,[009036DC];gvar_009036DC
 0075B074    cmp         eax,dword ptr [ebp-48]
>0075B077    jl          0075B0AB
 0075B079    mov         eax,[009036DC];gvar_009036DC
 0075B07E    cmp         eax,dword ptr [ebp-4C]
>0075B081    jg          0075B0AB
 0075B083    mov         eax,dword ptr [esi]
 0075B085    mov         eax,dword ptr [eax+40]
 0075B088    movzx       edx,byte ptr ds:[75B160];0x0 gvar_0075B160
 0075B08F    call        TFont.SetStyle
 0075B094    mov         eax,dword ptr [ebp-10]
 0075B097    push        eax
 0075B098    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B09E    mov         edx,dword ptr [ebp-68]
 0075B0A1    mov         eax,dword ptr [esi]
 0075B0A3    mov         edi,dword ptr [eax]
 0075B0A5    call        dword ptr [edi+90]
 0075B0AB    test        ebx,ebx
>0075B0AD    jne         0075AF4E
 0075B0B3    mov         eax,4
 0075B0B8    call        00753BA0
 0075B0BD    inc         dword ptr [ebp-94]
 0075B0C3    cmp         dword ptr [ebp-94],0A0
>0075B0CD    jne         0075A692
 0075B0D3    inc         dword ptr [ebp-90]
 0075B0D9    cmp         dword ptr [ebp-90],2
>0075B0E0    jne         0075A688
 0075B0E6    xor         eax,eax
 0075B0E8    pop         edx
 0075B0E9    pop         ecx
 0075B0EA    pop         ecx
 0075B0EB    mov         dword ptr fs:[eax],edx
 0075B0EE    push        75B118
 0075B0F3    lea         eax,[ebp-1B0]
 0075B0F9    mov         edx,0B
 0075B0FE    call        @UStrArrayClr
 0075B103    lea         eax,[ebp-40]
 0075B106    mov         edx,10
 0075B10B    call        @UStrArrayClr
 0075B110    ret
>0075B111    jmp         @HandleFinally
>0075B116    jmp         0075B0F3
 0075B118    pop         edi
 0075B119    pop         esi
 0075B11A    pop         ebx
 0075B11B    mov         esp,ebp
 0075B11D    pop         ebp
 0075B11E    ret         4
end;*}

//0075B198
{*procedure sub_0075B198(?:?; ?:Integer; ?:Integer; ?:?);
begin
 0075B198    push        ebp
 0075B199    mov         ebp,esp
 0075B19B    push        ecx
 0075B19C    mov         ecx,35
 0075B1A1    push        0
 0075B1A3    push        0
 0075B1A5    dec         ecx
>0075B1A6    jne         0075B1A1
 0075B1A8    xchg        ecx,dword ptr [ebp-4]
 0075B1AB    push        ebx
 0075B1AC    push        esi
 0075B1AD    push        edi
 0075B1AE    mov         dword ptr [ebp-4C],ecx
 0075B1B1    mov         dword ptr [ebp-48],edx
 0075B1B4    mov         dword ptr [ebp-44],eax
 0075B1B7    mov         ebx,dword ptr [ebp+8]
 0075B1BA    xor         eax,eax
 0075B1BC    push        ebp
 0075B1BD    push        75BFFD
 0075B1C2    push        dword ptr fs:[eax]
 0075B1C5    mov         dword ptr fs:[eax],esp
 0075B1C8    mov         edx,ebx
 0075B1CA    mov         eax,0A
 0075B1CF    call        007537B0
 0075B1D4    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B1DA    jno         0075B1E1
 0075B1DC    call        @IntOver
 0075B1E1    mov         dword ptr [ebp-58],eax
 0075B1E4    mov         edx,ebx
 0075B1E6    mov         eax,15
 0075B1EB    call        007537B0
 0075B1F0    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B1F6    jno         0075B1FD
 0075B1F8    call        @IntOver
 0075B1FD    mov         dword ptr [ebp-5C],eax
 0075B200    mov         edx,ebx
 0075B202    mov         eax,1E
 0075B207    call        007537B0
 0075B20C    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B212    jno         0075B219
 0075B214    call        @IntOver
 0075B219    mov         dword ptr [ebp-60],eax
 0075B21C    mov         edx,ebx
 0075B21E    mov         eax,27
 0075B223    call        007537B0
 0075B228    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B22E    jno         0075B235
 0075B230    call        @IntOver
 0075B235    mov         dword ptr [ebp-64],eax
 0075B238    mov         edx,ebx
 0075B23A    mov         eax,29
 0075B23F    call        007537B0
 0075B244    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B24A    jno         0075B251
 0075B24C    call        @IntOver
 0075B251    mov         dword ptr [ebp-68],eax
 0075B254    mov         edx,ebx
 0075B256    mov         eax,4D
 0075B25B    call        007537B0
 0075B260    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B266    jno         0075B26D
 0075B268    call        @IntOver
 0075B26D    mov         dword ptr [ebp-6C],eax
 0075B270    mov         edx,ebx
 0075B272    mov         eax,57
 0075B277    call        007537B0
 0075B27C    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B282    jno         0075B289
 0075B284    call        @IntOver
 0075B289    mov         dword ptr [ebp-70],eax
 0075B28C    mov         edx,ebx
 0075B28E    mov         eax,62
 0075B293    call        007537B0
 0075B298    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B29E    jno         0075B2A5
 0075B2A0    call        @IntOver
 0075B2A5    mov         dword ptr [ebp-74],eax
 0075B2A8    mov         edx,ebx
 0075B2AA    mov         eax,6D
 0075B2AF    call        007537B0
 0075B2B4    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B2BA    jno         0075B2C1
 0075B2BC    call        @IntOver
 0075B2C1    mov         dword ptr [ebp-78],eax
 0075B2C4    mov         edx,ebx
 0075B2C6    mov         eax,6E
 0075B2CB    call        007537B0
 0075B2D0    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B2D6    jno         0075B2DD
 0075B2D8    call        @IntOver
 0075B2DD    mov         dword ptr [ebp-7C],eax
 0075B2E0    mov         edx,ebx
 0075B2E2    mov         eax,88
 0075B2E7    call        007537B0
 0075B2EC    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B2F2    jno         0075B2F9
 0075B2F4    call        @IntOver
 0075B2F9    mov         dword ptr [ebp-80],eax
 0075B2FC    mov         edx,ebx
 0075B2FE    mov         eax,91
 0075B303    call        007537B0
 0075B308    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B30E    jno         0075B315
 0075B310    call        @IntOver
 0075B315    mov         dword ptr [ebp-84],eax
 0075B31B    mov         edx,ebx
 0075B31D    mov         eax,9A
 0075B322    call        007537B0
 0075B327    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B32D    jno         0075B334
 0075B32F    call        @IntOver
 0075B334    mov         dword ptr [ebp-88],eax
 0075B33A    mov         edx,ebx
 0075B33C    mov         eax,0A3
 0075B341    call        007537B0
 0075B346    add         eax,dword ptr ds:[903714];gvar_00903714
>0075B34C    jno         0075B353
 0075B34E    call        @IntOver
 0075B353    mov         dword ptr [ebp-8C],eax
 0075B359    xor         eax,eax
 0075B35B    call        00753BA0
 0075B360    lea         eax,[ebp-0C]
 0075B363    mov         edx,dword ptr ds:[7C3F0C];^'Address'
 0075B369    call        @UStrLAsg
 0075B36E    lea         eax,[ebp-10]
 0075B371    mov         edx,dword ptr ds:[7C3F10];^'D-Zone'
 0075B377    call        @UStrLAsg
 0075B37C    lea         eax,[ebp-14]
 0075B37F    mov         edx,dword ptr ds:[7C3F14];^'Ctrl A'
 0075B385    call        @UStrLAsg
 0075B38A    lea         eax,[ebp-18]
 0075B38D    mov         edx,dword ptr ds:[7C3F18];^'Ctrl B'
 0075B393    call        @UStrLAsg
 0075B398    lea         eax,[ebp-1C]
 0075B39B    mov         edx,dword ptr ds:[7C3F1C];^'Type'
 0075B3A1    call        @UStrLAsg
 0075B3A6    lea         eax,[ebp-20]
 0075B3A9    mov         edx,dword ptr ds:[7C3F24];^'Fire'
 0075B3AF    call        @UStrLAsg
 0075B3B4    lea         eax,[ebp-24]
 0075B3B7    mov         edx,dword ptr ds:[7C3F28];^'PreA'
 0075B3BD    call        @UStrLAsg
 0075B3C2    lea         eax,[ebp-28]
 0075B3C5    mov         edx,dword ptr ds:[7C3F2C];^'D-Fire'
 0075B3CB    call        @UStrLAsg
 0075B3D0    lea         eax,[ebp-2C]
 0075B3D3    mov         edx,dword ptr ds:[7C3F30];^'D-PreA'
 0075B3D9    call        @UStrLAsg
 0075B3DE    lea         eax,[ebp-30]
 0075B3E1    mov         edx,dword ptr ds:[7C3F34];^'Mode'
 0075B3E7    call        @UStrLAsg
 0075B3EC    lea         eax,[ebp-34]
 0075B3EF    mov         edx,dword ptr ds:[7C3F38];^'InDel.'
 0075B3F5    call        @UStrLAsg
 0075B3FA    lea         eax,[ebp-38]
 0075B3FD    mov         edx,dword ptr ds:[7C3F3C];^'InFilt'
 0075B403    call        @UStrLAsg
 0075B408    lea         eax,[ebp-3C]
 0075B40B    mov         edx,dword ptr ds:[7C3F40];^'DayM'
 0075B411    call        @UStrLAsg
 0075B416    lea         eax,[ebp-40]
 0075B419    mov         edx,dword ptr ds:[7C3F44];^'ZDis'
 0075B41F    call        @UStrLAsg
 0075B424    mov         eax,[009036DC];gvar_009036DC
 0075B429    cmp         eax,dword ptr [ebp-48]
>0075B42C    jl          0075B6D1
 0075B432    mov         eax,[009036DC];gvar_009036DC
 0075B437    cmp         eax,dword ptr [ebp-4C]
>0075B43A    jg          0075B6D1
 0075B440    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B445    mov         eax,dword ptr [eax+40]
 0075B448    movzx       edx,byte ptr ds:[75C010];0x1 gvar_0075C010
 0075B44F    call        TFont.SetStyle
 0075B454    mov         eax,dword ptr [ebp-0C]
 0075B457    push        eax
 0075B458    mov         edx,dword ptr [ebp-0C]
 0075B45B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B460    call        TCustomCanvas.TextWidth
 0075B465    mov         edx,dword ptr [ebp-58]
 0075B468    sub         edx,eax
>0075B46A    jno         0075B471
 0075B46C    call        @IntOver
 0075B471    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B477    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B47C    mov         ebx,dword ptr [eax]
 0075B47E    call        dword ptr [ebx+90]
 0075B484    mov         eax,dword ptr [ebp-10]
 0075B487    push        eax
 0075B488    mov         edx,dword ptr [ebp-10]
 0075B48B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B490    call        TCustomCanvas.TextWidth
 0075B495    mov         edx,dword ptr [ebp-5C]
 0075B498    sub         edx,eax
>0075B49A    jno         0075B4A1
 0075B49C    call        @IntOver
 0075B4A1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B4A7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B4AC    mov         ebx,dword ptr [eax]
 0075B4AE    call        dword ptr [ebx+90]
 0075B4B4    mov         eax,dword ptr [ebp-14]
 0075B4B7    push        eax
 0075B4B8    mov         edx,dword ptr [ebp-14]
 0075B4BB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B4C0    call        TCustomCanvas.TextWidth
 0075B4C5    mov         edx,dword ptr [ebp-60]
 0075B4C8    sub         edx,eax
>0075B4CA    jno         0075B4D1
 0075B4CC    call        @IntOver
 0075B4D1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B4D7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B4DC    mov         ebx,dword ptr [eax]
 0075B4DE    call        dword ptr [ebx+90]
 0075B4E4    mov         eax,dword ptr [ebp-18]
 0075B4E7    push        eax
 0075B4E8    mov         edx,dword ptr [ebp-18]
 0075B4EB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B4F0    call        TCustomCanvas.TextWidth
 0075B4F5    mov         edx,dword ptr [ebp-64]
 0075B4F8    sub         edx,eax
>0075B4FA    jno         0075B501
 0075B4FC    call        @IntOver
 0075B501    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B507    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B50C    mov         ebx,dword ptr [eax]
 0075B50E    call        dword ptr [ebx+90]
 0075B514    mov         eax,dword ptr [ebp-1C]
 0075B517    push        eax
 0075B518    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B51E    mov         edx,dword ptr [ebp-68]
 0075B521    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B526    mov         ebx,dword ptr [eax]
 0075B528    call        dword ptr [ebx+90]
 0075B52E    mov         eax,dword ptr [ebp-20]
 0075B531    push        eax
 0075B532    mov         edx,dword ptr [ebp-20]
 0075B535    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B53A    call        TCustomCanvas.TextWidth
 0075B53F    mov         edx,dword ptr [ebp-6C]
 0075B542    sub         edx,eax
>0075B544    jno         0075B54B
 0075B546    call        @IntOver
 0075B54B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B551    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B556    mov         ebx,dword ptr [eax]
 0075B558    call        dword ptr [ebx+90]
 0075B55E    mov         eax,dword ptr [ebp-24]
 0075B561    push        eax
 0075B562    mov         edx,dword ptr [ebp-24]
 0075B565    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B56A    call        TCustomCanvas.TextWidth
 0075B56F    mov         edx,dword ptr [ebp-70]
 0075B572    sub         edx,eax
>0075B574    jno         0075B57B
 0075B576    call        @IntOver
 0075B57B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B581    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B586    mov         ebx,dword ptr [eax]
 0075B588    call        dword ptr [ebx+90]
 0075B58E    mov         eax,dword ptr [ebp-28]
 0075B591    push        eax
 0075B592    mov         edx,dword ptr [ebp-28]
 0075B595    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B59A    call        TCustomCanvas.TextWidth
 0075B59F    mov         edx,dword ptr [ebp-74]
 0075B5A2    sub         edx,eax
>0075B5A4    jno         0075B5AB
 0075B5A6    call        @IntOver
 0075B5AB    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B5B1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B5B6    mov         ebx,dword ptr [eax]
 0075B5B8    call        dword ptr [ebx+90]
 0075B5BE    mov         eax,dword ptr [ebp-2C]
 0075B5C1    push        eax
 0075B5C2    mov         edx,dword ptr [ebp-2C]
 0075B5C5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B5CA    call        TCustomCanvas.TextWidth
 0075B5CF    mov         edx,dword ptr [ebp-78]
 0075B5D2    sub         edx,eax
>0075B5D4    jno         0075B5DB
 0075B5D6    call        @IntOver
 0075B5DB    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B5E1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B5E6    mov         ebx,dword ptr [eax]
 0075B5E8    call        dword ptr [ebx+90]
 0075B5EE    mov         eax,dword ptr [ebp-30]
 0075B5F1    push        eax
 0075B5F2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B5F8    mov         edx,dword ptr [ebp-7C]
 0075B5FB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B600    mov         ebx,dword ptr [eax]
 0075B602    call        dword ptr [ebx+90]
 0075B608    mov         eax,dword ptr [ebp-34]
 0075B60B    push        eax
 0075B60C    mov         edx,dword ptr [ebp-34]
 0075B60F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B614    call        TCustomCanvas.TextWidth
 0075B619    mov         edx,dword ptr [ebp-80]
 0075B61C    sub         edx,eax
>0075B61E    jno         0075B625
 0075B620    call        @IntOver
 0075B625    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B62B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B630    mov         ebx,dword ptr [eax]
 0075B632    call        dword ptr [ebx+90]
 0075B638    mov         eax,dword ptr [ebp-38]
 0075B63B    push        eax
 0075B63C    mov         edx,dword ptr [ebp-38]
 0075B63F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B644    call        TCustomCanvas.TextWidth
 0075B649    mov         edx,dword ptr [ebp-84]
 0075B64F    sub         edx,eax
>0075B651    jno         0075B658
 0075B653    call        @IntOver
 0075B658    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B65E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B663    mov         ebx,dword ptr [eax]
 0075B665    call        dword ptr [ebx+90]
 0075B66B    mov         eax,dword ptr [ebp-3C]
 0075B66E    push        eax
 0075B66F    mov         edx,dword ptr [ebp-3C]
 0075B672    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B677    call        TCustomCanvas.TextWidth
 0075B67C    mov         edx,dword ptr [ebp-88]
 0075B682    sub         edx,eax
>0075B684    jno         0075B68B
 0075B686    call        @IntOver
 0075B68B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B691    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B696    mov         ebx,dword ptr [eax]
 0075B698    call        dword ptr [ebx+90]
 0075B69E    mov         eax,dword ptr [ebp-40]
 0075B6A1    push        eax
 0075B6A2    mov         edx,dword ptr [ebp-40]
 0075B6A5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B6AA    call        TCustomCanvas.TextWidth
 0075B6AF    mov         edx,dword ptr [ebp-8C]
 0075B6B5    sub         edx,eax
>0075B6B7    jno         0075B6BE
 0075B6B9    call        @IntOver
 0075B6BE    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075B6C4    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B6C9    mov         ebx,dword ptr [eax]
 0075B6CB    call        dword ptr [ebx+90]
 0075B6D1    mov         eax,3
 0075B6D6    call        00753BA0
 0075B6DB    xor         eax,eax
 0075B6DD    mov         dword ptr [ebp-90],eax
 0075B6E3    mov         dword ptr [ebp-94],1
 0075B6ED    mov         eax,dword ptr [ebp-44]
 0075B6F0    cmp         eax,7
>0075B6F3    jbe         0075B6FA
 0075B6F5    call        @BoundErr
 0075B6FA    imul        eax,eax,43B3
>0075B700    jno         0075B707
 0075B702    call        @IntOver
 0075B707    mov         edx,dword ptr ds:[903770];gvar_00903770
 0075B70D    lea         eax,[edx+eax*4]
 0075B710    mov         edx,dword ptr [ebp-90]
 0075B716    cmp         edx,1
>0075B719    jbe         0075B720
 0075B71B    call        @BoundErr
 0075B720    imul        edx,edx,43B3
>0075B726    jno         0075B72D
 0075B728    call        @IntOver
 0075B72D    lea         eax,[eax+edx*2]
 0075B730    mov         edx,dword ptr [ebp-94]
 0075B736    dec         edx
 0075B737    cmp         edx,9E
>0075B73D    jbe         0075B744
 0075B73F    call        @BoundErr
 0075B744    inc         edx
 0075B745    imul        edx,edx,6D
>0075B748    jno         0075B74F
 0075B74A    call        @IntOver
 0075B74F    lea         esi,[eax+edx*2-0D6]
 0075B756    lea         edi,[ebp-16E]
 0075B75C    mov         ecx,36
 0075B761    rep movs    dword ptr [edi],dword ptr [esi]
 0075B763    movs        word ptr [edi],word ptr [esi]
 0075B765    movzx       ebx,byte ptr [ebp-164]
 0075B76C    test        bl,bl
>0075B76E    je          0075BFAC
 0075B774    mov         eax,[00903768];gvar_00903768
 0075B779    call        006A3430
 0075B77E    movzx       eax,al
 0075B781    add         eax,dword ptr [ebp-44]
>0075B784    jno         0075B78B
 0075B786    call        @IntOver
 0075B78B    lea         edx,[ebp-18C]
 0075B791    call        IntToStr
 0075B796    mov         ecx,dword ptr [ebp-18C]
 0075B79C    lea         eax,[ebp-188]
 0075B7A2    mov         edx,75C020;'00'
 0075B7A7    call        @UStrCat3
 0075B7AC    mov         eax,dword ptr [ebp-188]
 0075B7B2    lea         ecx,[ebp-184]
 0075B7B8    mov         edx,3
 0075B7BD    call        00431F5C
 0075B7C2    push        dword ptr [ebp-184]
 0075B7C8    push        75C034;'.'
 0075B7CD    lea         edx,[ebp-198]
 0075B7D3    imul        eax,dword ptr [ebp-90],64
>0075B7DA    jno         0075B7E1
 0075B7DC    call        @IntOver
 0075B7E1    add         eax,dword ptr [ebp-94]
>0075B7E7    jno         0075B7EE
 0075B7E9    call        @IntOver
 0075B7EE    call        IntToStr
 0075B7F3    mov         ecx,dword ptr [ebp-198]
 0075B7F9    lea         eax,[ebp-194]
 0075B7FF    mov         edx,75C020;'00'
 0075B804    call        @UStrCat3
 0075B809    mov         eax,dword ptr [ebp-194]
 0075B80F    lea         ecx,[ebp-190]
 0075B815    mov         edx,3
 0075B81A    call        00431F5C
 0075B81F    push        dword ptr [ebp-190]
 0075B825    lea         eax,[ebp-0C]
 0075B828    mov         edx,3
 0075B82D    call        @UStrCatN
 0075B832    mov         eax,[00903768];gvar_00903768
 0075B837    movzx       eax,word ptr [eax+123]
 0075B83E    movzx       edx,byte ptr [ebp-169]
 0075B845    add         eax,edx
>0075B847    jno         0075B84E
 0075B849    call        @IntOver
 0075B84E    sub         eax,1
>0075B851    jno         0075B858
 0075B853    call        @IntOver
 0075B858    lea         edx,[ebp-1A0]
 0075B85E    call        IntToStr
 0075B863    mov         ecx,dword ptr [ebp-1A0]
 0075B869    lea         eax,[ebp-19C]
 0075B86F    mov         edx,75C044;'000'
 0075B874    call        @UStrCat3
 0075B879    mov         eax,dword ptr [ebp-19C]
 0075B87F    lea         ecx,[ebp-10]
 0075B882    mov         edx,4
 0075B887    call        00431F5C
 0075B88C    lea         edx,[ebp-14]
 0075B88F    movzx       eax,word ptr [ebp-168]
 0075B896    call        IntToStr
 0075B89B    lea         edx,[ebp-18]
 0075B89E    movzx       eax,word ptr [ebp-166]
 0075B8A5    call        IntToStr
 0075B8AA    movzx       esi,bl
 0075B8AD    mov         eax,esi
 0075B8AF    mov         edx,100
 0075B8B4    mul         eax,edx
 0075B8B6    mov         edx,eax
>0075B8B8    jno         0075B8BF
 0075B8BA    call        @IntOver
 0075B8BF    movzx       eax,byte ptr [ebp-163]
 0075B8C6    add         edx,eax
>0075B8C8    jno         0075B8CF
 0075B8CA    call        @IntOver
 0075B8CF    cmp         edx,0FFFF
>0075B8D5    jbe         0075B8DC
 0075B8D7    call        @BoundErr
 0075B8DC    lea         ecx,[ebp-1C]
 0075B8DF    mov         eax,[00903770];gvar_00903770
 0075B8E4    call        TFXPAD.SysIntToType
 0075B8E9    lea         eax,[ebp-20]
 0075B8EC    push        eax
 0075B8ED    movzx       ecx,word ptr [ebp-162]
 0075B8F4    mov         edx,ebx
 0075B8F6    mov         eax,[00903770];gvar_00903770
 0075B8FB    call        TFXPAD.SysMsToLevel
 0075B900    lea         eax,[ebp-24]
 0075B903    push        eax
 0075B904    movzx       ecx,word ptr [ebp-160]
 0075B90B    mov         edx,ebx
 0075B90D    mov         eax,[00903770];gvar_00903770
 0075B912    call        TFXPAD.SysMsToLevel
 0075B917    lea         eax,[ebp-28]
 0075B91A    push        eax
 0075B91B    movzx       ecx,word ptr [ebp-15E]
 0075B922    mov         edx,ebx
 0075B924    mov         eax,[00903770];gvar_00903770
 0075B929    call        TFXPAD.SysMsToLevel
 0075B92E    lea         eax,[ebp-2C]
 0075B931    push        eax
 0075B932    movzx       ecx,word ptr [ebp-15C]
 0075B939    mov         edx,ebx
 0075B93B    mov         eax,[00903770];gvar_00903770
 0075B940    call        TFXPAD.SysMsToLevel
 0075B945    lea         eax,[ebp-30]
 0075B948    push        eax
 0075B949    mov         eax,esi
 0075B94B    mov         edx,100
 0075B950    mul         eax,edx
 0075B952    mov         edx,eax
>0075B954    jno         0075B95B
 0075B956    call        @IntOver
 0075B95B    movzx       eax,byte ptr [ebp-163]
 0075B962    add         edx,eax
>0075B964    jno         0075B96B
 0075B966    call        @IntOver
 0075B96B    cmp         edx,0FFFF
>0075B971    jbe         0075B978
 0075B973    call        @BoundErr
 0075B978    movzx       ecx,byte ptr [ebp-158]
 0075B97F    mov         eax,[00903770];gvar_00903770
 0075B984    call        TFXPAD.SysIntToMode
 0075B989    movzx       eax,byte ptr [ebp-157]
 0075B990    mov         edx,0A
 0075B995    mul         eax,edx
>0075B997    jno         0075B99E
 0075B999    call        @IntOver
 0075B99E    lea         edx,[ebp-34]
 0075B9A1    call        IntToStr
 0075B9A6    lea         edx,[ebp-38]
 0075B9A9    movzx       eax,byte ptr [ebp-156]
 0075B9B0    call        IntToStr
 0075B9B5    lea         edx,[ebp-3C]
 0075B9B8    movzx       eax,byte ptr [ebp-155]
 0075B9BF    call        IntToStr
 0075B9C4    lea         edx,[ebp-40]
 0075B9C7    movzx       eax,byte ptr [ebp-154]
 0075B9CE    call        IntToStr
 0075B9D3    mov         eax,[009036DC];gvar_009036DC
 0075B9D8    cmp         eax,dword ptr [ebp-48]
>0075B9DB    jl          0075BC80
 0075B9E1    mov         eax,[009036DC];gvar_009036DC
 0075B9E6    cmp         eax,dword ptr [ebp-4C]
>0075B9E9    jg          0075BC80
 0075B9EF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075B9F4    mov         eax,dword ptr [eax+40]
 0075B9F7    movzx       edx,byte ptr ds:[75C04C];0x0 gvar_0075C04C
 0075B9FE    call        TFont.SetStyle
 0075BA03    mov         eax,dword ptr [ebp-0C]
 0075BA06    push        eax
 0075BA07    mov         edx,dword ptr [ebp-0C]
 0075BA0A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BA0F    call        TCustomCanvas.TextWidth
 0075BA14    mov         edx,dword ptr [ebp-58]
 0075BA17    sub         edx,eax
>0075BA19    jno         0075BA20
 0075BA1B    call        @IntOver
 0075BA20    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BA26    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BA2B    mov         ebx,dword ptr [eax]
 0075BA2D    call        dword ptr [ebx+90]
 0075BA33    mov         eax,dword ptr [ebp-10]
 0075BA36    push        eax
 0075BA37    mov         edx,dword ptr [ebp-10]
 0075BA3A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BA3F    call        TCustomCanvas.TextWidth
 0075BA44    mov         edx,dword ptr [ebp-5C]
 0075BA47    sub         edx,eax
>0075BA49    jno         0075BA50
 0075BA4B    call        @IntOver
 0075BA50    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BA56    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BA5B    mov         ebx,dword ptr [eax]
 0075BA5D    call        dword ptr [ebx+90]
 0075BA63    mov         eax,dword ptr [ebp-14]
 0075BA66    push        eax
 0075BA67    mov         edx,dword ptr [ebp-14]
 0075BA6A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BA6F    call        TCustomCanvas.TextWidth
 0075BA74    mov         edx,dword ptr [ebp-60]
 0075BA77    sub         edx,eax
>0075BA79    jno         0075BA80
 0075BA7B    call        @IntOver
 0075BA80    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BA86    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BA8B    mov         ebx,dword ptr [eax]
 0075BA8D    call        dword ptr [ebx+90]
 0075BA93    mov         eax,dword ptr [ebp-18]
 0075BA96    push        eax
 0075BA97    mov         edx,dword ptr [ebp-18]
 0075BA9A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BA9F    call        TCustomCanvas.TextWidth
 0075BAA4    mov         edx,dword ptr [ebp-64]
 0075BAA7    sub         edx,eax
>0075BAA9    jno         0075BAB0
 0075BAAB    call        @IntOver
 0075BAB0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BAB6    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BABB    mov         ebx,dword ptr [eax]
 0075BABD    call        dword ptr [ebx+90]
 0075BAC3    mov         eax,dword ptr [ebp-1C]
 0075BAC6    push        eax
 0075BAC7    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BACD    mov         edx,dword ptr [ebp-68]
 0075BAD0    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BAD5    mov         ebx,dword ptr [eax]
 0075BAD7    call        dword ptr [ebx+90]
 0075BADD    mov         eax,dword ptr [ebp-20]
 0075BAE0    push        eax
 0075BAE1    mov         edx,dword ptr [ebp-20]
 0075BAE4    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BAE9    call        TCustomCanvas.TextWidth
 0075BAEE    mov         edx,dword ptr [ebp-6C]
 0075BAF1    sub         edx,eax
>0075BAF3    jno         0075BAFA
 0075BAF5    call        @IntOver
 0075BAFA    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BB00    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BB05    mov         ebx,dword ptr [eax]
 0075BB07    call        dword ptr [ebx+90]
 0075BB0D    mov         eax,dword ptr [ebp-24]
 0075BB10    push        eax
 0075BB11    mov         edx,dword ptr [ebp-24]
 0075BB14    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BB19    call        TCustomCanvas.TextWidth
 0075BB1E    mov         edx,dword ptr [ebp-70]
 0075BB21    sub         edx,eax
>0075BB23    jno         0075BB2A
 0075BB25    call        @IntOver
 0075BB2A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BB30    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BB35    mov         ebx,dword ptr [eax]
 0075BB37    call        dword ptr [ebx+90]
 0075BB3D    mov         eax,dword ptr [ebp-28]
 0075BB40    push        eax
 0075BB41    mov         edx,dword ptr [ebp-28]
 0075BB44    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BB49    call        TCustomCanvas.TextWidth
 0075BB4E    mov         edx,dword ptr [ebp-74]
 0075BB51    sub         edx,eax
>0075BB53    jno         0075BB5A
 0075BB55    call        @IntOver
 0075BB5A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BB60    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BB65    mov         ebx,dword ptr [eax]
 0075BB67    call        dword ptr [ebx+90]
 0075BB6D    mov         eax,dword ptr [ebp-2C]
 0075BB70    push        eax
 0075BB71    mov         edx,dword ptr [ebp-2C]
 0075BB74    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BB79    call        TCustomCanvas.TextWidth
 0075BB7E    mov         edx,dword ptr [ebp-78]
 0075BB81    sub         edx,eax
>0075BB83    jno         0075BB8A
 0075BB85    call        @IntOver
 0075BB8A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BB90    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BB95    mov         ebx,dword ptr [eax]
 0075BB97    call        dword ptr [ebx+90]
 0075BB9D    mov         eax,dword ptr [ebp-30]
 0075BBA0    push        eax
 0075BBA1    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BBA7    mov         edx,dword ptr [ebp-7C]
 0075BBAA    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BBAF    mov         ebx,dword ptr [eax]
 0075BBB1    call        dword ptr [ebx+90]
 0075BBB7    mov         eax,dword ptr [ebp-34]
 0075BBBA    push        eax
 0075BBBB    mov         edx,dword ptr [ebp-34]
 0075BBBE    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BBC3    call        TCustomCanvas.TextWidth
 0075BBC8    mov         edx,dword ptr [ebp-80]
 0075BBCB    sub         edx,eax
>0075BBCD    jno         0075BBD4
 0075BBCF    call        @IntOver
 0075BBD4    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BBDA    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BBDF    mov         ebx,dword ptr [eax]
 0075BBE1    call        dword ptr [ebx+90]
 0075BBE7    mov         eax,dword ptr [ebp-38]
 0075BBEA    push        eax
 0075BBEB    mov         edx,dword ptr [ebp-38]
 0075BBEE    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BBF3    call        TCustomCanvas.TextWidth
 0075BBF8    mov         edx,dword ptr [ebp-84]
 0075BBFE    sub         edx,eax
>0075BC00    jno         0075BC07
 0075BC02    call        @IntOver
 0075BC07    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BC0D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BC12    mov         ebx,dword ptr [eax]
 0075BC14    call        dword ptr [ebx+90]
 0075BC1A    mov         eax,dword ptr [ebp-3C]
 0075BC1D    push        eax
 0075BC1E    mov         edx,dword ptr [ebp-3C]
 0075BC21    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BC26    call        TCustomCanvas.TextWidth
 0075BC2B    mov         edx,dword ptr [ebp-88]
 0075BC31    sub         edx,eax
>0075BC33    jno         0075BC3A
 0075BC35    call        @IntOver
 0075BC3A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BC40    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BC45    mov         ebx,dword ptr [eax]
 0075BC47    call        dword ptr [ebx+90]
 0075BC4D    mov         eax,dword ptr [ebp-40]
 0075BC50    push        eax
 0075BC51    mov         edx,dword ptr [ebp-40]
 0075BC54    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BC59    call        TCustomCanvas.TextWidth
 0075BC5E    mov         edx,dword ptr [ebp-8C]
 0075BC64    sub         edx,eax
>0075BC66    jno         0075BC6D
 0075BC68    call        @IntOver
 0075BC6D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BC73    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BC78    mov         ebx,dword ptr [eax]
 0075BC7A    call        dword ptr [ebx+90]
 0075BC80    mov         eax,2
 0075BC85    call        00753BA0
 0075BC8A    lea         eax,[ebp-0C]
 0075BC8D    mov         edx,dword ptr ds:[7C3F04];^'Customer text: '
 0075BC93    call        @UStrLAsg
 0075BC98    lea         eax,[ebp-10]
 0075BC9B    mov         edx,dword ptr [ebp-44]
 0075BC9E    cmp         edx,7
>0075BCA1    jbe         0075BCA8
 0075BCA3    call        @BoundErr
 0075BCA8    imul        edx,edx,9F0
>0075BCAE    jno         0075BCB5
 0075BCB0    call        @IntOver
 0075BCB5    mov         ecx,dword ptr ds:[903774];gvar_00903774
 0075BCBB    lea         esi,[ecx+edx*8]
 0075BCBE    mov         edx,dword ptr [ebp-90]
 0075BCC4    cmp         edx,1
>0075BCC7    jbe         0075BCCE
 0075BCC9    call        @BoundErr
 0075BCCE    imul        edx,edx,4F8
>0075BCD4    jno         0075BCDB
 0075BCD6    call        @IntOver
 0075BCDB    lea         edx,[esi+edx*8]
 0075BCDE    mov         ecx,dword ptr [ebp-94]
 0075BCE4    dec         ecx
 0075BCE5    cmp         ecx,9E
>0075BCEB    jbe         0075BCF2
 0075BCED    call        @BoundErr
 0075BCF2    inc         ecx
 0075BCF3    imul        ecx,ecx,8
>0075BCF6    jno         0075BCFD
 0075BCF8    call        @IntOver
 0075BCFD    lea         edx,[edx+ecx*8-3A]
 0075BD01    call        @UStrFromString
 0075BD06    mov         eax,[009036DC];gvar_009036DC
 0075BD0B    cmp         eax,dword ptr [ebp-48]
>0075BD0E    jl          0075BD78
 0075BD10    mov         eax,[009036DC];gvar_009036DC
 0075BD15    cmp         eax,dword ptr [ebp-4C]
>0075BD18    jg          0075BD78
 0075BD1A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BD1F    mov         eax,dword ptr [eax+40]
 0075BD22    movzx       edx,byte ptr ds:[75C04C];0x0 gvar_0075C04C
 0075BD29    call        TFont.SetStyle
 0075BD2E    mov         eax,dword ptr [ebp-0C]
 0075BD31    push        eax
 0075BD32    mov         edx,dword ptr [ebp-0C]
 0075BD35    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BD3A    call        TCustomCanvas.TextWidth
 0075BD3F    mov         edx,dword ptr [ebp-68]
 0075BD42    sub         edx,eax
>0075BD44    jno         0075BD4B
 0075BD46    call        @IntOver
 0075BD4B    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BD51    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BD56    mov         ebx,dword ptr [eax]
 0075BD58    call        dword ptr [ebx+90]
 0075BD5E    mov         eax,dword ptr [ebp-10]
 0075BD61    push        eax
 0075BD62    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BD68    mov         edx,dword ptr [ebp-68]
 0075BD6B    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BD70    mov         ebx,dword ptr [eax]
 0075BD72    call        dword ptr [ebx+90]
 0075BD78    mov         eax,1
 0075BD7D    call        00753BA0
 0075BD82    lea         eax,[ebp-0C]
 0075BD85    mov         edx,dword ptr ds:[7C3F08];^'Control groups: '
 0075BD8B    call        @UStrLAsg
 0075BD90    mov         eax,[009036DC];gvar_009036DC
 0075BD95    cmp         eax,dword ptr [ebp-48]
>0075BD98    jl          0075BDE8
 0075BD9A    mov         eax,[009036DC];gvar_009036DC
 0075BD9F    cmp         eax,dword ptr [ebp-4C]
>0075BDA2    jg          0075BDE8
 0075BDA4    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BDA9    mov         eax,dword ptr [eax+40]
 0075BDAC    movzx       edx,byte ptr ds:[75C04C];0x0 gvar_0075C04C
 0075BDB3    call        TFont.SetStyle
 0075BDB8    mov         eax,dword ptr [ebp-0C]
 0075BDBB    push        eax
 0075BDBC    mov         edx,dword ptr [ebp-0C]
 0075BDBF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BDC4    call        TCustomCanvas.TextWidth
 0075BDC9    mov         edx,dword ptr [ebp-68]
 0075BDCC    sub         edx,eax
>0075BDCE    jno         0075BDD5
 0075BDD0    call        @IntOver
 0075BDD5    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BDDB    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BDE0    mov         ebx,dword ptr [eax]
 0075BDE2    call        dword ptr [ebx+90]
 0075BDE8    xor         ebx,ebx
 0075BDEA    mov         esi,1
 0075BDEF    lea         eax,[ebp-10]
 0075BDF2    mov         edx,75C05C;' '
 0075BDF7    call        @UStrLAsg
 0075BDFC    lea         edx,[ebp-4]
 0075BDFF    lea         eax,[ebp-148]
 0075BE05    call        006955F8
 0075BE0A    mov         eax,dword ptr [ebp-4]
 0075BE0D    mov         edx,dword ptr ds:[7C47A0];^gvar_007C286C
 0075BE13    mov         edx,dword ptr [edx]
 0075BE15    call        @UStrEqual
>0075BE1A    jne         0075BE27
 0075BE1C    lea         eax,[ebp-10]
 0075BE1F    mov         edx,dword ptr [ebp-4]
 0075BE22    call        @UStrCat
 0075BE27    mov         eax,dword ptr [ebp-4]
 0075BE2A    mov         edx,dword ptr ds:[7C4750];^gvar_007C2870
 0075BE30    mov         edx,dword ptr [edx]
 0075BE32    call        @UStrEqual
>0075BE37    jne         0075BE44
 0075BE39    lea         eax,[ebp-10]
 0075BE3C    mov         edx,dword ptr [ebp-4]
 0075BE3F    call        @UStrCat
 0075BE44    mov         eax,1
 0075BE49    add         eax,ebx
>0075BE4B    jno         0075BE52
 0075BE4D    call        @IntOver
 0075BE52    mov         ecx,eax
 0075BE54    mov         edx,dword ptr [ebp-4]
 0075BE57    mov         eax,75C06C;';'
 0075BE5C    call        Pos
 0075BE61    mov         ebx,eax
 0075BE63    lea         eax,[ebp-1A8]
 0075BE69    push        eax
 0075BE6A    mov         edi,ebx
 0075BE6C    sub         edi,esi
>0075BE6E    jno         0075BE75
 0075BE70    call        @IntOver
 0075BE75    add         edi,1
>0075BE78    jno         0075BE7F
 0075BE7A    call        @IntOver
 0075BE7F    mov         ecx,edi
 0075BE81    mov         edx,esi
 0075BE83    mov         eax,dword ptr [ebp-4]
 0075BE86    call        00431F88
 0075BE8B    mov         ecx,dword ptr [ebp-1A8]
 0075BE91    lea         eax,[ebp-1A4]
 0075BE97    mov         edx,dword ptr [ebp-10]
 0075BE9A    call        @UStrCat3
 0075BE9F    mov         edx,dword ptr [ebp-1A4]
 0075BEA5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BEAA    call        TCustomCanvas.TextWidth
 0075BEAF    mov         edx,dword ptr [ebp-8C]
 0075BEB5    sub         edx,dword ptr [ebp-68]
>0075BEB8    jno         0075BEBF
 0075BEBA    call        @IntOver
 0075BEBF    cmp         eax,edx
>0075BEC1    jge         0075BEF4
 0075BEC3    lea         eax,[ebp-1AC]
 0075BEC9    push        eax
 0075BECA    mov         ecx,edi
 0075BECC    mov         edx,esi
 0075BECE    mov         eax,dword ptr [ebp-4]
 0075BED1    call        00431F88
 0075BED6    mov         edx,dword ptr [ebp-1AC]
 0075BEDC    lea         eax,[ebp-10]
 0075BEDF    call        @UStrCat
 0075BEE4    mov         esi,1
 0075BEE9    add         esi,ebx
>0075BEEB    jno         0075BF54
 0075BEED    call        @IntOver
>0075BEF2    jmp         0075BF54
 0075BEF4    mov         eax,[009036DC];gvar_009036DC
 0075BEF9    cmp         eax,dword ptr [ebp-48]
>0075BEFC    jl          0075BF36
 0075BEFE    mov         eax,[009036DC];gvar_009036DC
 0075BF03    cmp         eax,dword ptr [ebp-4C]
>0075BF06    jg          0075BF36
 0075BF08    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BF0D    mov         eax,dword ptr [eax+40]
 0075BF10    movzx       edx,byte ptr ds:[75C04C];0x0 gvar_0075C04C
 0075BF17    call        TFont.SetStyle
 0075BF1C    mov         eax,dword ptr [ebp-10]
 0075BF1F    push        eax
 0075BF20    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BF26    mov         edx,dword ptr [ebp-68]
 0075BF29    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BF2E    mov         ebx,dword ptr [eax]
 0075BF30    call        dword ptr [ebx+90]
 0075BF36    mov         ebx,esi
 0075BF38    sub         ebx,1
>0075BF3B    jno         0075BF42
 0075BF3D    call        @IntOver
 0075BF42    mov         eax,1
 0075BF47    call        00753BA0
 0075BF4C    lea         eax,[ebp-10]
 0075BF4F    call        @UStrClr
 0075BF54    test        ebx,ebx
>0075BF56    jne         0075BF9A
 0075BF58    mov         eax,[009036DC];gvar_009036DC
 0075BF5D    cmp         eax,dword ptr [ebp-48]
>0075BF60    jl          0075BF9A
 0075BF62    mov         eax,[009036DC];gvar_009036DC
 0075BF67    cmp         eax,dword ptr [ebp-4C]
>0075BF6A    jg          0075BF9A
 0075BF6C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BF71    mov         eax,dword ptr [eax+40]
 0075BF74    movzx       edx,byte ptr ds:[75C04C];0x0 gvar_0075C04C
 0075BF7B    call        TFont.SetStyle
 0075BF80    mov         eax,dword ptr [ebp-10]
 0075BF83    push        eax
 0075BF84    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075BF8A    mov         edx,dword ptr [ebp-68]
 0075BF8D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075BF92    mov         edi,dword ptr [eax]
 0075BF94    call        dword ptr [edi+90]
 0075BF9A    test        ebx,ebx
>0075BF9C    jne         0075BE44
 0075BFA2    mov         eax,3
 0075BFA7    call        00753BA0
 0075BFAC    inc         dword ptr [ebp-94]
 0075BFB2    cmp         dword ptr [ebp-94],64
>0075BFB9    jne         0075B6ED
 0075BFBF    inc         dword ptr [ebp-90]
 0075BFC5    cmp         dword ptr [ebp-90],2
>0075BFCC    jne         0075B6E3
 0075BFD2    xor         eax,eax
 0075BFD4    pop         edx
 0075BFD5    pop         ecx
 0075BFD6    pop         ecx
 0075BFD7    mov         dword ptr fs:[eax],edx
 0075BFDA    push        75C004
 0075BFDF    lea         eax,[ebp-1AC]
 0075BFE5    mov         edx,0B
 0075BFEA    call        @UStrArrayClr
 0075BFEF    lea         eax,[ebp-40]
 0075BFF2    mov         edx,10
 0075BFF7    call        @UStrArrayClr
 0075BFFC    ret
>0075BFFD    jmp         @HandleFinally
>0075C002    jmp         0075BFDF
 0075C004    pop         edi
 0075C005    pop         esi
 0075C006    pop         ebx
 0075C007    mov         esp,ebp
 0075C009    pop         ebp
 0075C00A    ret         4
end;*}

//0075C070
{*procedure sub_0075C070(?:?; ?:Integer; ?:Integer; ?:?);
begin
 0075C070    push        ebp
 0075C071    mov         ebp,esp
 0075C073    push        ecx
 0075C074    mov         ecx,36
 0075C079    push        0
 0075C07B    push        0
 0075C07D    dec         ecx
>0075C07E    jne         0075C079
 0075C080    xchg        ecx,dword ptr [ebp-4]
 0075C083    push        ebx
 0075C084    push        esi
 0075C085    push        edi
 0075C086    mov         dword ptr [ebp-50],ecx
 0075C089    mov         dword ptr [ebp-4C],edx
 0075C08C    mov         dword ptr [ebp-48],eax
 0075C08F    mov         ebx,dword ptr [ebp+8]
 0075C092    xor         eax,eax
 0075C094    push        ebp
 0075C095    push        75CF36
 0075C09A    push        dword ptr fs:[eax]
 0075C09D    mov         dword ptr fs:[eax],esp
 0075C0A0    mov         eax,[00903714];gvar_00903714
 0075C0A5    mov         dword ptr [ebp-5C],eax
 0075C0A8    mov         edx,ebx
 0075C0AA    mov         eax,15
 0075C0AF    call        007537B0
 0075C0B4    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C0BA    jno         0075C0C1
 0075C0BC    call        @IntOver
 0075C0C1    mov         dword ptr [ebp-60],eax
 0075C0C4    mov         edx,ebx
 0075C0C6    mov         eax,1E
 0075C0CB    call        007537B0
 0075C0D0    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C0D6    jno         0075C0DD
 0075C0D8    call        @IntOver
 0075C0DD    mov         dword ptr [ebp-64],eax
 0075C0E0    mov         edx,ebx
 0075C0E2    mov         eax,27
 0075C0E7    call        007537B0
 0075C0EC    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C0F2    jno         0075C0F9
 0075C0F4    call        @IntOver
 0075C0F9    mov         dword ptr [ebp-68],eax
 0075C0FC    mov         edx,ebx
 0075C0FE    mov         eax,29
 0075C103    call        007537B0
 0075C108    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C10E    jno         0075C115
 0075C110    call        @IntOver
 0075C115    mov         dword ptr [ebp-6C],eax
 0075C118    mov         edx,ebx
 0075C11A    mov         eax,4D
 0075C11F    call        007537B0
 0075C124    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C12A    jno         0075C131
 0075C12C    call        @IntOver
 0075C131    mov         dword ptr [ebp-70],eax
 0075C134    mov         edx,ebx
 0075C136    mov         eax,56
 0075C13B    call        007537B0
 0075C140    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C146    jno         0075C14D
 0075C148    call        @IntOver
 0075C14D    mov         dword ptr [ebp-74],eax
 0075C150    mov         edx,ebx
 0075C152    mov         eax,5F
 0075C157    call        007537B0
 0075C15C    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C162    jno         0075C169
 0075C164    call        @IntOver
 0075C169    mov         dword ptr [ebp-78],eax
 0075C16C    mov         edx,ebx
 0075C16E    mov         eax,68
 0075C173    call        007537B0
 0075C178    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C17E    jno         0075C185
 0075C180    call        @IntOver
 0075C185    mov         dword ptr [ebp-7C],eax
 0075C188    mov         edx,ebx
 0075C18A    mov         eax,71
 0075C18F    call        007537B0
 0075C194    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C19A    jno         0075C1A1
 0075C19C    call        @IntOver
 0075C1A1    mov         dword ptr [ebp-80],eax
 0075C1A4    mov         edx,ebx
 0075C1A6    mov         eax,73
 0075C1AB    call        007537B0
 0075C1B0    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C1B6    jno         0075C1BD
 0075C1B8    call        @IntOver
 0075C1BD    mov         dword ptr [ebp-84],eax
 0075C1C3    mov         edx,ebx
 0075C1C5    mov         eax,88
 0075C1CA    call        007537B0
 0075C1CF    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C1D5    jno         0075C1DC
 0075C1D7    call        @IntOver
 0075C1DC    mov         dword ptr [ebp-88],eax
 0075C1E2    mov         edx,ebx
 0075C1E4    mov         eax,91
 0075C1E9    call        007537B0
 0075C1EE    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C1F4    jno         0075C1FB
 0075C1F6    call        @IntOver
 0075C1FB    mov         dword ptr [ebp-8C],eax
 0075C201    mov         edx,ebx
 0075C203    mov         eax,9A
 0075C208    call        007537B0
 0075C20D    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C213    jno         0075C21A
 0075C215    call        @IntOver
 0075C21A    mov         dword ptr [ebp-90],eax
 0075C220    mov         edx,ebx
 0075C222    mov         eax,0A3
 0075C227    call        007537B0
 0075C22C    add         eax,dword ptr ds:[903714];gvar_00903714
>0075C232    jno         0075C239
 0075C234    call        @IntOver
 0075C239    mov         dword ptr [ebp-94],eax
 0075C23F    xor         eax,eax
 0075C241    call        00753BA0
 0075C246    lea         eax,[ebp-0C]
 0075C249    mov         edx,dword ptr ds:[7C3F0C];^'Address'
 0075C24F    call        @UStrLAsg
 0075C254    lea         eax,[ebp-10]
 0075C257    mov         edx,dword ptr ds:[7C3F10];^'D-Zone'
 0075C25D    call        @UStrLAsg
 0075C262    lea         eax,[ebp-14]
 0075C265    mov         edx,dword ptr ds:[7C3F14];^'Ctrl A'
 0075C26B    call        @UStrLAsg
 0075C270    lea         eax,[ebp-18]
 0075C273    mov         edx,dword ptr ds:[7C3F18];^'Ctrl B'
 0075C279    call        @UStrLAsg
 0075C27E    lea         eax,[ebp-1C]
 0075C281    mov         edx,dword ptr ds:[7C3F1C];^'Type'
 0075C287    call        @UStrLAsg
 0075C28C    lea         eax,[ebp-20]
 0075C28F    mov         edx,dword ptr ds:[7C3F4C];^'EOL'
 0075C295    call        @UStrLAsg
 0075C29A    lea         eax,[ebp-24]
 0075C29D    mov         edx,dword ptr ds:[7C3F50];^'NC'
 0075C2A3    call        @UStrLAsg
 0075C2A8    lea         eax,[ebp-28]
 0075C2AB    mov         edx,dword ptr ds:[7C3F54];^'SC=A'
 0075C2B1    call        @UStrLAsg
 0075C2B6    lea         eax,[ebp-2C]
 0075C2B9    mov         edx,dword ptr ds:[7C3F58];^'BM'
 0075C2BF    call        @UStrLAsg
 0075C2C4    lea         eax,[ebp-30]
 0075C2C7    mov         edx,dword ptr ds:[7C3F5C];^'Exi'
 0075C2CD    call        @UStrLAsg
 0075C2D2    lea         eax,[ebp-34]
 0075C2D5    mov         edx,dword ptr ds:[7C3F34];^'Mode'
 0075C2DB    call        @UStrLAsg
 0075C2E0    lea         eax,[ebp-38]
 0075C2E3    mov         edx,dword ptr ds:[7C3F60];^'Ver.'
 0075C2E9    call        @UStrLAsg
 0075C2EE    lea         eax,[ebp-3C]
 0075C2F1    mov         edx,dword ptr ds:[7C3F3C];^'InFilt'
 0075C2F7    call        @UStrLAsg
 0075C2FC    lea         eax,[ebp-40]
 0075C2FF    mov         edx,dword ptr ds:[7C3F40];^'DayM'
 0075C305    call        @UStrLAsg
 0075C30A    lea         eax,[ebp-44]
 0075C30D    mov         edx,dword ptr ds:[7C3F44];^'ZDis'
 0075C313    call        @UStrLAsg
 0075C318    mov         eax,[009036DC];gvar_009036DC
 0075C31D    cmp         eax,dword ptr [ebp-4C]
>0075C320    jl          0075C5E5
 0075C326    mov         eax,[009036DC];gvar_009036DC
 0075C32B    cmp         eax,dword ptr [ebp-50]
>0075C32E    jg          0075C5E5
 0075C334    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C339    mov         eax,dword ptr [eax+40]
 0075C33C    movzx       edx,byte ptr ds:[75CF48];0x1 gvar_0075CF48
 0075C343    call        TFont.SetStyle
 0075C348    mov         eax,dword ptr [ebp-0C]
 0075C34B    push        eax
 0075C34C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C352    mov         edx,dword ptr [ebp-5C]
 0075C355    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C35A    mov         ebx,dword ptr [eax]
 0075C35C    call        dword ptr [ebx+90]
 0075C362    mov         eax,dword ptr [ebp-10]
 0075C365    push        eax
 0075C366    mov         edx,dword ptr [ebp-10]
 0075C369    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C36E    call        TCustomCanvas.TextWidth
 0075C373    mov         edx,dword ptr [ebp-60]
 0075C376    sub         edx,eax
>0075C378    jno         0075C37F
 0075C37A    call        @IntOver
 0075C37F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C385    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C38A    mov         ebx,dword ptr [eax]
 0075C38C    call        dword ptr [ebx+90]
 0075C392    mov         eax,dword ptr [ebp-14]
 0075C395    push        eax
 0075C396    mov         edx,dword ptr [ebp-14]
 0075C399    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C39E    call        TCustomCanvas.TextWidth
 0075C3A3    mov         edx,dword ptr [ebp-64]
 0075C3A6    sub         edx,eax
>0075C3A8    jno         0075C3AF
 0075C3AA    call        @IntOver
 0075C3AF    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C3B5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C3BA    mov         ebx,dword ptr [eax]
 0075C3BC    call        dword ptr [ebx+90]
 0075C3C2    mov         eax,dword ptr [ebp-18]
 0075C3C5    push        eax
 0075C3C6    mov         edx,dword ptr [ebp-18]
 0075C3C9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C3CE    call        TCustomCanvas.TextWidth
 0075C3D3    mov         edx,dword ptr [ebp-68]
 0075C3D6    sub         edx,eax
>0075C3D8    jno         0075C3DF
 0075C3DA    call        @IntOver
 0075C3DF    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C3E5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C3EA    mov         ebx,dword ptr [eax]
 0075C3EC    call        dword ptr [ebx+90]
 0075C3F2    mov         eax,dword ptr [ebp-1C]
 0075C3F5    push        eax
 0075C3F6    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C3FC    mov         edx,dword ptr [ebp-6C]
 0075C3FF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C404    mov         ebx,dword ptr [eax]
 0075C406    call        dword ptr [ebx+90]
 0075C40C    mov         eax,dword ptr [ebp-20]
 0075C40F    push        eax
 0075C410    mov         edx,dword ptr [ebp-20]
 0075C413    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C418    call        TCustomCanvas.TextWidth
 0075C41D    mov         edx,dword ptr [ebp-70]
 0075C420    sub         edx,eax
>0075C422    jno         0075C429
 0075C424    call        @IntOver
 0075C429    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C42F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C434    mov         ebx,dword ptr [eax]
 0075C436    call        dword ptr [ebx+90]
 0075C43C    mov         eax,dword ptr [ebp-24]
 0075C43F    push        eax
 0075C440    mov         edx,dword ptr [ebp-24]
 0075C443    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C448    call        TCustomCanvas.TextWidth
 0075C44D    mov         edx,dword ptr [ebp-74]
 0075C450    sub         edx,eax
>0075C452    jno         0075C459
 0075C454    call        @IntOver
 0075C459    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C45F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C464    mov         ebx,dword ptr [eax]
 0075C466    call        dword ptr [ebx+90]
 0075C46C    mov         eax,dword ptr [ebp-28]
 0075C46F    push        eax
 0075C470    mov         edx,dword ptr [ebp-28]
 0075C473    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C478    call        TCustomCanvas.TextWidth
 0075C47D    mov         edx,dword ptr [ebp-78]
 0075C480    sub         edx,eax
>0075C482    jno         0075C489
 0075C484    call        @IntOver
 0075C489    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C48F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C494    mov         ebx,dword ptr [eax]
 0075C496    call        dword ptr [ebx+90]
 0075C49C    mov         eax,dword ptr [ebp-2C]
 0075C49F    push        eax
 0075C4A0    mov         edx,dword ptr [ebp-2C]
 0075C4A3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C4A8    call        TCustomCanvas.TextWidth
 0075C4AD    mov         edx,dword ptr [ebp-7C]
 0075C4B0    sub         edx,eax
>0075C4B2    jno         0075C4B9
 0075C4B4    call        @IntOver
 0075C4B9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C4BF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C4C4    mov         ebx,dword ptr [eax]
 0075C4C6    call        dword ptr [ebx+90]
 0075C4CC    mov         eax,dword ptr [ebp-30]
 0075C4CF    push        eax
 0075C4D0    mov         edx,dword ptr [ebp-30]
 0075C4D3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C4D8    call        TCustomCanvas.TextWidth
 0075C4DD    mov         edx,dword ptr [ebp-80]
 0075C4E0    sub         edx,eax
>0075C4E2    jno         0075C4E9
 0075C4E4    call        @IntOver
 0075C4E9    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C4EF    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C4F4    mov         ebx,dword ptr [eax]
 0075C4F6    call        dword ptr [ebx+90]
 0075C4FC    mov         eax,dword ptr [ebp-34]
 0075C4FF    push        eax
 0075C500    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C506    mov         edx,dword ptr [ebp-84]
 0075C50C    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C511    mov         ebx,dword ptr [eax]
 0075C513    call        dword ptr [ebx+90]
 0075C519    mov         eax,dword ptr [ebp-38]
 0075C51C    push        eax
 0075C51D    mov         edx,dword ptr [ebp-38]
 0075C520    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C525    call        TCustomCanvas.TextWidth
 0075C52A    mov         edx,dword ptr [ebp-88]
 0075C530    sub         edx,eax
>0075C532    jno         0075C539
 0075C534    call        @IntOver
 0075C539    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C53F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C544    mov         ebx,dword ptr [eax]
 0075C546    call        dword ptr [ebx+90]
 0075C54C    mov         eax,dword ptr [ebp-3C]
 0075C54F    push        eax
 0075C550    mov         edx,dword ptr [ebp-3C]
 0075C553    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C558    call        TCustomCanvas.TextWidth
 0075C55D    mov         edx,dword ptr [ebp-8C]
 0075C563    sub         edx,eax
>0075C565    jno         0075C56C
 0075C567    call        @IntOver
 0075C56C    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C572    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C577    mov         ebx,dword ptr [eax]
 0075C579    call        dword ptr [ebx+90]
 0075C57F    mov         eax,dword ptr [ebp-40]
 0075C582    push        eax
 0075C583    mov         edx,dword ptr [ebp-40]
 0075C586    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C58B    call        TCustomCanvas.TextWidth
 0075C590    mov         edx,dword ptr [ebp-90]
 0075C596    sub         edx,eax
>0075C598    jno         0075C59F
 0075C59A    call        @IntOver
 0075C59F    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C5A5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C5AA    mov         ebx,dword ptr [eax]
 0075C5AC    call        dword ptr [ebx+90]
 0075C5B2    mov         eax,dword ptr [ebp-44]
 0075C5B5    push        eax
 0075C5B6    mov         edx,dword ptr [ebp-44]
 0075C5B9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C5BE    call        TCustomCanvas.TextWidth
 0075C5C3    mov         edx,dword ptr [ebp-94]
 0075C5C9    sub         edx,eax
>0075C5CB    jno         0075C5D2
 0075C5CD    call        @IntOver
 0075C5D2    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C5D8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C5DD    mov         ebx,dword ptr [eax]
 0075C5DF    call        dword ptr [ebx+90]
 0075C5E5    mov         eax,3
 0075C5EA    call        00753BA0
 0075C5EF    xor         eax,eax
 0075C5F1    mov         dword ptr [ebp-98],eax
 0075C5F7    mov         dword ptr [ebp-9C],1
 0075C601    mov         eax,dword ptr [ebp-48]
 0075C604    cmp         eax,7
>0075C607    jbe         0075C60E
 0075C609    call        @BoundErr
 0075C60E    imul        eax,eax,43B3
>0075C614    jno         0075C61B
 0075C616    call        @IntOver
 0075C61B    mov         edx,dword ptr ds:[903770];gvar_00903770
 0075C621    lea         eax,[edx+eax*4]
 0075C624    mov         edx,dword ptr [ebp-98]
 0075C62A    cmp         edx,1
>0075C62D    jbe         0075C634
 0075C62F    call        @BoundErr
 0075C634    imul        edx,edx,43B3
>0075C63A    jno         0075C641
 0075C63C    call        @IntOver
 0075C641    lea         eax,[eax+edx*2]
 0075C644    mov         edx,dword ptr [ebp-9C]
 0075C64A    dec         edx
 0075C64B    cmp         edx,9E
>0075C651    jbe         0075C658
 0075C653    call        @BoundErr
 0075C658    inc         edx
 0075C659    imul        edx,edx,6D
>0075C65C    jno         0075C663
 0075C65E    call        @IntOver
 0075C663    lea         esi,[eax+edx*2-0D6]
 0075C66A    lea         edi,[ebp-176]
 0075C670    mov         ecx,36
 0075C675    rep movs    dword ptr [edi],dword ptr [esi]
 0075C677    movs        word ptr [edi],word ptr [esi]
 0075C679    movzx       ebx,byte ptr [ebp-16C]
 0075C680    test        bl,bl
>0075C682    je          0075CEE5
 0075C688    mov         eax,[00903768];gvar_00903768
 0075C68D    call        006A3430
 0075C692    movzx       eax,al
 0075C695    add         eax,dword ptr [ebp-48]
>0075C698    jno         0075C69F
 0075C69A    call        @IntOver
 0075C69F    lea         edx,[ebp-194]
 0075C6A5    call        IntToStr
 0075C6AA    mov         ecx,dword ptr [ebp-194]
 0075C6B0    lea         eax,[ebp-190]
 0075C6B6    mov         edx,75CF58;'0'
 0075C6BB    call        @UStrCat3
 0075C6C0    mov         eax,dword ptr [ebp-190]
 0075C6C6    lea         ecx,[ebp-18C]
 0075C6CC    mov         edx,3
 0075C6D1    call        00431F5C
 0075C6D6    push        dword ptr [ebp-18C]
 0075C6DC    push        75CF68;'.'
 0075C6E1    lea         edx,[ebp-1A0]
 0075C6E7    imul        eax,dword ptr [ebp-98],64
>0075C6EE    jno         0075C6F5
 0075C6F0    call        @IntOver
 0075C6F5    add         eax,dword ptr [ebp-9C]
>0075C6FB    jno         0075C702
 0075C6FD    call        @IntOver
 0075C702    call        IntToStr
 0075C707    mov         ecx,dword ptr [ebp-1A0]
 0075C70D    lea         eax,[ebp-19C]
 0075C713    mov         edx,75CF78;'00'
 0075C718    call        @UStrCat3
 0075C71D    mov         eax,dword ptr [ebp-19C]
 0075C723    lea         ecx,[ebp-198]
 0075C729    mov         edx,3
 0075C72E    call        00431F5C
 0075C733    push        dword ptr [ebp-198]
 0075C739    lea         eax,[ebp-0C]
 0075C73C    mov         edx,3
 0075C741    call        @UStrCatN
 0075C746    mov         eax,[00903768];gvar_00903768
 0075C74B    movzx       eax,word ptr [eax+123]
 0075C752    movzx       edx,byte ptr [ebp-171]
 0075C759    add         eax,edx
>0075C75B    jno         0075C762
 0075C75D    call        @IntOver
 0075C762    sub         eax,1
>0075C765    jno         0075C76C
 0075C767    call        @IntOver
 0075C76C    lea         edx,[ebp-1A8]
 0075C772    call        IntToStr
 0075C777    mov         ecx,dword ptr [ebp-1A8]
 0075C77D    lea         eax,[ebp-1A4]
 0075C783    mov         edx,75CF8C;'000'
 0075C788    call        @UStrCat3
 0075C78D    mov         eax,dword ptr [ebp-1A4]
 0075C793    lea         ecx,[ebp-10]
 0075C796    mov         edx,4
 0075C79B    call        00431F5C
 0075C7A0    lea         edx,[ebp-14]
 0075C7A3    movzx       eax,word ptr [ebp-170]
 0075C7AA    call        IntToStr
 0075C7AF    lea         edx,[ebp-18]
 0075C7B2    movzx       eax,word ptr [ebp-16E]
 0075C7B9    call        IntToStr
 0075C7BE    movzx       esi,bl
 0075C7C1    mov         eax,esi
 0075C7C3    mov         edx,100
 0075C7C8    mul         eax,edx
 0075C7CA    mov         edx,eax
>0075C7CC    jno         0075C7D3
 0075C7CE    call        @IntOver
 0075C7D3    movzx       eax,byte ptr [ebp-16B]
 0075C7DA    add         edx,eax
>0075C7DC    jno         0075C7E3
 0075C7DE    call        @IntOver
 0075C7E3    cmp         edx,0FFFF
>0075C7E9    jbe         0075C7F0
 0075C7EB    call        @BoundErr
 0075C7F0    lea         ecx,[ebp-1C]
 0075C7F3    mov         eax,[00903770];gvar_00903770
 0075C7F8    call        TFXPAD.IntToCnv
 0075C7FD    lea         ecx,[ebp-20]
 0075C800    movzx       edx,byte ptr [ebp-15B]
 0075C807    mov         eax,[00903770];gvar_00903770
 0075C80C    call        TFXPAD.IntToEOL
 0075C811    lea         eax,[ebp-24]
 0075C814    test        byte ptr [ebp-15B],10
 0075C81B    setne       dl
 0075C81E    and         edx,7F
 0075C821    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0075C827    mov         edx,dword ptr [ecx+edx*4]
 0075C82A    call        @UStrLAsg
 0075C82F    lea         eax,[ebp-28]
 0075C832    test        byte ptr [ebp-15B],1
 0075C839    setne       dl
 0075C83C    and         edx,7F
 0075C83F    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0075C845    mov         edx,dword ptr [ecx+edx*4]
 0075C848    call        @UStrLAsg
 0075C84D    lea         eax,[ebp-2C]
 0075C850    movzx       edx,byte ptr [ebp-15B]
 0075C857    and         dl,2
 0075C85A    not         dl
 0075C85C    test        dl,dl
 0075C85E    setne       dl
 0075C861    and         edx,7F
 0075C864    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0075C86A    mov         edx,dword ptr [ecx+edx*4]
 0075C86D    call        @UStrLAsg
 0075C872    lea         eax,[ebp-30]
 0075C875    test        byte ptr [ebp-15B],20
 0075C87C    setne       dl
 0075C87F    and         edx,7F
 0075C882    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0075C888    mov         edx,dword ptr [ecx+edx*4]
 0075C88B    call        @UStrLAsg
 0075C890    lea         eax,[ebp-34]
 0075C893    push        eax
 0075C894    mov         eax,esi
 0075C896    mov         edx,100
 0075C89B    mul         eax,edx
 0075C89D    mov         edx,eax
>0075C89F    jno         0075C8A6
 0075C8A1    call        @IntOver
 0075C8A6    movzx       eax,byte ptr [ebp-16B]
 0075C8AD    add         edx,eax
>0075C8AF    jno         0075C8B6
 0075C8B1    call        @IntOver
 0075C8B6    cmp         edx,0FFFF
>0075C8BC    jbe         0075C8C3
 0075C8BE    call        @BoundErr
 0075C8C3    movzx       ecx,byte ptr [ebp-160]
 0075C8CA    mov         eax,[00903770];gvar_00903770
 0075C8CF    call        TFXPAD.SysIntToMode
 0075C8D4    lea         eax,[ebp-38]
 0075C8D7    movzx       edx,byte ptr [ebp-15B]
 0075C8DE    and         dl,4
 0075C8E1    not         dl
 0075C8E3    test        dl,dl
 0075C8E5    setne       dl
 0075C8E8    and         edx,7F
 0075C8EB    mov         ecx,dword ptr ds:[7C4E60];^^' No':array[2] of ?
 0075C8F1    mov         edx,dword ptr [ecx+edx*4]
 0075C8F4    call        @UStrLAsg
 0075C8F9    lea         edx,[ebp-3C]
 0075C8FC    movzx       eax,byte ptr [ebp-15E]
 0075C903    call        IntToStr
 0075C908    lea         edx,[ebp-40]
 0075C90B    movzx       eax,byte ptr [ebp-15D]
 0075C912    call        IntToStr
 0075C917    lea         edx,[ebp-44]
 0075C91A    movzx       eax,byte ptr [ebp-15C]
 0075C921    call        IntToStr
 0075C926    mov         eax,[009036DC];gvar_009036DC
 0075C92B    cmp         eax,dword ptr [ebp-4C]
>0075C92E    jl          0075CBF3
 0075C934    mov         eax,[009036DC];gvar_009036DC
 0075C939    cmp         eax,dword ptr [ebp-50]
>0075C93C    jg          0075CBF3
 0075C942    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C947    mov         eax,dword ptr [eax+40]
 0075C94A    movzx       edx,byte ptr ds:[75CF94];0x0 gvar_0075CF94
 0075C951    call        TFont.SetStyle
 0075C956    mov         eax,dword ptr [ebp-0C]
 0075C959    push        eax
 0075C95A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C960    mov         edx,dword ptr [ebp-5C]
 0075C963    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C968    mov         ebx,dword ptr [eax]
 0075C96A    call        dword ptr [ebx+90]
 0075C970    mov         eax,dword ptr [ebp-10]
 0075C973    push        eax
 0075C974    mov         edx,dword ptr [ebp-10]
 0075C977    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C97C    call        TCustomCanvas.TextWidth
 0075C981    mov         edx,dword ptr [ebp-60]
 0075C984    sub         edx,eax
>0075C986    jno         0075C98D
 0075C988    call        @IntOver
 0075C98D    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C993    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C998    mov         ebx,dword ptr [eax]
 0075C99A    call        dword ptr [ebx+90]
 0075C9A0    mov         eax,dword ptr [ebp-14]
 0075C9A3    push        eax
 0075C9A4    mov         edx,dword ptr [ebp-14]
 0075C9A7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C9AC    call        TCustomCanvas.TextWidth
 0075C9B1    mov         edx,dword ptr [ebp-64]
 0075C9B4    sub         edx,eax
>0075C9B6    jno         0075C9BD
 0075C9B8    call        @IntOver
 0075C9BD    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C9C3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C9C8    mov         ebx,dword ptr [eax]
 0075C9CA    call        dword ptr [ebx+90]
 0075C9D0    mov         eax,dword ptr [ebp-18]
 0075C9D3    push        eax
 0075C9D4    mov         edx,dword ptr [ebp-18]
 0075C9D7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C9DC    call        TCustomCanvas.TextWidth
 0075C9E1    mov         edx,dword ptr [ebp-68]
 0075C9E4    sub         edx,eax
>0075C9E6    jno         0075C9ED
 0075C9E8    call        @IntOver
 0075C9ED    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075C9F3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075C9F8    mov         ebx,dword ptr [eax]
 0075C9FA    call        dword ptr [ebx+90]
 0075CA00    mov         eax,dword ptr [ebp-1C]
 0075CA03    push        eax
 0075CA04    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CA0A    mov         edx,dword ptr [ebp-6C]
 0075CA0D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CA12    mov         ebx,dword ptr [eax]
 0075CA14    call        dword ptr [ebx+90]
 0075CA1A    mov         eax,dword ptr [ebp-20]
 0075CA1D    push        eax
 0075CA1E    mov         edx,dword ptr [ebp-20]
 0075CA21    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CA26    call        TCustomCanvas.TextWidth
 0075CA2B    mov         edx,dword ptr [ebp-70]
 0075CA2E    sub         edx,eax
>0075CA30    jno         0075CA37
 0075CA32    call        @IntOver
 0075CA37    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CA3D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CA42    mov         ebx,dword ptr [eax]
 0075CA44    call        dword ptr [ebx+90]
 0075CA4A    mov         eax,dword ptr [ebp-24]
 0075CA4D    push        eax
 0075CA4E    mov         edx,dword ptr [ebp-24]
 0075CA51    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CA56    call        TCustomCanvas.TextWidth
 0075CA5B    mov         edx,dword ptr [ebp-74]
 0075CA5E    sub         edx,eax
>0075CA60    jno         0075CA67
 0075CA62    call        @IntOver
 0075CA67    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CA6D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CA72    mov         ebx,dword ptr [eax]
 0075CA74    call        dword ptr [ebx+90]
 0075CA7A    mov         eax,dword ptr [ebp-28]
 0075CA7D    push        eax
 0075CA7E    mov         edx,dword ptr [ebp-28]
 0075CA81    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CA86    call        TCustomCanvas.TextWidth
 0075CA8B    mov         edx,dword ptr [ebp-78]
 0075CA8E    sub         edx,eax
>0075CA90    jno         0075CA97
 0075CA92    call        @IntOver
 0075CA97    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CA9D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CAA2    mov         ebx,dword ptr [eax]
 0075CAA4    call        dword ptr [ebx+90]
 0075CAAA    mov         eax,dword ptr [ebp-2C]
 0075CAAD    push        eax
 0075CAAE    mov         edx,dword ptr [ebp-2C]
 0075CAB1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CAB6    call        TCustomCanvas.TextWidth
 0075CABB    mov         edx,dword ptr [ebp-7C]
 0075CABE    sub         edx,eax
>0075CAC0    jno         0075CAC7
 0075CAC2    call        @IntOver
 0075CAC7    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CACD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CAD2    mov         ebx,dword ptr [eax]
 0075CAD4    call        dword ptr [ebx+90]
 0075CADA    mov         eax,dword ptr [ebp-30]
 0075CADD    push        eax
 0075CADE    mov         edx,dword ptr [ebp-30]
 0075CAE1    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CAE6    call        TCustomCanvas.TextWidth
 0075CAEB    mov         edx,dword ptr [ebp-80]
 0075CAEE    sub         edx,eax
>0075CAF0    jno         0075CAF7
 0075CAF2    call        @IntOver
 0075CAF7    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CAFD    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CB02    mov         ebx,dword ptr [eax]
 0075CB04    call        dword ptr [ebx+90]
 0075CB0A    mov         eax,dword ptr [ebp-34]
 0075CB0D    push        eax
 0075CB0E    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CB14    mov         edx,dword ptr [ebp-84]
 0075CB1A    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CB1F    mov         ebx,dword ptr [eax]
 0075CB21    call        dword ptr [ebx+90]
 0075CB27    mov         eax,dword ptr [ebp-38]
 0075CB2A    push        eax
 0075CB2B    mov         edx,dword ptr [ebp-38]
 0075CB2E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CB33    call        TCustomCanvas.TextWidth
 0075CB38    mov         edx,dword ptr [ebp-88]
 0075CB3E    sub         edx,eax
>0075CB40    jno         0075CB47
 0075CB42    call        @IntOver
 0075CB47    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CB4D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CB52    mov         ebx,dword ptr [eax]
 0075CB54    call        dword ptr [ebx+90]
 0075CB5A    mov         eax,dword ptr [ebp-3C]
 0075CB5D    push        eax
 0075CB5E    mov         edx,dword ptr [ebp-3C]
 0075CB61    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CB66    call        TCustomCanvas.TextWidth
 0075CB6B    mov         edx,dword ptr [ebp-8C]
 0075CB71    sub         edx,eax
>0075CB73    jno         0075CB7A
 0075CB75    call        @IntOver
 0075CB7A    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CB80    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CB85    mov         ebx,dword ptr [eax]
 0075CB87    call        dword ptr [ebx+90]
 0075CB8D    mov         eax,dword ptr [ebp-40]
 0075CB90    push        eax
 0075CB91    mov         edx,dword ptr [ebp-40]
 0075CB94    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CB99    call        TCustomCanvas.TextWidth
 0075CB9E    mov         edx,dword ptr [ebp-90]
 0075CBA4    sub         edx,eax
>0075CBA6    jno         0075CBAD
 0075CBA8    call        @IntOver
 0075CBAD    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CBB3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CBB8    mov         ebx,dword ptr [eax]
 0075CBBA    call        dword ptr [ebx+90]
 0075CBC0    mov         eax,dword ptr [ebp-44]
 0075CBC3    push        eax
 0075CBC4    mov         edx,dword ptr [ebp-44]
 0075CBC7    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CBCC    call        TCustomCanvas.TextWidth
 0075CBD1    mov         edx,dword ptr [ebp-94]
 0075CBD7    sub         edx,eax
>0075CBD9    jno         0075CBE0
 0075CBDB    call        @IntOver
 0075CBE0    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CBE6    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CBEB    mov         ebx,dword ptr [eax]
 0075CBED    call        dword ptr [ebx+90]
 0075CBF3    mov         eax,2
 0075CBF8    call        00753BA0
 0075CBFD    lea         eax,[ebp-0C]
 0075CC00    mov         edx,dword ptr ds:[7C3F04];^'Customer text: '
 0075CC06    call        @UStrLAsg
 0075CC0B    lea         eax,[ebp-10]
 0075CC0E    mov         edx,dword ptr [ebp-48]
 0075CC11    cmp         edx,7
>0075CC14    jbe         0075CC1B
 0075CC16    call        @BoundErr
 0075CC1B    imul        edx,edx,9F0
>0075CC21    jno         0075CC28
 0075CC23    call        @IntOver
 0075CC28    mov         ecx,dword ptr ds:[903774];gvar_00903774
 0075CC2E    lea         esi,[ecx+edx*8]
 0075CC31    mov         edx,dword ptr [ebp-98]
 0075CC37    cmp         edx,1
>0075CC3A    jbe         0075CC41
 0075CC3C    call        @BoundErr
 0075CC41    imul        edx,edx,4F8
>0075CC47    jno         0075CC4E
 0075CC49    call        @IntOver
 0075CC4E    lea         edx,[esi+edx*8]
 0075CC51    mov         ecx,dword ptr [ebp-9C]
 0075CC57    dec         ecx
 0075CC58    cmp         ecx,9E
>0075CC5E    jbe         0075CC65
 0075CC60    call        @BoundErr
 0075CC65    inc         ecx
 0075CC66    imul        ecx,ecx,8
>0075CC69    jno         0075CC70
 0075CC6B    call        @IntOver
 0075CC70    lea         edx,[edx+ecx*8-3A]
 0075CC74    call        @UStrFromString
 0075CC79    mov         eax,[009036DC];gvar_009036DC
 0075CC7E    cmp         eax,dword ptr [ebp-4C]
>0075CC81    jl          0075CCEB
 0075CC83    mov         eax,[009036DC];gvar_009036DC
 0075CC88    cmp         eax,dword ptr [ebp-50]
>0075CC8B    jg          0075CCEB
 0075CC8D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CC92    mov         eax,dword ptr [eax+40]
 0075CC95    movzx       edx,byte ptr ds:[75CF94];0x0 gvar_0075CF94
 0075CC9C    call        TFont.SetStyle
 0075CCA1    mov         eax,dword ptr [ebp-0C]
 0075CCA4    push        eax
 0075CCA5    mov         edx,dword ptr [ebp-0C]
 0075CCA8    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CCAD    call        TCustomCanvas.TextWidth
 0075CCB2    mov         edx,dword ptr [ebp-6C]
 0075CCB5    sub         edx,eax
>0075CCB7    jno         0075CCBE
 0075CCB9    call        @IntOver
 0075CCBE    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CCC4    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CCC9    mov         ebx,dword ptr [eax]
 0075CCCB    call        dword ptr [ebx+90]
 0075CCD1    mov         eax,dword ptr [ebp-10]
 0075CCD4    push        eax
 0075CCD5    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CCDB    mov         edx,dword ptr [ebp-6C]
 0075CCDE    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CCE3    mov         ebx,dword ptr [eax]
 0075CCE5    call        dword ptr [ebx+90]
 0075CCEB    mov         eax,1
 0075CCF0    call        00753BA0
 0075CCF5    lea         eax,[ebp-0C]
 0075CCF8    mov         edx,dword ptr ds:[7C3F08];^'Control groups: '
 0075CCFE    call        @UStrLAsg
 0075CD03    mov         eax,[009036DC];gvar_009036DC
 0075CD08    cmp         eax,dword ptr [ebp-4C]
>0075CD0B    jl          0075CD5B
 0075CD0D    mov         eax,[009036DC];gvar_009036DC
 0075CD12    cmp         eax,dword ptr [ebp-50]
>0075CD15    jg          0075CD5B
 0075CD17    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CD1C    mov         eax,dword ptr [eax+40]
 0075CD1F    movzx       edx,byte ptr ds:[75CF94];0x0 gvar_0075CF94
 0075CD26    call        TFont.SetStyle
 0075CD2B    mov         eax,dword ptr [ebp-0C]
 0075CD2E    push        eax
 0075CD2F    mov         edx,dword ptr [ebp-0C]
 0075CD32    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CD37    call        TCustomCanvas.TextWidth
 0075CD3C    mov         edx,dword ptr [ebp-6C]
 0075CD3F    sub         edx,eax
>0075CD41    jno         0075CD48
 0075CD43    call        @IntOver
 0075CD48    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CD4E    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CD53    mov         ebx,dword ptr [eax]
 0075CD55    call        dword ptr [ebx+90]
 0075CD5B    xor         ebx,ebx
 0075CD5D    mov         esi,1
 0075CD62    lea         eax,[ebp-10]
 0075CD65    mov         edx,75CFA4;' '
 0075CD6A    call        @UStrLAsg
 0075CD6F    lea         edx,[ebp-4]
 0075CD72    lea         eax,[ebp-150]
 0075CD78    call        006955F8
 0075CD7D    mov         eax,1
 0075CD82    add         eax,ebx
>0075CD84    jno         0075CD8B
 0075CD86    call        @IntOver
 0075CD8B    mov         ecx,eax
 0075CD8D    mov         edx,dword ptr [ebp-4]
 0075CD90    mov         eax,75CFB4;';'
 0075CD95    call        Pos
 0075CD9A    mov         ebx,eax
 0075CD9C    lea         eax,[ebp-1B0]
 0075CDA2    push        eax
 0075CDA3    mov         edi,ebx
 0075CDA5    sub         edi,esi
>0075CDA7    jno         0075CDAE
 0075CDA9    call        @IntOver
 0075CDAE    add         edi,1
>0075CDB1    jno         0075CDB8
 0075CDB3    call        @IntOver
 0075CDB8    mov         ecx,edi
 0075CDBA    mov         edx,esi
 0075CDBC    mov         eax,dword ptr [ebp-4]
 0075CDBF    call        00431F88
 0075CDC4    mov         ecx,dword ptr [ebp-1B0]
 0075CDCA    lea         eax,[ebp-1AC]
 0075CDD0    mov         edx,dword ptr [ebp-10]
 0075CDD3    call        @UStrCat3
 0075CDD8    mov         edx,dword ptr [ebp-1AC]
 0075CDDE    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CDE3    call        TCustomCanvas.TextWidth
 0075CDE8    mov         edx,dword ptr [ebp-90]
 0075CDEE    sub         edx,dword ptr [ebp-6C]
>0075CDF1    jno         0075CDF8
 0075CDF3    call        @IntOver
 0075CDF8    cmp         eax,edx
>0075CDFA    jge         0075CE2D
 0075CDFC    lea         eax,[ebp-1B4]
 0075CE02    push        eax
 0075CE03    mov         ecx,edi
 0075CE05    mov         edx,esi
 0075CE07    mov         eax,dword ptr [ebp-4]
 0075CE0A    call        00431F88
 0075CE0F    mov         edx,dword ptr [ebp-1B4]
 0075CE15    lea         eax,[ebp-10]
 0075CE18    call        @UStrCat
 0075CE1D    mov         esi,1
 0075CE22    add         esi,ebx
>0075CE24    jno         0075CE8D
 0075CE26    call        @IntOver
>0075CE2B    jmp         0075CE8D
 0075CE2D    mov         eax,[009036DC];gvar_009036DC
 0075CE32    cmp         eax,dword ptr [ebp-4C]
>0075CE35    jl          0075CE6F
 0075CE37    mov         eax,[009036DC];gvar_009036DC
 0075CE3C    cmp         eax,dword ptr [ebp-50]
>0075CE3F    jg          0075CE6F
 0075CE41    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CE46    mov         eax,dword ptr [eax+40]
 0075CE49    movzx       edx,byte ptr ds:[75CF94];0x0 gvar_0075CF94
 0075CE50    call        TFont.SetStyle
 0075CE55    mov         eax,dword ptr [ebp-10]
 0075CE58    push        eax
 0075CE59    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CE5F    mov         edx,dword ptr [ebp-6C]
 0075CE62    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CE67    mov         ebx,dword ptr [eax]
 0075CE69    call        dword ptr [ebx+90]
 0075CE6F    mov         ebx,esi
 0075CE71    sub         ebx,1
>0075CE74    jno         0075CE7B
 0075CE76    call        @IntOver
 0075CE7B    mov         eax,1
 0075CE80    call        00753BA0
 0075CE85    lea         eax,[ebp-10]
 0075CE88    call        @UStrClr
 0075CE8D    test        ebx,ebx
>0075CE8F    jne         0075CED3
 0075CE91    mov         eax,[009036DC];gvar_009036DC
 0075CE96    cmp         eax,dword ptr [ebp-4C]
>0075CE99    jl          0075CED3
 0075CE9B    mov         eax,[009036DC];gvar_009036DC
 0075CEA0    cmp         eax,dword ptr [ebp-50]
>0075CEA3    jg          0075CED3
 0075CEA5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CEAA    mov         eax,dword ptr [eax+40]
 0075CEAD    movzx       edx,byte ptr ds:[75CF94];0x0 gvar_0075CF94
 0075CEB4    call        TFont.SetStyle
 0075CEB9    mov         eax,dword ptr [ebp-10]
 0075CEBC    push        eax
 0075CEBD    mov         ecx,dword ptr ds:[903734];gvar_00903734
 0075CEC3    mov         edx,dword ptr [ebp-6C]
 0075CEC6    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075CECB    mov         edi,dword ptr [eax]
 0075CECD    call        dword ptr [edi+90]
 0075CED3    test        ebx,ebx
>0075CED5    jne         0075CD7D
 0075CEDB    mov         eax,3
 0075CEE0    call        00753BA0
 0075CEE5    inc         dword ptr [ebp-9C]
 0075CEEB    cmp         dword ptr [ebp-9C],11
>0075CEF2    jne         0075C601
 0075CEF8    inc         dword ptr [ebp-98]
 0075CEFE    cmp         dword ptr [ebp-98],1
>0075CF05    jne         0075C5F7
 0075CF0B    xor         eax,eax
 0075CF0D    pop         edx
 0075CF0E    pop         ecx
 0075CF0F    pop         ecx
 0075CF10    mov         dword ptr fs:[eax],edx
 0075CF13    push        75CF3D
 0075CF18    lea         eax,[ebp-1B4]
 0075CF1E    mov         edx,0B
 0075CF23    call        @UStrArrayClr
 0075CF28    lea         eax,[ebp-44]
 0075CF2B    mov         edx,11
 0075CF30    call        @UStrArrayClr
 0075CF35    ret
>0075CF36    jmp         @HandleFinally
>0075CF3B    jmp         0075CF18
 0075CF3D    pop         edi
 0075CF3E    pop         esi
 0075CF3F    pop         ebx
 0075CF40    mov         esp,ebp
 0075CF42    pop         ebp
 0075CF43    ret         4
end;*}

//0075CFB8
procedure TPreviewPanel.Paint;
begin
{*
 0075CFB8    push        ebp
 0075CFB9    mov         ebp,esp
 0075CFBB    mov         ecx,9
 0075CFC0    push        0
 0075CFC2    push        0
 0075CFC4    dec         ecx
>0075CFC5    jne         0075CFC0
 0075CFC7    push        ebx
 0075CFC8    push        esi
 0075CFC9    push        edi
 0075CFCA    mov         ebx,eax
 0075CFCC    mov         esi,903740;gvar_00903740:Integer
 0075CFD1    xor         eax,eax
 0075CFD3    push        ebp
 0075CFD4    push        75D521
 0075CFD9    push        dword ptr fs:[eax]
 0075CFDC    mov         dword ptr fs:[eax],esp
 0075CFDF    cmp         byte ptr ds:[9036D4],0;gvar_009036D4
>0075CFE6    jne         0075D4DF
 0075CFEC    mov         eax,ebx
 0075CFEE    call        TPreviewPanel.AlignCenter
 0075CFF3    mov         eax,dword ptr [ebx+290];TPreviewPanel.FCanvas:TCanvas
 0075CFF9    mov         [009036CC],eax;gvar_009036CC:TCanvas
 0075CFFE    mov         eax,[007C4E78];^Screen:TScreen
 0075D003    mov         eax,dword ptr [eax]
 0075D005    mov         eax,dword ptr [eax+50];TScreen.FPixelsPerInch:Integer
 0075D008    mov         dword ptr [esi],eax
 0075D00A    call        007529D0
 0075D00F    mov         [0090373C],eax;gvar_0090373C
 0075D014    mov         eax,[0090373C];gvar_0090373C
 0075D019    push        eax
 0075D01A    mov         eax,dword ptr [esi]
 0075D01C    push        eax
 0075D01D    call        Printer
 0075D022    call        TPrinter.GetPageWidth
 0075D027    push        eax
 0075D028    call        kernel32.MulDiv
 0075D02D    mov         [00903708],eax;gvar_00903708:Integer
 0075D032    push        64
 0075D034    mov         eax,[00903754];gvar_00903754
 0075D039    push        eax
 0075D03A    mov         eax,[00903708];gvar_00903708:Integer
 0075D03F    push        eax
 0075D040    call        kernel32.MulDiv
 0075D045    mov         [00903708],eax;gvar_00903708:Integer
 0075D04A    call        Printer
 0075D04F    call        TPrinter.GetCanvas
 0075D054    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0075D057    mov         edx,8
 0075D05C    call        TFont.SetSize
 0075D061    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075D066    mov         eax,dword ptr [eax+40]
 0075D069    mov         edx,8
 0075D06E    call        TFont.SetSize
 0075D073    call        Printer
 0075D078    call        TPrinter.GetCanvas
 0075D07D    mov         edx,75D53C;'X'
 0075D082    call        TCustomCanvas.TextHeight
 0075D087    push        eax
 0075D088    call        Printer
 0075D08D    call        TPrinter.GetPageHeight
 0075D092    pop         edx
 0075D093    mov         ecx,edx
 0075D095    cdq
 0075D096    idiv        eax,ecx
 0075D098    mov         edi,eax
 0075D09A    mov         edx,75D53C;'X'
 0075D09F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075D0A4    call        TCustomCanvas.TextHeight
 0075D0A9    imul        edi
>0075D0AB    jno         0075D0B2
 0075D0AD    call        @IntOver
 0075D0B2    mov         [0090370C],eax;gvar_0090370C:Integer
 0075D0B7    push        64
 0075D0B9    mov         eax,[00903754];gvar_00903754
 0075D0BE    push        eax
 0075D0BF    mov         eax,[0090370C];gvar_0090370C:Integer
 0075D0C4    push        eax
 0075D0C5    call        kernel32.MulDiv
 0075D0CA    mov         [0090370C],eax;gvar_0090370C:Integer
 0075D0CF    mov         eax,[00903708];gvar_00903708:Integer
 0075D0D4    sar         eax,1
>0075D0D6    jns         0075D0DB
 0075D0D8    adc         eax,0
 0075D0DB    mov         [00903710],eax;gvar_00903710
 0075D0E0    mov         edx,dword ptr [esi]
 0075D0E2    mov         eax,[009036E4];gvar_009036E4
 0075D0E7    call        007537B0
 0075D0EC    mov         [00903714],eax;gvar_00903714
 0075D0F1    mov         edx,dword ptr [esi]
 0075D0F3    mov         eax,[009036EC];gvar_009036EC
 0075D0F8    call        007537B0
 0075D0FD    mov         [00903718],eax;gvar_00903718
 0075D102    mov         edx,dword ptr [esi]
 0075D104    mov         eax,[009036E8];gvar_009036E8
 0075D109    call        007537B0
 0075D10E    mov         edx,dword ptr ds:[903708];gvar_00903708:Integer
 0075D114    sub         edx,eax
>0075D116    jno         0075D11D
 0075D118    call        @IntOver
 0075D11D    mov         dword ptr ds:[90371C],edx;gvar_0090371C
 0075D123    mov         edx,dword ptr [esi]
 0075D125    mov         eax,[009036F0];gvar_009036F0
 0075D12A    call        007537B0
 0075D12F    mov         edx,dword ptr ds:[90370C];gvar_0090370C:Integer
 0075D135    sub         edx,eax
>0075D137    jno         0075D13E
 0075D139    call        @IntOver
 0075D13E    mov         dword ptr ds:[903720],edx;gvar_00903720
 0075D144    mov         eax,[00903718];gvar_00903718
 0075D149    mov         [00903724],eax;gvar_00903724
 0075D14E    mov         edx,dword ptr [esi]
 0075D150    mov         eax,[009036F0];gvar_009036F0
 0075D155    call        007537B0
 0075D15A    mov         edi,dword ptr ds:[90370C];gvar_0090370C:Integer
 0075D160    sub         edi,eax
>0075D162    jno         0075D169
 0075D164    call        @IntOver
 0075D169    mov         edx,dword ptr [esi]
 0075D16B    mov         eax,[009036F8];gvar_009036F8
 0075D170    call        007537B0
 0075D175    sub         edi,eax
>0075D177    jno         0075D17E
 0075D179    call        @IntOver
 0075D17E    mov         dword ptr ds:[903728],edi;gvar_00903728
 0075D184    mov         edx,dword ptr [esi]
 0075D186    mov         eax,[009036EC];gvar_009036EC
 0075D18B    call        007537B0
 0075D190    mov         edi,eax
 0075D192    mov         edx,dword ptr [esi]
 0075D194    mov         eax,[009036F4];gvar_009036F4
 0075D199    call        007537B0
 0075D19E    add         edi,eax
>0075D1A0    jno         0075D1A7
 0075D1A2    call        @IntOver
 0075D1A7    mov         dword ptr ds:[90372C],edi;gvar_0090372C
 0075D1AD    mov         edx,dword ptr [esi]
 0075D1AF    mov         eax,[009036FC];gvar_009036FC
 0075D1B4    call        007537B0
 0075D1B9    mov         [00903744],eax;gvar_00903744
 0075D1BE    mov         edx,dword ptr [esi]
 0075D1C0    mov         eax,[00903700];gvar_00903700
 0075D1C5    call        007537B0
 0075D1CA    mov         [00903748],eax;gvar_00903748
 0075D1CF    mov         edx,dword ptr [esi]
 0075D1D1    mov         eax,[00903704];gvar_00903704
 0075D1D6    call        007537B0
 0075D1DB    mov         [0090374C],eax;gvar_0090374C
 0075D1E0    mov         edx,75D53C;'X'
 0075D1E5    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075D1EA    call        TCustomCanvas.TextHeight
 0075D1EF    mov         [0090375C],eax;gvar_0090375C:Integer
 0075D1F4    mov         edx,dword ptr ds:[903708];gvar_00903708:Integer
 0075D1FA    mov         eax,ebx
 0075D1FC    call        TControl.SetWidth
 0075D201    mov         edx,dword ptr ds:[90370C];gvar_0090370C:Integer
 0075D207    mov         eax,ebx
 0075D209    call        TControl.SetHeight
 0075D20E    xor         eax,eax
 0075D210    mov         dword ptr [ebp-10],eax
 0075D213    xor         eax,eax
 0075D215    mov         dword ptr [ebp-0C],eax
 0075D218    mov         eax,[00903708];gvar_00903708:Integer
 0075D21D    mov         dword ptr [ebp-8],eax
 0075D220    mov         eax,[0090370C];gvar_0090370C:Integer
 0075D225    mov         dword ptr [ebp-4],eax
 0075D228    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075D22D    mov         eax,dword ptr [eax+48]
 0075D230    mov         edx,0FFFFFF
 0075D235    call        TBrush.SetColor
 0075D23A    lea         edx,[ebp-10]
 0075D23D    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075D242    mov         ecx,dword ptr [eax]
 0075D244    call        dword ptr [ecx+54]
 0075D247    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075D24C    mov         eax,dword ptr [eax+48]
 0075D24F    xor         edx,edx
 0075D251    call        TBrush.SetColor
 0075D256    lea         edx,[ebp-10]
 0075D259    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075D25E    mov         ecx,dword ptr [eax]
 0075D260    call        dword ptr [ecx+5C]
 0075D263    mov         dword ptr ds:[903750],1;gvar_00903750
 0075D26D    movzx       eax,byte ptr ds:[903760];gvar_00903760
 0075D274    sub         al,1
>0075D276    jb          0075D283
>0075D278    je          0075D32E
>0075D27E    jmp         0075D4DF
 0075D283    mov         ecx,dword ptr [esi]
 0075D285    mov         edx,dword ptr ds:[9036D8];gvar_009036D8
 0075D28B    mov         eax,[009036D8];gvar_009036D8
 0075D290    call        00754690
 0075D295    push        75D54C;'Page '
 0075D29A    lea         edx,[ebp-18]
 0075D29D    mov         eax,[009036D8];gvar_009036D8
 0075D2A2    call        IntToStr
 0075D2A7    push        dword ptr [ebp-18]
 0075D2AA    push        75D564;'('
 0075D2AF    lea         edx,[ebp-1C]
 0075D2B2    mov         eax,[009036E0];gvar_009036E0
 0075D2B7    call        IntToStr
 0075D2BC    push        dword ptr [ebp-1C]
 0075D2BF    push        75D574;')'
 0075D2C4    lea         eax,[ebp-14]
 0075D2C7    mov         edx,5
 0075D2CC    call        @UStrCatN
 0075D2D1    mov         ecx,dword ptr [ebp-14]
 0075D2D4    mov         edx,75D584;'System FX3Net Configuration'
 0075D2D9    mov         eax,75D5C8;'Schneider Electric'
 0075D2DE    call        007537D8
 0075D2E3    lea         eax,[ebp-28]
 0075D2E6    push        eax
 0075D2E7    lea         edx,[ebp-2C]
 0075D2EA    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 0075D2EF    mov         eax,dword ptr [eax]
 0075D2F1    call        0066B3F4
 0075D2F6    mov         eax,dword ptr [ebp-2C]
 0075D2F9    mov         cl,20
 0075D2FB    mov         dl,2C
 0075D2FD    call        005DDB14
 0075D302    mov         edx,dword ptr [ebp-28]
 0075D305    lea         eax,[ebp-24]
 0075D308    call        @UStrFromLStr
 0075D30D    mov         ecx,dword ptr [ebp-24]
 0075D310    lea         eax,[ebp-20]
 0075D313    mov         edx,75D5FC;'Licensee: '
 0075D318    call        @UStrCat3
 0075D31D    mov         edx,dword ptr [ebp-20]
 0075D320    xor         ecx,ecx
 0075D322    xor         eax,eax
 0075D324    call        007539BC
>0075D329    jmp         0075D4DF
 0075D32E    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075D333    mov         eax,dword ptr [eax]
 0075D335    mov         eax,dword ptr [eax+8]
 0075D338    mov         [00903764],eax;gvar_00903764
 0075D33D    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075D342    mov         eax,dword ptr [eax]
 0075D344    mov         eax,dword ptr [eax+0C]
 0075D347    mov         [00903768],eax;gvar_00903768
 0075D34C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075D351    mov         eax,dword ptr [eax]
 0075D353    mov         eax,dword ptr [eax+10]
 0075D356    mov         [0090376C],eax;gvar_0090376C
 0075D35B    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075D360    mov         eax,dword ptr [eax]
 0075D362    mov         eax,dword ptr [eax+14]
 0075D365    mov         [00903770],eax;gvar_00903770
 0075D36A    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075D36F    mov         eax,dword ptr [eax]
 0075D371    mov         eax,dword ptr [eax+18]
 0075D374    mov         [00903774],eax;gvar_00903774
 0075D379    mov         ecx,dword ptr [esi]
 0075D37B    mov         edx,dword ptr ds:[9036D8];gvar_009036D8
 0075D381    mov         eax,[009036D8];gvar_009036D8
 0075D386    call        0075473C
 0075D38B    mov         eax,[00903768];gvar_00903768
 0075D390    call        006A344C
 0075D395    movzx       edi,al
 0075D398    sub         edi,1
>0075D39B    jno         0075D3A2
 0075D39D    call        @IntOver
 0075D3A2    test        edi,edi
>0075D3A4    jl          0075D44B
 0075D3AA    inc         edi
 0075D3AB    xor         ebx,ebx
 0075D3AD    mov         edx,ebx
 0075D3AF    mov         eax,[00903768];gvar_00903768
 0075D3B4    call        TFXPPD.GetControllerLoopType
 0075D3B9    cmp         eax,6
>0075D3BC    ja          0075D443
 0075D3C2    jmp         dword ptr [eax*4+75D3C9]
 0075D3C2    dd          0075D443
 0075D3C2    dd          0075D415
 0075D3C2    dd          0075D42D
 0075D3C2    dd          0075D3E5
 0075D3C2    dd          0075D3FD
 0075D3C2    dd          0075D3E5
 0075D3C2    dd          0075D3FD
 0075D3E5    mov         eax,dword ptr [esi]
 0075D3E7    push        eax
 0075D3E8    mov         ecx,dword ptr ds:[9036D8];gvar_009036D8
 0075D3EE    mov         edx,dword ptr ds:[9036D8];gvar_009036D8
 0075D3F4    mov         eax,ebx
 0075D3F6    call        00759218
>0075D3FB    jmp         0075D443
 0075D3FD    mov         eax,dword ptr [esi]
 0075D3FF    push        eax
 0075D400    mov         ecx,dword ptr ds:[9036D8];gvar_009036D8
 0075D406    mov         edx,dword ptr ds:[9036D8];gvar_009036D8
 0075D40C    mov         eax,ebx
 0075D40E    call        0075A188
>0075D413    jmp         0075D443
 0075D415    mov         eax,dword ptr [esi]
 0075D417    push        eax
 0075D418    mov         ecx,dword ptr ds:[9036D8];gvar_009036D8
 0075D41E    mov         edx,dword ptr ds:[9036D8];gvar_009036D8
 0075D424    mov         eax,ebx
 0075D426    call        0075B198
>0075D42B    jmp         0075D443
 0075D42D    mov         eax,dword ptr [esi]
 0075D42F    push        eax
 0075D430    mov         ecx,dword ptr ds:[9036D8];gvar_009036D8
 0075D436    mov         edx,dword ptr ds:[9036D8];gvar_009036D8
 0075D43C    mov         eax,ebx
 0075D43E    call        0075C070
 0075D443    inc         ebx
 0075D444    dec         edi
>0075D445    jne         0075D3AD
 0075D44B    push        75D54C;'Page '
 0075D450    lea         edx,[ebp-34]
 0075D453    mov         eax,[009036D8];gvar_009036D8
 0075D458    call        IntToStr
 0075D45D    push        dword ptr [ebp-34]
 0075D460    push        75D564;'('
 0075D465    lea         edx,[ebp-38]
 0075D468    mov         eax,[009036E0];gvar_009036E0
 0075D46D    call        IntToStr
 0075D472    push        dword ptr [ebp-38]
 0075D475    push        75D574;')'
 0075D47A    lea         eax,[ebp-30]
 0075D47D    mov         edx,5
 0075D482    call        @UStrCatN
 0075D487    mov         ecx,dword ptr [ebp-30]
 0075D48A    mov         edx,75D584;'System FX3Net Configuration'
 0075D48F    mov         eax,75D5C8;'Schneider Electric'
 0075D494    call        007537D8
 0075D499    lea         eax,[ebp-44]
 0075D49C    push        eax
 0075D49D    lea         edx,[ebp-48]
 0075D4A0    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 0075D4A5    mov         eax,dword ptr [eax]
 0075D4A7    call        0066B3F4
 0075D4AC    mov         eax,dword ptr [ebp-48]
 0075D4AF    mov         cl,20
 0075D4B1    mov         dl,2C
 0075D4B3    call        005DDB14
 0075D4B8    mov         edx,dword ptr [ebp-44]
 0075D4BB    lea         eax,[ebp-40]
 0075D4BE    call        @UStrFromLStr
 0075D4C3    mov         ecx,dword ptr [ebp-40]
 0075D4C6    lea         eax,[ebp-3C]
 0075D4C9    mov         edx,75D5FC;'Licensee: '
 0075D4CE    call        @UStrCat3
 0075D4D3    mov         edx,dword ptr [ebp-3C]
 0075D4D6    xor         ecx,ecx
 0075D4D8    xor         eax,eax
 0075D4DA    call        007539BC
 0075D4DF    xor         eax,eax
 0075D4E1    pop         edx
 0075D4E2    pop         ecx
 0075D4E3    pop         ecx
 0075D4E4    mov         dword ptr fs:[eax],edx
 0075D4E7    push        75D528
 0075D4EC    lea         eax,[ebp-48]
 0075D4EF    mov         edx,2
 0075D4F4    call        @LStrArrayClr
 0075D4F9    lea         eax,[ebp-40]
 0075D4FC    mov         edx,5
 0075D501    call        @UStrArrayClr
 0075D506    lea         eax,[ebp-2C]
 0075D509    mov         edx,2
 0075D50E    call        @LStrArrayClr
 0075D513    lea         eax,[ebp-24]
 0075D516    mov         edx,5
 0075D51B    call        @UStrArrayClr
 0075D520    ret
>0075D521    jmp         @HandleFinally
>0075D526    jmp         0075D4EC
 0075D528    pop         edi
 0075D529    pop         esi
 0075D52A    pop         ebx
 0075D52B    mov         esp,ebp
 0075D52D    pop         ebp
 0075D52E    ret
*}
end;

//0075D614
procedure TPreviewForm.btnPrintClick(Sender:TObject);
begin
{*
 0075D614    push        ebp
 0075D615    mov         ebp,esp
 0075D617    mov         ecx,8
 0075D61C    push        0
 0075D61E    push        0
 0075D620    dec         ecx
>0075D621    jne         0075D61C
 0075D623    push        ecx
 0075D624    push        ebx
 0075D625    push        esi
 0075D626    push        edi
 0075D627    mov         dword ptr [ebp-4],eax
 0075D62A    xor         eax,eax
 0075D62C    push        ebp
 0075D62D    push        75DAF4
 0075D632    push        dword ptr fs:[eax]
 0075D635    mov         dword ptr fs:[eax],esp
 0075D638    call        Printer
 0075D63D    call        TPrinter.GetPrinters
 0075D642    mov         edx,dword ptr [eax]
 0075D644    call        dword ptr [edx+14];TStrings.GetCount
 0075D647    test        eax,eax
>0075D649    jne         0075D65A
 0075D64B    mov         eax,75DB10;'No printers installed'
 0075D650    call        ShowMessage
>0075D655    jmp         0075DAB2
 0075D65A    xor         ecx,ecx
 0075D65C    mov         dl,1
 0075D65E    mov         eax,[00553DE8];TPrintDialog
 0075D663    call        TCommonDialog.Create;TPrintDialog.Create
 0075D668    mov         dword ptr [ebp-8],eax
 0075D66B    mov         eax,dword ptr [ebp-8]
 0075D66E    movzx       edx,byte ptr ds:[75DB3C];0x19 gvar_0075DB3C
 0075D675    mov         byte ptr [eax+81],dl;TPrintDialog.FOptions:TPrintDialogOptions
 0075D67B    mov         eax,dword ptr [ebp-4]
 0075D67E    mov         ebx,dword ptr [eax+3C4];TPreviewForm.PrintDialog1:TPrintDialog
 0075D684    mov         dword ptr [ebx+84],1;TPrintDialog.FMinPage:Integer
 0075D68E    mov         eax,[009036E0];gvar_009036E0
 0075D693    mov         dword ptr [ebx+88],eax;TPrintDialog.FMaxPage:Integer
 0075D699    mov         dword ptr [ebx+78],1;TPrintDialog.FFromPage:Integer
 0075D6A0    mov         eax,[009036E0];gvar_009036E0
 0075D6A5    mov         dword ptr [ebx+7C],eax;TPrintDialog.FToPage:Integer
 0075D6A8    mov         eax,ebx
 0075D6AA    mov         edx,dword ptr [eax]
 0075D6AC    call        dword ptr [edx+54];TCommonDialog.Execute
 0075D6AF    test        al,al
>0075D6B1    je          0075DAB2
 0075D6B7    mov         byte ptr ds:[9036D4],1;gvar_009036D4
 0075D6BE    call        Printer
 0075D6C3    call        TPrinter.GetCanvas
 0075D6C8    mov         [009036CC],eax;gvar_009036CC:TCanvas
 0075D6CD    mov         dword ptr ds:[903754],64;gvar_00903754
 0075D6D7    mov         eax,[007C4E78];^Screen:TScreen
 0075D6DC    mov         eax,dword ptr [eax]
 0075D6DE    mov         eax,dword ptr [eax+50];TScreen.FPixelsPerInch:Integer
 0075D6E1    mov         [00903740],eax;gvar_00903740:Integer
 0075D6E6    call        007529D0
 0075D6EB    mov         [0090373C],eax;gvar_0090373C
 0075D6F0    call        Printer
 0075D6F5    call        TPrinter.GetPageWidth
 0075D6FA    mov         [00903708],eax;gvar_00903708:Integer
 0075D6FF    call        Printer
 0075D704    call        TPrinter.GetPageHeight
 0075D709    mov         [0090370C],eax;gvar_0090370C:Integer
 0075D70E    mov         eax,[00903708];gvar_00903708:Integer
 0075D713    sar         eax,1
>0075D715    jns         0075D71A
 0075D717    adc         eax,0
 0075D71A    mov         [00903710],eax;gvar_00903710
 0075D71F    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D725    mov         eax,[009036E4];gvar_009036E4
 0075D72A    call        007537B0
 0075D72F    mov         [00903714],eax;gvar_00903714
 0075D734    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D73A    mov         eax,[009036EC];gvar_009036EC
 0075D73F    call        007537B0
 0075D744    mov         [00903718],eax;gvar_00903718
 0075D749    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D74F    mov         eax,[009036E8];gvar_009036E8
 0075D754    call        007537B0
 0075D759    mov         edx,dword ptr ds:[903708];gvar_00903708:Integer
 0075D75F    sub         edx,eax
>0075D761    jno         0075D768
 0075D763    call        @IntOver
 0075D768    mov         dword ptr ds:[90371C],edx;gvar_0090371C
 0075D76E    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D774    mov         eax,[009036F0];gvar_009036F0
 0075D779    call        007537B0
 0075D77E    mov         edx,dword ptr ds:[90370C];gvar_0090370C:Integer
 0075D784    sub         edx,eax
>0075D786    jno         0075D78D
 0075D788    call        @IntOver
 0075D78D    mov         dword ptr ds:[903720],edx;gvar_00903720
 0075D793    mov         eax,[00903718];gvar_00903718
 0075D798    mov         [00903724],eax;gvar_00903724
 0075D79D    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D7A3    mov         eax,[009036F0];gvar_009036F0
 0075D7A8    call        007537B0
 0075D7AD    mov         ebx,dword ptr ds:[90370C];gvar_0090370C:Integer
 0075D7B3    sub         ebx,eax
>0075D7B5    jno         0075D7BC
 0075D7B7    call        @IntOver
 0075D7BC    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D7C2    mov         eax,[009036F8];gvar_009036F8
 0075D7C7    call        007537B0
 0075D7CC    sub         ebx,eax
>0075D7CE    jno         0075D7D5
 0075D7D0    call        @IntOver
 0075D7D5    mov         dword ptr ds:[903728],ebx;gvar_00903728
 0075D7DB    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D7E1    mov         eax,[009036EC];gvar_009036EC
 0075D7E6    call        007537B0
 0075D7EB    mov         ebx,eax
 0075D7ED    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D7F3    mov         eax,[009036F4];gvar_009036F4
 0075D7F8    call        007537B0
 0075D7FD    add         ebx,eax
>0075D7FF    jno         0075D806
 0075D801    call        @IntOver
 0075D806    mov         dword ptr ds:[90372C],ebx;gvar_0090372C
 0075D80C    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D812    mov         eax,[009036FC];gvar_009036FC
 0075D817    call        007537B0
 0075D81C    mov         [00903744],eax;gvar_00903744
 0075D821    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D827    mov         eax,[00903700];gvar_00903700
 0075D82C    call        007537B0
 0075D831    mov         [00903748],eax;gvar_00903748
 0075D836    mov         edx,dword ptr ds:[90373C];gvar_0090373C
 0075D83C    mov         eax,[00903704];gvar_00903704
 0075D841    call        007537B0
 0075D846    mov         [0090374C],eax;gvar_0090374C
 0075D84B    mov         dword ptr ds:[903750],1;gvar_00903750
 0075D855    call        Printer
 0075D85A    call        TPrinter.BeginDoc
 0075D85F    mov         eax,dword ptr [ebp-4]
 0075D862    mov         eax,dword ptr [eax+3C4];TPreviewForm.PrintDialog1:TPrintDialog
 0075D868    mov         ebx,dword ptr [eax+78];TPrintDialog.FFromPage:Integer
 0075D86B    mov         eax,dword ptr [eax+7C];TPrintDialog.FToPage:Integer
 0075D86E    sub         eax,ebx
>0075D870    jl          0075DA99
 0075D876    inc         eax
 0075D877    mov         dword ptr [ebp-0C],eax
 0075D87A    cmp         byte ptr ds:[903760],0;gvar_00903760
>0075D881    jne         0075D92F
 0075D887    mov         ecx,dword ptr ds:[90373C];gvar_0090373C
 0075D88D    mov         edx,ebx
 0075D88F    mov         eax,ebx
 0075D891    call        00754690
 0075D896    push        75DB4C;'Page '
 0075D89B    lea         edx,[ebp-14]
 0075D89E    mov         eax,[009036D8];gvar_009036D8
 0075D8A3    call        IntToStr
 0075D8A8    push        dword ptr [ebp-14]
 0075D8AB    push        75DB64;'('
 0075D8B0    lea         edx,[ebp-18]
 0075D8B3    mov         eax,[009036E0];gvar_009036E0
 0075D8B8    call        IntToStr
 0075D8BD    push        dword ptr [ebp-18]
 0075D8C0    push        75DB74;')'
 0075D8C5    lea         eax,[ebp-10]
 0075D8C8    mov         edx,5
 0075D8CD    call        @UStrCatN
 0075D8D2    mov         ecx,dword ptr [ebp-10]
 0075D8D5    mov         edx,75DB84;'System FX3Net Configuration'
 0075D8DA    mov         eax,75DBC8;'Schneider Electric'
 0075D8DF    call        007537D8
 0075D8E4    lea         eax,[ebp-24]
 0075D8E7    push        eax
 0075D8E8    lea         edx,[ebp-28]
 0075D8EB    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 0075D8F0    mov         eax,dword ptr [eax]
 0075D8F2    call        0066B3F4
 0075D8F7    mov         eax,dword ptr [ebp-28]
 0075D8FA    mov         cl,20
 0075D8FC    mov         dl,2C
 0075D8FE    call        005DDB14
 0075D903    mov         edx,dword ptr [ebp-24]
 0075D906    lea         eax,[ebp-20]
 0075D909    call        @UStrFromLStr
 0075D90E    mov         ecx,dword ptr [ebp-20]
 0075D911    lea         eax,[ebp-1C]
 0075D914    mov         edx,75DBFC;'Licensee: '
 0075D919    call        @UStrCat3
 0075D91E    mov         edx,dword ptr [ebp-1C]
 0075D921    xor         ecx,ecx
 0075D923    xor         eax,eax
 0075D925    call        007539BC
>0075D92A    jmp         0075DA8F
 0075D92F    mov         ecx,dword ptr ds:[90373C];gvar_0090373C
 0075D935    mov         edx,ebx
 0075D937    mov         eax,ebx
 0075D939    call        0075473C
 0075D93E    mov         eax,[00903768];gvar_00903768
 0075D943    call        006A344C
 0075D948    movzx       edi,al
 0075D94B    sub         edi,1
>0075D94E    jno         0075D955
 0075D950    call        @IntOver
 0075D955    test        edi,edi
>0075D957    jl          0075D9E6
 0075D95D    inc         edi
 0075D95E    xor         esi,esi
 0075D960    mov         edx,esi
 0075D962    mov         eax,[00903768];gvar_00903768
 0075D967    call        TFXPPD.GetControllerLoopType
 0075D96C    cmp         eax,6
>0075D96F    ja          0075D9DE
 0075D971    jmp         dword ptr [eax*4+75D978]
 0075D971    dd          0075D9DE
 0075D971    dd          0075D9BA
 0075D971    dd          0075D9CD
 0075D971    dd          0075D994
 0075D971    dd          0075D9A7
 0075D971    dd          0075D994
 0075D971    dd          0075D9A7
 0075D994    mov         eax,[0090373C];gvar_0090373C
 0075D999    push        eax
 0075D99A    mov         ecx,ebx
 0075D99C    mov         edx,ebx
 0075D99E    mov         eax,esi
 0075D9A0    call        00759218
>0075D9A5    jmp         0075D9DE
 0075D9A7    mov         eax,[0090373C];gvar_0090373C
 0075D9AC    push        eax
 0075D9AD    mov         ecx,ebx
 0075D9AF    mov         edx,ebx
 0075D9B1    mov         eax,esi
 0075D9B3    call        0075A188
>0075D9B8    jmp         0075D9DE
 0075D9BA    mov         eax,[0090373C];gvar_0090373C
 0075D9BF    push        eax
 0075D9C0    mov         ecx,ebx
 0075D9C2    mov         edx,ebx
 0075D9C4    mov         eax,esi
 0075D9C6    call        0075B198
>0075D9CB    jmp         0075D9DE
 0075D9CD    mov         eax,[0090373C];gvar_0090373C
 0075D9D2    push        eax
 0075D9D3    mov         ecx,ebx
 0075D9D5    mov         edx,ebx
 0075D9D7    mov         eax,esi
 0075D9D9    call        0075C070
 0075D9DE    inc         esi
 0075D9DF    dec         edi
>0075D9E0    jne         0075D960
 0075D9E6    push        75DB4C;'Page '
 0075D9EB    lea         edx,[ebp-30]
 0075D9EE    mov         eax,ebx
 0075D9F0    call        IntToStr
 0075D9F5    push        dword ptr [ebp-30]
 0075D9F8    push        75DB64;'('
 0075D9FD    lea         edx,[ebp-34]
 0075DA00    mov         eax,[009036E0];gvar_009036E0
 0075DA05    call        IntToStr
 0075DA0A    push        dword ptr [ebp-34]
 0075DA0D    push        75DB74;')'
 0075DA12    lea         eax,[ebp-2C]
 0075DA15    mov         edx,5
 0075DA1A    call        @UStrCatN
 0075DA1F    mov         ecx,dword ptr [ebp-2C]
 0075DA22    mov         edx,75DB84;'System FX3Net Configuration'
 0075DA27    mov         eax,75DBC8;'Schneider Electric'
 0075DA2C    call        007537D8
 0075DA31    lea         eax,[ebp-40]
 0075DA34    push        eax
 0075DA35    lea         edx,[ebp-44]
 0075DA38    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 0075DA3D    mov         eax,dword ptr [eax]
 0075DA3F    call        0066B3F4
 0075DA44    mov         eax,dword ptr [ebp-44]
 0075DA47    mov         cl,20
 0075DA49    mov         dl,2C
 0075DA4B    call        005DDB14
 0075DA50    mov         edx,dword ptr [ebp-40]
 0075DA53    lea         eax,[ebp-3C]
 0075DA56    call        @UStrFromLStr
 0075DA5B    mov         ecx,dword ptr [ebp-3C]
 0075DA5E    lea         eax,[ebp-38]
 0075DA61    mov         edx,75DBFC;'Licensee: '
 0075DA66    call        @UStrCat3
 0075DA6B    mov         edx,dword ptr [ebp-38]
 0075DA6E    xor         ecx,ecx
 0075DA70    xor         eax,eax
 0075DA72    call        007539BC
 0075DA77    mov         eax,dword ptr [ebp-4]
 0075DA7A    mov         eax,dword ptr [eax+3C4];TPreviewForm.PrintDialog1:TPrintDialog
 0075DA80    cmp         ebx,dword ptr [eax+7C];TPrintDialog.FToPage:Integer
>0075DA83    jge         0075DA8F
 0075DA85    call        Printer
 0075DA8A    call        TPrinter.NewPage
 0075DA8F    inc         ebx
 0075DA90    dec         dword ptr [ebp-0C]
>0075DA93    jne         0075D87A
 0075DA99    call        Printer
 0075DA9E    call        TPrinter.EndDoc
 0075DAA3    mov         byte ptr ds:[9036D4],0;gvar_009036D4
 0075DAAA    mov         eax,dword ptr [ebp-8]
 0075DAAD    call        TObject.Free
 0075DAB2    xor         eax,eax
 0075DAB4    pop         edx
 0075DAB5    pop         ecx
 0075DAB6    pop         ecx
 0075DAB7    mov         dword ptr fs:[eax],edx
 0075DABA    push        75DAFB
 0075DABF    lea         eax,[ebp-44]
 0075DAC2    mov         edx,2
 0075DAC7    call        @LStrArrayClr
 0075DACC    lea         eax,[ebp-3C]
 0075DACF    mov         edx,5
 0075DAD4    call        @UStrArrayClr
 0075DAD9    lea         eax,[ebp-28]
 0075DADC    mov         edx,2
 0075DAE1    call        @LStrArrayClr
 0075DAE6    lea         eax,[ebp-20]
 0075DAE9    mov         edx,5
 0075DAEE    call        @UStrArrayClr
 0075DAF3    ret
>0075DAF4    jmp         @HandleFinally
>0075DAF9    jmp         0075DABF
 0075DAFB    pop         edi
 0075DAFC    pop         esi
 0075DAFD    pop         ebx
 0075DAFE    mov         esp,ebp
 0075DB00    pop         ebp
 0075DB01    ret
*}
end;

//0075DC14
procedure TPreviewForm.btnPreviousClick(Sender:TObject);
begin
{*
 0075DC14    push        ebx
 0075DC15    add         esp,0FFFFFFEC
 0075DC18    mov         ebx,eax
 0075DC1A    mov         eax,[009036D8];gvar_009036D8
 0075DC1F    sub         eax,1
>0075DC22    jno         0075DC29
 0075DC24    call        @IntOver
 0075DC29    mov         dword ptr [esp],eax
 0075DC2C    cmp         dword ptr [esp],1
>0075DC30    jge         0075DC39
 0075DC32    mov         eax,1
>0075DC37    jmp         0075DC3C
 0075DC39    mov         eax,dword ptr [esp]
 0075DC3C    mov         [009036D8],eax;gvar_009036D8
 0075DC41    xor         eax,eax
 0075DC43    mov         dword ptr [esp+4],eax
 0075DC47    xor         eax,eax
 0075DC49    mov         dword ptr [esp+8],eax
 0075DC4D    mov         eax,[00903708];gvar_00903708:Integer
 0075DC52    mov         dword ptr [esp+0C],eax
 0075DC56    mov         eax,[0090370C];gvar_0090370C:Integer
 0075DC5B    mov         dword ptr [esp+10],eax
 0075DC5F    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075DC64    mov         eax,dword ptr [eax+48]
 0075DC67    mov         edx,0FFFFFF
 0075DC6C    call        TBrush.SetColor
 0075DC71    lea         edx,[esp+4]
 0075DC75    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075DC7A    mov         ecx,dword ptr [eax]
 0075DC7C    call        dword ptr [ecx+54]
 0075DC7F    mov         eax,dword ptr [ebx+3DC];TPreviewForm.PreviewPanel:TPreviewPanel
 0075DC85    mov         edx,dword ptr [eax]
 0075DC87    call        dword ptr [edx+108];TPreviewPanel.Paint
 0075DC8D    add         esp,14
 0075DC90    pop         ebx
 0075DC91    ret
*}
end;

//0075DC94
procedure TPreviewForm.btnNextClick(Sender:TObject);
begin
{*
 0075DC94    push        ebx
 0075DC95    add         esp,0FFFFFFEC
 0075DC98    mov         ebx,eax
 0075DC9A    mov         eax,[009036D8];gvar_009036D8
 0075DC9F    add         eax,1
>0075DCA2    jno         0075DCA9
 0075DCA4    call        @IntOver
 0075DCA9    mov         dword ptr [esp],eax
 0075DCAC    mov         eax,[009036E0];gvar_009036E0
 0075DCB1    cmp         eax,dword ptr [esp]
>0075DCB4    jge         0075DCBD
 0075DCB6    mov         eax,[009036E0];gvar_009036E0
>0075DCBB    jmp         0075DCC0
 0075DCBD    mov         eax,dword ptr [esp]
 0075DCC0    mov         [009036D8],eax;gvar_009036D8
 0075DCC5    xor         eax,eax
 0075DCC7    mov         dword ptr [esp+4],eax
 0075DCCB    xor         eax,eax
 0075DCCD    mov         dword ptr [esp+8],eax
 0075DCD1    mov         eax,[00903708];gvar_00903708:Integer
 0075DCD6    mov         dword ptr [esp+0C],eax
 0075DCDA    mov         eax,[0090370C];gvar_0090370C:Integer
 0075DCDF    mov         dword ptr [esp+10],eax
 0075DCE3    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075DCE8    mov         eax,dword ptr [eax+48]
 0075DCEB    mov         edx,0FFFFFF
 0075DCF0    call        TBrush.SetColor
 0075DCF5    lea         edx,[esp+4]
 0075DCF9    mov         eax,[009036CC];gvar_009036CC:TCanvas
 0075DCFE    mov         ecx,dword ptr [eax]
 0075DD00    call        dword ptr [ecx+54]
 0075DD03    mov         eax,dword ptr [ebx+3DC];TPreviewForm.PreviewPanel:TPreviewPanel
 0075DD09    mov         edx,dword ptr [eax]
 0075DD0B    call        dword ptr [edx+108];TPreviewPanel.Paint
 0075DD11    add         esp,14
 0075DD14    pop         ebx
 0075DD15    ret
*}
end;

//0075DD18
procedure TPreviewForm.btnCloseClick(Sender:TObject);
begin
{*
 0075DD18    mov         dword ptr ds:[9036DC],1;gvar_009036DC
 0075DD22    mov         dword ptr ds:[9036D8],1;gvar_009036D8
 0075DD2C    call        TCustomForm.Close
 0075DD31    ret
*}
end;

//0075DD34
procedure TPreviewForm.FormResize(Sender:TObject);
begin
{*
 0075DD34    mov         eax,dword ptr [eax+3DC];TPreviewForm.PreviewPanel:TPreviewPanel
 0075DD3A    call        TPreviewPanel.AlignCenter
 0075DD3F    ret
*}
end;

//0075DD40
procedure TPreviewPanel.AlignCenter;
begin
{*
 0075DD40    push        ebx
 0075DD41    push        ecx
 0075DD42    mov         ebx,eax
 0075DD44    mov         eax,dword ptr [ebx+40];TPreviewPanel.FParent:TWinControl
 0075DD47    call        TControl.GetClientWidth
 0075DD4C    sar         eax,1
>0075DD4E    jns         0075DD53
 0075DD50    adc         eax,0
 0075DD53    mov         edx,dword ptr [ebx+58];TPreviewPanel.FWidth:Integer
 0075DD56    sar         edx,1
>0075DD58    jns         0075DD5D
 0075DD5A    adc         edx,0
 0075DD5D    sub         eax,edx
>0075DD5F    jno         0075DD66
 0075DD61    call        @IntOver
 0075DD66    mov         dword ptr [esp],eax
 0075DD69    cmp         dword ptr [esp],0
>0075DD6D    jge         0075DD73
 0075DD6F    xor         eax,eax
>0075DD71    jmp         0075DD76
 0075DD73    mov         eax,dword ptr [esp]
 0075DD76    mov         edx,eax
 0075DD78    mov         eax,ebx
 0075DD7A    call        TControl.SetLeft
 0075DD7F    pop         edx
 0075DD80    pop         ebx
 0075DD81    ret
*}
end;

//0075DD84
procedure TPreviewForm.FormClose(Sender:TObject; var Action:UITypes.TCloseAction);
begin
{*
 0075DD84    mov         eax,[007C4420];^gvar_007CA838
 0075DD89    mov         byte ptr [eax],0
 0075DD8C    ret
*}
end;

//0075DD90
procedure TPreviewForm.FormMouseWheel(Sender:TObject; Shift:Classes.TShiftState; WheelDelta:Integer; MousePos:Types.TPoint; var Handled:Boolean);
begin
{*
 0075DD90    push        ebp
 0075DD91    mov         ebp,esp
 0075DD93    add         esp,0FFFFFFF8
 0075DD96    push        esi
 0075DD97    push        edi
 0075DD98    mov         esi,dword ptr [ebp+0C]
 0075DD9B    lea         edi,[ebp-8]
 0075DD9E    movs        dword ptr [edi],dword ptr [esi]
 0075DD9F    movs        dword ptr [edi],dword ptr [esi]
 0075DDA0    mov         edx,dword ptr [eax+3C8];TPreviewForm.ScrollBox1:TScrollBox
 0075DDA6    mov         edx,dword ptr [edx+2A8];TScrollBox.FVertScrollBar:TControlScrollBar
 0075DDAC    mov         ecx,edx
 0075DDAE    mov         eax,dword ptr [edx+0C];TControlScrollBar.FPosition:Integer
 0075DDB1    sub         eax,dword ptr [ebp+10]
>0075DDB4    jno         0075DDBB
 0075DDB6    call        @IntOver
 0075DDBB    mov         edx,eax
 0075DDBD    mov         eax,ecx
 0075DDBF    call        TControlScrollBar.SetPosition
 0075DDC4    mov         eax,dword ptr [ebp+8]
 0075DDC7    mov         byte ptr [eax],1
 0075DDCA    pop         edi
 0075DDCB    pop         esi
 0075DDCC    pop         ecx
 0075DDCD    pop         ecx
 0075DDCE    pop         ebp
 0075DDCF    ret         0C
*}
end;

//0075DDD4
procedure TPreviewForm.ShowPreview(WhatToShow:Previews);
begin
{*
 0075DDD4    push        esi
 0075DDD5    mov         esi,eax
 0075DDD7    mov         byte ptr ds:[903760],dl;gvar_00903760
 0075DDDD    mov         eax,esi
 0075DDDF    mov         edx,dword ptr [eax]
 0075DDE1    call        dword ptr [edx+13C];TCustomForm.ShowModal
 0075DDE7    pop         esi
 0075DDE8    ret
*}
end;

Initialization
Finalization
//0075DDEC
{*
 0075DDEC    push        ebp
 0075DDED    mov         ebp,esp
 0075DDEF    xor         eax,eax
 0075DDF1    push        ebp
 0075DDF2    push        75DF07
 0075DDF7    push        dword ptr fs:[eax]
 0075DDFA    mov         dword ptr fs:[eax],esp
 0075DDFD    inc         dword ptr ds:[9036D0]
>0075DE03    jne         0075DEF9
 0075DE09    mov         eax,7C3F04;^'Customer text: '
 0075DE0E    call        @UStrClr
 0075DE13    mov         eax,7C3F08;^'Control groups: '
 0075DE18    call        @UStrClr
 0075DE1D    mov         eax,7C3F0C;^'Address'
 0075DE22    call        @UStrClr
 0075DE27    mov         eax,7C3F10;^'D-Zone'
 0075DE2C    call        @UStrClr
 0075DE31    mov         eax,7C3F14;^'Ctrl A'
 0075DE36    call        @UStrClr
 0075DE3B    mov         eax,7C3F18;^'Ctrl B'
 0075DE40    call        @UStrClr
 0075DE45    mov         eax,7C3F1C;^'Type'
 0075DE4A    call        @UStrClr
 0075DE4F    mov         eax,7C3F20;^'Input funct.'
 0075DE54    call        @UStrClr
 0075DE59    mov         eax,7C3F24;^'Fire'
 0075DE5E    call        @UStrClr
 0075DE63    mov         eax,7C3F28;^'PreA'
 0075DE68    call        @UStrClr
 0075DE6D    mov         eax,7C3F2C;^'D-Fire'
 0075DE72    call        @UStrClr
 0075DE77    mov         eax,7C3F30;^'D-PreA'
 0075DE7C    call        @UStrClr
 0075DE81    mov         eax,7C3F34;^'Mode'
 0075DE86    call        @UStrClr
 0075DE8B    mov         eax,7C3F38;^'InDel.'
 0075DE90    call        @UStrClr
 0075DE95    mov         eax,7C3F3C;^'InFilt'
 0075DE9A    call        @UStrClr
 0075DE9F    mov         eax,7C3F40;^'DayM'
 0075DEA4    call        @UStrClr
 0075DEA9    mov         eax,7C3F44;^'ZDis'
 0075DEAE    call        @UStrClr
 0075DEB3    mov         eax,7C3F48;^'Output funct.'
 0075DEB8    call        @UStrClr
 0075DEBD    mov         eax,7C3F4C;^'EOL'
 0075DEC2    call        @UStrClr
 0075DEC7    mov         eax,7C3F50;^'NC'
 0075DECC    call        @UStrClr
 0075DED1    mov         eax,7C3F54;^'SC=A'
 0075DED6    call        @UStrClr
 0075DEDB    mov         eax,7C3F58;^'BM'
 0075DEE0    call        @UStrClr
 0075DEE5    mov         eax,7C3F5C;^'Exi'
 0075DEEA    call        @UStrClr
 0075DEEF    mov         eax,7C3F60;^'Ver.'
 0075DEF4    call        @UStrClr
 0075DEF9    xor         eax,eax
 0075DEFB    pop         edx
 0075DEFC    pop         ecx
 0075DEFD    pop         ecx
 0075DEFE    mov         dword ptr fs:[eax],edx
 0075DF01    push        75DF0E
 0075DF06    ret
>0075DF07    jmp         @HandleFinally
>0075DF0C    jmp         0075DF06
 0075DF0E    pop         ebp
 0075DF0F    ret
*}
end.