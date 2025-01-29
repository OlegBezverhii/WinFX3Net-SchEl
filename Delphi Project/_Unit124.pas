//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit124;

interface

uses
  SysUtils, Classes, System.TypInfo, System.Classes, FXLicenseManagerFrm, System.Generics.Collections, System.Generics.Defaults, FXMain, Vcl.StdActns, Vcl.ComCtrls, Vcl.StdCtrls, System.Generics.Defaults, Vcl.Dialogs, Vcl.Controls, System.Generics.Collections, System.Rtti, System.Generics.Defaults, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, Vcl.ExtCtrls, FXIniFiles, Vcl.Buttons, System.Generics.Collections, FXOverwriteDialog, FXEsaFileMerge, FXAboutFrames, Vcl.Samples.Spin, Vcl.Mask, Vcl.Grids, FXNetVisiblePanelsDlg, FXNetFrames, FXLcToSlcErrorDlg, FXPDFrames, FXADFrames, FXControlsFrameUnit, FXADSumFrames;

type
  TLicFile = class(TObject)
  published
    function Read:Boolean;//00786BA8
    destructor Destroy();//00786B7C
    constructor Create(fn:string);//00786AF0
  public
    FFilePath:string;//f4
    FFileName:string;//f8
    FVersion:byte;//fC
    FRecordId:word;//fE
    FProduct:word;//f10
    FFacility:word;//f12
    FDistributor:string;//f14
    FLicensee:string;//f18
    FSerialNum:string;//f1C
    FExpDate:TDateTime;//f20
    FFeatures:TStringList;//f28
  end;
  TLicenseManager = class(TObject)
  published
    function IsInLicFiles(LicFile:TLicFile):Integer;//007878CC
    function AddLicFile(LicFile:TLicFile):Integer;//00787304
    function Delete(indx:Integer):Boolean;//00787500
    function Activate(indx:Integer):Boolean;//00787210
    destructor Destroy();//007871E4
    constructor Create;//007871A4
    function AddNewFile(fname:string):Boolean;//00787318
    procedure FindLicFiles;//00787558
  public
    FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile>;//f4
    FActive:Integer;//f8
  end;
  TLicenseManagerForm = class(TForm)
  published
    ListView1:TListView;//f3C0
    ListBox1:TListBox;//f3C4
    btnAdd:TButton;//f3C8
    btnActivate:TButton;//f3CC
    btnDelete:TButton;//f3D0
    btnFind:TButton;//f3D4
    OpenDialog:TOpenDialog;//f3D8
    ImageList1:TImageList;//f3DC
    Label1:TLabel;//f3E0
    Label2:TLabel;//f3E4
    procedure FormCreate(Sender:TObject);//0078677C
    procedure btnFindClick(Sender:TObject);//007868C4
    procedure FormShow(Sender:TObject);//0078679C
    procedure FormDestroy(Sender:TObject);//00786790
    procedure btnDeleteClick(Sender:TObject);//00786870
    procedure ListView1Update;//00786974
    procedure ListView1SelectItem(Sender:TObject; Item:TListItem; Selected:Boolean);//007868DC
    procedure btnActivateClick(Sender:TObject);//00786828
    procedure btnAddClick(Sender:TObject);//007867B4
  end;
  TArray<FXLicenseManagerFrm.TLicFile> = array of TLicFile;
//elSize = 4;
  TEnumerator<FXLicenseManagerFrm.TLicFile> = class(TObject)
  published
    function TLicFile>.MoveNext:Boolean;//00787A10
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXLicenseManagerFrm.TLicFile> = class(TObject)
  published
    //procedure TLicFile>.ToArray(?:?);//0078795C
    function TLicFile>.GetEnumerator:TEnumerator<FXLicenseManagerFrm.TLicFile>;//00787954
    destructor TLicFile>.Destroy();//00787930
  public
    destructor TLicFile>.Destroy(); virtual;//00787930
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TLicFile>.ToArray(?:?); virtual;//v4//0078795C
  end;
  TList<FXLicenseManagerFrm.TLicFile>.arrayofT = array of TLicFile;
//elSize = 4;
  TCollectionNotifyEvent<FXLicenseManagerFrm.TLicFile> = procedure(Sender:TObject; const Item:TLicFile; Action:TCollectionNotification) of object;;
  TList<FXLicenseManagerFrm.TLicFile>.TEnumerator = class(TEnumerator<FXLicenseManagerFrm.TLicFile>)
  published
    function TLicFile>.TEnumerator.MoveNext:Boolean;//00787CF8
    constructor sub_00787CB4(AList:TList<FXLicenseManagerFrm.TLicFile>);//00787CB4
  public
    FList:TList<FXLicenseManagerFrm.TLicFile>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00787CA4
    procedure v4; virtual;//v4//00787CAC
  end;
  TList<FXLicenseManagerFrm.TLicFile> = class(TEnumerable<FXLicenseManagerFrm.TLicFile>)
  published
    procedure TLicFile>.Add(Value:TLicFile);//00787C54
    //procedure TLicFile>.Error(Msg:string; Data:NativeInt; ?:?);//00787C1C
    procedure TLicFile>.GetEnumerator;//00787C78
    //procedure TLicFile>.ToArray(?:?);//00787C64
    constructor sub_00787B20(AComparer:IComparer<FXLicenseManagerFrm.TLicFile>);//00787B20
    constructor sub_00787AA8;//00787AA8
    destructor TLicFile>.Destroy();//00787BD0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXLicenseManagerFrm.TLicFile>.arrayofT;//f20
    FComparer:IComparer<FXLicenseManagerFrm.TLicFile>;//f24
    FOnNotify:TCollectionNotifyEvent<FXLicenseManagerFrm.TLicFile>;//f28
    destructor TLicFile>.Destroy(); virtual;//00787BD0
    procedure v0; virtual;//v0//00787A88
    //procedure TLicFile>.ToArray(?:?); virtual;//v4//00787C64
    //procedure v8(?:?); virtual;//v8//00787A90
    //procedure TLicFile>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00787C1C
  end;
  TObjectList<FXLicenseManagerFrm.TLicFile> = class(TList<FXLicenseManagerFrm.TLicFile>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00787D44(AOwnsObjects:Boolean);//00787D44
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//00787D18
  end;
  TComparer<FXLicenseManagerFrm.TLicFile> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TLicFile>.Default(?:?);//00787D88
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TSpeedButton = class(TSpeedButton)
  end;
  TMainForm = class(TForm)
  published
    MainMenu:TMainMenu;//f3C0
    FileMenu:TMenuItem;//f3C4
    FileNewItem:TMenuItem;//f3C8
    FileOpenItem:TMenuItem;//f3CC
    FileMergeFXItem:TMenuItem;//f3D0
    FileMergeEsaItem:TMenuItem;//f3D4
    FileSaveItem:TMenuItem;//f3D8
    FileSaveAsItem:TMenuItem;//f3DC
    N6:TMenuItem;//f3E0
    FileImportItem:TMenuItem;//f3E4
    FileExportItem:TMenuItem;//f3E8
    FilePrintItem:TMenuItem;//f3EC
    FilePrintSetupItem:TMenuItem;//f3F0
    FileExitItem:TMenuItem;//f3F4
    DataMenu:TMenuItem;//f3F8
    DataNetItem:TMenuItem;//f3FC
    DataGeneralItem:TMenuItem;//f400
    DataAddressItem:TMenuItem;//f404
    DataConfigInfoItem:TMenuItem;//f408
    DataControlZones:TMenuItem;//f40C
    DataAddrReportItem:TMenuItem;//f410
    DataDelayedControls:TMenuItem;//f414
    N5:TMenuItem;//f418
    DataSummaryItem:TMenuItem;//f41C
    ToolsMenu:TMenuItem;//f420
    ToolsReceiveItem:TMenuItem;//f424
    ToolsSendItem:TMenuItem;//f428
    Listallmenus1:TMenuItem;//f42C
    SettingsMenu:TMenuItem;//f430
    SettingsLanguage:TMenuItem;//f434
    SettingsDisplayFont:TMenuItem;//f438
    SettingsSpecials:TMenuItem;//f43C
    DefaultDataFolder:TMenuItem;//f440
    SpeedBar:TPanel;//f444
    FileNewBtn:TSpeedButton;//f448
    FileOpenBtn:TSpeedButton;//f44C
    FileSaveBtn:TSpeedButton;//f450
    FileSaveAsBtn:TSpeedButton;//f454
    FilePrintBtn:TSpeedButton;//f458
    FilePrintSetupBtn:TSpeedButton;//f45C
    FileExitBtn:TSpeedButton;//f460
    DataNetBtn:TSpeedButton;//f464
    DataGeneralBtn:TSpeedButton;//f468
    DataAddressBtn:TSpeedButton;//f46C
    DataSummaryBtn:TSpeedButton;//f470
    ToolsReceiveBtn:TSpeedButton;//f474
    ToolsSendBtn:TSpeedButton;//f478
    ErrorBtn:TSpeedButton;//f47C
    lbInternalTesting:TLabel;//f480
    OpenDialog:TOpenDialog;//f484
    SaveDialog:TSaveDialog;//f488
    PrintSetupDialog:TPrinterSetupDialog;//f48C
    FontDialog1:TFontDialog;//f490
    tvFXNet:TTreeView;//f494
    Splitter1:TSplitter;//f498
    StatusBar1:TStatusBar;//f4B8
    LicTimer:TTimer;//f4BC
    StartupFormTimer:TTimer;//f4C0
    ErrorFlashTimer:TTimer;//f4C4
    Panel1:TPanel;//f4C8
    Debug:TMenuItem;//f4CC
    AddrExportBtn:TButton;//f4D0
    MemTimer:TTimer;//f4D4
    N2:TMenuItem;//f4D8
    SettingsLicenses:TMenuItem;//f4DC
    procedure ToolsSendClick(Sender:TObject);//00790A44
    procedure ToolsReceiveClick(Sender:TObject);//00790908
    procedure DataControlZonesClick(Sender:TObject);//007908D0
    procedure Listallmenus1Click(Sender:TObject);//00790EC4
    procedure FontDialog1Apply(Sender:TObject; Wnd:Word);//007925AC
    procedure SettingsDisplayFontClick(Sender:TObject);//0079251C
    procedure SettingsLanguageClick(Sender:TObject);//00792470
    procedure DataNetClick(Sender:TObject);//0079070C
    procedure FileExitClick(Sender:TObject);//00790704
    procedure FilePrintSetupClick(Sender:TObject);//00790664
    procedure DataGeneralClick(Sender:TObject);//00790778
    procedure DataConfigInfoClick(Sender:TObject);//00790894
    procedure DataSummaryClick(Sender:TObject);//00790864
    procedure DataAddressClick(Sender:TObject);//007907C0
    procedure DataDelayedControlsClick(Sender:TObject);//0079290C
    procedure ErrorBtnClick(Sender:TObject);//0078F1A0
    procedure ErrorFlashTimerTimer(Sender:TObject);//00792CD4
    procedure DebugClick(Sender:TObject);//007925D0
    procedure SettingsLicensesClick(Sender:TObject);//00792AC4
    procedure MemTimerTimer(Sender:TObject);//0078EC6C
    procedure AddrExportBtnClick(Sender:TObject);//00793378
    procedure FXNetFrame1Exit(Sender:TObject);//00792C68
    procedure DataFrameExit;//00792C20
    procedure DefaultDataFolderClick(Sender:TObject);//007927A8
    procedure FXPDFrame1Exit(Sender:TObject);//00792C7C
    procedure LicTimerTimer(Sender:TObject);//00792C04
    procedure FXADSummaryFrame1Exit(Sender:TObject);//00792CA4
    procedure FXADFrame1Exit(Sender:TObject);//00792C90
    procedure FormKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);//0078E39C
    procedure Translate(IniFile:TFXIniFile);//0078C024
    procedure FormCloseQuery(Sender:TObject; var CanClose:Boolean);//0078BF94
    procedure tvFXNetChanging(Sender:TObject; Node:TTreeNode; var AllowChange:Boolean);//0078E42C
    procedure UpdateStatusbar;//0078EC74
    procedure UpdateTreeView;//0078E5B8
    procedure tvFXNetChange(Sender:TObject; Node:TTreeNode);//0078E45C
    procedure tvFXNetDblClick(Sender:TObject);//0078E56C
    procedure SettingsSpecialsClick(Sender:TObject);//00792934
    procedure DataAddrReportItemClick(Sender:TObject);//007908F8
    procedure StartupFormTimerTimer(Sender:TObject);//00792CB8
    procedure FormClose(Sender:TObject; var Action:UITypes.TCloseAction);//0078BB08
    procedure FormShow(Sender:TObject);//0078BAE4
    procedure FormCreate(Sender:TObject);//0078B624
    procedure EnableFXNetLevelMenuItems;//0078ECF4
    procedure FileSaveClick(Sender:TObject);//007904D8
    procedure FileMergeEsaClick(Sender:TObject);//00790498
    procedure FileMergeClick(Sender:TObject);//00790398
    procedure FileSaveAsClick(Sender:TObject);//00790504
    procedure FilePrintClick(Sender:TObject);//00790590
    procedure FileExportClick(Sender:TObject);//00790568
    procedure FileImportClick(Sender:TObject);//00790540
    function TryReadFile(FileToRead:string):Boolean;//0078F3DC
    procedure DisableAllMenuItems;//0078F1C8
    procedure EnablePanelLevelMenuItems;//0078EF7C
    function GetNewFileName(var FileName:string):Boolean;//0078F5DC
    procedure FileOpenClick(Sender:TObject);//007900C4
    procedure FileNewClick(Sender:TObject);//0078FEA4
    function TrySaveFile:Boolean;//0078F80C
  public
    FXAboutFrame1:TFXAboutFrame;//f49C
    FXNetFrame1:TFXNetFrame;//f4A0
    FXPDFrame1:TFXPDFrame;//f4A4
    FXADFrame1:TFXADFrame;//f4A8
    FXEsmiADFrame:TFXADFrame;//f4AC
    FXADSummaryFrame1:TFXADSummaryFrame;//f4B0
    FXCZonesFrame1:TFXControlsFrame;//f4B4
    UseMonitor:Integer;//f4E0
    //procedure sub_0078AF44(?:?); dynamic;//0078AF44
  end;
    procedure sub_00787A60(?:TList<FXLicenseManagerFrm.TLicFile>);//00787A60
    //procedure sub_00787A6C(?:?; ?:?);//00787A6C
    //procedure sub_00787A78(?:?; ?:?; ?:?);//00787A78
    procedure sub_00787A88;//00787A88
    //procedure sub_00787A90(?:?);//00787A90
    //function sub_00787C88(?:?):?;//00787C88
    procedure sub_00787CA4;//00787CA4
    procedure sub_00787CAC;//00787CAC
    //procedure sub_00787D18(?:?; ?:?);//00787D18
    //procedure sub_0078AF44(?:?);//0078AF44
    //function sub_0078FA44(?:?):?;//0078FA44
    //procedure sub_0078FAE8(?:TMainForm; ?:?; ?:?);//0078FAE8
    //procedure sub_00790BA0(?:TPopupMenu; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00790BA0
    //function sub_00791940(?:TFXIniFile; ?:?; ?:?; ?:?):?;//00791940
    //procedure sub_00791BD4(?:?; ?:?; ?:?);//00791BD4
    //function sub_00792AD4:?;//00792AD4
    procedure sub_00792DA0;//00792DA0
    procedure sub_00792DA8;//00792DA8
    procedure sub_00792DB0;//00792DB0
    //procedure sub_00792DB8(?:?; ?:?; ?:?; ?:?);//00792DB8
    //procedure sub_00792DE8(?:TFXPAD; ?:?; ?:?; ?:?; ?:?);//00792DE8

implementation

{$R *.DFM}

//0078677C
procedure TLicenseManagerForm.FormCreate(Sender:TObject);
begin
{*
 0078677C    mov         dl,1
 0078677E    mov         eax,[007847F8];TLicenseManager
 00786783    call        TLicenseManager.Create;TLicenseManager.Create
 00786788    mov         [009037CC],eax;gvar_009037CC:TLicenseManager
 0078678D    ret
*}
end;

//00786790
procedure TLicenseManagerForm.FormDestroy(Sender:TObject);
begin
{*
 00786790    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 00786795    call        TObject.Free
 0078679A    ret
*}
end;

//0078679C
procedure TLicenseManagerForm.FormShow(Sender:TObject);
begin
{*
 0078679C    push        ebx
 0078679D    mov         ebx,eax
 0078679F    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007867A4    call        TLicenseManager.FindLicFiles
 007867A9    mov         eax,ebx
 007867AB    call        TLicenseManagerForm.ListView1Update
 007867B0    pop         ebx
 007867B1    ret
*}
end;

//007867B4
procedure TLicenseManagerForm.btnAddClick(Sender:TObject);
begin
{*
 007867B4    push        ebp
 007867B5    mov         ebp,esp
 007867B7    push        0
 007867B9    push        ebx
 007867BA    mov         ebx,eax
 007867BC    xor         eax,eax
 007867BE    push        ebp
 007867BF    push        78681B
 007867C4    push        dword ptr fs:[eax]
 007867C7    mov         dword ptr fs:[eax],esp
 007867CA    mov         eax,dword ptr [ebx+3D8];TLicenseManagerForm.OpenDialog:TOpenDialog
 007867D0    mov         edx,dword ptr [eax]
 007867D2    call        dword ptr [edx+54];TCommonDialog.Execute
 007867D5    test        al,al
>007867D7    je          00786805
 007867D9    lea         edx,[ebp-4]
 007867DC    mov         eax,dword ptr [ebx+3D8];TLicenseManagerForm.OpenDialog:TOpenDialog
 007867E2    call        TOpenDialog.GetFileName
 007867E7    mov         edx,dword ptr [ebp-4]
 007867EA    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007867EF    call        TLicenseManager.AddNewFile
 007867F4    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007867F9    call        TLicenseManager.FindLicFiles
 007867FE    mov         eax,ebx
 00786800    call        TLicenseManagerForm.ListView1Update
 00786805    xor         eax,eax
 00786807    pop         edx
 00786808    pop         ecx
 00786809    pop         ecx
 0078680A    mov         dword ptr fs:[eax],edx
 0078680D    push        786822
 00786812    lea         eax,[ebp-4]
 00786815    call        @UStrClr
 0078681A    ret
>0078681B    jmp         @HandleFinally
>00786820    jmp         00786812
 00786822    pop         ebx
 00786823    pop         ecx
 00786824    pop         ebp
 00786825    ret
*}
end;

//00786828
procedure TLicenseManagerForm.btnActivateClick(Sender:TObject);
begin
{*
 00786828    push        ebx
 00786829    mov         ebx,eax
 0078682B    mov         eax,dword ptr [ebx+3C0];TLicenseManagerForm.ListView1:TListView
 00786831    call        005489C4
 00786836    call        TListItem.GetIndex
 0078683B    inc         eax
>0078683C    je          0078686B
 0078683E    mov         eax,dword ptr [ebx+3C0];TLicenseManagerForm.ListView1:TListView
 00786844    call        005489C4
 00786849    call        TListItem.GetIndex
 0078684E    mov         edx,eax
 00786850    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 00786855    call        TLicenseManager.Activate
 0078685A    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 0078685F    call        TLicenseManager.FindLicFiles
 00786864    mov         eax,ebx
 00786866    call        TLicenseManagerForm.ListView1Update
 0078686B    pop         ebx
 0078686C    ret
*}
end;

//00786870
procedure TLicenseManagerForm.btnDeleteClick(Sender:TObject);
begin
{*
 00786870    push        esi
 00786871    mov         esi,eax
 00786873    mov         eax,dword ptr [esi+3C0];TLicenseManagerForm.ListView1:TListView
 00786879    call        005489C4
 0078687E    call        TListItem.GetIndex
 00786883    inc         eax
>00786884    je          007868C1
 00786886    mov         eax,dword ptr [esi+3C0];TLicenseManagerForm.ListView1:TListView
 0078688C    call        005489C4
 00786891    call        TListItem.GetIndex
 00786896    mov         edx,eax
 00786898    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 0078689D    call        TLicenseManager.Delete
 007868A2    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007868A7    call        TLicenseManager.FindLicFiles
 007868AC    mov         eax,esi
 007868AE    call        TLicenseManagerForm.ListView1Update
 007868B3    mov         eax,dword ptr [esi+3C4];TLicenseManagerForm.ListBox1:TListBox
 007868B9    mov         edx,dword ptr [eax]
 007868BB    call        dword ptr [edx+114];TCustomListBox.Clear
 007868C1    pop         esi
 007868C2    ret
*}
end;

//007868C4
procedure TLicenseManagerForm.btnFindClick(Sender:TObject);
begin
{*
 007868C4    push        ebx
 007868C5    mov         ebx,eax
 007868C7    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007868CC    call        TLicenseManager.FindLicFiles
 007868D1    mov         eax,ebx
 007868D3    call        TLicenseManagerForm.ListView1Update
 007868D8    pop         ebx
 007868D9    ret
*}
end;

//007868DC
procedure TLicenseManagerForm.ListView1SelectItem(Sender:TObject; Item:TListItem; Selected:Boolean);
begin
{*
 007868DC    push        ebp
 007868DD    mov         ebp,esp
 007868DF    push        ecx
 007868E0    push        ebx
 007868E1    push        esi
 007868E2    push        edi
 007868E3    mov         dword ptr [ebp-4],ecx
 007868E6    mov         ebx,eax
 007868E8    mov         eax,dword ptr [ebx+3C4];TLicenseManagerForm.ListBox1:TListBox
 007868EE    mov         edx,dword ptr [eax]
 007868F0    call        dword ptr [edx+114];TCustomListBox.Clear
 007868F6    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007868FB    mov         esi,dword ptr [eax+4]
 007868FE    mov         eax,dword ptr [ebp-4]
 00786901    call        TListItem.GetIndex
 00786906    mov         edi,eax
 00786908    lea         eax,[esi+8]
 0078690B    mov         edx,edi
 0078690D    call        00434534
 00786912    mov         eax,dword ptr [esi+20]
 00786915    mov         esi,dword ptr [eax+edi*4]
 00786918    mov         eax,dword ptr [ebx+3C4];TLicenseManagerForm.ListBox1:TListBox
 0078691E    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00786924    mov         edx,dword ptr [esi+28]
 00786927    mov         ecx,dword ptr [eax]
 00786929    call        dword ptr [ecx+44];TStrings.AddStrings
 0078692C    call        00421148
 00786931    fcomp       qword ptr [esi+20]
 00786934    wait
 00786935    fnstsw      al
 00786937    sahf
 00786938    setb        dl
 0078693B    mov         eax,dword ptr [ebx+3CC];TLicenseManagerForm.btnActivate:TButton
 00786941    mov         ecx,dword ptr [eax]
 00786943    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00786949    mov         eax,dword ptr [ebp-4]
 0078694C    call        TListItem.GetIndex
 00786951    mov         edx,dword ptr ds:[9037CC];gvar_009037CC:TLicenseManager
 00786957    cmp         eax,dword ptr [edx+8]
 0078695A    setne       dl
 0078695D    mov         eax,dword ptr [ebx+3D0];TLicenseManagerForm.btnDelete:TButton
 00786963    mov         ecx,dword ptr [eax]
 00786965    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078696B    pop         edi
 0078696C    pop         esi
 0078696D    pop         ebx
 0078696E    pop         ecx
 0078696F    pop         ebp
 00786970    ret         4
*}
end;

//00786974
procedure TLicenseManagerForm.ListView1Update;
begin
{*
 00786974    push        ebp
 00786975    mov         ebp,esp
 00786977    add         esp,0FFFFFFE8
 0078697A    push        ebx
 0078697B    push        esi
 0078697C    push        edi
 0078697D    xor         edx,edx
 0078697F    mov         dword ptr [ebp-4],edx
 00786982    mov         dword ptr [ebp-8],eax
 00786985    xor         eax,eax
 00786987    push        ebp
 00786988    push        786AE2
 0078698D    push        dword ptr fs:[eax]
 00786990    mov         dword ptr fs:[eax],esp
 00786993    mov         eax,dword ptr [ebp-8]
 00786996    mov         eax,dword ptr [eax+3C0];TLicenseManagerForm.ListView1:TListView
 0078699C    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007869A2    call        TListItems.Clear
 007869A7    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007869AC    mov         eax,dword ptr [eax+4]
 007869AF    mov         eax,dword ptr [eax+8]
 007869B2    sub         eax,1
>007869B5    jno         007869BC
 007869B7    call        @IntOver
 007869BC    test        eax,eax
>007869BE    jl          00786ACC
 007869C4    inc         eax
 007869C5    mov         dword ptr [ebp-0C],eax
 007869C8    xor         ebx,ebx
 007869CA    mov         eax,dword ptr [ebp-8]
 007869CD    mov         eax,dword ptr [eax+3C0];TLicenseManagerForm.ListView1:TListView
 007869D3    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007869D9    call        TListItems.Add
 007869DE    mov         esi,eax
 007869E0    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 007869E5    mov         edi,dword ptr [eax+4]
 007869E8    lea         eax,[edi+8]
 007869EB    mov         edx,ebx
 007869ED    call        00434534
 007869F2    mov         eax,dword ptr [edi+20]
 007869F5    mov         eax,dword ptr [eax+ebx*4]
 007869F8    mov         edx,dword ptr [eax+18]
 007869FB    mov         eax,esi
 007869FD    call        TListItem.SetCaption
 00786A02    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 00786A07    mov         edi,dword ptr [eax+4]
 00786A0A    lea         eax,[edi+8]
 00786A0D    mov         edx,ebx
 00786A0F    call        00434534
 00786A14    mov         eax,dword ptr [edi+20]
 00786A17    mov         eax,dword ptr [eax+ebx*4]
 00786A1A    mov         edx,dword ptr [eax+1C]
 00786A1D    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00786A20    mov         ecx,dword ptr [eax]
 00786A22    call        dword ptr [ecx+3C];TStrings.Add
 00786A25    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 00786A2A    mov         edi,dword ptr [eax+4]
 00786A2D    lea         eax,[edi+8]
 00786A30    mov         edx,ebx
 00786A32    call        00434534
 00786A37    mov         eax,dword ptr [edi+20]
 00786A3A    mov         eax,dword ptr [eax+ebx*4]
 00786A3D    mov         edx,dword ptr [eax+20]
 00786A40    mov         dword ptr [ebp-18],edx
 00786A43    mov         edx,dword ptr [eax+24]
 00786A46    mov         dword ptr [ebp-14],edx
 00786A49    push        dword ptr [ebp-14]
 00786A4C    push        dword ptr [ebp-18]
 00786A4F    lea         edx,[ebp-4]
 00786A52    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 00786A57    call        004220EC
 00786A5C    mov         edx,dword ptr [ebp-4]
 00786A5F    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00786A62    mov         ecx,dword ptr [eax]
 00786A64    call        dword ptr [ecx+3C];TStrings.Add
 00786A67    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 00786A6C    mov         edi,dword ptr [eax+4]
 00786A6F    lea         eax,[edi+8]
 00786A72    mov         edx,ebx
 00786A74    call        00434534
 00786A79    call        00421148
 00786A7E    mov         eax,dword ptr [edi+20]
 00786A81    mov         eax,dword ptr [eax+ebx*4]
 00786A84    fcomp       qword ptr [eax+20]
 00786A87    wait
 00786A88    fnstsw      al
 00786A8A    sahf
>00786A8B    jbe         00786A9D
 00786A8D    mov         ecx,2
 00786A92    xor         edx,edx
 00786A94    mov         eax,esi
 00786A96    call        TListItem.SetImage
>00786A9B    jmp         00786AC2
 00786A9D    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 00786AA2    cmp         ebx,dword ptr [eax+8]
>00786AA5    jne         00786AB7
 00786AA7    mov         ecx,1
 00786AAC    xor         edx,edx
 00786AAE    mov         eax,esi
 00786AB0    call        TListItem.SetImage
>00786AB5    jmp         00786AC2
 00786AB7    xor         ecx,ecx
 00786AB9    xor         edx,edx
 00786ABB    mov         eax,esi
 00786ABD    call        TListItem.SetImage
 00786AC2    inc         ebx
 00786AC3    dec         dword ptr [ebp-0C]
>00786AC6    jne         007869CA
 00786ACC    xor         eax,eax
 00786ACE    pop         edx
 00786ACF    pop         ecx
 00786AD0    pop         ecx
 00786AD1    mov         dword ptr fs:[eax],edx
 00786AD4    push        786AE9
 00786AD9    lea         eax,[ebp-4]
 00786ADC    call        @UStrClr
 00786AE1    ret
>00786AE2    jmp         @HandleFinally
>00786AE7    jmp         00786AD9
 00786AE9    pop         edi
 00786AEA    pop         esi
 00786AEB    pop         ebx
 00786AEC    mov         esp,ebp
 00786AEE    pop         ebp
 00786AEF    ret
*}
end;

//00786AF0
constructor TLicFile.Create(fn:string);
begin
{*
 00786AF0    push        ebp
 00786AF1    mov         ebp,esp
 00786AF3    push        ecx
 00786AF4    push        ebx
 00786AF5    push        esi
 00786AF6    test        dl,dl
>00786AF8    je          00786B02
 00786AFA    add         esp,0FFFFFFF0
 00786AFD    call        @ClassCreate
 00786B02    mov         dword ptr [ebp-4],ecx
 00786B05    mov         ebx,edx
 00786B07    mov         esi,eax
 00786B09    mov         eax,dword ptr [ebp-4]
 00786B0C    call        @UStrAddRef
 00786B11    xor         eax,eax
 00786B13    push        ebp
 00786B14    push        786B58
 00786B19    push        dword ptr fs:[eax]
 00786B1C    mov         dword ptr fs:[eax],esp
 00786B1F    xor         edx,edx
 00786B21    mov         eax,esi
 00786B23    call        TObject.Create
 00786B28    lea         eax,[esi+8];TLicFile.FFileName:string
 00786B2B    mov         edx,dword ptr [ebp-4]
 00786B2E    call        @UStrAsg
 00786B33    mov         dl,1
 00786B35    mov         eax,[0046F9A0];TStringList
 00786B3A    call        TStringList.Create;TStringList.Create
 00786B3F    mov         dword ptr [esi+28],eax;TLicFile.FFeatures:TStringList
 00786B42    xor         eax,eax
 00786B44    pop         edx
 00786B45    pop         ecx
 00786B46    pop         ecx
 00786B47    mov         dword ptr fs:[eax],edx
 00786B4A    push        786B5F
 00786B4F    lea         eax,[ebp-4]
 00786B52    call        @UStrClr
 00786B57    ret
>00786B58    jmp         @HandleFinally
>00786B5D    jmp         00786B4F
 00786B5F    mov         eax,esi
 00786B61    test        bl,bl
>00786B63    je          00786B74
 00786B65    call        @AfterConstruction
 00786B6A    pop         dword ptr fs:[0]
 00786B71    add         esp,0C
 00786B74    mov         eax,esi
 00786B76    pop         esi
 00786B77    pop         ebx
 00786B78    pop         ecx
 00786B79    pop         ebp
 00786B7A    ret
*}
end;

//00786B7C
destructor TLicFile.Destroy();
begin
{*
 00786B7C    push        ebx
 00786B7D    push        esi
 00786B7E    call        @BeforeDestruction
 00786B83    mov         ebx,edx
 00786B85    mov         esi,eax
 00786B87    mov         eax,dword ptr [esi+28];TLicFile.FFeatures:TStringList
 00786B8A    call        TObject.Free
 00786B8F    mov         dl,0FC
 00786B91    and         dl,bl
 00786B93    mov         eax,esi
 00786B95    call        TObject.Destroy
 00786B9A    test        bl,bl
>00786B9C    jle         00786BA5
 00786B9E    mov         eax,esi
 00786BA0    call        @ClassDestroy
 00786BA5    pop         esi
 00786BA6    pop         ebx
 00786BA7    ret
*}
end;

//00786BA8
function TLicFile.Read:Boolean;
begin
{*
 00786BA8    push        ebp
 00786BA9    mov         ebp,esp
 00786BAB    add         esp,0FFFFFDCC
 00786BB1    push        ebx
 00786BB2    push        esi
 00786BB3    xor         edx,edx
 00786BB5    mov         dword ptr [ebp-234],edx
 00786BBB    mov         dword ptr [ebp-230],edx
 00786BC1    mov         dword ptr [ebp-22C],edx
 00786BC7    mov         dword ptr [ebp-218],edx
 00786BCD    mov         dword ptr [ebp-21C],edx
 00786BD3    mov         dword ptr [ebp-4],eax
 00786BD6    xor         eax,eax
 00786BD8    push        ebp
 00786BD9    push        786F8A
 00786BDE    push        dword ptr fs:[eax]
 00786BE1    mov         dword ptr fs:[eax],esp
 00786BE4    push        10
 00786BE6    mov         eax,dword ptr [ebp-4]
 00786BE9    mov         ecx,dword ptr [eax+8];TLicFile.FFileName:string
 00786BEC    mov         dl,1
 00786BEE    mov         eax,[00472830];TFileStream
 00786BF3    call        TFileStream.Create;TFileStream.Create
 00786BF8    mov         dword ptr [ebp-8],eax
 00786BFB    xor         eax,eax
 00786BFD    push        ebp
 00786BFE    push        786C51
 00786C03    push        dword ptr fs:[eax]
 00786C06    mov         dword ptr fs:[eax],esp
 00786C09    mov         eax,dword ptr [ebp-8]
 00786C0C    mov         edx,dword ptr [eax]
 00786C0E    call        dword ptr [edx];TFileStream.sub_00491B30
 00786C10    cmp         edx,0
>00786C13    jne         00786C1A
 00786C15    cmp         eax,200
>00786C1A    je          00786C28
 00786C1C    xor         ebx,ebx
 00786C1E    call        @TryFinallyExit
>00786C23    jmp         00786F5C
 00786C28    lea         edx,[ebp-213]
 00786C2E    mov         ecx,200
 00786C33    mov         eax,dword ptr [ebp-8]
 00786C36    call        TStream.ReadBuffer
 00786C3B    xor         eax,eax
 00786C3D    pop         edx
 00786C3E    pop         ecx
 00786C3F    pop         ecx
 00786C40    mov         dword ptr fs:[eax],edx
 00786C43    push        786C58
 00786C48    mov         eax,dword ptr [ebp-8]
 00786C4B    call        TObject.Free
 00786C50    ret
>00786C51    jmp         @HandleFinally
>00786C56    jmp         00786C48
 00786C58    mov         dl,80
 00786C5A    lea         eax,[ebp-93]
 00786C60    movzx       ecx,byte ptr [eax-180]
 00786C67    movzx       ebx,byte ptr [eax-100]
 00786C6E    add         ecx,ebx
>00786C70    jno         00786C77
 00786C72    call        @IntOver
 00786C77    movzx       ebx,byte ptr [eax-80]
 00786C7B    add         ecx,ebx
>00786C7D    jno         00786C84
 00786C7F    call        @IntOver
 00786C84    cmp         cl,byte ptr [eax]
>00786C86    je          00786C8F
 00786C88    xor         ebx,ebx
>00786C8A    jmp         00786F5C
 00786C8F    inc         eax
 00786C90    dec         dl
>00786C92    jne         00786C60
 00786C94    movzx       eax,byte ptr [ebp-193]
 00786C9B    mov         dl,7E
 00786C9D    lea         ecx,[ebp-191]
 00786CA3    movzx       ebx,al
 00786CA6    cmp         ebx,7F
>00786CA9    jbe         00786CB0
 00786CAB    call        @BoundErr
 00786CB0    movzx       ebx,byte ptr [ebp+ebx-213]
 00786CB8    not         bl
 00786CBA    movzx       ebx,bl
 00786CBD    push        ebx
 00786CBE    movzx       ebx,byte ptr [ecx]
 00786CC1    pop         esi
 00786CC2    sub         ebx,esi
>00786CC4    jno         00786CCB
 00786CC6    call        @IntOver
 00786CCB    mov         byte ptr [ecx],bl
 00786CCD    movzx       eax,al
 00786CD0    add         eax,1
>00786CD3    jno         00786CDA
 00786CD5    call        @IntOver
 00786CDA    and         eax,7F
 00786CDD    cmp         eax,0FF
>00786CE2    jbe         00786CE9
 00786CE4    call        @BoundErr
 00786CE9    inc         ecx
 00786CEA    dec         dl
>00786CEC    jne         00786CA3
 00786CEE    mov         eax,dword ptr [ebp-4]
 00786CF1    movzx       edx,byte ptr [ebp-192]
 00786CF8    mov         byte ptr [eax+0C],dl;TLicFile.FVersion:byte
 00786CFB    mov         eax,dword ptr [ebp-4]
 00786CFE    movzx       edx,word ptr [ebp-191]
 00786D05    mov         word ptr [eax+0E],dx;TLicFile.FRecordId:word
 00786D09    mov         eax,dword ptr [ebp-4]
 00786D0C    movzx       edx,word ptr [ebp-18F]
 00786D13    mov         word ptr [eax+10],dx;TLicFile.FProduct:word
 00786D17    mov         eax,dword ptr [ebp-4]
 00786D1A    movzx       edx,word ptr [ebp-18D]
 00786D21    mov         word ptr [eax+12],dx;TLicFile.FFacility:word
 00786D25    mov         eax,dword ptr [ebp-4]
 00786D28    add         eax,14;TLicFile.FDistributor:string
 00786D2B    lea         edx,[ebp-18B]
 00786D31    call        @UStrFromString
 00786D36    lea         eax,[ebp-218]
 00786D3C    push        eax
 00786D3D    lea         eax,[ebp-21C]
 00786D43    lea         edx,[ebp-171]
 00786D49    mov         ecx,0
 00786D4E    call        @LStrFromString
 00786D53    mov         eax,dword ptr [ebp-21C]
 00786D59    mov         cl,20
 00786D5B    mov         dl,2C
 00786D5D    call        005DDB14
 00786D62    mov         edx,dword ptr [ebp-218]
 00786D68    mov         eax,dword ptr [ebp-4]
 00786D6B    add         eax,18;TLicFile.FLicensee:string
 00786D6E    call        @UStrFromLStr
 00786D73    mov         eax,dword ptr [ebp-4]
 00786D76    add         eax,1C;TLicFile.FSerialNum:string
 00786D79    lea         edx,[ebp-13E]
 00786D7F    call        @UStrFromString
 00786D84    lea         eax,[ebp-228]
 00786D8A    push        eax
 00786D8B    mov         ecx,4
 00786D90    mov         edx,1
 00786D95    lea         eax,[ebp-12F]
 00786D9B    call        @Copy
 00786DA0    lea         edx,[ebp-228]
 00786DA6    lea         eax,[ebp-0D]
 00786DA9    mov         cl,4
 00786DAB    call        @PStrNCpy
 00786DB0    lea         eax,[ebp-228]
 00786DB6    push        eax
 00786DB7    mov         ecx,2
 00786DBC    mov         edx,5
 00786DC1    lea         eax,[ebp-12F]
 00786DC7    call        @Copy
 00786DCC    lea         edx,[ebp-228]
 00786DD2    lea         eax,[ebp-10]
 00786DD5    mov         cl,2
 00786DD7    call        @PStrNCpy
 00786DDC    lea         eax,[ebp-228]
 00786DE2    push        eax
 00786DE3    mov         ecx,2
 00786DE8    mov         edx,7
 00786DED    lea         eax,[ebp-12F]
 00786DF3    call        @Copy
 00786DF8    lea         edx,[ebp-228]
 00786DFE    lea         eax,[ebp-13]
 00786E01    mov         cl,2
 00786E03    call        @PStrNCpy
 00786E08    lea         eax,[ebp-22C]
 00786E0E    lea         edx,[ebp-13]
 00786E11    call        @UStrFromString
 00786E16    mov         eax,dword ptr [ebp-22C]
 00786E1C    call        StrToInt
 00786E21    cmp         eax,0FFFF
>00786E26    jbe         00786E2D
 00786E28    call        @BoundErr
 00786E2D    push        eax
 00786E2E    lea         eax,[ebp-230]
 00786E34    lea         edx,[ebp-10]
 00786E37    call        @UStrFromString
 00786E3C    mov         eax,dword ptr [ebp-230]
 00786E42    call        StrToInt
 00786E47    cmp         eax,0FFFF
>00786E4C    jbe         00786E53
 00786E4E    call        @BoundErr
 00786E53    push        eax
 00786E54    lea         eax,[ebp-234]
 00786E5A    lea         edx,[ebp-0D]
 00786E5D    call        @UStrFromString
 00786E62    mov         eax,dword ptr [ebp-234]
 00786E68    call        StrToInt
 00786E6D    cmp         eax,0FFFF
>00786E72    jbe         00786E79
 00786E74    call        @BoundErr
 00786E79    pop         edx
 00786E7A    pop         ecx
 00786E7B    call        00420F84
 00786E80    mov         eax,dword ptr [ebp-4]
 00786E83    fstp        qword ptr [eax+20];TLicFile.FExpDate:TDateTime
 00786E86    wait
 00786E87    mov         eax,dword ptr [ebp-4]
 00786E8A    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786E8D    mov         edx,dword ptr [eax]
 00786E8F    call        dword ptr [edx+48];TStringList.Clear
 00786E92    mov         eax,dword ptr [ebp-4]
 00786E95    test        byte ptr [eax+12],1;TLicFile.FFacility:word
>00786E99    je          00786EAB
 00786E9B    mov         eax,dword ptr [ebp-4]
 00786E9E    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786EA1    mov         edx,786FA8;'Control Groups enabled'
 00786EA6    mov         ecx,dword ptr [eax]
 00786EA8    call        dword ptr [ecx+3C];TStringList.Add
 00786EAB    mov         eax,dword ptr [ebp-4]
 00786EAE    test        byte ptr [eax+12],2;TLicFile.FFacility:word
>00786EB2    je          00786EC4
 00786EB4    mov         eax,dword ptr [ebp-4]
 00786EB7    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786EBA    mov         edx,786FE4;'Delayed Alarm enabled'
 00786EBF    mov         ecx,dword ptr [eax]
 00786EC1    call        dword ptr [ecx+3C];TStringList.Add
 00786EC4    mov         eax,dword ptr [ebp-4]
 00786EC7    test        byte ptr [eax+12],4;TLicFile.FFacility:word
>00786ECB    je          00786EDD
 00786ECD    mov         eax,dword ptr [ebp-4]
 00786ED0    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786ED3    mov         edx,78701C;'Detection Parameters enabled'
 00786ED8    mov         ecx,dword ptr [eax]
 00786EDA    call        dword ptr [ecx+3C];TStringList.Add
 00786EDD    mov         eax,dword ptr [ebp-4]
 00786EE0    test        byte ptr [eax+12],8;TLicFile.FFacility:word
>00786EE4    je          00786EF6
 00786EE6    mov         eax,dword ptr [ebp-4]
 00786EE9    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786EEC    mov         edx,787064;'Laser Detectors enabled'
 00786EF1    mov         ecx,dword ptr [eax]
 00786EF3    call        dword ptr [ecx+3C];TStringList.Add
 00786EF6    mov         eax,dword ptr [ebp-4]
 00786EF9    test        byte ptr [eax+12],40;TLicFile.FFacility:word
>00786EFD    je          00786F0F
 00786EFF    mov         eax,dword ptr [ebp-4]
 00786F02    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786F05    mov         edx,7870A0;'Apollo branded detectors enabled'
 00786F0A    mov         ecx,dword ptr [eax]
 00786F0C    call        dword ptr [ecx+3C];TStringList.Add
 00786F0F    mov         eax,dword ptr [ebp-4]
 00786F12    test        byte ptr [eax+12],10;TLicFile.FFacility:word
>00786F16    je          00786F28
 00786F18    mov         eax,dword ptr [ebp-4]
 00786F1B    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786F1E    mov         edx,7870F0;'Reading From Panel enabled'
 00786F23    mov         ecx,dword ptr [eax]
 00786F25    call        dword ptr [ecx+3C];TStringList.Add
 00786F28    mov         eax,dword ptr [ebp-4]
 00786F2B    test        byte ptr [eax+12],20;TLicFile.FFacility:word
>00786F2F    je          00786F41
 00786F31    mov         eax,dword ptr [ebp-4]
 00786F34    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786F37    mov         edx,787134;'Writing To Panel enabled'
 00786F3C    mov         ecx,dword ptr [eax]
 00786F3E    call        dword ptr [ecx+3C];TStringList.Add
 00786F41    mov         eax,dword ptr [ebp-4]
 00786F44    test        byte ptr [eax+12],80;TLicFile.FFacility:word
>00786F48    je          00786F5A
 00786F4A    mov         eax,dword ptr [ebp-4]
 00786F4D    mov         eax,dword ptr [eax+28];TLicFile.FFeatures:TStringList
 00786F50    mov         edx,787174;'Standalone panels only'
 00786F55    mov         ecx,dword ptr [eax]
 00786F57    call        dword ptr [ecx+3C];TStringList.Add
 00786F5A    mov         bl,1
 00786F5C    xor         eax,eax
 00786F5E    pop         edx
 00786F5F    pop         ecx
 00786F60    pop         ecx
 00786F61    mov         dword ptr fs:[eax],edx
 00786F64    push        786F91
 00786F69    lea         eax,[ebp-234]
 00786F6F    mov         edx,3
 00786F74    call        @UStrArrayClr
 00786F79    lea         eax,[ebp-21C]
 00786F7F    mov         edx,2
 00786F84    call        @LStrArrayClr
 00786F89    ret
>00786F8A    jmp         @HandleFinally
>00786F8F    jmp         00786F69
 00786F91    mov         eax,ebx
 00786F93    pop         esi
 00786F94    pop         ebx
 00786F95    mov         esp,ebp
 00786F97    pop         ebp
 00786F98    ret
*}
end;

//007871A4
constructor TLicenseManager.Create;
begin
{*
 007871A4    push        ebx
 007871A5    push        esi
 007871A6    test        dl,dl
>007871A8    je          007871B2
 007871AA    add         esp,0FFFFFFF0
 007871AD    call        @ClassCreate
 007871B2    mov         ebx,edx
 007871B4    mov         esi,eax
 007871B6    mov         cl,1
 007871B8    mov         dl,1
 007871BA    mov         eax,[00786544];TObjectList<FXLicenseManagerFrm.TLicFile>
 007871BF    call        00787D44
 007871C4    mov         dword ptr [esi+4],eax;TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 007871C7    mov         eax,esi
 007871C9    test        bl,bl
>007871CB    je          007871DC
 007871CD    call        @AfterConstruction
 007871D2    pop         dword ptr fs:[0]
 007871D9    add         esp,0C
 007871DC    mov         eax,esi
 007871DE    pop         esi
 007871DF    pop         ebx
 007871E0    ret
*}
end;

//007871E4
destructor TLicenseManager.Destroy();
begin
{*
 007871E4    push        ebx
 007871E5    push        esi
 007871E6    call        @BeforeDestruction
 007871EB    mov         ebx,edx
 007871ED    mov         esi,eax
 007871EF    mov         eax,dword ptr [esi+4];TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 007871F2    call        TObject.Free
 007871F7    mov         dl,0FC
 007871F9    and         dl,bl
 007871FB    mov         eax,esi
 007871FD    call        TObject.Destroy
 00787202    test        bl,bl
>00787204    jle         0078720D
 00787206    mov         eax,esi
 00787208    call        @ClassDestroy
 0078720D    pop         esi
 0078720E    pop         ebx
 0078720F    ret
*}
end;

//00787210
function TLicenseManager.Activate(indx:Integer):Boolean;
begin
{*
 00787210    push        ebp
 00787211    mov         ebp,esp
 00787213    push        0
 00787215    push        0
 00787217    push        0
 00787219    push        ebx
 0078721A    push        esi
 0078721B    mov         ebx,edx
 0078721D    xor         edx,edx
 0078721F    push        ebp
 00787220    push        7872CD
 00787225    push        dword ptr fs:[edx]
 00787228    mov         dword ptr fs:[edx],esp
 0078722B    cmp         ebx,dword ptr [eax+8];TLicenseManager.FActive:Integer
>0078722E    jne         00787234
 00787230    xor         ebx,ebx
>00787232    jmp         007872B2
 00787234    mov         esi,dword ptr [eax+4];TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 00787237    lea         eax,[esi+8]
 0078723A    mov         edx,ebx
 0078723C    call        00434534
 00787241    call        00421148
 00787246    mov         eax,dword ptr [esi+20]
 00787249    mov         eax,dword ptr [eax+ebx*4]
 0078724C    fcomp       qword ptr [eax+20]
 0078724F    wait
 00787250    fnstsw      al
 00787252    sahf
>00787253    jb          00787259
 00787255    xor         ebx,ebx
>00787257    jmp         007872B2
 00787259    mov         eax,[009037CC];gvar_009037CC:TLicenseManager
 0078725E    mov         esi,dword ptr [eax+4]
 00787261    lea         eax,[esi+8]
 00787264    mov         edx,ebx
 00787266    call        00434534
 0078726B    lea         eax,[ebp-8]
 0078726E    mov         edx,dword ptr [esi+20]
 00787271    mov         edx,dword ptr [edx+ebx*4]
 00787274    mov         edx,dword ptr [edx+8]
 00787277    call        @UStrLAsg
 0078727C    lea         edx,[ebp-0C]
 0078727F    mov         eax,dword ptr [ebp-8]
 00787282    call        0041EFA4
 00787287    mov         edx,dword ptr [ebp-0C]
 0078728A    lea         eax,[ebp-4]
 0078728D    mov         ecx,7872E8;'winfxnet.lic'
 00787292    call        @UStrCat3
 00787297    push        0
 00787299    mov         eax,dword ptr [ebp-4]
 0078729C    call        @UStrToPWChar
 007872A1    push        eax
 007872A2    mov         eax,dword ptr [ebp-8]
 007872A5    call        @UStrToPWChar
 007872AA    push        eax
 007872AB    call        kernel32.CopyFileW
 007872B0    mov         bl,1
 007872B2    xor         eax,eax
 007872B4    pop         edx
 007872B5    pop         ecx
 007872B6    pop         ecx
 007872B7    mov         dword ptr fs:[eax],edx
 007872BA    push        7872D4
 007872BF    lea         eax,[ebp-0C]
 007872C2    mov         edx,3
 007872C7    call        @UStrArrayClr
 007872CC    ret
>007872CD    jmp         @HandleFinally
>007872D2    jmp         007872BF
 007872D4    mov         eax,ebx
 007872D6    pop         esi
 007872D7    pop         ebx
 007872D8    mov         esp,ebp
 007872DA    pop         ebp
 007872DB    ret
*}
end;

//00787304
function TLicenseManager.AddLicFile(LicFile:TLicFile):Integer;
begin
{*
 00787304    push        ecx
 00787305    mov         eax,dword ptr [eax+4];TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 00787308    mov         dword ptr [esp],edx
 0078730B    mov         edx,esp
 0078730D    add         eax,8
 00787310    call        0043489C
 00787315    pop         edx
 00787316    ret
*}
end;

//00787318
function TLicenseManager.AddNewFile(fname:string):Boolean;
begin
{*
 00787318    push        ebp
 00787319    mov         ebp,esp
 0078731B    add         esp,0FFFFFDE4
 00787321    push        ebx
 00787322    push        esi
 00787323    xor         ecx,ecx
 00787325    mov         dword ptr [ebp-21C],ecx
 0078732B    mov         dword ptr [ebp-8],ecx
 0078732E    mov         dword ptr [ebp-0C],ecx
 00787331    mov         dword ptr [ebp-4],edx
 00787334    mov         esi,eax
 00787336    mov         eax,dword ptr [ebp-4]
 00787339    call        @UStrAddRef
 0078733E    xor         eax,eax
 00787340    push        ebp
 00787341    push        787489
 00787346    push        dword ptr fs:[eax]
 00787349    mov         dword ptr fs:[eax],esp
 0078734C    lea         eax,[ebp-8]
 0078734F    mov         edx,104
 00787354    call        @UStrSetLength
 00787359    push        0
 0078735B    push        1C
 0078735D    lea         eax,[ebp-216]
 00787363    push        eax
 00787364    push        0
 00787366    call        shell32.SHGetSpecialFolderPathW
 0078736B    mov         ecx,dword ptr [ebp-4]
 0078736E    mov         dl,1
 00787370    mov         eax,[007844AC];TLicFile
 00787375    call        TLicFile.Create;TLicFile.Create
 0078737A    mov         ebx,eax
 0078737C    mov         eax,ebx
 0078737E    call        TLicFile.Read
 00787383    test        al,al
>00787385    jne         00787395
 00787387    mov         eax,ebx
 00787389    call        TObject.Free
 0078738E    xor         ebx,ebx
>00787390    jmp         00787463
 00787395    mov         edx,ebx
 00787397    mov         eax,esi
 00787399    call        TLicenseManager.IsInLicFiles
 0078739E    inc         eax
>0078739F    jne         0078745A
 007873A5    mov         eax,dword ptr [ebp-8]
 007873A8    call        @UStrToPWChar
 007873AD    push        eax
 007873AE    push        0
 007873B0    push        787498
 007873B5    lea         eax,[ebp-21C]
 007873BB    lea         edx,[ebp-216]
 007873C1    mov         ecx,105
 007873C6    call        @UStrFromWArray
 007873CB    lea         eax,[ebp-21C]
 007873D1    mov         edx,7874AC;'\Schneider Electric\WinFXNet\'
 007873D6    call        @UStrCat
 007873DB    mov         eax,dword ptr [ebp-21C]
 007873E1    call        @UStrToPWChar
 007873E6    push        eax
 007873E7    call        kernel32.GetTempFileNameW
 007873EC    mov         eax,dword ptr [ebp-8]
 007873EF    call        @UStrToPWChar
 007873F4    mov         edx,eax
 007873F6    lea         eax,[ebp-8]
 007873F9    call        @UStrFromPWChar
 007873FE    push        0
 00787400    mov         eax,dword ptr [ebp-8]
 00787403    call        @UStrToPWChar
 00787408    push        eax
 00787409    mov         eax,dword ptr [ebp-4]
 0078740C    call        @UStrToPWChar
 00787411    push        eax
 00787412    call        kernel32.CopyFileW
 00787417    lea         ecx,[ebp-0C]
 0078741A    mov         edx,7874F4;'.rep'
 0078741F    mov         eax,dword ptr [ebp-8]
 00787422    call        0041EF04
 00787427    mov         eax,dword ptr [ebp-0C]
 0078742A    call        @UStrToPWChar
 0078742F    push        eax
 00787430    mov         eax,dword ptr [ebp-8]
 00787433    call        @UStrToPWChar
 00787438    push        eax
 00787439    call        kernel32.MoveFileW
 0078743E    cmp         eax,1
 00787441    sbb         eax,eax
 00787443    inc         eax
 00787444    lea         eax,[ebx+8];TLicFile.FFileName:string
 00787447    mov         edx,dword ptr [ebp-0C]
 0078744A    call        @UStrAsg
 0078744F    mov         edx,ebx
 00787451    mov         eax,esi
 00787453    call        TLicenseManager.AddLicFile
>00787458    jmp         00787461
 0078745A    mov         eax,ebx
 0078745C    call        TObject.Free
 00787461    mov         bl,1
 00787463    xor         eax,eax
 00787465    pop         edx
 00787466    pop         ecx
 00787467    pop         ecx
 00787468    mov         dword ptr fs:[eax],edx
 0078746B    push        787490
 00787470    lea         eax,[ebp-21C]
 00787476    call        @UStrClr
 0078747B    lea         eax,[ebp-0C]
 0078747E    mov         edx,3
 00787483    call        @UStrArrayClr
 00787488    ret
>00787489    jmp         @HandleFinally
>0078748E    jmp         00787470
 00787490    mov         eax,ebx
 00787492    pop         esi
 00787493    pop         ebx
 00787494    mov         esp,ebp
 00787496    pop         ebp
 00787497    ret
*}
end;

//00787500
function TLicenseManager.Delete(indx:Integer):Boolean;
begin
{*
 00787500    push        ebp
 00787501    mov         ebp,esp
 00787503    push        ebx
 00787504    push        esi
 00787505    mov         ebx,edx
 00787507    xor         edx,edx
 00787509    push        ebp
 0078750A    push        787549
 0078750F    push        dword ptr fs:[edx]
 00787512    mov         dword ptr fs:[edx],esp
 00787515    cmp         ebx,dword ptr [eax+8];TLicenseManager.FActive:Integer
>00787518    jne         0078751E
 0078751A    xor         ebx,ebx
>0078751C    jmp         0078753B
 0078751E    mov         esi,dword ptr [eax+4];TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 00787521    lea         eax,[esi+8]
 00787524    mov         edx,ebx
 00787526    call        00434534
 0078752B    mov         eax,dword ptr [esi+20]
 0078752E    mov         eax,dword ptr [eax+ebx*4]
 00787531    mov         eax,dword ptr [eax+8]
 00787534    call        0041EDC0
 00787539    mov         bl,1
 0078753B    xor         eax,eax
 0078753D    pop         edx
 0078753E    pop         ecx
 0078753F    pop         ecx
 00787540    mov         dword ptr fs:[eax],edx
 00787543    push        787550
 00787548    ret
>00787549    jmp         @HandleFinally
>0078754E    jmp         00787548
 00787550    mov         eax,ebx
 00787552    pop         esi
 00787553    pop         ebx
 00787554    pop         ebp
 00787555    ret
*}
end;

//00787558
procedure TLicenseManager.FindLicFiles;
begin
{*
 00787558    push        ebp
 00787559    mov         ebp,esp
 0078755B    add         esp,0FFFFFB60
 00787561    push        ebx
 00787562    push        esi
 00787563    push        edi
 00787564    xor         edx,edx
 00787566    mov         dword ptr [ebp-4A0],edx
 0078756C    mov         dword ptr [ebp-49C],edx
 00787572    mov         dword ptr [ebp-498],edx
 00787578    mov         dword ptr [ebp-494],edx
 0078757E    mov         dword ptr [ebp-490],edx
 00787584    mov         dword ptr [ebp-4],edx
 00787587    mov         dword ptr [ebp-8],edx
 0078758A    mov         dword ptr [ebp-0C],edx
 0078758D    mov         dword ptr [ebp-10],edx
 00787590    mov         esi,eax
 00787592    lea         eax,[ebp-280]
 00787598    mov         edx,dword ptr ds:[417424];TSearchRec
 0078759E    call        @AddRefRecord
 007875A3    xor         eax,eax
 007875A5    push        ebp
 007875A6    push        787815
 007875AB    push        dword ptr fs:[eax]
 007875AE    mov         dword ptr fs:[eax],esp
 007875B1    mov         eax,dword ptr [esi+4];TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 007875B4    add         eax,8
 007875B7    call        00434988
 007875BC    push        0
 007875BE    push        1C
 007875C0    lea         eax,[ebp-48A]
 007875C6    push        eax
 007875C7    push        0
 007875C9    call        shell32.SHGetSpecialFolderPathW
 007875CE    lea         eax,[ebp-490]
 007875D4    lea         edx,[ebp-48A]
 007875DA    mov         ecx,105
 007875DF    call        @UStrFromWArray
 007875E4    mov         edx,dword ptr [ebp-490]
 007875EA    lea         eax,[ebp-4]
 007875ED    mov         ecx,787830;'\Schneider Electric\WinFXNet\'
 007875F2    call        @UStrCat3
 007875F7    lea         eax,[ebp-0C]
 007875FA    mov         edx,104
 007875FF    call        @UStrSetLength
 00787604    lea         eax,[ebp-494]
 0078760A    mov         ecx,787878;'*.rep'
 0078760F    mov         edx,dword ptr [ebp-4]
 00787612    call        @UStrCat3
 00787617    mov         eax,dword ptr [ebp-494]
 0078761D    lea         ecx,[ebp-280]
 00787623    xor         edx,edx
 00787625    call        0041ED30
 0078762A    test        eax,eax
>0078762C    jne         00787697
 0078762E    lea         eax,[ebp-498]
 00787634    mov         ecx,dword ptr [ebp-26C]
 0078763A    mov         edx,dword ptr [ebp-4]
 0078763D    call        @UStrCat3
 00787642    mov         ecx,dword ptr [ebp-498]
 00787648    mov         dl,1
 0078764A    mov         eax,[007844AC];TLicFile
 0078764F    call        TLicFile.Create;TLicFile.Create
 00787654    mov         ebx,eax
 00787656    mov         eax,ebx
 00787658    call        TLicFile.Read
 0078765D    test        al,al
>0078765F    jne         0078766A
 00787661    mov         eax,ebx
 00787663    call        TObject.Free
>00787668    jmp         00787688
 0078766A    mov         edx,ebx
 0078766C    mov         eax,esi
 0078766E    call        TLicenseManager.IsInLicFiles
 00787673    inc         eax
>00787674    jne         00787681
 00787676    mov         edx,ebx
 00787678    mov         eax,esi
 0078767A    call        TLicenseManager.AddLicFile
>0078767F    jmp         00787688
 00787681    mov         eax,ebx
 00787683    call        TObject.Free
 00787688    lea         eax,[ebp-280]
 0078768E    call        0041ED80
 00787693    test        eax,eax
>00787695    je          0078762E
 00787697    lea         eax,[ebp-49C]
 0078769D    lea         edx,[ebp-48A]
 007876A3    mov         ecx,105
 007876A8    call        @UStrFromWArray
 007876AD    push        dword ptr [ebp-49C]
 007876B3    push        787830;'\Schneider Electric\WinFXNet\'
 007876B8    push        787890;'winfxnet.lic'
 007876BD    lea         eax,[ebp-8]
 007876C0    mov         edx,3
 007876C5    call        @UStrCatN
 007876CA    mov         dl,1
 007876CC    mov         eax,dword ptr [ebp-8]
 007876CF    call        0041EA18
 007876D4    test        al,al
>007876D6    je          007877D9
 007876DC    mov         ecx,dword ptr [ebp-8]
 007876DF    mov         dl,1
 007876E1    mov         eax,[007844AC];TLicFile
 007876E6    call        TLicFile.Create;TLicFile.Create
 007876EB    mov         ebx,eax
 007876ED    mov         eax,ebx
 007876EF    call        TLicFile.Read
 007876F4    test        al,al
>007876F6    jne         00787704
 007876F8    mov         eax,ebx
 007876FA    call        TObject.Free
>007876FF    jmp         007877D9
 00787704    mov         edx,ebx
 00787706    mov         eax,esi
 00787708    call        TLicenseManager.IsInLicFiles
 0078770D    mov         edi,eax
 0078770F    cmp         edi,0FFFFFFFF
>00787712    jne         007877CF
 00787718    mov         eax,dword ptr [ebp-0C]
 0078771B    call        @UStrToPWChar
 00787720    push        eax
 00787721    push        0
 00787723    push        7878AC
 00787728    lea         eax,[ebp-4A0]
 0078772E    lea         edx,[ebp-48A]
 00787734    mov         ecx,105
 00787739    call        @UStrFromWArray
 0078773E    lea         eax,[ebp-4A0]
 00787744    mov         edx,787830;'\Schneider Electric\WinFXNet\'
 00787749    call        @UStrCat
 0078774E    mov         eax,dword ptr [ebp-4A0]
 00787754    call        @UStrToPWChar
 00787759    push        eax
 0078775A    call        kernel32.GetTempFileNameW
 0078775F    mov         eax,dword ptr [ebp-0C]
 00787762    call        @UStrToPWChar
 00787767    mov         edx,eax
 00787769    lea         eax,[ebp-0C]
 0078776C    call        @UStrFromPWChar
 00787771    push        0
 00787773    mov         eax,dword ptr [ebp-0C]
 00787776    call        @UStrToPWChar
 0078777B    push        eax
 0078777C    mov         eax,dword ptr [ebp-8]
 0078777F    call        @UStrToPWChar
 00787784    push        eax
 00787785    call        kernel32.CopyFileW
 0078778A    lea         ecx,[ebp-10]
 0078778D    mov         edx,7878C0;'.rep'
 00787792    mov         eax,dword ptr [ebp-0C]
 00787795    call        0041EF04
 0078779A    mov         eax,dword ptr [ebp-10]
 0078779D    call        @UStrToPWChar
 007877A2    push        eax
 007877A3    mov         eax,dword ptr [ebp-0C]
 007877A6    call        @UStrToPWChar
 007877AB    push        eax
 007877AC    call        kernel32.MoveFileW
 007877B1    cmp         eax,1
 007877B4    sbb         eax,eax
 007877B6    inc         eax
 007877B7    lea         eax,[ebx+8];TLicFile.FFileName:string
 007877BA    mov         edx,dword ptr [ebp-10]
 007877BD    call        @UStrAsg
 007877C2    mov         edx,ebx
 007877C4    mov         eax,esi
 007877C6    call        TLicenseManager.AddLicFile
 007877CB    mov         edi,eax
>007877CD    jmp         007877D6
 007877CF    mov         eax,ebx
 007877D1    call        TObject.Free
 007877D6    mov         dword ptr [esi+8],edi;TLicenseManager.FActive:Integer
 007877D9    xor         eax,eax
 007877DB    pop         edx
 007877DC    pop         ecx
 007877DD    pop         ecx
 007877DE    mov         dword ptr fs:[eax],edx
 007877E1    push        78781C
 007877E6    lea         eax,[ebp-4A0]
 007877EC    mov         edx,5
 007877F1    call        @UStrArrayClr
 007877F6    lea         eax,[ebp-280]
 007877FC    mov         edx,dword ptr ds:[417424];TSearchRec
 00787802    call        @FinalizeRecord
 00787807    lea         eax,[ebp-10]
 0078780A    mov         edx,4
 0078780F    call        @UStrArrayClr
 00787814    ret
>00787815    jmp         @HandleFinally
>0078781A    jmp         007877E6
 0078781C    pop         edi
 0078781D    pop         esi
 0078781E    pop         ebx
 0078781F    mov         esp,ebp
 00787821    pop         ebp
 00787822    ret
*}
end;

//007878CC
function TLicenseManager.IsInLicFiles(LicFile:TLicFile):Integer;
begin
{*
 007878CC    push        ebx
 007878CD    push        esi
 007878CE    push        edi
 007878CF    push        ebp
 007878D0    add         esp,0FFFFFFF8
 007878D3    mov         dword ptr [esp],edx
 007878D6    mov         ebp,eax
 007878D8    mov         dword ptr [esp+4],0FFFFFFFF
 007878E0    mov         eax,dword ptr [ebp+4];TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 007878E3    mov         edi,dword ptr [eax+8]
 007878E6    sub         edi,1
>007878E9    jno         007878F0
 007878EB    call        @IntOver
 007878F0    test        edi,edi
>007878F2    jl          00787924
 007878F4    inc         edi
 007878F5    xor         ebx,ebx
 007878F7    mov         esi,dword ptr [ebp+4];TLicenseManager.FLicFiles:TObjectList<FXLicenseManagerFrm.TLicFile...
 007878FA    lea         eax,[esi+8]
 007878FD    mov         edx,ebx
 007878FF    call        00434534
 00787904    mov         eax,dword ptr [esp]
 00787907    mov         eax,dword ptr [eax+1C]
 0078790A    mov         edx,dword ptr [esi+20]
 0078790D    mov         edx,dword ptr [edx+ebx*4]
 00787910    mov         edx,dword ptr [edx+1C]
 00787913    call        @UStrEqual
>00787918    jne         00787920
 0078791A    mov         dword ptr [esp+4],ebx
>0078791E    jmp         00787924
 00787920    inc         ebx
 00787921    dec         edi
>00787922    jne         007878F7
 00787924    mov         eax,dword ptr [esp+4]
 00787928    pop         ecx
 00787929    pop         edx
 0078792A    pop         ebp
 0078792B    pop         edi
 0078792C    pop         esi
 0078792D    pop         ebx
 0078792E    ret
*}
end;

//00787930
destructor TEnumerable<FXLicenseManagerFrm.TLicFile>.Destroy();
begin
{*
 00787930    push        ebx
 00787931    push        esi
 00787932    call        @BeforeDestruction
 00787937    mov         ebx,edx
 00787939    mov         esi,eax
 0078793B    mov         dl,0FC
 0078793D    and         dl,bl
 0078793F    mov         eax,esi
 00787941    call        TObject.Destroy
 00787946    test        bl,bl
>00787948    jle         00787951
 0078794A    mov         eax,esi
 0078794C    call        @ClassDestroy
 00787951    pop         esi
 00787952    pop         ebx
 00787953    ret
*}
end;

//00787954
function TEnumerable<FXLicenseManagerFrm.TLicFile>.GetEnumerator:TEnumerator<FXLicenseManagerFrm.TLicFile>;
begin
{*
 00787954    mov         edx,dword ptr [eax]
 00787956    call        dword ptr [edx]
 00787958    ret
*}
end;

//0078795C
{*procedure TEnumerable<FXLicenseManagerFrm.TLicFile>.ToArray(?:?);
begin
 0078795C    push        ebp
 0078795D    mov         ebp,esp
 0078795F    add         esp,0FFFFFFF4
 00787962    push        ebx
 00787963    mov         dword ptr [ebp-4],edx
 00787966    mov         ebx,eax
 00787968    mov         dl,1
 0078796A    mov         eax,[00785878];TList<FXLicenseManagerFrm.TLicFile>
 0078796F    call        00787AA8
 00787974    mov         dword ptr [ebp-8],eax
 00787977    xor         eax,eax
 00787979    push        ebp
 0078797A    push        787A04
 0078797F    push        dword ptr fs:[eax]
 00787982    mov         dword ptr fs:[eax],esp
 00787985    mov         eax,ebx
 00787987    call        TEnumerable<FXLicenseManagerFrm.TLicFile>.GetEnumerator
 0078798C    mov         dword ptr [ebp-0C],eax
 0078798F    xor         eax,eax
 00787991    push        ebp
 00787992    push        7879DC
 00787997    push        dword ptr fs:[eax]
 0078799A    mov         dword ptr fs:[eax],esp
>0078799D    jmp         007879B2
 0078799F    mov         eax,dword ptr [ebp-0C]
 007879A2    mov         edx,dword ptr [eax]
 007879A4    call        dword ptr [edx]
 007879A6    mov         ebx,eax
 007879A8    mov         edx,ebx
 007879AA    mov         eax,dword ptr [ebp-8]
 007879AD    call        TList<FXLicenseManagerFrm.TLicFile>.Add
 007879B2    mov         eax,dword ptr [ebp-0C]
 007879B5    call        TEnumerator<FXLicenseManagerFrm.TLicFile>.MoveNext
 007879BA    test        al,al
>007879BC    jne         0078799F
 007879BE    xor         eax,eax
 007879C0    pop         edx
 007879C1    pop         ecx
 007879C2    pop         ecx
 007879C3    mov         dword ptr fs:[eax],edx
 007879C6    push        7879E3
 007879CB    cmp         dword ptr [ebp-0C],0
>007879CF    je          007879DB
 007879D1    mov         dl,1
 007879D3    mov         eax,dword ptr [ebp-0C]
 007879D6    mov         ecx,dword ptr [eax]
 007879D8    call        dword ptr [ecx-4]
 007879DB    ret
>007879DC    jmp         @HandleFinally
>007879E1    jmp         007879CB
 007879E3    mov         edx,dword ptr [ebp-4]
 007879E6    mov         eax,dword ptr [ebp-8]
 007879E9    call        TList<FXLicenseManagerFrm.TLicFile>.ToArray
 007879EE    xor         eax,eax
 007879F0    pop         edx
 007879F1    pop         ecx
 007879F2    pop         ecx
 007879F3    mov         dword ptr fs:[eax],edx
 007879F6    push        787A0B
 007879FB    mov         eax,dword ptr [ebp-8]
 007879FE    call        TObject.Free
 00787A03    ret
>00787A04    jmp         @HandleFinally
>00787A09    jmp         007879FB
 00787A0B    pop         ebx
 00787A0C    mov         esp,ebp
 00787A0E    pop         ebp
 00787A0F    ret
end;*}

//00787A10
function TEnumerator<FXLicenseManagerFrm.TLicFile>.MoveNext:Boolean;
begin
{*
 00787A10    mov         edx,dword ptr [eax]
 00787A12    call        dword ptr [edx+4]
 00787A15    ret
*}
end;

//00787A60
procedure sub_00787A60(?:TList<FXLicenseManagerFrm.TLicFile>);
begin
{*
 00787A60    add         eax,8
 00787A63    call        004357A0
 00787A68    ret
*}
end;

//00787A6C
{*procedure sub_00787A6C(?:?; ?:?);
begin
 00787A6C    push        ebx
 00787A6D    mov         edx,dword ptr [edx]
 00787A6F    mov         ebx,dword ptr [eax]
 00787A71    call        dword ptr [ebx+8]
 00787A74    pop         ebx
 00787A75    ret
end;*}

//00787A78
{*procedure sub_00787A78(?:?; ?:?; ?:?);
begin
 00787A78    push        ebx
 00787A79    mov         edx,dword ptr [edx]
 00787A7B    mov         ecx,dword ptr [ecx]
 00787A7D    mov         eax,dword ptr [eax+24]
 00787A80    mov         ebx,dword ptr [eax]
 00787A82    call        dword ptr [ebx+0C]
 00787A85    pop         ebx
 00787A86    ret
end;*}

//00787A88
procedure sub_00787A88;
begin
{*
 00787A88    call        TList<FXLicenseManagerFrm.TLicFile>.GetEnumerator
 00787A8D    ret
*}
end;

//00787A90
{*procedure sub_00787A90(?:?);
begin
 00787A90    push        ebx
 00787A91    cmp         word ptr [eax+2A],0
>00787A96    je          00787AA5
 00787A98    push        ecx
 00787A99    mov         ebx,eax
 00787A9B    mov         ecx,edx
 00787A9D    mov         edx,eax
 00787A9F    mov         eax,dword ptr [ebx+2C]
 00787AA2    call        dword ptr [ebx+28]
 00787AA5    pop         ebx
 00787AA6    ret
end;*}

//00787AA8
constructor sub_00787AA8;
begin
{*
 00787AA8    push        ebp
 00787AA9    mov         ebp,esp
 00787AAB    push        0
 00787AAD    push        ebx
 00787AAE    push        esi
 00787AAF    test        dl,dl
>00787AB1    je          00787ABB
 00787AB3    add         esp,0FFFFFFF0
 00787AB6    call        @ClassCreate
 00787ABB    mov         ebx,edx
 00787ABD    mov         esi,eax
 00787ABF    xor         eax,eax
 00787AC1    push        ebp
 00787AC2    push        787AFC
 00787AC7    push        dword ptr fs:[eax]
 00787ACA    mov         dword ptr fs:[eax],esp
 00787ACD    lea         edx,[ebp-4]
 00787AD0    mov         eax,[00787E6C];TComparer<FXLicenseManagerFrm.TLicFile>
 00787AD5    call        TComparer<FXLicenseManagerFrm.TLicFile>.Default
 00787ADA    mov         ecx,dword ptr [ebp-4]
 00787ADD    xor         edx,edx
 00787ADF    mov         eax,esi
 00787AE1    call        00787B20
 00787AE6    xor         eax,eax
 00787AE8    pop         edx
 00787AE9    pop         ecx
 00787AEA    pop         ecx
 00787AEB    mov         dword ptr fs:[eax],edx
 00787AEE    push        787B03
 00787AF3    lea         eax,[ebp-4]
 00787AF6    call        @IntfClear
 00787AFB    ret
>00787AFC    jmp         @HandleFinally
>00787B01    jmp         00787AF3
 00787B03    mov         eax,esi
 00787B05    test        bl,bl
>00787B07    je          00787B18
 00787B09    call        @AfterConstruction
 00787B0E    pop         dword ptr fs:[0]
 00787B15    add         esp,0C
 00787B18    mov         eax,esi
 00787B1A    pop         esi
 00787B1B    pop         ebx
 00787B1C    pop         ecx
 00787B1D    pop         ebp
 00787B1E    ret
*}
end;

//00787B20
constructor sub_00787B20(AComparer:IComparer<FXLicenseManagerFrm.TLicFile>);
begin
{*
 00787B20    push        ebp
 00787B21    mov         ebp,esp
 00787B23    push        0
 00787B25    push        ebx
 00787B26    push        esi
 00787B27    push        edi
 00787B28    test        dl,dl
>00787B2A    je          00787B34
 00787B2C    add         esp,0FFFFFFF0
 00787B2F    call        @ClassCreate
 00787B34    mov         esi,ecx
 00787B36    mov         ebx,edx
 00787B38    mov         edi,eax
 00787B3A    xor         eax,eax
 00787B3C    push        ebp
 00787B3D    push        787BAB
 00787B42    push        dword ptr fs:[eax]
 00787B45    mov         dword ptr fs:[eax],esp
 00787B48    xor         edx,edx
 00787B4A    mov         eax,edi
 00787B4C    call        TObject.Create
 00787B51    mov         dword ptr [edi+14],edi
 00787B54    mov         dword ptr [edi+10],787A6C;sub_00787A6C
 00787B5B    mov         dword ptr [edi+1C],edi
 00787B5E    mov         dword ptr [edi+18],787A78;sub_00787A78
 00787B65    mov         eax,[00785474];TList<FXLicenseManagerFrm.TLicFile>.arrayofT
 00787B6A    mov         dword ptr [edi+0C],eax
 00787B6D    lea         eax,[edi+24]
 00787B70    mov         edx,esi
 00787B72    call        @IntfCopy
 00787B77    cmp         dword ptr [edi+24],0
>00787B7B    jne         00787B95
 00787B7D    lea         edx,[ebp-4]
 00787B80    mov         eax,[00787E6C];TComparer<FXLicenseManagerFrm.TLicFile>
 00787B85    call        TComparer<FXLicenseManagerFrm.TLicFile>.Default
 00787B8A    mov         edx,dword ptr [ebp-4]
 00787B8D    lea         eax,[edi+24]
 00787B90    call        @IntfCopy
 00787B95    xor         eax,eax
 00787B97    pop         edx
 00787B98    pop         ecx
 00787B99    pop         ecx
 00787B9A    mov         dword ptr fs:[eax],edx
 00787B9D    push        787BB2
 00787BA2    lea         eax,[ebp-4]
 00787BA5    call        @IntfClear
 00787BAA    ret
>00787BAB    jmp         @HandleFinally
>00787BB0    jmp         00787BA2
 00787BB2    mov         eax,edi
 00787BB4    test        bl,bl
>00787BB6    je          00787BC7
 00787BB8    call        @AfterConstruction
 00787BBD    pop         dword ptr fs:[0]
 00787BC4    add         esp,0C
 00787BC7    mov         eax,edi
 00787BC9    pop         edi
 00787BCA    pop         esi
 00787BCB    pop         ebx
 00787BCC    pop         ecx
 00787BCD    pop         ebp
 00787BCE    ret
*}
end;

//00787BD0
destructor TList<FXLicenseManagerFrm.TLicFile>.Destroy();
begin
{*
 00787BD0    push        ebx
 00787BD1    push        esi
 00787BD2    call        @BeforeDestruction
 00787BD7    mov         ebx,edx
 00787BD9    mov         esi,eax
 00787BDB    cmp         dword ptr [esi+8],0
>00787BDF    jle         00787BEA
 00787BE1    xor         edx,edx
 00787BE3    mov         eax,esi
 00787BE5    call        00787A60
 00787BEA    push        0
 00787BEC    lea         eax,[esi+20]
 00787BEF    mov         ecx,1
 00787BF4    mov         edx,dword ptr ds:[785474];TList<FXLicenseManagerFrm.TLicFile>.arrayofT
 00787BFA    call        @DynArraySetLength
 00787BFF    add         esp,4
 00787C02    mov         dl,0FC
 00787C04    and         dl,bl
 00787C06    mov         eax,esi
 00787C08    call        TEnumerable<FXLicenseManagerFrm.TLicFile>.Destroy
 00787C0D    test        bl,bl
>00787C0F    jle         00787C18
 00787C11    mov         eax,esi
 00787C13    call        @ClassDestroy
 00787C18    pop         esi
 00787C19    pop         ebx
 00787C1A    ret
*}
end;

//00787C1C
{*procedure TList<FXLicenseManagerFrm.TLicFile>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 00787C1C    push        ebp
 00787C1D    mov         ebp,esp
 00787C1F    add         esp,0FFFFFFF0
 00787C22    mov         dword ptr [ebp-8],ecx
 00787C25    mov         dword ptr [ebp-4],edx
 00787C28    push        dword ptr [ebp+4]
 00787C2B    mov         eax,dword ptr [ebp-8]
 00787C2E    mov         dword ptr [ebp-10],eax
 00787C31    mov         byte ptr [ebp-0C],0
 00787C35    lea         eax,[ebp-10]
 00787C38    push        eax
 00787C39    push        0
 00787C3B    mov         ecx,dword ptr [ebp-4]
 00787C3E    mov         dl,1
 00787C40    mov         eax,[004180BC];EListError
 00787C45    call        Exception.CreateFmt;EListError.Create
>00787C4A    jmp         @RaiseExcept
end;*}

//00787C54
procedure TList<FXLicenseManagerFrm.TLicFile>.Add(Value:TLicFile);
begin
{*
 00787C54    push        ecx
 00787C55    mov         dword ptr [esp],edx
 00787C58    mov         edx,esp
 00787C5A    add         eax,8
 00787C5D    call        0043489C
 00787C62    pop         edx
 00787C63    ret
*}
end;

//00787C64
{*procedure TList<FXLicenseManagerFrm.TLicFile>.ToArray(?:?);
begin
 00787C64    push        ecx
 00787C65    mov         dword ptr [esp],edx
 00787C68    mov         edx,dword ptr [esp]
 00787C6B    add         eax,8
 00787C6E    call        00435980
 00787C73    pop         edx
 00787C74    ret
end;*}

//00787C78
procedure TList<FXLicenseManagerFrm.TLicFile>.GetEnumerator;
begin
{*
 00787C78    mov         ecx,eax
 00787C7A    mov         dl,1
 00787C7C    mov         eax,[007856BC];TList<FXLicenseManagerFrm.TLicFile>.TEnumerator
 00787C81    call        00787CB4
 00787C86    ret
*}
end;

//00787C88
{*function sub_00787C88(?:?):?;
begin
 00787C88    push        ebx
 00787C89    push        esi
 00787C8A    mov         ebx,dword ptr [eax+4]
 00787C8D    mov         esi,dword ptr [eax+8]
 00787C90    lea         eax,[ebx+8]
 00787C93    mov         edx,esi
 00787C95    call        00434534
 00787C9A    mov         eax,dword ptr [ebx+20]
 00787C9D    mov         eax,dword ptr [eax+esi*4]
 00787CA0    pop         esi
 00787CA1    pop         ebx
 00787CA2    ret
end;*}

//00787CA4
procedure sub_00787CA4;
begin
{*
 00787CA4    call        00787C88
 00787CA9    ret
*}
end;

//00787CAC
procedure sub_00787CAC;
begin
{*
 00787CAC    call        TList<FXLicenseManagerFrm.TLicFile>.TEnumerator.MoveNext
 00787CB1    ret
*}
end;

//00787CB4
constructor sub_00787CB4(AList:TList<FXLicenseManagerFrm.TLicFile>);
begin
{*
 00787CB4    push        ebx
 00787CB5    push        esi
 00787CB6    push        edi
 00787CB7    test        dl,dl
>00787CB9    je          00787CC3
 00787CBB    add         esp,0FFFFFFF0
 00787CBE    call        @ClassCreate
 00787CC3    mov         esi,ecx
 00787CC5    mov         ebx,edx
 00787CC7    mov         edi,eax
 00787CC9    xor         edx,edx
 00787CCB    mov         eax,edi
 00787CCD    call        TObject.Create
 00787CD2    mov         dword ptr [edi+4],esi
 00787CD5    mov         dword ptr [edi+8],0FFFFFFFF
 00787CDC    mov         eax,edi
 00787CDE    test        bl,bl
>00787CE0    je          00787CF1
 00787CE2    call        @AfterConstruction
 00787CE7    pop         dword ptr fs:[0]
 00787CEE    add         esp,0C
 00787CF1    mov         eax,edi
 00787CF3    pop         edi
 00787CF4    pop         esi
 00787CF5    pop         ebx
 00787CF6    ret
*}
end;

//00787CF8
function TList<FXLicenseManagerFrm.TLicFile>.TEnumerator.MoveNext:Boolean;
begin
{*
 00787CF8    mov         edx,dword ptr [eax+4]
 00787CFB    mov         edx,dword ptr [edx+8]
 00787CFE    cmp         edx,dword ptr [eax+8]
>00787D01    jg          00787D06
 00787D03    xor         eax,eax
 00787D05    ret
 00787D06    inc         dword ptr [eax+8]
 00787D09    mov         edx,dword ptr [eax+4]
 00787D0C    mov         edx,dword ptr [edx+8]
 00787D0F    cmp         edx,dword ptr [eax+8]
 00787D12    setg        al
 00787D15    ret
*}
end;

//00787D18
{*procedure sub_00787D18(?:?; ?:?);
begin
 00787D18    push        ebx
 00787D19    push        esi
 00787D1A    push        edi
 00787D1B    mov         ebx,ecx
 00787D1D    mov         edi,edx
 00787D1F    mov         esi,eax
 00787D21    mov         ecx,ebx
 00787D23    mov         edx,edi
 00787D25    mov         eax,esi
 00787D27    call        00787A90
 00787D2C    cmp         byte ptr [esi+30],0
>00787D30    je          00787D3E
 00787D32    cmp         bl,1
>00787D35    jne         00787D3E
 00787D37    mov         eax,edi
 00787D39    call        TObject.Free
 00787D3E    pop         edi
 00787D3F    pop         esi
 00787D40    pop         ebx
 00787D41    ret
end;*}

//00787D44
constructor sub_00787D44(AOwnsObjects:Boolean);
begin
{*
 00787D44    push        ebp
 00787D45    mov         ebp,esp
 00787D47    push        ecx
 00787D48    push        ebx
 00787D49    push        esi
 00787D4A    test        dl,dl
>00787D4C    je          00787D56
 00787D4E    add         esp,0FFFFFFF0
 00787D51    call        @ClassCreate
 00787D56    mov         ebx,ecx
 00787D58    mov         byte ptr [ebp-1],dl
 00787D5B    mov         esi,eax
 00787D5D    xor         edx,edx
 00787D5F    mov         eax,esi
 00787D61    call        00787AA8
 00787D66    mov         byte ptr [esi+30],bl
 00787D69    mov         eax,esi
 00787D6B    cmp         byte ptr [ebp-1],0
>00787D6F    je          00787D80
 00787D71    call        @AfterConstruction
 00787D76    pop         dword ptr fs:[0]
 00787D7D    add         esp,0C
 00787D80    mov         eax,esi
 00787D82    pop         esi
 00787D83    pop         ebx
 00787D84    pop         ecx
 00787D85    pop         ebp
 00787D86    ret
*}
end;

//00787D88
{*procedure TComparer<FXLicenseManagerFrm.TLicFile>.Default(?:?);
begin
 00787D88    push        ebx
 00787D89    mov         ebx,edx
 00787D8B    mov         ecx,4
 00787D90    mov         edx,dword ptr ds:[7846CC];TLicFile
 00787D96    xor         eax,eax
 00787D98    call        _LookupVtableInfo
 00787D9D    mov         edx,eax
 00787D9F    mov         eax,ebx
 00787DA1    call        @IntfCopy
 00787DA6    pop         ebx
 00787DA7    ret
end;*}

//0078AF44
{*procedure TMainForm.sub_0078AF44(?:?);
begin
 0078AF44    push        ebp
 0078AF45    mov         ebp,esp
 0078AF47    mov         ecx,0B
 0078AF4C    push        0
 0078AF4E    push        0
 0078AF50    dec         ecx
>0078AF51    jne         0078AF4C
 0078AF53    push        ecx
 0078AF54    push        ebx
 0078AF55    push        esi
 0078AF56    push        edi
 0078AF57    mov         dword ptr [ebp-4],edx
 0078AF5A    mov         esi,eax
 0078AF5C    xor         eax,eax
 0078AF5E    push        ebp
 0078AF5F    push        78B3CF
 0078AF64    push        dword ptr fs:[eax]
 0078AF67    mov         dword ptr fs:[eax],esp
 0078AF6A    mov         eax,dword ptr [ebp-4]
 0078AF6D    xor         edx,edx
 0078AF6F    mov         dword ptr [eax+0C],edx
 0078AF72    call        ParamCount
 0078AF77    mov         ebx,eax
 0078AF79    dec         ebx
>0078AF7A    jle         0078B0C6
 0078AF80    lea         edx,[ebp-14]
 0078AF83    mov         eax,2
 0078AF88    call        ParamStr
 0078AF8D    mov         eax,dword ptr [ebp-14]
 0078AF90    lea         ecx,[ebp-10]
 0078AF93    mov         edx,4
 0078AF98    call        00431F40
 0078AF9D    mov         eax,dword ptr [ebp-10]
 0078AFA0    mov         edx,78B3EC;'auto'
 0078AFA5    call        @UStrEqual
>0078AFAA    jne         0078B0C6
 0078AFB0    mov         eax,[007C4680];^gvar_007A1EB9
 0078AFB5    mov         byte ptr [eax],1
 0078AFB8    mov         dl,1
 0078AFBA    mov         eax,[0046F9A0];TStringList
 0078AFBF    call        TStringList.Create;TStringList.Create
 0078AFC4    mov         dword ptr [ebp-0C],eax
 0078AFC7    xor         eax,eax
 0078AFC9    push        ebp
 0078AFCA    push        78B0BF
 0078AFCF    push        dword ptr fs:[eax]
 0078AFD2    mov         dword ptr fs:[eax],esp
 0078AFD5    lea         edx,[ebp-18]
 0078AFD8    xor         eax,eax
 0078AFDA    call        ParamStr
 0078AFDF    mov         edx,dword ptr [ebp-18]
 0078AFE2    mov         eax,dword ptr [ebp-0C]
 0078AFE5    mov         ecx,dword ptr [eax]
 0078AFE7    call        dword ptr [ecx+3C];TStringList.Add
 0078AFEA    lea         edx,[ebp-1C]
 0078AFED    mov         eax,1
 0078AFF2    call        ParamStr
 0078AFF7    mov         edx,dword ptr [ebp-1C]
 0078AFFA    mov         eax,dword ptr [ebp-0C]
 0078AFFD    mov         ecx,dword ptr [eax]
 0078AFFF    call        dword ptr [ecx+3C];TStringList.Add
 0078B002    lea         edx,[ebp-20]
 0078B005    mov         eax,2
 0078B00A    call        ParamStr
 0078B00F    mov         edx,dword ptr [ebp-20]
 0078B012    mov         eax,dword ptr [ebp-0C]
 0078B015    mov         ecx,dword ptr [eax]
 0078B017    call        dword ptr [ecx+3C];TStringList.Add
 0078B01A    lea         edx,[ebp-24]
 0078B01D    mov         eax,3
 0078B022    call        ParamStr
 0078B027    mov         edx,dword ptr [ebp-24]
 0078B02A    mov         eax,dword ptr [ebp-0C]
 0078B02D    mov         ecx,dword ptr [eax]
 0078B02F    call        dword ptr [ecx+3C];TStringList.Add
 0078B032    lea         edx,[ebp-28]
 0078B035    mov         eax,4
 0078B03A    call        ParamStr
 0078B03F    mov         edx,dword ptr [ebp-28]
 0078B042    mov         eax,dword ptr [ebp-0C]
 0078B045    mov         ecx,dword ptr [eax]
 0078B047    call        dword ptr [ecx+3C];TStringList.Add
 0078B04A    lea         edx,[ebp-2C]
 0078B04D    mov         eax,5
 0078B052    call        ParamStr
 0078B057    mov         edx,dword ptr [ebp-2C]
 0078B05A    mov         eax,dword ptr [ebp-0C]
 0078B05D    mov         ecx,dword ptr [eax]
 0078B05F    call        dword ptr [ecx+3C];TStringList.Add
 0078B062    lea         edx,[ebp-30]
 0078B065    mov         eax,6
 0078B06A    call        ParamStr
 0078B06F    mov         edx,dword ptr [ebp-30]
 0078B072    mov         eax,dword ptr [ebp-0C]
 0078B075    mov         ecx,dword ptr [eax]
 0078B077    call        dword ptr [ecx+3C];TStringList.Add
 0078B07A    lea         edx,[ebp-34]
 0078B07D    mov         eax,7
 0078B082    call        ParamStr
 0078B087    mov         edx,dword ptr [ebp-34]
 0078B08A    mov         eax,dword ptr [ebp-0C]
 0078B08D    mov         ecx,dword ptr [eax]
 0078B08F    call        dword ptr [ecx+3C];TStringList.Add
 0078B092    mov         eax,[007C4A9C];^gvar_00903780:TAutoConfigFrm
 0078B097    mov         eax,dword ptr [eax]
 0078B099    mov         edx,dword ptr [ebp-0C]
 0078B09C    call        TAutoConfigFrm.AutoConfig
 0078B0A1    mov         edx,dword ptr ds:[7C416C];^gvar_0079E000:Integer
 0078B0A7    mov         dword ptr [edx],eax
 0078B0A9    xor         eax,eax
 0078B0AB    pop         edx
 0078B0AC    pop         ecx
 0078B0AD    pop         ecx
 0078B0AE    mov         dword ptr fs:[eax],edx
 0078B0B1    push        78B3AC
 0078B0B6    mov         eax,dword ptr [ebp-0C]
 0078B0B9    call        TObject.Free
 0078B0BE    ret
>0078B0BF    jmp         @HandleFinally
>0078B0C4    jmp         0078B0B6
 0078B0C6    mov         dl,1
 0078B0C8    mov         eax,[00472CE4];TMemoryStream
 0078B0CD    call        TObject.Create;TMemoryStream.Create
 0078B0D2    mov         dword ptr [ebp-8],eax
 0078B0D5    lea         edx,[ebp-3C]
 0078B0D8    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078B0DD    mov         eax,dword ptr [eax]
 0078B0DF    call        005DDC1C
 0078B0E4    mov         ecx,dword ptr [ebp-3C]
 0078B0E7    lea         eax,[ebp-38]
 0078B0EA    mov         edx,78B404;'Software\Schneider\WinFX3Net\'
 0078B0EF    call        @UStrCat3
 0078B0F4    mov         ecx,dword ptr [ebp-38]
 0078B0F7    mov         dl,1
 0078B0F9    mov         eax,[004B7D28];TRegistryIniFile
 0078B0FE    call        TRegIniFile.Create;TRegistryIniFile.Create
 0078B103    mov         ebx,eax
 0078B105    push        0
 0078B107    mov         ecx,78B44C;'Language'
 0078B10C    mov         edx,78B46C;'Preferences'
 0078B111    mov         eax,ebx
 0078B113    mov         edi,dword ptr [eax]
 0078B115    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B118    mov         edx,dword ptr ds:[7C4A84];^gvar_00902C98:Integer
 0078B11E    mov         byte ptr [edx],al
 0078B120    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078B125    mov         eax,dword ptr [eax]
 0078B127    movzx       ecx,word ptr [eax+6]
 0078B12B    cmp         ecx,0FF
>0078B131    jbe         0078B138
 0078B133    call        @BoundErr
 0078B138    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078B13D    mov         eax,dword ptr [eax]
 0078B13F    movzx       edx,word ptr [eax+4]
 0078B143    cmp         edx,0FF
>0078B149    jbe         0078B150
 0078B14B    call        @BoundErr
 0078B150    mov         eax,[007C4A84];^gvar_00902C98:Integer
 0078B155    movzx       eax,byte ptr [eax]
 0078B158    call        00791BD4
 0078B15D    mov         eax,dword ptr [ebp-8]
 0078B160    push        eax
 0078B161    mov         ecx,78B490;'Widths'
 0078B166    mov         edx,78B4AC;'ColumnsV6'
 0078B16B    mov         eax,ebx
 0078B16D    mov         edi,dword ptr [eax]
 0078B16F    call        dword ptr [edi+1C];TRegistryIniFile.ReadBinaryStream
 0078B172    mov         eax,dword ptr [ebp-8]
 0078B175    mov         edx,dword ptr [eax]
 0078B177    call        dword ptr [edx];TMemoryStream.sub_00491B30
 0078B179    cmp         edx,0
>0078B17C    jne         0078B185
 0078B17E    cmp         eax,0
>0078B181    jbe         0078B1AC
>0078B183    jmp         0078B187
>0078B185    jle         0078B1AC
 0078B187    mov         eax,dword ptr [ebp-8]
 0078B18A    mov         edx,dword ptr [eax]
 0078B18C    call        dword ptr [edx];TMemoryStream.sub_00491B30
 0078B18E    push        eax
 0078B18F    sar         eax,1F
 0078B192    cmp         eax,edx
 0078B194    pop         eax
>0078B195    je          0078B19C
 0078B197    call        @BoundErr
 0078B19C    mov         ecx,eax
 0078B19E    mov         edx,dword ptr ds:[7C4DD4];^gvar_007C2FA4
 0078B1A4    mov         eax,dword ptr [ebp-8]
 0078B1A7    call        TStream.ReadBuffer
 0078B1AC    push        480033
 0078B1B1    mov         ecx,78B4CC;'SelectedSySeCols'
 0078B1B6    mov         edx,78B4AC;'ColumnsV6'
 0078B1BB    mov         eax,ebx
 0078B1BD    mov         edi,dword ptr [eax]
 0078B1BF    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B1C2    mov         ecx,eax
 0078B1C4    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B1CA    mov         edx,1
 0078B1CF    call        TFXADFrame.SetSelectedCols
 0078B1D4    push        43DF93
 0078B1D9    mov         ecx,78B4FC;'SelectedConvCols'
 0078B1DE    mov         edx,78B4AC;'ColumnsV6'
 0078B1E3    mov         eax,ebx
 0078B1E5    mov         edi,dword ptr [eax]
 0078B1E7    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B1EA    mov         ecx,eax
 0078B1EC    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B1F2    mov         edx,2
 0078B1F7    call        TFXADFrame.SetSelectedCols
 0078B1FC    push        780033
 0078B201    mov         ecx,78B52C;'SelectedApoCols'
 0078B206    mov         edx,78B4AC;'ColumnsV6'
 0078B20B    mov         eax,ebx
 0078B20D    mov         edi,dword ptr [eax]
 0078B20F    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B212    mov         ecx,eax
 0078B214    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B21A    mov         edx,3
 0078B21F    call        TFXADFrame.SetSelectedCols
 0078B224    push        680073
 0078B229    mov         ecx,78B558;'SelectedSapCols'
 0078B22E    mov         edx,78B4AC;'ColumnsV6'
 0078B233    mov         eax,ebx
 0078B235    mov         edi,dword ptr [eax]
 0078B237    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B23A    mov         ecx,eax
 0078B23C    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B242    mov         edx,4
 0078B247    call        TFXADFrame.SetSelectedCols
 0078B24C    push        0
 0078B24E    lea         eax,[ebp-40]
 0078B251    push        eax
 0078B252    mov         ecx,78B584;'DefaultDataDir'
 0078B257    mov         edx,78B46C;'Preferences'
 0078B25C    mov         eax,ebx
 0078B25E    mov         edi,dword ptr [eax]
 0078B260    call        dword ptr [edi+4];TRegistryIniFile.ReadString
 0078B263    mov         edx,dword ptr [ebp-40]
 0078B266    mov         eax,9037D8;gvar_009037D8:UnicodeString
 0078B26B    call        @UStrAsg
 0078B270    push        0
 0078B272    mov         ecx,78B5B0;'NoZoneEnabled'
 0078B277    mov         edx,78B46C;'Preferences'
 0078B27C    mov         eax,ebx
 0078B27E    mov         edi,dword ptr [eax]
 0078B280    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B283    dec         eax
 0078B284    mov         eax,[007C48BC];^gvar_007CA842
 0078B289    sete        byte ptr [eax]
 0078B28C    push        0
 0078B28E    mov         ecx,78B5D8;'AlcStartDelay'
 0078B293    mov         edx,78B46C;'Preferences'
 0078B298    mov         eax,ebx
 0078B29A    mov         edi,dword ptr [eax]
 0078B29C    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B29F    dec         eax
 0078B2A0    mov         eax,[007C4B34];^gvar_007CA843
 0078B2A5    sete        byte ptr [eax]
 0078B2A8    mov         eax,ebx
 0078B2AA    call        TObject.Free
 0078B2AF    mov         eax,dword ptr [ebp-8]
 0078B2B2    call        TObject.Free
 0078B2B7    mov         dl,1
 0078B2B9    mov         eax,esi
 0078B2BB    call        TForm.SetVisible
 0078B2C0    mov         eax,[007C4B98];^gvar_007A1EBC
 0078B2C5    mov         dword ptr [eax],0FF
 0078B2CB    mov         eax,[007C46A8];^gvar_009036C0:TFXCommHandler
 0078B2D0    mov         eax,dword ptr [eax]
 0078B2D2    call        TFXCommHandler.CommDllOk
 0078B2D7    call        ParamCount
 0078B2DC    mov         ebx,eax
 0078B2DE    test        ebx,ebx
>0078B2E0    je          0078B3AC
 0078B2E6    mov         dl,1
 0078B2E8    mov         eax,[006A4F5C];TFXNet
 0078B2ED    call        TFXNet.Create;TFXNet.Create
 0078B2F2    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 0078B2F8    mov         dword ptr [edx],eax
 0078B2FA    lea         edx,[ebp-44]
 0078B2FD    mov         eax,1
 0078B302    call        ParamStr
 0078B307    mov         edx,dword ptr [ebp-44]
 0078B30A    mov         eax,esi
 0078B30C    call        TMainForm.TryReadFile
 0078B311    test        al,al
>0078B313    je          0078B3AC
 0078B319    mov         edx,dword ptr ds:[7C4C8C];^gvar_007A1E9C
 0078B31F    mov         eax,1
 0078B324    call        ParamStr
 0078B329    lea         eax,[ebp-48]
 0078B32C    push        eax
 0078B32D    lea         edx,[ebp-5C]
 0078B330    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078B335    mov         eax,dword ptr [eax]
 0078B337    call        005DDC74
 0078B33C    mov         eax,dword ptr [ebp-5C]
 0078B33F    mov         dword ptr [ebp-58],eax
 0078B342    mov         byte ptr [ebp-54],11
 0078B346    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078B34B    mov         eax,dword ptr [eax]
 0078B34D    mov         dword ptr [ebp-50],eax
 0078B350    mov         byte ptr [ebp-4C],11
 0078B354    lea         edx,[ebp-58]
 0078B357    mov         ecx,1
 0078B35C    mov         eax,78B600;'WinFX3Net (%s) %s'
 0078B361    call        Format
 0078B366    mov         edx,dword ptr [ebp-48]
 0078B369    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078B36E    call        TControl.SetText
 0078B373    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 0078B379    mov         edx,dword ptr [edx]
 0078B37B    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 0078B380    mov         eax,dword ptr [eax]
 0078B382    mov         cl,1
 0078B384    call        TConfigInfoDlg.Populate
 0078B389    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 0078B38E    mov         eax,dword ptr [eax]
 0078B390    mov         eax,dword ptr [eax+3C4]
 0078B396    xor         edx,edx
 0078B398    call        TControl.SetVisible
 0078B39D    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 0078B3A2    mov         eax,dword ptr [eax]
 0078B3A4    mov         edx,dword ptr [eax]
 0078B3A6    call        dword ptr [edx+13C]
 0078B3AC    xor         eax,eax
 0078B3AE    pop         edx
 0078B3AF    pop         ecx
 0078B3B0    pop         ecx
 0078B3B1    mov         dword ptr fs:[eax],edx
 0078B3B4    push        78B3D6
 0078B3B9    lea         eax,[ebp-5C]
 0078B3BC    call        @UStrClr
 0078B3C1    lea         eax,[ebp-48]
 0078B3C4    mov         edx,0F
 0078B3C9    call        @UStrArrayClr
 0078B3CE    ret
>0078B3CF    jmp         @HandleFinally
>0078B3D4    jmp         0078B3B9
 0078B3D6    pop         edi
 0078B3D7    pop         esi
 0078B3D8    pop         ebx
 0078B3D9    mov         esp,ebp
 0078B3DB    pop         ebp
 0078B3DC    ret
end;*}

//0078B624
procedure TMainForm.FormCreate(Sender:TObject);
begin
{*
 0078B624    push        ebp
 0078B625    mov         ebp,esp
 0078B627    push        0
 0078B629    push        0
 0078B62B    push        ebx
 0078B62C    push        esi
 0078B62D    push        edi
 0078B62E    mov         ebx,eax
 0078B630    xor         eax,eax
 0078B632    push        ebp
 0078B633    push        78B9EA
 0078B638    push        dword ptr fs:[eax]
 0078B63B    mov         dword ptr fs:[eax],esp
 0078B63E    lea         edx,[ebp-8]
 0078B641    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078B646    mov         eax,dword ptr [eax]
 0078B648    call        005DDC1C
 0078B64D    mov         ecx,dword ptr [ebp-8]
 0078B650    lea         eax,[ebp-4]
 0078B653    mov         edx,78BA04;'Software\Schneider\WinFX3Net\'
 0078B658    call        @UStrCat3
 0078B65D    mov         ecx,dword ptr [ebp-4]
 0078B660    mov         dl,1
 0078B662    mov         eax,[004B7D28];TRegistryIniFile
 0078B667    call        TRegIniFile.Create;TRegistryIniFile.Create
 0078B66C    mov         esi,eax
 0078B66E    push        0A
 0078B670    mov         ecx,78BA4C;'MainFormX'
 0078B675    mov         edx,78BA6C;'Coordinates'
 0078B67A    mov         eax,esi
 0078B67C    mov         edi,dword ptr [eax]
 0078B67E    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B681    mov         edx,eax
 0078B683    mov         eax,ebx
 0078B685    call        TCustomForm.SetLeft
 0078B68A    push        0A
 0078B68C    mov         ecx,78BA90;'MainFormY'
 0078B691    mov         edx,78BA6C;'Coordinates'
 0078B696    mov         eax,esi
 0078B698    mov         edi,dword ptr [eax]
 0078B69A    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B69D    mov         edx,eax
 0078B69F    mov         eax,ebx
 0078B6A1    call        TCustomForm.SetTop
 0078B6A6    push        280
 0078B6AB    mov         ecx,78BAB0;'MainFormW'
 0078B6B0    mov         edx,78BA6C;'Coordinates'
 0078B6B5    mov         eax,esi
 0078B6B7    mov         edi,dword ptr [eax]
 0078B6B9    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B6BC    mov         edx,eax
 0078B6BE    mov         eax,ebx
 0078B6C0    call        TControl.SetWidth
 0078B6C5    push        280
 0078B6CA    mov         ecx,78BAD0;'MainFormH'
 0078B6CF    mov         edx,78BA6C;'Coordinates'
 0078B6D4    mov         eax,esi
 0078B6D6    mov         edi,dword ptr [eax]
 0078B6D8    call        dword ptr [edi+0C];TRegistryIniFile.ReadInteger
 0078B6DB    mov         edx,eax
 0078B6DD    mov         eax,ebx
 0078B6DF    call        TControl.SetHeight
 0078B6E4    mov         eax,esi
 0078B6E6    call        TObject.Free
 0078B6EB    mov         dl,1
 0078B6ED    mov         eax,[004BDD74];TFont
 0078B6F2    call        TFont.Create;TFont.Create
 0078B6F7    mov         edx,dword ptr ds:[7C4C54];^gvar_007CA834:TFont
 0078B6FD    mov         dword ptr [edx],eax
 0078B6FF    mov         eax,[007C4C54];^gvar_007CA834:TFont
 0078B704    mov         eax,dword ptr [eax]
 0078B706    mov         edx,dword ptr [ebx+74];TMainForm.FFont:TFont
 0078B709    mov         ecx,dword ptr [eax]
 0078B70B    call        dword ptr [ecx+8]
 0078B70E    mov         edx,dword ptr ds:[7C42E4];^gvar_007CA83A
 0078B714    movzx       edx,byte ptr [edx]
 0078B717    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 0078B71D    mov         eax,dword ptr [eax+5F4];TFXPDFrame.gbFXDelayedOutputs:TGroupBox
 0078B723    mov         ecx,dword ptr [eax]
 0078B725    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078B72B    mov         edx,dword ptr ds:[7C42E4];^gvar_007CA83A
 0078B731    movzx       edx,byte ptr [edx]
 0078B734    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 0078B73A    mov         eax,dword ptr [eax+620];TFXPDFrame.rgDelayTermination:TRadioGroup
 0078B740    mov         ecx,dword ptr [eax]
 0078B742    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078B748    mov         edx,dword ptr ds:[7C42E4];^gvar_007CA83A
 0078B74E    movzx       edx,byte ptr [edx]
 0078B751    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 0078B757    mov         eax,dword ptr [eax+628];TFXPDFrame.gbDelayIndication:TGroupBox
 0078B75D    mov         ecx,dword ptr [eax]
 0078B75F    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078B765    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 0078B76B    mov         edx,dword ptr [eax+2B4];TFXPDFrame.PanelInfoSheet:TTabSheet
 0078B771    mov         eax,dword ptr [eax+2B0];TFXPDFrame.PageControl1:TPageControl
 0078B777    call        TPageControl.SetActivePage
 0078B77C    mov         eax,dword ptr [ebx+4AC];TMainForm.FXEsmiADFrame:TFXADFrame
 0078B782    mov         eax,dword ptr [eax+2C0];TFXADFrame.ColSelectBtn:TButton
 0078B788    xor         edx,edx
 0078B78A    call        TControl.SetVisible
 0078B78F    mov         eax,dword ptr [ebx+49C];TMainForm.FXAboutFrame1:TFXAboutFrame
 0078B795    call        TFXAboutFrame.FetchInfo
 0078B79A    mov         eax,[007C4420];^gvar_007CA838
 0078B79F    mov         byte ptr [eax],0
 0078B7A2    mov         ecx,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B7A8    mov         dl,1
 0078B7AA    mov         eax,[006EC7B4];TFXADMenuFrame
 0078B7AF    call        TCustomFrame.Create;TFXADMenuFrame.Create
 0078B7B4    mov         esi,eax
 0078B7B6    mov         edi,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B7BC    mov         dword ptr [edi+2E0],esi;TFXADFrame.ADMenuFrame:TFXADMenuFrame
 0078B7C2    mov         dword ptr [esi+0B8C],edi;TFXADMenuFrame.?fB8C:TAPFillDlg
 0078B7C8    mov         dword ptr [esi+0B88],7252D4;TFXADMenuFrame.EvSapTypeClick:TNotifyEvent TFXADFrame.SapTyp...
 0078B7D2    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B7D8    mov         dword ptr [esi+0B94],eax;TFXADMenuFrame.?fB94:TAPFillDlg
 0078B7DE    mov         dword ptr [esi+0B90],725334;TFXADMenuFrame.EvSapSysTypeClick:TNotifyEvent TFXADFrame.Sap...
 0078B7E8    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B7EE    mov         dword ptr [esi+0B9C],eax;TFXADMenuFrame.?fB9C:TAPFillDlg
 0078B7F4    mov         dword ptr [esi+0B98],725394;TFXADMenuFrame.EvSapSounderModeClick:TNotifyEvent TFXADFrame...
 0078B7FE    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B804    mov         dword ptr [esi+0C3C],eax;TFXADMenuFrame.?fC3C:TAPFillDlg
 0078B80A    mov         dword ptr [esi+0C38],725484;TFXADMenuFrame.EvSapEnvironmentClick:TNotifyEvent TFXADFrame...
 0078B814    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B81A    mov         dword ptr [esi+0BA4],eax;TFXADMenuFrame.?fBA4:TAPFillDlg
 0078B820    mov         dword ptr [esi+0BA0],725640;TFXADMenuFrame.EvApoTypeClick:TNotifyEvent TFXADFrame.ApoTyp...
 0078B82A    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B830    mov         dword ptr [esi+0BAC],eax;TFXADMenuFrame.?fBAC:TAPFillDlg
 0078B836    mov         dword ptr [esi+0BA8],725C00;TFXADMenuFrame.EvApoSubTypeClick:TNotifyEvent TFXADFrame.Apo...
 0078B840    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B846    mov         dword ptr [esi+0BB4],eax;TFXADMenuFrame.?fBB4:TAPFillDlg
 0078B84C    mov         dword ptr [esi+0BB0],725FEC;TFXADMenuFrame.EvApoSounderModeClick:TNotifyEvent TFXADFrame...
 0078B856    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B85C    mov         dword ptr [esi+0BBC],eax;TFXADMenuFrame.?fBBC:TAPFillDlg
 0078B862    mov         dword ptr [esi+0BB8],726124;TFXADMenuFrame.EvSysTypeClick:TNotifyEvent TFXADFrame.SysTyp...
 0078B86C    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B872    mov         dword ptr [esi+0BC4],eax;TFXADMenuFrame.?fBC4:TAPFillDlg
 0078B878    mov         dword ptr [esi+0BC0],726698;TFXADMenuFrame.EvSysDetSubTypeClick:TNotifyEvent TFXADFrame....
 0078B882    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B888    mov         dword ptr [esi+0BCC],eax;TFXADMenuFrame.?fBCC:TAPFillDlg
 0078B88E    mov         dword ptr [esi+0BC8],726E54;TFXADMenuFrame.EvCnvEolClick:TNotifyEvent TFXADFrame.CnvEOLC...
 0078B898    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B89E    mov         dword ptr [esi+0BD4],eax;TFXADMenuFrame.?fBD4:TAPFillDlg
 0078B8A4    mov         dword ptr [esi+0BD0],726EE8;TFXADMenuFrame.EvComCzmClick:TNotifyEvent TFXADFrame.ComCzmC...
 0078B8AE    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B8B4    mov         dword ptr [esi+0BDC],eax;TFXADMenuFrame.?fBDC:TAPFillDlg
 0078B8BA    mov         dword ptr [esi+0BD8],726F90;TFXADMenuFrame.EvComInputClick:TNotifyEvent TFXADFrame.ComIn...
 0078B8C4    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B8CA    mov         dword ptr [esi+0BEC],eax;TFXADMenuFrame.?fBEC:TAPFillDlg
 0078B8D0    mov         dword ptr [esi+0BE8],7270E0;TFXADMenuFrame.EvComModeClick:TNotifyEvent TFXADFrame.ComMod...
 0078B8DA    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B8E0    mov         dword ptr [esi+0C04],eax;TFXADMenuFrame.?fC04:TAPFillDlg
 0078B8E6    mov         dword ptr [esi+0C00],727178;TFXADMenuFrame.EvComYesNoClick:TNotifyEvent TFXADFrame.ComYe...
 0078B8F0    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B8F6    mov         dword ptr [esi+0BF4],eax;TFXADMenuFrame.?fBF4:TAPFillDlg
 0078B8FC    mov         dword ptr [esi+0BF0],72720C;TFXADMenuFrame.EvComMonitoringClick:TNotifyEvent TFXADFrame....
 0078B906    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B90C    mov         dword ptr [esi+0BFC],eax;TFXADMenuFrame.?fBFC:TAPFillDlg
 0078B912    mov         dword ptr [esi+0BF8],7272A4;TFXADMenuFrame.EvComSounderModeClick:TNotifyEvent TFXADFrame...
 0078B91C    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B922    mov         dword ptr [esi+0C34],eax;TFXADMenuFrame.?fC34:TAPFillDlg
 0078B928    mov         dword ptr [esi+0C30],72733C;TFXADMenuFrame.EvComSndrVolClick:TNotifyEvent TFXADFrame.Com...
 0078B932    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B938    mov         dword ptr [esi+0BE4],eax;TFXADMenuFrame.?fBE4:TAPFillDlg
 0078B93E    mov         dword ptr [esi+0BE0],7273D8;TFXADMenuFrame.EvComLevelClick:TNotifyEvent TFXADFrame.ComLe...
 0078B948    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B94E    mov         dword ptr [esi+0C0C],eax;TFXADMenuFrame.?fC0C:TAPFillDlg
 0078B954    mov         dword ptr [esi+0C08],727470;TFXADMenuFrame.EvComInDelayClick:TNotifyEvent TFXADFrame.Com...
 0078B95E    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B964    mov         dword ptr [esi+0C14],eax;TFXADMenuFrame.?fC14:TAPFillDlg
 0078B96A    mov         dword ptr [esi+0C10],727538;TFXADMenuFrame.EvComInFilterClick:TNotifyEvent TFXADFrame.Co...
 0078B974    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B97A    mov         dword ptr [esi+0C1C],eax;TFXADMenuFrame.?fC1C:TAPFillDlg
 0078B980    mov         dword ptr [esi+0C18],727600;TFXADMenuFrame.EvComDayModeClick:TNotifyEvent TFXADFrame.Com...
 0078B98A    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B990    mov         dword ptr [esi+0C24],eax;TFXADMenuFrame.?fC24:TAPFillDlg
 0078B996    mov         dword ptr [esi+0C20],7276C8;TFXADMenuFrame.EvComZDisClick:TNotifyEvent TFXADFrame.ComZDi...
 0078B9A0    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078B9A6    mov         dword ptr [esi+0C2C],eax;TFXADMenuFrame.?fC2C:TAPFillDlg
 0078B9AC    mov         dword ptr [esi+0C28],727790;TFXADMenuFrame.EvComOutputClick:TNotifyEvent TFXADFrame.ComO...
 0078B9B6    push        0
 0078B9B8    push        0
 0078B9BA    push        8000
 0078B9BF    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078B9C4    call        TWinControl.GetHandle
 0078B9C9    push        eax
 0078B9CA    call        user32.PostMessageW
 0078B9CF    xor         eax,eax
 0078B9D1    pop         edx
 0078B9D2    pop         ecx
 0078B9D3    pop         ecx
 0078B9D4    mov         dword ptr fs:[eax],edx
 0078B9D7    push        78B9F1
 0078B9DC    lea         eax,[ebp-8]
 0078B9DF    mov         edx,2
 0078B9E4    call        @UStrArrayClr
 0078B9E9    ret
>0078B9EA    jmp         @HandleFinally
>0078B9EF    jmp         0078B9DC
 0078B9F1    pop         edi
 0078B9F2    pop         esi
 0078B9F3    pop         ebx
 0078B9F4    pop         ecx
 0078B9F5    pop         ecx
 0078B9F6    pop         ebp
 0078B9F7    ret
*}
end;

//0078BAE4
procedure TMainForm.FormShow(Sender:TObject);
begin
{*
 0078BAE4    push        ebx
 0078BAE5    mov         ebx,eax
 0078BAE7    mov         edx,dword ptr ds:[7C4C54];^gvar_007CA834:TFont
 0078BAED    mov         edx,dword ptr [edx]
 0078BAEF    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078BAF4    mov         eax,dword ptr [eax+74]
 0078BAF7    mov         ecx,dword ptr [eax]
 0078BAF9    call        dword ptr [ecx+8]
 0078BAFC    mov         eax,ebx
 0078BAFE    call        TMainForm.UpdateStatusbar
 0078BB03    pop         ebx
 0078BB04    ret
*}
end;

//0078BB08
procedure TMainForm.FormClose(Sender:TObject; var Action:UITypes.TCloseAction);
begin
{*
 0078BB08    push        ebp
 0078BB09    mov         ebp,esp
 0078BB0B    push        0
 0078BB0D    push        0
 0078BB0F    push        0
 0078BB11    push        ebx
 0078BB12    push        esi
 0078BB13    push        edi
 0078BB14    mov         esi,eax
 0078BB16    xor         eax,eax
 0078BB18    push        ebp
 0078BB19    push        78BD0F
 0078BB1E    push        dword ptr fs:[eax]
 0078BB21    mov         dword ptr fs:[eax],esp
 0078BB24    mov         dl,1
 0078BB26    mov         eax,[00472CE4];TMemoryStream
 0078BB2B    call        TObject.Create;TMemoryStream.Create
 0078BB30    mov         dword ptr [ebp-4],eax
 0078BB33    mov         edx,dword ptr ds:[7C4DD4];^gvar_007C2FA4
 0078BB39    mov         ecx,2A0
 0078BB3E    mov         eax,dword ptr [ebp-4]
 0078BB41    call        TStream.WriteBuffer
 0078BB46    push        0
 0078BB48    push        0
 0078BB4A    mov         eax,dword ptr [ebp-4]
 0078BB4D    call        TStream.SetPosition
 0078BB52    lea         edx,[ebp-0C]
 0078BB55    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078BB5A    mov         eax,dword ptr [eax]
 0078BB5C    call        005DDC1C
 0078BB61    mov         ecx,dword ptr [ebp-0C]
 0078BB64    lea         eax,[ebp-8]
 0078BB67    mov         edx,78BD2C;'Software\Schneider\WinFX3Net\'
 0078BB6C    call        @UStrCat3
 0078BB71    mov         ecx,dword ptr [ebp-8]
 0078BB74    mov         dl,1
 0078BB76    mov         eax,[004B7D28];TRegistryIniFile
 0078BB7B    call        TRegIniFile.Create;TRegistryIniFile.Create
 0078BB80    mov         ebx,eax
 0078BB82    mov         eax,[007C4A84];^gvar_00902C98:Integer
 0078BB87    movzx       eax,byte ptr [eax]
 0078BB8A    push        eax
 0078BB8B    mov         ecx,78BD74;'Language'
 0078BB90    mov         edx,78BD94;'Preferences'
 0078BB95    mov         eax,ebx
 0078BB97    mov         edi,dword ptr [eax]
 0078BB99    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BB9C    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078BBA1    call        TCustomForm.GetLeft
 0078BBA6    push        eax
 0078BBA7    mov         ecx,78BDB8;'MainFormX'
 0078BBAC    mov         edx,78BDD8;'Coordinates'
 0078BBB1    mov         eax,ebx
 0078BBB3    mov         edi,dword ptr [eax]
 0078BBB5    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BBB8    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078BBBD    call        TCustomForm.GetTop
 0078BBC2    push        eax
 0078BBC3    mov         ecx,78BDFC;'MainFormY'
 0078BBC8    mov         edx,78BDD8;'Coordinates'
 0078BBCD    mov         eax,ebx
 0078BBCF    mov         edi,dword ptr [eax]
 0078BBD1    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BBD4    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078BBD9    mov         eax,dword ptr [eax+58]
 0078BBDC    push        eax
 0078BBDD    mov         ecx,78BE1C;'MainFormW'
 0078BBE2    mov         edx,78BDD8;'Coordinates'
 0078BBE7    mov         eax,ebx
 0078BBE9    mov         edi,dword ptr [eax]
 0078BBEB    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BBEE    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078BBF3    mov         eax,dword ptr [eax+5C]
 0078BBF6    push        eax
 0078BBF7    mov         ecx,78BE3C;'MainFormH'
 0078BBFC    mov         edx,78BDD8;'Coordinates'
 0078BC01    mov         eax,ebx
 0078BC03    mov         edi,dword ptr [eax]
 0078BC05    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BC08    mov         eax,dword ptr [ebp-4]
 0078BC0B    push        eax
 0078BC0C    mov         ecx,78BE5C;'Widths'
 0078BC11    mov         edx,78BE78;'ColumnsV6'
 0078BC16    mov         eax,ebx
 0078BC18    mov         edi,dword ptr [eax]
 0078BC1A    call        dword ptr [edi+30];TRegistryIniFile.WriteBinaryStream
 0078BC1D    mov         edx,1
 0078BC22    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078BC28    call        TFXADFrame.GetSelectedCols
 0078BC2D    push        eax
 0078BC2E    mov         ecx,78BE98;'SelectedSySeCols'
 0078BC33    mov         edx,78BE78;'ColumnsV6'
 0078BC38    mov         eax,ebx
 0078BC3A    mov         edi,dword ptr [eax]
 0078BC3C    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BC3F    mov         edx,2
 0078BC44    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078BC4A    call        TFXADFrame.GetSelectedCols
 0078BC4F    push        eax
 0078BC50    mov         ecx,78BEC8;'SelectedConvCols'
 0078BC55    mov         edx,78BE78;'ColumnsV6'
 0078BC5A    mov         eax,ebx
 0078BC5C    mov         edi,dword ptr [eax]
 0078BC5E    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BC61    mov         edx,3
 0078BC66    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078BC6C    call        TFXADFrame.GetSelectedCols
 0078BC71    push        eax
 0078BC72    mov         ecx,78BEF8;'SelectedApoCols'
 0078BC77    mov         edx,78BE78;'ColumnsV6'
 0078BC7C    mov         eax,ebx
 0078BC7E    mov         edi,dword ptr [eax]
 0078BC80    call        dword ptr [edi+10];TRegistryIniFile.WriteInteger
 0078BC83    mov         edx,4
 0078BC88    mov         eax,dword ptr [esi+4A8];TMainForm.FXADFrame1:TFXADFrame
 0078BC8E    call        TFXADFrame.GetSelectedCols
 0078BC93    push        eax
 0078BC94    mov         ecx,78BF24;'SelectedSapCols'
 0078BC99    mov         edx,78BE78;'ColumnsV6'
 0078BC9E    mov         eax,ebx
 0078BCA0    mov         esi,dword ptr [eax]
 0078BCA2    call        dword ptr [esi+10];TRegistryIniFile.WriteInteger
 0078BCA5    mov         eax,[007C48BC];^gvar_007CA842
 0078BCAA    movzx       eax,byte ptr [eax]
 0078BCAD    push        eax
 0078BCAE    mov         ecx,78BF50;'NoZoneEnabled'
 0078BCB3    mov         edx,78BD94;'Preferences'
 0078BCB8    mov         eax,ebx
 0078BCBA    mov         esi,dword ptr [eax]
 0078BCBC    call        dword ptr [esi+10];TRegistryIniFile.WriteInteger
 0078BCBF    mov         eax,[007C4B34];^gvar_007CA843
 0078BCC4    movzx       eax,byte ptr [eax]
 0078BCC7    push        eax
 0078BCC8    mov         ecx,78BF78;'AlcStartDelay'
 0078BCCD    mov         edx,78BD94;'Preferences'
 0078BCD2    mov         eax,ebx
 0078BCD4    mov         esi,dword ptr [eax]
 0078BCD6    call        dword ptr [esi+10];TRegistryIniFile.WriteInteger
 0078BCD9    mov         eax,ebx
 0078BCDB    call        TObject.Free
 0078BCE0    mov         eax,dword ptr [ebp-4]
 0078BCE3    call        TObject.Free
 0078BCE8    mov         eax,[007C4C54];^gvar_007CA834:TFont
 0078BCED    mov         eax,dword ptr [eax]
 0078BCEF    call        TObject.Free
 0078BCF4    xor         eax,eax
 0078BCF6    pop         edx
 0078BCF7    pop         ecx
 0078BCF8    pop         ecx
 0078BCF9    mov         dword ptr fs:[eax],edx
 0078BCFC    push        78BD16
 0078BD01    lea         eax,[ebp-0C]
 0078BD04    mov         edx,2
 0078BD09    call        @UStrArrayClr
 0078BD0E    ret
>0078BD0F    jmp         @HandleFinally
>0078BD14    jmp         0078BD01
 0078BD16    pop         edi
 0078BD17    pop         esi
 0078BD18    pop         ebx
 0078BD19    mov         esp,ebp
 0078BD1B    pop         ebp
 0078BD1C    ret
*}
end;

//0078BF94
procedure TMainForm.FormCloseQuery(Sender:TObject; var CanClose:Boolean);
begin
{*
 0078BF94    push        ebx
 0078BF95    push        esi
 0078BF96    push        edi
 0078BF97    mov         esi,ecx
 0078BF99    mov         ebx,eax
 0078BF9B    mov         edi,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 0078BFA1    cmp         byte ptr [edi+69],0;TFXPDFrame.FVisible:Boolean
>0078BFA5    je          0078BFB0
 0078BFA7    mov         eax,edi
 0078BFA9    call        TFXPDFrame.VerifyCancelChanges
 0078BFAE    mov         byte ptr [esi],al
 0078BFB0    cmp         byte ptr [esi],0
>0078BFB3    je          0078C01C
 0078BFB5    mov         eax,[007C491C];^gvar_008DF5CC
 0078BFBA    cmp         byte ptr [eax],0
>0078BFBD    jne         0078BFE7
 0078BFBF    mov         eax,[007C499C];^gvar_008DF5C0
 0078BFC4    cmp         byte ptr [eax],0
>0078BFC7    jne         0078BFE7
 0078BFC9    mov         eax,[007C4C68];^gvar_008DF5B8
 0078BFCE    cmp         byte ptr [eax],0
>0078BFD1    jne         0078BFE7
 0078BFD3    mov         eax,[007C47D8];^gvar_008DF5A8
 0078BFD8    cmp         byte ptr [eax],0
>0078BFDB    jne         0078BFE7
 0078BFDD    mov         eax,[007C4674];^gvar_00857F38
 0078BFE2    cmp         byte ptr [eax],0
>0078BFE5    je          0078C01C
 0078BFE7    push        0
 0078BFE9    movzx       ecx,word ptr ds:[78C020];0xB gvar_0078C020
 0078BFF0    mov         dl,3
 0078BFF2    mov         eax,[007C4140];^'Save changes before exit?'
 0078BFF7    call        MessageDlg
 0078BFFC    sub         eax,2
>0078BFFF    je          0078C00E
 0078C001    sub         eax,4
>0078C004    je          0078C013
 0078C006    dec         eax
>0078C007    jne         0078C01C
 0078C009    mov         byte ptr [esi],1
>0078C00C    jmp         0078C01C
 0078C00E    mov         byte ptr [esi],0
>0078C011    jmp         0078C01C
 0078C013    mov         eax,ebx
 0078C015    call        TMainForm.TrySaveFile
 0078C01A    mov         byte ptr [esi],al
 0078C01C    pop         edi
 0078C01D    pop         esi
 0078C01E    pop         ebx
 0078C01F    ret
*}
end;

//0078C024
procedure TMainForm.Translate(IniFile:TFXIniFile);
begin
{*
 0078C024    push        ebp
 0078C025    mov         ebp,esp
 0078C027    mov         ecx,1D
 0078C02C    push        0
 0078C02E    push        0
 0078C030    dec         ecx
>0078C031    jne         0078C02C
 0078C033    push        ecx
 0078C034    push        ebx
 0078C035    push        esi
 0078C036    push        edi
 0078C037    mov         ebx,edx
 0078C039    mov         esi,eax
 0078C03B    xor         eax,eax
 0078C03D    push        ebp
 0078C03E    push        78CA67
 0078C043    push        dword ptr fs:[eax]
 0078C046    mov         dword ptr fs:[eax],esp
 0078C049    push        78CA84;'New FXNet'
 0078C04E    lea         eax,[ebp-4]
 0078C051    push        eax
 0078C052    mov         ecx,78CAA4;'sNewFXNet'
 0078C057    mov         edx,78CAC4;'Messages'
 0078C05C    mov         eax,ebx
 0078C05E    mov         edi,dword ptr [eax]
 0078C060    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C063    mov         edx,dword ptr [ebp-4]
 0078C066    mov         eax,[007C4C0C];^^"'New FXNet'"
 0078C06B    call        @UStrAsg
 0078C070    push        78CAE4;'WARNING! Error in panel ID!'
 0078C075    lea         eax,[ebp-8]
 0078C078    push        eax
 0078C079    mov         ecx,78CB28;'sErrPanelId'
 0078C07E    mov         edx,78CAC4;'Messages'
 0078C083    mov         eax,ebx
 0078C085    mov         edi,dword ptr [eax]
 0078C087    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C08A    mov         edx,dword ptr [ebp-8]
 0078C08D    mov         eax,7C410C;^'WARNING! Error in panel ID!'
 0078C092    call        @UStrAsg
 0078C097    push        78CB4C;'WARNING! Overlapping loops!'
 0078C09C    lea         eax,[ebp-0C]
 0078C09F    push        eax
 0078C0A0    mov         ecx,78CB90;'sErrOverlLoops'
 0078C0A5    mov         edx,78CAC4;'Messages'
 0078C0AA    mov         eax,ebx
 0078C0AC    mov         edi,dword ptr [eax]
 0078C0AE    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C0B1    mov         edx,dword ptr [ebp-0C]
 0078C0B4    mov         eax,7C4110;^'WARNING! Overlapping loops!'
 0078C0B9    call        @UStrAsg
 0078C0BE    push        78CBBC;'WARNING! Overlapping zones!'
 0078C0C3    lea         eax,[ebp-10]
 0078C0C6    push        eax
 0078C0C7    mov         ecx,78CC00;'sErrOverlZones'
 0078C0CC    mov         edx,78CAC4;'Messages'
 0078C0D1    mov         eax,ebx
 0078C0D3    mov         edi,dword ptr [eax]
 0078C0D5    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C0D8    mov         edx,dword ptr [ebp-10]
 0078C0DB    mov         eax,7C4114;^'WARNING! Overlapping zones!'
 0078C0E0    call        @UStrAsg
 0078C0E5    push        78CC2C;'You have to correct the errors before sending the configuration to the panel!'
 0078C0EA    lea         eax,[ebp-14]
 0078C0ED    push        eax
 0078C0EE    mov         ecx,78CCD4;'sCorrectBeforeSending'
 0078C0F3    mov         edx,78CAC4;'Messages'
 0078C0F8    mov         eax,ebx
 0078C0FA    mov         edi,dword ptr [eax]
 0078C0FC    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C0FF    mov         edx,dword ptr [ebp-14]
 0078C102    mov         eax,7C4118;^'You have to correct the errors before sending the configuration to the pane...
 0078C107    call        @UStrAsg
 0078C10C    push        78CD0C;'Save changes before starting new project?'
 0078C111    lea         eax,[ebp-18]
 0078C114    push        eax
 0078C115    mov         ecx,78CD6C;'sSaveBeforeNewProject'
 0078C11A    mov         edx,78CAC4;'Messages'
 0078C11F    mov         eax,ebx
 0078C121    mov         edi,dword ptr [eax]
 0078C123    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C126    mov         edx,dword ptr [ebp-18]
 0078C129    mov         eax,7C4144;^'Save changes before starting new project?'
 0078C12E    call        @UStrAsg
 0078C133    push        78CDA4;'Loop '
 0078C138    lea         eax,[ebp-1C]
 0078C13B    push        eax
 0078C13C    mov         ecx,78CDBC;'sLoop'
 0078C141    mov         edx,78CDD4;'CommonTexts'
 0078C146    mov         eax,ebx
 0078C148    mov         edi,dword ptr [eax]
 0078C14A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C14D    mov         edx,dword ptr [ebp-1C]
 0078C150    mov         eax,7C411C;^'Loop '
 0078C155    call        @UStrAsg
 0078C15A    push        78CDF8;'could not be read.'
 0078C15F    lea         eax,[ebp-20]
 0078C162    push        eax
 0078C163    mov         ecx,78CE2C;'sCouldNotBeRead'
 0078C168    mov         edx,78CAC4;'Messages'
 0078C16D    mov         eax,ebx
 0078C16F    mov         edi,dword ptr [eax]
 0078C171    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C174    mov         edx,dword ptr [ebp-20]
 0078C177    mov         eax,7C4120;^'could not be read.'
 0078C17C    call        @UStrAsg
 0078C181    push        78CE58;'could not be written.'
 0078C186    lea         eax,[ebp-24]
 0078C189    push        eax
 0078C18A    mov         ecx,78CE90;'sCouldNotBeWritten'
 0078C18F    mov         edx,78CAC4;'Messages'
 0078C194    mov         eax,ebx
 0078C196    mov         edi,dword ptr [eax]
 0078C198    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C19B    mov         edx,dword ptr [ebp-24]
 0078C19E    mov         eax,7C4124;^'could not be written.'
 0078C1A3    call        @UStrAsg
 0078C1A8    push        78CEC4;'An error occured while reading from file '
 0078C1AD    lea         eax,[ebp-28]
 0078C1B0    push        eax
 0078C1B1    mov         ecx,78CF24;'sAnErrorOccuredWhileReading'
 0078C1B6    mov         edx,78CAC4;'Messages'
 0078C1BB    mov         eax,ebx
 0078C1BD    mov         edi,dword ptr [eax]
 0078C1BF    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C1C2    mov         edx,dword ptr [ebp-28]
 0078C1C5    mov         eax,7C412C;^'An error occured while reading from file '
 0078C1CA    call        @UStrAsg
 0078C1CF    push        78CF68;'Partially read data is not valid.'
 0078C1D4    lea         eax,[ebp-2C]
 0078C1D7    push        eax
 0078C1D8    mov         ecx,78CFB8;'sPartialDataIsInvalid'
 0078C1DD    mov         edx,78CAC4;'Messages'
 0078C1E2    mov         eax,ebx
 0078C1E4    mov         edi,dword ptr [eax]
 0078C1E6    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C1E9    mov         edx,dword ptr [ebp-2C]
 0078C1EC    mov         eax,7C4130;^'Partially read data is not valid.'
 0078C1F1    call        @UStrAsg
 0078C1F6    push        78CFF0;'FX3Net, FX3Text files (*.fx3;*.fxt)|*.fx3;*fxt|FXNet files (*.fxn)|*.fxn|FX File...
 0078C1FB    lea         eax,[ebp-30]
 0078C1FE    push        eax
 0078C1FF    mov         ecx,78D0E0;'sAllFileFilter'
 0078C204    mov         edx,78CAC4;'Messages'
 0078C209    mov         eax,ebx
 0078C20B    mov         edi,dword ptr [eax]
 0078C20D    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C210    mov         edx,dword ptr [ebp-30]
 0078C213    mov         eax,7C4134;^'FX3Net, FX3Text files (*.fx3;*.fxt)|*.fx3;*fxt|FXNet files (*.fxn)|*.fxn|FX...
 0078C218    call        @UStrAsg
 0078C21D    push        78D10C;'An error occured while writing to file '
 0078C222    lea         eax,[ebp-34]
 0078C225    push        eax
 0078C226    mov         ecx,78D168;'sAnErrorOccuredWhileWriting'
 0078C22B    mov         edx,78CAC4;'Messages'
 0078C230    mov         eax,ebx
 0078C232    mov         edi,dword ptr [eax]
 0078C234    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C237    mov         edx,dword ptr [ebp-34]
 0078C23A    mov         eax,7C4138;^'An error occured while writing to file '
 0078C23F    call        @UStrAsg
 0078C244    push        78D1AC;'The file does not contain valid data.'
 0078C249    lea         eax,[ebp-38]
 0078C24C    push        eax
 0078C24D    mov         ecx,78D204;'sFileContentInvalid'
 0078C252    mov         edx,78CAC4;'Messages'
 0078C257    mov         eax,ebx
 0078C259    mov         edi,dword ptr [eax]
 0078C25B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C25E    mov         edx,dword ptr [ebp-38]
 0078C261    mov         eax,7C413C;^'The file does not contain valid data.'
 0078C266    call        @UStrAsg
 0078C26B    push        78D238;'Save changes before exit?'
 0078C270    lea         eax,[ebp-3C]
 0078C273    push        eax
 0078C274    mov         ecx,78D278;'sSaveBeforeExit'
 0078C279    mov         edx,78CAC4;'Messages'
 0078C27E    mov         eax,ebx
 0078C280    mov         edi,dword ptr [eax]
 0078C282    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C285    mov         edx,dword ptr [ebp-3C]
 0078C288    mov         eax,7C4140;^'Save changes before exit?'
 0078C28D    call        @UStrAsg
 0078C292    push        78D2A4;'No loops are defined!'
 0078C297    lea         eax,[ebp-40]
 0078C29A    push        eax
 0078C29B    mov         ecx,78D2DC;'sNoLoopsAreDefined'
 0078C2A0    mov         edx,78CAC4;'Messages'
 0078C2A5    mov         eax,ebx
 0078C2A7    mov         edi,dword ptr [eax]
 0078C2A9    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C2AC    mov         edx,dword ptr [ebp-40]
 0078C2AF    mov         eax,7C4148;^'No loops are defined!'
 0078C2B4    call        @UStrAsg
 0078C2B9    push        78D310;'Select default folder for FXNet configuration files'
 0078C2BE    lea         eax,[ebp-44]
 0078C2C1    push        eax
 0078C2C2    mov         ecx,78D384;'sSelectDefaultDataDir'
 0078C2C7    mov         edx,78CAC4;'Messages'
 0078C2CC    mov         eax,ebx
 0078C2CE    mov         edi,dword ptr [eax]
 0078C2D0    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C2D3    mov         edx,dword ptr [ebp-44]
 0078C2D6    mov         eax,7C414C;^'Select default folder for FXNet configuration files'
 0078C2DB    call        @UStrAsg
 0078C2E0    push        78D3BC;'Too many 200 protocol devices in loop %d, max. 20 allowed!(%d defined)'
 0078C2E5    lea         eax,[ebp-48]
 0078C2E8    push        eax
 0078C2E9    mov         ecx,78D458;'sTooManyS200'
 0078C2EE    mov         edx,78CAC4;'Messages'
 0078C2F3    mov         eax,ebx
 0078C2F5    mov         edi,dword ptr [eax]
 0078C2F7    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C2FA    mov         edx,dword ptr [ebp-48]
 0078C2FD    mov         eax,[007C4570];^^"'Too many 200 protocol devices in loop %d, max. 20 allowed!(%d defined...
 0078C302    call        @UStrAsg
 0078C307    push        78D480;'WinFX3Net'
 0078C30C    lea         eax,[ebp-4C]
 0078C30F    push        eax
 0078C310    mov         ecx,78D4A0;'sMainFormCaptionFXNet'
 0078C315    mov         edx,78D4D8;'MainForm'
 0078C31A    mov         eax,ebx
 0078C31C    mov         edi,dword ptr [eax]
 0078C31E    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C321    mov         edx,dword ptr [ebp-4C]
 0078C324    mov         eax,esi
 0078C326    call        TControl.SetText
 0078C32B    push        78D4F8;'&File'
 0078C330    lea         eax,[ebp-50]
 0078C333    push        eax
 0078C334    mov         ecx,78D510;'smmFile'
 0078C339    mov         edx,78D52C;'MainMenu'
 0078C33E    mov         eax,ebx
 0078C340    mov         edi,dword ptr [eax]
 0078C342    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C345    mov         edx,dword ptr [ebp-50]
 0078C348    mov         eax,dword ptr [esi+3C4];TMainForm.FileMenu:TMenuItem
 0078C34E    call        TMenuItem.SetCaption
 0078C353    push        78D54C;'&Data'
 0078C358    lea         eax,[ebp-54]
 0078C35B    push        eax
 0078C35C    mov         ecx,78D564;'smmData'
 0078C361    mov         edx,78D52C;'MainMenu'
 0078C366    mov         eax,ebx
 0078C368    mov         edi,dword ptr [eax]
 0078C36A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C36D    mov         edx,dword ptr [ebp-54]
 0078C370    mov         eax,dword ptr [esi+3F8];TMainForm.DataMenu:TMenuItem
 0078C376    call        TMenuItem.SetCaption
 0078C37B    push        78D580;'&Tools'
 0078C380    lea         eax,[ebp-58]
 0078C383    push        eax
 0078C384    mov         ecx,78D59C;'smmTools'
 0078C389    mov         edx,78D52C;'MainMenu'
 0078C38E    mov         eax,ebx
 0078C390    mov         edi,dword ptr [eax]
 0078C392    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C395    mov         edx,dword ptr [ebp-58]
 0078C398    mov         eax,dword ptr [esi+420];TMainForm.ToolsMenu:TMenuItem
 0078C39E    call        TMenuItem.SetCaption
 0078C3A3    push        78D5BC;'&Settings'
 0078C3A8    lea         eax,[ebp-5C]
 0078C3AB    push        eax
 0078C3AC    mov         ecx,78D5DC;'smmSettings'
 0078C3B1    mov         edx,78D52C;'MainMenu'
 0078C3B6    mov         eax,ebx
 0078C3B8    mov         edi,dword ptr [eax]
 0078C3BA    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C3BD    mov         edx,dword ptr [ebp-5C]
 0078C3C0    mov         eax,dword ptr [esi+430];TMainForm.SettingsMenu:TMenuItem
 0078C3C6    call        TMenuItem.SetCaption
 0078C3CB    push        78D600;'&New'
 0078C3D0    lea         eax,[ebp-60]
 0078C3D3    push        eax
 0078C3D4    mov         ecx,78D618;'sFileNewItem'
 0078C3D9    mov         edx,78D52C;'MainMenu'
 0078C3DE    mov         eax,ebx
 0078C3E0    mov         edi,dword ptr [eax]
 0078C3E2    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C3E5    mov         edx,dword ptr [ebp-60]
 0078C3E8    mov         eax,dword ptr [esi+3C8];TMainForm.FileNewItem:TMenuItem
 0078C3EE    call        TMenuItem.SetCaption
 0078C3F3    push        78D640;'&Open ...'
 0078C3F8    lea         eax,[ebp-64]
 0078C3FB    push        eax
 0078C3FC    mov         ecx,78D660;'sFileOpenItem'
 0078C401    mov         edx,78D52C;'MainMenu'
 0078C406    mov         eax,ebx
 0078C408    mov         edi,dword ptr [eax]
 0078C40A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C40D    mov         edx,dword ptr [ebp-64]
 0078C410    mov         eax,dword ptr [esi+3CC];TMainForm.FileOpenItem:TMenuItem
 0078C416    call        TMenuItem.SetCaption
 0078C41B    push        78D688;'&Merge FX file ...'
 0078C420    lea         eax,[ebp-68]
 0078C423    push        eax
 0078C424    mov         ecx,78D6BC;'sFileMergeItem'
 0078C429    mov         edx,78D52C;'MainMenu'
 0078C42E    mov         eax,ebx
 0078C430    mov         edi,dword ptr [eax]
 0078C432    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C435    mov         edx,dword ptr [ebp-68]
 0078C438    mov         eax,dword ptr [esi+3D0];TMainForm.FileMergeFXItem:TMenuItem
 0078C43E    call        TMenuItem.SetCaption
 0078C443    push        78D6E8;'&Merge ESA file ...'
 0078C448    lea         eax,[ebp-6C]
 0078C44B    push        eax
 0078C44C    mov         ecx,78D71C;'sFileMergeEsaItem'
 0078C451    mov         edx,78D52C;'MainMenu'
 0078C456    mov         eax,ebx
 0078C458    mov         edi,dword ptr [eax]
 0078C45A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C45D    mov         edx,dword ptr [ebp-6C]
 0078C460    mov         eax,dword ptr [esi+3D4];TMainForm.FileMergeEsaItem:TMenuItem
 0078C466    call        TMenuItem.SetCaption
 0078C46B    push        78D74C;'&Save'
 0078C470    lea         eax,[ebp-70]
 0078C473    push        eax
 0078C474    mov         ecx,78D764;'sFileSaveItem'
 0078C479    mov         edx,78D52C;'MainMenu'
 0078C47E    mov         eax,ebx
 0078C480    mov         edi,dword ptr [eax]
 0078C482    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C485    mov         edx,dword ptr [ebp-70]
 0078C488    mov         eax,dword ptr [esi+3D8];TMainForm.FileSaveItem:TMenuItem
 0078C48E    call        TMenuItem.SetCaption
 0078C493    push        78D78C;'Save &As ...'
 0078C498    lea         eax,[ebp-74]
 0078C49B    push        eax
 0078C49C    mov         ecx,78D7B4;'sFileSaveAsItem'
 0078C4A1    mov         edx,78D52C;'MainMenu'
 0078C4A6    mov         eax,ebx
 0078C4A8    mov         edi,dword ptr [eax]
 0078C4AA    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C4AD    mov         edx,dword ptr [ebp-74]
 0078C4B0    mov         eax,dword ptr [esi+3DC];TMainForm.FileSaveAsItem:TMenuItem
 0078C4B6    call        TMenuItem.SetCaption
 0078C4BB    push        78D7E0;'&Import ...'
 0078C4C0    lea         eax,[ebp-78]
 0078C4C3    push        eax
 0078C4C4    mov         ecx,78D804;'sFileImportItem'
 0078C4C9    mov         edx,78D52C;'MainMenu'
 0078C4CE    mov         eax,ebx
 0078C4D0    mov         edi,dword ptr [eax]
 0078C4D2    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C4D5    mov         edx,dword ptr [ebp-78]
 0078C4D8    mov         eax,dword ptr [esi+3E4];TMainForm.FileImportItem:TMenuItem
 0078C4DE    call        TMenuItem.SetCaption
 0078C4E3    push        78D830;'&Export ...'
 0078C4E8    lea         eax,[ebp-7C]
 0078C4EB    push        eax
 0078C4EC    mov         ecx,78D854;'sFileExportItem'
 0078C4F1    mov         edx,78D52C;'MainMenu'
 0078C4F6    mov         eax,ebx
 0078C4F8    mov         edi,dword ptr [eax]
 0078C4FA    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C4FD    mov         edx,dword ptr [ebp-7C]
 0078C500    mov         eax,dword ptr [esi+3E8];TMainForm.FileExportItem:TMenuItem
 0078C506    call        TMenuItem.SetCaption
 0078C50B    push        78D880;'&Print ...'
 0078C510    lea         eax,[ebp-80]
 0078C513    push        eax
 0078C514    mov         ecx,78D8A4;'sFilePrintItem'
 0078C519    mov         edx,78D52C;'MainMenu'
 0078C51E    mov         eax,ebx
 0078C520    mov         edi,dword ptr [eax]
 0078C522    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C525    mov         edx,dword ptr [ebp-80]
 0078C528    mov         eax,dword ptr [esi+3EC];TMainForm.FilePrintItem:TMenuItem
 0078C52E    call        TMenuItem.SetCaption
 0078C533    push        78D8D0;'P&rint Setup ...'
 0078C538    lea         eax,[ebp-84]
 0078C53E    push        eax
 0078C53F    mov         ecx,78D900;'sFilePrintSetupItem'
 0078C544    mov         edx,78D52C;'MainMenu'
 0078C549    mov         eax,ebx
 0078C54B    mov         edi,dword ptr [eax]
 0078C54D    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C550    mov         edx,dword ptr [ebp-84]
 0078C556    mov         eax,dword ptr [esi+3F0];TMainForm.FilePrintSetupItem:TMenuItem
 0078C55C    call        TMenuItem.SetCaption
 0078C561    push        78D934;'E&xit'
 0078C566    lea         eax,[ebp-88]
 0078C56C    push        eax
 0078C56D    mov         ecx,78D94C;'sFileExitItem'
 0078C572    mov         edx,78D52C;'MainMenu'
 0078C577    mov         eax,ebx
 0078C579    mov         edi,dword ptr [eax]
 0078C57B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C57E    mov         edx,dword ptr [ebp-88]
 0078C584    mov         eax,dword ptr [esi+3F4];TMainForm.FileExitItem:TMenuItem
 0078C58A    call        TMenuItem.SetCaption
 0078C58F    push        78D974;'&Network Data'
 0078C594    lea         eax,[ebp-8C]
 0078C59A    push        eax
 0078C59B    mov         ecx,78D99C;'sDataNetItem'
 0078C5A0    mov         edx,78D52C;'MainMenu'
 0078C5A5    mov         eax,ebx
 0078C5A7    mov         edi,dword ptr [eax]
 0078C5A9    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C5AC    mov         edx,dword ptr [ebp-8C]
 0078C5B2    mov         eax,dword ptr [esi+3FC];TMainForm.DataNetItem:TMenuItem
 0078C5B8    call        TMenuItem.SetCaption
 0078C5BD    push        78D9C4;'&General Panel Data'
 0078C5C2    lea         eax,[ebp-90]
 0078C5C8    push        eax
 0078C5C9    mov         ecx,78D9F8;'sDataGeneralItem'
 0078C5CE    mov         edx,78D52C;'MainMenu'
 0078C5D3    mov         eax,ebx
 0078C5D5    mov         edi,dword ptr [eax]
 0078C5D7    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C5DA    mov         edx,dword ptr [ebp-90]
 0078C5E0    mov         eax,dword ptr [esi+400];TMainForm.DataGeneralItem:TMenuItem
 0078C5E6    call        TMenuItem.SetCaption
 0078C5EB    push        78DA28;'&Address and Text Data'
 0078C5F0    lea         eax,[ebp-94]
 0078C5F6    push        eax
 0078C5F7    mov         ecx,78DA64;'sDataAddressItem'
 0078C5FC    mov         edx,78D52C;'MainMenu'
 0078C601    mov         eax,ebx
 0078C603    mov         edi,dword ptr [eax]
 0078C605    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C608    mov         edx,dword ptr [ebp-94]
 0078C60E    mov         eax,dword ptr [esi+404];TMainForm.DataAddressItem:TMenuItem
 0078C614    call        TMenuItem.SetCaption
 0078C619    push        78DA94;'&Summary of Addresses'
 0078C61E    lea         eax,[ebp-98]
 0078C624    push        eax
 0078C625    mov         ecx,78DACC;'sDataSummaryItem'
 0078C62A    mov         edx,78D52C;'MainMenu'
 0078C62F    mov         eax,ebx
 0078C631    mov         edi,dword ptr [eax]
 0078C633    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C636    mov         edx,dword ptr [ebp-98]
 0078C63C    mov         eax,dword ptr [esi+41C];TMainForm.DataSummaryItem:TMenuItem
 0078C642    call        TMenuItem.SetCaption
 0078C647    push        78DAFC;'Configuration &Info ...'
 0078C64C    lea         eax,[ebp-9C]
 0078C652    push        eax
 0078C653    mov         ecx,78DB38;'sDataConfigInfoItem'
 0078C658    mov         edx,78D52C;'MainMenu'
 0078C65D    mov         eax,ebx
 0078C65F    mov         edi,dword ptr [eax]
 0078C661    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C664    mov         edx,dword ptr [ebp-9C]
 0078C66A    mov         eax,dword ptr [esi+408];TMainForm.DataConfigInfoItem:TMenuItem
 0078C670    call        TMenuItem.SetCaption
 0078C675    push        78DB6C;'Address Report ...'
 0078C67A    lea         eax,[ebp-0A0]
 0078C680    push        eax
 0078C681    mov         ecx,78DBA0;'sDataAddrReportItem'
 0078C686    mov         edx,78D52C;'MainMenu'
 0078C68B    mov         eax,ebx
 0078C68D    mov         edi,dword ptr [eax]
 0078C68F    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C692    mov         edx,dword ptr [ebp-0A0]
 0078C698    mov         eax,dword ptr [esi+410];TMainForm.DataAddrReportItem:TMenuItem
 0078C69E    call        TMenuItem.SetCaption
 0078C6A3    push        78DBD4;'Delayed controls ...'
 0078C6A8    lea         eax,[ebp-0A4]
 0078C6AE    push        eax
 0078C6AF    mov         ecx,78DC0C;'sDataDelayedControls'
 0078C6B4    mov         edx,78D52C;'MainMenu'
 0078C6B9    mov         eax,ebx
 0078C6BB    mov         edi,dword ptr [eax]
 0078C6BD    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C6C0    mov         edx,dword ptr [ebp-0A4]
 0078C6C6    mov         eax,dword ptr [esi+414];TMainForm.DataDelayedControls:TMenuItem
 0078C6CC    call        TMenuItem.SetCaption
 0078C6D1    push        78DC44;'&Receive from panel ...'
 0078C6D6    lea         eax,[ebp-0A8]
 0078C6DC    push        eax
 0078C6DD    mov         ecx,78DC80;'sToolsReceiveItem'
 0078C6E2    mov         edx,78D52C;'MainMenu'
 0078C6E7    mov         eax,ebx
 0078C6E9    mov         edi,dword ptr [eax]
 0078C6EB    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C6EE    mov         edx,dword ptr [ebp-0A8]
 0078C6F4    mov         eax,dword ptr [esi+424];TMainForm.ToolsReceiveItem:TMenuItem
 0078C6FA    call        TMenuItem.SetCaption
 0078C6FF    push        78DCB0;'&Send to panel ...'
 0078C704    lea         eax,[ebp-0AC]
 0078C70A    push        eax
 0078C70B    mov         ecx,78DCE4;'sToolsSendItem'
 0078C710    mov         edx,78D52C;'MainMenu'
 0078C715    mov         eax,ebx
 0078C717    mov         edi,dword ptr [eax]
 0078C719    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C71C    mov         edx,dword ptr [ebp-0AC]
 0078C722    mov         eax,dword ptr [esi+428];TMainForm.ToolsSendItem:TMenuItem
 0078C728    call        TMenuItem.SetCaption
 0078C72D    push        78DD10;'&Language ...'
 0078C732    lea         eax,[ebp-0B0]
 0078C738    push        eax
 0078C739    mov         ecx,78DD38;'sSettingsLanguage'
 0078C73E    mov         edx,78D52C;'MainMenu'
 0078C743    mov         eax,ebx
 0078C745    mov         edi,dword ptr [eax]
 0078C747    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C74A    mov         edx,dword ptr [ebp-0B0]
 0078C750    mov         eax,dword ptr [esi+434];TMainForm.SettingsLanguage:TMenuItem
 0078C756    call        TMenuItem.SetCaption
 0078C75B    push        78DD68;'Display &font ...'
 0078C760    lea         eax,[ebp-0B4]
 0078C766    push        eax
 0078C767    mov         ecx,78DD98;'sSettingsDisplayFont'
 0078C76C    mov         edx,78D52C;'MainMenu'
 0078C771    mov         eax,ebx
 0078C773    mov         edi,dword ptr [eax]
 0078C775    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C778    mov         edx,dword ptr [ebp-0B4]
 0078C77E    mov         eax,dword ptr [esi+438];TMainForm.SettingsDisplayFont:TMenuItem
 0078C784    call        TMenuItem.SetCaption
 0078C789    push        78DDD0;'&Default Data Folder ...'
 0078C78E    lea         eax,[ebp-0B8]
 0078C794    push        eax
 0078C795    mov         ecx,78DE10;'sSettingsDefFolder'
 0078C79A    mov         edx,78D52C;'MainMenu'
 0078C79F    mov         eax,ebx
 0078C7A1    mov         edi,dword ptr [eax]
 0078C7A3    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C7A6    mov         edx,dword ptr [ebp-0B8]
 0078C7AC    mov         eax,dword ptr [esi+440];TMainForm.DefaultDataFolder:TMenuItem
 0078C7B2    call        TMenuItem.SetCaption
 0078C7B7    push        78DE44;'&Specials ...'
 0078C7BC    lea         eax,[ebp-0BC]
 0078C7C2    push        eax
 0078C7C3    mov         ecx,78DE6C;'sSettingsSpecials'
 0078C7C8    mov         edx,78D52C;'MainMenu'
 0078C7CD    mov         eax,ebx
 0078C7CF    mov         edi,dword ptr [eax]
 0078C7D1    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C7D4    mov         edx,dword ptr [ebp-0BC]
 0078C7DA    mov         eax,dword ptr [esi+43C];TMainForm.SettingsSpecials:TMenuItem
 0078C7E0    call        TMenuItem.SetCaption
 0078C7E5    push        78DE9C;'Start a new file|'
 0078C7EA    lea         eax,[ebp-0C0]
 0078C7F0    push        eax
 0078C7F1    mov         ecx,78DECC;'sFileNewBtnHint'
 0078C7F6    mov         edx,78DEF8;'SpeedButtons'
 0078C7FB    mov         eax,ebx
 0078C7FD    mov         edi,dword ptr [eax]
 0078C7FF    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C802    mov         edx,dword ptr [ebp-0C0]
 0078C808    mov         eax,dword ptr [esi+448];TMainForm.FileNewBtn:TSpeedButton
 0078C80E    add         eax,90;TSpeedButton.FHint:string
 0078C813    call        @UStrAsg
 0078C818    push        78DF20;'Open an existing file|'
 0078C81D    lea         eax,[ebp-0C4]
 0078C823    push        eax
 0078C824    mov         ecx,78DF5C;'sFileOpenBtnHint'
 0078C829    mov         edx,78DEF8;'SpeedButtons'
 0078C82E    mov         eax,ebx
 0078C830    mov         edi,dword ptr [eax]
 0078C832    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C835    mov         edx,dword ptr [ebp-0C4]
 0078C83B    mov         eax,dword ptr [esi+44C];TMainForm.FileOpenBtn:TSpeedButton
 0078C841    add         eax,90;TSpeedButton.FHint:string
 0078C846    call        @UStrAsg
 0078C84B    push        78DF8C;'Save the currently open file|'
 0078C850    lea         eax,[ebp-0C8]
 0078C856    push        eax
 0078C857    mov         ecx,78DFD4;'sFileSaveBtnHint'
 0078C85C    mov         edx,78DEF8;'SpeedButtons'
 0078C861    mov         eax,ebx
 0078C863    mov         edi,dword ptr [eax]
 0078C865    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C868    mov         edx,dword ptr [ebp-0C8]
 0078C86E    mov         eax,dword ptr [esi+450];TMainForm.FileSaveBtn:TSpeedButton
 0078C874    add         eax,90;TSpeedButton.FHint:string
 0078C879    call        @UStrAsg
 0078C87E    push        78E004;'Save under a new filename|'
 0078C883    lea         eax,[ebp-0CC]
 0078C889    push        eax
 0078C88A    mov         ecx,78E048;'sFileSaveAsBtnHint'
 0078C88F    mov         edx,78DEF8;'SpeedButtons'
 0078C894    mov         eax,ebx
 0078C896    mov         edi,dword ptr [eax]
 0078C898    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C89B    mov         edx,dword ptr [ebp-0CC]
 0078C8A1    mov         eax,dword ptr [esi+454];TMainForm.FileSaveAsBtn:TSpeedButton
 0078C8A7    add         eax,90;TSpeedButton.FHint:string
 0078C8AC    call        @UStrAsg
 0078C8B1    push        78E07C;'Print |'
 0078C8B6    lea         eax,[ebp-0D0]
 0078C8BC    push        eax
 0078C8BD    mov         ecx,78E098;'sFilePrintBtnHint'
 0078C8C2    mov         edx,78DEF8;'SpeedButtons'
 0078C8C7    mov         eax,ebx
 0078C8C9    mov         edi,dword ptr [eax]
 0078C8CB    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C8CE    mov         edx,dword ptr [ebp-0D0]
 0078C8D4    mov         eax,dword ptr [esi+458];TMainForm.FilePrintBtn:TSpeedButton
 0078C8DA    add         eax,90;TSpeedButton.FHint:string
 0078C8DF    call        @UStrAsg
 0078C8E4    push        78E0C8;'Setup printer|'
 0078C8E9    lea         eax,[ebp-0D4]
 0078C8EF    push        eax
 0078C8F0    mov         ecx,78E0F4;'sFilePrintSetupBtnHint'
 0078C8F5    mov         edx,78DEF8;'SpeedButtons'
 0078C8FA    mov         eax,ebx
 0078C8FC    mov         edi,dword ptr [eax]
 0078C8FE    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C901    mov         edx,dword ptr [ebp-0D4]
 0078C907    mov         eax,dword ptr [esi+45C];TMainForm.FilePrintSetupBtn:TSpeedButton
 0078C90D    add         eax,90;TSpeedButton.FHint:string
 0078C912    call        @UStrAsg
 0078C917    push        78E130;'Exit|'
 0078C91C    lea         eax,[ebp-0D8]
 0078C922    push        eax
 0078C923    mov         ecx,78E148;'sFileExitBtnHint'
 0078C928    mov         edx,78DEF8;'SpeedButtons'
 0078C92D    mov         eax,ebx
 0078C92F    mov         edi,dword ptr [eax]
 0078C931    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C934    mov         edx,dword ptr [ebp-0D8]
 0078C93A    mov         eax,dword ptr [esi+460];TMainForm.FileExitBtn:TSpeedButton
 0078C940    add         eax,90;TSpeedButton.FHint:string
 0078C945    call        @UStrAsg
 0078C94A    push        78E178;'Edit general data|'
 0078C94F    lea         eax,[ebp-0DC]
 0078C955    push        eax
 0078C956    mov         ecx,78E1AC;'sDataGeneralBtnHint'
 0078C95B    mov         edx,78DEF8;'SpeedButtons'
 0078C960    mov         eax,ebx
 0078C962    mov         edi,dword ptr [eax]
 0078C964    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C967    mov         edx,dword ptr [ebp-0DC]
 0078C96D    mov         eax,dword ptr [esi+468];TMainForm.DataGeneralBtn:TSpeedButton
 0078C973    add         eax,90;TSpeedButton.FHint:string
 0078C978    call        @UStrAsg
 0078C97D    push        78E1E0;'Edit address and text data|'
 0078C982    lea         eax,[ebp-0E0]
 0078C988    push        eax
 0078C989    mov         ecx,78E224;'sDataAddressBtnHint'
 0078C98E    mov         edx,78DEF8;'SpeedButtons'
 0078C993    mov         eax,ebx
 0078C995    mov         edi,dword ptr [eax]
 0078C997    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C99A    mov         edx,dword ptr [ebp-0E0]
 0078C9A0    mov         eax,dword ptr [esi+46C];TMainForm.DataAddressBtn:TSpeedButton
 0078C9A6    add         eax,90;TSpeedButton.FHint:string
 0078C9AB    call        @UStrAsg
 0078C9B0    push        78E258;'Open the summary window|'
 0078C9B5    lea         eax,[ebp-0E4]
 0078C9BB    push        eax
 0078C9BC    mov         ecx,78E298;'sDataSummaryBtnHint'
 0078C9C1    mov         edx,78DEF8;'SpeedButtons'
 0078C9C6    mov         eax,ebx
 0078C9C8    mov         edi,dword ptr [eax]
 0078C9CA    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078C9CD    mov         edx,dword ptr [ebp-0E4]
 0078C9D3    mov         eax,dword ptr [esi+470];TMainForm.DataSummaryBtn:TSpeedButton
 0078C9D9    add         eax,90;TSpeedButton.FHint:string
 0078C9DE    call        @UStrAsg
 0078C9E3    push        78E2CC;'Receive data from panel|'
 0078C9E8    lea         eax,[ebp-0E8]
 0078C9EE    push        eax
 0078C9EF    mov         ecx,78E30C;'sToolsReceiveBtnHint'
 0078C9F4    mov         edx,78DEF8;'SpeedButtons'
 0078C9F9    mov         eax,ebx
 0078C9FB    mov         edi,dword ptr [eax]
 0078C9FD    call        dword ptr [edi+4];TFXIniFile.ReadString
 0078CA00    mov         edx,dword ptr [ebp-0E8]
 0078CA06    mov         eax,dword ptr [esi+474];TMainForm.ToolsReceiveBtn:TSpeedButton
 0078CA0C    add         eax,90;TSpeedButton.FHint:string
 0078CA11    call        @UStrAsg
 0078CA16    push        78E344;'Send data to panel|'
 0078CA1B    lea         eax,[ebp-0EC]
 0078CA21    push        eax
 0078CA22    mov         ecx,78E378;'sToolsSendBtnHint'
 0078CA27    mov         edx,78DEF8;'SpeedButtons'
 0078CA2C    mov         eax,ebx
 0078CA2E    mov         ebx,dword ptr [eax]
 0078CA30    call        dword ptr [ebx+4];TFXIniFile.ReadString
 0078CA33    mov         edx,dword ptr [ebp-0EC]
 0078CA39    mov         eax,dword ptr [esi+478];TMainForm.ToolsSendBtn:TSpeedButton
 0078CA3F    add         eax,90;TSpeedButton.FHint:string
 0078CA44    call        @UStrAsg
 0078CA49    xor         eax,eax
 0078CA4B    pop         edx
 0078CA4C    pop         ecx
 0078CA4D    pop         ecx
 0078CA4E    mov         dword ptr fs:[eax],edx
 0078CA51    push        78CA6E
 0078CA56    lea         eax,[ebp-0EC]
 0078CA5C    mov         edx,3B
 0078CA61    call        @UStrArrayClr
 0078CA66    ret
>0078CA67    jmp         @HandleFinally
>0078CA6C    jmp         0078CA56
 0078CA6E    pop         edi
 0078CA6F    pop         esi
 0078CA70    pop         ebx
 0078CA71    mov         esp,ebp
 0078CA73    pop         ebp
 0078CA74    ret
*}
end;

//0078E39C
procedure TMainForm.FormKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);
begin
{*
 0078E39C    push        ebp
 0078E39D    mov         ebp,esp
 0078E39F    push        ebx
 0078E3A0    push        esi
 0078E3A1    mov         esi,ecx
 0078E3A3    mov         ebx,eax
 0078E3A5    movzx       eax,word ptr ds:[78E428];0x4 gvar_0078E428
 0078E3AC    cmp         ax,word ptr [ebp+8]
>0078E3B0    jne         0078E41F
 0078E3B2    cmp         word ptr [esi],7B
>0078E3B6    jne         0078E41F
 0078E3B8    mov         eax,[007C4E78];^Screen:TScreen
 0078E3BD    mov         eax,dword ptr [eax]
 0078E3BF    call        TScreen.GetMonitorCount
 0078E3C4    push        eax
 0078E3C5    mov         eax,dword ptr [ebx+4E0];TMainForm.UseMonitor:Integer
 0078E3CB    add         eax,1
>0078E3CE    jno         0078E3D5
 0078E3D0    call        @IntOver
 0078E3D5    pop         edx
 0078E3D6    mov         ecx,edx
 0078E3D8    cdq
 0078E3D9    idiv        eax,ecx
 0078E3DB    mov         esi,edx
 0078E3DD    mov         dword ptr [ebx+4E0],esi;TMainForm.UseMonitor:Integer
 0078E3E3    mov         eax,[007C4E78];^Screen:TScreen
 0078E3E8    mov         eax,dword ptr [eax]
 0078E3EA    mov         edx,esi
 0078E3EC    call        TScreen.GetMonitor
 0078E3F1    call        005C7B90
 0078E3F6    mov         edx,eax
 0078E3F8    mov         eax,ebx
 0078E3FA    call        TCustomForm.SetLeft
 0078E3FF    mov         eax,[007C4E78];^Screen:TScreen
 0078E404    mov         eax,dword ptr [eax]
 0078E406    mov         edx,dword ptr [ebx+4E0];TMainForm.UseMonitor:Integer
 0078E40C    call        TScreen.GetMonitor
 0078E411    call        005C7BC4
 0078E416    mov         edx,eax
 0078E418    mov         eax,ebx
 0078E41A    call        TCustomForm.SetTop
 0078E41F    pop         esi
 0078E420    pop         ebx
 0078E421    pop         ebp
 0078E422    ret         4
*}
end;

//0078E42C
procedure TMainForm.tvFXNetChanging(Sender:TObject; Node:TTreeNode; var AllowChange:Boolean);
begin
{*
 0078E42C    push        ebp
 0078E42D    mov         ebp,esp
 0078E42F    push        ebx
 0078E430    mov         ebx,dword ptr [ebp+8]
 0078E433    cmp         byte ptr ds:[9037D4],0;gvar_009037D4
>0078E43A    jne         0078E441
 0078E43C    mov         byte ptr [ebx],0
>0078E43F    jmp         0078E455
 0078E441    mov         eax,ecx
 0078E443    call        00539908
 0078E448    sub         eax,3
>0078E44B    jae         0078E452
 0078E44D    mov         byte ptr [ebx],1
>0078E450    jmp         0078E455
 0078E452    mov         byte ptr [ebx],0
 0078E455    pop         ebx
 0078E456    pop         ebp
 0078E457    ret         4
*}
end;

//0078E45C
procedure TMainForm.tvFXNetChange(Sender:TObject; Node:TTreeNode);
begin
{*
 0078E45C    push        ebp
 0078E45D    mov         ebp,esp
 0078E45F    push        0
 0078E461    push        0
 0078E463    push        ebx
 0078E464    push        esi
 0078E465    mov         esi,ecx
 0078E467    mov         ebx,eax
 0078E469    xor         eax,eax
 0078E46B    push        ebp
 0078E46C    push        78E55E
 0078E471    push        dword ptr fs:[eax]
 0078E474    mov         dword ptr fs:[eax],esp
 0078E477    mov         eax,esi
 0078E479    call        00539908
 0078E47E    sub         eax,1
>0078E481    jb          0078E48D
>0078E483    je          0078E4AD
 0078E485    dec         eax
>0078E486    je          0078E4F2
>0078E488    jmp         0078E53C
 0078E48D    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 0078E492    mov         dword ptr [eax],0FFFFFFFF
 0078E498    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0078E49D    xor         edx,edx
 0078E49F    mov         dword ptr [eax],edx
 0078E4A1    mov         eax,ebx
 0078E4A3    call        TMainForm.EnableFXNetLevelMenuItems
>0078E4A8    jmp         0078E53C
 0078E4AD    lea         ecx,[ebp-4]
 0078E4B0    mov         edx,2
 0078E4B5    mov         eax,dword ptr [esi+8];TTreeNode.FText:string
 0078E4B8    call        00431F40
 0078E4BD    mov         eax,dword ptr [ebp-4]
 0078E4C0    call        StrToInt
 0078E4C5    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 0078E4CB    mov         dword ptr [edx],eax
 0078E4CD    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 0078E4D3    mov         edx,dword ptr [edx]
 0078E4D5    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E4DA    mov         eax,dword ptr [eax]
 0078E4DC    call        TFXNet.GetPanel
 0078E4E1    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0078E4E7    mov         dword ptr [edx],eax
 0078E4E9    mov         eax,ebx
 0078E4EB    call        TMainForm.EnablePanelLevelMenuItems
>0078E4F0    jmp         0078E53C
 0078E4F2    mov         eax,esi
 0078E4F4    call        005391E4
 0078E4F9    mov         eax,dword ptr [eax+8]
 0078E4FC    lea         ecx,[ebp-8]
 0078E4FF    mov         edx,2
 0078E504    call        00431F40
 0078E509    mov         eax,dword ptr [ebp-8]
 0078E50C    call        StrToInt
 0078E511    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 0078E517    mov         dword ptr [edx],eax
 0078E519    mov         edx,dword ptr ds:[7C45D8];^gvar_008DF5D0:Integer
 0078E51F    mov         edx,dword ptr [edx]
 0078E521    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E526    mov         eax,dword ptr [eax]
 0078E528    call        TFXNet.GetPanel
 0078E52D    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0078E533    mov         dword ptr [edx],eax
 0078E535    mov         eax,ebx
 0078E537    call        TMainForm.EnablePanelLevelMenuItems
 0078E53C    mov         eax,ebx
 0078E53E    call        TMainForm.UpdateStatusbar
 0078E543    xor         eax,eax
 0078E545    pop         edx
 0078E546    pop         ecx
 0078E547    pop         ecx
 0078E548    mov         dword ptr fs:[eax],edx
 0078E54B    push        78E565
 0078E550    lea         eax,[ebp-8]
 0078E553    mov         edx,2
 0078E558    call        @UStrArrayClr
 0078E55D    ret
>0078E55E    jmp         @HandleFinally
>0078E563    jmp         0078E550
 0078E565    pop         esi
 0078E566    pop         ebx
 0078E567    pop         ecx
 0078E568    pop         ecx
 0078E569    pop         ebp
 0078E56A    ret
*}
end;

//0078E56C
procedure TMainForm.tvFXNetDblClick(Sender:TObject);
begin
{*
 0078E56C    push        ebx
 0078E56D    push        esi
 0078E56E    mov         esi,eax
 0078E570    cmp         byte ptr ds:[9037D4],0;gvar_009037D4
>0078E577    je          0078E5B4
 0078E579    mov         eax,edx
 0078E57B    call        0053BB4C
 0078E580    mov         ebx,eax
 0078E582    mov         eax,ebx
 0078E584    call        00539908
 0078E589    sub         eax,1
>0078E58C    jb          0078E595
>0078E58E    je          0078E5A0
 0078E590    dec         eax
>0078E591    je          0078E5AB
>0078E593    jmp         0078E5B4
 0078E595    mov         edx,ebx
 0078E597    mov         eax,esi
 0078E599    call        TMainForm.DataNetClick
>0078E59E    jmp         0078E5B4
 0078E5A0    mov         edx,ebx
 0078E5A2    mov         eax,esi
 0078E5A4    call        TMainForm.DataGeneralClick
>0078E5A9    jmp         0078E5B4
 0078E5AB    mov         edx,ebx
 0078E5AD    mov         eax,esi
 0078E5AF    call        TMainForm.DataAddressClick
 0078E5B4    pop         esi
 0078E5B5    pop         ebx
 0078E5B6    ret
*}
end;

//0078E5B8
procedure TMainForm.UpdateTreeView;
begin
{*
 0078E5B8    push        ebp
 0078E5B9    mov         ebp,esp
 0078E5BB    mov         ecx,15
 0078E5C0    push        0
 0078E5C2    push        0
 0078E5C4    dec         ecx
>0078E5C5    jne         0078E5C0
 0078E5C7    push        ebx
 0078E5C8    push        esi
 0078E5C9    push        edi
 0078E5CA    mov         dword ptr [ebp-0C],eax
 0078E5CD    xor         eax,eax
 0078E5CF    push        ebp
 0078E5D0    push        78EC18
 0078E5D5    push        dword ptr fs:[eax]
 0078E5D8    mov         dword ptr fs:[eax],esp
 0078E5DB    mov         eax,dword ptr [ebp-0C]
 0078E5DE    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E5E4    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E5EA    call        TTreeNodes.BeginUpdate
 0078E5EF    mov         eax,dword ptr [ebp-0C]
 0078E5F2    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E5F8    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E5FE    call        TTreeNodes.Clear
 0078E603    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E608    mov         eax,dword ptr [eax]
 0078E60A    mov         ecx,dword ptr [eax+4]
 0078E60D    mov         eax,dword ptr [ebp-0C]
 0078E610    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E616    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E61C    xor         edx,edx
 0078E61E    call        TTreeNodes.Add
 0078E623    mov         edi,eax
 0078E625    xor         esi,esi
 0078E627    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E62C    mov         eax,dword ptr [eax]
 0078E62E    mov         edx,esi
 0078E630    call        TFXNet.GetPanel
 0078E635    test        eax,eax
>0078E637    je          0078EACA
 0078E63D    lea         eax,[ebp-4]
 0078E640    push        eax
 0078E641    mov         dword ptr [ebp-18],esi
 0078E644    mov         byte ptr [ebp-14],0
 0078E648    lea         edx,[ebp-18]
 0078E64B    xor         ecx,ecx
 0078E64D    mov         eax,78EC34;'%.2d'
 0078E652    call        Format
 0078E657    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E65C    mov         eax,dword ptr [eax]
 0078E65E    mov         edx,esi
 0078E660    call        TFXNet.GetPanel
 0078E665    mov         ebx,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 0078E668    lea         edx,[ebp-8]
 0078E66B    mov         eax,ebx
 0078E66D    call        006A2434
 0078E672    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E677    mov         eax,dword ptr [eax]
 0078E679    mov         edx,esi
 0078E67B    call        TFXNet.GetPanel
 0078E680    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 0078E683    add         eax,0FFFFFFFD
 0078E686    sub         eax,6
>0078E689    jb          0078E6A0
 0078E68B    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E690    mov         eax,dword ptr [eax]
 0078E692    mov         edx,esi
 0078E694    call        TFXNet.GetPanel
 0078E699    mov         dword ptr [eax+4],3;TFXPanel.iType:Integer
 0078E6A0    push        dword ptr [ebp-4]
 0078E6A3    push        78EC4C;' - '
 0078E6A8    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078E6AD    mov         eax,dword ptr [eax]
 0078E6AF    mov         edx,esi
 0078E6B1    call        TFXNet.GetPanel
 0078E6B6    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 0078E6B9    add         eax,0FFFFFFFD
 0078E6BC    cmp         eax,5
>0078E6BF    jbe         0078E6C6
 0078E6C1    call        @BoundErr
 0078E6C6    add         eax,3
 0078E6C9    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 0078E6CF    push        dword ptr [edx+eax*4-0C]
 0078E6D3    push        78EC4C;' - '
 0078E6D8    push        dword ptr [ebp-8]
 0078E6DB    lea         eax,[ebp-1C]
 0078E6DE    mov         edx,5
 0078E6E3    call        @UStrCatN
 0078E6E8    mov         ecx,dword ptr [ebp-1C]
 0078E6EB    mov         eax,dword ptr [ebp-0C]
 0078E6EE    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E6F4    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E6FA    mov         edx,edi
 0078E6FC    call        TTreeNodes.AddChild
 0078E701    mov         dword ptr [ebp-10],eax
 0078E704    mov         dl,1
 0078E706    mov         eax,ebx
 0078E708    call        TFXPPD.GetLCType
 0078E70D    test        al,al
>0078E70F    jbe         0078E7EA
 0078E715    mov         dl,1
 0078E717    mov         eax,ebx
 0078E719    call        TFXPPD.GetLCFirstLoop
 0078E71E    movzx       eax,al
 0078E721    lea         edx,[ebp-2C]
 0078E724    call        IntToStr
 0078E729    mov         ecx,dword ptr [ebp-2C]
 0078E72C    lea         eax,[ebp-28]
 0078E72F    mov         edx,78EC60;'00'
 0078E734    call        @UStrCat3
 0078E739    mov         eax,dword ptr [ebp-28]
 0078E73C    lea         ecx,[ebp-24]
 0078E73F    mov         edx,3
 0078E744    call        00431F5C
 0078E749    mov         ecx,dword ptr [ebp-24]
 0078E74C    lea         eax,[ebp-20]
 0078E74F    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078E755    call        @UStrCat3
 0078E75A    mov         ecx,dword ptr [ebp-20]
 0078E75D    mov         eax,dword ptr [ebp-0C]
 0078E760    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E766    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E76C    mov         edx,dword ptr [ebp-10]
 0078E76F    call        TTreeNodes.AddChild
 0078E774    mov         dl,1
 0078E776    mov         eax,ebx
 0078E778    call        TFXPPD.GetLCNumOfLoops
 0078E77D    cmp         al,2
>0078E77F    jne         0078E7EA
 0078E781    mov         dl,1
 0078E783    mov         eax,ebx
 0078E785    call        TFXPPD.GetLCFirstLoop
 0078E78A    movzx       eax,al
 0078E78D    add         eax,1
>0078E790    jno         0078E797
 0078E792    call        @IntOver
 0078E797    lea         edx,[ebp-3C]
 0078E79A    call        IntToStr
 0078E79F    mov         ecx,dword ptr [ebp-3C]
 0078E7A2    lea         eax,[ebp-38]
 0078E7A5    mov         edx,78EC60;'00'
 0078E7AA    call        @UStrCat3
 0078E7AF    mov         eax,dword ptr [ebp-38]
 0078E7B2    lea         ecx,[ebp-34]
 0078E7B5    mov         edx,3
 0078E7BA    call        00431F5C
 0078E7BF    mov         ecx,dword ptr [ebp-34]
 0078E7C2    lea         eax,[ebp-30]
 0078E7C5    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078E7CB    call        @UStrCat3
 0078E7D0    mov         ecx,dword ptr [ebp-30]
 0078E7D3    mov         eax,dword ptr [ebp-0C]
 0078E7D6    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E7DC    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E7E2    mov         edx,dword ptr [ebp-10]
 0078E7E5    call        TTreeNodes.AddChild
 0078E7EA    mov         dl,2
 0078E7EC    mov         eax,ebx
 0078E7EE    call        TFXPPD.GetLCType
 0078E7F3    test        al,al
>0078E7F5    jbe         0078E8D0
 0078E7FB    mov         dl,2
 0078E7FD    mov         eax,ebx
 0078E7FF    call        TFXPPD.GetLCFirstLoop
 0078E804    movzx       eax,al
 0078E807    lea         edx,[ebp-4C]
 0078E80A    call        IntToStr
 0078E80F    mov         ecx,dword ptr [ebp-4C]
 0078E812    lea         eax,[ebp-48]
 0078E815    mov         edx,78EC60;'00'
 0078E81A    call        @UStrCat3
 0078E81F    mov         eax,dword ptr [ebp-48]
 0078E822    lea         ecx,[ebp-44]
 0078E825    mov         edx,3
 0078E82A    call        00431F5C
 0078E82F    mov         ecx,dword ptr [ebp-44]
 0078E832    lea         eax,[ebp-40]
 0078E835    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078E83B    call        @UStrCat3
 0078E840    mov         ecx,dword ptr [ebp-40]
 0078E843    mov         eax,dword ptr [ebp-0C]
 0078E846    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E84C    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E852    mov         edx,dword ptr [ebp-10]
 0078E855    call        TTreeNodes.AddChild
 0078E85A    mov         dl,2
 0078E85C    mov         eax,ebx
 0078E85E    call        TFXPPD.GetLCNumOfLoops
 0078E863    cmp         al,2
>0078E865    jne         0078E8D0
 0078E867    mov         dl,2
 0078E869    mov         eax,ebx
 0078E86B    call        TFXPPD.GetLCFirstLoop
 0078E870    movzx       eax,al
 0078E873    add         eax,1
>0078E876    jno         0078E87D
 0078E878    call        @IntOver
 0078E87D    lea         edx,[ebp-5C]
 0078E880    call        IntToStr
 0078E885    mov         ecx,dword ptr [ebp-5C]
 0078E888    lea         eax,[ebp-58]
 0078E88B    mov         edx,78EC60;'00'
 0078E890    call        @UStrCat3
 0078E895    mov         eax,dword ptr [ebp-58]
 0078E898    lea         ecx,[ebp-54]
 0078E89B    mov         edx,3
 0078E8A0    call        00431F5C
 0078E8A5    mov         ecx,dword ptr [ebp-54]
 0078E8A8    lea         eax,[ebp-50]
 0078E8AB    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078E8B1    call        @UStrCat3
 0078E8B6    mov         ecx,dword ptr [ebp-50]
 0078E8B9    mov         eax,dword ptr [ebp-0C]
 0078E8BC    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E8C2    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E8C8    mov         edx,dword ptr [ebp-10]
 0078E8CB    call        TTreeNodes.AddChild
 0078E8D0    mov         dl,3
 0078E8D2    mov         eax,ebx
 0078E8D4    call        TFXPPD.GetLCType
 0078E8D9    test        al,al
>0078E8DB    jbe         0078E9B6
 0078E8E1    mov         dl,3
 0078E8E3    mov         eax,ebx
 0078E8E5    call        TFXPPD.GetLCFirstLoop
 0078E8EA    movzx       eax,al
 0078E8ED    lea         edx,[ebp-6C]
 0078E8F0    call        IntToStr
 0078E8F5    mov         ecx,dword ptr [ebp-6C]
 0078E8F8    lea         eax,[ebp-68]
 0078E8FB    mov         edx,78EC60;'00'
 0078E900    call        @UStrCat3
 0078E905    mov         eax,dword ptr [ebp-68]
 0078E908    lea         ecx,[ebp-64]
 0078E90B    mov         edx,3
 0078E910    call        00431F5C
 0078E915    mov         ecx,dword ptr [ebp-64]
 0078E918    lea         eax,[ebp-60]
 0078E91B    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078E921    call        @UStrCat3
 0078E926    mov         ecx,dword ptr [ebp-60]
 0078E929    mov         eax,dword ptr [ebp-0C]
 0078E92C    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E932    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E938    mov         edx,dword ptr [ebp-10]
 0078E93B    call        TTreeNodes.AddChild
 0078E940    mov         dl,3
 0078E942    mov         eax,ebx
 0078E944    call        TFXPPD.GetLCNumOfLoops
 0078E949    cmp         al,2
>0078E94B    jne         0078E9B6
 0078E94D    mov         dl,3
 0078E94F    mov         eax,ebx
 0078E951    call        TFXPPD.GetLCFirstLoop
 0078E956    movzx       eax,al
 0078E959    add         eax,1
>0078E95C    jno         0078E963
 0078E95E    call        @IntOver
 0078E963    lea         edx,[ebp-7C]
 0078E966    call        IntToStr
 0078E96B    mov         ecx,dword ptr [ebp-7C]
 0078E96E    lea         eax,[ebp-78]
 0078E971    mov         edx,78EC60;'00'
 0078E976    call        @UStrCat3
 0078E97B    mov         eax,dword ptr [ebp-78]
 0078E97E    lea         ecx,[ebp-74]
 0078E981    mov         edx,3
 0078E986    call        00431F5C
 0078E98B    mov         ecx,dword ptr [ebp-74]
 0078E98E    lea         eax,[ebp-70]
 0078E991    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078E997    call        @UStrCat3
 0078E99C    mov         ecx,dword ptr [ebp-70]
 0078E99F    mov         eax,dword ptr [ebp-0C]
 0078E9A2    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078E9A8    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078E9AE    mov         edx,dword ptr [ebp-10]
 0078E9B1    call        TTreeNodes.AddChild
 0078E9B6    mov         dl,4
 0078E9B8    mov         eax,ebx
 0078E9BA    call        TFXPPD.GetLCType
 0078E9BF    test        al,al
>0078E9C1    jbe         0078EACA
 0078E9C7    mov         dl,4
 0078E9C9    mov         eax,ebx
 0078E9CB    call        TFXPPD.GetLCFirstLoop
 0078E9D0    movzx       eax,al
 0078E9D3    lea         edx,[ebp-8C]
 0078E9D9    call        IntToStr
 0078E9DE    mov         ecx,dword ptr [ebp-8C]
 0078E9E4    lea         eax,[ebp-88]
 0078E9EA    mov         edx,78EC60;'00'
 0078E9EF    call        @UStrCat3
 0078E9F4    mov         eax,dword ptr [ebp-88]
 0078E9FA    lea         ecx,[ebp-84]
 0078EA00    mov         edx,3
 0078EA05    call        00431F5C
 0078EA0A    mov         ecx,dword ptr [ebp-84]
 0078EA10    lea         eax,[ebp-80]
 0078EA13    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078EA19    call        @UStrCat3
 0078EA1E    mov         ecx,dword ptr [ebp-80]
 0078EA21    mov         eax,dword ptr [ebp-0C]
 0078EA24    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078EA2A    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078EA30    mov         edx,dword ptr [ebp-10]
 0078EA33    call        TTreeNodes.AddChild
 0078EA38    mov         dl,4
 0078EA3A    mov         eax,ebx
 0078EA3C    call        TFXPPD.GetLCNumOfLoops
 0078EA41    cmp         al,2
>0078EA43    jne         0078EACA
 0078EA49    mov         dl,4
 0078EA4B    mov         eax,ebx
 0078EA4D    call        TFXPPD.GetLCFirstLoop
 0078EA52    movzx       eax,al
 0078EA55    add         eax,1
>0078EA58    jno         0078EA5F
 0078EA5A    call        @IntOver
 0078EA5F    lea         edx,[ebp-9C]
 0078EA65    call        IntToStr
 0078EA6A    mov         ecx,dword ptr [ebp-9C]
 0078EA70    lea         eax,[ebp-98]
 0078EA76    mov         edx,78EC60;'00'
 0078EA7B    call        @UStrCat3
 0078EA80    mov         eax,dword ptr [ebp-98]
 0078EA86    lea         ecx,[ebp-94]
 0078EA8C    mov         edx,3
 0078EA91    call        00431F5C
 0078EA96    mov         ecx,dword ptr [ebp-94]
 0078EA9C    lea         eax,[ebp-90]
 0078EAA2    mov         edx,dword ptr ds:[7C411C];^'Loop '
 0078EAA8    call        @UStrCat3
 0078EAAD    mov         ecx,dword ptr [ebp-90]
 0078EAB3    mov         eax,dword ptr [ebp-0C]
 0078EAB6    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078EABC    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078EAC2    mov         edx,dword ptr [ebp-10]
 0078EAC5    call        TTreeNodes.AddChild
 0078EACA    inc         esi
 0078EACB    cmp         esi,21
>0078EACE    jne         0078E627
 0078EAD4    mov         eax,dword ptr [ebp-0C]
 0078EAD7    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078EADD    mov         dl,1
 0078EADF    call        TCustomTreeView.AlphaSort
 0078EAE4    xor         edx,edx
 0078EAE6    mov         eax,edi
 0078EAE8    call        TTreeNode.Expand
 0078EAED    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 0078EAF2    cmp         dword ptr [eax],0FFFFFFFF
>0078EAF5    jne         0078EB16
 0078EAF7    mov         eax,dword ptr [ebp-0C]
 0078EAFA    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078EB00    movzx       ecx,word ptr ds:[78EC68];0x0 gvar_0078EC68
 0078EB07    mov         edx,edi
 0078EB09    mov         ebx,dword ptr [eax]
 0078EB0B    call        dword ptr [ebx+124];TCustomTreeView.Select
>0078EB11    jmp         0078EBC0
 0078EB16    lea         edx,[ebp-0A4]
 0078EB1C    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 0078EB21    mov         eax,dword ptr [eax]
 0078EB23    call        IntToStr
 0078EB28    mov         ecx,dword ptr [ebp-0A4]
 0078EB2E    lea         eax,[ebp-0A0]
 0078EB34    mov         edx,78EC60;'00'
 0078EB39    call        @UStrCat3
 0078EB3E    mov         eax,dword ptr [ebp-0A0]
 0078EB44    lea         ecx,[ebp-8]
 0078EB47    mov         edx,2
 0078EB4C    call        00431F5C
 0078EB51    mov         eax,edi
 0078EB53    call        00539574
 0078EB58    mov         ebx,eax
 0078EB5A    sub         ebx,1
>0078EB5D    jno         0078EB64
 0078EB5F    call        @IntOver
 0078EB64    test        ebx,ebx
>0078EB66    jl          0078EBC0
 0078EB68    inc         ebx
 0078EB69    xor         esi,esi
 0078EB6B    mov         edx,esi
 0078EB6D    mov         eax,edi
 0078EB6F    call        TTreeNode.GetItem
 0078EB74    mov         eax,dword ptr [eax+8];TTreeNode.FText:string
 0078EB77    lea         ecx,[ebp-0A8]
 0078EB7D    mov         edx,2
 0078EB82    call        00431F40
 0078EB87    mov         edx,dword ptr [ebp-0A8]
 0078EB8D    mov         eax,dword ptr [ebp-8]
 0078EB90    call        @UStrEqual
>0078EB95    jne         0078EBBC
 0078EB97    mov         edx,esi
 0078EB99    mov         eax,edi
 0078EB9B    call        TTreeNode.GetItem
 0078EBA0    mov         edx,eax
 0078EBA2    mov         eax,dword ptr [ebp-0C]
 0078EBA5    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078EBAB    movzx       ecx,word ptr ds:[78EC68];0x0 gvar_0078EC68
 0078EBB2    mov         ebx,dword ptr [eax]
 0078EBB4    call        dword ptr [ebx+124];TCustomTreeView.Select
>0078EBBA    jmp         0078EBC0
 0078EBBC    inc         esi
 0078EBBD    dec         ebx
>0078EBBE    jne         0078EB6B
 0078EBC0    mov         eax,dword ptr [ebp-0C]
 0078EBC3    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078EBC9    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078EBCF    call        TTreeNodes.EndUpdate
 0078EBD4    mov         eax,dword ptr [ebp-0C]
 0078EBD7    mov         eax,dword ptr [eax+494];TMainForm.tvFXNet:TTreeView
 0078EBDD    mov         edx,dword ptr [eax]
 0078EBDF    call        dword ptr [edx+104];TWinControl.SetFocus
 0078EBE5    mov         eax,dword ptr [ebp-0C]
 0078EBE8    call        TMainForm.UpdateStatusbar
 0078EBED    xor         eax,eax
 0078EBEF    pop         edx
 0078EBF0    pop         ecx
 0078EBF1    pop         ecx
 0078EBF2    mov         dword ptr fs:[eax],edx
 0078EBF5    push        78EC1F
 0078EBFA    lea         eax,[ebp-0A8]
 0078EC00    mov         edx,24
 0078EC05    call        @UStrArrayClr
 0078EC0A    lea         eax,[ebp-8]
 0078EC0D    mov         edx,2
 0078EC12    call        @UStrArrayClr
 0078EC17    ret
>0078EC18    jmp         @HandleFinally
>0078EC1D    jmp         0078EBFA
 0078EC1F    pop         edi
 0078EC20    pop         esi
 0078EC21    pop         ebx
 0078EC22    mov         esp,ebp
 0078EC24    pop         ebp
 0078EC25    ret
*}
end;

//0078EC6C
procedure TMainForm.MemTimerTimer(Sender:TObject);
begin
{*
 0078EC6C    call        TMainForm.UpdateStatusbar
 0078EC71    ret
*}
end;

//0078EC74
procedure TMainForm.UpdateStatusbar;
begin
{*
 0078EC74    push        ebx
 0078EC75    mov         ebx,eax
 0078EC77    mov         eax,[007C491C];^gvar_008DF5CC
 0078EC7C    cmp         byte ptr [eax],0
>0078EC7F    jne         0078ECA9
 0078EC81    mov         eax,[007C499C];^gvar_008DF5C0
 0078EC86    cmp         byte ptr [eax],0
>0078EC89    jne         0078ECA9
 0078EC8B    mov         eax,[007C4C68];^gvar_008DF5B8
 0078EC90    cmp         byte ptr [eax],0
>0078EC93    jne         0078ECA9
 0078EC95    mov         eax,[007C47D8];^gvar_008DF5A8
 0078EC9A    cmp         byte ptr [eax],0
>0078EC9D    jne         0078ECA9
 0078EC9F    mov         eax,[007C4674];^gvar_00857F38
 0078ECA4    cmp         byte ptr [eax],0
>0078ECA7    je          0078ECC8
 0078ECA9    mov         eax,dword ptr [ebx+4B8];TMainForm.StatusBar1:TStatusBar
 0078ECAF    mov         eax,dword ptr [eax+290];TStatusBar.FPanels:TStatusPanels
 0078ECB5    xor         edx,edx
 0078ECB7    call        TStatusPanels.GetItem
 0078ECBC    mov         edx,78ECF0;'*'
 0078ECC1    call        TStatusPanel.SetText
 0078ECC6    pop         ebx
 0078ECC7    ret
 0078ECC8    mov         eax,dword ptr [ebx+4B8];TMainForm.StatusBar1:TStatusBar
 0078ECCE    mov         eax,dword ptr [eax+290];TStatusBar.FPanels:TStatusPanels
 0078ECD4    xor         edx,edx
 0078ECD6    call        TStatusPanels.GetItem
 0078ECDB    xor         edx,edx
 0078ECDD    call        TStatusPanel.SetText
 0078ECE2    pop         ebx
 0078ECE3    ret
*}
end;

//0078ECF4
procedure TMainForm.EnableFXNetLevelMenuItems;
begin
{*
 0078ECF4    push        ebx
 0078ECF5    mov         ebx,eax
 0078ECF7    mov         eax,dword ptr [ebx+4A0];TMainForm.FXNetFrame1:TFXNetFrame
 0078ECFD    cmp         byte ptr [eax+69],0;TFXNetFrame.FVisible:Boolean
>0078ED01    jne         0078EF78
 0078ED07    mov         dl,1
 0078ED09    mov         eax,dword ptr [ebx+3C4];TMainForm.FileMenu:TMenuItem
 0078ED0F    call        TMenuItem.SetEnabled
 0078ED14    mov         dl,1
 0078ED16    mov         eax,dword ptr [ebx+3C8];TMainForm.FileNewItem:TMenuItem
 0078ED1C    call        TMenuItem.SetEnabled
 0078ED21    mov         dl,1
 0078ED23    mov         eax,dword ptr [ebx+3CC];TMainForm.FileOpenItem:TMenuItem
 0078ED29    call        TMenuItem.SetEnabled
 0078ED2E    mov         eax,[007C4BFC];^gvar_007CA840
 0078ED33    cmp         byte ptr [eax],0
>0078ED36    je          0078ED75
 0078ED38    xor         edx,edx
 0078ED3A    mov         eax,dword ptr [ebx+3D0];TMainForm.FileMergeFXItem:TMenuItem
 0078ED40    call        TMenuItem.SetEnabled
 0078ED45    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078ED4A    mov         eax,dword ptr [eax]
 0078ED4C    xor         edx,edx
 0078ED4E    call        TFXNet.GetPanel
 0078ED53    test        eax,eax
>0078ED55    je          0078ED66
 0078ED57    xor         edx,edx
 0078ED59    mov         eax,dword ptr [ebx+3D4];TMainForm.FileMergeEsaItem:TMenuItem
 0078ED5F    call        TMenuItem.SetEnabled
>0078ED64    jmp         0078ED8F
 0078ED66    mov         dl,1
 0078ED68    mov         eax,dword ptr [ebx+3D4];TMainForm.FileMergeEsaItem:TMenuItem
 0078ED6E    call        TMenuItem.SetEnabled
>0078ED73    jmp         0078ED8F
 0078ED75    mov         dl,1
 0078ED77    mov         eax,dword ptr [ebx+3D0];TMainForm.FileMergeFXItem:TMenuItem
 0078ED7D    call        TMenuItem.SetEnabled
 0078ED82    mov         dl,1
 0078ED84    mov         eax,dword ptr [ebx+3D4];TMainForm.FileMergeEsaItem:TMenuItem
 0078ED8A    call        TMenuItem.SetEnabled
 0078ED8F    xor         edx,edx
 0078ED91    mov         eax,dword ptr [ebx+3E4];TMainForm.FileImportItem:TMenuItem
 0078ED97    call        TMenuItem.SetEnabled
 0078ED9C    xor         edx,edx
 0078ED9E    mov         eax,dword ptr [ebx+3E8];TMainForm.FileExportItem:TMenuItem
 0078EDA4    call        TMenuItem.SetEnabled
 0078EDA9    mov         dl,1
 0078EDAB    mov         eax,dword ptr [ebx+3D8];TMainForm.FileSaveItem:TMenuItem
 0078EDB1    call        TMenuItem.SetEnabled
 0078EDB6    mov         dl,1
 0078EDB8    mov         eax,dword ptr [ebx+3DC];TMainForm.FileSaveAsItem:TMenuItem
 0078EDBE    call        TMenuItem.SetEnabled
 0078EDC3    mov         dl,1
 0078EDC5    mov         eax,dword ptr [ebx+3EC];TMainForm.FilePrintItem:TMenuItem
 0078EDCB    call        TMenuItem.SetEnabled
 0078EDD0    mov         dl,1
 0078EDD2    mov         eax,dword ptr [ebx+3F0];TMainForm.FilePrintSetupItem:TMenuItem
 0078EDD8    call        TMenuItem.SetEnabled
 0078EDDD    mov         dl,1
 0078EDDF    mov         eax,dword ptr [ebx+3F4];TMainForm.FileExitItem:TMenuItem
 0078EDE5    call        TMenuItem.SetEnabled
 0078EDEA    mov         dl,1
 0078EDEC    mov         eax,dword ptr [ebx+448];TMainForm.FileNewBtn:TSpeedButton
 0078EDF2    mov         ecx,dword ptr [eax]
 0078EDF4    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EDFA    mov         dl,1
 0078EDFC    mov         eax,dword ptr [ebx+44C];TMainForm.FileOpenBtn:TSpeedButton
 0078EE02    mov         ecx,dword ptr [eax]
 0078EE04    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EE0A    mov         dl,1
 0078EE0C    mov         eax,dword ptr [ebx+450];TMainForm.FileSaveBtn:TSpeedButton
 0078EE12    mov         ecx,dword ptr [eax]
 0078EE14    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EE1A    mov         dl,1
 0078EE1C    mov         eax,dword ptr [ebx+454];TMainForm.FileSaveAsBtn:TSpeedButton
 0078EE22    mov         ecx,dword ptr [eax]
 0078EE24    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EE2A    mov         dl,1
 0078EE2C    mov         eax,dword ptr [ebx+458];TMainForm.FilePrintBtn:TSpeedButton
 0078EE32    mov         ecx,dword ptr [eax]
 0078EE34    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EE3A    mov         dl,1
 0078EE3C    mov         eax,dword ptr [ebx+45C];TMainForm.FilePrintSetupBtn:TSpeedButton
 0078EE42    mov         ecx,dword ptr [eax]
 0078EE44    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EE4A    mov         dl,1
 0078EE4C    mov         eax,dword ptr [ebx+460];TMainForm.FileExitBtn:TSpeedButton
 0078EE52    mov         ecx,dword ptr [eax]
 0078EE54    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EE5A    mov         dl,1
 0078EE5C    mov         eax,dword ptr [ebx+3F8];TMainForm.DataMenu:TMenuItem
 0078EE62    call        TMenuItem.SetEnabled
 0078EE67    mov         dl,1
 0078EE69    mov         eax,dword ptr [ebx+3FC];TMainForm.DataNetItem:TMenuItem
 0078EE6F    call        TMenuItem.SetEnabled
 0078EE74    xor         edx,edx
 0078EE76    mov         eax,dword ptr [ebx+400];TMainForm.DataGeneralItem:TMenuItem
 0078EE7C    call        TMenuItem.SetEnabled
 0078EE81    xor         edx,edx
 0078EE83    mov         eax,dword ptr [ebx+404];TMainForm.DataAddressItem:TMenuItem
 0078EE89    call        TMenuItem.SetEnabled
 0078EE8E    xor         edx,edx
 0078EE90    mov         eax,dword ptr [ebx+40C];TMainForm.DataControlZones:TMenuItem
 0078EE96    call        TMenuItem.SetEnabled
 0078EE9B    mov         dl,1
 0078EE9D    mov         eax,dword ptr [ebx+414];TMainForm.DataDelayedControls:TMenuItem
 0078EEA3    call        TMenuItem.SetEnabled
 0078EEA8    mov         dl,1
 0078EEAA    mov         eax,dword ptr [ebx+414];TMainForm.DataDelayedControls:TMenuItem
 0078EEB0    call        TMenuItem.SetVisible
 0078EEB5    xor         edx,edx
 0078EEB7    mov         eax,dword ptr [ebx+41C];TMainForm.DataSummaryItem:TMenuItem
 0078EEBD    call        TMenuItem.SetEnabled
 0078EEC2    mov         dl,1
 0078EEC4    mov         eax,dword ptr [ebx+408];TMainForm.DataConfigInfoItem:TMenuItem
 0078EECA    call        TMenuItem.SetEnabled
 0078EECF    mov         dl,1
 0078EED1    mov         eax,dword ptr [ebx+464];TMainForm.DataNetBtn:TSpeedButton
 0078EED7    mov         ecx,dword ptr [eax]
 0078EED9    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EEDF    xor         edx,edx
 0078EEE1    mov         eax,dword ptr [ebx+468];TMainForm.DataGeneralBtn:TSpeedButton
 0078EEE7    mov         ecx,dword ptr [eax]
 0078EEE9    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EEEF    xor         edx,edx
 0078EEF1    mov         eax,dword ptr [ebx+46C];TMainForm.DataAddressBtn:TSpeedButton
 0078EEF7    mov         ecx,dword ptr [eax]
 0078EEF9    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EEFF    xor         edx,edx
 0078EF01    mov         eax,dword ptr [ebx+470];TMainForm.DataSummaryBtn:TSpeedButton
 0078EF07    mov         ecx,dword ptr [eax]
 0078EF09    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EF0F    mov         dl,1
 0078EF11    mov         eax,dword ptr [ebx+420];TMainForm.ToolsMenu:TMenuItem
 0078EF17    call        TMenuItem.SetEnabled
 0078EF1C    mov         edx,dword ptr ds:[7C4544];^gvar_007CA83D
 0078EF22    movzx       edx,byte ptr [edx]
 0078EF25    mov         eax,dword ptr [ebx+424];TMainForm.ToolsReceiveItem:TMenuItem
 0078EF2B    call        TMenuItem.SetEnabled
 0078EF30    xor         edx,edx
 0078EF32    mov         eax,dword ptr [ebx+428];TMainForm.ToolsSendItem:TMenuItem
 0078EF38    call        TMenuItem.SetEnabled
 0078EF3D    mov         edx,dword ptr ds:[7C4544];^gvar_007CA83D
 0078EF43    movzx       edx,byte ptr [edx]
 0078EF46    mov         eax,dword ptr [ebx+474];TMainForm.ToolsReceiveBtn:TSpeedButton
 0078EF4C    mov         ecx,dword ptr [eax]
 0078EF4E    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EF54    xor         edx,edx
 0078EF56    mov         eax,dword ptr [ebx+478];TMainForm.ToolsSendBtn:TSpeedButton
 0078EF5C    mov         ecx,dword ptr [eax]
 0078EF5E    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078EF64    mov         dl,1
 0078EF66    mov         eax,dword ptr [ebx+430];TMainForm.SettingsMenu:TMenuItem
 0078EF6C    call        TMenuItem.SetEnabled
 0078EF71    mov         byte ptr ds:[9037D4],1;gvar_009037D4
 0078EF78    pop         ebx
 0078EF79    ret
*}
end;

//0078EF7C
procedure TMainForm.EnablePanelLevelMenuItems;
begin
{*
 0078EF7C    push        ebx
 0078EF7D    mov         ebx,eax
 0078EF7F    mov         dl,1
 0078EF81    mov         eax,dword ptr [ebx+3C4];TMainForm.FileMenu:TMenuItem
 0078EF87    call        TMenuItem.SetEnabled
 0078EF8C    mov         dl,1
 0078EF8E    mov         eax,dword ptr [ebx+3C8];TMainForm.FileNewItem:TMenuItem
 0078EF94    call        TMenuItem.SetEnabled
 0078EF99    mov         dl,1
 0078EF9B    mov         eax,dword ptr [ebx+3CC];TMainForm.FileOpenItem:TMenuItem
 0078EFA1    call        TMenuItem.SetEnabled
 0078EFA6    xor         edx,edx
 0078EFA8    mov         eax,dword ptr [ebx+3D0];TMainForm.FileMergeFXItem:TMenuItem
 0078EFAE    call        TMenuItem.SetEnabled
 0078EFB3    xor         edx,edx
 0078EFB5    mov         eax,dword ptr [ebx+3D4];TMainForm.FileMergeEsaItem:TMenuItem
 0078EFBB    call        TMenuItem.SetEnabled
 0078EFC0    mov         dl,1
 0078EFC2    mov         eax,dword ptr [ebx+3E4];TMainForm.FileImportItem:TMenuItem
 0078EFC8    call        TMenuItem.SetEnabled
 0078EFCD    mov         dl,1
 0078EFCF    mov         eax,dword ptr [ebx+3E8];TMainForm.FileExportItem:TMenuItem
 0078EFD5    call        TMenuItem.SetEnabled
 0078EFDA    mov         dl,1
 0078EFDC    mov         eax,dword ptr [ebx+3D8];TMainForm.FileSaveItem:TMenuItem
 0078EFE2    call        TMenuItem.SetEnabled
 0078EFE7    mov         dl,1
 0078EFE9    mov         eax,dword ptr [ebx+3DC];TMainForm.FileSaveAsItem:TMenuItem
 0078EFEF    call        TMenuItem.SetEnabled
 0078EFF4    mov         dl,1
 0078EFF6    mov         eax,dword ptr [ebx+3EC];TMainForm.FilePrintItem:TMenuItem
 0078EFFC    call        TMenuItem.SetEnabled
 0078F001    mov         dl,1
 0078F003    mov         eax,dword ptr [ebx+3F0];TMainForm.FilePrintSetupItem:TMenuItem
 0078F009    call        TMenuItem.SetEnabled
 0078F00E    mov         dl,1
 0078F010    mov         eax,dword ptr [ebx+3F4];TMainForm.FileExitItem:TMenuItem
 0078F016    call        TMenuItem.SetEnabled
 0078F01B    mov         dl,1
 0078F01D    mov         eax,dword ptr [ebx+448];TMainForm.FileNewBtn:TSpeedButton
 0078F023    mov         ecx,dword ptr [eax]
 0078F025    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F02B    mov         dl,1
 0078F02D    mov         eax,dword ptr [ebx+44C];TMainForm.FileOpenBtn:TSpeedButton
 0078F033    mov         ecx,dword ptr [eax]
 0078F035    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F03B    mov         dl,1
 0078F03D    mov         eax,dword ptr [ebx+450];TMainForm.FileSaveBtn:TSpeedButton
 0078F043    mov         ecx,dword ptr [eax]
 0078F045    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F04B    mov         dl,1
 0078F04D    mov         eax,dword ptr [ebx+454];TMainForm.FileSaveAsBtn:TSpeedButton
 0078F053    mov         ecx,dword ptr [eax]
 0078F055    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F05B    mov         dl,1
 0078F05D    mov         eax,dword ptr [ebx+458];TMainForm.FilePrintBtn:TSpeedButton
 0078F063    mov         ecx,dword ptr [eax]
 0078F065    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F06B    mov         dl,1
 0078F06D    mov         eax,dword ptr [ebx+45C];TMainForm.FilePrintSetupBtn:TSpeedButton
 0078F073    mov         ecx,dword ptr [eax]
 0078F075    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F07B    mov         dl,1
 0078F07D    mov         eax,dword ptr [ebx+460];TMainForm.FileExitBtn:TSpeedButton
 0078F083    mov         ecx,dword ptr [eax]
 0078F085    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F08B    mov         dl,1
 0078F08D    mov         eax,dword ptr [ebx+3F8];TMainForm.DataMenu:TMenuItem
 0078F093    call        TMenuItem.SetEnabled
 0078F098    xor         edx,edx
 0078F09A    mov         eax,dword ptr [ebx+3FC];TMainForm.DataNetItem:TMenuItem
 0078F0A0    call        TMenuItem.SetEnabled
 0078F0A5    mov         dl,1
 0078F0A7    mov         eax,dword ptr [ebx+400];TMainForm.DataGeneralItem:TMenuItem
 0078F0AD    call        TMenuItem.SetEnabled
 0078F0B2    mov         dl,1
 0078F0B4    mov         eax,dword ptr [ebx+404];TMainForm.DataAddressItem:TMenuItem
 0078F0BA    call        TMenuItem.SetEnabled
 0078F0BF    mov         dl,1
 0078F0C1    mov         eax,dword ptr [ebx+414];TMainForm.DataDelayedControls:TMenuItem
 0078F0C7    call        TMenuItem.SetEnabled
 0078F0CC    mov         dl,1
 0078F0CE    mov         eax,dword ptr [ebx+414];TMainForm.DataDelayedControls:TMenuItem
 0078F0D4    call        TMenuItem.SetVisible
 0078F0D9    mov         dl,1
 0078F0DB    mov         eax,dword ptr [ebx+41C];TMainForm.DataSummaryItem:TMenuItem
 0078F0E1    call        TMenuItem.SetEnabled
 0078F0E6    mov         dl,1
 0078F0E8    mov         eax,dword ptr [ebx+408];TMainForm.DataConfigInfoItem:TMenuItem
 0078F0EE    call        TMenuItem.SetEnabled
 0078F0F3    xor         edx,edx
 0078F0F5    mov         eax,dword ptr [ebx+464];TMainForm.DataNetBtn:TSpeedButton
 0078F0FB    mov         ecx,dword ptr [eax]
 0078F0FD    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F103    mov         dl,1
 0078F105    mov         eax,dword ptr [ebx+468];TMainForm.DataGeneralBtn:TSpeedButton
 0078F10B    mov         ecx,dword ptr [eax]
 0078F10D    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F113    mov         dl,1
 0078F115    mov         eax,dword ptr [ebx+46C];TMainForm.DataAddressBtn:TSpeedButton
 0078F11B    mov         ecx,dword ptr [eax]
 0078F11D    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F123    mov         dl,1
 0078F125    mov         eax,dword ptr [ebx+470];TMainForm.DataSummaryBtn:TSpeedButton
 0078F12B    mov         ecx,dword ptr [eax]
 0078F12D    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F133    mov         dl,1
 0078F135    mov         eax,dword ptr [ebx+420];TMainForm.ToolsMenu:TMenuItem
 0078F13B    call        TMenuItem.SetEnabled
 0078F140    xor         edx,edx
 0078F142    mov         eax,dword ptr [ebx+424];TMainForm.ToolsReceiveItem:TMenuItem
 0078F148    call        TMenuItem.SetEnabled
 0078F14D    mov         edx,dword ptr ds:[7C4E44];^gvar_007CA83E
 0078F153    movzx       edx,byte ptr [edx]
 0078F156    mov         eax,dword ptr [ebx+428];TMainForm.ToolsSendItem:TMenuItem
 0078F15C    call        TMenuItem.SetEnabled
 0078F161    xor         edx,edx
 0078F163    mov         eax,dword ptr [ebx+474];TMainForm.ToolsReceiveBtn:TSpeedButton
 0078F169    mov         ecx,dword ptr [eax]
 0078F16B    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F171    mov         edx,dword ptr ds:[7C4E44];^gvar_007CA83E
 0078F177    movzx       edx,byte ptr [edx]
 0078F17A    mov         eax,dword ptr [ebx+478];TMainForm.ToolsSendBtn:TSpeedButton
 0078F180    mov         ecx,dword ptr [eax]
 0078F182    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F188    mov         dl,1
 0078F18A    mov         eax,dword ptr [ebx+430];TMainForm.SettingsMenu:TMenuItem
 0078F190    call        TMenuItem.SetEnabled
 0078F195    mov         byte ptr ds:[9037D4],1;gvar_009037D4
 0078F19C    pop         ebx
 0078F19D    ret
*}
end;

//0078F1A0
procedure TMainForm.ErrorBtnClick(Sender:TObject);
begin
{*
 0078F1A0    mov         eax,[007C4E54];^gvar_007CA84C:TErrorFrm
 0078F1A5    mov         eax,dword ptr [eax]
 0078F1A7    cmp         byte ptr [eax+69],0
>0078F1AB    je          0078F1B9
 0078F1AD    mov         eax,[007C4E54];^gvar_007CA84C:TErrorFrm
 0078F1B2    mov         eax,dword ptr [eax]
 0078F1B4    call        TControl.Refresh
 0078F1B9    mov         eax,[007C4E54];^gvar_007CA84C:TErrorFrm
 0078F1BE    mov         eax,dword ptr [eax]
 0078F1C0    call        TErrorFrm.Show
 0078F1C5    ret
*}
end;

//0078F1C8
procedure TMainForm.DisableAllMenuItems;
begin
{*
 0078F1C8    push        ebx
 0078F1C9    mov         ebx,eax
 0078F1CB    xor         edx,edx
 0078F1CD    mov         eax,dword ptr [ebx+3C4];TMainForm.FileMenu:TMenuItem
 0078F1D3    call        TMenuItem.SetEnabled
 0078F1D8    xor         edx,edx
 0078F1DA    mov         eax,dword ptr [ebx+3C8];TMainForm.FileNewItem:TMenuItem
 0078F1E0    call        TMenuItem.SetEnabled
 0078F1E5    xor         edx,edx
 0078F1E7    mov         eax,dword ptr [ebx+3CC];TMainForm.FileOpenItem:TMenuItem
 0078F1ED    call        TMenuItem.SetEnabled
 0078F1F2    xor         edx,edx
 0078F1F4    mov         eax,dword ptr [ebx+3D0];TMainForm.FileMergeFXItem:TMenuItem
 0078F1FA    call        TMenuItem.SetEnabled
 0078F1FF    xor         edx,edx
 0078F201    mov         eax,dword ptr [ebx+3D4];TMainForm.FileMergeEsaItem:TMenuItem
 0078F207    call        TMenuItem.SetEnabled
 0078F20C    xor         edx,edx
 0078F20E    mov         eax,dword ptr [ebx+3D8];TMainForm.FileSaveItem:TMenuItem
 0078F214    call        TMenuItem.SetEnabled
 0078F219    xor         edx,edx
 0078F21B    mov         eax,dword ptr [ebx+3DC];TMainForm.FileSaveAsItem:TMenuItem
 0078F221    call        TMenuItem.SetEnabled
 0078F226    xor         edx,edx
 0078F228    mov         eax,dword ptr [ebx+3E4];TMainForm.FileImportItem:TMenuItem
 0078F22E    call        TMenuItem.SetEnabled
 0078F233    xor         edx,edx
 0078F235    mov         eax,dword ptr [ebx+3E8];TMainForm.FileExportItem:TMenuItem
 0078F23B    call        TMenuItem.SetEnabled
 0078F240    xor         edx,edx
 0078F242    mov         eax,dword ptr [ebx+3EC];TMainForm.FilePrintItem:TMenuItem
 0078F248    call        TMenuItem.SetEnabled
 0078F24D    xor         edx,edx
 0078F24F    mov         eax,dword ptr [ebx+3F0];TMainForm.FilePrintSetupItem:TMenuItem
 0078F255    call        TMenuItem.SetEnabled
 0078F25A    xor         edx,edx
 0078F25C    mov         eax,dword ptr [ebx+3F4];TMainForm.FileExitItem:TMenuItem
 0078F262    call        TMenuItem.SetEnabled
 0078F267    xor         edx,edx
 0078F269    mov         eax,dword ptr [ebx+448];TMainForm.FileNewBtn:TSpeedButton
 0078F26F    mov         ecx,dword ptr [eax]
 0078F271    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F277    xor         edx,edx
 0078F279    mov         eax,dword ptr [ebx+44C];TMainForm.FileOpenBtn:TSpeedButton
 0078F27F    mov         ecx,dword ptr [eax]
 0078F281    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F287    xor         edx,edx
 0078F289    mov         eax,dword ptr [ebx+450];TMainForm.FileSaveBtn:TSpeedButton
 0078F28F    mov         ecx,dword ptr [eax]
 0078F291    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F297    xor         edx,edx
 0078F299    mov         eax,dword ptr [ebx+454];TMainForm.FileSaveAsBtn:TSpeedButton
 0078F29F    mov         ecx,dword ptr [eax]
 0078F2A1    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F2A7    xor         edx,edx
 0078F2A9    mov         eax,dword ptr [ebx+458];TMainForm.FilePrintBtn:TSpeedButton
 0078F2AF    mov         ecx,dword ptr [eax]
 0078F2B1    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F2B7    xor         edx,edx
 0078F2B9    mov         eax,dword ptr [ebx+45C];TMainForm.FilePrintSetupBtn:TSpeedButton
 0078F2BF    mov         ecx,dword ptr [eax]
 0078F2C1    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F2C7    xor         edx,edx
 0078F2C9    mov         eax,dword ptr [ebx+460];TMainForm.FileExitBtn:TSpeedButton
 0078F2CF    mov         ecx,dword ptr [eax]
 0078F2D1    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F2D7    xor         edx,edx
 0078F2D9    mov         eax,dword ptr [ebx+3F8];TMainForm.DataMenu:TMenuItem
 0078F2DF    call        TMenuItem.SetEnabled
 0078F2E4    xor         edx,edx
 0078F2E6    mov         eax,dword ptr [ebx+3FC];TMainForm.DataNetItem:TMenuItem
 0078F2EC    call        TMenuItem.SetEnabled
 0078F2F1    xor         edx,edx
 0078F2F3    mov         eax,dword ptr [ebx+400];TMainForm.DataGeneralItem:TMenuItem
 0078F2F9    call        TMenuItem.SetEnabled
 0078F2FE    xor         edx,edx
 0078F300    mov         eax,dword ptr [ebx+404];TMainForm.DataAddressItem:TMenuItem
 0078F306    call        TMenuItem.SetEnabled
 0078F30B    xor         edx,edx
 0078F30D    mov         eax,dword ptr [ebx+40C];TMainForm.DataControlZones:TMenuItem
 0078F313    call        TMenuItem.SetEnabled
 0078F318    xor         edx,edx
 0078F31A    mov         eax,dword ptr [ebx+414];TMainForm.DataDelayedControls:TMenuItem
 0078F320    call        TMenuItem.SetEnabled
 0078F325    xor         edx,edx
 0078F327    mov         eax,dword ptr [ebx+414];TMainForm.DataDelayedControls:TMenuItem
 0078F32D    call        TMenuItem.SetVisible
 0078F332    xor         edx,edx
 0078F334    mov         eax,dword ptr [ebx+41C];TMainForm.DataSummaryItem:TMenuItem
 0078F33A    call        TMenuItem.SetEnabled
 0078F33F    xor         edx,edx
 0078F341    mov         eax,dword ptr [ebx+464];TMainForm.DataNetBtn:TSpeedButton
 0078F347    mov         ecx,dword ptr [eax]
 0078F349    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F34F    xor         edx,edx
 0078F351    mov         eax,dword ptr [ebx+468];TMainForm.DataGeneralBtn:TSpeedButton
 0078F357    mov         ecx,dword ptr [eax]
 0078F359    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F35F    xor         edx,edx
 0078F361    mov         eax,dword ptr [ebx+46C];TMainForm.DataAddressBtn:TSpeedButton
 0078F367    mov         ecx,dword ptr [eax]
 0078F369    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F36F    xor         edx,edx
 0078F371    mov         eax,dword ptr [ebx+470];TMainForm.DataSummaryBtn:TSpeedButton
 0078F377    mov         ecx,dword ptr [eax]
 0078F379    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F37F    xor         edx,edx
 0078F381    mov         eax,dword ptr [ebx+420];TMainForm.ToolsMenu:TMenuItem
 0078F387    call        TMenuItem.SetEnabled
 0078F38C    xor         edx,edx
 0078F38E    mov         eax,dword ptr [ebx+424];TMainForm.ToolsReceiveItem:TMenuItem
 0078F394    call        TMenuItem.SetEnabled
 0078F399    xor         edx,edx
 0078F39B    mov         eax,dword ptr [ebx+428];TMainForm.ToolsSendItem:TMenuItem
 0078F3A1    call        TMenuItem.SetEnabled
 0078F3A6    xor         edx,edx
 0078F3A8    mov         eax,dword ptr [ebx+474];TMainForm.ToolsReceiveBtn:TSpeedButton
 0078F3AE    mov         ecx,dword ptr [eax]
 0078F3B0    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F3B6    xor         edx,edx
 0078F3B8    mov         eax,dword ptr [ebx+478];TMainForm.ToolsSendBtn:TSpeedButton
 0078F3BE    mov         ecx,dword ptr [eax]
 0078F3C0    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 0078F3C6    xor         edx,edx
 0078F3C8    mov         eax,dword ptr [ebx+430];TMainForm.SettingsMenu:TMenuItem
 0078F3CE    call        TMenuItem.SetEnabled
 0078F3D3    mov         byte ptr ds:[9037D4],0;gvar_009037D4
 0078F3DA    pop         ebx
 0078F3DB    ret
*}
end;

//0078F3DC
function TMainForm.TryReadFile(FileToRead:string):Boolean;
begin
{*
 0078F3DC    push        ebp
 0078F3DD    mov         ebp,esp
 0078F3DF    xor         ecx,ecx
 0078F3E1    push        ecx
 0078F3E2    push        ecx
 0078F3E3    push        ecx
 0078F3E4    push        ecx
 0078F3E5    push        ecx
 0078F3E6    push        ecx
 0078F3E7    push        ecx
 0078F3E8    push        ecx
 0078F3E9    push        ebx
 0078F3EA    push        esi
 0078F3EB    push        edi
 0078F3EC    mov         dword ptr [ebp-4],edx
 0078F3EF    mov         dword ptr [ebp-8],eax
 0078F3F2    mov         eax,dword ptr [ebp-4]
 0078F3F5    call        @UStrAddRef
 0078F3FA    xor         eax,eax
 0078F3FC    push        ebp
 0078F3FD    push        78F58D
 0078F402    push        dword ptr fs:[eax]
 0078F405    mov         dword ptr fs:[eax],esp
 0078F408    mov         byte ptr [ebp-9],0
 0078F40C    xor         edx,edx
 0078F40E    push        ebp
 0078F40F    push        78F434
 0078F414    push        dword ptr fs:[edx]
 0078F417    mov         dword ptr fs:[edx],esp
 0078F41A    lea         eax,[ebp-4]
 0078F41D    xor         edx,edx
 0078F41F    call        00747C44
 0078F424    mov         byte ptr [ebp-9],al
 0078F427    xor         eax,eax
 0078F429    pop         edx
 0078F42A    pop         ecx
 0078F42B    pop         ecx
 0078F42C    mov         dword ptr fs:[eax],edx
>0078F42F    jmp         0078F548
>0078F434    jmp         @HandleOnException
 0078F439    dd          4
 0078F43D    dd          0046B7EC;EFOpenError
 0078F441    dd          0078F45D
 0078F445    dd          0046B93C;EReadError
 0078F449    dd          0078F4A8
 0078F44D    dd          0041873C;ERangeError
 0078F451    dd          0078F4E3
 0078F455    dd          004174D0;Exception
 0078F459    dd          0078F51E
 0078F45D    push        0
 0078F45F    push        78F5AC;'TryReadFile: '
 0078F464    mov         eax,[007C4410];^gvar_007C3E80
 0078F469    push        dword ptr [eax]
 0078F46B    push        dword ptr [ebp-4]
 0078F46E    push        78F5D4;''
 0078F473    call        kernel32.GetLastError
 0078F478    lea         ecx,[ebp-14]
 0078F47B    xor         edx,edx
 0078F47D    call        00422CB4
 0078F482    push        dword ptr [ebp-14]
 0078F485    lea         eax,[ebp-10]
 0078F488    mov         edx,5
 0078F48D    call        @UStrCatN
 0078F492    mov         eax,dword ptr [ebp-10]
 0078F495    movzx       ecx,word ptr ds:[78F5D8];0x4 gvar_0078F5D8
 0078F49C    mov         dl,1
 0078F49E    call        MessageDlg
>0078F4A3    jmp         0078F543
 0078F4A8    mov         ebx,eax
 0078F4AA    push        0
 0078F4AC    push        78F5AC;'TryReadFile: '
 0078F4B1    mov         eax,[007C45A0];^gvar_007C3E88
 0078F4B6    push        dword ptr [eax]
 0078F4B8    push        dword ptr [ebp-4]
 0078F4BB    push        78F5D4;''
 0078F4C0    push        dword ptr [ebx+4];EReadError.FMessage:string
 0078F4C3    lea         eax,[ebp-18]
 0078F4C6    mov         edx,5
 0078F4CB    call        @UStrCatN
 0078F4D0    mov         eax,dword ptr [ebp-18]
 0078F4D3    movzx       ecx,word ptr ds:[78F5D8];0x4 gvar_0078F5D8
 0078F4DA    mov         dl,1
 0078F4DC    call        MessageDlg
>0078F4E1    jmp         0078F543
 0078F4E3    mov         ebx,eax
 0078F4E5    push        0
 0078F4E7    push        78F5AC;'TryReadFile: '
 0078F4EC    mov         eax,[007C45A0];^gvar_007C3E88
 0078F4F1    push        dword ptr [eax]
 0078F4F3    push        dword ptr [ebp-4]
 0078F4F6    push        78F5D4;''
 0078F4FB    push        dword ptr [ebx+4];ERangeError.FMessage:string
 0078F4FE    lea         eax,[ebp-1C]
 0078F501    mov         edx,5
 0078F506    call        @UStrCatN
 0078F50B    mov         eax,dword ptr [ebp-1C]
 0078F50E    movzx       ecx,word ptr ds:[78F5D8];0x4 gvar_0078F5D8
 0078F515    mov         dl,1
 0078F517    call        MessageDlg
>0078F51C    jmp         0078F543
 0078F51E    mov         ebx,eax
 0078F520    push        0
 0078F522    mov         ecx,dword ptr [ebx+4];Exception.FMessage:string
 0078F525    lea         eax,[ebp-20]
 0078F528    mov         edx,78F5AC;'TryReadFile: '
 0078F52D    call        @UStrCat3
 0078F532    mov         eax,dword ptr [ebp-20]
 0078F535    movzx       ecx,word ptr ds:[78F5D8];0x4 gvar_0078F5D8
 0078F53C    mov         dl,1
 0078F53E    call        MessageDlg
 0078F543    call        @DoneExcept
 0078F548    mov         eax,[007C4680];^gvar_007A1EB9
 0078F54D    cmp         byte ptr [eax],0
>0078F550    jne         0078F56A
 0078F552    mov         eax,dword ptr [ebp-8]
 0078F555    call        TMainForm.UpdateTreeView
 0078F55A    mov         eax,dword ptr [ebp-8]
 0078F55D    call        TMainForm.EnableFXNetLevelMenuItems
 0078F562    mov         eax,dword ptr [ebp-8]
 0078F565    call        TMainForm.UpdateStatusbar
 0078F56A    xor         eax,eax
 0078F56C    pop         edx
 0078F56D    pop         ecx
 0078F56E    pop         ecx
 0078F56F    mov         dword ptr fs:[eax],edx
 0078F572    push        78F594
 0078F577    lea         eax,[ebp-20]
 0078F57A    mov         edx,5
 0078F57F    call        @UStrArrayClr
 0078F584    lea         eax,[ebp-4]
 0078F587    call        @UStrClr
 0078F58C    ret
>0078F58D    jmp         @HandleFinally
>0078F592    jmp         0078F577
 0078F594    movzx       eax,byte ptr [ebp-9]
 0078F598    pop         edi
 0078F599    pop         esi
 0078F59A    pop         ebx
 0078F59B    mov         esp,ebp
 0078F59D    pop         ebp
 0078F59E    ret
*}
end;

//0078F5DC
function TMainForm.GetNewFileName(var FileName:string):Boolean;
begin
{*
 0078F5DC    push        ebp
 0078F5DD    mov         ebp,esp
 0078F5DF    mov         ecx,6
 0078F5E4    push        0
 0078F5E6    push        0
 0078F5E8    dec         ecx
>0078F5E9    jne         0078F5E4
 0078F5EB    push        ebx
 0078F5EC    push        esi
 0078F5ED    push        edi
 0078F5EE    mov         esi,edx
 0078F5F0    mov         edi,eax
 0078F5F2    xor         eax,eax
 0078F5F4    push        ebp
 0078F5F5    push        78F748
 0078F5FA    push        dword ptr fs:[eax]
 0078F5FD    mov         dword ptr fs:[eax],esp
 0078F600    lea         edx,[ebp-4]
 0078F603    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F609    call        TOpenDialog.GetInitialDir
 0078F60E    cmp         dword ptr [ebp-4],0
>0078F612    jne         0078F625
 0078F614    mov         edx,dword ptr ds:[9037D8];gvar_009037D8:UnicodeString
 0078F61A    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F620    call        TOpenDialog.SetInitialDir
 0078F625    mov         edx,dword ptr [esi]
 0078F627    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F62D    call        TOpenDialog.SetFileName
 0078F632    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F638    add         eax,80;TSaveDialog.FFilter:string
 0078F63D    mov         edx,78F764;'FX3Net files (*.fx3)|*.fx3|All Files (*.*)|*.*'
 0078F642    call        @UStrAsg
 0078F647    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F64D    mov         edx,dword ptr [eax]
 0078F64F    call        dword ptr [edx+54];TCommonDialog.Execute
 0078F652    mov         ebx,eax
 0078F654    test        bl,bl
>0078F656    je          0078F710
 0078F65C    lea         edx,[ebp-10]
 0078F65F    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F665    call        TOpenDialog.GetFileName
 0078F66A    mov         eax,dword ptr [ebp-10]
 0078F66D    lea         ecx,[ebp-0C]
 0078F670    mov         edx,4
 0078F675    call        00431F5C
 0078F67A    mov         eax,dword ptr [ebp-0C]
 0078F67D    lea         edx,[ebp-8]
 0078F680    call        LowerCase
 0078F685    mov         eax,dword ptr [ebp-8]
 0078F688    mov         edx,78F7D0;'.fx3'
 0078F68D    call        @UStrEqual
>0078F692    je          0078F6B3
 0078F694    lea         edx,[ebp-14]
 0078F697    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F69D    call        TOpenDialog.GetFileName
 0078F6A2    mov         edx,dword ptr [ebp-14]
 0078F6A5    mov         eax,esi
 0078F6A7    mov         ecx,78F7D0;'.fx3'
 0078F6AC    call        @UStrCat3
>0078F6B1    jmp         0078F6CB
 0078F6B3    lea         edx,[ebp-18]
 0078F6B6    mov         eax,dword ptr [edi+488];TMainForm.SaveDialog:TSaveDialog
 0078F6BC    call        TOpenDialog.GetFileName
 0078F6C1    mov         edx,dword ptr [ebp-18]
 0078F6C4    mov         eax,esi
 0078F6C6    call        @UStrAsg
 0078F6CB    lea         eax,[ebp-1C]
 0078F6CE    push        eax
 0078F6CF    lea         edx,[ebp-30]
 0078F6D2    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078F6D7    mov         eax,dword ptr [eax]
 0078F6D9    call        005DDC74
 0078F6DE    mov         eax,dword ptr [ebp-30]
 0078F6E1    mov         dword ptr [ebp-2C],eax
 0078F6E4    mov         byte ptr [ebp-28],11
 0078F6E8    mov         eax,dword ptr [esi]
 0078F6EA    mov         dword ptr [ebp-24],eax
 0078F6ED    mov         byte ptr [ebp-20],11
 0078F6F1    lea         edx,[ebp-2C]
 0078F6F4    mov         ecx,1
 0078F6F9    mov         eax,78F7E8;'WinFX3Net (%s) %s'
 0078F6FE    call        Format
 0078F703    mov         edx,dword ptr [ebp-1C]
 0078F706    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078F70B    call        TControl.SetText
 0078F710    xor         eax,eax
 0078F712    pop         edx
 0078F713    pop         ecx
 0078F714    pop         ecx
 0078F715    mov         dword ptr fs:[eax],edx
 0078F718    push        78F74F
 0078F71D    lea         eax,[ebp-30]
 0078F720    call        @UStrClr
 0078F725    lea         eax,[ebp-1C]
 0078F728    call        @UStrClr
 0078F72D    lea         eax,[ebp-18]
 0078F730    mov         edx,3
 0078F735    call        @UStrArrayClr
 0078F73A    lea         eax,[ebp-0C]
 0078F73D    mov         edx,3
 0078F742    call        @UStrArrayClr
 0078F747    ret
>0078F748    jmp         @HandleFinally
>0078F74D    jmp         0078F71D
 0078F74F    mov         eax,ebx
 0078F751    pop         edi
 0078F752    pop         esi
 0078F753    pop         ebx
 0078F754    mov         esp,ebp
 0078F756    pop         ebp
 0078F757    ret
*}
end;

//0078F80C
function TMainForm.TrySaveFile:Boolean;
begin
{*
 0078F80C    push        ebp
 0078F80D    mov         ebp,esp
 0078F80F    xor         ecx,ecx
 0078F811    push        ecx
 0078F812    push        ecx
 0078F813    push        ecx
 0078F814    push        ecx
 0078F815    push        ecx
 0078F816    push        ecx
 0078F817    push        ecx
 0078F818    push        ecx
 0078F819    push        ebx
 0078F81A    push        esi
 0078F81B    push        edi
 0078F81C    mov         dword ptr [ebp-4],eax
 0078F81F    xor         eax,eax
 0078F821    push        ebp
 0078F822    push        78FA1D
 0078F827    push        dword ptr fs:[eax]
 0078F82A    mov         dword ptr fs:[eax],esp
 0078F82D    mov         byte ptr [ebp-5],0
 0078F831    xor         ebx,ebx
 0078F833    xor         edx,edx
 0078F835    push        ebp
 0078F836    push        78F8BA
 0078F83B    push        dword ptr fs:[edx]
 0078F83E    mov         dword ptr fs:[edx],esp
 0078F841    test        bl,bl
>0078F843    jne         0078F85B
 0078F845    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078F84A    mov         eax,dword ptr [eax]
 0078F84C    mov         edx,dword ptr ds:[7C4600];^gvar_007C2BA4
 0078F852    mov         edx,dword ptr [edx]
 0078F854    call        @UStrEqual
>0078F859    jne         0078F87A
 0078F85B    mov         edx,dword ptr ds:[7C4C8C];^gvar_007A1E9C
 0078F861    mov         eax,dword ptr [ebp-4]
 0078F864    call        TMainForm.GetNewFileName
 0078F869    test        al,al
>0078F86B    jne         0078F87A
 0078F86D    xor         eax,eax
 0078F86F    pop         edx
 0078F870    pop         ecx
 0078F871    pop         ecx
 0078F872    mov         dword ptr fs:[eax],edx
>0078F875    jmp         0078FA02
 0078F87A    cmp         byte ptr ds:[7C4150],0;gvar_007C4150
>0078F881    je          0078F899
 0078F883    mov         edx,dword ptr ds:[7C4C8C];^gvar_007A1E9C
 0078F889    mov         edx,dword ptr [edx]
 0078F88B    mov         ecx,dword ptr ds:[7C4154];0xA gvar_007C4154
 0078F891    mov         eax,dword ptr [ebp-4]
 0078F894    call        0078FAE8
 0078F899    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078F89E    call        007474C8
 0078F8A3    test        al,al
>0078F8A5    je          0078F8AD
 0078F8A7    xor         ebx,ebx
 0078F8A9    mov         byte ptr [ebp-5],1
 0078F8AD    xor         eax,eax
 0078F8AF    pop         edx
 0078F8B0    pop         ecx
 0078F8B1    pop         ecx
 0078F8B2    mov         dword ptr fs:[eax],edx
>0078F8B5    jmp         0078F9FA
>0078F8BA    jmp         @HandleOnException
 0078F8BF    dd          4
 0078F8C3    dd          0046B744;EFCreateError
 0078F8C7    dd          0078F8E3
 0078F8CB    dd          0046B7EC;EFOpenError
 0078F8CF    dd          0078F933
 0078F8D3    dd          0046B9E4;EWriteError
 0078F8D7    dd          0078F980
 0078F8DB    dd          004174D0;Exception
 0078F8DF    dd          0078F9D8
 0078F8E3    push        0
 0078F8E5    mov         eax,[007C4514];^gvar_007C3E7C
 0078F8EA    push        dword ptr [eax]
 0078F8EC    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078F8F1    push        dword ptr [eax]
 0078F8F3    push        78FA3C;''
 0078F8F8    call        kernel32.GetLastError
 0078F8FD    lea         ecx,[ebp-10]
 0078F900    xor         edx,edx
 0078F902    call        00422CB4
 0078F907    push        dword ptr [ebp-10]
 0078F90A    lea         eax,[ebp-0C]
 0078F90D    mov         edx,4
 0078F912    call        @UStrCatN
 0078F917    mov         eax,dword ptr [ebp-0C]
 0078F91A    movzx       ecx,word ptr ds:[78FA40];0x28 gvar_0078FA40
 0078F921    mov         dl,1
 0078F923    call        MessageDlg
 0078F928    cmp         eax,4
 0078F92B    sete        bl
>0078F92E    jmp         0078F9F5
 0078F933    push        0
 0078F935    mov         eax,[007C4410];^gvar_007C3E80
 0078F93A    push        dword ptr [eax]
 0078F93C    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078F941    push        dword ptr [eax]
 0078F943    push        78FA3C;''
 0078F948    call        kernel32.GetLastError
 0078F94D    lea         ecx,[ebp-18]
 0078F950    xor         edx,edx
 0078F952    call        00422CB4
 0078F957    push        dword ptr [ebp-18]
 0078F95A    lea         eax,[ebp-14]
 0078F95D    mov         edx,4
 0078F962    call        @UStrCatN
 0078F967    mov         eax,dword ptr [ebp-14]
 0078F96A    movzx       ecx,word ptr ds:[78FA40];0x28 gvar_0078FA40
 0078F971    mov         dl,1
 0078F973    call        MessageDlg
 0078F978    cmp         eax,4
 0078F97B    sete        bl
>0078F97E    jmp         0078F9F5
 0078F980    push        0
 0078F982    mov         eax,[007C4234];^^'Error writing to file '
 0078F987    push        dword ptr [eax]
 0078F989    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078F98E    push        dword ptr [eax]
 0078F990    push        78FA3C;''
 0078F995    call        kernel32.GetLastError
 0078F99A    lea         ecx,[ebp-20]
 0078F99D    xor         edx,edx
 0078F99F    call        00422CB4
 0078F9A4    push        dword ptr [ebp-20]
 0078F9A7    push        78FA3C;''
 0078F9AC    push        dword ptr ds:[7C413C];^'The file does not contain valid data.'
 0078F9B2    lea         eax,[ebp-1C]
 0078F9B5    mov         edx,6
 0078F9BA    call        @UStrCatN
 0078F9BF    mov         eax,dword ptr [ebp-1C]
 0078F9C2    movzx       ecx,word ptr ds:[78FA40];0x28 gvar_0078FA40
 0078F9C9    mov         dl,1
 0078F9CB    call        MessageDlg
 0078F9D0    cmp         eax,4
 0078F9D3    sete        bl
>0078F9D6    jmp         0078F9F5
 0078F9D8    mov         ebx,eax
 0078F9DA    push        0
 0078F9DC    mov         eax,dword ptr [ebx+4];Exception.FMessage:string
 0078F9DF    movzx       ecx,word ptr ds:[78FA40];0x28 gvar_0078FA40
 0078F9E6    mov         dl,1
 0078F9E8    call        MessageDlg
 0078F9ED    cmp         eax,4
 0078F9F0    sete        al
 0078F9F3    mov         ebx,eax
 0078F9F5    call        @DoneExcept
 0078F9FA    test        bl,bl
>0078F9FC    jne         0078F833
 0078FA02    xor         eax,eax
 0078FA04    pop         edx
 0078FA05    pop         ecx
 0078FA06    pop         ecx
 0078FA07    mov         dword ptr fs:[eax],edx
 0078FA0A    push        78FA24
 0078FA0F    lea         eax,[ebp-20]
 0078FA12    mov         edx,6
 0078FA17    call        @UStrArrayClr
 0078FA1C    ret
>0078FA1D    jmp         @HandleFinally
>0078FA22    jmp         0078FA0F
 0078FA24    movzx       eax,byte ptr [ebp-5]
 0078FA28    pop         edi
 0078FA29    pop         esi
 0078FA2A    pop         ebx
 0078FA2B    mov         esp,ebp
 0078FA2D    pop         ebp
 0078FA2E    ret
*}
end;

//0078FA44
{*function sub_0078FA44(?:?):?;
begin
 0078FA44    push        ebp
 0078FA45    mov         ebp,esp
 0078FA47    add         esp,0FFFFFFF0
 0078FA4A    push        ebx
 0078FA4B    xor         edx,edx
 0078FA4D    mov         dword ptr [ebp-10],edx
 0078FA50    mov         dword ptr [ebp-8],edx
 0078FA53    mov         dword ptr [ebp-4],eax
 0078FA56    mov         eax,dword ptr [ebp-4]
 0078FA59    call        @UStrAddRef
 0078FA5E    xor         eax,eax
 0078FA60    push        ebp
 0078FA61    push        78FAD7
 0078FA66    push        dword ptr fs:[eax]
 0078FA69    mov         dword ptr fs:[eax],esp
 0078FA6C    lea         edx,[ebp-8]
 0078FA6F    mov         eax,dword ptr [ebp-4]
 0078FA72    call        ExtractFileExt
 0078FA77    mov         ebx,dword ptr [ebp-8]
 0078FA7A    test        ebx,ebx
>0078FA7C    je          0078FA83
 0078FA7E    sub         ebx,4
 0078FA81    mov         ebx,dword ptr [ebx]
 0078FA83    lea         eax,[ebp-10]
 0078FA86    push        eax
 0078FA87    mov         ecx,ebx
 0078FA89    sub         ecx,3
>0078FA8C    jno         0078FA93
 0078FA8E    call        @IntOver
 0078FA93    mov         edx,3
 0078FA98    mov         eax,dword ptr [ebp-8]
 0078FA9B    call        00431F88
 0078FAA0    mov         eax,dword ptr [ebp-10]
 0078FAA3    lea         edx,[ebp-0C]
 0078FAA6    call        0041E5A0
 0078FAAB    test        al,al
>0078FAAD    jne         0078FAB4
 0078FAAF    xor         eax,eax
 0078FAB1    mov         dword ptr [ebp-0C],eax
 0078FAB4    xor         eax,eax
 0078FAB6    pop         edx
 0078FAB7    pop         ecx
 0078FAB8    pop         ecx
 0078FAB9    mov         dword ptr fs:[eax],edx
 0078FABC    push        78FADE
 0078FAC1    lea         eax,[ebp-10]
 0078FAC4    call        @UStrClr
 0078FAC9    lea         eax,[ebp-8]
 0078FACC    mov         edx,2
 0078FAD1    call        @UStrArrayClr
 0078FAD6    ret
>0078FAD7    jmp         @HandleFinally
>0078FADC    jmp         0078FAC1
 0078FADE    mov         eax,dword ptr [ebp-0C]
 0078FAE1    pop         ebx
 0078FAE2    mov         esp,ebp
 0078FAE4    pop         ebp
 0078FAE5    ret
end;*}

//0078FAE8
{*procedure sub_0078FAE8(?:TMainForm; ?:?; ?:?);
begin
 0078FAE8    push        ebp
 0078FAE9    mov         ebp,esp
 0078FAEB    add         esp,0FFFFFD3C
 0078FAF1    push        ebx
 0078FAF2    push        esi
 0078FAF3    xor         ebx,ebx
 0078FAF5    mov         dword ptr [ebp-2B0],ebx
 0078FAFB    mov         dword ptr [ebp-2AC],ebx
 0078FB01    mov         dword ptr [ebp-2A8],ebx
 0078FB07    mov         dword ptr [ebp-2A4],ebx
 0078FB0D    mov         dword ptr [ebp-2A0],ebx
 0078FB13    mov         dword ptr [ebp-29C],ebx
 0078FB19    mov         dword ptr [ebp-298],ebx
 0078FB1F    mov         dword ptr [ebp-294],ebx
 0078FB25    mov         dword ptr [ebp-8],ebx
 0078FB28    mov         dword ptr [ebp-27C],ecx
 0078FB2E    mov         dword ptr [ebp-4],edx
 0078FB31    mov         eax,dword ptr [ebp-4]
 0078FB34    call        @UStrAddRef
 0078FB39    lea         eax,[ebp-278]
 0078FB3F    mov         edx,dword ptr ds:[417424];TSearchRec
 0078FB45    call        @AddRefRecord
 0078FB4A    xor         eax,eax
 0078FB4C    push        ebp
 0078FB4D    push        78FE5C
 0078FB52    push        dword ptr fs:[eax]
 0078FB55    mov         dword ptr fs:[eax],esp
 0078FB58    lea         edx,[ebp-8]
 0078FB5B    mov         eax,dword ptr [ebp-4]
 0078FB5E    call        0041EFA4
 0078FB63    xor         eax,eax
 0078FB65    mov         dword ptr [ebp-284],eax
 0078FB6B    mov         dl,1
 0078FB6D    mov         eax,dword ptr [ebp-4]
 0078FB70    call        0041EA18
 0078FB75    test        al,al
>0078FB77    je          0078FE20
 0078FB7D    lea         eax,[ebp-294]
 0078FB83    mov         ecx,78FE78;'.~??~'
 0078FB88    mov         edx,dword ptr [ebp-4]
 0078FB8B    call        @UStrCat3
 0078FB90    mov         eax,dword ptr [ebp-294]
 0078FB96    lea         ecx,[ebp-278]
 0078FB9C    xor         edx,edx
 0078FB9E    call        0041ED30
 0078FBA3    test        eax,eax
>0078FBA5    jne         0078FDB5
 0078FBAB    mov         dl,1
 0078FBAD    mov         eax,[0046F9A0];TStringList
 0078FBB2    call        TStringList.Create;TStringList.Create
 0078FBB7    mov         dword ptr [ebp-280],eax
 0078FBBD    xor         eax,eax
 0078FBBF    push        ebp
 0078FBC0    push        78FDAE
 0078FBC5    push        dword ptr fs:[eax]
 0078FBC8    mov         dword ptr fs:[eax],esp
 0078FBCB    mov         dl,1
 0078FBCD    mov         eax,dword ptr [ebp-280]
 0078FBD3    call        TStringList.SetSorted
 0078FBD8    lea         eax,[ebp-298]
 0078FBDE    mov         ecx,dword ptr [ebp-264]
 0078FBE4    mov         edx,dword ptr [ebp-8]
 0078FBE7    call        @UStrCat3
 0078FBEC    mov         edx,dword ptr [ebp-298]
 0078FBF2    mov         eax,dword ptr [ebp-280]
 0078FBF8    mov         ecx,dword ptr [eax]
 0078FBFA    call        dword ptr [ecx+3C];TStringList.Add
>0078FBFD    jmp         0078FC24
 0078FBFF    lea         eax,[ebp-29C]
 0078FC05    mov         ecx,dword ptr [ebp-264]
 0078FC0B    mov         edx,dword ptr [ebp-8]
 0078FC0E    call        @UStrCat3
 0078FC13    mov         edx,dword ptr [ebp-29C]
 0078FC19    mov         eax,dword ptr [ebp-280]
 0078FC1F    mov         ecx,dword ptr [eax]
 0078FC21    call        dword ptr [ecx+3C];TStringList.Add
 0078FC24    lea         eax,[ebp-278]
 0078FC2A    call        0041ED80
 0078FC2F    test        eax,eax
>0078FC31    je          0078FBFF
 0078FC33    mov         eax,dword ptr [ebp-280]
 0078FC39    mov         edx,dword ptr [eax]
 0078FC3B    call        dword ptr [edx+0A4];TStringList.Sort
 0078FC41    mov         eax,dword ptr [ebp-280]
 0078FC47    mov         edx,dword ptr [eax]
 0078FC49    call        dword ptr [edx+14];TStringList.GetCount
 0078FC4C    mov         edx,eax
 0078FC4E    sub         edx,1
>0078FC51    jno         0078FC58
 0078FC53    call        @IntOver
 0078FC58    lea         ecx,[ebp-2A0]
 0078FC5E    mov         eax,dword ptr [ebp-280]
 0078FC64    mov         ebx,dword ptr [eax]
 0078FC66    call        dword ptr [ebx+0C];TStringList.Get
 0078FC69    mov         eax,dword ptr [ebp-2A0]
 0078FC6F    call        0078FA44
 0078FC74    mov         dword ptr [ebp-288],eax
>0078FC7A    jmp         0078FD55
 0078FC7F    xor         eax,eax
 0078FC81    mov         dword ptr [ebp-28C],eax
 0078FC87    lea         ecx,[ebp-2A4]
 0078FC8D    xor         edx,edx
 0078FC8F    mov         eax,dword ptr [ebp-280]
 0078FC95    mov         ebx,dword ptr [eax]
 0078FC97    call        dword ptr [ebx+0C];TStringList.Get
 0078FC9A    mov         eax,dword ptr [ebp-2A4]
 0078FCA0    call        0078FA44
 0078FCA5    mov         dword ptr [ebp-288],eax
 0078FCAB    mov         eax,dword ptr [ebp-280]
 0078FCB1    mov         edx,dword ptr [eax]
 0078FCB3    call        dword ptr [edx+14];TStringList.GetCount
 0078FCB6    sub         eax,1
>0078FCB9    jno         0078FCC0
 0078FCBB    call        @IntOver
 0078FCC0    test        eax,eax
>0078FCC2    jle         0078FD1C
 0078FCC4    mov         dword ptr [ebp-290],eax
 0078FCCA    mov         ebx,1
 0078FCCF    lea         ecx,[ebp-2A8]
 0078FCD5    mov         edx,ebx
 0078FCD7    mov         eax,dword ptr [ebp-280]
 0078FCDD    mov         esi,dword ptr [eax]
 0078FCDF    call        dword ptr [esi+0C];TStringList.Get
 0078FCE2    mov         eax,dword ptr [ebp-2A8]
 0078FCE8    call        0078FA44
 0078FCED    mov         esi,eax
 0078FCEF    mov         eax,dword ptr [ebp-288]
 0078FCF5    add         eax,1
>0078FCF8    jno         0078FCFF
 0078FCFA    call        @IntOver
 0078FCFF    cmp         esi,eax
>0078FD01    jne         0078FD0B
 0078FD03    mov         dword ptr [ebp-288],esi
>0078FD09    jmp         0078FD13
 0078FD0B    mov         dword ptr [ebp-28C],ebx
>0078FD11    jmp         0078FD1C
 0078FD13    inc         ebx
 0078FD14    dec         dword ptr [ebp-290]
>0078FD1A    jne         0078FCCF
 0078FD1C    lea         ecx,[ebp-2AC]
 0078FD22    mov         edx,dword ptr [ebp-28C]
 0078FD28    mov         eax,dword ptr [ebp-280]
 0078FD2E    mov         ebx,dword ptr [eax]
 0078FD30    call        dword ptr [ebx+0C];TStringList.Get
 0078FD33    mov         eax,dword ptr [ebp-2AC]
 0078FD39    call        @UStrToPWChar
 0078FD3E    push        eax
 0078FD3F    call        kernel32.DeleteFileW
 0078FD44    mov         edx,dword ptr [ebp-28C]
 0078FD4A    mov         eax,dword ptr [ebp-280]
 0078FD50    mov         ecx,dword ptr [eax]
 0078FD52    call        dword ptr [ecx+4C];TStringList.Delete
 0078FD55    mov         eax,dword ptr [ebp-280]
 0078FD5B    mov         edx,dword ptr [eax]
 0078FD5D    call        dword ptr [edx+14];TStringList.GetCount
 0078FD60    cmp         eax,dword ptr [ebp-27C]
>0078FD66    jge         0078FC7F
 0078FD6C    mov         eax,dword ptr [ebp-288]
 0078FD72    add         eax,1
>0078FD75    jno         0078FD7C
 0078FD77    call        @IntOver
 0078FD7C    mov         ecx,64
 0078FD81    cdq
 0078FD82    idiv        eax,ecx
 0078FD84    mov         dword ptr [ebp-284],edx
 0078FD8A    xor         eax,eax
 0078FD8C    pop         edx
 0078FD8D    pop         ecx
 0078FD8E    pop         ecx
 0078FD8F    mov         dword ptr fs:[eax],edx
 0078FD92    push        78FDB5
 0078FD97    mov         eax,dword ptr [ebp-280]
 0078FD9D    call        TObject.Free
 0078FDA2    lea         eax,[ebp-278]
 0078FDA8    call        0041EDA4
 0078FDAD    ret
>0078FDAE    jmp         @HandleFinally
>0078FDB3    jmp         0078FD97
 0078FDB5    lea         eax,[ebp-2B0]
 0078FDBB    push        eax
 0078FDBC    mov         eax,dword ptr [ebp-4]
 0078FDBF    mov         dword ptr [ebp-2C0],eax
 0078FDC5    mov         byte ptr [ebp-2BC],11
 0078FDCC    mov         eax,dword ptr [ebp-284]
 0078FDD2    mov         dword ptr [ebp-2B8],eax
 0078FDD8    mov         byte ptr [ebp-2B4],0
 0078FDDF    lea         edx,[ebp-2C0]
 0078FDE5    mov         ecx,1
 0078FDEA    mov         eax,78FE90;'%s.~%.2d~'
 0078FDEF    call        Format
 0078FDF4    mov         ebx,dword ptr [ebp-2B0]
 0078FDFA    mov         dword ptr [ebp-2C4],ebx
 0078FE00    mov         eax,dword ptr [ebp-2C4]
 0078FE06    call        @UStrToPWChar
 0078FE0B    push        eax
 0078FE0C    mov         eax,dword ptr [ebp-4]
 0078FE0F    call        @UStrToPWChar
 0078FE14    push        eax
 0078FE15    call        kernel32.MoveFileW
 0078FE1A    cmp         eax,1
 0078FE1D    sbb         eax,eax
 0078FE1F    inc         eax
 0078FE20    xor         eax,eax
 0078FE22    pop         edx
 0078FE23    pop         ecx
 0078FE24    pop         ecx
 0078FE25    mov         dword ptr fs:[eax],edx
 0078FE28    push        78FE63
 0078FE2D    lea         eax,[ebp-2B0]
 0078FE33    mov         edx,8
 0078FE38    call        @UStrArrayClr
 0078FE3D    lea         eax,[ebp-278]
 0078FE43    mov         edx,dword ptr ds:[417424];TSearchRec
 0078FE49    call        @FinalizeRecord
 0078FE4E    lea         eax,[ebp-8]
 0078FE51    mov         edx,2
 0078FE56    call        @UStrArrayClr
 0078FE5B    ret
>0078FE5C    jmp         @HandleFinally
>0078FE61    jmp         0078FE2D
 0078FE63    pop         esi
 0078FE64    pop         ebx
 0078FE65    mov         esp,ebp
 0078FE67    pop         ebp
 0078FE68    ret
end;*}

//0078FEA4
procedure TMainForm.FileNewClick(Sender:TObject);
begin
{*
 0078FEA4    push        ebp
 0078FEA5    mov         ebp,esp
 0078FEA7    add         esp,0FFFFFFE8
 0078FEAA    push        ebx
 0078FEAB    push        esi
 0078FEAC    push        edi
 0078FEAD    xor         ecx,ecx
 0078FEAF    mov         dword ptr [ebp-4],ecx
 0078FEB2    mov         dword ptr [ebp-18],ecx
 0078FEB5    mov         esi,eax
 0078FEB7    xor         eax,eax
 0078FEB9    push        ebp
 0078FEBA    push        79007D
 0078FEBF    push        dword ptr fs:[eax]
 0078FEC2    mov         dword ptr fs:[eax],esp
 0078FEC5    call        00792AD4
 0078FECA    test        al,al
>0078FECC    jne         0078FED5
 0078FECE    mov         eax,esi
 0078FED0    call        TCustomForm.Close
 0078FED5    mov         eax,[007C491C];^gvar_008DF5CC
 0078FEDA    cmp         byte ptr [eax],0
>0078FEDD    jne         0078FF07
 0078FEDF    mov         eax,[007C499C];^gvar_008DF5C0
 0078FEE4    cmp         byte ptr [eax],0
>0078FEE7    jne         0078FF07
 0078FEE9    mov         eax,[007C4C68];^gvar_008DF5B8
 0078FEEE    cmp         byte ptr [eax],0
>0078FEF1    jne         0078FF07
 0078FEF3    mov         eax,[007C47D8];^gvar_008DF5A8
 0078FEF8    cmp         byte ptr [eax],0
>0078FEFB    jne         0078FF07
 0078FEFD    mov         eax,[007C4674];^gvar_00857F38
 0078FF02    cmp         byte ptr [eax],0
>0078FF05    je          0078FF31
 0078FF07    push        0
 0078FF09    movzx       ecx,word ptr ds:[79008C];0xB gvar_0079008C
 0078FF10    mov         dl,3
 0078FF12    mov         eax,[007C4144];^'Save changes before starting new project?'
 0078FF17    call        MessageDlg
 0078FF1C    sub         eax,2
>0078FF1F    je          0079005F
 0078FF25    sub         eax,4
>0078FF28    jne         0078FF31
 0078FF2A    mov         eax,esi
 0078FF2C    call        TMainForm.TrySaveFile
 0078FF31    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078FF36    mov         edx,dword ptr ds:[7C4600];^gvar_007C2BA4
 0078FF3C    mov         edx,dword ptr [edx]
 0078FF3E    call        @UStrAsg
 0078FF43    lea         eax,[ebp-4]
 0078FF46    push        eax
 0078FF47    lea         edx,[ebp-18]
 0078FF4A    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0078FF4F    mov         eax,dword ptr [eax]
 0078FF51    call        005DDC74
 0078FF56    mov         eax,dword ptr [ebp-18]
 0078FF59    mov         dword ptr [ebp-14],eax
 0078FF5C    mov         byte ptr [ebp-10],11
 0078FF60    mov         eax,[007C4C8C];^gvar_007A1E9C
 0078FF65    mov         eax,dword ptr [eax]
 0078FF67    mov         dword ptr [ebp-0C],eax
 0078FF6A    mov         byte ptr [ebp-8],11
 0078FF6E    lea         edx,[ebp-14]
 0078FF71    mov         ecx,1
 0078FF76    mov         eax,79009C;'WinFX3Net (%s) %s'
 0078FF7B    call        Format
 0078FF80    mov         edx,dword ptr [ebp-4]
 0078FF83    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0078FF88    call        TControl.SetText
 0078FF8D    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0078FF92    mov         eax,dword ptr [eax]
 0078FF94    call        TObject.Free
 0078FF99    mov         dl,1
 0078FF9B    mov         eax,[006A4F5C];TFXNet
 0078FFA0    call        TFXNet.Create;TFXNet.Create
 0078FFA5    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 0078FFAB    mov         dword ptr [edx],eax
 0078FFAD    mov         eax,[007C491C];^gvar_008DF5CC
 0078FFB2    mov         byte ptr [eax],0
 0078FFB5    mov         eax,[007C499C];^gvar_008DF5C0
 0078FFBA    mov         byte ptr [eax],0
 0078FFBD    mov         eax,[007C4C68];^gvar_008DF5B8
 0078FFC2    mov         byte ptr [eax],0
 0078FFC5    mov         eax,[007C47D8];^gvar_008DF5A8
 0078FFCA    mov         byte ptr [eax],0
 0078FFCD    mov         eax,[007C4674];^gvar_00857F38
 0078FFD2    mov         byte ptr [eax],0
 0078FFD5    mov         eax,[007C4870];^gvar_007A1EB8
 0078FFDA    mov         byte ptr [eax],0
 0078FFDD    mov         eax,dword ptr [esi+494];TMainForm.tvFXNet:TTreeView
 0078FFE3    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0078FFE9    call        TTreeNodes.Clear
 0078FFEE    mov         ecx,dword ptr ds:[7C4C0C];^^"'New FXNet'"
 0078FFF4    mov         ecx,dword ptr [ecx]
 0078FFF6    mov         eax,dword ptr [esi+494];TMainForm.tvFXNet:TTreeView
 0078FFFC    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00790002    xor         edx,edx
 00790004    call        TTreeNodes.Add
 00790009    mov         byte ptr ds:[9037D4],1;gvar_009037D4
 00790010    mov         edi,dword ptr [esi+494];TMainForm.tvFXNet:TTreeView
 00790016    mov         eax,dword ptr [edi+2F8];TTreeView.FTreeNodes:TTreeNodes
 0079001C    call        TTreeNodes.GetFirstNode
 00790021    mov         edx,eax
 00790023    movzx       ecx,word ptr ds:[7900C0];0x0 gvar_007900C0
 0079002A    mov         eax,edi
 0079002C    mov         ebx,dword ptr [eax]
 0079002E    call        dword ptr [ebx+124];TCustomTreeView.Select
 00790034    mov         byte ptr ds:[9037D4],0;gvar_009037D4
 0079003B    mov         eax,esi
 0079003D    call        TMainForm.DisableAllMenuItems
 00790042    mov         eax,dword ptr [esi+4A0];TMainForm.FXNetFrame1:TFXNetFrame
 00790048    call        TFXNetFrame.Clear
 0079004D    mov         eax,dword ptr [esi+4A0];TMainForm.FXNetFrame1:TFXNetFrame
 00790053    call        TFXNetFrame.Show
 00790058    mov         eax,esi
 0079005A    call        TMainForm.UpdateStatusbar
 0079005F    xor         eax,eax
 00790061    pop         edx
 00790062    pop         ecx
 00790063    pop         ecx
 00790064    mov         dword ptr fs:[eax],edx
 00790067    push        790084
 0079006C    lea         eax,[ebp-18]
 0079006F    call        @UStrClr
 00790074    lea         eax,[ebp-4]
 00790077    call        @UStrClr
 0079007C    ret
>0079007D    jmp         @HandleFinally
>00790082    jmp         0079006C
 00790084    pop         edi
 00790085    pop         esi
 00790086    pop         ebx
 00790087    mov         esp,ebp
 00790089    pop         ebp
 0079008A    ret
*}
end;

//007900C4
procedure TMainForm.FileOpenClick(Sender:TObject);
begin
{*
 007900C4    push        ebp
 007900C5    mov         ebp,esp
 007900C7    mov         ecx,5
 007900CC    push        0
 007900CE    push        0
 007900D0    dec         ecx
>007900D1    jne         007900CC
 007900D3    push        ecx
 007900D4    push        ebx
 007900D5    mov         ebx,eax
 007900D7    xor         eax,eax
 007900D9    push        ebp
 007900DA    push        790358
 007900DF    push        dword ptr fs:[eax]
 007900E2    mov         dword ptr fs:[eax],esp
 007900E5    call        00792AD4
 007900EA    test        al,al
>007900EC    jne         007900F5
 007900EE    mov         eax,ebx
 007900F0    call        TCustomForm.Close
 007900F5    mov         eax,[007C491C];^gvar_008DF5CC
 007900FA    cmp         byte ptr [eax],0
>007900FD    jne         00790127
 007900FF    mov         eax,[007C499C];^gvar_008DF5C0
 00790104    cmp         byte ptr [eax],0
>00790107    jne         00790127
 00790109    mov         eax,[007C4C68];^gvar_008DF5B8
 0079010E    cmp         byte ptr [eax],0
>00790111    jne         00790127
 00790113    mov         eax,[007C47D8];^gvar_008DF5A8
 00790118    cmp         byte ptr [eax],0
>0079011B    jne         00790127
 0079011D    mov         eax,[007C4674];^gvar_00857F38
 00790122    cmp         byte ptr [eax],0
>00790125    je          00790151
 00790127    push        0
 00790129    movzx       ecx,word ptr ds:[790364];0xB gvar_00790364
 00790130    mov         dl,3
 00790132    mov         eax,[007C4144];^'Save changes before starting new project?'
 00790137    call        MessageDlg
 0079013C    sub         eax,2
>0079013F    je          0079031B
 00790145    sub         eax,4
>00790148    jne         00790151
 0079014A    mov         eax,ebx
 0079014C    call        TMainForm.TrySaveFile
 00790151    lea         edx,[ebp-4]
 00790154    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 0079015A    call        TOpenDialog.GetInitialDir
 0079015F    cmp         dword ptr [ebp-4],0
>00790163    jne         00790176
 00790165    mov         edx,dword ptr ds:[9037D8];gvar_009037D8:UnicodeString
 0079016B    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 00790171    call        TOpenDialog.SetInitialDir
 00790176    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 0079017C    add         eax,80;TOpenDialog.FFilter:string
 00790181    mov         edx,dword ptr ds:[7C4134];^'FX3Net, FX3Text files (*.fx3;*.fxt)|*.fx3;*fxt|FXNet files (...
 00790187    call        @UStrAsg
 0079018C    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 00790192    mov         edx,dword ptr [eax]
 00790194    call        dword ptr [edx+54];TCommonDialog.Execute
 00790197    test        al,al
>00790199    je          0079031B
 0079019F    mov         eax,[007C4C8C];^gvar_007A1E9C
 007901A4    call        @UStrClr
 007901A9    lea         eax,[ebp-8]
 007901AC    push        eax
 007901AD    lea         edx,[ebp-1C]
 007901B0    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007901B5    mov         eax,dword ptr [eax]
 007901B7    call        005DDC74
 007901BC    mov         eax,dword ptr [ebp-1C]
 007901BF    mov         dword ptr [ebp-18],eax
 007901C2    mov         byte ptr [ebp-14],11
 007901C6    mov         eax,[007C4C8C];^gvar_007A1E9C
 007901CB    mov         eax,dword ptr [eax]
 007901CD    mov         dword ptr [ebp-10],eax
 007901D0    mov         byte ptr [ebp-0C],11
 007901D4    lea         edx,[ebp-18]
 007901D7    mov         ecx,1
 007901DC    mov         eax,790374;'WinFX3Net (%s) %s'
 007901E1    call        Format
 007901E6    mov         edx,dword ptr [ebp-8]
 007901E9    mov         eax,[009037D0];gvar_009037D0:TMainForm
 007901EE    call        TControl.SetText
 007901F3    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 007901F8    mov         dword ptr [eax],0FFFFFFFF
 007901FE    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00790203    xor         edx,edx
 00790205    mov         dword ptr [eax],edx
 00790207    mov         eax,dword ptr [ebx+494];TMainForm.tvFXNet:TTreeView
 0079020D    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00790213    call        TTreeNodes.Clear
 00790218    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0079021D    mov         eax,dword ptr [eax]
 0079021F    call        TObject.Free
 00790224    mov         dl,1
 00790226    mov         eax,[006A4F5C];TFXNet
 0079022B    call        TFXNet.Create;TFXNet.Create
 00790230    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 00790236    mov         dword ptr [edx],eax
 00790238    mov         eax,[007C4870];^gvar_007A1EB8
 0079023D    mov         byte ptr [eax],0
 00790240    lea         edx,[ebp-20]
 00790243    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 00790249    call        TOpenDialog.GetFileName
 0079024E    mov         edx,dword ptr [ebp-20]
 00790251    mov         eax,ebx
 00790253    call        TMainForm.TryReadFile
 00790258    test        al,al
>0079025A    je          0079031B
 00790260    lea         edx,[ebp-24]
 00790263    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 00790269    call        TOpenDialog.GetFileName
 0079026E    mov         edx,dword ptr [ebp-24]
 00790271    mov         eax,[007C4C8C];^gvar_007A1E9C
 00790276    call        @UStrAsg
 0079027B    lea         eax,[ebp-28]
 0079027E    push        eax
 0079027F    lea         edx,[ebp-2C]
 00790282    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00790287    mov         eax,dword ptr [eax]
 00790289    call        005DDC74
 0079028E    mov         eax,dword ptr [ebp-2C]
 00790291    mov         dword ptr [ebp-18],eax
 00790294    mov         byte ptr [ebp-14],11
 00790298    mov         eax,[007C4C8C];^gvar_007A1E9C
 0079029D    mov         eax,dword ptr [eax]
 0079029F    mov         dword ptr [ebp-10],eax
 007902A2    mov         byte ptr [ebp-0C],11
 007902A6    lea         edx,[ebp-18]
 007902A9    mov         ecx,1
 007902AE    mov         eax,790374;'WinFX3Net (%s) %s'
 007902B3    call        Format
 007902B8    mov         edx,dword ptr [ebp-28]
 007902BB    mov         eax,[009037D0];gvar_009037D0:TMainForm
 007902C0    call        TControl.SetText
 007902C5    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 007902CB    mov         edx,dword ptr [edx]
 007902CD    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 007902D2    mov         eax,dword ptr [eax]
 007902D4    mov         cl,1
 007902D6    call        TConfigInfoDlg.Populate
 007902DB    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 007902E0    mov         eax,dword ptr [eax]
 007902E2    mov         eax,dword ptr [eax+3C4]
 007902E8    xor         edx,edx
 007902EA    call        TControl.SetVisible
 007902EF    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 007902F4    mov         eax,dword ptr [eax]
 007902F6    mov         edx,dword ptr [eax]
 007902F8    call        dword ptr [edx+13C]
 007902FE    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00790303    mov         eax,dword ptr [eax]
 00790305    call        TFXNet.CheckForErrors
 0079030A    test        al,al
>0079030C    je          0079031B
 0079030E    mov         dl,1
 00790310    mov         eax,dword ptr [ebx+4C4];TMainForm.ErrorFlashTimer:TTimer
 00790316    call        TTimer.SetEnabled
 0079031B    xor         eax,eax
 0079031D    pop         edx
 0079031E    pop         ecx
 0079031F    pop         ecx
 00790320    mov         dword ptr fs:[eax],edx
 00790323    push        79035F
 00790328    lea         eax,[ebp-2C]
 0079032B    mov         edx,2
 00790330    call        @UStrArrayClr
 00790335    lea         eax,[ebp-24]
 00790338    mov         edx,2
 0079033D    call        @UStrArrayClr
 00790342    lea         eax,[ebp-1C]
 00790345    call        @UStrClr
 0079034A    lea         eax,[ebp-8]
 0079034D    mov         edx,2
 00790352    call        @UStrArrayClr
 00790357    ret
>00790358    jmp         @HandleFinally
>0079035D    jmp         00790328
 0079035F    pop         ebx
 00790360    mov         esp,ebp
 00790362    pop         ebp
 00790363    ret
*}
end;

//00790398
procedure TMainForm.FileMergeClick(Sender:TObject);
begin
{*
 00790398    push        ebp
 00790399    mov         ebp,esp
 0079039B    push        0
 0079039D    push        0
 0079039F    push        ebx
 007903A0    mov         ebx,eax
 007903A2    xor         eax,eax
 007903A4    push        ebp
 007903A5    push        79048A
 007903AA    push        dword ptr fs:[eax]
 007903AD    mov         dword ptr fs:[eax],esp
 007903B0    lea         edx,[ebp-4]
 007903B3    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 007903B9    call        TOpenDialog.GetInitialDir
 007903BE    cmp         dword ptr [ebp-4],0
>007903C2    jne         007903D5
 007903C4    mov         edx,dword ptr ds:[9037D8];gvar_009037D8:UnicodeString
 007903CA    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 007903D0    call        TOpenDialog.SetInitialDir
 007903D5    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 007903DB    add         eax,80;TOpenDialog.FFilter:string
 007903E0    mov         edx,dword ptr ds:[7C4134];^'FX3Net, FX3Text files (*.fx3;*.fxt)|*.fx3;*fxt|FXNet files (...
 007903E6    call        @UStrAsg
 007903EB    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 007903F1    mov         edx,dword ptr [eax]
 007903F3    call        dword ptr [edx+54];TCommonDialog.Execute
 007903F6    test        al,al
>007903F8    je          0079046C
 007903FA    lea         edx,[ebp-8]
 007903FD    mov         eax,dword ptr [ebx+484];TMainForm.OpenDialog:TOpenDialog
 00790403    call        TOpenDialog.GetFileName
 00790408    mov         edx,dword ptr [ebp-8]
 0079040B    mov         eax,ebx
 0079040D    call        TMainForm.TryReadFile
 00790412    test        al,al
>00790414    je          0079046C
 00790416    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 0079041C    mov         edx,dword ptr [edx]
 0079041E    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 00790423    mov         eax,dword ptr [eax]
 00790425    mov         cl,1
 00790427    call        TConfigInfoDlg.Populate
 0079042C    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 00790431    mov         eax,dword ptr [eax]
 00790433    mov         eax,dword ptr [eax+3C4]
 00790439    xor         edx,edx
 0079043B    call        TControl.SetVisible
 00790440    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 00790445    mov         eax,dword ptr [eax]
 00790447    mov         edx,dword ptr [eax]
 00790449    call        dword ptr [edx+13C]
 0079044F    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00790454    mov         eax,dword ptr [eax]
 00790456    call        TFXNet.CheckForErrors
 0079045B    test        al,al
>0079045D    je          0079046C
 0079045F    mov         dl,1
 00790461    mov         eax,dword ptr [ebx+4C4];TMainForm.ErrorFlashTimer:TTimer
 00790467    call        TTimer.SetEnabled
 0079046C    xor         eax,eax
 0079046E    pop         edx
 0079046F    pop         ecx
 00790470    pop         ecx
 00790471    mov         dword ptr fs:[eax],edx
 00790474    push        790491
 00790479    lea         eax,[ebp-8]
 0079047C    call        @UStrClr
 00790481    lea         eax,[ebp-4]
 00790484    call        @UStrClr
 00790489    ret
>0079048A    jmp         @HandleFinally
>0079048F    jmp         00790479
 00790491    pop         ebx
 00790492    pop         ecx
 00790493    pop         ecx
 00790494    pop         ebp
 00790495    ret
*}
end;

//00790498
procedure TMainForm.FileMergeEsaClick(Sender:TObject);
begin
{*
 00790498    push        ebx
 00790499    mov         ebx,eax
 0079049B    mov         eax,[007C4EB4];^gvar_00901E10:TMergeEsaForm
 007904A0    mov         eax,dword ptr [eax]
 007904A2    mov         edx,dword ptr [eax]
 007904A4    call        dword ptr [edx+13C]
 007904AA    mov         eax,ebx
 007904AC    call        TMainForm.UpdateTreeView
 007904B1    mov         eax,ebx
 007904B3    call        TMainForm.UpdateStatusbar
 007904B8    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007904BD    mov         eax,dword ptr [eax]
 007904BF    call        TFXNet.CheckForErrors
 007904C4    test        al,al
>007904C6    je          007904D5
 007904C8    mov         dl,1
 007904CA    mov         eax,dword ptr [ebx+4C4];TMainForm.ErrorFlashTimer:TTimer
 007904D0    call        TTimer.SetEnabled
 007904D5    pop         ebx
 007904D6    ret
*}
end;

//007904D8
procedure TMainForm.FileSaveClick(Sender:TObject);
begin
{*
 007904D8    push        ebx
 007904D9    mov         ebx,eax
 007904DB    call        00792AD4
 007904E0    test        al,al
>007904E2    jne         007904EB
 007904E4    mov         eax,ebx
 007904E6    call        TCustomForm.Close
 007904EB    mov         eax,ebx
 007904ED    call        TMainForm.TrySaveFile
 007904F2    mov         eax,ebx
 007904F4    call        TMainForm.UpdateTreeView
 007904F9    mov         eax,ebx
 007904FB    call        TMainForm.UpdateStatusbar
 00790500    pop         ebx
 00790501    ret
*}
end;

//00790504
procedure TMainForm.FileSaveAsClick(Sender:TObject);
begin
{*
 00790504    push        ebx
 00790505    mov         ebx,eax
 00790507    call        00792AD4
 0079050C    test        al,al
>0079050E    jne         00790517
 00790510    mov         eax,ebx
 00790512    call        TCustomForm.Close
 00790517    mov         edx,dword ptr ds:[7C4C8C];^gvar_007A1E9C
 0079051D    mov         eax,ebx
 0079051F    call        TMainForm.GetNewFileName
 00790524    test        al,al
>00790526    je          0079052F
 00790528    mov         eax,ebx
 0079052A    call        TMainForm.TrySaveFile
 0079052F    mov         eax,ebx
 00790531    call        TMainForm.UpdateTreeView
 00790536    mov         eax,ebx
 00790538    call        TMainForm.UpdateStatusbar
 0079053D    pop         ebx
 0079053E    ret
*}
end;

//00790540
procedure TMainForm.FileImportClick(Sender:TObject);
begin
{*
 00790540    push        ebx
 00790541    mov         ebx,eax
 00790543    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00790548    cmp         dword ptr [eax],0
>0079054B    je          00790563
 0079054D    mov         eax,[007C4E80];^gvar_00903778:TFileImportDlg
 00790552    mov         eax,dword ptr [eax]
 00790554    mov         edx,dword ptr [eax]
 00790556    call        dword ptr [edx+13C]
 0079055C    mov         eax,ebx
 0079055E    call        TMainForm.UpdateStatusbar
 00790563    pop         ebx
 00790564    ret
*}
end;

//00790568
procedure TMainForm.FileExportClick(Sender:TObject);
begin
{*
 00790568    push        ebx
 00790569    mov         ebx,eax
 0079056B    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00790570    cmp         dword ptr [eax],0
>00790573    je          0079058B
 00790575    mov         eax,[007C4AA0];^gvar_0090377C:TFileExportDlg
 0079057A    mov         eax,dword ptr [eax]
 0079057C    mov         edx,dword ptr [eax]
 0079057E    call        dword ptr [edx+13C]
 00790584    mov         eax,ebx
 00790586    call        TMainForm.UpdateStatusbar
 0079058B    pop         ebx
 0079058C    ret
*}
end;

//00790590
procedure TMainForm.FilePrintClick(Sender:TObject);
begin
{*
 00790590    push        ebx
 00790591    mov         ebx,eax
 00790593    call        00792AD4
 00790598    test        al,al
>0079059A    jne         007905A3
 0079059C    mov         eax,ebx
 0079059E    call        TCustomForm.Close
 007905A3    call        Printer
 007905A8    call        TPrinter.GetPrinters
 007905AD    mov         edx,dword ptr [eax]
 007905AF    call        dword ptr [edx+14];TStrings.GetCount
 007905B2    test        eax,eax
>007905B4    jne         007905C2
 007905B6    mov         eax,790610;'There are no printers currently installed'
 007905BB    call        ShowMessage
 007905C0    pop         ebx
 007905C1    ret
 007905C2    mov         eax,[007C4420];^gvar_007CA838
 007905C7    mov         byte ptr [eax],1
 007905CA    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 007905CF    cmp         dword ptr [eax],0FFFFFFFF
>007905D2    jne         007905E4
 007905D4    mov         eax,[007C4BD0];^gvar_009036C8:TPreviewForm
 007905D9    mov         eax,dword ptr [eax]
 007905DB    xor         edx,edx
 007905DD    call        TPreviewForm.ShowPreview
>007905E2    jmp         007905F2
 007905E4    mov         eax,[007C4BD0];^gvar_009036C8:TPreviewForm
 007905E9    mov         eax,dword ptr [eax]
 007905EB    mov         dl,1
 007905ED    call        TPreviewForm.ShowPreview
 007905F2    mov         eax,[007C4420];^gvar_007CA838
 007905F7    mov         byte ptr [eax],0
 007905FA    mov         eax,ebx
 007905FC    call        TMainForm.UpdateStatusbar
 00790601    pop         ebx
 00790602    ret
*}
end;

//00790664
procedure TMainForm.FilePrintSetupClick(Sender:TObject);
begin
{*
 00790664    push        ebx
 00790665    call        Printer
 0079066A    call        TPrinter.GetPrinters
 0079066F    mov         edx,dword ptr [eax]
 00790671    call        dword ptr [edx+14];TStrings.GetCount
 00790674    test        eax,eax
>00790676    jne         00790684
 00790678    mov         eax,7906B0;'There are no printers currently installed'
 0079067D    call        ShowMessage
 00790682    pop         ebx
 00790683    ret
 00790684    xor         ecx,ecx
 00790686    mov         dl,1
 00790688    mov         eax,[00553CA0];TPrinterSetupDialog
 0079068D    call        TCommonDialog.Create;TPrinterSetupDialog.Create
 00790692    mov         ebx,eax
 00790694    mov         eax,ebx
 00790696    mov         edx,dword ptr [eax]
 00790698    call        dword ptr [edx+54];TCommonDialog.Execute
 0079069B    mov         eax,ebx
 0079069D    call        TObject.Free
 007906A2    pop         ebx
 007906A3    ret
*}
end;

//00790704
procedure TMainForm.FileExitClick(Sender:TObject);
begin
{*
 00790704    call        TCustomForm.Close
 00790709    ret
*}
end;

//0079070C
procedure TMainForm.DataNetClick(Sender:TObject);
begin
{*
 0079070C    push        ebx
 0079070D    push        esi
 0079070E    push        edi
 0079070F    mov         esi,eax
 00790711    call        00792AD4
 00790716    test        al,al
>00790718    jne         00790721
 0079071A    mov         eax,esi
 0079071C    call        TCustomForm.Close
 00790721    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00790726    cmp         dword ptr [eax],0
>00790729    je          0079076F
 0079072B    mov         eax,esi
 0079072D    call        TMainForm.DisableAllMenuItems
 00790732    mov         edi,dword ptr [esi+494];TMainForm.tvFXNet:TTreeView
 00790738    mov         eax,dword ptr [edi+2F8];TTreeView.FTreeNodes:TTreeNodes
 0079073E    call        TTreeNodes.GetFirstNode
 00790743    mov         edx,eax
 00790745    movzx       ecx,word ptr ds:[790774];0x0 gvar_00790774
 0079074C    mov         eax,edi
 0079074E    mov         ebx,dword ptr [eax]
 00790750    call        dword ptr [ebx+124];TCustomTreeView.Select
 00790756    mov         byte ptr ds:[9037D4],0;gvar_009037D4
 0079075D    mov         eax,dword ptr [esi+4A0];TMainForm.FXNetFrame1:TFXNetFrame
 00790763    call        TFXNetFrame.Show
 00790768    mov         eax,esi
 0079076A    call        TMainForm.UpdateStatusbar
 0079076F    pop         edi
 00790770    pop         esi
 00790771    pop         ebx
 00790772    ret
*}
end;

//00790778
procedure TMainForm.DataGeneralClick(Sender:TObject);
begin
{*
 00790778    push        ebx
 00790779    mov         ebx,eax
 0079077B    call        00792AD4
 00790780    test        al,al
>00790782    jne         0079078B
 00790784    mov         eax,ebx
 00790786    call        TCustomForm.Close
 0079078B    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00790790    cmp         dword ptr [eax],0
>00790793    je          007907BD
 00790795    mov         eax,ebx
 00790797    call        TMainForm.DisableAllMenuItems
 0079079C    mov         byte ptr ds:[9037D4],0;gvar_009037D4
 007907A3    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 007907A9    mov         edx,dword ptr [edx]
 007907AB    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 007907B1    call        TFXPDFrame.Show
 007907B6    mov         eax,ebx
 007907B8    call        TMainForm.UpdateStatusbar
 007907BD    pop         ebx
 007907BE    ret
*}
end;

//007907C0
procedure TMainForm.DataAddressClick(Sender:TObject);
begin
{*
 007907C0    push        ebx
 007907C1    push        esi
 007907C2    mov         esi,edx
 007907C4    mov         ebx,eax
 007907C6    call        00792AD4
 007907CB    test        al,al
>007907CD    jne         007907D6
 007907CF    mov         eax,ebx
 007907D1    call        TCustomForm.Close
 007907D6    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007907DB    cmp         dword ptr [eax],0
>007907DE    je          0079085D
 007907E0    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007907E5    mov         eax,dword ptr [eax]
 007907E7    mov         eax,dword ptr [eax+0C]
 007907EA    call        006A344C
 007907EF    test        al,al
>007907F1    jbe         00790841
 007907F3    mov         eax,ebx
 007907F5    call        TMainForm.DisableAllMenuItems
 007907FA    mov         byte ptr ds:[9037D4],0;gvar_009037D4
 00790801    mov         eax,esi
 00790803    mov         edx,dword ptr ds:[524178];TTreeNode
 00790809    call        @IsClass
 0079080E    test        al,al
>00790810    je          00790823
 00790812    mov         eax,esi
 00790814    call        00539478
 00790819    mov         edx,dword ptr ds:[7C4ED4];^gvar_00901F78
 0079081F    mov         dword ptr [edx],eax
>00790821    jmp         0079082C
 00790823    mov         eax,[007C4ED4];^gvar_00901F78
 00790828    xor         edx,edx
 0079082A    mov         dword ptr [eax],edx
 0079082C    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00790832    mov         edx,dword ptr [edx]
 00790834    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 0079083A    call        TFXADFrame.Show
>0079083F    jmp         00790856
 00790841    push        0
 00790843    movzx       ecx,word ptr ds:[790860];0x4 gvar_00790860
 0079084A    mov         dl,2
 0079084C    mov         eax,[007C4148];^'No loops are defined!'
 00790851    call        MessageDlg
 00790856    mov         eax,ebx
 00790858    call        TMainForm.UpdateStatusbar
 0079085D    pop         esi
 0079085E    pop         ebx
 0079085F    ret
*}
end;

//00790864
procedure TMainForm.DataSummaryClick(Sender:TObject);
begin
{*
 00790864    push        ebx
 00790865    mov         ebx,eax
 00790867    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0079086C    cmp         dword ptr [eax],0
>0079086F    je          00790891
 00790871    mov         eax,ebx
 00790873    call        TMainForm.DisableAllMenuItems
 00790878    mov         byte ptr ds:[9037D4],0;gvar_009037D4
 0079087F    mov         eax,dword ptr [ebx+4B0];TMainForm.FXADSummaryFrame1:TFXADSummaryFrame
 00790885    call        TFXADSummaryFrame.Show
 0079088A    mov         eax,ebx
 0079088C    call        TMainForm.UpdateStatusbar
 00790891    pop         ebx
 00790892    ret
*}
end;

//00790894
procedure TMainForm.DataConfigInfoClick(Sender:TObject);
begin
{*
 00790894    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 0079089A    mov         edx,dword ptr [edx]
 0079089C    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 007908A1    mov         eax,dword ptr [eax]
 007908A3    mov         cl,1
 007908A5    call        TConfigInfoDlg.Populate
 007908AA    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 007908AF    mov         eax,dword ptr [eax]
 007908B1    mov         eax,dword ptr [eax+3C4]
 007908B7    xor         edx,edx
 007908B9    call        TControl.SetVisible
 007908BE    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 007908C3    mov         eax,dword ptr [eax]
 007908C5    mov         edx,dword ptr [eax]
 007908C7    call        dword ptr [edx+13C]
 007908CD    ret
*}
end;

//007908D0
procedure TMainForm.DataControlZonesClick(Sender:TObject);
begin
{*
 007908D0    push        ebx
 007908D1    mov         ebx,eax
 007908D3    mov         eax,ebx
 007908D5    call        TMainForm.DisableAllMenuItems
 007908DA    mov         byte ptr ds:[9037D4],0;gvar_009037D4
 007908E1    mov         eax,dword ptr [ebx+4B4];TMainForm.FXCZonesFrame1:TFXControlsFrame
 007908E7    call        TFXControlsFrame.Show
 007908EC    mov         eax,ebx
 007908EE    call        TMainForm.UpdateStatusbar
 007908F3    pop         ebx
 007908F4    ret
*}
end;

//007908F8
procedure TMainForm.DataAddrReportItemClick(Sender:TObject);
begin
{*
 007908F8    mov         eax,[007C4864];^gvar_00902C90:TAddressReport
 007908FD    mov         eax,dword ptr [eax]
 007908FF    call        TCustomForm.Show
 00790904    ret
*}
end;

//00790908
procedure TMainForm.ToolsReceiveClick(Sender:TObject);
begin
{*
 00790908    push        ebp
 00790909    mov         ebp,esp
 0079090B    push        ecx
 0079090C    push        ebx
 0079090D    push        esi
 0079090E    mov         dword ptr [ebp-4],eax
 00790911    mov         esi,dword ptr ds:[7C46A8];^gvar_009036C0:TFXCommHandler
 00790917    call        00792AD4
 0079091C    test        al,al
>0079091E    jne         00790928
 00790920    mov         eax,dword ptr [ebp-4]
 00790923    call        TCustomForm.Close
 00790928    mov         eax,[007C4420];^gvar_007CA838
 0079092D    mov         byte ptr [eax],1
 00790930    xor         eax,eax
 00790932    push        ebp
 00790933    push        7909F1
 00790938    push        dword ptr fs:[eax]
 0079093B    mov         dword ptr fs:[eax],esp
 0079093E    mov         eax,dword ptr [esi]
 00790940    mov         eax,dword ptr [eax+3DC]
 00790946    mov         dl,1
 00790948    mov         ecx,dword ptr [eax]
 0079094A    call        dword ptr [ecx+88]
 00790950    mov         eax,dword ptr [esi]
 00790952    mov         eax,dword ptr [eax+3E0]
 00790958    xor         edx,edx
 0079095A    mov         ecx,dword ptr [eax]
 0079095C    call        dword ptr [ecx+88]
 00790962    mov         ecx,dword ptr ds:[7C4CE8];^gvar_007C3EF4
 00790968    mov         ecx,dword ptr [ecx]
 0079096A    mov         eax,dword ptr [esi]
 0079096C    mov         eax,dword ptr [eax+3F4]
 00790972    mov         eax,dword ptr [eax+29C]
 00790978    xor         edx,edx
 0079097A    mov         ebx,dword ptr [eax]
 0079097C    call        dword ptr [ebx+20]
 0079097F    mov         ecx,dword ptr ds:[7C441C];^gvar_007C3EF8
 00790985    mov         ecx,dword ptr [ecx]
 00790987    mov         eax,dword ptr [esi]
 00790989    mov         eax,dword ptr [eax+3F4]
 0079098F    mov         eax,dword ptr [eax+29C]
 00790995    mov         edx,1
 0079099A    mov         ebx,dword ptr [eax]
 0079099C    call        dword ptr [ebx+20]
 0079099F    mov         ecx,dword ptr ds:[7C4B30];^gvar_007C3EFC
 007909A5    mov         ecx,dword ptr [ecx]
 007909A7    mov         eax,dword ptr [esi]
 007909A9    mov         eax,dword ptr [eax+3F4]
 007909AF    mov         eax,dword ptr [eax+29C]
 007909B5    mov         edx,2
 007909BA    mov         ebx,dword ptr [eax]
 007909BC    call        dword ptr [ebx+20]
 007909BF    mov         eax,dword ptr [esi]
 007909C1    mov         eax,dword ptr [eax+3F0]
 007909C7    mov         edx,790A40;'?'
 007909CC    call        TControl.SetText
 007909D1    mov         eax,dword ptr [esi]
 007909D3    mov         edx,dword ptr [eax]
 007909D5    call        dword ptr [edx+13C]
 007909DB    xor         eax,eax
 007909DD    pop         edx
 007909DE    pop         ecx
 007909DF    pop         ecx
 007909E0    mov         dword ptr fs:[eax],edx
 007909E3    push        7909F8
 007909E8    mov         eax,[007C4420];^gvar_007CA838
 007909ED    mov         byte ptr [eax],0
 007909F0    ret
>007909F1    jmp         @HandleFinally
>007909F6    jmp         007909E8
 007909F8    mov         byte ptr ds:[9037D4],1;gvar_009037D4
 007909FF    mov         eax,dword ptr [ebp-4]
 00790A02    call        TMainForm.UpdateTreeView
 00790A07    mov         eax,dword ptr [ebp-4]
 00790A0A    call        TMainForm.UpdateStatusbar
 00790A0F    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00790A14    mov         eax,dword ptr [eax]
 00790A16    call        TFXNet.CheckForErrors
 00790A1B    test        al,al
>00790A1D    je          00790A2F
 00790A1F    mov         eax,dword ptr [ebp-4]
 00790A22    mov         eax,dword ptr [eax+4C4];TMainForm.ErrorFlashTimer:TTimer
 00790A28    mov         dl,1
 00790A2A    call        TTimer.SetEnabled
 00790A2F    pop         esi
 00790A30    pop         ebx
 00790A31    pop         ecx
 00790A32    pop         ebp
 00790A33    ret
*}
end;

//00790A44
procedure TMainForm.ToolsSendClick(Sender:TObject);
begin
{*
 00790A44    push        ebp
 00790A45    mov         ebp,esp
 00790A47    add         esp,0FFFFFFF8
 00790A4A    push        ebx
 00790A4B    push        esi
 00790A4C    xor         ecx,ecx
 00790A4E    mov         dword ptr [ebp-8],ecx
 00790A51    mov         dword ptr [ebp-4],eax
 00790A54    mov         esi,dword ptr ds:[7C46A8];^gvar_009036C0:TFXCommHandler
 00790A5A    xor         eax,eax
 00790A5C    push        ebp
 00790A5D    push        790B93
 00790A62    push        dword ptr fs:[eax]
 00790A65    mov         dword ptr fs:[eax],esp
 00790A68    call        00792AD4
 00790A6D    test        al,al
>00790A6F    jne         00790A79
 00790A71    mov         eax,dword ptr [ebp-4]
 00790A74    call        TCustomForm.Close
 00790A79    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00790A7E    mov         eax,dword ptr [eax]
 00790A80    cmp         byte ptr [eax+8C],0
>00790A87    je          00790A98
 00790A89    mov         eax,[007C4118];^'You have to correct the errors before sending the configuration to the ...
 00790A8E    call        ShowMessage
>00790A93    jmp         00790B7D
 00790A98    mov         eax,[007C4420];^gvar_007CA838
 00790A9D    mov         byte ptr [eax],1
 00790AA0    xor         eax,eax
 00790AA2    push        ebp
 00790AA3    push        790B6E
 00790AA8    push        dword ptr fs:[eax]
 00790AAB    mov         dword ptr fs:[eax],esp
 00790AAE    mov         eax,dword ptr [esi]
 00790AB0    mov         eax,dword ptr [eax+3DC]
 00790AB6    xor         edx,edx
 00790AB8    mov         ecx,dword ptr [eax]
 00790ABA    call        dword ptr [ecx+88]
 00790AC0    mov         eax,dword ptr [esi]
 00790AC2    mov         eax,dword ptr [eax+3E0]
 00790AC8    mov         dl,1
 00790ACA    mov         ecx,dword ptr [eax]
 00790ACC    call        dword ptr [ecx+88]
 00790AD2    mov         ecx,dword ptr ds:[7C4CE8];^gvar_007C3EF4
 00790AD8    mov         ecx,dword ptr [ecx]
 00790ADA    mov         eax,dword ptr [esi]
 00790ADC    mov         eax,dword ptr [eax+3F4]
 00790AE2    mov         eax,dword ptr [eax+29C]
 00790AE8    xor         edx,edx
 00790AEA    mov         ebx,dword ptr [eax]
 00790AEC    call        dword ptr [ebx+20]
 00790AEF    mov         ecx,dword ptr ds:[7C441C];^gvar_007C3EF8
 00790AF5    mov         ecx,dword ptr [ecx]
 00790AF7    mov         eax,dword ptr [esi]
 00790AF9    mov         eax,dword ptr [eax+3F4]
 00790AFF    mov         eax,dword ptr [eax+29C]
 00790B05    mov         edx,1
 00790B0A    mov         ebx,dword ptr [eax]
 00790B0C    call        dword ptr [ebx+20]
 00790B0F    mov         ecx,dword ptr ds:[7C45C8];^gvar_007C3F00
 00790B15    mov         ecx,dword ptr [ecx]
 00790B17    mov         eax,dword ptr [esi]
 00790B19    mov         eax,dword ptr [eax+3F4]
 00790B1F    mov         eax,dword ptr [eax+29C]
 00790B25    mov         edx,2
 00790B2A    mov         ebx,dword ptr [eax]
 00790B2C    call        dword ptr [ebx+20]
 00790B2F    lea         edx,[ebp-8]
 00790B32    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 00790B37    mov         eax,dword ptr [eax]
 00790B39    call        IntToStr
 00790B3E    mov         edx,dword ptr [ebp-8]
 00790B41    mov         eax,dword ptr [esi]
 00790B43    mov         eax,dword ptr [eax+3F0]
 00790B49    call        TControl.SetText
 00790B4E    mov         eax,dword ptr [esi]
 00790B50    mov         edx,dword ptr [eax]
 00790B52    call        dword ptr [edx+13C]
 00790B58    xor         eax,eax
 00790B5A    pop         edx
 00790B5B    pop         ecx
 00790B5C    pop         ecx
 00790B5D    mov         dword ptr fs:[eax],edx
 00790B60    push        790B75
 00790B65    mov         eax,[007C4420];^gvar_007CA838
 00790B6A    mov         byte ptr [eax],0
 00790B6D    ret
>00790B6E    jmp         @HandleFinally
>00790B73    jmp         00790B65
 00790B75    mov         eax,dword ptr [ebp-4]
 00790B78    call        TMainForm.UpdateStatusbar
 00790B7D    xor         eax,eax
 00790B7F    pop         edx
 00790B80    pop         ecx
 00790B81    pop         ecx
 00790B82    mov         dword ptr fs:[eax],edx
 00790B85    push        790B9A
 00790B8A    lea         eax,[ebp-8]
 00790B8D    call        @UStrClr
 00790B92    ret
>00790B93    jmp         @HandleFinally
>00790B98    jmp         00790B8A
 00790B9A    pop         esi
 00790B9B    pop         ebx
 00790B9C    pop         ecx
 00790B9D    pop         ecx
 00790B9E    pop         ebp
 00790B9F    ret
*}
end;

//00790BA0
{*procedure sub_00790BA0(?:TPopupMenu; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00790BA0    push        ebp
 00790BA1    mov         ebp,esp
 00790BA3    add         esp,0FFFFFFD8
 00790BA6    push        ebx
 00790BA7    push        esi
 00790BA8    push        edi
 00790BA9    xor         ebx,ebx
 00790BAB    mov         dword ptr [ebp-20],ebx
 00790BAE    mov         dword ptr [ebp-24],ebx
 00790BB1    mov         dword ptr [ebp-28],ebx
 00790BB4    mov         dword ptr [ebp-4],ebx
 00790BB7    mov         dword ptr [ebp-8],ebx
 00790BBA    mov         ebx,dword ptr [ebp+0C]
 00790BBD    mov         esi,dword ptr [ebp+8]
 00790BC0    test        esi,esi
>00790BC2    js          00790BCB
 00790BC4    mov         edi,dword ptr [ebx+esi*4]
 00790BC7    dec         esi
 00790BC8    push        edi
>00790BC9    jns         00790BC4
 00790BCB    mov         dword ptr [ebp+0C],esp
 00790BCE    mov         ebx,dword ptr [ebp+14]
 00790BD1    mov         esi,dword ptr [ebp+10]
 00790BD4    test        esi,esi
>00790BD6    js          00790BDF
 00790BD8    mov         edi,dword ptr [ebx+esi*4]
 00790BDB    dec         esi
 00790BDC    push        edi
>00790BDD    jns         00790BD8
 00790BDF    mov         dword ptr [ebp+14],esp
 00790BE2    mov         ebx,ecx
 00790BE4    test        ebx,ebx
>00790BE6    js          00790BF2
 00790BE8    shr         ebx,2
 00790BEB    mov         esi,dword ptr [edx+ebx*4]
 00790BEE    dec         ebx
 00790BEF    push        esi
>00790BF0    jns         00790BEB
 00790BF2    mov         edx,esp
 00790BF4    mov         dword ptr [ebp-10],ecx
 00790BF7    mov         dword ptr [ebp-0C],edx
 00790BFA    mov         esi,eax
 00790BFC    mov         ecx,dword ptr [ebp+10]
 00790BFF    inc         ecx
 00790C00    mov         eax,dword ptr [ebp+14]
 00790C03    mov         edx,dword ptr ds:[4012B8];string
 00790C09    call        @InitializeArray
 00790C0E    mov         ecx,dword ptr [ebp+8]
 00790C11    inc         ecx
 00790C12    mov         eax,dword ptr [ebp+0C]
 00790C15    mov         edx,dword ptr ds:[4012B8];string
 00790C1B    call        @InitializeArray
 00790C20    xor         eax,eax
 00790C22    push        ebp
 00790C23    push        790E33
 00790C28    push        dword ptr fs:[eax]
 00790C2B    mov         dword ptr fs:[eax],esp
 00790C2E    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790C33    mov         eax,dword ptr [eax]
 00790C35    mov         eax,dword ptr [eax+3C0]
 00790C3B    mov         eax,dword ptr [eax+2C8]
 00790C41    xor         edx,edx
 00790C43    mov         ecx,dword ptr [eax]
 00790C45    call        dword ptr [ecx+3C]
 00790C48    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790C4D    mov         eax,dword ptr [eax]
 00790C4F    mov         eax,dword ptr [eax+3C0]
 00790C55    mov         eax,dword ptr [eax+2C8]
 00790C5B    mov         edx,dword ptr [esi+8]
 00790C5E    mov         ecx,dword ptr [eax]
 00790C60    call        dword ptr [ecx+3C]
 00790C63    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790C68    mov         eax,dword ptr [eax]
 00790C6A    mov         eax,dword ptr [eax+3C0]
 00790C70    mov         eax,dword ptr [eax+2C8]
 00790C76    mov         edx,790E58;'Ord;Name;Tag;Caption;FXCode'
 00790C7B    mov         ecx,dword ptr [eax]
 00790C7D    call        dword ptr [ecx+3C]
 00790C80    mov         eax,dword ptr [esi+44]
 00790C83    call        TMenuItem.GetCount
 00790C88    sub         eax,1
>00790C8B    jno         00790C92
 00790C8D    call        @IntOver
 00790C92    mov         edi,eax
 00790C94    test        edi,edi
>00790C96    jl          00790DE7
 00790C9C    inc         edi
 00790C9D    xor         ebx,ebx
 00790C9F    lea         edx,[ebp-20]
 00790CA2    mov         eax,ebx
 00790CA4    call        IntToStr
 00790CA9    push        dword ptr [ebp-20]
 00790CAC    push        790E9C;';'
 00790CB1    mov         edx,ebx
 00790CB3    mov         eax,dword ptr [esi+44]
 00790CB6    call        TMenuItem.GetItem
 00790CBB    push        dword ptr [eax+8];TMenuItem.FName:TComponentName
 00790CBE    push        790E9C;';'
 00790CC3    mov         edx,ebx
 00790CC5    mov         eax,dword ptr [esi+44]
 00790CC8    call        TMenuItem.GetItem
 00790CCD    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00790CD0    lea         edx,[ebp-24]
 00790CD3    call        IntToStr
 00790CD8    push        dword ptr [ebp-24]
 00790CDB    push        790E9C;';'
 00790CE0    mov         edx,ebx
 00790CE2    mov         eax,dword ptr [esi+44]
 00790CE5    call        TMenuItem.GetItem
 00790CEA    push        dword ptr [eax+40];TMenuItem.FCaption:string
 00790CED    push        790E9C;';'
 00790CF2    mov         edx,ebx
 00790CF4    mov         eax,dword ptr [esi+44]
 00790CF7    call        TMenuItem.GetItem
 00790CFC    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00790CFF    test        eax,eax
>00790D01    jl          00790D08
 00790D03    cmp         eax,dword ptr [ebp-10]
>00790D06    jle         00790D0D
 00790D08    call        @BoundErr
 00790D0D    mov         edx,dword ptr [ebp-0C]
 00790D10    movzx       eax,byte ptr [edx+eax]
 00790D14    lea         ecx,[ebp-28]
 00790D17    mov         edx,2
 00790D1C    call        IntToHex
 00790D21    push        dword ptr [ebp-28]
 00790D24    push        790E9C;';'
 00790D29    mov         edx,ebx
 00790D2B    mov         eax,dword ptr [esi+44]
 00790D2E    call        TMenuItem.GetItem
 00790D33    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00790D36    test        eax,eax
>00790D38    jl          00790D3F
 00790D3A    cmp         eax,dword ptr [ebp+10]
>00790D3D    jle         00790D44
 00790D3F    call        @BoundErr
 00790D44    mov         edx,dword ptr [ebp+14]
 00790D47    push        dword ptr [edx+eax*4]
 00790D4A    lea         eax,[ebp-8]
 00790D4D    mov         edx,0B
 00790D52    call        @UStrCatN
 00790D57    mov         edx,ebx
 00790D59    mov         eax,dword ptr [esi+44]
 00790D5C    call        TMenuItem.GetItem
 00790D61    cmp         word ptr [eax+9A],0;TMenuItem.?f9A:word
>00790D69    je          00790DB7
 00790D6B    mov         edx,ebx
 00790D6D    mov         eax,dword ptr [esi+44]
 00790D70    call        TMenuItem.GetItem
 00790D75    mov         edx,dword ptr [eax+98];TMenuItem.FOnClick:TNotifyEvent
 00790D7B    mov         dword ptr [ebp-18],edx
 00790D7E    mov         edx,dword ptr [eax+9C];TMenuItem.?f9C:TPopupMenu
 00790D84    mov         dword ptr [ebp-14],edx
 00790D87    mov         eax,dword ptr [ebp-14]
 00790D8A    mov         dword ptr [ebp-1C],eax
 00790D8D    lea         ecx,[ebp-4]
 00790D90    mov         eax,dword ptr [ebp-1C]
 00790D93    mov         eax,dword ptr [eax]
 00790D95    mov         edx,dword ptr [ebp-18]
 00790D98    call        TObject.MethodName
 00790D9D    push        dword ptr [ebp-8]
 00790DA0    push        790E9C;';'
 00790DA5    push        dword ptr [ebp-4]
 00790DA8    lea         eax,[ebp-8]
 00790DAB    mov         edx,3
 00790DB0    call        @UStrCatN
>00790DB5    jmp         00790DC4
 00790DB7    lea         eax,[ebp-8]
 00790DBA    mov         edx,790EAC;';Unassigned'
 00790DBF    call        @UStrCat
 00790DC4    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790DC9    mov         eax,dword ptr [eax]
 00790DCB    mov         eax,dword ptr [eax+3C0]
 00790DD1    mov         eax,dword ptr [eax+2C8]
 00790DD7    mov         edx,dword ptr [ebp-8]
 00790DDA    mov         ecx,dword ptr [eax]
 00790DDC    call        dword ptr [ecx+3C]
 00790DDF    inc         ebx
 00790DE0    dec         edi
>00790DE1    jne         00790C9F
 00790DE7    xor         eax,eax
 00790DE9    pop         edx
 00790DEA    pop         ecx
 00790DEB    pop         ecx
 00790DEC    mov         dword ptr fs:[eax],edx
 00790DEF    push        790E3A
 00790DF4    lea         eax,[ebp-28]
 00790DF7    mov         edx,3
 00790DFC    call        @UStrArrayClr
 00790E01    lea         eax,[ebp-8]
 00790E04    mov         edx,2
 00790E09    call        @UStrArrayClr
 00790E0E    mov         eax,dword ptr [ebp+0C]
 00790E11    mov         ecx,dword ptr [ebp+8]
 00790E14    inc         ecx
 00790E15    mov         edx,dword ptr ds:[4012B8];string
 00790E1B    call        @FinalizeArray
 00790E20    mov         eax,dword ptr [ebp+14]
 00790E23    mov         ecx,dword ptr [ebp+10]
 00790E26    inc         ecx
 00790E27    mov         edx,dword ptr ds:[4012B8];string
 00790E2D    call        @FinalizeArray
 00790E32    ret
>00790E33    jmp         @HandleFinally
>00790E38    jmp         00790DF4
 00790E3A    mov         edi,dword ptr [ebp-34]
 00790E3D    mov         esi,dword ptr [ebp-30]
 00790E40    mov         ebx,dword ptr [ebp-2C]
 00790E43    mov         esp,ebp
 00790E45    pop         ebp
 00790E46    ret         10
end;*}

//00790EC4
procedure TMainForm.Listallmenus1Click(Sender:TObject);
begin
{*
 00790EC4    push        ebp
 00790EC5    mov         ebp,esp
 00790EC7    mov         ecx,8
 00790ECC    push        0
 00790ECE    push        0
 00790ED0    dec         ecx
>00790ED1    jne         00790ECC
 00790ED3    push        ebx
 00790ED4    push        esi
 00790ED5    push        edi
 00790ED6    mov         ebx,eax
 00790ED8    mov         ecx,1
 00790EDD    lea         eax,[ebp-8]
 00790EE0    mov         edx,dword ptr ds:[4012B8];string
 00790EE6    call        @AddRefArray
 00790EEB    xor         eax,eax
 00790EED    push        ebp
 00790EEE    push        791843
 00790EF3    push        dword ptr fs:[eax]
 00790EF6    mov         dword ptr fs:[eax],esp
 00790EF9    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790EFE    mov         eax,dword ptr [eax]
 00790F00    call        TCustomForm.Show
 00790F05    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790F0A    mov         eax,dword ptr [eax]
 00790F0C    mov         eax,dword ptr [eax+3C0]
 00790F12    mov         edx,dword ptr [eax]
 00790F14    call        dword ptr [edx+124]
 00790F1A    mov         eax,[007C45CC];^gvar_007C28B0:array[29] of ?
 00790F1F    push        eax
 00790F20    push        1C
 00790F22    lea         eax,[ebp-8]
 00790F25    push        eax
 00790F26    push        0
 00790F28    mov         edx,dword ptr ds:[7C4464];^gvar_007C2890
 00790F2E    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 00790F34    mov         eax,dword ptr [eax+4F0];TFXPDFrame.CCIFunctionPopUpMenu:TPopupMenu
 00790F3A    mov         ecx,1C
 00790F3F    call        00790BA0
 00790F44    mov         eax,[007C4D58];^gvar_007C2948:array[26] of ?
 00790F49    push        eax
 00790F4A    push        19
 00790F4C    lea         eax,[ebp-8]
 00790F4F    push        eax
 00790F50    push        0
 00790F52    mov         edx,dword ptr ds:[7C4C20];^gvar_007C292C
 00790F58    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 00790F5E    mov         eax,dword ptr [eax+578];TFXPDFrame.CCOFunctionPopupMenu:TPopupMenu
 00790F64    mov         ecx,19
 00790F69    call        00790BA0
 00790F6E    mov         eax,[007C43CC];^gvar_007C29B8:array[6] of ?
 00790F73    push        eax
 00790F74    push        5
 00790F76    lea         eax,[ebp-8]
 00790F79    push        eax
 00790F7A    push        0
 00790F7C    mov         edx,dword ptr ds:[7C428C];^gvar_007C29B0
 00790F82    mov         eax,dword ptr [ebx+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 00790F88    mov         eax,dword ptr [eax+5C8];TFXPDFrame.ADOFunctionPopupMenu:TPopupMenu
 00790F8E    mov         ecx,5
 00790F93    call        00790BA0
 00790F98    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790F9D    mov         eax,dword ptr [eax]
 00790F9F    mov         eax,dword ptr [eax+3C0]
 00790FA5    mov         eax,dword ptr [eax+2C8]
 00790FAB    xor         edx,edx
 00790FAD    mov         ecx,dword ptr [eax]
 00790FAF    call        dword ptr [ecx+3C]
 00790FB2    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790FB7    mov         eax,dword ptr [eax]
 00790FB9    mov         eax,dword ptr [eax+3C0]
 00790FBF    mov         eax,dword ptr [eax+2C8]
 00790FC5    mov         edx,791860;'FXADFrame1.APTypePopupMenu'
 00790FCA    mov         ecx,dword ptr [eax]
 00790FCC    call        dword ptr [ecx+3C]
 00790FCF    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00790FD4    mov         eax,dword ptr [eax]
 00790FD6    mov         eax,dword ptr [eax+3C0]
 00790FDC    mov         eax,dword ptr [eax+2C8]
 00790FE2    mov         edx,7918A4;'Ord;Name;Tag;Caption;FXCode'
 00790FE7    mov         ecx,dword ptr [eax]
 00790FE9    call        dword ptr [ecx+3C]
 00790FEC    mov         eax,dword ptr [ebx+4A8];TMainForm.FXADFrame1:TFXADFrame
 00790FF2    mov         eax,dword ptr [eax+2E0];TFXADFrame.ADMenuFrame:TFXADMenuFrame
 00790FF8    mov         edi,dword ptr [eax+2B0];TFXADMenuFrame.SysTypeMenu:TPopupMenu
 00790FFE    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 00791001    call        TMenuItem.GetCount
 00791006    sub         eax,1
>00791009    jno         00791010
 0079100B    call        @IntOver
 00791010    test        eax,eax
>00791012    jl          007913B8
 00791018    inc         eax
 00791019    mov         dword ptr [ebp-0C],eax
 0079101C    xor         ebx,ebx
 0079101E    lea         edx,[ebp-14]
 00791021    mov         eax,ebx
 00791023    call        IntToStr
 00791028    push        dword ptr [ebp-14]
 0079102B    push        7918E8;';;'
 00791030    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 00791033    mov         edx,ebx
 00791035    call        TMenuItem.GetItem
 0079103A    push        dword ptr [eax+8];TMenuItem.FName:TComponentName
 0079103D    push        7918FC;';'
 00791042    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 00791045    mov         edx,ebx
 00791047    call        TMenuItem.GetItem
 0079104C    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079104F    lea         edx,[ebp-18]
 00791052    call        IntToStr
 00791057    push        dword ptr [ebp-18]
 0079105A    push        7918FC;';'
 0079105F    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 00791062    mov         edx,ebx
 00791064    call        TMenuItem.GetItem
 00791069    push        dword ptr [eax+40];TMenuItem.FCaption:string
 0079106C    push        7918FC;';'
 00791071    lea         eax,[ebp-4]
 00791074    mov         edx,8
 00791079    call        @UStrCatN
 0079107E    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00791083    mov         eax,dword ptr [eax]
 00791085    mov         eax,dword ptr [eax+3C0]
 0079108B    mov         eax,dword ptr [eax+2C8]
 00791091    mov         edx,dword ptr [ebp-4]
 00791094    mov         ecx,dword ptr [eax]
 00791096    call        dword ptr [ecx+3C]
 00791099    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 0079109C    mov         edx,ebx
 0079109E    call        TMenuItem.GetItem
 007910A3    call        TMenuItem.GetCount
 007910A8    test        eax,eax
>007910AA    jle         007913AE
 007910B0    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 007910B3    mov         edx,ebx
 007910B5    call        TMenuItem.GetItem
 007910BA    call        TMenuItem.GetCount
 007910BF    sub         eax,1
>007910C2    jno         007910C9
 007910C4    call        @IntOver
 007910C9    test        eax,eax
>007910CB    jl          007913AE
 007910D1    inc         eax
 007910D2    mov         dword ptr [ebp-10],eax
 007910D5    xor         esi,esi
 007910D7    lea         edx,[ebp-1C]
 007910DA    mov         eax,ebx
 007910DC    call        IntToStr
 007910E1    push        dword ptr [ebp-1C]
 007910E4    push        7918FC;';'
 007910E9    lea         edx,[ebp-20]
 007910EC    mov         eax,esi
 007910EE    call        IntToStr
 007910F3    push        dword ptr [ebp-20]
 007910F6    push        7918FC;';'
 007910FB    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 007910FE    mov         edx,ebx
 00791100    call        TMenuItem.GetItem
 00791105    mov         edx,esi
 00791107    call        TMenuItem.GetItem
 0079110C    push        dword ptr [eax+8];TMenuItem.FName:TComponentName
 0079110F    push        7918FC;';'
 00791114    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 00791117    mov         edx,ebx
 00791119    call        TMenuItem.GetItem
 0079111E    mov         edx,esi
 00791120    call        TMenuItem.GetItem
 00791125    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791128    lea         edx,[ebp-24]
 0079112B    call        IntToStr
 00791130    push        dword ptr [ebp-24]
 00791133    push        7918FC;';'
 00791138    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 0079113B    mov         edx,ebx
 0079113D    call        TMenuItem.GetItem
 00791142    mov         edx,esi
 00791144    call        TMenuItem.GetItem
 00791149    push        dword ptr [eax+40];TMenuItem.FCaption:string
 0079114C    push        7918FC;';'
 00791151    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 00791154    mov         edx,ebx
 00791156    call        TMenuItem.GetItem
 0079115B    mov         edx,esi
 0079115D    call        TMenuItem.GetItem
 00791162    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791165    cmp         eax,21
>00791168    jbe         0079116F
 0079116A    call        @BoundErr
 0079116F    mov         edx,dword ptr ds:[7C46B0];^gvar_007C23A8
 00791175    movzx       eax,byte ptr [edx+eax]
 00791179    lea         ecx,[ebp-28]
 0079117C    mov         edx,2
 00791181    call        IntToHex
 00791186    push        dword ptr [ebp-28]
 00791189    push        7918FC;';'
 0079118E    lea         eax,[ebp-4]
 00791191    mov         edx,0C
 00791196    call        @UStrCatN
 0079119B    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 0079119E    mov         edx,ebx
 007911A0    call        TMenuItem.GetItem
 007911A5    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007911A8    cmp         eax,0E
>007911AB    ja          00791389
 007911B1    jmp         dword ptr [eax*4+7911B8]
 007911B1    dd          00791389
 007911B1    dd          00791389
 007911B1    dd          007911F4
 007911B1    dd          00791228
 007911B1    dd          007912F8
 007911B1    dd          00791329
 007911B1    dd          0079135A
 007911B1    dd          00791389
 007911B1    dd          00791389
 007911B1    dd          00791389
 007911B1    dd          00791389
 007911B1    dd          0079125C
 007911B1    dd          00791389
 007911B1    dd          007912C4
 007911B1    dd          00791290
 007911F4    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 007911F7    mov         edx,ebx
 007911F9    call        TMenuItem.GetItem
 007911FE    mov         edx,esi
 00791200    call        TMenuItem.GetItem
 00791205    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791208    cmp         eax,1
>0079120B    jbe         00791212
 0079120D    call        @BoundErr
 00791212    mov         edx,dword ptr ds:[7C49E4];^gvar_007C166C:array[2] of ?
 00791218    mov         edx,dword ptr [edx+eax*4]
 0079121B    lea         eax,[ebp-4]
 0079121E    call        @UStrCat
>00791223    jmp         00791389
 00791228    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 0079122B    mov         edx,ebx
 0079122D    call        TMenuItem.GetItem
 00791232    mov         edx,esi
 00791234    call        TMenuItem.GetItem
 00791239    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079123C    cmp         eax,1
>0079123F    jbe         00791246
 00791241    call        @BoundErr
 00791246    mov         edx,dword ptr ds:[7C4E50];^gvar_007C1674:array[2] of ?
 0079124C    mov         edx,dword ptr [edx+eax*4]
 0079124F    lea         eax,[ebp-4]
 00791252    call        @UStrCat
>00791257    jmp         00791389
 0079125C    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 0079125F    mov         edx,ebx
 00791261    call        TMenuItem.GetItem
 00791266    mov         edx,esi
 00791268    call        TMenuItem.GetItem
 0079126D    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791270    cmp         eax,1
>00791273    jbe         0079127A
 00791275    call        @BoundErr
 0079127A    mov         edx,dword ptr ds:[7C4760];^gvar_007C167C:array[2] of ?
 00791280    mov         edx,dword ptr [edx+eax*4]
 00791283    lea         eax,[ebp-4]
 00791286    call        @UStrCat
>0079128B    jmp         00791389
 00791290    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 00791293    mov         edx,ebx
 00791295    call        TMenuItem.GetItem
 0079129A    mov         edx,esi
 0079129C    call        TMenuItem.GetItem
 007912A1    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007912A4    cmp         eax,1
>007912A7    jbe         007912AE
 007912A9    call        @BoundErr
 007912AE    mov         edx,dword ptr ds:[7C41FC];^gvar_007C168C:array[2] of ?
 007912B4    mov         edx,dword ptr [edx+eax*4]
 007912B7    lea         eax,[ebp-4]
 007912BA    call        @UStrCat
>007912BF    jmp         00791389
 007912C4    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 007912C7    mov         edx,ebx
 007912C9    call        TMenuItem.GetItem
 007912CE    mov         edx,esi
 007912D0    call        TMenuItem.GetItem
 007912D5    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007912D8    cmp         eax,1
>007912DB    jbe         007912E2
 007912DD    call        @BoundErr
 007912E2    mov         edx,dword ptr ds:[7C4238];^gvar_007C1684:array[2] of ?
 007912E8    mov         edx,dword ptr [edx+eax*4]
 007912EB    lea         eax,[ebp-4]
 007912EE    call        @UStrCat
>007912F3    jmp         00791389
 007912F8    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 007912FB    mov         edx,ebx
 007912FD    call        TMenuItem.GetItem
 00791302    mov         edx,esi
 00791304    call        TMenuItem.GetItem
 00791309    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079130C    cmp         eax,21
>0079130F    jbe         00791316
 00791311    call        @BoundErr
 00791316    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 0079131C    mov         edx,dword ptr [edx+eax*4]
 0079131F    lea         eax,[ebp-4]
 00791322    call        @UStrCat
>00791327    jmp         00791389
 00791329    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 0079132C    mov         edx,ebx
 0079132E    call        TMenuItem.GetItem
 00791333    mov         edx,esi
 00791335    call        TMenuItem.GetItem
 0079133A    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079133D    cmp         eax,18
>00791340    jbe         00791347
 00791342    call        @BoundErr
 00791347    mov         edx,dword ptr ds:[7C4924];^gvar_007C16B0:array[25] of ?
 0079134D    mov         edx,dword ptr [edx+eax*4]
 00791350    lea         eax,[ebp-4]
 00791353    call        @UStrCat
>00791358    jmp         00791389
 0079135A    mov         eax,dword ptr [edi+44];TPopupMenu.FItems:TMenuItem
 0079135D    mov         edx,ebx
 0079135F    call        TMenuItem.GetItem
 00791364    mov         edx,esi
 00791366    call        TMenuItem.GetItem
 0079136B    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079136E    cmp         eax,3
>00791371    jbe         00791378
 00791373    call        @BoundErr
 00791378    mov         edx,dword ptr ds:[7C498C];^gvar_007C2468:array[4] of ?
 0079137E    mov         edx,dword ptr [edx+eax*4]
 00791381    lea         eax,[ebp-4]
 00791384    call        @UStrCat
 00791389    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 0079138E    mov         eax,dword ptr [eax]
 00791390    mov         eax,dword ptr [eax+3C0]
 00791396    mov         eax,dword ptr [eax+2C8]
 0079139C    mov         edx,dword ptr [ebp-4]
 0079139F    mov         ecx,dword ptr [eax]
 007913A1    call        dword ptr [ecx+3C]
 007913A4    inc         esi
 007913A5    dec         dword ptr [ebp-10]
>007913A8    jne         007910D7
 007913AE    inc         ebx
 007913AF    dec         dword ptr [ebp-0C]
>007913B2    jne         0079101E
 007913B8    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007913BD    mov         eax,dword ptr [eax]
 007913BF    mov         eax,dword ptr [eax+3C0]
 007913C5    mov         eax,dword ptr [eax+2C8]
 007913CB    xor         edx,edx
 007913CD    mov         ecx,dword ptr [eax]
 007913CF    call        dword ptr [ecx+3C]
 007913D2    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007913D7    mov         eax,dword ptr [eax]
 007913D9    mov         eax,dword ptr [eax+3C0]
 007913DF    mov         eax,dword ptr [eax+2C8]
 007913E5    mov         edx,79190C;'APFillDlg.APTypePopupMenu'
 007913EA    mov         ecx,dword ptr [eax]
 007913EC    call        dword ptr [ecx+3C]
 007913EF    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007913F4    mov         eax,dword ptr [eax]
 007913F6    mov         eax,dword ptr [eax+3C0]
 007913FC    mov         eax,dword ptr [eax+2C8]
 00791402    mov         edx,7918A4;'Ord;Name;Tag;Caption;FXCode'
 00791407    mov         ecx,dword ptr [eax]
 00791409    call        dword ptr [ecx+3C]
 0079140C    mov         eax,[007C41CC];^gvar_00901F68:TAPFillDlg
 00791411    mov         eax,dword ptr [eax]
 00791413    mov         eax,dword ptr [eax+3F8]
 00791419    mov         edi,dword ptr [eax+2B0]
 0079141F    mov         eax,dword ptr [edi+44]
 00791422    call        TMenuItem.GetCount
 00791427    sub         eax,1
>0079142A    jno         00791431
 0079142C    call        @IntOver
 00791431    test        eax,eax
>00791433    jl          007917D9
 00791439    inc         eax
 0079143A    mov         dword ptr [ebp-0C],eax
 0079143D    xor         ebx,ebx
 0079143F    lea         edx,[ebp-2C]
 00791442    mov         eax,ebx
 00791444    call        IntToStr
 00791449    push        dword ptr [ebp-2C]
 0079144C    push        7918E8;';;'
 00791451    mov         eax,dword ptr [edi+44]
 00791454    mov         edx,ebx
 00791456    call        TMenuItem.GetItem
 0079145B    push        dword ptr [eax+8];TMenuItem.FName:TComponentName
 0079145E    push        7918FC;';'
 00791463    mov         eax,dword ptr [edi+44]
 00791466    mov         edx,ebx
 00791468    call        TMenuItem.GetItem
 0079146D    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791470    lea         edx,[ebp-30]
 00791473    call        IntToStr
 00791478    push        dword ptr [ebp-30]
 0079147B    push        7918FC;';'
 00791480    mov         eax,dword ptr [edi+44]
 00791483    mov         edx,ebx
 00791485    call        TMenuItem.GetItem
 0079148A    push        dword ptr [eax+40];TMenuItem.FCaption:string
 0079148D    push        7918FC;';'
 00791492    lea         eax,[ebp-4]
 00791495    mov         edx,8
 0079149A    call        @UStrCatN
 0079149F    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007914A4    mov         eax,dword ptr [eax]
 007914A6    mov         eax,dword ptr [eax+3C0]
 007914AC    mov         eax,dword ptr [eax+2C8]
 007914B2    mov         edx,dword ptr [ebp-4]
 007914B5    mov         ecx,dword ptr [eax]
 007914B7    call        dword ptr [ecx+3C]
 007914BA    mov         eax,dword ptr [edi+44]
 007914BD    mov         edx,ebx
 007914BF    call        TMenuItem.GetItem
 007914C4    call        TMenuItem.GetCount
 007914C9    test        eax,eax
>007914CB    jle         007917CF
 007914D1    mov         eax,dword ptr [edi+44]
 007914D4    mov         edx,ebx
 007914D6    call        TMenuItem.GetItem
 007914DB    call        TMenuItem.GetCount
 007914E0    sub         eax,1
>007914E3    jno         007914EA
 007914E5    call        @IntOver
 007914EA    test        eax,eax
>007914EC    jl          007917CF
 007914F2    inc         eax
 007914F3    mov         dword ptr [ebp-10],eax
 007914F6    xor         esi,esi
 007914F8    lea         edx,[ebp-34]
 007914FB    mov         eax,ebx
 007914FD    call        IntToStr
 00791502    push        dword ptr [ebp-34]
 00791505    push        7918FC;';'
 0079150A    lea         edx,[ebp-38]
 0079150D    mov         eax,esi
 0079150F    call        IntToStr
 00791514    push        dword ptr [ebp-38]
 00791517    push        7918FC;';'
 0079151C    mov         eax,dword ptr [edi+44]
 0079151F    mov         edx,ebx
 00791521    call        TMenuItem.GetItem
 00791526    mov         edx,esi
 00791528    call        TMenuItem.GetItem
 0079152D    push        dword ptr [eax+8];TMenuItem.FName:TComponentName
 00791530    push        7918FC;';'
 00791535    mov         eax,dword ptr [edi+44]
 00791538    mov         edx,ebx
 0079153A    call        TMenuItem.GetItem
 0079153F    mov         edx,esi
 00791541    call        TMenuItem.GetItem
 00791546    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791549    lea         edx,[ebp-3C]
 0079154C    call        IntToStr
 00791551    push        dword ptr [ebp-3C]
 00791554    push        7918FC;';'
 00791559    mov         eax,dword ptr [edi+44]
 0079155C    mov         edx,ebx
 0079155E    call        TMenuItem.GetItem
 00791563    mov         edx,esi
 00791565    call        TMenuItem.GetItem
 0079156A    push        dword ptr [eax+40];TMenuItem.FCaption:string
 0079156D    push        7918FC;';'
 00791572    mov         eax,dword ptr [edi+44]
 00791575    mov         edx,ebx
 00791577    call        TMenuItem.GetItem
 0079157C    mov         edx,esi
 0079157E    call        TMenuItem.GetItem
 00791583    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791586    cmp         eax,21
>00791589    jbe         00791590
 0079158B    call        @BoundErr
 00791590    mov         edx,dword ptr ds:[7C46B0];^gvar_007C23A8
 00791596    movzx       eax,byte ptr [edx+eax]
 0079159A    lea         ecx,[ebp-40]
 0079159D    mov         edx,2
 007915A2    call        IntToHex
 007915A7    push        dword ptr [ebp-40]
 007915AA    push        7918FC;';'
 007915AF    lea         eax,[ebp-4]
 007915B2    mov         edx,0C
 007915B7    call        @UStrCatN
 007915BC    mov         eax,dword ptr [edi+44]
 007915BF    mov         edx,ebx
 007915C1    call        TMenuItem.GetItem
 007915C6    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007915C9    cmp         eax,0E
>007915CC    ja          007917AA
 007915D2    jmp         dword ptr [eax*4+7915D9]
 007915D2    dd          007917AA
 007915D2    dd          007917AA
 007915D2    dd          00791615
 007915D2    dd          00791649
 007915D2    dd          00791719
 007915D2    dd          0079174A
 007915D2    dd          0079177B
 007915D2    dd          007917AA
 007915D2    dd          007917AA
 007915D2    dd          007917AA
 007915D2    dd          007917AA
 007915D2    dd          0079167D
 007915D2    dd          007917AA
 007915D2    dd          007916E5
 007915D2    dd          007916B1
 00791615    mov         eax,dword ptr [edi+44]
 00791618    mov         edx,ebx
 0079161A    call        TMenuItem.GetItem
 0079161F    mov         edx,esi
 00791621    call        TMenuItem.GetItem
 00791626    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791629    cmp         eax,1
>0079162C    jbe         00791633
 0079162E    call        @BoundErr
 00791633    mov         edx,dword ptr ds:[7C49E4];^gvar_007C166C:array[2] of ?
 00791639    mov         edx,dword ptr [edx+eax*4]
 0079163C    lea         eax,[ebp-4]
 0079163F    call        @UStrCat
>00791644    jmp         007917AA
 00791649    mov         eax,dword ptr [edi+44]
 0079164C    mov         edx,ebx
 0079164E    call        TMenuItem.GetItem
 00791653    mov         edx,esi
 00791655    call        TMenuItem.GetItem
 0079165A    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079165D    cmp         eax,1
>00791660    jbe         00791667
 00791662    call        @BoundErr
 00791667    mov         edx,dword ptr ds:[7C4E50];^gvar_007C1674:array[2] of ?
 0079166D    mov         edx,dword ptr [edx+eax*4]
 00791670    lea         eax,[ebp-4]
 00791673    call        @UStrCat
>00791678    jmp         007917AA
 0079167D    mov         eax,dword ptr [edi+44]
 00791680    mov         edx,ebx
 00791682    call        TMenuItem.GetItem
 00791687    mov         edx,esi
 00791689    call        TMenuItem.GetItem
 0079168E    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 00791691    cmp         eax,1
>00791694    jbe         0079169B
 00791696    call        @BoundErr
 0079169B    mov         edx,dword ptr ds:[7C4760];^gvar_007C167C:array[2] of ?
 007916A1    mov         edx,dword ptr [edx+eax*4]
 007916A4    lea         eax,[ebp-4]
 007916A7    call        @UStrCat
>007916AC    jmp         007917AA
 007916B1    mov         eax,dword ptr [edi+44]
 007916B4    mov         edx,ebx
 007916B6    call        TMenuItem.GetItem
 007916BB    mov         edx,esi
 007916BD    call        TMenuItem.GetItem
 007916C2    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007916C5    cmp         eax,1
>007916C8    jbe         007916CF
 007916CA    call        @BoundErr
 007916CF    mov         edx,dword ptr ds:[7C41FC];^gvar_007C168C:array[2] of ?
 007916D5    mov         edx,dword ptr [edx+eax*4]
 007916D8    lea         eax,[ebp-4]
 007916DB    call        @UStrCat
>007916E0    jmp         007917AA
 007916E5    mov         eax,dword ptr [edi+44]
 007916E8    mov         edx,ebx
 007916EA    call        TMenuItem.GetItem
 007916EF    mov         edx,esi
 007916F1    call        TMenuItem.GetItem
 007916F6    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 007916F9    cmp         eax,1
>007916FC    jbe         00791703
 007916FE    call        @BoundErr
 00791703    mov         edx,dword ptr ds:[7C4238];^gvar_007C1684:array[2] of ?
 00791709    mov         edx,dword ptr [edx+eax*4]
 0079170C    lea         eax,[ebp-4]
 0079170F    call        @UStrCat
>00791714    jmp         007917AA
 00791719    mov         eax,dword ptr [edi+44]
 0079171C    mov         edx,ebx
 0079171E    call        TMenuItem.GetItem
 00791723    mov         edx,esi
 00791725    call        TMenuItem.GetItem
 0079172A    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079172D    cmp         eax,21
>00791730    jbe         00791737
 00791732    call        @BoundErr
 00791737    mov         edx,dword ptr ds:[7C4248];^gvar_007C23DC:array[34] of ?
 0079173D    mov         edx,dword ptr [edx+eax*4]
 00791740    lea         eax,[ebp-4]
 00791743    call        @UStrCat
>00791748    jmp         007917AA
 0079174A    mov         eax,dword ptr [edi+44]
 0079174D    mov         edx,ebx
 0079174F    call        TMenuItem.GetItem
 00791754    mov         edx,esi
 00791756    call        TMenuItem.GetItem
 0079175B    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079175E    cmp         eax,18
>00791761    jbe         00791768
 00791763    call        @BoundErr
 00791768    mov         edx,dword ptr ds:[7C4924];^gvar_007C16B0:array[25] of ?
 0079176E    mov         edx,dword ptr [edx+eax*4]
 00791771    lea         eax,[ebp-4]
 00791774    call        @UStrCat
>00791779    jmp         007917AA
 0079177B    mov         eax,dword ptr [edi+44]
 0079177E    mov         edx,ebx
 00791780    call        TMenuItem.GetItem
 00791785    mov         edx,esi
 00791787    call        TMenuItem.GetItem
 0079178C    mov         eax,dword ptr [eax+0C];TMenuItem.FTag:NativeInt
 0079178F    cmp         eax,3
>00791792    jbe         00791799
 00791794    call        @BoundErr
 00791799    mov         edx,dword ptr ds:[7C498C];^gvar_007C2468:array[4] of ?
 0079179F    mov         edx,dword ptr [edx+eax*4]
 007917A2    lea         eax,[ebp-4]
 007917A5    call        @UStrCat
 007917AA    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007917AF    mov         eax,dword ptr [eax]
 007917B1    mov         eax,dword ptr [eax+3C0]
 007917B7    mov         eax,dword ptr [eax+2C8]
 007917BD    mov         edx,dword ptr [ebp-4]
 007917C0    mov         ecx,dword ptr [eax]
 007917C2    call        dword ptr [ecx+3C]
 007917C5    inc         esi
 007917C6    dec         dword ptr [ebp-10]
>007917C9    jne         007914F8
 007917CF    inc         ebx
 007917D0    dec         dword ptr [ebp-0C]
>007917D3    jne         0079143F
 007917D9    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007917DE    mov         eax,dword ptr [eax]
 007917E0    mov         eax,dword ptr [eax+3C0]
 007917E6    mov         eax,dword ptr [eax+2C8]
 007917EC    xor         edx,edx
 007917EE    mov         ecx,dword ptr [eax]
 007917F0    call        dword ptr [ecx+3C]
 007917F3    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007917F8    mov         eax,dword ptr [eax]
 007917FA    mov         eax,dword ptr [eax+3C0]
 00791800    mov         eax,dword ptr [eax+2C8]
 00791806    xor         edx,edx
 00791808    mov         ecx,dword ptr [eax]
 0079180A    call        dword ptr [ecx+3C]
 0079180D    xor         eax,eax
 0079180F    pop         edx
 00791810    pop         ecx
 00791811    pop         ecx
 00791812    mov         dword ptr fs:[eax],edx
 00791815    push        79184A
 0079181A    lea         eax,[ebp-40]
 0079181D    mov         edx,0C
 00791822    call        @UStrArrayClr
 00791827    lea         eax,[ebp-8]
 0079182A    mov         ecx,1
 0079182F    mov         edx,dword ptr ds:[4012B8];string
 00791835    call        @FinalizeArray
 0079183A    lea         eax,[ebp-4]
 0079183D    call        @UStrClr
 00791842    ret
>00791843    jmp         @HandleFinally
>00791848    jmp         0079181A
 0079184A    pop         edi
 0079184B    pop         esi
 0079184C    pop         ebx
 0079184D    mov         esp,ebp
 0079184F    pop         ebp
 00791850    ret
*}
end;

//00791940
{*function sub_00791940(?:TFXIniFile; ?:?; ?:?; ?:?):?;
begin
 00791940    push        ebp
 00791941    mov         ebp,esp
 00791943    add         esp,0FFFFFFF4
 00791946    push        ebx
 00791947    push        esi
 00791948    push        edi
 00791949    xor         ebx,ebx
 0079194B    mov         dword ptr [ebp-4],ebx
 0079194E    mov         byte ptr [ebp-6],cl
 00791951    mov         byte ptr [ebp-5],dl
 00791954    mov         ebx,eax
 00791956    xor         eax,eax
 00791958    push        ebp
 00791959    push        791A15
 0079195E    push        dword ptr fs:[eax]
 00791961    mov         dword ptr fs:[eax],esp
 00791964    mov         byte ptr [ebp-7],1
 00791968    push        0
 0079196A    mov         ecx,791A38;'TextFileVersionMajor'
 0079196F    mov         edx,791A70;'FileVersion'
 00791974    mov         eax,ebx
 00791976    mov         esi,dword ptr [eax]
 00791978    call        dword ptr [esi+0C]
 0079197B    mov         esi,eax
 0079197D    push        0
 0079197F    mov         ecx,791A94;'TextFileVersionMinor'
 00791984    mov         edx,791A70;'FileVersion'
 00791989    mov         eax,ebx
 0079198B    mov         edi,dword ptr [eax]
 0079198D    call        dword ptr [edi+0C]
 00791990    mov         dword ptr [ebp-0C],eax
 00791993    push        0
 00791995    lea         eax,[ebp-4]
 00791998    push        eax
 00791999    mov         ecx,791ACC;'TextFileLanguage'
 0079199E    mov         edx,791A70;'FileVersion'
 007919A3    mov         eax,ebx
 007919A5    mov         ebx,dword ptr [eax]
 007919A7    call        dword ptr [ebx+4]
 007919AA    cmp         byte ptr [ebp-5],0
>007919AE    je          007919FF
 007919B0    movzx       eax,byte ptr [ebp-6]
 007919B4    mov         edx,100
 007919B9    mul         eax,edx
>007919BB    jno         007919C2
 007919BD    call        @IntOver
 007919C2    movzx       edx,byte ptr [ebp+8]
 007919C6    add         eax,edx
>007919C8    jno         007919CF
 007919CA    call        @IntOver
 007919CF    imul        edx,esi,100
>007919D5    jno         007919DC
 007919D7    call        @IntOver
 007919DC    add         edx,dword ptr [ebp-0C]
>007919DF    jno         007919E6
 007919E1    call        @IntOver
 007919E6    cmp         eax,edx
>007919E8    jle         007919FF
 007919EA    push        0
 007919EC    movzx       ecx,word ptr ds:[791AF0];0x4 gvar_00791AF0
 007919F3    xor         edx,edx
 007919F5    mov         eax,791B00;'The translation file is of an older version.Texts that are not found in the...
 007919FA    call        MessageDlg
 007919FF    xor         eax,eax
 00791A01    pop         edx
 00791A02    pop         ecx
 00791A03    pop         ecx
 00791A04    mov         dword ptr fs:[eax],edx
 00791A07    push        791A1C
 00791A0C    lea         eax,[ebp-4]
 00791A0F    call        @UStrClr
 00791A14    ret
>00791A15    jmp         @HandleFinally
>00791A1A    jmp         00791A0C
 00791A1C    movzx       eax,byte ptr [ebp-7]
 00791A20    pop         edi
 00791A21    pop         esi
 00791A22    pop         ebx
 00791A23    mov         esp,ebp
 00791A25    pop         ebp
 00791A26    ret         4
end;*}

//00791BD4
{*procedure sub_00791BD4(?:?; ?:?; ?:?);
begin
 00791BD4    push        ebp
 00791BD5    mov         ebp,esp
 00791BD7    push        ecx
 00791BD8    mov         ecx,0F
 00791BDD    push        0
 00791BDF    push        0
 00791BE1    dec         ecx
>00791BE2    jne         00791BDD
 00791BE4    xchg        ecx,dword ptr [ebp-4]
 00791BE7    push        ebx
 00791BE8    push        esi
 00791BE9    mov         byte ptr [ebp-2],cl
 00791BEC    mov         byte ptr [ebp-1],dl
 00791BEF    mov         ebx,eax
 00791BF1    xor         eax,eax
 00791BF3    push        ebp
 00791BF4    push        792190
 00791BF9    push        dword ptr fs:[eax]
 00791BFC    mov         dword ptr fs:[eax],esp
 00791BFF    movzx       eax,bl
 00791C02    cmp         eax,0F
>00791C05    ja          00792175
 00791C0B    jmp         dword ptr [eax*4+791C12]
 00791C0B    dd          00791C52
 00791C0B    dd          00791C67
 00791C0B    dd          00791CA4
 00791C0B    dd          00791CE1
 00791C0B    dd          00791D1E
 00791C0B    dd          00791D5B
 00791C0B    dd          00791DD5
 00791C0B    dd          00791E12
 00791C0B    dd          00791E4F
 00791C0B    dd          00791E8C
 00791C0B    dd          00791EC9
 00791C0B    dd          00791F06
 00791C0B    dd          00791F43
 00791C0B    dd          00791F7D
 00791C0B    dd          00791FB7
 00791C0B    dd          00791D98
 00791C52    xor         ecx,ecx
 00791C54    mov         dl,1
 00791C56    mov         eax,[005D6804];TFXIniFile
 00791C5B    call        TCustomIniFile.Create;TFXIniFile.Create
 00791C60    mov         esi,eax
>00791C62    jmp         00791FEF
 00791C67    lea         edx,[ebp-0C]
 00791C6A    mov         eax,[007C4A18];^Application:TApplication
 00791C6F    mov         eax,dword ptr [eax]
 00791C71    call        005CBE20
 00791C76    mov         eax,dword ptr [ebp-0C]
 00791C79    lea         edx,[ebp-8]
 00791C7C    call        0041EFA4
 00791C81    lea         eax,[ebp-8]
 00791C84    mov         edx,7921AC;'WinFX3NetV6GB.TXT'
 00791C89    call        @UStrCat
 00791C8E    mov         ecx,dword ptr [ebp-8]
 00791C91    mov         dl,1
 00791C93    mov         eax,[005D6804];TFXIniFile
 00791C98    call        TCustomIniFile.Create;TFXIniFile.Create
 00791C9D    mov         esi,eax
>00791C9F    jmp         00791FEF
 00791CA4    lea         edx,[ebp-14]
 00791CA7    mov         eax,[007C4A18];^Application:TApplication
 00791CAC    mov         eax,dword ptr [eax]
 00791CAE    call        005CBE20
 00791CB3    mov         eax,dword ptr [ebp-14]
 00791CB6    lea         edx,[ebp-10]
 00791CB9    call        0041EFA4
 00791CBE    lea         eax,[ebp-10]
 00791CC1    mov         edx,7921DC;'WinFX3NetV6FI.TXT'
 00791CC6    call        @UStrCat
 00791CCB    mov         ecx,dword ptr [ebp-10]
 00791CCE    mov         dl,1
 00791CD0    mov         eax,[005D6804];TFXIniFile
 00791CD5    call        TCustomIniFile.Create;TFXIniFile.Create
 00791CDA    mov         esi,eax
>00791CDC    jmp         00791FEF
 00791CE1    lea         edx,[ebp-1C]
 00791CE4    mov         eax,[007C4A18];^Application:TApplication
 00791CE9    mov         eax,dword ptr [eax]
 00791CEB    call        005CBE20
 00791CF0    mov         eax,dword ptr [ebp-1C]
 00791CF3    lea         edx,[ebp-18]
 00791CF6    call        0041EFA4
 00791CFB    lea         eax,[ebp-18]
 00791CFE    mov         edx,79220C;'WinFX3NetV6SE.TXT'
 00791D03    call        @UStrCat
 00791D08    mov         ecx,dword ptr [ebp-18]
 00791D0B    mov         dl,1
 00791D0D    mov         eax,[005D6804];TFXIniFile
 00791D12    call        TCustomIniFile.Create;TFXIniFile.Create
 00791D17    mov         esi,eax
>00791D19    jmp         00791FEF
 00791D1E    lea         edx,[ebp-24]
 00791D21    mov         eax,[007C4A18];^Application:TApplication
 00791D26    mov         eax,dword ptr [eax]
 00791D28    call        005CBE20
 00791D2D    mov         eax,dword ptr [ebp-24]
 00791D30    lea         edx,[ebp-20]
 00791D33    call        0041EFA4
 00791D38    lea         eax,[ebp-20]
 00791D3B    mov         edx,79223C;'WinFX3NetV6NO.TXT'
 00791D40    call        @UStrCat
 00791D45    mov         ecx,dword ptr [ebp-20]
 00791D48    mov         dl,1
 00791D4A    mov         eax,[005D6804];TFXIniFile
 00791D4F    call        TCustomIniFile.Create;TFXIniFile.Create
 00791D54    mov         esi,eax
>00791D56    jmp         00791FEF
 00791D5B    lea         edx,[ebp-2C]
 00791D5E    mov         eax,[007C4A18];^Application:TApplication
 00791D63    mov         eax,dword ptr [eax]
 00791D65    call        005CBE20
 00791D6A    mov         eax,dword ptr [ebp-2C]
 00791D6D    lea         edx,[ebp-28]
 00791D70    call        0041EFA4
 00791D75    lea         eax,[ebp-28]
 00791D78    mov         edx,79226C;'WinFX3NetV6DK.TXT'
 00791D7D    call        @UStrCat
 00791D82    mov         ecx,dword ptr [ebp-28]
 00791D85    mov         dl,1
 00791D87    mov         eax,[005D6804];TFXIniFile
 00791D8C    call        TCustomIniFile.Create;TFXIniFile.Create
 00791D91    mov         esi,eax
>00791D93    jmp         00791FEF
 00791D98    lea         edx,[ebp-34]
 00791D9B    mov         eax,[007C4A18];^Application:TApplication
 00791DA0    mov         eax,dword ptr [eax]
 00791DA2    call        005CBE20
 00791DA7    mov         eax,dword ptr [ebp-34]
 00791DAA    lea         edx,[ebp-30]
 00791DAD    call        0041EFA4
 00791DB2    lea         eax,[ebp-30]
 00791DB5    mov         edx,79229C;'WinFX3NetV6NL.TXT'
 00791DBA    call        @UStrCat
 00791DBF    mov         ecx,dword ptr [ebp-30]
 00791DC2    mov         dl,1
 00791DC4    mov         eax,[005D6804];TFXIniFile
 00791DC9    call        TCustomIniFile.Create;TFXIniFile.Create
 00791DCE    mov         esi,eax
>00791DD0    jmp         00791FEF
 00791DD5    lea         edx,[ebp-3C]
 00791DD8    mov         eax,[007C4A18];^Application:TApplication
 00791DDD    mov         eax,dword ptr [eax]
 00791DDF    call        005CBE20
 00791DE4    mov         eax,dword ptr [ebp-3C]
 00791DE7    lea         edx,[ebp-38]
 00791DEA    call        0041EFA4
 00791DEF    lea         eax,[ebp-38]
 00791DF2    mov         edx,7922CC;'WinFX3NetV6FL.TXT'
 00791DF7    call        @UStrCat
 00791DFC    mov         ecx,dword ptr [ebp-38]
 00791DFF    mov         dl,1
 00791E01    mov         eax,[005D6804];TFXIniFile
 00791E06    call        TCustomIniFile.Create;TFXIniFile.Create
 00791E0B    mov         esi,eax
>00791E0D    jmp         00791FEF
 00791E12    lea         edx,[ebp-44]
 00791E15    mov         eax,[007C4A18];^Application:TApplication
 00791E1A    mov         eax,dword ptr [eax]
 00791E1C    call        005CBE20
 00791E21    mov         eax,dword ptr [ebp-44]
 00791E24    lea         edx,[ebp-40]
 00791E27    call        0041EFA4
 00791E2C    lea         eax,[ebp-40]
 00791E2F    mov         edx,7922FC;'WinFX3NetV6FR.TXT'
 00791E34    call        @UStrCat
 00791E39    mov         ecx,dword ptr [ebp-40]
 00791E3C    mov         dl,1
 00791E3E    mov         eax,[005D6804];TFXIniFile
 00791E43    call        TCustomIniFile.Create;TFXIniFile.Create
 00791E48    mov         esi,eax
>00791E4A    jmp         00791FEF
 00791E4F    lea         edx,[ebp-4C]
 00791E52    mov         eax,[007C4A18];^Application:TApplication
 00791E57    mov         eax,dword ptr [eax]
 00791E59    call        005CBE20
 00791E5E    mov         eax,dword ptr [ebp-4C]
 00791E61    lea         edx,[ebp-48]
 00791E64    call        0041EFA4
 00791E69    lea         eax,[ebp-48]
 00791E6C    mov         edx,79232C;'WinFX3NetV6ES.TXT'
 00791E71    call        @UStrCat
 00791E76    mov         ecx,dword ptr [ebp-48]
 00791E79    mov         dl,1
 00791E7B    mov         eax,[005D6804];TFXIniFile
 00791E80    call        TCustomIniFile.Create;TFXIniFile.Create
 00791E85    mov         esi,eax
>00791E87    jmp         00791FEF
 00791E8C    lea         edx,[ebp-54]
 00791E8F    mov         eax,[007C4A18];^Application:TApplication
 00791E94    mov         eax,dword ptr [eax]
 00791E96    call        005CBE20
 00791E9B    mov         eax,dword ptr [ebp-54]
 00791E9E    lea         edx,[ebp-50]
 00791EA1    call        0041EFA4
 00791EA6    lea         eax,[ebp-50]
 00791EA9    mov         edx,79235C;'WinFX3NetV6IT.TXT'
 00791EAE    call        @UStrCat
 00791EB3    mov         ecx,dword ptr [ebp-50]
 00791EB6    mov         dl,1
 00791EB8    mov         eax,[005D6804];TFXIniFile
 00791EBD    call        TCustomIniFile.Create;TFXIniFile.Create
 00791EC2    mov         esi,eax
>00791EC4    jmp         00791FEF
 00791EC9    lea         edx,[ebp-5C]
 00791ECC    mov         eax,[007C4A18];^Application:TApplication
 00791ED1    mov         eax,dword ptr [eax]
 00791ED3    call        005CBE20
 00791ED8    mov         eax,dword ptr [ebp-5C]
 00791EDB    lea         edx,[ebp-58]
 00791EDE    call        0041EFA4
 00791EE3    lea         eax,[ebp-58]
 00791EE6    mov         edx,79238C;'WinFX3NetV6EE.TXT'
 00791EEB    call        @UStrCat
 00791EF0    mov         ecx,dword ptr [ebp-58]
 00791EF3    mov         dl,1
 00791EF5    mov         eax,[005D6804];TFXIniFile
 00791EFA    call        TCustomIniFile.Create;TFXIniFile.Create
 00791EFF    mov         esi,eax
>00791F01    jmp         00791FEF
 00791F06    lea         edx,[ebp-64]
 00791F09    mov         eax,[007C4A18];^Application:TApplication
 00791F0E    mov         eax,dword ptr [eax]
 00791F10    call        005CBE20
 00791F15    mov         eax,dword ptr [ebp-64]
 00791F18    lea         edx,[ebp-60]
 00791F1B    call        0041EFA4
 00791F20    lea         eax,[ebp-60]
 00791F23    mov         edx,7923BC;'WinFX3NetV6LV.TXT'
 00791F28    call        @UStrCat
 00791F2D    mov         ecx,dword ptr [ebp-60]
 00791F30    mov         dl,1
 00791F32    mov         eax,[005D6804];TFXIniFile
 00791F37    call        TCustomIniFile.Create;TFXIniFile.Create
 00791F3C    mov         esi,eax
>00791F3E    jmp         00791FEF
 00791F43    lea         edx,[ebp-6C]
 00791F46    mov         eax,[007C4A18];^Application:TApplication
 00791F4B    mov         eax,dword ptr [eax]
 00791F4D    call        005CBE20
 00791F52    mov         eax,dword ptr [ebp-6C]
 00791F55    lea         edx,[ebp-68]
 00791F58    call        0041EFA4
 00791F5D    lea         eax,[ebp-68]
 00791F60    mov         edx,7923EC;'WinFX3NetV6LT.TXT'
 00791F65    call        @UStrCat
 00791F6A    mov         ecx,dword ptr [ebp-68]
 00791F6D    mov         dl,1
 00791F6F    mov         eax,[005D6804];TFXIniFile
 00791F74    call        TCustomIniFile.Create;TFXIniFile.Create
 00791F79    mov         esi,eax
>00791F7B    jmp         00791FEF
 00791F7D    lea         edx,[ebp-74]
 00791F80    mov         eax,[007C4A18];^Application:TApplication
 00791F85    mov         eax,dword ptr [eax]
 00791F87    call        005CBE20
 00791F8C    mov         eax,dword ptr [ebp-74]
 00791F8F    lea         edx,[ebp-70]
 00791F92    call        0041EFA4
 00791F97    lea         eax,[ebp-70]
 00791F9A    mov         edx,79241C;'WinFX3NetV6RU.TXT'
 00791F9F    call        @UStrCat
 00791FA4    mov         ecx,dword ptr [ebp-70]
 00791FA7    mov         dl,1
 00791FA9    mov         eax,[005D6804];TFXIniFile
 00791FAE    call        TCustomIniFile.Create;TFXIniFile.Create
 00791FB3    mov         esi,eax
>00791FB5    jmp         00791FEF
 00791FB7    lea         edx,[ebp-7C]
 00791FBA    mov         eax,[007C4A18];^Application:TApplication
 00791FBF    mov         eax,dword ptr [eax]
 00791FC1    call        005CBE20
 00791FC6    mov         eax,dword ptr [ebp-7C]
 00791FC9    lea         edx,[ebp-78]
 00791FCC    call        0041EFA4
 00791FD1    lea         eax,[ebp-78]
 00791FD4    mov         edx,79244C;'WinFX3NetV6TR.TXT'
 00791FD9    call        @UStrCat
 00791FDE    mov         ecx,dword ptr [ebp-78]
 00791FE1    mov         dl,1
 00791FE3    mov         eax,[005D6804];TFXIniFile
 00791FE8    call        TCustomIniFile.Create;TFXIniFile.Create
 00791FED    mov         esi,eax
 00791FEF    movzx       eax,byte ptr [ebp-2]
 00791FF3    push        eax
 00791FF4    mov         edx,ebx
 00791FF6    movzx       ecx,byte ptr [ebp-1]
 00791FFA    mov         eax,esi
 00791FFC    call        00791940
 00792001    test        al,al
>00792003    je          0079216E
 00792009    mov         eax,[007C4DA8];^gvar_00902C99
 0079200E    mov         byte ptr [eax],bl
 00792010    mov         eax,esi
 00792012    call        006CA204
 00792017    mov         edx,esi
 00792019    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0079201E    call        TMainForm.Translate
 00792023    mov         eax,[009037D0];gvar_009037D0:TMainForm
 00792028    mov         eax,dword ptr [eax+4A0]
 0079202E    mov         edx,esi
 00792030    call        TFXNetFrame.Translate
 00792035    mov         eax,[007C4710];^gvar_00902530:TSelectVisibleDlg
 0079203A    mov         eax,dword ptr [eax]
 0079203C    mov         edx,esi
 0079203E    call        TSelectVisibleDlg.Translate
 00792043    mov         eax,[009037D0];gvar_009037D0:TMainForm
 00792048    mov         eax,dword ptr [eax+4A4]
 0079204E    mov         edx,esi
 00792050    call        TFXPDFrame.Translate
 00792055    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0079205A    mov         eax,dword ptr [eax+4A8]
 00792060    mov         edx,esi
 00792062    call        TFXADFrame.Translate
 00792067    mov         eax,[007C41CC];^gvar_00901F68:TAPFillDlg
 0079206C    mov         eax,dword ptr [eax]
 0079206E    mov         edx,esi
 00792070    call        TAPFillDlg.Translate
 00792075    mov         eax,[009037D0];gvar_009037D0:TMainForm
 0079207A    mov         eax,dword ptr [eax+4B0]
 00792080    mov         edx,esi
 00792082    call        TFXADSummaryFrame.Translate
 00792087    mov         eax,[007C4DF0];^gvar_00901F64:TFXColSelDlg
 0079208C    mov         eax,dword ptr [eax]
 0079208E    mov         edx,esi
 00792090    call        TFXColSelDlg.Translate
 00792095    mov         eax,[007C47F4];^gvar_00901F4C:TFXCGroupsDlg
 0079209A    mov         eax,dword ptr [eax]
 0079209C    mov         edx,esi
 0079209E    call        TFXCGroupsDlg.Translate
 007920A3    mov         eax,[007C4BD0];^gvar_009036C8:TPreviewForm
 007920A8    mov         eax,dword ptr [eax]
 007920AA    mov         edx,esi
 007920AC    call        TPreviewForm.Translate
 007920B1    mov         eax,[007C4E00];^gvar_00902C9C:TConfigInfoDlg
 007920B6    mov         eax,dword ptr [eax]
 007920B8    mov         edx,esi
 007920BA    call        TConfigInfoDlg.Translate
 007920BF    mov         eax,esi
 007920C1    call        0074656C
 007920C6    mov         eax,esi
 007920C8    call        0067FC04
 007920CD    mov         eax,[007C46A8];^gvar_009036C0:TFXCommHandler
 007920D2    mov         eax,dword ptr [eax]
 007920D4    mov         edx,esi
 007920D6    call        TFXCommHandler.Translate
 007920DB    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 007920E0    mov         eax,dword ptr [eax]
 007920E2    mov         edx,esi
 007920E4    call        TOverwriteDlg.Translate
 007920E9    mov         eax,esi
 007920EB    call        006A82C0
 007920F0    mov         eax,[007C4528];^gvar_00903784:TSpecialSettingsFrm
 007920F5    mov         eax,dword ptr [eax]
 007920F7    mov         edx,esi
 007920F9    call        TSpecialSettingsFrm.Translate
 007920FE    mov         eax,[007C4864];^gvar_00902C90:TAddressReport
 00792103    mov         eax,dword ptr [eax]
 00792105    mov         edx,esi
 00792107    call        TAddressReport.Translate
 0079210C    mov         eax,[007C4D94];^gvar_00902C88:TFXDocPrinter
 00792111    mov         eax,dword ptr [eax]
 00792113    mov         edx,esi
 00792115    call        TFXDocPrinter.Translate
 0079211A    mov         eax,[007C46A4];^gvar_00902C7C:TSelectPanelsDlg
 0079211F    mov         eax,dword ptr [eax]
 00792121    mov         edx,esi
 00792123    call        TSelectPanelsDlg.Translate
 00792128    mov         eax,[007C47D0];^gvar_00902C80:TSelectLoopsDlg
 0079212D    mov         eax,dword ptr [eax]
 0079212F    mov         edx,esi
 00792131    call        TSelectLoopsDlg.Translate
 00792136    mov         eax,[007C4728];^gvar_00902C84:TSelectZonesDlg
 0079213B    mov         eax,dword ptr [eax]
 0079213D    mov         edx,esi
 0079213F    call        TSelectZonesDlg.Translate
 00792144    mov         eax,[007C4358];^gvar_009037A8:TDCGroupsFrm
 00792149    mov         eax,dword ptr [eax]
 0079214B    mov         edx,esi
 0079214D    call        TDCGroupsFrm.Translate
 00792152    mov         eax,[007C4664];^gvar_009037A0:TDCCauseEffectForm
 00792157    mov         eax,dword ptr [eax]
 00792159    mov         edx,esi
 0079215B    call        TDCCauseEffectForm.Translate
 00792160    mov         eax,[007C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 00792165    mov         eax,dword ptr [eax]
 00792167    mov         edx,esi
 00792169    call        TLoopCtrlrTypeChangeDlg.Translate
 0079216E    mov         eax,esi
 00792170    call        TObject.Free
 00792175    xor         eax,eax
 00792177    pop         edx
 00792178    pop         ecx
 00792179    pop         ecx
 0079217A    mov         dword ptr fs:[eax],edx
 0079217D    push        792197
 00792182    lea         eax,[ebp-7C]
 00792185    mov         edx,1E
 0079218A    call        @UStrArrayClr
 0079218F    ret
>00792190    jmp         @HandleFinally
>00792195    jmp         00792182
 00792197    pop         esi
 00792198    pop         ebx
 00792199    mov         esp,ebp
 0079219B    pop         ebp
 0079219C    ret
end;*}

//00792470
procedure TMainForm.SettingsLanguageClick(Sender:TObject);
begin
{*
 00792470    push        ebp
 00792471    mov         ebp,esp
 00792473    push        ecx
 00792474    push        ebx
 00792475    mov         ebx,eax
 00792477    xor         ecx,ecx
 00792479    mov         dl,1
 0079247B    mov         eax,[00743384];TLangSelectDlg
 00792480    call        TCustomForm.Create;TLangSelectDlg.Create
 00792485    mov         dword ptr [ebp-4],eax
 00792488    xor         eax,eax
 0079248A    push        ebp
 0079248B    push        792510
 00792490    push        dword ptr fs:[eax]
 00792493    mov         dword ptr fs:[eax],esp
 00792496    mov         eax,dword ptr [ebp-4]
 00792499    mov         edx,dword ptr [eax]
 0079249B    call        dword ptr [edx+13C];TCustomForm.ShowModal
 007924A1    dec         eax
>007924A2    jne         007924F3
 007924A4    mov         eax,[007C4A84];^gvar_00902C98:Integer
 007924A9    movzx       eax,byte ptr [eax]
 007924AC    mov         edx,dword ptr ds:[7C4DA8];^gvar_00902C99
 007924B2    cmp         al,byte ptr [edx]
>007924B4    je          007924F3
 007924B6    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007924BB    mov         eax,dword ptr [eax]
 007924BD    movzx       ecx,word ptr [eax+6]
 007924C1    cmp         ecx,0FF
>007924C7    jbe         007924CE
 007924C9    call        @BoundErr
 007924CE    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007924D3    mov         eax,dword ptr [eax]
 007924D5    movzx       edx,word ptr [eax+4]
 007924D9    cmp         edx,0FF
>007924DF    jbe         007924E6
 007924E1    call        @BoundErr
 007924E6    mov         eax,[007C4A84];^gvar_00902C98:Integer
 007924EB    movzx       eax,byte ptr [eax]
 007924EE    call        00791BD4
 007924F3    mov         eax,ebx
 007924F5    call        TMainForm.UpdateStatusbar
 007924FA    xor         eax,eax
 007924FC    pop         edx
 007924FD    pop         ecx
 007924FE    pop         ecx
 007924FF    mov         dword ptr fs:[eax],edx
 00792502    push        792517
 00792507    mov         eax,dword ptr [ebp-4]
 0079250A    call        TObject.Free
 0079250F    ret
>00792510    jmp         @HandleFinally
>00792515    jmp         00792507
 00792517    pop         ebx
 00792518    pop         ecx
 00792519    pop         ebp
 0079251A    ret
*}
end;

//0079251C
procedure TMainForm.SettingsDisplayFontClick(Sender:TObject);
begin
{*
 0079251C    push        ebx
 0079251D    mov         ebx,eax
 0079251F    mov         eax,dword ptr [ebx+490];TMainForm.FontDialog1:TFontDialog
 00792525    movzx       edx,word ptr ds:[7925A8];0x4 gvar_007925A8
 0079252C    mov         word ptr [eax+7D],dx;TFontDialog.FOptions:TFontDialogOptions
 00792530    mov         byte ptr [eax+7C],0;TFontDialog.FDevice:TFontDialogDevice
 00792534    mov         edx,dword ptr [ebx+74];TMainForm.FFont:TFont
 00792537    call        TFontDialog.SetFont
 0079253C    mov         eax,dword ptr [ebx+490];TMainForm.FontDialog1:TFontDialog
 00792542    mov         edx,dword ptr [eax]
 00792544    call        dword ptr [edx+54];TCommonDialog.Execute
 00792547    test        al,al
>00792549    je          00792588
 0079254B    mov         eax,dword ptr [ebx+490];TMainForm.FontDialog1:TFontDialog
 00792551    mov         edx,dword ptr [eax+78];TFontDialog.FFont:TFont
 00792554    mov         eax,[007C4C54];^gvar_007CA834:TFont
 00792559    mov         eax,dword ptr [eax]
 0079255B    mov         ecx,dword ptr [eax]
 0079255D    call        dword ptr [ecx+8]
 00792560    mov         eax,[007C4C54];^gvar_007CA834:TFont
 00792565    mov         eax,dword ptr [eax]
 00792567    call        TFont.GetCharset
 0079256C    sub         al,0CC
>0079256E    jne         0079257D
 00792570    mov         eax,[007C4388];^gvar_007C5900
 00792575    mov         dword ptr [eax],4E3
>0079257B    jmp         00792588
 0079257D    mov         eax,[007C4388];^gvar_007C5900
 00792582    mov         dword ptr [eax],4E4
 00792588    mov         edx,dword ptr ds:[7C4C54];^gvar_007CA834:TFont
 0079258E    mov         edx,dword ptr [edx]
 00792590    mov         eax,[009037D0];gvar_009037D0:TMainForm
 00792595    mov         eax,dword ptr [eax+74]
 00792598    mov         ecx,dword ptr [eax]
 0079259A    call        dword ptr [ecx+8]
 0079259D    mov         eax,ebx
 0079259F    call        TMainForm.UpdateStatusbar
 007925A4    pop         ebx
 007925A5    ret
*}
end;

//007925AC
procedure TMainForm.FontDialog1Apply(Sender:TObject; Wnd:Word);
begin
{*
 007925AC    push        ebx
 007925AD    mov         ebx,eax
 007925AF    mov         eax,dword ptr [ebx+490];TMainForm.FontDialog1:TFontDialog
 007925B5    mov         edx,dword ptr [eax+78];TFontDialog.FFont:TFont
 007925B8    mov         eax,[009037D0];gvar_009037D0:TMainForm
 007925BD    mov         eax,dword ptr [eax+74]
 007925C0    mov         ecx,dword ptr [eax]
 007925C2    call        dword ptr [ecx+8]
 007925C5    mov         eax,ebx
 007925C7    call        TMainForm.UpdateStatusbar
 007925CC    pop         ebx
 007925CD    ret
*}
end;

//007925D0
procedure TMainForm.DebugClick(Sender:TObject);
begin
{*
 007925D0    push        ebp
 007925D1    mov         ebp,esp
 007925D3    xor         ecx,ecx
 007925D5    push        ecx
 007925D6    push        ecx
 007925D7    push        ecx
 007925D8    push        ecx
 007925D9    push        ecx
 007925DA    push        ecx
 007925DB    xor         eax,eax
 007925DD    push        ebp
 007925DE    push        7926FC
 007925E3    push        dword ptr fs:[eax]
 007925E6    mov         dword ptr fs:[eax],esp
 007925E9    lea         eax,[ebp-4]
 007925EC    push        eax
 007925ED    mov         dword ptr [ebp-0C],100
 007925F4    mov         byte ptr [ebp-8],0
 007925F8    lea         edx,[ebp-0C]
 007925FB    xor         ecx,ecx
 007925FD    mov         eax,792714;'TCCIRec  = %d'
 00792602    call        Format
 00792607    mov         edx,dword ptr [ebp-4]
 0079260A    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 0079260F    mov         eax,dword ptr [eax]
 00792611    mov         eax,dword ptr [eax+3C0]
 00792617    mov         eax,dword ptr [eax+2C8]
 0079261D    mov         ecx,dword ptr [eax]
 0079261F    call        dword ptr [ecx+3C]
 00792622    lea         eax,[ebp-10]
 00792625    push        eax
 00792626    mov         dword ptr [ebp-0C],100
 0079262D    mov         byte ptr [ebp-8],0
 00792631    lea         edx,[ebp-0C]
 00792634    xor         ecx,ecx
 00792636    mov         eax,79273C;'TCCORec  = %d'
 0079263B    call        Format
 00792640    mov         edx,dword ptr [ebp-10]
 00792643    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00792648    mov         eax,dword ptr [eax]
 0079264A    mov         eax,dword ptr [eax+3C0]
 00792650    mov         eax,dword ptr [eax+2C8]
 00792656    mov         ecx,dword ptr [eax]
 00792658    call        dword ptr [ecx+3C]
 0079265B    lea         eax,[ebp-14]
 0079265E    push        eax
 0079265F    mov         dword ptr [ebp-0C],100
 00792666    mov         byte ptr [ebp-8],0
 0079266A    lea         edx,[ebp-0C]
 0079266D    xor         ecx,ecx
 0079266F    mov         eax,792764;'TADORec  = %d'
 00792674    call        Format
 00792679    mov         edx,dword ptr [ebp-14]
 0079267C    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00792681    mov         eax,dword ptr [eax]
 00792683    mov         eax,dword ptr [eax+3C0]
 00792689    mov         eax,dword ptr [eax+2C8]
 0079268F    mov         ecx,dword ptr [eax]
 00792691    call        dword ptr [ecx+3C]
 00792694    lea         eax,[ebp-18]
 00792697    push        eax
 00792698    mov         dword ptr [ebp-0C],800
 0079269F    mov         byte ptr [ebp-8],0
 007926A3    lea         edx,[ebp-0C]
 007926A6    xor         ecx,ecx
 007926A8    mov         eax,79278C;'TFXMCRec = %d'
 007926AD    call        Format
 007926B2    mov         edx,dword ptr [ebp-18]
 007926B5    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007926BA    mov         eax,dword ptr [eax]
 007926BC    mov         eax,dword ptr [eax+3C0]
 007926C2    mov         eax,dword ptr [eax+2C8]
 007926C8    mov         ecx,dword ptr [eax]
 007926CA    call        dword ptr [ecx+3C]
 007926CD    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 007926D2    mov         eax,dword ptr [eax]
 007926D4    call        TCustomForm.Show
 007926D9    xor         eax,eax
 007926DB    pop         edx
 007926DC    pop         ecx
 007926DD    pop         ecx
 007926DE    mov         dword ptr fs:[eax],edx
 007926E1    push        792703
 007926E6    lea         eax,[ebp-18]
 007926E9    mov         edx,3
 007926EE    call        @UStrArrayClr
 007926F3    lea         eax,[ebp-4]
 007926F6    call        @UStrClr
 007926FB    ret
>007926FC    jmp         @HandleFinally
>00792701    jmp         007926E6
 00792703    mov         esp,ebp
 00792705    pop         ebp
 00792706    ret
*}
end;

//007927A8
procedure TMainForm.DefaultDataFolderClick(Sender:TObject);
begin
{*
 007927A8    push        ebp
 007927A9    mov         ebp,esp
 007927AB    push        0
 007927AD    push        0
 007927AF    push        0
 007927B1    push        ebx
 007927B2    push        esi
 007927B3    xor         eax,eax
 007927B5    push        ebp
 007927B6    push        792860
 007927BB    push        dword ptr fs:[eax]
 007927BE    mov         dword ptr fs:[eax],esp
 007927C1    movzx       eax,byte ptr ds:[792870];0xF gvar_00792870
 007927C8    push        eax
 007927C9    push        0
 007927CB    lea         eax,[ebp-4]
 007927CE    mov         edx,dword ptr ds:[9037D8];gvar_009037D8:UnicodeString
 007927D4    call        @WStrFromUStr
 007927D9    mov         edx,dword ptr [ebp-4]
 007927DC    mov         ecx,9037D8;gvar_009037D8:UnicodeString
 007927E1    mov         eax,[007C414C];^'Select default folder for FXNet configuration files'
 007927E6    call        00742F04
 007927EB    test        al,al
>007927ED    je          0079283D
 007927EF    lea         edx,[ebp-0C]
 007927F2    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007927F7    mov         eax,dword ptr [eax]
 007927F9    call        005DDC1C
 007927FE    mov         ecx,dword ptr [ebp-0C]
 00792801    lea         eax,[ebp-8]
 00792804    mov         edx,792880;'Software\Schneider\WinFX3Net\'
 00792809    call        @UStrCat3
 0079280E    mov         ecx,dword ptr [ebp-8]
 00792811    mov         dl,1
 00792813    mov         eax,[004B7D28];TRegistryIniFile
 00792818    call        TRegIniFile.Create;TRegistryIniFile.Create
 0079281D    mov         ebx,eax
 0079281F    mov         eax,[009037D8];gvar_009037D8:UnicodeString
 00792824    push        eax
 00792825    mov         ecx,7928C8;'DefaultDataDir'
 0079282A    mov         edx,7928F4;'Preferences'
 0079282F    mov         eax,ebx
 00792831    mov         esi,dword ptr [eax]
 00792833    call        dword ptr [esi+8];TRegistryIniFile.WriteString
 00792836    mov         eax,ebx
 00792838    call        TObject.Free
 0079283D    xor         eax,eax
 0079283F    pop         edx
 00792840    pop         ecx
 00792841    pop         ecx
 00792842    mov         dword ptr fs:[eax],edx
 00792845    push        792867
 0079284A    lea         eax,[ebp-0C]
 0079284D    mov         edx,2
 00792852    call        @UStrArrayClr
 00792857    lea         eax,[ebp-4]
 0079285A    call        @WStrClr
 0079285F    ret
>00792860    jmp         @HandleFinally
>00792865    jmp         0079284A
 00792867    pop         esi
 00792868    pop         ebx
 00792869    mov         esp,ebp
 0079286B    pop         ebp
 0079286C    ret
*}
end;

//0079290C
procedure TMainForm.DataDelayedControlsClick(Sender:TObject);
begin
{*
 0079290C    xor         ecx,ecx
 0079290E    mov         dl,1
 00792910    mov         eax,[0077B040];TDCGroupsFrm
 00792915    call        TCustomForm.Create;TDCGroupsFrm.Create
 0079291A    mov         edx,dword ptr ds:[7C4358];^gvar_009037A8:TDCGroupsFrm
 00792920    mov         dword ptr [edx],eax
 00792922    mov         eax,[007C4358];^gvar_009037A8:TDCGroupsFrm
 00792927    mov         eax,dword ptr [eax]
 00792929    mov         edx,dword ptr [eax]
 0079292B    call        dword ptr [edx+13C]
 00792931    ret
*}
end;

//00792934
procedure TMainForm.SettingsSpecialsClick(Sender:TObject);
begin
{*
 00792934    push        ebp
 00792935    mov         ebp,esp
 00792937    push        0
 00792939    push        0
 0079293B    xor         eax,eax
 0079293D    push        ebp
 0079293E    push        792A25
 00792943    push        dword ptr fs:[eax]
 00792946    mov         dword ptr fs:[eax],esp
 00792949    mov         eax,[007C4528];^gvar_00903784:TSpecialSettingsFrm
 0079294E    mov         eax,dword ptr [eax]
 00792950    mov         edx,dword ptr [eax]
 00792952    call        dword ptr [edx+13C]
 00792958    dec         eax
>00792959    jne         00792A0A
 0079295F    mov         eax,[007C4528];^gvar_00903784:TSpecialSettingsFrm
 00792964    mov         eax,dword ptr [eax]
 00792966    mov         eax,dword ptr [eax+0C]
 00792969    dec         eax
>0079296A    je          00792974
 0079296C    dec         eax
>0079296D    je          007929C0
>0079296F    jmp         00792A0A
 00792974    lea         edx,[ebp-4]
 00792977    mov         eax,[007C4528];^gvar_00903784:TSpecialSettingsFrm
 0079297C    mov         eax,dword ptr [eax]
 0079297E    mov         eax,dword ptr [eax+3C8]
 00792984    call        TControl.GetText
 00792989    mov         eax,dword ptr [ebp-4]
 0079298C    mov         edx,792A3C;'nozone'
 00792991    call        @UStrEqual
>00792996    jne         007929AC
 00792998    mov         eax,[007C48BC];^gvar_007CA842
 0079299D    mov         byte ptr [eax],1
 007929A0    mov         eax,792A58;'Password OK'
 007929A5    call        ShowMessage
>007929AA    jmp         00792A0A
 007929AC    mov         eax,[007C48BC];^gvar_007CA842
 007929B1    mov         byte ptr [eax],0
 007929B4    mov         eax,792A7C;'Password error'
 007929B9    call        ShowMessage
>007929BE    jmp         00792A0A
 007929C0    lea         edx,[ebp-8]
 007929C3    mov         eax,[007C4528];^gvar_00903784:TSpecialSettingsFrm
 007929C8    mov         eax,dword ptr [eax]
 007929CA    mov         eax,dword ptr [eax+3D8]
 007929D0    call        TControl.GetText
 007929D5    mov         eax,dword ptr [ebp-8]
 007929D8    mov         edx,792AA8;'alcstartdelay'
 007929DD    call        @UStrEqual
>007929E2    jne         007929F8
 007929E4    mov         eax,[007C4B34];^gvar_007CA843
 007929E9    mov         byte ptr [eax],1
 007929EC    mov         eax,792A58;'Password OK'
 007929F1    call        ShowMessage
>007929F6    jmp         00792A0A
 007929F8    mov         eax,[007C4B34];^gvar_007CA843
 007929FD    mov         byte ptr [eax],0
 00792A00    mov         eax,792A7C;'Password error'
 00792A05    call        ShowMessage
 00792A0A    xor         eax,eax
 00792A0C    pop         edx
 00792A0D    pop         ecx
 00792A0E    pop         ecx
 00792A0F    mov         dword ptr fs:[eax],edx
 00792A12    push        792A2C
 00792A17    lea         eax,[ebp-8]
 00792A1A    mov         edx,2
 00792A1F    call        @UStrArrayClr
 00792A24    ret
>00792A25    jmp         @HandleFinally
>00792A2A    jmp         00792A17
 00792A2C    pop         ecx
 00792A2D    pop         ecx
 00792A2E    pop         ebp
 00792A2F    ret
*}
end;

//00792AC4
procedure TMainForm.SettingsLicensesClick(Sender:TObject);
begin
{*
 00792AC4    mov         eax,[007C4A04];^gvar_009037C8:TLicenseManagerForm
 00792AC9    mov         eax,dword ptr [eax]
 00792ACB    mov         edx,dword ptr [eax]
 00792ACD    call        dword ptr [edx+13C]
 00792AD3    ret
*}
end;

//00792AD4
{*function sub_00792AD4:?;
begin
 00792AD4    push        ebp
 00792AD5    mov         ebp,esp
 00792AD7    add         esp,0FFFFFFF0
 00792ADA    push        ebx
 00792ADB    push        esi
 00792ADC    push        edi
 00792ADD    xor         eax,eax
 00792ADF    mov         dword ptr [ebp-8],eax
 00792AE2    xor         eax,eax
 00792AE4    push        ebp
 00792AE5    push        792BEB
 00792AEA    push        dword ptr fs:[eax]
 00792AED    mov         dword ptr fs:[eax],esp
 00792AF0    mov         eax,[007C4420];^gvar_007CA838
 00792AF5    cmp         byte ptr [eax],0
>00792AF8    je          00792B01
 00792AFA    mov         bl,1
>00792AFC    jmp         00792BD5
 00792B01    xor         ebx,ebx
 00792B03    xor         esi,esi
 00792B05    lea         eax,[ebp-4]
 00792B08    push        eax
 00792B09    mov         eax,[007C4158];^gvar_0078AB68
 00792B0E    push        eax
 00792B0F    push        1
 00792B11    call        005DE4AB
 00792B16    mov         edi,eax
 00792B18    test        edi,edi
>00792B1A    je          00792B32
 00792B1C    lea         eax,[ebp-4]
 00792B1F    push        eax
 00792B20    mov         eax,[007C4158];^gvar_0078AB68
 00792B25    push        eax
 00792B26    push        0FFFF4800
 00792B2B    call        005DE4AB
 00792B30    mov         edi,eax
 00792B32    mov         eax,edi
 00792B34    sub         eax,1
>00792B37    jb          00792B40
 00792B39    sub         eax,6
>00792B3C    je          00792B44
>00792B3E    jmp         00792B74
 00792B40    mov         bl,1
>00792B42    jmp         00792BBA
 00792B44    push        0
 00792B46    mov         eax,[007C42C4];^gvar_007CA830
 00792B4B    movzx       eax,byte ptr [eax]
 00792B4E    imul        eax,eax,7
>00792B51    jno         00792B58
 00792B53    call        @IntOver
 00792B58    mov         edx,dword ptr ds:[7C43E8];^gvar_007C10AC
 00792B5E    mov         eax,dword ptr [edx+eax*8+18]
 00792B62    movzx       ecx,word ptr ds:[792BFC];0x28 gvar_00792BFC
 00792B69    mov         dl,1
 00792B6B    call        MessageDlg
 00792B70    mov         esi,eax
>00792B72    jmp         00792BBA
 00792B74    push        0
 00792B76    lea         eax,[ebp-8]
 00792B79    push        eax
 00792B7A    mov         eax,[007C42C4];^gvar_007CA830
 00792B7F    movzx       eax,byte ptr [eax]
 00792B82    imul        eax,eax,7
>00792B85    jno         00792B8C
 00792B87    call        @IntOver
 00792B8C    mov         edx,dword ptr ds:[7C43E8];^gvar_007C10AC
 00792B92    mov         eax,dword ptr [edx+eax*8+20]
 00792B96    mov         dword ptr [ebp-10],edi
 00792B99    mov         byte ptr [ebp-0C],0
 00792B9D    lea         edx,[ebp-10]
 00792BA0    xor         ecx,ecx
 00792BA2    call        Format
 00792BA7    mov         eax,dword ptr [ebp-8]
 00792BAA    movzx       ecx,word ptr ds:[792C00];0x4 gvar_00792C00
 00792BB1    mov         dl,1
 00792BB3    call        MessageDlg
 00792BB8    mov         esi,eax
 00792BBA    test        edi,edi
>00792BBC    je          00792BCC
 00792BBE    cmp         esi,2
>00792BC1    je          00792BCC
 00792BC3    cmp         esi,1
>00792BC6    jne         00792B05
 00792BCC    mov         eax,dword ptr [ebp-4]
 00792BCF    push        eax
 00792BD0    call        005DE5BB
 00792BD5    xor         eax,eax
 00792BD7    pop         edx
 00792BD8    pop         ecx
 00792BD9    pop         ecx
 00792BDA    mov         dword ptr fs:[eax],edx
 00792BDD    push        792BF2
 00792BE2    lea         eax,[ebp-8]
 00792BE5    call        @UStrClr
 00792BEA    ret
>00792BEB    jmp         @HandleFinally
>00792BF0    jmp         00792BE2
 00792BF2    mov         eax,ebx
 00792BF4    pop         edi
 00792BF5    pop         esi
 00792BF6    pop         ebx
 00792BF7    mov         esp,ebp
 00792BF9    pop         ebp
 00792BFA    ret
end;*}

//00792C04
procedure TMainForm.LicTimerTimer(Sender:TObject);
begin
{*
 00792C04    push        ebx
 00792C05    mov         ebx,eax
 00792C07    call        00792AD4
 00792C0C    test        al,al
>00792C0E    jne         00792C17
 00792C10    mov         eax,ebx
 00792C12    call        TCustomForm.Close
 00792C17    mov         eax,ebx
 00792C19    call        TMainForm.UpdateStatusbar
 00792C1E    pop         ebx
 00792C1F    ret
*}
end;

//00792C20
procedure TMainForm.DataFrameExit;
begin
{*
 00792C20    push        ebx
 00792C21    mov         ebx,eax
 00792C23    mov         byte ptr ds:[9037D4],1;gvar_009037D4
 00792C2A    mov         eax,ebx
 00792C2C    call        TMainForm.UpdateTreeView
 00792C31    mov         eax,ebx
 00792C33    call        TMainForm.EnableFXNetLevelMenuItems
 00792C38    mov         eax,dword ptr [ebx+494];TMainForm.tvFXNet:TTreeView
 00792C3E    mov         edx,dword ptr [eax]
 00792C40    call        dword ptr [edx+104];TWinControl.SetFocus
 00792C46    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00792C4B    mov         eax,dword ptr [eax]
 00792C4D    call        TFXNet.CheckForErrors
 00792C52    test        al,al
>00792C54    je          00792C63
 00792C56    mov         dl,1
 00792C58    mov         eax,dword ptr [ebx+4C4];TMainForm.ErrorFlashTimer:TTimer
 00792C5E    call        TTimer.SetEnabled
 00792C63    pop         ebx
 00792C64    ret
*}
end;

//00792C68
procedure TMainForm.FXNetFrame1Exit(Sender:TObject);
begin
{*
 00792C68    mov         edx,dword ptr [eax+4A0];TMainForm.FXNetFrame1:TFXNetFrame
 00792C6E    cmp         byte ptr [edx+69],0;TFXNetFrame.FVisible:Boolean
>00792C72    jne         00792C79
 00792C74    call        TMainForm.DataFrameExit
 00792C79    ret
*}
end;

//00792C7C
procedure TMainForm.FXPDFrame1Exit(Sender:TObject);
begin
{*
 00792C7C    mov         edx,dword ptr [eax+4A4];TMainForm.FXPDFrame1:TFXPDFrame
 00792C82    cmp         byte ptr [edx+69],0;TFXPDFrame.FVisible:Boolean
>00792C86    jne         00792C8D
 00792C88    call        TMainForm.DataFrameExit
 00792C8D    ret
*}
end;

//00792C90
procedure TMainForm.FXADFrame1Exit(Sender:TObject);
begin
{*
 00792C90    mov         edx,dword ptr [eax+4A8];TMainForm.FXADFrame1:TFXADFrame
 00792C96    cmp         byte ptr [edx+69],0;TFXADFrame.FVisible:Boolean
>00792C9A    jne         00792CA1
 00792C9C    call        TMainForm.DataFrameExit
 00792CA1    ret
*}
end;

//00792CA4
procedure TMainForm.FXADSummaryFrame1Exit(Sender:TObject);
begin
{*
 00792CA4    mov         edx,dword ptr [eax+4B0];TMainForm.FXADSummaryFrame1:TFXADSummaryFrame
 00792CAA    cmp         byte ptr [edx+69],0;TFXADSummaryFrame.FVisible:Boolean
>00792CAE    jne         00792CB5
 00792CB0    call        TMainForm.DataFrameExit
 00792CB5    ret
*}
end;

//00792CB8
procedure TMainForm.StartupFormTimerTimer(Sender:TObject);
begin
{*
 00792CB8    xor         edx,edx
 00792CBA    mov         eax,dword ptr [eax+4C0];TMainForm.StartupFormTimer:TTimer
 00792CC0    call        TTimer.SetEnabled
 00792CC5    mov         eax,[007C42B8];^gvar_0082862C:TStartUpForm
 00792CCA    mov         eax,dword ptr [eax]
 00792CCC    call        TCustomForm.Hide
 00792CD1    ret
*}
end;

//00792CD4
procedure TMainForm.ErrorFlashTimerTimer(Sender:TObject);
begin
{*
 00792CD4    push        esi
 00792CD5    mov         esi,eax
 00792CD7    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00792CDC    mov         eax,dword ptr [eax]
 00792CDE    cmp         byte ptr [eax+8D],0
>00792CE5    jne         00792CFB
 00792CE7    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00792CEC    mov         eax,dword ptr [eax]
 00792CEE    cmp         byte ptr [eax+8C],0
>00792CF5    jne         00792CFB
 00792CF7    xor         edx,edx
>00792CF9    jmp         00792CFD
 00792CFB    mov         dl,1
 00792CFD    mov         eax,dword ptr [esi+47C];TMainForm.ErrorBtn:TSpeedButton
 00792D03    mov         ecx,dword ptr [eax]
 00792D05    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00792D0B    mov         eax,dword ptr [esi+4C4];TMainForm.ErrorFlashTimer:TTimer
 00792D11    mov         edx,dword ptr [eax+0C];TTimer.FTag:NativeInt
 00792D14    add         edx,1
>00792D17    jno         00792D1E
 00792D19    call        @IntOver
 00792D1E    and         edx,80000001
>00792D24    jns         00792D2B
 00792D26    dec         edx
 00792D27    or          edx,0FFFFFFFE
 00792D2A    inc         edx
 00792D2B    mov         dword ptr [eax+0C],edx;TTimer.FTag:NativeInt
 00792D2E    sub         edx,1
>00792D31    jb          00792D37
>00792D33    je          00792D7F
>00792D35    jmp         00792D9D
 00792D37    mov         eax,dword ptr [esi+47C];TMainForm.ErrorBtn:TSpeedButton
 00792D3D    mov         edx,dword ptr [eax]
 00792D3F    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 00792D42    test        al,al
>00792D44    jne         00792D5F
 00792D46    xor         edx,edx
 00792D48    mov         eax,dword ptr [esi+4C4];TMainForm.ErrorFlashTimer:TTimer
 00792D4E    call        TTimer.SetEnabled
 00792D53    mov         eax,[007C4E54];^gvar_007CA84C:TErrorFrm
 00792D58    mov         eax,dword ptr [eax]
 00792D5A    call        TCustomForm.Hide
 00792D5F    mov         edx,0FF00000F
 00792D64    mov         eax,dword ptr [esi+4C8];TMainForm.Panel1:TPanel
 00792D6A    call        TGroupBox.SetColor
 00792D6F    mov         eax,dword ptr [esi+4C8];TMainForm.Panel1:TPanel
 00792D75    mov         edx,dword ptr [eax]
 00792D77    call        dword ptr [edx+0AC];TWinControl.Repaint
 00792D7D    pop         esi
 00792D7E    ret
 00792D7F    mov         edx,0FF
 00792D84    mov         eax,dword ptr [esi+4C8];TMainForm.Panel1:TPanel
 00792D8A    call        TGroupBox.SetColor
 00792D8F    mov         eax,dword ptr [esi+4C8];TMainForm.Panel1:TPanel
 00792D95    mov         edx,dword ptr [eax]
 00792D97    call        dword ptr [edx+0AC];TWinControl.Repaint
 00792D9D    pop         esi
 00792D9E    ret
*}
end;

//00792DA0
procedure sub_00792DA0;
begin
{*
 00792DA0    push        ebp
 00792DA1    mov         ebp,esp
 00792DA3    pop         ebp
 00792DA4    ret         4
*}
end;

//00792DA8
procedure sub_00792DA8;
begin
{*
 00792DA8    push        ebp
 00792DA9    mov         ebp,esp
 00792DAB    pop         ebp
 00792DAC    ret         4
*}
end;

//00792DB0
procedure sub_00792DB0;
begin
{*
 00792DB0    push        ebp
 00792DB1    mov         ebp,esp
 00792DB3    pop         ebp
 00792DB4    ret         4
*}
end;

//00792DB8
{*procedure sub_00792DB8(?:?; ?:?; ?:?; ?:?);
begin
 00792DB8    push        ebp
 00792DB9    mov         ebp,esp
 00792DBB    push        ebx
 00792DBC    mov         ebx,ecx
 00792DBE    cmp         eax,5
>00792DC1    jne         00792DDD
 00792DC3    mov         ecx,ebx
 00792DC5    mov         eax,dword ptr [ebp+8]
 00792DC8    movzx       edx,byte ptr [eax-0D3]
 00792DCF    mov         eax,dword ptr [ebp+8]
 00792DD2    mov         eax,dword ptr [eax-4]
 00792DD5    call        TFXPAD.SysIntToOutput
 00792DDA    pop         ebx
 00792DDB    pop         ebp
 00792DDC    ret
 00792DDD    mov         eax,ebx
 00792DDF    call        @UStrClr
 00792DE4    pop         ebx
 00792DE5    pop         ebp
 00792DE6    ret
end;*}

//00792DE8
{*procedure sub_00792DE8(?:TFXPAD; ?:?; ?:?; ?:?; ?:?);
begin
 00792DE8    push        ebp
 00792DE9    mov         ebp,esp
 00792DEB    push        ecx
 00792DEC    mov         ecx,29
 00792DF1    push        0
 00792DF3    push        0
 00792DF5    dec         ecx
>00792DF6    jne         00792DF1
 00792DF8    push        ecx
 00792DF9    xchg        ecx,dword ptr [ebp-4]
 00792DFC    push        ebx
 00792DFD    push        esi
 00792DFE    push        edi
 00792DFF    mov         dword ptr [ebp-0E4],ecx
 00792E05    mov         edi,edx
 00792E07    mov         dword ptr [ebp-4],eax
 00792E0A    mov         ebx,dword ptr [ebp+0C]
 00792E0D    add         ebx,0FFFFFFFC
 00792E10    lea         esi,[ebp-0DE]
 00792E16    xor         eax,eax
 00792E18    push        ebp
 00792E19    push        7932ED
 00792E1E    push        dword ptr fs:[eax]
 00792E21    mov         dword ptr fs:[eax],esp
 00792E24    cmp         edi,7
>00792E27    jbe         00792E2E
 00792E29    call        @BoundErr
 00792E2E    imul        eax,edi,43B3
>00792E34    jno         00792E3B
 00792E36    call        @IntOver
 00792E3B    mov         edx,dword ptr [ebp-4]
 00792E3E    lea         eax,[edx+eax*4]
 00792E41    mov         edx,dword ptr [ebp-0E4]
 00792E47    cmp         edx,1
>00792E4A    jbe         00792E51
 00792E4C    call        @BoundErr
 00792E51    imul        edx,edx,43B3
>00792E57    jno         00792E5E
 00792E59    call        @IntOver
 00792E5E    lea         eax,[eax+edx*2]
 00792E61    mov         edx,dword ptr [ebp+8]
 00792E64    dec         edx
 00792E65    cmp         edx,9E
>00792E6B    jbe         00792E72
 00792E6D    call        @BoundErr
 00792E72    inc         edx
 00792E73    imul        edx,edx,6D
>00792E76    jno         00792E7D
 00792E78    call        @IntOver
 00792E7D    push        esi
 00792E7E    push        edi
 00792E7F    mov         edi,esi
 00792E81    lea         esi,[eax+edx*2-0D6]
 00792E88    mov         ecx,36
 00792E8D    rep movs    dword ptr [edi],dword ptr [esi]
 00792E8F    movs        word ptr [edi],word ptr [esi]
 00792E91    pop         edi
 00792E92    pop         esi
 00792E93    cmp         byte ptr [esi+0A],0
>00792E97    je          007932B9
 00792E9D    mov         eax,dword ptr [ebx]
 00792E9F    mov         edx,dword ptr [eax]
 00792EA1    call        dword ptr [edx+48]
 00792EA4    lea         eax,[ebp-0E8]
 00792EAA    push        eax
 00792EAB    mov         eax,dword ptr [ebp+0C]
 00792EAE    mov         eax,dword ptr [eax-8]
 00792EB1    call        006A3430
 00792EB6    movzx       eax,al
 00792EB9    add         edi,eax
>00792EBB    jno         00792EC2
 00792EBD    call        @IntOver
 00792EC2    mov         dword ptr [ebp-0F8],edi
 00792EC8    mov         byte ptr [ebp-0F4],0
 00792ECF    imul        eax,dword ptr [ebp-0E4],64
>00792ED6    jno         00792EDD
 00792ED8    call        @IntOver
 00792EDD    add         eax,dword ptr [ebp+8]
>00792EE0    jno         00792EE7
 00792EE2    call        @IntOver
 00792EE7    mov         dword ptr [ebp-0F0],eax
 00792EED    mov         byte ptr [ebp-0EC],0
 00792EF4    lea         edx,[ebp-0F8]
 00792EFA    mov         ecx,1
 00792EFF    mov         eax,79330C;'%.3d.%.3d'
 00792F04    call        Format
 00792F09    mov         edx,dword ptr [ebp-0E8]
 00792F0F    mov         eax,dword ptr [ebx]
 00792F11    mov         ecx,dword ptr [eax]
 00792F13    call        dword ptr [ecx+3C]
 00792F16    lea         eax,[ebp-0FC]
 00792F1C    push        eax
 00792F1D    mov         eax,dword ptr [ebp+0C]
 00792F20    mov         eax,dword ptr [eax-8]
 00792F23    movzx       eax,word ptr [eax+123]
 00792F2A    movzx       edx,byte ptr [esi+5]
 00792F2E    add         eax,edx
>00792F30    jno         00792F37
 00792F32    call        @IntOver
 00792F37    sub         eax,1
>00792F3A    jno         00792F41
 00792F3C    call        @IntOver
 00792F41    mov         dword ptr [ebp-104],eax
 00792F47    mov         byte ptr [ebp-100],0
 00792F4E    lea         edx,[ebp-104]
 00792F54    xor         ecx,ecx
 00792F56    mov         eax,79332C;'%.4d'
 00792F5B    call        Format
 00792F60    mov         edx,dword ptr [ebp-0FC]
 00792F66    mov         eax,dword ptr [ebx]
 00792F68    mov         ecx,dword ptr [eax]
 00792F6A    call        dword ptr [ecx+3C]
 00792F6D    lea         eax,[ebp-108]
 00792F73    push        eax
 00792F74    movzx       eax,word ptr [esi+6]
 00792F78    mov         dword ptr [ebp-104],eax
 00792F7E    mov         byte ptr [ebp-100],0
 00792F85    lea         edx,[ebp-104]
 00792F8B    xor         ecx,ecx
 00792F8D    mov         eax,793344;'%.3d'
 00792F92    call        Format
 00792F97    mov         edx,dword ptr [ebp-108]
 00792F9D    mov         eax,dword ptr [ebx]
 00792F9F    mov         ecx,dword ptr [eax]
 00792FA1    call        dword ptr [ecx+3C]
 00792FA4    lea         eax,[ebp-10C]
 00792FAA    push        eax
 00792FAB    movzx       eax,word ptr [esi+8]
 00792FAF    mov         dword ptr [ebp-104],eax
 00792FB5    mov         byte ptr [ebp-100],0
 00792FBC    lea         edx,[ebp-104]
 00792FC2    xor         ecx,ecx
 00792FC4    mov         eax,793344;'%.3d'
 00792FC9    call        Format
 00792FCE    mov         edx,dword ptr [ebp-10C]
 00792FD4    mov         eax,dword ptr [ebx]
 00792FD6    mov         ecx,dword ptr [eax]
 00792FD8    call        dword ptr [ecx+3C]
 00792FDB    lea         eax,[ebp-110]
 00792FE1    push        eax
 00792FE2    movzx       eax,byte ptr [esi+0A]
 00792FE6    mov         edx,100
 00792FEB    mul         eax,edx
 00792FED    mov         edx,eax
>00792FEF    jno         00792FF6
 00792FF1    call        @IntOver
 00792FF6    cmp         edx,0FFFF
>00792FFC    jbe         00793003
 00792FFE    call        @BoundErr
 00793003    lea         ecx,[ebp-114]
 00793009    mov         eax,dword ptr [ebp-4]
 0079300C    call        TFXPAD.SysIntToType
 00793011    mov         eax,dword ptr [ebp-114]
 00793017    mov         dword ptr [ebp-104],eax
 0079301D    mov         byte ptr [ebp-100],11
 00793024    lea         edx,[ebp-104]
 0079302A    xor         ecx,ecx
 0079302C    mov         eax,79335C;'%s'
 00793031    call        Format
 00793036    mov         edx,dword ptr [ebp-110]
 0079303C    mov         eax,dword ptr [ebx]
 0079303E    mov         ecx,dword ptr [eax]
 00793040    call        dword ptr [ecx+3C]
 00793043    lea         eax,[ebp-118]
 00793049    push        eax
 0079304A    lea         eax,[ebp-11C]
 00793050    push        eax
 00793051    movzx       ecx,byte ptr [esi+0B]
 00793055    movzx       edx,byte ptr [esi+0A]
 00793059    mov         eax,dword ptr [ebp-4]
 0079305C    call        TFXPAD.SysIntToInput
 00793061    mov         eax,dword ptr [ebp-11C]
 00793067    mov         dword ptr [ebp-104],eax
 0079306D    mov         byte ptr [ebp-100],11
 00793074    lea         edx,[ebp-104]
 0079307A    xor         ecx,ecx
 0079307C    mov         eax,793370;'%s '
 00793081    call        Format
 00793086    mov         edx,dword ptr [ebp-118]
 0079308C    mov         eax,dword ptr [ebx]
 0079308E    mov         ecx,dword ptr [eax]
 00793090    call        dword ptr [ecx+3C]
 00793093    lea         eax,[ebp-120]
 00793099    push        eax
 0079309A    push        ebp
 0079309B    lea         ecx,[ebp-124]
 007930A1    movzx       edx,byte ptr [esi+0B]
 007930A5    movzx       eax,byte ptr [esi+0A]
 007930A9    call        00792DB8
 007930AE    pop         ecx
 007930AF    mov         eax,dword ptr [ebp-124]
 007930B5    mov         dword ptr [ebp-104],eax
 007930BB    mov         byte ptr [ebp-100],11
 007930C2    lea         edx,[ebp-104]
 007930C8    xor         ecx,ecx
 007930CA    mov         eax,793370;'%s '
 007930CF    call        Format
 007930D4    mov         edx,dword ptr [ebp-120]
 007930DA    mov         eax,dword ptr [ebx]
 007930DC    mov         ecx,dword ptr [eax]
 007930DE    call        dword ptr [ecx+3C]
 007930E1    lea         eax,[ebp-128]
 007930E7    push        eax
 007930E8    lea         eax,[ebp-12C]
 007930EE    push        eax
 007930EF    movzx       ecx,word ptr [esi+0C]
 007930F3    movzx       edx,byte ptr [esi+0A]
 007930F7    mov         eax,dword ptr [ebp-4]
 007930FA    call        TFXPAD.SysMsToLevel
 007930FF    mov         eax,dword ptr [ebp-12C]
 00793105    mov         dword ptr [ebp-104],eax
 0079310B    mov         byte ptr [ebp-100],11
 00793112    lea         edx,[ebp-104]
 00793118    xor         ecx,ecx
 0079311A    mov         eax,793370;'%s '
 0079311F    call        Format
 00793124    mov         edx,dword ptr [ebp-128]
 0079312A    mov         eax,dword ptr [ebx]
 0079312C    mov         ecx,dword ptr [eax]
 0079312E    call        dword ptr [ecx+3C]
 00793131    lea         eax,[ebp-130]
 00793137    push        eax
 00793138    lea         eax,[ebp-134]
 0079313E    push        eax
 0079313F    movzx       ecx,word ptr [esi+0E]
 00793143    movzx       edx,byte ptr [esi+0A]
 00793147    mov         eax,dword ptr [ebp-4]
 0079314A    call        TFXPAD.SysMsToLevel
 0079314F    mov         eax,dword ptr [ebp-134]
 00793155    mov         dword ptr [ebp-104],eax
 0079315B    mov         byte ptr [ebp-100],11
 00793162    lea         edx,[ebp-104]
 00793168    xor         ecx,ecx
 0079316A    mov         eax,793370;'%s '
 0079316F    call        Format
 00793174    mov         edx,dword ptr [ebp-130]
 0079317A    mov         eax,dword ptr [ebx]
 0079317C    mov         ecx,dword ptr [eax]
 0079317E    call        dword ptr [ecx+3C]
 00793181    lea         eax,[ebp-138]
 00793187    push        eax
 00793188    lea         eax,[ebp-13C]
 0079318E    push        eax
 0079318F    movzx       ecx,word ptr [esi+10]
 00793193    movzx       edx,byte ptr [esi+0A]
 00793197    mov         eax,dword ptr [ebp-4]
 0079319A    call        TFXPAD.SysMsToLevel
 0079319F    mov         eax,dword ptr [ebp-13C]
 007931A5    mov         dword ptr [ebp-104],eax
 007931AB    mov         byte ptr [ebp-100],11
 007931B2    lea         edx,[ebp-104]
 007931B8    xor         ecx,ecx
 007931BA    mov         eax,793370;'%s '
 007931BF    call        Format
 007931C4    mov         edx,dword ptr [ebp-138]
 007931CA    mov         eax,dword ptr [ebx]
 007931CC    mov         ecx,dword ptr [eax]
 007931CE    call        dword ptr [ecx+3C]
 007931D1    lea         eax,[ebp-140]
 007931D7    push        eax
 007931D8    lea         eax,[ebp-144]
 007931DE    push        eax
 007931DF    movzx       ecx,word ptr [esi+12]
 007931E3    movzx       edx,byte ptr [esi+0A]
 007931E7    mov         eax,dword ptr [ebp-4]
 007931EA    call        TFXPAD.SysMsToLevel
 007931EF    mov         eax,dword ptr [ebp-144]
 007931F5    mov         dword ptr [ebp-104],eax
 007931FB    mov         byte ptr [ebp-100],11
 00793202    lea         edx,[ebp-104]
 00793208    xor         ecx,ecx
 0079320A    mov         eax,793370;'%s '
 0079320F    call        Format
 00793214    mov         edx,dword ptr [ebp-140]
 0079321A    mov         eax,dword ptr [ebx]
 0079321C    mov         ecx,dword ptr [eax]
 0079321E    call        dword ptr [ecx+3C]
 00793221    lea         eax,[ebp-148]
 00793227    push        eax
 00793228    lea         eax,[ebp-14C]
 0079322E    push        eax
 0079322F    movzx       eax,byte ptr [esi+0A]
 00793233    mov         edx,100
 00793238    mul         eax,edx
 0079323A    mov         edx,eax
>0079323C    jno         00793243
 0079323E    call        @IntOver
 00793243    movzx       eax,byte ptr [esi+0B]
 00793247    add         edx,eax
>00793249    jno         00793250
 0079324B    call        @IntOver
 00793250    cmp         edx,0FFFF
>00793256    jbe         0079325D
 00793258    call        @BoundErr
 0079325D    movzx       ecx,byte ptr [esi+16]
 00793261    mov         eax,dword ptr [ebp-4]
 00793264    call        TFXPAD.SysIntToMode
 00793269    mov         eax,dword ptr [ebp-14C]
 0079326F    mov         dword ptr [ebp-104],eax
 00793275    mov         byte ptr [ebp-100],11
 0079327C    lea         edx,[ebp-104]
 00793282    xor         ecx,ecx
 00793284    mov         eax,793370;'%s '
 00793289    call        Format
 0079328E    mov         edx,dword ptr [ebp-148]
 00793294    mov         eax,dword ptr [ebx]
 00793296    mov         ecx,dword ptr [eax]
 00793298    call        dword ptr [ecx+3C]
 0079329B    lea         edx,[ebp-150]
 007932A1    mov         eax,dword ptr [ebx]
 007932A3    call        TStrings.GetDelimitedText
 007932A8    mov         edx,dword ptr [ebp-150]
 007932AE    mov         eax,dword ptr [ebp+0C]
 007932B1    mov         eax,dword ptr [eax-0C]
 007932B4    mov         ecx,dword ptr [eax]
 007932B6    call        dword ptr [ecx+3C]
 007932B9    xor         eax,eax
 007932BB    pop         edx
 007932BC    pop         ecx
 007932BD    pop         ecx
 007932BE    mov         dword ptr fs:[eax],edx
 007932C1    push        7932F4
 007932C6    lea         eax,[ebp-150]
 007932CC    mov         edx,13
 007932D1    call        @UStrArrayClr
 007932D6    lea         eax,[ebp-0FC]
 007932DC    call        @UStrClr
 007932E1    lea         eax,[ebp-0E8]
 007932E7    call        @UStrClr
 007932EC    ret
>007932ED    jmp         @HandleFinally
>007932F2    jmp         007932C6
 007932F4    pop         edi
 007932F5    pop         esi
 007932F6    pop         ebx
 007932F7    mov         esp,ebp
 007932F9    pop         ebp
 007932FA    ret         4
end;*}

//00793378
procedure TMainForm.AddrExportBtnClick(Sender:TObject);
begin
{*
 00793378    push        ebp
 00793379    mov         ebp,esp
 0079337B    add         esp,0FFFFFFE8
 0079337E    push        ebx
 0079337F    push        esi
 00793380    push        edi
 00793381    xor         ecx,ecx
 00793383    mov         dword ptr [ebp-18],ecx
 00793386    xor         eax,eax
 00793388    push        ebp
 00793389    push        79353C
 0079338E    push        dword ptr fs:[eax]
 00793391    mov         dword ptr fs:[eax],esp
 00793394    mov         dl,1
 00793396    mov         eax,[0046F9A0];TStringList
 0079339B    call        TStringList.Create;TStringList.Create
 007933A0    mov         dword ptr [ebp-0C],eax
 007933A3    mov         dl,1
 007933A5    mov         eax,[0046F9A0];TStringList
 007933AA    call        TStringList.Create;TStringList.Create
 007933AF    mov         dword ptr [ebp-4],eax
 007933B2    mov         dl,1
 007933B4    mov         eax,dword ptr [ebp-4]
 007933B7    call        TStrings.SetStrictDelimiter
 007933BC    mov         dx,3B
 007933C0    mov         eax,dword ptr [ebp-4]
 007933C3    call        TStrings.SetDelimiter
 007933C8    xor         eax,eax
 007933CA    mov         dword ptr [ebp-10],eax
 007933CD    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007933D2    mov         eax,dword ptr [eax]
 007933D4    mov         edx,dword ptr [ebp-10]
 007933D7    call        TFXNet.GetPanel
 007933DC    test        eax,eax
>007933DE    je          007934DD
 007933E4    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007933E9    mov         eax,dword ptr [eax]
 007933EB    mov         edx,dword ptr [ebp-10]
 007933EE    call        TFXNet.GetPanel
 007933F3    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 007933F6    mov         dword ptr [ebp-8],eax
 007933F9    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007933FE    mov         eax,dword ptr [eax]
 00793400    mov         edx,dword ptr [ebp-10]
 00793403    call        TFXNet.GetPanel
 00793408    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 0079340B    mov         dword ptr [ebp-14],eax
 0079340E    xor         edi,edi
 00793410    mov         edx,edi
 00793412    mov         eax,dword ptr [ebp-8]
 00793415    call        TFXPPD.GetControllerLoopType
 0079341A    cmp         eax,6
>0079341D    ja          007934D3
 00793423    jmp         dword ptr [eax*4+79342A]
 00793423    dd          007934D3
 00793423    dd          007934B1
 00793423    dd          0079346D
 00793423    dd          0079344B
 00793423    dd          0079348F
 00793423    dd          0079344B
 00793423    dd          0079348F
>00793446    jmp         007934D3
 0079344B    xor         esi,esi
 0079344D    mov         ebx,1
 00793452    push        ebx
 00793453    mov         ecx,esi
 00793455    mov         edx,edi
 00793457    mov         eax,dword ptr [ebp-14]
 0079345A    call        00792DA0
 0079345F    inc         ebx
 00793460    cmp         ebx,7F
>00793463    jne         00793452
 00793465    inc         esi
 00793466    cmp         esi,2
>00793469    jne         0079344D
>0079346B    jmp         007934D3
 0079346D    xor         esi,esi
 0079346F    mov         ebx,1
 00793474    push        ebx
 00793475    mov         ecx,esi
 00793477    mov         edx,edi
 00793479    mov         eax,dword ptr [ebp-14]
 0079347C    call        00792DA8
 00793481    inc         ebx
 00793482    cmp         ebx,7F
>00793485    jne         00793474
 00793487    inc         esi
 00793488    cmp         esi,2
>0079348B    jne         0079346F
>0079348D    jmp         007934D3
 0079348F    xor         esi,esi
 00793491    mov         ebx,1
 00793496    push        ebx
 00793497    mov         ecx,esi
 00793499    mov         edx,edi
 0079349B    mov         eax,dword ptr [ebp-14]
 0079349E    call        00792DB0
 007934A3    inc         ebx
 007934A4    cmp         ebx,7F
>007934A7    jne         00793496
 007934A9    inc         esi
 007934AA    cmp         esi,2
>007934AD    jne         00793491
>007934AF    jmp         007934D3
 007934B1    xor         esi,esi
 007934B3    mov         ebx,1
 007934B8    push        ebp
 007934B9    push        ebx
 007934BA    mov         ecx,esi
 007934BC    mov         edx,edi
 007934BE    mov         eax,dword ptr [ebp-14]
 007934C1    call        00792DE8
 007934C6    pop         ecx
 007934C7    inc         ebx
 007934C8    cmp         ebx,7F
>007934CB    jne         007934B8
 007934CD    inc         esi
 007934CE    cmp         esi,2
>007934D1    jne         007934B3
 007934D3    inc         edi
 007934D4    cmp         edi,8
>007934D7    jne         00793410
 007934DD    inc         dword ptr [ebp-10]
 007934E0    cmp         dword ptr [ebp-10],21
>007934E4    jne         007933CD
 007934EA    mov         eax,dword ptr [ebp-4]
 007934ED    call        TObject.Free
 007934F2    lea         edx,[ebp-18]
 007934F5    mov         eax,dword ptr [ebp-0C]
 007934F8    mov         ecx,dword ptr [eax]
 007934FA    call        dword ptr [ecx+1C];TStrings.GetTextStr
 007934FD    mov         edx,dword ptr [ebp-18]
 00793500    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 00793505    mov         eax,dword ptr [eax]
 00793507    mov         eax,dword ptr [eax+3C0]
 0079350D    call        TControl.SetText
 00793512    mov         eax,dword ptr [ebp-0C]
 00793515    call        TObject.Free
 0079351A    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 0079351F    mov         eax,dword ptr [eax]
 00793521    call        TCustomForm.Show
 00793526    xor         eax,eax
 00793528    pop         edx
 00793529    pop         ecx
 0079352A    pop         ecx
 0079352B    mov         dword ptr fs:[eax],edx
 0079352E    push        793543
 00793533    lea         eax,[ebp-18]
 00793536    call        @UStrClr
 0079353B    ret
>0079353C    jmp         @HandleFinally
>00793541    jmp         00793533
 00793543    pop         edi
 00793544    pop         esi
 00793545    pop         ebx
 00793546    mov         esp,ebp
 00793548    pop         ebp
 00793549    ret
*}
end;

Initialization
Finalization
//0079354C
{*
 0079354C    push        ebp
 0079354D    mov         ebp,esp
 0079354F    xor         eax,eax
 00793551    push        ebp
 00793552    push        79362B
 00793557    push        dword ptr fs:[eax]
 0079355A    mov         dword ptr fs:[eax],esp
 0079355D    inc         dword ptr ds:[9037DC]
>00793563    jne         0079361D
 00793569    mov         eax,7C410C;^'WARNING! Error in panel ID!'
 0079356E    call        @UStrClr
 00793573    mov         eax,7C4110;^'WARNING! Overlapping loops!'
 00793578    call        @UStrClr
 0079357D    mov         eax,7C4114;^'WARNING! Overlapping zones!'
 00793582    call        @UStrClr
 00793587    mov         eax,7C4118;^'You have to correct the errors before sending the configuration to the pane...
 0079358C    call        @UStrClr
 00793591    mov         eax,7C411C;^'Loop '
 00793596    call        @UStrClr
 0079359B    mov         eax,7C4120;^'could not be read.'
 007935A0    call        @UStrClr
 007935A5    mov         eax,7C4124;^'could not be written.'
 007935AA    call        @UStrClr
 007935AF    mov         eax,7C4128;^'The file is not an ESA or FX file!
No data is read.'
 007935B4    call        @UStrClr
 007935B9    mov         eax,7C412C;^'An error occured while reading from file '
 007935BE    call        @UStrClr
 007935C3    mov         eax,7C4130;^'Partially read data is not valid.'
 007935C8    call        @UStrClr
 007935CD    mov         eax,7C4134;^'FX3Net, FX3Text files (*.fx3;*.fxt)|*.fx3;*fxt|FXNet files (*.fxn)|*.fxn|FX...
 007935D2    call        @UStrClr
 007935D7    mov         eax,7C4138;^'An error occured while writing to file '
 007935DC    call        @UStrClr
 007935E1    mov         eax,7C413C;^'The file does not contain valid data.'
 007935E6    call        @UStrClr
 007935EB    mov         eax,7C4140;^'Save changes before exit?'
 007935F0    call        @UStrClr
 007935F5    mov         eax,7C4144;^'Save changes before starting new project?'
 007935FA    call        @UStrClr
 007935FF    mov         eax,7C4148;^'No loops are defined!'
 00793604    call        @UStrClr
 00793609    mov         eax,7C414C;^'Select default folder for FXNet configuration files'
 0079360E    call        @UStrClr
 00793613    mov         eax,9037D8;gvar_009037D8:UnicodeString
 00793618    call        @UStrClr
 0079361D    xor         eax,eax
 0079361F    pop         edx
 00793620    pop         ecx
 00793621    pop         ecx
 00793622    mov         dword ptr fs:[eax],edx
 00793625    push        793632
 0079362A    ret
>0079362B    jmp         @HandleFinally
>00793630    jmp         0079362A
 00793632    pop         ebp
 00793633    ret
*}
end.