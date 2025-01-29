//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit113;

interface

uses
  SysUtils, Classes, Vcl.ExtCtrls, Vcl.StdActns, Vcl.ComCtrls, Vcl.StdCtrls, FXIniFiles, Vcl.Buttons, System.Generics.Collections, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus;

type
  TSelectVisibleDlg = class(TForm)
  published
    Panel1:TPanel;//f3C0
    lvVisPanels:TListView;//f3C4
    btnSelAll:TButton;//f3C8
    btnClrAll:TButton;//f3CC
    Label1:TLabel;//f3D0
    btnOK:TBitBtn;//f3D4
    btnCancel:TBitBtn;//f3D8
    procedure btnClrAllClick(Sender:TObject);//00735EFC
    procedure FormCreate(Sender:TObject);//00735C2C
    procedure Translate(IniFile:TFXIniFile);//00735658
    procedure FormShow(Sender:TObject);//00735D10
    procedure btnOKClick(Sender:TObject);//00735AFC
    procedure btnSelAllClick(Sender:TObject);//00735EB0
  public
    SelectedPanels:string;//f3DC
  end;
  TFXNetFrame = class(TFrame)
  published
    gbNetName:TGroupBox;//f2B0
    edNetName:TEdit;//f2B4
    btnOK:TBitBtn;//f2B8
    btnCancel:TBitBtn;//f2BC
    gbFXNetPanels:TGroupBox;//f2C0
    lbPanelID:TLabel;//f2C4
    lbPanelType:TLabel;//f2C8
    lbPanelName:TLabel;//f2CC
    edPanelID:TEdit;//f2D0
    udPanelID:TUpDown;//f2D4
    cbPanelType:TComboBox;//f2D8
    edPanelName:TEdit;//f2DC
    btnAdd:TButton;//f2E0
    btnModify:TButton;//f2E4
    btnDelete:TButton;//f2E8
    lvPanels:TListView;//f2EC
    PageControl1:TPageControl;//f2F0
    TabSheetPanels:TTabSheet;//f2F4
    TabSheetVisibility:TTabSheet;//f2F8
    TabSheetSummary:TTabSheet;//f2FC
    lvVisibles:TListView;//f300
    gbPanelSummary:TGroupBox;//f304
    gbLoopsAndZones:TGroupBox;//f308
    lvLoops:TListView;//f30C
    popMenu:TPopupMenu;//f310
    Select1:TMenuItem;//f314
    N1:TMenuItem;//f318
    Copy1:TMenuItem;//f31C
    Paste1:TMenuItem;//f320
    lbNumOfConnections:TLabel;//f324
    lbOverlappingZones:TLabel;//f328
    lbOverlappingLoops:TLabel;//f32C
    lbErrorInPanelId:TLabel;//f330
    rgSystemType:TRadioGroup;//f334
    procedure btnDeleteClick(Sender:TObject);//007382AC
    procedure btnModifyClick(Sender:TObject);//00738100
    procedure lvPanelsSelectItem(Sender:TObject; Item:TListItem; Selected:Boolean);//00738374
    procedure edNetNameChange(Sender:TObject);//00737EDC
    procedure Show;//00737548
    procedure Clear;//007392A4
    procedure btnAddClick(Sender:TObject);//00737EE4
    procedure Translate(IniFile:TFXIniFile);//00737158
    procedure Paste1Click(Sender:TObject);//00738E88
    procedure Copy1Click(Sender:TObject);//00738E0C
    procedure rgSystemTypeClick(Sender:TObject);//00738FF8
    procedure lvVisiblesKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);//00738FA0
    procedure btnCancelClick(Sender:TObject);//00737E78
    procedure btnOKClick(Sender:TObject);//0073786C
    procedure Select1Click(Sender:TObject);//00738BF4
    procedure PageControl1Change(Sender:TObject);//00738A50
  public
    FModified:Boolean;//f338
  end;
  TTmpPanData = TTmpPanData = record//size=38
f8:string;//f8
f10:string;//f10
f14:string;//f14
f1C:string;//f1C
f24:string;//f24
f2C:string;//f2C
f34:string;//f34
end;
bDef:Boolean;//f0
iID:Integer;//f4
sID:string;//f8
iType:Integer;//fC
sName:string;//f10
sVisibles:string;//f14
iFirstL:Integer;//f18
sFirstL:string;//f1C
iLastL:Integer;//f20
sLastL:string;//f24
iFirstZ:Integer;//f28
sFirstZ:string;//f2C
iLastZ:Integer;//f30
sLastZ:string;//f34
end;;
  :TTmpSysData.:1 = array [1..33] of TTmpPanData;
  TTmpSysData = TTmpSysData = record//size=73C
f0:string;//f0
f4::TTmpSysData.:1;//f4
end;
sNetName:string;//f0
Panels::TTmpSysData.:1;//f4
end;;
    procedure sub_00738220(?:TFXNetFrame; ?:Integer);//00738220
    procedure sub_0073844C(?:TFXNetFrame);//0073844C
    procedure sub_007384EC(?:TFXNetFrame);//007384EC
    procedure sub_0073860C(?:TFXNetFrame);//0073860C
    //function sub_00738A78(?:TFXNetFrame):?;//00738A78

implementation

{$R *.DFM}

//00735658
procedure TSelectVisibleDlg.Translate(IniFile:TFXIniFile);
begin
{*
 00735658    push        ebp
 00735659    mov         ebp,esp
 0073565B    mov         ecx,5
 00735660    push        0
 00735662    push        0
 00735664    dec         ecx
>00735665    jne         00735660
 00735667    push        ebx
 00735668    push        esi
 00735669    push        edi
 0073566A    mov         esi,edx
 0073566C    mov         ebx,eax
 0073566E    xor         eax,eax
 00735670    push        ebp
 00735671    push        735832
 00735676    push        dword ptr fs:[eax]
 00735679    mov         dword ptr fs:[eax],esp
 0073567C    push        73584C;'Select visible panels'
 00735681    lea         eax,[ebp-8]
 00735684    push        eax
 00735685    mov         ecx,735884;'sVisibleDlg'
 0073568A    mov         edx,7358A8;'VisibleDlg'
 0073568F    mov         eax,esi
 00735691    mov         edi,dword ptr [eax]
 00735693    call        dword ptr [edi+4];TFXIniFile.ReadString
 00735696    push        dword ptr [ebp-8]
 00735699    push        7358CC;' ('
 0073569E    lea         edx,[ebp-0C]
 007356A1    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007356A6    mov         eax,dword ptr [eax]
 007356A8    call        005DDC74
 007356AD    push        dword ptr [ebp-0C]
 007356B0    push        7358E0;')'
 007356B5    lea         eax,[ebp-4]
 007356B8    mov         edx,4
 007356BD    call        @UStrCatN
 007356C2    mov         edx,dword ptr [ebp-4]
 007356C5    mov         eax,ebx
 007356C7    call        TControl.SetText
 007356CC    push        7358F0;'OK'
 007356D1    lea         eax,[ebp-10]
 007356D4    push        eax
 007356D5    mov         ecx,735904;'sOKBtn'
 007356DA    mov         edx,735920;'CommonTexts'
 007356DF    mov         eax,esi
 007356E1    mov         edi,dword ptr [eax]
 007356E3    call        dword ptr [edi+4];TFXIniFile.ReadString
 007356E6    mov         edx,dword ptr [ebp-10]
 007356E9    mov         eax,dword ptr [ebx+3D4];TSelectVisibleDlg.btnOK:TBitBtn
 007356EF    call        TControl.SetText
 007356F4    push        735944;'Cancel'
 007356F9    lea         eax,[ebp-14]
 007356FC    push        eax
 007356FD    mov         ecx,735960;'sCancelBtn'
 00735702    mov         edx,735920;'CommonTexts'
 00735707    mov         eax,esi
 00735709    mov         edi,dword ptr [eax]
 0073570B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073570E    mov         edx,dword ptr [ebp-14]
 00735711    mov         eax,dword ptr [ebx+3D8];TSelectVisibleDlg.btnCancel:TBitBtn
 00735717    call        TControl.SetText
 0073571C    push        735984;'Select All'
 00735721    lea         eax,[ebp-18]
 00735724    push        eax
 00735725    mov         ecx,7359A8;'sbtnSelAll'
 0073572A    mov         edx,7358A8;'VisibleDlg'
 0073572F    mov         eax,esi
 00735731    mov         edi,dword ptr [eax]
 00735733    call        dword ptr [edi+4];TFXIniFile.ReadString
 00735736    mov         edx,dword ptr [ebp-18]
 00735739    mov         eax,dword ptr [ebx+3C8];TSelectVisibleDlg.btnSelAll:TButton
 0073573F    call        TControl.SetText
 00735744    push        7359CC;'Clear All'
 00735749    lea         eax,[ebp-1C]
 0073574C    push        eax
 0073574D    mov         ecx,7359EC;'sbtnClrAll'
 00735752    mov         edx,7358A8;'VisibleDlg'
 00735757    mov         eax,esi
 00735759    mov         edi,dword ptr [eax]
 0073575B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073575E    mov         edx,dword ptr [ebp-1C]
 00735761    mov         eax,dword ptr [ebx+3CC];TSelectVisibleDlg.btnClrAll:TButton
 00735767    call        TControl.SetText
 0073576C    push        735A10;'Nr'
 00735771    lea         eax,[ebp-20]
 00735774    push        eax
 00735775    mov         ecx,735A24;'slvVisPanels_Columns_0'
 0073577A    mov         edx,7358A8;'VisibleDlg'
 0073577F    mov         eax,esi
 00735781    mov         edi,dword ptr [eax]
 00735783    call        dword ptr [edi+4];TFXIniFile.ReadString
 00735786    mov         eax,dword ptr [ebp-20]
 00735789    push        eax
 0073578A    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735790    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00735796    xor         edx,edx
 00735798    call        TListColumns.GetItem
 0073579D    pop         edx
 0073579E    call        TListColumn.SetCaption
 007357A3    push        735A60;'Type'
 007357A8    lea         eax,[ebp-24]
 007357AB    push        eax
 007357AC    mov         ecx,735A78;'slvVisPanels_Columns_1'
 007357B1    mov         edx,7358A8;'VisibleDlg'
 007357B6    mov         eax,esi
 007357B8    mov         edi,dword ptr [eax]
 007357BA    call        dword ptr [edi+4];TFXIniFile.ReadString
 007357BD    mov         eax,dword ptr [ebp-24]
 007357C0    push        eax
 007357C1    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 007357C7    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 007357CD    mov         edx,1
 007357D2    call        TListColumns.GetItem
 007357D7    pop         edx
 007357D8    call        TListColumn.SetCaption
 007357DD    push        735AB4;'Name'
 007357E2    lea         eax,[ebp-28]
 007357E5    push        eax
 007357E6    mov         ecx,735ACC;'slvVisPanels_Columns_2'
 007357EB    mov         edx,7358A8;'VisibleDlg'
 007357F0    mov         eax,esi
 007357F2    mov         esi,dword ptr [eax]
 007357F4    call        dword ptr [esi+4];TFXIniFile.ReadString
 007357F7    mov         eax,dword ptr [ebp-28]
 007357FA    push        eax
 007357FB    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735801    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00735807    mov         edx,2
 0073580C    call        TListColumns.GetItem
 00735811    pop         edx
 00735812    call        TListColumn.SetCaption
 00735817    xor         eax,eax
 00735819    pop         edx
 0073581A    pop         ecx
 0073581B    pop         ecx
 0073581C    mov         dword ptr fs:[eax],edx
 0073581F    push        735839
 00735824    lea         eax,[ebp-28]
 00735827    mov         edx,0A
 0073582C    call        @UStrArrayClr
 00735831    ret
>00735832    jmp         @HandleFinally
>00735837    jmp         00735824
 00735839    pop         edi
 0073583A    pop         esi
 0073583B    pop         ebx
 0073583C    mov         esp,ebp
 0073583E    pop         ebp
 0073583F    ret
*}
end;

