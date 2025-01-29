//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXDelayedControlGroups;

interface

uses
  SysUtils, Classes, Vcl.ExtCtrls, Vcl.StdActns, Vcl.ComCtrls, FXOverwriteDialog, FXEsaFileMerge, FXAboutFrames, Vcl.Samples.Spin, Vcl.Mask, Vcl.Grids, FXIniFiles, Vcl.Buttons, System.Generics.Collections, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, Vcl.StdCtrls;

type
  TMaskEdit = class(TMaskEdit)
  published
    procedure WMMouseWheel(var msg:TWMMouseWheel);//0077D100
  public
    procedure WMMouseWheel(var msg:TWMMouseWheel); message WM_MOUSEWHEEL;//0077D100
  end;
  TStringGrid = class(TStringGrid)
  published
    procedure DefaultSelection;//007842CC
  end;
  TDCGroupsFrm = class(TForm)
  published
    Panel1:TPanel;//f3C0
    PanelALeft:TPanel;//f3C4
    SplitterA:TSplitter;//f3C8
    PanelARight:TPanel;//f3CC
    StatusBar1:TStatusBar;//f3D0
    ITree:TTreeView;//f3D4
    IGrid:TStringGrid;//f3D8
    MaskEdit1:TMaskEdit;//f3DC
    btnOK:TBitBtn;//f3E0
    btnCancel:TBitBtn;//f3E4
    PopupMenu1:TPopupMenu;//f3E8
    miCopy:TMenuItem;//f3EC
    miPaste:TMenuItem;//f3F0
    miRange:TMenuItem;//f3F4
    rbEdit:TRadioButton;//f3F8
    rbRows:TRadioButton;//f3FC
    PanelA:TPanel;//f400
    Panel2:TPanel;//f404
    SplitterV:TSplitter;//f408
    PanelB:TPanel;//f40C
    PanelBLeft:TPanel;//f410
    OTree:TTreeView;//f414
    SplitterB:TSplitter;//f418
    PanelBRight:TPanel;//f41C
    OGrid:TStringGrid;//f420
    lbNumInputs:TLabel;//f424
    lbNumOutputs:TLabel;//f428
    lbInputs:TLabel;//f42C
    lbOutputs:TLabel;//f430
    btnCauseEffect:TButton;//f434
    procedure IGridMouseMove(Sender:TObject; Shift:Classes.TShiftState; X:Integer; Y:Integer);//00780918
    procedure IGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//0078088C
    procedure SplitterAMoved(Sender:TObject);//0077DA04
    procedure IGridKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);//00780718
    procedure IGridDrawCell(Sender:TObject; ACol:Integer; State:TGridDrawState; Rect:TRect; ARow:Integer);//00780468
    procedure miRangeClick(Sender:TObject);//0078151C
    procedure miPasteClick(Sender:TObject);//007813DC
    procedure rbRowsClick(Sender:TObject);//0077F2D4
    procedure rbEditClick(Sender:TObject);//0077F274
    procedure SplitterBMoved(Sender:TObject);//0077DA1C
    procedure btnCauseEffectClick(Sender:TObject);//0077F714
    procedure OGridDrawCell(Sender:TObject; ACol:Integer; State:TGridDrawState; Rect:TRect; ARow:Integer);//00783968
    procedure Translate(IniFile:TFXIniFile);//0077DC34
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure OGridMouseMove(Sender:TObject; Shift:Classes.TShiftState; X:Integer; Y:Integer);//00783CF8
    procedure OTreeChange(Sender:TObject; Node:TTreeNode);//007830F4
    procedure OTreeChanging(Sender:TObject; Node:TTreeNode; var AllowChange:Boolean);//00783014
    procedure SplitterPaint(Sender:TObject);//0077DA34
    procedure OGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//00783B98
    procedure miCopyClick(Sender:TObject);//007812F8
    procedure FormShow(Sender:TObject);//0077D3B0
    procedure FormDestroy(Sender:TObject);//0077D384
    procedure SaveIGridToTemp;//00782934
    procedure FormClose(Sender:TObject; var Action:UITypes.TCloseAction);//0077D9E4
    procedure FormCreate(Sender:TObject);//0077D25C
    procedure UpdateOTree;//00782D44
    procedure UpdateITree;//0077F744
    procedure UpdateOGrid(DCLevel:Integer; DCSystem:TDCSystem; IOLine:TDCIoLine; IOUnit:TDCIoUnit; DCAddr:TDCAddr; DCLoop:TDCLoop; DCPanel:TDCPanel);//007836AC
    procedure UpdateIGrid(DCLevel:Integer; DCSystem:TDCSystem; DCAddr:TDCAddr; DCLoop:TDCLoop; DCPanel:TDCPanel);//00780238
    procedure SaveOGridToTemp;//007841BC
    procedure IGridSelectCell(Sender:TObject; ACol:Integer; var CanSelect:Boolean; ARow:Integer);//00780C04
    procedure MaskEdit1MouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//00781278
    procedure btnCancelClick(Sender:TObject);//0077F36C
    procedure btnOKClick(Sender:TObject);//0077F374
    procedure MaskEdit1KeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);//00781024
    procedure ITreeChange(Sender:TObject; Node:TTreeNode);//0077FA24
    procedure ITreeChanging(Sender:TObject; Node:TTreeNode; var AllowChange:Boolean);//0077F944
    procedure MaskEdit1Enter(Sender:TObject);//00780FF8
    procedure MaskEdit1Change(Sender:TObject);//00780F78
  end;
  :6 = array of ?;
//elSize = 4;
  :7 = array of ?;
//elSize = 4;
    //procedure sub_0077FAE0(?:TDCAddr; ?:?);//0077FAE0
    //procedure sub_00780124(?:TDCLoop; ?:?);//00780124
    //procedure sub_00780180(?:TDCPanel; ?:?);//00780180
    //procedure sub_007801DC(?:TDCSystem; ?:?);//007801DC
    //procedure sub_00780E7C(?:?; ?:?);//00780E7C
    //function sub_00781BC8(?:UnicodeString; ?:?):?;//00781BC8
    //function sub_00781CA4(?:TDCGroupsFrm):?;//00781CA4
    //function sub_00782860(?:?):?;//00782860
    //procedure sub_00783200(?:TDCAddr; ?:?);//00783200
    //procedure sub_00783390(?:TDCLoop; ?:?);//00783390
    //procedure sub_007833EC(?:TDCIoLine; ?:?);//007833EC
    //procedure sub_00783550(?:TDCIoUnit; ?:?);//00783550
    //procedure sub_007835AC(?:TDCPanel; ?:?);//007835AC
    //procedure sub_00783650(?:TDCSystem; ?:?);//00783650
    //function sub_00783E1C(?:TDCGroupsFrm):?;//00783E1C

implementation

{$R *.DFM}

//0077D100
procedure TMaskEdit.WMMouseWheel(var msg:TWMMouseWheel);
begin
{*
 0077D100    push        ebp
 0077D101    mov         ebp,esp
 0077D103    add         esp,0FFFFFFEC
 0077D106    push        ebx
 0077D107    push        esi
 0077D108    push        edi
 0077D109    xor         ecx,ecx
 0077D10B    mov         dword ptr [ebp-0C],ecx
 0077D10E    mov         dword ptr [ebp-4],ecx
 0077D111    mov         dword ptr [ebp-8],edx
 0077D114    mov         esi,eax
 0077D116    xor         eax,eax
 0077D118    push        ebp
 0077D119    push        77D236
 0077D11E    push        dword ptr fs:[eax]
 0077D121    mov         dword ptr fs:[eax],esp
 0077D124    mov         eax,dword ptr [ebp-8]
 0077D127    movzx       eax,word ptr [eax+4];TWMMouseWheel.Keys:SmallInt
 0077D12B    and         ax,4
 0077D12F    cmp         ax,4
>0077D133    jne         0077D1F2
 0077D139    mov         eax,esi
 0077D13B    mov         edx,dword ptr [eax]
 0077D13D    call        dword ptr [edx+114];TCustomEdit.GetSelStart
 0077D143    mov         edi,eax
 0077D145    cmp         edi,2
>0077D148    jge         0077D14E
 0077D14A    xor         edi,edi
>0077D14C    jmp         0077D153
 0077D14E    mov         edi,3
 0077D153    mov         edx,edi
 0077D155    mov         eax,esi
 0077D157    mov         ecx,dword ptr [eax]
 0077D159    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 0077D15F    mov         edx,2
 0077D164    mov         eax,esi
 0077D166    mov         ecx,dword ptr [eax]
 0077D168    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 0077D16E    lea         edx,[ebp-4]
 0077D171    mov         eax,esi
 0077D173    mov         ecx,dword ptr [eax]
 0077D175    call        dword ptr [ecx+118];TMaskEdit.sub_00507788
 0077D17B    mov         eax,dword ptr [ebp-4]
 0077D17E    call        StrToInt
 0077D183    mov         ebx,eax
 0077D185    mov         eax,dword ptr [ebp-8]
 0077D188    movsx       eax,word ptr [eax+6];TWMMouseWheel.WheelDelta:SmallInt
 0077D18C    mov         ecx,78
 0077D191    cdq
 0077D192    idiv        eax,ecx
 0077D194    add         eax,ebx
>0077D196    jno         0077D19D
 0077D198    call        @IntOver
 0077D19D    add         eax,3C
>0077D1A0    jno         0077D1A7
 0077D1A2    call        @IntOver
 0077D1A7    mov         ecx,3C
 0077D1AC    cdq
 0077D1AD    idiv        eax,ecx
 0077D1AF    mov         ebx,edx
 0077D1B1    lea         eax,[ebp-0C]
 0077D1B4    push        eax
 0077D1B5    mov         dword ptr [ebp-14],ebx
 0077D1B8    mov         byte ptr [ebp-10],0
 0077D1BC    lea         edx,[ebp-14]
 0077D1BF    xor         ecx,ecx
 0077D1C1    mov         eax,77D250;'%.2d'
 0077D1C6    call        Format
 0077D1CB    mov         edx,dword ptr [ebp-0C]
 0077D1CE    mov         eax,esi
 0077D1D0    call        TCustomEdit.SetSelText
 0077D1D5    mov         edx,edi
 0077D1D7    mov         eax,esi
 0077D1D9    mov         ecx,dword ptr [eax]
 0077D1DB    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 0077D1E1    mov         edx,2
 0077D1E6    mov         eax,esi
 0077D1E8    mov         ecx,dword ptr [eax]
 0077D1EA    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
>0077D1F0    jmp         0077D218
 0077D1F2    mov         eax,dword ptr [ebp-8]
 0077D1F5    cmp         word ptr [eax+6],0;TWMMouseWheel.WheelDelta:SmallInt
>0077D1FA    jge         0077D20B
 0077D1FC    push        0
 0077D1FE    push        0
 0077D200    push        0
 0077D202    push        28
 0077D204    call        user32.keybd_event
>0077D209    jmp         0077D218
 0077D20B    push        0
 0077D20D    push        0
 0077D20F    push        0
 0077D211    push        26
 0077D213    call        user32.keybd_event
 0077D218    xor         eax,eax
 0077D21A    pop         edx
 0077D21B    pop         ecx
 0077D21C    pop         ecx
 0077D21D    mov         dword ptr fs:[eax],edx
 0077D220    push        77D23D
 0077D225    lea         eax,[ebp-0C]
 0077D228    call        @UStrClr
 0077D22D    lea         eax,[ebp-4]
 0077D230    call        @UStrClr
 0077D235    ret
>0077D236    jmp         @HandleFinally
>0077D23B    jmp         0077D225
 0077D23D    pop         edi
 0077D23E    pop         esi
 0077D23F    pop         ebx
 0077D240    mov         esp,ebp
 0077D242    pop         ebp
 0077D243    ret
*}
end;

//0077D25C
procedure TDCGroupsFrm.FormCreate(Sender:TObject);
begin
{*
 0077D25C    push        ebx
 0077D25D    mov         ebx,eax
 0077D25F    mov         dl,1
 0077D261    mov         eax,[00766A44];TDCSystem
 0077D266    call        TDCSystem.Create;TDCSystem.Create
 0077D26B    mov         edx,dword ptr ds:[7C471C];^gvar_0090378C:TDCSystem
 0077D271    mov         dword ptr [edx],eax
 0077D273    mov         dl,1
 0077D275    mov         eax,[00766E28];TDCCtrlObjects
 0077D27A    call        TDCCtrlObjects.Create;TDCCtrlObjects.Create
 0077D27F    mov         edx,dword ptr ds:[7C42F0];^gvar_00903790:TDCCtrlObjects
 0077D285    mov         dword ptr [edx],eax
 0077D287    xor         edx,edx
 0077D289    mov         eax,dword ptr [ebx+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 0077D28F    call        TControl.SetVisible
 0077D294    or          ecx,0FFFFFFFF
 0077D297    mov         edx,0A
 0077D29C    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D2A2    call        TCustomDrawGrid.SetColWidths
 0077D2A7    or          ecx,0FFFFFFFF
 0077D2AA    mov         edx,0D
 0077D2AF    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D2B5    call        TCustomDrawGrid.SetColWidths
 0077D2BA    or          ecx,0FFFFFFFF
 0077D2BD    mov         edx,10
 0077D2C2    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D2C8    call        TCustomDrawGrid.SetColWidths
 0077D2CD    or          ecx,0FFFFFFFF
 0077D2D0    mov         edx,13
 0077D2D5    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D2DB    call        TCustomDrawGrid.SetColWidths
 0077D2E0    or          ecx,0FFFFFFFF
 0077D2E3    mov         edx,16
 0077D2E8    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D2EE    call        TCustomDrawGrid.SetColWidths
 0077D2F3    or          ecx,0FFFFFFFF
 0077D2F6    mov         edx,19
 0077D2FB    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D301    call        TCustomDrawGrid.SetColWidths
 0077D306    or          ecx,0FFFFFFFF
 0077D309    mov         edx,1C
 0077D30E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D314    call        TCustomDrawGrid.SetColWidths
 0077D319    mov         edx,dword ptr ds:[7C4064];^'Control inputs'
 0077D31F    mov         eax,dword ptr [ebx+42C];TDCGroupsFrm.lbInputs:TLabel
 0077D325    call        TControl.SetText
 0077D32A    mov         edx,dword ptr ds:[7C4068];^'Control outputs'
 0077D330    mov         eax,dword ptr [ebx+430];TDCGroupsFrm.lbOutputs:TLabel
 0077D336    call        TControl.SetText
 0077D33B    mov         edx,dword ptr ds:[7C406C];^'Edit values'
 0077D341    mov         eax,dword ptr [ebx+3F8];TDCGroupsFrm.rbEdit:TRadioButton
 0077D347    call        TControl.SetText
 0077D34C    mov         edx,dword ptr ds:[7C4070];^'Row select'
 0077D352    mov         eax,dword ptr [ebx+3FC];TDCGroupsFrm.rbRows:TRadioButton
 0077D358    call        TControl.SetText
 0077D35D    mov         edx,dword ptr ds:[7C4074];^'Number of inputs: %d'
 0077D363    mov         eax,dword ptr [ebx+424];TDCGroupsFrm.lbNumInputs:TLabel
 0077D369    call        TControl.SetText
 0077D36E    mov         edx,dword ptr ds:[7C4078];^'Number of outputs: %d'
 0077D374    mov         eax,dword ptr [ebx+428];TDCGroupsFrm.lbNumOutputs:TLabel
 0077D37A    call        TControl.SetText
 0077D37F    pop         ebx
 0077D380    ret
*}
end;

//0077D384
procedure TDCGroupsFrm.FormDestroy(Sender:TObject);
begin
{*
 0077D384    cmp         dword ptr ds:[9037C0],0;gvar_009037C0:TStringList
>0077D38B    je          0077D397
 0077D38D    mov         eax,[009037C0];gvar_009037C0:TStringList
 0077D392    call        TObject.Free
 0077D397    mov         eax,[007C42F0];^gvar_00903790:TDCCtrlObjects
 0077D39C    mov         eax,dword ptr [eax]
 0077D39E    call        TObject.Free
 0077D3A3    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077D3A8    mov         eax,dword ptr [eax]
 0077D3AA    call        TObject.Free
 0077D3AF    ret
*}
end;

//0077D3B0
procedure TDCGroupsFrm.FormShow(Sender:TObject);
begin
{*
 0077D3B0    push        ebp
 0077D3B1    mov         ebp,esp
 0077D3B3    mov         ecx,0B
 0077D3B8    push        0
 0077D3BA    push        0
 0077D3BC    dec         ecx
>0077D3BD    jne         0077D3B8
 0077D3BF    push        ebx
 0077D3C0    push        esi
 0077D3C1    push        edi
 0077D3C2    mov         dword ptr [ebp-4],edx
 0077D3C5    mov         ebx,eax
 0077D3C7    mov         esi,7C40C4;^'CtrlC'
 0077D3CC    mov         edi,7C40C8;^'Delay'
 0077D3D1    xor         eax,eax
 0077D3D3    push        ebp
 0077D3D4    push        77D965
 0077D3D9    push        dword ptr fs:[eax]
 0077D3DC    mov         dword ptr fs:[eax],esp
 0077D3DF    mov         edx,dword ptr ds:[7C405C];^'Delayed Controls'
 0077D3E5    mov         eax,ebx
 0077D3E7    call        TControl.SetText
 0077D3EC    mov         edx,dword ptr ds:[7C4060];^'Cause - Effect'
 0077D3F2    mov         eax,dword ptr [ebx+434];TDCGroupsFrm.btnCauseEffect:TButton
 0077D3F8    call        TControl.SetText
 0077D3FD    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077D402    mov         eax,dword ptr [eax]
 0077D404    call        TDCSystem.GetIOControls
 0077D409    mov         eax,ebx
 0077D40B    call        TDCGroupsFrm.UpdateITree
 0077D410    mov         eax,ebx
 0077D412    call        TDCGroupsFrm.UpdateOTree
 0077D417    mov         eax,[007C40AC];^'Panel'
 0077D41C    push        eax
 0077D41D    xor         ecx,ecx
 0077D41F    mov         edx,1
 0077D424    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D42A    call        TStringGrid.SetCells
 0077D42F    mov         eax,[007C4ED0];^^"'Loop '"
 0077D434    mov         eax,dword ptr [eax]
 0077D436    push        eax
 0077D437    xor         ecx,ecx
 0077D439    mov         edx,2
 0077D43E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D444    call        TStringGrid.SetCells
 0077D449    mov         eax,[007C40B0];^'Addr'
 0077D44E    push        eax
 0077D44F    xor         ecx,ecx
 0077D451    mov         edx,3
 0077D456    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D45C    call        TStringGrid.SetCells
 0077D461    mov         eax,[007C40B4];^'Type/Function'
 0077D466    push        eax
 0077D467    xor         ecx,ecx
 0077D469    mov         edx,4
 0077D46E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D474    call        TStringGrid.SetCells
 0077D479    mov         eax,[007C40B8];^'CtrlA'
 0077D47E    push        eax
 0077D47F    xor         ecx,ecx
 0077D481    mov         edx,5
 0077D486    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D48C    call        TStringGrid.SetCells
 0077D491    mov         eax,[007C40BC];^'CtrlB'
 0077D496    push        eax
 0077D497    xor         ecx,ecx
 0077D499    mov         edx,6
 0077D49E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D4A4    call        TStringGrid.SetCells
 0077D4A9    mov         eax,[007C40C0];^'CtrlB2'
 0077D4AE    push        eax
 0077D4AF    xor         ecx,ecx
 0077D4B1    mov         edx,7
 0077D4B6    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D4BC    call        TStringGrid.SetCells
 0077D4C1    lea         eax,[ebp-8]
 0077D4C4    mov         ecx,77D980;'1'
 0077D4C9    mov         edx,dword ptr [esi]
 0077D4CB    call        @UStrCat3
 0077D4D0    mov         eax,dword ptr [ebp-8]
 0077D4D3    push        eax
 0077D4D4    xor         ecx,ecx
 0077D4D6    mov         edx,8
 0077D4DB    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D4E1    call        TStringGrid.SetCells
 0077D4E6    lea         eax,[ebp-0C]
 0077D4E9    mov         ecx,77D980;'1'
 0077D4EE    mov         edx,dword ptr [edi]
 0077D4F0    call        @UStrCat3
 0077D4F5    mov         eax,dword ptr [ebp-0C]
 0077D4F8    push        eax
 0077D4F9    xor         ecx,ecx
 0077D4FB    mov         edx,9
 0077D500    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D506    call        TStringGrid.SetCells
 0077D50B    lea         eax,[ebp-10]
 0077D50E    mov         ecx,77D980;'1'
 0077D513    mov         edx,dword ptr ds:[7C40CC];^'Event'
 0077D519    call        @UStrCat3
 0077D51E    mov         eax,dword ptr [ebp-10]
 0077D521    push        eax
 0077D522    xor         ecx,ecx
 0077D524    mov         edx,0A
 0077D529    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D52F    call        TStringGrid.SetCells
 0077D534    lea         eax,[ebp-14]
 0077D537    mov         ecx,77D990;'2'
 0077D53C    mov         edx,dword ptr [esi]
 0077D53E    call        @UStrCat3
 0077D543    mov         eax,dword ptr [ebp-14]
 0077D546    push        eax
 0077D547    xor         ecx,ecx
 0077D549    mov         edx,0B
 0077D54E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D554    call        TStringGrid.SetCells
 0077D559    lea         eax,[ebp-18]
 0077D55C    mov         ecx,77D990;'2'
 0077D561    mov         edx,dword ptr [edi]
 0077D563    call        @UStrCat3
 0077D568    mov         eax,dword ptr [ebp-18]
 0077D56B    push        eax
 0077D56C    xor         ecx,ecx
 0077D56E    mov         edx,0C
 0077D573    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D579    call        TStringGrid.SetCells
 0077D57E    lea         eax,[ebp-1C]
 0077D581    mov         ecx,77D990;'2'
 0077D586    mov         edx,dword ptr ds:[7C40CC];^'Event'
 0077D58C    call        @UStrCat3
 0077D591    mov         eax,dword ptr [ebp-1C]
 0077D594    push        eax
 0077D595    xor         ecx,ecx
 0077D597    mov         edx,0D
 0077D59C    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D5A2    call        TStringGrid.SetCells
 0077D5A7    lea         eax,[ebp-20]
 0077D5AA    mov         ecx,77D9A0;'3'
 0077D5AF    mov         edx,dword ptr [esi]
 0077D5B1    call        @UStrCat3
 0077D5B6    mov         eax,dword ptr [ebp-20]
 0077D5B9    push        eax
 0077D5BA    xor         ecx,ecx
 0077D5BC    mov         edx,0E
 0077D5C1    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D5C7    call        TStringGrid.SetCells
 0077D5CC    lea         eax,[ebp-24]
 0077D5CF    mov         ecx,77D9A0;'3'
 0077D5D4    mov         edx,dword ptr [edi]
 0077D5D6    call        @UStrCat3
 0077D5DB    mov         eax,dword ptr [ebp-24]
 0077D5DE    push        eax
 0077D5DF    xor         ecx,ecx
 0077D5E1    mov         edx,0F
 0077D5E6    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D5EC    call        TStringGrid.SetCells
 0077D5F1    lea         eax,[ebp-28]
 0077D5F4    mov         ecx,77D9A0;'3'
 0077D5F9    mov         edx,dword ptr ds:[7C40CC];^'Event'
 0077D5FF    call        @UStrCat3
 0077D604    mov         eax,dword ptr [ebp-28]
 0077D607    push        eax
 0077D608    xor         ecx,ecx
 0077D60A    mov         edx,10
 0077D60F    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D615    call        TStringGrid.SetCells
 0077D61A    lea         eax,[ebp-2C]
 0077D61D    mov         ecx,77D9B0;'4'
 0077D622    mov         edx,dword ptr [esi]
 0077D624    call        @UStrCat3
 0077D629    mov         eax,dword ptr [ebp-2C]
 0077D62C    push        eax
 0077D62D    xor         ecx,ecx
 0077D62F    mov         edx,11
 0077D634    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D63A    call        TStringGrid.SetCells
 0077D63F    lea         eax,[ebp-30]
 0077D642    mov         ecx,77D9B0;'4'
 0077D647    mov         edx,dword ptr [edi]
 0077D649    call        @UStrCat3
 0077D64E    mov         eax,dword ptr [ebp-30]
 0077D651    push        eax
 0077D652    xor         ecx,ecx
 0077D654    mov         edx,12
 0077D659    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D65F    call        TStringGrid.SetCells
 0077D664    lea         eax,[ebp-34]
 0077D667    mov         ecx,77D9B0;'4'
 0077D66C    mov         edx,dword ptr ds:[7C40CC];^'Event'
 0077D672    call        @UStrCat3
 0077D677    mov         eax,dword ptr [ebp-34]
 0077D67A    push        eax
 0077D67B    xor         ecx,ecx
 0077D67D    mov         edx,13
 0077D682    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D688    call        TStringGrid.SetCells
 0077D68D    lea         eax,[ebp-38]
 0077D690    mov         ecx,77D9C0;'5'
 0077D695    mov         edx,dword ptr [esi]
 0077D697    call        @UStrCat3
 0077D69C    mov         eax,dword ptr [ebp-38]
 0077D69F    push        eax
 0077D6A0    xor         ecx,ecx
 0077D6A2    mov         edx,14
 0077D6A7    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D6AD    call        TStringGrid.SetCells
 0077D6B2    lea         eax,[ebp-3C]
 0077D6B5    mov         ecx,77D9C0;'5'
 0077D6BA    mov         edx,dword ptr [edi]
 0077D6BC    call        @UStrCat3
 0077D6C1    mov         eax,dword ptr [ebp-3C]
 0077D6C4    push        eax
 0077D6C5    xor         ecx,ecx
 0077D6C7    mov         edx,15
 0077D6CC    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D6D2    call        TStringGrid.SetCells
 0077D6D7    lea         eax,[ebp-40]
 0077D6DA    mov         ecx,77D9C0;'5'
 0077D6DF    mov         edx,dword ptr ds:[7C40CC];^'Event'
 0077D6E5    call        @UStrCat3
 0077D6EA    mov         eax,dword ptr [ebp-40]
 0077D6ED    push        eax
 0077D6EE    xor         ecx,ecx
 0077D6F0    mov         edx,16
 0077D6F5    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D6FB    call        TStringGrid.SetCells
 0077D700    lea         eax,[ebp-44]
 0077D703    mov         ecx,77D9D0;'6'
 0077D708    mov         edx,dword ptr [esi]
 0077D70A    call        @UStrCat3
 0077D70F    mov         eax,dword ptr [ebp-44]
 0077D712    push        eax
 0077D713    xor         ecx,ecx
 0077D715    mov         edx,17
 0077D71A    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D720    call        TStringGrid.SetCells
 0077D725    lea         eax,[ebp-48]
 0077D728    mov         ecx,77D9D0;'6'
 0077D72D    mov         edx,dword ptr [edi]
 0077D72F    call        @UStrCat3
 0077D734    mov         eax,dword ptr [ebp-48]
 0077D737    push        eax
 0077D738    xor         ecx,ecx
 0077D73A    mov         edx,18
 0077D73F    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D745    call        TStringGrid.SetCells
 0077D74A    lea         eax,[ebp-4C]
 0077D74D    mov         ecx,77D9D0;'6'
 0077D752    mov         edx,dword ptr ds:[7C40CC];^'Event'
 0077D758    call        @UStrCat3
 0077D75D    mov         eax,dword ptr [ebp-4C]
 0077D760    push        eax
 0077D761    xor         ecx,ecx
 0077D763    mov         edx,19
 0077D768    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D76E    call        TStringGrid.SetCells
 0077D773    lea         eax,[ebp-50]
 0077D776    mov         ecx,77D9E0;'7'
 0077D77B    mov         edx,dword ptr [esi]
 0077D77D    call        @UStrCat3
 0077D782    mov         eax,dword ptr [ebp-50]
 0077D785    push        eax
 0077D786    xor         ecx,ecx
 0077D788    mov         edx,1A
 0077D78D    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D793    call        TStringGrid.SetCells
 0077D798    lea         eax,[ebp-54]
 0077D79B    mov         ecx,77D9E0;'7'
 0077D7A0    mov         edx,dword ptr [edi]
 0077D7A2    call        @UStrCat3
 0077D7A7    mov         eax,dword ptr [ebp-54]
 0077D7AA    push        eax
 0077D7AB    xor         ecx,ecx
 0077D7AD    mov         edx,1B
 0077D7B2    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D7B8    call        TStringGrid.SetCells
 0077D7BD    lea         eax,[ebp-58]
 0077D7C0    mov         ecx,77D9E0;'7'
 0077D7C5    mov         edx,dword ptr ds:[7C40CC];^'Event'
 0077D7CB    call        @UStrCat3
 0077D7D0    mov         eax,dword ptr [ebp-58]
 0077D7D3    push        eax
 0077D7D4    xor         ecx,ecx
 0077D7D6    mov         edx,1C
 0077D7DB    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D7E1    call        TStringGrid.SetCells
 0077D7E6    mov         ecx,14
 0077D7EB    xor         edx,edx
 0077D7ED    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D7F3    call        TCustomDrawGrid.SetColWidths
 0077D7F8    mov         ecx,64
 0077D7FD    mov         edx,4
 0077D802    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077D808    call        TCustomDrawGrid.SetColWidths
 0077D80D    mov         eax,[007C40AC];^'Panel'
 0077D812    push        eax
 0077D813    xor         ecx,ecx
 0077D815    mov         edx,1
 0077D81A    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D820    call        TStringGrid.SetCells
 0077D825    mov         eax,[007C4ED0];^^"'Loop '"
 0077D82A    mov         eax,dword ptr [eax]
 0077D82C    push        eax
 0077D82D    xor         ecx,ecx
 0077D82F    mov         edx,2
 0077D834    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D83A    call        TStringGrid.SetCells
 0077D83F    mov         eax,[007C40B0];^'Addr'
 0077D844    push        eax
 0077D845    xor         ecx,ecx
 0077D847    mov         edx,3
 0077D84C    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D852    call        TStringGrid.SetCells
 0077D857    mov         eax,[007C40D0];^'Type/Input'
 0077D85C    push        eax
 0077D85D    xor         ecx,ecx
 0077D85F    mov         edx,4
 0077D864    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D86A    call        TStringGrid.SetCells
 0077D86F    mov         eax,[007C40D4];^'Output function'
 0077D874    push        eax
 0077D875    xor         ecx,ecx
 0077D877    mov         edx,5
 0077D87C    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D882    call        TStringGrid.SetCells
 0077D887    mov         eax,[007C40D8];^'Output 2 function'
 0077D88C    push        eax
 0077D88D    xor         ecx,ecx
 0077D88F    mov         edx,6
 0077D894    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D89A    call        TStringGrid.SetCells
 0077D89F    mov         eax,[007C40DC];^'Ctrl groups'
 0077D8A4    push        eax
 0077D8A5    xor         ecx,ecx
 0077D8A7    mov         edx,7
 0077D8AC    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D8B2    call        TStringGrid.SetCells
 0077D8B7    mov         eax,[007C40E0];^'Text'
 0077D8BC    push        eax
 0077D8BD    xor         ecx,ecx
 0077D8BF    mov         edx,8
 0077D8C4    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D8CA    call        TStringGrid.SetCells
 0077D8CF    mov         ecx,14
 0077D8D4    xor         edx,edx
 0077D8D6    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D8DC    call        TCustomDrawGrid.SetColWidths
 0077D8E1    mov         ecx,64
 0077D8E6    mov         edx,4
 0077D8EB    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D8F1    call        TCustomDrawGrid.SetColWidths
 0077D8F6    mov         ecx,96
 0077D8FB    mov         edx,5
 0077D900    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D906    call        TCustomDrawGrid.SetColWidths
 0077D90B    mov         ecx,64
 0077D910    mov         edx,6
 0077D915    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D91B    call        TCustomDrawGrid.SetColWidths
 0077D920    mov         ecx,96
 0077D925    mov         edx,7
 0077D92A    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D930    call        TCustomDrawGrid.SetColWidths
 0077D935    mov         ecx,12C
 0077D93A    mov         edx,8
 0077D93F    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 0077D945    call        TCustomDrawGrid.SetColWidths
 0077D94A    xor         eax,eax
 0077D94C    pop         edx
 0077D94D    pop         ecx
 0077D94E    pop         ecx
 0077D94F    mov         dword ptr fs:[eax],edx
 0077D952    push        77D96C
 0077D957    lea         eax,[ebp-58]
 0077D95A    mov         edx,15
 0077D95F    call        @UStrArrayClr
 0077D964    ret
>0077D965    jmp         @HandleFinally
>0077D96A    jmp         0077D957
 0077D96C    pop         edi
 0077D96D    pop         esi
 0077D96E    pop         ebx
 0077D96F    mov         esp,ebp
 0077D971    pop         ebp
 0077D972    ret
*}
end;

//0077D9E4
procedure TDCGroupsFrm.FormClose(Sender:TObject; var Action:UITypes.TCloseAction);
begin
{*
 0077D9E4    push        ebx
 0077D9E5    mov         ebx,ecx
 0077D9E7    mov         eax,[007C4664];^gvar_009037A0:TDCCauseEffectForm
 0077D9EC    mov         eax,dword ptr [eax]
 0077D9EE    mov         edx,dword ptr ds:[7C4664];^gvar_009037A0:TDCCauseEffectForm
 0077D9F4    xor         ecx,ecx
 0077D9F6    mov         dword ptr [edx],ecx
 0077D9F8    call        TObject.Free
 0077D9FD    mov         byte ptr [ebx],2
 0077DA00    pop         ebx
 0077DA01    ret
*}
end;

//0077DA04
procedure TDCGroupsFrm.SplitterAMoved(Sender:TObject);
begin
{*
 0077DA04    mov         edx,dword ptr [eax+3C4];TDCGroupsFrm.PanelALeft:TPanel
 0077DA0A    mov         edx,dword ptr [edx+58];TPanel.FWidth:Integer
 0077DA0D    mov         eax,dword ptr [eax+410];TDCGroupsFrm.PanelBLeft:TPanel
 0077DA13    call        TControl.SetWidth
 0077DA18    ret
*}
end;

//0077DA1C
procedure TDCGroupsFrm.SplitterBMoved(Sender:TObject);
begin
{*
 0077DA1C    mov         edx,dword ptr [eax+410];TDCGroupsFrm.PanelBLeft:TPanel
 0077DA22    mov         edx,dword ptr [edx+58];TPanel.FWidth:Integer
 0077DA25    mov         eax,dword ptr [eax+3C4];TDCGroupsFrm.PanelALeft:TPanel
 0077DA2B    call        TControl.SetWidth
 0077DA30    ret
*}
end;

//0077DA34
procedure TDCGroupsFrm.SplitterPaint(Sender:TObject);
begin
{*
 0077DA34    push        ebx
 0077DA35    push        esi
 0077DA36    push        edi
 0077DA37    push        ebp
 0077DA38    mov         ebx,edx
 0077DA3A    mov         eax,ebx
 0077DA3C    mov         edx,dword ptr ds:[5635CC];TSplitter
 0077DA42    call        @AsClass
 0077DA47    mov         ebx,eax
 0077DA49    mov         edx,dword ptr [ebx+5C];TSplitter.FHeight:Integer
 0077DA4C    mov         eax,dword ptr [ebx+58];TSplitter.FWidth:Integer
 0077DA4F    cmp         edx,eax
>0077DA51    jge         0077DB45
 0077DA57    mov         esi,eax
 0077DA59    sar         esi,1
>0077DA5B    jns         0077DA60
 0077DA5D    adc         esi,0
 0077DA60    sub         esi,0A
>0077DA63    jno         0077DA6A
 0077DA65    call        @IntOver
 0077DA6A    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DA70    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DA73    mov         edx,1
 0077DA78    call        TPen.SetWidth
 0077DA7D    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DA83    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DA86    mov         dl,2
 0077DA88    call        TPen.SetStyle
 0077DA8D    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DA93    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DA96    mov         edx,808080
 0077DA9B    call        TPen.SetColor
 0077DAA0    mov         ecx,2
 0077DAA5    mov         edx,esi
 0077DAA7    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DAAD    mov         edi,dword ptr [eax]
 0077DAAF    call        dword ptr [edi+64];TCanvas.MoveTo
 0077DAB2    mov         edi,15
 0077DAB7    add         edi,esi
>0077DAB9    jno         0077DAC0
 0077DABB    call        @IntOver
 0077DAC0    mov         edx,edi
 0077DAC2    mov         ecx,2
 0077DAC7    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DACD    mov         ebp,dword ptr [eax]
 0077DACF    call        dword ptr [ebp+60];TCanvas.LineTo
 0077DAD2    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DAD8    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DADB    mov         edx,808080
 0077DAE0    call        TPen.SetColor
 0077DAE5    mov         ecx,3
 0077DAEA    mov         edx,esi
 0077DAEC    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DAF2    mov         ebp,dword ptr [eax]
 0077DAF4    call        dword ptr [ebp+64];TCanvas.MoveTo
 0077DAF7    mov         edx,edi
 0077DAF9    mov         ecx,3
 0077DAFE    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB04    mov         ebp,dword ptr [eax]
 0077DB06    call        dword ptr [ebp+60];TCanvas.LineTo
 0077DB09    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB0F    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DB12    mov         edx,808080
 0077DB17    call        TPen.SetColor
 0077DB1C    mov         ecx,4
 0077DB21    mov         edx,esi
 0077DB23    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB29    mov         ebp,dword ptr [eax]
 0077DB2B    call        dword ptr [ebp+64];TCanvas.MoveTo
 0077DB2E    mov         edx,edi
 0077DB30    mov         ecx,4
 0077DB35    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB3B    mov         ebx,dword ptr [eax]
 0077DB3D    call        dword ptr [ebx+60];TCanvas.LineTo
>0077DB40    jmp         0077DC2E
 0077DB45    mov         esi,edx
 0077DB47    sar         esi,1
>0077DB49    jns         0077DB4E
 0077DB4B    adc         esi,0
 0077DB4E    sub         esi,0A
>0077DB51    jno         0077DB58
 0077DB53    call        @IntOver
 0077DB58    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB5E    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DB61    mov         edx,1
 0077DB66    call        TPen.SetWidth
 0077DB6B    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB71    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DB74    mov         dl,2
 0077DB76    call        TPen.SetStyle
 0077DB7B    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB81    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DB84    mov         edx,808080
 0077DB89    call        TPen.SetColor
 0077DB8E    mov         ecx,esi
 0077DB90    mov         edx,2
 0077DB95    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DB9B    mov         edi,dword ptr [eax]
 0077DB9D    call        dword ptr [edi+64];TCanvas.MoveTo
 0077DBA0    mov         edi,15
 0077DBA5    add         edi,esi
>0077DBA7    jno         0077DBAE
 0077DBA9    call        @IntOver
 0077DBAE    mov         ecx,edi
 0077DBB0    mov         edx,2
 0077DBB5    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DBBB    mov         ebp,dword ptr [eax]
 0077DBBD    call        dword ptr [ebp+60];TCanvas.LineTo
 0077DBC0    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DBC6    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DBC9    mov         edx,808080
 0077DBCE    call        TPen.SetColor
 0077DBD3    mov         ecx,esi
 0077DBD5    mov         edx,3
 0077DBDA    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DBE0    mov         ebp,dword ptr [eax]
 0077DBE2    call        dword ptr [ebp+64];TCanvas.MoveTo
 0077DBE5    mov         ecx,edi
 0077DBE7    mov         edx,3
 0077DBEC    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DBF2    mov         ebp,dword ptr [eax]
 0077DBF4    call        dword ptr [ebp+60];TCanvas.LineTo
 0077DBF7    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DBFD    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 0077DC00    mov         edx,808080
 0077DC05    call        TPen.SetColor
 0077DC0A    mov         ecx,esi
 0077DC0C    mov         edx,4
 0077DC11    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DC17    mov         ebp,dword ptr [eax]
 0077DC19    call        dword ptr [ebp+64];TCanvas.MoveTo
 0077DC1C    mov         ecx,edi
 0077DC1E    mov         edx,4
 0077DC23    mov         eax,dword ptr [ebx+1B8];TSplitter.FCanvas:TCanvas
 0077DC29    mov         ebx,dword ptr [eax]
 0077DC2B    call        dword ptr [ebx+60];TCanvas.LineTo
 0077DC2E    pop         ebp
 0077DC2F    pop         edi
 0077DC30    pop         esi
 0077DC31    pop         ebx
 0077DC32    ret
*}
end;

//0077DC34
procedure TDCGroupsFrm.Translate(IniFile:TFXIniFile);
begin
{*
 0077DC34    push        ebp
 0077DC35    mov         ebp,esp
 0077DC37    mov         ecx,14
 0077DC3C    push        0
 0077DC3E    push        0
 0077DC40    dec         ecx
>0077DC41    jne         0077DC3C
 0077DC43    push        ecx
 0077DC44    push        ebx
 0077DC45    push        esi
 0077DC46    mov         ebx,edx
 0077DC48    xor         eax,eax
 0077DC4A    push        ebp
 0077DC4B    push        77E2E3
 0077DC50    push        dword ptr fs:[eax]
 0077DC53    mov         dword ptr fs:[eax],esp
 0077DC56    push        77E2FC;'Delayed Controls'
 0077DC5B    lea         eax,[ebp-4]
 0077DC5E    push        eax
 0077DC5F    mov         ecx,77E32C;'sDCForm'
 0077DC64    mov         edx,77E348;'DelayedControls'
 0077DC69    mov         eax,ebx
 0077DC6B    mov         esi,dword ptr [eax]
 0077DC6D    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DC70    push        dword ptr [ebp-4]
 0077DC73    push        77E374;' ('
 0077DC78    lea         edx,[ebp-8]
 0077DC7B    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0077DC80    mov         eax,dword ptr [eax]
 0077DC82    call        005DDC74
 0077DC87    push        dword ptr [ebp-8]
 0077DC8A    push        77E388;')'
 0077DC8F    mov         eax,7C405C;^'Delayed Controls'
 0077DC94    mov         edx,4
 0077DC99    call        @UStrCatN
 0077DC9E    push        77E398;'Cause - Effect'
 0077DCA3    lea         eax,[ebp-0C]
 0077DCA6    push        eax
 0077DCA7    mov         ecx,77E3C4;'sCauseEffect'
 0077DCAC    mov         edx,77E348;'DelayedControls'
 0077DCB1    mov         eax,ebx
 0077DCB3    mov         esi,dword ptr [eax]
 0077DCB5    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DCB8    mov         edx,dword ptr [ebp-0C]
 0077DCBB    mov         eax,7C4060;^'Cause - Effect'
 0077DCC0    call        @UStrAsg
 0077DCC5    push        77E3EC;'Control inputs'
 0077DCCA    lea         eax,[ebp-10]
 0077DCCD    push        eax
 0077DCCE    mov         ecx,77E418;'sInputs'
 0077DCD3    mov         edx,77E348;'DelayedControls'
 0077DCD8    mov         eax,ebx
 0077DCDA    mov         esi,dword ptr [eax]
 0077DCDC    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DCDF    mov         edx,dword ptr [ebp-10]
 0077DCE2    mov         eax,7C4064;^'Control inputs'
 0077DCE7    call        @UStrAsg
 0077DCEC    push        77E434;'Control outputs'
 0077DCF1    lea         eax,[ebp-14]
 0077DCF4    push        eax
 0077DCF5    mov         ecx,77E460;'sOutputs'
 0077DCFA    mov         edx,77E348;'DelayedControls'
 0077DCFF    mov         eax,ebx
 0077DD01    mov         esi,dword ptr [eax]
 0077DD03    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DD06    mov         edx,dword ptr [ebp-14]
 0077DD09    mov         eax,7C4068;^'Control outputs'
 0077DD0E    call        @UStrAsg
 0077DD13    push        77E480;'Edit values'
 0077DD18    lea         eax,[ebp-18]
 0077DD1B    push        eax
 0077DD1C    mov         ecx,77E4A4;'srbEdit'
 0077DD21    mov         edx,77E348;'DelayedControls'
 0077DD26    mov         eax,ebx
 0077DD28    mov         esi,dword ptr [eax]
 0077DD2A    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DD2D    mov         edx,dword ptr [ebp-18]
 0077DD30    mov         eax,7C406C;^'Edit values'
 0077DD35    call        @UStrAsg
 0077DD3A    push        77E4C0;'Row select'
 0077DD3F    lea         eax,[ebp-1C]
 0077DD42    push        eax
 0077DD43    mov         ecx,77E4E4;'srbRows'
 0077DD48    mov         edx,77E348;'DelayedControls'
 0077DD4D    mov         eax,ebx
 0077DD4F    mov         esi,dword ptr [eax]
 0077DD51    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DD54    mov         edx,dword ptr [ebp-1C]
 0077DD57    mov         eax,7C4070;^'Row select'
 0077DD5C    call        @UStrAsg
 0077DD61    push        77E500;'Number of inputs: %d'
 0077DD66    lea         eax,[ebp-20]
 0077DD69    push        eax
 0077DD6A    mov         ecx,77E538;'sNumOfInputs'
 0077DD6F    mov         edx,77E348;'DelayedControls'
 0077DD74    mov         eax,ebx
 0077DD76    mov         esi,dword ptr [eax]
 0077DD78    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DD7B    mov         edx,dword ptr [ebp-20]
 0077DD7E    mov         eax,7C4074;^'Number of inputs: %d'
 0077DD83    call        @UStrAsg
 0077DD88    push        77E560;'Number of outputs: %d'
 0077DD8D    lea         eax,[ebp-24]
 0077DD90    push        eax
 0077DD91    mov         ecx,77E598;'sNumOfOutputs'
 0077DD96    mov         edx,77E348;'DelayedControls'
 0077DD9B    mov         eax,ebx
 0077DD9D    mov         esi,dword ptr [eax]
 0077DD9F    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DDA2    mov         edx,dword ptr [ebp-24]
 0077DDA5    mov         eax,7C4078;^'Number of outputs: %d'
 0077DDAA    call        @UStrAsg
 0077DDAF    push        77E5C0;'Panel ID of the address or input/output'
 0077DDB4    lea         eax,[ebp-28]
 0077DDB7    push        eax
 0077DDB8    mov         ecx,77E61C;'sHintColPanel'
 0077DDBD    mov         edx,77E348;'DelayedControls'
 0077DDC2    mov         eax,ebx
 0077DDC4    mov         esi,dword ptr [eax]
 0077DDC6    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DDC9    mov         edx,dword ptr [ebp-28]
 0077DDCC    mov         eax,7C407C;^'Panel ID of the address or input/output'
 0077DDD1    call        @UStrAsg
 0077DDD6    push        77E644;'Loop ID of address or IO controller'
 0077DDDB    lea         eax,[ebp-2C]
 0077DDDE    push        eax
 0077DDDF    mov         ecx,77E698;'sHintColLoop'
 0077DDE4    mov         edx,77E348;'DelayedControls'
 0077DDE9    mov         eax,ebx
 0077DDEB    mov         esi,dword ptr [eax]
 0077DDED    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DDF0    mov         edx,dword ptr [ebp-2C]
 0077DDF3    mov         eax,7C4080;^'Loop ID of address or IO controller'
 0077DDF8    call        @UStrAsg
 0077DDFD    push        77E6C0;'Address ID of address or input/output id'
 0077DE02    lea         eax,[ebp-30]
 0077DE05    push        eax
 0077DE06    mov         ecx,77E720;'sHintColAddr'
 0077DE0B    mov         edx,77E348;'DelayedControls'
 0077DE10    mov         eax,ebx
 0077DE12    mov         esi,dword ptr [eax]
 0077DE14    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DE17    mov         edx,dword ptr [ebp-30]
 0077DE1A    mov         eax,7C4084;^'Address ID of address or input/output id'
 0077DE1F    call        @UStrAsg
 0077DE24    push        77E748;'Device type or input/output function'
 0077DE29    lea         eax,[ebp-34]
 0077DE2C    push        eax
 0077DE2D    mov         ecx,77E7A0;'sHintColType'
 0077DE32    mov         edx,77E348;'DelayedControls'
 0077DE37    mov         eax,ebx
 0077DE39    mov         esi,dword ptr [eax]
 0077DE3B    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DE3E    mov         edx,dword ptr [ebp-34]
 0077DE41    mov         eax,7C4088;^'Device type or input/output function'
 0077DE46    call        @UStrAsg
 0077DE4B    push        77E7C8;'Control group A of the address or panel input.
The same entry as in the address...
 0077DE50    lea         eax,[ebp-38]
 0077DE53    push        eax
 0077DE54    mov         ecx,77E88C;'sHintColA'
 0077DE59    mov         edx,77E348;'DelayedControls'
 0077DE5E    mov         eax,ebx
 0077DE60    mov         esi,dword ptr [eax]
 0077DE62    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DE65    mov         edx,dword ptr [ebp-38]
 0077DE68    mov         eax,7C408C;^'Control group A of the address or panel input.
The same entry as in the ad...
 0077DE6D    call        @UStrAsg
 0077DE72    push        77E8AC;'Control group B of the address or panel input.
The same entry as in the address...
 0077DE77    lea         eax,[ebp-3C]
 0077DE7A    push        eax
 0077DE7B    mov         ecx,77E970;'sHintColB'
 0077DE80    mov         edx,77E348;'DelayedControls'
 0077DE85    mov         eax,ebx
 0077DE87    mov         esi,dword ptr [eax]
 0077DE89    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DE8C    mov         edx,dword ptr [ebp-3C]
 0077DE8F    mov         eax,7C4090;^'Control group B of the address or panel input.
The same entry as in the ad...
 0077DE94    call        @UStrAsg
 0077DE99    push        77E990;'Control group B2 of the address or panel input.
The same entry as in the addres...
 0077DE9E    lea         eax,[ebp-40]
 0077DEA1    push        eax
 0077DEA2    mov         ecx,77EA58;'sHintColB2'
 0077DEA7    mov         edx,77E348;'DelayedControls'
 0077DEAC    mov         eax,ebx
 0077DEAE    mov         esi,dword ptr [eax]
 0077DEB0    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DEB3    mov         edx,dword ptr [ebp-40]
 0077DEB6    mov         eax,7C4094;^'Control group B2 of the address or panel input.
The same entry as in the a...
 0077DEBB    call        @UStrAsg
 0077DEC0    push        77EA7C;'Control Group ID for delayed control %d'
 0077DEC5    lea         eax,[ebp-44]
 0077DEC8    push        eax
 0077DEC9    mov         ecx,77EAD8;'sHintColC'
 0077DECE    mov         edx,77E348;'DelayedControls'
 0077DED3    mov         eax,ebx
 0077DED5    mov         esi,dword ptr [eax]
 0077DED7    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DEDA    mov         edx,dword ptr [ebp-44]
 0077DEDD    mov         eax,7C4098;^'Control Group ID for delayed control %d'
 0077DEE2    call        @UStrAsg
 0077DEE7    push        77EAF8;'Delay time (mm:ss) for delayed control %d'
 0077DEEC    lea         eax,[ebp-48]
 0077DEEF    push        eax
 0077DEF0    mov         ecx,77EB58;'sHintColD'
 0077DEF5    mov         edx,77E348;'DelayedControls'
 0077DEFA    mov         eax,ebx
 0077DEFC    mov         esi,dword ptr [eax]
 0077DEFE    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DF01    mov         edx,dword ptr [ebp-48]
 0077DF04    mov         eax,7C409C;^'Delay time (mm:ss) for delayed control %d'
 0077DF09    call        @UStrAsg
 0077DF0E    push        77EB78;'Event type(s) that trigger delayed control %d'
 0077DF13    lea         eax,[ebp-4C]
 0077DF16    push        eax
 0077DF17    mov         ecx,77EBE0;'sHintColE'
 0077DF1C    mov         edx,77E348;'DelayedControls'
 0077DF21    mov         eax,ebx
 0077DF23    mov         esi,dword ptr [eax]
 0077DF25    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DF28    mov         edx,dword ptr [ebp-4C]
 0077DF2B    mov         eax,7C40A0;^'Event type(s) that trigger delayed control %d'
 0077DF30    call        @UStrAsg
 0077DF35    push        77EC00;'Device type of output or
Output line type:
CCO - Clean Contact Output
MRO - M...
 0077DF3A    lea         eax,[ebp-50]
 0077DF3D    push        eax
 0077DF3E    mov         ecx,77ECD8;'sHintOutType'
 0077DF43    mov         edx,77E348;'DelayedControls'
 0077DF48    mov         eax,ebx
 0077DF4A    mov         esi,dword ptr [eax]
 0077DF4C    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DF4F    mov         edx,dword ptr [ebp-50]
 0077DF52    mov         eax,7C40A4;^'Device type of output or
Output line type:
CCO - Clean Contact Output
MR...
 0077DF57    call        @UStrAsg
 0077DF5C    push        77ED00;'Control groups that activate this output'
 0077DF61    lea         eax,[ebp-54]
 0077DF64    push        eax
 0077DF65    mov         ecx,77ED60;'sHintCGroups'
 0077DF6A    mov         edx,77E348;'DelayedControls'
 0077DF6F    mov         eax,ebx
 0077DF71    mov         esi,dword ptr [eax]
 0077DF73    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DF76    mov         edx,dword ptr [ebp-54]
 0077DF79    mov         eax,7C40A8;^'Control groups that activate this output'
 0077DF7E    call        @UStrAsg
 0077DF83    push        77ED88;'IoUnit'
 0077DF88    lea         eax,[ebp-58]
 0077DF8B    push        eax
 0077DF8C    mov         ecx,77EDA4;'sIoUnit'
 0077DF91    mov         edx,77E348;'DelayedControls'
 0077DF96    mov         eax,ebx
 0077DF98    mov         esi,dword ptr [eax]
 0077DF9A    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DF9D    mov         edx,dword ptr [ebp-58]
 0077DFA0    mov         eax,[007C4F18];^^'IoUnit'
 0077DFA5    call        @UStrAsg
 0077DFAA    push        77EDC0;'Input'
 0077DFAF    lea         eax,[ebp-5C]
 0077DFB2    push        eax
 0077DFB3    mov         ecx,77EDD8;'sInput'
 0077DFB8    mov         edx,77E348;'DelayedControls'
 0077DFBD    mov         eax,ebx
 0077DFBF    mov         esi,dword ptr [eax]
 0077DFC1    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DFC4    mov         edx,dword ptr [ebp-5C]
 0077DFC7    mov         eax,[007C45E4];^^"'Input'"
 0077DFCC    call        @UStrAsg
 0077DFD1    push        77EDF4;'Output'
 0077DFD6    lea         eax,[ebp-60]
 0077DFD9    push        eax
 0077DFDA    mov         ecx,77EE10;'sOutput'
 0077DFDF    mov         edx,77E348;'DelayedControls'
 0077DFE4    mov         eax,ebx
 0077DFE6    mov         esi,dword ptr [eax]
 0077DFE8    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077DFEB    mov         edx,dword ptr [ebp-60]
 0077DFEE    mov         eax,[007C422C];^^'Output'
 0077DFF3    call        @UStrAsg
 0077DFF8    push        77EE2C;'Panel'
 0077DFFD    lea         eax,[ebp-64]
 0077E000    push        eax
 0077E001    mov         ecx,77EE44;'sPanel'
 0077E006    mov         edx,77E348;'DelayedControls'
 0077E00B    mov         eax,ebx
 0077E00D    mov         esi,dword ptr [eax]
 0077E00F    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E012    mov         edx,dword ptr [ebp-64]
 0077E015    mov         eax,7C40AC;^'Panel'
 0077E01A    call        @UStrAsg
 0077E01F    push        77EE60;'Loop'
 0077E024    lea         eax,[ebp-68]
 0077E027    push        eax
 0077E028    mov         ecx,77EE78;'sALoop'
 0077E02D    mov         edx,77E348;'DelayedControls'
 0077E032    mov         eax,ebx
 0077E034    mov         esi,dword ptr [eax]
 0077E036    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E039    mov         edx,dword ptr [ebp-68]
 0077E03C    mov         eax,[007C4ED0];^^"'Loop '"
 0077E041    call        @UStrAsg
 0077E046    push        77EE94;'Addr'
 0077E04B    lea         eax,[ebp-6C]
 0077E04E    push        eax
 0077E04F    mov         ecx,77EEAC;'sAddr'
 0077E054    mov         edx,77E348;'DelayedControls'
 0077E059    mov         eax,ebx
 0077E05B    mov         esi,dword ptr [eax]
 0077E05D    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E060    mov         edx,dword ptr [ebp-6C]
 0077E063    mov         eax,7C40B0;^'Addr'
 0077E068    call        @UStrAsg
 0077E06D    push        77EEC4;'Type/Function'
 0077E072    lea         eax,[ebp-70]
 0077E075    push        eax
 0077E076    mov         ecx,77EEEC;'sTypeFunction'
 0077E07B    mov         edx,77E348;'DelayedControls'
 0077E080    mov         eax,ebx
 0077E082    mov         esi,dword ptr [eax]
 0077E084    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E087    mov         edx,dword ptr [ebp-70]
 0077E08A    mov         eax,7C40B4;^'Type/Function'
 0077E08F    call        @UStrAsg
 0077E094    push        77EF14;'CtrlA'
 0077E099    lea         eax,[ebp-74]
 0077E09C    push        eax
 0077E09D    mov         ecx,77EF2C;'sCtrlA'
 0077E0A2    mov         edx,77E348;'DelayedControls'
 0077E0A7    mov         eax,ebx
 0077E0A9    mov         esi,dword ptr [eax]
 0077E0AB    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E0AE    mov         edx,dword ptr [ebp-74]
 0077E0B1    mov         eax,7C40B8;^'CtrlA'
 0077E0B6    call        @UStrAsg
 0077E0BB    push        77EF48;'CtrlB'
 0077E0C0    lea         eax,[ebp-78]
 0077E0C3    push        eax
 0077E0C4    mov         ecx,77EF60;'sCtrlB'
 0077E0C9    mov         edx,77E348;'DelayedControls'
 0077E0CE    mov         eax,ebx
 0077E0D0    mov         esi,dword ptr [eax]
 0077E0D2    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E0D5    mov         edx,dword ptr [ebp-78]
 0077E0D8    mov         eax,7C40BC;^'CtrlB'
 0077E0DD    call        @UStrAsg
 0077E0E2    push        77EF7C;'CtrlB2'
 0077E0E7    lea         eax,[ebp-7C]
 0077E0EA    push        eax
 0077E0EB    mov         ecx,77EF98;'sCtrlB2'
 0077E0F0    mov         edx,77E348;'DelayedControls'
 0077E0F5    mov         eax,ebx
 0077E0F7    mov         esi,dword ptr [eax]
 0077E0F9    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E0FC    mov         edx,dword ptr [ebp-7C]
 0077E0FF    mov         eax,7C40C0;^'CtrlB2'
 0077E104    call        @UStrAsg
 0077E109    push        77EFB4;'CtrlC'
 0077E10E    lea         eax,[ebp-80]
 0077E111    push        eax
 0077E112    mov         ecx,77EFCC;'sCtrlG'
 0077E117    mov         edx,77E348;'DelayedControls'
 0077E11C    mov         eax,ebx
 0077E11E    mov         esi,dword ptr [eax]
 0077E120    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E123    mov         edx,dword ptr [ebp-80]
 0077E126    mov         eax,7C40C4;^'CtrlC'
 0077E12B    call        @UStrAsg
 0077E130    push        77EFE8;'Delay'
 0077E135    lea         eax,[ebp-84]
 0077E13B    push        eax
 0077E13C    mov         ecx,77F000;'sDelay'
 0077E141    mov         edx,77E348;'DelayedControls'
 0077E146    mov         eax,ebx
 0077E148    mov         esi,dword ptr [eax]
 0077E14A    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E14D    mov         edx,dword ptr [ebp-84]
 0077E153    mov         eax,7C40C8;^'Delay'
 0077E158    call        @UStrAsg
 0077E15D    push        77F01C;'Event'
 0077E162    lea         eax,[ebp-88]
 0077E168    push        eax
 0077E169    mov         ecx,77F034;'sEvent'
 0077E16E    mov         edx,77E348;'DelayedControls'
 0077E173    mov         eax,ebx
 0077E175    mov         esi,dword ptr [eax]
 0077E177    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E17A    mov         edx,dword ptr [ebp-88]
 0077E180    mov         eax,7C40CC;^'Event'
 0077E185    call        @UStrAsg
 0077E18A    push        77F050;'Type/Input'
 0077E18F    lea         eax,[ebp-8C]
 0077E195    push        eax
 0077E196    mov         ecx,77F074;'sType'
 0077E19B    mov         edx,77E348;'DelayedControls'
 0077E1A0    mov         eax,ebx
 0077E1A2    mov         esi,dword ptr [eax]
 0077E1A4    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E1A7    mov         edx,dword ptr [ebp-8C]
 0077E1AD    mov         eax,7C40D0;^'Type/Input'
 0077E1B2    call        @UStrAsg
 0077E1B7    push        77F08C;'Output function'
 0077E1BC    lea         eax,[ebp-90]
 0077E1C2    push        eax
 0077E1C3    mov         ecx,77F0B8;'sOutFunction'
 0077E1C8    mov         edx,77E348;'DelayedControls'
 0077E1CD    mov         eax,ebx
 0077E1CF    mov         esi,dword ptr [eax]
 0077E1D1    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E1D4    mov         edx,dword ptr [ebp-90]
 0077E1DA    mov         eax,7C40D4;^'Output function'
 0077E1DF    call        @UStrAsg
 0077E1E4    push        77F0E0;'Output 2 function'
 0077E1E9    lea         eax,[ebp-94]
 0077E1EF    push        eax
 0077E1F0    mov         ecx,77F110;'sOutFunction2'
 0077E1F5    mov         edx,77E348;'DelayedControls'
 0077E1FA    mov         eax,ebx
 0077E1FC    mov         esi,dword ptr [eax]
 0077E1FE    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E201    mov         edx,dword ptr [ebp-94]
 0077E207    mov         eax,7C40D8;^'Output 2 function'
 0077E20C    call        @UStrAsg
 0077E211    push        77F138;'Ctrl groups'
 0077E216    lea         eax,[ebp-98]
 0077E21C    push        eax
 0077E21D    mov         ecx,77F15C;'sCtrlGroups'
 0077E222    mov         edx,77E348;'DelayedControls'
 0077E227    mov         eax,ebx
 0077E229    mov         esi,dword ptr [eax]
 0077E22B    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E22E    mov         edx,dword ptr [ebp-98]
 0077E234    mov         eax,7C40DC;^'Ctrl groups'
 0077E239    call        @UStrAsg
 0077E23E    push        77F180;'Text'
 0077E243    lea         eax,[ebp-9C]
 0077E249    push        eax
 0077E24A    mov         ecx,77F198;'sCustomText'
 0077E24F    mov         edx,77E348;'DelayedControls'
 0077E254    mov         eax,ebx
 0077E256    mov         esi,dword ptr [eax]
 0077E258    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E25B    mov         edx,dword ptr [ebp-9C]
 0077E261    mov         eax,7C40E0;^'Text'
 0077E266    call        @UStrAsg
 0077E26B    push        77F1BC;'Errors in input table'
 0077E270    lea         eax,[ebp-0A0]
 0077E276    push        eax
 0077E277    mov         ecx,77F1F4;'sIGridErrors'
 0077E27C    mov         edx,77E348;'DelayedControls'
 0077E281    mov         eax,ebx
 0077E283    mov         esi,dword ptr [eax]
 0077E285    call        dword ptr [esi+4];TFXIniFile.ReadString
 0077E288    mov         edx,dword ptr [ebp-0A0]
 0077E28E    mov         eax,7C40E4;^'Errors in input table'
 0077E293    call        @UStrAsg
 0077E298    push        77F21C;'Errors in output table'
 0077E29D    lea         eax,[ebp-0A4]
 0077E2A3    push        eax
 0077E2A4    mov         ecx,77F258;'sOGridErrors'
 0077E2A9    mov         edx,77E348;'DelayedControls'
 0077E2AE    mov         eax,ebx
 0077E2B0    mov         ebx,dword ptr [eax]
 0077E2B2    call        dword ptr [ebx+4];TFXIniFile.ReadString
 0077E2B5    mov         edx,dword ptr [ebp-0A4]
 0077E2BB    mov         eax,7C40E8;^'Errors in output table'
 0077E2C0    call        @UStrAsg
 0077E2C5    xor         eax,eax
 0077E2C7    pop         edx
 0077E2C8    pop         ecx
 0077E2C9    pop         ecx
 0077E2CA    mov         dword ptr fs:[eax],edx
 0077E2CD    push        77E2EA
 0077E2D2    lea         eax,[ebp-0A4]
 0077E2D8    mov         edx,29
 0077E2DD    call        @UStrArrayClr
 0077E2E2    ret
>0077E2E3    jmp         @HandleFinally
>0077E2E8    jmp         0077E2D2
 0077E2EA    pop         esi
 0077E2EB    pop         ebx
 0077E2EC    mov         esp,ebp
 0077E2EE    pop         ebp
 0077E2EF    ret
*}
end;

//0077F274
procedure TDCGroupsFrm.rbEditClick(Sender:TObject);
begin
{*
 0077F274    push        ebx
 0077F275    push        esi
 0077F276    mov         ebx,eax
 0077F278    mov         esi,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F27E    mov         edx,dword ptr ds:[77F2CC];0x1010 gvar_0077F2CC
 0077F284    not         edx
 0077F286    and         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 0077F28C    mov         eax,esi
 0077F28E    call        TDrawGrid.SetOptions
 0077F293    mov         esi,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F299    mov         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 0077F29F    or          edx,dword ptr ds:[77F2D0];0x400 gvar_0077F2D0
 0077F2A5    mov         eax,esi
 0077F2A7    call        TDrawGrid.SetOptions
 0077F2AC    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F2B2    mov         edx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0077F2B8    call        TCustomGrid.InvalidateRow
 0077F2BD    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F2C3    call        TStringGrid.DefaultSelection
 0077F2C8    pop         esi
 0077F2C9    pop         ebx
 0077F2CA    ret
*}
end;

//0077F2D4
procedure TDCGroupsFrm.rbRowsClick(Sender:TObject);
begin
{*
 0077F2D4    push        ebx
 0077F2D5    push        esi
 0077F2D6    mov         ebx,eax
 0077F2D8    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F2DE    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>0077F2E5    jl          0077F2F0
 0077F2E7    cmp         dword ptr [eax+2AC],1;TStringGrid.FDefaultRowHeight:Integer
>0077F2EE    jge         0077F2FA
 0077F2F0    mov         edx,7C40EC
 0077F2F5    call        006C0FA8
 0077F2FA    mov         esi,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F300    mov         edx,dword ptr ds:[77F364];0x400 gvar_0077F364
 0077F306    not         edx
 0077F308    and         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 0077F30E    mov         eax,esi
 0077F310    call        TDrawGrid.SetOptions
 0077F315    mov         esi,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F31B    mov         edx,dword ptr [esi+2D4];TStringGrid.FOptions:TGridOptions
 0077F321    or          edx,dword ptr ds:[77F368];0x1010 gvar_0077F368
 0077F327    mov         eax,esi
 0077F329    call        TDrawGrid.SetOptions
 0077F32E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F334    cmp         dword ptr [eax+2A8],1;TStringGrid.FCurrent:TGridCoord
>0077F33B    jl          0077F346
 0077F33D    cmp         dword ptr [eax+2AC],1;TStringGrid.FDefaultRowHeight:Integer
>0077F344    jge         0077F350
 0077F346    mov         edx,7C40EC
 0077F34B    call        006C0FA8
 0077F350    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F356    mov         edx,dword ptr [eax+2AC];TStringGrid.FDefaultRowHeight:Integer
 0077F35C    call        TCustomGrid.InvalidateRow
 0077F361    pop         esi
 0077F362    pop         ebx
 0077F363    ret
*}
end;

//0077F36C
procedure TDCGroupsFrm.btnCancelClick(Sender:TObject);
begin
{*
 0077F36C    call        TCustomForm.Close
 0077F371    ret
*}
end;

//0077F374
procedure TDCGroupsFrm.btnOKClick(Sender:TObject);
begin
{*
 0077F374    push        ebx
 0077F375    push        esi
 0077F376    push        edi
 0077F377    push        ebp
 0077F378    add         esp,0FFFFFFE0
 0077F37B    mov         dword ptr [esp],eax
 0077F37E    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 0077F383    mov         eax,dword ptr [eax]
 0077F385    mov         eax,dword ptr [eax+3C0]
 0077F38B    mov         edx,dword ptr [eax]
 0077F38D    call        dword ptr [edx+124]
 0077F393    mov         eax,dword ptr [esp]
 0077F396    call        00781CA4
 0077F39B    test        eax,eax
 0077F39D    setne       bl
 0077F3A0    mov         eax,dword ptr [esp]
 0077F3A3    call        00783E1C
 0077F3A8    test        eax,eax
 0077F3AA    setne       al
 0077F3AD    or          bl,al
>0077F3AF    jne         0077F709
 0077F3B5    mov         eax,dword ptr [esp]
 0077F3B8    call        TDCGroupsFrm.SaveIGridToTemp
 0077F3BD    mov         eax,dword ptr [esp]
 0077F3C0    call        TDCGroupsFrm.SaveOGridToTemp
 0077F3C5    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077F3CA    mov         eax,dword ptr [eax]
 0077F3CC    mov         eax,dword ptr [eax+0C]
 0077F3CF    mov         eax,dword ptr [eax+8]
 0077F3D2    sub         eax,1
>0077F3D5    jno         0077F3DC
 0077F3D7    call        @IntOver
 0077F3DC    test        eax,eax
>0077F3DE    jl          0077F701
 0077F3E4    inc         eax
 0077F3E5    mov         dword ptr [esp+18],eax
 0077F3E9    mov         dword ptr [esp+0C],0
 0077F3F1    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077F3F6    mov         eax,dword ptr [eax]
 0077F3F8    mov         ebx,dword ptr [eax+0C]
 0077F3FB    lea         eax,[ebx+8]
 0077F3FE    mov         edx,dword ptr [esp+0C]
 0077F402    call        00434534
 0077F407    mov         eax,dword ptr [ebx+20]
 0077F40A    mov         edx,dword ptr [esp+0C]
 0077F40E    mov         eax,dword ptr [eax+edx*4]
 0077F411    mov         dword ptr [esp+4],eax
 0077F415    mov         eax,dword ptr [esp+4]
 0077F419    mov         eax,dword ptr [eax+1C]
 0077F41C    mov         eax,dword ptr [eax+8]
 0077F41F    sub         eax,1
>0077F422    jno         0077F429
 0077F424    call        @IntOver
 0077F429    test        eax,eax
>0077F42B    jl          0077F5DD
 0077F431    inc         eax
 0077F432    mov         dword ptr [esp+1C],eax
 0077F436    mov         dword ptr [esp+14],0
 0077F43E    mov         eax,dword ptr [esp+4]
 0077F442    mov         ebx,dword ptr [eax+1C]
 0077F445    lea         eax,[ebx+8]
 0077F448    mov         edx,dword ptr [esp+14]
 0077F44C    call        00434534
 0077F451    mov         eax,dword ptr [ebx+20]
 0077F454    mov         edx,dword ptr [esp+14]
 0077F458    mov         ebx,dword ptr [eax+edx*4]
 0077F45B    mov         eax,dword ptr [ebx+1C]
 0077F45E    mov         esi,dword ptr [eax+8]
 0077F461    sub         esi,1
>0077F464    jno         0077F46B
 0077F466    call        @IntOver
 0077F46B    test        esi,esi
>0077F46D    jl          0077F5CF
 0077F473    inc         esi
 0077F474    xor         edi,edi
 0077F476    mov         ebp,dword ptr [ebx+1C]
 0077F479    lea         eax,[ebp+8]
 0077F47C    mov         edx,edi
 0077F47E    call        00434534
 0077F483    mov         eax,dword ptr [ebp+20]
 0077F486    mov         ebp,dword ptr [eax+edi*4]
 0077F489    mov         eax,ebp
 0077F48B    mov         edx,dword ptr [eax]
 0077F48D    call        dword ptr [edx+38]
 0077F490    mov         edx,eax
 0077F492    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0077F497    mov         eax,dword ptr [eax]
 0077F499    call        TFXNet.GetPanel
 0077F49E    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 0077F4A1    mov         edx,dword ptr [ebx+0C]
 0077F4A4    test        edx,edx
>0077F4A6    jne         0077F4FA
 0077F4A8    movzx       edx,byte ptr [ebp+20]
 0077F4AC    sub         dl,2
>0077F4AF    je          0077F4BA
 0077F4B1    dec         dl
>0077F4B3    je          0077F4DA
>0077F4B5    jmp         0077F5C7
 0077F4BA    lea         edx,[ebp+28]
 0077F4BD    push        edx
 0077F4BE    mov         ecx,dword ptr [ebp+1C]
 0077F4C1    cmp         ecx,0FF
>0077F4C7    jbe         0077F4CE
 0077F4C9    call        @BoundErr
 0077F4CE    xor         edx,edx
 0077F4D0    call        TFXPIO.SetCCOCtrlGroups
>0077F4D5    jmp         0077F5C7
 0077F4DA    lea         edx,[ebp+28]
 0077F4DD    push        edx
 0077F4DE    mov         ecx,dword ptr [ebp+1C]
 0077F4E1    cmp         ecx,0FF
>0077F4E7    jbe         0077F4EE
 0077F4E9    call        @BoundErr
 0077F4EE    xor         edx,edx
 0077F4F0    call        TFXPIO.SetADOCtrlGroups
>0077F4F5    jmp         0077F5C7
 0077F4FA    mov         ecx,dword ptr [ebx+10]
 0077F4FD    dec         ecx
>0077F4FE    je          0077F50F
 0077F500    dec         ecx
>0077F501    je          0077F575
 0077F503    dec         ecx
>0077F504    je          0077F59F
>0077F50A    jmp         0077F5C7
 0077F50F    movzx       ecx,byte ptr [ebp+20]
 0077F513    sub         cl,2
>0077F516    je          0077F521
 0077F518    dec         cl
>0077F51A    je          0077F54B
>0077F51C    jmp         0077F5C7
 0077F521    lea         ecx,[ebp+28]
 0077F524    push        ecx
 0077F525    mov         ecx,dword ptr [ebp+1C]
 0077F528    cmp         ecx,0FF
>0077F52E    jbe         0077F535
 0077F530    call        @BoundErr
 0077F535    push        ecx
 0077F536    cmp         edx,0FF
>0077F53C    jbe         0077F543
 0077F53E    call        @BoundErr
 0077F543    pop         ecx
 0077F544    call        TFXPIO.SetCCOCtrlGroups
>0077F549    jmp         0077F5C7
 0077F54B    lea         ecx,[ebp+28]
 0077F54E    push        ecx
 0077F54F    mov         ecx,dword ptr [ebp+1C]
 0077F552    cmp         ecx,0FF
>0077F558    jbe         0077F55F
 0077F55A    call        @BoundErr
 0077F55F    push        ecx
 0077F560    cmp         edx,0FF
>0077F566    jbe         0077F56D
 0077F568    call        @BoundErr
 0077F56D    pop         ecx
 0077F56E    call        TFXPIO.SetADOCtrlGroups
>0077F573    jmp         0077F5C7
 0077F575    lea         ecx,[ebp+28]
 0077F578    push        ecx
 0077F579    mov         ecx,dword ptr [ebp+1C]
 0077F57C    cmp         ecx,0FF
>0077F582    jbe         0077F589
 0077F584    call        @BoundErr
 0077F589    push        ecx
 0077F58A    cmp         edx,0FF
>0077F590    jbe         0077F597
 0077F592    call        @BoundErr
 0077F597    pop         ecx
 0077F598    call        TFXPIO.SetCCOCtrlGroups
>0077F59D    jmp         0077F5C7
 0077F59F    lea         ecx,[ebp+28]
 0077F5A2    push        ecx
 0077F5A3    mov         ecx,dword ptr [ebp+1C]
 0077F5A6    cmp         ecx,0FF
>0077F5AC    jbe         0077F5B3
 0077F5AE    call        @BoundErr
 0077F5B3    push        ecx
 0077F5B4    cmp         edx,0FF
>0077F5BA    jbe         0077F5C1
 0077F5BC    call        @BoundErr
 0077F5C1    pop         ecx
 0077F5C2    call        TFXPIO.SetADOCtrlGroups
 0077F5C7    inc         edi
 0077F5C8    dec         esi
>0077F5C9    jne         0077F476
 0077F5CF    inc         dword ptr [esp+14]
 0077F5D3    dec         dword ptr [esp+1C]
>0077F5D7    jne         0077F43E
 0077F5DD    mov         eax,dword ptr [esp+4]
 0077F5E1    mov         eax,dword ptr [eax+20]
 0077F5E4    mov         eax,dword ptr [eax+8]
 0077F5E7    sub         eax,1
>0077F5EA    jno         0077F5F1
 0077F5EC    call        @IntOver
 0077F5F1    test        eax,eax
>0077F5F3    jl          0077F6F3
 0077F5F9    inc         eax
 0077F5FA    mov         dword ptr [esp+1C],eax
 0077F5FE    mov         dword ptr [esp+10],0
 0077F606    mov         eax,dword ptr [esp+4]
 0077F60A    mov         ebx,dword ptr [eax+20]
 0077F60D    lea         eax,[ebx+8]
 0077F610    mov         edx,dword ptr [esp+10]
 0077F614    call        00434534
 0077F619    mov         eax,dword ptr [ebx+20]
 0077F61C    mov         edx,dword ptr [esp+10]
 0077F620    mov         eax,dword ptr [eax+edx*4]
 0077F623    mov         dword ptr [esp+8],eax
 0077F627    mov         eax,dword ptr [esp+8]
 0077F62B    mov         eax,dword ptr [eax+1C]
 0077F62E    mov         esi,dword ptr [eax+8]
 0077F631    sub         esi,1
>0077F634    jno         0077F63B
 0077F636    call        @IntOver
 0077F63B    test        esi,esi
>0077F63D    jl          0077F6E5
 0077F643    inc         esi
 0077F644    xor         edi,edi
 0077F646    mov         eax,dword ptr [esp+8]
 0077F64A    mov         ebx,dword ptr [eax+1C]
 0077F64D    lea         eax,[ebx+8]
 0077F650    mov         edx,edi
 0077F652    call        00434534
 0077F657    mov         eax,dword ptr [ebx+20]
 0077F65A    mov         ebx,dword ptr [eax+edi*4]
 0077F65D    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0077F662    mov         eax,dword ptr [eax]
 0077F664    mov         edx,dword ptr [ebx+8]
 0077F667    call        TFXNet.GetPanel
 0077F66C    mov         edx,dword ptr [ebx+0C]
 0077F66F    cmp         edx,7
>0077F672    jbe         0077F679
 0077F674    call        @BoundErr
 0077F679    imul        edx,edx,43B3
>0077F67F    jno         0077F686
 0077F681    call        @IntOver
 0077F686    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 0077F689    lea         ebp,[eax+edx*4]
 0077F68C    mov         eax,dword ptr [ebx+10]
 0077F68F    cmp         eax,1
>0077F692    jbe         0077F699
 0077F694    call        @BoundErr
 0077F699    imul        eax,eax,43B3
>0077F69F    jno         0077F6A6
 0077F6A1    call        @IntOver
 0077F6A6    lea         eax,[ebp+eax*2]
 0077F6AA    mov         edx,dword ptr [ebx+14]
 0077F6AD    dec         edx
 0077F6AE    cmp         edx,9E
>0077F6B4    jbe         0077F6BB
 0077F6B6    call        @BoundErr
 0077F6BB    inc         edx
 0077F6BC    imul        edx,edx,6D
>0077F6BF    jno         0077F6C6
 0077F6C1    call        @IntOver
 0077F6C6    push        esi
 0077F6C7    push        edi
 0077F6C8    lea         edi,[eax+edx*2-0D6]
 0077F6CF    lea         esi,[ebx+4C]
 0077F6D2    mov         ecx,36
 0077F6D7    rep movs    dword ptr [edi],dword ptr [esi]
 0077F6D9    movs        word ptr [edi],word ptr [esi]
 0077F6DB    pop         edi
 0077F6DC    pop         esi
 0077F6DD    inc         edi
 0077F6DE    dec         esi
>0077F6DF    jne         0077F646
 0077F6E5    inc         dword ptr [esp+10]
 0077F6E9    dec         dword ptr [esp+1C]
>0077F6ED    jne         0077F606
 0077F6F3    inc         dword ptr [esp+0C]
 0077F6F7    dec         dword ptr [esp+18]
>0077F6FB    jne         0077F3F1
 0077F701    mov         eax,dword ptr [esp]
 0077F704    call        TCustomForm.Close
 0077F709    add         esp,20
 0077F70C    pop         ebp
 0077F70D    pop         edi
 0077F70E    pop         esi
 0077F70F    pop         ebx
 0077F710    ret
*}
end;

//0077F714
procedure TDCGroupsFrm.btnCauseEffectClick(Sender:TObject);
begin
{*
 0077F714    mov         eax,[007C4664];^gvar_009037A0:TDCCauseEffectForm
 0077F719    cmp         dword ptr [eax],0
>0077F71C    jne         0077F734
 0077F71E    xor         ecx,ecx
 0077F720    mov         dl,1
 0077F722    mov         eax,[00775BA8];TDCCauseEffectForm
 0077F727    call        TCustomForm.Create;TDCCauseEffectForm.Create
 0077F72C    mov         edx,dword ptr ds:[7C4664];^gvar_009037A0:TDCCauseEffectForm
 0077F732    mov         dword ptr [edx],eax
 0077F734    mov         eax,[007C4664];^gvar_009037A0:TDCCauseEffectForm
 0077F739    mov         eax,dword ptr [eax]
 0077F73B    call        TCustomForm.Show
 0077F740    ret
*}
end;

//0077F744
procedure TDCGroupsFrm.UpdateITree;
begin
{*
 0077F744    push        ebp
 0077F745    mov         ebp,esp
 0077F747    add         esp,0FFFFFFD8
 0077F74A    push        ebx
 0077F74B    push        esi
 0077F74C    push        edi
 0077F74D    mov         dword ptr [ebp-4],eax
 0077F750    mov         eax,dword ptr [ebp-4]
 0077F753    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F759    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077F75F    call        TTreeNodes.BeginUpdate
 0077F764    xor         eax,eax
 0077F766    push        ebp
 0077F767    push        77F925
 0077F76C    push        dword ptr fs:[eax]
 0077F76F    mov         dword ptr fs:[eax],esp
 0077F772    mov         eax,dword ptr [ebp-4]
 0077F775    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F77B    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077F781    call        TTreeNodes.Clear
 0077F786    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077F78B    mov         eax,dword ptr [eax]
 0077F78D    push        eax
 0077F78E    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0077F793    mov         eax,dword ptr [eax]
 0077F795    mov         ecx,dword ptr [eax+4]
 0077F798    mov         eax,dword ptr [ebp-4]
 0077F79B    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F7A1    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077F7A7    xor         edx,edx
 0077F7A9    call        TTreeNodes.AddObject
 0077F7AE    mov         dword ptr [ebp-10],eax
 0077F7B1    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077F7B6    mov         eax,dword ptr [eax]
 0077F7B8    mov         eax,dword ptr [eax+0C]
 0077F7BB    mov         eax,dword ptr [eax+8]
 0077F7BE    sub         eax,1
>0077F7C1    jno         0077F7C8
 0077F7C3    call        @IntOver
 0077F7C8    test        eax,eax
>0077F7CA    jl          0077F8F9
 0077F7D0    inc         eax
 0077F7D1    mov         dword ptr [ebp-24],eax
 0077F7D4    mov         dword ptr [ebp-8],0
 0077F7DB    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077F7E0    mov         eax,dword ptr [eax]
 0077F7E2    mov         ebx,dword ptr [eax+0C]
 0077F7E5    lea         eax,[ebx+8]
 0077F7E8    mov         edx,dword ptr [ebp-8]
 0077F7EB    call        00434534
 0077F7F0    mov         eax,dword ptr [ebx+20]
 0077F7F3    mov         edx,dword ptr [ebp-8]
 0077F7F6    mov         eax,dword ptr [eax+edx*4]
 0077F7F9    mov         dword ptr [ebp-1C],eax
 0077F7FC    mov         eax,dword ptr [ebp-1C]
 0077F7FF    push        eax
 0077F800    mov         eax,dword ptr [ebp-1C]
 0077F803    mov         ecx,dword ptr [eax+24]
 0077F806    mov         eax,dword ptr [ebp-4]
 0077F809    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F80F    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077F815    mov         edx,dword ptr [ebp-10]
 0077F818    call        TTreeNodes.AddChildObject
 0077F81D    mov         dword ptr [ebp-14],eax
 0077F820    mov         eax,dword ptr [ebp-1C]
 0077F823    mov         eax,dword ptr [eax+20]
 0077F826    mov         eax,dword ptr [eax+8]
 0077F829    sub         eax,1
>0077F82C    jno         0077F833
 0077F82E    call        @IntOver
 0077F833    test        eax,eax
>0077F835    jl          0077F8ED
 0077F83B    inc         eax
 0077F83C    mov         dword ptr [ebp-28],eax
 0077F83F    mov         dword ptr [ebp-0C],0
 0077F846    mov         eax,dword ptr [ebp-1C]
 0077F849    mov         ebx,dword ptr [eax+20]
 0077F84C    lea         eax,[ebx+8]
 0077F84F    mov         edx,dword ptr [ebp-0C]
 0077F852    call        00434534
 0077F857    mov         eax,dword ptr [ebx+20]
 0077F85A    mov         edx,dword ptr [ebp-0C]
 0077F85D    mov         eax,dword ptr [eax+edx*4]
 0077F860    mov         dword ptr [ebp-20],eax
 0077F863    mov         eax,dword ptr [ebp-20]
 0077F866    push        eax
 0077F867    mov         eax,dword ptr [ebp-20]
 0077F86A    mov         ecx,dword ptr [eax+10]
 0077F86D    mov         eax,dword ptr [ebp-4]
 0077F870    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F876    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077F87C    mov         edx,dword ptr [ebp-14]
 0077F87F    call        TTreeNodes.AddChildObject
 0077F884    mov         dword ptr [ebp-18],eax
 0077F887    mov         eax,dword ptr [ebp-20]
 0077F88A    mov         eax,dword ptr [eax+1C]
 0077F88D    mov         edi,dword ptr [eax+8]
 0077F890    sub         edi,1
>0077F893    jno         0077F89A
 0077F895    call        @IntOver
 0077F89A    test        edi,edi
>0077F89C    jl          0077F8E1
 0077F89E    inc         edi
 0077F89F    xor         esi,esi
 0077F8A1    mov         eax,dword ptr [ebp-20]
 0077F8A4    mov         ebx,dword ptr [eax+1C]
 0077F8A7    lea         eax,[ebx+8]
 0077F8AA    mov         edx,esi
 0077F8AC    call        00434534
 0077F8B1    mov         eax,dword ptr [ebx+20]
 0077F8B4    mov         ebx,dword ptr [eax+esi*4]
 0077F8B7    mov         eax,ebx
 0077F8B9    mov         edx,dword ptr [eax]
 0077F8BB    call        dword ptr [edx+30]
 0077F8BE    test        al,2
>0077F8C0    je          0077F8DD
 0077F8C2    push        ebx
 0077F8C3    mov         ecx,dword ptr [ebx+2C]
 0077F8C6    mov         eax,dword ptr [ebp-4]
 0077F8C9    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F8CF    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077F8D5    mov         edx,dword ptr [ebp-18]
 0077F8D8    call        TTreeNodes.AddChildObject
 0077F8DD    inc         esi
 0077F8DE    dec         edi
>0077F8DF    jne         0077F8A1
 0077F8E1    inc         dword ptr [ebp-0C]
 0077F8E4    dec         dword ptr [ebp-28]
>0077F8E7    jne         0077F846
 0077F8ED    inc         dword ptr [ebp-8]
 0077F8F0    dec         dword ptr [ebp-24]
>0077F8F3    jne         0077F7DB
 0077F8F9    xor         edx,edx
 0077F8FB    mov         eax,dword ptr [ebp-10]
 0077F8FE    call        TTreeNode.Expand
 0077F903    xor         eax,eax
 0077F905    pop         edx
 0077F906    pop         ecx
 0077F907    pop         ecx
 0077F908    mov         dword ptr fs:[eax],edx
 0077F90B    push        77F92C
 0077F910    mov         eax,dword ptr [ebp-4]
 0077F913    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F919    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077F91F    call        TTreeNodes.EndUpdate
 0077F924    ret
>0077F925    jmp         @HandleFinally
>0077F92A    jmp         0077F910
 0077F92C    mov         eax,dword ptr [ebp-4]
 0077F92F    mov         eax,dword ptr [eax+3D4];TDCGroupsFrm.ITree:TTreeView
 0077F935    mov         edx,dword ptr [eax]
 0077F937    call        dword ptr [edx+104];TWinControl.SetFocus
 0077F93D    pop         edi
 0077F93E    pop         esi
 0077F93F    pop         ebx
 0077F940    mov         esp,ebp
 0077F942    pop         ebp
 0077F943    ret
*}
end;

//0077F944
procedure TDCGroupsFrm.ITreeChanging(Sender:TObject; Node:TTreeNode; var AllowChange:Boolean);
begin
{*
 0077F944    push        ebp
 0077F945    mov         ebp,esp
 0077F947    add         esp,0FFFFFFF8
 0077F94A    push        ebx
 0077F94B    push        esi
 0077F94C    push        edi
 0077F94D    mov         edi,eax
 0077F94F    mov         eax,dword ptr [ebp+8]
 0077F952    mov         byte ptr [eax],0
 0077F955    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 0077F95A    mov         eax,dword ptr [eax]
 0077F95C    mov         eax,dword ptr [eax+3C0]
 0077F962    mov         edx,dword ptr [eax]
 0077F964    call        dword ptr [edx+124]
 0077F96A    mov         eax,edi
 0077F96C    call        00781CA4
 0077F971    test        eax,eax
>0077F973    je          0077F98A
 0077F975    mov         esi,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F97B    mov         eax,esi
 0077F97D    mov         edx,dword ptr [eax]
 0077F97F    call        dword ptr [edx+0A8];TWinControl.Invalidate
>0077F985    jmp         0077FA1A
 0077F98A    mov         eax,edi
 0077F98C    call        TDCGroupsFrm.SaveIGridToTemp
 0077F991    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F997    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 0077F99D    sub         eax,1
>0077F9A0    jno         0077F9A7
 0077F9A2    call        @IntOver
 0077F9A7    test        eax,eax
>0077F9A9    jle         0077FA04
 0077F9AB    mov         dword ptr [ebp-8],eax
 0077F9AE    mov         dword ptr [ebp-4],1
 0077F9B5    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F9BB    mov         ebx,dword ptr [eax+2A4];TStringGrid.FColCount:Integer
 0077F9C1    sub         ebx,1
>0077F9C4    jno         0077F9CB
 0077F9C6    call        @IntOver
 0077F9CB    test        ebx,ebx
>0077F9CD    jle         0077F9EA
 0077F9CF    mov         esi,1
 0077F9D4    push        0
 0077F9D6    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F9DC    mov         ecx,dword ptr [ebp-4]
 0077F9DF    mov         edx,esi
 0077F9E1    call        TStringGrid.SetCells
 0077F9E6    inc         esi
 0077F9E7    dec         ebx
>0077F9E8    jne         0077F9D4
 0077F9EA    push        0
 0077F9EC    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077F9F2    mov         ecx,dword ptr [ebp-4]
 0077F9F5    xor         edx,edx
 0077F9F7    call        TStringGrid.SetObjects
 0077F9FC    inc         dword ptr [ebp-4]
 0077F9FF    dec         dword ptr [ebp-8]
>0077FA02    jne         0077F9B5
 0077FA04    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0077FA0A    mov         edx,2
 0077FA0F    call        TDrawGrid.SetRowCount
 0077FA14    mov         eax,dword ptr [ebp+8]
 0077FA17    mov         byte ptr [eax],1
 0077FA1A    pop         edi
 0077FA1B    pop         esi
 0077FA1C    pop         ebx
 0077FA1D    pop         ecx
 0077FA1E    pop         ecx
 0077FA1F    pop         ebp
 0077FA20    ret         4
*}
end;

//0077FA24
procedure TDCGroupsFrm.ITreeChange(Sender:TObject; Node:TTreeNode);
begin
{*
 0077FA24    push        ebx
 0077FA25    push        esi
 0077FA26    push        edi
 0077FA27    push        ebp
 0077FA28    push        ecx
 0077FA29    mov         ebx,ecx
 0077FA2B    mov         esi,eax
 0077FA2D    mov         eax,ebx
 0077FA2F    call        00539908
 0077FA34    mov         edi,eax
 0077FA36    mov         eax,ebx
 0077FA38    call        00539908
 0077FA3D    sub         eax,1
>0077FA40    jb          0077FA4F
>0077FA42    je          0077FA5D
 0077FA44    dec         eax
>0077FA45    je          0077FA73
 0077FA47    dec         eax
>0077FA48    je          0077FA96
>0077FA4A    jmp         0077FADA
 0077FA4F    mov         ebp,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 0077FA52    xor         eax,eax
 0077FA54    mov         dword ptr [esp],eax
 0077FA57    xor         eax,eax
 0077FA59    xor         edx,edx
>0077FA5B    jmp         0077FAC9
 0077FA5D    mov         eax,ebx
 0077FA5F    call        005391E4
 0077FA64    mov         ebp,dword ptr [eax+0C]
 0077FA67    mov         eax,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 0077FA6A    mov         dword ptr [esp],eax
 0077FA6D    xor         eax,eax
 0077FA6F    xor         edx,edx
>0077FA71    jmp         0077FAC9
 0077FA73    mov         eax,ebx
 0077FA75    call        005391E4
 0077FA7A    call        005391E4
 0077FA7F    mov         ebp,dword ptr [eax+0C]
 0077FA82    mov         eax,ebx
 0077FA84    call        005391E4
 0077FA89    mov         eax,dword ptr [eax+0C]
 0077FA8C    mov         dword ptr [esp],eax
 0077FA8F    mov         eax,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 0077FA92    xor         edx,edx
>0077FA94    jmp         0077FAC9
 0077FA96    mov         eax,ebx
 0077FA98    call        005391E4
 0077FA9D    call        005391E4
 0077FAA2    call        005391E4
 0077FAA7    mov         ebp,dword ptr [eax+0C]
 0077FAAA    mov         eax,ebx
 0077FAAC    call        005391E4
 0077FAB1    call        005391E4
 0077FAB6    mov         eax,dword ptr [eax+0C]
 0077FAB9    mov         dword ptr [esp],eax
 0077FABC    mov         eax,ebx
 0077FABE    call        005391E4
 0077FAC3    mov         eax,dword ptr [eax+0C]
 0077FAC6    mov         edx,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 0077FAC9    mov         ecx,dword ptr [esp]
 0077FACC    push        ecx
 0077FACD    push        eax
 0077FACE    push        edx
 0077FACF    mov         ecx,ebp
 0077FAD1    mov         eax,esi
 0077FAD3    mov         edx,edi
 0077FAD5    call        TDCGroupsFrm.UpdateIGrid
 0077FADA    pop         edx
 0077FADB    pop         ebp
 0077FADC    pop         edi
 0077FADD    pop         esi
 0077FADE    pop         ebx
 0077FADF    ret
*}
end;

//0077FAE0
{*procedure sub_0077FAE0(?:TDCAddr; ?:?);
begin
 0077FAE0    push        ebp
 0077FAE1    mov         ebp,esp
 0077FAE3    mov         ecx,0F
 0077FAE8    push        0
 0077FAEA    push        0
 0077FAEC    dec         ecx
>0077FAED    jne         0077FAE8
 0077FAEF    push        ebx
 0077FAF0    push        esi
 0077FAF1    push        edi
 0077FAF2    mov         ebx,eax
 0077FAF4    mov         esi,dword ptr [ebp+8]
 0077FAF7    add         esi,0FFFFFFFC
 0077FAFA    mov         edi,dword ptr [ebp+8]
 0077FAFD    add         edi,0FFFFFFF8
 0077FB00    xor         eax,eax
 0077FB02    push        ebp
 0077FB03    push        7800F4
 0077FB08    push        dword ptr fs:[eax]
 0077FB0B    mov         dword ptr fs:[eax],esp
 0077FB0E    mov         eax,ebx
 0077FB10    mov         edx,dword ptr [eax]
 0077FB12    call        dword ptr [edx+30]
 0077FB15    test        al,2
>0077FB17    je          007800CC
 0077FB1D    add         dword ptr [esi],1
>0077FB20    jno         0077FB27
 0077FB22    call        @IntOver
 0077FB27    push        ebx
 0077FB28    mov         ecx,dword ptr [esi]
 0077FB2A    mov         eax,dword ptr [edi]
 0077FB2C    mov         eax,dword ptr [eax+3D8]
 0077FB32    xor         edx,edx
 0077FB34    call        TStringGrid.SetObjects
 0077FB39    mov         eax,dword ptr [ebp+8]
 0077FB3C    mov         eax,dword ptr [eax+10]
 0077FB3F    mov         eax,dword ptr [eax+28]
 0077FB42    push        eax
 0077FB43    mov         ecx,dword ptr [esi]
 0077FB45    mov         eax,dword ptr [edi]
 0077FB47    mov         eax,dword ptr [eax+3D8]
 0077FB4D    mov         edx,1
 0077FB52    call        TStringGrid.SetCells
 0077FB57    lea         edx,[ebp-4]
 0077FB5A    mov         eax,dword ptr [ebp+8]
 0077FB5D    mov         eax,dword ptr [eax+0C]
 0077FB60    call        00770894
 0077FB65    mov         eax,dword ptr [ebp-4]
 0077FB68    push        eax
 0077FB69    mov         ecx,dword ptr [esi]
 0077FB6B    mov         eax,dword ptr [edi]
 0077FB6D    mov         eax,dword ptr [eax+3D8]
 0077FB73    mov         edx,2
 0077FB78    call        TStringGrid.SetCells
 0077FB7D    lea         edx,[ebp-8]
 0077FB80    mov         eax,ebx
 0077FB82    mov         ecx,dword ptr [eax]
 0077FB84    call        dword ptr [ecx+0C]
 0077FB87    mov         eax,dword ptr [ebp-8]
 0077FB8A    push        eax
 0077FB8B    mov         ecx,dword ptr [esi]
 0077FB8D    mov         eax,dword ptr [edi]
 0077FB8F    mov         eax,dword ptr [eax+3D8]
 0077FB95    mov         edx,3
 0077FB9A    call        TStringGrid.SetCells
 0077FB9F    mov         eax,dword ptr [ebx+34]
 0077FBA2    push        eax
 0077FBA3    mov         ecx,dword ptr [esi]
 0077FBA5    mov         eax,dword ptr [edi]
 0077FBA7    mov         eax,dword ptr [eax+3D8]
 0077FBAD    mov         edx,4
 0077FBB2    call        TStringGrid.SetCells
 0077FBB7    lea         edx,[ebp-0C]
 0077FBBA    movzx       eax,word ptr [ebx+52]
 0077FBBE    call        IntToStr
 0077FBC3    mov         eax,dword ptr [ebp-0C]
 0077FBC6    push        eax
 0077FBC7    mov         ecx,dword ptr [esi]
 0077FBC9    mov         eax,dword ptr [edi]
 0077FBCB    mov         eax,dword ptr [eax+3D8]
 0077FBD1    mov         edx,5
 0077FBD6    call        TStringGrid.SetCells
 0077FBDB    lea         edx,[ebp-10]
 0077FBDE    movzx       eax,word ptr [ebx+54]
 0077FBE2    call        IntToStr
 0077FBE7    mov         eax,dword ptr [ebp-10]
 0077FBEA    push        eax
 0077FBEB    mov         ecx,dword ptr [esi]
 0077FBED    mov         eax,dword ptr [edi]
 0077FBEF    mov         eax,dword ptr [eax+3D8]
 0077FBF5    mov         edx,6
 0077FBFA    call        TStringGrid.SetCells
 0077FBFF    lea         edx,[ebp-14]
 0077FC02    movzx       eax,word ptr [ebx+11E]
 0077FC09    call        IntToStr
 0077FC0E    mov         eax,dword ptr [ebp-14]
 0077FC11    push        eax
 0077FC12    mov         ecx,dword ptr [esi]
 0077FC14    mov         eax,dword ptr [edi]
 0077FC16    mov         eax,dword ptr [eax+3D8]
 0077FC1C    mov         edx,7
 0077FC21    call        TStringGrid.SetCells
 0077FC26    lea         edx,[ebp-18]
 0077FC29    movzx       eax,word ptr [ebx+0F4]
 0077FC30    call        IntToStr
 0077FC35    mov         eax,dword ptr [ebp-18]
 0077FC38    push        eax
 0077FC39    mov         ecx,dword ptr [esi]
 0077FC3B    mov         eax,dword ptr [edi]
 0077FC3D    mov         eax,dword ptr [eax+3D8]
 0077FC43    mov         edx,8
 0077FC48    call        TStringGrid.SetCells
 0077FC4D    lea         eax,[ebp-1C]
 0077FC50    push        eax
 0077FC51    movzx       eax,word ptr [ebx+0F6]
 0077FC58    mov         ecx,3C
 0077FC5D    xor         edx,edx
 0077FC5F    div         eax,ecx
 0077FC61    mov         dword ptr [ebp-2C],eax
 0077FC64    mov         byte ptr [ebp-28],0
 0077FC68    movzx       eax,word ptr [ebx+0F6]
 0077FC6F    mov         ecx,3C
 0077FC74    xor         edx,edx
 0077FC76    div         eax,ecx
 0077FC78    mov         dword ptr [ebp-24],edx
 0077FC7B    mov         byte ptr [ebp-20],0
 0077FC7F    lea         edx,[ebp-2C]
 0077FC82    mov         ecx,1
 0077FC87    mov         eax,780110;'%.2d:%.2d'
 0077FC8C    call        Format
 0077FC91    mov         eax,dword ptr [ebp-1C]
 0077FC94    push        eax
 0077FC95    mov         ecx,dword ptr [esi]
 0077FC97    mov         eax,dword ptr [edi]
 0077FC99    mov         eax,dword ptr [eax+3D8]
 0077FC9F    mov         edx,9
 0077FCA4    call        TStringGrid.SetCells
 0077FCA9    lea         edx,[ebp-30]
 0077FCAC    movzx       eax,word ptr [ebx+0F8]
 0077FCB3    call        IntToStr
 0077FCB8    mov         eax,dword ptr [ebp-30]
 0077FCBB    push        eax
 0077FCBC    mov         ecx,dword ptr [esi]
 0077FCBE    mov         eax,dword ptr [edi]
 0077FCC0    mov         eax,dword ptr [eax+3D8]
 0077FCC6    mov         edx,0A
 0077FCCB    call        TStringGrid.SetCells
 0077FCD0    lea         edx,[ebp-34]
 0077FCD3    movzx       eax,word ptr [ebx+0FA]
 0077FCDA    call        IntToStr
 0077FCDF    mov         eax,dword ptr [ebp-34]
 0077FCE2    push        eax
 0077FCE3    mov         ecx,dword ptr [esi]
 0077FCE5    mov         eax,dword ptr [edi]
 0077FCE7    mov         eax,dword ptr [eax+3D8]
 0077FCED    mov         edx,0B
 0077FCF2    call        TStringGrid.SetCells
 0077FCF7    lea         eax,[ebp-38]
 0077FCFA    push        eax
 0077FCFB    movzx       eax,word ptr [ebx+0FC]
 0077FD02    mov         ecx,3C
 0077FD07    xor         edx,edx
 0077FD09    div         eax,ecx
 0077FD0B    mov         dword ptr [ebp-2C],eax
 0077FD0E    mov         byte ptr [ebp-28],0
 0077FD12    movzx       eax,word ptr [ebx+0FC]
 0077FD19    mov         ecx,3C
 0077FD1E    xor         edx,edx
 0077FD20    div         eax,ecx
 0077FD22    mov         dword ptr [ebp-24],edx
 0077FD25    mov         byte ptr [ebp-20],0
 0077FD29    lea         edx,[ebp-2C]
 0077FD2C    mov         ecx,1
 0077FD31    mov         eax,780110;'%.2d:%.2d'
 0077FD36    call        Format
 0077FD3B    mov         eax,dword ptr [ebp-38]
 0077FD3E    push        eax
 0077FD3F    mov         ecx,dword ptr [esi]
 0077FD41    mov         eax,dword ptr [edi]
 0077FD43    mov         eax,dword ptr [eax+3D8]
 0077FD49    mov         edx,0C
 0077FD4E    call        TStringGrid.SetCells
 0077FD53    lea         edx,[ebp-3C]
 0077FD56    movzx       eax,word ptr [ebx+0FE]
 0077FD5D    call        IntToStr
 0077FD62    mov         eax,dword ptr [ebp-3C]
 0077FD65    push        eax
 0077FD66    mov         ecx,dword ptr [esi]
 0077FD68    mov         eax,dword ptr [edi]
 0077FD6A    mov         eax,dword ptr [eax+3D8]
 0077FD70    mov         edx,0D
 0077FD75    call        TStringGrid.SetCells
 0077FD7A    lea         edx,[ebp-40]
 0077FD7D    movzx       eax,word ptr [ebx+100]
 0077FD84    call        IntToStr
 0077FD89    mov         eax,dword ptr [ebp-40]
 0077FD8C    push        eax
 0077FD8D    mov         ecx,dword ptr [esi]
 0077FD8F    mov         eax,dword ptr [edi]
 0077FD91    mov         eax,dword ptr [eax+3D8]
 0077FD97    mov         edx,0E
 0077FD9C    call        TStringGrid.SetCells
 0077FDA1    lea         eax,[ebp-44]
 0077FDA4    push        eax
 0077FDA5    movzx       eax,word ptr [ebx+102]
 0077FDAC    mov         ecx,3C
 0077FDB1    xor         edx,edx
 0077FDB3    div         eax,ecx
 0077FDB5    mov         dword ptr [ebp-2C],eax
 0077FDB8    mov         byte ptr [ebp-28],0
 0077FDBC    movzx       eax,word ptr [ebx+102]
 0077FDC3    mov         ecx,3C
 0077FDC8    xor         edx,edx
 0077FDCA    div         eax,ecx
 0077FDCC    mov         dword ptr [ebp-24],edx
 0077FDCF    mov         byte ptr [ebp-20],0
 0077FDD3    lea         edx,[ebp-2C]
 0077FDD6    mov         ecx,1
 0077FDDB    mov         eax,780110;'%.2d:%.2d'
 0077FDE0    call        Format
 0077FDE5    mov         eax,dword ptr [ebp-44]
 0077FDE8    push        eax
 0077FDE9    mov         ecx,dword ptr [esi]
 0077FDEB    mov         eax,dword ptr [edi]
 0077FDED    mov         eax,dword ptr [eax+3D8]
 0077FDF3    mov         edx,0F
 0077FDF8    call        TStringGrid.SetCells
 0077FDFD    lea         edx,[ebp-48]
 0077FE00    movzx       eax,word ptr [ebx+104]
 0077FE07    call        IntToStr
 0077FE0C    mov         eax,dword ptr [ebp-48]
 0077FE0F    push        eax
 0077FE10    mov         ecx,dword ptr [esi]
 0077FE12    mov         eax,dword ptr [edi]
 0077FE14    mov         eax,dword ptr [eax+3D8]
 0077FE1A    mov         edx,10
 0077FE1F    call        TStringGrid.SetCells
 0077FE24    lea         edx,[ebp-4C]
 0077FE27    movzx       eax,word ptr [ebx+106]
 0077FE2E    call        IntToStr
 0077FE33    mov         eax,dword ptr [ebp-4C]
 0077FE36    push        eax
 0077FE37    mov         ecx,dword ptr [esi]
 0077FE39    mov         eax,dword ptr [edi]
 0077FE3B    mov         eax,dword ptr [eax+3D8]
 0077FE41    mov         edx,11
 0077FE46    call        TStringGrid.SetCells
 0077FE4B    lea         eax,[ebp-50]
 0077FE4E    push        eax
 0077FE4F    movzx       eax,word ptr [ebx+108]
 0077FE56    mov         ecx,3C
 0077FE5B    xor         edx,edx
 0077FE5D    div         eax,ecx
 0077FE5F    mov         dword ptr [ebp-2C],eax
 0077FE62    mov         byte ptr [ebp-28],0
 0077FE66    movzx       eax,word ptr [ebx+108]
 0077FE6D    mov         ecx,3C
 0077FE72    xor         edx,edx
 0077FE74    div         eax,ecx
 0077FE76    mov         dword ptr [ebp-24],edx
 0077FE79    mov         byte ptr [ebp-20],0
 0077FE7D    lea         edx,[ebp-2C]
 0077FE80    mov         ecx,1
 0077FE85    mov         eax,780110;'%.2d:%.2d'
 0077FE8A    call        Format
 0077FE8F    mov         eax,dword ptr [ebp-50]
 0077FE92    push        eax
 0077FE93    mov         ecx,dword ptr [esi]
 0077FE95    mov         eax,dword ptr [edi]
 0077FE97    mov         eax,dword ptr [eax+3D8]
 0077FE9D    mov         edx,12
 0077FEA2    call        TStringGrid.SetCells
 0077FEA7    lea         edx,[ebp-54]
 0077FEAA    movzx       eax,word ptr [ebx+10A]
 0077FEB1    call        IntToStr
 0077FEB6    mov         eax,dword ptr [ebp-54]
 0077FEB9    push        eax
 0077FEBA    mov         ecx,dword ptr [esi]
 0077FEBC    mov         eax,dword ptr [edi]
 0077FEBE    mov         eax,dword ptr [eax+3D8]
 0077FEC4    mov         edx,13
 0077FEC9    call        TStringGrid.SetCells
 0077FECE    lea         edx,[ebp-58]
 0077FED1    movzx       eax,word ptr [ebx+10C]
 0077FED8    call        IntToStr
 0077FEDD    mov         eax,dword ptr [ebp-58]
 0077FEE0    push        eax
 0077FEE1    mov         ecx,dword ptr [esi]
 0077FEE3    mov         eax,dword ptr [edi]
 0077FEE5    mov         eax,dword ptr [eax+3D8]
 0077FEEB    mov         edx,14
 0077FEF0    call        TStringGrid.SetCells
 0077FEF5    lea         eax,[ebp-5C]
 0077FEF8    push        eax
 0077FEF9    movzx       eax,word ptr [ebx+10E]
 0077FF00    mov         ecx,3C
 0077FF05    xor         edx,edx
 0077FF07    div         eax,ecx
 0077FF09    mov         dword ptr [ebp-2C],eax
 0077FF0C    mov         byte ptr [ebp-28],0
 0077FF10    movzx       eax,word ptr [ebx+10E]
 0077FF17    mov         ecx,3C
 0077FF1C    xor         edx,edx
 0077FF1E    div         eax,ecx
 0077FF20    mov         dword ptr [ebp-24],edx
 0077FF23    mov         byte ptr [ebp-20],0
 0077FF27    lea         edx,[ebp-2C]
 0077FF2A    mov         ecx,1
 0077FF2F    mov         eax,780110;'%.2d:%.2d'
 0077FF34    call        Format
 0077FF39    mov         eax,dword ptr [ebp-5C]
 0077FF3C    push        eax
 0077FF3D    mov         ecx,dword ptr [esi]
 0077FF3F    mov         eax,dword ptr [edi]
 0077FF41    mov         eax,dword ptr [eax+3D8]
 0077FF47    mov         edx,15
 0077FF4C    call        TStringGrid.SetCells
 0077FF51    lea         edx,[ebp-60]
 0077FF54    movzx       eax,word ptr [ebx+110]
 0077FF5B    call        IntToStr
 0077FF60    mov         eax,dword ptr [ebp-60]
 0077FF63    push        eax
 0077FF64    mov         ecx,dword ptr [esi]
 0077FF66    mov         eax,dword ptr [edi]
 0077FF68    mov         eax,dword ptr [eax+3D8]
 0077FF6E    mov         edx,16
 0077FF73    call        TStringGrid.SetCells
 0077FF78    lea         edx,[ebp-64]
 0077FF7B    movzx       eax,word ptr [ebx+112]
 0077FF82    call        IntToStr
 0077FF87    mov         eax,dword ptr [ebp-64]
 0077FF8A    push        eax
 0077FF8B    mov         ecx,dword ptr [esi]
 0077FF8D    mov         eax,dword ptr [edi]
 0077FF8F    mov         eax,dword ptr [eax+3D8]
 0077FF95    mov         edx,17
 0077FF9A    call        TStringGrid.SetCells
 0077FF9F    lea         eax,[ebp-68]
 0077FFA2    push        eax
 0077FFA3    movzx       eax,word ptr [ebx+114]
 0077FFAA    mov         ecx,3C
 0077FFAF    xor         edx,edx
 0077FFB1    div         eax,ecx
 0077FFB3    mov         dword ptr [ebp-2C],eax
 0077FFB6    mov         byte ptr [ebp-28],0
 0077FFBA    movzx       eax,word ptr [ebx+114]
 0077FFC1    mov         ecx,3C
 0077FFC6    xor         edx,edx
 0077FFC8    div         eax,ecx
 0077FFCA    mov         dword ptr [ebp-24],edx
 0077FFCD    mov         byte ptr [ebp-20],0
 0077FFD1    lea         edx,[ebp-2C]
 0077FFD4    mov         ecx,1
 0077FFD9    mov         eax,780110;'%.2d:%.2d'
 0077FFDE    call        Format
 0077FFE3    mov         eax,dword ptr [ebp-68]
 0077FFE6    push        eax
 0077FFE7    mov         ecx,dword ptr [esi]
 0077FFE9    mov         eax,dword ptr [edi]
 0077FFEB    mov         eax,dword ptr [eax+3D8]
 0077FFF1    mov         edx,18
 0077FFF6    call        TStringGrid.SetCells
 0077FFFB    lea         edx,[ebp-6C]
 0077FFFE    movzx       eax,word ptr [ebx+116]
 00780005    call        IntToStr
 0078000A    mov         eax,dword ptr [ebp-6C]
 0078000D    push        eax
 0078000E    mov         ecx,dword ptr [esi]
 00780010    mov         eax,dword ptr [edi]
 00780012    mov         eax,dword ptr [eax+3D8]
 00780018    mov         edx,19
 0078001D    call        TStringGrid.SetCells
 00780022    lea         edx,[ebp-70]
 00780025    movzx       eax,word ptr [ebx+118]
 0078002C    call        IntToStr
 00780031    mov         eax,dword ptr [ebp-70]
 00780034    push        eax
 00780035    mov         ecx,dword ptr [esi]
 00780037    mov         eax,dword ptr [edi]
 00780039    mov         eax,dword ptr [eax+3D8]
 0078003F    mov         edx,1A
 00780044    call        TStringGrid.SetCells
 00780049    lea         eax,[ebp-74]
 0078004C    push        eax
 0078004D    movzx       eax,word ptr [ebx+11A]
 00780054    mov         ecx,3C
 00780059    xor         edx,edx
 0078005B    div         eax,ecx
 0078005D    mov         dword ptr [ebp-2C],eax
 00780060    mov         byte ptr [ebp-28],0
 00780064    movzx       eax,word ptr [ebx+11A]
 0078006B    mov         ecx,3C
 00780070    xor         edx,edx
 00780072    div         eax,ecx
 00780074    mov         dword ptr [ebp-24],edx
 00780077    mov         byte ptr [ebp-20],0
 0078007B    lea         edx,[ebp-2C]
 0078007E    mov         ecx,1
 00780083    mov         eax,780110;'%.2d:%.2d'
 00780088    call        Format
 0078008D    mov         eax,dword ptr [ebp-74]
 00780090    push        eax
 00780091    mov         ecx,dword ptr [esi]
 00780093    mov         eax,dword ptr [edi]
 00780095    mov         eax,dword ptr [eax+3D8]
 0078009B    mov         edx,1B
 007800A0    call        TStringGrid.SetCells
 007800A5    lea         edx,[ebp-78]
 007800A8    movzx       eax,word ptr [ebx+11C]
 007800AF    call        IntToStr
 007800B4    mov         eax,dword ptr [ebp-78]
 007800B7    push        eax
 007800B8    mov         ecx,dword ptr [esi]
 007800BA    mov         eax,dword ptr [edi]
 007800BC    mov         eax,dword ptr [eax+3D8]
 007800C2    mov         edx,1C
 007800C7    call        TStringGrid.SetCells
 007800CC    xor         eax,eax
 007800CE    pop         edx
 007800CF    pop         ecx
 007800D0    pop         ecx
 007800D1    mov         dword ptr fs:[eax],edx
 007800D4    push        7800FB
 007800D9    lea         eax,[ebp-78]
 007800DC    mov         edx,13
 007800E1    call        @UStrArrayClr
 007800E6    lea         eax,[ebp-1C]
 007800E9    mov         edx,7
 007800EE    call        @UStrArrayClr
 007800F3    ret
>007800F4    jmp         @HandleFinally
>007800F9    jmp         007800D9
 007800FB    pop         edi
 007800FC    pop         esi
 007800FD    pop         ebx
 007800FE    mov         esp,ebp
 00780100    pop         ebp
 00780101    ret
end;*}

//00780124
{*procedure sub_00780124(?:TDCLoop; ?:?);
begin
 00780124    push        ebp
 00780125    mov         ebp,esp
 00780127    push        ecx
 00780128    push        ebx
 00780129    push        esi
 0078012A    push        edi
 0078012B    mov         dword ptr [ebp-4],eax
 0078012E    mov         eax,dword ptr [ebp-4]
 00780131    mov         eax,dword ptr [eax+1C]
 00780134    mov         edi,dword ptr [eax+8]
 00780137    sub         edi,1
>0078013A    jno         00780141
 0078013C    call        @IntOver
 00780141    test        edi,edi
>00780143    jl          00780178
 00780145    inc         edi
 00780146    xor         ebx,ebx
 00780148    mov         eax,dword ptr [ebp-4]
 0078014B    mov         esi,dword ptr [eax+1C]
 0078014E    lea         eax,[esi+8]
 00780151    mov         edx,ebx
 00780153    call        00434534
 00780158    mov         eax,dword ptr [esi+20]
 0078015B    mov         eax,dword ptr [eax+ebx*4]
 0078015E    mov         edx,dword ptr [ebp+8]
 00780161    mov         dword ptr [edx+8],eax
 00780164    mov         eax,dword ptr [ebp+8]
 00780167    push        eax
 00780168    mov         eax,dword ptr [ebp+8]
 0078016B    mov         eax,dword ptr [eax+8]
 0078016E    call        0077FAE0
 00780173    pop         ecx
 00780174    inc         ebx
 00780175    dec         edi
>00780176    jne         00780148
 00780178    pop         edi
 00780179    pop         esi
 0078017A    pop         ebx
 0078017B    pop         ecx
 0078017C    pop         ebp
 0078017D    ret
end;*}

//00780180
{*procedure sub_00780180(?:TDCPanel; ?:?);
begin
 00780180    push        ebp
 00780181    mov         ebp,esp
 00780183    push        ecx
 00780184    push        ebx
 00780185    push        esi
 00780186    push        edi
 00780187    mov         dword ptr [ebp-4],eax
 0078018A    mov         eax,dword ptr [ebp-4]
 0078018D    mov         eax,dword ptr [eax+20]
 00780190    mov         edi,dword ptr [eax+8]
 00780193    sub         edi,1
>00780196    jno         0078019D
 00780198    call        @IntOver
 0078019D    test        edi,edi
>0078019F    jl          007801D4
 007801A1    inc         edi
 007801A2    xor         ebx,ebx
 007801A4    mov         eax,dword ptr [ebp-4]
 007801A7    mov         esi,dword ptr [eax+20]
 007801AA    lea         eax,[esi+8]
 007801AD    mov         edx,ebx
 007801AF    call        00434534
 007801B4    mov         eax,dword ptr [esi+20]
 007801B7    mov         eax,dword ptr [eax+ebx*4]
 007801BA    mov         edx,dword ptr [ebp+8]
 007801BD    mov         dword ptr [edx+0C],eax
 007801C0    mov         eax,dword ptr [ebp+8]
 007801C3    push        eax
 007801C4    mov         eax,dword ptr [ebp+8]
 007801C7    mov         eax,dword ptr [eax+0C]
 007801CA    call        00780124
 007801CF    pop         ecx
 007801D0    inc         ebx
 007801D1    dec         edi
>007801D2    jne         007801A4
 007801D4    pop         edi
 007801D5    pop         esi
 007801D6    pop         ebx
 007801D7    pop         ecx
 007801D8    pop         ebp
 007801D9    ret
end;*}

//007801DC
{*procedure sub_007801DC(?:TDCSystem; ?:?);
begin
 007801DC    push        ebp
 007801DD    mov         ebp,esp
 007801DF    push        ecx
 007801E0    push        ebx
 007801E1    push        esi
 007801E2    push        edi
 007801E3    mov         dword ptr [ebp-4],eax
 007801E6    mov         eax,dword ptr [ebp-4]
 007801E9    mov         eax,dword ptr [eax+0C]
 007801EC    mov         edi,dword ptr [eax+8]
 007801EF    sub         edi,1
>007801F2    jno         007801F9
 007801F4    call        @IntOver
 007801F9    test        edi,edi
>007801FB    jl          00780230
 007801FD    inc         edi
 007801FE    xor         ebx,ebx
 00780200    mov         eax,dword ptr [ebp-4]
 00780203    mov         esi,dword ptr [eax+0C]
 00780206    lea         eax,[esi+8]
 00780209    mov         edx,ebx
 0078020B    call        00434534
 00780210    mov         eax,dword ptr [esi+20]
 00780213    mov         eax,dword ptr [eax+ebx*4]
 00780216    mov         edx,dword ptr [ebp+8]
 00780219    mov         dword ptr [edx+10],eax
 0078021C    mov         eax,dword ptr [ebp+8]
 0078021F    push        eax
 00780220    mov         eax,dword ptr [ebp+8]
 00780223    mov         eax,dword ptr [eax+10]
 00780226    call        00780180
 0078022B    pop         ecx
 0078022C    inc         ebx
 0078022D    dec         edi
>0078022E    jne         00780200
 00780230    pop         edi
 00780231    pop         esi
 00780232    pop         ebx
 00780233    pop         ecx
 00780234    pop         ebp
 00780235    ret
end;*}

//00780238
procedure TDCGroupsFrm.UpdateIGrid(DCLevel:Integer; DCSystem:TDCSystem; DCAddr:TDCAddr; DCLoop:TDCLoop; DCPanel:TDCPanel);
begin
{*
 00780238    push        ebp
 00780239    mov         ebp,esp
 0078023B    push        ecx
 0078023C    mov         ecx,4
 00780241    push        0
 00780243    push        0
 00780245    dec         ecx
>00780246    jne         00780241
 00780248    xchg        ecx,dword ptr [ebp-4]
 0078024B    push        ebx
 0078024C    push        esi
 0078024D    mov         esi,ecx
 0078024F    mov         ebx,edx
 00780251    mov         dword ptr [ebp-8],eax
 00780254    xor         eax,eax
 00780256    push        ebp
 00780257    push        780459
 0078025C    push        dword ptr fs:[eax]
 0078025F    mov         dword ptr fs:[eax],esp
 00780262    xor         eax,eax
 00780264    mov         dword ptr [ebp-4],eax
 00780267    mov         eax,dword ptr [ebp-8]
 0078026A    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780270    mov         edx,2
 00780275    call        TDrawGrid.SetRowCount
 0078027A    lea         eax,[ebp-0C]
 0078027D    push        eax
 0078027E    xor         eax,eax
 00780280    mov         dword ptr [ebp-14],eax
 00780283    mov         byte ptr [ebp-10],0
 00780287    lea         edx,[ebp-14]
 0078028A    xor         ecx,ecx
 0078028C    mov         eax,[007C4074];^'Number of inputs: %d'
 00780291    call        Format
 00780296    mov         edx,dword ptr [ebp-0C]
 00780299    mov         eax,dword ptr [ebp-8]
 0078029C    mov         eax,dword ptr [eax+424];TDCGroupsFrm.lbNumInputs:TLabel
 007802A2    call        TControl.SetText
 007802A7    sub         ebx,1
>007802AA    jb          007802C1
>007802AC    je          00780322
 007802AE    dec         ebx
>007802AF    je          0078038A
 007802B5    dec         ebx
>007802B6    je          007803EF
>007802BC    jmp         00780428
 007802C1    mov         eax,dword ptr [esi+4];TDCSystem.FNumInputs:Integer
 007802C4    test        eax,eax
>007802C6    jle         00780428
 007802CC    mov         edx,eax
 007802CE    add         edx,1
>007802D1    jno         007802D8
 007802D3    call        @IntOver
 007802D8    mov         eax,dword ptr [ebp-8]
 007802DB    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007802E1    call        TDrawGrid.SetRowCount
 007802E6    push        ebp
 007802E7    mov         eax,esi
 007802E9    call        007801DC
 007802EE    pop         ecx
 007802EF    lea         eax,[ebp-18]
 007802F2    push        eax
 007802F3    mov         eax,dword ptr [esi+4];TDCSystem.FNumInputs:Integer
 007802F6    mov         dword ptr [ebp-14],eax
 007802F9    mov         byte ptr [ebp-10],0
 007802FD    lea         edx,[ebp-14]
 00780300    xor         ecx,ecx
 00780302    mov         eax,[007C4074];^'Number of inputs: %d'
 00780307    call        Format
 0078030C    mov         edx,dword ptr [ebp-18]
 0078030F    mov         eax,dword ptr [ebp-8]
 00780312    mov         eax,dword ptr [eax+424];TDCGroupsFrm.lbNumInputs:TLabel
 00780318    call        TControl.SetText
>0078031D    jmp         00780428
 00780322    mov         eax,dword ptr [ebp+10]
 00780325    mov         eax,dword ptr [eax+14];TDCPanel.FNumInputs:Integer
 00780328    test        eax,eax
>0078032A    jle         00780428
 00780330    mov         edx,eax
 00780332    add         edx,1
>00780335    jno         0078033C
 00780337    call        @IntOver
 0078033C    mov         eax,dword ptr [ebp-8]
 0078033F    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780345    call        TDrawGrid.SetRowCount
 0078034A    push        ebp
 0078034B    mov         eax,dword ptr [ebp+10]
 0078034E    call        00780180
 00780353    pop         ecx
 00780354    lea         eax,[ebp-1C]
 00780357    push        eax
 00780358    mov         eax,dword ptr [ebp+10]
 0078035B    mov         eax,dword ptr [eax+14];TDCPanel.FNumInputs:Integer
 0078035E    mov         dword ptr [ebp-14],eax
 00780361    mov         byte ptr [ebp-10],0
 00780365    lea         edx,[ebp-14]
 00780368    xor         ecx,ecx
 0078036A    mov         eax,[007C4074];^'Number of inputs: %d'
 0078036F    call        Format
 00780374    mov         edx,dword ptr [ebp-1C]
 00780377    mov         eax,dword ptr [ebp-8]
 0078037A    mov         eax,dword ptr [eax+424];TDCGroupsFrm.lbNumInputs:TLabel
 00780380    call        TControl.SetText
>00780385    jmp         00780428
 0078038A    mov         eax,dword ptr [ebp+0C]
 0078038D    mov         eax,dword ptr [eax+14];TDCLoop.FNumInputs:Integer
 00780390    test        eax,eax
>00780392    jle         00780428
 00780398    mov         edx,eax
 0078039A    add         edx,1
>0078039D    jno         007803A4
 0078039F    call        @IntOver
 007803A4    mov         eax,dword ptr [ebp-8]
 007803A7    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007803AD    call        TDrawGrid.SetRowCount
 007803B2    push        ebp
 007803B3    mov         eax,dword ptr [ebp+0C]
 007803B6    call        00780124
 007803BB    pop         ecx
 007803BC    lea         eax,[ebp-20]
 007803BF    push        eax
 007803C0    mov         eax,dword ptr [ebp+0C]
 007803C3    mov         eax,dword ptr [eax+14];TDCLoop.FNumInputs:Integer
 007803C6    mov         dword ptr [ebp-14],eax
 007803C9    mov         byte ptr [ebp-10],0
 007803CD    lea         edx,[ebp-14]
 007803D0    xor         ecx,ecx
 007803D2    mov         eax,[007C4074];^'Number of inputs: %d'
 007803D7    call        Format
 007803DC    mov         edx,dword ptr [ebp-20]
 007803DF    mov         eax,dword ptr [ebp-8]
 007803E2    mov         eax,dword ptr [eax+424];TDCGroupsFrm.lbNumInputs:TLabel
 007803E8    call        TControl.SetText
>007803ED    jmp         00780428
 007803EF    push        ebp
 007803F0    mov         eax,dword ptr [ebp+8]
 007803F3    call        0077FAE0
 007803F8    pop         ecx
 007803F9    lea         eax,[ebp-24]
 007803FC    push        eax
 007803FD    mov         dword ptr [ebp-14],1
 00780404    mov         byte ptr [ebp-10],0
 00780408    lea         edx,[ebp-14]
 0078040B    xor         ecx,ecx
 0078040D    mov         eax,[007C4074];^'Number of inputs: %d'
 00780412    call        Format
 00780417    mov         edx,dword ptr [ebp-24]
 0078041A    mov         eax,dword ptr [ebp-8]
 0078041D    mov         eax,dword ptr [eax+424];TDCGroupsFrm.lbNumInputs:TLabel
 00780423    call        TControl.SetText
 00780428    mov         eax,dword ptr [ebp-8]
 0078042B    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780431    call        TStringGrid.DefaultSelection
 00780436    xor         eax,eax
 00780438    pop         edx
 00780439    pop         ecx
 0078043A    pop         ecx
 0078043B    mov         dword ptr fs:[eax],edx
 0078043E    push        780460
 00780443    lea         eax,[ebp-24]
 00780446    mov         edx,4
 0078044B    call        @UStrArrayClr
 00780450    lea         eax,[ebp-0C]
 00780453    call        @UStrClr
 00780458    ret
>00780459    jmp         @HandleFinally
>0078045E    jmp         00780443
 00780460    pop         esi
 00780461    pop         ebx
 00780462    mov         esp,ebp
 00780464    pop         ebp
 00780465    ret         0C
*}
end;

//00780468
procedure TDCGroupsFrm.IGridDrawCell(Sender:TObject; ACol:Integer; State:TGridDrawState; Rect:TRect; ARow:Integer);
begin
{*
 00780468    push        ebp
 00780469    mov         ebp,esp
 0078046B    add         esp,0FFFFFFE0
 0078046E    push        ebx
 0078046F    push        esi
 00780470    push        edi
 00780471    xor         ebx,ebx
 00780473    mov         dword ptr [ebp-20],ebx
 00780476    mov         dword ptr [ebp-18],ebx
 00780479    mov         dword ptr [ebp-1C],ebx
 0078047C    mov         esi,dword ptr [ebp+0C]
 0078047F    lea         edi,[ebp-14]
 00780482    movs        dword ptr [edi],dword ptr [esi]
 00780483    movs        dword ptr [edi],dword ptr [esi]
 00780484    movs        dword ptr [edi],dword ptr [esi]
 00780485    movs        dword ptr [edi],dword ptr [esi]
 00780486    mov         dword ptr [ebp-4],ecx
 00780489    mov         ebx,eax
 0078048B    mov         esi,dword ptr [ebp+10]
 0078048E    xor         eax,eax
 00780490    push        ebp
 00780491    push        780701
 00780496    push        dword ptr fs:[eax]
 00780499    mov         dword ptr fs:[eax],esp
 0078049C    mov         eax,[009037B0];gvar_009037B0:?
 007804A1    test        eax,eax
>007804A3    je          007804AA
 007804A5    sub         eax,4
 007804A8    mov         eax,dword ptr [eax]
 007804AA    dec         eax
 007804AB    cmp         esi,eax
>007804AD    jg          007804D0
 007804AF    mov         eax,[009037B0];gvar_009037B0:?
 007804B4    test        eax,eax
>007804B6    je          007804BD
 007804B8    cmp         esi,dword ptr [eax-4]
>007804BB    jb          007804C2
 007804BD    call        @BoundErr
 007804C2    mov         edx,dword ptr ds:[780714];0x0 gvar_00780714
 007804C8    cmp         edx,dword ptr [eax+esi*4]
 007804CB    setne       al
>007804CE    jmp         007804D2
 007804D0    xor         eax,eax
 007804D2    test        al,al
>007804D4    je          007804FA
 007804D6    mov         eax,[009037B0];gvar_009037B0:?
 007804DB    test        eax,eax
>007804DD    je          007804E4
 007804DF    cmp         esi,dword ptr [eax-4]
>007804E2    jb          007804E9
 007804E4    call        @BoundErr
 007804E9    mov         edx,dword ptr [ebp-4]
 007804EC    cmp         edx,1F
>007804EF    ja          007804F5
 007804F1    bt          dword ptr [eax+esi*4],edx
 007804F5    setb        al
>007804F8    jmp         007804FC
 007804FA    xor         eax,eax
 007804FC    test        al,al
>007804FE    je          00780537
 00780500    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780506    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 0078050C    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0078050F    mov         edx,0FFFF
 00780514    call        TBrush.SetColor
 00780519    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078051F    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00780525    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00780528    mov         edx,0FF000008
 0078052D    call        TFont.SetColor
>00780532    jmp         0078061B
 00780537    test        byte ptr [ebp+8],4
>0078053B    je          00780575
 0078053D    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780543    mov         edx,dword ptr [eax+2C4];TStringGrid.FFixedColor:TColor
 00780549    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 0078054F    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00780552    call        TBrush.SetColor
 00780557    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078055D    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00780563    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00780566    mov         edx,0FF000008
 0078056B    call        TFont.SetColor
>00780570    jmp         0078061B
 00780575    test        byte ptr [ebp+8],2
>00780579    je          007805AF
 0078057B    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780581    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00780587    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0078058A    mov         edx,0FF000005
 0078058F    call        TBrush.SetColor
 00780594    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078059A    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 007805A0    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 007805A3    mov         edx,0FF000008
 007805A8    call        TFont.SetColor
>007805AD    jmp         0078061B
 007805AF    test        byte ptr [ebp+8],1
>007805B3    je          007805E9
 007805B5    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007805BB    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 007805C1    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 007805C4    mov         edx,0FF00000D
 007805C9    call        TBrush.SetColor
 007805CE    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007805D4    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 007805DA    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 007805DD    mov         edx,0FF00000E
 007805E2    call        TFont.SetColor
>007805E7    jmp         0078061B
 007805E9    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007805EF    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 007805F5    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 007805F8    mov         edx,0FF000005
 007805FD    call        TBrush.SetColor
 00780602    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780608    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 0078060E    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00780611    mov         edx,0FF000008
 00780616    call        TFont.SetColor
 0078061B    lea         edx,[ebp-14]
 0078061E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780624    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 0078062A    mov         ecx,dword ptr [eax]
 0078062C    call        dword ptr [ecx+54];TCanvas.FillRect
 0078062F    cmp         dword ptr [ebp-4],5
>00780633    jl          007806A4
 00780635    lea         eax,[ebp-18]
 00780638    push        eax
 00780639    mov         ecx,esi
 0078063B    mov         edx,dword ptr [ebp-4]
 0078063E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780644    call        TStringGrid.GetCells
 00780649    mov         eax,dword ptr [ebp-18]
 0078064C    push        eax
 0078064D    lea         eax,[ebp-1C]
 00780650    push        eax
 00780651    mov         ecx,esi
 00780653    mov         edx,dword ptr [ebp-4]
 00780656    mov         edi,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078065C    mov         eax,edi
 0078065E    call        TStringGrid.GetCells
 00780663    mov         edx,dword ptr [ebp-1C]
 00780666    mov         eax,dword ptr [edi+290];TStringGrid.FCanvas:TCanvas
 0078066C    call        TCustomCanvas.TextWidth
 00780671    mov         edx,dword ptr [ebp-0C]
 00780674    sub         edx,eax
>00780676    jno         0078067D
 00780678    call        @IntOver
 0078067D    sub         edx,2
>00780680    jno         00780687
 00780682    call        @IntOver
 00780687    mov         ecx,dword ptr [ebp-10]
 0078068A    add         ecx,2
>0078068D    jno         00780694
 0078068F    call        @IntOver
 00780694    mov         eax,dword ptr [edi+290];TStringGrid.FCanvas:TCanvas
 0078069A    mov         ebx,dword ptr [eax]
 0078069C    call        dword ptr [ebx+90];TCanvas.TextOut
>007806A2    jmp         007806E6
 007806A4    lea         eax,[ebp-20]
 007806A7    push        eax
 007806A8    mov         ecx,esi
 007806AA    mov         edx,dword ptr [ebp-4]
 007806AD    mov         edi,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007806B3    mov         eax,edi
 007806B5    call        TStringGrid.GetCells
 007806BA    mov         eax,dword ptr [ebp-20]
 007806BD    push        eax
 007806BE    mov         ecx,dword ptr [ebp-10]
 007806C1    add         ecx,2
>007806C4    jno         007806CB
 007806C6    call        @IntOver
 007806CB    mov         edx,dword ptr [ebp-14]
 007806CE    add         edx,2
>007806D1    jno         007806D8
 007806D3    call        @IntOver
 007806D8    mov         eax,dword ptr [edi+290];TStringGrid.FCanvas:TCanvas
 007806DE    mov         ebx,dword ptr [eax]
 007806E0    call        dword ptr [ebx+90];TCanvas.TextOut
 007806E6    xor         eax,eax
 007806E8    pop         edx
 007806E9    pop         ecx
 007806EA    pop         ecx
 007806EB    mov         dword ptr fs:[eax],edx
 007806EE    push        780708
 007806F3    lea         eax,[ebp-20]
 007806F6    mov         edx,3
 007806FB    call        @UStrArrayClr
 00780700    ret
>00780701    jmp         @HandleFinally
>00780706    jmp         007806F3
 00780708    pop         edi
 00780709    pop         esi
 0078070A    pop         ebx
 0078070B    mov         esp,ebp
 0078070D    pop         ebp
 0078070E    ret         0C
*}
end;

//00780718
procedure TDCGroupsFrm.IGridKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);
begin
{*
 00780718    push        ebp
 00780719    mov         ebp,esp
 0078071B    push        ebx
 0078071C    push        esi
 0078071D    push        edi
 0078071E    mov         edi,ecx
 00780720    mov         esi,eax
 00780722    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780728    cmp         byte ptr [eax+31D],0;TStringGrid.FEditorMode:Boolean
>0078072F    je          00780745
 00780731    cmp         word ptr [edi],27
>00780735    je          00780883
 0078073B    cmp         word ptr [edi],25
>0078073F    je          00780883
 00780745    cmp         word ptr [edi],27
>00780749    je          0078075B
 0078074B    cmp         word ptr [edi],9
>0078074F    jne         007807D8
 00780755    test        byte ptr [ebp+8],1
>00780759    jne         007807D8
 0078075B    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780761    mov         ebx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 00780767    cmp         ebx,0FF
>0078076D    jbe         00780774
 0078076F    call        @BoundErr
 00780774    movzx       eax,bl
 00780777    add         eax,1
>0078077A    jno         00780781
 0078077C    call        @IntOver
 00780781    cmp         eax,0FF
>00780786    jbe         0078078D
 00780788    call        @BoundErr
 0078078D    mov         ebx,eax
 0078078F    movzx       eax,bl
 00780792    mov         edx,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780798    cmp         eax,dword ptr [edx+2A4];TStringGrid.FColCount:Integer
>0078079E    jne         007807A2
 007807A0    mov         bl,1
 007807A2    movzx       edx,bl
 007807A5    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007807AB    call        TCustomDrawGrid.GetColWidths
 007807B0    test        eax,eax
>007807B2    jle         007807C2
 007807B4    movzx       edx,bl
 007807B7    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007807BD    call        006C0A44
 007807C2    movzx       eax,bl
 007807C5    mov         edx,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007807CB    cmp         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
>007807D1    jne         00780774
 007807D3    mov         word ptr [edi],0
 007807D8    cmp         word ptr [edi],25
>007807DC    je          007807F2
 007807DE    cmp         word ptr [edi],9
>007807E2    jne         00780883
 007807E8    test        byte ptr [ebp+8],1
>007807EC    je          00780883
 007807F2    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007807F8    mov         ebx,dword ptr [eax+2A8];TStringGrid.FCurrent:TGridCoord
 007807FE    cmp         ebx,0FF
>00780804    jbe         0078080B
 00780806    call        @BoundErr
 0078080B    movzx       eax,bl
 0078080E    sub         eax,1
>00780811    jno         00780818
 00780813    call        @IntOver
 00780818    cmp         eax,0FF
>0078081D    jbe         00780824
 0078081F    call        @BoundErr
 00780824    mov         ebx,eax
 00780826    test        bl,bl
>00780828    jne         0078084D
 0078082A    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780830    mov         ebx,dword ptr [eax+2A4];TStringGrid.FColCount:Integer
 00780836    sub         ebx,1
>00780839    jno         00780840
 0078083B    call        @IntOver
 00780840    cmp         ebx,0FF
>00780846    jbe         0078084D
 00780848    call        @BoundErr
 0078084D    movzx       edx,bl
 00780850    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780856    call        TCustomDrawGrid.GetColWidths
 0078085B    test        eax,eax
>0078085D    jle         0078086D
 0078085F    movzx       edx,bl
 00780862    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780868    call        006C0A44
 0078086D    movzx       eax,bl
 00780870    mov         edx,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780876    cmp         eax,dword ptr [edx+2A8];TStringGrid.FCurrent:TGridCoord
>0078087C    jne         0078080B
 0078087E    mov         word ptr [edi],0
 00780883    pop         edi
 00780884    pop         esi
 00780885    pop         ebx
 00780886    pop         ebp
 00780887    ret         4
*}
end;

//0078088C
procedure TDCGroupsFrm.IGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 0078088C    push        ebp
 0078088D    mov         ebp,esp
 0078088F    add         esp,0FFFFFFE0
 00780892    push        ebx
 00780893    push        esi
 00780894    mov         ebx,eax
 00780896    cmp         cl,1
>00780899    jne         0078090F
 0078089B    mov         eax,dword ptr [ebx+3FC];TDCGroupsFrm.rbRows:TRadioButton
 007808A1    mov         edx,dword ptr [eax]
 007808A3    call        dword ptr [edx+108];TRadioButton.GetChecked
 007808A9    test        al,al
>007808AB    je          007808E7
 007808AD    mov         eax,dword ptr [ebx+3FC];TDCGroupsFrm.rbRows:TRadioButton
 007808B3    mov         edx,dword ptr [eax]
 007808B5    call        dword ptr [edx+108];TRadioButton.GetChecked
 007808BB    test        al,al
>007808BD    je          007808E3
 007808BF    lea         edx,[ebp-10]
 007808C2    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007808C8    call        TCustomGrid.GetSelection
 007808CD    mov         esi,dword ptr [ebp-0C]
 007808D0    lea         edx,[ebp-20]
 007808D3    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007808D9    call        TCustomGrid.GetSelection
 007808DE    cmp         esi,dword ptr [ebp-14]
>007808E1    je          007808E7
 007808E3    xor         edx,edx
>007808E5    jmp         007808E9
 007808E7    mov         dl,1
 007808E9    mov         eax,dword ptr [ebx+3EC];TDCGroupsFrm.miCopy:TMenuItem
 007808EF    call        TMenuItem.SetEnabled
 007808F4    mov         eax,dword ptr [ebx+3FC];TDCGroupsFrm.rbRows:TRadioButton
 007808FA    mov         edx,dword ptr [eax]
 007808FC    call        dword ptr [edx+108];TRadioButton.GetChecked
 00780902    mov         edx,eax
 00780904    mov         eax,dword ptr [ebx+3F4];TDCGroupsFrm.miRange:TMenuItem
 0078090A    call        TMenuItem.SetEnabled
 0078090F    pop         esi
 00780910    pop         ebx
 00780911    mov         esp,ebp
 00780913    pop         ebp
 00780914    ret         0C
*}
end;

//00780918
procedure TDCGroupsFrm.IGridMouseMove(Sender:TObject; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 00780918    push        ebp
 00780919    mov         ebp,esp
 0078091B    add         esp,0FFFFFFE4
 0078091E    push        ebx
 0078091F    push        esi
 00780920    push        edi
 00780921    xor         ebx,ebx
 00780923    mov         dword ptr [ebp-1C],ebx
 00780926    mov         dword ptr [ebp-18],ebx
 00780929    mov         dword ptr [ebp-0C],ebx
 0078092C    mov         ebx,eax
 0078092E    mov         edi,dword ptr [ebp+8]
 00780931    mov         esi,dword ptr [ebp+0C]
 00780934    xor         eax,eax
 00780936    push        ebp
 00780937    push        780BF4
 0078093C    push        dword ptr fs:[eax]
 0078093F    mov         dword ptr fs:[eax],esp
 00780942    lea         eax,[ebp-4]
 00780945    push        eax
 00780946    lea         eax,[ebp-8]
 00780949    push        eax
 0078094A    mov         ecx,edi
 0078094C    mov         edx,esi
 0078094E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780954    call        TCustomDrawGrid.MouseToCell
 00780959    cmp         dword ptr [ebp-8],0
>0078095D    jne         00780BC1
 00780963    mov         eax,dword ptr [ebp-4]
 00780966    cmp         eax,1C
>00780969    ja          00780B70
 0078096F    movzx       eax,byte ptr [eax+78097D]
 00780976    jmp         dword ptr [eax*4+78099A]
 00780976    db          0
 00780976    db          1
 00780976    db          2
 00780976    db          3
 00780976    db          4
 00780976    db          5
 00780976    db          6
 00780976    db          7
 00780976    db          8
 00780976    db          9
 00780976    db          10
 00780976    db          8
 00780976    db          9
 00780976    db          10
 00780976    db          8
 00780976    db          9
 00780976    db          10
 00780976    db          8
 00780976    db          9
 00780976    db          10
 00780976    db          8
 00780976    db          9
 00780976    db          10
 00780976    db          8
 00780976    db          9
 00780976    db          10
 00780976    db          8
 00780976    db          9
 00780976    db          10
 00780976    dd          00780B70
 00780976    dd          007809C6
 00780976    dd          007809E1
 00780976    dd          007809FC
 00780976    dd          00780A17
 00780976    dd          00780A32
 00780976    dd          00780A4D
 00780976    dd          00780A68
 00780976    dd          00780A83
 00780976    dd          00780AD4
 00780976    dd          00780B22
 007809C6    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007809CC    add         eax,90;TStringGrid.FHint:string
 007809D1    mov         edx,dword ptr ds:[7C407C];^'Panel ID of the address or input/output'
 007809D7    call        @UStrAsg
>007809DC    jmp         00780B80
 007809E1    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007809E7    add         eax,90;TStringGrid.FHint:string
 007809EC    mov         edx,dword ptr ds:[7C4080];^'Loop ID of address or IO controller'
 007809F2    call        @UStrAsg
>007809F7    jmp         00780B80
 007809FC    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780A02    add         eax,90;TStringGrid.FHint:string
 00780A07    mov         edx,dword ptr ds:[7C4084];^'Address ID of address or input/output id'
 00780A0D    call        @UStrAsg
>00780A12    jmp         00780B80
 00780A17    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780A1D    add         eax,90;TStringGrid.FHint:string
 00780A22    mov         edx,dword ptr ds:[7C4088];^'Device type or input/output function'
 00780A28    call        @UStrAsg
>00780A2D    jmp         00780B80
 00780A32    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780A38    add         eax,90;TStringGrid.FHint:string
 00780A3D    mov         edx,dword ptr ds:[7C408C];^'Control group A of the address or panel input.
The same ent...
 00780A43    call        @UStrAsg
>00780A48    jmp         00780B80
 00780A4D    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780A53    add         eax,90;TStringGrid.FHint:string
 00780A58    mov         edx,dword ptr ds:[7C4090];^'Control group B of the address or panel input.
The same ent...
 00780A5E    call        @UStrAsg
>00780A63    jmp         00780B80
 00780A68    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780A6E    add         eax,90;TStringGrid.FHint:string
 00780A73    mov         edx,dword ptr ds:[7C4094];^'Control group B2 of the address or panel input.
The same en...
 00780A79    call        @UStrAsg
>00780A7E    jmp         00780B80
 00780A83    lea         eax,[ebp-0C]
 00780A86    push        eax
 00780A87    mov         eax,dword ptr [ebp-4]
 00780A8A    sub         eax,7
>00780A8D    jno         00780A94
 00780A8F    call        @IntOver
 00780A94    mov         ecx,3
 00780A99    cdq
 00780A9A    idiv        eax,ecx
 00780A9C    add         eax,1
>00780A9F    jno         00780AA6
 00780AA1    call        @IntOver
 00780AA6    mov         dword ptr [ebp-14],eax
 00780AA9    mov         byte ptr [ebp-10],0
 00780AAD    lea         edx,[ebp-14]
 00780AB0    xor         ecx,ecx
 00780AB2    mov         eax,[007C4098];^'Control Group ID for delayed control %d'
 00780AB7    call        Format
 00780ABC    mov         edx,dword ptr [ebp-0C]
 00780ABF    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780AC5    add         eax,90;TStringGrid.FHint:string
 00780ACA    call        @UStrAsg
>00780ACF    jmp         00780B80
 00780AD4    lea         eax,[ebp-18]
 00780AD7    push        eax
 00780AD8    mov         eax,dword ptr [ebp-4]
 00780ADB    sub         eax,7
>00780ADE    jno         00780AE5
 00780AE0    call        @IntOver
 00780AE5    mov         ecx,3
 00780AEA    cdq
 00780AEB    idiv        eax,ecx
 00780AED    add         eax,1
>00780AF0    jno         00780AF7
 00780AF2    call        @IntOver
 00780AF7    mov         dword ptr [ebp-14],eax
 00780AFA    mov         byte ptr [ebp-10],0
 00780AFE    lea         edx,[ebp-14]
 00780B01    xor         ecx,ecx
 00780B03    mov         eax,[007C409C];^'Delay time (mm:ss) for delayed control %d'
 00780B08    call        Format
 00780B0D    mov         edx,dword ptr [ebp-18]
 00780B10    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780B16    add         eax,90;TStringGrid.FHint:string
 00780B1B    call        @UStrAsg
>00780B20    jmp         00780B80
 00780B22    lea         eax,[ebp-1C]
 00780B25    push        eax
 00780B26    mov         eax,dword ptr [ebp-4]
 00780B29    sub         eax,7
>00780B2C    jno         00780B33
 00780B2E    call        @IntOver
 00780B33    mov         ecx,3
 00780B38    cdq
 00780B39    idiv        eax,ecx
 00780B3B    add         eax,1
>00780B3E    jno         00780B45
 00780B40    call        @IntOver
 00780B45    mov         dword ptr [ebp-14],eax
 00780B48    mov         byte ptr [ebp-10],0
 00780B4C    lea         edx,[ebp-14]
 00780B4F    xor         ecx,ecx
 00780B51    mov         eax,[007C40A0];^'Event type(s) that trigger delayed control %d'
 00780B56    call        Format
 00780B5B    mov         edx,dword ptr [ebp-1C]
 00780B5E    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780B64    add         eax,90;TStringGrid.FHint:string
 00780B69    call        @UStrAsg
>00780B6E    jmp         00780B80
 00780B70    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780B76    add         eax,90;TStringGrid.FHint:string
 00780B7B    call        @UStrClr
 00780B80    mov         eax,dword ptr [ebp-4]
 00780B83    cmp         eax,dword ptr ds:[9037C4];gvar_009037C4
>00780B89    je          00780BD1
 00780B8B    mov         eax,[007C4A18];^Application:TApplication
 00780B90    mov         eax,dword ptr [eax]
 00780B92    mov         dword ptr [eax+88],1388;TApplication.FHintHidePause:Integer
 00780B9C    lea         ecx,[ebp-14]
 00780B9F    mov         edx,edi
 00780BA1    mov         eax,esi
 00780BA3    call        004830B8
 00780BA8    lea         edx,[ebp-14]
 00780BAB    mov         eax,[007C4A18];^Application:TApplication
 00780BB0    mov         eax,dword ptr [eax]
 00780BB2    call        TApplication.ActivateHint
 00780BB7    mov         eax,dword ptr [ebp-4]
 00780BBA    mov         [009037C4],eax;gvar_009037C4
>00780BBF    jmp         00780BD1
 00780BC1    mov         eax,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780BC7    add         eax,90;TStringGrid.FHint:string
 00780BCC    call        @UStrClr
 00780BD1    xor         eax,eax
 00780BD3    pop         edx
 00780BD4    pop         ecx
 00780BD5    pop         ecx
 00780BD6    mov         dword ptr fs:[eax],edx
 00780BD9    push        780BFB
 00780BDE    lea         eax,[ebp-1C]
 00780BE1    mov         edx,2
 00780BE6    call        @UStrArrayClr
 00780BEB    lea         eax,[ebp-0C]
 00780BEE    call        @UStrClr
 00780BF3    ret
>00780BF4    jmp         @HandleFinally
>00780BF9    jmp         00780BDE
 00780BFB    pop         edi
 00780BFC    pop         esi
 00780BFD    pop         ebx
 00780BFE    mov         esp,ebp
 00780C00    pop         ebp
 00780C01    ret         8
*}
end;

//00780C04
procedure TDCGroupsFrm.IGridSelectCell(Sender:TObject; ACol:Integer; var CanSelect:Boolean; ARow:Integer);
begin
{*
 00780C04    push        ebp
 00780C05    mov         ebp,esp
 00780C07    add         esp,0FFFFFFE0
 00780C0A    push        ebx
 00780C0B    push        esi
 00780C0C    push        edi
 00780C0D    xor         ebx,ebx
 00780C0F    mov         dword ptr [ebp-20],ebx
 00780C12    mov         dword ptr [ebp-1C],ebx
 00780C15    mov         ebx,ecx
 00780C17    mov         edi,eax
 00780C19    xor         eax,eax
 00780C1B    push        ebp
 00780C1C    push        780E4A
 00780C21    push        dword ptr fs:[eax]
 00780C24    mov         dword ptr fs:[eax],esp
 00780C27    xor         edx,edx
 00780C29    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780C2F    call        TControl.SetVisible
 00780C34    mov         esi,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780C3A    test        byte ptr [esi+2D5],10;TStringGrid.?f2D5:byte
>00780C41    jne         00780E2F
 00780C47    cmp         ebx,5
>00780C4A    jge         00780C69
 00780C4C    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780C52    mov         edx,dword ptr ds:[780E5C];0x400 gvar_00780E5C
 00780C58    not         edx
 00780C5A    and         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 00780C60    mov         eax,esi
 00780C62    call        TDrawGrid.SetOptions
>00780C67    jmp         00780C82
 00780C69    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780C6F    mov         edx,dword ptr [eax+2D4];TStringGrid.FOptions:TGridOptions
 00780C75    or          edx,dword ptr ds:[780E5C];0x400 gvar_00780E5C
 00780C7B    mov         eax,esi
 00780C7D    call        TDrawGrid.SetOptions
 00780C82    mov         eax,dword ptr [ebp+8]
 00780C85    mov         byte ptr [eax],0
 00780C88    cmp         dword ptr [ebp+0C],0
>00780C8C    je          00780E2F
 00780C92    mov         eax,ebx
 00780C94    add         eax,0FFFFFFF8
 00780C97    cmp         eax,1F
>00780C9A    ja          00780CA3
 00780C9C    bt          dword ptr ds:[780E60],eax;gvar_00780E60
>00780CA3    jae         00780E29
 00780CA9    lea         eax,[ebp-18]
 00780CAC    push        eax
 00780CAD    mov         ecx,dword ptr [ebp+0C]
 00780CB0    mov         edx,ebx
 00780CB2    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780CB8    call        TCustomDrawGrid.CellRect
 00780CBD    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780CC3    mov         edx,dword ptr [eax+50];TStringGrid.FLeft:Integer
 00780CC6    mov         ecx,edx
 00780CC8    add         ecx,dword ptr [ebp-18]
>00780CCB    jno         00780CD2
 00780CCD    call        @IntOver
 00780CD2    add         ecx,2
>00780CD5    jno         00780CDC
 00780CD7    call        @IntOver
 00780CDC    mov         dword ptr [ebp-18],ecx
 00780CDF    mov         ecx,dword ptr [eax+54];TStringGrid.FTop:Integer
 00780CE2    mov         esi,ecx
 00780CE4    add         esi,dword ptr [ebp-14]
>00780CE7    jno         00780CEE
 00780CE9    call        @IntOver
 00780CEE    add         esi,2
>00780CF1    jno         00780CF8
 00780CF3    call        @IntOver
 00780CF8    mov         dword ptr [ebp-14],esi
 00780CFB    add         dword ptr [ebp-10],edx
>00780CFE    jno         00780D05
 00780D00    call        @IntOver
 00780D05    add         dword ptr [ebp-0C],ecx
>00780D08    jno         00780D0F
 00780D0A    call        @IntOver
 00780D0F    mov         esi,dword ptr [ebp-18]
 00780D12    mov         edx,esi
 00780D14    add         edx,2
>00780D17    jno         00780D1E
 00780D19    call        @IntOver
 00780D1E    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780D24    call        TControl.SetLeft
 00780D29    mov         edx,dword ptr [ebp-14]
 00780D2C    add         edx,2
>00780D2F    jno         00780D36
 00780D31    call        @IntOver
 00780D36    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780D3C    call        TControl.SetTop
 00780D41    mov         edx,dword ptr [ebp-10]
 00780D44    sub         edx,1
>00780D47    jno         00780D4E
 00780D49    call        @IntOver
 00780D4E    sub         edx,esi
>00780D50    jno         00780D57
 00780D52    call        @IntOver
 00780D57    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780D5D    call        TControl.SetWidth
 00780D62    mov         edx,dword ptr [ebp-0C]
 00780D65    sub         edx,1
>00780D68    jno         00780D6F
 00780D6A    call        @IntOver
 00780D6F    sub         edx,dword ptr [ebp-14]
>00780D72    jno         00780D79
 00780D74    call        @IntOver
 00780D79    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780D7F    call        TControl.SetHeight
 00780D84    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780D8A    mov         edx,dword ptr [eax+2A8];TMaskEdit.FOnChange:TNotifyEvent
 00780D90    mov         dword ptr [ebp-8],edx
 00780D93    mov         edx,dword ptr [eax+2AC];TMaskEdit.FOldSelStart:Integer
 00780D99    mov         dword ptr [ebp-4],edx
 00780D9C    xor         edx,edx
 00780D9E    mov         dword ptr [eax+2A8],edx;TMaskEdit.FOnChange:TNotifyEvent
 00780DA4    mov         dword ptr [eax+2AC],edx;TMaskEdit.FOldSelStart:Integer
 00780DAA    lea         eax,[ebp-1C]
 00780DAD    push        eax
 00780DAE    mov         ecx,dword ptr [ebp+0C]
 00780DB1    mov         edx,ebx
 00780DB3    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780DB9    call        TStringGrid.GetCells
 00780DBE    cmp         dword ptr [ebp-1C],0
>00780DC2    jne         00780DD6
 00780DC4    mov         edx,780E70;'00:00'
 00780DC9    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780DCF    call        TCustomMaskEdit.SetText
>00780DD4    jmp         00780DFC
 00780DD6    lea         eax,[ebp-20]
 00780DD9    push        eax
 00780DDA    mov         ecx,dword ptr [ebp+0C]
 00780DDD    mov         edx,ebx
 00780DDF    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780DE5    mov         si,0FFA8
 00780DE9    call        @CallDynaInst;TStringGrid.GetEditText
 00780DEE    mov         edx,dword ptr [ebp-20]
 00780DF1    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780DF7    call        TCustomMaskEdit.SetText
 00780DFC    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780E02    mov         edx,dword ptr [ebp-8]
 00780E05    mov         dword ptr [eax+2A8],edx;TMaskEdit.FOnChange:TNotifyEvent
 00780E0B    mov         edx,dword ptr [ebp-4]
 00780E0E    mov         dword ptr [eax+2AC],edx;TMaskEdit.FOldSelStart:Integer
 00780E14    mov         dl,1
 00780E16    call        TControl.SetVisible
 00780E1B    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780E21    mov         edx,dword ptr [eax]
 00780E23    call        dword ptr [edx+104];TWinControl.SetFocus
 00780E29    mov         eax,dword ptr [ebp+8]
 00780E2C    mov         byte ptr [eax],1
 00780E2F    xor         eax,eax
 00780E31    pop         edx
 00780E32    pop         ecx
 00780E33    pop         ecx
 00780E34    mov         dword ptr fs:[eax],edx
 00780E37    push        780E51
 00780E3C    lea         eax,[ebp-20]
 00780E3F    mov         edx,2
 00780E44    call        @UStrArrayClr
 00780E49    ret
>00780E4A    jmp         @HandleFinally
>00780E4F    jmp         00780E3C
 00780E51    pop         edi
 00780E52    pop         esi
 00780E53    pop         ebx
 00780E54    mov         esp,ebp
 00780E56    pop         ebp
 00780E57    ret         8
*}
end;

//00780E7C
{*procedure sub_00780E7C(?:?; ?:?);
begin
 00780E7C    push        ebp
 00780E7D    mov         ebp,esp
 00780E7F    add         esp,0FFFFFFE4
 00780E82    push        ebx
 00780E83    push        esi
 00780E84    push        edi
 00780E85    xor         ecx,ecx
 00780E87    mov         dword ptr [ebp-0C],ecx
 00780E8A    mov         dword ptr [ebp-8],ecx
 00780E8D    mov         edi,edx
 00780E8F    mov         dword ptr [ebp-4],eax
 00780E92    mov         eax,dword ptr [ebp-4]
 00780E95    call        @UStrAddRef
 00780E9A    xor         eax,eax
 00780E9C    push        ebp
 00780E9D    push        780F48
 00780EA2    push        dword ptr fs:[eax]
 00780EA5    mov         dword ptr fs:[eax],esp
 00780EA8    lea         eax,[ebp-8]
 00780EAB    push        eax
 00780EAC    mov         ecx,2
 00780EB1    mov         edx,1
 00780EB6    mov         eax,dword ptr [ebp-4]
 00780EB9    call        @UStrCopy
 00780EBE    mov         eax,dword ptr [ebp-8]
 00780EC1    xor         edx,edx
 00780EC3    call        StrToIntDef
 00780EC8    mov         ebx,eax
 00780ECA    cmp         ebx,3C
>00780ECD    jl          00780ED4
 00780ECF    mov         ebx,3B
 00780ED4    test        ebx,ebx
>00780ED6    jge         00780EDA
 00780ED8    xor         ebx,ebx
 00780EDA    lea         eax,[ebp-0C]
 00780EDD    push        eax
 00780EDE    mov         ecx,2
 00780EE3    mov         edx,4
 00780EE8    mov         eax,dword ptr [ebp-4]
 00780EEB    call        @UStrCopy
 00780EF0    mov         eax,dword ptr [ebp-0C]
 00780EF3    xor         edx,edx
 00780EF5    call        StrToIntDef
 00780EFA    mov         esi,eax
 00780EFC    cmp         esi,3C
>00780EFF    jl          00780F06
 00780F01    mov         esi,3B
 00780F06    test        esi,esi
>00780F08    jge         00780F0C
 00780F0A    xor         esi,esi
 00780F0C    push        edi
 00780F0D    mov         dword ptr [ebp-1C],ebx
 00780F10    mov         byte ptr [ebp-18],0
 00780F14    mov         dword ptr [ebp-14],esi
 00780F17    mov         byte ptr [ebp-10],0
 00780F1B    lea         edx,[ebp-1C]
 00780F1E    mov         ecx,1
 00780F23    mov         eax,780F64;'%.2d:%.2d'
 00780F28    call        Format
 00780F2D    xor         eax,eax
 00780F2F    pop         edx
 00780F30    pop         ecx
 00780F31    pop         ecx
 00780F32    mov         dword ptr fs:[eax],edx
 00780F35    push        780F4F
 00780F3A    lea         eax,[ebp-0C]
 00780F3D    mov         edx,3
 00780F42    call        @UStrArrayClr
 00780F47    ret
>00780F48    jmp         @HandleFinally
>00780F4D    jmp         00780F3A
 00780F4F    pop         edi
 00780F50    pop         esi
 00780F51    pop         ebx
 00780F52    mov         esp,ebp
 00780F54    pop         ebp
 00780F55    ret
end;*}

//00780F78
procedure TDCGroupsFrm.MaskEdit1Change(Sender:TObject);
begin
{*
 00780F78    push        ebp
 00780F79    mov         ebp,esp
 00780F7B    push        0
 00780F7D    push        0
 00780F7F    push        ebx
 00780F80    push        esi
 00780F81    mov         ebx,eax
 00780F83    xor         eax,eax
 00780F85    push        ebp
 00780F86    push        780FE9
 00780F8B    push        dword ptr fs:[eax]
 00780F8E    mov         dword ptr fs:[eax],esp
 00780F91    lea         edx,[ebp-8]
 00780F94    mov         eax,dword ptr [ebx+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00780F9A    call        TCustomMaskEdit.GetText
 00780F9F    mov         eax,dword ptr [ebp-8]
 00780FA2    lea         edx,[ebp-4]
 00780FA5    call        00780E7C
 00780FAA    mov         eax,dword ptr [ebp-4]
 00780FAD    push        eax
 00780FAE    mov         esi,dword ptr [ebx+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00780FB4    mov         ecx,dword ptr [esi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00780FBA    mov         edx,dword ptr [esi+2A8];TStringGrid.FCurrent:TGridCoord
 00780FC0    mov         eax,esi
 00780FC2    mov         si,0FFA7
 00780FC6    call        @CallDynaInst;TStringGrid.SetEditText
 00780FCB    xor         eax,eax
 00780FCD    pop         edx
 00780FCE    pop         ecx
 00780FCF    pop         ecx
 00780FD0    mov         dword ptr fs:[eax],edx
 00780FD3    push        780FF0
 00780FD8    lea         eax,[ebp-8]
 00780FDB    call        @UStrClr
 00780FE0    lea         eax,[ebp-4]
 00780FE3    call        @UStrClr
 00780FE8    ret
>00780FE9    jmp         @HandleFinally
>00780FEE    jmp         00780FD8
 00780FF0    pop         esi
 00780FF1    pop         ebx
 00780FF2    pop         ecx
 00780FF3    pop         ecx
 00780FF4    pop         ebp
 00780FF5    ret
*}
end;

//00780FF8
procedure TDCGroupsFrm.MaskEdit1Enter(Sender:TObject);
begin
{*
 00780FF8    push        esi
 00780FF9    mov         esi,eax
 00780FFB    mov         edx,3
 00781000    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00781006    mov         ecx,dword ptr [eax]
 00781008    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 0078100E    mov         edx,2
 00781013    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00781019    mov         ecx,dword ptr [eax]
 0078101B    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 00781021    pop         esi
 00781022    ret
*}
end;

//00781024
procedure TDCGroupsFrm.MaskEdit1KeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);
begin
{*
 00781024    push        ebp
 00781025    mov         ebp,esp
 00781027    add         esp,0FFFFFFEC
 0078102A    push        ebx
 0078102B    push        esi
 0078102C    push        edi
 0078102D    xor         ebx,ebx
 0078102F    mov         dword ptr [ebp-0C],ebx
 00781032    mov         dword ptr [ebp-4],ebx
 00781035    mov         esi,ecx
 00781037    mov         edi,eax
 00781039    xor         eax,eax
 0078103B    push        ebp
 0078103C    push        78124D
 00781041    push        dword ptr fs:[eax]
 00781044    mov         dword ptr fs:[eax],esp
 00781047    cmp         word ptr [esi],26
>0078104B    je          00781063
 0078104D    cmp         word ptr [esi],28
>00781051    je          00781063
 00781053    cmp         word ptr [esi],25
>00781057    je          00781063
 00781059    cmp         word ptr [esi],27
>0078105D    jne         0078122F
 00781063    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00781069    mov         edx,dword ptr [eax]
 0078106B    call        dword ptr [edx+114];TCustomEdit.GetSelStart
 00781071    mov         dword ptr [ebp-8],eax
 00781074    cmp         dword ptr [ebp-8],2
>00781078    jge         00781081
 0078107A    xor         eax,eax
 0078107C    mov         dword ptr [ebp-8],eax
>0078107F    jmp         00781088
 00781081    mov         dword ptr [ebp-8],3
 00781088    mov         edx,dword ptr [ebp-8]
 0078108B    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00781091    mov         ecx,dword ptr [eax]
 00781093    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 00781099    mov         edx,2
 0078109E    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 007810A4    mov         ecx,dword ptr [eax]
 007810A6    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 007810AC    lea         edx,[ebp-4]
 007810AF    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 007810B5    mov         ecx,dword ptr [eax]
 007810B7    call        dword ptr [ecx+118];TMaskEdit.sub_00507788
 007810BD    mov         eax,dword ptr [ebp-4]
 007810C0    call        StrToInt
 007810C5    mov         ebx,eax
 007810C7    movzx       eax,word ptr [esi]
 007810CA    sub         ax,25
>007810CE    je          00781166
 007810D4    dec         ax
>007810D7    je          007810EC
 007810D9    dec         ax
>007810DC    je          0078119B
 007810E2    dec         ax
>007810E5    je          00781129
>007810E7    jmp         007811CF
 007810EC    test        byte ptr [ebp+8],1
>007810F0    je          0078110F
 007810F2    mov         eax,1
 007810F7    add         eax,ebx
>007810F9    jno         00781100
 007810FB    call        @IntOver
 00781100    mov         ecx,3C
 00781105    cdq
 00781106    idiv        eax,ecx
 00781108    mov         ebx,edx
>0078110A    jmp         007811CF
 0078110F    mov         edx,esi
 00781111    movzx       ecx,word ptr [ebp+8]
 00781115    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078111B    mov         si,0FFB8
 0078111F    call        @CallDynaInst;TCustomGrid.sub_004EE9E0
>00781124    jmp         0078122F
 00781129    test        byte ptr [ebp+8],1
>0078112D    je          0078114C
 0078112F    mov         eax,3B
 00781134    add         eax,ebx
>00781136    jno         0078113D
 00781138    call        @IntOver
 0078113D    mov         ecx,3C
 00781142    cdq
 00781143    idiv        eax,ecx
 00781145    mov         ebx,edx
>00781147    jmp         007811CF
 0078114C    mov         edx,esi
 0078114E    movzx       ecx,word ptr [ebp+8]
 00781152    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781158    mov         si,0FFB8
 0078115C    call        @CallDynaInst;TCustomGrid.sub_004EE9E0
>00781161    jmp         0078122F
 00781166    cmp         dword ptr [ebp-8],3
>0078116A    jne         00781173
 0078116C    xor         eax,eax
 0078116E    mov         dword ptr [ebp-8],eax
>00781171    jmp         007811CF
 00781173    mov         edx,esi
 00781175    movzx       ecx,word ptr [ebp+8]
 00781179    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078117F    mov         si,0FFB8
 00781183    call        @CallDynaInst;TCustomGrid.sub_004EE9E0
 00781188    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078118E    mov         edx,dword ptr [eax]
 00781190    call        dword ptr [edx+104];TWinControl.SetFocus
>00781196    jmp         0078122F
 0078119B    cmp         dword ptr [ebp-8],0
>0078119F    jne         007811AA
 007811A1    mov         dword ptr [ebp-8],3
>007811A8    jmp         007811CF
 007811AA    mov         edx,esi
 007811AC    movzx       ecx,word ptr [ebp+8]
 007811B0    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007811B6    mov         si,0FFB8
 007811BA    call        @CallDynaInst;TCustomGrid.sub_004EE9E0
 007811BF    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007811C5    mov         edx,dword ptr [eax]
 007811C7    call        dword ptr [edx+104];TWinControl.SetFocus
>007811CD    jmp         0078122F
 007811CF    movzx       eax,word ptr [esi]
 007811D2    sub         ax,26
>007811D6    je          007811DE
 007811D8    sub         ax,2
>007811DC    jne         00781206
 007811DE    lea         eax,[ebp-0C]
 007811E1    push        eax
 007811E2    mov         dword ptr [ebp-14],ebx
 007811E5    mov         byte ptr [ebp-10],0
 007811E9    lea         edx,[ebp-14]
 007811EC    xor         ecx,ecx
 007811EE    mov         eax,78126C;'%.2d'
 007811F3    call        Format
 007811F8    mov         edx,dword ptr [ebp-0C]
 007811FB    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00781201    call        TCustomEdit.SetSelText
 00781206    mov         edx,dword ptr [ebp-8]
 00781209    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 0078120F    mov         ecx,dword ptr [eax]
 00781211    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 00781217    mov         edx,2
 0078121C    mov         eax,dword ptr [edi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00781222    mov         ecx,dword ptr [eax]
 00781224    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 0078122A    mov         word ptr [esi],0
 0078122F    xor         eax,eax
 00781231    pop         edx
 00781232    pop         ecx
 00781233    pop         ecx
 00781234    mov         dword ptr fs:[eax],edx
 00781237    push        781254
 0078123C    lea         eax,[ebp-0C]
 0078123F    call        @UStrClr
 00781244    lea         eax,[ebp-4]
 00781247    call        @UStrClr
 0078124C    ret
>0078124D    jmp         @HandleFinally
>00781252    jmp         0078123C
 00781254    pop         edi
 00781255    pop         esi
 00781256    pop         ebx
 00781257    mov         esp,ebp
 00781259    pop         ebp
 0078125A    ret         4
*}
end;

//00781278
procedure TDCGroupsFrm.MaskEdit1MouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 00781278    push        ebp
 00781279    mov         ebp,esp
 0078127B    push        esi
 0078127C    mov         esi,eax
 0078127E    test        cl,cl
>00781280    jne         007812CF
 00781282    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 00781288    mov         edx,dword ptr [eax]
 0078128A    call        dword ptr [edx+114];TCustomEdit.GetSelStart
 00781290    cmp         eax,2
>00781293    jge         007812A7
 00781295    xor         edx,edx
 00781297    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 0078129D    mov         ecx,dword ptr [eax]
 0078129F    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
>007812A5    jmp         007812BA
 007812A7    mov         edx,3
 007812AC    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 007812B2    mov         ecx,dword ptr [eax]
 007812B4    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 007812BA    mov         edx,2
 007812BF    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 007812C5    mov         ecx,dword ptr [eax]
 007812C7    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
>007812CD    jmp         007812F2
 007812CF    xor         edx,edx
 007812D1    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 007812D7    mov         ecx,dword ptr [eax]
 007812D9    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 007812DF    mov         edx,5
 007812E4    mov         eax,dword ptr [esi+3DC];TDCGroupsFrm.MaskEdit1:TMaskEdit
 007812EA    mov         ecx,dword ptr [eax]
 007812EC    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 007812F2    pop         esi
 007812F3    pop         ebp
 007812F4    ret         0C
*}
end;

//007812F8
procedure TDCGroupsFrm.miCopyClick(Sender:TObject);
begin
{*
 007812F8    push        ebp
 007812F9    mov         ebp,esp
 007812FB    add         esp,0FFFFFFDC
 007812FE    push        ebx
 007812FF    push        esi
 00781300    push        edi
 00781301    xor         ecx,ecx
 00781303    mov         dword ptr [ebp-24],ecx
 00781306    mov         esi,eax
 00781308    xor         eax,eax
 0078130A    push        ebp
 0078130B    push        7813CB
 00781310    push        dword ptr fs:[eax]
 00781313    mov         dword ptr fs:[eax],esp
 00781316    cmp         dword ptr ds:[9037C0],0;gvar_009037C0:TStringList
>0078131D    jne         00781330
 0078131F    mov         dl,1
 00781321    mov         eax,[0046F9A0];TStringList
 00781326    call        TStringList.Create;TStringList.Create
 0078132B    mov         [009037C0],eax;gvar_009037C0:TStringList
 00781330    mov         eax,[009037C0];gvar_009037C0:TStringList
 00781335    mov         edx,dword ptr [eax]
 00781337    call        dword ptr [edx+48]
 0078133A    lea         edx,[ebp-10]
 0078133D    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781343    call        TCustomGrid.GetSelection
 00781348    mov         ebx,dword ptr [ebp-0C]
 0078134B    lea         edx,[ebp-20]
 0078134E    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781354    call        TCustomGrid.GetSelection
 00781359    cmp         ebx,dword ptr [ebp-14]
>0078135C    jne         007813B5
 0078135E    mov         ebx,5
 00781363    lea         edx,[ebp-10]
 00781366    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078136C    call        TCustomGrid.GetSelection
 00781371    cmp         ebx,dword ptr [ebp-10]
>00781374    jl          007813AF
 00781376    lea         edx,[ebp-20]
 00781379    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078137F    call        TCustomGrid.GetSelection
 00781384    cmp         ebx,dword ptr [ebp-18]
>00781387    jg          007813AF
 00781389    lea         eax,[ebp-24]
 0078138C    push        eax
 0078138D    mov         edi,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781393    mov         ecx,dword ptr [edi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00781399    mov         edx,ebx
 0078139B    mov         eax,edi
 0078139D    call        TStringGrid.GetCells
 007813A2    mov         edx,dword ptr [ebp-24]
 007813A5    mov         eax,[009037C0];gvar_009037C0:TStringList
 007813AA    mov         ecx,dword ptr [eax]
 007813AC    call        dword ptr [ecx+3C]
 007813AF    inc         ebx
 007813B0    cmp         ebx,1D
>007813B3    jne         00781363
 007813B5    xor         eax,eax
 007813B7    pop         edx
 007813B8    pop         ecx
 007813B9    pop         ecx
 007813BA    mov         dword ptr fs:[eax],edx
 007813BD    push        7813D2
 007813C2    lea         eax,[ebp-24]
 007813C5    call        @UStrClr
 007813CA    ret
>007813CB    jmp         @HandleFinally
>007813D0    jmp         007813C2
 007813D2    pop         edi
 007813D3    pop         esi
 007813D4    pop         ebx
 007813D5    mov         esp,ebp
 007813D7    pop         ebp
 007813D8    ret
*}
end;

//007813DC
procedure TDCGroupsFrm.miPasteClick(Sender:TObject);
begin
{*
 007813DC    push        ebp
 007813DD    mov         ebp,esp
 007813DF    add         esp,0FFFFFFCC
 007813E2    push        ebx
 007813E3    push        esi
 007813E4    push        edi
 007813E5    xor         ecx,ecx
 007813E7    mov         dword ptr [ebp-34],ecx
 007813EA    mov         dword ptr [ebp-10],ecx
 007813ED    mov         dword ptr [ebp-4],eax
 007813F0    xor         eax,eax
 007813F2    push        ebp
 007813F3    push        78150C
 007813F8    push        dword ptr fs:[eax]
 007813FB    mov         dword ptr fs:[eax],esp
 007813FE    cmp         dword ptr ds:[9037C0],0;gvar_009037C0:TStringList
>00781405    je          007814EE
 0078140B    mov         eax,[009037C0];gvar_009037C0:TStringList
 00781410    mov         edx,dword ptr [eax]
 00781412    call        dword ptr [edx+14]
 00781415    test        eax,eax
>00781417    jle         007814EE
 0078141D    mov         eax,[009037C0];gvar_009037C0:TStringList
 00781422    mov         edx,dword ptr [eax]
 00781424    call        dword ptr [edx+14]
 00781427    dec         eax
>00781428    jne         0078145E
 0078142A    lea         ecx,[ebp-10]
 0078142D    xor         edx,edx
 0078142F    mov         eax,[009037C0];gvar_009037C0:TStringList
 00781434    mov         esi,dword ptr [eax]
 00781436    call        dword ptr [esi+0C]
 00781439    mov         eax,dword ptr [ebp-10]
 0078143C    push        eax
 0078143D    mov         eax,dword ptr [ebp-4]
 00781440    mov         ebx,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781446    mov         ecx,dword ptr [ebx+2AC];TStringGrid.FDefaultRowHeight:Integer
 0078144C    mov         edx,dword ptr [ebx+2A8];TStringGrid.FCurrent:TGridCoord
 00781452    mov         eax,ebx
 00781454    call        TStringGrid.SetCells
>00781459    jmp         007814EE
 0078145E    lea         edx,[ebp-20]
 00781461    mov         eax,dword ptr [ebp-4]
 00781464    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078146A    call        TCustomGrid.GetSelection
 0078146F    mov         eax,dword ptr [ebp-1C]
 00781472    push        eax
 00781473    lea         edx,[ebp-30]
 00781476    mov         eax,dword ptr [ebp-4]
 00781479    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078147F    call        TCustomGrid.GetSelection
 00781484    mov         eax,dword ptr [ebp-24]
 00781487    pop         edx
 00781488    sub         eax,edx
>0078148A    jl          007814EE
 0078148C    inc         eax
 0078148D    mov         dword ptr [ebp-0C],eax
 00781490    mov         dword ptr [ebp-8],edx
 00781493    mov         eax,[009037C0];gvar_009037C0:TStringList
 00781498    mov         edx,dword ptr [eax]
 0078149A    call        dword ptr [edx+14]
 0078149D    mov         esi,eax
 0078149F    sub         esi,1
>007814A2    jno         007814A9
 007814A4    call        @IntOver
 007814A9    test        esi,esi
>007814AB    jl          007814E6
 007814AD    inc         esi
 007814AE    xor         ebx,ebx
 007814B0    lea         ecx,[ebp-34]
 007814B3    mov         edx,ebx
 007814B5    mov         eax,[009037C0];gvar_009037C0:TStringList
 007814BA    mov         edi,dword ptr [eax]
 007814BC    call        dword ptr [edi+0C]
 007814BF    mov         eax,dword ptr [ebp-34]
 007814C2    push        eax
 007814C3    mov         edx,5
 007814C8    add         edx,ebx
>007814CA    jno         007814D1
 007814CC    call        @IntOver
 007814D1    mov         eax,dword ptr [ebp-4]
 007814D4    mov         eax,dword ptr [eax+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007814DA    mov         ecx,dword ptr [ebp-8]
 007814DD    call        TStringGrid.SetCells
 007814E2    inc         ebx
 007814E3    dec         esi
>007814E4    jne         007814B0
 007814E6    inc         dword ptr [ebp-8]
 007814E9    dec         dword ptr [ebp-0C]
>007814EC    jne         00781493
 007814EE    xor         eax,eax
 007814F0    pop         edx
 007814F1    pop         ecx
 007814F2    pop         ecx
 007814F3    mov         dword ptr fs:[eax],edx
 007814F6    push        781513
 007814FB    lea         eax,[ebp-34]
 007814FE    call        @UStrClr
 00781503    lea         eax,[ebp-10]
 00781506    call        @UStrClr
 0078150B    ret
>0078150C    jmp         @HandleFinally
>00781511    jmp         007814FB
 00781513    pop         edi
 00781514    pop         esi
 00781515    pop         ebx
 00781516    mov         esp,ebp
 00781518    pop         ebp
 00781519    ret
*}
end;

//0078151C
procedure TDCGroupsFrm.miRangeClick(Sender:TObject);
begin
{*
 0078151C    push        ebp
 0078151D    mov         ebp,esp
 0078151F    mov         ecx,14
 00781524    push        0
 00781526    push        0
 00781528    dec         ecx
>00781529    jne         00781524
 0078152B    push        ecx
 0078152C    push        ebx
 0078152D    push        esi
 0078152E    push        edi
 0078152F    mov         edi,eax
 00781531    mov         ebx,dword ptr ds:[7C48B4];^gvar_00903788:TDCRangeFrm
 00781537    xor         eax,eax
 00781539    push        ebp
 0078153A    push        781B92
 0078153F    push        dword ptr fs:[eax]
 00781542    mov         dword ptr fs:[eax],esp
 00781545    mov         eax,dword ptr [ebx]
 00781547    mov         edx,dword ptr [eax]
 00781549    call        dword ptr [edx+13C]
 0078154F    dec         eax
>00781550    jne         00781B74
 00781556    lea         edx,[ebp-14]
 00781559    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078155F    call        TCustomGrid.GetSelection
 00781564    mov         esi,dword ptr [ebp-10]
 00781567    lea         edx,[ebp-24]
 0078156A    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781570    call        TCustomGrid.GetSelection
 00781575    mov         eax,dword ptr [ebp-18]
 00781578    sub         eax,esi
>0078157A    jl          00781B74
 00781580    inc         eax
 00781581    mov         dword ptr [ebp-4],eax
 00781584    lea         eax,[ebp-28]
 00781587    push        eax
 00781588    mov         eax,dword ptr [ebx]
 0078158A    mov         eax,dword ptr [eax+3C8]
 00781590    mov         ecx,1
 00781595    mov         edx,1
 0078159A    call        TStringGrid.GetCells
 0078159F    mov         eax,dword ptr [ebp-28]
 007815A2    mov         edx,781BAC;'Don''t change'
 007815A7    call        @UStrEqual
>007815AC    je          007815DF
 007815AE    lea         eax,[ebp-2C]
 007815B1    push        eax
 007815B2    mov         eax,dword ptr [ebx]
 007815B4    mov         eax,dword ptr [eax+3C8]
 007815BA    mov         ecx,1
 007815BF    mov         edx,1
 007815C4    call        TStringGrid.GetCells
 007815C9    mov         eax,dword ptr [ebp-2C]
 007815CC    push        eax
 007815CD    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007815D3    mov         ecx,esi
 007815D5    mov         edx,5
 007815DA    call        TStringGrid.SetCells
 007815DF    lea         eax,[ebp-30]
 007815E2    push        eax
 007815E3    mov         eax,dword ptr [ebx]
 007815E5    mov         eax,dword ptr [eax+3C8]
 007815EB    mov         ecx,2
 007815F0    mov         edx,1
 007815F5    call        TStringGrid.GetCells
 007815FA    mov         eax,dword ptr [ebp-30]
 007815FD    mov         edx,781BAC;'Don''t change'
 00781602    call        @UStrEqual
>00781607    je          0078163A
 00781609    lea         eax,[ebp-34]
 0078160C    push        eax
 0078160D    mov         eax,dword ptr [ebx]
 0078160F    mov         eax,dword ptr [eax+3C8]
 00781615    mov         ecx,2
 0078161A    mov         edx,1
 0078161F    call        TStringGrid.GetCells
 00781624    mov         eax,dword ptr [ebp-34]
 00781627    push        eax
 00781628    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078162E    mov         ecx,esi
 00781630    mov         edx,6
 00781635    call        TStringGrid.SetCells
 0078163A    lea         eax,[ebp-38]
 0078163D    push        eax
 0078163E    mov         eax,dword ptr [ebx]
 00781640    mov         eax,dword ptr [eax+3C8]
 00781646    mov         ecx,3
 0078164B    mov         edx,1
 00781650    call        TStringGrid.GetCells
 00781655    mov         eax,dword ptr [ebp-38]
 00781658    mov         edx,781BAC;'Don''t change'
 0078165D    call        @UStrEqual
>00781662    je          00781695
 00781664    lea         eax,[ebp-3C]
 00781667    push        eax
 00781668    mov         eax,dword ptr [ebx]
 0078166A    mov         eax,dword ptr [eax+3C8]
 00781670    mov         ecx,3
 00781675    mov         edx,1
 0078167A    call        TStringGrid.GetCells
 0078167F    mov         eax,dword ptr [ebp-3C]
 00781682    push        eax
 00781683    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781689    mov         ecx,esi
 0078168B    mov         edx,8
 00781690    call        TStringGrid.SetCells
 00781695    lea         eax,[ebp-40]
 00781698    push        eax
 00781699    mov         eax,dword ptr [ebx]
 0078169B    mov         eax,dword ptr [eax+3C8]
 007816A1    mov         ecx,4
 007816A6    mov         edx,1
 007816AB    call        TStringGrid.GetCells
 007816B0    mov         eax,dword ptr [ebp-40]
 007816B3    mov         edx,781BAC;'Don''t change'
 007816B8    call        @UStrEqual
>007816BD    je          007816F0
 007816BF    lea         eax,[ebp-44]
 007816C2    push        eax
 007816C3    mov         eax,dword ptr [ebx]
 007816C5    mov         eax,dword ptr [eax+3C8]
 007816CB    mov         ecx,4
 007816D0    mov         edx,1
 007816D5    call        TStringGrid.GetCells
 007816DA    mov         eax,dword ptr [ebp-44]
 007816DD    push        eax
 007816DE    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007816E4    mov         ecx,esi
 007816E6    mov         edx,0B
 007816EB    call        TStringGrid.SetCells
 007816F0    lea         eax,[ebp-48]
 007816F3    push        eax
 007816F4    mov         eax,dword ptr [ebx]
 007816F6    mov         eax,dword ptr [eax+3C8]
 007816FC    mov         ecx,5
 00781701    mov         edx,1
 00781706    call        TStringGrid.GetCells
 0078170B    mov         eax,dword ptr [ebp-48]
 0078170E    mov         edx,781BAC;'Don''t change'
 00781713    call        @UStrEqual
>00781718    je          0078174B
 0078171A    lea         eax,[ebp-4C]
 0078171D    push        eax
 0078171E    mov         eax,dword ptr [ebx]
 00781720    mov         eax,dword ptr [eax+3C8]
 00781726    mov         ecx,5
 0078172B    mov         edx,1
 00781730    call        TStringGrid.GetCells
 00781735    mov         eax,dword ptr [ebp-4C]
 00781738    push        eax
 00781739    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078173F    mov         ecx,esi
 00781741    mov         edx,0E
 00781746    call        TStringGrid.SetCells
 0078174B    lea         eax,[ebp-50]
 0078174E    push        eax
 0078174F    mov         eax,dword ptr [ebx]
 00781751    mov         eax,dword ptr [eax+3C8]
 00781757    mov         ecx,6
 0078175C    mov         edx,1
 00781761    call        TStringGrid.GetCells
 00781766    mov         eax,dword ptr [ebp-50]
 00781769    mov         edx,781BAC;'Don''t change'
 0078176E    call        @UStrEqual
>00781773    je          007817A6
 00781775    lea         eax,[ebp-54]
 00781778    push        eax
 00781779    mov         eax,dword ptr [ebx]
 0078177B    mov         eax,dword ptr [eax+3C8]
 00781781    mov         ecx,6
 00781786    mov         edx,1
 0078178B    call        TStringGrid.GetCells
 00781790    mov         eax,dword ptr [ebp-54]
 00781793    push        eax
 00781794    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078179A    mov         ecx,esi
 0078179C    mov         edx,11
 007817A1    call        TStringGrid.SetCells
 007817A6    lea         eax,[ebp-58]
 007817A9    push        eax
 007817AA    mov         eax,dword ptr [ebx]
 007817AC    mov         eax,dword ptr [eax+3C8]
 007817B2    mov         ecx,7
 007817B7    mov         edx,1
 007817BC    call        TStringGrid.GetCells
 007817C1    mov         eax,dword ptr [ebp-58]
 007817C4    mov         edx,781BAC;'Don''t change'
 007817C9    call        @UStrEqual
>007817CE    je          00781801
 007817D0    lea         eax,[ebp-5C]
 007817D3    push        eax
 007817D4    mov         eax,dword ptr [ebx]
 007817D6    mov         eax,dword ptr [eax+3C8]
 007817DC    mov         ecx,7
 007817E1    mov         edx,1
 007817E6    call        TStringGrid.GetCells
 007817EB    mov         eax,dword ptr [ebp-5C]
 007817EE    push        eax
 007817EF    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007817F5    mov         ecx,esi
 007817F7    mov         edx,14
 007817FC    call        TStringGrid.SetCells
 00781801    lea         eax,[ebp-60]
 00781804    push        eax
 00781805    mov         eax,dword ptr [ebx]
 00781807    mov         eax,dword ptr [eax+3C8]
 0078180D    mov         ecx,8
 00781812    mov         edx,1
 00781817    call        TStringGrid.GetCells
 0078181C    mov         eax,dword ptr [ebp-60]
 0078181F    mov         edx,781BAC;'Don''t change'
 00781824    call        @UStrEqual
>00781829    je          0078185C
 0078182B    lea         eax,[ebp-64]
 0078182E    push        eax
 0078182F    mov         eax,dword ptr [ebx]
 00781831    mov         eax,dword ptr [eax+3C8]
 00781837    mov         ecx,8
 0078183C    mov         edx,1
 00781841    call        TStringGrid.GetCells
 00781846    mov         eax,dword ptr [ebp-64]
 00781849    push        eax
 0078184A    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781850    mov         ecx,esi
 00781852    mov         edx,17
 00781857    call        TStringGrid.SetCells
 0078185C    lea         eax,[ebp-68]
 0078185F    push        eax
 00781860    mov         eax,dword ptr [ebx]
 00781862    mov         eax,dword ptr [eax+3C8]
 00781868    mov         ecx,9
 0078186D    mov         edx,1
 00781872    call        TStringGrid.GetCells
 00781877    mov         eax,dword ptr [ebp-68]
 0078187A    mov         edx,781BAC;'Don''t change'
 0078187F    call        @UStrEqual
>00781884    je          007818B7
 00781886    lea         eax,[ebp-6C]
 00781889    push        eax
 0078188A    mov         eax,dword ptr [ebx]
 0078188C    mov         eax,dword ptr [eax+3C8]
 00781892    mov         ecx,9
 00781897    mov         edx,1
 0078189C    call        TStringGrid.GetCells
 007818A1    mov         eax,dword ptr [ebp-6C]
 007818A4    push        eax
 007818A5    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007818AB    mov         ecx,esi
 007818AD    mov         edx,1A
 007818B2    call        TStringGrid.SetCells
 007818B7    lea         eax,[ebp-70]
 007818BA    push        eax
 007818BB    mov         eax,dword ptr [ebx]
 007818BD    mov         eax,dword ptr [eax+3C8]
 007818C3    mov         ecx,3
 007818C8    mov         edx,2
 007818CD    call        TStringGrid.GetCells
 007818D2    mov         eax,dword ptr [ebp-70]
 007818D5    mov         edx,781BAC;'Don''t change'
 007818DA    call        @UStrEqual
>007818DF    je          00781912
 007818E1    lea         eax,[ebp-74]
 007818E4    push        eax
 007818E5    mov         eax,dword ptr [ebx]
 007818E7    mov         eax,dword ptr [eax+3C8]
 007818ED    mov         ecx,3
 007818F2    mov         edx,2
 007818F7    call        TStringGrid.GetCells
 007818FC    mov         eax,dword ptr [ebp-74]
 007818FF    push        eax
 00781900    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781906    mov         ecx,esi
 00781908    mov         edx,9
 0078190D    call        TStringGrid.SetCells
 00781912    lea         eax,[ebp-78]
 00781915    push        eax
 00781916    mov         eax,dword ptr [ebx]
 00781918    mov         eax,dword ptr [eax+3C8]
 0078191E    mov         ecx,4
 00781923    mov         edx,2
 00781928    call        TStringGrid.GetCells
 0078192D    mov         eax,dword ptr [ebp-78]
 00781930    mov         edx,781BAC;'Don''t change'
 00781935    call        @UStrEqual
>0078193A    je          0078196D
 0078193C    lea         eax,[ebp-7C]
 0078193F    push        eax
 00781940    mov         eax,dword ptr [ebx]
 00781942    mov         eax,dword ptr [eax+3C8]
 00781948    mov         ecx,4
 0078194D    mov         edx,2
 00781952    call        TStringGrid.GetCells
 00781957    mov         eax,dword ptr [ebp-7C]
 0078195A    push        eax
 0078195B    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781961    mov         ecx,esi
 00781963    mov         edx,0C
 00781968    call        TStringGrid.SetCells
 0078196D    lea         eax,[ebp-80]
 00781970    push        eax
 00781971    mov         eax,dword ptr [ebx]
 00781973    mov         eax,dword ptr [eax+3C8]
 00781979    mov         ecx,5
 0078197E    mov         edx,2
 00781983    call        TStringGrid.GetCells
 00781988    mov         eax,dword ptr [ebp-80]
 0078198B    mov         edx,781BAC;'Don''t change'
 00781990    call        @UStrEqual
>00781995    je          007819CE
 00781997    lea         eax,[ebp-84]
 0078199D    push        eax
 0078199E    mov         eax,dword ptr [ebx]
 007819A0    mov         eax,dword ptr [eax+3C8]
 007819A6    mov         ecx,5
 007819AB    mov         edx,2
 007819B0    call        TStringGrid.GetCells
 007819B5    mov         eax,dword ptr [ebp-84]
 007819BB    push        eax
 007819BC    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007819C2    mov         ecx,esi
 007819C4    mov         edx,0F
 007819C9    call        TStringGrid.SetCells
 007819CE    lea         eax,[ebp-88]
 007819D4    push        eax
 007819D5    mov         eax,dword ptr [ebx]
 007819D7    mov         eax,dword ptr [eax+3C8]
 007819DD    mov         ecx,6
 007819E2    mov         edx,2
 007819E7    call        TStringGrid.GetCells
 007819EC    mov         eax,dword ptr [ebp-88]
 007819F2    mov         edx,781BAC;'Don''t change'
 007819F7    call        @UStrEqual
>007819FC    je          00781A35
 007819FE    lea         eax,[ebp-8C]
 00781A04    push        eax
 00781A05    mov         eax,dword ptr [ebx]
 00781A07    mov         eax,dword ptr [eax+3C8]
 00781A0D    mov         ecx,6
 00781A12    mov         edx,2
 00781A17    call        TStringGrid.GetCells
 00781A1C    mov         eax,dword ptr [ebp-8C]
 00781A22    push        eax
 00781A23    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781A29    mov         ecx,esi
 00781A2B    mov         edx,12
 00781A30    call        TStringGrid.SetCells
 00781A35    lea         eax,[ebp-90]
 00781A3B    push        eax
 00781A3C    mov         eax,dword ptr [ebx]
 00781A3E    mov         eax,dword ptr [eax+3C8]
 00781A44    mov         ecx,7
 00781A49    mov         edx,2
 00781A4E    call        TStringGrid.GetCells
 00781A53    mov         eax,dword ptr [ebp-90]
 00781A59    mov         edx,781BAC;'Don''t change'
 00781A5E    call        @UStrEqual
>00781A63    je          00781A9C
 00781A65    lea         eax,[ebp-94]
 00781A6B    push        eax
 00781A6C    mov         eax,dword ptr [ebx]
 00781A6E    mov         eax,dword ptr [eax+3C8]
 00781A74    mov         ecx,7
 00781A79    mov         edx,2
 00781A7E    call        TStringGrid.GetCells
 00781A83    mov         eax,dword ptr [ebp-94]
 00781A89    push        eax
 00781A8A    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781A90    mov         ecx,esi
 00781A92    mov         edx,15
 00781A97    call        TStringGrid.SetCells
 00781A9C    lea         eax,[ebp-98]
 00781AA2    push        eax
 00781AA3    mov         eax,dword ptr [ebx]
 00781AA5    mov         eax,dword ptr [eax+3C8]
 00781AAB    mov         ecx,8
 00781AB0    mov         edx,2
 00781AB5    call        TStringGrid.GetCells
 00781ABA    mov         eax,dword ptr [ebp-98]
 00781AC0    mov         edx,781BAC;'Don''t change'
 00781AC5    call        @UStrEqual
>00781ACA    je          00781B03
 00781ACC    lea         eax,[ebp-9C]
 00781AD2    push        eax
 00781AD3    mov         eax,dword ptr [ebx]
 00781AD5    mov         eax,dword ptr [eax+3C8]
 00781ADB    mov         ecx,8
 00781AE0    mov         edx,2
 00781AE5    call        TStringGrid.GetCells
 00781AEA    mov         eax,dword ptr [ebp-9C]
 00781AF0    push        eax
 00781AF1    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781AF7    mov         ecx,esi
 00781AF9    mov         edx,18
 00781AFE    call        TStringGrid.SetCells
 00781B03    lea         eax,[ebp-0A0]
 00781B09    push        eax
 00781B0A    mov         eax,dword ptr [ebx]
 00781B0C    mov         eax,dword ptr [eax+3C8]
 00781B12    mov         ecx,9
 00781B17    mov         edx,2
 00781B1C    call        TStringGrid.GetCells
 00781B21    mov         eax,dword ptr [ebp-0A0]
 00781B27    mov         edx,781BAC;'Don''t change'
 00781B2C    call        @UStrEqual
>00781B31    je          00781B6A
 00781B33    lea         eax,[ebp-0A4]
 00781B39    push        eax
 00781B3A    mov         eax,dword ptr [ebx]
 00781B3C    mov         eax,dword ptr [eax+3C8]
 00781B42    mov         ecx,9
 00781B47    mov         edx,2
 00781B4C    call        TStringGrid.GetCells
 00781B51    mov         eax,dword ptr [ebp-0A4]
 00781B57    push        eax
 00781B58    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781B5E    mov         ecx,esi
 00781B60    mov         edx,1B
 00781B65    call        TStringGrid.SetCells
 00781B6A    inc         esi
 00781B6B    dec         dword ptr [ebp-4]
>00781B6E    jne         00781584
 00781B74    xor         eax,eax
 00781B76    pop         edx
 00781B77    pop         ecx
 00781B78    pop         ecx
 00781B79    mov         dword ptr fs:[eax],edx
 00781B7C    push        781B99
 00781B81    lea         eax,[ebp-0A4]
 00781B87    mov         edx,20
 00781B8C    call        @UStrArrayClr
 00781B91    ret
>00781B92    jmp         @HandleFinally
>00781B97    jmp         00781B81
 00781B99    pop         edi
 00781B9A    pop         esi
 00781B9B    pop         ebx
 00781B9C    mov         esp,ebp
 00781B9E    pop         ebp
 00781B9F    ret
*}
end;

//00781BC8
{*function sub_00781BC8(?:UnicodeString; ?:?):?;
begin
 00781BC8    push        ebp
 00781BC9    mov         ebp,esp
 00781BCB    add         esp,0FFFFFFEC
 00781BCE    push        ebx
 00781BCF    push        esi
 00781BD0    xor         ecx,ecx
 00781BD2    mov         dword ptr [ebp-14],ecx
 00781BD5    mov         dword ptr [ebp-10],ecx
 00781BD8    mov         esi,edx
 00781BDA    mov         dword ptr [ebp-4],eax
 00781BDD    mov         eax,dword ptr [ebp-4]
 00781BE0    call        @UStrAddRef
 00781BE5    xor         eax,eax
 00781BE7    push        ebp
 00781BE8    push        781C94
 00781BED    push        dword ptr fs:[eax]
 00781BF0    mov         dword ptr fs:[eax],esp
 00781BF3    xor         eax,eax
 00781BF5    mov         dword ptr [ebp-8],eax
 00781BF8    xor         eax,eax
 00781BFA    mov         dword ptr [ebp-0C],eax
 00781BFD    lea         eax,[ebp-10]
 00781C00    push        eax
 00781C01    mov         ecx,2
 00781C06    mov         edx,1
 00781C0B    mov         eax,dword ptr [ebp-4]
 00781C0E    call        @UStrCopy
 00781C13    mov         eax,dword ptr [ebp-10]
 00781C16    lea         edx,[ebp-8]
 00781C19    call        0041E5A0
 00781C1E    test        al,al
>00781C20    je          00781C47
 00781C22    lea         eax,[ebp-14]
 00781C25    push        eax
 00781C26    mov         ecx,2
 00781C2B    mov         edx,4
 00781C30    mov         eax,dword ptr [ebp-4]
 00781C33    call        @UStrCopy
 00781C38    mov         eax,dword ptr [ebp-14]
 00781C3B    lea         edx,[ebp-0C]
 00781C3E    call        0041E5A0
 00781C43    test        al,al
>00781C45    jne         00781C4B
 00781C47    xor         ebx,ebx
>00781C49    jmp         00781C4D
 00781C4B    mov         bl,1
 00781C4D    imul        eax,dword ptr [ebp-8],3C
>00781C51    jno         00781C58
 00781C53    call        @IntOver
 00781C58    add         eax,dword ptr [ebp-0C]
>00781C5B    jno         00781C62
 00781C5D    call        @IntOver
 00781C62    cmp         eax,0FFFF
>00781C67    jbe         00781C6E
 00781C69    call        @BoundErr
 00781C6E    mov         word ptr [esi],ax
 00781C71    xor         eax,eax
 00781C73    pop         edx
 00781C74    pop         ecx
 00781C75    pop         ecx
 00781C76    mov         dword ptr fs:[eax],edx
 00781C79    push        781C9B
 00781C7E    lea         eax,[ebp-14]
 00781C81    mov         edx,2
 00781C86    call        @UStrArrayClr
 00781C8B    lea         eax,[ebp-4]
 00781C8E    call        @UStrClr
 00781C93    ret
>00781C94    jmp         @HandleFinally
>00781C99    jmp         00781C7E
 00781C9B    mov         eax,ebx
 00781C9D    pop         esi
 00781C9E    pop         ebx
 00781C9F    mov         esp,ebp
 00781CA1    pop         ebp
 00781CA2    ret
end;*}

//00781CA4
{*function sub_00781CA4(?:TDCGroupsFrm):?;
begin
 00781CA4    push        ebp
 00781CA5    mov         ebp,esp
 00781CA7    add         esp,0FFFFFF9C
 00781CAA    push        ebx
 00781CAB    push        esi
 00781CAC    push        edi
 00781CAD    xor         edx,edx
 00781CAF    mov         dword ptr [ebp-38],edx
 00781CB2    mov         dword ptr [ebp-5C],edx
 00781CB5    mov         dword ptr [ebp-60],edx
 00781CB8    mov         dword ptr [ebp-64],edx
 00781CBB    mov         dword ptr [ebp-34],edx
 00781CBE    mov         dword ptr [ebp-4],edx
 00781CC1    mov         esi,eax
 00781CC3    lea         edi,[ebp-0C]
 00781CC6    xor         eax,eax
 00781CC8    push        ebp
 00781CC9    push        782791
 00781CCE    push        dword ptr fs:[eax]
 00781CD1    mov         dword ptr fs:[eax],esp
 00781CD4    mov         eax,9037B0;gvar_009037B0:?
 00781CD9    mov         edx,dword ptr ds:[77C6F4];:6
 00781CDF    call        @DynArrayClear
 00781CE4    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781CEA    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 00781CF0    push        eax
 00781CF1    mov         eax,9037B0;gvar_009037B0:?
 00781CF6    mov         ecx,1
 00781CFB    mov         edx,dword ptr ds:[77C6F4];:6
 00781D01    call        @DynArraySetLength
 00781D06    add         esp,4
 00781D09    xor         eax,eax
 00781D0B    mov         [009037B4],eax;gvar_009037B4
 00781D10    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781D16    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 00781D1C    sub         eax,1
>00781D1F    jno         00781D26
 00781D21    call        @IntOver
 00781D26    test        eax,eax
>00781D28    jle         007825CC
 00781D2E    mov         dword ptr [ebp-14],eax
 00781D31    mov         ebx,1
 00781D36    lea         eax,[ebp-4]
 00781D39    push        eax
 00781D3A    mov         ecx,ebx
 00781D3C    mov         edx,5
 00781D41    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781D47    call        TStringGrid.GetCells
 00781D4C    cmp         dword ptr [ebp-4],0
>00781D50    jne         00781D5F
 00781D52    lea         eax,[ebp-4]
 00781D55    mov         edx,7827B0;'0'
 00781D5A    call        @UStrLAsg
 00781D5F    mov         edx,edi
 00781D61    mov         eax,dword ptr [ebp-4]
 00781D64    call        0041E5A0
 00781D69    test        al,al
>00781D6B    je          00781D80
 00781D6D    cmp         dword ptr [edi],0
 00781D70    setge       al
 00781D73    cmp         dword ptr [edi],3E7
 00781D79    setle       dl
 00781D7C    and         al,dl
>00781D7E    jmp         00781D82
 00781D80    xor         eax,eax
 00781D82    test        al,al
>00781D84    jne         00781DA2
 00781D86    mov         eax,[009037B0];gvar_009037B0:?
 00781D8B    test        eax,eax
>00781D8D    je          00781D94
 00781D8F    cmp         ebx,dword ptr [eax-4]
>00781D92    jb          00781D99
 00781D94    call        @BoundErr
 00781D99    mov         edx,dword ptr ds:[7827B4];0x20 gvar_007827B4
 00781D9F    or          dword ptr [eax+ebx*4],edx
 00781DA2    lea         eax,[ebp-4]
 00781DA5    push        eax
 00781DA6    mov         ecx,ebx
 00781DA8    mov         edx,6
 00781DAD    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781DB3    call        TStringGrid.GetCells
 00781DB8    cmp         dword ptr [ebp-4],0
>00781DBC    jne         00781DCB
 00781DBE    lea         eax,[ebp-4]
 00781DC1    mov         edx,7827B0;'0'
 00781DC6    call        @UStrLAsg
 00781DCB    mov         edx,edi
 00781DCD    mov         eax,dword ptr [ebp-4]
 00781DD0    call        0041E5A0
 00781DD5    test        al,al
>00781DD7    je          00781DEC
 00781DD9    cmp         dword ptr [edi],0
 00781DDC    setge       al
 00781DDF    cmp         dword ptr [edi],3E7
 00781DE5    setle       dl
 00781DE8    and         al,dl
>00781DEA    jmp         00781DEE
 00781DEC    xor         eax,eax
 00781DEE    test        al,al
>00781DF0    jne         00781E0E
 00781DF2    mov         eax,[009037B0];gvar_009037B0:?
 00781DF7    test        eax,eax
>00781DF9    je          00781E00
 00781DFB    cmp         ebx,dword ptr [eax-4]
>00781DFE    jb          00781E05
 00781E00    call        @BoundErr
 00781E05    mov         edx,dword ptr ds:[7827B8];0x40 gvar_007827B8
 00781E0B    or          dword ptr [eax+ebx*4],edx
 00781E0E    lea         eax,[ebp-4]
 00781E11    push        eax
 00781E12    mov         ecx,ebx
 00781E14    mov         edx,8
 00781E19    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781E1F    call        TStringGrid.GetCells
 00781E24    cmp         dword ptr [ebp-4],0
>00781E28    jne         00781E37
 00781E2A    lea         eax,[ebp-4]
 00781E2D    mov         edx,7827B0;'0'
 00781E32    call        @UStrLAsg
 00781E37    mov         edx,edi
 00781E39    mov         eax,dword ptr [ebp-4]
 00781E3C    call        0041E5A0
 00781E41    test        al,al
>00781E43    je          00781E58
 00781E45    cmp         dword ptr [edi],0
 00781E48    setge       al
 00781E4B    cmp         dword ptr [edi],3E7
 00781E51    setle       dl
 00781E54    and         al,dl
>00781E56    jmp         00781E5A
 00781E58    xor         eax,eax
 00781E5A    test        al,al
>00781E5C    jne         00781E7A
 00781E5E    mov         eax,[009037B0];gvar_009037B0:?
 00781E63    test        eax,eax
>00781E65    je          00781E6C
 00781E67    cmp         ebx,dword ptr [eax-4]
>00781E6A    jb          00781E71
 00781E6C    call        @BoundErr
 00781E71    mov         edx,dword ptr ds:[7827BC];0x100 gvar_007827BC
 00781E77    or          dword ptr [eax+ebx*4],edx
 00781E7A    lea         eax,[ebp-4]
 00781E7D    push        eax
 00781E7E    mov         ecx,ebx
 00781E80    mov         edx,9
 00781E85    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781E8B    call        TStringGrid.GetCells
 00781E90    cmp         dword ptr [ebp-4],0
>00781E94    jne         00781EA3
 00781E96    lea         eax,[ebp-4]
 00781E99    mov         edx,7827CC;'00:00'
 00781E9E    call        @UStrLAsg
 00781EA3    lea         edx,[ebp-0E]
 00781EA6    mov         eax,dword ptr [ebp-4]
 00781EA9    call        00781BC8
 00781EAE    test        al,al
>00781EB0    je          00781ECE
 00781EB2    movzx       eax,word ptr [ebp-0E]
 00781EB6    test        eax,eax
 00781EB8    setge       al
 00781EBB    movzx       edx,word ptr [ebp-0E]
 00781EBF    cmp         edx,0E0F
 00781EC5    setle       byte ptr [ebp-15]
 00781EC9    and         al,byte ptr [ebp-15]
>00781ECC    jmp         00781ED0
 00781ECE    xor         eax,eax
 00781ED0    test        al,al
>00781ED2    jne         00781EF0
 00781ED4    mov         eax,[009037B0];gvar_009037B0:?
 00781ED9    test        eax,eax
>00781EDB    je          00781EE2
 00781EDD    cmp         ebx,dword ptr [eax-4]
>00781EE0    jb          00781EE7
 00781EE2    call        @BoundErr
 00781EE7    mov         edx,dword ptr ds:[7827D8];0x200 gvar_007827D8
 00781EED    or          dword ptr [eax+ebx*4],edx
 00781EF0    cmp         dword ptr [edi],0
>00781EF3    jne         00781F18
 00781EF5    cmp         word ptr [ebp-0E],0
>00781EFA    jbe         00781F18
 00781EFC    mov         eax,[009037B0];gvar_009037B0:?
 00781F01    test        eax,eax
>00781F03    je          00781F0A
 00781F05    cmp         ebx,dword ptr [eax-4]
>00781F08    jb          00781F0F
 00781F0A    call        @BoundErr
 00781F0F    mov         edx,dword ptr ds:[7827D8];0x200 gvar_007827D8
 00781F15    or          dword ptr [eax+ebx*4],edx
 00781F18    lea         eax,[ebp-4]
 00781F1B    push        eax
 00781F1C    mov         ecx,ebx
 00781F1E    mov         edx,0B
 00781F23    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781F29    call        TStringGrid.GetCells
 00781F2E    cmp         dword ptr [ebp-4],0
>00781F32    jne         00781F41
 00781F34    lea         eax,[ebp-4]
 00781F37    mov         edx,7827B0;'0'
 00781F3C    call        @UStrLAsg
 00781F41    mov         edx,edi
 00781F43    mov         eax,dword ptr [ebp-4]
 00781F46    call        0041E5A0
 00781F4B    test        al,al
>00781F4D    je          00781F69
 00781F4F    cmp         dword ptr [edi],0
 00781F52    setge       byte ptr [ebp-16]
 00781F56    cmp         dword ptr [edi],3E7
 00781F5C    setle       byte ptr [ebp-17]
 00781F60    movzx       eax,byte ptr [ebp-17]
 00781F64    and         al,byte ptr [ebp-16]
>00781F67    jmp         00781F6B
 00781F69    xor         eax,eax
 00781F6B    test        al,al
>00781F6D    jne         00781F8B
 00781F6F    mov         eax,[009037B0];gvar_009037B0:?
 00781F74    test        eax,eax
>00781F76    je          00781F7D
 00781F78    cmp         ebx,dword ptr [eax-4]
>00781F7B    jb          00781F82
 00781F7D    call        @BoundErr
 00781F82    mov         edx,dword ptr ds:[7827DC];0x800 gvar_007827DC
 00781F88    or          dword ptr [eax+ebx*4],edx
 00781F8B    lea         eax,[ebp-4]
 00781F8E    push        eax
 00781F8F    mov         ecx,ebx
 00781F91    mov         edx,0C
 00781F96    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00781F9C    call        TStringGrid.GetCells
 00781FA1    cmp         dword ptr [ebp-4],0
>00781FA5    jne         00781FB4
 00781FA7    lea         eax,[ebp-4]
 00781FAA    mov         edx,7827CC;'00:00'
 00781FAF    call        @UStrLAsg
 00781FB4    lea         edx,[ebp-0E]
 00781FB7    mov         eax,dword ptr [ebp-4]
 00781FBA    call        00781BC8
 00781FBF    test        al,al
>00781FC1    je          00781FE3
 00781FC3    movzx       eax,word ptr [ebp-0E]
 00781FC7    test        eax,eax
 00781FC9    setge       byte ptr [ebp-18]
 00781FCD    movzx       eax,word ptr [ebp-0E]
 00781FD1    cmp         eax,0E0F
 00781FD6    setle       byte ptr [ebp-19]
 00781FDA    movzx       eax,byte ptr [ebp-19]
 00781FDE    and         al,byte ptr [ebp-18]
>00781FE1    jmp         00781FE5
 00781FE3    xor         eax,eax
 00781FE5    test        al,al
>00781FE7    jne         00782005
 00781FE9    mov         eax,[009037B0];gvar_009037B0:?
 00781FEE    test        eax,eax
>00781FF0    je          00781FF7
 00781FF2    cmp         ebx,dword ptr [eax-4]
>00781FF5    jb          00781FFC
 00781FF7    call        @BoundErr
 00781FFC    mov         edx,dword ptr ds:[7827E0];0x1000 gvar_007827E0
 00782002    or          dword ptr [eax+ebx*4],edx
 00782005    cmp         dword ptr [edi],0
>00782008    jne         0078202D
 0078200A    cmp         word ptr [ebp-0E],0
>0078200F    jbe         0078202D
 00782011    mov         eax,[009037B0];gvar_009037B0:?
 00782016    test        eax,eax
>00782018    je          0078201F
 0078201A    cmp         ebx,dword ptr [eax-4]
>0078201D    jb          00782024
 0078201F    call        @BoundErr
 00782024    mov         edx,dword ptr ds:[7827E0];0x1000 gvar_007827E0
 0078202A    or          dword ptr [eax+ebx*4],edx
 0078202D    lea         eax,[ebp-4]
 00782030    push        eax
 00782031    mov         ecx,ebx
 00782033    mov         edx,0E
 00782038    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078203E    call        TStringGrid.GetCells
 00782043    cmp         dword ptr [ebp-4],0
>00782047    jne         00782056
 00782049    lea         eax,[ebp-4]
 0078204C    mov         edx,7827B0;'0'
 00782051    call        @UStrLAsg
 00782056    mov         edx,edi
 00782058    mov         eax,dword ptr [ebp-4]
 0078205B    call        0041E5A0
 00782060    test        al,al
>00782062    je          0078207E
 00782064    cmp         dword ptr [edi],0
 00782067    setge       byte ptr [ebp-1A]
 0078206B    cmp         dword ptr [edi],3E7
 00782071    setle       byte ptr [ebp-1B]
 00782075    movzx       eax,byte ptr [ebp-1B]
 00782079    and         al,byte ptr [ebp-1A]
>0078207C    jmp         00782080
 0078207E    xor         eax,eax
 00782080    test        al,al
>00782082    jne         007820A0
 00782084    mov         eax,[009037B0];gvar_009037B0:?
 00782089    test        eax,eax
>0078208B    je          00782092
 0078208D    cmp         ebx,dword ptr [eax-4]
>00782090    jb          00782097
 00782092    call        @BoundErr
 00782097    mov         edx,dword ptr ds:[7827E4];0x4000 gvar_007827E4
 0078209D    or          dword ptr [eax+ebx*4],edx
 007820A0    lea         eax,[ebp-4]
 007820A3    push        eax
 007820A4    mov         ecx,ebx
 007820A6    mov         edx,0F
 007820AB    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007820B1    call        TStringGrid.GetCells
 007820B6    cmp         dword ptr [ebp-4],0
>007820BA    jne         007820C9
 007820BC    lea         eax,[ebp-4]
 007820BF    mov         edx,7827CC;'00:00'
 007820C4    call        @UStrLAsg
 007820C9    lea         edx,[ebp-0E]
 007820CC    mov         eax,dword ptr [ebp-4]
 007820CF    call        00781BC8
 007820D4    test        al,al
>007820D6    je          007820F8
 007820D8    movzx       eax,word ptr [ebp-0E]
 007820DC    test        eax,eax
 007820DE    setge       byte ptr [ebp-1C]
 007820E2    movzx       eax,word ptr [ebp-0E]
 007820E6    cmp         eax,0E0F
 007820EB    setle       byte ptr [ebp-1D]
 007820EF    movzx       eax,byte ptr [ebp-1D]
 007820F3    and         al,byte ptr [ebp-1C]
>007820F6    jmp         007820FA
 007820F8    xor         eax,eax
 007820FA    test        al,al
>007820FC    jne         0078211A
 007820FE    mov         eax,[009037B0];gvar_009037B0:?
 00782103    test        eax,eax
>00782105    je          0078210C
 00782107    cmp         ebx,dword ptr [eax-4]
>0078210A    jb          00782111
 0078210C    call        @BoundErr
 00782111    mov         edx,dword ptr ds:[7827E8];0x8000 gvar_007827E8
 00782117    or          dword ptr [eax+ebx*4],edx
 0078211A    cmp         dword ptr [edi],0
>0078211D    jne         00782142
 0078211F    cmp         word ptr [ebp-0E],0
>00782124    jbe         00782142
 00782126    mov         eax,[009037B0];gvar_009037B0:?
 0078212B    test        eax,eax
>0078212D    je          00782134
 0078212F    cmp         ebx,dword ptr [eax-4]
>00782132    jb          00782139
 00782134    call        @BoundErr
 00782139    mov         edx,dword ptr ds:[7827E8];0x8000 gvar_007827E8
 0078213F    or          dword ptr [eax+ebx*4],edx
 00782142    lea         eax,[ebp-4]
 00782145    push        eax
 00782146    mov         ecx,ebx
 00782148    mov         edx,11
 0078214D    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782153    call        TStringGrid.GetCells
 00782158    cmp         dword ptr [ebp-4],0
>0078215C    jne         0078216B
 0078215E    lea         eax,[ebp-4]
 00782161    mov         edx,7827B0;'0'
 00782166    call        @UStrLAsg
 0078216B    mov         edx,edi
 0078216D    mov         eax,dword ptr [ebp-4]
 00782170    call        0041E5A0
 00782175    test        al,al
>00782177    je          00782193
 00782179    cmp         dword ptr [edi],0
 0078217C    setge       byte ptr [ebp-1E]
 00782180    cmp         dword ptr [edi],3E7
 00782186    setle       byte ptr [ebp-1F]
 0078218A    movzx       eax,byte ptr [ebp-1F]
 0078218E    and         al,byte ptr [ebp-1E]
>00782191    jmp         00782195
 00782193    xor         eax,eax
 00782195    test        al,al
>00782197    jne         007821B5
 00782199    mov         eax,[009037B0];gvar_009037B0:?
 0078219E    test        eax,eax
>007821A0    je          007821A7
 007821A2    cmp         ebx,dword ptr [eax-4]
>007821A5    jb          007821AC
 007821A7    call        @BoundErr
 007821AC    mov         edx,dword ptr ds:[7827EC];0x20000 gvar_007827EC
 007821B2    or          dword ptr [eax+ebx*4],edx
 007821B5    lea         eax,[ebp-4]
 007821B8    push        eax
 007821B9    mov         ecx,ebx
 007821BB    mov         edx,12
 007821C0    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007821C6    call        TStringGrid.GetCells
 007821CB    cmp         dword ptr [ebp-4],0
>007821CF    jne         007821DE
 007821D1    lea         eax,[ebp-4]
 007821D4    mov         edx,7827CC;'00:00'
 007821D9    call        @UStrLAsg
 007821DE    lea         edx,[ebp-0E]
 007821E1    mov         eax,dword ptr [ebp-4]
 007821E4    call        00781BC8
 007821E9    test        al,al
>007821EB    je          0078220D
 007821ED    movzx       eax,word ptr [ebp-0E]
 007821F1    test        eax,eax
 007821F3    setge       byte ptr [ebp-20]
 007821F7    movzx       eax,word ptr [ebp-0E]
 007821FB    cmp         eax,0E0F
 00782200    setle       byte ptr [ebp-21]
 00782204    movzx       eax,byte ptr [ebp-21]
 00782208    and         al,byte ptr [ebp-20]
>0078220B    jmp         0078220F
 0078220D    xor         eax,eax
 0078220F    test        al,al
>00782211    jne         0078222F
 00782213    mov         eax,[009037B0];gvar_009037B0:?
 00782218    test        eax,eax
>0078221A    je          00782221
 0078221C    cmp         ebx,dword ptr [eax-4]
>0078221F    jb          00782226
 00782221    call        @BoundErr
 00782226    mov         edx,dword ptr ds:[7827F0];0x40000 gvar_007827F0
 0078222C    or          dword ptr [eax+ebx*4],edx
 0078222F    cmp         dword ptr [edi],0
>00782232    jne         00782257
 00782234    cmp         word ptr [ebp-0E],0
>00782239    jbe         00782257
 0078223B    mov         eax,[009037B0];gvar_009037B0:?
 00782240    test        eax,eax
>00782242    je          00782249
 00782244    cmp         ebx,dword ptr [eax-4]
>00782247    jb          0078224E
 00782249    call        @BoundErr
 0078224E    mov         edx,dword ptr ds:[7827F0];0x40000 gvar_007827F0
 00782254    or          dword ptr [eax+ebx*4],edx
 00782257    lea         eax,[ebp-4]
 0078225A    push        eax
 0078225B    mov         ecx,ebx
 0078225D    mov         edx,14
 00782262    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782268    call        TStringGrid.GetCells
 0078226D    cmp         dword ptr [ebp-4],0
>00782271    jne         00782280
 00782273    lea         eax,[ebp-4]
 00782276    mov         edx,7827B0;'0'
 0078227B    call        @UStrLAsg
 00782280    mov         edx,edi
 00782282    mov         eax,dword ptr [ebp-4]
 00782285    call        0041E5A0
 0078228A    test        al,al
>0078228C    je          007822A8
 0078228E    cmp         dword ptr [edi],0
 00782291    setge       byte ptr [ebp-22]
 00782295    cmp         dword ptr [edi],3E7
 0078229B    setle       byte ptr [ebp-23]
 0078229F    movzx       eax,byte ptr [ebp-23]
 007822A3    and         al,byte ptr [ebp-22]
>007822A6    jmp         007822AA
 007822A8    xor         eax,eax
 007822AA    test        al,al
>007822AC    jne         007822CA
 007822AE    mov         eax,[009037B0];gvar_009037B0:?
 007822B3    test        eax,eax
>007822B5    je          007822BC
 007822B7    cmp         ebx,dword ptr [eax-4]
>007822BA    jb          007822C1
 007822BC    call        @BoundErr
 007822C1    mov         edx,dword ptr ds:[7827F4];0x100000 gvar_007827F4
 007822C7    or          dword ptr [eax+ebx*4],edx
 007822CA    lea         eax,[ebp-4]
 007822CD    push        eax
 007822CE    mov         ecx,ebx
 007822D0    mov         edx,15
 007822D5    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007822DB    call        TStringGrid.GetCells
 007822E0    cmp         dword ptr [ebp-4],0
>007822E4    jne         007822F3
 007822E6    lea         eax,[ebp-4]
 007822E9    mov         edx,7827CC;'00:00'
 007822EE    call        @UStrLAsg
 007822F3    lea         edx,[ebp-0E]
 007822F6    mov         eax,dword ptr [ebp-4]
 007822F9    call        00781BC8
 007822FE    test        al,al
>00782300    je          00782322
 00782302    movzx       eax,word ptr [ebp-0E]
 00782306    test        eax,eax
 00782308    setge       byte ptr [ebp-24]
 0078230C    movzx       eax,word ptr [ebp-0E]
 00782310    cmp         eax,0E0F
 00782315    setle       byte ptr [ebp-25]
 00782319    movzx       eax,byte ptr [ebp-25]
 0078231D    and         al,byte ptr [ebp-24]
>00782320    jmp         00782324
 00782322    xor         eax,eax
 00782324    test        al,al
>00782326    jne         00782344
 00782328    mov         eax,[009037B0];gvar_009037B0:?
 0078232D    test        eax,eax
>0078232F    je          00782336
 00782331    cmp         ebx,dword ptr [eax-4]
>00782334    jb          0078233B
 00782336    call        @BoundErr
 0078233B    mov         edx,dword ptr ds:[7827F8];0x200000 gvar_007827F8
 00782341    or          dword ptr [eax+ebx*4],edx
 00782344    cmp         dword ptr [edi],0
>00782347    jne         0078236C
 00782349    cmp         word ptr [ebp-0E],0
>0078234E    jbe         0078236C
 00782350    mov         eax,[009037B0];gvar_009037B0:?
 00782355    test        eax,eax
>00782357    je          0078235E
 00782359    cmp         ebx,dword ptr [eax-4]
>0078235C    jb          00782363
 0078235E    call        @BoundErr
 00782363    mov         edx,dword ptr ds:[7827F8];0x200000 gvar_007827F8
 00782369    or          dword ptr [eax+ebx*4],edx
 0078236C    lea         eax,[ebp-4]
 0078236F    push        eax
 00782370    mov         ecx,ebx
 00782372    mov         edx,17
 00782377    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078237D    call        TStringGrid.GetCells
 00782382    cmp         dword ptr [ebp-4],0
>00782386    jne         00782395
 00782388    lea         eax,[ebp-4]
 0078238B    mov         edx,7827B0;'0'
 00782390    call        @UStrLAsg
 00782395    mov         edx,edi
 00782397    mov         eax,dword ptr [ebp-4]
 0078239A    call        0041E5A0
 0078239F    test        al,al
>007823A1    je          007823BD
 007823A3    cmp         dword ptr [edi],0
 007823A6    setge       byte ptr [ebp-26]
 007823AA    cmp         dword ptr [edi],3E7
 007823B0    setle       byte ptr [ebp-27]
 007823B4    movzx       eax,byte ptr [ebp-27]
 007823B8    and         al,byte ptr [ebp-26]
>007823BB    jmp         007823BF
 007823BD    xor         eax,eax
 007823BF    test        al,al
>007823C1    jne         007823DF
 007823C3    mov         eax,[009037B0];gvar_009037B0:?
 007823C8    test        eax,eax
>007823CA    je          007823D1
 007823CC    cmp         ebx,dword ptr [eax-4]
>007823CF    jb          007823D6
 007823D1    call        @BoundErr
 007823D6    mov         edx,dword ptr ds:[7827FC];^gvar_00800000
 007823DC    or          dword ptr [eax+ebx*4],edx
 007823DF    lea         eax,[ebp-4]
 007823E2    push        eax
 007823E3    mov         ecx,ebx
 007823E5    mov         edx,18
 007823EA    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007823F0    call        TStringGrid.GetCells
 007823F5    cmp         dword ptr [ebp-4],0
>007823F9    jne         00782408
 007823FB    lea         eax,[ebp-4]
 007823FE    mov         edx,7827CC;'00:00'
 00782403    call        @UStrLAsg
 00782408    lea         edx,[ebp-0E]
 0078240B    mov         eax,dword ptr [ebp-4]
 0078240E    call        00781BC8
 00782413    test        al,al
>00782415    je          00782437
 00782417    movzx       eax,word ptr [ebp-0E]
 0078241B    test        eax,eax
 0078241D    setge       byte ptr [ebp-28]
 00782421    movzx       eax,word ptr [ebp-0E]
 00782425    cmp         eax,0E0F
 0078242A    setle       byte ptr [ebp-29]
 0078242E    movzx       eax,byte ptr [ebp-29]
 00782432    and         al,byte ptr [ebp-28]
>00782435    jmp         00782439
 00782437    xor         eax,eax
 00782439    test        al,al
>0078243B    jne         00782459
 0078243D    mov         eax,[009037B0];gvar_009037B0:?
 00782442    test        eax,eax
>00782444    je          0078244B
 00782446    cmp         ebx,dword ptr [eax-4]
>00782449    jb          00782450
 0078244B    call        @BoundErr
 00782450    mov         edx,dword ptr ds:[782800];0x1000000 gvar_00782800
 00782456    or          dword ptr [eax+ebx*4],edx
 00782459    cmp         dword ptr [edi],0
>0078245C    jne         00782481
 0078245E    cmp         word ptr [ebp-0E],0
>00782463    jbe         00782481
 00782465    mov         eax,[009037B0];gvar_009037B0:?
 0078246A    test        eax,eax
>0078246C    je          00782473
 0078246E    cmp         ebx,dword ptr [eax-4]
>00782471    jb          00782478
 00782473    call        @BoundErr
 00782478    mov         edx,dword ptr ds:[782800];0x1000000 gvar_00782800
 0078247E    or          dword ptr [eax+ebx*4],edx
 00782481    lea         eax,[ebp-4]
 00782484    push        eax
 00782485    mov         ecx,ebx
 00782487    mov         edx,1A
 0078248C    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782492    call        TStringGrid.GetCells
 00782497    cmp         dword ptr [ebp-4],0
>0078249B    jne         007824AA
 0078249D    lea         eax,[ebp-4]
 007824A0    mov         edx,7827B0;'0'
 007824A5    call        @UStrLAsg
 007824AA    mov         edx,edi
 007824AC    mov         eax,dword ptr [ebp-4]
 007824AF    call        0041E5A0
 007824B4    test        al,al
>007824B6    je          007824D2
 007824B8    cmp         dword ptr [edi],0
 007824BB    setge       byte ptr [ebp-2A]
 007824BF    cmp         dword ptr [edi],3E7
 007824C5    setle       byte ptr [ebp-2B]
 007824C9    movzx       eax,byte ptr [ebp-2B]
 007824CD    and         al,byte ptr [ebp-2A]
>007824D0    jmp         007824D4
 007824D2    xor         eax,eax
 007824D4    test        al,al
>007824D6    jne         007824F4
 007824D8    mov         eax,[009037B0];gvar_009037B0:?
 007824DD    test        eax,eax
>007824DF    je          007824E6
 007824E1    cmp         ebx,dword ptr [eax-4]
>007824E4    jb          007824EB
 007824E6    call        @BoundErr
 007824EB    mov         edx,dword ptr ds:[782804];0x4000000 gvar_00782804
 007824F1    or          dword ptr [eax+ebx*4],edx
 007824F4    lea         eax,[ebp-4]
 007824F7    push        eax
 007824F8    mov         ecx,ebx
 007824FA    mov         edx,1B
 007824FF    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782505    call        TStringGrid.GetCells
 0078250A    cmp         dword ptr [ebp-4],0
>0078250E    jne         0078251D
 00782510    lea         eax,[ebp-4]
 00782513    mov         edx,7827CC;'00:00'
 00782518    call        @UStrLAsg
 0078251D    lea         edx,[ebp-0E]
 00782520    mov         eax,dword ptr [ebp-4]
 00782523    call        00781BC8
 00782528    test        al,al
>0078252A    je          0078254C
 0078252C    movzx       eax,word ptr [ebp-0E]
 00782530    test        eax,eax
 00782532    setge       byte ptr [ebp-2C]
 00782536    movzx       eax,word ptr [ebp-0E]
 0078253A    cmp         eax,0E0F
 0078253F    setle       byte ptr [ebp-2D]
 00782543    movzx       eax,byte ptr [ebp-2D]
 00782547    and         al,byte ptr [ebp-2C]
>0078254A    jmp         0078254E
 0078254C    xor         eax,eax
 0078254E    test        al,al
>00782550    jne         0078256E
 00782552    mov         eax,[009037B0];gvar_009037B0:?
 00782557    test        eax,eax
>00782559    je          00782560
 0078255B    cmp         ebx,dword ptr [eax-4]
>0078255E    jb          00782565
 00782560    call        @BoundErr
 00782565    mov         edx,dword ptr ds:[782808];0x8000000 gvar_00782808
 0078256B    or          dword ptr [eax+ebx*4],edx
 0078256E    cmp         dword ptr [edi],0
>00782571    jne         00782596
 00782573    cmp         word ptr [ebp-0E],0
>00782578    jbe         00782596
 0078257A    mov         eax,[009037B0];gvar_009037B0:?
 0078257F    test        eax,eax
>00782581    je          00782588
 00782583    cmp         ebx,dword ptr [eax-4]
>00782586    jb          0078258D
 00782588    call        @BoundErr
 0078258D    mov         edx,dword ptr ds:[782808];0x8000000 gvar_00782808
 00782593    or          dword ptr [eax+ebx*4],edx
 00782596    mov         eax,[009037B0];gvar_009037B0:?
 0078259B    test        eax,eax
>0078259D    je          007825A4
 0078259F    cmp         ebx,dword ptr [eax-4]
>007825A2    jb          007825A9
 007825A4    call        @BoundErr
 007825A9    mov         edx,dword ptr ds:[78280C];0x0 gvar_0078280C
 007825AF    cmp         edx,dword ptr [eax+ebx*4]
>007825B2    je          007825C2
 007825B4    add         dword ptr ds:[9037B4],1;gvar_009037B4
>007825BB    jno         007825C2
 007825BD    call        @IntOver
 007825C2    inc         ebx
 007825C3    dec         dword ptr [ebp-14]
>007825C6    jne         00781D36
 007825CC    mov         eax,[009037B4];gvar_009037B4
 007825D1    mov         dword ptr [ebp-8],eax
 007825D4    cmp         dword ptr [ebp-8],0
>007825D8    je          00782761
 007825DE    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 007825E3    mov         eax,dword ptr [eax]
 007825E5    mov         eax,dword ptr [eax+3C0]
 007825EB    mov         eax,dword ptr [eax+2C8]
 007825F1    mov         edx,dword ptr ds:[7C40E4];^'Errors in input table'
 007825F7    mov         ecx,dword ptr [eax]
 007825F9    call        dword ptr [ecx+3C]
 007825FC    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782602    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 00782608    sub         eax,1
>0078260B    jno         00782612
 0078260D    call        @IntOver
 00782612    test        eax,eax
>00782614    jle         00782747
 0078261A    mov         dword ptr [ebp-14],eax
 0078261D    mov         ebx,1
 00782622    mov         eax,[009037B0];gvar_009037B0:?
 00782627    test        eax,eax
>00782629    je          00782630
 0078262B    cmp         ebx,dword ptr [eax-4]
>0078262E    jb          00782635
 00782630    call        @BoundErr
 00782635    mov         edx,dword ptr ds:[78280C];0x0 gvar_0078280C
 0078263B    cmp         edx,dword ptr [eax+ebx*4]
>0078263E    je          0078273D
 00782644    lea         eax,[ebp-4]
 00782647    call        @UStrClr
 0078264C    mov         edi,5
 00782651    mov         eax,[009037B0];gvar_009037B0:?
 00782656    test        eax,eax
>00782658    je          0078265F
 0078265A    cmp         ebx,dword ptr [eax-4]
>0078265D    jb          00782664
 0078265F    call        @BoundErr
 00782664    mov         edx,edi
 00782666    cmp         edx,1F
>00782669    ja          0078266F
 0078266B    bt          dword ptr [eax+ebx*4],edx
>0078266F    jae         0078269C
 00782671    push        dword ptr [ebp-4]
 00782674    lea         eax,[ebp-34]
 00782677    push        eax
 00782678    xor         ecx,ecx
 0078267A    mov         edx,edi
 0078267C    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782682    call        TStringGrid.GetCells
 00782687    push        dword ptr [ebp-34]
 0078268A    push        78281C;', '
 0078268F    lea         eax,[ebp-4]
 00782692    mov         edx,3
 00782697    call        @UStrCatN
 0078269C    inc         edi
 0078269D    cmp         edi,1D
>007826A0    jne         00782651
 007826A2    lea         eax,[ebp-38]
 007826A5    push        eax
 007826A6    lea         eax,[ebp-5C]
 007826A9    push        eax
 007826AA    mov         ecx,ebx
 007826AC    mov         edx,1
 007826B1    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007826B7    call        TStringGrid.GetCells
 007826BC    mov         eax,dword ptr [ebp-5C]
 007826BF    mov         dword ptr [ebp-58],eax
 007826C2    mov         byte ptr [ebp-54],11
 007826C6    lea         eax,[ebp-60]
 007826C9    push        eax
 007826CA    mov         ecx,ebx
 007826CC    mov         edx,2
 007826D1    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007826D7    call        TStringGrid.GetCells
 007826DC    mov         eax,dword ptr [ebp-60]
 007826DF    mov         dword ptr [ebp-50],eax
 007826E2    mov         byte ptr [ebp-4C],11
 007826E6    lea         eax,[ebp-64]
 007826E9    push        eax
 007826EA    mov         ecx,ebx
 007826EC    mov         edx,3
 007826F1    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007826F7    call        TStringGrid.GetCells
 007826FC    mov         eax,dword ptr [ebp-64]
 007826FF    mov         dword ptr [ebp-48],eax
 00782702    mov         byte ptr [ebp-44],11
 00782706    mov         eax,dword ptr [ebp-4]
 00782709    mov         dword ptr [ebp-40],eax
 0078270C    mov         byte ptr [ebp-3C],11
 00782710    lea         edx,[ebp-58]
 00782713    mov         ecx,3
 00782718    mov         eax,782830;'%6.2s, %6.3s, %6.5s: %s'
 0078271D    call        Format
 00782722    mov         edx,dword ptr [ebp-38]
 00782725    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 0078272A    mov         eax,dword ptr [eax]
 0078272C    mov         eax,dword ptr [eax+3C0]
 00782732    mov         eax,dword ptr [eax+2C8]
 00782738    mov         ecx,dword ptr [eax]
 0078273A    call        dword ptr [ecx+3C]
 0078273D    inc         ebx
 0078273E    dec         dword ptr [ebp-14]
>00782741    jne         00782622
 00782747    mov         eax,dword ptr [esi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078274D    mov         edx,dword ptr [eax]
 0078274F    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00782755    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 0078275A    mov         eax,dword ptr [eax]
 0078275C    call        TCustomForm.Show
 00782761    xor         eax,eax
 00782763    pop         edx
 00782764    pop         ecx
 00782765    pop         ecx
 00782766    mov         dword ptr fs:[eax],edx
 00782769    push        782798
 0078276E    lea         eax,[ebp-64]
 00782771    mov         edx,3
 00782776    call        @UStrArrayClr
 0078277B    lea         eax,[ebp-38]
 0078277E    mov         edx,2
 00782783    call        @UStrArrayClr
 00782788    lea         eax,[ebp-4]
 0078278B    call        @UStrClr
 00782790    ret
>00782791    jmp         @HandleFinally
>00782796    jmp         0078276E
 00782798    mov         eax,dword ptr [ebp-8]
 0078279B    pop         edi
 0078279C    pop         esi
 0078279D    pop         ebx
 0078279E    mov         esp,ebp
 007827A0    pop         ebp
 007827A1    ret
end;*}

//00782860
{*function sub_00782860(?:?):?;
begin
 00782860    push        ebp
 00782861    mov         ebp,esp
 00782863    push        0
 00782865    push        0
 00782867    push        0
 00782869    push        ebx
 0078286A    mov         dword ptr [ebp-4],eax
 0078286D    mov         eax,dword ptr [ebp-4]
 00782870    call        @UStrAddRef
 00782875    xor         eax,eax
 00782877    push        ebp
 00782878    push        782923
 0078287D    push        dword ptr fs:[eax]
 00782880    mov         dword ptr fs:[eax],esp
 00782883    lea         eax,[ebp-8]
 00782886    push        eax
 00782887    mov         ecx,2
 0078288C    mov         edx,1
 00782891    mov         eax,dword ptr [ebp-4]
 00782894    call        @UStrCopy
 00782899    mov         eax,dword ptr [ebp-8]
 0078289C    call        StrToInt
 007828A1    mov         ebx,eax
 007828A3    cmp         ebx,0FFFF
>007828A9    jbe         007828B0
 007828AB    call        @BoundErr
 007828B0    lea         eax,[ebp-0C]
 007828B3    push        eax
 007828B4    mov         ecx,2
 007828B9    mov         edx,4
 007828BE    mov         eax,dword ptr [ebp-4]
 007828C1    call        @UStrCopy
 007828C6    mov         eax,dword ptr [ebp-0C]
 007828C9    call        StrToInt
 007828CE    mov         ecx,eax
 007828D0    cmp         ecx,0FFFF
>007828D6    jbe         007828DD
 007828D8    call        @BoundErr
 007828DD    movzx       eax,bx
 007828E0    mov         edx,3C
 007828E5    mul         eax,edx
>007828E7    jno         007828EE
 007828E9    call        @IntOver
 007828EE    movzx       edx,cx
 007828F1    add         eax,edx
>007828F3    jno         007828FA
 007828F5    call        @IntOver
 007828FA    cmp         eax,0FFFF
>007828FF    jbe         00782906
 00782901    call        @BoundErr
 00782906    mov         ebx,eax
 00782908    xor         eax,eax
 0078290A    pop         edx
 0078290B    pop         ecx
 0078290C    pop         ecx
 0078290D    mov         dword ptr fs:[eax],edx
 00782910    push        78292A
 00782915    lea         eax,[ebp-0C]
 00782918    mov         edx,3
 0078291D    call        @UStrArrayClr
 00782922    ret
>00782923    jmp         @HandleFinally
>00782928    jmp         00782915
 0078292A    mov         eax,ebx
 0078292C    pop         ebx
 0078292D    mov         esp,ebp
 0078292F    pop         ebp
 00782930    ret
end;*}

//00782934
procedure TDCGroupsFrm.SaveIGridToTemp;
begin
{*
 00782934    push        ebp
 00782935    mov         ebp,esp
 00782937    mov         ecx,9
 0078293C    push        0
 0078293E    push        0
 00782940    dec         ecx
>00782941    jne         0078293C
 00782943    push        ebx
 00782944    push        esi
 00782945    push        edi
 00782946    mov         edi,eax
 00782948    xor         eax,eax
 0078294A    push        ebp
 0078294B    push        782D35
 00782950    push        dword ptr fs:[eax]
 00782953    mov         dword ptr fs:[eax],esp
 00782956    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 0078295C    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 00782962    sub         eax,1
>00782965    jno         0078296C
 00782967    call        @IntOver
 0078296C    test        eax,eax
>0078296E    jle         00782D1A
 00782974    mov         dword ptr [ebp-4],eax
 00782977    mov         esi,1
 0078297C    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782982    mov         ecx,esi
 00782984    xor         edx,edx
 00782986    call        TStringGrid.GetObjects
 0078298B    test        eax,eax
>0078298D    je          00782D10
 00782993    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782999    mov         ecx,esi
 0078299B    xor         edx,edx
 0078299D    call        TStringGrid.GetObjects
 007829A2    mov         ebx,eax
 007829A4    lea         eax,[ebp-8]
 007829A7    push        eax
 007829A8    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007829AE    mov         ecx,esi
 007829B0    mov         edx,5
 007829B5    call        TStringGrid.GetCells
 007829BA    mov         eax,dword ptr [ebp-8]
 007829BD    call        StrToInt
 007829C2    cmp         eax,0FFFF
>007829C7    jbe         007829CE
 007829C9    call        @BoundErr
 007829CE    mov         word ptr [ebx+52],ax
 007829D2    lea         eax,[ebp-0C]
 007829D5    push        eax
 007829D6    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 007829DC    mov         ecx,esi
 007829DE    mov         edx,6
 007829E3    call        TStringGrid.GetCells
 007829E8    mov         eax,dword ptr [ebp-0C]
 007829EB    call        StrToInt
 007829F0    cmp         eax,0FFFF
>007829F5    jbe         007829FC
 007829F7    call        @BoundErr
 007829FC    mov         word ptr [ebx+54],ax
 00782A00    lea         eax,[ebp-10]
 00782A03    push        eax
 00782A04    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782A0A    mov         ecx,esi
 00782A0C    mov         edx,7
 00782A11    call        TStringGrid.GetCells
 00782A16    mov         eax,dword ptr [ebp-10]
 00782A19    call        StrToInt
 00782A1E    cmp         eax,0FFFF
>00782A23    jbe         00782A2A
 00782A25    call        @BoundErr
 00782A2A    mov         word ptr [ebx+11E],ax
 00782A31    lea         eax,[ebp-14]
 00782A34    push        eax
 00782A35    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782A3B    mov         ecx,esi
 00782A3D    mov         edx,8
 00782A42    call        TStringGrid.GetCells
 00782A47    mov         eax,dword ptr [ebp-14]
 00782A4A    call        StrToInt
 00782A4F    cmp         eax,0FFFF
>00782A54    jbe         00782A5B
 00782A56    call        @BoundErr
 00782A5B    mov         word ptr [ebx+0F4],ax
 00782A62    lea         eax,[ebp-18]
 00782A65    push        eax
 00782A66    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782A6C    mov         ecx,esi
 00782A6E    mov         edx,9
 00782A73    call        TStringGrid.GetCells
 00782A78    mov         eax,dword ptr [ebp-18]
 00782A7B    call        00782860
 00782A80    mov         word ptr [ebx+0F6],ax
 00782A87    cmp         word ptr [ebx+0F4],0
>00782A8F    jbe         00782A9A
 00782A91    mov         word ptr [ebx+0F8],1
 00782A9A    lea         eax,[ebp-1C]
 00782A9D    push        eax
 00782A9E    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782AA4    mov         ecx,esi
 00782AA6    mov         edx,0B
 00782AAB    call        TStringGrid.GetCells
 00782AB0    mov         eax,dword ptr [ebp-1C]
 00782AB3    call        StrToInt
 00782AB8    cmp         eax,0FFFF
>00782ABD    jbe         00782AC4
 00782ABF    call        @BoundErr
 00782AC4    mov         word ptr [ebx+0FA],ax
 00782ACB    lea         eax,[ebp-20]
 00782ACE    push        eax
 00782ACF    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782AD5    mov         ecx,esi
 00782AD7    mov         edx,0C
 00782ADC    call        TStringGrid.GetCells
 00782AE1    mov         eax,dword ptr [ebp-20]
 00782AE4    call        00782860
 00782AE9    mov         word ptr [ebx+0FC],ax
 00782AF0    cmp         word ptr [ebx+0FA],0
>00782AF8    jbe         00782B03
 00782AFA    mov         word ptr [ebx+0FE],1
 00782B03    lea         eax,[ebp-24]
 00782B06    push        eax
 00782B07    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782B0D    mov         ecx,esi
 00782B0F    mov         edx,0E
 00782B14    call        TStringGrid.GetCells
 00782B19    mov         eax,dword ptr [ebp-24]
 00782B1C    call        StrToInt
 00782B21    cmp         eax,0FFFF
>00782B26    jbe         00782B2D
 00782B28    call        @BoundErr
 00782B2D    mov         word ptr [ebx+100],ax
 00782B34    lea         eax,[ebp-28]
 00782B37    push        eax
 00782B38    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782B3E    mov         ecx,esi
 00782B40    mov         edx,0F
 00782B45    call        TStringGrid.GetCells
 00782B4A    mov         eax,dword ptr [ebp-28]
 00782B4D    call        00782860
 00782B52    mov         word ptr [ebx+102],ax
 00782B59    cmp         word ptr [ebx+100],0
>00782B61    jbe         00782B6C
 00782B63    mov         word ptr [ebx+104],1
 00782B6C    lea         eax,[ebp-2C]
 00782B6F    push        eax
 00782B70    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782B76    mov         ecx,esi
 00782B78    mov         edx,11
 00782B7D    call        TStringGrid.GetCells
 00782B82    mov         eax,dword ptr [ebp-2C]
 00782B85    call        StrToInt
 00782B8A    cmp         eax,0FFFF
>00782B8F    jbe         00782B96
 00782B91    call        @BoundErr
 00782B96    mov         word ptr [ebx+106],ax
 00782B9D    lea         eax,[ebp-30]
 00782BA0    push        eax
 00782BA1    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782BA7    mov         ecx,esi
 00782BA9    mov         edx,12
 00782BAE    call        TStringGrid.GetCells
 00782BB3    mov         eax,dword ptr [ebp-30]
 00782BB6    call        00782860
 00782BBB    mov         word ptr [ebx+108],ax
 00782BC2    cmp         word ptr [ebx+106],0
>00782BCA    jbe         00782BD5
 00782BCC    mov         word ptr [ebx+10A],1
 00782BD5    lea         eax,[ebp-34]
 00782BD8    push        eax
 00782BD9    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782BDF    mov         ecx,esi
 00782BE1    mov         edx,14
 00782BE6    call        TStringGrid.GetCells
 00782BEB    mov         eax,dword ptr [ebp-34]
 00782BEE    call        StrToInt
 00782BF3    cmp         eax,0FFFF
>00782BF8    jbe         00782BFF
 00782BFA    call        @BoundErr
 00782BFF    mov         word ptr [ebx+10C],ax
 00782C06    lea         eax,[ebp-38]
 00782C09    push        eax
 00782C0A    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782C10    mov         ecx,esi
 00782C12    mov         edx,15
 00782C17    call        TStringGrid.GetCells
 00782C1C    mov         eax,dword ptr [ebp-38]
 00782C1F    call        00782860
 00782C24    mov         word ptr [ebx+10E],ax
 00782C2B    cmp         word ptr [ebx+10C],0
>00782C33    jbe         00782C3E
 00782C35    mov         word ptr [ebx+110],1
 00782C3E    lea         eax,[ebp-3C]
 00782C41    push        eax
 00782C42    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782C48    mov         ecx,esi
 00782C4A    mov         edx,17
 00782C4F    call        TStringGrid.GetCells
 00782C54    mov         eax,dword ptr [ebp-3C]
 00782C57    call        StrToInt
 00782C5C    cmp         eax,0FFFF
>00782C61    jbe         00782C68
 00782C63    call        @BoundErr
 00782C68    mov         word ptr [ebx+112],ax
 00782C6F    lea         eax,[ebp-40]
 00782C72    push        eax
 00782C73    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782C79    mov         ecx,esi
 00782C7B    mov         edx,18
 00782C80    call        TStringGrid.GetCells
 00782C85    mov         eax,dword ptr [ebp-40]
 00782C88    call        00782860
 00782C8D    mov         word ptr [ebx+114],ax
 00782C94    cmp         word ptr [ebx+112],0
>00782C9C    jbe         00782CA7
 00782C9E    mov         word ptr [ebx+116],1
 00782CA7    lea         eax,[ebp-44]
 00782CAA    push        eax
 00782CAB    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782CB1    mov         ecx,esi
 00782CB3    mov         edx,1A
 00782CB8    call        TStringGrid.GetCells
 00782CBD    mov         eax,dword ptr [ebp-44]
 00782CC0    call        StrToInt
 00782CC5    cmp         eax,0FFFF
>00782CCA    jbe         00782CD1
 00782CCC    call        @BoundErr
 00782CD1    mov         word ptr [ebx+118],ax
 00782CD8    lea         eax,[ebp-48]
 00782CDB    push        eax
 00782CDC    mov         eax,dword ptr [edi+3D8];TDCGroupsFrm.IGrid:TStringGrid
 00782CE2    mov         ecx,esi
 00782CE4    mov         edx,1B
 00782CE9    call        TStringGrid.GetCells
 00782CEE    mov         eax,dword ptr [ebp-48]
 00782CF1    call        00782860
 00782CF6    mov         word ptr [ebx+11A],ax
 00782CFD    cmp         word ptr [ebx+118],0
>00782D05    jbe         00782D10
 00782D07    mov         word ptr [ebx+11C],1
 00782D10    inc         esi
 00782D11    dec         dword ptr [ebp-4]
>00782D14    jne         0078297C
 00782D1A    xor         eax,eax
 00782D1C    pop         edx
 00782D1D    pop         ecx
 00782D1E    pop         ecx
 00782D1F    mov         dword ptr fs:[eax],edx
 00782D22    push        782D3C
 00782D27    lea         eax,[ebp-48]
 00782D2A    mov         edx,11
 00782D2F    call        @UStrArrayClr
 00782D34    ret
>00782D35    jmp         @HandleFinally
>00782D3A    jmp         00782D27
 00782D3C    pop         edi
 00782D3D    pop         esi
 00782D3E    pop         ebx
 00782D3F    mov         esp,ebp
 00782D41    pop         ebp
 00782D42    ret
*}
end;

//00782D44
procedure TDCGroupsFrm.UpdateOTree;
begin
{*
 00782D44    push        ebp
 00782D45    mov         ebp,esp
 00782D47    add         esp,0FFFFFFCC
 00782D4A    push        ebx
 00782D4B    push        esi
 00782D4C    push        edi
 00782D4D    mov         dword ptr [ebp-4],eax
 00782D50    mov         eax,dword ptr [ebp-4]
 00782D53    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782D59    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782D5F    call        TTreeNodes.BeginUpdate
 00782D64    xor         eax,eax
 00782D66    push        ebp
 00782D67    push        782FF5
 00782D6C    push        dword ptr fs:[eax]
 00782D6F    mov         dword ptr fs:[eax],esp
 00782D72    mov         eax,dword ptr [ebp-4]
 00782D75    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782D7B    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782D81    call        TTreeNodes.Clear
 00782D86    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 00782D8B    mov         eax,dword ptr [eax]
 00782D8D    push        eax
 00782D8E    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00782D93    mov         eax,dword ptr [eax]
 00782D95    mov         ecx,dword ptr [eax+4]
 00782D98    mov         eax,dword ptr [ebp-4]
 00782D9B    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782DA1    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782DA7    xor         edx,edx
 00782DA9    call        TTreeNodes.AddObject
 00782DAE    mov         dword ptr [ebp-14],eax
 00782DB1    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 00782DB6    mov         eax,dword ptr [eax]
 00782DB8    mov         eax,dword ptr [eax+0C]
 00782DBB    mov         eax,dword ptr [eax+8]
 00782DBE    sub         eax,1
>00782DC1    jno         00782DC8
 00782DC3    call        @IntOver
 00782DC8    test        eax,eax
>00782DCA    jl          00782FC9
 00782DD0    inc         eax
 00782DD1    mov         dword ptr [ebp-30],eax
 00782DD4    mov         dword ptr [ebp-8],0
 00782DDB    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 00782DE0    mov         eax,dword ptr [eax]
 00782DE2    mov         ebx,dword ptr [eax+0C]
 00782DE5    lea         eax,[ebx+8]
 00782DE8    mov         edx,dword ptr [ebp-8]
 00782DEB    call        00434534
 00782DF0    mov         eax,dword ptr [ebx+20]
 00782DF3    mov         edx,dword ptr [ebp-8]
 00782DF6    mov         eax,dword ptr [eax+edx*4]
 00782DF9    mov         dword ptr [ebp-24],eax
 00782DFC    mov         eax,dword ptr [ebp-24]
 00782DFF    push        eax
 00782E00    mov         eax,dword ptr [ebp-24]
 00782E03    mov         ecx,dword ptr [eax+24]
 00782E06    mov         eax,dword ptr [ebp-4]
 00782E09    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782E0F    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782E15    mov         edx,dword ptr [ebp-14]
 00782E18    call        TTreeNodes.AddChildObject
 00782E1D    mov         dword ptr [ebp-18],eax
 00782E20    mov         eax,dword ptr [ebp-24]
 00782E23    mov         eax,dword ptr [eax+1C]
 00782E26    mov         eax,dword ptr [eax+8]
 00782E29    sub         eax,1
>00782E2C    jno         00782E33
 00782E2E    call        @IntOver
 00782E33    test        eax,eax
>00782E35    jl          00782EF0
 00782E3B    inc         eax
 00782E3C    mov         dword ptr [ebp-34],eax
 00782E3F    mov         dword ptr [ebp-0C],0
 00782E46    mov         eax,dword ptr [ebp-24]
 00782E49    mov         ebx,dword ptr [eax+1C]
 00782E4C    lea         eax,[ebx+8]
 00782E4F    mov         edx,dword ptr [ebp-0C]
 00782E52    call        00434534
 00782E57    mov         eax,dword ptr [ebx+20]
 00782E5A    mov         edx,dword ptr [ebp-0C]
 00782E5D    mov         eax,dword ptr [eax+edx*4]
 00782E60    mov         dword ptr [ebp-28],eax
 00782E63    mov         eax,dword ptr [ebp-28]
 00782E66    push        eax
 00782E67    mov         eax,dword ptr [ebp-28]
 00782E6A    mov         ecx,dword ptr [eax+20]
 00782E6D    mov         eax,dword ptr [ebp-4]
 00782E70    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782E76    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782E7C    mov         edx,dword ptr [ebp-18]
 00782E7F    call        TTreeNodes.AddChildObject
 00782E84    mov         dword ptr [ebp-1C],eax
 00782E87    mov         eax,dword ptr [ebp-28]
 00782E8A    mov         eax,dword ptr [eax+1C]
 00782E8D    mov         ebx,dword ptr [eax+8]
 00782E90    sub         ebx,1
>00782E93    jno         00782E9A
 00782E95    call        @IntOver
 00782E9A    test        ebx,ebx
>00782E9C    jl          00782EE4
 00782E9E    inc         ebx
 00782E9F    xor         edi,edi
 00782EA1    mov         eax,dword ptr [ebp-28]
 00782EA4    mov         esi,dword ptr [eax+1C]
 00782EA7    lea         eax,[esi+8]
 00782EAA    mov         edx,edi
 00782EAC    call        00434534
 00782EB1    mov         eax,dword ptr [esi+20]
 00782EB4    mov         esi,dword ptr [eax+edi*4]
 00782EB7    mov         eax,esi
 00782EB9    mov         edx,dword ptr [eax]
 00782EBB    call        dword ptr [edx+34]
 00782EBE    test        al,2
>00782EC0    je          00782EE0
 00782EC2    push        esi
 00782EC3    mov         ecx,dword ptr [esi+0AC]
 00782EC9    mov         eax,dword ptr [ebp-4]
 00782ECC    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782ED2    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782ED8    mov         edx,dword ptr [ebp-1C]
 00782EDB    call        TTreeNodes.AddChildObject
 00782EE0    inc         edi
 00782EE1    dec         ebx
>00782EE2    jne         00782EA1
 00782EE4    inc         dword ptr [ebp-0C]
 00782EE7    dec         dword ptr [ebp-34]
>00782EEA    jne         00782E46
 00782EF0    mov         eax,dword ptr [ebp-24]
 00782EF3    mov         eax,dword ptr [eax+20]
 00782EF6    mov         eax,dword ptr [eax+8]
 00782EF9    sub         eax,1
>00782EFC    jno         00782F03
 00782EFE    call        @IntOver
 00782F03    test        eax,eax
>00782F05    jl          00782FBD
 00782F0B    inc         eax
 00782F0C    mov         dword ptr [ebp-34],eax
 00782F0F    mov         dword ptr [ebp-10],0
 00782F16    mov         eax,dword ptr [ebp-24]
 00782F19    mov         ebx,dword ptr [eax+20]
 00782F1C    lea         eax,[ebx+8]
 00782F1F    mov         edx,dword ptr [ebp-10]
 00782F22    call        00434534
 00782F27    mov         eax,dword ptr [ebx+20]
 00782F2A    mov         edx,dword ptr [ebp-10]
 00782F2D    mov         eax,dword ptr [eax+edx*4]
 00782F30    mov         dword ptr [ebp-2C],eax
 00782F33    mov         eax,dword ptr [ebp-2C]
 00782F36    push        eax
 00782F37    mov         eax,dword ptr [ebp-2C]
 00782F3A    mov         ecx,dword ptr [eax+10]
 00782F3D    mov         eax,dword ptr [ebp-4]
 00782F40    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782F46    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782F4C    mov         edx,dword ptr [ebp-18]
 00782F4F    call        TTreeNodes.AddChildObject
 00782F54    mov         dword ptr [ebp-20],eax
 00782F57    mov         eax,dword ptr [ebp-2C]
 00782F5A    mov         eax,dword ptr [eax+1C]
 00782F5D    mov         ebx,dword ptr [eax+8]
 00782F60    sub         ebx,1
>00782F63    jno         00782F6A
 00782F65    call        @IntOver
 00782F6A    test        ebx,ebx
>00782F6C    jl          00782FB1
 00782F6E    inc         ebx
 00782F6F    xor         edi,edi
 00782F71    mov         eax,dword ptr [ebp-2C]
 00782F74    mov         esi,dword ptr [eax+1C]
 00782F77    lea         eax,[esi+8]
 00782F7A    mov         edx,edi
 00782F7C    call        00434534
 00782F81    mov         eax,dword ptr [esi+20]
 00782F84    mov         esi,dword ptr [eax+edi*4]
 00782F87    mov         eax,esi
 00782F89    mov         edx,dword ptr [eax]
 00782F8B    call        dword ptr [edx+34]
 00782F8E    test        al,2
>00782F90    je          00782FAD
 00782F92    push        esi
 00782F93    mov         ecx,dword ptr [esi+2C]
 00782F96    mov         eax,dword ptr [ebp-4]
 00782F99    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782F9F    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782FA5    mov         edx,dword ptr [ebp-20]
 00782FA8    call        TTreeNodes.AddChildObject
 00782FAD    inc         edi
 00782FAE    dec         ebx
>00782FAF    jne         00782F71
 00782FB1    inc         dword ptr [ebp-10]
 00782FB4    dec         dword ptr [ebp-34]
>00782FB7    jne         00782F16
 00782FBD    inc         dword ptr [ebp-8]
 00782FC0    dec         dword ptr [ebp-30]
>00782FC3    jne         00782DDB
 00782FC9    xor         edx,edx
 00782FCB    mov         eax,dword ptr [ebp-14]
 00782FCE    call        TTreeNode.Expand
 00782FD3    xor         eax,eax
 00782FD5    pop         edx
 00782FD6    pop         ecx
 00782FD7    pop         ecx
 00782FD8    mov         dword ptr fs:[eax],edx
 00782FDB    push        782FFC
 00782FE0    mov         eax,dword ptr [ebp-4]
 00782FE3    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00782FE9    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00782FEF    call        TTreeNodes.EndUpdate
 00782FF4    ret
>00782FF5    jmp         @HandleFinally
>00782FFA    jmp         00782FE0
 00782FFC    mov         eax,dword ptr [ebp-4]
 00782FFF    mov         eax,dword ptr [eax+414];TDCGroupsFrm.OTree:TTreeView
 00783005    mov         edx,dword ptr [eax]
 00783007    call        dword ptr [edx+104];TWinControl.SetFocus
 0078300D    pop         edi
 0078300E    pop         esi
 0078300F    pop         ebx
 00783010    mov         esp,ebp
 00783012    pop         ebp
 00783013    ret
*}
end;

//00783014
procedure TDCGroupsFrm.OTreeChanging(Sender:TObject; Node:TTreeNode; var AllowChange:Boolean);
begin
{*
 00783014    push        ebp
 00783015    mov         ebp,esp
 00783017    add         esp,0FFFFFFF8
 0078301A    push        ebx
 0078301B    push        esi
 0078301C    push        edi
 0078301D    mov         edi,eax
 0078301F    mov         eax,dword ptr [ebp+8]
 00783022    mov         byte ptr [eax],0
 00783025    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 0078302A    mov         eax,dword ptr [eax]
 0078302C    mov         eax,dword ptr [eax+3C0]
 00783032    mov         edx,dword ptr [eax]
 00783034    call        dword ptr [edx+124]
 0078303A    mov         eax,edi
 0078303C    call        00783E1C
 00783041    test        eax,eax
>00783043    je          0078305A
 00783045    mov         esi,dword ptr [edi+420];TDCGroupsFrm.OGrid:TStringGrid
 0078304B    mov         eax,esi
 0078304D    mov         edx,dword ptr [eax]
 0078304F    call        dword ptr [edx+0A8];TWinControl.Invalidate
>00783055    jmp         007830EA
 0078305A    mov         eax,edi
 0078305C    call        TDCGroupsFrm.SaveOGridToTemp
 00783061    mov         eax,dword ptr [edi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783067    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 0078306D    sub         eax,1
>00783070    jno         00783077
 00783072    call        @IntOver
 00783077    test        eax,eax
>00783079    jle         007830D4
 0078307B    mov         dword ptr [ebp-8],eax
 0078307E    mov         dword ptr [ebp-4],1
 00783085    mov         eax,dword ptr [edi+420];TDCGroupsFrm.OGrid:TStringGrid
 0078308B    mov         ebx,dword ptr [eax+2A4];TStringGrid.FColCount:Integer
 00783091    sub         ebx,1
>00783094    jno         0078309B
 00783096    call        @IntOver
 0078309B    test        ebx,ebx
>0078309D    jle         007830BA
 0078309F    mov         esi,1
 007830A4    push        0
 007830A6    mov         eax,dword ptr [edi+420];TDCGroupsFrm.OGrid:TStringGrid
 007830AC    mov         ecx,dword ptr [ebp-4]
 007830AF    mov         edx,esi
 007830B1    call        TStringGrid.SetCells
 007830B6    inc         esi
 007830B7    dec         ebx
>007830B8    jne         007830A4
 007830BA    push        0
 007830BC    mov         eax,dword ptr [edi+420];TDCGroupsFrm.OGrid:TStringGrid
 007830C2    mov         ecx,dword ptr [ebp-4]
 007830C5    xor         edx,edx
 007830C7    call        TStringGrid.SetObjects
 007830CC    inc         dword ptr [ebp-4]
 007830CF    dec         dword ptr [ebp-8]
>007830D2    jne         00783085
 007830D4    mov         eax,dword ptr [edi+420];TDCGroupsFrm.OGrid:TStringGrid
 007830DA    mov         edx,2
 007830DF    call        TDrawGrid.SetRowCount
 007830E4    mov         eax,dword ptr [ebp+8]
 007830E7    mov         byte ptr [eax],1
 007830EA    pop         edi
 007830EB    pop         esi
 007830EC    pop         ebx
 007830ED    pop         ecx
 007830EE    pop         ecx
 007830EF    pop         ebp
 007830F0    ret         4
*}
end;

//007830F4
procedure TDCGroupsFrm.OTreeChange(Sender:TObject; Node:TTreeNode);
begin
{*
 007830F4    push        ebx
 007830F5    push        esi
 007830F6    push        edi
 007830F7    push        ebp
 007830F8    add         esp,0FFFFFFEC
 007830FB    mov         ebx,ecx
 007830FD    mov         dword ptr [esp],eax
 00783100    xor         esi,esi
 00783102    xor         edi,edi
 00783104    xor         ebp,ebp
 00783106    xor         eax,eax
 00783108    mov         dword ptr [esp+4],eax
 0078310C    xor         eax,eax
 0078310E    mov         dword ptr [esp+8],eax
 00783112    xor         eax,eax
 00783114    mov         dword ptr [esp+0C],eax
 00783118    mov         eax,ebx
 0078311A    call        00539908
 0078311F    mov         dword ptr [esp+10],eax
 00783123    mov         eax,ebx
 00783125    call        00539908
 0078312A    sub         eax,1
>0078312D    jb          0078313C
>0078312F    je          00783144
 00783131    dec         eax
>00783132    je          00783156
 00783134    dec         eax
>00783135    je          00783182
>00783137    jmp         007831D6
 0078313C    mov         esi,dword ptr [ebx+0C];TTreeNode.FData:Pointer
>0078313F    jmp         007831D6
 00783144    mov         eax,ebx
 00783146    call        005391E4
 0078314B    mov         esi,dword ptr [eax+0C]
 0078314E    mov         edi,dword ptr [ebx+0C];TTreeNode.FData:Pointer
>00783151    jmp         007831D6
 00783156    mov         eax,ebx
 00783158    call        005391E4
 0078315D    call        005391E4
 00783162    mov         esi,dword ptr [eax+0C]
 00783165    mov         eax,ebx
 00783167    call        005391E4
 0078316C    mov         edi,dword ptr [eax+0C]
 0078316F    mov         eax,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 00783172    cmp         byte ptr [eax+4],0
>00783176    je          0078317E
 00783178    mov         dword ptr [esp+4],eax
>0078317C    jmp         007831D6
 0078317E    mov         ebp,eax
>00783180    jmp         007831D6
 00783182    mov         eax,ebx
 00783184    call        005391E4
 00783189    call        005391E4
 0078318E    call        005391E4
 00783193    mov         esi,dword ptr [eax+0C]
 00783196    mov         eax,ebx
 00783198    call        005391E4
 0078319D    call        005391E4
 007831A2    mov         edi,dword ptr [eax+0C]
 007831A5    mov         eax,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 007831A8    cmp         byte ptr [eax+4],0
>007831AC    je          007831C5
 007831AE    mov         eax,ebx
 007831B0    call        005391E4
 007831B5    mov         eax,dword ptr [eax+0C]
 007831B8    mov         dword ptr [esp+4],eax
 007831BC    mov         eax,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 007831BF    mov         dword ptr [esp+0C],eax
>007831C3    jmp         007831D6
 007831C5    mov         eax,ebx
 007831C7    call        005391E4
 007831CC    mov         ebp,dword ptr [eax+0C]
 007831CF    mov         eax,dword ptr [ebx+0C];TTreeNode.FData:Pointer
 007831D2    mov         dword ptr [esp+8],eax
 007831D6    push        edi
 007831D7    push        ebp
 007831D8    mov         eax,dword ptr [esp+10]
 007831DC    push        eax
 007831DD    mov         eax,dword ptr [esp+10]
 007831E1    push        eax
 007831E2    mov         eax,dword ptr [esp+1C]
 007831E6    push        eax
 007831E7    mov         ecx,esi
 007831E9    mov         edx,dword ptr [esp+24]
 007831ED    mov         eax,dword ptr [esp+14]
 007831F1    call        TDCGroupsFrm.UpdateOGrid
 007831F6    add         esp,14
 007831F9    pop         ebp
 007831FA    pop         edi
 007831FB    pop         esi
 007831FC    pop         ebx
 007831FD    ret
*}
end;

//00783200
{*procedure sub_00783200(?:TDCAddr; ?:?);
begin
 00783200    push        ebp
 00783201    mov         ebp,esp
 00783203    xor         ecx,ecx
 00783205    push        ecx
 00783206    push        ecx
 00783207    push        ecx
 00783208    push        ecx
 00783209    push        ecx
 0078320A    push        ecx
 0078320B    push        ecx
 0078320C    push        ebx
 0078320D    push        esi
 0078320E    push        edi
 0078320F    mov         ebx,eax
 00783211    mov         esi,dword ptr [ebp+8]
 00783214    add         esi,0FFFFFFFC
 00783217    mov         edi,dword ptr [ebp+8]
 0078321A    add         edi,0FFFFFFF8
 0078321D    xor         eax,eax
 0078321F    push        ebp
 00783220    push        783381
 00783225    push        dword ptr fs:[eax]
 00783228    mov         dword ptr fs:[eax],esp
 0078322B    mov         eax,ebx
 0078322D    mov         edx,dword ptr [eax]
 0078322F    call        dword ptr [edx+34]
 00783232    test        al,2
>00783234    je          00783366
 0078323A    add         dword ptr [esi],1
>0078323D    jno         00783244
 0078323F    call        @IntOver
 00783244    push        ebx
 00783245    mov         ecx,dword ptr [esi]
 00783247    mov         eax,dword ptr [edi]
 00783249    mov         eax,dword ptr [eax+420]
 0078324F    xor         edx,edx
 00783251    call        TStringGrid.SetObjects
 00783256    mov         eax,dword ptr [ebp+8]
 00783259    mov         eax,dword ptr [eax+18]
 0078325C    mov         eax,dword ptr [eax+28]
 0078325F    push        eax
 00783260    mov         ecx,dword ptr [esi]
 00783262    mov         eax,dword ptr [edi]
 00783264    mov         eax,dword ptr [eax+420]
 0078326A    mov         edx,1
 0078326F    call        TStringGrid.SetCells
 00783274    lea         edx,[ebp-4]
 00783277    mov         eax,dword ptr [ebp+8]
 0078327A    mov         eax,dword ptr [eax+14]
 0078327D    call        00770894
 00783282    mov         eax,dword ptr [ebp-4]
 00783285    push        eax
 00783286    mov         ecx,dword ptr [esi]
 00783288    mov         eax,dword ptr [edi]
 0078328A    mov         eax,dword ptr [eax+420]
 00783290    mov         edx,2
 00783295    call        TStringGrid.SetCells
 0078329A    lea         edx,[ebp-8]
 0078329D    mov         eax,ebx
 0078329F    mov         ecx,dword ptr [eax]
 007832A1    call        dword ptr [ecx+0C]
 007832A4    mov         eax,dword ptr [ebp-8]
 007832A7    push        eax
 007832A8    mov         ecx,dword ptr [esi]
 007832AA    mov         eax,dword ptr [edi]
 007832AC    mov         eax,dword ptr [eax+420]
 007832B2    mov         edx,3
 007832B7    call        TStringGrid.SetCells
 007832BC    lea         edx,[ebp-0C]
 007832BF    mov         eax,ebx
 007832C1    mov         ecx,dword ptr [eax]
 007832C3    call        dword ptr [ecx+10]
 007832C6    mov         eax,dword ptr [ebp-0C]
 007832C9    push        eax
 007832CA    mov         ecx,dword ptr [esi]
 007832CC    mov         eax,dword ptr [edi]
 007832CE    mov         eax,dword ptr [eax+420]
 007832D4    mov         edx,4
 007832D9    call        TStringGrid.SetCells
 007832DE    lea         edx,[ebp-10]
 007832E1    mov         eax,ebx
 007832E3    mov         ecx,dword ptr [eax]
 007832E5    call        dword ptr [ecx+14]
 007832E8    mov         eax,dword ptr [ebp-10]
 007832EB    push        eax
 007832EC    mov         ecx,dword ptr [esi]
 007832EE    mov         eax,dword ptr [edi]
 007832F0    mov         eax,dword ptr [eax+420]
 007832F6    mov         edx,5
 007832FB    call        TStringGrid.SetCells
 00783300    lea         edx,[ebp-14]
 00783303    mov         eax,ebx
 00783305    mov         ecx,dword ptr [eax]
 00783307    call        dword ptr [ecx+18]
 0078330A    mov         eax,dword ptr [ebp-14]
 0078330D    push        eax
 0078330E    mov         ecx,dword ptr [esi]
 00783310    mov         eax,dword ptr [edi]
 00783312    mov         eax,dword ptr [eax+420]
 00783318    mov         edx,6
 0078331D    call        TStringGrid.SetCells
 00783322    lea         edx,[ebp-18]
 00783325    mov         eax,ebx
 00783327    mov         ecx,dword ptr [eax]
 00783329    call        dword ptr [ecx+20]
 0078332C    mov         eax,dword ptr [ebp-18]
 0078332F    push        eax
 00783330    mov         ecx,dword ptr [esi]
 00783332    mov         eax,dword ptr [edi]
 00783334    mov         eax,dword ptr [eax+420]
 0078333A    mov         edx,7
 0078333F    call        TStringGrid.SetCells
 00783344    lea         edx,[ebp-1C]
 00783347    mov         eax,ebx
 00783349    mov         ecx,dword ptr [eax]
 0078334B    call        dword ptr [ecx+1C]
 0078334E    mov         eax,dword ptr [ebp-1C]
 00783351    push        eax
 00783352    mov         ecx,dword ptr [esi]
 00783354    mov         eax,dword ptr [edi]
 00783356    mov         eax,dword ptr [eax+420]
 0078335C    mov         edx,8
 00783361    call        TStringGrid.SetCells
 00783366    xor         eax,eax
 00783368    pop         edx
 00783369    pop         ecx
 0078336A    pop         ecx
 0078336B    mov         dword ptr fs:[eax],edx
 0078336E    push        783388
 00783373    lea         eax,[ebp-1C]
 00783376    mov         edx,7
 0078337B    call        @UStrArrayClr
 00783380    ret
>00783381    jmp         @HandleFinally
>00783386    jmp         00783373
 00783388    pop         edi
 00783389    pop         esi
 0078338A    pop         ebx
 0078338B    mov         esp,ebp
 0078338D    pop         ebp
 0078338E    ret
end;*}

//00783390
{*procedure sub_00783390(?:TDCLoop; ?:?);
begin
 00783390    push        ebp
 00783391    mov         ebp,esp
 00783393    push        ecx
 00783394    push        ebx
 00783395    push        esi
 00783396    push        edi
 00783397    mov         dword ptr [ebp-4],eax
 0078339A    mov         eax,dword ptr [ebp-4]
 0078339D    mov         eax,dword ptr [eax+1C]
 007833A0    mov         edi,dword ptr [eax+8]
 007833A3    sub         edi,1
>007833A6    jno         007833AD
 007833A8    call        @IntOver
 007833AD    test        edi,edi
>007833AF    jl          007833E4
 007833B1    inc         edi
 007833B2    xor         ebx,ebx
 007833B4    mov         eax,dword ptr [ebp-4]
 007833B7    mov         esi,dword ptr [eax+1C]
 007833BA    lea         eax,[esi+8]
 007833BD    mov         edx,ebx
 007833BF    call        00434534
 007833C4    mov         eax,dword ptr [esi+20]
 007833C7    mov         eax,dword ptr [eax+ebx*4]
 007833CA    mov         edx,dword ptr [ebp+8]
 007833CD    mov         dword ptr [edx+10],eax
 007833D0    mov         eax,dword ptr [ebp+8]
 007833D3    push        eax
 007833D4    mov         eax,dword ptr [ebp+8]
 007833D7    mov         eax,dword ptr [eax+10]
 007833DA    call        00783200
 007833DF    pop         ecx
 007833E0    inc         ebx
 007833E1    dec         edi
>007833E2    jne         007833B4
 007833E4    pop         edi
 007833E5    pop         esi
 007833E6    pop         ebx
 007833E7    pop         ecx
 007833E8    pop         ebp
 007833E9    ret
end;*}

//007833EC
{*procedure sub_007833EC(?:TDCIoLine; ?:?);
begin
 007833EC    push        ebp
 007833ED    mov         ebp,esp
 007833EF    xor         ecx,ecx
 007833F1    push        ecx
 007833F2    push        ecx
 007833F3    push        ecx
 007833F4    push        ecx
 007833F5    push        ecx
 007833F6    push        ebx
 007833F7    push        esi
 007833F8    push        edi
 007833F9    mov         ebx,eax
 007833FB    mov         esi,dword ptr [ebp+8]
 007833FE    add         esi,0FFFFFFFC
 00783401    mov         edi,dword ptr [ebp+8]
 00783404    add         edi,0FFFFFFF8
 00783407    xor         eax,eax
 00783409    push        ebp
 0078340A    push        783541
 0078340F    push        dword ptr fs:[eax]
 00783412    mov         dword ptr fs:[eax],esp
 00783415    mov         eax,ebx
 00783417    mov         edx,dword ptr [eax]
 00783419    call        dword ptr [edx+34]
 0078341C    test        al,2
>0078341E    je          00783526
 00783424    add         dword ptr [esi],1
>00783427    jno         0078342E
 00783429    call        @IntOver
 0078342E    push        ebx
 0078342F    mov         ecx,dword ptr [esi]
 00783431    mov         eax,dword ptr [edi]
 00783433    mov         eax,dword ptr [eax+420]
 00783439    xor         edx,edx
 0078343B    call        TStringGrid.SetObjects
 00783440    mov         eax,dword ptr [ebp+8]
 00783443    mov         eax,dword ptr [eax+18]
 00783446    mov         eax,dword ptr [eax+28]
 00783449    push        eax
 0078344A    mov         ecx,dword ptr [esi]
 0078344C    mov         eax,dword ptr [edi]
 0078344E    mov         eax,dword ptr [eax+420]
 00783454    mov         edx,1
 00783459    call        TStringGrid.SetCells
 0078345E    mov         eax,dword ptr [ebp+8]
 00783461    mov         eax,dword ptr [eax+0C]
 00783464    mov         eax,dword ptr [eax+24]
 00783467    push        eax
 00783468    mov         ecx,dword ptr [esi]
 0078346A    mov         eax,dword ptr [edi]
 0078346C    mov         eax,dword ptr [eax+420]
 00783472    mov         edx,2
 00783477    call        TStringGrid.SetCells
 0078347C    lea         edx,[ebp-4]
 0078347F    mov         eax,ebx
 00783481    mov         ecx,dword ptr [eax]
 00783483    call        dword ptr [ecx+0C]
 00783486    mov         eax,dword ptr [ebp-4]
 00783489    push        eax
 0078348A    mov         ecx,dword ptr [esi]
 0078348C    mov         eax,dword ptr [edi]
 0078348E    mov         eax,dword ptr [eax+420]
 00783494    mov         edx,3
 00783499    call        TStringGrid.SetCells
 0078349E    lea         edx,[ebp-8]
 007834A1    mov         eax,ebx
 007834A3    mov         ecx,dword ptr [eax]
 007834A5    call        dword ptr [ecx+10]
 007834A8    mov         eax,dword ptr [ebp-8]
 007834AB    push        eax
 007834AC    mov         ecx,dword ptr [esi]
 007834AE    mov         eax,dword ptr [edi]
 007834B0    mov         eax,dword ptr [eax+420]
 007834B6    mov         edx,4
 007834BB    call        TStringGrid.SetCells
 007834C0    lea         edx,[ebp-0C]
 007834C3    mov         eax,ebx
 007834C5    mov         ecx,dword ptr [eax]
 007834C7    call        dword ptr [ecx+14]
 007834CA    mov         eax,dword ptr [ebp-0C]
 007834CD    push        eax
 007834CE    mov         ecx,dword ptr [esi]
 007834D0    mov         eax,dword ptr [edi]
 007834D2    mov         eax,dword ptr [eax+420]
 007834D8    mov         edx,5
 007834DD    call        TStringGrid.SetCells
 007834E2    lea         edx,[ebp-10]
 007834E5    mov         eax,ebx
 007834E7    mov         ecx,dword ptr [eax]
 007834E9    call        dword ptr [ecx+20]
 007834EC    mov         eax,dword ptr [ebp-10]
 007834EF    push        eax
 007834F0    mov         ecx,dword ptr [esi]
 007834F2    mov         eax,dword ptr [edi]
 007834F4    mov         eax,dword ptr [eax+420]
 007834FA    mov         edx,7
 007834FF    call        TStringGrid.SetCells
 00783504    lea         edx,[ebp-14]
 00783507    mov         eax,ebx
 00783509    mov         ecx,dword ptr [eax]
 0078350B    call        dword ptr [ecx+1C]
 0078350E    mov         eax,dword ptr [ebp-14]
 00783511    push        eax
 00783512    mov         ecx,dword ptr [esi]
 00783514    mov         eax,dword ptr [edi]
 00783516    mov         eax,dword ptr [eax+420]
 0078351C    mov         edx,8
 00783521    call        TStringGrid.SetCells
 00783526    xor         eax,eax
 00783528    pop         edx
 00783529    pop         ecx
 0078352A    pop         ecx
 0078352B    mov         dword ptr fs:[eax],edx
 0078352E    push        783548
 00783533    lea         eax,[ebp-14]
 00783536    mov         edx,5
 0078353B    call        @UStrArrayClr
 00783540    ret
>00783541    jmp         @HandleFinally
>00783546    jmp         00783533
 00783548    pop         edi
 00783549    pop         esi
 0078354A    pop         ebx
 0078354B    mov         esp,ebp
 0078354D    pop         ebp
 0078354E    ret
end;*}

//00783550
{*procedure sub_00783550(?:TDCIoUnit; ?:?);
begin
 00783550    push        ebp
 00783551    mov         ebp,esp
 00783553    push        ecx
 00783554    push        ebx
 00783555    push        esi
 00783556    push        edi
 00783557    mov         dword ptr [ebp-4],eax
 0078355A    mov         eax,dword ptr [ebp-4]
 0078355D    mov         eax,dword ptr [eax+1C]
 00783560    mov         edi,dword ptr [eax+8]
 00783563    sub         edi,1
>00783566    jno         0078356D
 00783568    call        @IntOver
 0078356D    test        edi,edi
>0078356F    jl          007835A4
 00783571    inc         edi
 00783572    xor         ebx,ebx
 00783574    mov         eax,dword ptr [ebp-4]
 00783577    mov         esi,dword ptr [eax+1C]
 0078357A    lea         eax,[esi+8]
 0078357D    mov         edx,ebx
 0078357F    call        00434534
 00783584    mov         eax,dword ptr [esi+20]
 00783587    mov         eax,dword ptr [eax+ebx*4]
 0078358A    mov         edx,dword ptr [ebp+8]
 0078358D    mov         dword ptr [edx+8],eax
 00783590    mov         eax,dword ptr [ebp+8]
 00783593    push        eax
 00783594    mov         eax,dword ptr [ebp+8]
 00783597    mov         eax,dword ptr [eax+8]
 0078359A    call        007833EC
 0078359F    pop         ecx
 007835A0    inc         ebx
 007835A1    dec         edi
>007835A2    jne         00783574
 007835A4    pop         edi
 007835A5    pop         esi
 007835A6    pop         ebx
 007835A7    pop         ecx
 007835A8    pop         ebp
 007835A9    ret
end;*}

//007835AC
{*procedure sub_007835AC(?:TDCPanel; ?:?);
begin
 007835AC    push        ebp
 007835AD    mov         ebp,esp
 007835AF    push        ecx
 007835B0    push        ebx
 007835B1    push        esi
 007835B2    push        edi
 007835B3    mov         dword ptr [ebp-4],eax
 007835B6    mov         eax,dword ptr [ebp-4]
 007835B9    mov         eax,dword ptr [eax+1C]
 007835BC    mov         ebx,dword ptr [eax+8]
 007835BF    sub         ebx,1
>007835C2    jno         007835C9
 007835C4    call        @IntOver
 007835C9    test        ebx,ebx
>007835CB    jl          00783600
 007835CD    inc         ebx
 007835CE    xor         esi,esi
 007835D0    mov         eax,dword ptr [ebp-4]
 007835D3    mov         edi,dword ptr [eax+1C]
 007835D6    lea         eax,[edi+8]
 007835D9    mov         edx,esi
 007835DB    call        00434534
 007835E0    mov         eax,dword ptr [edi+20]
 007835E3    mov         eax,dword ptr [eax+esi*4]
 007835E6    mov         edx,dword ptr [ebp+8]
 007835E9    mov         dword ptr [edx+0C],eax
 007835EC    mov         eax,dword ptr [ebp+8]
 007835EF    push        eax
 007835F0    mov         eax,dword ptr [ebp+8]
 007835F3    mov         eax,dword ptr [eax+0C]
 007835F6    call        00783550
 007835FB    pop         ecx
 007835FC    inc         esi
 007835FD    dec         ebx
>007835FE    jne         007835D0
 00783600    mov         eax,dword ptr [ebp-4]
 00783603    mov         eax,dword ptr [eax+20]
 00783606    mov         ebx,dword ptr [eax+8]
 00783609    sub         ebx,1
>0078360C    jno         00783613
 0078360E    call        @IntOver
 00783613    test        ebx,ebx
>00783615    jl          0078364A
 00783617    inc         ebx
 00783618    xor         esi,esi
 0078361A    mov         eax,dword ptr [ebp-4]
 0078361D    mov         edi,dword ptr [eax+20]
 00783620    lea         eax,[edi+8]
 00783623    mov         edx,esi
 00783625    call        00434534
 0078362A    mov         eax,dword ptr [edi+20]
 0078362D    mov         eax,dword ptr [eax+esi*4]
 00783630    mov         edx,dword ptr [ebp+8]
 00783633    mov         dword ptr [edx+14],eax
 00783636    mov         eax,dword ptr [ebp+8]
 00783639    push        eax
 0078363A    mov         eax,dword ptr [ebp+8]
 0078363D    mov         eax,dword ptr [eax+14]
 00783640    call        00783390
 00783645    pop         ecx
 00783646    inc         esi
 00783647    dec         ebx
>00783648    jne         0078361A
 0078364A    pop         edi
 0078364B    pop         esi
 0078364C    pop         ebx
 0078364D    pop         ecx
 0078364E    pop         ebp
 0078364F    ret
end;*}

//00783650
{*procedure sub_00783650(?:TDCSystem; ?:?);
begin
 00783650    push        ebp
 00783651    mov         ebp,esp
 00783653    push        ecx
 00783654    push        ebx
 00783655    push        esi
 00783656    push        edi
 00783657    mov         dword ptr [ebp-4],eax
 0078365A    mov         eax,dword ptr [ebp-4]
 0078365D    mov         eax,dword ptr [eax+0C]
 00783660    mov         edi,dword ptr [eax+8]
 00783663    sub         edi,1
>00783666    jno         0078366D
 00783668    call        @IntOver
 0078366D    test        edi,edi
>0078366F    jl          007836A4
 00783671    inc         edi
 00783672    xor         ebx,ebx
 00783674    mov         eax,dword ptr [ebp-4]
 00783677    mov         esi,dword ptr [eax+0C]
 0078367A    lea         eax,[esi+8]
 0078367D    mov         edx,ebx
 0078367F    call        00434534
 00783684    mov         eax,dword ptr [esi+20]
 00783687    mov         eax,dword ptr [eax+ebx*4]
 0078368A    mov         edx,dword ptr [ebp+8]
 0078368D    mov         dword ptr [edx+18],eax
 00783690    mov         eax,dword ptr [ebp+8]
 00783693    push        eax
 00783694    mov         eax,dword ptr [ebp+8]
 00783697    mov         eax,dword ptr [eax+18]
 0078369A    call        007835AC
 0078369F    pop         ecx
 007836A0    inc         ebx
 007836A1    dec         edi
>007836A2    jne         00783674
 007836A4    pop         edi
 007836A5    pop         esi
 007836A6    pop         ebx
 007836A7    pop         ecx
 007836A8    pop         ebp
 007836A9    ret
end;*}

//007836AC
procedure TDCGroupsFrm.UpdateOGrid(DCLevel:Integer; DCSystem:TDCSystem; IOLine:TDCIoLine; IOUnit:TDCIoUnit; DCAddr:TDCAddr; DCLoop:TDCLoop; DCPanel:TDCPanel);
begin
{*
 007836AC    push        ebp
 007836AD    mov         ebp,esp
 007836AF    push        ecx
 007836B0    mov         ecx,4
 007836B5    push        0
 007836B7    push        0
 007836B9    dec         ecx
>007836BA    jne         007836B5
 007836BC    push        ecx
 007836BD    xchg        ecx,dword ptr [ebp-4]
 007836C0    push        ebx
 007836C1    push        esi
 007836C2    mov         esi,ecx
 007836C4    mov         ebx,edx
 007836C6    mov         dword ptr [ebp-8],eax
 007836C9    xor         eax,eax
 007836CB    push        ebp
 007836CC    push        783959
 007836D1    push        dword ptr fs:[eax]
 007836D4    mov         dword ptr fs:[eax],esp
 007836D7    xor         eax,eax
 007836D9    mov         dword ptr [ebp-4],eax
 007836DC    mov         eax,dword ptr [ebp-8]
 007836DF    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 007836E5    mov         edx,2
 007836EA    call        TDrawGrid.SetRowCount
 007836EF    lea         eax,[ebp-0C]
 007836F2    push        eax
 007836F3    xor         eax,eax
 007836F5    mov         dword ptr [ebp-14],eax
 007836F8    mov         byte ptr [ebp-10],0
 007836FC    lea         edx,[ebp-14]
 007836FF    xor         ecx,ecx
 00783701    mov         eax,[007C4078];^'Number of outputs: %d'
 00783706    call        Format
 0078370B    mov         edx,dword ptr [ebp-0C]
 0078370E    mov         eax,dword ptr [ebp-8]
 00783711    mov         eax,dword ptr [eax+428];TDCGroupsFrm.lbNumOutputs:TLabel
 00783717    call        TControl.SetText
 0078371C    sub         ebx,1
>0078371F    jb          00783736
>00783721    je          00783797
 00783723    dec         ebx
>00783724    je          007837FF
 0078372A    dec         ebx
>0078372B    je          007838D9
>00783731    jmp         00783928
 00783736    mov         eax,dword ptr [esi+8];TDCSystem.FNumOutputs:Integer
 00783739    test        eax,eax
>0078373B    jle         00783928
 00783741    mov         edx,eax
 00783743    add         edx,1
>00783746    jno         0078374D
 00783748    call        @IntOver
 0078374D    mov         eax,dword ptr [ebp-8]
 00783750    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783756    call        TDrawGrid.SetRowCount
 0078375B    push        ebp
 0078375C    mov         eax,esi
 0078375E    call        00783650
 00783763    pop         ecx
 00783764    lea         eax,[ebp-18]
 00783767    push        eax
 00783768    mov         eax,dword ptr [esi+8];TDCSystem.FNumOutputs:Integer
 0078376B    mov         dword ptr [ebp-14],eax
 0078376E    mov         byte ptr [ebp-10],0
 00783772    lea         edx,[ebp-14]
 00783775    xor         ecx,ecx
 00783777    mov         eax,[007C4078];^'Number of outputs: %d'
 0078377C    call        Format
 00783781    mov         edx,dword ptr [ebp-18]
 00783784    mov         eax,dword ptr [ebp-8]
 00783787    mov         eax,dword ptr [eax+428];TDCGroupsFrm.lbNumOutputs:TLabel
 0078378D    call        TControl.SetText
>00783792    jmp         00783928
 00783797    mov         eax,dword ptr [ebp+18]
 0078379A    mov         eax,dword ptr [eax+18];TDCPanel.FNumOutputs:Integer
 0078379D    test        eax,eax
>0078379F    jle         00783928
 007837A5    mov         edx,eax
 007837A7    add         edx,1
>007837AA    jno         007837B1
 007837AC    call        @IntOver
 007837B1    mov         eax,dword ptr [ebp-8]
 007837B4    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 007837BA    call        TDrawGrid.SetRowCount
 007837BF    push        ebp
 007837C0    mov         eax,dword ptr [ebp+18]
 007837C3    call        007835AC
 007837C8    pop         ecx
 007837C9    lea         eax,[ebp-1C]
 007837CC    push        eax
 007837CD    mov         eax,dword ptr [ebp+18]
 007837D0    mov         eax,dword ptr [eax+18];TDCPanel.FNumOutputs:Integer
 007837D3    mov         dword ptr [ebp-14],eax
 007837D6    mov         byte ptr [ebp-10],0
 007837DA    lea         edx,[ebp-14]
 007837DD    xor         ecx,ecx
 007837DF    mov         eax,[007C4078];^'Number of outputs: %d'
 007837E4    call        Format
 007837E9    mov         edx,dword ptr [ebp-1C]
 007837EC    mov         eax,dword ptr [ebp-8]
 007837EF    mov         eax,dword ptr [eax+428];TDCGroupsFrm.lbNumOutputs:TLabel
 007837F5    call        TControl.SetText
>007837FA    jmp         00783928
 007837FF    cmp         dword ptr [ebp+0C],0
>00783803    je          00783867
 00783805    mov         eax,dword ptr [ebp+0C]
 00783808    cmp         dword ptr [eax+18],0;TDCIoUnit.FNumOutputs:Integer
>0078380C    jle         00783867
 0078380E    mov         eax,dword ptr [ebp+0C]
 00783811    mov         edx,dword ptr [eax+18];TDCIoUnit.FNumOutputs:Integer
 00783814    add         edx,1
>00783817    jno         0078381E
 00783819    call        @IntOver
 0078381E    mov         eax,dword ptr [ebp-8]
 00783821    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783827    call        TDrawGrid.SetRowCount
 0078382C    push        ebp
 0078382D    mov         eax,dword ptr [ebp+0C]
 00783830    call        00783550
 00783835    pop         ecx
 00783836    lea         eax,[ebp-20]
 00783839    push        eax
 0078383A    mov         eax,dword ptr [ebp+0C]
 0078383D    mov         eax,dword ptr [eax+18];TDCIoUnit.FNumOutputs:Integer
 00783840    mov         dword ptr [ebp-14],eax
 00783843    mov         byte ptr [ebp-10],0
 00783847    lea         edx,[ebp-14]
 0078384A    xor         ecx,ecx
 0078384C    mov         eax,[007C4078];^'Number of outputs: %d'
 00783851    call        Format
 00783856    mov         edx,dword ptr [ebp-20]
 00783859    mov         eax,dword ptr [ebp-8]
 0078385C    mov         eax,dword ptr [eax+428];TDCGroupsFrm.lbNumOutputs:TLabel
 00783862    call        TControl.SetText
 00783867    cmp         dword ptr [ebp+14],0
>0078386B    je          00783928
 00783871    mov         eax,dword ptr [ebp+14]
 00783874    cmp         dword ptr [eax+18],0;TDCLoop.FNumOutputs:Integer
>00783878    jle         00783928
 0078387E    mov         eax,dword ptr [ebp+14]
 00783881    mov         edx,dword ptr [eax+18];TDCLoop.FNumOutputs:Integer
 00783884    add         edx,1
>00783887    jno         0078388E
 00783889    call        @IntOver
 0078388E    mov         eax,dword ptr [ebp-8]
 00783891    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783897    call        TDrawGrid.SetRowCount
 0078389C    push        ebp
 0078389D    mov         eax,dword ptr [ebp+14]
 007838A0    call        00783390
 007838A5    pop         ecx
 007838A6    lea         eax,[ebp-24]
 007838A9    push        eax
 007838AA    mov         eax,dword ptr [ebp+14]
 007838AD    mov         eax,dword ptr [eax+18];TDCLoop.FNumOutputs:Integer
 007838B0    mov         dword ptr [ebp-14],eax
 007838B3    mov         byte ptr [ebp-10],0
 007838B7    lea         edx,[ebp-14]
 007838BA    xor         ecx,ecx
 007838BC    mov         eax,[007C4078];^'Number of outputs: %d'
 007838C1    call        Format
 007838C6    mov         edx,dword ptr [ebp-24]
 007838C9    mov         eax,dword ptr [ebp-8]
 007838CC    mov         eax,dword ptr [eax+428];TDCGroupsFrm.lbNumOutputs:TLabel
 007838D2    call        TControl.SetText
>007838D7    jmp         00783928
 007838D9    cmp         dword ptr [ebp+8],0
>007838DD    je          007838E9
 007838DF    push        ebp
 007838E0    mov         eax,dword ptr [ebp+8]
 007838E3    call        007833EC
 007838E8    pop         ecx
 007838E9    cmp         dword ptr [ebp+10],0
>007838ED    je          007838F9
 007838EF    push        ebp
 007838F0    mov         eax,dword ptr [ebp+10]
 007838F3    call        00783200
 007838F8    pop         ecx
 007838F9    lea         eax,[ebp-28]
 007838FC    push        eax
 007838FD    mov         dword ptr [ebp-14],1
 00783904    mov         byte ptr [ebp-10],0
 00783908    lea         edx,[ebp-14]
 0078390B    xor         ecx,ecx
 0078390D    mov         eax,[007C4078];^'Number of outputs: %d'
 00783912    call        Format
 00783917    mov         edx,dword ptr [ebp-28]
 0078391A    mov         eax,dword ptr [ebp-8]
 0078391D    mov         eax,dword ptr [eax+428];TDCGroupsFrm.lbNumOutputs:TLabel
 00783923    call        TControl.SetText
 00783928    mov         eax,dword ptr [ebp-8]
 0078392B    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783931    call        TStringGrid.DefaultSelection
 00783936    xor         eax,eax
 00783938    pop         edx
 00783939    pop         ecx
 0078393A    pop         ecx
 0078393B    mov         dword ptr fs:[eax],edx
 0078393E    push        783960
 00783943    lea         eax,[ebp-28]
 00783946    mov         edx,5
 0078394B    call        @UStrArrayClr
 00783950    lea         eax,[ebp-0C]
 00783953    call        @UStrClr
 00783958    ret
>00783959    jmp         @HandleFinally
>0078395E    jmp         00783943
 00783960    pop         esi
 00783961    pop         ebx
 00783962    mov         esp,ebp
 00783964    pop         ebp
 00783965    ret         14
*}
end;

//00783968
procedure TDCGroupsFrm.OGridDrawCell(Sender:TObject; ACol:Integer; State:TGridDrawState; Rect:TRect; ARow:Integer);
begin
{*
 00783968    push        ebp
 00783969    mov         ebp,esp
 0078396B    add         esp,0FFFFFFE8
 0078396E    push        ebx
 0078396F    push        esi
 00783970    push        edi
 00783971    xor         ebx,ebx
 00783973    mov         dword ptr [ebp-18],ebx
 00783976    mov         esi,dword ptr [ebp+0C]
 00783979    lea         edi,[ebp-14]
 0078397C    movs        dword ptr [edi],dword ptr [esi]
 0078397D    movs        dword ptr [edi],dword ptr [esi]
 0078397E    movs        dword ptr [edi],dword ptr [esi]
 0078397F    movs        dword ptr [edi],dword ptr [esi]
 00783980    mov         dword ptr [ebp-4],ecx
 00783983    mov         ebx,eax
 00783985    mov         esi,dword ptr [ebp+10]
 00783988    xor         eax,eax
 0078398A    push        ebp
 0078398B    push        783B81
 00783990    push        dword ptr fs:[eax]
 00783993    mov         dword ptr fs:[eax],esp
 00783996    mov         eax,[009037B8];gvar_009037B8:?
 0078399B    test        eax,eax
>0078399D    je          007839A4
 0078399F    sub         eax,4
 007839A2    mov         eax,dword ptr [eax]
 007839A4    dec         eax
 007839A5    cmp         esi,eax
>007839A7    jg          007839CA
 007839A9    mov         eax,[009037B8];gvar_009037B8:?
 007839AE    test        eax,eax
>007839B0    je          007839B7
 007839B2    cmp         esi,dword ptr [eax-4]
>007839B5    jb          007839BC
 007839B7    call        @BoundErr
 007839BC    mov         edx,dword ptr ds:[783B94];0x0 gvar_00783B94
 007839C2    cmp         edx,dword ptr [eax+esi*4]
 007839C5    setne       al
>007839C8    jmp         007839CC
 007839CA    xor         eax,eax
 007839CC    test        al,al
>007839CE    je          007839F4
 007839D0    mov         eax,[009037B8];gvar_009037B8:?
 007839D5    test        eax,eax
>007839D7    je          007839DE
 007839D9    cmp         esi,dword ptr [eax-4]
>007839DC    jb          007839E3
 007839DE    call        @BoundErr
 007839E3    mov         edx,dword ptr [ebp-4]
 007839E6    cmp         edx,1F
>007839E9    ja          007839EF
 007839EB    bt          dword ptr [eax+esi*4],edx
 007839EF    setb        al
>007839F2    jmp         007839F6
 007839F4    xor         eax,eax
 007839F6    test        al,al
>007839F8    je          00783A31
 007839FA    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783A00    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783A06    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00783A09    mov         edx,0FFFF
 00783A0E    call        TBrush.SetColor
 00783A13    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783A19    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783A1F    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00783A22    mov         edx,0FF000008
 00783A27    call        TFont.SetColor
>00783A2C    jmp         00783B15
 00783A31    test        byte ptr [ebp+8],4
>00783A35    je          00783A6F
 00783A37    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783A3D    mov         edx,dword ptr [eax+2C4];TStringGrid.FFixedColor:TColor
 00783A43    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783A49    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00783A4C    call        TBrush.SetColor
 00783A51    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783A57    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783A5D    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00783A60    mov         edx,0FF000008
 00783A65    call        TFont.SetColor
>00783A6A    jmp         00783B15
 00783A6F    test        byte ptr [ebp+8],2
>00783A73    je          00783AA9
 00783A75    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783A7B    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783A81    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00783A84    mov         edx,0FF000005
 00783A89    call        TBrush.SetColor
 00783A8E    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783A94    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783A9A    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00783A9D    mov         edx,0FF000008
 00783AA2    call        TFont.SetColor
>00783AA7    jmp         00783B15
 00783AA9    test        byte ptr [ebp+8],1
>00783AAD    je          00783AE3
 00783AAF    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783AB5    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783ABB    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00783ABE    mov         edx,0FF000005
 00783AC3    call        TBrush.SetColor
 00783AC8    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783ACE    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783AD4    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00783AD7    mov         edx,0FF000008
 00783ADC    call        TFont.SetColor
>00783AE1    jmp         00783B15
 00783AE3    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783AE9    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783AEF    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00783AF2    mov         edx,0FF000005
 00783AF7    call        TBrush.SetColor
 00783AFC    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783B02    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783B08    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00783B0B    mov         edx,0FF000008
 00783B10    call        TFont.SetColor
 00783B15    lea         edx,[ebp-14]
 00783B18    mov         eax,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783B1E    mov         eax,dword ptr [eax+290];TStringGrid.FCanvas:TCanvas
 00783B24    mov         ecx,dword ptr [eax]
 00783B26    call        dword ptr [ecx+54];TCanvas.FillRect
 00783B29    lea         eax,[ebp-18]
 00783B2C    push        eax
 00783B2D    mov         ecx,esi
 00783B2F    mov         edx,dword ptr [ebp-4]
 00783B32    mov         edi,dword ptr [ebx+420];TDCGroupsFrm.OGrid:TStringGrid
 00783B38    mov         eax,edi
 00783B3A    call        TStringGrid.GetCells
 00783B3F    mov         eax,dword ptr [ebp-18]
 00783B42    push        eax
 00783B43    mov         ecx,dword ptr [ebp-10]
 00783B46    add         ecx,2
>00783B49    jno         00783B50
 00783B4B    call        @IntOver
 00783B50    mov         edx,dword ptr [ebp-14]
 00783B53    add         edx,2
>00783B56    jno         00783B5D
 00783B58    call        @IntOver
 00783B5D    mov         eax,dword ptr [edi+290];TStringGrid.FCanvas:TCanvas
 00783B63    mov         ebx,dword ptr [eax]
 00783B65    call        dword ptr [ebx+90];TCanvas.TextOut
 00783B6B    xor         eax,eax
 00783B6D    pop         edx
 00783B6E    pop         ecx
 00783B6F    pop         ecx
 00783B70    mov         dword ptr fs:[eax],edx
 00783B73    push        783B88
 00783B78    lea         eax,[ebp-18]
 00783B7B    call        @UStrClr
 00783B80    ret
>00783B81    jmp         @HandleFinally
>00783B86    jmp         00783B78
 00783B88    pop         edi
 00783B89    pop         esi
 00783B8A    pop         ebx
 00783B8B    mov         esp,ebp
 00783B8D    pop         ebp
 00783B8E    ret         0C
*}
end;

//00783B98
procedure TDCGroupsFrm.OGridMouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 00783B98    push        ebp
 00783B99    mov         ebp,esp
 00783B9B    add         esp,0FFFFFFDC
 00783B9E    push        ebx
 00783B9F    push        esi
 00783BA0    push        edi
 00783BA1    xor         ebx,ebx
 00783BA3    mov         dword ptr [ebp-24],ebx
 00783BA6    mov         dword ptr [ebp-20],ebx
 00783BA9    mov         byte ptr [ebp-1],cl
 00783BAC    mov         esi,eax
 00783BAE    mov         edi,dword ptr [ebp+0C]
 00783BB1    xor         eax,eax
 00783BB3    push        ebp
 00783BB4    push        783CE8
 00783BB9    push        dword ptr fs:[eax]
 00783BBC    mov         dword ptr fs:[eax],esp
 00783BBF    cmp         byte ptr [ebp-1],1
>00783BC3    jne         00783CCD
 00783BC9    lea         eax,[ebp-8]
 00783BCC    push        eax
 00783BCD    lea         eax,[ebp-0C]
 00783BD0    push        eax
 00783BD1    mov         ecx,dword ptr [ebp+8]
 00783BD4    mov         edx,edi
 00783BD6    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783BDC    call        TCustomDrawGrid.MouseToCell
 00783BE1    cmp         dword ptr [ebp-8],0
>00783BE5    je          00783CCD
 00783BEB    cmp         dword ptr [ebp-0C],0
>00783BEF    je          00783CCD
 00783BF5    mov         edx,dword ptr [ebp-8]
 00783BF8    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783BFE    call        006C0A44
 00783C03    mov         edx,dword ptr [ebp-0C]
 00783C06    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783C0C    call        006C0E94
 00783C11    mov         ebx,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783C17    mov         eax,dword ptr [ebx+2A8];TStringGrid.FCurrent:TGridCoord
 00783C1D    cmp         eax,dword ptr [ebp-8]
>00783C20    jne         00783CCD
 00783C26    mov         eax,dword ptr [ebx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00783C2C    cmp         eax,dword ptr [ebp-0C]
>00783C2F    jne         00783CCD
 00783C35    lea         ecx,[ebp-1C]
 00783C38    mov         edx,dword ptr [ebp+8]
 00783C3B    mov         eax,edi
 00783C3D    call        004830B8
 00783C42    lea         edx,[ebp-1C]
 00783C45    lea         ecx,[ebp-14]
 00783C48    mov         eax,ebx
 00783C4A    call        TControl.ClientToScreen
 00783C4F    cmp         dword ptr [ebp-8],7
>00783C53    jne         00783CCD
 00783C55    lea         eax,[ebp-20]
 00783C58    push        eax
 00783C59    mov         ebx,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783C5F    mov         ecx,dword ptr [ebx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00783C65    mov         edx,7
 00783C6A    mov         eax,ebx
 00783C6C    call        TStringGrid.GetCells
 00783C71    mov         edx,dword ptr [ebp-20]
 00783C74    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 00783C79    mov         eax,dword ptr [eax]
 00783C7B    xor         ecx,ecx
 00783C7D    call        TFXCGroupsDlg.SetCheckMarks
 00783C82    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 00783C87    mov         eax,dword ptr [eax]
 00783C89    mov         edx,dword ptr [eax]
 00783C8B    call        dword ptr [edx+13C]
 00783C91    dec         eax
>00783C92    jne         00783CBF
 00783C94    lea         edx,[ebp-24]
 00783C97    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 00783C9C    mov         eax,dword ptr [eax]
 00783C9E    call        TFXCGroupsDlg.GetCheckMarks
 00783CA3    mov         eax,dword ptr [ebp-24]
 00783CA6    push        eax
 00783CA7    mov         ebx,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783CAD    mov         ecx,dword ptr [ebx+2AC];TStringGrid.FDefaultRowHeight:Integer
 00783CB3    mov         edx,7
 00783CB8    mov         eax,ebx
 00783CBA    call        TStringGrid.SetCells
 00783CBF    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00783CC5    mov         edx,dword ptr [eax]
 00783CC7    call        dword ptr [edx+104];TWinControl.SetFocus
 00783CCD    xor         eax,eax
 00783CCF    pop         edx
 00783CD0    pop         ecx
 00783CD1    pop         ecx
 00783CD2    mov         dword ptr fs:[eax],edx
 00783CD5    push        783CEF
 00783CDA    lea         eax,[ebp-24]
 00783CDD    mov         edx,2
 00783CE2    call        @UStrArrayClr
 00783CE7    ret
>00783CE8    jmp         @HandleFinally
>00783CED    jmp         00783CDA
 00783CEF    pop         edi
 00783CF0    pop         esi
 00783CF1    pop         ebx
 00783CF2    mov         esp,ebp
 00783CF4    pop         ebp
 00783CF5    ret         0C
*}
end;

//00783CF8
procedure TDCGroupsFrm.OGridMouseMove(Sender:TObject; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 00783CF8    push        ebp
 00783CF9    mov         ebp,esp
 00783CFB    add         esp,0FFFFFFEC
 00783CFE    push        ebx
 00783CFF    push        esi
 00783D00    push        edi
 00783D01    mov         dword ptr [ebp-4],edx
 00783D04    mov         edi,dword ptr [ebp+8]
 00783D07    mov         esi,dword ptr [ebp+0C]
 00783D0A    mov         ebx,dword ptr [ebp-4]
 00783D0D    lea         eax,[ebp-8]
 00783D10    push        eax
 00783D11    lea         eax,[ebp-0C]
 00783D14    push        eax
 00783D15    mov         ecx,edi
 00783D17    mov         edx,esi
 00783D19    mov         eax,ebx
 00783D1B    call        TCustomDrawGrid.MouseToCell
 00783D20    cmp         dword ptr [ebp-0C],0
>00783D24    jne         00783E08
 00783D2A    mov         eax,dword ptr [ebp-8]
 00783D2D    cmp         eax,7
>00783D30    ja          00783DBC
 00783D36    jmp         dword ptr [eax*4+783D3D]
 00783D36    dd          00783DBC
 00783D36    dd          00783D5D
 00783D36    dd          00783D70
 00783D36    dd          00783D83
 00783D36    dd          00783D96
 00783D36    dd          00783DBC
 00783D36    dd          00783DBC
 00783D36    dd          00783DA9
 00783D5D    lea         eax,[ebx+90]
 00783D63    mov         edx,dword ptr ds:[7C407C];^'Panel ID of the address or input/output'
 00783D69    call        @UStrAsg
>00783D6E    jmp         00783DC7
 00783D70    lea         eax,[ebx+90]
 00783D76    mov         edx,dword ptr ds:[7C4080];^'Loop ID of address or IO controller'
 00783D7C    call        @UStrAsg
>00783D81    jmp         00783DC7
 00783D83    lea         eax,[ebx+90]
 00783D89    mov         edx,dword ptr ds:[7C4084];^'Address ID of address or input/output id'
 00783D8F    call        @UStrAsg
>00783D94    jmp         00783DC7
 00783D96    lea         eax,[ebx+90]
 00783D9C    mov         edx,dword ptr ds:[7C40A4];^'Device type of output or
Output line type:
CCO - Clean Con...
 00783DA2    call        @UStrAsg
>00783DA7    jmp         00783DC7
 00783DA9    lea         eax,[ebx+90]
 00783DAF    mov         edx,dword ptr ds:[7C40A8];^'Control groups that activate this output'
 00783DB5    call        @UStrAsg
>00783DBA    jmp         00783DC7
 00783DBC    lea         eax,[ebx+90]
 00783DC2    call        @UStrClr
 00783DC7    mov         eax,dword ptr [ebp-8]
 00783DCA    cmp         eax,dword ptr ds:[9037C4];gvar_009037C4
>00783DD0    je          00783E13
 00783DD2    mov         eax,[007C4A18];^Application:TApplication
 00783DD7    mov         eax,dword ptr [eax]
 00783DD9    mov         dword ptr [eax+88],1388;TApplication.FHintHidePause:Integer
 00783DE3    lea         ecx,[ebp-14]
 00783DE6    mov         edx,edi
 00783DE8    mov         eax,esi
 00783DEA    call        004830B8
 00783DEF    lea         edx,[ebp-14]
 00783DF2    mov         eax,[007C4A18];^Application:TApplication
 00783DF7    mov         eax,dword ptr [eax]
 00783DF9    call        TApplication.ActivateHint
 00783DFE    mov         eax,dword ptr [ebp-8]
 00783E01    mov         [009037C4],eax;gvar_009037C4
>00783E06    jmp         00783E13
 00783E08    lea         eax,[ebx+90]
 00783E0E    call        @UStrClr
 00783E13    pop         edi
 00783E14    pop         esi
 00783E15    pop         ebx
 00783E16    mov         esp,ebp
 00783E18    pop         ebp
 00783E19    ret         8
*}
end;

//00783E1C
{*function sub_00783E1C(?:TDCGroupsFrm):?;
begin
 00783E1C    push        ebp
 00783E1D    mov         ebp,esp
 00783E1F    add         esp,0FFFFFF38
 00783E25    push        ebx
 00783E26    push        esi
 00783E27    xor         edx,edx
 00783E29    mov         dword ptr [ebp-9C],edx
 00783E2F    mov         dword ptr [ebp-0C0],edx
 00783E35    mov         dword ptr [ebp-0C4],edx
 00783E3B    mov         dword ptr [ebp-0C8],edx
 00783E41    mov         dword ptr [ebp-98],edx
 00783E47    mov         dword ptr [ebp-4],edx
 00783E4A    mov         dword ptr [ebp-8],eax
 00783E4D    xor         eax,eax
 00783E4F    push        ebp
 00783E50    push        784152
 00783E55    push        dword ptr fs:[eax]
 00783E58    mov         dword ptr fs:[eax],esp
 00783E5B    mov         eax,9037B8;gvar_009037B8:?
 00783E60    mov         edx,dword ptr ds:[77C72C];:7
 00783E66    call        @DynArrayClear
 00783E6B    mov         eax,dword ptr [ebp-8]
 00783E6E    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783E74    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 00783E7A    push        eax
 00783E7B    mov         eax,9037B8;gvar_009037B8:?
 00783E80    mov         ecx,1
 00783E85    mov         edx,dword ptr ds:[77C72C];:7
 00783E8B    call        @DynArraySetLength
 00783E90    add         esp,4
 00783E93    xor         eax,eax
 00783E95    mov         [009037BC],eax;gvar_009037BC
 00783E9A    mov         eax,dword ptr [ebp-8]
 00783E9D    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783EA3    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 00783EA9    sub         eax,1
>00783EAC    jno         00783EB3
 00783EAE    call        @IntOver
 00783EB3    test        eax,eax
>00783EB5    jle         00783F3C
 00783EBB    mov         dword ptr [ebp-10],eax
 00783EBE    mov         ebx,1
 00783EC3    lea         eax,[ebp-4]
 00783EC6    push        eax
 00783EC7    mov         eax,dword ptr [ebp-8]
 00783ECA    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783ED0    mov         ecx,ebx
 00783ED2    mov         edx,7
 00783ED7    call        TStringGrid.GetCells
 00783EDC    lea         edx,[ebp-92]
 00783EE2    mov         eax,dword ptr [ebp-4]
 00783EE5    call        00695720
 00783EEA    test        al,al
>00783EEC    jne         00783F0A
 00783EEE    mov         eax,[009037B8];gvar_009037B8:?
 00783EF3    test        eax,eax
>00783EF5    je          00783EFC
 00783EF7    cmp         ebx,dword ptr [eax-4]
>00783EFA    jb          00783F01
 00783EFC    call        @BoundErr
 00783F01    mov         edx,dword ptr ds:[784164];0x80 gvar_00784164
 00783F07    or          dword ptr [eax+ebx*4],edx
 00783F0A    mov         eax,[009037B8];gvar_009037B8:?
 00783F0F    test        eax,eax
>00783F11    je          00783F18
 00783F13    cmp         ebx,dword ptr [eax-4]
>00783F16    jb          00783F1D
 00783F18    call        @BoundErr
 00783F1D    mov         edx,dword ptr ds:[784168];0x0 gvar_00784168
 00783F23    cmp         edx,dword ptr [eax+ebx*4]
>00783F26    je          00783F36
 00783F28    add         dword ptr ds:[9037BC],1;gvar_009037BC
>00783F2F    jno         00783F36
 00783F31    call        @IntOver
 00783F36    inc         ebx
 00783F37    dec         dword ptr [ebp-10]
>00783F3A    jne         00783EC3
 00783F3C    mov         eax,[009037BC];gvar_009037BC
 00783F41    mov         dword ptr [ebp-0C],eax
 00783F44    cmp         dword ptr [ebp-0C],0
>00783F48    je          0078411C
 00783F4E    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 00783F53    mov         eax,dword ptr [eax]
 00783F55    mov         eax,dword ptr [eax+3C0]
 00783F5B    mov         eax,dword ptr [eax+2C8]
 00783F61    mov         edx,dword ptr ds:[7C40E8];^'Errors in output table'
 00783F67    mov         ecx,dword ptr [eax]
 00783F69    call        dword ptr [ecx+3C]
 00783F6C    mov         eax,dword ptr [ebp-8]
 00783F6F    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783F75    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 00783F7B    sub         eax,1
>00783F7E    jno         00783F85
 00783F80    call        @IntOver
 00783F85    test        eax,eax
>00783F87    jle         007840FF
 00783F8D    mov         dword ptr [ebp-10],eax
 00783F90    mov         ebx,1
 00783F95    mov         eax,[009037B8];gvar_009037B8:?
 00783F9A    test        eax,eax
>00783F9C    je          00783FA3
 00783F9E    cmp         ebx,dword ptr [eax-4]
>00783FA1    jb          00783FA8
 00783FA3    call        @BoundErr
 00783FA8    mov         edx,dword ptr ds:[784168];0x0 gvar_00784168
 00783FAE    cmp         edx,dword ptr [eax+ebx*4]
>00783FB1    je          007840F5
 00783FB7    lea         eax,[ebp-4]
 00783FBA    call        @UStrClr
 00783FBF    mov         esi,7
 00783FC4    mov         eax,[009037B8];gvar_009037B8:?
 00783FC9    test        eax,eax
>00783FCB    je          00783FD2
 00783FCD    cmp         ebx,dword ptr [eax-4]
>00783FD0    jb          00783FD7
 00783FD2    call        @BoundErr
 00783FD7    mov         edx,esi
 00783FD9    cmp         edx,1F
>00783FDC    ja          00783FE2
 00783FDE    bt          dword ptr [eax+ebx*4],edx
>00783FE2    jae         00784018
 00783FE4    push        dword ptr [ebp-4]
 00783FE7    lea         eax,[ebp-98]
 00783FED    push        eax
 00783FEE    mov         eax,dword ptr [ebp-8]
 00783FF1    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00783FF7    xor         ecx,ecx
 00783FF9    mov         edx,esi
 00783FFB    call        TStringGrid.GetCells
 00784000    push        dword ptr [ebp-98]
 00784006    push        784178;', '
 0078400B    lea         eax,[ebp-4]
 0078400E    mov         edx,3
 00784013    call        @UStrCatN
 00784018    inc         esi
 00784019    cmp         esi,8
>0078401C    jne         00783FC4
 0078401E    lea         eax,[ebp-9C]
 00784024    push        eax
 00784025    lea         eax,[ebp-0C0]
 0078402B    push        eax
 0078402C    mov         eax,dword ptr [ebp-8]
 0078402F    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00784035    mov         ecx,ebx
 00784037    mov         edx,1
 0078403C    call        TStringGrid.GetCells
 00784041    mov         eax,dword ptr [ebp-0C0]
 00784047    mov         dword ptr [ebp-0BC],eax
 0078404D    mov         byte ptr [ebp-0B8],11
 00784054    lea         eax,[ebp-0C4]
 0078405A    push        eax
 0078405B    mov         eax,dword ptr [ebp-8]
 0078405E    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00784064    mov         ecx,ebx
 00784066    mov         edx,2
 0078406B    call        TStringGrid.GetCells
 00784070    mov         eax,dword ptr [ebp-0C4]
 00784076    mov         dword ptr [ebp-0B4],eax
 0078407C    mov         byte ptr [ebp-0B0],11
 00784083    lea         eax,[ebp-0C8]
 00784089    push        eax
 0078408A    mov         eax,dword ptr [ebp-8]
 0078408D    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00784093    mov         ecx,ebx
 00784095    mov         edx,3
 0078409A    call        TStringGrid.GetCells
 0078409F    mov         eax,dword ptr [ebp-0C8]
 007840A5    mov         dword ptr [ebp-0AC],eax
 007840AB    mov         byte ptr [ebp-0A8],11
 007840B2    mov         eax,dword ptr [ebp-4]
 007840B5    mov         dword ptr [ebp-0A4],eax
 007840BB    mov         byte ptr [ebp-0A0],11
 007840C2    lea         edx,[ebp-0BC]
 007840C8    mov         ecx,3
 007840CD    mov         eax,78418C;'%6.2s, %6.3s, %6.5s: %s'
 007840D2    call        Format
 007840D7    mov         edx,dword ptr [ebp-9C]
 007840DD    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 007840E2    mov         eax,dword ptr [eax]
 007840E4    mov         eax,dword ptr [eax+3C0]
 007840EA    mov         eax,dword ptr [eax+2C8]
 007840F0    mov         ecx,dword ptr [eax]
 007840F2    call        dword ptr [ecx+3C]
 007840F5    inc         ebx
 007840F6    dec         dword ptr [ebp-10]
>007840F9    jne         00783F95
 007840FF    mov         eax,dword ptr [ebp-8]
 00784102    mov         eax,dword ptr [eax+420];TDCGroupsFrm.OGrid:TStringGrid
 00784108    mov         edx,dword ptr [eax]
 0078410A    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00784110    mov         eax,[007C4988];^gvar_0090379C:TDCErrorFrm
 00784115    mov         eax,dword ptr [eax]
 00784117    call        TCustomForm.Show
 0078411C    xor         eax,eax
 0078411E    pop         edx
 0078411F    pop         ecx
 00784120    pop         ecx
 00784121    mov         dword ptr fs:[eax],edx
 00784124    push        784159
 00784129    lea         eax,[ebp-0C8]
 0078412F    mov         edx,3
 00784134    call        @UStrArrayClr
 00784139    lea         eax,[ebp-9C]
 0078413F    mov         edx,2
 00784144    call        @UStrArrayClr
 00784149    lea         eax,[ebp-4]
 0078414C    call        @UStrClr
 00784151    ret
>00784152    jmp         @HandleFinally
>00784157    jmp         00784129
 00784159    mov         eax,dword ptr [ebp-0C]
 0078415C    pop         esi
 0078415D    pop         ebx
 0078415E    mov         esp,ebp
 00784160    pop         ebp
 00784161    ret
end;*}

//007841BC
procedure TDCGroupsFrm.SaveOGridToTemp;
begin
{*
 007841BC    push        ebp
 007841BD    mov         ebp,esp
 007841BF    push        0
 007841C1    push        0
 007841C3    push        0
 007841C5    push        ebx
 007841C6    push        esi
 007841C7    push        edi
 007841C8    mov         esi,eax
 007841CA    xor         eax,eax
 007841CC    push        ebp
 007841CD    push        7842BC
 007841D2    push        dword ptr fs:[eax]
 007841D5    mov         dword ptr fs:[eax],esp
 007841D8    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 007841DE    mov         eax,dword ptr [eax+2E0];TStringGrid.FRowCount:Integer
 007841E4    sub         eax,1
>007841E7    jno         007841EE
 007841E9    call        @IntOver
 007841EE    test        eax,eax
>007841F0    jle         007842A1
 007841F6    mov         dword ptr [ebp-4],eax
 007841F9    mov         ebx,1
 007841FE    mov         ecx,ebx
 00784200    xor         edx,edx
 00784202    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00784208    call        TStringGrid.GetObjects
 0078420D    test        eax,eax
>0078420F    je          00784297
 00784215    mov         ecx,ebx
 00784217    xor         edx,edx
 00784219    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 0078421F    call        TStringGrid.GetObjects
 00784224    mov         edx,dword ptr ds:[765EF4];TDCIoLine
 0078422A    call        @IsClass
 0078422F    test        al,al
>00784231    je          00784266
 00784233    mov         ecx,ebx
 00784235    xor         edx,edx
 00784237    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 0078423D    call        TStringGrid.GetObjects
 00784242    mov         edi,eax
 00784244    lea         eax,[ebp-8]
 00784247    push        eax
 00784248    mov         ecx,ebx
 0078424A    mov         edx,7
 0078424F    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00784255    call        TStringGrid.GetCells
 0078425A    mov         edx,dword ptr [ebp-8]
 0078425D    mov         eax,edi
 0078425F    mov         ecx,dword ptr [eax]
 00784261    call        dword ptr [ecx+24]
>00784264    jmp         00784297
 00784266    mov         ecx,ebx
 00784268    xor         edx,edx
 0078426A    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00784270    call        TStringGrid.GetObjects
 00784275    mov         edi,eax
 00784277    lea         eax,[ebp-0C]
 0078427A    push        eax
 0078427B    mov         ecx,ebx
 0078427D    mov         edx,7
 00784282    mov         eax,dword ptr [esi+420];TDCGroupsFrm.OGrid:TStringGrid
 00784288    call        TStringGrid.GetCells
 0078428D    mov         edx,dword ptr [ebp-0C]
 00784290    mov         eax,edi
 00784292    mov         ecx,dword ptr [eax]
 00784294    call        dword ptr [ecx+24]
 00784297    inc         ebx
 00784298    dec         dword ptr [ebp-4]
>0078429B    jne         007841FE
 007842A1    xor         eax,eax
 007842A3    pop         edx
 007842A4    pop         ecx
 007842A5    pop         ecx
 007842A6    mov         dword ptr fs:[eax],edx
 007842A9    push        7842C3
 007842AE    lea         eax,[ebp-0C]
 007842B1    mov         edx,2
 007842B6    call        @UStrArrayClr
 007842BB    ret
>007842BC    jmp         @HandleFinally
>007842C1    jmp         007842AE
 007842C3    pop         edi
 007842C4    pop         esi
 007842C5    pop         ebx
 007842C6    mov         esp,ebp
 007842C8    pop         ebp
 007842C9    ret
*}
end;

//007842CC
procedure TStringGrid.DefaultSelection;
begin
{*
 007842CC    push        ebx
 007842CD    mov         ebx,eax
 007842CF    push        0
 007842D1    mov         ecx,1
 007842D6    mov         edx,1
 007842DB    mov         eax,ebx
 007842DD    call        006BDAA8
 007842E2    mov         edx,7C40FC
 007842E7    mov         eax,ebx
 007842E9    call        006C0FA8
 007842EE    pop         ebx
 007842EF    ret
*}
end;

Initialization
Finalization
//007842F0
{*
 007842F0    push        ebp
 007842F1    mov         ebp,esp
 007842F3    xor         eax,eax
 007842F5    push        ebp
 007842F6    push        7844A3
 007842FB    push        dword ptr fs:[eax]
 007842FE    mov         dword ptr fs:[eax],esp
 00784301    inc         dword ptr ds:[9037AC]
>00784307    jne         00784495
 0078430D    mov         eax,9037B0;gvar_009037B0:?
 00784312    mov         edx,dword ptr ds:[77C6F4];:6
 00784318    call        @DynArrayClear
 0078431D    mov         eax,9037B8;gvar_009037B8:?
 00784322    mov         edx,dword ptr ds:[77C72C];:7
 00784328    call        @DynArrayClear
 0078432D    mov         eax,7C405C;^'Delayed Controls'
 00784332    call        @UStrClr
 00784337    mov         eax,7C4060;^'Cause - Effect'
 0078433C    call        @UStrClr
 00784341    mov         eax,7C4064;^'Control inputs'
 00784346    call        @UStrClr
 0078434B    mov         eax,7C4068;^'Control outputs'
 00784350    call        @UStrClr
 00784355    mov         eax,7C406C;^'Edit values'
 0078435A    call        @UStrClr
 0078435F    mov         eax,7C4070;^'Row select'
 00784364    call        @UStrClr
 00784369    mov         eax,7C4074;^'Number of inputs: %d'
 0078436E    call        @UStrClr
 00784373    mov         eax,7C4078;^'Number of outputs: %d'
 00784378    call        @UStrClr
 0078437D    mov         eax,7C407C;^'Panel ID of the address or input/output'
 00784382    call        @UStrClr
 00784387    mov         eax,7C4080;^'Loop ID of address or IO controller'
 0078438C    call        @UStrClr
 00784391    mov         eax,7C4084;^'Address ID of address or input/output id'
 00784396    call        @UStrClr
 0078439B    mov         eax,7C4088;^'Device type or input/output function'
 007843A0    call        @UStrClr
 007843A5    mov         eax,7C408C;^'Control group A of the address or panel input.
The same entry as in the ad...
 007843AA    call        @UStrClr
 007843AF    mov         eax,7C4090;^'Control group B of the address or panel input.
The same entry as in the ad...
 007843B4    call        @UStrClr
 007843B9    mov         eax,7C4094;^'Control group B2 of the address or panel input.
The same entry as in the a...
 007843BE    call        @UStrClr
 007843C3    mov         eax,7C4098;^'Control Group ID for delayed control %d'
 007843C8    call        @UStrClr
 007843CD    mov         eax,7C409C;^'Delay time (mm:ss) for delayed control %d'
 007843D2    call        @UStrClr
 007843D7    mov         eax,7C40A0;^'Event type(s) that trigger delayed control %d'
 007843DC    call        @UStrClr
 007843E1    mov         eax,7C40A4;^'Device type of output or
Output line type:
CCO - Clean Contact Output
MR...
 007843E6    call        @UStrClr
 007843EB    mov         eax,7C40A8;^'Control groups that activate this output'
 007843F0    call        @UStrClr
 007843F5    mov         eax,7C40AC;^'Panel'
 007843FA    call        @UStrClr
 007843FF    mov         eax,7C40B0;^'Addr'
 00784404    call        @UStrClr
 00784409    mov         eax,7C40B4;^'Type/Function'
 0078440E    call        @UStrClr
 00784413    mov         eax,7C40B8;^'CtrlA'
 00784418    call        @UStrClr
 0078441D    mov         eax,7C40BC;^'CtrlB'
 00784422    call        @UStrClr
 00784427    mov         eax,7C40C0;^'CtrlB2'
 0078442C    call        @UStrClr
 00784431    mov         eax,7C40C4;^'CtrlC'
 00784436    call        @UStrClr
 0078443B    mov         eax,7C40C8;^'Delay'
 00784440    call        @UStrClr
 00784445    mov         eax,7C40CC;^'Event'
 0078444A    call        @UStrClr
 0078444F    mov         eax,7C40D0;^'Type/Input'
 00784454    call        @UStrClr
 00784459    mov         eax,7C40D4;^'Output function'
 0078445E    call        @UStrClr
 00784463    mov         eax,7C40D8;^'Output 2 function'
 00784468    call        @UStrClr
 0078446D    mov         eax,7C40DC;^'Ctrl groups'
 00784472    call        @UStrClr
 00784477    mov         eax,7C40E0;^'Text'
 0078447C    call        @UStrClr
 00784481    mov         eax,7C40E4;^'Errors in input table'
 00784486    call        @UStrClr
 0078448B    mov         eax,7C40E8;^'Errors in output table'
 00784490    call        @UStrClr
 00784495    xor         eax,eax
 00784497    pop         edx
 00784498    pop         ecx
 00784499    pop         ecx
 0078449A    mov         dword ptr fs:[eax],edx
 0078449D    push        7844AA
 007844A2    ret
>007844A3    jmp         @HandleFinally
>007844A8    jmp         007844A2
 007844AA    pop         ebp
 007844AB    ret
*}
end.