//00735AFC
procedure TSelectVisibleDlg.btnOKClick(Sender:TObject);
begin
{*
 00735AFC    push        ebp
 00735AFD    mov         ebp,esp
 00735AFF    add         esp,0FFFFFFF8
 00735B02    push        ebx
 00735B03    push        esi
 00735B04    push        edi
 00735B05    xor         ecx,ecx
 00735B07    mov         dword ptr [ebp-4],ecx
 00735B0A    mov         esi,eax
 00735B0C    xor         eax,eax
 00735B0E    push        ebp
 00735B0F    push        735BFB
 00735B14    push        dword ptr fs:[eax]
 00735B17    mov         dword ptr fs:[eax],esp
 00735B1A    lea         eax,[ebp-4]
 00735B1D    call        @UStrClr
 00735B22    mov         eax,dword ptr [esi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735B28    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735B2E    call        TListItems.GetCount
 00735B33    sub         eax,1
>00735B36    jno         00735B3D
 00735B38    call        @IntOver
 00735B3D    cmp         eax,0FF
>00735B42    jbe         00735B49
 00735B44    call        @BoundErr
 00735B49    test        al,al
>00735B4B    jb          00735BD7
 00735B51    inc         eax
 00735B52    mov         byte ptr [ebp-5],al
 00735B55    mov         bl,0
 00735B57    movzx       edi,bl
 00735B5A    mov         edx,edi
 00735B5C    mov         eax,dword ptr [esi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735B62    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735B68    call        TListItems.GetItem
 00735B6D    call        TListItem.GetChecked
 00735B72    test        al,al
>00735B74    je          00735BD1
 00735B76    cmp         dword ptr [ebp-4],0
>00735B7A    jne         00735BA1
 00735B7C    mov         edx,edi
 00735B7E    mov         eax,dword ptr [esi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735B84    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735B8A    call        TListItems.GetItem
 00735B8F    mov         edx,dword ptr [eax+20];TListItem.FCaption:string
 00735B92    lea         eax,[ebp-4]
 00735B95    mov         ecx,735C18;';'
 00735B9A    call        @UStrCat3
>00735B9F    jmp         00735BD1
 00735BA1    push        dword ptr [ebp-4]
 00735BA4    push        735C28;' '
 00735BA9    mov         edx,edi
 00735BAB    mov         eax,dword ptr [esi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735BB1    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735BB7    call        TListItems.GetItem
 00735BBC    push        dword ptr [eax+20];TListItem.FCaption:string
 00735BBF    push        735C18;';'
 00735BC4    lea         eax,[ebp-4]
 00735BC7    mov         edx,4
 00735BCC    call        @UStrCatN
 00735BD1    inc         ebx
 00735BD2    dec         byte ptr [ebp-5]
>00735BD5    jne         00735B57
 00735BD7    lea         eax,[esi+3DC];TSelectVisibleDlg.SelectedPanels:string
 00735BDD    mov         edx,dword ptr [ebp-4]
 00735BE0    call        @UStrAsg
 00735BE5    xor         eax,eax
 00735BE7    pop         edx
 00735BE8    pop         ecx
 00735BE9    pop         ecx
 00735BEA    mov         dword ptr fs:[eax],edx
 00735BED    push        735C02
 00735BF2    lea         eax,[ebp-4]
 00735BF5    call        @UStrClr
 00735BFA    ret
>00735BFB    jmp         @HandleFinally
>00735C00    jmp         00735BF2
 00735C02    pop         edi
 00735C03    pop         esi
 00735C04    pop         ebx
 00735C05    pop         ecx
 00735C06    pop         ecx
 00735C07    pop         ebp
 00735C08    ret
*}
end;

//00735C2C
procedure TSelectVisibleDlg.FormCreate(Sender:TObject);
begin
{*
 00735C2C    push        ebp
 00735C2D    mov         ebp,esp
 00735C2F    add         esp,0FFFFFFE8
 00735C32    push        ebx
 00735C33    xor         ecx,ecx
 00735C35    mov         dword ptr [ebp-4],ecx
 00735C38    mov         dword ptr [ebp-18],ecx
 00735C3B    mov         ebx,eax
 00735C3D    xor         eax,eax
 00735C3F    push        ebp
 00735C40    push        735CAE
 00735C45    push        dword ptr fs:[eax]
 00735C48    mov         dword ptr fs:[eax],esp
 00735C4B    lea         eax,[ebp-4]
 00735C4E    push        eax
 00735C4F    mov         eax,735CC8;'Select visible panels'
 00735C54    mov         dword ptr [ebp-14],eax
 00735C57    mov         byte ptr [ebp-10],11
 00735C5B    lea         edx,[ebp-18]
 00735C5E    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00735C63    mov         eax,dword ptr [eax]
 00735C65    call        005DDC74
 00735C6A    mov         eax,dword ptr [ebp-18]
 00735C6D    mov         dword ptr [ebp-0C],eax
 00735C70    mov         byte ptr [ebp-8],11
 00735C74    lea         edx,[ebp-14]
 00735C77    mov         ecx,1
 00735C7C    mov         eax,735D00;'%s (%s)'
 00735C81    call        Format
 00735C86    mov         edx,dword ptr [ebp-4]
 00735C89    mov         eax,ebx
 00735C8B    call        TControl.SetText
 00735C90    xor         eax,eax
 00735C92    pop         edx
 00735C93    pop         ecx
 00735C94    pop         ecx
 00735C95    mov         dword ptr fs:[eax],edx
 00735C98    push        735CB5
 00735C9D    lea         eax,[ebp-18]
 00735CA0    call        @UStrClr
 00735CA5    lea         eax,[ebp-4]
 00735CA8    call        @UStrClr
 00735CAD    ret
>00735CAE    jmp         @HandleFinally
>00735CB3    jmp         00735C9D
 00735CB5    pop         ebx
 00735CB6    mov         esp,ebp
 00735CB8    pop         ebp
 00735CB9    ret
*}
end;

//00735D10
procedure TSelectVisibleDlg.FormShow(Sender:TObject);
begin
{*
 00735D10    push        ebp
 00735D11    mov         ebp,esp
 00735D13    add         esp,0FFFFFFEC
 00735D16    push        ebx
 00735D17    push        esi
 00735D18    push        edi
 00735D19    xor         ecx,ecx
 00735D1B    mov         dword ptr [ebp-14],ecx
 00735D1E    mov         ebx,eax
 00735D20    xor         eax,eax
 00735D22    push        ebp
 00735D23    push        735EA1
 00735D28    push        dword ptr fs:[eax]
 00735D2B    mov         dword ptr fs:[eax],esp
 00735D2E    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735D34    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735D3A    call        TListItems.GetCount
 00735D3F    sub         eax,1
>00735D42    jno         00735D49
 00735D44    call        @IntOver
 00735D49    test        eax,eax
>00735D4B    jl          00735D7B
 00735D4D    inc         eax
 00735D4E    mov         dword ptr [ebp-10],eax
 00735D51    mov         dword ptr [ebp-4],0
 00735D58    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735D5E    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735D64    mov         edx,dword ptr [ebp-4]
 00735D67    call        TListItems.GetItem
 00735D6C    xor         edx,edx
 00735D6E    call        TListItem.SetChecked
 00735D73    inc         dword ptr [ebp-4]
 00735D76    dec         dword ptr [ebp-10]
>00735D79    jne         00735D58
 00735D7B    mov         dl,1
 00735D7D    mov         eax,[0046F9A0];TStringList
 00735D82    call        TStringList.Create;TStringList.Create
 00735D87    mov         dword ptr [ebp-0C],eax
 00735D8A    xor         eax,eax
 00735D8C    push        ebp
 00735D8D    push        735E84
 00735D92    push        dword ptr fs:[eax]
 00735D95    mov         dword ptr fs:[eax],esp
 00735D98    mov         dx,3B
 00735D9C    mov         eax,dword ptr [ebp-0C]
 00735D9F    call        TStrings.SetDelimiter
 00735DA4    mov         edx,dword ptr [ebx+3DC];TSelectVisibleDlg.SelectedPanels:string
 00735DAA    mov         eax,dword ptr [ebp-0C]
 00735DAD    call        TStrings.SetDelimitedText
 00735DB2    mov         eax,dword ptr [ebp-0C]
 00735DB5    mov         edx,dword ptr [eax]
 00735DB7    call        dword ptr [edx+14];TStringList.GetCount
 00735DBA    sub         eax,1
>00735DBD    jno         00735DC4
 00735DBF    call        @IntOver
 00735DC4    test        eax,eax
>00735DC6    jl          00735E6E
 00735DCC    inc         eax
 00735DCD    mov         dword ptr [ebp-10],eax
 00735DD0    mov         dword ptr [ebp-4],0
 00735DD7    lea         ecx,[ebp-14]
 00735DDA    mov         edx,dword ptr [ebp-4]
 00735DDD    mov         eax,dword ptr [ebp-0C]
 00735DE0    mov         esi,dword ptr [eax]
 00735DE2    call        dword ptr [esi+0C];TStringList.Get
 00735DE5    mov         eax,dword ptr [ebp-14]
 00735DE8    lea         edx,[ebp-8]
 00735DEB    call        0041E5A0
 00735DF0    test        al,al
>00735DF2    je          00735E62
 00735DF4    cmp         dword ptr [ebp-8],0
>00735DF8    jle         00735E62
 00735DFA    cmp         dword ptr [ebp-8],20
>00735DFE    jg          00735E62
 00735E00    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735E06    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735E0C    call        TListItems.GetCount
 00735E11    mov         edi,eax
 00735E13    sub         edi,1
>00735E16    jno         00735E1D
 00735E18    call        @IntOver
 00735E1D    test        edi,edi
>00735E1F    jl          00735E62
 00735E21    inc         edi
 00735E22    xor         esi,esi
 00735E24    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735E2A    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735E30    mov         edx,esi
 00735E32    call        TListItems.GetItem
 00735E37    mov         eax,dword ptr [eax+20];TListItem.FCaption:string
 00735E3A    call        StrToInt
 00735E3F    cmp         eax,dword ptr [ebp-8]
>00735E42    jne         00735E5E
 00735E44    mov         eax,dword ptr [ebx+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735E4A    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735E50    mov         edx,esi
 00735E52    call        TListItems.GetItem
 00735E57    mov         dl,1
 00735E59    call        TListItem.SetChecked
 00735E5E    inc         esi
 00735E5F    dec         edi
>00735E60    jne         00735E24
 00735E62    inc         dword ptr [ebp-4]
 00735E65    dec         dword ptr [ebp-10]
>00735E68    jne         00735DD7
 00735E6E    xor         eax,eax
 00735E70    pop         edx
 00735E71    pop         ecx
 00735E72    pop         ecx
 00735E73    mov         dword ptr fs:[eax],edx
 00735E76    push        735E8B
 00735E7B    mov         eax,dword ptr [ebp-0C]
 00735E7E    call        TObject.Free
 00735E83    ret
>00735E84    jmp         @HandleFinally
>00735E89    jmp         00735E7B
 00735E8B    xor         eax,eax
 00735E8D    pop         edx
 00735E8E    pop         ecx
 00735E8F    pop         ecx
 00735E90    mov         dword ptr fs:[eax],edx
 00735E93    push        735EA8
 00735E98    lea         eax,[ebp-14]
 00735E9B    call        @UStrClr
 00735EA0    ret
>00735EA1    jmp         @HandleFinally
>00735EA6    jmp         00735E98
 00735EA8    pop         edi
 00735EA9    pop         esi
 00735EAA    pop         ebx
 00735EAB    mov         esp,ebp
 00735EAD    pop         ebp
 00735EAE    ret
*}
end;

//00735EB0
procedure TSelectVisibleDlg.btnSelAllClick(Sender:TObject);
begin
{*
 00735EB0    push        ebx
 00735EB1    push        esi
 00735EB2    push        edi
 00735EB3    mov         edi,eax
 00735EB5    mov         eax,dword ptr [edi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735EBB    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735EC1    call        TListItems.GetCount
 00735EC6    mov         ebx,eax
 00735EC8    sub         ebx,1
>00735ECB    jno         00735ED2
 00735ECD    call        @IntOver
 00735ED2    test        ebx,ebx
>00735ED4    jl          00735EF7
 00735ED6    inc         ebx
 00735ED7    xor         esi,esi
 00735ED9    mov         eax,dword ptr [edi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735EDF    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735EE5    mov         edx,esi
 00735EE7    call        TListItems.GetItem
 00735EEC    mov         dl,1
 00735EEE    call        TListItem.SetChecked
 00735EF3    inc         esi
 00735EF4    dec         ebx
>00735EF5    jne         00735ED9
 00735EF7    pop         edi
 00735EF8    pop         esi
 00735EF9    pop         ebx
 00735EFA    ret
*}
end;

//00735EFC
procedure TSelectVisibleDlg.btnClrAllClick(Sender:TObject);
begin
{*
 00735EFC    push        ebx
 00735EFD    push        esi
 00735EFE    push        edi
 00735EFF    mov         edi,eax
 00735F01    mov         eax,dword ptr [edi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735F07    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735F0D    call        TListItems.GetCount
 00735F12    mov         ebx,eax
 00735F14    sub         ebx,1
>00735F17    jno         00735F1E
 00735F19    call        @IntOver
 00735F1E    test        ebx,ebx
>00735F20    jl          00735F43
 00735F22    inc         ebx
 00735F23    xor         esi,esi
 00735F25    mov         eax,dword ptr [edi+3C4];TSelectVisibleDlg.lvVisPanels:TListView
 00735F2B    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00735F31    mov         edx,esi
 00735F33    call        TListItems.GetItem
 00735F38    xor         edx,edx
 00735F3A    call        TListItem.SetChecked
 00735F3F    inc         esi
 00735F40    dec         ebx
>00735F41    jne         00735F25
 00735F43    pop         edi
 00735F44    pop         esi
 00735F45    pop         ebx
 00735F46    ret
*}
end;

//00737158
procedure TFXNetFrame.Translate(IniFile:TFXIniFile);
begin
{*
 00737158    push        ebx
 00737159    push        esi
 0073715A    mov         ebx,eax
 0073715C    mov         esi,dword ptr ds:[7C4288];^gvar_00901E64:UnicodeString
 00737162    mov         edx,dword ptr ds:[7C4DB0];^gvar_007C2B9C
 00737168    mov         edx,dword ptr [edx]
 0073716A    mov         eax,dword ptr [ebx+2B8];TFXNetFrame.btnOK:TBitBtn
 00737170    call        TControl.SetText
 00737175    mov         edx,dword ptr ds:[7C4B54];^gvar_007C2BA0
 0073717B    mov         edx,dword ptr [edx]
 0073717D    mov         eax,dword ptr [ebx+2BC];TFXNetFrame.btnCancel:TBitBtn
 00737183    call        TControl.SetText
 00737188    mov         edx,dword ptr ds:[7C43D4];^gvar_007C2BB0
 0073718E    mov         edx,dword ptr [edx]
 00737190    mov         eax,dword ptr [ebx+2F4];TFXNetFrame.TabSheetPanels:TTabSheet
 00737196    call        TControl.SetText
 0073719B    mov         edx,dword ptr ds:[7C4484];^gvar_007C2BB4
 007371A1    mov         edx,dword ptr [edx]
 007371A3    mov         eax,dword ptr [ebx+2F8];TFXNetFrame.TabSheetVisibility:TTabSheet
 007371A9    call        TControl.SetText
 007371AE    mov         edx,dword ptr ds:[7C46C8];^gvar_007C2BB8
 007371B4    mov         edx,dword ptr [edx]
 007371B6    mov         eax,dword ptr [ebx+2FC];TFXNetFrame.TabSheetSummary:TTabSheet
 007371BC    call        TControl.SetText
 007371C1    mov         edx,dword ptr ds:[7C4620];^gvar_007C2BBC
 007371C7    mov         edx,dword ptr [edx]
 007371C9    mov         eax,dword ptr [ebx+2B0];TFXNetFrame.gbNetName:TGroupBox
 007371CF    call        TControl.SetText
 007371D4    mov         edx,dword ptr ds:[7C4A68];^gvar_007C2BC4
 007371DA    mov         edx,dword ptr [edx]
 007371DC    mov         eax,dword ptr [ebx+2C0];TFXNetFrame.gbFXNetPanels:TGroupBox
 007371E2    call        TControl.SetText
 007371E7    mov         eax,dword ptr [ebx+2EC];TFXNetFrame.lvPanels:TListView
 007371ED    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 007371F3    xor         edx,edx
 007371F5    call        TListColumns.GetItem
 007371FA    mov         edx,dword ptr ds:[7C4178];^gvar_00901E48:UnicodeString
 00737200    mov         edx,dword ptr [edx]
 00737202    call        TListColumn.SetCaption
 00737207    mov         eax,dword ptr [ebx+2EC];TFXNetFrame.lvPanels:TListView
 0073720D    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00737213    mov         edx,1
 00737218    call        TListColumns.GetItem
 0073721D    mov         edx,dword ptr ds:[7C4178];^gvar_00901E48:UnicodeString
 00737223    mov         edx,dword ptr [edx+4]
 00737226    call        TListColumn.SetCaption
 0073722B    mov         eax,dword ptr [ebx+2EC];TFXNetFrame.lvPanels:TListView
 00737231    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00737237    mov         edx,2
 0073723C    call        TListColumns.GetItem
 00737241    mov         edx,dword ptr ds:[7C4178];^gvar_00901E48:UnicodeString
 00737247    mov         edx,dword ptr [edx+8]
 0073724A    call        TListColumn.SetCaption
 0073724F    mov         edx,dword ptr ds:[7C41C0];^gvar_007C2BC8
 00737255    mov         edx,dword ptr [edx]
 00737257    mov         eax,dword ptr [ebx+2C4];TFXNetFrame.lbPanelID:TLabel
 0073725D    call        TControl.SetText
 00737262    mov         edx,dword ptr ds:[7C4244];^gvar_007C2BCC
 00737268    mov         edx,dword ptr [edx]
 0073726A    mov         eax,dword ptr [ebx+2C8];TFXNetFrame.lbPanelType:TLabel
 00737270    call        TControl.SetText
 00737275    mov         edx,dword ptr ds:[7C4334];^gvar_007C2BD0
 0073727B    mov         edx,dword ptr [edx]
 0073727D    mov         eax,dword ptr [ebx+2CC];TFXNetFrame.lbPanelName:TLabel
 00737283    call        TControl.SetText
 00737288    mov         edx,dword ptr ds:[7C4B70];^gvar_007C2BD4
 0073728E    mov         edx,dword ptr [edx]
 00737290    mov         eax,dword ptr [ebx+2E0];TFXNetFrame.btnAdd:TButton
 00737296    call        TControl.SetText
 0073729B    mov         edx,dword ptr ds:[7C49F8];^gvar_007C2BD8
 007372A1    mov         edx,dword ptr [edx]
 007372A3    mov         eax,dword ptr [ebx+2E4];TFXNetFrame.btnModify:TButton
 007372A9    call        TControl.SetText
 007372AE    mov         edx,dword ptr ds:[7C42A8];^gvar_007C2BDC
 007372B4    mov         edx,dword ptr [edx]
 007372B6    mov         eax,dword ptr [ebx+2E8];TFXNetFrame.btnDelete:TButton
 007372BC    call        TControl.SetText
 007372C1    mov         edx,dword ptr ds:[7C43AC];^gvar_007C2BE0
 007372C7    mov         edx,dword ptr [edx]
 007372C9    mov         eax,dword ptr [ebx+304];TFXNetFrame.gbPanelSummary:TGroupBox
 007372CF    call        TControl.SetText
 007372D4    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 007372DA    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 007372E0    xor         edx,edx
 007372E2    call        TListColumns.GetItem
 007372E7    mov         edx,dword ptr ds:[7C4A08];^gvar_00901E54:UnicodeString
 007372ED    mov         edx,dword ptr [edx]
 007372EF    call        TListColumn.SetCaption
 007372F4    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 007372FA    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00737300    mov         edx,1
 00737305    call        TListColumns.GetItem
 0073730A    mov         edx,dword ptr ds:[7C4A08];^gvar_00901E54:UnicodeString
 00737310    mov         edx,dword ptr [edx+4]
 00737313    call        TListColumn.SetCaption
 00737318    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 0073731E    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00737324    mov         edx,2
 00737329    call        TListColumns.GetItem
 0073732E    mov         edx,dword ptr ds:[7C4A08];^gvar_00901E54:UnicodeString
 00737334    mov         edx,dword ptr [edx+8]
 00737337    call        TListColumn.SetCaption
 0073733C    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 00737342    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00737348    mov         edx,3
 0073734D    call        TListColumns.GetItem
 00737352    mov         edx,dword ptr ds:[7C4A08];^gvar_00901E54:UnicodeString
 00737358    mov         edx,dword ptr [edx+0C]
 0073735B    call        TListColumn.SetCaption
 00737360    mov         edx,dword ptr ds:[7C4B94];^gvar_007C2BE8
 00737366    mov         edx,dword ptr [edx]
 00737368    mov         eax,dword ptr [ebx+308];TFXNetFrame.gbLoopsAndZones:TGroupBox
 0073736E    call        TControl.SetText
 00737373    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 00737379    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 0073737F    xor         edx,edx
 00737381    call        TListColumns.GetItem
 00737386    mov         edx,dword ptr [esi]
 00737388    call        TListColumn.SetCaption
 0073738D    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 00737393    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00737399    mov         edx,1
 0073739E    call        TListColumns.GetItem
 007373A3    mov         edx,dword ptr [esi+4]
 007373A6    call        TListColumn.SetCaption
 007373AB    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 007373B1    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 007373B7    mov         edx,2
 007373BC    call        TListColumns.GetItem
 007373C1    mov         edx,dword ptr [esi+8]
 007373C4    call        TListColumn.SetCaption
 007373C9    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 007373CF    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 007373D5    mov         edx,3
 007373DA    call        TListColumns.GetItem
 007373DF    mov         edx,dword ptr [esi+0C]
 007373E2    call        TListColumn.SetCaption
 007373E7    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 007373ED    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 007373F3    mov         edx,4
 007373F8    call        TListColumns.GetItem
 007373FD    mov         edx,dword ptr [esi+10]
 00737400    call        TListColumn.SetCaption
 00737405    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 0073740B    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 00737411    mov         edx,5
 00737416    call        TListColumns.GetItem
 0073741B    mov         edx,dword ptr [esi+14]
 0073741E    call        TListColumn.SetCaption
 00737423    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 00737429    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 0073742F    mov         edx,6
 00737434    call        TListColumns.GetItem
 00737439    mov         edx,dword ptr [esi+18]
 0073743C    call        TListColumn.SetCaption
 00737441    mov         eax,dword ptr [ebx+30C];TFXNetFrame.lvLoops:TListView
 00737447    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 0073744D    mov         edx,7
 00737452    call        TListColumns.GetItem
 00737457    mov         edx,dword ptr [esi+1C]
 0073745A    call        TListColumn.SetCaption
 0073745F    mov         edx,dword ptr ds:[7C456C];^gvar_007C2BEC
 00737465    mov         edx,dword ptr [edx]
 00737467    mov         eax,dword ptr [ebx+330];TFXNetFrame.lbErrorInPanelId:TLabel
 0073746D    call        TControl.SetText
 00737472    mov         edx,dword ptr ds:[7C4EB0];^gvar_007C2BF0
 00737478    mov         edx,dword ptr [edx]
 0073747A    mov         eax,dword ptr [ebx+32C];TFXNetFrame.lbOverlappingLoops:TLabel
 00737480    call        TControl.SetText
 00737485    mov         edx,dword ptr ds:[7C4E1C];^gvar_007C2BF4
 0073748B    mov         edx,dword ptr [edx]
 0073748D    mov         eax,dword ptr [ebx+328];TFXNetFrame.lbOverlappingZones:TLabel
 00737493    call        TControl.SetText
 00737498    mov         eax,dword ptr [ebx+310];TFXNetFrame.popMenu:TPopupMenu
 0073749E    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 007374A1    xor         edx,edx
 007374A3    call        TMenuItem.GetItem
 007374A8    mov         edx,dword ptr ds:[7C4798];^gvar_00901E30:UnicodeString
 007374AE    mov         edx,dword ptr [edx]
 007374B0    call        TMenuItem.SetCaption
 007374B5    mov         eax,dword ptr [ebx+310];TFXNetFrame.popMenu:TPopupMenu
 007374BB    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 007374BE    mov         edx,2
 007374C3    call        TMenuItem.GetItem
 007374C8    mov         edx,dword ptr ds:[7C4798];^gvar_00901E30:UnicodeString
 007374CE    mov         edx,dword ptr [edx+8]
 007374D1    call        TMenuItem.SetCaption
 007374D6    mov         eax,dword ptr [ebx+310];TFXNetFrame.popMenu:TPopupMenu
 007374DC    mov         eax,dword ptr [eax+44];TPopupMenu.FItems:TMenuItem
 007374DF    mov         edx,3
 007374E4    call        TMenuItem.GetItem
 007374E9    mov         edx,dword ptr ds:[7C4798];^gvar_00901E30:UnicodeString
 007374EF    mov         edx,dword ptr [edx+0C]
 007374F2    call        TMenuItem.SetCaption
 007374F7    mov         edx,dword ptr ds:[7C45E8];^gvar_007C2BC0
 007374FD    mov         edx,dword ptr [edx]
 007374FF    mov         eax,dword ptr [ebx+334];TFXNetFrame.rgSystemType:TRadioGroup
 00737505    call        TControl.SetText
 0073750A    mov         ecx,dword ptr ds:[7C4E28];^gvar_00901E40:UnicodeString
 00737510    mov         ecx,dword ptr [ecx]
 00737512    mov         eax,dword ptr [ebx+334];TFXNetFrame.rgSystemType:TRadioGroup
 00737518    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 0073751E    xor         edx,edx
 00737520    mov         esi,dword ptr [eax]
 00737522    call        dword ptr [esi+20];TStrings.Put
 00737525    mov         ecx,dword ptr ds:[7C4E28];^gvar_00901E40:UnicodeString
 0073752B    mov         ecx,dword ptr [ecx+4]
 0073752E    mov         eax,dword ptr [ebx+334];TFXNetFrame.rgSystemType:TRadioGroup
 00737534    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 0073753A    mov         edx,1
 0073753F    mov         ebx,dword ptr [eax]
 00737541    call        dword ptr [ebx+20];TStrings.Put
 00737544    pop         esi
 00737545    pop         ebx
 00737546    ret
*}
end;

//00737548
procedure TFXNetFrame.Show;
begin
{*
 00737548    push        ebp
 00737549    mov         ebp,esp
 0073754B    mov         ecx,5
 00737550    push        0
 00737552    push        0
 00737554    dec         ecx
>00737555    jne         00737550
 00737557    push        ecx
 00737558    push        ebx
 00737559    push        esi
 0073755A    push        edi
 0073755B    mov         dword ptr [ebp-8],eax
 0073755E    xor         eax,eax
 00737560    push        ebp
 00737561    push        737845
 00737566    push        dword ptr fs:[eax]
 00737569    mov         dword ptr fs:[eax],esp
 0073756C    mov         eax,[007C4BFC];^gvar_007CA840
 00737571    cmp         byte ptr [eax],0
>00737574    je          007375CF
 00737576    mov         byte ptr ds:[902C74],0;gvar_00902C74
 0073757D    mov         eax,dword ptr [ebp-8]
 00737580    mov         eax,dword ptr [eax+334];TFXNetFrame.rgSystemType:TRadioGroup
 00737586    xor         edx,edx
 00737588    mov         ecx,dword ptr [eax]
 0073758A    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00737590    mov         eax,dword ptr [ebp-8]
 00737593    mov         eax,dword ptr [eax+2D4];TFXNetFrame.udPanelID:TUpDown
 00737599    xor         edx,edx
 0073759B    call        TUpDown.SetMin
 007375A0    mov         eax,dword ptr [ebp-8]
 007375A3    mov         eax,dword ptr [eax+2D4];TFXNetFrame.udPanelID:TUpDown
 007375A9    xor         edx,edx
 007375AB    call        TUpDown.SetMax
 007375B0    mov         eax,dword ptr [ebp-8]
 007375B3    mov         eax,dword ptr [eax+2D4];TFXNetFrame.udPanelID:TUpDown
 007375B9    xor         edx,edx
 007375BB    call        TUpDown.SetPosition
 007375C0    mov         eax,dword ptr [ebp-8]
 007375C3    mov         eax,dword ptr [eax+310];TFXNetFrame.popMenu:TPopupMenu
 007375C9    mov         byte ptr [eax+71],0;TPopupMenu.FAutoPopup:Boolean
>007375CD    jmp         007375DC
 007375CF    mov         eax,[007C4870];^gvar_007A1EB8
 007375D4    movzx       eax,byte ptr [eax]
 007375D7    mov         [00902C74],al;gvar_00902C74
 007375DC    cmp         byte ptr ds:[902C74],0;gvar_00902C74
>007375E3    jne         007375F7
 007375E5    mov         eax,dword ptr [ebp-8]
 007375E8    mov         eax,dword ptr [eax+334];TFXNetFrame.rgSystemType:TRadioGroup
 007375EE    xor         edx,edx
 007375F0    call        TRadioGroup.SetItemIndex
>007375F5    jmp         0073760A
 007375F7    mov         eax,dword ptr [ebp-8]
 007375FA    mov         eax,dword ptr [eax+334];TFXNetFrame.rgSystemType:TRadioGroup
 00737600    mov         edx,1
 00737605    call        TRadioGroup.SetItemIndex
 0073760A    mov         eax,902538;gvar_00902538:UnicodeString
 0073760F    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 00737615    mov         edx,dword ptr [edx]
 00737617    mov         edx,dword ptr [edx+4]
 0073761A    call        @UStrAsg
 0073761F    mov         eax,dword ptr [ebp-8]
 00737622    mov         eax,dword ptr [eax+2B4];TFXNetFrame.edNetName:TEdit
 00737628    mov         edx,dword ptr ds:[902538];gvar_00902538:UnicodeString
 0073762E    call        TControl.SetText
 00737633    xor         esi,esi
 00737635    mov         ebx,90253C;gvar_0090253C:Pointer
 0073763A    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073763F    mov         eax,dword ptr [eax]
 00737641    mov         edx,esi
 00737643    call        TFXNet.GetPanel
 00737648    test        eax,eax
>0073764A    je          0073777D
 00737650    mov         byte ptr [ebx],1
 00737653    lea         eax,[ebp-0C]
 00737656    push        eax
 00737657    mov         dword ptr [ebp-14],esi
 0073765A    mov         byte ptr [ebp-10],0
 0073765E    lea         edx,[ebp-14]
 00737661    xor         ecx,ecx
 00737663    mov         eax,737860;'%.2d'
 00737668    call        Format
 0073766D    mov         edx,dword ptr [ebp-0C]
 00737670    lea         eax,[ebx+8]
 00737673    call        @UStrAsg
 00737678    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073767D    mov         eax,dword ptr [eax]
 0073767F    mov         edx,esi
 00737681    call        TFXNet.GetPanel
 00737686    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 00737689    mov         dword ptr [ebx+0C],eax
 0073768C    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737691    mov         eax,dword ptr [eax]
 00737693    mov         edx,esi
 00737695    call        TFXNet.GetPanel
 0073769A    mov         edi,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 0073769D    lea         edx,[ebp-4]
 007376A0    mov         eax,edi
 007376A2    call        006A21B4
 007376A7    cmp         dword ptr [ebp-4],0
>007376AB    je          007376BA
 007376AD    mov         eax,902538;gvar_00902538:UnicodeString
 007376B2    mov         edx,dword ptr [ebp-4]
 007376B5    call        @UStrAsg
 007376BA    lea         edx,[ebp-18]
 007376BD    mov         eax,edi
 007376BF    call        006A2434
 007376C4    mov         edx,dword ptr [ebp-18]
 007376C7    lea         eax,[ebx+10]
 007376CA    call        @UStrAsg
 007376CF    movzx       eax,byte ptr [edi+122]
 007376D6    mov         dword ptr [ebx+4],eax
 007376D9    lea         edx,[ebp-1C]
 007376DC    mov         eax,dword ptr [edi+171]
 007376E2    call        006D5940
 007376E7    mov         edx,dword ptr [ebp-1C]
 007376EA    lea         eax,[ebx+14]
 007376ED    call        @UStrAsg
 007376F2    mov         eax,edi
 007376F4    call        006A3430
 007376F9    movzx       eax,al
 007376FC    mov         dword ptr [ebx+18],eax
 007376FF    lea         edx,[ebp-20]
 00737702    mov         eax,dword ptr [ebx+18]
 00737705    call        IntToStr
 0073770A    mov         edx,dword ptr [ebp-20]
 0073770D    lea         eax,[ebx+1C]
 00737710    call        @UStrAsg
 00737715    mov         eax,edi
 00737717    call        006A34B0
 0073771C    movzx       eax,al
 0073771F    mov         dword ptr [ebx+20],eax
 00737722    lea         edx,[ebp-24]
 00737725    mov         eax,dword ptr [ebx+20]
 00737728    call        IntToStr
 0073772D    mov         edx,dword ptr [ebp-24]
 00737730    lea         eax,[ebx+24]
 00737733    call        @UStrAsg
 00737738    movzx       eax,word ptr [edi+123]
 0073773F    mov         dword ptr [ebx+28],eax
 00737742    lea         edx,[ebp-28]
 00737745    mov         eax,dword ptr [ebx+28]
 00737748    call        IntToStr
 0073774D    mov         edx,dword ptr [ebp-28]
 00737750    lea         eax,[ebx+2C]
 00737753    call        @UStrAsg
 00737758    mov         eax,edi
 0073775A    call        006A2DE4
 0073775F    movzx       eax,ax
 00737762    mov         dword ptr [ebx+30],eax
 00737765    lea         edx,[ebp-2C]
 00737768    mov         eax,dword ptr [ebx+30]
 0073776B    call        IntToStr
 00737770    mov         edx,dword ptr [ebp-2C]
 00737773    lea         eax,[ebx+34]
 00737776    call        @UStrAsg
>0073777B    jmp         007377D6
 0073777D    mov         byte ptr [ebx],0
 00737780    xor         eax,eax
 00737782    mov         dword ptr [ebx+4],eax
 00737785    lea         eax,[ebx+8]
 00737788    call        @UStrClr
 0073778D    xor         eax,eax
 0073778F    mov         dword ptr [ebx+0C],eax
 00737792    lea         eax,[ebx+10]
 00737795    call        @UStrClr
 0073779A    lea         eax,[ebx+14]
 0073779D    call        @UStrClr
 007377A2    xor         eax,eax
 007377A4    mov         dword ptr [ebx+18],eax
 007377A7    lea         eax,[ebx+1C]
 007377AA    call        @UStrClr
 007377AF    xor         eax,eax
 007377B1    mov         dword ptr [ebx+20],eax
 007377B4    lea         eax,[ebx+24]
 007377B7    call        @UStrClr
 007377BC    xor         eax,eax
 007377BE    mov         dword ptr [ebx+28],eax
 007377C1    lea         eax,[ebx+2C]
 007377C4    call        @UStrClr
 007377C9    xor         eax,eax
 007377CB    mov         dword ptr [ebx+30],eax
 007377CE    lea         eax,[ebx+34]
 007377D1    call        @UStrClr
 007377D6    inc         esi
 007377D7    add         ebx,38
 007377DA    cmp         esi,21
>007377DD    jne         0073763A
 007377E3    mov         eax,dword ptr [ebp-8]
 007377E6    call        0073844C
 007377EB    mov         eax,dword ptr [ebp-8]
 007377EE    call        007384EC
 007377F3    mov         eax,dword ptr [ebp-8]
 007377F6    call        0073860C
 007377FB    mov         eax,dword ptr [ebp-8]
 007377FE    mov         byte ptr [eax+338],0;TFXNetFrame.FModified:Boolean
 00737805    mov         dl,1
 00737807    mov         eax,dword ptr [ebp-8]
 0073780A    call        TControl.SetVisible
 0073780F    mov         eax,dword ptr [ebp-8]
 00737812    mov         edx,dword ptr [eax]
 00737814    call        dword ptr [edx+104];TWinControl.SetFocus
 0073781A    xor         eax,eax
 0073781C    pop         edx
 0073781D    pop         ecx
 0073781E    pop         ecx
 0073781F    mov         dword ptr fs:[eax],edx
 00737822    push        73784C
 00737827    lea         eax,[ebp-2C]
 0073782A    mov         edx,6
 0073782F    call        @UStrArrayClr
 00737834    lea         eax,[ebp-0C]
 00737837    call        @UStrClr
 0073783C    lea         eax,[ebp-4]
 0073783F    call        @UStrClr
 00737844    ret
>00737845    jmp         @HandleFinally
>0073784A    jmp         00737827
 0073784C    pop         edi
 0073784D    pop         esi
 0073784E    pop         ebx
 0073784F    mov         esp,ebp
 00737851    pop         ebp
 00737852    ret
*}
end;

//0073786C
procedure TFXNetFrame.btnOKClick(Sender:TObject);
begin
{*
 0073786C    push        ebp
 0073786D    mov         ebp,esp
 0073786F    add         esp,0FFFFFEBC
 00737875    push        ebx
 00737876    push        esi
 00737877    push        edi
 00737878    xor         ecx,ecx
 0073787A    mov         dword ptr [ebp-140],ecx
 00737880    mov         dword ptr [ebp-144],ecx
 00737886    mov         dword ptr [ebp-138],ecx
 0073788C    mov         dword ptr [ebp-13C],ecx
 00737892    mov         dword ptr [ebp-34],ecx
 00737895    mov         dword ptr [ebp-30],ecx
 00737898    mov         dword ptr [ebp-2C],ecx
 0073789B    mov         dword ptr [ebp-4],ecx
 0073789E    mov         dword ptr [ebp-8],ecx
 007378A1    mov         dword ptr [ebp-0C],ecx
 007378A4    mov         dword ptr [ebp-10],eax
 007378A7    xor         eax,eax
 007378A9    push        ebp
 007378AA    push        737DF0
 007378AF    push        dword ptr fs:[eax]
 007378B2    mov         dword ptr fs:[eax],esp
 007378B5    lea         edx,[ebp-2C]
 007378B8    mov         eax,dword ptr [ebp-10]
 007378BB    mov         eax,dword ptr [eax+2B4];TFXNetFrame.edNetName:TEdit
 007378C1    call        TControl.GetText
 007378C6    mov         edx,dword ptr [ebp-2C]
 007378C9    mov         eax,902538;gvar_00902538:UnicodeString
 007378CE    call        @UStrAsg
 007378D3    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007378D8    mov         eax,dword ptr [eax]
 007378DA    add         eax,4
 007378DD    mov         edx,dword ptr ds:[902538];gvar_00902538:UnicodeString
 007378E3    call        @UStrAsg
 007378E8    movzx       eax,byte ptr ds:[902C74];gvar_00902C74
 007378EF    mov         edx,dword ptr ds:[7C4870];^gvar_007A1EB8
 007378F5    mov         byte ptr [edx],al
 007378F7    xor         esi,esi
 007378F9    mov         ebx,90253C;gvar_0090253C:Pointer
 007378FE    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737903    mov         eax,dword ptr [eax]
 00737905    mov         edx,esi
 00737907    call        TFXNet.GetPanel
 0073790C    test        eax,eax
>0073790E    je          0073793A
 00737910    cmp         byte ptr [ebx],0
>00737913    jne         0073793A
 00737915    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073791A    mov         eax,dword ptr [eax]
 0073791C    mov         edx,esi
 0073791E    call        TFXNet.GetPanel
 00737923    mov         dl,1
 00737925    mov         ecx,dword ptr [eax]
 00737927    call        dword ptr [ecx-4]
 0073792A    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073792F    mov         eax,dword ptr [eax]
 00737931    xor         ecx,ecx
 00737933    mov         edx,esi
 00737935    call        TFXNet.SetPanel
 0073793A    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073793F    mov         eax,dword ptr [eax]
 00737941    mov         edx,esi
 00737943    call        TFXNet.GetPanel
 00737948    test        eax,eax
>0073794A    je          00737BBA
 00737950    cmp         byte ptr [ebx],1
>00737953    jne         00737BBA
 00737959    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073795E    mov         eax,dword ptr [eax]
 00737960    mov         edx,esi
 00737962    call        TFXNet.GetPanel
 00737967    mov         edx,dword ptr [ebx+0C]
 0073796A    mov         dword ptr [eax+4],edx;TFXPanel.iType:Integer
 0073796D    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737972    mov         eax,dword ptr [eax]
 00737974    mov         edx,esi
 00737976    call        TFXNet.GetPanel
 0073797B    mov         edi,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 0073797E    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737983    mov         eax,dword ptr [eax]
 00737985    mov         edx,esi
 00737987    call        TFXNet.GetPanel
 0073798C    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 0073798F    cmp         eax,0FF
>00737994    jbe         0073799B
 00737996    call        @BoundErr
 0073799B    mov         byte ptr [edi+180],al
 007379A1    lea         eax,[ebp-4]
 007379A4    lea         edx,[edi+5]
 007379A7    call        @UStrFromString
 007379AC    lea         eax,[ebp-8]
 007379AF    call        @UStrClr
 007379B4    mov         ecx,1
 007379B9    mov         edx,dword ptr [ebp-4]
 007379BC    mov         eax,737E0C;'*'
 007379C1    call        Pos
 007379C6    mov         dword ptr [ebp-14],eax
 007379C9    mov         eax,dword ptr [ebp-14]
 007379CC    add         eax,1
>007379CF    jno         007379D6
 007379D1    call        @IntOver
 007379D6    mov         ecx,eax
 007379D8    mov         edx,dword ptr [ebp-4]
 007379DB    mov         eax,737E1C;'*
'
 007379E0    call        Pos
 007379E5    mov         dword ptr [ebp-18],eax
 007379E8    cmp         dword ptr [ebp-14],0
>007379EC    je          00737A22
 007379EE    cmp         dword ptr [ebp-18],0
>007379F2    je          00737A22
 007379F4    mov         eax,dword ptr [ebp-14]
 007379F7    cmp         eax,dword ptr [ebp-18]
>007379FA    jge         00737A22
 007379FC    lea         eax,[ebp-8]
 007379FF    push        eax
 00737A00    mov         ecx,dword ptr [ebp-18]
 00737A03    sub         ecx,dword ptr [ebp-14]
>00737A06    jno         00737A0D
 00737A08    call        @IntOver
 00737A0D    sub         ecx,1
>00737A10    jno         00737A17
 00737A12    call        @IntOver
 00737A17    mov         edx,dword ptr [ebp-14]
 00737A1A    mov         eax,dword ptr [ebp-4]
 00737A1D    call        00431F88
 00737A22    cmp         dword ptr [ebp-18],0
>00737A26    jle         00737A6C
 00737A28    mov         eax,dword ptr [ebp-4]
 00737A2B    mov         dword ptr [ebp-24],eax
 00737A2E    cmp         dword ptr [ebp-24],0
>00737A32    je          00737A3F
 00737A34    mov         eax,dword ptr [ebp-24]
 00737A37    sub         eax,4
 00737A3A    mov         eax,dword ptr [eax]
 00737A3C    mov         dword ptr [ebp-24],eax
 00737A3F    lea         ecx,[ebp-30]
 00737A42    mov         edx,dword ptr [ebp-24]
 00737A45    sub         edx,dword ptr [ebp-18]
>00737A48    jno         00737A4F
 00737A4A    call        @IntOver
 00737A4F    sub         edx,2
>00737A52    jno         00737A59
 00737A54    call        @IntOver
 00737A59    mov         eax,dword ptr [ebp-4]
 00737A5C    call        00431F5C
 00737A61    mov         edx,dword ptr [ebp-30]
 00737A64    lea         eax,[ebp-4]
 00737A67    call        @UStrLAsg
 00737A6C    lea         eax,[ebp-0C]
 00737A6F    call        @UStrClr
 00737A74    mov         ecx,1
 00737A79    mov         edx,dword ptr [ebp-4]
 00737A7C    mov         eax,737E30;'<'
 00737A81    call        Pos
 00737A86    mov         dword ptr [ebp-1C],eax
 00737A89    mov         eax,dword ptr [ebp-1C]
 00737A8C    add         eax,1
>00737A8F    jno         00737A96
 00737A91    call        @IntOver
 00737A96    mov         ecx,eax
 00737A98    mov         edx,dword ptr [ebp-4]
 00737A9B    mov         eax,737E40;'>
'
 00737AA0    call        Pos
 00737AA5    mov         dword ptr [ebp-20],eax
 00737AA8    cmp         dword ptr [ebp-1C],0
>00737AAC    je          00737AE2
 00737AAE    cmp         dword ptr [ebp-20],0
>00737AB2    je          00737AE2
 00737AB4    mov         eax,dword ptr [ebp-1C]
 00737AB7    cmp         eax,dword ptr [ebp-20]
>00737ABA    jge         00737AE2
 00737ABC    lea         eax,[ebp-0C]
 00737ABF    push        eax
 00737AC0    mov         ecx,dword ptr [ebp-20]
 00737AC3    sub         ecx,dword ptr [ebp-1C]
>00737AC6    jno         00737ACD
 00737AC8    call        @IntOver
 00737ACD    sub         ecx,1
>00737AD0    jno         00737AD7
 00737AD2    call        @IntOver
 00737AD7    mov         edx,dword ptr [ebp-1C]
 00737ADA    mov         eax,dword ptr [ebp-4]
 00737ADD    call        00431F88
 00737AE2    cmp         dword ptr [ebp-20],0
>00737AE6    jle         00737B2C
 00737AE8    mov         eax,dword ptr [ebp-4]
 00737AEB    mov         dword ptr [ebp-28],eax
 00737AEE    cmp         dword ptr [ebp-28],0
>00737AF2    je          00737AFF
 00737AF4    mov         eax,dword ptr [ebp-28]
 00737AF7    sub         eax,4
 00737AFA    mov         eax,dword ptr [eax]
 00737AFC    mov         dword ptr [ebp-28],eax
 00737AFF    lea         ecx,[ebp-34]
 00737B02    mov         edx,dword ptr [ebp-28]
 00737B05    sub         edx,dword ptr [ebp-20]
>00737B08    jno         00737B0F
 00737B0A    call        @IntOver
 00737B0F    sub         edx,2
>00737B12    jno         00737B19
 00737B14    call        @IntOver
 00737B19    mov         eax,dword ptr [ebp-4]
 00737B1C    call        00431F5C
 00737B21    mov         edx,dword ptr [ebp-34]
 00737B24    lea         eax,[ebp-4]
 00737B27    call        @UStrLAsg
 00737B2C    push        737E0C;'*'
 00737B31    push        dword ptr ds:[902538];gvar_00902538:UnicodeString
 00737B37    push        737E0C;'*'
 00737B3C    push        737E54;''
 00737B41    push        737E64;'
'
 00737B46    push        737E30;'<'
 00737B4B    push        dword ptr [ebx+10]
 00737B4E    push        737E74;'>'
 00737B53    push        737E54;''
 00737B58    push        737E64;'
'
 00737B5D    push        dword ptr [ebp-4]
 00737B60    lea         eax,[ebp-13C]
 00737B66    mov         edx,0B
 00737B6B    call        @UStrCatN
 00737B70    mov         edx,dword ptr [ebp-13C]
 00737B76    lea         eax,[ebp-138]
 00737B7C    mov         ecx,0
 00737B81    call        @LStrFromUStr
 00737B86    mov         edx,dword ptr [ebp-138]
 00737B8C    lea         eax,[ebp-134]
 00737B92    mov         ecx,0FF
 00737B97    call        @LStrToString
 00737B9C    lea         edx,[ebp-134]
 00737BA2    mov         eax,edi
 00737BA4    call        006A2174
 00737BA9    mov         eax,dword ptr [ebx+14]
 00737BAC    call        006D5A18
 00737BB1    mov         edx,eax
 00737BB3    mov         eax,edi
 00737BB5    call        006A2E40
 00737BBA    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737BBF    mov         eax,dword ptr [eax]
 00737BC1    mov         edx,esi
 00737BC3    call        TFXNet.GetPanel
 00737BC8    test        eax,eax
>00737BCA    jne         00737D77
 00737BD0    cmp         byte ptr [ebx],1
>00737BD3    jne         00737D77
 00737BD9    mov         ecx,dword ptr [ebx+0C]
 00737BDC    cmp         ecx,0FF
>00737BE2    jbe         00737BE9
 00737BE4    call        @BoundErr
 00737BE9    mov         dl,1
 00737BEB    mov         eax,[006A4DA4];TFXPanel
 00737BF0    call        TFXPanel.Create;TFXPanel.Create
 00737BF5    mov         ecx,eax
 00737BF7    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737BFC    mov         eax,dword ptr [eax]
 00737BFE    mov         edx,esi
 00737C00    call        TFXNet.SetPanel
 00737C05    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737C0A    mov         eax,dword ptr [eax]
 00737C0C    mov         edx,esi
 00737C0E    call        TFXNet.GetPanel
 00737C13    mov         edx,dword ptr [ebx+0C]
 00737C16    mov         dword ptr [eax+4],edx;TFXPanel.iType:Integer
 00737C19    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737C1E    mov         eax,dword ptr [eax]
 00737C20    mov         edx,esi
 00737C22    call        TFXNet.GetPanel
 00737C27    mov         edi,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 00737C2A    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00737C2F    mov         eax,dword ptr [eax]
 00737C31    mov         edx,esi
 00737C33    call        TFXNet.GetPanel
 00737C38    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 00737C3B    cmp         eax,0FF
>00737C40    jbe         00737C47
 00737C42    call        @BoundErr
 00737C47    mov         byte ptr [edi+180],al
 00737C4D    mov         edx,esi
 00737C4F    cmp         edx,0FF
>00737C55    jbe         00737C5C
 00737C57    call        @BoundErr
 00737C5C    mov         eax,edi
 00737C5E    call        006A2BC4
 00737C63    push        737E0C;'*'
 00737C68    push        dword ptr ds:[902538];gvar_00902538:UnicodeString
 00737C6E    push        737E0C;'*'
 00737C73    push        737E54;''
 00737C78    push        737E64;'
'
 00737C7D    push        737E30;'<'
 00737C82    push        dword ptr [ebx+10]
 00737C85    push        737E74;'>'
 00737C8A    push        737E54;''
 00737C8F    push        737E64;'
'
 00737C94    lea         eax,[ebp-144]
 00737C9A    mov         edx,0A
 00737C9F    call        @UStrCatN
 00737CA4    mov         edx,dword ptr [ebp-144]
 00737CAA    lea         eax,[ebp-140]
 00737CB0    mov         ecx,0
 00737CB5    call        @LStrFromUStr
 00737CBA    mov         edx,dword ptr [ebp-140]
 00737CC0    lea         eax,[ebp-134]
 00737CC6    mov         ecx,0FF
 00737CCB    call        @LStrToString
 00737CD0    lea         edx,[ebp-134]
 00737CD6    mov         eax,edi
 00737CD8    call        006A2174
 00737CDD    test        esi,esi
>00737CDF    jne         00737D10
 00737CE1    mov         dx,1
 00737CE5    mov         eax,edi
 00737CE7    call        006A2C50
 00737CEC    xor         edx,edx
 00737CEE    mov         eax,edi
 00737CF0    call        006A293C
 00737CF5    mov         dl,3
 00737CF7    mov         eax,edi
 00737CF9    call        006A29B8
 00737CFE    xor         edx,edx
 00737D00    mov         eax,edi
 00737D02    call        006A2A30
 00737D07    mov         byte ptr [edi+10F],3
>00737D0E    jmp         00737D66
 00737D10    mov         eax,esi
 00737D12    sub         eax,1
>00737D15    jno         00737D1C
 00737D17    call        @IntOver
 00737D1C    imul        edx,eax,50
>00737D1F    jno         00737D26
 00737D21    call        @IntOver
 00737D26    add         edx,1
>00737D29    jno         00737D30
 00737D2B    call        @IntOver
 00737D30    cmp         edx,0FFFF
>00737D36    jbe         00737D3D
 00737D38    call        @BoundErr
 00737D3D    mov         eax,edi
 00737D3F    call        006A2C50
 00737D44    mov         dl,1
 00737D46    mov         eax,edi
 00737D48    call        006A293C
 00737D4D    mov         dl,4
 00737D4F    mov         eax,edi
 00737D51    call        006A29B8
 00737D56    mov         dl,1
 00737D58    mov         eax,edi
 00737D5A    call        006A2A30
 00737D5F    mov         byte ptr [edi+10F],4
 00737D66    mov         eax,dword ptr [ebx+14]
 00737D69    call        006D5A18
 00737D6E    mov         edx,eax
 00737D70    mov         eax,edi
 00737D72    call        006A2E40
 00737D77    inc         esi
 00737D78    add         ebx,38
 00737D7B    cmp         esi,21
>00737D7E    jne         007378FE
 00737D84    mov         eax,[007C491C];^gvar_008DF5CC
 00737D89    mov         byte ptr [eax],1
 00737D8C    mov         eax,dword ptr [ebp-10]
 00737D8F    call        TControl.Hide
 00737D94    xor         eax,eax
 00737D96    pop         edx
 00737D97    pop         ecx
 00737D98    pop         ecx
 00737D99    mov         dword ptr fs:[eax],edx
 00737D9C    push        737DF7
 00737DA1    lea         eax,[ebp-144]
 00737DA7    call        @UStrClr
 00737DAC    lea         eax,[ebp-140]
 00737DB2    call        @LStrClr
 00737DB7    lea         eax,[ebp-13C]
 00737DBD    call        @UStrClr
 00737DC2    lea         eax,[ebp-138]
 00737DC8    call        @LStrClr
 00737DCD    lea         eax,[ebp-34]
 00737DD0    mov         edx,2
 00737DD5    call        @UStrArrayClr
 00737DDA    lea         eax,[ebp-2C]
 00737DDD    call        @UStrClr
 00737DE2    lea         eax,[ebp-0C]
 00737DE5    mov         edx,3
 00737DEA    call        @UStrArrayClr
 00737DEF    ret
>00737DF0    jmp         @HandleFinally
>00737DF5    jmp         00737DA1
 00737DF7    pop         edi
 00737DF8    pop         esi
 00737DF9    pop         ebx
 00737DFA    mov         esp,ebp
 00737DFC    pop         ebp
 00737DFD    ret
*}
end;

//00737E78
procedure TFXNetFrame.btnCancelClick(Sender:TObject);
begin
{*
 00737E78    push        ebx
 00737E79    mov         ebx,eax
 00737E7B    cmp         byte ptr [ebx+338],0;TFXNetFrame.FModified:Boolean
>00737E82    je          00737EB4
 00737E84    push        134
 00737E89    mov         eax,[007C3E20];^'Changes you might have made in this data view will be lost.
Do you wan...
 00737E8E    call        @UStrToPWChar
 00737E93    mov         edx,eax
 00737E95    mov         ecx,737ECC
 00737E9A    mov         eax,[007C4A18];^Application:TApplication
 00737E9F    mov         eax,dword ptr [eax]
 00737EA1    call        TApplication.MessageBox
 00737EA6    cmp         eax,6
>00737EA9    jne         00737EBB
 00737EAB    mov         eax,ebx
 00737EAD    call        TControl.Hide
>00737EB2    jmp         00737EBB
 00737EB4    mov         eax,ebx
 00737EB6    call        TControl.Hide
 00737EBB    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 00737EC0    mov         eax,dword ptr [eax]
 00737EC2    call        TMainForm.DataFrameExit
 00737EC7    pop         ebx
 00737EC8    ret
*}
end;

//00737EDC
procedure TFXNetFrame.edNetNameChange(Sender:TObject);
begin
{*
 00737EDC    mov         byte ptr [eax+338],1;TFXNetFrame.FModified:Boolean
 00737EE3    ret
*}
end;

//00737EE4
procedure TFXNetFrame.btnAddClick(Sender:TObject);
begin
{*
 00737EE4    push        ebp
 00737EE5    mov         ebp,esp
 00737EE7    xor         ecx,ecx
 00737EE9    push        ecx
 00737EEA    push        ecx
 00737EEB    push        ecx
 00737EEC    push        ecx
 00737EED    push        ecx
 00737EEE    push        ebx
 00737EEF    push        esi
 00737EF0    push        edi
 00737EF1    mov         edi,eax
 00737EF3    xor         eax,eax
 00737EF5    push        ebp
 00737EF6    push        7380BA
 00737EFB    push        dword ptr fs:[eax]
 00737EFE    mov         dword ptr fs:[eax],esp
 00737F01    lea         edx,[ebp-8]
 00737F04    mov         eax,dword ptr [edi+2D0];TFXNetFrame.edPanelID:TEdit
 00737F0A    call        TControl.GetText
 00737F0F    mov         eax,dword ptr [ebp-8]
 00737F12    call        StrToInt
 00737F17    mov         ebx,eax
 00737F19    lea         edx,[ebp-10]
 00737F1C    mov         eax,dword ptr [edi+2D0];TFXNetFrame.edPanelID:TEdit
 00737F22    call        TControl.GetText
 00737F27    mov         ecx,dword ptr [ebp-10]
 00737F2A    lea         eax,[ebp-0C]
 00737F2D    mov         edx,7380D4;'00'
 00737F32    call        @UStrCat3
 00737F37    mov         eax,dword ptr [ebp-0C]
 00737F3A    lea         ecx,[ebp-4]
 00737F3D    mov         edx,2
 00737F42    call        00431F5C
 00737F47    cmp         byte ptr ds:[902C74],1;gvar_00902C74
>00737F4E    jne         00737F63
 00737F50    test        ebx,ebx
>00737F52    jne         00737F63
 00737F54    mov         eax,[007C3E10];^'Multipanel systems can not have panels with id = 0'
 00737F59    call        ShowMessage
>00737F5E    jmp         00738087
 00737F63    cmp         ebx,20
>00737F66    jbe         00737F6D
 00737F68    call        @BoundErr
 00737F6D    imul        esi,ebx,7
>00737F70    jno         00737F77
 00737F72    call        @IntOver
 00737F77    cmp         byte ptr [esi*8+90253C],0;gvar_0090253C:Pointer
>00737F7F    je          00737F90
 00737F81    mov         eax,[007C3E14];^'A panel with this ID already exists'
 00737F86    call        ShowMessage
>00737F8B    jmp         00738087
 00737F90    mov         byte ptr [esi*8+90253C],1;gvar_0090253C:Pointer
 00737F98    mov         dword ptr [esi*8+902540],ebx
 00737F9F    lea         eax,[esi*8+902544];gvar_00902544
 00737FA6    mov         edx,dword ptr [ebp-4]
 00737FA9    call        @UStrAsg
 00737FAE    mov         eax,dword ptr [edi+2D8];TFXNetFrame.cbPanelType:TComboBox
 00737FB4    mov         edx,dword ptr [eax]
 00737FB6    call        dword ptr [edx+108];TComboBox.GetItemIndex
 00737FBC    add         eax,3
>00737FBF    jno         00737FC6
 00737FC1    call        @IntOver
 00737FC6    mov         dword ptr [esi*8+902548],eax
 00737FCD    lea         edx,[ebp-14]
 00737FD0    mov         eax,dword ptr [edi+2DC];TFXNetFrame.edPanelName:TEdit
 00737FD6    call        TControl.GetText
 00737FDB    mov         edx,dword ptr [ebp-14]
 00737FDE    lea         eax,[esi*8+90254C];gvar_0090254C
 00737FE5    call        @UStrAsg
 00737FEA    lea         eax,[esi*8+902550];gvar_00902550
 00737FF1    mov         ecx,7380E8;';'
 00737FF6    mov         edx,dword ptr [ebp-4]
 00737FF9    call        @UStrCat3
 00737FFE    lea         eax,[esi*8+902558];gvar_00902558
 00738005    mov         edx,7380F8;'NA'
 0073800A    call        @UStrAsg
 0073800F    lea         eax,[esi*8+902560];gvar_00902560
 00738016    mov         edx,7380F8;'NA'
 0073801B    call        @UStrAsg
 00738020    lea         eax,[esi*8+902568];gvar_00902568
 00738027    mov         edx,7380F8;'NA'
 0073802C    call        @UStrAsg
 00738031    lea         eax,[esi*8+902570];gvar_00902570
 00738038    mov         edx,7380F8;'NA'
 0073803D    call        @UStrAsg
 00738042    mov         eax,edi
 00738044    call        0073844C
 00738049    cmp         byte ptr ds:[902C74],1;gvar_00902C74
>00738050    jne         00738072
 00738052    mov         ebx,dword ptr [edi+2D4];TFXNetFrame.udPanelID:TUpDown
 00738058    mov         eax,ebx
 0073805A    call        TUpDown.GetPosition
 0073805F    mov         edx,eax
 00738061    add         edx,1
>00738064    jno         0073806B
 00738066    call        @IntOver
 0073806B    mov         eax,ebx
 0073806D    call        TUpDown.SetPosition
 00738072    mov         eax,dword ptr [edi+2DC];TFXNetFrame.edPanelName:TEdit
 00738078    mov         edx,dword ptr [eax]
 0073807A    call        dword ptr [edx+104];TWinControl.SetFocus
 00738080    mov         byte ptr [edi+338],1;TFXNetFrame.FModified:Boolean
 00738087    xor         eax,eax
 00738089    pop         edx
 0073808A    pop         ecx
 0073808B    pop         ecx
 0073808C    mov         dword ptr fs:[eax],edx
 0073808F    push        7380C1
 00738094    lea         eax,[ebp-14]
 00738097    mov         edx,2
 0073809C    call        @UStrArrayClr
 007380A1    lea         eax,[ebp-0C]
 007380A4    call        @UStrClr
 007380A9    lea         eax,[ebp-8]
 007380AC    call        @UStrClr
 007380B1    lea         eax,[ebp-4]
 007380B4    call        @UStrClr
 007380B9    ret
>007380BA    jmp         @HandleFinally
>007380BF    jmp         00738094
 007380C1    pop         edi
 007380C2    pop         esi
 007380C3    pop         ebx
 007380C4    mov         esp,ebp
 007380C6    pop         ebp
 007380C7    ret
*}
end;

//00738100
procedure TFXNetFrame.btnModifyClick(Sender:TObject);
begin
{*
 00738100    push        ebp
 00738101    mov         ebp,esp
 00738103    xor         ecx,ecx
 00738105    push        ecx
 00738106    push        ecx
 00738107    push        ecx
 00738108    push        ecx
 00738109    push        ecx
 0073810A    push        ebx
 0073810B    push        esi
 0073810C    push        edi
 0073810D    mov         ebx,eax
 0073810F    xor         eax,eax
 00738111    push        ebp
 00738112    push        7381FE
 00738117    push        dword ptr fs:[eax]
 0073811A    mov         dword ptr fs:[eax],esp
 0073811D    lea         edx,[ebp-8]
 00738120    mov         eax,dword ptr [ebx+2D0];TFXNetFrame.edPanelID:TEdit
 00738126    call        TControl.GetText
 0073812B    mov         eax,dword ptr [ebp-8]
 0073812E    call        StrToInt
 00738133    mov         esi,eax
 00738135    lea         edx,[ebp-10]
 00738138    mov         eax,dword ptr [ebx+2D0];TFXNetFrame.edPanelID:TEdit
 0073813E    call        TControl.GetText
 00738143    mov         ecx,dword ptr [ebp-10]
 00738146    lea         eax,[ebp-0C]
 00738149    mov         edx,738218;'00'
 0073814E    call        @UStrCat3
 00738153    mov         eax,dword ptr [ebp-0C]
 00738156    lea         ecx,[ebp-4]
 00738159    mov         edx,2
 0073815E    call        00431F5C
 00738163    cmp         esi,20
>00738166    jbe         0073816D
 00738168    call        @BoundErr
 0073816D    imul        edi,esi,7
>00738170    jno         00738177
 00738172    call        @IntOver
 00738177    cmp         byte ptr [edi*8+90253C],0;gvar_0090253C:Pointer
>0073817F    je          007381CB
 00738181    mov         eax,dword ptr [ebx+2D8];TFXNetFrame.cbPanelType:TComboBox
 00738187    mov         edx,dword ptr [eax]
 00738189    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0073818F    add         eax,3
>00738192    jno         00738199
 00738194    call        @IntOver
 00738199    mov         dword ptr [edi*8+902548],eax
 007381A0    lea         edx,[ebp-14]
 007381A3    mov         eax,dword ptr [ebx+2DC];TFXNetFrame.edPanelName:TEdit
 007381A9    call        TControl.GetText
 007381AE    mov         edx,dword ptr [ebp-14]
 007381B1    lea         eax,[edi*8+90254C];gvar_0090254C
 007381B8    call        @UStrAsg
 007381BD    mov         eax,ebx
 007381BF    call        0073844C
 007381C4    mov         byte ptr [ebx+338],1;TFXNetFrame.FModified:Boolean
 007381CB    xor         eax,eax
 007381CD    pop         edx
 007381CE    pop         ecx
 007381CF    pop         ecx
 007381D0    mov         dword ptr fs:[eax],edx
 007381D3    push        738205
 007381D8    lea         eax,[ebp-14]
 007381DB    mov         edx,2
 007381E0    call        @UStrArrayClr
 007381E5    lea         eax,[ebp-0C]
 007381E8    call        @UStrClr
 007381ED    lea         eax,[ebp-8]
 007381F0    call        @UStrClr
 007381F5    lea         eax,[ebp-4]
 007381F8    call        @UStrClr
 007381FD    ret
>007381FE    jmp         @HandleFinally
>00738203    jmp         007381D8
 00738205    pop         edi
 00738206    pop         esi
 00738207    pop         ebx
 00738208    mov         esp,ebp
 0073820A    pop         ebp
 0073820B    ret
*}
end;

//00738220
procedure sub_00738220(?:TFXNetFrame; ?:Integer);
begin
{*
 00738220    push        ebx
 00738221    push        esi
 00738222    push        edi
 00738223    mov         ebx,edx
 00738225    mov         edi,902538;gvar_00902538:UnicodeString
 0073822A    cmp         ebx,20
>0073822D    jbe         00738234
 0073822F    call        @BoundErr
 00738234    imul        esi,ebx,7
>00738237    jno         0073823E
 00738239    call        @IntOver
 0073823E    mov         byte ptr [edi+esi*8+4],0
 00738243    xor         eax,eax
 00738245    mov         dword ptr [edi+esi*8+8],eax
 00738249    lea         eax,[edi+esi*8+0C]
 0073824D    call        @UStrClr
 00738252    xor         eax,eax
 00738254    mov         dword ptr [edi+esi*8+10],eax
 00738258    lea         eax,[edi+esi*8+14]
 0073825C    call        @UStrClr
 00738261    lea         eax,[edi+esi*8+18]
 00738265    call        @UStrClr
 0073826A    xor         eax,eax
 0073826C    mov         dword ptr [edi+esi*8+1C],eax
 00738270    lea         eax,[edi+esi*8+20]
 00738274    call        @UStrClr
 00738279    xor         eax,eax
 0073827B    mov         dword ptr [edi+esi*8+24],eax
 0073827F    lea         eax,[edi+esi*8+28]
 00738283    call        @UStrClr
 00738288    xor         eax,eax
 0073828A    mov         dword ptr [edi+esi*8+2C],eax
 0073828E    lea         eax,[edi+esi*8+30]
 00738292    call        @UStrClr
 00738297    xor         eax,eax
 00738299    mov         dword ptr [edi+esi*8+34],eax
 0073829D    lea         eax,[edi+esi*8+38]
 007382A1    call        @UStrClr
 007382A6    pop         edi
 007382A7    pop         esi
 007382A8    pop         ebx
 007382A9    ret
*}
end;

//007382AC
procedure TFXNetFrame.btnDeleteClick(Sender:TObject);
begin
{*
 007382AC    push        ebp
 007382AD    mov         ebp,esp
 007382AF    xor         ecx,ecx
 007382B1    push        ecx
 007382B2    push        ecx
 007382B3    push        ecx
 007382B4    push        ecx
 007382B5    push        ebx
 007382B6    push        esi
 007382B7    mov         ebx,eax
 007382B9    xor         eax,eax
 007382BB    push        ebp
 007382BC    push        738352
 007382C1    push        dword ptr fs:[eax]
 007382C4    mov         dword ptr fs:[eax],esp
 007382C7    lea         edx,[ebp-8]
 007382CA    mov         eax,dword ptr [ebx+2D0];TFXNetFrame.edPanelID:TEdit
 007382D0    call        TControl.GetText
 007382D5    mov         eax,dword ptr [ebp-8]
 007382D8    call        StrToInt
 007382DD    mov         esi,eax
 007382DF    lea         edx,[ebp-10]
 007382E2    mov         eax,dword ptr [ebx+2D0];TFXNetFrame.edPanelID:TEdit
 007382E8    call        TControl.GetText
 007382ED    mov         ecx,dword ptr [ebp-10]
 007382F0    lea         eax,[ebp-0C]
 007382F3    mov         edx,73836C;'00'
 007382F8    call        @UStrCat3
 007382FD    mov         eax,dword ptr [ebp-0C]
 00738300    lea         ecx,[ebp-4]
 00738303    mov         edx,2
 00738308    call        00431F5C
 0073830D    mov         edx,esi
 0073830F    mov         eax,ebx
 00738311    call        00738220
 00738316    mov         eax,ebx
 00738318    call        0073844C
 0073831D    mov         byte ptr [ebx+338],1;TFXNetFrame.FModified:Boolean
 00738324    xor         eax,eax
 00738326    pop         edx
 00738327    pop         ecx
 00738328    pop         ecx
 00738329    mov         dword ptr fs:[eax],edx
 0073832C    push        738359
 00738331    lea         eax,[ebp-10]
 00738334    call        @UStrClr
 00738339    lea         eax,[ebp-0C]
 0073833C    call        @UStrClr
 00738341    lea         eax,[ebp-8]
 00738344    call        @UStrClr
 00738349    lea         eax,[ebp-4]
 0073834C    call        @UStrClr
 00738351    ret
>00738352    jmp         @HandleFinally
>00738357    jmp         00738331
 00738359    pop         esi
 0073835A    pop         ebx
 0073835B    mov         esp,ebp
 0073835D    pop         ebp
 0073835E    ret
*}
end;

//00738374
procedure TFXNetFrame.lvPanelsSelectItem(Sender:TObject; Item:TListItem; Selected:Boolean);
begin
{*
 00738374    push        ebp
 00738375    mov         ebp,esp
 00738377    push        0
 00738379    push        0
 0073837B    push        ebx
 0073837C    push        esi
 0073837D    push        edi
 0073837E    mov         esi,ecx
 00738380    mov         ebx,eax
 00738382    xor         eax,eax
 00738384    push        ebp
 00738385    push        73843C
 0073838A    push        dword ptr fs:[eax]
 0073838D    mov         dword ptr fs:[eax],esp
 00738390    mov         eax,dword ptr [esi+20];TListItem.FCaption:string
 00738393    call        StrToInt
 00738398    mov         edx,eax
 0073839A    mov         eax,dword ptr [ebx+2D4];TFXNetFrame.udPanelID:TUpDown
 007383A0    call        TUpDown.SetPosition
 007383A5    lea         ecx,[ebp-4]
 007383A8    xor         edx,edx
 007383AA    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 007383AD    mov         edi,dword ptr [eax]
 007383AF    call        dword ptr [edi+0C];TStrings.Get
 007383B2    mov         edx,dword ptr [ebp-4]
 007383B5    mov         eax,dword ptr [ebx+2D8];TFXNetFrame.cbPanelType:TComboBox
 007383BB    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 007383C1    mov         ecx,dword ptr [eax]
 007383C3    call        dword ptr [ecx+58];TStrings.IndexOf
 007383C6    mov         edx,eax
 007383C8    mov         eax,dword ptr [ebx+2D8];TFXNetFrame.cbPanelType:TComboBox
 007383CE    mov         ecx,dword ptr [eax]
 007383D0    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 007383D6    lea         ecx,[ebp-8]
 007383D9    mov         edx,1
 007383DE    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 007383E1    mov         edi,dword ptr [eax]
 007383E3    call        dword ptr [edi+0C];TStrings.Get
 007383E6    mov         edx,dword ptr [ebp-8]
 007383E9    mov         eax,dword ptr [ebx+2DC];TFXNetFrame.edPanelName:TEdit
 007383EF    call        TControl.SetText
 007383F4    mov         dl,1
 007383F6    mov         eax,dword ptr [ebx+2E4];TFXNetFrame.btnModify:TButton
 007383FC    mov         ecx,dword ptr [eax]
 007383FE    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00738404    mov         dl,1
 00738406    mov         eax,dword ptr [ebx+2E8];TFXNetFrame.btnDelete:TButton
 0073840C    mov         ecx,dword ptr [eax]
 0073840E    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00738414    mov         eax,dword ptr [esi+20];TListItem.FCaption:string
 00738417    call        StrToInt
 0073841C    mov         [00902C78],eax;gvar_00902C78:Integer
 00738421    xor         eax,eax
 00738423    pop         edx
 00738424    pop         ecx
 00738425    pop         ecx
 00738426    mov         dword ptr fs:[eax],edx
 00738429    push        738443
 0073842E    lea         eax,[ebp-8]
 00738431    mov         edx,2
 00738436    call        @UStrArrayClr
 0073843B    ret
>0073843C    jmp         @HandleFinally
>00738441    jmp         0073842E
 00738443    pop         edi
 00738444    pop         esi
 00738445    pop         ebx
 00738446    pop         ecx
 00738447    pop         ecx
 00738448    pop         ebp
 00738449    ret         4
*}
end;

//0073844C
procedure sub_0073844C(?:TFXNetFrame);
begin
{*
 0073844C    push        ebx
 0073844D    push        esi
 0073844E    push        edi
 0073844F    push        ebp
 00738450    mov         ebp,eax
 00738452    mov         eax,dword ptr [ebp+2EC];TFXNetFrame.lvPanels:TListView
 00738458    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073845E    call        TListItems.BeginUpdate
 00738463    mov         eax,dword ptr [ebp+2EC];TFXNetFrame.lvPanels:TListView
 00738469    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073846F    call        TListItems.Clear
 00738474    mov         esi,21
 00738479    mov         ebx,90253C;gvar_0090253C:Pointer
 0073847E    cmp         byte ptr [ebx],1
>00738481    jne         007384D0
 00738483    mov         eax,dword ptr [ebp+2EC];TFXNetFrame.lvPanels:TListView
 00738489    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073848F    call        TListItems.Add
 00738494    mov         edi,eax
 00738496    mov         edx,dword ptr [ebx+8]
 00738499    mov         eax,edi
 0073849B    call        TListItem.SetCaption
 007384A0    mov         eax,dword ptr [ebx+0C]
 007384A3    add         eax,0FFFFFFFD
 007384A6    cmp         eax,5
>007384A9    jbe         007384B0
 007384AB    call        @BoundErr
 007384B0    add         eax,3
 007384B3    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 007384B9    mov         edx,dword ptr [edx+eax*4-0C]
 007384BD    mov         eax,dword ptr [edi+8];TListItem.FSubItems:TStrings
 007384C0    mov         ecx,dword ptr [eax]
 007384C2    call        dword ptr [ecx+3C];TStrings.Add
 007384C5    mov         eax,dword ptr [edi+8];TListItem.FSubItems:TStrings
 007384C8    mov         edx,dword ptr [ebx+10]
 007384CB    mov         ecx,dword ptr [eax]
 007384CD    call        dword ptr [ecx+3C];TStrings.Add
 007384D0    add         ebx,38
 007384D3    dec         esi
>007384D4    jne         0073847E
 007384D6    mov         eax,dword ptr [ebp+2EC];TFXNetFrame.lvPanels:TListView
 007384DC    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007384E2    call        TListItems.EndUpdate
 007384E7    pop         ebp
 007384E8    pop         edi
 007384E9    pop         esi
 007384EA    pop         ebx
 007384EB    ret
*}
end;

//007384EC
procedure sub_007384EC(?:TFXNetFrame);
begin
{*
 007384EC    push        ebp
 007384ED    mov         ebp,esp
 007384EF    add         esp,0FFFFFFF8
 007384F2    push        ebx
 007384F3    push        esi
 007384F4    push        edi
 007384F5    xor         edx,edx
 007384F7    mov         dword ptr [ebp-8],edx
 007384FA    mov         dword ptr [ebp-4],eax
 007384FD    xor         eax,eax
 007384FF    push        ebp
 00738500    push        7385FE
 00738505    push        dword ptr fs:[eax]
 00738508    mov         dword ptr fs:[eax],esp
 0073850B    mov         eax,dword ptr [ebp-4]
 0073850E    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738514    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073851A    call        TListItems.BeginUpdate
 0073851F    mov         eax,dword ptr [ebp-4]
 00738522    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738528    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073852E    call        TListItems.Clear
 00738533    mov         edi,21
 00738538    mov         ebx,90253C;gvar_0090253C:Pointer
 0073853D    cmp         byte ptr [ebx],0
>00738540    je          0073859D
 00738542    mov         eax,dword ptr [ebp-4]
 00738545    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 0073854B    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00738551    call        TListItems.Add
 00738556    mov         esi,eax
 00738558    mov         edx,dword ptr [ebx+8]
 0073855B    mov         eax,esi
 0073855D    call        TListItem.SetCaption
 00738562    mov         eax,dword ptr [ebx+0C]
 00738565    add         eax,0FFFFFFFD
 00738568    cmp         eax,5
>0073856B    jbe         00738572
 0073856D    call        @BoundErr
 00738572    add         eax,3
 00738575    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 0073857B    mov         edx,dword ptr [edx+eax*4-0C]
 0073857F    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00738582    mov         ecx,dword ptr [eax]
 00738584    call        dword ptr [ecx+3C];TStrings.Add
 00738587    mov         edx,dword ptr [ebx+10]
 0073858A    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 0073858D    mov         ecx,dword ptr [eax]
 0073858F    call        dword ptr [ecx+3C];TStrings.Add
 00738592    mov         edx,dword ptr [ebx+14]
 00738595    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00738598    mov         ecx,dword ptr [eax]
 0073859A    call        dword ptr [ecx+3C];TStrings.Add
 0073859D    add         ebx,38
 007385A0    dec         edi
>007385A1    jne         0073853D
 007385A3    mov         eax,dword ptr [ebp-4]
 007385A6    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 007385AC    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007385B2    call        TListItems.EndUpdate
 007385B7    mov         eax,dword ptr [ebp-4]
 007385BA    call        00738A78
 007385BF    lea         edx,[ebp-8]
 007385C2    call        IntToStr
 007385C7    lea         eax,[ebp-8]
 007385CA    mov         edx,dword ptr ds:[7C4C9C];^gvar_007C2BE4
 007385D0    mov         edx,dword ptr [edx]
 007385D2    call        @UStrCat
 007385D7    mov         edx,dword ptr [ebp-8]
 007385DA    mov         eax,dword ptr [ebp-4]
 007385DD    mov         eax,dword ptr [eax+324];TFXNetFrame.lbNumOfConnections:TLabel
 007385E3    call        TControl.SetText
 007385E8    xor         eax,eax
 007385EA    pop         edx
 007385EB    pop         ecx
 007385EC    pop         ecx
 007385ED    mov         dword ptr fs:[eax],edx
 007385F0    push        738605
 007385F5    lea         eax,[ebp-8]
 007385F8    call        @UStrClr
 007385FD    ret
>007385FE    jmp         @HandleFinally
>00738603    jmp         007385F5
 00738605    pop         edi
 00738606    pop         esi
 00738607    pop         ebx
 00738608    pop         ecx
 00738609    pop         ecx
 0073860A    pop         ebp
 0073860B    ret
*}
end;

//0073860C
procedure sub_0073860C(?:TFXNetFrame);
begin
{*
 0073860C    push        ebp
 0073860D    mov         ebp,esp
 0073860F    add         esp,0FFFFFF58
 00738615    push        ebx
 00738616    push        esi
 00738617    push        edi
 00738618    xor         edx,edx
 0073861A    mov         dword ptr [ebp-0A8],edx
 00738620    mov         dword ptr [ebp-0A4],edx
 00738626    mov         dword ptr [ebp-0A0],edx
 0073862C    mov         dword ptr [ebp-9C],edx
 00738632    mov         dword ptr [ebp-3C],eax
 00738635    lea         eax,[ebp-38]
 00738638    mov         edx,dword ptr ds:[736C44];TTmpPanData
 0073863E    call        @AddRefRecord
 00738643    xor         eax,eax
 00738645    push        ebp
 00738646    push        738A40
 0073864B    push        dword ptr fs:[eax]
 0073864E    mov         dword ptr fs:[eax],esp
 00738651    lea         eax,[ebp-95]
 00738657    xor         ecx,ecx
 00738659    mov         edx,21
 0073865E    call        @FillChar
 00738663    mov         byte ptr [ebp-41],0
 00738667    mov         byte ptr [ebp-42],0
 0073866B    mov         byte ptr [ebp-43],0
 0073866F    mov         eax,dword ptr [ebp-3C]
 00738672    mov         eax,dword ptr [eax+30C];TFXNetFrame.lvLoops:TListView
 00738678    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073867E    call        TListItems.BeginUpdate
 00738683    mov         eax,dword ptr [ebp-3C]
 00738686    mov         eax,dword ptr [eax+30C];TFXNetFrame.lvLoops:TListView
 0073868C    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00738692    call        TListItems.Clear
 00738697    xor         eax,eax
 00738699    mov         dword ptr [ebp-40],eax
 0073869C    mov         esi,90253C;gvar_0090253C:Pointer
 007386A1    cmp         byte ptr [esi],0
>007386A4    je          00738878
 007386AA    lea         eax,[ebp-38]
 007386AD    mov         edx,esi
 007386AF    mov         ecx,dword ptr ds:[736C44];TTmpPanData
 007386B5    call        @CopyRecord
 007386BA    mov         eax,dword ptr [ebp-34]
 007386BD    cmp         eax,dword ptr [ebp-40]
>007386C0    je          007386C6
 007386C2    mov         byte ptr [ebp-41],1
 007386C6    mov         edx,eax
 007386C8    cmp         edx,20
>007386CB    jbe         007386D2
 007386CD    call        @BoundErr
 007386D2    cmp         byte ptr [ebp+edx-95],1
>007386DA    jne         007386E0
 007386DC    mov         byte ptr [ebp-41],1
 007386E0    mov         byte ptr [ebp+edx-95],1
 007386E8    xor         edi,edi
 007386EA    mov         eax,90253C;gvar_0090253C:Pointer
 007386EF    cmp         edi,dword ptr [ebp-40]
>007386F2    je          007387D3
 007386F8    cmp         byte ptr [eax],0
>007386FB    je          007387D3
 00738701    cmp         dword ptr [ebp-40],0
>00738705    jne         0073870B
 00738707    mov         byte ptr [ebp-41],1
 0073870B    mov         edx,dword ptr [ebp-20]
 0073870E    test        edx,edx
>00738710    je          0073873D
 00738712    mov         dword ptr [ebp-48],edx
 00738715    mov         edx,dword ptr [eax+18]
 00738718    mov         dword ptr [ebp-4C],edx
 0073871B    mov         edx,dword ptr [eax+20]
 0073871E    mov         dword ptr [ebp-50],edx
 00738721    mov         edx,dword ptr [ebp-48]
 00738724    cmp         edx,dword ptr [ebp-4C]
 00738727    setge       cl
 0073872A    mov         edx,dword ptr [ebp-48]
 0073872D    cmp         edx,dword ptr [ebp-50]
 00738730    setle       dl
 00738733    and         cl,dl
 00738735    test        cl,cl
>00738737    je          0073873D
 00738739    mov         byte ptr [ebp-42],1
 0073873D    mov         edx,dword ptr [ebp-18]
 00738740    test        edx,edx
>00738742    je          0073876F
 00738744    mov         dword ptr [ebp-54],edx
 00738747    mov         edx,dword ptr [eax+18]
 0073874A    mov         dword ptr [ebp-58],edx
 0073874D    mov         edx,dword ptr [eax+20]
 00738750    mov         dword ptr [ebp-5C],edx
 00738753    mov         edx,dword ptr [ebp-54]
 00738756    cmp         edx,dword ptr [ebp-58]
 00738759    setge       dl
 0073875C    mov         ecx,dword ptr [ebp-54]
 0073875F    cmp         ecx,dword ptr [ebp-5C]
 00738762    setle       cl
 00738765    and         dl,cl
 00738767    test        dl,dl
>00738769    je          0073876F
 0073876B    mov         byte ptr [ebp-42],1
 0073876F    mov         edx,dword ptr [ebp-10]
 00738772    test        edx,edx
>00738774    je          007387A1
 00738776    mov         dword ptr [ebp-60],edx
 00738779    mov         edx,dword ptr [eax+28]
 0073877C    mov         dword ptr [ebp-64],edx
 0073877F    mov         edx,dword ptr [eax+30]
 00738782    mov         dword ptr [ebp-68],edx
 00738785    mov         edx,dword ptr [ebp-60]
 00738788    cmp         edx,dword ptr [ebp-64]
 0073878B    setge       dl
 0073878E    mov         ecx,dword ptr [ebp-60]
 00738791    cmp         ecx,dword ptr [ebp-68]
 00738794    setle       cl
 00738797    and         dl,cl
 00738799    test        dl,dl
>0073879B    je          007387A1
 0073879D    mov         byte ptr [ebp-43],1
 007387A1    mov         edx,dword ptr [ebp-8]
 007387A4    test        edx,edx
>007387A6    je          007387D3
 007387A8    mov         dword ptr [ebp-6C],edx
 007387AB    mov         edx,dword ptr [eax+28]
 007387AE    mov         dword ptr [ebp-70],edx
 007387B1    mov         edx,dword ptr [eax+30]
 007387B4    mov         dword ptr [ebp-74],edx
 007387B7    mov         edx,dword ptr [ebp-6C]
 007387BA    cmp         edx,dword ptr [ebp-70]
 007387BD    setge       dl
 007387C0    mov         ecx,dword ptr [ebp-6C]
 007387C3    cmp         ecx,dword ptr [ebp-74]
 007387C6    setle       cl
 007387C9    and         dl,cl
 007387CB    test        dl,dl
>007387CD    je          007387D3
 007387CF    mov         byte ptr [ebp-43],1
 007387D3    inc         edi
 007387D4    add         eax,38
 007387D7    cmp         edi,21
>007387DA    jne         007386EF
 007387E0    mov         eax,dword ptr [ebp-3C]
 007387E3    mov         eax,dword ptr [eax+30C];TFXNetFrame.lvLoops:TListView
 007387E9    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007387EF    call        TListItems.Add
 007387F4    mov         ebx,eax
 007387F6    mov         edx,dword ptr [esi+8]
 007387F9    mov         eax,ebx
 007387FB    call        TListItem.SetCaption
 00738800    mov         eax,dword ptr [esi+0C]
 00738803    add         eax,0FFFFFFFD
 00738806    cmp         eax,5
>00738809    jbe         00738810
 0073880B    call        @BoundErr
 00738810    add         eax,3
 00738813    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 00738819    mov         edx,dword ptr [edx+eax*4-0C]
 0073881D    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 00738820    mov         ecx,dword ptr [eax]
 00738822    call        dword ptr [ecx+3C];TStrings.Add
 00738825    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 00738828    mov         edx,dword ptr [esi+10]
 0073882B    mov         ecx,dword ptr [eax]
 0073882D    call        dword ptr [ecx+3C];TStrings.Add
 00738830    lea         edx,[ebp-9C]
 00738836    mov         eax,dword ptr [esi+4]
 00738839    call        IntToStr
 0073883E    mov         edx,dword ptr [ebp-9C]
 00738844    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 00738847    mov         ecx,dword ptr [eax]
 00738849    call        dword ptr [ecx+3C];TStrings.Add
 0073884C    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 0073884F    mov         edx,dword ptr [esi+1C]
 00738852    mov         ecx,dword ptr [eax]
 00738854    call        dword ptr [ecx+3C];TStrings.Add
 00738857    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 0073885A    mov         edx,dword ptr [esi+24]
 0073885D    mov         ecx,dword ptr [eax]
 0073885F    call        dword ptr [ecx+3C];TStrings.Add
 00738862    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 00738865    mov         edx,dword ptr [esi+2C]
 00738868    mov         ecx,dword ptr [eax]
 0073886A    call        dword ptr [ecx+3C];TStrings.Add
 0073886D    mov         eax,dword ptr [ebx+8];TListItem.FSubItems:TStrings
 00738870    mov         edx,dword ptr [esi+34]
 00738873    mov         ecx,dword ptr [eax]
 00738875    call        dword ptr [ecx+3C];TStrings.Add
 00738878    inc         dword ptr [ebp-40]
 0073887B    add         esi,38
 0073887E    cmp         dword ptr [ebp-40],21
>00738882    jne         007386A1
 00738888    mov         eax,dword ptr [ebp-3C]
 0073888B    mov         eax,dword ptr [eax+30C];TFXNetFrame.lvLoops:TListView
 00738891    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00738897    call        TListItems.EndUpdate
 0073889C    cmp         byte ptr [ebp-41],0
>007388A0    je          007388B4
 007388A2    mov         eax,dword ptr [ebp-3C]
 007388A5    mov         eax,dword ptr [eax+330];TFXNetFrame.lbErrorInPanelId:TLabel
 007388AB    mov         dl,1
 007388AD    call        TControl.SetVisible
>007388B2    jmp         007388C4
 007388B4    mov         eax,dword ptr [ebp-3C]
 007388B7    mov         eax,dword ptr [eax+330];TFXNetFrame.lbErrorInPanelId:TLabel
 007388BD    xor         edx,edx
 007388BF    call        TControl.SetVisible
 007388C4    cmp         byte ptr [ebp-42],0
>007388C8    je          007388DC
 007388CA    mov         eax,dword ptr [ebp-3C]
 007388CD    mov         eax,dword ptr [eax+32C];TFXNetFrame.lbOverlappingLoops:TLabel
 007388D3    mov         dl,1
 007388D5    call        TControl.SetVisible
>007388DA    jmp         007388EC
 007388DC    mov         eax,dword ptr [ebp-3C]
 007388DF    mov         eax,dword ptr [eax+32C];TFXNetFrame.lbOverlappingLoops:TLabel
 007388E5    xor         edx,edx
 007388E7    call        TControl.SetVisible
 007388EC    cmp         byte ptr [ebp-43],0
>007388F0    je          00738904
 007388F2    mov         eax,dword ptr [ebp-3C]
 007388F5    mov         eax,dword ptr [eax+328];TFXNetFrame.lbOverlappingZones:TLabel
 007388FB    mov         dl,1
 007388FD    call        TControl.SetVisible
>00738902    jmp         00738914
 00738904    mov         eax,dword ptr [ebp-3C]
 00738907    mov         eax,dword ptr [eax+328];TFXNetFrame.lbOverlappingZones:TLabel
 0073890D    xor         edx,edx
 0073890F    call        TControl.SetVisible
 00738914    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00738919    mov         eax,dword ptr [eax]
 0073891B    mov         eax,dword ptr [eax+90]
 00738921    mov         edx,dword ptr [eax]
 00738923    call        dword ptr [edx+48]
 00738926    cmp         byte ptr [ebp-41],0
>0073892A    je          00738958
 0073892C    lea         edx,[ebp-0A0]
 00738932    mov         eax,dword ptr [ebp-3C]
 00738935    mov         eax,dword ptr [eax+330];TFXNetFrame.lbErrorInPanelId:TLabel
 0073893B    call        TControl.GetText
 00738940    mov         edx,dword ptr [ebp-0A0]
 00738946    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073894B    mov         eax,dword ptr [eax]
 0073894D    mov         eax,dword ptr [eax+90]
 00738953    mov         ecx,dword ptr [eax]
 00738955    call        dword ptr [ecx+3C]
 00738958    cmp         byte ptr [ebp-42],0
>0073895C    je          0073898A
 0073895E    lea         edx,[ebp-0A4]
 00738964    mov         eax,dword ptr [ebp-3C]
 00738967    mov         eax,dword ptr [eax+32C];TFXNetFrame.lbOverlappingLoops:TLabel
 0073896D    call        TControl.GetText
 00738972    mov         edx,dword ptr [ebp-0A4]
 00738978    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0073897D    mov         eax,dword ptr [eax]
 0073897F    mov         eax,dword ptr [eax+90]
 00738985    mov         ecx,dword ptr [eax]
 00738987    call        dword ptr [ecx+3C]
 0073898A    cmp         byte ptr [ebp-43],0
>0073898E    je          007389BC
 00738990    lea         edx,[ebp-0A8]
 00738996    mov         eax,dword ptr [ebp-3C]
 00738999    mov         eax,dword ptr [eax+328];TFXNetFrame.lbOverlappingZones:TLabel
 0073899F    call        TControl.GetText
 007389A4    mov         edx,dword ptr [ebp-0A8]
 007389AA    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007389AF    mov         eax,dword ptr [eax]
 007389B1    mov         eax,dword ptr [eax+90]
 007389B7    mov         ecx,dword ptr [eax]
 007389B9    call        dword ptr [ecx+3C]
 007389BC    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007389C1    mov         eax,dword ptr [eax]
 007389C3    mov         eax,dword ptr [eax+90]
 007389C9    mov         edx,dword ptr [eax]
 007389CB    call        dword ptr [edx+14]
 007389CE    test        eax,eax
>007389D0    jle         00738A09
 007389D2    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007389D7    mov         eax,dword ptr [eax]
 007389D9    mov         eax,dword ptr [eax+47C]
 007389DF    mov         dl,1
 007389E1    mov         ecx,dword ptr [eax]
 007389E3    call        dword ptr [ecx+88]
 007389E9    mov         eax,[007C449C];^gvar_009037D0:TMainForm
 007389EE    mov         eax,dword ptr [eax]
 007389F0    mov         eax,dword ptr [eax+4C4]
 007389F6    mov         dl,1
 007389F8    call        TTimer.SetEnabled
 007389FD    mov         eax,[007C4E54];^gvar_007CA84C:TErrorFrm
 00738A02    mov         eax,dword ptr [eax]
 00738A04    call        TErrorFrm.Show
 00738A09    xor         eax,eax
 00738A0B    pop         edx
 00738A0C    pop         ecx
 00738A0D    pop         ecx
 00738A0E    mov         dword ptr fs:[eax],edx
 00738A11    push        738A47
 00738A16    lea         eax,[ebp-0A8]
 00738A1C    mov         edx,3
 00738A21    call        @UStrArrayClr
 00738A26    lea         eax,[ebp-9C]
 00738A2C    call        @UStrClr
 00738A31    lea         eax,[ebp-38]
 00738A34    mov         edx,dword ptr ds:[736C44];TTmpPanData
 00738A3A    call        @FinalizeRecord
 00738A3F    ret
>00738A40    jmp         @HandleFinally
>00738A45    jmp         00738A16
 00738A47    pop         edi
 00738A48    pop         esi
 00738A49    pop         ebx
 00738A4A    mov         esp,ebp
 00738A4C    pop         ebp
 00738A4D    ret
*}
end;

//00738A50
procedure TFXNetFrame.PageControl1Change(Sender:TObject);
begin
{*
 00738A50    push        ebx
 00738A51    mov         ebx,eax
 00738A53    mov         eax,dword ptr [ebx+2F0];TFXNetFrame.PageControl1:TPageControl
 00738A59    call        TPageControl.GetTabIndex
 00738A5E    dec         eax
>00738A5F    je          00738A66
 00738A61    dec         eax
>00738A62    je          00738A6F
>00738A64    jmp         00738A76
 00738A66    mov         eax,ebx
 00738A68    call        007384EC
 00738A6D    pop         ebx
 00738A6E    ret
 00738A6F    mov         eax,ebx
 00738A71    call        0073860C
 00738A76    pop         ebx
 00738A77    ret
*}
end;

//00738A78
{*function sub_00738A78(?:TFXNetFrame):?;
begin
 00738A78    push        ebp
 00738A79    mov         ebp,esp
 00738A7B    add         esp,0FFFFFFE0
 00738A7E    push        ebx
 00738A7F    push        esi
 00738A80    push        edi
 00738A81    xor         edx,edx
 00738A83    mov         dword ptr [ebp-20],edx
 00738A86    mov         dword ptr [ebp-4],edx
 00738A89    mov         dword ptr [ebp-8],edx
 00738A8C    mov         dword ptr [ebp-0C],eax
 00738A8F    xor         eax,eax
 00738A91    push        ebp
 00738A92    push        738BE3
 00738A97    push        dword ptr fs:[eax]
 00738A9A    mov         dword ptr fs:[eax],esp
 00738A9D    xor         eax,eax
 00738A9F    mov         dword ptr [ebp-10],eax
 00738AA2    mov         eax,dword ptr [ebp-0C]
 00738AA5    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738AAB    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00738AB1    call        TListItems.GetCount
 00738AB6    sub         eax,1
>00738AB9    jno         00738AC0
 00738ABB    call        @IntOver
 00738AC0    test        eax,eax
>00738AC2    jl          00738BC0
 00738AC8    inc         eax
 00738AC9    mov         dword ptr [ebp-1C],eax
 00738ACC    mov         dword ptr [ebp-14],0
 00738AD3    lea         eax,[ebp-8]
 00738AD6    call        @UStrClr
 00738ADB    mov         eax,dword ptr [ebp-0C]
 00738ADE    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738AE4    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00738AEA    mov         edx,dword ptr [ebp-14]
 00738AED    call        TListItems.GetItem
 00738AF2    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 00738AF5    lea         ecx,[ebp-4]
 00738AF8    mov         edx,2
 00738AFD    mov         ebx,dword ptr [eax]
 00738AFF    call        dword ptr [ebx+0C];TStrings.Get
 00738B02    mov         eax,dword ptr [ebp-4]
 00738B05    test        eax,eax
>00738B07    je          00738B0E
 00738B09    sub         eax,4
 00738B0C    mov         eax,dword ptr [eax]
 00738B0E    mov         esi,eax
 00738B10    test        esi,esi
>00738B12    jle         00738BB4
 00738B18    mov         ebx,1
 00738B1D    mov         eax,dword ptr [ebp-4]
 00738B20    dec         ebx
 00738B21    test        eax,eax
>00738B23    je          00738B2A
 00738B25    cmp         ebx,dword ptr [eax-4]
>00738B28    jb          00738B2F
 00738B2A    call        @BoundErr
 00738B2F    inc         ebx
 00738B30    cmp         word ptr [eax+ebx*2-2],3B
>00738B36    je          00738B65
 00738B38    lea         eax,[ebp-20]
 00738B3B    mov         edx,dword ptr [ebp-4]
 00738B3E    dec         ebx
 00738B3F    test        edx,edx
>00738B41    je          00738B48
 00738B43    cmp         ebx,dword ptr [edx-4]
>00738B46    jb          00738B4D
 00738B48    call        @BoundErr
 00738B4D    inc         ebx
 00738B4E    movzx       edx,word ptr [edx+ebx*2-2]
 00738B53    call        @UStrFromWChar
 00738B58    mov         edx,dword ptr [ebp-20]
 00738B5B    lea         eax,[ebp-8]
 00738B5E    call        @UStrCat
>00738B63    jmp         00738BAC
 00738B65    lea         edx,[ebp-18]
 00738B68    mov         eax,dword ptr [ebp-8]
 00738B6B    call        @ValLong
 00738B70    mov         edi,eax
 00738B72    test        edi,edi
>00738B74    jle         00738BA4
 00738B76    mov         eax,dword ptr [ebp-0C]
 00738B79    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738B7F    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00738B85    mov         edx,dword ptr [ebp-14]
 00738B88    call        TListItems.GetItem
 00738B8D    mov         eax,dword ptr [eax+20];TListItem.FCaption:string
 00738B90    call        StrToInt
 00738B95    cmp         edi,eax
>00738B97    je          00738BA4
 00738B99    add         dword ptr [ebp-10],1
>00738B9D    jno         00738BA4
 00738B9F    call        @IntOver
 00738BA4    lea         eax,[ebp-8]
 00738BA7    call        @UStrClr
 00738BAC    inc         ebx
 00738BAD    dec         esi
>00738BAE    jne         00738B1D
 00738BB4    inc         dword ptr [ebp-14]
 00738BB7    dec         dword ptr [ebp-1C]
>00738BBA    jne         00738AD3
 00738BC0    xor         eax,eax
 00738BC2    pop         edx
 00738BC3    pop         ecx
 00738BC4    pop         ecx
 00738BC5    mov         dword ptr fs:[eax],edx
 00738BC8    push        738BEA
 00738BCD    lea         eax,[ebp-20]
 00738BD0    call        @UStrClr
 00738BD5    lea         eax,[ebp-8]
 00738BD8    mov         edx,2
 00738BDD    call        @UStrArrayClr
 00738BE2    ret
>00738BE3    jmp         @HandleFinally
>00738BE8    jmp         00738BCD
 00738BEA    mov         eax,dword ptr [ebp-10]
 00738BED    pop         edi
 00738BEE    pop         esi
 00738BEF    pop         ebx
 00738BF0    mov         esp,ebp
 00738BF2    pop         ebp
 00738BF3    ret
end;*}

//00738BF4
procedure TFXNetFrame.Select1Click(Sender:TObject);
begin
{*
 00738BF4    push        ebp
 00738BF5    mov         ebp,esp
 00738BF7    xor         ecx,ecx
 00738BF9    push        ecx
 00738BFA    push        ecx
 00738BFB    push        ecx
 00738BFC    push        ecx
 00738BFD    push        ecx
 00738BFE    push        ecx
 00738BFF    push        ecx
 00738C00    push        ebx
 00738C01    push        esi
 00738C02    push        edi
 00738C03    mov         dword ptr [ebp-4],eax
 00738C06    xor         eax,eax
 00738C08    push        ebp
 00738C09    push        738DEC
 00738C0E    push        dword ptr fs:[eax]
 00738C11    mov         dword ptr fs:[eax],esp
 00738C14    mov         eax,dword ptr [ebp-4]
 00738C17    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738C1D    mov         edx,dword ptr [eax]
 00738C1F    call        dword ptr [edx+130];TListView.sub_00546C60
 00738C25    test        eax,eax
>00738C27    jle         00738DD1
 00738C2D    mov         eax,dword ptr [ebp-4]
 00738C30    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738C36    call        005489C4
 00738C3B    mov         eax,dword ptr [eax+8]
 00738C3E    lea         ecx,[ebp-0C]
 00738C41    mov         edx,2
 00738C46    mov         ebx,dword ptr [eax]
 00738C48    call        dword ptr [ebx+0C]
 00738C4B    mov         edx,dword ptr [ebp-0C]
 00738C4E    mov         eax,[007C4710];^gvar_00902530:TSelectVisibleDlg
 00738C53    mov         eax,dword ptr [eax]
 00738C55    add         eax,3DC
 00738C5A    call        @UStrAsg
 00738C5F    mov         eax,dword ptr [ebp-4]
 00738C62    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738C68    call        005489C4
 00738C6D    mov         eax,dword ptr [eax+20]
 00738C70    call        StrToInt
 00738C75    mov         dword ptr [ebp-8],eax
 00738C78    mov         eax,[007C4710];^gvar_00902530:TSelectVisibleDlg
 00738C7D    mov         eax,dword ptr [eax]
 00738C7F    mov         eax,dword ptr [eax+3C4]
 00738C85    mov         eax,dword ptr [eax+2BC]
 00738C8B    call        TListItems.Clear
 00738C90    mov         esi,1
 00738C95    mov         ebx,902574;gvar_00902574
 00738C9A    mov         eax,[007C4710];^gvar_00902530:TSelectVisibleDlg
 00738C9F    mov         eax,dword ptr [eax]
 00738CA1    mov         eax,dword ptr [eax+3C4]
 00738CA7    mov         eax,dword ptr [eax+2BC]
 00738CAD    call        TListItems.Add
 00738CB2    mov         edi,eax
 00738CB4    lea         edx,[ebp-18]
 00738CB7    mov         eax,esi
 00738CB9    call        IntToStr
 00738CBE    mov         ecx,dword ptr [ebp-18]
 00738CC1    lea         eax,[ebp-14]
 00738CC4    mov         edx,738E08;'0'
 00738CC9    call        @UStrCat3
 00738CCE    mov         eax,dword ptr [ebp-14]
 00738CD1    lea         ecx,[ebp-10]
 00738CD4    mov         edx,2
 00738CD9    call        00431F5C
 00738CDE    mov         edx,dword ptr [ebp-10]
 00738CE1    mov         eax,edi
 00738CE3    call        TListItem.SetCaption
 00738CE8    cmp         byte ptr [ebx],0
>00738CEB    je          00738D1D
 00738CED    mov         eax,dword ptr [ebx+0C]
 00738CF0    add         eax,0FFFFFFFD
 00738CF3    cmp         eax,5
>00738CF6    jbe         00738CFD
 00738CF8    call        @BoundErr
 00738CFD    add         eax,3
 00738D00    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 00738D06    mov         edx,dword ptr [edx+eax*4-0C]
 00738D0A    mov         eax,dword ptr [edi+8];TListItem.FSubItems:TStrings
 00738D0D    mov         ecx,dword ptr [eax]
 00738D0F    call        dword ptr [ecx+3C];TStrings.Add
 00738D12    mov         eax,dword ptr [edi+8];TListItem.FSubItems:TStrings
 00738D15    mov         edx,dword ptr [ebx+10]
 00738D18    mov         ecx,dword ptr [eax]
 00738D1A    call        dword ptr [ecx+3C];TStrings.Add
 00738D1D    inc         esi
 00738D1E    add         ebx,38
 00738D21    cmp         esi,21
>00738D24    jne         00738C9A
 00738D2A    mov         eax,[007C4710];^gvar_00902530:TSelectVisibleDlg
 00738D2F    mov         eax,dword ptr [eax]
 00738D31    mov         edx,dword ptr [eax]
 00738D33    call        dword ptr [edx+13C]
 00738D39    dec         eax
>00738D3A    jne         00738DA0
 00738D3C    mov         eax,dword ptr [ebp-4]
 00738D3F    mov         eax,dword ptr [eax+300];TFXNetFrame.lvVisibles:TListView
 00738D45    call        005489C4
 00738D4A    mov         eax,dword ptr [eax+8]
 00738D4D    mov         edx,dword ptr ds:[7C4710];^gvar_00902530:TSelectVisibleDlg
 00738D53    mov         edx,dword ptr [edx]
 00738D55    mov         ecx,dword ptr [edx+3DC]
 00738D5B    mov         edx,2
 00738D60    mov         ebx,dword ptr [eax]
 00738D62    call        dword ptr [ebx+20]
 00738D65    mov         eax,dword ptr [ebp-8]
 00738D68    cmp         eax,20
>00738D6B    jbe         00738D72
 00738D6D    call        @BoundErr
 00738D72    imul        eax,eax,7
>00738D75    jno         00738D7C
 00738D77    call        @IntOver
 00738D7C    lea         eax,[eax*8+902550];gvar_00902550
 00738D83    mov         edx,dword ptr ds:[7C4710];^gvar_00902530:TSelectVisibleDlg
 00738D89    mov         edx,dword ptr [edx]
 00738D8B    mov         edx,dword ptr [edx+3DC]
 00738D91    call        @UStrAsg
 00738D96    mov         eax,dword ptr [ebp-4]
 00738D99    mov         byte ptr [eax+338],1;TFXNetFrame.FModified:Boolean
 00738DA0    mov         eax,dword ptr [ebp-4]
 00738DA3    call        00738A78
 00738DA8    lea         edx,[ebp-1C]
 00738DAB    call        IntToStr
 00738DB0    lea         eax,[ebp-1C]
 00738DB3    mov         edx,dword ptr ds:[7C4C9C];^gvar_007C2BE4
 00738DB9    mov         edx,dword ptr [edx]
 00738DBB    call        @UStrCat
 00738DC0    mov         edx,dword ptr [ebp-1C]
 00738DC3    mov         eax,dword ptr [ebp-4]
 00738DC6    mov         eax,dword ptr [eax+324];TFXNetFrame.lbNumOfConnections:TLabel
 00738DCC    call        TControl.SetText
 00738DD1    xor         eax,eax
 00738DD3    pop         edx
 00738DD4    pop         ecx
 00738DD5    pop         ecx
 00738DD6    mov         dword ptr fs:[eax],edx
 00738DD9    push        738DF3
 00738DDE    lea         eax,[ebp-1C]
 00738DE1    mov         edx,5
 00738DE6    call        @UStrArrayClr
 00738DEB    ret
>00738DEC    jmp         @HandleFinally
>00738DF1    jmp         00738DDE
 00738DF3    pop         edi
 00738DF4    pop         esi
 00738DF5    pop         ebx
 00738DF6    mov         esp,ebp
 00738DF8    pop         ebp
 00738DF9    ret
*}
end;

//00738E0C
procedure TFXNetFrame.Copy1Click(Sender:TObject);
begin
{*
 00738E0C    push        ebp
 00738E0D    mov         ebp,esp
 00738E0F    push        0
 00738E11    push        ebx
 00738E12    mov         ebx,eax
 00738E14    xor         eax,eax
 00738E16    push        ebp
 00738E17    push        738E7B
 00738E1C    push        dword ptr fs:[eax]
 00738E1F    mov         dword ptr fs:[eax],esp
 00738E22    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 00738E28    mov         edx,dword ptr [eax]
 00738E2A    call        dword ptr [edx+130];TListView.sub_00546C60
 00738E30    test        eax,eax
>00738E32    jle         00738E65
 00738E34    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 00738E3A    call        005489C4
 00738E3F    mov         eax,dword ptr [eax+8]
 00738E42    lea         ecx,[ebp-4]
 00738E45    mov         edx,2
 00738E4A    mov         ebx,dword ptr [eax]
 00738E4C    call        dword ptr [ebx+0C]
 00738E4F    mov         eax,dword ptr [ebp-4]
 00738E52    call        @UStrToPWChar
 00738E57    mov         ebx,eax
 00738E59    call        Clipboard
 00738E5E    mov         edx,ebx
 00738E60    call        TClipboard.SetTextBuf
 00738E65    xor         eax,eax
 00738E67    pop         edx
 00738E68    pop         ecx
 00738E69    pop         ecx
 00738E6A    mov         dword ptr fs:[eax],edx
 00738E6D    push        738E82
 00738E72    lea         eax,[ebp-4]
 00738E75    call        @UStrClr
 00738E7A    ret
>00738E7B    jmp         @HandleFinally
>00738E80    jmp         00738E72
 00738E82    pop         ebx
 00738E83    pop         ecx
 00738E84    pop         ebp
 00738E85    ret
*}
end;

//00738E88
procedure TFXNetFrame.Paste1Click(Sender:TObject);
begin
{*
 00738E88    push        ebp
 00738E89    mov         ebp,esp
 00738E8B    push        0
 00738E8D    push        0
 00738E8F    push        0
 00738E91    push        ebx
 00738E92    push        esi
 00738E93    push        edi
 00738E94    mov         ebx,eax
 00738E96    xor         eax,eax
 00738E98    push        ebp
 00738E99    push        738F8F
 00738E9E    push        dword ptr fs:[eax]
 00738EA1    mov         dword ptr fs:[eax],esp
 00738EA4    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 00738EAA    mov         edx,dword ptr [eax]
 00738EAC    call        dword ptr [edx+130];TListView.sub_00546C60
 00738EB2    test        eax,eax
>00738EB4    jle         00738F74
 00738EBA    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 00738EC0    call        005489C4
 00738EC5    mov         eax,dword ptr [eax+20]
 00738EC8    call        StrToInt
 00738ECD    mov         dword ptr [ebp-4],eax
 00738ED0    mov         eax,0FF
 00738ED5    call        0041F4BC
 00738EDA    mov         esi,eax
 00738EDC    call        Clipboard
 00738EE1    mov         ecx,0FF
 00738EE6    mov         edx,esi
 00738EE8    call        TClipboard.GetTextBuf
 00738EED    mov         eax,dword ptr [ebx+300];TFXNetFrame.lvVisibles:TListView
 00738EF3    call        005489C4
 00738EF8    mov         eax,dword ptr [eax+8]
 00738EFB    push        eax
 00738EFC    lea         eax,[ebp-8]
 00738EFF    mov         edx,esi
 00738F01    call        @UStrFromPWChar
 00738F06    mov         ecx,dword ptr [ebp-8]
 00738F09    mov         edx,2
 00738F0E    pop         eax
 00738F0F    mov         edi,dword ptr [eax]
 00738F11    call        dword ptr [edi+20]
 00738F14    mov         eax,dword ptr [ebp-4]
 00738F17    cmp         eax,20
>00738F1A    jbe         00738F21
 00738F1C    call        @BoundErr
 00738F21    imul        eax,eax,7
>00738F24    jno         00738F2B
 00738F26    call        @IntOver
 00738F2B    lea         eax,[eax*8+902550];gvar_00902550
 00738F32    mov         edx,esi
 00738F34    call        @UStrFromPWChar
 00738F39    mov         eax,esi
 00738F3B    call        0041F4FC
 00738F40    mov         eax,ebx
 00738F42    call        00738A78
 00738F47    lea         edx,[ebp-0C]
 00738F4A    call        IntToStr
 00738F4F    lea         eax,[ebp-0C]
 00738F52    mov         edx,dword ptr ds:[7C4C9C];^gvar_007C2BE4
 00738F58    mov         edx,dword ptr [edx]
 00738F5A    call        @UStrCat
 00738F5F    mov         edx,dword ptr [ebp-0C]
 00738F62    mov         eax,dword ptr [ebx+324];TFXNetFrame.lbNumOfConnections:TLabel
 00738F68    call        TControl.SetText
 00738F6D    mov         byte ptr [ebx+338],1;TFXNetFrame.FModified:Boolean
 00738F74    xor         eax,eax
 00738F76    pop         edx
 00738F77    pop         ecx
 00738F78    pop         ecx
 00738F79    mov         dword ptr fs:[eax],edx
 00738F7C    push        738F96
 00738F81    lea         eax,[ebp-0C]
 00738F84    mov         edx,2
 00738F89    call        @UStrArrayClr
 00738F8E    ret
>00738F8F    jmp         @HandleFinally
>00738F94    jmp         00738F81
 00738F96    pop         edi
 00738F97    pop         esi
 00738F98    pop         ebx
 00738F99    mov         esp,ebp
 00738F9B    pop         ebp
 00738F9C    ret
*}
end;

//00738FA0
procedure TFXNetFrame.lvVisiblesKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);
begin
{*
 00738FA0    push        ebp
 00738FA1    mov         ebp,esp
 00738FA3    push        ecx
 00738FA4    push        ebx
 00738FA5    push        esi
 00738FA6    push        edi
 00738FA7    mov         ebx,ecx
 00738FA9    mov         dword ptr [ebp-4],edx
 00738FAC    mov         esi,eax
 00738FAE    mov         edi,dword ptr [ebp+8]
 00738FB1    cmp         word ptr [ebx],43
>00738FB5    jne         00738FCD
 00738FB7    test        di,4
>00738FBC    je          00738FCD
 00738FBE    mov         edx,dword ptr [ebp-4]
 00738FC1    mov         eax,esi
 00738FC3    call        TFXNetFrame.Copy1Click
 00738FC8    mov         word ptr [ebx],0
 00738FCD    cmp         word ptr [ebx],56
>00738FD1    jne         00738FF0
 00738FD3    test        di,4
>00738FD8    je          00738FF0
 00738FDA    mov         edx,dword ptr [ebp-4]
 00738FDD    mov         eax,esi
 00738FDF    call        TFXNetFrame.Paste1Click
 00738FE4    mov         byte ptr [esi+338],1;TFXNetFrame.FModified:Boolean
 00738FEB    mov         word ptr [ebx],0
 00738FF0    pop         edi
 00738FF1    pop         esi
 00738FF2    pop         ebx
 00738FF3    pop         ecx
 00738FF4    pop         ebp
 00738FF5    ret         4
*}
end;

//00738FF8
procedure TFXNetFrame.rgSystemTypeClick(Sender:TObject);
begin
{*
 00738FF8    push        ebx
 00738FF9    push        esi
 00738FFA    mov         esi,eax
 00738FFC    movzx       eax,byte ptr ds:[902C74];gvar_00902C74
 00739003    sub         al,1
>00739005    jb          00739012
>00739007    je          0073910C
>0073900D    jmp         00739215
 00739012    mov         eax,dword ptr [esi+334];TFXNetFrame.rgSystemType:TRadioGroup
 00739018    cmp         dword ptr [eax+2A0],1;TRadioGroup.FItemIndex:Integer
>0073901F    jne         007390C2
 00739025    cmp         byte ptr ds:[90253C],0;gvar_0090253C:Pointer
>0073902C    je          0073906D
 0073902E    push        0
 00739030    movzx       ecx,word ptr ds:[739220];0x3 gvar_00739220
 00739037    xor         edx,edx
 00739039    mov         eax,[007C3E1C];^'The Panel with ID = 0 will be deleted! Do you want to continue?'
 0073903E    call        MessageDlg
 00739043    cmp         eax,6
>00739046    je          0073906D
 00739048    xor         edx,edx
 0073904A    mov         eax,dword ptr [esi+334];TFXNetFrame.rgSystemType:TRadioGroup
 00739050    call        TRadioGroup.SetItemIndex
 00739055    xor         edx,edx
 00739057    mov         eax,dword ptr [esi+334];TFXNetFrame.rgSystemType:TRadioGroup
 0073905D    call        TCustomRadioGroup.GetButtons
 00739062    mov         edx,dword ptr [eax]
 00739064    call        dword ptr [edx+104];TWinControl.SetFocus
 0073906A    pop         esi
 0073906B    pop         ebx
 0073906C    ret
 0073906D    xor         edx,edx
 0073906F    mov         eax,esi
 00739071    call        00738220
 00739076    mov         eax,esi
 00739078    call        0073844C
 0073907D    mov         byte ptr ds:[902C74],1;gvar_00902C74
 00739084    mov         edx,1
 00739089    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 0073908F    call        TUpDown.SetMin
 00739094    mov         edx,20
 00739099    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 0073909F    call        TUpDown.SetMax
 007390A4    mov         edx,1
 007390A9    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007390AF    call        TUpDown.SetPosition
 007390B4    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007390BA    mov         edx,dword ptr [eax]
 007390BC    call        dword ptr [edx+0A8];TWinControl.Invalidate
 007390C2    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 007390C8    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 007390CE    mov         edx,dword ptr [eax]
 007390D0    call        dword ptr [edx+48];TStrings.Clear
 007390D3    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 007390D9    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 007390DF    mov         edx,739230;'FX
FXL
FXM
FXS'
 007390E4    mov         ecx,dword ptr [eax]
 007390E6    call        dword ptr [ecx+30];TStrings.SetTextStr
 007390E9    xor         edx,edx
 007390EB    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 007390F1    mov         ecx,dword ptr [eax]
 007390F3    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 007390F9    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 007390FF    mov         edx,dword ptr [eax]
 00739101    call        dword ptr [edx+0A8];TWinControl.Invalidate
>00739107    jmp         00739215
 0073910C    mov         eax,dword ptr [esi+334];TFXNetFrame.rgSystemType:TRadioGroup
 00739112    cmp         dword ptr [eax+2A0],0;TRadioGroup.FItemIndex:Integer
>00739119    jne         007391D0
 0073911F    mov         ebx,20
 00739124    mov         eax,902574;gvar_00902574
 00739129    cmp         byte ptr [eax],0
>0073912C    je          00739173
 0073912E    push        0
 00739130    movzx       ecx,word ptr ds:[739220];0x3 gvar_00739220
 00739137    xor         edx,edx
 00739139    mov         eax,[007C3E18];^'All panels with ID > 0 will be deleted! Do you want to continue?'
 0073913E    call        MessageDlg
 00739143    cmp         eax,6
>00739146    je          00739179
 00739148    mov         edx,1
 0073914D    mov         eax,dword ptr [esi+334];TFXNetFrame.rgSystemType:TRadioGroup
 00739153    call        TRadioGroup.SetItemIndex
 00739158    mov         edx,1
 0073915D    mov         eax,dword ptr [esi+334];TFXNetFrame.rgSystemType:TRadioGroup
 00739163    call        TCustomRadioGroup.GetButtons
 00739168    mov         edx,dword ptr [eax]
 0073916A    call        dword ptr [edx+104];TWinControl.SetFocus
 00739170    pop         esi
 00739171    pop         ebx
 00739172    ret
 00739173    add         eax,38
 00739176    dec         ebx
>00739177    jne         00739129
 00739179    mov         ebx,1
 0073917E    mov         edx,ebx
 00739180    mov         eax,esi
 00739182    call        00738220
 00739187    inc         ebx
 00739188    cmp         ebx,21
>0073918B    jne         0073917E
 0073918D    mov         eax,esi
 0073918F    call        0073844C
 00739194    mov         byte ptr ds:[902C74],0;gvar_00902C74
 0073919B    xor         edx,edx
 0073919D    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007391A3    call        TUpDown.SetMin
 007391A8    xor         edx,edx
 007391AA    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007391B0    call        TUpDown.SetMax
 007391B5    xor         edx,edx
 007391B7    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007391BD    call        TUpDown.SetPosition
 007391C2    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007391C8    mov         edx,dword ptr [eax]
 007391CA    call        dword ptr [edx+0A8];TWinControl.Invalidate
 007391D0    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 007391D6    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 007391DC    mov         edx,dword ptr [eax]
 007391DE    call        dword ptr [edx+48];TStrings.Clear
 007391E1    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 007391E7    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 007391ED    mov         edx,739260;'FX
FXL
FXM
FXS
FX101A
FX101S'
 007391F2    mov         ecx,dword ptr [eax]
 007391F4    call        dword ptr [ecx+30];TStrings.SetTextStr
 007391F7    xor         edx,edx
 007391F9    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 007391FF    mov         ecx,dword ptr [eax]
 00739201    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 00739207    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 0073920D    mov         edx,dword ptr [eax]
 0073920F    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00739215    mov         byte ptr [esi+338],1;TFXNetFrame.FModified:Boolean
 0073921C    pop         esi
 0073921D    pop         ebx
 0073921E    ret
*}
end;

//007392A4
procedure TFXNetFrame.Clear;
begin
{*
 007392A4    push        ebx
 007392A5    push        esi
 007392A6    mov         esi,eax
 007392A8    mov         ebx,1
 007392AD    mov         edx,ebx
 007392AF    mov         eax,esi
 007392B1    call        00738220
 007392B6    inc         ebx
 007392B7    cmp         ebx,21
>007392BA    jne         007392AD
 007392BC    xor         edx,edx
 007392BE    mov         eax,dword ptr [esi+334];TFXNetFrame.rgSystemType:TRadioGroup
 007392C4    call        TRadioGroup.SetItemIndex
 007392C9    xor         edx,edx
 007392CB    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007392D1    call        TUpDown.SetMin
 007392D6    xor         edx,edx
 007392D8    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007392DE    call        TUpDown.SetMax
 007392E3    xor         edx,edx
 007392E5    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007392EB    call        TUpDown.SetPosition
 007392F0    mov         eax,dword ptr [esi+2D4];TFXNetFrame.udPanelID:TUpDown
 007392F6    mov         edx,dword ptr [eax]
 007392F8    call        dword ptr [edx+0A8];TWinControl.Invalidate
 007392FE    xor         edx,edx
 00739300    mov         eax,dword ptr [esi+2DC];TFXNetFrame.edPanelName:TEdit
 00739306    call        TControl.SetText
 0073930B    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 00739311    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 00739317    mov         edx,dword ptr [eax]
 00739319    call        dword ptr [edx+48];TStrings.Clear
 0073931C    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 00739322    mov         eax,dword ptr [eax+2CC];TComboBox.FItems:TStrings
 00739328    mov         edx,739360;'FX
FXL
FXM
FXS
FX101A
FX101S'
 0073932D    mov         ecx,dword ptr [eax]
 0073932F    call        dword ptr [ecx+30];TStrings.SetTextStr
 00739332    xor         edx,edx
 00739334    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 0073933A    mov         ecx,dword ptr [eax]
 0073933C    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 00739342    mov         eax,dword ptr [esi+2D8];TFXNetFrame.cbPanelType:TComboBox
 00739348    mov         edx,dword ptr [eax]
 0073934A    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00739350    pop         esi
 00739351    pop         ebx
 00739352    ret
*}
end;

Initialization
Finalization
//007393A4
{*
 007393A4    push        ebp
 007393A5    mov         ebp,esp
 007393A7    xor         eax,eax
 007393A9    push        ebp
 007393AA    push        739417
 007393AF    push        dword ptr fs:[eax]
 007393B2    mov         dword ptr fs:[eax],esp
 007393B5    inc         dword ptr ds:[902534]
>007393BB    jne         00739409
 007393BD    mov         eax,902538;gvar_00902538:UnicodeString
 007393C2    mov         edx,dword ptr ds:[736DC0];TTmpSysData
 007393C8    call        @FinalizeRecord
 007393CD    mov         eax,7C3E0C;^'Standalone systems can only have a panel with id = 0'
 007393D2    call        @UStrClr
 007393D7    mov         eax,7C3E10;^'Multipanel systems can not have panels with id = 0'
 007393DC    call        @UStrClr
 007393E1    mov         eax,7C3E14;^'A panel with this ID already exists'
 007393E6    call        @UStrClr
 007393EB    mov         eax,7C3E18;^'All panels with ID > 0 will be deleted! Do you want to continue?'
 007393F0    call        @UStrClr
 007393F5    mov         eax,7C3E1C;^'The Panel with ID = 0 will be deleted! Do you want to continue?'
 007393FA    call        @UStrClr
 007393FF    mov         eax,7C3E20;^'Changes you might have made in this data view will be lost.
Do you want to...
 00739404    call        @UStrClr
 00739409    xor         eax,eax
 0073940B    pop         edx
 0073940C    pop         ecx
 0073940D    pop         ecx
 0073940E    mov         dword ptr fs:[eax],edx
 00739411    push        73941E
 00739416    ret
>00739417    jmp         @HandleFinally
>0073941C    jmp         00739416
 0073941E    pop         ebp
 0073941F    ret
*}
end.