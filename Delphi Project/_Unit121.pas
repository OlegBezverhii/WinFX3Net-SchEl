//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit121;

interface

uses
  SysUtils, Classes, Vcl.StdCtrls, System.Generics.Defaults, Vcl.Dialogs, FXIniFiles, Vcl.Buttons, System.Generics.Collections, Vcl.StdActns, Vcl.ComCtrls, FXOverwriteDialog, FXEsaFileMerge, FXAboutFrames, Vcl.Samples.Spin, Vcl.Mask, Vcl.Grids, FXFileImport, FXFileExport, FXNetAutoConfig, FXSpecialSettings, FXDelayedControlRange, FXDCData, System.Generics.Collections, System.Generics.Collections, System.Rtti, System.Generics.Defaults;

type
  TFileImportDlg = class(TForm)
  published
    Label1:TLabel;//f3C0
    Edit1:TEdit;//f3C4
    btnBrowse:TButton;//f3C8
    OpenDialog1:TOpenDialog;//f3CC
    btnOK:TBitBtn;//f3D0
    BitBtn1:TBitBtn;//f3D4
    ProgressBar1:TProgressBar;//f3D8
    cbImportTexts:TCheckBox;//f3DC
    cbImportZones:TCheckBox;//f3E0
    Label2:TLabel;//f3E4
    cbImportTypes:TCheckBox;//f3E8
    procedure FormCreate(Sender:TObject);//0075E888
    procedure btnBrowseClick(Sender:TObject);//0075E3B8
    procedure btnOKClick(Sender:TObject);//0075E41C
  end;
  TFileExportDlg = class(TForm)
  published
    Label1:TLabel;//f3C0
    Edit1:TEdit;//f3C4
    btnBrowse:TButton;//f3C8
    btnOK:TBitBtn;//f3CC
    BitBtn2:TBitBtn;//f3D0
    SaveDialog1:TSaveDialog;//f3D4
    ProgressBar1:TProgressBar;//f3D8
    procedure FormCreate(Sender:TObject);//007602E4
    procedure btnBrowseClick(Sender:TObject);//0075FD90
    procedure btnOKClick(Sender:TObject);//0075FDF4
  end;
  TAutoConfigState = (AC_IDLE, AC_SETTING, AC_PREPARING, AC_CONFIGURING, AC_RESTARTING);
  TAutoConfigFrm = class(TForm)
  published
    Memo1:TMemo;//f3C0
    function AutoConfig(pars:TStringList):Integer;//00761BEC
    procedure AcControl(Event:TAcEvent; msg:string);//0076275C
    procedure FormClose(Sender:TObject; var Action:UITypes.TCloseAction);//00762ABC
    procedure FormCreate(Sender:TObject);//00762ACC
  public
    FileName:string;//f3C4
    Auto:Integer;//f3C8
    Panel:Integer;//f3CC
    Port:Integer;//f3D0
    Baud:Integer;//f3D4
    Prep:Boolean;//f3D8
    Rest:Boolean;//f3D9
    AutoConfigState:TAutoConfigState;//f3DA
  end;
  TSpecialSettingsFrm = class(TForm)
  published
    gbNoZones:TGroupBox;//f3C0
    lbNzDescription:TLabel;//f3C4
    nzPassword:TEdit;//f3C8
    btnNzActivate:TBitBtn;//f3CC
    gbAlcStartDelay:TGroupBox;//f3D0
    lbSdDescription:TLabel;//f3D4
    sdPassword:TEdit;//f3D8
    btnSdActivate:TBitBtn;//f3DC
    procedure FormCreate(Sender:TObject);//007636CC
    procedure Translate(IniFile:TFXIniFile);//00763098
    procedure btnSdActivateClick(Sender:TObject);//007636C4
    procedure FormShow(Sender:TObject);//007637A8
    procedure btnNzActivateClick(Sender:TObject);//007636BC
  end;
  TMaskEdit = class(TMaskEdit)
  published
    procedure WMMouseWheel(var msg:TWMMouseWheel);//0076428C
  public
    procedure WMMouseWheel(var msg:TWMMouseWheel); message WM_MOUSEWHEEL;//0076428C
  end;
  TStringGrid = class(TStringGrid)
  end;
  TDCRangeFrm = class(TForm)
  published
    btnOK:TBitBtn;//f3C0
    btnCancel:TBitBtn;//f3C4
    Grid:TStringGrid;//f3C8
    MaskEdit1:TMaskEdit;//f3CC
    btnResetGroups:TButton;//f3D0
    btnResetDelays:TButton;//f3D4
    procedure GridSelectCell(Sender:TObject; ACol:Integer; var CanSelect:Boolean; ARow:Integer);//007647DC
    procedure MaskEdit1MouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);//00764CA0
    procedure btnResetDelaysClick(Sender:TObject);//007643E8
    procedure btnResetGroupsClick(Sender:TObject);//0076443C
    procedure MaskEdit1KeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);//00764AAC
    procedure FormShow(Sender:TObject);//00764590
    procedure FormCreate(Sender:TObject);//00764490
    procedure MaskEdit1Enter(Sender:TObject);//00764A80
    procedure MaskEdit1Change(Sender:TObject);//00764A18
  end;
  TActivationType = (atNone, atImmediate, atDelayedD1, atDelayedD2, atDelayedD3, atDelayedD4, atDelayedD5, atDelayedD6, atDelayedD7);
  TCGroupSetting = (gsNone, gsCtrlA, gsCtrlB, gsCtrlB2, gsCtrlC1, gsCtrlC2, gsCtrlC3, gsCtrlC4, gsCtrlC5, gsCtrlC6, gsCtrlC7);
  TCtrlGroupKind = (gkInput, gkOutput);
  TCtrlOutput = class(TObject)
  public
    FIsIoLine:Boolean;//f4
    FPanlIndx:Integer;//f8
    FLoopIndx:Integer;//fC
    FRangIndx:Integer;//f10
    FAddrIndx:Integer;//f14
    FUnitIndx:Integer;//f18
    FLineIndx:Integer;//f1C
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
    procedure v8; virtual; abstract;//v8//00405554
    procedure vC; virtual; abstract;//vC//00405554
    procedure v10; virtual; abstract;//v10//00405554
    procedure v14; virtual; abstract;//v14//00405554
    procedure v18; virtual; abstract;//v18//00405554
    procedure v1C; virtual; abstract;//v1C//00405554
    procedure v20; virtual; abstract;//v20//00405554
    procedure v24; virtual; abstract;//v24//00405554
    procedure v28; virtual; abstract;//v28//00405554
    procedure v2C; virtual; abstract;//v2C//00405554
    procedure v30; virtual; abstract;//v30//00405554
    procedure v34; virtual; abstract;//v34//00405554
    procedure v38; virtual; abstract;//v38//00405554
    procedure v3C; virtual; abstract;//v3C//00405554
  end;
  TDCAddr = class(TCtrlOutput)
  published
    destructor Destroy();//00770904
    constructor Create;//007708E4
  public
    FLoopOffs:Integer;//f20
    FLoopType:Integer;//f24
    FInpEvents:TFXEventSet;//f28
    FOutEvents:TFXEventSet;//f29
    FTreeNodeStr:string;//f2C
    FTypeString:string;//f30
    FTypeOrInput:string;//f34
    FInpFunction:string;//f38
    FOutFunction:string;//f3C
    FOutFunction2:string;//f40
    FCtrlGroups:string;//f44
    FCustomText:string;//f48
    FAPRec:TFXADRec;//f4C
    destructor Destroy(); virtual;//00770904
    //function v0:?; virtual;//v0//00770B8C
    //procedure v4(?:?); virtual;//v4//00770928
    //procedure v8(?:?); virtual;//v8//00770B0C
    //procedure vC(?:?); virtual;//vC//007709D0
    //procedure v10(?:?); virtual;//v10//00770BE8
    //procedure v14(?:?); virtual;//v14//00770B5C
    //procedure v18(?:?); virtual;//v18//00770B78
    //procedure v1C(?:?); virtual;//v1C//00770AF0
    //procedure v20(?:?); virtual;//v20//00770ADC
    //procedure v24(?:?); virtual;//v24//00770B94
    //procedure v28(?:?); virtual;//v28//00770AC8
    //procedure v2C(?:?); virtual;//v2C//00770BB4
    //function v30:?; virtual;//v30//00770BFC
    //function v34:?; virtual;//v34//00770B70
    //function v38:?; virtual;//v38//0077096C
    //procedure v3C(?:?); virtual;//v3C//00770BE4
  end;
  TDCLoop = class(TObject)
  published
    destructor Destroy();//00770858
    constructor Create;//00770818
  public
    FIsIoUnit:Boolean;//f4
    FLoopIndx:Integer;//f8
    FLoopOffs:Integer;//fC
    FTreeNodeStr:string;//f10
    FNumInputs:Integer;//f14
    FNumOutputs:Integer;//f18
    FAddresses:TObjectList<FXDCData.TDCAddr>;//f1C
  end;
  TLineType = (ltUndefined, ltCCI, ltCCO, ltADO);
  TDCIoLine = class(TCtrlOutput)
  published
    destructor Destroy();//00771564
    constructor Create;//00771504
  public
    FLineType:TLineType;//f20
    FLineFunc:Integer;//f24
    FCGroups:TCGRec;//f28
    FInpEvents:TFXEventSet;//fAA
    FOutEvents:TFXEventSet;//fAB
    FTreeNodeStr:string;//fAC
    FLineTypeStr:string;//fB0
    FLineFuncStr:string;//fB4
    FLineFunc2Str:string;//fB8
    FCGroupsStr:string;//fBC
    FCustomText:string;//fC0
    destructor Destroy(); virtual;//00771564
    //function v0:?; virtual;//v0//007716C8
    //procedure v4(?:?); virtual;//v4//00771588
    //procedure v8(?:?); virtual;//v8//0077164C
    //procedure vC(?:?); virtual;//vC//007715D0
    //procedure v10(?:?); virtual;//v10//00771628
    //procedure v14(?:?); virtual;//v14//0077168C
    //procedure v18(?:?); virtual;//v18//007716B0
    //procedure v1C(?:?); virtual;//v1C//0077154C
    //procedure v20(?:?); virtual;//v20//00771538
    //procedure v24(?:?); virtual;//v24//007716CC
    //procedure v28(?:?); virtual;//v28//00771524
    //procedure v2C(?:?); virtual;//v2C//007716EC
    //function v30:?; virtual;//v30//00771640
    //function v34:?; virtual;//v34//007716A4
    //function v38:?; virtual;//v38//007715CC
    //procedure v3C(?:?); virtual;//v3C//0077171C
  end;
  TDCIoUnit = class(TObject)
  published
    procedure GetIoLines(IO:TFXPIO; unitix:Integer);//007712CC
    destructor Destroy();//00770C44
    constructor Create;//00770C04
  public
    FIsIoUnit:Boolean;//f4
    FPanelIndx:Integer;//f8
    FUnitIndx:Integer;//fC
    FUnitType:Integer;//f10
    FNumInputs:Integer;//f14
    FNumOutputs:Integer;//f18
    FIOLines:TObjectList<FXDCData.TDCIoLine>;//f1C
    FTreeNodeStr:string;//f20
    FUnitIdStr:string;//f24
  end;
  TDCPanel = class(TObject)
  published
    destructor Destroy();//007707E4
    constructor Create;//00770794
  public
    FPanelIndx:Integer;//f4
    FPanelId:Integer;//f8
    FVisibles:?;//fC
    FLastLocal:Integer;//f10
    FNumInputs:Integer;//f14
    FNumOutputs:Integer;//f18
    FIoUnits:TObjectList<FXDCData.TDCIoUnit>;//f1C
    FLoops:TObjectList<FXDCData.TDCLoop>;//f20
    FTreeNodeStr:string;//f24
    FPanelIdStr:string;//f28
  end;
  TDCSystem = class(TObject)
  published
    procedure GetIOControls;//0076F704
    destructor Destroy();//0076F6D8
    constructor Create;//0076F698
  public
    FNumInputs:Integer;//f4
    FNumOutputs:Integer;//f8
    FPanels:TObjectList<FXDCData.TDCPanel>;//fC
  end;
  TDCCollection = class(TObject)
  published
    destructor Destroy();//00771760
    constructor Create;//00771720
  public
    FCtrlGroup:Integer;//f4
    FDelayTime:Integer;//f8
    CtrlObjects:TObjectList<FXDCData.TCtrlOutput>;//fC
  end;
  TDCCtrlObjects = class(TObject)
  published
    procedure CollectInputsOutputsOfCGroup(APanel:TDCPanel; CtrlGroup:Integer; CtrlGroupKind:TCtrlGroupKind);//00772E60
    procedure GetOutputsOfOutputCG(OutPanel:TDCPanel; OutCG:Integer);//00772C64
    procedure GetInputsOfOutputCG(OutPanel:TDCPanel; OutCG:Integer);//00772B04
    function IsAnyCtrlGroupVisible(InpAddr:TDCAddr; InpPanel:TDCPanel; OutPanel:TDCPanel):Boolean;//00771AA4
    function InputControlsCGroup(InpPanel:TDCPanel; InpAddr:TDCAddr; CGRoup:Integer):TCGroupSetting;//00771B28
    function InputControlsOutput(InpPanel:TDCPanel; InpAddr:TDCAddr; OutLine:TCtrlOutput):TActivationType;//00771BE4
    procedure GetOutputsOfInputCG(InpPanel:TDCPanel; InpCG:Integer);//0077286C
    procedure Clear;//00771990
    destructor Destroy();//00771914
    constructor Create;//00771840
    procedure GetInputsOfInputCG(InpPanel:TDCPanel; InpCG:Integer);//00772798
    procedure CollectInputsOfSingleOutput(OutPanel:TDCPanel; OutAddr:TCtrlOutput);//00771F58
    procedure CollectOutputsOfSingleInput(InpPanel:TDCPanel; InpAddr:TDCAddr);//00772120
  public
    InpCollection:TDCCollection;//f4
    OutCollection:TDCCollection;//f8
    OutImmediate:TDCCollection;//fC
    OutDelayedT1:TDCCollection;//f10
    OutDelayedC1:TDCCollection;//f14
    OutDelayedC2:TDCCollection;//f18
    OutDelayedC3:TDCCollection;//f1C
    OutDelayedC4:TDCCollection;//f20
    OutDelayedC5:TDCCollection;//f24
    OutDelayedC6:TDCCollection;//f28
    OutDelayedC7:TDCCollection;//f2C
  end;
  TArray<FXDCData.TDCAddr> = array of TDCAddr;
//elSize = 4;
  TEnumerator<FXDCData.TDCAddr> = class(TObject)
  published
    function TDCAddr>.MoveNext:Boolean;//00773004
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXDCData.TDCAddr> = class(TObject)
  published
    //procedure TDCAddr>.ToArray(?:?);//00772F50
    function TDCAddr>.GetEnumerator:TEnumerator<FXDCData.TDCAddr>;//00772F48
    destructor TDCAddr>.Destroy();//00772F24
  public
    destructor TDCAddr>.Destroy(); virtual;//00772F24
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TDCAddr>.ToArray(?:?); virtual;//v4//00772F50
  end;
  TList<FXDCData.TDCAddr>.arrayofT = array of TDCAddr;
//elSize = 4;
  TCollectionNotifyEvent<FXDCData.TDCAddr> = procedure(Sender:TObject; const Item:TDCAddr; Action:TCollectionNotification) of object;;
  TList<FXDCData.TDCAddr>.TEnumerator = class(TEnumerator<FXDCData.TDCAddr>)
  published
    function TDCAddr>.TEnumerator.MoveNext:Boolean;//007732EC
    constructor sub_007732A8(AList:TList<FXDCData.TDCAddr>);//007732A8
  public
    FList:TList<FXDCData.TDCAddr>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00773298
    procedure v4; virtual;//v4//007732A0
  end;
  TList<FXDCData.TDCAddr> = class(TEnumerable<FXDCData.TDCAddr>)
  published
    procedure TDCAddr>.Add(Value:TDCAddr);//00773248
    //procedure TDCAddr>.Error(Msg:string; Data:NativeInt; ?:?);//00773210
    procedure TDCAddr>.GetEnumerator;//0077326C
    //procedure TDCAddr>.ToArray(?:?);//00773258
    constructor sub_00773114(AComparer:IComparer<FXDCData.TDCAddr>);//00773114
    constructor sub_0077309C;//0077309C
    destructor TDCAddr>.Destroy();//007731C4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXDCData.TDCAddr>.arrayofT;//f20
    FComparer:IComparer<FXDCData.TDCAddr>;//f24
    FOnNotify:TCollectionNotifyEvent<FXDCData.TDCAddr>;//f28
    destructor TDCAddr>.Destroy(); virtual;//007731C4
    procedure v0; virtual;//v0//0077307C
    //procedure TDCAddr>.ToArray(?:?); virtual;//v4//00773258
    //procedure v8(?:?); virtual;//v8//00773084
    //procedure TDCAddr>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00773210
  end;
  TObjectList<FXDCData.TDCAddr> = class(TList<FXDCData.TDCAddr>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00773338(AOwnsObjects:Boolean);//00773338
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//0077330C
  end;
  TArray<FXDCData.TDCIoLine> = array of TDCIoLine;
//elSize = 4;
  TEnumerator<FXDCData.TDCIoLine> = class(TObject)
  published
    function TDCIoLine>.MoveNext:Boolean;//0077345C
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXDCData.TDCIoLine> = class(TObject)
  published
    //procedure TDCIoLine>.ToArray(?:?);//007733A8
    function TDCIoLine>.GetEnumerator:TEnumerator<FXDCData.TDCIoLine>;//007733A0
    destructor TDCIoLine>.Destroy();//0077337C
  public
    destructor TDCIoLine>.Destroy(); virtual;//0077337C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TDCIoLine>.ToArray(?:?); virtual;//v4//007733A8
  end;
  TList<FXDCData.TDCIoLine>.arrayofT = array of TDCIoLine;
//elSize = 4;
  TCollectionNotifyEvent<FXDCData.TDCIoLine> = procedure(Sender:TObject; const Item:TDCIoLine; Action:TCollectionNotification) of object;;
  TList<FXDCData.TDCIoLine>.TEnumerator = class(TEnumerator<FXDCData.TDCIoLine>)
  published
    function TDCIoLine>.TEnumerator.MoveNext:Boolean;//00773744
    constructor sub_00773700(AList:TList<FXDCData.TDCIoLine>);//00773700
  public
    FList:TList<FXDCData.TDCIoLine>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//007736F0
    procedure v4; virtual;//v4//007736F8
  end;
  TList<FXDCData.TDCIoLine> = class(TEnumerable<FXDCData.TDCIoLine>)
  published
    procedure TDCIoLine>.Add(Value:TDCIoLine);//007736A0
    //procedure TDCIoLine>.Error(Msg:string; Data:NativeInt; ?:?);//00773668
    procedure TDCIoLine>.GetEnumerator;//007736C4
    //procedure TDCIoLine>.ToArray(?:?);//007736B0
    constructor sub_0077356C(AComparer:IComparer<FXDCData.TDCIoLine>);//0077356C
    constructor sub_007734F4;//007734F4
    destructor TDCIoLine>.Destroy();//0077361C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXDCData.TDCIoLine>.arrayofT;//f20
    FComparer:IComparer<FXDCData.TDCIoLine>;//f24
    FOnNotify:TCollectionNotifyEvent<FXDCData.TDCIoLine>;//f28
    destructor TDCIoLine>.Destroy(); virtual;//0077361C
    procedure v0; virtual;//v0//007734D4
    //procedure TDCIoLine>.ToArray(?:?); virtual;//v4//007736B0
    //procedure v8(?:?); virtual;//v8//007734DC
    //procedure TDCIoLine>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00773668
  end;
  TObjectList<FXDCData.TDCIoLine> = class(TList<FXDCData.TDCIoLine>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00773790(AOwnsObjects:Boolean);//00773790
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//00773764
  end;
  TArray<FXDCData.TDCIoUnit> = array of TDCIoUnit;
//elSize = 4;
  TEnumerator<FXDCData.TDCIoUnit> = class(TObject)
  published
    function TDCIoUnit>.MoveNext:Boolean;//007738B4
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXDCData.TDCIoUnit> = class(TObject)
  published
    //procedure TDCIoUnit>.ToArray(?:?);//00773800
    function TDCIoUnit>.GetEnumerator:TEnumerator<FXDCData.TDCIoUnit>;//007737F8
    destructor TDCIoUnit>.Destroy();//007737D4
  public
    destructor TDCIoUnit>.Destroy(); virtual;//007737D4
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TDCIoUnit>.ToArray(?:?); virtual;//v4//00773800
  end;
  TList<FXDCData.TDCIoUnit>.arrayofT = array of TDCIoUnit;
//elSize = 4;
  TCollectionNotifyEvent<FXDCData.TDCIoUnit> = procedure(Sender:TObject; const Item:TDCIoUnit; Action:TCollectionNotification) of object;;
  TList<FXDCData.TDCIoUnit>.TEnumerator = class(TEnumerator<FXDCData.TDCIoUnit>)
  published
    function TDCIoUnit>.TEnumerator.MoveNext:Boolean;//00773B9C
    constructor sub_00773B58(AList:TList<FXDCData.TDCIoUnit>);//00773B58
  public
    FList:TList<FXDCData.TDCIoUnit>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00773B48
    procedure v4; virtual;//v4//00773B50
  end;
  TList<FXDCData.TDCIoUnit> = class(TEnumerable<FXDCData.TDCIoUnit>)
  published
    procedure TDCIoUnit>.Add(Value:TDCIoUnit);//00773AF8
    //procedure TDCIoUnit>.Error(Msg:string; Data:NativeInt; ?:?);//00773AC0
    procedure TDCIoUnit>.GetEnumerator;//00773B1C
    //procedure TDCIoUnit>.ToArray(?:?);//00773B08
    constructor sub_007739C4(AComparer:IComparer<FXDCData.TDCIoUnit>);//007739C4
    constructor sub_0077394C;//0077394C
    destructor TDCIoUnit>.Destroy();//00773A74
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXDCData.TDCIoUnit>.arrayofT;//f20
    FComparer:IComparer<FXDCData.TDCIoUnit>;//f24
    FOnNotify:TCollectionNotifyEvent<FXDCData.TDCIoUnit>;//f28
    destructor TDCIoUnit>.Destroy(); virtual;//00773A74
    procedure v0; virtual;//v0//0077392C
    //procedure TDCIoUnit>.ToArray(?:?); virtual;//v4//00773B08
    //procedure v8(?:?); virtual;//v8//00773934
    //procedure TDCIoUnit>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00773AC0
  end;
  TObjectList<FXDCData.TDCIoUnit> = class(TList<FXDCData.TDCIoUnit>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00773BE8(AOwnsObjects:Boolean);//00773BE8
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//00773BBC
  end;
  TArray<FXDCData.TDCLoop> = array of TDCLoop;
//elSize = 4;
  TEnumerator<FXDCData.TDCLoop> = class(TObject)
  published
    function TDCLoop>.MoveNext:Boolean;//00773D0C
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXDCData.TDCLoop> = class(TObject)
  published
    //procedure TDCLoop>.ToArray(?:?);//00773C58
    function TDCLoop>.GetEnumerator:TEnumerator<FXDCData.TDCLoop>;//00773C50
    destructor TDCLoop>.Destroy();//00773C2C
  public
    destructor TDCLoop>.Destroy(); virtual;//00773C2C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TDCLoop>.ToArray(?:?); virtual;//v4//00773C58
  end;
  TList<FXDCData.TDCLoop>.arrayofT = array of TDCLoop;
//elSize = 4;
  TCollectionNotifyEvent<FXDCData.TDCLoop> = procedure(Sender:TObject; const Item:TDCLoop; Action:TCollectionNotification) of object;;
  TList<FXDCData.TDCLoop>.TEnumerator = class(TEnumerator<FXDCData.TDCLoop>)
  published
    function TDCLoop>.TEnumerator.MoveNext:Boolean;//00773FF4
    constructor sub_00773FB0(AList:TList<FXDCData.TDCLoop>);//00773FB0
  public
    FList:TList<FXDCData.TDCLoop>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00773FA0
    procedure v4; virtual;//v4//00773FA8
  end;
  TList<FXDCData.TDCLoop> = class(TEnumerable<FXDCData.TDCLoop>)
  published
    procedure TDCLoop>.Add(Value:TDCLoop);//00773F50
    //procedure TDCLoop>.Error(Msg:string; Data:NativeInt; ?:?);//00773F18
    procedure TDCLoop>.GetEnumerator;//00773F74
    //procedure TDCLoop>.ToArray(?:?);//00773F60
    constructor sub_00773E1C(AComparer:IComparer<FXDCData.TDCLoop>);//00773E1C
    constructor sub_00773DA4;//00773DA4
    destructor TDCLoop>.Destroy();//00773ECC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXDCData.TDCLoop>.arrayofT;//f20
    FComparer:IComparer<FXDCData.TDCLoop>;//f24
    FOnNotify:TCollectionNotifyEvent<FXDCData.TDCLoop>;//f28
    destructor TDCLoop>.Destroy(); virtual;//00773ECC
    procedure v0; virtual;//v0//00773D84
    //procedure TDCLoop>.ToArray(?:?); virtual;//v4//00773F60
    //procedure v8(?:?); virtual;//v8//00773D8C
    //procedure TDCLoop>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00773F18
  end;
  TObjectList<FXDCData.TDCLoop> = class(TList<FXDCData.TDCLoop>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00774040(AOwnsObjects:Boolean);//00774040
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//00774014
  end;
  TArray<FXDCData.TDCPanel> = array of TDCPanel;
//elSize = 4;
  TEnumerator<FXDCData.TDCPanel> = class(TObject)
  published
    function TDCPanel>.MoveNext:Boolean;//00774164
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXDCData.TDCPanel> = class(TObject)
  published
    //procedure TDCPanel>.ToArray(?:?);//007740B0
    function TDCPanel>.GetEnumerator:TEnumerator<FXDCData.TDCPanel>;//007740A8
    destructor TDCPanel>.Destroy();//00774084
  public
    destructor TDCPanel>.Destroy(); virtual;//00774084
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TDCPanel>.ToArray(?:?); virtual;//v4//007740B0
  end;
  TList<FXDCData.TDCPanel>.arrayofT = array of TDCPanel;
//elSize = 4;
  TCollectionNotifyEvent<FXDCData.TDCPanel> = procedure(Sender:TObject; const Item:TDCPanel; Action:TCollectionNotification) of object;;
  TList<FXDCData.TDCPanel>.TEnumerator = class(TEnumerator<FXDCData.TDCPanel>)
  published
    function TDCPanel>.TEnumerator.MoveNext:Boolean;//0077444C
    constructor sub_00774408(AList:TList<FXDCData.TDCPanel>);//00774408
  public
    FList:TList<FXDCData.TDCPanel>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//007743F8
    procedure v4; virtual;//v4//00774400
  end;
  TList<FXDCData.TDCPanel> = class(TEnumerable<FXDCData.TDCPanel>)
  published
    procedure TDCPanel>.Add(Value:TDCPanel);//007743A8
    //procedure TDCPanel>.Error(Msg:string; Data:NativeInt; ?:?);//00774370
    procedure TDCPanel>.GetEnumerator;//007743CC
    //procedure TDCPanel>.ToArray(?:?);//007743B8
    constructor sub_00774274(AComparer:IComparer<FXDCData.TDCPanel>);//00774274
    constructor sub_007741FC;//007741FC
    destructor TDCPanel>.Destroy();//00774324
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXDCData.TDCPanel>.arrayofT;//f20
    FComparer:IComparer<FXDCData.TDCPanel>;//f24
    FOnNotify:TCollectionNotifyEvent<FXDCData.TDCPanel>;//f28
    destructor TDCPanel>.Destroy(); virtual;//00774324
    procedure v0; virtual;//v0//007741DC
    //procedure TDCPanel>.ToArray(?:?); virtual;//v4//007743B8
    //procedure v8(?:?); virtual;//v8//007741E4
    //procedure TDCPanel>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00774370
  end;
  TObjectList<FXDCData.TDCPanel> = class(TList<FXDCData.TDCPanel>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00774498(AOwnsObjects:Boolean);//00774498
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//0077446C
  end;
  TArray<FXDCData.TCtrlOutput> = array of TCtrlOutput;
//elSize = 4;
  TEnumerator<FXDCData.TCtrlOutput> = class(TObject)
  published
    function TCtrlOutput>.MoveNext:Boolean;//007745BC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXDCData.TCtrlOutput> = class(TObject)
  published
    //procedure TCtrlOutput>.ToArray(?:?);//00774508
    function TCtrlOutput>.GetEnumerator:TEnumerator<FXDCData.TCtrlOutput>;//00774500
    destructor TCtrlOutput>.Destroy();//007744DC
  public
    destructor TCtrlOutput>.Destroy(); virtual;//007744DC
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TCtrlOutput>.ToArray(?:?); virtual;//v4//00774508
  end;
  TList<FXDCData.TCtrlOutput>.arrayofT = array of TCtrlOutput;
//elSize = 4;
  TCollectionNotifyEvent<FXDCData.TCtrlOutput> = procedure(Sender:TObject; const Item:TCtrlOutput; Action:TCollectionNotification) of object;;
  TList<FXDCData.TCtrlOutput>.TEnumerator = class(TEnumerator<FXDCData.TCtrlOutput>)
  published
    function TCtrlOutput>.TEnumerator.MoveNext:Boolean;//007748A4
    constructor sub_00774860(AList:TList<FXDCData.TCtrlOutput>);//00774860
  public
    FList:TList<FXDCData.TCtrlOutput>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00774850
    procedure v4; virtual;//v4//00774858
  end;
  TList<FXDCData.TCtrlOutput> = class(TEnumerable<FXDCData.TCtrlOutput>)
  published
    procedure TCtrlOutput>.Add(Value:TCtrlOutput);//00774800
    //procedure TCtrlOutput>.Error(Msg:string; Data:NativeInt; ?:?);//007747C8
    procedure TCtrlOutput>.GetEnumerator;//00774824
    //procedure TCtrlOutput>.ToArray(?:?);//00774810
    constructor sub_007746CC(AComparer:IComparer<FXDCData.TCtrlOutput>);//007746CC
    constructor sub_00774654;//00774654
    destructor TCtrlOutput>.Destroy();//0077477C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXDCData.TCtrlOutput>.arrayofT;//f20
    FComparer:IComparer<FXDCData.TCtrlOutput>;//f24
    FOnNotify:TCollectionNotifyEvent<FXDCData.TCtrlOutput>;//f28
    destructor TCtrlOutput>.Destroy(); virtual;//0077477C
    procedure v0; virtual;//v0//00774634
    //procedure TCtrlOutput>.ToArray(?:?); virtual;//v4//00774810
    //procedure v8(?:?); virtual;//v8//0077463C
    //procedure TCtrlOutput>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//007747C8
  end;
  TObjectList<FXDCData.TCtrlOutput> = class(TList<FXDCData.TCtrlOutput>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_007748F0(AOwnsObjects:Boolean);//007748F0
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//007748C4
  end;
    procedure sub_0075E938(?:TFileImportDlg; ?:TVarData);//0075E938
    procedure sub_00760394(?:TFileExportDlg; ?:TVarData);//00760394
    //procedure sub_00770894(?:?; ?:?);//00770894
    //procedure sub_00770928(?:?);//00770928
    //function sub_0077096C:?;//0077096C
    //procedure sub_007709D0(?:?);//007709D0
    //procedure sub_00770AC8(?:?);//00770AC8
    //procedure sub_00770ADC(?:?);//00770ADC
    //procedure sub_00770AF0(?:?);//00770AF0
    //procedure sub_00770B0C(?:?);//00770B0C
    //procedure sub_00770B5C(?:?);//00770B5C
    //function sub_00770B70:?;//00770B70
    //procedure sub_00770B78(?:?);//00770B78
    //function sub_00770B8C:?;//00770B8C
    //procedure sub_00770B94(?:?);//00770B94
    //procedure sub_00770BB4(?:?);//00770BB4
    //procedure sub_00770BE4(?:?);//00770BE4
    //procedure sub_00770BE8(?:?);//00770BE8
    //function sub_00770BFC:?;//00770BFC
    //procedure sub_00770C70(?:?; ?:PCCIRecord; ?:?);//00770C70
    //procedure sub_00770E74(?:?; ?:PCCORecord; ?:?);//00770E74
    //procedure sub_007710A0(?:?; ?:PADORecord; ?:?);//007710A0
    //procedure sub_00771524(?:?);//00771524
    //procedure sub_00771538(?:?);//00771538
    //procedure sub_0077154C(?:?);//0077154C
    //procedure sub_00771588(?:?);//00771588
    //function sub_007715CC:?;//007715CC
    //procedure sub_007715D0(?:?);//007715D0
    //procedure sub_00771628(?:?);//00771628
    //function sub_00771640:?;//00771640
    //procedure sub_0077164C(?:?);//0077164C
    //procedure sub_0077168C(?:?);//0077168C
    //function sub_007716A4:?;//007716A4
    //procedure sub_007716B0(?:?);//007716B0
    //function sub_007716C8:?;//007716C8
    //procedure sub_007716CC(?:?);//007716CC
    //procedure sub_007716EC(?:?);//007716EC
    //procedure sub_0077171C(?:?);//0077171C
    //procedure sub_0077178C(?:?; ?:?);//0077178C
    //procedure sub_007717D0(?:?; ?:?);//007717D0

implementation

{$R *.DFM}

//0075E3B8
procedure TFileImportDlg.btnBrowseClick(Sender:TObject);
begin
{*
 0075E3B8    push        ebp
 0075E3B9    mov         ebp,esp
 0075E3BB    push        0
 0075E3BD    push        ebx
 0075E3BE    mov         ebx,eax
 0075E3C0    xor         eax,eax
 0075E3C2    push        ebp
 0075E3C3    push        75E40F
 0075E3C8    push        dword ptr fs:[eax]
 0075E3CB    mov         dword ptr fs:[eax],esp
 0075E3CE    mov         eax,dword ptr [ebx+3CC];TFileImportDlg.OpenDialog1:TOpenDialog
 0075E3D4    mov         edx,dword ptr [eax]
 0075E3D6    call        dword ptr [edx+54];TCommonDialog.Execute
 0075E3D9    test        al,al
>0075E3DB    je          0075E3F9
 0075E3DD    lea         edx,[ebp-4]
 0075E3E0    mov         eax,dword ptr [ebx+3CC];TFileImportDlg.OpenDialog1:TOpenDialog
 0075E3E6    call        TOpenDialog.GetFileName
 0075E3EB    mov         edx,dword ptr [ebp-4]
 0075E3EE    mov         eax,dword ptr [ebx+3C4];TFileImportDlg.Edit1:TEdit
 0075E3F4    call        TControl.SetText
 0075E3F9    xor         eax,eax
 0075E3FB    pop         edx
 0075E3FC    pop         ecx
 0075E3FD    pop         ecx
 0075E3FE    mov         dword ptr fs:[eax],edx
 0075E401    push        75E416
 0075E406    lea         eax,[ebp-4]
 0075E409    call        @UStrClr
 0075E40E    ret
>0075E40F    jmp         @HandleFinally
>0075E414    jmp         0075E406
 0075E416    pop         ebx
 0075E417    pop         ecx
 0075E418    pop         ebp
 0075E419    ret
*}
end;

//0075E41C
procedure TFileImportDlg.btnOKClick(Sender:TObject);
begin
{*
 0075E41C    push        ebp
 0075E41D    mov         ebp,esp
 0075E41F    mov         ecx,11
 0075E424    push        0
 0075E426    push        0
 0075E428    dec         ecx
>0075E429    jne         0075E424
 0075E42B    push        ecx
 0075E42C    push        ebx
 0075E42D    push        esi
 0075E42E    push        edi
 0075E42F    mov         dword ptr [ebp-34],eax
 0075E432    xor         eax,eax
 0075E434    push        ebp
 0075E435    push        75E718
 0075E43A    push        dword ptr fs:[eax]
 0075E43D    mov         dword ptr fs:[eax],esp
 0075E440    xor         eax,eax
 0075E442    push        ebp
 0075E443    push        75E68F
 0075E448    push        dword ptr fs:[eax]
 0075E44B    mov         dword ptr fs:[eax],esp
 0075E44E    xor         eax,eax
 0075E450    push        ebp
 0075E451    push        75E612
 0075E456    push        dword ptr fs:[eax]
 0075E459    mov         dword ptr fs:[eax],esp
 0075E45C    lea         edx,[ebp-38]
 0075E45F    mov         eax,75E734;'Excel.Application'
 0075E464    call        CreateOleObject
 0075E469    mov         edx,dword ptr [ebp-38]
 0075E46C    lea         eax,[ebp-10]
 0075E46F    call        @VarFromDisp
 0075E474    push        0
 0075E476    push        75E758
 0075E47B    lea         eax,[ebp-10]
 0075E47E    push        eax
 0075E47F    push        0
 0075E481    call        @DispInvoke
 0075E486    add         esp,10
 0075E489    xor         eax,eax
 0075E48B    push        ebp
 0075E48C    push        75E58F
 0075E491    push        dword ptr fs:[eax]
 0075E494    mov         dword ptr fs:[eax],esp
 0075E497    lea         edx,[ebp-4C]
 0075E49A    mov         eax,dword ptr [ebp-34]
 0075E49D    mov         eax,dword ptr [eax+3C4];TFileImportDlg.Edit1:TEdit
 0075E4A3    call        TControl.GetText
 0075E4A8    mov         eax,dword ptr [ebp-4C]
 0075E4AB    push        eax
 0075E4AC    push        75E764
 0075E4B1    push        75E770
 0075E4B6    lea         eax,[ebp-10]
 0075E4B9    push        eax
 0075E4BA    lea         eax,[ebp-5C]
 0075E4BD    push        eax
 0075E4BE    call        @DispInvoke
 0075E4C3    add         esp,0C
 0075E4C6    lea         eax,[ebp-5C]
 0075E4C9    push        eax
 0075E4CA    lea         eax,[ebp-48]
 0075E4CD    push        eax
 0075E4CE    call        @DispInvoke
 0075E4D3    add         esp,10
 0075E4D6    lea         edx,[ebp-48]
 0075E4D9    lea         eax,[ebp-20]
 0075E4DC    call        @OleVarFromVar
 0075E4E1    xor         eax,eax
 0075E4E3    push        ebp
 0075E4E4    push        75E53B
 0075E4E9    push        dword ptr fs:[eax]
 0075E4EC    mov         dword ptr fs:[eax],esp
 0075E4EF    push        1
 0075E4F1    push        75E780
 0075E4F6    push        75E78C
 0075E4FB    lea         eax,[ebp-20]
 0075E4FE    push        eax
 0075E4FF    lea         eax,[ebp-7C]
 0075E502    push        eax
 0075E503    call        @DispInvoke
 0075E508    add         esp,0C
 0075E50B    lea         eax,[ebp-7C]
 0075E50E    push        eax
 0075E50F    lea         eax,[ebp-6C]
 0075E512    push        eax
 0075E513    call        @DispInvoke
 0075E518    add         esp,10
 0075E51B    lea         edx,[ebp-6C]
 0075E51E    lea         eax,[ebp-30]
 0075E521    call        @OleVarFromVar
 0075E526    lea         edx,[ebp-30]
 0075E529    mov         eax,dword ptr [ebp-34]
 0075E52C    call        0075E938
 0075E531    xor         eax,eax
 0075E533    pop         edx
 0075E534    pop         ecx
 0075E535    pop         ecx
 0075E536    mov         dword ptr fs:[eax],edx
>0075E539    jmp         0075E585
>0075E53B    jmp         @HandleOnException
 0075E540    dd          1
 0075E544    dd          004174D0;Exception
 0075E548    dd          0075E54C
 0075E54C    mov         ebx,eax
 0075E54E    push        0
 0075E550    push        dword ptr [ebx+4];Exception.FMessage:string
 0075E553    push        75E7A8;''
 0075E558    push        75E7B8;'
'
 0075E55D    push        75E7C8;'(Error importing data)'
 0075E562    lea         eax,[ebp-80]
 0075E565    mov         edx,4
 0075E56A    call        @UStrCatN
 0075E56F    mov         eax,dword ptr [ebp-80]
 0075E572    movzx       ecx,word ptr ds:[75E7F8];0x4 gvar_0075E7F8
 0075E579    mov         dl,1
 0075E57B    call        MessageDlg
 0075E580    call        @DoneExcept
 0075E585    xor         eax,eax
 0075E587    pop         edx
 0075E588    pop         ecx
 0075E589    pop         ecx
 0075E58A    mov         dword ptr fs:[eax],edx
>0075E58D    jmp         0075E608
>0075E58F    jmp         @HandleOnException
 0075E594    dd          1
 0075E598    dd          004174D0;Exception
 0075E59C    dd          0075E5A0
 0075E5A0    mov         ebx,eax
 0075E5A2    push        0
 0075E5A4    push        dword ptr [ebx+4];Exception.FMessage:string
 0075E5A7    push        75E7A8;''
 0075E5AC    push        75E7B8;'
'
 0075E5B1    push        75E808;'(File '
 0075E5B6    lea         edx,[ebp-88]
 0075E5BC    mov         eax,dword ptr [ebp-34]
 0075E5BF    mov         eax,dword ptr [eax+3C4];TFileImportDlg.Edit1:TEdit
 0075E5C5    call        TControl.GetText
 0075E5CA    push        dword ptr [ebp-88]
 0075E5D0    push        75E7A8;''
 0075E5D5    push        75E7B8;'
'
 0075E5DA    push        75E824;'could not be opened)'
 0075E5DF    lea         eax,[ebp-84]
 0075E5E5    mov         edx,8
 0075E5EA    call        @UStrCatN
 0075E5EF    mov         eax,dword ptr [ebp-84]
 0075E5F5    movzx       ecx,word ptr ds:[75E7F8];0x4 gvar_0075E7F8
 0075E5FC    mov         dl,1
 0075E5FE    call        MessageDlg
 0075E603    call        @DoneExcept
 0075E608    xor         eax,eax
 0075E60A    pop         edx
 0075E60B    pop         ecx
 0075E60C    pop         ecx
 0075E60D    mov         dword ptr fs:[eax],edx
>0075E610    jmp         0075E662
>0075E612    jmp         @HandleOnException
 0075E617    dd          1
 0075E61B    dd          004174D0;Exception
 0075E61F    dd          0075E623
 0075E623    mov         ebx,eax
 0075E625    push        0
 0075E627    push        dword ptr [ebx+4];Exception.FMessage:string
 0075E62A    push        75E7A8;''
 0075E62F    push        75E7B8;'
'
 0075E634    push        75E85C;'(Excel not found)'
 0075E639    lea         eax,[ebp-8C]
 0075E63F    mov         edx,4
 0075E644    call        @UStrCatN
 0075E649    mov         eax,dword ptr [ebp-8C]
 0075E64F    movzx       ecx,word ptr ds:[75E7F8];0x4 gvar_0075E7F8
 0075E656    mov         dl,1
 0075E658    call        MessageDlg
 0075E65D    call        @DoneExcept
 0075E662    xor         eax,eax
 0075E664    pop         edx
 0075E665    pop         ecx
 0075E666    pop         ecx
 0075E667    mov         dword ptr fs:[eax],edx
 0075E66A    push        75E696
 0075E66F    lea         eax,[ebp-10]
 0075E672    call        VarIsEmpty
 0075E677    test        al,al
>0075E679    jne         0075E68E
 0075E67B    push        75E880
 0075E680    lea         eax,[ebp-10]
 0075E683    push        eax
 0075E684    push        0
 0075E686    call        @DispInvoke
 0075E68B    add         esp,0C
 0075E68E    ret
>0075E68F    jmp         @HandleFinally
>0075E694    jmp         0075E66F
 0075E696    mov         eax,dword ptr [ebp-34]
 0075E699    mov         eax,dword ptr [eax+3D8];TFileImportDlg.ProgressBar1:TProgressBar
 0075E69F    xor         edx,edx
 0075E6A1    call        TProgressBar.SetPosition
 0075E6A6    xor         eax,eax
 0075E6A8    pop         edx
 0075E6A9    pop         ecx
 0075E6AA    pop         ecx
 0075E6AB    mov         dword ptr fs:[eax],edx
 0075E6AE    push        75E71F
 0075E6B3    lea         eax,[ebp-8C]
 0075E6B9    call        @UStrClr
 0075E6BE    lea         eax,[ebp-88]
 0075E6C4    call        @UStrClr
 0075E6C9    lea         eax,[ebp-84]
 0075E6CF    mov         edx,2
 0075E6D4    call        @UStrArrayClr
 0075E6D9    lea         eax,[ebp-7C]
 0075E6DC    mov         edx,dword ptr ds:[4012F0];Variant
 0075E6E2    mov         ecx,3
 0075E6E7    call        @FinalizeArray
 0075E6EC    lea         eax,[ebp-4C]
 0075E6EF    call        @UStrClr
 0075E6F4    lea         eax,[ebp-48]
 0075E6F7    call        @VarClr
 0075E6FC    lea         eax,[ebp-38]
 0075E6FF    call        @IntfClear
 0075E704    lea         eax,[ebp-30]
 0075E707    mov         edx,dword ptr ds:[401300];OleVariant
 0075E70D    mov         ecx,3
 0075E712    call        @FinalizeArray
 0075E717    ret
>0075E718    jmp         @HandleFinally
>0075E71D    jmp         0075E6B3
 0075E71F    pop         edi
 0075E720    pop         esi
 0075E721    pop         ebx
 0075E722    mov         esp,ebp
 0075E724    pop         ebp
 0075E725    ret
*}
end;

//0075E888
procedure TFileImportDlg.FormCreate(Sender:TObject);
begin
{*
 0075E888    push        ebp
 0075E889    mov         ebp,esp
 0075E88B    add         esp,0FFFFFFF0
 0075E88E    push        ebx
 0075E88F    xor         ecx,ecx
 0075E891    mov         dword ptr [ebp-4],ecx
 0075E894    mov         dword ptr [ebp-10],ecx
 0075E897    mov         ebx,eax
 0075E899    xor         eax,eax
 0075E89B    push        ebp
 0075E89C    push        75E8FB
 0075E8A1    push        dword ptr fs:[eax]
 0075E8A4    mov         dword ptr fs:[eax],esp
 0075E8A7    lea         eax,[ebp-4]
 0075E8AA    push        eax
 0075E8AB    lea         edx,[ebp-10]
 0075E8AE    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0075E8B3    mov         eax,dword ptr [eax]
 0075E8B5    call        005DDC74
 0075E8BA    mov         eax,dword ptr [ebp-10]
 0075E8BD    mov         dword ptr [ebp-0C],eax
 0075E8C0    mov         byte ptr [ebp-8],11
 0075E8C4    lea         edx,[ebp-0C]
 0075E8C7    xor         ecx,ecx
 0075E8C9    mov         eax,75E914;'File Import (%s)'
 0075E8CE    call        Format
 0075E8D3    mov         edx,dword ptr [ebp-4]
 0075E8D6    mov         eax,ebx
 0075E8D8    call        TControl.SetText
 0075E8DD    xor         eax,eax
 0075E8DF    pop         edx
 0075E8E0    pop         ecx
 0075E8E1    pop         ecx
 0075E8E2    mov         dword ptr fs:[eax],edx
 0075E8E5    push        75E902
 0075E8EA    lea         eax,[ebp-10]
 0075E8ED    call        @UStrClr
 0075E8F2    lea         eax,[ebp-4]
 0075E8F5    call        @UStrClr
 0075E8FA    ret
>0075E8FB    jmp         @HandleFinally
>0075E900    jmp         0075E8EA
 0075E902    pop         ebx
 0075E903    mov         esp,ebp
 0075E905    pop         ebp
 0075E906    ret
*}
end;

//0075E938
procedure sub_0075E938(?:TFileImportDlg; ?:TVarData);
begin
{*
 0075E938    push        ebp
 0075E939    mov         ebp,esp
 0075E93B    mov         ecx,57
 0075E940    push        0
 0075E942    push        0
 0075E944    dec         ecx
>0075E945    jne         0075E940
 0075E947    push        ecx
 0075E948    push        ebx
 0075E949    push        esi
 0075E94A    push        edi
 0075E94B    mov         dword ptr [ebp-1C],edx
 0075E94E    mov         edi,eax
 0075E950    xor         eax,eax
 0075E952    push        ebp
 0075E953    push        75F3FE
 0075E958    push        dword ptr fs:[eax]
 0075E95B    mov         dword ptr fs:[eax],esp
 0075E95E    push        75F40C
 0075E963    mov         eax,dword ptr [ebp-1C]
 0075E966    push        eax
 0075E967    push        0
 0075E969    call        @DispInvoke
 0075E96E    add         esp,0C
 0075E971    push        75F418
 0075E976    push        2
 0075E978    push        1
 0075E97A    push        75F424
 0075E97F    mov         eax,dword ptr [ebp-1C]
 0075E982    push        eax
 0075E983    lea         eax,[ebp-80]
 0075E986    push        eax
 0075E987    call        @DispInvoke
 0075E98C    add         esp,14
 0075E98F    lea         eax,[ebp-80]
 0075E992    push        eax
 0075E993    lea         eax,[ebp-70]
 0075E996    push        eax
 0075E997    call        @DispInvoke
 0075E99C    add         esp,0C
 0075E99F    lea         eax,[ebp-70]
 0075E9A2    call        @VarToInteger
 0075E9A7    mov         esi,eax
 0075E9A9    push        75F418
 0075E9AE    push        2
 0075E9B0    push        2
 0075E9B2    push        75F424
 0075E9B7    mov         eax,dword ptr [ebp-1C]
 0075E9BA    push        eax
 0075E9BB    lea         eax,[ebp-0A0]
 0075E9C1    push        eax
 0075E9C2    call        @DispInvoke
 0075E9C7    add         esp,14
 0075E9CA    lea         eax,[ebp-0A0]
 0075E9D0    push        eax
 0075E9D1    lea         eax,[ebp-90]
 0075E9D7    push        eax
 0075E9D8    call        @DispInvoke
 0075E9DD    add         esp,0C
 0075E9E0    lea         eax,[ebp-90]
 0075E9E6    call        @VarToInteger
 0075E9EB    mov         ebx,eax
 0075E9ED    push        75F430
 0075E9F2    push        1
 0075E9F4    push        7
 0075E9F6    push        75F424
 0075E9FB    mov         eax,dword ptr [ebp-1C]
 0075E9FE    push        eax
 0075E9FF    lea         eax,[ebp-0C0]
 0075EA05    push        eax
 0075EA06    call        @DispInvoke
 0075EA0B    add         esp,14
 0075EA0E    lea         eax,[ebp-0C0]
 0075EA14    push        eax
 0075EA15    lea         eax,[ebp-0B0]
 0075EA1B    push        eax
 0075EA1C    call        @DispInvoke
 0075EA21    add         esp,0C
 0075EA24    lea         eax,[ebp-0B0]
 0075EA2A    call        @VarToInteger
 0075EA2F    mov         dword ptr [ebp-24],eax
 0075EA32    push        75F430
 0075EA37    push        3
 0075EA39    push        7
 0075EA3B    push        75F424
 0075EA40    mov         eax,dword ptr [ebp-1C]
 0075EA43    push        eax
 0075EA44    lea         eax,[ebp-0E0]
 0075EA4A    push        eax
 0075EA4B    call        @DispInvoke
 0075EA50    add         esp,14
 0075EA53    lea         eax,[ebp-0E0]
 0075EA59    push        eax
 0075EA5A    lea         eax,[ebp-0D0]
 0075EA60    push        eax
 0075EA61    call        @DispInvoke
 0075EA66    add         esp,0C
 0075EA69    lea         eax,[ebp-0D0]
 0075EA6F    call        @VarToInteger
 0075EA74    mov         dword ptr [ebp-34],eax
 0075EA77    push        75F430
 0075EA7C    push        1
 0075EA7E    push        9
 0075EA80    push        75F424
 0075EA85    mov         eax,dword ptr [ebp-1C]
 0075EA88    push        eax
 0075EA89    lea         eax,[ebp-100]
 0075EA8F    push        eax
 0075EA90    call        @DispInvoke
 0075EA95    add         esp,14
 0075EA98    lea         eax,[ebp-100]
 0075EA9E    push        eax
 0075EA9F    lea         eax,[ebp-0F0]
 0075EAA5    push        eax
 0075EAA6    call        @DispInvoke
 0075EAAB    add         esp,0C
 0075EAAE    lea         eax,[ebp-0F0]
 0075EAB4    call        @VarToInteger
 0075EAB9    mov         dword ptr [ebp-20],eax
 0075EABC    push        75F430
 0075EAC1    push        3
 0075EAC3    push        9
 0075EAC5    push        75F424
 0075EACA    mov         eax,dword ptr [ebp-1C]
 0075EACD    push        eax
 0075EACE    lea         eax,[ebp-120]
 0075EAD4    push        eax
 0075EAD5    call        @DispInvoke
 0075EADA    add         esp,14
 0075EADD    lea         eax,[ebp-120]
 0075EAE3    push        eax
 0075EAE4    lea         eax,[ebp-110]
 0075EAEA    push        eax
 0075EAEB    call        @DispInvoke
 0075EAF0    add         esp,0C
 0075EAF3    lea         eax,[ebp-110]
 0075EAF9    call        @VarToInteger
 0075EAFE    mov         dword ptr [ebp-30],eax
 0075EB01    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075EB06    mov         eax,dword ptr [eax]
 0075EB08    mov         eax,dword ptr [eax+0C]
 0075EB0B    call        006A3430
 0075EB10    movzx       eax,al
 0075EB13    mov         dword ptr [ebp-28],eax
 0075EB16    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075EB1B    mov         eax,dword ptr [eax]
 0075EB1D    mov         eax,dword ptr [eax+0C]
 0075EB20    call        006A344C
 0075EB25    movzx       eax,al
 0075EB28    mov         dword ptr [ebp-2C],eax
 0075EB2B    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075EB30    mov         eax,dword ptr [eax]
 0075EB32    mov         eax,dword ptr [eax+0C]
 0075EB35    movzx       edx,word ptr [eax+123]
 0075EB3C    mov         dword ptr [ebp-38],edx
 0075EB3F    movzx       eax,byte ptr [eax+125]
 0075EB46    mov         dword ptr [ebp-3C],eax
 0075EB49    imul        eax,esi,100
>0075EB4F    jno         0075EB56
 0075EB51    call        @IntOver
 0075EB56    add         ebx,eax
>0075EB58    jno         0075EB5F
 0075EB5A    call        @IntOver
 0075EB5F    cmp         ebx,200
>0075EB65    jle         0075EB85
 0075EB67    push        0
 0075EB69    movzx       ecx,word ptr ds:[75F43C];0x3 gvar_0075F43C
 0075EB70    xor         edx,edx
 0075EB72    mov         eax,75F44C;'Warning! The Excel file appears to be made with a newer version.
Data might...
 0075EB77    call        MessageDlg
 0075EB7C    cmp         eax,7
>0075EB7F    je          0075F379
 0075EB85    mov         eax,dword ptr [ebp-20]
 0075EB88    cmp         eax,dword ptr [ebp-28]
>0075EB8B    jne         0075EB95
 0075EB8D    mov         eax,dword ptr [ebp-24]
 0075EB90    cmp         eax,dword ptr [ebp-2C]
>0075EB93    je          0075EBB3
 0075EB95    push        0
 0075EB97    movzx       ecx,word ptr ds:[75F43C];0x3 gvar_0075F43C
 0075EB9E    xor         edx,edx
 0075EBA0    mov         eax,75F560;'Warning! The indicated first loop or number of loops in the Excel file do no...
 0075EBA5    call        MessageDlg
 0075EBAA    cmp         eax,7
>0075EBAD    je          0075F379
 0075EBB3    mov         eax,dword ptr [ebp-30]
 0075EBB6    cmp         eax,dword ptr [ebp-38]
>0075EBB9    jne         0075EBC3
 0075EBBB    mov         eax,dword ptr [ebp-34]
 0075EBBE    cmp         eax,dword ptr [ebp-3C]
>0075EBC1    je          0075EBE1
 0075EBC3    push        0
 0075EBC5    movzx       ecx,word ptr ds:[75F43C];0x3 gvar_0075F43C
 0075EBCC    xor         edx,edx
 0075EBCE    mov         eax,75F6D0;'Warning! The indicated first zone or number of zones in the Excel file do no...
 0075EBD3    call        MessageDlg
 0075EBD8    cmp         eax,7
>0075EBDB    je          0075F379
 0075EBE1    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075EBE6    mov         eax,dword ptr [eax]
 0075EBE8    mov         eax,dword ptr [eax+0C]
 0075EBEB    call        006A350C
 0075EBF0    mov         edx,eax
 0075EBF2    mov         eax,dword ptr [edi+3D8];TFileImportDlg.ProgressBar1:TProgressBar
 0075EBF8    call        TProgressBar.SetMax
 0075EBFD    mov         eax,dword ptr [ebp-20]
 0075EC00    dec         eax
 0075EC01    sub         eax,0F8
>0075EC06    jb          0075EC0F
 0075EC08    mov         dword ptr [ebp-20],1
 0075EC0F    cmp         dword ptr [ebp-30],1
>0075EC13    jl          0075EC1E
 0075EC15    cmp         dword ptr [ebp-30],270F
>0075EC1C    jle         0075EC25
 0075EC1E    mov         dword ptr [ebp-30],1
 0075EC25    xor         eax,eax
 0075EC27    mov         dword ptr [ebp-44],eax
 0075EC2A    xor         eax,eax
 0075EC2C    mov         dword ptr [ebp-48],eax
 0075EC2F    mov         esi,0B
 0075EC34    mov         byte ptr [ebp-3D],0
 0075EC38    push        75F430
 0075EC3D    lea         edx,[ebp-148]
 0075EC43    mov         eax,esi
 0075EC45    call        IntToStr
 0075EC4A    mov         ecx,dword ptr [ebp-148]
 0075EC50    lea         eax,[ebp-144]
 0075EC56    mov         edx,75F840;'D'
 0075EC5B    call        @UStrCat3
 0075EC60    mov         eax,dword ptr [ebp-144]
 0075EC66    push        eax
 0075EC67    lea         edx,[ebp-150]
 0075EC6D    mov         eax,esi
 0075EC6F    call        IntToStr
 0075EC74    mov         ecx,dword ptr [ebp-150]
 0075EC7A    lea         eax,[ebp-14C]
 0075EC80    mov         edx,75F850;'A'
 0075EC85    call        @UStrCat3
 0075EC8A    mov         eax,dword ptr [ebp-14C]
 0075EC90    push        eax
 0075EC91    push        75F854
 0075EC96    push        75F860
 0075EC9B    mov         eax,dword ptr [ebp-1C]
 0075EC9E    push        eax
 0075EC9F    lea         eax,[ebp-160]
 0075ECA5    push        eax
 0075ECA6    call        @DispInvoke
 0075ECAB    add         esp,0C
 0075ECAE    lea         eax,[ebp-160]
 0075ECB4    push        eax
 0075ECB5    lea         eax,[ebp-140]
 0075ECBB    push        eax
 0075ECBC    call        @DispInvoke
 0075ECC1    add         esp,14
 0075ECC4    lea         eax,[ebp-140]
 0075ECCA    push        eax
 0075ECCB    lea         eax,[ebp-130]
 0075ECD1    push        eax
 0075ECD2    call        @DispInvoke
 0075ECD7    add         esp,0C
 0075ECDA    lea         edx,[ebp-130]
 0075ECE0    lea         eax,[ebp-18]
 0075ECE3    call        @OleVarFromVar
 0075ECE8    push        1
 0075ECEA    push        1
 0075ECEC    push        2
 0075ECEE    lea         eax,[ebp-18]
 0075ECF1    push        eax
 0075ECF2    lea         eax,[ebp-170]
 0075ECF8    push        eax
 0075ECF9    call        @VarArrayGet
 0075ECFE    add         esp,14
 0075ED01    lea         eax,[ebp-170]
 0075ED07    call        @VarToInteger
 0075ED0C    mov         ebx,eax
 0075ED0E    push        2
 0075ED10    push        1
 0075ED12    push        2
 0075ED14    lea         eax,[ebp-18]
 0075ED17    push        eax
 0075ED18    lea         eax,[ebp-180]
 0075ED1E    push        eax
 0075ED1F    call        @VarArrayGet
 0075ED24    add         esp,14
 0075ED27    lea         eax,[ebp-180]
 0075ED2D    call        @VarToInteger
 0075ED32    mov         dword ptr [ebp-4C],eax
 0075ED35    push        3
 0075ED37    push        1
 0075ED39    push        2
 0075ED3B    lea         eax,[ebp-18]
 0075ED3E    push        eax
 0075ED3F    lea         eax,[ebp-190]
 0075ED45    push        eax
 0075ED46    call        @VarArrayGet
 0075ED4B    add         esp,14
 0075ED4E    lea         eax,[ebp-190]
 0075ED54    call        @VarToInteger
 0075ED59    mov         dword ptr [ebp-50],eax
 0075ED5C    push        4
 0075ED5E    push        1
 0075ED60    push        2
 0075ED62    lea         eax,[ebp-18]
 0075ED65    push        eax
 0075ED66    lea         eax,[ebp-1A0]
 0075ED6C    push        eax
 0075ED6D    call        @VarArrayGet
 0075ED72    add         esp,14
 0075ED75    lea         edx,[ebp-1A0]
 0075ED7B    lea         eax,[ebp-4]
 0075ED7E    call        @VarToUStr
 0075ED83    push        75F878;'Importing '
 0075ED88    lea         edx,[ebp-1A8]
 0075ED8E    mov         eax,ebx
 0075ED90    call        IntToStr
 0075ED95    push        dword ptr [ebp-1A8]
 0075ED9B    push        75F89C;'.'
 0075EDA0    lea         edx,[ebp-1AC]
 0075EDA6    mov         eax,dword ptr [ebp-4C]
 0075EDA9    call        IntToStr
 0075EDAE    push        dword ptr [ebp-1AC]
 0075EDB4    lea         eax,[ebp-1A4]
 0075EDBA    mov         edx,4
 0075EDBF    call        @UStrCatN
 0075EDC4    mov         edx,dword ptr [ebp-1A4]
 0075EDCA    mov         eax,dword ptr [edi+3E4];TFileImportDlg.Label2:TLabel
 0075EDD0    call        TControl.SetText
 0075EDD5    mov         eax,dword ptr [edi+3E4];TFileImportDlg.Label2:TLabel
 0075EDDB    mov         edx,dword ptr [eax]
 0075EDDD    call        dword ptr [edx+0B4];TControl.Update
 0075EDE3    test        ebx,ebx
>0075EDE5    jle         0075F2E4
 0075EDEB    mov         eax,ebx
 0075EDED    sub         eax,dword ptr [ebp-20]
>0075EDF0    jno         0075EDF7
 0075EDF2    call        @IntOver
 0075EDF7    mov         dword ptr [ebp-58],eax
 0075EDFA    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0075EDFF    mov         eax,dword ptr [eax]
 0075EE01    mov         eax,dword ptr [eax+0C]
 0075EE04    mov         edx,dword ptr [ebp-58]
 0075EE07    call        TFXPPD.GetControllerLoopType
 0075EE0C    mov         dword ptr [ebp-54],eax
 0075EE0F    mov         eax,dword ptr [ebp-54]
 0075EE12    cmp         eax,6
>0075EE15    ja          0075EF24
 0075EE1B    jmp         dword ptr [eax*4+75EE22]
 0075EE1B    dd          0075EE3E
 0075EE1B    dd          0075EEA7
 0075EE1B    dd          0075EF02
 0075EE1B    dd          0075EEE0
 0075EE1B    dd          0075EE60
 0075EE1B    dd          0075EEE0
 0075EE1B    dd          0075EE60
 0075EE3E    xor         eax,eax
 0075EE40    mov         dword ptr [ebp-5C],eax
 0075EE43    xor         eax,eax
 0075EE45    mov         dword ptr [ebp-60],eax
 0075EE48    mov         byte ptr [ebp-3D],1
 0075EE4C    add         dword ptr [ebp-44],1
>0075EE50    jno         0075EF3D
 0075EE56    call        @IntOver
>0075EE5B    jmp         0075EF3D
 0075EE60    mov         eax,dword ptr [ebp-4C]
 0075EE63    mov         ecx,0C8
 0075EE68    cdq
 0075EE69    idiv        eax,ecx
 0075EE6B    mov         dword ptr [ebp-5C],eax
 0075EE6E    mov         eax,dword ptr [ebp-4C]
 0075EE71    mov         ecx,0C8
 0075EE76    cdq
 0075EE77    idiv        eax,ecx
 0075EE79    mov         dword ptr [ebp-60],edx
 0075EE7C    cmp         dword ptr [ebp-5C],1
>0075EE80    jg          0075EE8F
 0075EE82    cmp         dword ptr [ebp-60],9F
>0075EE89    jle         0075EF3D
 0075EE8F    mov         byte ptr [ebp-3D],1
 0075EE93    add         dword ptr [ebp-44],1
>0075EE97    jno         0075EF3D
 0075EE9D    call        @IntOver
>0075EEA2    jmp         0075EF3D
 0075EEA7    mov         eax,dword ptr [ebp-4C]
 0075EEAA    mov         ecx,64
 0075EEAF    cdq
 0075EEB0    idiv        eax,ecx
 0075EEB2    mov         dword ptr [ebp-5C],eax
 0075EEB5    mov         eax,dword ptr [ebp-4C]
 0075EEB8    mov         ecx,64
 0075EEBD    cdq
 0075EEBE    idiv        eax,ecx
 0075EEC0    mov         dword ptr [ebp-60],edx
 0075EEC3    cmp         dword ptr [ebp-5C],1
>0075EEC7    jg          0075EECF
 0075EEC9    cmp         dword ptr [ebp-60],63
>0075EECD    jle         0075EF3D
 0075EECF    mov         byte ptr [ebp-3D],1
 0075EED3    add         dword ptr [ebp-44],1
>0075EED7    jno         0075EF3D
 0075EED9    call        @IntOver
>0075EEDE    jmp         0075EF3D
 0075EEE0    xor         eax,eax
 0075EEE2    mov         dword ptr [ebp-5C],eax
 0075EEE5    mov         eax,dword ptr [ebp-4C]
 0075EEE8    mov         dword ptr [ebp-60],eax
 0075EEEB    cmp         dword ptr [ebp-60],7E
>0075EEEF    jle         0075EF3D
 0075EEF1    mov         byte ptr [ebp-3D],1
 0075EEF5    add         dword ptr [ebp-44],1
>0075EEF9    jno         0075EF3D
 0075EEFB    call        @IntOver
>0075EF00    jmp         0075EF3D
 0075EF02    xor         eax,eax
 0075EF04    mov         dword ptr [ebp-5C],eax
 0075EF07    mov         eax,dword ptr [ebp-4C]
 0075EF0A    mov         dword ptr [ebp-60],eax
 0075EF0D    cmp         dword ptr [ebp-60],10
>0075EF11    jle         0075EF3D
 0075EF13    mov         byte ptr [ebp-3D],1
 0075EF17    add         dword ptr [ebp-44],1
>0075EF1B    jno         0075EF3D
 0075EF1D    call        @IntOver
>0075EF22    jmp         0075EF3D
 0075EF24    xor         eax,eax
 0075EF26    mov         dword ptr [ebp-5C],eax
 0075EF29    xor         eax,eax
 0075EF2B    mov         dword ptr [ebp-60],eax
 0075EF2E    mov         byte ptr [ebp-3D],1
 0075EF32    add         dword ptr [ebp-44],1
>0075EF36    jno         0075EF3D
 0075EF38    call        @IntOver
 0075EF3D    cmp         byte ptr [ebp-3D],0
>0075EF41    jne         0075F238
 0075EF47    mov         eax,dword ptr [edi+3DC];TFileImportDlg.cbImportTexts:TCheckBox
 0075EF4D    mov         edx,dword ptr [eax]
 0075EF4F    call        dword ptr [edx+108];TCheckBox.GetChecked
 0075EF55    test        al,al
>0075EF57    je          0075F238
 0075EF5D    mov         eax,dword ptr [ebp-58]
 0075EF60    cmp         eax,7
>0075EF63    jbe         0075EF6A
 0075EF65    call        @BoundErr
 0075EF6A    imul        eax,eax,9F0
>0075EF70    jno         0075EF77
 0075EF72    call        @IntOver
 0075EF77    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0075EF7D    mov         edx,dword ptr [edx]
 0075EF7F    mov         edx,dword ptr [edx+18]
 0075EF82    lea         eax,[edx+eax*8]
 0075EF85    mov         edx,dword ptr [ebp-5C]
 0075EF88    cmp         edx,1
>0075EF8B    jbe         0075EF92
 0075EF8D    call        @BoundErr
 0075EF92    imul        edx,edx,4F8
>0075EF98    jno         0075EF9F
 0075EF9A    call        @IntOver
 0075EF9F    lea         eax,[eax+edx*8]
 0075EFA2    mov         edx,dword ptr [ebp-60]
 0075EFA5    dec         edx
 0075EFA6    cmp         edx,9E
>0075EFAC    jbe         0075EFB3
 0075EFAE    call        @BoundErr
 0075EFB3    inc         edx
 0075EFB4    imul        edx,edx,8
>0075EFB7    jno         0075EFBE
 0075EFB9    call        @IntOver
 0075EFBE    mov         ecx,dword ptr [ebp-58]
 0075EFC1    cmp         ecx,0FF
>0075EFC7    jbe         0075EFCE
 0075EFC9    call        @BoundErr
 0075EFCE    mov         byte ptr [eax+edx*8-3C],cl
 0075EFD2    cmp         dword ptr [ebp-54],4
>0075EFD6    je          0075EFE2
 0075EFD8    cmp         dword ptr [ebp-54],6
>0075EFDC    jne         0075F0D4
 0075EFE2    mov         eax,dword ptr [ebp-58]
 0075EFE5    cmp         eax,7
>0075EFE8    jbe         0075EFEF
 0075EFEA    call        @BoundErr
 0075EFEF    imul        eax,eax,9F0
>0075EFF5    jno         0075EFFC
 0075EFF7    call        @IntOver
 0075EFFC    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0075F002    mov         edx,dword ptr [edx]
 0075F004    mov         edx,dword ptr [edx+18]
 0075F007    lea         eax,[edx+eax*8]
 0075F00A    push        eax
 0075F00B    mov         eax,dword ptr [ebp-5C]
 0075F00E    cmp         eax,1
>0075F011    jbe         0075F018
 0075F013    call        @BoundErr
 0075F018    imul        eax,eax,4F8
>0075F01E    jno         0075F025
 0075F020    call        @IntOver
 0075F025    pop         edx
 0075F026    lea         eax,[edx+eax*8]
 0075F029    push        eax
 0075F02A    mov         eax,dword ptr [ebp-60]
 0075F02D    dec         eax
 0075F02E    cmp         eax,9E
>0075F033    jbe         0075F03A
 0075F035    call        @BoundErr
 0075F03A    inc         eax
 0075F03B    imul        ecx,eax,8
>0075F03E    jno         0075F045
 0075F040    call        @IntOver
 0075F045    pop         eax
 0075F046    mov         edx,dword ptr [ebp-60]
 0075F049    cmp         edx,0FF
>0075F04F    jbe         0075F056
 0075F051    call        @BoundErr
 0075F056    mov         byte ptr [eax+ecx*8-3B],dl
 0075F05A    mov         eax,dword ptr [ebp-4C]
 0075F05D    push        ecx
 0075F05E    mov         ecx,0C8
 0075F063    cdq
 0075F064    idiv        eax,ecx
 0075F066    pop         ecx
 0075F067    imul        eax,eax,0C8
>0075F06D    jno         0075F074
 0075F06F    call        @IntOver
 0075F074    cmp         eax,0FF
>0075F079    jbe         0075F080
 0075F07B    call        @BoundErr
 0075F080    push        eax
 0075F081    mov         eax,dword ptr [ebp-58]
 0075F084    cmp         eax,7
>0075F087    jbe         0075F08E
 0075F089    call        @BoundErr
 0075F08E    imul        eax,eax,9F0
>0075F094    jno         0075F09B
 0075F096    call        @IntOver
 0075F09B    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0075F0A1    mov         edx,dword ptr [edx]
 0075F0A3    mov         edx,dword ptr [edx+18]
 0075F0A6    lea         eax,[edx+eax*8]
 0075F0A9    push        eax
 0075F0AA    mov         eax,dword ptr [ebp-5C]
 0075F0AD    cmp         eax,1
>0075F0B0    jbe         0075F0B7
 0075F0B2    call        @BoundErr
 0075F0B7    imul        eax,eax,4F8
>0075F0BD    jno         0075F0C4
 0075F0BF    call        @IntOver
 0075F0C4    pop         edx
 0075F0C5    lea         eax,[edx+eax*8]
 0075F0C8    push        eax
 0075F0C9    pop         eax
 0075F0CA    pop         edx
 0075F0CB    mov         byte ptr [eax+ecx*8+3],dl
>0075F0CF    jmp         0075F19A
 0075F0D4    mov         edx,dword ptr [ebp-58]
 0075F0D7    cmp         edx,7
>0075F0DA    jbe         0075F0E1
 0075F0DC    call        @BoundErr
 0075F0E1    imul        edx,edx,9F0
>0075F0E7    jno         0075F0EE
 0075F0E9    call        @IntOver
 0075F0EE    mov         ecx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0075F0F4    mov         ecx,dword ptr [ecx]
 0075F0F6    mov         ecx,dword ptr [ecx+18]
 0075F0F9    lea         edx,[ecx+edx*8]
 0075F0FC    push        edx
 0075F0FD    mov         edx,dword ptr [ebp-5C]
 0075F100    cmp         edx,1
>0075F103    jbe         0075F10A
 0075F105    call        @BoundErr
 0075F10A    imul        edx,edx,4F8
>0075F110    jno         0075F117
 0075F112    call        @IntOver
 0075F117    pop         ecx
 0075F118    lea         edx,[ecx+edx*8]
 0075F11B    push        edx
 0075F11C    mov         eax,dword ptr [ebp-60]
 0075F11F    dec         eax
 0075F120    cmp         eax,9E
>0075F125    jbe         0075F12C
 0075F127    call        @BoundErr
 0075F12C    inc         eax
 0075F12D    imul        eax,eax,8
>0075F130    jno         0075F137
 0075F132    call        @IntOver
 0075F137    pop         edx
 0075F138    mov         ecx,dword ptr [ebp-4C]
 0075F13B    cmp         ecx,0FF
>0075F141    jbe         0075F148
 0075F143    call        @BoundErr
 0075F148    mov         byte ptr [edx+eax*8-3B],cl
 0075F14C    mov         edx,dword ptr [ebp-58]
 0075F14F    cmp         edx,7
>0075F152    jbe         0075F159
 0075F154    call        @BoundErr
 0075F159    imul        edx,edx,9F0
>0075F15F    jno         0075F166
 0075F161    call        @IntOver
 0075F166    mov         ecx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0075F16C    mov         ecx,dword ptr [ecx]
 0075F16E    mov         ecx,dword ptr [ecx+18]
 0075F171    lea         edx,[ecx+edx*8]
 0075F174    push        edx
 0075F175    mov         edx,dword ptr [ebp-5C]
 0075F178    cmp         edx,1
>0075F17B    jbe         0075F182
 0075F17D    call        @BoundErr
 0075F182    imul        edx,edx,4F8
>0075F188    jno         0075F18F
 0075F18A    call        @IntOver
 0075F18F    pop         ecx
 0075F190    lea         edx,[ecx+edx*8]
 0075F193    push        edx
 0075F194    pop         edx
 0075F195    mov         byte ptr [edx+eax*8+3],0
 0075F19A    lea         eax,[ebp-2B0]
 0075F1A0    mov         edx,dword ptr [ebp-4]
 0075F1A3    mov         ecx,0
 0075F1A8    call        @LStrFromUStr
 0075F1AD    mov         edx,dword ptr [ebp-2B0]
 0075F1B3    lea         eax,[ebp-2AC]
 0075F1B9    mov         ecx,0FF
 0075F1BE    call        @LStrToString
 0075F1C3    lea         edx,[ebp-2AC]
 0075F1C9    mov         eax,dword ptr [ebp-58]
 0075F1CC    cmp         eax,7
>0075F1CF    jbe         0075F1D6
 0075F1D1    call        @BoundErr
 0075F1D6    imul        eax,eax,9F0
>0075F1DC    jno         0075F1E3
 0075F1DE    call        @IntOver
 0075F1E3    mov         ecx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0075F1E9    mov         ecx,dword ptr [ecx]
 0075F1EB    mov         ecx,dword ptr [ecx+18]
 0075F1EE    lea         eax,[ecx+eax*8]
 0075F1F1    push        eax
 0075F1F2    mov         eax,dword ptr [ebp-5C]
 0075F1F5    cmp         eax,1
>0075F1F8    jbe         0075F1FF
 0075F1FA    call        @BoundErr
 0075F1FF    imul        eax,eax,4F8
>0075F205    jno         0075F20C
 0075F207    call        @IntOver
 0075F20C    pop         ecx
 0075F20D    lea         eax,[ecx+eax*8]
 0075F210    push        eax
 0075F211    mov         eax,dword ptr [ebp-60]
 0075F214    dec         eax
 0075F215    cmp         eax,9E
>0075F21A    jbe         0075F221
 0075F21C    call        @BoundErr
 0075F221    inc         eax
 0075F222    imul        eax,eax,8
>0075F225    jno         0075F22C
 0075F227    call        @IntOver
 0075F22C    pop         ecx
 0075F22D    lea         eax,[ecx+eax*8-3A]
 0075F231    mov         cl,3C
 0075F233    call        @PStrNCpy
 0075F238    cmp         byte ptr [ebp-3D],0
>0075F23C    jne         0075F2E4
 0075F242    mov         eax,dword ptr [edi+3E0];TFileImportDlg.cbImportZones:TCheckBox
 0075F248    mov         edx,dword ptr [eax]
 0075F24A    call        dword ptr [edx+108];TCheckBox.GetChecked
 0075F250    test        al,al
>0075F252    je          0075F2E4
 0075F258    mov         eax,dword ptr [ebp-58]
 0075F25B    cmp         eax,7
>0075F25E    jbe         0075F265
 0075F260    call        @BoundErr
 0075F265    imul        eax,eax,43B3
>0075F26B    jno         0075F272
 0075F26D    call        @IntOver
 0075F272    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0075F278    mov         edx,dword ptr [edx]
 0075F27A    mov         edx,dword ptr [edx+14]
 0075F27D    lea         eax,[edx+eax*4]
 0075F280    mov         edx,dword ptr [ebp-5C]
 0075F283    cmp         edx,1
>0075F286    jbe         0075F28D
 0075F288    call        @BoundErr
 0075F28D    imul        edx,edx,43B3
>0075F293    jno         0075F29A
 0075F295    call        @IntOver
 0075F29A    lea         eax,[eax+edx*2]
 0075F29D    mov         edx,dword ptr [ebp-60]
 0075F2A0    dec         edx
 0075F2A1    cmp         edx,9E
>0075F2A7    jbe         0075F2AE
 0075F2A9    call        @BoundErr
 0075F2AE    inc         edx
 0075F2AF    imul        edx,edx,6D
>0075F2B2    jno         0075F2B9
 0075F2B4    call        @IntOver
 0075F2B9    mov         ecx,dword ptr [ebp-50]
 0075F2BC    sub         ecx,dword ptr [ebp-30]
>0075F2BF    jno         0075F2C6
 0075F2C1    call        @IntOver
 0075F2C6    add         ecx,1
>0075F2C9    jno         0075F2D0
 0075F2CB    call        @IntOver
 0075F2D0    cmp         ecx,0FF
>0075F2D6    jbe         0075F2DD
 0075F2D8    call        @BoundErr
 0075F2DD    mov         byte ptr [eax+edx*2-0D1],cl
 0075F2E4    cmp         byte ptr [ebp-3D],0
>0075F2E8    jne         0075F2F9
 0075F2EA    test        ebx,ebx
>0075F2EC    je          0075F2F9
 0075F2EE    add         dword ptr [ebp-48],1
>0075F2F2    jno         0075F2F9
 0075F2F4    call        @IntOver
 0075F2F9    mov         eax,dword ptr [edi+3D8];TFileImportDlg.ProgressBar1:TProgressBar
 0075F2FF    mov         edx,esi
 0075F301    call        TProgressBar.SetPosition
 0075F306    add         esi,1
>0075F309    jno         0075F310
 0075F30B    call        @IntOver
 0075F310    test        ebx,ebx
>0075F312    jne         0075EC34
 0075F318    push        75F8AC;'There was '
 0075F31D    lea         edx,[ebp-2B8]
 0075F323    mov         eax,dword ptr [ebp-44]
 0075F326    call        IntToStr
 0075F32B    push        dword ptr [ebp-2B8]
 0075F331    push        75F8D0;' invalid address entries'
 0075F336    push        75F910;''
 0075F33B    push        75F920;'
'
 0075F340    push        75F930;' and '
 0075F345    lea         edx,[ebp-2BC]
 0075F34B    mov         eax,dword ptr [ebp-48]
 0075F34E    call        IntToStr
 0075F353    push        dword ptr [ebp-2BC]
 0075F359    push        75F948;' valid address entries in the file!!'
 0075F35E    lea         eax,[ebp-2B4]
 0075F364    mov         edx,8
 0075F369    call        @UStrCatN
 0075F36E    mov         eax,dword ptr [ebp-2B4]
 0075F374    call        ShowMessage
 0075F379    xor         eax,eax
 0075F37B    pop         edx
 0075F37C    pop         ecx
 0075F37D    pop         ecx
 0075F37E    mov         dword ptr fs:[eax],edx
 0075F381    push        75F405
 0075F386    lea         eax,[ebp-2BC]
 0075F38C    mov         edx,3
 0075F391    call        @UStrArrayClr
 0075F396    lea         eax,[ebp-2B0]
 0075F39C    call        @LStrClr
 0075F3A1    lea         eax,[ebp-1AC]
 0075F3A7    mov         edx,3
 0075F3AC    call        @UStrArrayClr
 0075F3B1    lea         eax,[ebp-1A0]
 0075F3B7    mov         edx,dword ptr ds:[4012F0];Variant
 0075F3BD    mov         ecx,5
 0075F3C2    call        @FinalizeArray
 0075F3C7    lea         eax,[ebp-150]
 0075F3CD    mov         edx,4
 0075F3D2    call        @UStrArrayClr
 0075F3D7    lea         eax,[ebp-140]
 0075F3DD    mov         edx,dword ptr ds:[4012F0];Variant
 0075F3E3    mov         ecx,0E
 0075F3E8    call        @FinalizeArray
 0075F3ED    lea         eax,[ebp-18]
 0075F3F0    call        @VarClr
 0075F3F5    lea         eax,[ebp-4]
 0075F3F8    call        @UStrClr
 0075F3FD    ret
>0075F3FE    jmp         @HandleFinally
>0075F403    jmp         0075F386
 0075F405    pop         edi
 0075F406    pop         esi
 0075F407    pop         ebx
 0075F408    mov         esp,ebp
 0075F40A    pop         ebp
 0075F40B    ret
*}
end;

//0075FD90
procedure TFileExportDlg.btnBrowseClick(Sender:TObject);
begin
{*
 0075FD90    push        ebp
 0075FD91    mov         ebp,esp
 0075FD93    push        0
 0075FD95    push        ebx
 0075FD96    mov         ebx,eax
 0075FD98    xor         eax,eax
 0075FD9A    push        ebp
 0075FD9B    push        75FDE7
 0075FDA0    push        dword ptr fs:[eax]
 0075FDA3    mov         dword ptr fs:[eax],esp
 0075FDA6    mov         eax,dword ptr [ebx+3D4];TFileExportDlg.SaveDialog1:TSaveDialog
 0075FDAC    mov         edx,dword ptr [eax]
 0075FDAE    call        dword ptr [edx+54];TCommonDialog.Execute
 0075FDB1    test        al,al
>0075FDB3    je          0075FDD1
 0075FDB5    lea         edx,[ebp-4]
 0075FDB8    mov         eax,dword ptr [ebx+3D4];TFileExportDlg.SaveDialog1:TSaveDialog
 0075FDBE    call        TOpenDialog.GetFileName
 0075FDC3    mov         edx,dword ptr [ebp-4]
 0075FDC6    mov         eax,dword ptr [ebx+3C4];TFileExportDlg.Edit1:TEdit
 0075FDCC    call        TControl.SetText
 0075FDD1    xor         eax,eax
 0075FDD3    pop         edx
 0075FDD4    pop         ecx
 0075FDD5    pop         ecx
 0075FDD6    mov         dword ptr fs:[eax],edx
 0075FDD9    push        75FDEE
 0075FDDE    lea         eax,[ebp-4]
 0075FDE1    call        @UStrClr
 0075FDE6    ret
>0075FDE7    jmp         @HandleFinally
>0075FDEC    jmp         0075FDDE
 0075FDEE    pop         ebx
 0075FDEF    pop         ecx
 0075FDF0    pop         ebp
 0075FDF1    ret
*}
end;

//0075FDF4
procedure TFileExportDlg.btnOKClick(Sender:TObject);
begin
{*
 0075FDF4    push        ebp
 0075FDF5    mov         ebp,esp
 0075FDF7    mov         ecx,11
 0075FDFC    push        0
 0075FDFE    push        0
 0075FE00    dec         ecx
>0075FE01    jne         0075FDFC
 0075FE03    push        ecx
 0075FE04    push        ebx
 0075FE05    push        esi
 0075FE06    push        edi
 0075FE07    mov         dword ptr [ebp-34],eax
 0075FE0A    xor         eax,eax
 0075FE0C    push        ebp
 0075FE0D    push        760157
 0075FE12    push        dword ptr fs:[eax]
 0075FE15    mov         dword ptr fs:[eax],esp
 0075FE18    xor         eax,eax
 0075FE1A    push        ebp
 0075FE1B    push        7600C7
 0075FE20    push        dword ptr fs:[eax]
 0075FE23    mov         dword ptr fs:[eax],esp
 0075FE26    xor         eax,eax
 0075FE28    push        ebp
 0075FE29    push        76004A
 0075FE2E    push        dword ptr fs:[eax]
 0075FE31    mov         dword ptr fs:[eax],esp
 0075FE34    lea         edx,[ebp-38]
 0075FE37    mov         eax,760174;'Excel.Application'
 0075FE3C    call        CreateOleObject
 0075FE41    mov         edx,dword ptr [ebp-38]
 0075FE44    lea         eax,[ebp-10]
 0075FE47    call        @VarFromDisp
 0075FE4C    push        0FF
 0075FE4E    push        760198
 0075FE53    lea         eax,[ebp-10]
 0075FE56    push        eax
 0075FE57    push        0
 0075FE59    call        @DispInvoke
 0075FE5E    add         esp,10
 0075FE61    xor         eax,eax
 0075FE63    push        ebp
 0075FE64    push        75FFF0
 0075FE69    push        dword ptr fs:[eax]
 0075FE6C    mov         dword ptr fs:[eax],esp
 0075FE6F    push        7601A4
 0075FE74    push        7601AC
 0075FE79    lea         eax,[ebp-10]
 0075FE7C    push        eax
 0075FE7D    lea         eax,[ebp-58]
 0075FE80    push        eax
 0075FE81    call        @DispInvoke
 0075FE86    add         esp,0C
 0075FE89    lea         eax,[ebp-58]
 0075FE8C    push        eax
 0075FE8D    lea         eax,[ebp-48]
 0075FE90    push        eax
 0075FE91    call        @DispInvoke
 0075FE96    add         esp,0C
 0075FE99    lea         edx,[ebp-48]
 0075FE9C    lea         eax,[ebp-20]
 0075FE9F    call        @OleVarFromVar
 0075FEA4    push        1
 0075FEA6    push        7601BC
 0075FEAB    lea         eax,[ebp-20]
 0075FEAE    push        eax
 0075FEAF    lea         eax,[ebp-68]
 0075FEB2    push        eax
 0075FEB3    call        @DispInvoke
 0075FEB8    add         esp,10
 0075FEBB    lea         edx,[ebp-68]
 0075FEBE    lea         eax,[ebp-30]
 0075FEC1    call        @OleVarFromVar
 0075FEC6    lea         edx,[ebp-30]
 0075FEC9    mov         eax,dword ptr [ebp-34]
 0075FECC    call        00760394
 0075FED1    xor         eax,eax
 0075FED3    push        ebp
 0075FED4    push        75FF73
 0075FED9    push        dword ptr fs:[eax]
 0075FEDC    mov         dword ptr fs:[eax],esp
 0075FEDF    lea         edx,[ebp-74]
 0075FEE2    mov         eax,dword ptr [ebp-34]
 0075FEE5    mov         eax,dword ptr [eax+3C4];TFileExportDlg.Edit1:TEdit
 0075FEEB    call        TControl.GetText
 0075FEF0    mov         eax,dword ptr [ebp-74]
 0075FEF3    lea         edx,[ebp-70]
 0075FEF6    call        ExtractFileExt
 0075FEFB    mov         eax,dword ptr [ebp-70]
 0075FEFE    lea         edx,[ebp-6C]
 0075FF01    call        LowerCase
 0075FF06    mov         eax,dword ptr [ebp-6C]
 0075FF09    mov         edx,7601D8;'.xls'
 0075FF0E    call        @UStrEqual
>0075FF13    jne         0075FF41
 0075FF15    push        38
 0075FF17    lea         edx,[ebp-78]
 0075FF1A    mov         eax,dword ptr [ebp-34]
 0075FF1D    mov         eax,dword ptr [eax+3C4];TFileExportDlg.Edit1:TEdit
 0075FF23    call        TControl.GetText
 0075FF28    mov         eax,dword ptr [ebp-78]
 0075FF2B    push        eax
 0075FF2C    push        7601E4
 0075FF31    lea         eax,[ebp-20]
 0075FF34    push        eax
 0075FF35    push        0
 0075FF37    call        @DispInvoke
 0075FF3C    add         esp,14
>0075FF3F    jmp         0075FF69
 0075FF41    lea         edx,[ebp-7C]
 0075FF44    mov         eax,dword ptr [ebp-34]
 0075FF47    mov         eax,dword ptr [eax+3C4];TFileExportDlg.Edit1:TEdit
 0075FF4D    call        TControl.GetText
 0075FF52    mov         eax,dword ptr [ebp-7C]
 0075FF55    push        eax
 0075FF56    push        7601F0
 0075FF5B    lea         eax,[ebp-20]
 0075FF5E    push        eax
 0075FF5F    push        0
 0075FF61    call        @DispInvoke
 0075FF66    add         esp,10
 0075FF69    xor         eax,eax
 0075FF6B    pop         edx
 0075FF6C    pop         ecx
 0075FF6D    pop         ecx
 0075FF6E    mov         dword ptr fs:[eax],edx
>0075FF71    jmp         0075FFE6
>0075FF73    jmp         @HandleOnException
 0075FF78    dd          1
 0075FF7C    dd          004174D0;Exception
 0075FF80    dd          0075FF84
 0075FF84    mov         ebx,eax
 0075FF86    push        0
 0075FF88    push        dword ptr [ebx+4];Exception.FMessage:string
 0075FF8B    push        760208;''
 0075FF90    push        760218;'
'
 0075FF95    push        760228;'(File '
 0075FF9A    lea         edx,[ebp-84]
 0075FFA0    mov         eax,dword ptr [ebp-34]
 0075FFA3    mov         eax,dword ptr [eax+3C4];TFileExportDlg.Edit1:TEdit
 0075FFA9    call        TControl.GetText
 0075FFAE    push        dword ptr [ebp-84]
 0075FFB4    push        760208;''
 0075FFB9    push        760218;'
'
 0075FFBE    push        760244;'could not be saved)'
 0075FFC3    lea         eax,[ebp-80]
 0075FFC6    mov         edx,8
 0075FFCB    call        @UStrCatN
 0075FFD0    mov         eax,dword ptr [ebp-80]
 0075FFD3    movzx       ecx,word ptr ds:[76026C];0x4 gvar_0076026C
 0075FFDA    mov         dl,1
 0075FFDC    call        MessageDlg
 0075FFE1    call        @DoneExcept
 0075FFE6    xor         eax,eax
 0075FFE8    pop         edx
 0075FFE9    pop         ecx
 0075FFEA    pop         ecx
 0075FFEB    mov         dword ptr fs:[eax],edx
>0075FFEE    jmp         00760040
>0075FFF0    jmp         @HandleOnException
 0075FFF5    dd          1
 0075FFF9    dd          004174D0;Exception
 0075FFFD    dd          00760001
 00760001    mov         ebx,eax
 00760003    push        0
 00760005    push        dword ptr [ebx+4];Exception.FMessage:string
 00760008    push        760208;''
 0076000D    push        760218;'
'
 00760012    push        76027C;'(Error exporting data)'
 00760017    lea         eax,[ebp-88]
 0076001D    mov         edx,4
 00760022    call        @UStrCatN
 00760027    mov         eax,dword ptr [ebp-88]
 0076002D    movzx       ecx,word ptr ds:[76026C];0x4 gvar_0076026C
 00760034    mov         dl,1
 00760036    call        MessageDlg
 0076003B    call        @DoneExcept
 00760040    xor         eax,eax
 00760042    pop         edx
 00760043    pop         ecx
 00760044    pop         ecx
 00760045    mov         dword ptr fs:[eax],edx
>00760048    jmp         0076009A
>0076004A    jmp         @HandleOnException
 0076004F    dd          1
 00760053    dd          004174D0;Exception
 00760057    dd          0076005B
 0076005B    mov         ebx,eax
 0076005D    push        0
 0076005F    push        dword ptr [ebx+4];Exception.FMessage:string
 00760062    push        760208;''
 00760067    push        760218;'
'
 0076006C    push        7602B8;'(Excel not found)'
 00760071    lea         eax,[ebp-8C]
 00760077    mov         edx,4
 0076007C    call        @UStrCatN
 00760081    mov         eax,dword ptr [ebp-8C]
 00760087    movzx       ecx,word ptr ds:[76026C];0x4 gvar_0076026C
 0076008E    mov         dl,1
 00760090    call        MessageDlg
 00760095    call        @DoneExcept
 0076009A    xor         eax,eax
 0076009C    pop         edx
 0076009D    pop         ecx
 0076009E    pop         ecx
 0076009F    mov         dword ptr fs:[eax],edx
 007600A2    push        7600CE
 007600A7    lea         eax,[ebp-10]
 007600AA    call        VarIsEmpty
 007600AF    test        al,al
>007600B1    jne         007600C6
 007600B3    push        7602DC
 007600B8    lea         eax,[ebp-10]
 007600BB    push        eax
 007600BC    push        0
 007600BE    call        @DispInvoke
 007600C3    add         esp,0C
 007600C6    ret
>007600C7    jmp         @HandleFinally
>007600CC    jmp         007600A7
 007600CE    mov         eax,dword ptr [ebp-34]
 007600D1    mov         eax,dword ptr [eax+3D8];TFileExportDlg.ProgressBar1:TProgressBar
 007600D7    xor         edx,edx
 007600D9    call        TProgressBar.SetPosition
 007600DE    xor         eax,eax
 007600E0    pop         edx
 007600E1    pop         ecx
 007600E2    pop         ecx
 007600E3    mov         dword ptr fs:[eax],edx
 007600E6    push        76015E
 007600EB    lea         eax,[ebp-8C]
 007600F1    mov         edx,2
 007600F6    call        @UStrArrayClr
 007600FB    lea         eax,[ebp-84]
 00760101    call        @UStrClr
 00760106    lea         eax,[ebp-80]
 00760109    call        @UStrClr
 0076010E    lea         eax,[ebp-7C]
 00760111    mov         edx,3
 00760116    call        @UStrArrayClr
 0076011B    lea         eax,[ebp-70]
 0076011E    mov         edx,2
 00760123    call        @UStrArrayClr
 00760128    lea         eax,[ebp-68]
 0076012B    mov         edx,dword ptr ds:[4012F0];Variant
 00760131    mov         ecx,3
 00760136    call        @FinalizeArray
 0076013B    lea         eax,[ebp-38]
 0076013E    call        @IntfClear
 00760143    lea         eax,[ebp-30]
 00760146    mov         edx,dword ptr ds:[401300];OleVariant
 0076014C    mov         ecx,3
 00760151    call        @FinalizeArray
 00760156    ret
>00760157    jmp         @HandleFinally
>0076015C    jmp         007600EB
 0076015E    pop         edi
 0076015F    pop         esi
 00760160    pop         ebx
 00760161    mov         esp,ebp
 00760163    pop         ebp
 00760164    ret
*}
end;

//007602E4
procedure TFileExportDlg.FormCreate(Sender:TObject);
begin
{*
 007602E4    push        ebp
 007602E5    mov         ebp,esp
 007602E7    add         esp,0FFFFFFF0
 007602EA    push        ebx
 007602EB    xor         ecx,ecx
 007602ED    mov         dword ptr [ebp-4],ecx
 007602F0    mov         dword ptr [ebp-10],ecx
 007602F3    mov         ebx,eax
 007602F5    xor         eax,eax
 007602F7    push        ebp
 007602F8    push        760357
 007602FD    push        dword ptr fs:[eax]
 00760300    mov         dword ptr fs:[eax],esp
 00760303    lea         eax,[ebp-4]
 00760306    push        eax
 00760307    lea         edx,[ebp-10]
 0076030A    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0076030F    mov         eax,dword ptr [eax]
 00760311    call        005DDC74
 00760316    mov         eax,dword ptr [ebp-10]
 00760319    mov         dword ptr [ebp-0C],eax
 0076031C    mov         byte ptr [ebp-8],11
 00760320    lea         edx,[ebp-0C]
 00760323    xor         ecx,ecx
 00760325    mov         eax,760370;'File Export (%s)'
 0076032A    call        Format
 0076032F    mov         edx,dword ptr [ebp-4]
 00760332    mov         eax,ebx
 00760334    call        TControl.SetText
 00760339    xor         eax,eax
 0076033B    pop         edx
 0076033C    pop         ecx
 0076033D    pop         ecx
 0076033E    mov         dword ptr fs:[eax],edx
 00760341    push        76035E
 00760346    lea         eax,[ebp-10]
 00760349    call        @UStrClr
 0076034E    lea         eax,[ebp-4]
 00760351    call        @UStrClr
 00760356    ret
>00760357    jmp         @HandleFinally
>0076035C    jmp         00760346
 0076035E    pop         ebx
 0076035F    mov         esp,ebp
 00760361    pop         ebp
 00760362    ret
*}
end;

//00760394
procedure sub_00760394(?:TFileExportDlg; ?:TVarData);
begin
{*
 00760394    push        ebp
 00760395    mov         ebp,esp
 00760397    mov         ecx,7E
 0076039C    push        0
 0076039E    push        0
 007603A0    dec         ecx
>007603A1    jne         0076039C
 007603A3    push        ebx
 007603A4    push        esi
 007603A5    push        edi
 007603A6    mov         dword ptr [ebp-18],edx
 007603A9    mov         dword ptr [ebp-14],eax
 007603AC    xor         eax,eax
 007603AE    push        ebp
 007603AF    push        7613DE
 007603B4    push        dword ptr fs:[eax]
 007603B7    mov         dword ptr fs:[eax],esp
 007603BA    push        7613F0
 007603BF    mov         eax,dword ptr [ebp-18]
 007603C2    push        eax
 007603C3    push        0
 007603C5    call        @DispInvoke
 007603CA    add         esp,0C
 007603CD    push        761408;'FileVerMajor'
 007603D2    push        761424
 007603D7    push        1
 007603D9    push        1
 007603DB    push        761430
 007603E0    mov         eax,dword ptr [ebp-18]
 007603E3    push        eax
 007603E4    lea         eax,[ebp-50]
 007603E7    push        eax
 007603E8    call        @DispInvoke
 007603ED    add         esp,14
 007603F0    lea         eax,[ebp-50]
 007603F3    push        eax
 007603F4    push        0
 007603F6    call        @DispInvoke
 007603FB    add         esp,10
 007603FE    push        761448;'002'
 00760403    push        761424
 00760408    push        2
 0076040A    push        1
 0076040C    push        761430
 00760411    mov         eax,dword ptr [ebp-18]
 00760414    push        eax
 00760415    lea         eax,[ebp-60]
 00760418    push        eax
 00760419    call        @DispInvoke
 0076041E    add         esp,14
 00760421    lea         eax,[ebp-60]
 00760424    push        eax
 00760425    push        0
 00760427    call        @DispInvoke
 0076042C    add         esp,10
 0076042F    push        76145C;'FileVerMinor'
 00760434    push        761424
 00760439    push        1
 0076043B    push        2
 0076043D    push        761430
 00760442    mov         eax,dword ptr [ebp-18]
 00760445    push        eax
 00760446    lea         eax,[ebp-70]
 00760449    push        eax
 0076044A    call        @DispInvoke
 0076044F    add         esp,14
 00760452    lea         eax,[ebp-70]
 00760455    push        eax
 00760456    push        0
 00760458    call        @DispInvoke
 0076045D    add         esp,10
 00760460    push        761484;'000'
 00760465    push        761424
 0076046A    push        2
 0076046C    push        2
 0076046E    push        761430
 00760473    mov         eax,dword ptr [ebp-18]
 00760476    push        eax
 00760477    lea         eax,[ebp-80]
 0076047A    push        eax
 0076047B    call        @DispInvoke
 00760480    add         esp,14
 00760483    lea         eax,[ebp-80]
 00760486    push        eax
 00760487    push        0
 00760489    call        @DispInvoke
 0076048E    add         esp,10
 00760491    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00760496    mov         eax,dword ptr [eax]
 00760498    mov         eax,dword ptr [eax+0C]
 0076049B    call        006A344C
 007604A0    movzx       eax,al
 007604A3    mov         dword ptr [ebp-20],eax
 007604A6    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007604AB    mov         eax,dword ptr [eax]
 007604AD    mov         eax,dword ptr [eax+0C]
 007604B0    movzx       eax,byte ptr [eax+125]
 007604B7    mov         dword ptr [ebp-28],eax
 007604BA    push        761498;'NumOfLoops'
 007604BF    push        761424
 007604C4    push        1
 007604C6    push        6
 007604C8    push        761430
 007604CD    mov         eax,dword ptr [ebp-18]
 007604D0    push        eax
 007604D1    lea         eax,[ebp-90]
 007604D7    push        eax
 007604D8    call        @DispInvoke
 007604DD    add         esp,14
 007604E0    lea         eax,[ebp-90]
 007604E6    push        eax
 007604E7    push        0
 007604E9    call        @DispInvoke
 007604EE    add         esp,10
 007604F1    lea         eax,[ebp-20]
 007604F4    push        eax
 007604F5    push        7614B0
 007604FA    push        1
 007604FC    push        7
 007604FE    push        761430
 00760503    mov         eax,dword ptr [ebp-18]
 00760506    push        eax
 00760507    lea         eax,[ebp-0A0]
 0076050D    push        eax
 0076050E    call        @DispInvoke
 00760513    add         esp,14
 00760516    lea         eax,[ebp-0A0]
 0076051C    push        eax
 0076051D    push        0
 0076051F    call        @DispInvoke
 00760524    add         esp,10
 00760527    push        7614C8;'NumOfZones'
 0076052C    push        761424
 00760531    push        3
 00760533    push        6
 00760535    push        761430
 0076053A    mov         eax,dword ptr [ebp-18]
 0076053D    push        eax
 0076053E    lea         eax,[ebp-0B0]
 00760544    push        eax
 00760545    call        @DispInvoke
 0076054A    add         esp,14
 0076054D    lea         eax,[ebp-0B0]
 00760553    push        eax
 00760554    push        0
 00760556    call        @DispInvoke
 0076055B    add         esp,10
 0076055E    lea         eax,[ebp-28]
 00760561    push        eax
 00760562    push        7614B0
 00760567    push        3
 00760569    push        7
 0076056B    push        761430
 00760570    mov         eax,dword ptr [ebp-18]
 00760573    push        eax
 00760574    lea         eax,[ebp-0C0]
 0076057A    push        eax
 0076057B    call        @DispInvoke
 00760580    add         esp,14
 00760583    lea         eax,[ebp-0C0]
 00760589    push        eax
 0076058A    push        0
 0076058C    call        @DispInvoke
 00760591    add         esp,10
 00760594    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00760599    mov         eax,dword ptr [eax]
 0076059B    mov         eax,dword ptr [eax+0C]
 0076059E    call        006A3430
 007605A3    movzx       eax,al
 007605A6    mov         dword ptr [ebp-1C],eax
 007605A9    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007605AE    mov         eax,dword ptr [eax]
 007605B0    mov         eax,dword ptr [eax+0C]
 007605B3    movzx       eax,word ptr [eax+123]
 007605BA    mov         dword ptr [ebp-24],eax
 007605BD    push        7614EC;'First loop'
 007605C2    push        761424
 007605C7    push        1
 007605C9    push        8
 007605CB    push        761430
 007605D0    mov         eax,dword ptr [ebp-18]
 007605D3    push        eax
 007605D4    lea         eax,[ebp-0D0]
 007605DA    push        eax
 007605DB    call        @DispInvoke
 007605E0    add         esp,14
 007605E3    lea         eax,[ebp-0D0]
 007605E9    push        eax
 007605EA    push        0
 007605EC    call        @DispInvoke
 007605F1    add         esp,10
 007605F4    lea         eax,[ebp-1C]
 007605F7    push        eax
 007605F8    push        7614B0
 007605FD    push        1
 007605FF    push        9
 00760601    push        761430
 00760606    mov         eax,dword ptr [ebp-18]
 00760609    push        eax
 0076060A    lea         eax,[ebp-0E0]
 00760610    push        eax
 00760611    call        @DispInvoke
 00760616    add         esp,14
 00760619    lea         eax,[ebp-0E0]
 0076061F    push        eax
 00760620    push        0
 00760622    call        @DispInvoke
 00760627    add         esp,10
 0076062A    push        761510;'First zone'
 0076062F    push        761424
 00760634    push        3
 00760636    push        8
 00760638    push        761430
 0076063D    mov         eax,dword ptr [ebp-18]
 00760640    push        eax
 00760641    lea         eax,[ebp-0F0]
 00760647    push        eax
 00760648    call        @DispInvoke
 0076064D    add         esp,14
 00760650    lea         eax,[ebp-0F0]
 00760656    push        eax
 00760657    push        0
 00760659    call        @DispInvoke
 0076065E    add         esp,10
 00760661    lea         eax,[ebp-24]
 00760664    push        eax
 00760665    push        7614B0
 0076066A    push        3
 0076066C    push        9
 0076066E    push        761430
 00760673    mov         eax,dword ptr [ebp-18]
 00760676    push        eax
 00760677    lea         eax,[ebp-100]
 0076067D    push        eax
 0076067E    call        @DispInvoke
 00760683    add         esp,14
 00760686    lea         eax,[ebp-100]
 0076068C    push        eax
 0076068D    push        0
 0076068F    call        @DispInvoke
 00760694    add         esp,10
 00760697    push        23
 00760699    push        761528
 0076069E    push        761538
 007606A3    push        1
 007606A5    push        9
 007606A7    push        761430
 007606AC    mov         eax,dword ptr [ebp-18]
 007606AF    push        eax
 007606B0    lea         eax,[ebp-120]
 007606B6    push        eax
 007606B7    call        @DispInvoke
 007606BC    add         esp,14
 007606BF    lea         eax,[ebp-120]
 007606C5    push        eax
 007606C6    lea         eax,[ebp-110]
 007606CC    push        eax
 007606CD    call        @DispInvoke
 007606D2    add         esp,0C
 007606D5    lea         eax,[ebp-110]
 007606DB    push        eax
 007606DC    push        0
 007606DE    call        @DispInvoke
 007606E3    add         esp,10
 007606E6    push        23
 007606E8    push        761528
 007606ED    push        761538
 007606F2    push        3
 007606F4    push        9
 007606F6    push        761430
 007606FB    mov         eax,dword ptr [ebp-18]
 007606FE    push        eax
 007606FF    lea         eax,[ebp-140]
 00760705    push        eax
 00760706    call        @DispInvoke
 0076070B    add         esp,14
 0076070E    lea         eax,[ebp-140]
 00760714    push        eax
 00760715    lea         eax,[ebp-130]
 0076071B    push        eax
 0076071C    call        @DispInvoke
 00760721    add         esp,0C
 00760724    lea         eax,[ebp-130]
 0076072A    push        eax
 0076072B    push        0
 0076072D    call        @DispInvoke
 00760732    add         esp,10
 00760735    push        761550;'Loop'
 0076073A    push        761424
 0076073F    push        1
 00760741    push        0A
 00760743    push        761430
 00760748    mov         eax,dword ptr [ebp-18]
 0076074B    push        eax
 0076074C    lea         eax,[ebp-150]
 00760752    push        eax
 00760753    call        @DispInvoke
 00760758    add         esp,14
 0076075B    lea         eax,[ebp-150]
 00760761    push        eax
 00760762    push        0
 00760764    call        @DispInvoke
 00760769    add         esp,10
 0076076C    push        761568;'Address'
 00760771    push        761424
 00760776    push        2
 00760778    push        0A
 0076077A    push        761430
 0076077F    mov         eax,dword ptr [ebp-18]
 00760782    push        eax
 00760783    lea         eax,[ebp-160]
 00760789    push        eax
 0076078A    call        @DispInvoke
 0076078F    add         esp,14
 00760792    lea         eax,[ebp-160]
 00760798    push        eax
 00760799    push        0
 0076079B    call        @DispInvoke
 007607A0    add         esp,10
 007607A3    push        761584;'Zone'
 007607A8    push        761424
 007607AD    push        3
 007607AF    push        0A
 007607B1    push        761430
 007607B6    mov         eax,dword ptr [ebp-18]
 007607B9    push        eax
 007607BA    lea         eax,[ebp-170]
 007607C0    push        eax
 007607C1    call        @DispInvoke
 007607C6    add         esp,14
 007607C9    lea         eax,[ebp-170]
 007607CF    push        eax
 007607D0    push        0
 007607D2    call        @DispInvoke
 007607D7    add         esp,10
 007607DA    push        76159C;'Text'
 007607DF    push        761424
 007607E4    push        4
 007607E6    push        0A
 007607E8    push        761430
 007607ED    mov         eax,dword ptr [ebp-18]
 007607F0    push        eax
 007607F1    lea         eax,[ebp-180]
 007607F7    push        eax
 007607F8    call        @DispInvoke
 007607FD    add         esp,14
 00760800    lea         eax,[ebp-180]
 00760806    push        eax
 00760807    push        0
 00760809    call        @DispInvoke
 0076080E    add         esp,10
 00760811    push        7615B4;'Type/Function'
 00760816    push        761424
 0076081B    push        5
 0076081D    push        0A
 0076081F    push        761430
 00760824    mov         eax,dword ptr [ebp-18]
 00760827    push        eax
 00760828    lea         eax,[ebp-190]
 0076082E    push        eax
 0076082F    call        @DispInvoke
 00760834    add         esp,14
 00760837    lea         eax,[ebp-190]
 0076083D    push        eax
 0076083E    push        0
 00760840    call        @DispInvoke
 00760845    add         esp,10
 00760848    push        0FF
 0076084A    push        7615D0
 0076084F    push        7615DC
 00760854    push        7615F0;'A10:E10'
 00760859    push        761600
 0076085E    push        76160C
 00760863    mov         eax,dword ptr [ebp-18]
 00760866    push        eax
 00760867    lea         eax,[ebp-1C0]
 0076086D    push        eax
 0076086E    call        @DispInvoke
 00760873    add         esp,0C
 00760876    lea         eax,[ebp-1C0]
 0076087C    push        eax
 0076087D    lea         eax,[ebp-1B0]
 00760883    push        eax
 00760884    call        @DispInvoke
 00760889    add         esp,10
 0076088C    lea         eax,[ebp-1B0]
 00760892    push        eax
 00760893    lea         eax,[ebp-1A0]
 00760899    push        eax
 0076089A    call        @DispInvoke
 0076089F    add         esp,0C
 007608A2    lea         eax,[ebp-1A0]
 007608A8    push        eax
 007608A9    push        0
 007608AB    call        @DispInvoke
 007608B0    add         esp,10
 007608B3    mov         dword ptr [ebp-30],0B
 007608BA    lea         eax,[ebp-1D0]
 007608C0    push        eax
 007608C1    mov         eax,761618
 007608C6    mov         cx,0C
 007608CA    mov         edx,1
 007608CF    call        VarArrayCreate
 007608D4    lea         edx,[ebp-1D0]
 007608DA    lea         eax,[ebp-10]
 007608DD    call        @OleVarFromVar
 007608E2    xor         eax,eax
 007608E4    mov         dword ptr [ebp-2C],eax
 007608E7    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007608EC    mov         eax,dword ptr [eax]
 007608EE    mov         eax,dword ptr [eax+0C]
 007608F1    mov         edx,dword ptr [ebp-2C]
 007608F4    call        TFXPPD.GetControllerLoopType
 007608F9    mov         edi,eax
 007608FB    test        edi,edi
>007608FD    je          00760E75
 00760903    mov         eax,edi
 00760905    dec         eax
>00760906    je          0076091B
 00760908    sub         eax,3
>0076090B    je          00760912
 0076090D    sub         eax,2
>00760910    jne         00760924
 00760912    mov         dword ptr [ebp-40],0C8
>00760919    jmp         00760929
 0076091B    mov         dword ptr [ebp-40],64
>00760922    jmp         00760929
 00760924    xor         eax,eax
 00760926    mov         dword ptr [ebp-40],eax
 00760929    xor         esi,esi
 0076092B    cmp         edi,3
>0076092E    jne         00760938
 00760930    test        esi,esi
>00760932    jg          00760E6B
 00760938    cmp         edi,5
>0076093B    jne         00760945
 0076093D    test        esi,esi
>0076093F    jg          00760E6B
 00760945    cmp         edi,2
>00760948    jne         00760952
 0076094A    test        esi,esi
>0076094C    jg          00760E6B
 00760952    mov         ebx,1
 00760957    cmp         edi,3
>0076095A    jne         00760965
 0076095C    cmp         ebx,7E
>0076095F    jg          00760E5E
 00760965    cmp         edi,5
>00760968    jne         00760973
 0076096A    cmp         ebx,7E
>0076096D    jg          00760E5E
 00760973    cmp         edi,1
>00760976    jne         00760981
 00760978    cmp         ebx,63
>0076097B    jg          00760E5E
 00760981    cmp         edi,2
>00760984    jne         0076098F
 00760986    cmp         ebx,10
>00760989    jg          00760E5E
 0076098F    push        1
 00760991    push        1
 00760993    lea         edx,[ebp-1E8]
 00760999    mov         eax,dword ptr [ebp-2C]
 0076099C    call        IntToStr
 007609A1    mov         ecx,dword ptr [ebp-1E8]
 007609A7    lea         eax,[ebp-1E4]
 007609AD    mov         edx,76162C;'=A9+'
 007609B2    call        @UStrCat3
 007609B7    mov         edx,dword ptr [ebp-1E4]
 007609BD    lea         eax,[ebp-1E0]
 007609C3    call        @VarFromUStr
 007609C8    lea         eax,[ebp-1E0]
 007609CE    push        eax
 007609CF    lea         eax,[ebp-10]
 007609D2    push        eax
 007609D3    call        @VarArrayPut
 007609D8    add         esp,10
 007609DB    push        2
 007609DD    push        1
 007609DF    lea         eax,[ebp-1F8]
 007609E5    mov         edx,esi
 007609E7    imul        edx,dword ptr [ebp-40]
>007609EB    jno         007609F2
 007609ED    call        @IntOver
 007609F2    add         edx,ebx
>007609F4    jno         007609FB
 007609F6    call        @IntOver
 007609FB    mov         cl,0FC
 007609FD    call        @VarFromInt
 00760A02    lea         eax,[ebp-1F8]
 00760A08    push        eax
 00760A09    lea         eax,[ebp-10]
 00760A0C    push        eax
 00760A0D    call        @VarArrayPut
 00760A12    add         esp,10
 00760A15    push        3
 00760A17    push        1
 00760A19    mov         eax,dword ptr [ebp-2C]
 00760A1C    cmp         eax,7
>00760A1F    jbe         00760A26
 00760A21    call        @BoundErr
 00760A26    imul        eax,eax,43B3
>00760A2C    jno         00760A33
 00760A2E    call        @IntOver
 00760A33    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00760A39    mov         edx,dword ptr [edx]
 00760A3B    mov         edx,dword ptr [edx+14]
 00760A3E    lea         eax,[edx+eax*4]
 00760A41    cmp         esi,1
>00760A44    jbe         00760A4B
 00760A46    call        @BoundErr
 00760A4B    imul        edx,esi,43B3
>00760A51    jno         00760A58
 00760A53    call        @IntOver
 00760A58    lea         eax,[eax+edx*2]
 00760A5B    dec         ebx
 00760A5C    cmp         ebx,9E
>00760A62    jbe         00760A69
 00760A64    call        @BoundErr
 00760A69    inc         ebx
 00760A6A    imul        edx,ebx,6D
>00760A6D    jno         00760A74
 00760A6F    call        @IntOver
 00760A74    movzx       eax,byte ptr [eax+edx*2-0D1]
 00760A7C    sub         eax,1
>00760A7F    jno         00760A86
 00760A81    call        @IntOver
 00760A86    lea         edx,[ebp-210]
 00760A8C    call        IntToStr
 00760A91    mov         ecx,dword ptr [ebp-210]
 00760A97    lea         eax,[ebp-20C]
 00760A9D    mov         edx,761644;'=C9+'
 00760AA2    call        @UStrCat3
 00760AA7    mov         edx,dword ptr [ebp-20C]
 00760AAD    lea         eax,[ebp-208]
 00760AB3    call        @VarFromUStr
 00760AB8    lea         eax,[ebp-208]
 00760ABE    push        eax
 00760ABF    lea         eax,[ebp-10]
 00760AC2    push        eax
 00760AC3    call        @VarArrayPut
 00760AC8    add         esp,10
 00760ACB    push        4
 00760ACD    push        1
 00760ACF    lea         eax,[ebp-220]
 00760AD5    mov         edx,dword ptr [ebp-2C]
 00760AD8    cmp         edx,7
>00760ADB    jbe         00760AE2
 00760ADD    call        @BoundErr
 00760AE2    imul        edx,edx,9F0
>00760AE8    jno         00760AEF
 00760AEA    call        @IntOver
 00760AEF    mov         ecx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00760AF5    mov         ecx,dword ptr [ecx]
 00760AF7    mov         ecx,dword ptr [ecx+18]
 00760AFA    lea         edx,[ecx+edx*8]
 00760AFD    push        edx
 00760AFE    cmp         esi,1
>00760B01    jbe         00760B08
 00760B03    call        @BoundErr
 00760B08    imul        edx,esi,4F8
>00760B0E    jno         00760B15
 00760B10    call        @IntOver
 00760B15    pop         ecx
 00760B16    lea         edx,[ecx+edx*8]
 00760B19    push        edx
 00760B1A    dec         ebx
 00760B1B    cmp         ebx,9E
>00760B21    jbe         00760B28
 00760B23    call        @BoundErr
 00760B28    inc         ebx
 00760B29    imul        edx,ebx,8
>00760B2C    jno         00760B33
 00760B2E    call        @IntOver
 00760B33    pop         ecx
 00760B34    lea         edx,[ecx+edx*8-3A]
 00760B38    call        @VarFromPStr
 00760B3D    lea         eax,[ebp-220]
 00760B43    push        eax
 00760B44    lea         eax,[ebp-10]
 00760B47    push        eax
 00760B48    call        @VarArrayPut
 00760B4D    add         esp,10
 00760B50    mov         eax,dword ptr [ebp-2C]
 00760B53    cmp         eax,7
>00760B56    jbe         00760B5D
 00760B58    call        @BoundErr
 00760B5D    imul        eax,eax,43B3
>00760B63    jno         00760B6A
 00760B65    call        @IntOver
 00760B6A    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00760B70    mov         edx,dword ptr [edx]
 00760B72    mov         edx,dword ptr [edx+14]
 00760B75    lea         eax,[edx+eax*4]
 00760B78    cmp         esi,1
>00760B7B    jbe         00760B82
 00760B7D    call        @BoundErr
 00760B82    imul        edx,esi,43B3
>00760B88    jno         00760B8F
 00760B8A    call        @IntOver
 00760B8F    lea         eax,[eax+edx*2]
 00760B92    dec         ebx
 00760B93    cmp         ebx,9E
>00760B99    jbe         00760BA0
 00760B9B    call        @BoundErr
 00760BA0    inc         ebx
 00760BA1    imul        edx,ebx,6D
>00760BA4    jno         00760BAB
 00760BA6    call        @IntOver
 00760BAB    movzx       eax,byte ptr [eax+edx*2-0CC]
 00760BB3    mov         dword ptr [ebp-38],eax
 00760BB6    mov         eax,dword ptr [ebp-2C]
 00760BB9    cmp         eax,7
>00760BBC    jbe         00760BC3
 00760BBE    call        @BoundErr
 00760BC3    imul        eax,eax,43B3
>00760BC9    jno         00760BD0
 00760BCB    call        @IntOver
 00760BD0    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00760BD6    mov         edx,dword ptr [edx]
 00760BD8    mov         edx,dword ptr [edx+14]
 00760BDB    lea         eax,[edx+eax*4]
 00760BDE    cmp         esi,1
>00760BE1    jbe         00760BE8
 00760BE3    call        @BoundErr
 00760BE8    imul        edx,esi,43B3
>00760BEE    jno         00760BF5
 00760BF0    call        @IntOver
 00760BF5    lea         eax,[eax+edx*2]
 00760BF8    dec         ebx
 00760BF9    cmp         ebx,9E
>00760BFF    jbe         00760C06
 00760C01    call        @BoundErr
 00760C06    inc         ebx
 00760C07    imul        edx,ebx,6D
>00760C0A    jno         00760C11
 00760C0C    call        @IntOver
 00760C11    movzx       eax,byte ptr [eax+edx*2-0CB]
 00760C19    mov         dword ptr [ebp-3C],eax
 00760C1C    imul        eax,dword ptr [ebp-38],100
>00760C23    jno         00760C2A
 00760C25    call        @IntOver
 00760C2A    add         eax,dword ptr [ebp-3C]
>00760C2D    jno         00760C34
 00760C2F    call        @IntOver
 00760C34    cmp         eax,0FFFF
>00760C39    jbe         00760C40
 00760C3B    call        @BoundErr
 00760C40    mov         word ptr [ebp-32],ax
 00760C44    mov         eax,edi
 00760C46    cmp         eax,6
>00760C49    ja          00760D9F
 00760C4F    jmp         dword ptr [eax*4+760C56]
 00760C4F    dd          00760D9F
 00760C4F    dd          00760C72
 00760C4F    dd          00760CB8
 00760C4F    dd          00760CFE
 00760C4F    dd          00760D41
 00760C4F    dd          00760CFE
 00760C4F    dd          00760D41
 00760C72    push        5
 00760C74    push        1
 00760C76    lea         ecx,[ebp-234]
 00760C7C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00760C81    mov         eax,dword ptr [eax]
 00760C83    mov         eax,dword ptr [eax+14]
 00760C86    movzx       edx,word ptr [ebp-32]
 00760C8A    call        TFXPAD.SysIntToType
 00760C8F    mov         edx,dword ptr [ebp-234]
 00760C95    lea         eax,[ebp-230]
 00760C9B    call        @VarFromUStr
 00760CA0    lea         eax,[ebp-230]
 00760CA6    push        eax
 00760CA7    lea         eax,[ebp-10]
 00760CAA    push        eax
 00760CAB    call        @VarArrayPut
 00760CB0    add         esp,10
>00760CB3    jmp         00760D9F
 00760CB8    push        5
 00760CBA    push        1
 00760CBC    lea         ecx,[ebp-248]
 00760CC2    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00760CC7    mov         eax,dword ptr [eax]
 00760CC9    mov         eax,dword ptr [eax+14]
 00760CCC    movzx       edx,word ptr [ebp-32]
 00760CD0    call        TFXPAD.IntToCnv
 00760CD5    mov         edx,dword ptr [ebp-248]
 00760CDB    lea         eax,[ebp-244]
 00760CE1    call        @VarFromUStr
 00760CE6    lea         eax,[ebp-244]
 00760CEC    push        eax
 00760CED    lea         eax,[ebp-10]
 00760CF0    push        eax
 00760CF1    call        @VarArrayPut
 00760CF6    add         esp,10
>00760CF9    jmp         00760D9F
 00760CFE    push        5
 00760D00    push        1
 00760D02    lea         ecx,[ebp-25C]
 00760D08    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00760D0D    mov         eax,dword ptr [eax]
 00760D0F    mov         eax,dword ptr [eax+14]
 00760D12    movzx       edx,word ptr [ebp-32]
 00760D16    call        TFXPAD.ApoIntToType
 00760D1B    mov         edx,dword ptr [ebp-25C]
 00760D21    lea         eax,[ebp-258]
 00760D27    call        @VarFromUStr
 00760D2C    lea         eax,[ebp-258]
 00760D32    push        eax
 00760D33    lea         eax,[ebp-10]
 00760D36    push        eax
 00760D37    call        @VarArrayPut
 00760D3C    add         esp,10
>00760D3F    jmp         00760D9F
 00760D41    push        5
 00760D43    push        1
 00760D45    lea         eax,[ebp-270]
 00760D4B    push        eax
 00760D4C    mov         ecx,dword ptr [ebp-3C]
 00760D4F    cmp         ecx,0FF
>00760D55    jbe         00760D5C
 00760D57    call        @BoundErr
 00760D5C    mov         edx,dword ptr [ebp-38]
 00760D5F    cmp         edx,0FF
>00760D65    jbe         00760D6C
 00760D67    call        @BoundErr
 00760D6C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00760D71    mov         eax,dword ptr [eax]
 00760D73    mov         eax,dword ptr [eax+14]
 00760D76    call        TFXPAD.SapIntToType
 00760D7B    mov         edx,dword ptr [ebp-270]
 00760D81    lea         eax,[ebp-26C]
 00760D87    call        @VarFromUStr
 00760D8C    lea         eax,[ebp-26C]
 00760D92    push        eax
 00760D93    lea         eax,[ebp-10]
 00760D96    push        eax
 00760D97    call        @VarArrayPut
 00760D9C    add         esp,10
 00760D9F    lea         eax,[ebp-10]
 00760DA2    push        eax
 00760DA3    push        761650
 00760DA8    lea         edx,[ebp-288]
 00760DAE    mov         eax,dword ptr [ebp-30]
 00760DB1    call        IntToStr
 00760DB6    mov         ecx,dword ptr [ebp-288]
 00760DBC    lea         eax,[ebp-284]
 00760DC2    mov         edx,761668;'E'
 00760DC7    call        @UStrCat3
 00760DCC    mov         eax,dword ptr [ebp-284]
 00760DD2    push        eax
 00760DD3    lea         edx,[ebp-290]
 00760DD9    mov         eax,dword ptr [ebp-30]
 00760DDC    call        IntToStr
 00760DE1    mov         ecx,dword ptr [ebp-290]
 00760DE7    lea         eax,[ebp-28C]
 00760DED    mov         edx,761678;'A'
 00760DF2    call        @UStrCat3
 00760DF7    mov         eax,dword ptr [ebp-28C]
 00760DFD    push        eax
 00760DFE    push        76167C
 00760E03    push        76160C
 00760E08    mov         eax,dword ptr [ebp-18]
 00760E0B    push        eax
 00760E0C    lea         eax,[ebp-2A0]
 00760E12    push        eax
 00760E13    call        @DispInvoke
 00760E18    add         esp,0C
 00760E1B    lea         eax,[ebp-2A0]
 00760E21    push        eax
 00760E22    lea         eax,[ebp-280]
 00760E28    push        eax
 00760E29    call        @DispInvoke
 00760E2E    add         esp,14
 00760E31    lea         eax,[ebp-280]
 00760E37    push        eax
 00760E38    push        0
 00760E3A    call        @DispInvoke
 00760E3F    add         esp,10
 00760E42    mov         eax,dword ptr [ebp-14]
 00760E45    mov         eax,dword ptr [eax+3D8];TFileExportDlg.ProgressBar1:TProgressBar
 00760E4B    mov         edx,dword ptr [ebp-30]
 00760E4E    call        TProgressBar.SetPosition
 00760E53    add         dword ptr [ebp-30],1
>00760E57    jno         00760E5E
 00760E59    call        @IntOver
 00760E5E    inc         ebx
 00760E5F    cmp         ebx,0A0
>00760E65    jne         00760957
 00760E6B    inc         esi
 00760E6C    cmp         esi,2
>00760E6F    jne         0076092B
 00760E75    inc         dword ptr [ebp-2C]
 00760E78    cmp         dword ptr [ebp-2C],8
>00760E7C    jne         007608E7
 00760E82    push        0FFFFEFF4
 00760E87    push        761688
 00760E8C    lea         edx,[ebp-2B8]
 00760E92    mov         ebx,dword ptr [ebp-30]
 00760E95    sub         ebx,1
>00760E98    jno         00760E9F
 00760E9A    call        @IntOver
 00760E9F    mov         eax,ebx
 00760EA1    call        IntToStr
 00760EA6    mov         ecx,dword ptr [ebp-2B8]
 00760EAC    lea         eax,[ebp-2B4]
 00760EB2    mov         edx,7616AC;'A6:C'
 00760EB7    call        @UStrCat3
 00760EBC    mov         eax,dword ptr [ebp-2B4]
 00760EC2    push        eax
 00760EC3    push        761600
 00760EC8    push        76160C
 00760ECD    mov         eax,dword ptr [ebp-18]
 00760ED0    push        eax
 00760ED1    lea         eax,[ebp-2C8]
 00760ED7    push        eax
 00760ED8    call        @DispInvoke
 00760EDD    add         esp,0C
 00760EE0    lea         eax,[ebp-2C8]
 00760EE6    push        eax
 00760EE7    lea         eax,[ebp-2B0]
 00760EED    push        eax
 00760EEE    call        @DispInvoke
 00760EF3    add         esp,10
 00760EF6    lea         eax,[ebp-2B0]
 00760EFC    push        eax
 00760EFD    push        0
 00760EFF    call        @DispInvoke
 00760F04    add         esp,10
 00760F07    push        0A
 00760F09    push        7616B8
 00760F0E    push        1
 00760F10    push        7616C8
 00760F15    mov         eax,dword ptr [ebp-18]
 00760F18    push        eax
 00760F19    lea         eax,[ebp-2D8]
 00760F1F    push        eax
 00760F20    call        @DispInvoke
 00760F25    add         esp,10
 00760F28    lea         eax,[ebp-2D8]
 00760F2E    push        eax
 00760F2F    push        0
 00760F31    call        @DispInvoke
 00760F36    add         esp,10
 00760F39    push        0A
 00760F3B    push        7616B8
 00760F40    push        2
 00760F42    push        7616C8
 00760F47    mov         eax,dword ptr [ebp-18]
 00760F4A    push        eax
 00760F4B    lea         eax,[ebp-2E8]
 00760F51    push        eax
 00760F52    call        @DispInvoke
 00760F57    add         esp,10
 00760F5A    lea         eax,[ebp-2E8]
 00760F60    push        eax
 00760F61    push        0
 00760F63    call        @DispInvoke
 00760F68    add         esp,10
 00760F6B    push        0A
 00760F6D    push        7616B8
 00760F72    push        3
 00760F74    push        7616C8
 00760F79    mov         eax,dword ptr [ebp-18]
 00760F7C    push        eax
 00760F7D    lea         eax,[ebp-2F8]
 00760F83    push        eax
 00760F84    call        @DispInvoke
 00760F89    add         esp,10
 00760F8C    lea         eax,[ebp-2F8]
 00760F92    push        eax
 00760F93    push        0
 00760F95    call        @DispInvoke
 00760F9A    add         esp,10
 00760F9D    push        28
 00760F9F    push        7616B8
 00760FA4    push        4
 00760FA6    push        7616C8
 00760FAB    mov         eax,dword ptr [ebp-18]
 00760FAE    push        eax
 00760FAF    lea         eax,[ebp-308]
 00760FB5    push        eax
 00760FB6    call        @DispInvoke
 00760FBB    add         esp,10
 00760FBE    lea         eax,[ebp-308]
 00760FC4    push        eax
 00760FC5    push        0
 00760FC7    call        @DispInvoke
 00760FCC    add         esp,10
 00760FCF    push        1E
 00760FD1    push        7616B8
 00760FD6    push        5
 00760FD8    push        7616C8
 00760FDD    mov         eax,dword ptr [ebp-18]
 00760FE0    push        eax
 00760FE1    lea         eax,[ebp-318]
 00760FE7    push        eax
 00760FE8    call        @DispInvoke
 00760FED    add         esp,10
 00760FF0    lea         eax,[ebp-318]
 00760FF6    push        eax
 00760FF7    push        0
 00760FF9    call        @DispInvoke
 00760FFE    add         esp,10
 00761001    push        0A
 00761003    push        7616B8
 00761008    push        6
 0076100A    push        7616C8
 0076100F    mov         eax,dword ptr [ebp-18]
 00761012    push        eax
 00761013    lea         eax,[ebp-328]
 00761019    push        eax
 0076101A    call        @DispInvoke
 0076101F    add         esp,10
 00761022    lea         eax,[ebp-328]
 00761028    push        eax
 00761029    push        0
 0076102B    call        @DispInvoke
 00761030    add         esp,10
 00761033    push        0A
 00761035    push        7616B8
 0076103A    push        7
 0076103C    push        7616C8
 00761041    mov         eax,dword ptr [ebp-18]
 00761044    push        eax
 00761045    lea         eax,[ebp-338]
 0076104B    push        eax
 0076104C    call        @DispInvoke
 00761051    add         esp,10
 00761054    lea         eax,[ebp-338]
 0076105A    push        eax
 0076105B    push        0
 0076105D    call        @DispInvoke
 00761062    add         esp,10
 00761065    push        7616E0;'0'
 0076106A    push        7616E4
 0076106F    lea         edx,[ebp-350]
 00761075    mov         eax,dword ptr [ebp-30]
 00761078    call        IntToStr
 0076107D    mov         ecx,dword ptr [ebp-350]
 00761083    lea         eax,[ebp-34C]
 00761089    mov         edx,761704;'C'
 0076108E    call        @UStrCat3
 00761093    mov         eax,dword ptr [ebp-34C]
 00761099    push        eax
 0076109A    push        761714;'A11'
 0076109F    push        76167C
 007610A4    push        76160C
 007610A9    mov         eax,dword ptr [ebp-18]
 007610AC    push        eax
 007610AD    lea         eax,[ebp-360]
 007610B3    push        eax
 007610B4    call        @DispInvoke
 007610B9    add         esp,0C
 007610BC    lea         eax,[ebp-360]
 007610C2    push        eax
 007610C3    lea         eax,[ebp-348]
 007610C9    push        eax
 007610CA    call        @DispInvoke
 007610CF    add         esp,14
 007610D2    lea         eax,[ebp-348]
 007610D8    push        eax
 007610D9    push        0
 007610DB    call        @DispInvoke
 007610E0    add         esp,10
 007610E3    push        23
 007610E5    push        76171C
 007610EA    push        76172C
 007610EF    lea         edx,[ebp-388]
 007610F5    mov         eax,ebx
 007610F7    call        IntToStr
 007610FC    mov         ecx,dword ptr [ebp-388]
 00761102    lea         eax,[ebp-384]
 00761108    mov         edx,761744;'C11:C'
 0076110D    call        @UStrCat3
 00761112    mov         eax,dword ptr [ebp-384]
 00761118    push        eax
 00761119    push        761600
 0076111E    push        76160C
 00761123    mov         eax,dword ptr [ebp-18]
 00761126    push        eax
 00761127    lea         eax,[ebp-398]
 0076112D    push        eax
 0076112E    call        @DispInvoke
 00761133    add         esp,0C
 00761136    lea         eax,[ebp-398]
 0076113C    push        eax
 0076113D    lea         eax,[ebp-380]
 00761143    push        eax
 00761144    call        @DispInvoke
 00761149    add         esp,10
 0076114C    lea         eax,[ebp-380]
 00761152    push        eax
 00761153    lea         eax,[ebp-370]
 00761159    push        eax
 0076115A    call        @DispInvoke
 0076115F    add         esp,0C
 00761162    lea         eax,[ebp-370]
 00761168    push        eax
 00761169    push        0
 0076116B    call        @DispInvoke
 00761170    add         esp,10
 00761173    push        23
 00761175    push        76171C
 0076117A    push        76172C
 0076117F    lea         edx,[ebp-3C0]
 00761185    mov         eax,ebx
 00761187    call        IntToStr
 0076118C    mov         ecx,dword ptr [ebp-3C0]
 00761192    lea         eax,[ebp-3BC]
 00761198    mov         edx,76175C;'D11:D'
 0076119D    call        @UStrCat3
 007611A2    mov         eax,dword ptr [ebp-3BC]
 007611A8    push        eax
 007611A9    push        761600
 007611AE    push        76160C
 007611B3    mov         eax,dword ptr [ebp-18]
 007611B6    push        eax
 007611B7    lea         eax,[ebp-3D0]
 007611BD    push        eax
 007611BE    call        @DispInvoke
 007611C3    add         esp,0C
 007611C6    lea         eax,[ebp-3D0]
 007611CC    push        eax
 007611CD    lea         eax,[ebp-3B8]
 007611D3    push        eax
 007611D4    call        @DispInvoke
 007611D9    add         esp,10
 007611DC    lea         eax,[ebp-3B8]
 007611E2    push        eax
 007611E3    lea         eax,[ebp-3A8]
 007611E9    push        eax
 007611EA    call        @DispInvoke
 007611EF    add         esp,0C
 007611F2    lea         eax,[ebp-3A8]
 007611F8    push        eax
 007611F9    push        0
 007611FB    call        @DispInvoke
 00761200    add         esp,10
 00761203    push        761768
 00761208    push        1
 0076120A    push        1
 0076120C    push        761774
 00761211    push        76160C
 00761216    mov         eax,dword ptr [ebp-18]
 00761219    push        eax
 0076121A    lea         eax,[ebp-3F0]
 00761220    push        eax
 00761221    call        @DispInvoke
 00761226    add         esp,0C
 00761229    lea         eax,[ebp-3F0]
 0076122F    push        eax
 00761230    lea         eax,[ebp-3E0]
 00761236    push        eax
 00761237    call        @DispInvoke
 0076123C    add         esp,14
 0076123F    lea         eax,[ebp-3E0]
 00761245    push        eax
 00761246    push        0
 00761248    call        @DispInvoke
 0076124D    add         esp,0C
 00761250    xor         eax,eax
 00761252    pop         edx
 00761253    pop         ecx
 00761254    pop         ecx
 00761255    mov         dword ptr fs:[eax],edx
 00761258    push        7613E8
 0076125D    lea         eax,[ebp-3F0]
 00761263    mov         edx,dword ptr ds:[4012F0];Variant
 00761269    mov         ecx,3
 0076126E    call        @FinalizeArray
 00761273    lea         eax,[ebp-3C0]
 00761279    mov         edx,2
 0076127E    call        @UStrArrayClr
 00761283    lea         eax,[ebp-3B8]
 00761289    mov         edx,dword ptr ds:[4012F0];Variant
 0076128F    mov         ecx,3
 00761294    call        @FinalizeArray
 00761299    lea         eax,[ebp-388]
 0076129F    mov         edx,2
 007612A4    call        @UStrArrayClr
 007612A9    lea         eax,[ebp-380]
 007612AF    mov         edx,dword ptr ds:[4012F0];Variant
 007612B5    mov         ecx,3
 007612BA    call        @FinalizeArray
 007612BF    lea         eax,[ebp-350]
 007612C5    mov         edx,2
 007612CA    call        @UStrArrayClr
 007612CF    lea         eax,[ebp-348]
 007612D5    mov         edx,dword ptr ds:[4012F0];Variant
 007612DB    mov         ecx,9
 007612E0    call        @FinalizeArray
 007612E5    lea         eax,[ebp-2B8]
 007612EB    mov         edx,2
 007612F0    call        @UStrArrayClr
 007612F5    lea         eax,[ebp-2B0]
 007612FB    mov         edx,dword ptr ds:[4012F0];Variant
 00761301    mov         ecx,2
 00761306    call        @FinalizeArray
 0076130B    lea         eax,[ebp-290]
 00761311    mov         edx,4
 00761316    call        @UStrArrayClr
 0076131B    lea         eax,[ebp-280]
 00761321    call        @VarClr
 00761326    lea         eax,[ebp-270]
 0076132C    call        @UStrClr
 00761331    lea         eax,[ebp-26C]
 00761337    call        @VarClr
 0076133C    lea         eax,[ebp-25C]
 00761342    call        @UStrClr
 00761347    lea         eax,[ebp-258]
 0076134D    call        @VarClr
 00761352    lea         eax,[ebp-248]
 00761358    call        @UStrClr
 0076135D    lea         eax,[ebp-244]
 00761363    call        @VarClr
 00761368    lea         eax,[ebp-234]
 0076136E    call        @UStrClr
 00761373    lea         eax,[ebp-230]
 00761379    mov         edx,dword ptr ds:[4012F0];Variant
 0076137F    mov         ecx,2
 00761384    call        @FinalizeArray
 00761389    lea         eax,[ebp-210]
 0076138F    mov         edx,2
 00761394    call        @UStrArrayClr
 00761399    lea         eax,[ebp-208]
 0076139F    mov         edx,dword ptr ds:[4012F0];Variant
 007613A5    mov         ecx,2
 007613AA    call        @FinalizeArray
 007613AF    lea         eax,[ebp-1E8]
 007613B5    mov         edx,2
 007613BA    call        @UStrArrayClr
 007613BF    lea         eax,[ebp-1E0]
 007613C5    mov         edx,dword ptr ds:[4012F0];Variant
 007613CB    mov         ecx,1A
 007613D0    call        @FinalizeArray
 007613D5    lea         eax,[ebp-10]
 007613D8    call        @VarClr
 007613DD    ret
>007613DE    jmp         @HandleFinally
>007613E3    jmp         0076125D
 007613E8    pop         edi
 007613E9    pop         esi
 007613EA    pop         ebx
 007613EB    mov         esp,ebp
 007613ED    pop         ebp
 007613EE    ret
*}
end;

//00761BEC
function TAutoConfigFrm.AutoConfig(pars:TStringList):Integer;
begin
{*
 00761BEC    push        ebp
 00761BED    mov         ebp,esp
 00761BEF    mov         ecx,0A
 00761BF4    push        0
 00761BF6    push        0
 00761BF8    dec         ecx
>00761BF9    jne         00761BF4
 00761BFB    push        ebx
 00761BFC    push        esi
 00761BFD    push        edi
 00761BFE    mov         edi,edx
 00761C00    mov         esi,eax
 00761C02    xor         eax,eax
 00761C04    push        ebp
 00761C05    push        762192
 00761C0A    push        dword ptr fs:[eax]
 00761C0D    mov         dword ptr fs:[eax],esp
 00761C10    xor         eax,eax
 00761C12    mov         dword ptr [ebp-4],eax
 00761C15    xor         eax,eax
 00761C17    mov         dword ptr [esi+3C8],eax;TAutoConfigFrm.Auto:Integer
 00761C1D    mov         byte ptr [esi+3D8],0;TAutoConfigFrm.Prep:Boolean
 00761C24    mov         byte ptr [esi+3D9],0;TAutoConfigFrm.Rest:Boolean
 00761C2B    mov         eax,[00903780];gvar_00903780:TAutoConfigFrm
 00761C30    mov         eax,dword ptr [eax+3C0]
 00761C36    mov         edx,dword ptr [eax]
 00761C38    call        dword ptr [edx+124]
 00761C3E    lea         ecx,[ebp-8]
 00761C41    mov         edx,1
 00761C46    mov         eax,edi
 00761C48    mov         ebx,dword ptr [eax]
 00761C4A    call        dword ptr [ebx+0C];TStringList.Get
 00761C4D    mov         edx,dword ptr [ebp-8]
 00761C50    lea         eax,[esi+3C4];TAutoConfigFrm.FileName:string
 00761C56    call        @UStrAsg
 00761C5B    mov         eax,esi
 00761C5D    call        TCustomForm.Show
 00761C62    mov         dl,1
 00761C64    mov         eax,dword ptr [esi+3C4];TAutoConfigFrm.FileName:string
 00761C6A    call        0041EA18
 00761C6F    test        al,al
>00761C71    jne         00761C90
 00761C73    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761C79    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761C7F    mov         edx,7621B0;'File could not be found'
 00761C84    mov         ecx,dword ptr [eax]
 00761C86    call        dword ptr [ecx+3C];TStrings.Add
 00761C89    mov         dword ptr [ebp-4],2
 00761C90    lea         ecx,[ebp-0C]
 00761C93    mov         edx,7621EC;'auto'
 00761C98    mov         eax,edi
 00761C9A    call        TStrings.GetValue
 00761C9F    mov         eax,dword ptr [ebp-0C]
 00761CA2    lea         edx,[esi+3C8];TAutoConfigFrm.Auto:Integer
 00761CA8    call        0041E5A0
 00761CAD    test        al,al
>00761CAF    jne         00761CCE
 00761CB1    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761CB7    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761CBD    mov         edx,762204;'Missing auto mode'
 00761CC2    mov         ecx,dword ptr [eax]
 00761CC4    call        dword ptr [ecx+3C];TStrings.Add
 00761CC7    mov         dword ptr [ebp-4],1
 00761CCE    lea         ecx,[ebp-10]
 00761CD1    mov         edx,762234;'panel'
 00761CD6    mov         eax,edi
 00761CD8    call        TStrings.GetValue
 00761CDD    mov         eax,dword ptr [ebp-10]
 00761CE0    lea         edx,[esi+3CC];TAutoConfigFrm.Panel:Integer
 00761CE6    call        0041E5A0
 00761CEB    test        al,al
>00761CED    jne         00761D0C
 00761CEF    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761CF5    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761CFB    mov         edx,76224C;'Missing panel id'
 00761D00    mov         ecx,dword ptr [eax]
 00761D02    call        dword ptr [ecx+3C];TStrings.Add
 00761D05    mov         dword ptr [ebp-4],1
 00761D0C    mov         eax,dword ptr [esi+3CC];TAutoConfigFrm.Panel:Integer
 00761D12    test        eax,eax
>00761D14    jl          00761D1B
 00761D16    cmp         eax,21
>00761D19    jl          00761D38
 00761D1B    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761D21    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761D27    mov         edx,76227C;'Panel id out of range'
 00761D2C    mov         ecx,dword ptr [eax]
 00761D2E    call        dword ptr [ecx+3C];TStrings.Add
 00761D31    mov         dword ptr [ebp-4],1
 00761D38    lea         ecx,[ebp-14]
 00761D3B    mov         edx,7622B4;'port'
 00761D40    mov         eax,edi
 00761D42    call        TStrings.GetValue
 00761D47    mov         eax,dword ptr [ebp-14]
 00761D4A    lea         edx,[esi+3D0];TAutoConfigFrm.Port:Integer
 00761D50    call        0041E5A0
 00761D55    test        al,al
>00761D57    jne         00761D76
 00761D59    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761D5F    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761D65    mov         edx,7622CC;'Missing port id'
 00761D6A    mov         ecx,dword ptr [eax]
 00761D6C    call        dword ptr [ecx+3C];TStrings.Add
 00761D6F    mov         dword ptr [ebp-4],1
 00761D76    mov         eax,dword ptr [esi+3D0];TAutoConfigFrm.Port:Integer
 00761D7C    test        eax,eax
>00761D7E    jl          00761D85
 00761D80    cmp         eax,64
>00761D83    jl          00761DA2
 00761D85    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761D8B    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761D91    mov         edx,7622F8;'Port id out of range'
 00761D96    mov         ecx,dword ptr [eax]
 00761D98    call        dword ptr [ecx+3C];TStrings.Add
 00761D9B    mov         dword ptr [ebp-4],1
 00761DA2    mov         edx,762330;'prep'
 00761DA7    mov         eax,edi
 00761DA9    mov         ecx,dword ptr [eax]
 00761DAB    call        dword ptr [ecx+58];TStringList.IndexOf
 00761DAE    inc         eax
>00761DAF    je          00761DF6
 00761DB1    lea         ecx,[ebp-18]
 00761DB4    mov         edx,762348;'baud'
 00761DB9    mov         eax,edi
 00761DBB    call        TStrings.GetValue
 00761DC0    mov         eax,dword ptr [ebp-18]
 00761DC3    lea         edx,[esi+3D4];TAutoConfigFrm.Baud:Integer
 00761DC9    call        0041E5A0
 00761DCE    test        al,al
>00761DD0    jne         00761DEF
 00761DD2    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761DD8    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761DDE    mov         edx,762360;'Missing baud rate'
 00761DE3    mov         ecx,dword ptr [eax]
 00761DE5    call        dword ptr [ecx+3C];TStrings.Add
 00761DE8    mov         dword ptr [ebp-4],1
 00761DEF    mov         byte ptr [esi+3D8],1;TAutoConfigFrm.Prep:Boolean
 00761DF6    mov         edx,762390;'rest'
 00761DFB    mov         eax,edi
 00761DFD    mov         ecx,dword ptr [eax]
 00761DFF    call        dword ptr [ecx+58];TStringList.IndexOf
 00761E02    inc         eax
>00761E03    je          00761E0C
 00761E05    mov         byte ptr [esi+3D9],1;TAutoConfigFrm.Rest:Boolean
 00761E0C    cmp         dword ptr [ebp-4],0
>00761E10    je          00761E2D
 00761E12    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761E18    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761E1E    mov         edx,7623A8;'Error in autoconfig parameters, cannot continue.'
 00761E23    mov         ecx,dword ptr [eax]
 00761E25    call        dword ptr [ecx+3C];TStrings.Add
>00761E28    jmp         0076216A
 00761E2D    push        762418;'Auto config: Panel '
 00761E32    lea         edx,[ebp-20]
 00761E35    mov         eax,dword ptr [esi+3CC];TAutoConfigFrm.Panel:Integer
 00761E3B    call        IntToStr
 00761E40    push        dword ptr [ebp-20]
 00761E43    push        76244C;' at port '
 00761E48    lea         edx,[ebp-24]
 00761E4B    mov         eax,dword ptr [esi+3D0];TAutoConfigFrm.Port:Integer
 00761E51    call        IntToStr
 00761E56    push        dword ptr [ebp-24]
 00761E59    lea         eax,[ebp-1C]
 00761E5C    mov         edx,4
 00761E61    call        @UStrCatN
 00761E66    mov         edx,dword ptr [ebp-1C]
 00761E69    mov         eax,esi
 00761E6B    call        TControl.SetText
 00761E70    lea         eax,[ebp-28]
 00761E73    push        eax
 00761E74    mov         eax,dword ptr [esi+3C4];TAutoConfigFrm.FileName:string
 00761E7A    mov         dword ptr [ebp-30],eax
 00761E7D    mov         byte ptr [ebp-2C],11
 00761E81    lea         edx,[ebp-30]
 00761E84    xor         ecx,ecx
 00761E86    mov         eax,76246C;'File name = %s'
 00761E8B    call        Format
 00761E90    mov         edx,dword ptr [ebp-28]
 00761E93    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761E99    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761E9F    mov         ecx,dword ptr [eax]
 00761EA1    call        dword ptr [ecx+3C];TStrings.Add
 00761EA4    lea         eax,[ebp-34]
 00761EA7    push        eax
 00761EA8    mov         eax,dword ptr [esi+3C8];TAutoConfigFrm.Auto:Integer
 00761EAE    mov         dword ptr [ebp-30],eax
 00761EB1    mov         byte ptr [ebp-2C],0
 00761EB5    lea         edx,[ebp-30]
 00761EB8    xor         ecx,ecx
 00761EBA    mov         eax,762498;'Auto      = %d'
 00761EBF    call        Format
 00761EC4    mov         edx,dword ptr [ebp-34]
 00761EC7    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761ECD    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761ED3    mov         ecx,dword ptr [eax]
 00761ED5    call        dword ptr [ecx+3C];TStrings.Add
 00761ED8    lea         eax,[ebp-38]
 00761EDB    push        eax
 00761EDC    mov         eax,dword ptr [esi+3CC];TAutoConfigFrm.Panel:Integer
 00761EE2    mov         dword ptr [ebp-30],eax
 00761EE5    mov         byte ptr [ebp-2C],0
 00761EE9    lea         edx,[ebp-30]
 00761EEC    xor         ecx,ecx
 00761EEE    mov         eax,7624C4;'Panel     = %d'
 00761EF3    call        Format
 00761EF8    mov         edx,dword ptr [ebp-38]
 00761EFB    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761F01    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761F07    mov         ecx,dword ptr [eax]
 00761F09    call        dword ptr [ecx+3C];TStrings.Add
 00761F0C    lea         eax,[ebp-3C]
 00761F0F    push        eax
 00761F10    mov         eax,dword ptr [esi+3D0];TAutoConfigFrm.Port:Integer
 00761F16    mov         dword ptr [ebp-30],eax
 00761F19    mov         byte ptr [ebp-2C],0
 00761F1D    lea         edx,[ebp-30]
 00761F20    xor         ecx,ecx
 00761F22    mov         eax,7624F0;'Port      = %d'
 00761F27    call        Format
 00761F2C    mov         edx,dword ptr [ebp-3C]
 00761F2F    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761F35    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761F3B    mov         ecx,dword ptr [eax]
 00761F3D    call        dword ptr [ecx+3C];TStrings.Add
 00761F40    lea         eax,[ebp-40]
 00761F43    push        eax
 00761F44    mov         eax,dword ptr [esi+3D4];TAutoConfigFrm.Baud:Integer
 00761F4A    mov         dword ptr [ebp-30],eax
 00761F4D    mov         byte ptr [ebp-2C],0
 00761F51    lea         edx,[ebp-30]
 00761F54    xor         ecx,ecx
 00761F56    mov         eax,76251C;'Baud      = %d'
 00761F5B    call        Format
 00761F60    mov         edx,dword ptr [ebp-40]
 00761F63    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761F69    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761F6F    mov         ecx,dword ptr [eax]
 00761F71    call        dword ptr [ecx+3C];TStrings.Add
 00761F74    lea         eax,[ebp-44]
 00761F77    push        eax
 00761F78    movzx       eax,byte ptr [esi+3D8];TAutoConfigFrm.Prep:Boolean
 00761F7F    mov         dword ptr [ebp-30],eax
 00761F82    mov         byte ptr [ebp-2C],0
 00761F86    lea         edx,[ebp-30]
 00761F89    xor         ecx,ecx
 00761F8B    mov         eax,762548;'Prepare   = %d'
 00761F90    call        Format
 00761F95    mov         edx,dword ptr [ebp-44]
 00761F98    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761F9E    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761FA4    mov         ecx,dword ptr [eax]
 00761FA6    call        dword ptr [ecx+3C];TStrings.Add
 00761FA9    lea         eax,[ebp-48]
 00761FAC    push        eax
 00761FAD    movzx       eax,byte ptr [esi+3D9];TAutoConfigFrm.Rest:Boolean
 00761FB4    mov         dword ptr [ebp-30],eax
 00761FB7    mov         byte ptr [ebp-2C],0
 00761FBB    lea         edx,[ebp-30]
 00761FBE    xor         ecx,ecx
 00761FC0    mov         eax,762574;'Restart   = %d'
 00761FC5    call        Format
 00761FCA    mov         edx,dword ptr [ebp-48]
 00761FCD    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00761FD3    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00761FD9    mov         ecx,dword ptr [eax]
 00761FDB    call        dword ptr [ecx+3C];TStrings.Add
 00761FDE    mov         eax,dword ptr [esi+3D4];TAutoConfigFrm.Baud:Integer
 00761FE4    cmp         eax,2580
>00761FE9    jg          00762004
>00761FEB    je          0076201C
 00761FED    sub         eax,4B0
>00761FF2    je          0076201C
 00761FF4    sub         eax,4B0
>00761FF9    je          0076201C
 00761FFB    sub         eax,960
>00762000    je          0076201C
>00762002    jmp         00762012
 00762004    sub         eax,4B00
>00762009    je          0076201C
 0076200B    sub         eax,4B00
>00762010    je          0076201C
 00762012    mov         dword ptr [esi+3D4],2580;TAutoConfigFrm.Baud:Integer
 0076201C    mov         edx,dword ptr [esi+3CC];TAutoConfigFrm.Panel:Integer
 00762022    cmp         edx,0FF
>00762028    jbe         0076202F
 0076202A    call        @BoundErr
 0076202F    lea         eax,[esi+3C4];TAutoConfigFrm.FileName:string
 00762035    call        00747C44
 0076203A    test        al,al
>0076203C    jne         00762060
 0076203E    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00762044    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 0076204A    mov         edx,7625A0;'File reading error, cannot continue.'
 0076204F    mov         ecx,dword ptr [eax]
 00762051    call        dword ptr [ecx+3C];TStrings.Add
 00762054    mov         dword ptr [ebp-4],3
>0076205B    jmp         0076216A
 00762060    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00762065    mov         eax,dword ptr [eax]
 00762067    mov         edx,dword ptr [esi+3CC];TAutoConfigFrm.Panel:Integer
 0076206D    call        TFXNet.GetPanel
 00762072    test        eax,eax
>00762074    je          0076209F
 00762076    mov         eax,[007C45D8];^gvar_008DF5D0:Integer
 0076207B    mov         edx,dword ptr [esi+3CC];TAutoConfigFrm.Panel:Integer
 00762081    mov         dword ptr [eax],edx
 00762083    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00762088    mov         eax,dword ptr [eax]
 0076208A    mov         edx,dword ptr [esi+3CC];TAutoConfigFrm.Panel:Integer
 00762090    call        TFXNet.GetPanel
 00762095    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0076209B    mov         dword ptr [edx],eax
>0076209D    jmp         007620C1
 0076209F    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 007620A5    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 007620AB    mov         edx,7625F8;'Panel doesn''t exist, cannot continue.'
 007620B0    mov         ecx,dword ptr [eax]
 007620B2    call        dword ptr [ecx+3C];TStrings.Add
 007620B5    mov         dword ptr [ebp-4],3
>007620BC    jmp         0076216A
 007620C1    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 007620C6    mov         eax,dword ptr [eax]
 007620C8    mov         dword ptr [eax+244],esi
 007620CE    mov         dword ptr [eax+240],76275C;TAutoConfigFrm.AcControl
 007620D8    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 007620DD    mov         eax,dword ptr [eax]
 007620DF    mov         eax,dword ptr [eax+238]
 007620E5    sub         eax,0FFFFFFFF
>007620E8    je          007620FD
 007620EA    dec         eax
>007620EB    jne         00762137
 007620ED    mov         ecx,762650;'Starting auto config'
 007620F2    xor         edx,edx
 007620F4    mov         eax,esi
 007620F6    call        TAutoConfigFrm.AcControl
>007620FB    jmp         0076216A
 007620FD    lea         eax,[ebp-4C]
 00762100    push        eax
 00762101    mov         eax,[007C4A34];^gvar_00903690:TCommManager
 00762106    mov         eax,dword ptr [eax]
 00762108    add         eax,28
 0076210B    mov         dword ptr [ebp-30],eax
 0076210E    mov         byte ptr [ebp-2C],0A
 00762112    lea         edx,[ebp-30]
 00762115    xor         ecx,ecx
 00762117    mov         eax,762688;'AutoConfig is not supported by the loaded SDL module,
%s'
 0076211C    call        Format
 00762121    mov         edx,dword ptr [ebp-4C]
 00762124    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 0076212A    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00762130    mov         ecx,dword ptr [eax]
 00762132    call        dword ptr [ecx+3C];TStrings.Add
>00762135    jmp         0076216A
 00762137    lea         eax,[ebp-50]
 0076213A    push        eax
 0076213B    call        kernel32.GetLastError
 00762140    mov         dword ptr [ebp-30],eax
 00762143    mov         byte ptr [ebp-2C],0
 00762147    lea         edx,[ebp-30]
 0076214A    xor         ecx,ecx
 0076214C    mov         eax,762708;'EsSdl32.dll could not be loaded. Error %d'
 00762151    call        Format
 00762156    mov         edx,dword ptr [ebp-50]
 00762159    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 0076215F    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00762165    mov         ecx,dword ptr [eax]
 00762167    call        dword ptr [ecx+3C];TStrings.Add
 0076216A    xor         eax,eax
 0076216C    pop         edx
 0076216D    pop         ecx
 0076216E    pop         ecx
 0076216F    mov         dword ptr fs:[eax],edx
 00762172    push        762199
 00762177    lea         eax,[ebp-50]
 0076217A    mov         edx,8
 0076217F    call        @UStrArrayClr
 00762184    lea         eax,[ebp-28]
 00762187    mov         edx,9
 0076218C    call        @UStrArrayClr
 00762191    ret
>00762192    jmp         @HandleFinally
>00762197    jmp         00762177
 00762199    mov         eax,dword ptr [ebp-4]
 0076219C    pop         edi
 0076219D    pop         esi
 0076219E    pop         ebx
 0076219F    mov         esp,ebp
 007621A1    pop         ebp
 007621A2    ret
*}
end;

//0076275C
procedure TAutoConfigFrm.AcControl(Event:TAcEvent; msg:string);
begin
{*
 0076275C    push        ebp
 0076275D    mov         ebp,esp
 0076275F    push        0
 00762761    push        0
 00762763    push        0
 00762765    push        0
 00762767    push        ebx
 00762768    push        esi
 00762769    mov         dword ptr [ebp-4],ecx
 0076276C    mov         ebx,edx
 0076276E    mov         esi,eax
 00762770    mov         eax,dword ptr [ebp-4]
 00762773    call        @UStrAddRef
 00762778    xor         eax,eax
 0076277A    push        ebp
 0076277B    push        7629A3
 00762780    push        dword ptr fs:[eax]
 00762783    mov         dword ptr fs:[eax],esp
 00762786    cmp         bl,5
>00762789    jne         007627B4
 0076278B    lea         eax,[ebp-8]
 0076278E    mov         ecx,dword ptr [ebp-4]
 00762791    mov         edx,7629BC;'AcNotify:  '
 00762796    call        @UStrCat3
 0076279B    mov         edx,dword ptr [ebp-8]
 0076279E    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 007627A4    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 007627AA    mov         ecx,dword ptr [eax]
 007627AC    call        dword ptr [ecx+3C];TStrings.Add
>007627AF    jmp         00762988
 007627B4    cmp         bl,6
>007627B7    jne         007627E9
 007627B9    lea         eax,[ebp-0C]
 007627BC    mov         ecx,dword ptr [ebp-4]
 007627BF    mov         edx,7629E0;'AcError:  '
 007627C4    call        @UStrCat3
 007627C9    mov         edx,dword ptr [ebp-0C]
 007627CC    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 007627D2    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 007627D8    mov         ecx,dword ptr [eax]
 007627DA    call        dword ptr [ecx+3C];TStrings.Add
 007627DD    mov         byte ptr [esi+3DA],0;TAutoConfigFrm.AutoConfigState:TAutoConfigState
>007627E4    jmp         00762988
 007627E9    lea         eax,[ebp-10]
 007627EC    mov         ecx,dword ptr [ebp-4]
 007627EF    mov         edx,762A04;'AcControl: '
 007627F4    call        @UStrCat3
 007627F9    mov         edx,dword ptr [ebp-10]
 007627FC    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00762802    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00762808    mov         ecx,dword ptr [eax]
 0076280A    call        dword ptr [ecx+3C];TStrings.Add
 0076280D    movzx       eax,byte ptr [esi+3DA];TAutoConfigFrm.AutoConfigState:TAutoConfigState
 00762814    cmp         eax,4
>00762817    ja          00762988
 0076281D    jmp         dword ptr [eax*4+762824]
 0076281D    dd          00762838
 0076281D    dd          00762881
 0076281D    dd          007628FA
 0076281D    dd          00762934
 0076281D    dd          0076297C
 00762838    sub         bl,1
>0076283B    jae         00762988
 00762841    mov         byte ptr [esi+3DA],1;TAutoConfigFrm.AutoConfigState:TAutoConfigState
 00762848    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 0076284E    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00762854    mov         edx,762A28;'AC_SETTING'
 00762859    mov         ecx,dword ptr [eax]
 0076285B    call        dword ptr [ecx+3C];TStrings.Add
 0076285E    mov         eax,dword ptr [esi+3D4];TAutoConfigFrm.Baud:Integer
 00762864    push        eax
 00762865    mov         eax,[007C46A8];^gvar_009036C0:TFXCommHandler
 0076286A    mov         eax,dword ptr [eax]
 0076286C    mov         ecx,dword ptr [esi+3D0];TAutoConfigFrm.Port:Integer
 00762872    mov         edx,1
 00762877    call        TFXCommHandler.SetComm
>0076287C    jmp         00762988
 00762881    dec         bl
>00762883    jne         00762988
 00762889    cmp         byte ptr [esi+3D8],0;TAutoConfigFrm.Prep:Boolean
>00762890    je          007628C6
 00762892    mov         byte ptr [esi+3DA],2;TAutoConfigFrm.AutoConfigState:TAutoConfigState
 00762899    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 0076289F    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 007628A5    mov         edx,762A4C;'AC_PREPARING'
 007628AA    mov         ecx,dword ptr [eax]
 007628AC    call        dword ptr [ecx+3C];TStrings.Add
 007628AF    mov         eax,[007C46A8];^gvar_009036C0:TFXCommHandler
 007628B4    mov         eax,dword ptr [eax]
 007628B6    mov         edx,dword ptr ds:[903780];gvar_00903780:TAutoConfigFrm
 007628BC    call        TFXCommHandler.PrepareBtnClick
>007628C1    jmp         00762988
 007628C6    mov         byte ptr [esi+3DA],3;TAutoConfigFrm.AutoConfigState:TAutoConfigState
 007628CD    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 007628D3    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 007628D9    mov         edx,762A74;'AC_CONFIGURING'
 007628DE    mov         ecx,dword ptr [eax]
 007628E0    call        dword ptr [ecx+3C];TStrings.Add
 007628E3    mov         eax,[007C46A8];^gvar_009036C0:TFXCommHandler
 007628E8    mov         eax,dword ptr [eax]
 007628EA    mov         edx,dword ptr ds:[903780];gvar_00903780:TAutoConfigFrm
 007628F0    call        TFXCommHandler.SendBtnClick
>007628F5    jmp         00762988
 007628FA    sub         bl,2
>007628FD    jne         00762988
 00762903    mov         byte ptr [esi+3DA],3;TAutoConfigFrm.AutoConfigState:TAutoConfigState
 0076290A    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 00762910    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00762916    mov         edx,762A74;'AC_CONFIGURING'
 0076291B    mov         ecx,dword ptr [eax]
 0076291D    call        dword ptr [ecx+3C];TStrings.Add
 00762920    mov         eax,[007C46A8];^gvar_009036C0:TFXCommHandler
 00762925    mov         eax,dword ptr [eax]
 00762927    mov         edx,dword ptr ds:[903780];gvar_00903780:TAutoConfigFrm
 0076292D    call        TFXCommHandler.SendBtnClick
>00762932    jmp         00762988
 00762934    sub         bl,3
>00762937    jne         00762988
 00762939    cmp         byte ptr [esi+3D9],0;TAutoConfigFrm.Rest:Boolean
>00762940    je          00762973
 00762942    mov         byte ptr [esi+3DA],4;TAutoConfigFrm.AutoConfigState:TAutoConfigState
 00762949    mov         eax,dword ptr [esi+3C0];TAutoConfigFrm.Memo1:TMemo
 0076294F    mov         eax,dword ptr [eax+2C8];TMemo.FLines:TStrings
 00762955    mov         edx,762AA0;'AC_RESTARTING'
 0076295A    mov         ecx,dword ptr [eax]
 0076295C    call        dword ptr [ecx+3C];TStrings.Add
 0076295F    mov         eax,[007C46A8];^gvar_009036C0:TFXCommHandler
 00762964    mov         eax,dword ptr [eax]
 00762966    mov         edx,dword ptr ds:[903780];gvar_00903780:TAutoConfigFrm
 0076296C    call        TFXCommHandler.RestartBtnClick
>00762971    jmp         00762988
 00762973    mov         eax,esi
 00762975    call        TCustomForm.Close
>0076297A    jmp         00762988
 0076297C    sub         bl,4
>0076297F    jne         00762988
 00762981    mov         eax,esi
 00762983    call        TCustomForm.Close
 00762988    xor         eax,eax
 0076298A    pop         edx
 0076298B    pop         ecx
 0076298C    pop         ecx
 0076298D    mov         dword ptr fs:[eax],edx
 00762990    push        7629AA
 00762995    lea         eax,[ebp-10]
 00762998    mov         edx,4
 0076299D    call        @UStrArrayClr
 007629A2    ret
>007629A3    jmp         @HandleFinally
>007629A8    jmp         00762995
 007629AA    pop         esi
 007629AB    pop         ebx
 007629AC    mov         esp,ebp
 007629AE    pop         ebp
 007629AF    ret
*}
end;

//00762ABC
procedure TAutoConfigFrm.FormClose(Sender:TObject; var Action:UITypes.TCloseAction);
begin
{*
 00762ABC    mov         eax,[007C4A18];^Application:TApplication
 00762AC1    mov         eax,dword ptr [eax]
 00762AC3    call        TApplication.Terminate
 00762AC8    ret
*}
end;

//00762ACC
procedure TAutoConfigFrm.FormCreate(Sender:TObject);
begin
{*
 00762ACC    push        ebp
 00762ACD    mov         ebp,esp
 00762ACF    add         esp,0FFFFFFF0
 00762AD2    push        ebx
 00762AD3    xor         ecx,ecx
 00762AD5    mov         dword ptr [ebp-4],ecx
 00762AD8    mov         dword ptr [ebp-10],ecx
 00762ADB    mov         ebx,eax
 00762ADD    xor         eax,eax
 00762ADF    push        ebp
 00762AE0    push        762B3F
 00762AE5    push        dword ptr fs:[eax]
 00762AE8    mov         dword ptr fs:[eax],esp
 00762AEB    lea         eax,[ebp-4]
 00762AEE    push        eax
 00762AEF    lea         edx,[ebp-10]
 00762AF2    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00762AF7    mov         eax,dword ptr [eax]
 00762AF9    call        005DDC74
 00762AFE    mov         eax,dword ptr [ebp-10]
 00762B01    mov         dword ptr [ebp-0C],eax
 00762B04    mov         byte ptr [ebp-8],11
 00762B08    lea         edx,[ebp-0C]
 00762B0B    xor         ecx,ecx
 00762B0D    mov         eax,762B58;'Auto Config (%s)'
 00762B12    call        Format
 00762B17    mov         edx,dword ptr [ebp-4]
 00762B1A    mov         eax,ebx
 00762B1C    call        TControl.SetText
 00762B21    xor         eax,eax
 00762B23    pop         edx
 00762B24    pop         ecx
 00762B25    pop         ecx
 00762B26    mov         dword ptr fs:[eax],edx
 00762B29    push        762B46
 00762B2E    lea         eax,[ebp-10]
 00762B31    call        @UStrClr
 00762B36    lea         eax,[ebp-4]
 00762B39    call        @UStrClr
 00762B3E    ret
>00762B3F    jmp         @HandleFinally
>00762B44    jmp         00762B2E
 00762B46    pop         ebx
 00762B47    mov         esp,ebp
 00762B49    pop         ebp
 00762B4A    ret
*}
end;

//00763098
procedure TSpecialSettingsFrm.Translate(IniFile:TFXIniFile);
begin
{*
 00763098    push        ebp
 00763099    mov         ebp,esp
 0076309B    mov         ecx,4
 007630A0    push        0
 007630A2    push        0
 007630A4    dec         ecx
>007630A5    jne         007630A0
 007630A7    push        ecx
 007630A8    push        ebx
 007630A9    push        esi
 007630AA    push        edi
 007630AB    mov         esi,edx
 007630AD    mov         ebx,eax
 007630AF    xor         eax,eax
 007630B1    push        ebp
 007630B2    push        763218
 007630B7    push        dword ptr fs:[eax]
 007630BA    mov         dword ptr fs:[eax],esp
 007630BD    push        763234;'Special settings'
 007630C2    lea         eax,[ebp-8]
 007630C5    push        eax
 007630C6    mov         ecx,763264;'sSpecialSettingsFrm'
 007630CB    mov         edx,763298;'FXSpecialSettingsFrm'
 007630D0    mov         eax,esi
 007630D2    mov         edi,dword ptr [eax]
 007630D4    call        dword ptr [edi+4];TFXIniFile.ReadString
 007630D7    push        dword ptr [ebp-8]
 007630DA    push        7632D0;' ('
 007630DF    lea         edx,[ebp-0C]
 007630E2    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007630E7    mov         eax,dword ptr [eax]
 007630E9    call        005DDC74
 007630EE    push        dword ptr [ebp-0C]
 007630F1    push        7632E4;')'
 007630F6    lea         eax,[ebp-4]
 007630F9    mov         edx,4
 007630FE    call        @UStrCatN
 00763103    mov         edx,dword ptr [ebp-4]
 00763106    mov         eax,ebx
 00763108    call        TControl.SetText
 0076310D    push        7632F4;'Activate ''No Zones Display'''
 00763112    lea         eax,[ebp-10]
 00763115    push        eax
 00763116    mov         ecx,763338;'sgbNoZones'
 0076311B    mov         edx,763298;'FXSpecialSettingsFrm'
 00763120    mov         eax,esi
 00763122    mov         edi,dword ptr [eax]
 00763124    call        dword ptr [edi+4];TFXIniFile.ReadString
 00763127    mov         edx,dword ptr [ebp-10]
 0076312A    mov         eax,dword ptr [ebx+3C0];TSpecialSettingsFrm.gbNoZones:TGroupBox
 00763130    call        TControl.SetText
 00763135    push        76335C;'Enter the password and press ''Activate'' to activate the ''No Zones Display'' i...
 0076313A    lea         eax,[ebp-14]
 0076313D    push        eax
 0076313E    mov         ecx,763464;'slbNzDescription'
 00763143    mov         edx,763298;'FXSpecialSettingsFrm'
 00763148    mov         eax,esi
 0076314A    mov         edi,dword ptr [eax]
 0076314C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0076314F    mov         edx,dword ptr [ebp-14]
 00763152    mov         eax,dword ptr [ebx+3C4];TSpecialSettingsFrm.lbNzDescription:TLabel
 00763158    call        TControl.SetText
 0076315D    push        763494;'Activate'
 00763162    lea         eax,[ebp-18]
 00763165    push        eax
 00763166    mov         ecx,7634B4;'sbtnNzActivate'
 0076316B    mov         edx,763298;'FXSpecialSettingsFrm'
 00763170    mov         eax,esi
 00763172    mov         edi,dword ptr [eax]
 00763174    call        dword ptr [edi+4];TFXIniFile.ReadString
 00763177    mov         edx,dword ptr [ebp-18]
 0076317A    mov         eax,dword ptr [ebx+3CC];TSpecialSettingsFrm.btnNzActivate:TBitBtn
 00763180    call        TControl.SetText
 00763185    push        7634E0;'Activate ''Start delay'' for ALC loops'
 0076318A    lea         eax,[ebp-1C]
 0076318D    push        eax
 0076318E    mov         ecx,763538;'sgbAlcStartDelay'
 00763193    mov         edx,763298;'FXSpecialSettingsFrm'
 00763198    mov         eax,esi
 0076319A    mov         edi,dword ptr [eax]
 0076319C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0076319F    mov         edx,dword ptr [ebp-1C]
 007631A2    mov         eax,dword ptr [ebx+3D0];TSpecialSettingsFrm.gbAlcStartDelay:TGroupBox
 007631A8    call        TControl.SetText
 007631AD    push        763568;'Enter the password and press ''Activate'' to activate the ''Start delay'' items ...
 007631B2    lea         eax,[ebp-20]
 007631B5    push        eax
 007631B6    mov         ecx,76366C;'slbSdDescription'
 007631BB    mov         edx,763298;'FXSpecialSettingsFrm'
 007631C0    mov         eax,esi
 007631C2    mov         edi,dword ptr [eax]
 007631C4    call        dword ptr [edi+4];TFXIniFile.ReadString
 007631C7    mov         edx,dword ptr [ebp-20]
 007631CA    mov         eax,dword ptr [ebx+3D4];TSpecialSettingsFrm.lbSdDescription:TLabel
 007631D0    call        TControl.SetText
 007631D5    push        763494;'Activate'
 007631DA    lea         eax,[ebp-24]
 007631DD    push        eax
 007631DE    mov         ecx,76369C;'sbtnSdActivate'
 007631E3    mov         edx,763298;'FXSpecialSettingsFrm'
 007631E8    mov         eax,esi
 007631EA    mov         esi,dword ptr [eax]
 007631EC    call        dword ptr [esi+4];TFXIniFile.ReadString
 007631EF    mov         edx,dword ptr [ebp-24]
 007631F2    mov         eax,dword ptr [ebx+3DC];TSpecialSettingsFrm.btnSdActivate:TBitBtn
 007631F8    call        TControl.SetText
 007631FD    xor         eax,eax
 007631FF    pop         edx
 00763200    pop         ecx
 00763201    pop         ecx
 00763202    mov         dword ptr fs:[eax],edx
 00763205    push        76321F
 0076320A    lea         eax,[ebp-24]
 0076320D    mov         edx,9
 00763212    call        @UStrArrayClr
 00763217    ret
>00763218    jmp         @HandleFinally
>0076321D    jmp         0076320A
 0076321F    pop         edi
 00763220    pop         esi
 00763221    pop         ebx
 00763222    mov         esp,ebp
 00763224    pop         ebp
 00763225    ret
*}
end;

//007636BC
procedure TSpecialSettingsFrm.btnNzActivateClick(Sender:TObject);
begin
{*
 007636BC    mov         dword ptr [eax+0C],1;TSpecialSettingsFrm.FTag:NativeInt
 007636C3    ret
*}
end;

//007636C4
procedure TSpecialSettingsFrm.btnSdActivateClick(Sender:TObject);
begin
{*
 007636C4    mov         dword ptr [eax+0C],2;TSpecialSettingsFrm.FTag:NativeInt
 007636CB    ret
*}
end;

//007636CC
procedure TSpecialSettingsFrm.FormCreate(Sender:TObject);
begin
{*
 007636CC    push        ebp
 007636CD    mov         ebp,esp
 007636CF    add         esp,0FFFFFFE8
 007636D2    push        ebx
 007636D3    xor         ecx,ecx
 007636D5    mov         dword ptr [ebp-4],ecx
 007636D8    mov         dword ptr [ebp-18],ecx
 007636DB    mov         ebx,eax
 007636DD    xor         eax,eax
 007636DF    push        ebp
 007636E0    push        76374E
 007636E5    push        dword ptr fs:[eax]
 007636E8    mov         dword ptr fs:[eax],esp
 007636EB    lea         eax,[ebp-4]
 007636EE    push        eax
 007636EF    mov         eax,763768;'Special settings'
 007636F4    mov         dword ptr [ebp-14],eax
 007636F7    mov         byte ptr [ebp-10],11
 007636FB    lea         edx,[ebp-18]
 007636FE    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00763703    mov         eax,dword ptr [eax]
 00763705    call        005DDC74
 0076370A    mov         eax,dword ptr [ebp-18]
 0076370D    mov         dword ptr [ebp-0C],eax
 00763710    mov         byte ptr [ebp-8],11
 00763714    lea         edx,[ebp-14]
 00763717    mov         ecx,1
 0076371C    mov         eax,763798;'%s (%s)'
 00763721    call        Format
 00763726    mov         edx,dword ptr [ebp-4]
 00763729    mov         eax,ebx
 0076372B    call        TControl.SetText
 00763730    xor         eax,eax
 00763732    pop         edx
 00763733    pop         ecx
 00763734    pop         ecx
 00763735    mov         dword ptr fs:[eax],edx
 00763738    push        763755
 0076373D    lea         eax,[ebp-18]
 00763740    call        @UStrClr
 00763745    lea         eax,[ebp-4]
 00763748    call        @UStrClr
 0076374D    ret
>0076374E    jmp         @HandleFinally
>00763753    jmp         0076373D
 00763755    pop         ebx
 00763756    mov         esp,ebp
 00763758    pop         ebp
 00763759    ret
*}
end;

//007637A8
procedure TSpecialSettingsFrm.FormShow(Sender:TObject);
begin
{*
 007637A8    push        ebx
 007637A9    mov         ebx,eax
 007637AB    xor         edx,edx
 007637AD    mov         eax,dword ptr [ebx+3C8];TSpecialSettingsFrm.nzPassword:TEdit
 007637B3    call        TControl.SetText
 007637B8    xor         edx,edx
 007637BA    mov         eax,dword ptr [ebx+3D8];TSpecialSettingsFrm.sdPassword:TEdit
 007637C0    call        TControl.SetText
 007637C5    xor         eax,eax
 007637C7    mov         dword ptr [ebx+0C],eax;TSpecialSettingsFrm.FTag:NativeInt
 007637CA    pop         ebx
 007637CB    ret
*}
end;

//0076428C
procedure TMaskEdit.WMMouseWheel(var msg:TWMMouseWheel);
begin
{*
 0076428C    push        ebp
 0076428D    mov         ebp,esp
 0076428F    add         esp,0FFFFFFEC
 00764292    push        ebx
 00764293    push        esi
 00764294    push        edi
 00764295    xor         ecx,ecx
 00764297    mov         dword ptr [ebp-0C],ecx
 0076429A    mov         dword ptr [ebp-4],ecx
 0076429D    mov         dword ptr [ebp-8],edx
 007642A0    mov         esi,eax
 007642A2    xor         eax,eax
 007642A4    push        ebp
 007642A5    push        7643C2
 007642AA    push        dword ptr fs:[eax]
 007642AD    mov         dword ptr fs:[eax],esp
 007642B0    mov         eax,dword ptr [ebp-8]
 007642B3    movzx       eax,word ptr [eax+4];TWMMouseWheel.Keys:SmallInt
 007642B7    and         ax,4
 007642BB    cmp         ax,4
>007642BF    jne         0076437E
 007642C5    mov         eax,esi
 007642C7    mov         edx,dword ptr [eax]
 007642C9    call        dword ptr [edx+114];TCustomEdit.GetSelStart
 007642CF    mov         edi,eax
 007642D1    cmp         edi,2
>007642D4    jge         007642DA
 007642D6    xor         edi,edi
>007642D8    jmp         007642DF
 007642DA    mov         edi,3
 007642DF    mov         edx,edi
 007642E1    mov         eax,esi
 007642E3    mov         ecx,dword ptr [eax]
 007642E5    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 007642EB    mov         edx,2
 007642F0    mov         eax,esi
 007642F2    mov         ecx,dword ptr [eax]
 007642F4    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 007642FA    lea         edx,[ebp-4]
 007642FD    mov         eax,esi
 007642FF    mov         ecx,dword ptr [eax]
 00764301    call        dword ptr [ecx+118];TMaskEdit.sub_00507788
 00764307    mov         eax,dword ptr [ebp-4]
 0076430A    call        StrToInt
 0076430F    mov         ebx,eax
 00764311    mov         eax,dword ptr [ebp-8]
 00764314    movsx       eax,word ptr [eax+6];TWMMouseWheel.WheelDelta:SmallInt
 00764318    mov         ecx,78
 0076431D    cdq
 0076431E    idiv        eax,ecx
 00764320    add         eax,ebx
>00764322    jno         00764329
 00764324    call        @IntOver
 00764329    add         eax,3C
>0076432C    jno         00764333
 0076432E    call        @IntOver
 00764333    mov         ecx,3C
 00764338    cdq
 00764339    idiv        eax,ecx
 0076433B    mov         ebx,edx
 0076433D    lea         eax,[ebp-0C]
 00764340    push        eax
 00764341    mov         dword ptr [ebp-14],ebx
 00764344    mov         byte ptr [ebp-10],0
 00764348    lea         edx,[ebp-14]
 0076434B    xor         ecx,ecx
 0076434D    mov         eax,7643DC;'%.2d'
 00764352    call        Format
 00764357    mov         edx,dword ptr [ebp-0C]
 0076435A    mov         eax,esi
 0076435C    call        TCustomEdit.SetSelText
 00764361    mov         edx,edi
 00764363    mov         eax,esi
 00764365    mov         ecx,dword ptr [eax]
 00764367    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 0076436D    mov         edx,2
 00764372    mov         eax,esi
 00764374    mov         ecx,dword ptr [eax]
 00764376    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
>0076437C    jmp         007643A4
 0076437E    mov         eax,dword ptr [ebp-8]
 00764381    cmp         word ptr [eax+6],0;TWMMouseWheel.WheelDelta:SmallInt
>00764386    jge         00764397
 00764388    push        0
 0076438A    push        0
 0076438C    push        0
 0076438E    push        28
 00764390    call        user32.keybd_event
>00764395    jmp         007643A4
 00764397    push        0
 00764399    push        0
 0076439B    push        0
 0076439D    push        26
 0076439F    call        user32.keybd_event
 007643A4    xor         eax,eax
 007643A6    pop         edx
 007643A7    pop         ecx
 007643A8    pop         ecx
 007643A9    mov         dword ptr fs:[eax],edx
 007643AC    push        7643C9
 007643B1    lea         eax,[ebp-0C]
 007643B4    call        @UStrClr
 007643B9    lea         eax,[ebp-4]
 007643BC    call        @UStrClr
 007643C1    ret
>007643C2    jmp         @HandleFinally
>007643C7    jmp         007643B1
 007643C9    pop         edi
 007643CA    pop         esi
 007643CB    pop         ebx
 007643CC    mov         esp,ebp
 007643CE    pop         ebp
 007643CF    ret
*}
end;

//007643E8
procedure TDCRangeFrm.btnResetDelaysClick(Sender:TObject);
begin
{*
 007643E8    push        ebx
 007643E9    push        esi
 007643EA    mov         esi,eax
 007643EC    mov         ebx,3
 007643F1    push        764420;'Don''t change'
 007643F6    mov         ecx,ebx
 007643F8    mov         edx,2
 007643FD    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764403    call        TStringGrid.SetCells
 00764408    inc         ebx
 00764409    cmp         ebx,0A
>0076440C    jne         007643F1
 0076440E    pop         esi
 0076440F    pop         ebx
 00764410    ret
*}
end;

//0076443C
procedure TDCRangeFrm.btnResetGroupsClick(Sender:TObject);
begin
{*
 0076443C    push        ebx
 0076443D    push        esi
 0076443E    mov         esi,eax
 00764440    mov         ebx,1
 00764445    push        764474;'Don''t change'
 0076444A    mov         ecx,ebx
 0076444C    mov         edx,1
 00764451    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764457    call        TStringGrid.SetCells
 0076445C    inc         ebx
 0076445D    cmp         ebx,0A
>00764460    jne         00764445
 00764462    pop         esi
 00764463    pop         ebx
 00764464    ret
*}
end;

//00764490
procedure TDCRangeFrm.FormCreate(Sender:TObject);
begin
{*
 00764490    push        ebp
 00764491    mov         ebp,esp
 00764493    add         esp,0FFFFFFF0
 00764496    push        ebx
 00764497    xor         ecx,ecx
 00764499    mov         dword ptr [ebp-4],ecx
 0076449C    mov         dword ptr [ebp-10],ecx
 0076449F    mov         ebx,eax
 007644A1    xor         eax,eax
 007644A3    push        ebp
 007644A4    push        76453F
 007644A9    push        dword ptr fs:[eax]
 007644AC    mov         dword ptr fs:[eax],esp
 007644AF    lea         eax,[ebp-4]
 007644B2    push        eax
 007644B3    lea         edx,[ebp-10]
 007644B6    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 007644BB    mov         eax,dword ptr [eax]
 007644BD    call        005DDC74
 007644C2    mov         eax,dword ptr [ebp-10]
 007644C5    mov         dword ptr [ebp-0C],eax
 007644C8    mov         byte ptr [ebp-8],11
 007644CC    lea         edx,[ebp-0C]
 007644CF    xor         ecx,ecx
 007644D1    mov         eax,764558;'Delayed Conrol Ranges (%s)'
 007644D6    call        Format
 007644DB    mov         edx,dword ptr [ebp-4]
 007644DE    mov         eax,ebx
 007644E0    call        TControl.SetText
 007644E5    mov         ecx,0C8
 007644EA    xor         edx,edx
 007644EC    mov         eax,dword ptr [ebx+3C8];TDCRangeFrm.Grid:TStringGrid
 007644F2    call        TCustomDrawGrid.SetColWidths
 007644F7    mov         ecx,32
 007644FC    mov         edx,1
 00764501    mov         eax,dword ptr [ebx+3C8];TDCRangeFrm.Grid:TStringGrid
 00764507    call        TCustomDrawGrid.SetColWidths
 0076450C    mov         ecx,32
 00764511    mov         edx,2
 00764516    mov         eax,dword ptr [ebx+3C8];TDCRangeFrm.Grid:TStringGrid
 0076451C    call        TCustomDrawGrid.SetColWidths
 00764521    xor         eax,eax
 00764523    pop         edx
 00764524    pop         ecx
 00764525    pop         ecx
 00764526    mov         dword ptr fs:[eax],edx
 00764529    push        764546
 0076452E    lea         eax,[ebp-10]
 00764531    call        @UStrClr
 00764536    lea         eax,[ebp-4]
 00764539    call        @UStrClr
 0076453E    ret
>0076453F    jmp         @HandleFinally
>00764544    jmp         0076452E
 00764546    pop         ebx
 00764547    mov         esp,ebp
 00764549    pop         ebp
 0076454A    ret
*}
end;

//00764590
procedure TDCRangeFrm.FormShow(Sender:TObject);
begin
{*
 00764590    push        ebp
 00764591    mov         ebp,esp
 00764593    add         esp,0FFFFFFEC
 00764596    push        ebx
 00764597    push        esi
 00764598    push        edi
 00764599    xor         ecx,ecx
 0076459B    mov         dword ptr [ebp-4],ecx
 0076459E    mov         esi,eax
 007645A0    xor         eax,eax
 007645A2    push        ebp
 007645A3    push        7646D2
 007645A8    push        dword ptr fs:[eax]
 007645AB    mov         dword ptr fs:[eax],esp
 007645AE    push        7646EC;'Ctrl Group'
 007645B3    xor         ecx,ecx
 007645B5    mov         edx,1
 007645BA    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 007645C0    call        TStringGrid.SetCells
 007645C5    push        764710;'Ctrl Delay'
 007645CA    xor         ecx,ecx
 007645CC    mov         edx,2
 007645D1    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 007645D7    call        TStringGrid.SetCells
 007645DC    push        764734;'Ctrl A'
 007645E1    mov         ecx,1
 007645E6    xor         edx,edx
 007645E8    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 007645EE    call        TStringGrid.SetCells
 007645F3    push        764750;'Don''t change'
 007645F8    mov         ecx,1
 007645FD    mov         edx,1
 00764602    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764608    call        TStringGrid.SetCells
 0076460D    push        764778;'Ctrl B'
 00764612    mov         ecx,2
 00764617    xor         edx,edx
 00764619    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 0076461F    call        TStringGrid.SetCells
 00764624    push        764750;'Don''t change'
 00764629    mov         ecx,2
 0076462E    mov         edx,1
 00764633    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764639    call        TStringGrid.SetCells
 0076463E    mov         ebx,1
 00764643    lea         eax,[ebp-4]
 00764646    push        eax
 00764647    mov         dword ptr [ebp-14],ebx
 0076464A    mov         byte ptr [ebp-10],0
 0076464E    mov         dword ptr [ebp-0C],ebx
 00764651    mov         byte ptr [ebp-8],0
 00764655    lea         edx,[ebp-14]
 00764658    mov         ecx,1
 0076465D    mov         eax,764794;'Control Group (C%d) and Delay (D%d)'
 00764662    call        Format
 00764667    mov         eax,dword ptr [ebp-4]
 0076466A    push        eax
 0076466B    mov         edi,2
 00764670    add         edi,ebx
>00764672    jno         00764679
 00764674    call        @IntOver
 00764679    mov         ecx,edi
 0076467B    xor         edx,edx
 0076467D    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764683    call        TStringGrid.SetCells
 00764688    push        764750;'Don''t change'
 0076468D    mov         ecx,edi
 0076468F    mov         edx,1
 00764694    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 0076469A    call        TStringGrid.SetCells
 0076469F    push        764750;'Don''t change'
 007646A4    mov         ecx,edi
 007646A6    mov         edx,2
 007646AB    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 007646B1    call        TStringGrid.SetCells
 007646B6    inc         ebx
 007646B7    cmp         ebx,8
>007646BA    jne         00764643
 007646BC    xor         eax,eax
 007646BE    pop         edx
 007646BF    pop         ecx
 007646C0    pop         ecx
 007646C1    mov         dword ptr fs:[eax],edx
 007646C4    push        7646D9
 007646C9    lea         eax,[ebp-4]
 007646CC    call        @UStrClr
 007646D1    ret
>007646D2    jmp         @HandleFinally
>007646D7    jmp         007646C9
 007646D9    pop         edi
 007646DA    pop         esi
 007646DB    pop         ebx
 007646DC    mov         esp,ebp
 007646DE    pop         ebp
 007646DF    ret
*}
end;

//007647DC
procedure TDCRangeFrm.GridSelectCell(Sender:TObject; ACol:Integer; var CanSelect:Boolean; ARow:Integer);
begin
{*
 007647DC    push        ebp
 007647DD    mov         ebp,esp
 007647DF    add         esp,0FFFFFFE0
 007647E2    push        ebx
 007647E3    push        esi
 007647E4    push        edi
 007647E5    xor         ebx,ebx
 007647E7    mov         dword ptr [ebp-20],ebx
 007647EA    mov         dword ptr [ebp-1C],ebx
 007647ED    mov         ebx,ecx
 007647EF    mov         edi,eax
 007647F1    xor         eax,eax
 007647F3    push        ebp
 007647F4    push        7649C8
 007647F9    push        dword ptr fs:[eax]
 007647FC    mov         dword ptr fs:[eax],esp
 007647FF    xor         edx,edx
 00764801    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764807    call        TControl.SetVisible
 0076480C    mov         eax,dword ptr [edi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764812    test        byte ptr [eax+2D5],10;TStringGrid.?f2D5:byte
>00764819    jne         007649AD
 0076481F    cmp         ebx,2
>00764822    jne         007649A7
 00764828    cmp         dword ptr [ebp+0C],2
>0076482C    jle         007649A7
 00764832    lea         eax,[ebp-18]
 00764835    push        eax
 00764836    mov         ecx,dword ptr [ebp+0C]
 00764839    mov         edx,ebx
 0076483B    mov         eax,dword ptr [edi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764841    call        TCustomDrawGrid.CellRect
 00764846    mov         eax,dword ptr [edi+3C8];TDCRangeFrm.Grid:TStringGrid
 0076484C    mov         edx,dword ptr [eax+50];TStringGrid.FLeft:Integer
 0076484F    mov         ecx,edx
 00764851    add         ecx,dword ptr [ebp-18]
>00764854    jno         0076485B
 00764856    call        @IntOver
 0076485B    add         ecx,2
>0076485E    jno         00764865
 00764860    call        @IntOver
 00764865    mov         dword ptr [ebp-18],ecx
 00764868    mov         ecx,dword ptr [eax+54];TStringGrid.FTop:Integer
 0076486B    mov         esi,ecx
 0076486D    add         esi,dword ptr [ebp-14]
>00764870    jno         00764877
 00764872    call        @IntOver
 00764877    add         esi,2
>0076487A    jno         00764881
 0076487C    call        @IntOver
 00764881    mov         dword ptr [ebp-14],esi
 00764884    add         dword ptr [ebp-10],edx
>00764887    jno         0076488E
 00764889    call        @IntOver
 0076488E    add         dword ptr [ebp-0C],ecx
>00764891    jno         00764898
 00764893    call        @IntOver
 00764898    mov         esi,dword ptr [ebp-18]
 0076489B    mov         edx,esi
 0076489D    add         edx,1
>007648A0    jno         007648A7
 007648A2    call        @IntOver
 007648A7    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 007648AD    call        TControl.SetLeft
 007648B2    mov         edx,dword ptr [ebp-14]
 007648B5    add         edx,1
>007648B8    jno         007648BF
 007648BA    call        @IntOver
 007648BF    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 007648C5    call        TControl.SetTop
 007648CA    mov         edx,dword ptr [ebp-10]
 007648CD    sub         edx,esi
>007648CF    jno         007648D6
 007648D1    call        @IntOver
 007648D6    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 007648DC    call        TControl.SetWidth
 007648E1    mov         edx,dword ptr [ebp-0C]
 007648E4    sub         edx,dword ptr [ebp-14]
>007648E7    jno         007648EE
 007648E9    call        @IntOver
 007648EE    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 007648F4    call        TControl.SetHeight
 007648F9    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 007648FF    mov         edx,dword ptr [eax+2A8];TMaskEdit.FOnChange:TNotifyEvent
 00764905    mov         dword ptr [ebp-8],edx
 00764908    mov         edx,dword ptr [eax+2AC];TMaskEdit.FOldSelStart:Integer
 0076490E    mov         dword ptr [ebp-4],edx
 00764911    xor         edx,edx
 00764913    mov         dword ptr [eax+2A8],edx;TMaskEdit.FOnChange:TNotifyEvent
 00764919    mov         dword ptr [eax+2AC],edx;TMaskEdit.FOldSelStart:Integer
 0076491F    lea         eax,[ebp-1C]
 00764922    push        eax
 00764923    mov         ecx,dword ptr [ebp+0C]
 00764926    mov         edx,ebx
 00764928    mov         eax,dword ptr [edi+3C8];TDCRangeFrm.Grid:TStringGrid
 0076492E    call        TStringGrid.GetCells
 00764933    mov         eax,dword ptr [ebp-1C]
 00764936    mov         edx,7649E4;'Don''t change'
 0076493B    call        @UStrEqual
>00764940    jne         00764954
 00764942    mov         edx,764A0C;'00:00'
 00764947    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 0076494D    call        TCustomMaskEdit.SetText
>00764952    jmp         0076497A
 00764954    lea         eax,[ebp-20]
 00764957    push        eax
 00764958    mov         ecx,dword ptr [ebp+0C]
 0076495B    mov         edx,ebx
 0076495D    mov         eax,dword ptr [edi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764963    mov         si,0FFA8
 00764967    call        @CallDynaInst;TStringGrid.GetEditText
 0076496C    mov         edx,dword ptr [ebp-20]
 0076496F    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764975    call        TCustomMaskEdit.SetText
 0076497A    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764980    mov         edx,dword ptr [ebp-8]
 00764983    mov         dword ptr [eax+2A8],edx;TMaskEdit.FOnChange:TNotifyEvent
 00764989    mov         edx,dword ptr [ebp-4]
 0076498C    mov         dword ptr [eax+2AC],edx;TMaskEdit.FOldSelStart:Integer
 00764992    mov         dl,1
 00764994    call        TControl.SetVisible
 00764999    mov         eax,dword ptr [edi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 0076499F    mov         edx,dword ptr [eax]
 007649A1    call        dword ptr [edx+104];TWinControl.SetFocus
 007649A7    mov         eax,dword ptr [ebp+8]
 007649AA    mov         byte ptr [eax],1
 007649AD    xor         eax,eax
 007649AF    pop         edx
 007649B0    pop         ecx
 007649B1    pop         ecx
 007649B2    mov         dword ptr fs:[eax],edx
 007649B5    push        7649CF
 007649BA    lea         eax,[ebp-20]
 007649BD    mov         edx,2
 007649C2    call        @UStrArrayClr
 007649C7    ret
>007649C8    jmp         @HandleFinally
>007649CD    jmp         007649BA
 007649CF    pop         edi
 007649D0    pop         esi
 007649D1    pop         ebx
 007649D2    mov         esp,ebp
 007649D4    pop         ebp
 007649D5    ret         8
*}
end;

//00764A18
procedure TDCRangeFrm.MaskEdit1Change(Sender:TObject);
begin
{*
 00764A18    push        ebp
 00764A19    mov         ebp,esp
 00764A1B    push        0
 00764A1D    push        ebx
 00764A1E    push        esi
 00764A1F    mov         ebx,eax
 00764A21    xor         eax,eax
 00764A23    push        ebp
 00764A24    push        764A74
 00764A29    push        dword ptr fs:[eax]
 00764A2C    mov         dword ptr fs:[eax],esp
 00764A2F    lea         edx,[ebp-4]
 00764A32    mov         eax,dword ptr [ebx+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764A38    call        TCustomMaskEdit.GetText
 00764A3D    mov         eax,dword ptr [ebp-4]
 00764A40    push        eax
 00764A41    mov         esi,dword ptr [ebx+3C8];TDCRangeFrm.Grid:TStringGrid
 00764A47    mov         ecx,dword ptr [esi+2AC];TStringGrid.FDefaultRowHeight:Integer
 00764A4D    mov         edx,dword ptr [esi+2A8];TStringGrid.FCurrent:TGridCoord
 00764A53    mov         eax,esi
 00764A55    mov         si,0FFA7
 00764A59    call        @CallDynaInst;TStringGrid.SetEditText
 00764A5E    xor         eax,eax
 00764A60    pop         edx
 00764A61    pop         ecx
 00764A62    pop         ecx
 00764A63    mov         dword ptr fs:[eax],edx
 00764A66    push        764A7B
 00764A6B    lea         eax,[ebp-4]
 00764A6E    call        @UStrClr
 00764A73    ret
>00764A74    jmp         @HandleFinally
>00764A79    jmp         00764A6B
 00764A7B    pop         esi
 00764A7C    pop         ebx
 00764A7D    pop         ecx
 00764A7E    pop         ebp
 00764A7F    ret
*}
end;

//00764A80
procedure TDCRangeFrm.MaskEdit1Enter(Sender:TObject);
begin
{*
 00764A80    push        esi
 00764A81    mov         esi,eax
 00764A83    mov         edx,3
 00764A88    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764A8E    mov         ecx,dword ptr [eax]
 00764A90    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 00764A96    mov         edx,2
 00764A9B    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764AA1    mov         ecx,dword ptr [eax]
 00764AA3    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 00764AA9    pop         esi
 00764AAA    ret
*}
end;

//00764AAC
procedure TDCRangeFrm.MaskEdit1KeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);
begin
{*
 00764AAC    push        ebp
 00764AAD    mov         ebp,esp
 00764AAF    add         esp,0FFFFFFEC
 00764AB2    push        ebx
 00764AB3    push        esi
 00764AB4    push        edi
 00764AB5    xor         ebx,ebx
 00764AB7    mov         dword ptr [ebp-0C],ebx
 00764ABA    mov         dword ptr [ebp-4],ebx
 00764ABD    mov         edi,ecx
 00764ABF    mov         esi,eax
 00764AC1    xor         eax,eax
 00764AC3    push        ebp
 00764AC4    push        764C76
 00764AC9    push        dword ptr fs:[eax]
 00764ACC    mov         dword ptr fs:[eax],esp
 00764ACF    cmp         word ptr [edi],26
>00764AD3    je          00764AEB
 00764AD5    cmp         word ptr [edi],28
>00764AD9    je          00764AEB
 00764ADB    cmp         word ptr [edi],25
>00764ADF    je          00764AEB
 00764AE1    cmp         word ptr [edi],27
>00764AE5    jne         00764C58
 00764AEB    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764AF1    mov         edx,dword ptr [eax]
 00764AF3    call        dword ptr [edx+114];TCustomEdit.GetSelStart
 00764AF9    mov         dword ptr [ebp-8],eax
 00764AFC    cmp         dword ptr [ebp-8],2
>00764B00    jge         00764B09
 00764B02    xor         eax,eax
 00764B04    mov         dword ptr [ebp-8],eax
>00764B07    jmp         00764B10
 00764B09    mov         dword ptr [ebp-8],3
 00764B10    mov         edx,dword ptr [ebp-8]
 00764B13    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764B19    mov         ecx,dword ptr [eax]
 00764B1B    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 00764B21    mov         edx,2
 00764B26    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764B2C    mov         ecx,dword ptr [eax]
 00764B2E    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 00764B34    lea         edx,[ebp-4]
 00764B37    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764B3D    mov         ecx,dword ptr [eax]
 00764B3F    call        dword ptr [ecx+118];TMaskEdit.sub_00507788
 00764B45    mov         eax,dword ptr [ebp-4]
 00764B48    call        StrToInt
 00764B4D    mov         ebx,eax
 00764B4F    movzx       eax,word ptr [edi]
 00764B52    sub         ax,25
>00764B56    je          00764BE1
 00764B5C    dec         ax
>00764B5F    je          00764B70
 00764B61    dec         ax
>00764B64    je          00764BE1
 00764B66    dec         ax
>00764B69    je          00764BAA
>00764B6B    jmp         00764BF8
 00764B70    test        byte ptr [ebp+8],1
>00764B74    je          00764B90
 00764B76    mov         eax,1
 00764B7B    add         eax,ebx
>00764B7D    jno         00764B84
 00764B7F    call        @IntOver
 00764B84    mov         ecx,3C
 00764B89    cdq
 00764B8A    idiv        eax,ecx
 00764B8C    mov         ebx,edx
>00764B8E    jmp         00764BF8
 00764B90    mov         edx,edi
 00764B92    movzx       ecx,word ptr [ebp+8]
 00764B96    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764B9C    mov         si,0FFB8
 00764BA0    call        @CallDynaInst;TCustomGrid.sub_004EE9E0
>00764BA5    jmp         00764C58
 00764BAA    test        byte ptr [ebp+8],1
>00764BAE    je          00764BCA
 00764BB0    mov         eax,3B
 00764BB5    add         eax,ebx
>00764BB7    jno         00764BBE
 00764BB9    call        @IntOver
 00764BBE    mov         ecx,3C
 00764BC3    cdq
 00764BC4    idiv        eax,ecx
 00764BC6    mov         ebx,edx
>00764BC8    jmp         00764BF8
 00764BCA    mov         edx,edi
 00764BCC    movzx       ecx,word ptr [ebp+8]
 00764BD0    mov         eax,dword ptr [esi+3C8];TDCRangeFrm.Grid:TStringGrid
 00764BD6    mov         si,0FFB8
 00764BDA    call        @CallDynaInst;TCustomGrid.sub_004EE9E0
>00764BDF    jmp         00764C58
 00764BE1    cmp         dword ptr [ebp-8],0
 00764BE5    sete        al
 00764BE8    and         eax,7F
 00764BEB    imul        eax,eax,3
>00764BEE    jno         00764BF5
 00764BF0    call        @IntOver
 00764BF5    mov         dword ptr [ebp-8],eax
 00764BF8    movzx       eax,word ptr [edi]
 00764BFB    sub         ax,26
>00764BFF    je          00764C07
 00764C01    sub         ax,2
>00764C05    jne         00764C2F
 00764C07    lea         eax,[ebp-0C]
 00764C0A    push        eax
 00764C0B    mov         dword ptr [ebp-14],ebx
 00764C0E    mov         byte ptr [ebp-10],0
 00764C12    lea         edx,[ebp-14]
 00764C15    xor         ecx,ecx
 00764C17    mov         eax,764C94;'%.2d'
 00764C1C    call        Format
 00764C21    mov         edx,dword ptr [ebp-0C]
 00764C24    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764C2A    call        TCustomEdit.SetSelText
 00764C2F    mov         edx,dword ptr [ebp-8]
 00764C32    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764C38    mov         ecx,dword ptr [eax]
 00764C3A    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 00764C40    mov         edx,2
 00764C45    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764C4B    mov         ecx,dword ptr [eax]
 00764C4D    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 00764C53    mov         word ptr [edi],0
 00764C58    xor         eax,eax
 00764C5A    pop         edx
 00764C5B    pop         ecx
 00764C5C    pop         ecx
 00764C5D    mov         dword ptr fs:[eax],edx
 00764C60    push        764C7D
 00764C65    lea         eax,[ebp-0C]
 00764C68    call        @UStrClr
 00764C6D    lea         eax,[ebp-4]
 00764C70    call        @UStrClr
 00764C75    ret
>00764C76    jmp         @HandleFinally
>00764C7B    jmp         00764C65
 00764C7D    pop         edi
 00764C7E    pop         esi
 00764C7F    pop         ebx
 00764C80    mov         esp,ebp
 00764C82    pop         ebp
 00764C83    ret         4
*}
end;

//00764CA0
procedure TDCRangeFrm.MaskEdit1MouseDown(Sender:TObject; Button:UITypes.TMouseButton; Shift:Classes.TShiftState; X:Integer; Y:Integer);
begin
{*
 00764CA0    push        ebp
 00764CA1    mov         ebp,esp
 00764CA3    push        esi
 00764CA4    mov         esi,eax
 00764CA6    test        cl,cl
>00764CA8    jne         00764CF7
 00764CAA    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764CB0    mov         edx,dword ptr [eax]
 00764CB2    call        dword ptr [edx+114];TCustomEdit.GetSelStart
 00764CB8    cmp         eax,2
>00764CBB    jge         00764CCF
 00764CBD    xor         edx,edx
 00764CBF    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764CC5    mov         ecx,dword ptr [eax]
 00764CC7    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
>00764CCD    jmp         00764CE2
 00764CCF    mov         edx,3
 00764CD4    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764CDA    mov         ecx,dword ptr [eax]
 00764CDC    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 00764CE2    mov         edx,2
 00764CE7    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764CED    mov         ecx,dword ptr [eax]
 00764CEF    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
>00764CF5    jmp         00764D1A
 00764CF7    xor         edx,edx
 00764CF9    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764CFF    mov         ecx,dword ptr [eax]
 00764D01    call        dword ptr [ecx+120];TCustomEdit.SetSelStart
 00764D07    mov         edx,5
 00764D0C    mov         eax,dword ptr [esi+3CC];TDCRangeFrm.MaskEdit1:TMaskEdit
 00764D12    mov         ecx,dword ptr [eax]
 00764D14    call        dword ptr [ecx+11C];TCustomEdit.SetSelLength
 00764D1A    pop         esi
 00764D1B    pop         ebp
 00764D1C    ret         0C
*}
end;

//0076F698
constructor TDCSystem.Create;
begin
{*
 0076F698    push        ebx
 0076F699    push        esi
 0076F69A    test        dl,dl
>0076F69C    je          0076F6A6
 0076F69E    add         esp,0FFFFFFF0
 0076F6A1    call        @ClassCreate
 0076F6A6    mov         ebx,edx
 0076F6A8    mov         esi,eax
 0076F6AA    mov         cl,1
 0076F6AC    mov         dl,1
 0076F6AE    mov         eax,[0076DD90];TObjectList<FXDCData.TDCPanel>
 0076F6B3    call        00774498
 0076F6B8    mov         dword ptr [esi+0C],eax;TDCSystem.FPanels:TObjectList<FXDCData.TDCPanel>
 0076F6BB    mov         eax,esi
 0076F6BD    test        bl,bl
>0076F6BF    je          0076F6D0
 0076F6C1    call        @AfterConstruction
 0076F6C6    pop         dword ptr fs:[0]
 0076F6CD    add         esp,0C
 0076F6D0    mov         eax,esi
 0076F6D2    pop         esi
 0076F6D3    pop         ebx
 0076F6D4    ret
*}
end;

//0076F6D8
destructor TDCSystem.Destroy();
begin
{*
 0076F6D8    push        ebx
 0076F6D9    push        esi
 0076F6DA    call        @BeforeDestruction
 0076F6DF    mov         ebx,edx
 0076F6E1    mov         esi,eax
 0076F6E3    mov         eax,dword ptr [esi+0C];TDCSystem.FPanels:TObjectList<FXDCData.TDCPanel>
 0076F6E6    call        TObject.Free
 0076F6EB    mov         dl,0FC
 0076F6ED    and         dl,bl
 0076F6EF    mov         eax,esi
 0076F6F1    call        TObject.Destroy
 0076F6F6    test        bl,bl
>0076F6F8    jle         0076F701
 0076F6FA    mov         eax,esi
 0076F6FC    call        @ClassDestroy
 0076F701    pop         esi
 0076F702    pop         ebx
 0076F703    ret
*}
end;

//0076F704
procedure TDCSystem.GetIOControls;
begin
{*
 0076F704    push        ebp
 0076F705    mov         ebp,esp
 0076F707    mov         ecx,48
 0076F70C    push        0
 0076F70E    push        0
 0076F710    dec         ecx
>0076F711    jne         0076F70C
 0076F713    push        ecx
 0076F714    push        ebx
 0076F715    push        esi
 0076F716    push        edi
 0076F717    mov         dword ptr [ebp-4],eax
 0076F71A    xor         eax,eax
 0076F71C    push        ebp
 0076F71D    push        770688
 0076F722    push        dword ptr fs:[eax]
 0076F725    mov         dword ptr fs:[eax],esp
 0076F728    mov         eax,dword ptr [ebp-4]
 0076F72B    xor         edx,edx
 0076F72D    mov         dword ptr [eax+4],edx;TDCSystem.FNumInputs:Integer
 0076F730    mov         eax,dword ptr [ebp-4]
 0076F733    xor         edx,edx
 0076F735    mov         dword ptr [eax+8],edx;TDCSystem.FNumOutputs:Integer
 0076F738    xor         ebx,ebx
 0076F73A    xor         eax,eax
 0076F73C    mov         dword ptr [ebp-2C],eax
 0076F73F    xor         eax,eax
 0076F741    mov         dword ptr [ebp-8],eax
 0076F744    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0076F749    mov         eax,dword ptr [eax]
 0076F74B    mov         edx,dword ptr [ebp-8]
 0076F74E    call        TFXNet.GetPanel
 0076F753    test        eax,eax
>0076F755    je          00770622
 0076F75B    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0076F760    mov         eax,dword ptr [eax]
 0076F762    mov         edx,dword ptr [ebp-8]
 0076F765    call        TFXNet.GetPanel
 0076F76A    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 0076F76D    mov         dword ptr [ebp-1C],eax
 0076F770    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0076F775    mov         eax,dword ptr [eax]
 0076F777    mov         edx,dword ptr [ebp-8]
 0076F77A    call        TFXNet.GetPanel
 0076F77F    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 0076F782    mov         dword ptr [ebp-24],eax
 0076F785    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0076F78A    mov         eax,dword ptr [eax]
 0076F78C    mov         edx,dword ptr [ebp-8]
 0076F78F    call        TFXNet.GetPanel
 0076F794    mov         edi,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 0076F797    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0076F79C    mov         eax,dword ptr [eax]
 0076F79E    mov         edx,dword ptr [ebp-8]
 0076F7A1    call        TFXNet.GetPanel
 0076F7A6    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 0076F7A9    mov         dword ptr [ebp-20],eax
 0076F7AC    mov         dl,1
 0076F7AE    mov         eax,[007666DC];TDCPanel
 0076F7B3    call        TDCPanel.Create;TDCPanel.Create
 0076F7B8    mov         dword ptr [ebp-28],eax
 0076F7BB    mov         eax,dword ptr [ebp-1C]
 0076F7BE    movzx       eax,byte ptr [eax+122]
 0076F7C5    mov         edx,dword ptr [ebp-28]
 0076F7C8    mov         dword ptr [edx+8],eax;TDCPanel.FPanelId:Integer
 0076F7CB    mov         eax,dword ptr [ebp-28]
 0076F7CE    mov         edx,dword ptr [ebp-8]
 0076F7D1    mov         dword ptr [eax+4],edx;TDCPanel.FPanelIndx:Integer
 0076F7D4    mov         eax,dword ptr [ebp-1C]
 0076F7D7    mov         eax,dword ptr [eax+171]
 0076F7DD    mov         edx,dword ptr [ebp-28]
 0076F7E0    mov         dword ptr [edx+0C],eax;TDCPanel.FVisibles:?
 0076F7E3    mov         eax,dword ptr [ebp-1C]
 0076F7E6    movzx       eax,byte ptr [eax+175]
 0076F7ED    mov         edx,dword ptr [ebp-28]
 0076F7F0    mov         dword ptr [edx+10],eax;TDCPanel.FLastLocal:Integer
 0076F7F3    lea         eax,[ebp-174]
 0076F7F9    push        eax
 0076F7FA    mov         eax,dword ptr [ebp-8]
 0076F7FD    mov         dword ptr [ebp-18C],eax
 0076F803    mov         byte ptr [ebp-188],0
 0076F80A    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0076F80F    mov         eax,dword ptr [eax]
 0076F811    mov         edx,dword ptr [ebp-8]
 0076F814    call        TFXNet.GetPanel
 0076F819    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 0076F81C    add         eax,0FFFFFFFD
 0076F81F    cmp         eax,5
>0076F822    jbe         0076F829
 0076F824    call        @BoundErr
 0076F829    add         eax,3
 0076F82C    mov         edx,dword ptr ds:[7C4564];^gvar_007A1EA0:array[6] of ?
 0076F832    mov         eax,dword ptr [edx+eax*4-0C]
 0076F836    mov         dword ptr [ebp-184],eax
 0076F83C    mov         byte ptr [ebp-180],11
 0076F843    lea         edx,[ebp-190]
 0076F849    mov         eax,dword ptr [ebp-1C]
 0076F84C    call        006A2434
 0076F851    mov         eax,dword ptr [ebp-190]
 0076F857    mov         dword ptr [ebp-17C],eax
 0076F85D    mov         byte ptr [ebp-178],11
 0076F864    lea         edx,[ebp-18C]
 0076F86A    mov         ecx,2
 0076F86F    mov         eax,7706A4;'%.2d - %s - %s'
 0076F874    call        Format
 0076F879    mov         edx,dword ptr [ebp-174]
 0076F87F    mov         eax,dword ptr [ebp-28]
 0076F882    add         eax,24;TDCPanel.FTreeNodeStr:string
 0076F885    call        @UStrAsg
 0076F88A    lea         eax,[ebp-194]
 0076F890    push        eax
 0076F891    mov         eax,dword ptr [ebp-28]
 0076F894    mov         eax,dword ptr [eax+8];TDCPanel.FPanelId:Integer
 0076F897    mov         dword ptr [ebp-19C],eax
 0076F89D    mov         byte ptr [ebp-198],0
 0076F8A4    lea         edx,[ebp-19C]
 0076F8AA    xor         ecx,ecx
 0076F8AC    mov         eax,7706D0;'%.2d'
 0076F8B1    call        Format
 0076F8B6    mov         edx,dword ptr [ebp-194]
 0076F8BC    mov         eax,dword ptr [ebp-28]
 0076F8BF    add         eax,28;TDCPanel.FPanelIdStr:string
 0076F8C2    call        @UStrAsg
 0076F8C7    mov         eax,dword ptr [ebp-4]
 0076F8CA    mov         eax,dword ptr [eax+0C];TDCSystem.FPanels:TObjectList<FXDCData.TDCPanel>
 0076F8CD    mov         dword ptr [ebp-3C],eax
 0076F8D0    mov         eax,dword ptr [ebp-28]
 0076F8D3    mov         dword ptr [ebp-40],eax
 0076F8D6    lea         edx,[ebp-40]
 0076F8D9    mov         eax,dword ptr [ebp-3C]
 0076F8DC    add         eax,8
 0076F8DF    call        0043489C
 0076F8E4    mov         dword ptr [ebp-44],eax
 0076F8E7    xor         esi,esi
 0076F8E9    test        esi,esi
>0076F8EB    jne         0076F9A6
 0076F8F1    mov         dl,1
 0076F8F3    mov         eax,[00766334];TDCIoUnit
 0076F8F8    call        TDCIoUnit.Create;TDCIoUnit.Create
 0076F8FD    mov         dword ptr [ebp-2C],eax
 0076F900    mov         eax,dword ptr [ebp-2C]
 0076F903    mov         byte ptr [eax+4],1;TDCIoUnit.FIsIoUnit:Boolean
 0076F907    mov         eax,dword ptr [ebp-2C]
 0076F90A    mov         edx,dword ptr [ebp-8]
 0076F90D    mov         dword ptr [eax+8],edx;TDCIoUnit.FPanelIndx:Integer
 0076F910    mov         eax,dword ptr [ebp-2C]
 0076F913    mov         dword ptr [eax+0C],esi;TDCIoUnit.FUnitIndx:Integer
 0076F916    mov         ecx,esi
 0076F918    mov         edx,dword ptr [ebp-24]
 0076F91B    mov         eax,dword ptr [ebp-2C]
 0076F91E    call        TDCIoUnit.GetIoLines
 0076F923    lea         eax,[ebp-1A0]
 0076F929    push        eax
 0076F92A    mov         eax,[007C3F80];^'IoUnit'
 0076F92F    mov         dword ptr [ebp-18C],eax
 0076F935    mov         byte ptr [ebp-188],11
 0076F93C    mov         dword ptr [ebp-184],esi
 0076F942    mov         byte ptr [ebp-180],0
 0076F949    mov         eax,7706E8;'MC'
 0076F94E    mov         dword ptr [ebp-17C],eax
 0076F954    mov         byte ptr [ebp-178],11
 0076F95B    lea         edx,[ebp-18C]
 0076F961    mov         ecx,2
 0076F966    mov         eax,7706FC;'%s %d (%s)'
 0076F96B    call        Format
 0076F970    mov         edx,dword ptr [ebp-1A0]
 0076F976    mov         eax,dword ptr [ebp-2C]
 0076F979    add         eax,20;TDCIoUnit.FTreeNodeStr:string
 0076F97C    call        @UStrAsg
 0076F981    mov         eax,dword ptr [ebp-28]
 0076F984    mov         eax,dword ptr [eax+1C];TDCPanel.FIoUnits:TObjectList<FXDCData.TDCIoUnit>
 0076F987    mov         dword ptr [ebp-50],eax
 0076F98A    mov         eax,dword ptr [ebp-2C]
 0076F98D    mov         dword ptr [ebp-54],eax
 0076F990    lea         edx,[ebp-54]
 0076F993    mov         eax,dword ptr [ebp-50]
 0076F996    add         eax,8
 0076F999    call        0043489C
 0076F99E    mov         dword ptr [ebp-58],eax
>0076F9A1    jmp         0076FB70
 0076F9A6    mov         edx,esi
 0076F9A8    cmp         edx,0FF
>0076F9AE    jbe         0076F9B5
 0076F9B0    call        @BoundErr
 0076F9B5    mov         eax,dword ptr [ebp-24]
 0076F9B8    call        TFXPIO.GetIOCtrlrType
 0076F9BD    test        al,al
>0076F9BF    je          0076FB96
 0076F9C5    mov         dl,1
 0076F9C7    mov         eax,[00766334];TDCIoUnit
 0076F9CC    call        TDCIoUnit.Create;TDCIoUnit.Create
 0076F9D1    mov         dword ptr [ebp-2C],eax
 0076F9D4    mov         eax,dword ptr [ebp-2C]
 0076F9D7    mov         byte ptr [eax+4],1;TDCIoUnit.FIsIoUnit:Boolean
 0076F9DB    mov         eax,dword ptr [ebp-2C]
 0076F9DE    mov         edx,dword ptr [ebp-8]
 0076F9E1    mov         dword ptr [eax+8],edx;TDCIoUnit.FPanelIndx:Integer
 0076F9E4    mov         eax,dword ptr [ebp-2C]
 0076F9E7    mov         dword ptr [eax+0C],esi;TDCIoUnit.FUnitIndx:Integer
 0076F9EA    mov         edx,esi
 0076F9EC    cmp         edx,0FF
>0076F9F2    jbe         0076F9F9
 0076F9F4    call        @BoundErr
 0076F9F9    mov         eax,dword ptr [ebp-24]
 0076F9FC    call        TFXPIO.GetIOCtrlrType
 0076FA01    movzx       eax,al
 0076FA04    mov         edx,dword ptr [ebp-2C]
 0076FA07    mov         dword ptr [edx+10],eax;TDCIoUnit.FUnitType:Integer
 0076FA0A    mov         ecx,esi
 0076FA0C    mov         edx,dword ptr [ebp-24]
 0076FA0F    mov         eax,dword ptr [ebp-2C]
 0076FA12    call        TDCIoUnit.GetIoLines
 0076FA17    mov         eax,dword ptr [ebp-2C]
 0076FA1A    mov         eax,dword ptr [eax+10];TDCIoUnit.FUnitType:Integer
 0076FA1D    dec         eax
>0076FA1E    je          0076FA2F
 0076FA20    dec         eax
>0076FA21    je          0076FA92
 0076FA23    dec         eax
>0076FA24    je          0076FAF2
>0076FA2A    jmp         0076FB50
 0076FA2F    lea         eax,[ebp-1A4]
 0076FA35    push        eax
 0076FA36    mov         eax,[007C3F80];^'IoUnit'
 0076FA3B    mov         dword ptr [ebp-18C],eax
 0076FA41    mov         byte ptr [ebp-188],11
 0076FA48    mov         dword ptr [ebp-184],esi
 0076FA4E    mov         byte ptr [ebp-180],0
 0076FA55    mov         eax,770720;'IOC'
 0076FA5A    mov         dword ptr [ebp-17C],eax
 0076FA60    mov         byte ptr [ebp-178],11
 0076FA67    lea         edx,[ebp-18C]
 0076FA6D    mov         ecx,2
 0076FA72    mov         eax,7706FC;'%s %d (%s)'
 0076FA77    call        Format
 0076FA7C    mov         edx,dword ptr [ebp-1A4]
 0076FA82    mov         eax,dword ptr [ebp-2C]
 0076FA85    add         eax,20;TDCIoUnit.FTreeNodeStr:string
 0076FA88    call        @UStrAsg
>0076FA8D    jmp         0076FB50
 0076FA92    lea         eax,[ebp-1A8]
 0076FA98    push        eax
 0076FA99    mov         eax,[007C3F80];^'IoUnit'
 0076FA9E    mov         dword ptr [ebp-18C],eax
 0076FAA4    mov         byte ptr [ebp-188],11
 0076FAAB    mov         dword ptr [ebp-184],esi
 0076FAB1    mov         byte ptr [ebp-180],0
 0076FAB8    mov         eax,770734;'OCA'
 0076FABD    mov         dword ptr [ebp-17C],eax
 0076FAC3    mov         byte ptr [ebp-178],11
 0076FACA    lea         edx,[ebp-18C]
 0076FAD0    mov         ecx,2
 0076FAD5    mov         eax,7706FC;'%s %d (%s)'
 0076FADA    call        Format
 0076FADF    mov         edx,dword ptr [ebp-1A8]
 0076FAE5    mov         eax,dword ptr [ebp-2C]
 0076FAE8    add         eax,20;TDCIoUnit.FTreeNodeStr:string
 0076FAEB    call        @UStrAsg
>0076FAF0    jmp         0076FB50
 0076FAF2    lea         eax,[ebp-1AC]
 0076FAF8    push        eax
 0076FAF9    mov         eax,[007C3F80];^'IoUnit'
 0076FAFE    mov         dword ptr [ebp-18C],eax
 0076FB04    mov         byte ptr [ebp-188],11
 0076FB0B    mov         dword ptr [ebp-184],esi
 0076FB11    mov         byte ptr [ebp-180],0
 0076FB18    mov         eax,770748;'OCB'
 0076FB1D    mov         dword ptr [ebp-17C],eax
 0076FB23    mov         byte ptr [ebp-178],11
 0076FB2A    lea         edx,[ebp-18C]
 0076FB30    mov         ecx,2
 0076FB35    mov         eax,7706FC;'%s %d (%s)'
 0076FB3A    call        Format
 0076FB3F    mov         edx,dword ptr [ebp-1AC]
 0076FB45    mov         eax,dword ptr [ebp-2C]
 0076FB48    add         eax,20;TDCIoUnit.FTreeNodeStr:string
 0076FB4B    call        @UStrAsg
 0076FB50    mov         eax,dword ptr [ebp-28]
 0076FB53    mov         eax,dword ptr [eax+1C];TDCPanel.FIoUnits:TObjectList<FXDCData.TDCIoUnit>
 0076FB56    mov         dword ptr [ebp-64],eax
 0076FB59    mov         eax,dword ptr [ebp-2C]
 0076FB5C    mov         dword ptr [ebp-68],eax
 0076FB5F    lea         edx,[ebp-68]
 0076FB62    mov         eax,dword ptr [ebp-64]
 0076FB65    add         eax,8
 0076FB68    call        0043489C
 0076FB6D    mov         dword ptr [ebp-6C],eax
 0076FB70    mov         eax,dword ptr [ebp-2C]
 0076FB73    mov         eax,dword ptr [eax+14];TDCIoUnit.FNumInputs:Integer
 0076FB76    mov         edx,dword ptr [ebp-28]
 0076FB79    add         dword ptr [edx+14],eax;TDCPanel.FNumInputs:Integer
>0076FB7C    jno         0076FB83
 0076FB7E    call        @IntOver
 0076FB83    mov         eax,dword ptr [ebp-2C]
 0076FB86    mov         eax,dword ptr [eax+18];TDCIoUnit.FNumOutputs:Integer
 0076FB89    mov         edx,dword ptr [ebp-28]
 0076FB8C    add         dword ptr [edx+18],eax;TDCPanel.FNumOutputs:Integer
>0076FB8F    jno         0076FB96
 0076FB91    call        @IntOver
 0076FB96    inc         esi
 0076FB97    cmp         esi,5
>0076FB9A    jne         0076F8E9
 0076FBA0    mov         eax,dword ptr [ebp-1C]
 0076FBA3    call        006A3430
 0076FBA8    movzx       eax,al
 0076FBAB    mov         dword ptr [ebp-18],eax
 0076FBAE    mov         eax,dword ptr [ebp-1C]
 0076FBB1    call        006A344C
 0076FBB6    movzx       eax,al
 0076FBB9    sub         eax,1
>0076FBBC    jno         0076FBC3
 0076FBBE    call        @IntOver
 0076FBC3    test        eax,eax
>0076FBC5    jl          007705FC
 0076FBCB    inc         eax
 0076FBCC    mov         dword ptr [ebp-38],eax
 0076FBCF    mov         dword ptr [ebp-0C],0
 0076FBD6    mov         edx,dword ptr [ebp-0C]
 0076FBD9    mov         eax,dword ptr [ebp-1C]
 0076FBDC    call        TFXPPD.GetControllerLoopType
 0076FBE1    mov         dword ptr [ebp-14],eax
 0076FBE4    cmp         dword ptr [ebp-14],0
>0076FBE8    je          007705F0
 0076FBEE    mov         dl,1
 0076FBF0    mov         eax,[00765B88];TDCLoop
 0076FBF5    call        TDCLoop.Create;TDCLoop.Create
 0076FBFA    mov         dword ptr [ebp-30],eax
 0076FBFD    mov         eax,dword ptr [ebp-30]
 0076FC00    mov         byte ptr [eax+4],0;TDCLoop.FIsIoUnit:Boolean
 0076FC04    mov         eax,dword ptr [ebp-30]
 0076FC07    mov         edx,dword ptr [ebp-0C]
 0076FC0A    mov         dword ptr [eax+8],edx;TDCLoop.FLoopIndx:Integer
 0076FC0D    mov         eax,dword ptr [ebp-30]
 0076FC10    mov         edx,dword ptr [ebp-18]
 0076FC13    mov         dword ptr [eax+0C],edx;TDCLoop.FLoopOffs:Integer
 0076FC16    lea         eax,[ebp-1B0]
 0076FC1C    push        eax
 0076FC1D    mov         eax,[007C3F8C];^'Loop '
 0076FC22    mov         dword ptr [ebp-18C],eax
 0076FC28    mov         byte ptr [ebp-188],11
 0076FC2F    mov         eax,dword ptr [ebp-18]
 0076FC32    add         eax,dword ptr [ebp-0C]
>0076FC35    jno         0076FC3C
 0076FC37    call        @IntOver
 0076FC3C    mov         dword ptr [ebp-184],eax
 0076FC42    mov         byte ptr [ebp-180],0
 0076FC49    mov         eax,dword ptr [ebp-14]
 0076FC4C    cmp         eax,6
>0076FC4F    jbe         0076FC56
 0076FC51    call        @BoundErr
 0076FC56    mov         eax,dword ptr [eax*4+7C3F64];^'No loop'
 0076FC5D    mov         dword ptr [ebp-17C],eax
 0076FC63    mov         byte ptr [ebp-178],11
 0076FC6A    lea         edx,[ebp-18C]
 0076FC70    mov         ecx,2
 0076FC75    mov         eax,77075C;'%s %.3d (%s)'
 0076FC7A    call        Format
 0076FC7F    mov         edx,dword ptr [ebp-1B0]
 0076FC85    mov         eax,dword ptr [ebp-30]
 0076FC88    add         eax,10;TDCLoop.FTreeNodeStr:string
 0076FC8B    call        @UStrAsg
 0076FC90    mov         eax,dword ptr [ebp-28]
 0076FC93    mov         eax,dword ptr [eax+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 0076FC96    mov         dword ptr [ebp-78],eax
 0076FC99    mov         eax,dword ptr [ebp-30]
 0076FC9C    mov         dword ptr [ebp-7C],eax
 0076FC9F    lea         edx,[ebp-7C]
 0076FCA2    mov         eax,dword ptr [ebp-78]
 0076FCA5    add         eax,8
 0076FCA8    call        0043489C
 0076FCAD    mov         dword ptr [ebp-80],eax
 0076FCB0    xor         eax,eax
 0076FCB2    mov         dword ptr [ebp-10],eax
 0076FCB5    mov         esi,1
 0076FCBA    mov         eax,dword ptr [ebp-0C]
 0076FCBD    cmp         eax,7
>0076FCC0    jbe         0076FCC7
 0076FCC2    call        @BoundErr
 0076FCC7    imul        eax,eax,43B3
>0076FCCD    jno         0076FCD4
 0076FCCF    call        @IntOver
 0076FCD4    lea         eax,[edi+eax*4]
 0076FCD7    mov         edx,dword ptr [ebp-10]
 0076FCDA    cmp         edx,1
>0076FCDD    jbe         0076FCE4
 0076FCDF    call        @BoundErr
 0076FCE4    imul        edx,edx,43B3
>0076FCEA    jno         0076FCF1
 0076FCEC    call        @IntOver
 0076FCF1    lea         eax,[eax+edx*2]
 0076FCF4    dec         esi
 0076FCF5    cmp         esi,9E
>0076FCFB    jbe         0076FD02
 0076FCFD    call        @BoundErr
 0076FD02    inc         esi
 0076FD03    imul        edx,esi,6D
>0076FD06    jno         0076FD0D
 0076FD08    call        @IntOver
 0076FD0D    push        esi
 0076FD0E    push        edi
 0076FD0F    lea         esi,[eax+edx*2-0D6]
 0076FD16    lea         edi,[ebp-16E]
 0076FD1C    mov         ecx,36
 0076FD21    rep movs    dword ptr [edi],dword ptr [esi]
 0076FD23    movs        word ptr [edi],word ptr [esi]
 0076FD25    pop         edi
 0076FD26    pop         esi
 0076FD27    cmp         byte ptr [ebp-164],0
>0076FD2E    je          007705B0
 0076FD34    mov         eax,dword ptr [ebp-14]
 0076FD37    cmp         eax,6
>0076FD3A    ja          007704A9
 0076FD40    jmp         dword ptr [eax*4+76FD47]
 0076FD40    dd          007704A9
 0076FD40    dd          0076FD63
 0076FD40    dd          0076FF6F
 0076FD40    dd          00770090
 0076FD40    dd          007702BF
 0076FD40    dd          00770090
 0076FD40    dd          007702BF
 0076FD63    lea         edx,[ebp-16E]
 0076FD69    mov         eax,edi
 0076FD6B    call        TFXPAD.SysGetInpEvents
 0076FD70    mov         byte ptr [ebp-31],al
 0076FD73    lea         edx,[ebp-16E]
 0076FD79    mov         eax,edi
 0076FD7B    call        TFXPAD.SysGetOutEvents
 0076FD80    mov         byte ptr [ebp-32],al
 0076FD83    test        byte ptr [ebp-31],2
>0076FD87    jne         0076FD93
 0076FD89    test        byte ptr [ebp-32],2
>0076FD8D    je          007704A9
 0076FD93    mov         dl,1
 0076FD95    mov         eax,[00765244];TDCAddr
 0076FD9A    call        TDCAddr.Create;TDCAddr.Create
 0076FD9F    mov         ebx,eax
 0076FDA1    mov         byte ptr [ebx+4],0;TDCAddr.FIsIoLine:Boolean
 0076FDA5    lea         eax,[ebp-1B4]
 0076FDAB    push        eax
 0076FDAC    imul        eax,dword ptr [ebp-10],64
>0076FDB0    jno         0076FDB7
 0076FDB2    call        @IntOver
 0076FDB7    add         eax,esi
>0076FDB9    jno         0076FDC0
 0076FDBB    call        @IntOver
 0076FDC0    mov         dword ptr [ebp-1C4],eax
 0076FDC6    mov         byte ptr [ebp-1C0],0
 0076FDCD    movzx       eax,byte ptr [ebp-164]
 0076FDD4    mov         edx,100
 0076FDD9    mul         eax,edx
 0076FDDB    mov         edx,eax
>0076FDDD    jno         0076FDE4
 0076FDDF    call        @IntOver
 0076FDE4    cmp         edx,0FFFF
>0076FDEA    jbe         0076FDF1
 0076FDEC    call        @BoundErr
 0076FDF1    lea         ecx,[ebp-1C8]
 0076FDF7    mov         eax,edi
 0076FDF9    call        TFXPAD.SysIntToType
 0076FDFE    mov         eax,dword ptr [ebp-1C8]
 0076FE04    mov         dword ptr [ebp-1BC],eax
 0076FE0A    mov         byte ptr [ebp-1B8],11
 0076FE11    lea         edx,[ebp-1C4]
 0076FE17    mov         ecx,1
 0076FE1C    mov         eax,770784;'%.3d %s'
 0076FE21    call        Format
 0076FE26    mov         edx,dword ptr [ebp-1B4]
 0076FE2C    lea         eax,[ebx+2C];TDCAddr.FTreeNodeStr:string
 0076FE2F    call        @UStrAsg
 0076FE34    movzx       eax,byte ptr [ebp-164]
 0076FE3B    mov         edx,100
 0076FE40    mul         eax,edx
 0076FE42    mov         edx,eax
>0076FE44    jno         0076FE4B
 0076FE46    call        @IntOver
 0076FE4B    cmp         edx,0FFFF
>0076FE51    jbe         0076FE58
 0076FE53    call        @BoundErr
 0076FE58    lea         ecx,[ebp-1CC]
 0076FE5E    mov         eax,edi
 0076FE60    call        TFXPAD.SysIntToType
 0076FE65    mov         edx,dword ptr [ebp-1CC]
 0076FE6B    lea         eax,[ebx+30];TDCAddr.FTypeString:string
 0076FE6E    call        @UStrAsg
 0076FE73    movzx       eax,byte ptr [ebp-164]
 0076FE7A    sub         al,4
>0076FE7C    je          0076FE82
 0076FE7E    sub         al,2
>0076FE80    jne         0076FEAE
 0076FE82    lea         eax,[ebp-1D0]
 0076FE88    push        eax
 0076FE89    movzx       ecx,byte ptr [ebp-163]
 0076FE90    movzx       edx,byte ptr [ebp-164]
 0076FE97    mov         eax,edi
 0076FE99    call        TFXPAD.SysIntToInput
 0076FE9E    mov         edx,dword ptr [ebp-1D0]
 0076FEA4    lea         eax,[ebx+34];TDCAddr.FTypeOrInput:string
 0076FEA7    call        @UStrAsg
>0076FEAC    jmp         0076FEFD
 0076FEAE    movzx       eax,byte ptr [ebp-164]
 0076FEB5    mov         edx,100
 0076FEBA    mul         eax,edx
 0076FEBC    mov         edx,eax
>0076FEBE    jno         0076FEC5
 0076FEC0    call        @IntOver
 0076FEC5    movzx       eax,byte ptr [ebp-163]
 0076FECC    add         edx,eax
>0076FECE    jno         0076FED5
 0076FED0    call        @IntOver
 0076FED5    cmp         edx,0FFFF
>0076FEDB    jbe         0076FEE2
 0076FEDD    call        @BoundErr
 0076FEE2    lea         ecx,[ebp-1D4]
 0076FEE8    mov         eax,edi
 0076FEEA    call        TFXPAD.SysIntToType
 0076FEEF    mov         edx,dword ptr [ebp-1D4]
 0076FEF5    lea         eax,[ebx+34];TDCAddr.FTypeOrInput:string
 0076FEF8    call        @UStrAsg
 0076FEFD    movzx       eax,byte ptr [ebp-164]
 0076FF04    sub         al,4
>0076FF06    je          0076FF0C
 0076FF08    sub         al,2
>0076FF0A    jne         0076FF3B
 0076FF0C    lea         eax,[ebp-1D8]
 0076FF12    push        eax
 0076FF13    movzx       ecx,byte ptr [ebp-163]
 0076FF1A    movzx       edx,byte ptr [ebp-164]
 0076FF21    mov         eax,edi
 0076FF23    call        TFXPAD.SysIntToInput
 0076FF28    mov         edx,dword ptr [ebp-1D8]
 0076FF2E    lea         eax,[ebx+38];TDCAddr.FInpFunction:string
 0076FF31    call        @UStrAsg
>0076FF36    jmp         007704A9
 0076FF3B    cmp         byte ptr [ebp-164],5
>0076FF42    jne         007704A9
 0076FF48    lea         ecx,[ebp-1DC]
 0076FF4E    movzx       edx,byte ptr [ebp-163]
 0076FF55    mov         eax,edi
 0076FF57    call        TFXPAD.SysIntToOutput
 0076FF5C    mov         edx,dword ptr [ebp-1DC]
 0076FF62    lea         eax,[ebx+3C];TDCAddr.FOutFunction:string
 0076FF65    call        @UStrAsg
>0076FF6A    jmp         007704A9
 0076FF6F    lea         edx,[ebp-16E]
 0076FF75    mov         eax,edi
 0076FF77    call        TFXPAD.CnvGetInpEvents
 0076FF7C    mov         byte ptr [ebp-31],al
 0076FF7F    lea         edx,[ebp-16E]
 0076FF85    mov         eax,edi
 0076FF87    call        TFXPAD.CnvGetOutEvents
 0076FF8C    mov         byte ptr [ebp-32],al
 0076FF8F    test        byte ptr [ebp-31],2
>0076FF93    jne         0076FF9F
 0076FF95    test        byte ptr [ebp-32],2
>0076FF99    je          007704A9
 0076FF9F    mov         dl,1
 0076FFA1    mov         eax,[00765244];TDCAddr
 0076FFA6    call        TDCAddr.Create;TDCAddr.Create
 0076FFAB    mov         ebx,eax
 0076FFAD    mov         byte ptr [ebx+4],0;TDCAddr.FIsIoLine:Boolean
 0076FFB1    lea         eax,[ebp-1E0]
 0076FFB7    push        eax
 0076FFB8    mov         dword ptr [ebp-1C4],esi
 0076FFBE    mov         byte ptr [ebp-1C0],0
 0076FFC5    movzx       eax,byte ptr [ebp-164]
 0076FFCC    mov         edx,100
 0076FFD1    mul         eax,edx
 0076FFD3    mov         edx,eax
>0076FFD5    jno         0076FFDC
 0076FFD7    call        @IntOver
 0076FFDC    movzx       eax,byte ptr [ebp-163]
 0076FFE3    add         edx,eax
>0076FFE5    jno         0076FFEC
 0076FFE7    call        @IntOver
 0076FFEC    cmp         edx,0FFFF
>0076FFF2    jbe         0076FFF9
 0076FFF4    call        @BoundErr
 0076FFF9    lea         ecx,[ebp-1E4]
 0076FFFF    mov         eax,edi
 00770001    call        TFXPAD.IntToCnv
 00770006    mov         eax,dword ptr [ebp-1E4]
 0077000C    mov         dword ptr [ebp-1BC],eax
 00770012    mov         byte ptr [ebp-1B8],11
 00770019    lea         edx,[ebp-1C4]
 0077001F    mov         ecx,1
 00770024    mov         eax,770784;'%.3d %s'
 00770029    call        Format
 0077002E    mov         edx,dword ptr [ebp-1E0]
 00770034    lea         eax,[ebx+2C];TDCAddr.FTreeNodeStr:string
 00770037    call        @UStrAsg
 0077003C    movzx       eax,byte ptr [ebp-164]
 00770043    mov         edx,100
 00770048    mul         eax,edx
 0077004A    mov         edx,eax
>0077004C    jno         00770053
 0077004E    call        @IntOver
 00770053    movzx       eax,byte ptr [ebp-163]
 0077005A    add         edx,eax
>0077005C    jno         00770063
 0077005E    call        @IntOver
 00770063    cmp         edx,0FFFF
>00770069    jbe         00770070
 0077006B    call        @BoundErr
 00770070    lea         ecx,[ebp-1E8]
 00770076    mov         eax,edi
 00770078    call        TFXPAD.IntToCnv
 0077007D    mov         edx,dword ptr [ebp-1E8]
 00770083    lea         eax,[ebx+34];TDCAddr.FTypeOrInput:string
 00770086    call        @UStrAsg
>0077008B    jmp         007704A9
 00770090    lea         edx,[ebp-16E]
 00770096    mov         eax,edi
 00770098    call        TFXPAD.ApoGetInpEvents
 0077009D    mov         byte ptr [ebp-31],al
 007700A0    lea         edx,[ebp-16E]
 007700A6    mov         eax,edi
 007700A8    call        TFXPAD.ApoGetOutEvents
 007700AD    mov         byte ptr [ebp-32],al
 007700B0    test        byte ptr [ebp-31],2
>007700B4    jne         007700C0
 007700B6    test        byte ptr [ebp-32],2
>007700BA    je          007704A9
 007700C0    mov         dl,1
 007700C2    mov         eax,[00765244];TDCAddr
 007700C7    call        TDCAddr.Create;TDCAddr.Create
 007700CC    mov         ebx,eax
 007700CE    mov         byte ptr [ebx+4],0;TDCAddr.FIsIoLine:Boolean
 007700D2    lea         eax,[ebp-1EC]
 007700D8    push        eax
 007700D9    mov         dword ptr [ebp-1C4],esi
 007700DF    mov         byte ptr [ebp-1C0],0
 007700E6    movzx       eax,byte ptr [ebp-164]
 007700ED    mov         edx,100
 007700F2    mul         eax,edx
 007700F4    mov         edx,eax
>007700F6    jno         007700FD
 007700F8    call        @IntOver
 007700FD    movzx       eax,byte ptr [ebp-163]
 00770104    add         edx,eax
>00770106    jno         0077010D
 00770108    call        @IntOver
 0077010D    cmp         edx,0FFFF
>00770113    jbe         0077011A
 00770115    call        @BoundErr
 0077011A    lea         ecx,[ebp-1F0]
 00770120    mov         eax,edi
 00770122    call        TFXPAD.ApoIntToType
 00770127    mov         eax,dword ptr [ebp-1F0]
 0077012D    mov         dword ptr [ebp-1BC],eax
 00770133    mov         byte ptr [ebp-1B8],11
 0077013A    lea         edx,[ebp-1C4]
 00770140    mov         ecx,1
 00770145    mov         eax,770784;'%.3d %s'
 0077014A    call        Format
 0077014F    mov         edx,dword ptr [ebp-1EC]
 00770155    lea         eax,[ebx+2C];TDCAddr.FTreeNodeStr:string
 00770158    call        @UStrAsg
 0077015D    movzx       eax,byte ptr [ebp-164]
 00770164    mov         edx,100
 00770169    mul         eax,edx
 0077016B    mov         edx,eax
>0077016D    jno         00770174
 0077016F    call        @IntOver
 00770174    movzx       eax,byte ptr [ebp-163]
 0077017B    add         edx,eax
>0077017D    jno         00770184
 0077017F    call        @IntOver
 00770184    cmp         edx,0FFFF
>0077018A    jbe         00770191
 0077018C    call        @BoundErr
 00770191    lea         ecx,[ebp-1F4]
 00770197    mov         eax,edi
 00770199    call        TFXPAD.ApoIntToType
 0077019E    mov         edx,dword ptr [ebp-1F4]
 007701A4    lea         eax,[ebx+30];TDCAddr.FTypeString:string
 007701A7    call        @UStrAsg
 007701AC    mov         eax,[007C4DBC];^gvar_007C2660
 007701B1    movzx       edx,byte ptr [ebp-164]
 007701B8    movzx       edx,dl
 007701BB    bt          dword ptr [eax],edx
>007701BE    jae         007701E4
 007701C0    lea         ecx,[ebp-1F8]
 007701C6    movzx       edx,byte ptr [ebp-150]
 007701CD    mov         eax,edi
 007701CF    call        TFXPAD.ComIntToInput
 007701D4    mov         edx,dword ptr [ebp-1F8]
 007701DA    lea         eax,[ebx+34];TDCAddr.FTypeOrInput:string
 007701DD    call        @UStrAsg
>007701E2    jmp         00770233
 007701E4    movzx       eax,byte ptr [ebp-164]
 007701EB    mov         edx,100
 007701F0    mul         eax,edx
 007701F2    mov         edx,eax
>007701F4    jno         007701FB
 007701F6    call        @IntOver
 007701FB    movzx       eax,byte ptr [ebp-163]
 00770202    add         edx,eax
>00770204    jno         0077020B
 00770206    call        @IntOver
 0077020B    cmp         edx,0FFFF
>00770211    jbe         00770218
 00770213    call        @BoundErr
 00770218    lea         ecx,[ebp-1FC]
 0077021E    mov         eax,edi
 00770220    call        TFXPAD.ApoIntToType
 00770225    mov         edx,dword ptr [ebp-1FC]
 0077022B    lea         eax,[ebx+34];TDCAddr.FTypeOrInput:string
 0077022E    call        @UStrAsg
 00770233    lea         ecx,[ebp-200]
 00770239    movzx       edx,byte ptr [ebp-150]
 00770240    mov         eax,edi
 00770242    call        TFXPAD.ComIntToInput
 00770247    mov         edx,dword ptr [ebp-200]
 0077024D    lea         eax,[ebx+38];TDCAddr.FInpFunction:string
 00770250    call        @UStrAsg
 00770255    lea         ecx,[ebp-204]
 0077025B    movzx       edx,byte ptr [ebp-14F]
 00770262    mov         eax,edi
 00770264    call        TFXPAD.ApoIntToOutput
 00770269    mov         edx,dword ptr [ebp-204]
 0077026F    lea         eax,[ebx+3C];TDCAddr.FOutFunction:string
 00770272    call        @UStrAsg
 00770277    mov         eax,[007C4B68];^gvar_007C26A0
 0077027C    movzx       edx,byte ptr [ebp-164]
 00770283    movzx       edx,dl
 00770286    bt          dword ptr [eax],edx
>00770289    jae         007702B2
 0077028B    lea         ecx,[ebp-208]
 00770291    movzx       edx,byte ptr [ebp-14B]
 00770298    mov         eax,edi
 0077029A    call        TFXPAD.ApoIntToOutput
 0077029F    mov         edx,dword ptr [ebp-208]
 007702A5    lea         eax,[ebx+40];TDCAddr.FOutFunction2:string
 007702A8    call        @UStrAsg
>007702AD    jmp         007704A9
 007702B2    lea         eax,[ebx+40];TDCAddr.FOutFunction2:string
 007702B5    call        @UStrClr
>007702BA    jmp         007704A9
 007702BF    lea         edx,[ebp-16E]
 007702C5    mov         eax,edi
 007702C7    call        TFXPAD.SapGetInpEvents
 007702CC    mov         byte ptr [ebp-31],al
 007702CF    lea         edx,[ebp-16E]
 007702D5    mov         eax,edi
 007702D7    call        TFXPAD.SapGetOutEvents
 007702DC    mov         byte ptr [ebp-32],al
 007702DF    test        byte ptr [ebp-31],2
>007702E3    jne         007702EF
 007702E5    test        byte ptr [ebp-32],2
>007702E9    je          007704A9
 007702EF    mov         dl,1
 007702F1    mov         eax,[00765244];TDCAddr
 007702F6    call        TDCAddr.Create;TDCAddr.Create
 007702FB    mov         ebx,eax
 007702FD    mov         byte ptr [ebx+4],0;TDCAddr.FIsIoLine:Boolean
 00770301    lea         eax,[ebp-20C]
 00770307    push        eax
 00770308    imul        eax,dword ptr [ebp-10],0C8
>0077030F    jno         00770316
 00770311    call        @IntOver
 00770316    add         eax,esi
>00770318    jno         0077031F
 0077031A    call        @IntOver
 0077031F    mov         dword ptr [ebp-1C4],eax
 00770325    mov         byte ptr [ebp-1C0],0
 0077032C    lea         eax,[ebp-210]
 00770332    push        eax
 00770333    movzx       ecx,byte ptr [ebp-163]
 0077033A    movzx       edx,byte ptr [ebp-164]
 00770341    mov         eax,edi
 00770343    call        TFXPAD.SapIntToType
 00770348    mov         eax,dword ptr [ebp-210]
 0077034E    mov         dword ptr [ebp-1BC],eax
 00770354    mov         byte ptr [ebp-1B8],11
 0077035B    lea         edx,[ebp-1C4]
 00770361    mov         ecx,1
 00770366    mov         eax,770784;'%.3d %s'
 0077036B    call        Format
 00770370    mov         edx,dword ptr [ebp-20C]
 00770376    lea         eax,[ebx+2C];TDCAddr.FTreeNodeStr:string
 00770379    call        @UStrAsg
 0077037E    lea         eax,[ebp-214]
 00770384    push        eax
 00770385    movzx       ecx,byte ptr [ebp-163]
 0077038C    movzx       edx,byte ptr [ebp-164]
 00770393    mov         eax,edi
 00770395    call        TFXPAD.SapIntToType
 0077039A    mov         edx,dword ptr [ebp-214]
 007703A0    lea         eax,[ebx+30];TDCAddr.FTypeString:string
 007703A3    call        @UStrAsg
 007703A8    cmp         byte ptr [ebp-163],0
>007703AF    jne         007703C0
 007703B1    movzx       eax,byte ptr [ebp-164]
 007703B8    sub         al,4
>007703BA    je          00770407
 007703BC    sub         al,2
>007703BE    je          00770407
 007703C0    cmp         byte ptr [ebp-163],1
>007703C7    jne         0077043B
 007703C9    mov         eax,[007C43C8];^gvar_007C2720
 007703CE    push        esi
 007703CF    push        edi
 007703D0    mov         esi,eax
 007703D2    lea         edi,[ebp-234]
 007703D8    mov         ecx,8
 007703DD    rep movs    dword ptr [edi],dword ptr [esi]
 007703DF    pop         edi
 007703E0    pop         esi
 007703E1    lea         eax,[ebp-234]
 007703E7    mov         edx,dword ptr ds:[7C4B18];^gvar_007C2740:Word
 007703ED    mov         cl,20
 007703EF    call        @SetUnion
 007703F4    movzx       eax,byte ptr [ebp-164]
 007703FB    movzx       eax,al
 007703FE    bt          dword ptr [ebp-234],eax
>00770405    jae         0077043B
 00770407    movzx       eax,byte ptr [ebp-150]
 0077040E    push        eax
 0077040F    lea         eax,[ebp-238]
 00770415    push        eax
 00770416    movzx       ecx,byte ptr [ebp-163]
 0077041D    movzx       edx,byte ptr [ebp-164]
 00770424    mov         eax,edi
 00770426    call        TFXPAD.SapIntToInput
 0077042B    mov         edx,dword ptr [ebp-238]
 00770431    lea         eax,[ebx+34];TDCAddr.FTypeOrInput:string
 00770434    call        @UStrAsg
>00770439    jmp         00770465
 0077043B    lea         eax,[ebp-23C]
 00770441    push        eax
 00770442    movzx       ecx,byte ptr [ebp-163]
 00770449    movzx       edx,byte ptr [ebp-164]
 00770450    mov         eax,edi
 00770452    call        TFXPAD.SapIntToType
 00770457    mov         edx,dword ptr [ebp-23C]
 0077045D    lea         eax,[ebx+34];TDCAddr.FTypeOrInput:string
 00770460    call        @UStrAsg
 00770465    lea         ecx,[ebp-240]
 0077046B    movzx       edx,byte ptr [ebp-150]
 00770472    mov         eax,edi
 00770474    call        TFXPAD.ComIntToInput
 00770479    mov         edx,dword ptr [ebp-240]
 0077047F    lea         eax,[ebx+38];TDCAddr.FInpFunction:string
 00770482    call        @UStrAsg
 00770487    lea         ecx,[ebp-244]
 0077048D    movzx       edx,byte ptr [ebp-14F]
 00770494    mov         eax,edi
 00770496    call        TFXPAD.ApoIntToOutput
 0077049B    mov         edx,dword ptr [ebp-244]
 007704A1    lea         eax,[ebx+3C];TDCAddr.FOutFunction:string
 007704A4    call        @UStrAsg
 007704A9    test        byte ptr [ebp-31],2
 007704AD    setne       al
 007704B0    test        al,al
>007704B2    jne         007704BE
 007704B4    test        byte ptr [ebp-32],2
>007704B8    je          007705B0
 007704BE    mov         eax,dword ptr [ebp-8]
 007704C1    mov         dword ptr [ebx+8],eax
 007704C4    mov         eax,dword ptr [ebp-0C]
 007704C7    mov         dword ptr [ebx+0C],eax
 007704CA    mov         eax,dword ptr [ebp-10]
 007704CD    mov         dword ptr [ebx+10],eax
 007704D0    mov         dword ptr [ebx+14],esi
 007704D3    mov         eax,dword ptr [ebp-18]
 007704D6    mov         dword ptr [ebx+20],eax
 007704D9    mov         eax,dword ptr [ebp-14]
 007704DC    mov         dword ptr [ebx+24],eax
 007704DF    push        esi
 007704E0    push        edi
 007704E1    lea         esi,[ebp-16E]
 007704E7    lea         edi,[ebx+4C]
 007704EA    mov         ecx,36
 007704EF    rep movs    dword ptr [edi],dword ptr [esi]
 007704F1    movs        word ptr [edi],word ptr [esi]
 007704F3    pop         edi
 007704F4    pop         esi
 007704F5    movzx       eax,byte ptr [ebp-31]
 007704F9    mov         byte ptr [ebx+28],al
 007704FC    movzx       eax,byte ptr [ebp-32]
 00770500    mov         byte ptr [ebx+29],al
 00770503    lea         eax,[ebx+48]
 00770506    mov         edx,dword ptr [ebp-0C]
 00770509    cmp         edx,7
>0077050C    jbe         00770513
 0077050E    call        @BoundErr
 00770513    imul        edx,edx,9F0
>00770519    jno         00770520
 0077051B    call        @IntOver
 00770520    mov         ecx,dword ptr [ebp-20]
 00770523    lea         edx,[ecx+edx*8]
 00770526    push        edx
 00770527    mov         edx,dword ptr [ebp-10]
 0077052A    cmp         edx,1
>0077052D    jbe         00770534
 0077052F    call        @BoundErr
 00770534    imul        edx,edx,4F8
>0077053A    jno         00770541
 0077053C    call        @IntOver
 00770541    pop         ecx
 00770542    lea         edx,[ecx+edx*8]
 00770545    push        edx
 00770546    dec         esi
 00770547    cmp         esi,9E
>0077054D    jbe         00770554
 0077054F    call        @BoundErr
 00770554    inc         esi
 00770555    imul        edx,esi,8
>00770558    jno         0077055F
 0077055A    call        @IntOver
 0077055F    pop         ecx
 00770560    lea         edx,[ecx+edx*8-3A]
 00770564    call        @UStrFromString
 00770569    mov         eax,dword ptr [ebp-30]
 0077056C    mov         eax,dword ptr [eax+1C];TDCLoop.FAddresses:TObjectList<FXDCData.TDCAddr>
 0077056F    mov         dword ptr [ebp-8C],ebx
 00770575    lea         edx,[ebp-8C]
 0077057B    add         eax,8
 0077057E    call        0043489C
 00770583    test        byte ptr [ebp-31],2
 00770587    setne       al
 0077058A    test        al,al
>0077058C    je          0077059C
 0077058E    mov         eax,dword ptr [ebp-30]
 00770591    add         dword ptr [eax+14],1;TDCLoop.FNumInputs:Integer
>00770595    jno         0077059C
 00770597    call        @IntOver
 0077059C    test        byte ptr [ebp-32],2
>007705A0    je          007705B0
 007705A2    mov         eax,dword ptr [ebp-30]
 007705A5    add         dword ptr [eax+18],1;TDCLoop.FNumOutputs:Integer
>007705A9    jno         007705B0
 007705AB    call        @IntOver
 007705B0    inc         esi
 007705B1    cmp         esi,0A0
>007705B7    jne         0076FCBA
 007705BD    inc         dword ptr [ebp-10]
 007705C0    cmp         dword ptr [ebp-10],2
>007705C4    jne         0076FCB5
 007705CA    mov         eax,dword ptr [ebp-30]
 007705CD    mov         eax,dword ptr [eax+14];TDCLoop.FNumInputs:Integer
 007705D0    mov         edx,dword ptr [ebp-28]
 007705D3    add         dword ptr [edx+14],eax;TDCPanel.FNumInputs:Integer
>007705D6    jno         007705DD
 007705D8    call        @IntOver
 007705DD    mov         eax,dword ptr [ebp-30]
 007705E0    mov         eax,dword ptr [eax+18];TDCLoop.FNumOutputs:Integer
 007705E3    mov         edx,dword ptr [ebp-28]
 007705E6    add         dword ptr [edx+18],eax;TDCPanel.FNumOutputs:Integer
>007705E9    jno         007705F0
 007705EB    call        @IntOver
 007705F0    inc         dword ptr [ebp-0C]
 007705F3    dec         dword ptr [ebp-38]
>007705F6    jne         0076FBD6
 007705FC    mov         eax,dword ptr [ebp-28]
 007705FF    mov         eax,dword ptr [eax+14];TDCPanel.FNumInputs:Integer
 00770602    mov         edx,dword ptr [ebp-4]
 00770605    add         dword ptr [edx+4],eax;TDCSystem.FNumInputs:Integer
>00770608    jno         0077060F
 0077060A    call        @IntOver
 0077060F    mov         eax,dword ptr [ebp-28]
 00770612    mov         eax,dword ptr [eax+18];TDCPanel.FNumOutputs:Integer
 00770615    mov         edx,dword ptr [ebp-4]
 00770618    add         dword ptr [edx+8],eax;TDCSystem.FNumOutputs:Integer
>0077061B    jno         00770622
 0077061D    call        @IntOver
 00770622    inc         dword ptr [ebp-8]
 00770625    cmp         dword ptr [ebp-8],21
>00770629    jne         0076F744
 0077062F    xor         eax,eax
 00770631    pop         edx
 00770632    pop         ecx
 00770633    pop         ecx
 00770634    mov         dword ptr fs:[eax],edx
 00770637    push        77068F
 0077063C    lea         eax,[ebp-244]
 00770642    mov         edx,4
 00770647    call        @UStrArrayClr
 0077064C    lea         eax,[ebp-214]
 00770652    mov         edx,14
 00770657    call        @UStrArrayClr
 0077065C    lea         eax,[ebp-1B4]
 00770662    mov         edx,6
 00770667    call        @UStrArrayClr
 0077066C    lea         eax,[ebp-194]
 00770672    mov         edx,2
 00770677    call        @UStrArrayClr
 0077067C    lea         eax,[ebp-174]
 00770682    call        @UStrClr
 00770687    ret
>00770688    jmp         @HandleFinally
>0077068D    jmp         0077063C
 0077068F    pop         edi
 00770690    pop         esi
 00770691    pop         ebx
 00770692    mov         esp,ebp
 00770694    pop         ebp
 00770695    ret
*}
end;

//00770794
constructor TDCPanel.Create;
begin
{*
 00770794    push        ebx
 00770795    push        esi
 00770796    test        dl,dl
>00770798    je          007707A2
 0077079A    add         esp,0FFFFFFF0
 0077079D    call        @ClassCreate
 007707A2    mov         ebx,edx
 007707A4    mov         esi,eax
 007707A6    mov         cl,1
 007707A8    mov         dl,1
 007707AA    mov         eax,[0076C81C];TObjectList<FXDCData.TDCLoop>
 007707AF    call        00774040
 007707B4    mov         dword ptr [esi+20],eax;TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 007707B7    mov         cl,1
 007707B9    mov         dl,1
 007707BB    mov         eax,[0076B2B4];TObjectList<FXDCData.TDCIoUnit>
 007707C0    call        00773BE8
 007707C5    mov         dword ptr [esi+1C],eax;TDCPanel.FIoUnits:TObjectList<FXDCData.TDCIoUnit>
 007707C8    mov         eax,esi
 007707CA    test        bl,bl
>007707CC    je          007707DD
 007707CE    call        @AfterConstruction
 007707D3    pop         dword ptr fs:[0]
 007707DA    add         esp,0C
 007707DD    mov         eax,esi
 007707DF    pop         esi
 007707E0    pop         ebx
 007707E1    ret
*}
end;

//007707E4
destructor TDCPanel.Destroy();
begin
{*
 007707E4    push        ebx
 007707E5    push        esi
 007707E6    call        @BeforeDestruction
 007707EB    mov         ebx,edx
 007707ED    mov         esi,eax
 007707EF    mov         eax,dword ptr [esi+1C];TDCPanel.FIoUnits:TObjectList<FXDCData.TDCIoUnit>
 007707F2    call        TObject.Free
 007707F7    mov         eax,dword ptr [esi+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 007707FA    call        TObject.Free
 007707FF    mov         dl,0FC
 00770801    and         dl,bl
 00770803    mov         eax,esi
 00770805    call        TObject.Destroy
 0077080A    test        bl,bl
>0077080C    jle         00770815
 0077080E    mov         eax,esi
 00770810    call        @ClassDestroy
 00770815    pop         esi
 00770816    pop         ebx
 00770817    ret
*}
end;

//00770818
constructor TDCLoop.Create;
begin
{*
 00770818    push        ebx
 00770819    push        esi
 0077081A    test        dl,dl
>0077081C    je          00770826
 0077081E    add         esp,0FFFFFFF0
 00770821    call        @ClassCreate
 00770826    mov         ebx,edx
 00770828    mov         esi,eax
 0077082A    mov         cl,1
 0077082C    mov         dl,1
 0077082E    mov         eax,[007687B0];TObjectList<FXDCData.TDCAddr>
 00770833    call        00773338
 00770838    mov         dword ptr [esi+1C],eax;TDCLoop.FAddresses:TObjectList<FXDCData.TDCAddr>
 0077083B    mov         eax,esi
 0077083D    test        bl,bl
>0077083F    je          00770850
 00770841    call        @AfterConstruction
 00770846    pop         dword ptr fs:[0]
 0077084D    add         esp,0C
 00770850    mov         eax,esi
 00770852    pop         esi
 00770853    pop         ebx
 00770854    ret
*}
end;

//00770858
destructor TDCLoop.Destroy();
begin
{*
 00770858    push        ebx
 00770859    push        esi
 0077085A    call        @BeforeDestruction
 0077085F    mov         ebx,edx
 00770861    mov         esi,eax
 00770863    mov         eax,dword ptr [esi+1C];TDCLoop.FAddresses:TObjectList<FXDCData.TDCAddr>
 00770866    call        TObject.Free
 0077086B    mov         dl,0FC
 0077086D    and         dl,bl
 0077086F    mov         eax,esi
 00770871    call        TObject.Destroy
 00770876    test        bl,bl
>00770878    jle         00770881
 0077087A    mov         eax,esi
 0077087C    call        @ClassDestroy
 00770881    pop         esi
 00770882    pop         ebx
 00770883    ret
*}
end;

//00770894
{*procedure sub_00770894(?:?; ?:?);
begin
 00770894    push        ebx
 00770895    push        esi
 00770896    add         esp,0FFFFFFF8
 00770899    mov         esi,edx
 0077089B    mov         ebx,eax
 0077089D    push        esi
 0077089E    mov         eax,dword ptr [ebx+8]
 007708A1    add         eax,dword ptr [ebx+0C]
>007708A4    jno         007708AB
 007708A6    call        @IntOver
 007708AB    mov         dword ptr [esp+4],eax
 007708AF    mov         byte ptr [esp+8],0
 007708B4    lea         edx,[esp+4]
 007708B8    xor         ecx,ecx
 007708BA    mov         eax,7708D8;'%.3d'
 007708BF    call        Format
 007708C4    pop         ecx
 007708C5    pop         edx
 007708C6    pop         esi
 007708C7    pop         ebx
 007708C8    ret
end;*}

//007708E4
constructor TDCAddr.Create;
begin
{*
 007708E4    test        dl,dl
>007708E6    je          007708F0
 007708E8    add         esp,0FFFFFFF0
 007708EB    call        @ClassCreate
 007708F0    test        dl,dl
>007708F2    je          00770903
 007708F4    call        @AfterConstruction
 007708F9    pop         dword ptr fs:[0]
 00770900    add         esp,0C
 00770903    ret
*}
end;

//00770904
destructor TDCAddr.Destroy();
begin
{*
 00770904    push        ebx
 00770905    push        esi
 00770906    call        @BeforeDestruction
 0077090B    mov         ebx,edx
 0077090D    mov         esi,eax
 0077090F    mov         dl,0FC
 00770911    and         dl,bl
 00770913    mov         eax,esi
 00770915    call        TObject.Destroy
 0077091A    test        bl,bl
>0077091C    jle         00770925
 0077091E    mov         eax,esi
 00770920    call        @ClassDestroy
 00770925    pop         esi
 00770926    pop         ebx
 00770927    ret
*}
end;

//00770928
{*procedure sub_00770928(?:?);
begin
 00770928    push        ebx
 00770929    push        esi
 0077092A    add         esp,0FFFFFFF8
 0077092D    mov         esi,edx
 0077092F    mov         ebx,eax
 00770931    push        esi
 00770932    mov         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
 00770935    mov         dword ptr [esp+4],eax
 00770939    mov         byte ptr [esp+8],0
 0077093E    lea         edx,[esp+4]
 00770942    xor         ecx,ecx
 00770944    mov         eax,770960;'%.2d'
 00770949    call        Format
 0077094E    pop         ecx
 0077094F    pop         edx
 00770950    pop         esi
 00770951    pop         ebx
 00770952    ret
end;*}

//0077096C
{*function sub_0077096C:?;
begin
 0077096C    mov         eax,dword ptr [eax+8];TDCAddr.FPanlIndx:Integer
 0077096F    ret
end;*}

//007709D0
{*procedure sub_007709D0(?:?);
begin
 007709D0    push        ebx
 007709D1    push        esi
 007709D2    add         esp,0FFFFFFF8
 007709D5    mov         esi,edx
 007709D7    mov         ebx,eax
 007709D9    mov         eax,dword ptr [ebx+24];TDCAddr.FLoopType:Integer
 007709DC    cmp         eax,6
>007709DF    ja          00770AA9
 007709E5    jmp         dword ptr [eax*4+7709EC]
 007709E5    dd          00770AA9
 007709E5    dd          00770A08
 007709E5    dd          00770A39
 007709E5    dd          00770A58
 007709E5    dd          00770A77
 007709E5    dd          00770A58
 007709E5    dd          00770A77
 00770A08    push        esi
 00770A09    imul        eax,dword ptr [ebx+10],64;TDCAddr.FRangIndx:Integer
>00770A0D    jno         00770A14
 00770A0F    call        @IntOver
 00770A14    add         eax,dword ptr [ebx+14];TDCAddr.FAddrIndx:Integer
>00770A17    jno         00770A1E
 00770A19    call        @IntOver
 00770A1E    mov         dword ptr [esp+4],eax
 00770A22    mov         byte ptr [esp+8],0
 00770A27    lea         edx,[esp+4]
 00770A2B    xor         ecx,ecx
 00770A2D    mov         eax,770ABC;'%.3d'
 00770A32    call        Format
>00770A37    jmp         00770AA9
 00770A39    push        esi
 00770A3A    mov         eax,dword ptr [ebx+14];TDCAddr.FAddrIndx:Integer
 00770A3D    mov         dword ptr [esp+4],eax
 00770A41    mov         byte ptr [esp+8],0
 00770A46    lea         edx,[esp+4]
 00770A4A    xor         ecx,ecx
 00770A4C    mov         eax,770ABC;'%.3d'
 00770A51    call        Format
>00770A56    jmp         00770AA9
 00770A58    push        esi
 00770A59    mov         eax,dword ptr [ebx+14];TDCAddr.FAddrIndx:Integer
 00770A5C    mov         dword ptr [esp+4],eax
 00770A60    mov         byte ptr [esp+8],0
 00770A65    lea         edx,[esp+4]
 00770A69    xor         ecx,ecx
 00770A6B    mov         eax,770ABC;'%.3d'
 00770A70    call        Format
>00770A75    jmp         00770AA9
 00770A77    push        esi
 00770A78    imul        eax,dword ptr [ebx+10],0C8;TDCAddr.FRangIndx:Integer
>00770A7F    jno         00770A86
 00770A81    call        @IntOver
 00770A86    add         eax,dword ptr [ebx+14];TDCAddr.FAddrIndx:Integer
>00770A89    jno         00770A90
 00770A8B    call        @IntOver
 00770A90    mov         dword ptr [esp+4],eax
 00770A94    mov         byte ptr [esp+8],0
 00770A99    lea         edx,[esp+4]
 00770A9D    xor         ecx,ecx
 00770A9F    mov         eax,770ABC;'%.3d'
 00770AA4    call        Format
 00770AA9    pop         ecx
 00770AAA    pop         edx
 00770AAB    pop         esi
 00770AAC    pop         ebx
 00770AAD    ret
end;*}

//00770AC8
{*procedure sub_00770AC8(?:?);
begin
 00770AC8    push        esi
 00770AC9    push        edi
 00770ACA    mov         edi,edx
 00770ACC    lea         esi,[eax+72]
 00770ACF    mov         ecx,20
 00770AD4    rep movs    dword ptr [edi],dword ptr [esi]
 00770AD6    movs        word ptr [edi],word ptr [esi]
 00770AD8    pop         edi
 00770AD9    pop         esi
 00770ADA    ret
end;*}

//00770ADC
{*procedure sub_00770ADC(?:?);
begin
 00770ADC    push        ebx
 00770ADD    push        esi
 00770ADE    mov         esi,edx
 00770AE0    mov         ebx,eax
 00770AE2    mov         edx,esi
 00770AE4    lea         eax,[ebx+72]
 00770AE7    call        006955F8
 00770AEC    pop         esi
 00770AED    pop         ebx
 00770AEE    ret
end;*}

//00770AF0
{*procedure sub_00770AF0(?:?);
begin
 00770AF0    push        ebx
 00770AF1    push        esi
 00770AF2    mov         esi,edx
 00770AF4    mov         ebx,eax
 00770AF6    mov         eax,esi
 00770AF8    mov         edx,dword ptr [ebx+48];TDCAddr.FCustomText:string
 00770AFB    call        @UStrAsg
 00770B00    pop         esi
 00770B01    pop         ebx
 00770B02    ret
end;*}

//00770B0C
{*procedure sub_00770B0C(?:?);
begin
 00770B0C    push        ebx
 00770B0D    push        esi
 00770B0E    add         esp,0FFFFFFF8
 00770B11    mov         esi,edx
 00770B13    mov         ebx,eax
 00770B15    push        esi
 00770B16    mov         eax,dword ptr [ebx+0C];TDCAddr.FLoopIndx:Integer
 00770B19    add         eax,dword ptr [ebx+20];TDCAddr.FLoopOffs:Integer
>00770B1C    jno         00770B23
 00770B1E    call        @IntOver
 00770B23    mov         dword ptr [esp+4],eax
 00770B27    mov         byte ptr [esp+8],0
 00770B2C    lea         edx,[esp+4]
 00770B30    xor         ecx,ecx
 00770B32    mov         eax,770B50;'%.3d'
 00770B37    call        Format
 00770B3C    pop         ecx
 00770B3D    pop         edx
 00770B3E    pop         esi
 00770B3F    pop         ebx
 00770B40    ret
end;*}

//00770B5C
{*procedure sub_00770B5C(?:?);
begin
 00770B5C    push        ebx
 00770B5D    push        esi
 00770B5E    mov         esi,edx
 00770B60    mov         ebx,eax
 00770B62    mov         eax,esi
 00770B64    mov         edx,dword ptr [ebx+3C];TDCAddr.FOutFunction:string
 00770B67    call        @UStrAsg
 00770B6C    pop         esi
 00770B6D    pop         ebx
 00770B6E    ret
end;*}

//00770B70
{*function sub_00770B70:?;
begin
 00770B70    movzx       edx,byte ptr [eax+29];TDCAddr.FOutEvents:TFXEventSet
 00770B74    mov         eax,edx
 00770B76    ret
end;*}

//00770B78
{*procedure sub_00770B78(?:?);
begin
 00770B78    push        ebx
 00770B79    push        esi
 00770B7A    mov         esi,edx
 00770B7C    mov         ebx,eax
 00770B7E    mov         eax,esi
 00770B80    mov         edx,dword ptr [ebx+40];TDCAddr.FOutFunction2:string
 00770B83    call        @UStrAsg
 00770B88    pop         esi
 00770B89    pop         ebx
 00770B8A    ret
end;*}

//00770B8C
{*function sub_00770B8C:?;
begin
 00770B8C    mov         eax,1
 00770B91    ret
end;*}

//00770B94
{*procedure sub_00770B94(?:?);
begin
 00770B94    push        ebx
 00770B95    push        esi
 00770B96    mov         esi,edx
 00770B98    mov         ebx,eax
 00770B9A    lea         eax,[ebx+44];TDCAddr.FCtrlGroups:string
 00770B9D    mov         edx,esi
 00770B9F    call        @UStrAsg
 00770BA4    lea         edx,[ebx+72]
 00770BA7    mov         eax,esi
 00770BA9    call        00695720
 00770BAE    pop         esi
 00770BAF    pop         ebx
 00770BB0    ret
end;*}

//00770BB4
{*procedure sub_00770BB4(?:?);
begin
 00770BB4    push        esi
 00770BB5    push        edi
 00770BB6    add         esp,0FFFFFF7C
 00770BBC    mov         esi,edx
 00770BBE    lea         edi,[esp]
 00770BC1    mov         ecx,20
 00770BC6    rep movs    dword ptr [edi],dword ptr [esi]
 00770BC8    movs        word ptr [edi],word ptr [esi]
 00770BCA    mov         esi,esp
 00770BCC    lea         edi,[eax+72]
 00770BCF    mov         ecx,20
 00770BD4    rep movs    dword ptr [edi],dword ptr [esi]
 00770BD6    movs        word ptr [edi],word ptr [esi]
 00770BD8    add         esp,84
 00770BDE    pop         edi
 00770BDF    pop         esi
 00770BE0    ret
end;*}

//00770BE4
{*procedure sub_00770BE4(?:?);
begin
 00770BE4    mov         dword ptr [eax+8],edx;TDCAddr.FPanlIndx:Integer
 00770BE7    ret
end;*}

//00770BE8
{*procedure sub_00770BE8(?:?);
begin
 00770BE8    push        ebx
 00770BE9    push        esi
 00770BEA    mov         esi,edx
 00770BEC    mov         ebx,eax
 00770BEE    mov         eax,esi
 00770BF0    mov         edx,dword ptr [ebx+30];TDCAddr.FTypeString:string
 00770BF3    call        @UStrAsg
 00770BF8    pop         esi
 00770BF9    pop         ebx
 00770BFA    ret
end;*}

//00770BFC
{*function sub_00770BFC:?;
begin
 00770BFC    movzx       edx,byte ptr [eax+28];TDCAddr.FInpEvents:TFXEventSet
 00770C00    mov         eax,edx
 00770C02    ret
end;*}

//00770C04
constructor TDCIoUnit.Create;
begin
{*
 00770C04    push        ebx
 00770C05    push        esi
 00770C06    test        dl,dl
>00770C08    je          00770C12
 00770C0A    add         esp,0FFFFFFF0
 00770C0D    call        @ClassCreate
 00770C12    mov         ebx,edx
 00770C14    mov         esi,eax
 00770C16    mov         cl,1
 00770C18    mov         dl,1
 00770C1A    mov         eax,[00769D30];TObjectList<FXDCData.TDCIoLine>
 00770C1F    call        00773790
 00770C24    mov         dword ptr [esi+1C],eax;TDCIoUnit.FIOLines:TObjectList<FXDCData.TDCIoLine>
 00770C27    mov         eax,esi
 00770C29    test        bl,bl
>00770C2B    je          00770C3C
 00770C2D    call        @AfterConstruction
 00770C32    pop         dword ptr fs:[0]
 00770C39    add         esp,0C
 00770C3C    mov         eax,esi
 00770C3E    pop         esi
 00770C3F    pop         ebx
 00770C40    ret
*}
end;

//00770C44
destructor TDCIoUnit.Destroy();
begin
{*
 00770C44    push        ebx
 00770C45    push        esi
 00770C46    call        @BeforeDestruction
 00770C4B    mov         ebx,edx
 00770C4D    mov         esi,eax
 00770C4F    mov         eax,dword ptr [esi+1C];TDCIoUnit.FIOLines:TObjectList<FXDCData.TDCIoLine>
 00770C52    call        TObject.Free
 00770C57    mov         dl,0FC
 00770C59    and         dl,bl
 00770C5B    mov         eax,esi
 00770C5D    call        TObject.Destroy
 00770C62    test        bl,bl
>00770C64    jle         00770C6D
 00770C66    mov         eax,esi
 00770C68    call        @ClassDestroy
 00770C6D    pop         esi
 00770C6E    pop         ebx
 00770C6F    ret
*}
end;

//00770C70
{*procedure sub_00770C70(?:?; ?:PCCIRecord; ?:?);
begin
 00770C70    push        ebp
 00770C71    mov         ebp,esp
 00770C73    add         esp,0FFFFFFE0
 00770C76    push        ebx
 00770C77    push        esi
 00770C78    push        edi
 00770C79    xor         ecx,ecx
 00770C7B    mov         dword ptr [ebp-8],ecx
 00770C7E    mov         ebx,edx
 00770C80    mov         edi,eax
 00770C82    mov         esi,dword ptr [ebp+8]
 00770C85    add         esi,0FFFFFFF4
 00770C88    xor         eax,eax
 00770C8A    push        ebp
 00770C8B    push        770E25
 00770C90    push        dword ptr fs:[eax]
 00770C93    mov         dword ptr fs:[eax],esp
 00770C96    mov         eax,dword ptr [ebp+8]
 00770C99    mov         eax,dword ptr [eax-4]
 00770C9C    movzx       edx,byte ptr [ebx]
 00770C9F    call        TFXPIO.GetInpEventSet
 00770CA4    mov         edx,dword ptr [ebp+8]
 00770CA7    mov         byte ptr [edx-5],al
 00770CAA    mov         eax,dword ptr [ebp+8]
 00770CAD    movzx       edx,byte ptr ds:[770E34];0x0 gvar_00770E34
 00770CB4    mov         byte ptr [eax-6],dl
 00770CB7    mov         eax,dword ptr [ebp+8]
 00770CBA    test        byte ptr [eax-5],2
>00770CBE    jne         00770CCD
 00770CC0    mov         eax,dword ptr [ebp+8]
 00770CC3    test        byte ptr [eax-6],2
>00770CC7    je          00770E0F
 00770CCD    mov         dl,1
 00770CCF    mov         eax,[00765EF4];TDCIoLine
 00770CD4    call        TDCIoLine.Create;TDCIoLine.Create
 00770CD9    mov         dword ptr [esi],eax
 00770CDB    mov         eax,dword ptr [esi]
 00770CDD    mov         byte ptr [eax+4],1
 00770CE1    mov         eax,dword ptr [ebp+8]
 00770CE4    mov         eax,dword ptr [eax-10]
 00770CE7    mov         eax,dword ptr [eax+8]
 00770CEA    mov         edx,dword ptr [esi]
 00770CEC    mov         dword ptr [edx+8],eax
 00770CEF    mov         eax,dword ptr [ebp+8]
 00770CF2    mov         eax,dword ptr [eax-10]
 00770CF5    mov         eax,dword ptr [eax+0C]
 00770CF8    mov         edx,dword ptr [esi]
 00770CFA    mov         dword ptr [edx+18],eax
 00770CFD    mov         eax,dword ptr [esi]
 00770CFF    mov         dword ptr [eax+1C],edi
 00770D02    mov         eax,dword ptr [esi]
 00770D04    mov         dl,1
 00770D06    mov         byte ptr [eax+20],dl
 00770D09    mov         eax,dword ptr [esi]
 00770D0B    add         eax,0B0
 00770D10    mov         edx,dword ptr [esi]
 00770D12    movzx       edx,byte ptr [edx+20]
 00770D16    mov         edx,dword ptr [edx*4+7C3F90];gvar_007C3F90:array[4] of ?
 00770D1D    call        @UStrAsg
 00770D22    movzx       eax,byte ptr [ebx]
 00770D25    mov         edx,dword ptr [esi]
 00770D27    mov         dword ptr [edx+24],eax
 00770D2A    mov         eax,dword ptr [esi]
 00770D2C    add         eax,0B4
 00770D31    mov         edx,dword ptr [esi]
 00770D33    mov         edx,dword ptr [edx+24]
 00770D36    cmp         edx,1C
>00770D39    jbe         00770D40
 00770D3B    call        @BoundErr
 00770D40    mov         ecx,dword ptr ds:[7C45CC];^gvar_007C28B0:array[29] of ?
 00770D46    mov         edx,dword ptr [ecx+edx*4]
 00770D49    call        @UStrAsg
 00770D4E    lea         eax,[ebp-8]
 00770D51    push        eax
 00770D52    mov         eax,[007C3F84];^'Input'
 00770D57    mov         dword ptr [ebp-20],eax
 00770D5A    mov         byte ptr [ebp-1C],11
 00770D5E    mov         eax,770E44;'CCI'
 00770D63    mov         dword ptr [ebp-18],eax
 00770D66    mov         byte ptr [ebp-14],11
 00770D6A    mov         dword ptr [ebp-10],edi
 00770D6D    mov         byte ptr [ebp-0C],0
 00770D71    lea         edx,[ebp-20]
 00770D74    mov         ecx,2
 00770D79    mov         eax,770E58;'%s (%s %.2d)'
 00770D7E    call        Format
 00770D83    mov         edx,dword ptr [ebp-8]
 00770D86    mov         eax,dword ptr [esi]
 00770D88    add         eax,0AC
 00770D8D    call        @UStrAsg
 00770D92    mov         eax,dword ptr [esi]
 00770D94    add         eax,0C0
 00770D99    lea         edx,[ebx+0C2]
 00770D9F    call        @UStrFromString
 00770DA4    mov         eax,dword ptr [ebp+8]
 00770DA7    movzx       eax,byte ptr [eax-5]
 00770DAB    mov         edx,dword ptr [esi]
 00770DAD    mov         byte ptr [edx+0AA],al
 00770DB3    mov         eax,dword ptr [ebp+8]
 00770DB6    movzx       eax,byte ptr [eax-6]
 00770DBA    mov         edx,dword ptr [esi]
 00770DBC    mov         byte ptr [edx+0AB],al
 00770DC2    mov         eax,dword ptr [ebp+8]
 00770DC5    mov         eax,dword ptr [eax-10]
 00770DC8    mov         eax,dword ptr [eax+1C]
 00770DCB    mov         edx,dword ptr [esi]
 00770DCD    mov         dword ptr [ebp-4],edx
 00770DD0    lea         edx,[ebp-4]
 00770DD3    add         eax,8
 00770DD6    call        0043489C
 00770DDB    mov         eax,dword ptr [ebp+8]
 00770DDE    test        byte ptr [eax-5],2
>00770DE2    je          00770DF5
 00770DE4    mov         eax,dword ptr [ebp+8]
 00770DE7    mov         eax,dword ptr [eax-10]
 00770DEA    add         dword ptr [eax+14],1
>00770DEE    jno         00770DF5
 00770DF0    call        @IntOver
 00770DF5    mov         eax,dword ptr [ebp+8]
 00770DF8    test        byte ptr [eax-6],2
>00770DFC    je          00770E0F
 00770DFE    mov         eax,dword ptr [ebp+8]
 00770E01    mov         eax,dword ptr [eax-10]
 00770E04    add         dword ptr [eax+18],1
>00770E08    jno         00770E0F
 00770E0A    call        @IntOver
 00770E0F    xor         eax,eax
 00770E11    pop         edx
 00770E12    pop         ecx
 00770E13    pop         ecx
 00770E14    mov         dword ptr fs:[eax],edx
 00770E17    push        770E2C
 00770E1C    lea         eax,[ebp-8]
 00770E1F    call        @UStrClr
 00770E24    ret
>00770E25    jmp         @HandleFinally
>00770E2A    jmp         00770E1C
 00770E2C    pop         edi
 00770E2D    pop         esi
 00770E2E    pop         ebx
 00770E2F    mov         esp,ebp
 00770E31    pop         ebp
 00770E32    ret
end;*}

//00770E74
{*procedure sub_00770E74(?:?; ?:PCCORecord; ?:?);
begin
 00770E74    push        ebp
 00770E75    mov         ebp,esp
 00770E77    add         esp,0FFFFFFDC
 00770E7A    push        ebx
 00770E7B    push        esi
 00770E7C    push        edi
 00770E7D    xor         ecx,ecx
 00770E7F    mov         dword ptr [ebp-0C],ecx
 00770E82    mov         dword ptr [ebp-8],ecx
 00770E85    mov         ebx,edx
 00770E87    mov         edi,eax
 00770E89    mov         esi,dword ptr [ebp+8]
 00770E8C    add         esi,0FFFFFFF4
 00770E8F    xor         eax,eax
 00770E91    push        ebp
 00770E92    push        771051
 00770E97    push        dword ptr fs:[eax]
 00770E9A    mov         dword ptr fs:[eax],esp
 00770E9D    mov         eax,dword ptr [ebp+8]
 00770EA0    movzx       edx,byte ptr ds:[771060];0x0 gvar_00771060
 00770EA7    mov         byte ptr [eax-5],dl
 00770EAA    mov         eax,dword ptr [ebp+8]
 00770EAD    mov         eax,dword ptr [eax-4]
 00770EB0    movzx       edx,byte ptr [ebx]
 00770EB3    call        TFXPIO.GetOutEventSet
 00770EB8    mov         edx,dword ptr [ebp+8]
 00770EBB    mov         byte ptr [edx-6],al
 00770EBE    mov         eax,dword ptr [ebp+8]
 00770EC1    test        byte ptr [eax-5],2
>00770EC5    jne         00770ED4
 00770EC7    mov         eax,dword ptr [ebp+8]
 00770ECA    test        byte ptr [eax-6],2
>00770ECE    je          00771036
 00770ED4    mov         dl,1
 00770ED6    mov         eax,[00765EF4];TDCIoLine
 00770EDB    call        TDCIoLine.Create;TDCIoLine.Create
 00770EE0    mov         dword ptr [esi],eax
 00770EE2    mov         eax,dword ptr [esi]
 00770EE4    mov         byte ptr [eax+4],1
 00770EE8    mov         eax,dword ptr [ebp+8]
 00770EEB    mov         eax,dword ptr [eax-10]
 00770EEE    mov         eax,dword ptr [eax+8]
 00770EF1    mov         edx,dword ptr [esi]
 00770EF3    mov         dword ptr [edx+8],eax
 00770EF6    mov         eax,dword ptr [ebp+8]
 00770EF9    mov         eax,dword ptr [eax-10]
 00770EFC    mov         eax,dword ptr [eax+0C]
 00770EFF    mov         edx,dword ptr [esi]
 00770F01    mov         dword ptr [edx+18],eax
 00770F04    mov         eax,dword ptr [esi]
 00770F06    mov         dword ptr [eax+1C],edi
 00770F09    mov         eax,dword ptr [esi]
 00770F0B    mov         dl,2
 00770F0D    mov         byte ptr [eax+20],dl
 00770F10    mov         eax,dword ptr [esi]
 00770F12    add         eax,0B0
 00770F17    mov         edx,dword ptr [esi]
 00770F19    movzx       edx,byte ptr [edx+20]
 00770F1D    mov         edx,dword ptr [edx*4+7C3F90];gvar_007C3F90:array[4] of ?
 00770F24    call        @UStrAsg
 00770F29    movzx       eax,byte ptr [ebx]
 00770F2C    mov         edx,dword ptr [esi]
 00770F2E    mov         dword ptr [edx+24],eax
 00770F31    mov         eax,dword ptr [esi]
 00770F33    mov         edx,dword ptr [eax+24]
 00770F36    cmp         edx,0FF
>00770F3C    jbe         00770F43
 00770F3E    call        @BoundErr
 00770F43    lea         ecx,[ebp-8]
 00770F46    mov         eax,dword ptr [ebp+8]
 00770F49    mov         eax,dword ptr [eax-4]
 00770F4C    call        TFXPIO.OutFunctionToString
 00770F51    mov         edx,dword ptr [ebp-8]
 00770F54    mov         eax,dword ptr [esi]
 00770F56    add         eax,0B4
 00770F5B    call        @UStrAsg
 00770F60    mov         eax,dword ptr [esi]
 00770F62    push        esi
 00770F63    push        edi
 00770F64    lea         edi,[eax+28]
 00770F67    lea         esi,[ebx+0E]
 00770F6A    mov         ecx,20
 00770F6F    rep movs    dword ptr [edi],dword ptr [esi]
 00770F71    movs        word ptr [edi],word ptr [esi]
 00770F73    pop         edi
 00770F74    pop         esi
 00770F75    lea         eax,[ebp-0C]
 00770F78    push        eax
 00770F79    mov         eax,[007C3F88];^'Output'
 00770F7E    mov         dword ptr [ebp-24],eax
 00770F81    mov         byte ptr [ebp-20],11
 00770F85    mov         eax,771070;'CCO'
 00770F8A    mov         dword ptr [ebp-1C],eax
 00770F8D    mov         byte ptr [ebp-18],11
 00770F91    mov         dword ptr [ebp-14],edi
 00770F94    mov         byte ptr [ebp-10],0
 00770F98    lea         edx,[ebp-24]
 00770F9B    mov         ecx,2
 00770FA0    mov         eax,771084;'%s (%s %.2d)'
 00770FA5    call        Format
 00770FAA    mov         edx,dword ptr [ebp-0C]
 00770FAD    mov         eax,dword ptr [esi]
 00770FAF    add         eax,0AC
 00770FB4    call        @UStrAsg
 00770FB9    mov         eax,dword ptr [esi]
 00770FBB    add         eax,0C0
 00770FC0    lea         edx,[ebx+0C2]
 00770FC6    call        @UStrFromString
 00770FCB    mov         eax,dword ptr [ebp+8]
 00770FCE    movzx       eax,byte ptr [eax-5]
 00770FD2    mov         edx,dword ptr [esi]
 00770FD4    mov         byte ptr [edx+0AA],al
 00770FDA    mov         eax,dword ptr [ebp+8]
 00770FDD    movzx       eax,byte ptr [eax-6]
 00770FE1    mov         edx,dword ptr [esi]
 00770FE3    mov         byte ptr [edx+0AB],al
 00770FE9    mov         eax,dword ptr [ebp+8]
 00770FEC    mov         eax,dword ptr [eax-10]
 00770FEF    mov         eax,dword ptr [eax+1C]
 00770FF2    mov         edx,dword ptr [esi]
 00770FF4    mov         dword ptr [ebp-4],edx
 00770FF7    lea         edx,[ebp-4]
 00770FFA    add         eax,8
 00770FFD    call        0043489C
 00771002    mov         eax,dword ptr [ebp+8]
 00771005    test        byte ptr [eax-5],2
>00771009    je          0077101C
 0077100B    mov         eax,dword ptr [ebp+8]
 0077100E    mov         eax,dword ptr [eax-10]
 00771011    add         dword ptr [eax+14],1
>00771015    jno         0077101C
 00771017    call        @IntOver
 0077101C    mov         eax,dword ptr [ebp+8]
 0077101F    test        byte ptr [eax-6],2
>00771023    je          00771036
 00771025    mov         eax,dword ptr [ebp+8]
 00771028    mov         eax,dword ptr [eax-10]
 0077102B    add         dword ptr [eax+18],1
>0077102F    jno         00771036
 00771031    call        @IntOver
 00771036    xor         eax,eax
 00771038    pop         edx
 00771039    pop         ecx
 0077103A    pop         ecx
 0077103B    mov         dword ptr fs:[eax],edx
 0077103E    push        771058
 00771043    lea         eax,[ebp-0C]
 00771046    mov         edx,2
 0077104B    call        @UStrArrayClr
 00771050    ret
>00771051    jmp         @HandleFinally
>00771056    jmp         00771043
 00771058    pop         edi
 00771059    pop         esi
 0077105A    pop         ebx
 0077105B    mov         esp,ebp
 0077105D    pop         ebp
 0077105E    ret
end;*}

//007710A0
{*procedure sub_007710A0(?:?; ?:PADORecord; ?:?);
begin
 007710A0    push        ebp
 007710A1    mov         ebp,esp
 007710A3    add         esp,0FFFFFFDC
 007710A6    push        ebx
 007710A7    push        esi
 007710A8    push        edi
 007710A9    xor         ecx,ecx
 007710AB    mov         dword ptr [ebp-0C],ecx
 007710AE    mov         dword ptr [ebp-8],ecx
 007710B1    mov         ebx,edx
 007710B3    mov         edi,eax
 007710B5    mov         esi,dword ptr [ebp+8]
 007710B8    add         esi,0FFFFFFF4
 007710BB    xor         eax,eax
 007710BD    push        ebp
 007710BE    push        77127D
 007710C3    push        dword ptr fs:[eax]
 007710C6    mov         dword ptr fs:[eax],esp
 007710C9    mov         eax,dword ptr [ebp+8]
 007710CC    movzx       edx,byte ptr ds:[77128C];0x0 gvar_0077128C
 007710D3    mov         byte ptr [eax-5],dl
 007710D6    mov         eax,dword ptr [ebp+8]
 007710D9    mov         eax,dword ptr [eax-4]
 007710DC    movzx       edx,byte ptr [ebx]
 007710DF    call        TFXPIO.GetOutEventSet
 007710E4    mov         edx,dword ptr [ebp+8]
 007710E7    mov         byte ptr [edx-6],al
 007710EA    mov         eax,dword ptr [ebp+8]
 007710ED    test        byte ptr [eax-5],2
>007710F1    jne         00771100
 007710F3    mov         eax,dword ptr [ebp+8]
 007710F6    test        byte ptr [eax-6],2
>007710FA    je          00771262
 00771100    mov         dl,1
 00771102    mov         eax,[00765EF4];TDCIoLine
 00771107    call        TDCIoLine.Create;TDCIoLine.Create
 0077110C    mov         dword ptr [esi],eax
 0077110E    mov         eax,dword ptr [esi]
 00771110    mov         byte ptr [eax+4],1
 00771114    mov         eax,dword ptr [ebp+8]
 00771117    mov         eax,dword ptr [eax-10]
 0077111A    mov         eax,dword ptr [eax+8]
 0077111D    mov         edx,dword ptr [esi]
 0077111F    mov         dword ptr [edx+8],eax
 00771122    mov         eax,dword ptr [ebp+8]
 00771125    mov         eax,dword ptr [eax-10]
 00771128    mov         eax,dword ptr [eax+0C]
 0077112B    mov         edx,dword ptr [esi]
 0077112D    mov         dword ptr [edx+18],eax
 00771130    mov         eax,dword ptr [esi]
 00771132    mov         dword ptr [eax+1C],edi
 00771135    mov         eax,dword ptr [esi]
 00771137    mov         dl,3
 00771139    mov         byte ptr [eax+20],dl
 0077113C    mov         eax,dword ptr [esi]
 0077113E    add         eax,0B0
 00771143    mov         edx,dword ptr [esi]
 00771145    movzx       edx,byte ptr [edx+20]
 00771149    mov         edx,dword ptr [edx*4+7C3F90];gvar_007C3F90:array[4] of ?
 00771150    call        @UStrAsg
 00771155    movzx       eax,byte ptr [ebx]
 00771158    mov         edx,dword ptr [esi]
 0077115A    mov         dword ptr [edx+24],eax
 0077115D    mov         eax,dword ptr [esi]
 0077115F    mov         edx,dword ptr [eax+24]
 00771162    cmp         edx,0FF
>00771168    jbe         0077116F
 0077116A    call        @BoundErr
 0077116F    lea         ecx,[ebp-8]
 00771172    mov         eax,dword ptr [ebp+8]
 00771175    mov         eax,dword ptr [eax-4]
 00771178    call        TFXPIO.OutFunctionToString
 0077117D    mov         edx,dword ptr [ebp-8]
 00771180    mov         eax,dword ptr [esi]
 00771182    add         eax,0B4
 00771187    call        @UStrAsg
 0077118C    mov         eax,dword ptr [esi]
 0077118E    push        esi
 0077118F    push        edi
 00771190    lea         edi,[eax+28]
 00771193    lea         esi,[ebx+0E]
 00771196    mov         ecx,20
 0077119B    rep movs    dword ptr [edi],dword ptr [esi]
 0077119D    movs        word ptr [edi],word ptr [esi]
 0077119F    pop         edi
 007711A0    pop         esi
 007711A1    lea         eax,[ebp-0C]
 007711A4    push        eax
 007711A5    mov         eax,[007C3F88];^'Output'
 007711AA    mov         dword ptr [ebp-24],eax
 007711AD    mov         byte ptr [ebp-20],11
 007711B1    mov         eax,77129C;'MRO'
 007711B6    mov         dword ptr [ebp-1C],eax
 007711B9    mov         byte ptr [ebp-18],11
 007711BD    mov         dword ptr [ebp-14],edi
 007711C0    mov         byte ptr [ebp-10],0
 007711C4    lea         edx,[ebp-24]
 007711C7    mov         ecx,2
 007711CC    mov         eax,7712B0;'%s (%s %.2d)'
 007711D1    call        Format
 007711D6    mov         edx,dword ptr [ebp-0C]
 007711D9    mov         eax,dword ptr [esi]
 007711DB    add         eax,0AC
 007711E0    call        @UStrAsg
 007711E5    mov         eax,dword ptr [esi]
 007711E7    add         eax,0C0
 007711EC    lea         edx,[ebx+0C2]
 007711F2    call        @UStrFromString
 007711F7    mov         eax,dword ptr [ebp+8]
 007711FA    movzx       eax,byte ptr [eax-5]
 007711FE    mov         edx,dword ptr [esi]
 00771200    mov         byte ptr [edx+0AA],al
 00771206    mov         eax,dword ptr [ebp+8]
 00771209    movzx       eax,byte ptr [eax-6]
 0077120D    mov         edx,dword ptr [esi]
 0077120F    mov         byte ptr [edx+0AB],al
 00771215    mov         eax,dword ptr [ebp+8]
 00771218    mov         eax,dword ptr [eax-10]
 0077121B    mov         eax,dword ptr [eax+1C]
 0077121E    mov         edx,dword ptr [esi]
 00771220    mov         dword ptr [ebp-4],edx
 00771223    lea         edx,[ebp-4]
 00771226    add         eax,8
 00771229    call        0043489C
 0077122E    mov         eax,dword ptr [ebp+8]
 00771231    test        byte ptr [eax-5],2
>00771235    je          00771248
 00771237    mov         eax,dword ptr [ebp+8]
 0077123A    mov         eax,dword ptr [eax-10]
 0077123D    add         dword ptr [eax+14],1
>00771241    jno         00771248
 00771243    call        @IntOver
 00771248    mov         eax,dword ptr [ebp+8]
 0077124B    test        byte ptr [eax-6],2
>0077124F    je          00771262
 00771251    mov         eax,dword ptr [ebp+8]
 00771254    mov         eax,dword ptr [eax-10]
 00771257    add         dword ptr [eax+18],1
>0077125B    jno         00771262
 0077125D    call        @IntOver
 00771262    xor         eax,eax
 00771264    pop         edx
 00771265    pop         ecx
 00771266    pop         ecx
 00771267    mov         dword ptr fs:[eax],edx
 0077126A    push        771284
 0077126F    lea         eax,[ebp-0C]
 00771272    mov         edx,2
 00771277    call        @UStrArrayClr
 0077127C    ret
>0077127D    jmp         @HandleFinally
>00771282    jmp         0077126F
 00771284    pop         edi
 00771285    pop         esi
 00771286    pop         ebx
 00771287    mov         esp,ebp
 00771289    pop         ebp
 0077128A    ret
end;*}

//007712CC
procedure TDCIoUnit.GetIoLines(IO:TFXPIO; unitix:Integer);
begin
{*
 007712CC    push        ebp
 007712CD    mov         ebp,esp
 007712CF    add         esp,0FFFFFFF0
 007712D2    push        ebx
 007712D3    push        esi
 007712D4    mov         esi,ecx
 007712D6    mov         dword ptr [ebp-4],edx
 007712D9    mov         dword ptr [ebp-10],eax
 007712DC    test        esi,esi
>007712DE    jne         0077139D
 007712E4    mov         ebx,1
 007712E9    push        ebp
 007712EA    mov         ecx,ebx
 007712EC    cmp         ecx,0FF
>007712F2    jbe         007712F9
 007712F4    call        @BoundErr
 007712F9    mov         edx,esi
 007712FB    cmp         edx,0FF
>00771301    jbe         00771308
 00771303    call        @BoundErr
 00771308    mov         eax,dword ptr [ebp-4]
 0077130B    call        TFXPIO.GetCCIRecord
 00771310    mov         edx,eax
 00771312    mov         eax,ebx
 00771314    call        00770C70
 00771319    pop         ecx
 0077131A    inc         ebx
 0077131B    cmp         ebx,3
>0077131E    jne         007712E9
 00771320    mov         ebx,1
 00771325    push        ebp
 00771326    mov         ecx,ebx
 00771328    cmp         ecx,0FF
>0077132E    jbe         00771335
 00771330    call        @BoundErr
 00771335    mov         edx,esi
 00771337    cmp         edx,0FF
>0077133D    jbe         00771344
 0077133F    call        @BoundErr
 00771344    mov         eax,dword ptr [ebp-4]
 00771347    call        TFXPIO.GetCCORecord
 0077134C    mov         edx,eax
 0077134E    mov         eax,ebx
 00771350    call        00770E74
 00771355    pop         ecx
 00771356    inc         ebx
 00771357    cmp         ebx,4
>0077135A    jne         00771325
 0077135C    mov         ebx,1
 00771361    push        ebp
 00771362    mov         ecx,ebx
 00771364    cmp         ecx,0FF
>0077136A    jbe         00771371
 0077136C    call        @BoundErr
 00771371    mov         edx,esi
 00771373    cmp         edx,0FF
>00771379    jbe         00771380
 0077137B    call        @BoundErr
 00771380    mov         eax,dword ptr [ebp-4]
 00771383    call        TFXPIO.GetADORecord
 00771388    mov         edx,eax
 0077138A    mov         eax,ebx
 0077138C    call        007710A0
 00771391    pop         ecx
 00771392    inc         ebx
 00771393    cmp         ebx,2
>00771396    jne         00771361
>00771398    jmp         007714FD
 0077139D    mov         edx,esi
 0077139F    cmp         edx,0FF
>007713A5    jbe         007713AC
 007713A7    call        @BoundErr
 007713AC    mov         eax,dword ptr [ebp-4]
 007713AF    call        TFXPIO.GetIOCtrlrType
 007713B4    dec         al
>007713B6    je          007713CD
 007713B8    dec         al
>007713BA    je          00771483
 007713C0    dec         al
>007713C2    je          007714C1
>007713C8    jmp         007714FD
 007713CD    mov         ebx,1
 007713D2    push        ebp
 007713D3    mov         ecx,ebx
 007713D5    cmp         ecx,0FF
>007713DB    jbe         007713E2
 007713DD    call        @BoundErr
 007713E2    mov         edx,esi
 007713E4    cmp         edx,0FF
>007713EA    jbe         007713F1
 007713EC    call        @BoundErr
 007713F1    mov         eax,dword ptr [ebp-4]
 007713F4    call        TFXPIO.GetCCIRecord
 007713F9    mov         edx,eax
 007713FB    mov         eax,ebx
 007713FD    call        00770C70
 00771402    pop         ecx
 00771403    inc         ebx
 00771404    cmp         ebx,5
>00771407    jne         007713D2
 00771409    mov         ebx,1
 0077140E    push        ebp
 0077140F    mov         ecx,ebx
 00771411    cmp         ecx,0FF
>00771417    jbe         0077141E
 00771419    call        @BoundErr
 0077141E    mov         edx,esi
 00771420    cmp         edx,0FF
>00771426    jbe         0077142D
 00771428    call        @BoundErr
 0077142D    mov         eax,dword ptr [ebp-4]
 00771430    call        TFXPIO.GetCCORecord
 00771435    mov         edx,eax
 00771437    mov         eax,ebx
 00771439    call        00770E74
 0077143E    pop         ecx
 0077143F    inc         ebx
 00771440    cmp         ebx,3
>00771443    jne         0077140E
 00771445    mov         ebx,1
 0077144A    push        ebp
 0077144B    mov         ecx,ebx
 0077144D    cmp         ecx,0FF
>00771453    jbe         0077145A
 00771455    call        @BoundErr
 0077145A    mov         edx,esi
 0077145C    cmp         edx,0FF
>00771462    jbe         00771469
 00771464    call        @BoundErr
 00771469    mov         eax,dword ptr [ebp-4]
 0077146C    call        TFXPIO.GetADORecord
 00771471    mov         edx,eax
 00771473    mov         eax,ebx
 00771475    call        007710A0
 0077147A    pop         ecx
 0077147B    inc         ebx
 0077147C    cmp         ebx,5
>0077147F    jne         0077144A
>00771481    jmp         007714FD
 00771483    mov         ebx,1
 00771488    push        ebp
 00771489    mov         ecx,ebx
 0077148B    cmp         ecx,0FF
>00771491    jbe         00771498
 00771493    call        @BoundErr
 00771498    mov         edx,esi
 0077149A    cmp         edx,0FF
>007714A0    jbe         007714A7
 007714A2    call        @BoundErr
 007714A7    mov         eax,dword ptr [ebp-4]
 007714AA    call        TFXPIO.GetCCORecord
 007714AF    mov         edx,eax
 007714B1    mov         eax,ebx
 007714B3    call        00770E74
 007714B8    pop         ecx
 007714B9    inc         ebx
 007714BA    cmp         ebx,11
>007714BD    jne         00771488
>007714BF    jmp         007714FD
 007714C1    mov         ebx,1
 007714C6    push        ebp
 007714C7    mov         ecx,ebx
 007714C9    cmp         ecx,0FF
>007714CF    jbe         007714D6
 007714D1    call        @BoundErr
 007714D6    mov         edx,esi
 007714D8    cmp         edx,0FF
>007714DE    jbe         007714E5
 007714E0    call        @BoundErr
 007714E5    mov         eax,dword ptr [ebp-4]
 007714E8    call        TFXPIO.GetADORecord
 007714ED    mov         edx,eax
 007714EF    mov         eax,ebx
 007714F1    call        007710A0
 007714F6    pop         ecx
 007714F7    inc         ebx
 007714F8    cmp         ebx,0D
>007714FB    jne         007714C6
 007714FD    pop         esi
 007714FE    pop         ebx
 007714FF    mov         esp,ebp
 00771501    pop         ebp
 00771502    ret
*}
end;

//00771504
constructor TDCIoLine.Create;
begin
{*
 00771504    test        dl,dl
>00771506    je          00771510
 00771508    add         esp,0FFFFFFF0
 0077150B    call        @ClassCreate
 00771510    test        dl,dl
>00771512    je          00771523
 00771514    call        @AfterConstruction
 00771519    pop         dword ptr fs:[0]
 00771520    add         esp,0C
 00771523    ret
*}
end;

//00771524
{*procedure sub_00771524(?:?);
begin
 00771524    push        esi
 00771525    push        edi
 00771526    mov         edi,edx
 00771528    lea         esi,[eax+28];TDCIoLine.FCGroups:TCGRec
 0077152B    mov         ecx,20
 00771530    rep movs    dword ptr [edi],dword ptr [esi]
 00771532    movs        word ptr [edi],word ptr [esi]
 00771534    pop         edi
 00771535    pop         esi
 00771536    ret
end;*}

//00771538
{*procedure sub_00771538(?:?);
begin
 00771538    push        ebx
 00771539    push        esi
 0077153A    mov         esi,edx
 0077153C    mov         ebx,eax
 0077153E    mov         edx,esi
 00771540    lea         eax,[ebx+28];TDCIoLine.FCGroups:TCGRec
 00771543    call        006955F8
 00771548    pop         esi
 00771549    pop         ebx
 0077154A    ret
end;*}

//0077154C
{*procedure sub_0077154C(?:?);
begin
 0077154C    push        ebx
 0077154D    push        esi
 0077154E    mov         esi,edx
 00771550    mov         ebx,eax
 00771552    mov         eax,esi
 00771554    mov         edx,dword ptr [ebx+0C0];TDCIoLine.FCustomText:string
 0077155A    call        @UStrAsg
 0077155F    pop         esi
 00771560    pop         ebx
 00771561    ret
end;*}

//00771564
destructor TDCIoLine.Destroy();
begin
{*
 00771564    push        ebx
 00771565    push        esi
 00771566    call        @BeforeDestruction
 0077156B    mov         ebx,edx
 0077156D    mov         esi,eax
 0077156F    mov         dl,0FC
 00771571    and         dl,bl
 00771573    mov         eax,esi
 00771575    call        TObject.Destroy
 0077157A    test        bl,bl
>0077157C    jle         00771585
 0077157E    mov         eax,esi
 00771580    call        @ClassDestroy
 00771585    pop         esi
 00771586    pop         ebx
 00771587    ret
*}
end;

//00771588
{*procedure sub_00771588(?:?);
begin
 00771588    push        ebx
 00771589    push        esi
 0077158A    add         esp,0FFFFFFF8
 0077158D    mov         esi,edx
 0077158F    mov         ebx,eax
 00771591    push        esi
 00771592    mov         eax,dword ptr [ebx+8];TDCIoLine.FPanlIndx:Integer
 00771595    mov         dword ptr [esp+4],eax
 00771599    mov         byte ptr [esp+8],0
 0077159E    lea         edx,[esp+4]
 007715A2    xor         ecx,ecx
 007715A4    mov         eax,7715C0;'%.2d'
 007715A9    call        Format
 007715AE    pop         ecx
 007715AF    pop         edx
 007715B0    pop         esi
 007715B1    pop         ebx
 007715B2    ret
end;*}

//007715CC
{*function sub_007715CC:?;
begin
 007715CC    mov         eax,dword ptr [eax+8];TDCIoLine.FPanlIndx:Integer
 007715CF    ret
end;*}

//007715D0
{*procedure sub_007715D0(?:?);
begin
 007715D0    push        ebx
 007715D1    push        esi
 007715D2    add         esp,0FFFFFFF0
 007715D5    mov         esi,edx
 007715D7    mov         ebx,eax
 007715D9    push        esi
 007715DA    mov         eax,dword ptr [ebx+0B0];TDCIoLine.FLineTypeStr:string
 007715E0    mov         dword ptr [esp+4],eax
 007715E4    mov         byte ptr [esp+8],11
 007715E9    mov         eax,dword ptr [ebx+1C];TDCIoLine.FLineIndx:Integer
 007715EC    mov         dword ptr [esp+0C],eax
 007715F0    mov         byte ptr [esp+10],0
 007715F5    lea         edx,[esp+4]
 007715F9    mov         ecx,1
 007715FE    mov         eax,77161C;'%s %d'
 00771603    call        Format
 00771608    add         esp,10
 0077160B    pop         esi
 0077160C    pop         ebx
 0077160D    ret
end;*}

//00771628
{*procedure sub_00771628(?:?);
begin
 00771628    push        ebx
 00771629    push        esi
 0077162A    mov         esi,edx
 0077162C    mov         ebx,eax
 0077162E    mov         eax,esi
 00771630    mov         edx,dword ptr [ebx+0B0];TDCIoLine.FLineTypeStr:string
 00771636    call        @UStrAsg
 0077163B    pop         esi
 0077163C    pop         ebx
 0077163D    ret
end;*}

//00771640
{*function sub_00771640:?;
begin
 00771640    movzx       edx,byte ptr [eax+0AA];TDCIoLine.FInpEvents:TFXEventSet
 00771647    mov         eax,edx
 00771649    ret
end;*}

//0077164C
{*procedure sub_0077164C(?:?);
begin
 0077164C    push        ebx
 0077164D    push        esi
 0077164E    add         esp,0FFFFFFF8
 00771651    mov         esi,edx
 00771653    mov         ebx,eax
 00771655    push        esi
 00771656    mov         eax,dword ptr [ebx+18];TDCIoLine.FUnitIndx:Integer
 00771659    mov         dword ptr [esp+4],eax
 0077165D    mov         byte ptr [esp+8],0
 00771662    lea         edx,[esp+4]
 00771666    xor         ecx,ecx
 00771668    mov         eax,771684;'%d'
 0077166D    call        Format
 00771672    pop         ecx
 00771673    pop         edx
 00771674    pop         esi
 00771675    pop         ebx
 00771676    ret
end;*}

//0077168C
{*procedure sub_0077168C(?:?);
begin
 0077168C    push        ebx
 0077168D    push        esi
 0077168E    mov         esi,edx
 00771690    mov         ebx,eax
 00771692    mov         eax,esi
 00771694    mov         edx,dword ptr [ebx+0B4];TDCIoLine.FLineFuncStr:string
 0077169A    call        @UStrAsg
 0077169F    pop         esi
 007716A0    pop         ebx
 007716A1    ret
end;*}

//007716A4
{*function sub_007716A4:?;
begin
 007716A4    movzx       edx,byte ptr [eax+0AB];TDCIoLine.FOutEvents:TFXEventSet
 007716AB    mov         eax,edx
 007716AD    ret
end;*}

//007716B0
{*procedure sub_007716B0(?:?);
begin
 007716B0    push        ebx
 007716B1    push        esi
 007716B2    mov         esi,edx
 007716B4    mov         ebx,eax
 007716B6    mov         eax,esi
 007716B8    mov         edx,dword ptr [ebx+0B8];TDCIoLine.FLineFunc2Str:string
 007716BE    call        @UStrAsg
 007716C3    pop         esi
 007716C4    pop         ebx
 007716C5    ret
end;*}

//007716C8
{*function sub_007716C8:?;
begin
 007716C8    xor         eax,eax
 007716CA    ret
end;*}

//007716CC
{*procedure sub_007716CC(?:?);
begin
 007716CC    push        ebx
 007716CD    push        esi
 007716CE    mov         esi,edx
 007716D0    mov         ebx,eax
 007716D2    lea         eax,[ebx+0BC];TDCIoLine.FCGroupsStr:string
 007716D8    mov         edx,esi
 007716DA    call        @UStrAsg
 007716DF    lea         edx,[ebx+28];TDCIoLine.FCGroups:TCGRec
 007716E2    mov         eax,esi
 007716E4    call        00695720
 007716E9    pop         esi
 007716EA    pop         ebx
 007716EB    ret
end;*}

//007716EC
{*procedure sub_007716EC(?:?);
begin
 007716EC    push        esi
 007716ED    push        edi
 007716EE    add         esp,0FFFFFF7C
 007716F4    mov         esi,edx
 007716F6    lea         edi,[esp]
 007716F9    mov         ecx,20
 007716FE    rep movs    dword ptr [edi],dword ptr [esi]
 00771700    movs        word ptr [edi],word ptr [esi]
 00771702    mov         esi,esp
 00771704    lea         edi,[eax+28];TDCIoLine.FCGroups:TCGRec
 00771707    mov         ecx,20
 0077170C    rep movs    dword ptr [edi],dword ptr [esi]
 0077170E    movs        word ptr [edi],word ptr [esi]
 00771710    add         esp,84
 00771716    pop         edi
 00771717    pop         esi
 00771718    ret
end;*}

//0077171C
{*procedure sub_0077171C(?:?);
begin
 0077171C    mov         dword ptr [eax+8],edx;TDCIoLine.FPanlIndx:Integer
 0077171F    ret
end;*}

//00771720
constructor TDCCollection.Create;
begin
{*
 00771720    push        ebx
 00771721    push        esi
 00771722    test        dl,dl
>00771724    je          0077172E
 00771726    add         esp,0FFFFFFF0
 00771729    call        @ClassCreate
 0077172E    mov         ebx,edx
 00771730    mov         esi,eax
 00771732    xor         ecx,ecx
 00771734    mov         dl,1
 00771736    mov         eax,[0076F330];TObjectList<FXDCData.TCtrlOutput>
 0077173B    call        007748F0
 00771740    mov         dword ptr [esi+0C],eax;TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771743    mov         eax,esi
 00771745    test        bl,bl
>00771747    je          00771758
 00771749    call        @AfterConstruction
 0077174E    pop         dword ptr fs:[0]
 00771755    add         esp,0C
 00771758    mov         eax,esi
 0077175A    pop         esi
 0077175B    pop         ebx
 0077175C    ret
*}
end;

//00771760
destructor TDCCollection.Destroy();
begin
{*
 00771760    push        ebx
 00771761    push        esi
 00771762    call        @BeforeDestruction
 00771767    mov         ebx,edx
 00771769    mov         esi,eax
 0077176B    mov         eax,dword ptr [esi+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077176E    call        TObject.Free
 00771773    mov         dl,0FC
 00771775    and         dl,bl
 00771777    mov         eax,esi
 00771779    call        TObject.Destroy
 0077177E    test        bl,bl
>00771780    jle         00771789
 00771782    mov         eax,esi
 00771784    call        @ClassDestroy
 00771789    pop         esi
 0077178A    pop         ebx
 0077178B    ret
*}
end;

//0077178C
{*procedure sub_0077178C(?:?; ?:?);
begin
 0077178C    push        ebx
 0077178D    push        esi
 0077178E    add         esp,0FFFFFFF8
 00771791    mov         esi,edx
 00771793    mov         ebx,eax
 00771795    push        esi
 00771796    mov         eax,dword ptr [ebx+4]
 00771799    mov         dword ptr [esp+4],eax
 0077179D    mov         byte ptr [esp+8],0
 007717A2    lea         edx,[esp+4]
 007717A6    xor         ecx,ecx
 007717A8    mov         eax,7717C4;'%.3d'
 007717AD    call        Format
 007717B2    pop         ecx
 007717B3    pop         edx
 007717B4    pop         esi
 007717B5    pop         ebx
 007717B6    ret
end;*}

//007717D0
{*procedure sub_007717D0(?:?; ?:?);
begin
 007717D0    push        ebx
 007717D1    push        esi
 007717D2    push        edi
 007717D3    add         esp,0FFFFFFF0
 007717D6    mov         edi,edx
 007717D8    mov         ebx,eax
 007717DA    push        edi
 007717DB    mov         esi,dword ptr [ebx+8]
 007717DE    mov         eax,esi
 007717E0    mov         ecx,3C
 007717E5    cdq
 007717E6    idiv        eax,ecx
 007717E8    mov         dword ptr [esp+4],eax
 007717EC    mov         byte ptr [esp+8],0
 007717F1    mov         eax,esi
 007717F3    mov         ecx,3C
 007717F8    cdq
 007717F9    idiv        eax,ecx
 007717FB    mov         dword ptr [esp+0C],edx
 007717FF    mov         byte ptr [esp+10],0
 00771804    lea         edx,[esp+4]
 00771808    mov         ecx,1
 0077180D    mov         eax,77182C;'%.2d:%.2d'
 00771812    call        Format
 00771817    add         esp,10
 0077181A    pop         edi
 0077181B    pop         esi
 0077181C    pop         ebx
 0077181D    ret
end;*}

//00771840
constructor TDCCtrlObjects.Create;
begin
{*
 00771840    push        ebx
 00771841    push        esi
 00771842    test        dl,dl
>00771844    je          0077184E
 00771846    add         esp,0FFFFFFF0
 00771849    call        @ClassCreate
 0077184E    mov         ebx,edx
 00771850    mov         esi,eax
 00771852    mov         dl,1
 00771854    mov         eax,[00766C34];TDCCollection
 00771859    call        TDCCollection.Create;TDCCollection.Create
 0077185E    mov         dword ptr [esi+4],eax;TDCCtrlObjects.InpCollection:TDCCollection
 00771861    mov         dl,1
 00771863    mov         eax,[00766C34];TDCCollection
 00771868    call        TDCCollection.Create;TDCCollection.Create
 0077186D    mov         dword ptr [esi+8],eax;TDCCtrlObjects.OutCollection:TDCCollection
 00771870    mov         dl,1
 00771872    mov         eax,[00766C34];TDCCollection
 00771877    call        TDCCollection.Create;TDCCollection.Create
 0077187C    mov         dword ptr [esi+0C],eax;TDCCtrlObjects.OutImmediate:TDCCollection
 0077187F    mov         dl,1
 00771881    mov         eax,[00766C34];TDCCollection
 00771886    call        TDCCollection.Create;TDCCollection.Create
 0077188B    mov         dword ptr [esi+10],eax;TDCCtrlObjects.OutDelayedT1:TDCCollection
 0077188E    mov         dl,1
 00771890    mov         eax,[00766C34];TDCCollection
 00771895    call        TDCCollection.Create;TDCCollection.Create
 0077189A    mov         dword ptr [esi+14],eax;TDCCtrlObjects.OutDelayedC1:TDCCollection
 0077189D    mov         dl,1
 0077189F    mov         eax,[00766C34];TDCCollection
 007718A4    call        TDCCollection.Create;TDCCollection.Create
 007718A9    mov         dword ptr [esi+18],eax;TDCCtrlObjects.OutDelayedC2:TDCCollection
 007718AC    mov         dl,1
 007718AE    mov         eax,[00766C34];TDCCollection
 007718B3    call        TDCCollection.Create;TDCCollection.Create
 007718B8    mov         dword ptr [esi+1C],eax;TDCCtrlObjects.OutDelayedC3:TDCCollection
 007718BB    mov         dl,1
 007718BD    mov         eax,[00766C34];TDCCollection
 007718C2    call        TDCCollection.Create;TDCCollection.Create
 007718C7    mov         dword ptr [esi+20],eax;TDCCtrlObjects.OutDelayedC4:TDCCollection
 007718CA    mov         dl,1
 007718CC    mov         eax,[00766C34];TDCCollection
 007718D1    call        TDCCollection.Create;TDCCollection.Create
 007718D6    mov         dword ptr [esi+24],eax;TDCCtrlObjects.OutDelayedC5:TDCCollection
 007718D9    mov         dl,1
 007718DB    mov         eax,[00766C34];TDCCollection
 007718E0    call        TDCCollection.Create;TDCCollection.Create
 007718E5    mov         dword ptr [esi+28],eax;TDCCtrlObjects.OutDelayedC6:TDCCollection
 007718E8    mov         dl,1
 007718EA    mov         eax,[00766C34];TDCCollection
 007718EF    call        TDCCollection.Create;TDCCollection.Create
 007718F4    mov         dword ptr [esi+2C],eax;TDCCtrlObjects.OutDelayedC7:TDCCollection
 007718F7    mov         eax,esi
 007718F9    test        bl,bl
>007718FB    je          0077190C
 007718FD    call        @AfterConstruction
 00771902    pop         dword ptr fs:[0]
 00771909    add         esp,0C
 0077190C    mov         eax,esi
 0077190E    pop         esi
 0077190F    pop         ebx
 00771910    ret
*}
end;

//00771914
destructor TDCCtrlObjects.Destroy();
begin
{*
 00771914    push        ebx
 00771915    push        esi
 00771916    call        @BeforeDestruction
 0077191B    mov         ebx,edx
 0077191D    mov         esi,eax
 0077191F    mov         eax,dword ptr [esi+2C];TDCCtrlObjects.OutDelayedC7:TDCCollection
 00771922    call        TObject.Free
 00771927    mov         eax,dword ptr [esi+28];TDCCtrlObjects.OutDelayedC6:TDCCollection
 0077192A    call        TObject.Free
 0077192F    mov         eax,dword ptr [esi+24];TDCCtrlObjects.OutDelayedC5:TDCCollection
 00771932    call        TObject.Free
 00771937    mov         eax,dword ptr [esi+20];TDCCtrlObjects.OutDelayedC4:TDCCollection
 0077193A    call        TObject.Free
 0077193F    mov         eax,dword ptr [esi+1C];TDCCtrlObjects.OutDelayedC3:TDCCollection
 00771942    call        TObject.Free
 00771947    mov         eax,dword ptr [esi+18];TDCCtrlObjects.OutDelayedC2:TDCCollection
 0077194A    call        TObject.Free
 0077194F    mov         eax,dword ptr [esi+14];TDCCtrlObjects.OutDelayedC1:TDCCollection
 00771952    call        TObject.Free
 00771957    mov         eax,dword ptr [esi+10];TDCCtrlObjects.OutDelayedT1:TDCCollection
 0077195A    call        TObject.Free
 0077195F    mov         eax,dword ptr [esi+0C];TDCCtrlObjects.OutImmediate:TDCCollection
 00771962    call        TObject.Free
 00771967    mov         eax,dword ptr [esi+8];TDCCtrlObjects.OutCollection:TDCCollection
 0077196A    call        TObject.Free
 0077196F    mov         eax,dword ptr [esi+4];TDCCtrlObjects.InpCollection:TDCCollection
 00771972    call        TObject.Free
 00771977    mov         dl,0FC
 00771979    and         dl,bl
 0077197B    mov         eax,esi
 0077197D    call        TObject.Destroy
 00771982    test        bl,bl
>00771984    jle         0077198D
 00771986    mov         eax,esi
 00771988    call        @ClassDestroy
 0077198D    pop         esi
 0077198E    pop         ebx
 0077198F    ret
*}
end;

//00771990
procedure TDCCtrlObjects.Clear;
begin
{*
 00771990    push        ebx
 00771991    mov         ebx,eax
 00771993    mov         eax,dword ptr [ebx+4];TDCCtrlObjects.InpCollection:TDCCollection
 00771996    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771999    add         eax,8
 0077199C    call        00434988
 007719A1    mov         eax,dword ptr [ebx+8];TDCCtrlObjects.OutCollection:TDCCollection
 007719A4    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007719A7    add         eax,8
 007719AA    call        00434988
 007719AF    mov         eax,dword ptr [ebx+0C];TDCCtrlObjects.OutImmediate:TDCCollection
 007719B2    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007719B5    add         eax,8
 007719B8    call        00434988
 007719BD    mov         eax,dword ptr [ebx+0C];TDCCtrlObjects.OutImmediate:TDCCollection
 007719C0    xor         edx,edx
 007719C2    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 007719C5    xor         edx,edx
 007719C7    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 007719CA    mov         eax,dword ptr [ebx+10];TDCCtrlObjects.OutDelayedT1:TDCCollection
 007719CD    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007719D0    add         eax,8
 007719D3    call        00434988
 007719D8    mov         eax,dword ptr [ebx+10];TDCCtrlObjects.OutDelayedT1:TDCCollection
 007719DB    xor         edx,edx
 007719DD    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 007719E0    xor         edx,edx
 007719E2    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 007719E5    mov         eax,dword ptr [ebx+14];TDCCtrlObjects.OutDelayedC1:TDCCollection
 007719E8    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007719EB    add         eax,8
 007719EE    call        00434988
 007719F3    mov         eax,dword ptr [ebx+14];TDCCtrlObjects.OutDelayedC1:TDCCollection
 007719F6    xor         edx,edx
 007719F8    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 007719FB    xor         edx,edx
 007719FD    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 00771A00    mov         eax,dword ptr [ebx+18];TDCCtrlObjects.OutDelayedC2:TDCCollection
 00771A03    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771A06    add         eax,8
 00771A09    call        00434988
 00771A0E    mov         eax,dword ptr [ebx+18];TDCCtrlObjects.OutDelayedC2:TDCCollection
 00771A11    xor         edx,edx
 00771A13    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 00771A16    xor         edx,edx
 00771A18    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 00771A1B    mov         eax,dword ptr [ebx+1C];TDCCtrlObjects.OutDelayedC3:TDCCollection
 00771A1E    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771A21    add         eax,8
 00771A24    call        00434988
 00771A29    mov         eax,dword ptr [ebx+1C];TDCCtrlObjects.OutDelayedC3:TDCCollection
 00771A2C    xor         edx,edx
 00771A2E    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 00771A31    xor         edx,edx
 00771A33    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 00771A36    mov         eax,dword ptr [ebx+20];TDCCtrlObjects.OutDelayedC4:TDCCollection
 00771A39    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771A3C    add         eax,8
 00771A3F    call        00434988
 00771A44    mov         eax,dword ptr [ebx+20];TDCCtrlObjects.OutDelayedC4:TDCCollection
 00771A47    xor         edx,edx
 00771A49    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 00771A4C    xor         edx,edx
 00771A4E    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 00771A51    mov         eax,dword ptr [ebx+24];TDCCtrlObjects.OutDelayedC5:TDCCollection
 00771A54    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771A57    add         eax,8
 00771A5A    call        00434988
 00771A5F    mov         eax,dword ptr [ebx+24];TDCCtrlObjects.OutDelayedC5:TDCCollection
 00771A62    xor         edx,edx
 00771A64    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 00771A67    xor         edx,edx
 00771A69    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 00771A6C    mov         eax,dword ptr [ebx+28];TDCCtrlObjects.OutDelayedC6:TDCCollection
 00771A6F    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771A72    add         eax,8
 00771A75    call        00434988
 00771A7A    mov         eax,dword ptr [ebx+28];TDCCtrlObjects.OutDelayedC6:TDCCollection
 00771A7D    xor         edx,edx
 00771A7F    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 00771A82    xor         edx,edx
 00771A84    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 00771A87    mov         eax,dword ptr [ebx+2C];TDCCtrlObjects.OutDelayedC7:TDCCollection
 00771A8A    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00771A8D    add         eax,8
 00771A90    call        00434988
 00771A95    mov         eax,dword ptr [ebx+2C];TDCCtrlObjects.OutDelayedC7:TDCCollection
 00771A98    xor         edx,edx
 00771A9A    mov         dword ptr [eax+4],edx;TDCCollection.FCtrlGroup:Integer
 00771A9D    xor         edx,edx
 00771A9F    mov         dword ptr [eax+8],edx;TDCCollection.FDelayTime:Integer
 00771AA2    pop         ebx
 00771AA3    ret
*}
end;

//00771AA4
function TDCCtrlObjects.IsAnyCtrlGroupVisible(InpAddr:TDCAddr; InpPanel:TDCPanel; OutPanel:TDCPanel):Boolean;
begin
{*
 00771AA4    push        ebp
 00771AA5    mov         ebp,esp
 00771AA7    push        ebx
 00771AA8    push        esi
 00771AA9    xor         eax,eax
 00771AAB    cmp         ecx,dword ptr [ebp+8]
>00771AAE    jne         00771AB4
 00771AB0    mov         al,1
>00771AB2    jmp         00771B21
 00771AB4    movzx       ebx,word ptr [edx+52]
 00771AB8    mov         esi,dword ptr [ecx+10];TDCPanel.FLastLocal:Integer
 00771ABB    cmp         ebx,esi
>00771ABD    jg          00771B1F
 00771ABF    movzx       ebx,word ptr [edx+54]
 00771AC3    cmp         esi,ebx
>00771AC5    jl          00771B1F
 00771AC7    movzx       ebx,word ptr [edx+11E]
 00771ACE    cmp         esi,ebx
>00771AD0    jl          00771B1F
 00771AD2    movzx       ebx,word ptr [edx+0F4]
 00771AD9    cmp         esi,ebx
>00771ADB    jl          00771B1F
 00771ADD    movzx       ebx,word ptr [edx+0FA]
 00771AE4    cmp         esi,ebx
>00771AE6    jl          00771B1F
 00771AE8    movzx       ebx,word ptr [edx+100]
 00771AEF    cmp         esi,ebx
>00771AF1    jl          00771B1F
 00771AF3    movzx       ebx,word ptr [edx+106]
 00771AFA    cmp         esi,ebx
>00771AFC    jl          00771B1F
 00771AFE    movzx       ebx,word ptr [edx+10C]
 00771B05    cmp         esi,ebx
>00771B07    jl          00771B1F
 00771B09    movzx       ebx,word ptr [edx+112]
 00771B10    cmp         esi,ebx
>00771B12    jl          00771B1F
 00771B14    movzx       edx,word ptr [edx+118]
 00771B1B    cmp         esi,edx
>00771B1D    jge         00771B21
 00771B1F    mov         al,1
 00771B21    pop         esi
 00771B22    pop         ebx
 00771B23    pop         ebp
 00771B24    ret         4
*}
end;

//00771B28
function TDCCtrlObjects.InputControlsCGroup(InpPanel:TDCPanel; InpAddr:TDCAddr; CGRoup:Integer):TCGroupSetting;
begin
{*
 00771B28    push        ebp
 00771B29    mov         ebp,esp
 00771B2B    push        ebx
 00771B2C    push        esi
 00771B2D    push        edi
 00771B2E    mov         edi,ecx
 00771B30    mov         esi,dword ptr [ebp+8]
 00771B33    xor         ebx,ebx
 00771B35    mov         eax,edi
 00771B37    mov         edx,dword ptr [eax]
 00771B39    call        dword ptr [edx+30];TDCAddr.sub_00770BFC
 00771B3C    test        al,2
>00771B3E    jne         00771B47
 00771B40    xor         ebx,ebx
>00771B42    jmp         00771BD8
 00771B47    movzx       eax,word ptr [edi+52]
 00771B4B    cmp         esi,eax
>00771B4D    jne         00771B56
 00771B4F    mov         bl,1
>00771B51    jmp         00771BD8
 00771B56    movzx       eax,word ptr [edi+54]
 00771B5A    cmp         esi,eax
>00771B5C    jne         00771B62
 00771B5E    mov         bl,2
>00771B60    jmp         00771BD8
 00771B62    movzx       eax,word ptr [edi+11E]
 00771B69    cmp         esi,eax
>00771B6B    jne         00771B71
 00771B6D    mov         bl,3
>00771B6F    jmp         00771BD8
 00771B71    movzx       eax,word ptr [edi+0F4]
 00771B78    cmp         esi,eax
>00771B7A    jne         00771B80
 00771B7C    mov         bl,4
>00771B7E    jmp         00771BD8
 00771B80    movzx       eax,word ptr [edi+0FA]
 00771B87    cmp         esi,eax
>00771B89    jne         00771B8F
 00771B8B    mov         bl,5
>00771B8D    jmp         00771BD8
 00771B8F    movzx       eax,word ptr [edi+100]
 00771B96    cmp         esi,eax
>00771B98    jne         00771B9E
 00771B9A    mov         bl,6
>00771B9C    jmp         00771BD8
 00771B9E    movzx       eax,word ptr [edi+106]
 00771BA5    cmp         esi,eax
>00771BA7    jne         00771BAD
 00771BA9    mov         bl,7
>00771BAB    jmp         00771BD8
 00771BAD    movzx       eax,word ptr [edi+10C]
 00771BB4    cmp         esi,eax
>00771BB6    jne         00771BBC
 00771BB8    mov         bl,8
>00771BBA    jmp         00771BD8
 00771BBC    movzx       eax,word ptr [edi+112]
 00771BC3    cmp         esi,eax
>00771BC5    jne         00771BCB
 00771BC7    mov         bl,9
>00771BC9    jmp         00771BD8
 00771BCB    movzx       eax,word ptr [edi+118]
 00771BD2    cmp         esi,eax
>00771BD4    jne         00771BD8
 00771BD6    mov         bl,0A
 00771BD8    mov         eax,ebx
 00771BDA    pop         edi
 00771BDB    pop         esi
 00771BDC    pop         ebx
 00771BDD    pop         ebp
 00771BDE    ret         4
*}
end;

//00771BE4
function TDCCtrlObjects.InputControlsOutput(InpPanel:TDCPanel; InpAddr:TDCAddr; OutLine:TCtrlOutput):TActivationType;
begin
{*
 00771BE4    push        ebp
 00771BE5    mov         ebp,esp
 00771BE7    add         esp,0FFFFFF7C
 00771BED    push        ebx
 00771BEE    push        esi
 00771BEF    push        edi
 00771BF0    mov         ebx,ecx
 00771BF2    mov         edi,edx
 00771BF4    mov         esi,dword ptr [ebp+8]
 00771BF7    mov         eax,ebx
 00771BF9    mov         edx,dword ptr [eax]
 00771BFB    call        dword ptr [edx+30];TDCAddr.sub_00770BFC
 00771BFE    test        al,2
>00771C00    jne         00771C09
 00771C02    xor         eax,eax
>00771C04    jmp         00771F4C
 00771C09    mov         eax,esi
 00771C0B    mov         edx,dword ptr [eax]
 00771C0D    call        dword ptr [edx+34];@AbstractError
 00771C10    test        al,2
>00771C12    jne         00771C1B
 00771C14    xor         eax,eax
>00771C16    jmp         00771F4C
 00771C1B    lea         edx,[ebp-84]
 00771C21    mov         eax,esi
 00771C23    mov         ecx,dword ptr [eax]
 00771C25    call        dword ptr [ecx+28];@AbstractError
 00771C28    lea         eax,[ebp-84]
 00771C2E    call        006959E8
 00771C33    test        al,al
>00771C35    je          00771C3E
 00771C37    mov         al,1
>00771C39    jmp         00771F4C
 00771C3E    mov         eax,esi
 00771C40    mov         edx,dword ptr [eax]
 00771C42    call        dword ptr [edx+38];@AbstractError
 00771C45    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771C48    jne         00771C6D
 00771C4A    lea         edx,[ebp-84]
 00771C50    mov         eax,esi
 00771C52    mov         ecx,dword ptr [eax]
 00771C54    call        dword ptr [ecx+28];@AbstractError
 00771C57    lea         eax,[ebp-84]
 00771C5D    call        006959F0
 00771C62    test        al,al
>00771C64    je          00771C6D
 00771C66    mov         al,1
>00771C68    jmp         00771F4C
 00771C6D    mov         eax,esi
 00771C6F    mov         edx,dword ptr [eax]
 00771C71    call        dword ptr [edx+38];@AbstractError
 00771C74    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771C77    je          00771C82
 00771C79    movzx       eax,word ptr [ebx+52]
 00771C7D    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771C80    jle         00771CB0
 00771C82    cmp         word ptr [ebx+52],0
>00771C87    je          00771CB0
 00771C89    lea         edx,[ebp-84]
 00771C8F    mov         eax,esi
 00771C91    mov         ecx,dword ptr [eax]
 00771C93    call        dword ptr [ecx+28];@AbstractError
 00771C96    lea         edx,[ebp-84]
 00771C9C    movzx       eax,word ptr [ebx+52]
 00771CA0    call        006959BC
 00771CA5    test        al,al
>00771CA7    je          00771CB0
 00771CA9    mov         al,1
>00771CAB    jmp         00771F4C
 00771CB0    mov         eax,esi
 00771CB2    mov         edx,dword ptr [eax]
 00771CB4    call        dword ptr [edx+38];@AbstractError
 00771CB7    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771CBA    je          00771CC5
 00771CBC    movzx       eax,word ptr [ebx+54]
 00771CC0    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771CC3    jle         00771CF3
 00771CC5    cmp         word ptr [ebx+54],0
>00771CCA    je          00771CF3
 00771CCC    lea         edx,[ebp-84]
 00771CD2    mov         eax,esi
 00771CD4    mov         ecx,dword ptr [eax]
 00771CD6    call        dword ptr [ecx+28];@AbstractError
 00771CD9    lea         edx,[ebp-84]
 00771CDF    movzx       eax,word ptr [ebx+54]
 00771CE3    call        006959BC
 00771CE8    test        al,al
>00771CEA    je          00771CF3
 00771CEC    mov         al,1
>00771CEE    jmp         00771F4C
 00771CF3    mov         eax,esi
 00771CF5    mov         edx,dword ptr [eax]
 00771CF7    call        dword ptr [edx+38];@AbstractError
 00771CFA    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771CFD    je          00771D0B
 00771CFF    movzx       eax,word ptr [ebx+11E]
 00771D06    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771D09    jle         00771D3F
 00771D0B    cmp         word ptr [ebx+11E],0
>00771D13    je          00771D3F
 00771D15    lea         edx,[ebp-84]
 00771D1B    mov         eax,esi
 00771D1D    mov         ecx,dword ptr [eax]
 00771D1F    call        dword ptr [ecx+28];@AbstractError
 00771D22    lea         edx,[ebp-84]
 00771D28    movzx       eax,word ptr [ebx+11E]
 00771D2F    call        006959BC
 00771D34    test        al,al
>00771D36    je          00771D3F
 00771D38    mov         al,1
>00771D3A    jmp         00771F4C
 00771D3F    mov         eax,esi
 00771D41    mov         edx,dword ptr [eax]
 00771D43    call        dword ptr [edx+38];@AbstractError
 00771D46    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771D49    je          00771D57
 00771D4B    movzx       eax,word ptr [ebx+0F4]
 00771D52    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771D55    jle         00771D8B
 00771D57    cmp         word ptr [ebx+0F4],0
>00771D5F    je          00771D8B
 00771D61    lea         edx,[ebp-84]
 00771D67    mov         eax,esi
 00771D69    mov         ecx,dword ptr [eax]
 00771D6B    call        dword ptr [ecx+28];@AbstractError
 00771D6E    lea         edx,[ebp-84]
 00771D74    movzx       eax,word ptr [ebx+0F4]
 00771D7B    call        006959BC
 00771D80    test        al,al
>00771D82    je          00771D8B
 00771D84    mov         al,2
>00771D86    jmp         00771F4C
 00771D8B    mov         eax,esi
 00771D8D    mov         edx,dword ptr [eax]
 00771D8F    call        dword ptr [edx+38];@AbstractError
 00771D92    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771D95    je          00771DA3
 00771D97    movzx       eax,word ptr [ebx+0FA]
 00771D9E    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771DA1    jle         00771DD7
 00771DA3    cmp         word ptr [ebx+0FA],0
>00771DAB    je          00771DD7
 00771DAD    lea         edx,[ebp-84]
 00771DB3    mov         eax,esi
 00771DB5    mov         ecx,dword ptr [eax]
 00771DB7    call        dword ptr [ecx+28];@AbstractError
 00771DBA    lea         edx,[ebp-84]
 00771DC0    movzx       eax,word ptr [ebx+0FA]
 00771DC7    call        006959BC
 00771DCC    test        al,al
>00771DCE    je          00771DD7
 00771DD0    mov         al,3
>00771DD2    jmp         00771F4C
 00771DD7    mov         eax,esi
 00771DD9    mov         edx,dword ptr [eax]
 00771DDB    call        dword ptr [edx+38];@AbstractError
 00771DDE    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771DE1    je          00771DEF
 00771DE3    movzx       eax,word ptr [ebx+100]
 00771DEA    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771DED    jle         00771E23
 00771DEF    cmp         word ptr [ebx+100],0
>00771DF7    je          00771E23
 00771DF9    lea         edx,[ebp-84]
 00771DFF    mov         eax,esi
 00771E01    mov         ecx,dword ptr [eax]
 00771E03    call        dword ptr [ecx+28];@AbstractError
 00771E06    lea         edx,[ebp-84]
 00771E0C    movzx       eax,word ptr [ebx+100]
 00771E13    call        006959BC
 00771E18    test        al,al
>00771E1A    je          00771E23
 00771E1C    mov         al,4
>00771E1E    jmp         00771F4C
 00771E23    mov         eax,esi
 00771E25    mov         edx,dword ptr [eax]
 00771E27    call        dword ptr [edx+38];@AbstractError
 00771E2A    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771E2D    je          00771E3B
 00771E2F    movzx       eax,word ptr [ebx+106]
 00771E36    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771E39    jle         00771E6F
 00771E3B    cmp         word ptr [ebx+106],0
>00771E43    je          00771E6F
 00771E45    lea         edx,[ebp-84]
 00771E4B    mov         eax,esi
 00771E4D    mov         ecx,dword ptr [eax]
 00771E4F    call        dword ptr [ecx+28];@AbstractError
 00771E52    lea         edx,[ebp-84]
 00771E58    movzx       eax,word ptr [ebx+106]
 00771E5F    call        006959BC
 00771E64    test        al,al
>00771E66    je          00771E6F
 00771E68    mov         al,5
>00771E6A    jmp         00771F4C
 00771E6F    mov         eax,esi
 00771E71    mov         edx,dword ptr [eax]
 00771E73    call        dword ptr [edx+38];@AbstractError
 00771E76    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771E79    je          00771E87
 00771E7B    movzx       eax,word ptr [ebx+10C]
 00771E82    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771E85    jle         00771EBB
 00771E87    cmp         word ptr [ebx+10C],0
>00771E8F    je          00771EBB
 00771E91    lea         edx,[ebp-84]
 00771E97    mov         eax,esi
 00771E99    mov         ecx,dword ptr [eax]
 00771E9B    call        dword ptr [ecx+28];@AbstractError
 00771E9E    lea         edx,[ebp-84]
 00771EA4    movzx       eax,word ptr [ebx+10C]
 00771EAB    call        006959BC
 00771EB0    test        al,al
>00771EB2    je          00771EBB
 00771EB4    mov         al,6
>00771EB6    jmp         00771F4C
 00771EBB    mov         eax,esi
 00771EBD    mov         edx,dword ptr [eax]
 00771EBF    call        dword ptr [edx+38];@AbstractError
 00771EC2    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771EC5    je          00771ED3
 00771EC7    movzx       eax,word ptr [ebx+112]
 00771ECE    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771ED1    jle         00771F04
 00771ED3    cmp         word ptr [ebx+112],0
>00771EDB    je          00771F04
 00771EDD    lea         edx,[ebp-84]
 00771EE3    mov         eax,esi
 00771EE5    mov         ecx,dword ptr [eax]
 00771EE7    call        dword ptr [ecx+28];@AbstractError
 00771EEA    lea         edx,[ebp-84]
 00771EF0    movzx       eax,word ptr [ebx+112]
 00771EF7    call        006959BC
 00771EFC    test        al,al
>00771EFE    je          00771F04
 00771F00    mov         al,7
>00771F02    jmp         00771F4C
 00771F04    mov         eax,esi
 00771F06    mov         edx,dword ptr [eax]
 00771F08    call        dword ptr [edx+38];@AbstractError
 00771F0B    cmp         eax,dword ptr [ebx+8];TDCAddr.FPanlIndx:Integer
>00771F0E    je          00771F1C
 00771F10    movzx       eax,word ptr [ebx+118]
 00771F17    cmp         eax,dword ptr [edi+10];TDCPanel.FLastLocal:Integer
>00771F1A    jle         00771F4A
 00771F1C    movzx       edi,word ptr [ebx+118]
 00771F23    test        di,di
>00771F26    je          00771F4A
 00771F28    lea         edx,[ebp-84]
 00771F2E    mov         eax,esi
 00771F30    mov         ecx,dword ptr [eax]
 00771F32    call        dword ptr [ecx+28];@AbstractError
 00771F35    lea         edx,[ebp-84]
 00771F3B    mov         eax,edi
 00771F3D    call        006959BC
 00771F42    test        al,al
>00771F44    je          00771F4A
 00771F46    mov         al,8
>00771F48    jmp         00771F4C
 00771F4A    xor         eax,eax
 00771F4C    pop         edi
 00771F4D    pop         esi
 00771F4E    pop         ebx
 00771F4F    mov         esp,ebp
 00771F51    pop         ebp
 00771F52    ret         4
*}
end;

//00771F58
procedure TDCCtrlObjects.CollectInputsOfSingleOutput(OutPanel:TDCPanel; OutAddr:TCtrlOutput);
begin
{*
 00771F58    push        ebx
 00771F59    push        esi
 00771F5A    push        edi
 00771F5B    push        ebp
 00771F5C    add         esp,0FFFFFF54
 00771F62    mov         dword ptr [esp+8],ecx
 00771F66    mov         dword ptr [esp+4],edx
 00771F6A    mov         dword ptr [esp],eax
 00771F6D    mov         eax,dword ptr [esp]
 00771F70    call        TDCCtrlObjects.Clear
 00771F75    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 00771F7A    mov         eax,dword ptr [eax+0C]
 00771F7D    mov         eax,dword ptr [eax+8]
 00771F80    sub         eax,1
>00771F83    jno         00771F8A
 00771F85    call        @IntOver
 00771F8A    test        eax,eax
>00771F8C    jl          00772112
 00771F92    inc         eax
 00771F93    mov         dword ptr [esp+18],eax
 00771F97    mov         dword ptr [esp+10],0
 00771F9F    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 00771FA4    mov         ebx,dword ptr [eax+0C]
 00771FA7    lea         eax,[ebx+8]
 00771FAA    mov         edx,dword ptr [esp+10]
 00771FAE    call        00434534
 00771FB3    mov         eax,dword ptr [ebx+20]
 00771FB6    mov         edx,dword ptr [esp+10]
 00771FBA    mov         eax,dword ptr [eax+edx*4]
 00771FBD    mov         dword ptr [esp+0C],eax
 00771FC1    mov         eax,dword ptr [esp+8]
 00771FC5    mov         edx,dword ptr [eax]
 00771FC7    call        dword ptr [edx+38]
 00771FCA    mov         edx,dword ptr [esp+0C]
 00771FCE    cmp         eax,dword ptr [edx+4]
>00771FD1    je          00771FFB
 00771FD3    mov         eax,dword ptr [esp+0C]
 00771FD7    mov         eax,dword ptr [eax+8]
 00771FDA    test        eax,eax
>00771FDC    jle         00771FFB
 00771FDE    sub         eax,1
>00771FE1    jno         00771FE8
 00771FE3    call        @IntOver
 00771FE8    mov         edx,dword ptr [esp+4]
 00771FEC    cmp         eax,1F
>00771FEF    ja          00771FF5
 00771FF1    bt          dword ptr [edx+0C],eax
>00771FF5    jae         00772104
 00771FFB    mov         eax,dword ptr [esp+0C]
 00771FFF    mov         eax,dword ptr [eax+20]
 00772002    mov         eax,dword ptr [eax+8]
 00772005    sub         eax,1
>00772008    jno         0077200F
 0077200A    call        @IntOver
 0077200F    test        eax,eax
>00772011    jl          00772104
 00772017    inc         eax
 00772018    mov         dword ptr [esp+1C],eax
 0077201C    mov         dword ptr [esp+14],0
 00772024    mov         eax,dword ptr [esp+0C]
 00772028    mov         ebx,dword ptr [eax+20]
 0077202B    lea         eax,[ebx+8]
 0077202E    mov         edx,dword ptr [esp+14]
 00772032    call        00434534
 00772037    mov         eax,dword ptr [ebx+20]
 0077203A    mov         edx,dword ptr [esp+14]
 0077203E    mov         ebp,dword ptr [eax+edx*4]
 00772041    mov         eax,dword ptr [ebp+1C]
 00772044    mov         edi,dword ptr [eax+8]
 00772047    sub         edi,1
>0077204A    jno         00772051
 0077204C    call        @IntOver
 00772051    test        edi,edi
>00772053    jl          007720F6
 00772059    inc         edi
 0077205A    xor         ebx,ebx
 0077205C    mov         esi,dword ptr [ebp+1C]
 0077205F    lea         eax,[esi+8]
 00772062    mov         edx,ebx
 00772064    call        00434534
 00772069    mov         eax,dword ptr [esi+20]
 0077206C    mov         esi,dword ptr [eax+ebx*4]
 0077206F    lea         edx,[esp+28]
 00772073    mov         eax,dword ptr [esp+8]
 00772077    mov         ecx,dword ptr [eax]
 00772079    call        dword ptr [ecx+28]
 0077207C    lea         eax,[esp+28]
 00772080    call        006959E8
 00772085    test        al,al
>00772087    je          007720A4
 00772089    mov         eax,dword ptr [esp]
 0077208C    mov         eax,dword ptr [eax+4]
 0077208F    mov         eax,dword ptr [eax+0C]
 00772092    mov         dword ptr [esp+20],esi
 00772096    lea         edx,[esp+20]
 0077209A    add         eax,8
 0077209D    call        0043489C
>007720A2    jmp         007720EE
 007720A4    mov         eax,dword ptr [esp+4]
 007720A8    push        eax
 007720A9    mov         ecx,dword ptr [esp+10]
 007720AD    mov         edx,esi
 007720AF    mov         eax,dword ptr [esp+4]
 007720B3    call        TDCCtrlObjects.IsAnyCtrlGroupVisible
 007720B8    test        al,al
>007720BA    je          007720EE
 007720BC    mov         eax,dword ptr [esp+8]
 007720C0    push        eax
 007720C1    mov         ecx,esi
 007720C3    mov         edx,dword ptr [esp+10]
 007720C7    mov         eax,dword ptr [esp+4]
 007720CB    call        TDCCtrlObjects.InputControlsOutput
 007720D0    dec         eax
 007720D1    sub         al,8
>007720D3    jae         007720EE
 007720D5    mov         eax,dword ptr [esp]
 007720D8    mov         eax,dword ptr [eax+4]
 007720DB    mov         eax,dword ptr [eax+0C]
 007720DE    mov         dword ptr [esp+24],esi
 007720E2    lea         edx,[esp+24]
 007720E6    add         eax,8
 007720E9    call        0043489C
 007720EE    inc         ebx
 007720EF    dec         edi
>007720F0    jne         0077205C
 007720F6    inc         dword ptr [esp+14]
 007720FA    dec         dword ptr [esp+1C]
>007720FE    jne         00772024
 00772104    inc         dword ptr [esp+10]
 00772108    dec         dword ptr [esp+18]
>0077210C    jne         00771F9F
 00772112    add         esp,0AC
 00772118    pop         ebp
 00772119    pop         edi
 0077211A    pop         esi
 0077211B    pop         ebx
 0077211C    ret
*}
end;

//00772120
procedure TDCCtrlObjects.CollectOutputsOfSingleInput(InpPanel:TDCPanel; InpAddr:TDCAddr);
begin
{*
 00772120    push        ebx
 00772121    push        esi
 00772122    push        edi
 00772123    push        ebp
 00772124    add         esp,0FFFFFEC8
 0077212A    mov         dword ptr [esp+4],ecx
 0077212E    mov         dword ptr [esp],edx
 00772131    mov         esi,eax
 00772133    mov         eax,esi
 00772135    call        TDCCtrlObjects.Clear
 0077213A    mov         eax,dword ptr [esp+4]
 0077213E    cmp         word ptr [eax+0F4],0
>00772146    je          0077216A
 00772148    mov         eax,dword ptr [esp+4]
 0077214C    movzx       eax,word ptr [eax+0F4]
 00772153    mov         edx,dword ptr [esi+14];TDCCtrlObjects.OutDelayedC1:TDCCollection
 00772156    mov         dword ptr [edx+4],eax;TDCCollection.FCtrlGroup:Integer
 00772159    mov         eax,dword ptr [esp+4]
 0077215D    movzx       eax,word ptr [eax+0F6]
 00772164    mov         edx,dword ptr [esi+14];TDCCtrlObjects.OutDelayedC1:TDCCollection
 00772167    mov         dword ptr [edx+8],eax;TDCCollection.FDelayTime:Integer
 0077216A    mov         eax,dword ptr [esp+4]
 0077216E    cmp         word ptr [eax+0FA],0
>00772176    je          0077219A
 00772178    mov         eax,dword ptr [esp+4]
 0077217C    movzx       eax,word ptr [eax+0FA]
 00772183    mov         edx,dword ptr [esi+18];TDCCtrlObjects.OutDelayedC2:TDCCollection
 00772186    mov         dword ptr [edx+4],eax;TDCCollection.FCtrlGroup:Integer
 00772189    mov         eax,dword ptr [esp+4]
 0077218D    movzx       eax,word ptr [eax+0FC]
 00772194    mov         edx,dword ptr [esi+18];TDCCtrlObjects.OutDelayedC2:TDCCollection
 00772197    mov         dword ptr [edx+8],eax;TDCCollection.FDelayTime:Integer
 0077219A    mov         eax,dword ptr [esp+4]
 0077219E    cmp         word ptr [eax+100],0
>007721A6    je          007721CA
 007721A8    mov         eax,dword ptr [esp+4]
 007721AC    movzx       eax,word ptr [eax+100]
 007721B3    mov         edx,dword ptr [esi+1C];TDCCtrlObjects.OutDelayedC3:TDCCollection
 007721B6    mov         dword ptr [edx+4],eax;TDCCollection.FCtrlGroup:Integer
 007721B9    mov         eax,dword ptr [esp+4]
 007721BD    movzx       eax,word ptr [eax+102]
 007721C4    mov         edx,dword ptr [esi+1C];TDCCtrlObjects.OutDelayedC3:TDCCollection
 007721C7    mov         dword ptr [edx+8],eax;TDCCollection.FDelayTime:Integer
 007721CA    mov         eax,dword ptr [esp+4]
 007721CE    cmp         word ptr [eax+106],0
>007721D6    je          007721FA
 007721D8    mov         eax,dword ptr [esp+4]
 007721DC    movzx       eax,word ptr [eax+106]
 007721E3    mov         edx,dword ptr [esi+20];TDCCtrlObjects.OutDelayedC4:TDCCollection
 007721E6    mov         dword ptr [edx+4],eax;TDCCollection.FCtrlGroup:Integer
 007721E9    mov         eax,dword ptr [esp+4]
 007721ED    movzx       eax,word ptr [eax+108]
 007721F4    mov         edx,dword ptr [esi+20];TDCCtrlObjects.OutDelayedC4:TDCCollection
 007721F7    mov         dword ptr [edx+8],eax;TDCCollection.FDelayTime:Integer
 007721FA    mov         eax,dword ptr [esp+4]
 007721FE    cmp         word ptr [eax+10C],0
>00772206    je          0077222A
 00772208    mov         eax,dword ptr [esp+4]
 0077220C    movzx       eax,word ptr [eax+10C]
 00772213    mov         edx,dword ptr [esi+24];TDCCtrlObjects.OutDelayedC5:TDCCollection
 00772216    mov         dword ptr [edx+4],eax;TDCCollection.FCtrlGroup:Integer
 00772219    mov         eax,dword ptr [esp+4]
 0077221D    movzx       eax,word ptr [eax+10E]
 00772224    mov         edx,dword ptr [esi+24];TDCCtrlObjects.OutDelayedC5:TDCCollection
 00772227    mov         dword ptr [edx+8],eax;TDCCollection.FDelayTime:Integer
 0077222A    mov         eax,dword ptr [esp+4]
 0077222E    cmp         word ptr [eax+112],0
>00772236    je          0077225A
 00772238    mov         eax,dword ptr [esp+4]
 0077223C    movzx       eax,word ptr [eax+112]
 00772243    mov         edx,dword ptr [esi+28];TDCCtrlObjects.OutDelayedC6:TDCCollection
 00772246    mov         dword ptr [edx+4],eax;TDCCollection.FCtrlGroup:Integer
 00772249    mov         eax,dword ptr [esp+4]
 0077224D    movzx       eax,word ptr [eax+114]
 00772254    mov         edx,dword ptr [esi+28];TDCCtrlObjects.OutDelayedC6:TDCCollection
 00772257    mov         dword ptr [edx+8],eax;TDCCollection.FDelayTime:Integer
 0077225A    mov         eax,dword ptr [esp+4]
 0077225E    cmp         word ptr [eax+118],0
>00772266    je          0077228A
 00772268    mov         eax,dword ptr [esp+4]
 0077226C    movzx       eax,word ptr [eax+118]
 00772273    mov         edx,dword ptr [esi+2C];TDCCtrlObjects.OutDelayedC7:TDCCollection
 00772276    mov         dword ptr [edx+4],eax;TDCCollection.FCtrlGroup:Integer
 00772279    mov         eax,dword ptr [esp+4]
 0077227D    movzx       eax,word ptr [eax+11A]
 00772284    mov         edx,dword ptr [esi+2C];TDCCtrlObjects.OutDelayedC7:TDCCollection
 00772287    mov         dword ptr [edx+8],eax;TDCCollection.FDelayTime:Integer
 0077228A    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 0077228F    mov         eax,dword ptr [eax+0C]
 00772292    mov         eax,dword ptr [eax+8]
 00772295    sub         eax,1
>00772298    jno         0077229F
 0077229A    call        @IntOver
 0077229F    test        eax,eax
>007722A1    jl          0077278C
 007722A7    inc         eax
 007722A8    mov         dword ptr [esp+20],eax
 007722AC    mov         dword ptr [esp+14],0
 007722B4    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 007722B9    mov         eax,dword ptr [eax+0C]
 007722BC    mov         dword ptr [esp+28],eax
 007722C0    mov         eax,dword ptr [esp+28]
 007722C4    add         eax,8
 007722C7    mov         edx,dword ptr [esp+14]
 007722CB    call        00434534
 007722D0    mov         eax,dword ptr [esp+28]
 007722D4    mov         eax,dword ptr [eax+20]
 007722D7    mov         edx,dword ptr [esp+14]
 007722DB    mov         eax,dword ptr [eax+edx*4]
 007722DE    mov         dword ptr [esp+8],eax
 007722E2    mov         eax,dword ptr [esp+8]
 007722E6    mov         eax,dword ptr [eax+8]
 007722E9    mov         edx,dword ptr [esp]
 007722EC    cmp         eax,dword ptr [edx+8]
>007722EF    je          00772339
 007722F1    mov         eax,dword ptr [esp]
 007722F4    cmp         dword ptr [eax+8],0
>007722F8    jle         0077231D
 007722FA    mov         eax,dword ptr [esp]
 007722FD    mov         eax,dword ptr [eax+8]
 00772300    sub         eax,1
>00772303    jno         0077230A
 00772305    call        @IntOver
 0077230A    mov         edx,dword ptr [esp+8]
 0077230E    cmp         eax,1F
>00772311    ja          00772317
 00772313    bt          dword ptr [edx+0C],eax
>00772317    jae         0077277E
 0077231D    mov         eax,dword ptr [esp+8]
 00772321    push        eax
 00772322    mov         ecx,dword ptr [esp+4]
 00772326    mov         edx,dword ptr [esp+8]
 0077232A    mov         eax,esi
 0077232C    call        TDCCtrlObjects.IsAnyCtrlGroupVisible
 00772331    test        al,al
>00772333    je          0077277E
 00772339    mov         eax,dword ptr [esp+8]
 0077233D    mov         eax,dword ptr [eax+1C]
 00772340    mov         eax,dword ptr [eax+8]
 00772343    sub         eax,1
>00772346    jno         0077234D
 00772348    call        @IntOver
 0077234D    test        eax,eax
>0077234F    jl          007724FC
 00772355    inc         eax
 00772356    mov         dword ptr [esp+24],eax
 0077235A    mov         dword ptr [esp+18],0
 00772362    mov         eax,dword ptr [esp+8]
 00772366    mov         ebx,dword ptr [eax+1C]
 00772369    lea         eax,[ebx+8]
 0077236C    mov         edx,dword ptr [esp+18]
 00772370    call        00434534
 00772375    mov         eax,dword ptr [ebx+20]
 00772378    mov         edx,dword ptr [esp+18]
 0077237C    mov         eax,dword ptr [eax+edx*4]
 0077237F    mov         dword ptr [esp+0C],eax
 00772383    mov         eax,dword ptr [esp+0C]
 00772387    mov         eax,dword ptr [eax+1C]
 0077238A    mov         ebx,dword ptr [eax+8]
 0077238D    sub         ebx,1
>00772390    jno         00772397
 00772392    call        @IntOver
 00772397    test        ebx,ebx
>00772399    jl          007724EE
 0077239F    inc         ebx
 007723A0    xor         edi,edi
 007723A2    mov         eax,dword ptr [esp+0C]
 007723A6    mov         ebp,dword ptr [eax+1C]
 007723A9    lea         eax,[ebp+8]
 007723AC    mov         edx,edi
 007723AE    call        00434534
 007723B3    mov         eax,dword ptr [ebp+20]
 007723B6    mov         ebp,dword ptr [eax+edi*4]
 007723B9    push        ebp
 007723BA    mov         ecx,dword ptr [esp+8]
 007723BE    mov         edx,dword ptr [esp+4]
 007723C2    mov         eax,esi
 007723C4    call        TDCCtrlObjects.InputControlsOutput
 007723C9    and         eax,7F
 007723CC    cmp         eax,8
>007723CF    ja          007724E6
 007723D5    jmp         dword ptr [eax*4+7723DC]
 007723D5    dd          007724E6
 007723D5    dd          00772400
 007723D5    dd          0077241B
 007723D5    dd          00772436
 007723D5    dd          00772451
 007723D5    dd          00772469
 007723D5    dd          00772481
 007723D5    dd          00772499
 007723D5    dd          007724B5
 00772400    mov         eax,dword ptr [esi+0C];TDCCtrlObjects.OutImmediate:TDCCollection
 00772403    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00772406    mov         dword ptr [esp+2C],ebp
 0077240A    lea         edx,[esp+2C]
 0077240E    add         eax,8
 00772411    call        0043489C
>00772416    jmp         007724E6
 0077241B    mov         eax,dword ptr [esi+14];TDCCtrlObjects.OutDelayedC1:TDCCollection
 0077241E    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00772421    mov         dword ptr [esp+38],ebp
 00772425    lea         edx,[esp+38]
 00772429    add         eax,8
 0077242C    call        0043489C
>00772431    jmp         007724E6
 00772436    mov         eax,dword ptr [esi+18];TDCCtrlObjects.OutDelayedC2:TDCCollection
 00772439    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077243C    mov         dword ptr [esp+44],ebp
 00772440    lea         edx,[esp+44]
 00772444    add         eax,8
 00772447    call        0043489C
>0077244C    jmp         007724E6
 00772451    mov         eax,dword ptr [esi+1C];TDCCtrlObjects.OutDelayedC3:TDCCollection
 00772454    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00772457    mov         dword ptr [esp+50],ebp
 0077245B    lea         edx,[esp+50]
 0077245F    add         eax,8
 00772462    call        0043489C
>00772467    jmp         007724E6
 00772469    mov         eax,dword ptr [esi+20];TDCCtrlObjects.OutDelayedC4:TDCCollection
 0077246C    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077246F    mov         dword ptr [esp+5C],ebp
 00772473    lea         edx,[esp+5C]
 00772477    add         eax,8
 0077247A    call        0043489C
>0077247F    jmp         007724E6
 00772481    mov         eax,dword ptr [esi+24];TDCCtrlObjects.OutDelayedC5:TDCCollection
 00772484    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00772487    mov         dword ptr [esp+68],ebp
 0077248B    lea         edx,[esp+68]
 0077248F    add         eax,8
 00772492    call        0043489C
>00772497    jmp         007724E6
 00772499    mov         eax,dword ptr [esi+28];TDCCtrlObjects.OutDelayedC6:TDCCollection
 0077249C    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077249F    mov         dword ptr [esp+74],ebp
 007724A3    lea         edx,[esp+74]
 007724A7    add         eax,8
 007724AA    call        0043489C
 007724AF    mov         dword ptr [esp+78],eax
>007724B3    jmp         007724E6
 007724B5    mov         eax,dword ptr [esi+2C];TDCCtrlObjects.OutDelayedC7:TDCCollection
 007724B8    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007724BB    mov         dword ptr [esp+84],eax
 007724C2    mov         dword ptr [esp+88],ebp
 007724C9    lea         edx,[esp+88]
 007724D0    mov         eax,dword ptr [esp+84]
 007724D7    add         eax,8
 007724DA    call        0043489C
 007724DF    mov         dword ptr [esp+8C],eax
 007724E6    inc         edi
 007724E7    dec         ebx
>007724E8    jne         007723A2
 007724EE    inc         dword ptr [esp+18]
 007724F2    dec         dword ptr [esp+24]
>007724F6    jne         00772362
 007724FC    mov         eax,dword ptr [esp+8]
 00772500    mov         eax,dword ptr [eax+20]
 00772503    mov         eax,dword ptr [eax+8]
 00772506    sub         eax,1
>00772509    jno         00772510
 0077250B    call        @IntOver
 00772510    test        eax,eax
>00772512    jl          0077277E
 00772518    inc         eax
 00772519    mov         dword ptr [esp+24],eax
 0077251D    mov         dword ptr [esp+1C],0
 00772525    mov         eax,dword ptr [esp+8]
 00772529    mov         ebx,dword ptr [eax+20]
 0077252C    lea         eax,[ebx+8]
 0077252F    mov         edx,dword ptr [esp+1C]
 00772533    call        00434534
 00772538    mov         eax,dword ptr [ebx+20]
 0077253B    mov         edx,dword ptr [esp+1C]
 0077253F    mov         eax,dword ptr [eax+edx*4]
 00772542    mov         dword ptr [esp+10],eax
 00772546    mov         eax,dword ptr [esp+10]
 0077254A    mov         eax,dword ptr [eax+1C]
 0077254D    mov         ebx,dword ptr [eax+8]
 00772550    sub         ebx,1
>00772553    jno         0077255A
 00772555    call        @IntOver
 0077255A    test        ebx,ebx
>0077255C    jl          00772770
 00772562    inc         ebx
 00772563    xor         edi,edi
 00772565    mov         eax,dword ptr [esp+10]
 00772569    mov         ebp,dword ptr [eax+1C]
 0077256C    lea         eax,[ebp+8]
 0077256F    mov         edx,edi
 00772571    call        00434534
 00772576    mov         eax,dword ptr [ebp+20]
 00772579    mov         ebp,dword ptr [eax+edi*4]
 0077257C    push        ebp
 0077257D    mov         ecx,dword ptr [esp+8]
 00772581    mov         edx,dword ptr [esp+4]
 00772585    mov         eax,esi
 00772587    call        TDCCtrlObjects.InputControlsOutput
 0077258C    and         eax,7F
 0077258F    cmp         eax,8
>00772592    ja          00772768
 00772598    jmp         dword ptr [eax*4+77259F]
 00772598    dd          00772768
 00772598    dd          007725C3
 00772598    dd          007725F9
 00772598    dd          0077262F
 00772598    dd          00772665
 00772598    dd          0077269B
 00772598    dd          007726D1
 00772598    dd          00772704
 00772598    dd          00772737
 007725C3    mov         eax,dword ptr [esi+0C];TDCCtrlObjects.OutImmediate:TDCCollection
 007725C6    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007725C9    mov         dword ptr [esp+98],eax
 007725D0    mov         dword ptr [esp+9C],ebp
 007725D7    lea         edx,[esp+9C]
 007725DE    mov         eax,dword ptr [esp+98]
 007725E5    add         eax,8
 007725E8    call        0043489C
 007725ED    mov         dword ptr [esp+0A0],eax
>007725F4    jmp         00772768
 007725F9    mov         eax,dword ptr [esi+14];TDCCtrlObjects.OutDelayedC1:TDCCollection
 007725FC    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007725FF    mov         dword ptr [esp+0AC],eax
 00772606    mov         dword ptr [esp+0B0],ebp
 0077260D    lea         edx,[esp+0B0]
 00772614    mov         eax,dword ptr [esp+0AC]
 0077261B    add         eax,8
 0077261E    call        0043489C
 00772623    mov         dword ptr [esp+0B4],eax
>0077262A    jmp         00772768
 0077262F    mov         eax,dword ptr [esi+18];TDCCtrlObjects.OutDelayedC2:TDCCollection
 00772632    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 00772635    mov         dword ptr [esp+0C0],eax
 0077263C    mov         dword ptr [esp+0C4],ebp
 00772643    lea         edx,[esp+0C4]
 0077264A    mov         eax,dword ptr [esp+0C0]
 00772651    add         eax,8
 00772654    call        0043489C
 00772659    mov         dword ptr [esp+0C8],eax
>00772660    jmp         00772768
 00772665    mov         eax,dword ptr [esi+1C];TDCCtrlObjects.OutDelayedC3:TDCCollection
 00772668    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077266B    mov         dword ptr [esp+0D4],eax
 00772672    mov         dword ptr [esp+0D8],ebp
 00772679    lea         edx,[esp+0D8]
 00772680    mov         eax,dword ptr [esp+0D4]
 00772687    add         eax,8
 0077268A    call        0043489C
 0077268F    mov         dword ptr [esp+0DC],eax
>00772696    jmp         00772768
 0077269B    mov         eax,dword ptr [esi+20];TDCCtrlObjects.OutDelayedC4:TDCCollection
 0077269E    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007726A1    mov         dword ptr [esp+0E8],eax
 007726A8    mov         dword ptr [esp+0EC],ebp
 007726AF    lea         edx,[esp+0EC]
 007726B6    mov         eax,dword ptr [esp+0E8]
 007726BD    add         eax,8
 007726C0    call        0043489C
 007726C5    mov         dword ptr [esp+0F0],eax
>007726CC    jmp         00772768
 007726D1    mov         eax,dword ptr [esi+24];TDCCtrlObjects.OutDelayedC5:TDCCollection
 007726D4    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 007726D7    mov         dword ptr [esp+0FC],eax
 007726DE    mov         dword ptr [esp+100],ebp
 007726E5    lea         edx,[esp+100]
 007726EC    mov         eax,dword ptr [esp+0FC]
 007726F3    add         eax,8
 007726F6    call        0043489C
 007726FB    mov         dword ptr [esp+104],eax
>00772702    jmp         00772768
 00772704    mov         eax,dword ptr [esi+28];TDCCtrlObjects.OutDelayedC6:TDCCollection
 00772707    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077270A    mov         dword ptr [esp+110],eax
 00772711    mov         dword ptr [esp+114],ebp
 00772718    lea         edx,[esp+114]
 0077271F    mov         eax,dword ptr [esp+110]
 00772726    add         eax,8
 00772729    call        0043489C
 0077272E    mov         dword ptr [esp+118],eax
>00772735    jmp         00772768
 00772737    mov         eax,dword ptr [esi+2C];TDCCtrlObjects.OutDelayedC7:TDCCollection
 0077273A    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077273D    mov         dword ptr [esp+124],eax
 00772744    mov         dword ptr [esp+128],ebp
 0077274B    lea         edx,[esp+128]
 00772752    mov         eax,dword ptr [esp+124]
 00772759    add         eax,8
 0077275C    call        0043489C
 00772761    mov         dword ptr [esp+12C],eax
 00772768    inc         edi
 00772769    dec         ebx
>0077276A    jne         00772565
 00772770    inc         dword ptr [esp+1C]
 00772774    dec         dword ptr [esp+24]
>00772778    jne         00772525
 0077277E    inc         dword ptr [esp+14]
 00772782    dec         dword ptr [esp+20]
>00772786    jne         007722B4
 0077278C    add         esp,138
 00772792    pop         ebp
 00772793    pop         edi
 00772794    pop         esi
 00772795    pop         ebx
 00772796    ret
*}
end;

//00772798
procedure TDCCtrlObjects.GetInputsOfInputCG(InpPanel:TDCPanel; InpCG:Integer);
begin
{*
 00772798    push        ebx
 00772799    push        esi
 0077279A    push        edi
 0077279B    push        ebp
 0077279C    add         esp,0FFFFFFE8
 0077279F    mov         dword ptr [esp+4],ecx
 007727A3    mov         dword ptr [esp],edx
 007727A6    mov         ebp,eax
 007727A8    mov         eax,dword ptr [esp]
 007727AB    mov         eax,dword ptr [eax+20]
 007727AE    mov         eax,dword ptr [eax+8]
 007727B1    sub         eax,1
>007727B4    jno         007727BB
 007727B6    call        @IntOver
 007727BB    test        eax,eax
>007727BD    jl          00772861
 007727C3    inc         eax
 007727C4    mov         dword ptr [esp+10],eax
 007727C8    mov         dword ptr [esp+0C],0
 007727D0    mov         eax,dword ptr [esp]
 007727D3    mov         ebx,dword ptr [eax+20]
 007727D6    lea         eax,[ebx+8]
 007727D9    mov         edx,dword ptr [esp+0C]
 007727DD    call        00434534
 007727E2    mov         eax,dword ptr [ebx+20]
 007727E5    mov         edx,dword ptr [esp+0C]
 007727E9    mov         eax,dword ptr [eax+edx*4]
 007727EC    mov         dword ptr [esp+8],eax
 007727F0    mov         eax,dword ptr [esp+8]
 007727F4    mov         eax,dword ptr [eax+1C]
 007727F7    mov         edi,dword ptr [eax+8]
 007727FA    sub         edi,1
>007727FD    jno         00772804
 007727FF    call        @IntOver
 00772804    test        edi,edi
>00772806    jl          00772853
 00772808    inc         edi
 00772809    xor         ebx,ebx
 0077280B    mov         eax,dword ptr [esp+8]
 0077280F    mov         esi,dword ptr [eax+1C]
 00772812    lea         eax,[esi+8]
 00772815    mov         edx,ebx
 00772817    call        00434534
 0077281C    mov         eax,dword ptr [esi+20]
 0077281F    mov         esi,dword ptr [eax+ebx*4]
 00772822    mov         eax,dword ptr [esp+4]
 00772826    push        eax
 00772827    mov         ecx,esi
 00772829    mov         edx,dword ptr [esp+4]
 0077282D    mov         eax,ebp
 0077282F    call        TDCCtrlObjects.InputControlsCGroup
 00772834    dec         eax
 00772835    sub         al,0A
>00772837    jae         0077284F
 00772839    mov         eax,dword ptr [ebp+4];TDCCtrlObjects.InpCollection:TDCCollection
 0077283C    mov         eax,dword ptr [eax+0C];TDCCollection.CtrlObjects:TObjectList<FXDCData.TCtrlOutput>
 0077283F    mov         dword ptr [esp+14],esi
 00772843    lea         edx,[esp+14]
 00772847    add         eax,8
 0077284A    call        0043489C
 0077284F    inc         ebx
 00772850    dec         edi
>00772851    jne         0077280B
 00772853    inc         dword ptr [esp+0C]
 00772857    dec         dword ptr [esp+10]
>0077285B    jne         007727D0
 00772861    add         esp,18
 00772864    pop         ebp
 00772865    pop         edi
 00772866    pop         esi
 00772867    pop         ebx
 00772868    ret
*}
end;

//0077286C
procedure TDCCtrlObjects.GetOutputsOfInputCG(InpPanel:TDCPanel; InpCG:Integer);
begin
{*
 0077286C    push        ebx
 0077286D    push        esi
 0077286E    push        edi
 0077286F    push        ebp
 00772870    add         esp,0FFFFFF48
 00772876    mov         dword ptr [esp+8],ecx
 0077287A    mov         dword ptr [esp+4],edx
 0077287E    mov         dword ptr [esp],eax
 00772881    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 00772886    mov         eax,dword ptr [eax+0C]
 00772889    mov         eax,dword ptr [eax+8]
 0077288C    sub         eax,1
>0077288F    jno         00772896
 00772891    call        @IntOver
 00772896    test        eax,eax
>00772898    jl          00772AF6
 0077289E    inc         eax
 0077289F    mov         dword ptr [esp+20],eax
 007728A3    mov         dword ptr [esp+14],0
 007728AB    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 007728B0    mov         ebx,dword ptr [eax+0C]
 007728B3    lea         eax,[ebx+8]
 007728B6    mov         edx,dword ptr [esp+14]
 007728BA    call        00434534
 007728BF    mov         eax,dword ptr [ebx+20]
 007728C2    mov         edx,dword ptr [esp+14]
 007728C6    mov         ebp,dword ptr [eax+edx*4]
 007728C9    mov         eax,dword ptr [ebp+8]
 007728CC    mov         edx,dword ptr [esp+4]
 007728D0    cmp         eax,dword ptr [edx+8]
>007728D3    je          0077290A
 007728D5    mov         eax,dword ptr [esp+4]
 007728D9    mov         eax,dword ptr [eax+8]
 007728DC    test        eax,eax
>007728DE    jle         007728F9
 007728E0    sub         eax,1
>007728E3    jno         007728EA
 007728E5    call        @IntOver
 007728EA    cmp         eax,1F
>007728ED    ja          007728F3
 007728EF    bt          dword ptr [ebp+0C],eax
>007728F3    jae         00772AE8
 007728F9    mov         eax,dword ptr [esp+4]
 007728FD    mov         eax,dword ptr [eax+10]
 00772900    cmp         eax,dword ptr [esp+8]
>00772904    jge         00772AE8
 0077290A    mov         eax,dword ptr [ebp+1C]
 0077290D    mov         eax,dword ptr [eax+8]
 00772910    sub         eax,1
>00772913    jno         0077291A
 00772915    call        @IntOver
 0077291A    test        eax,eax
>0077291C    jl          007729E3
 00772922    inc         eax
 00772923    mov         dword ptr [esp+24],eax
 00772927    mov         dword ptr [esp+18],0
 0077292F    mov         ebx,dword ptr [ebp+1C]
 00772932    lea         eax,[ebx+8]
 00772935    mov         edx,dword ptr [esp+18]
 00772939    call        00434534
 0077293E    mov         eax,dword ptr [ebx+20]
 00772941    mov         edx,dword ptr [esp+18]
 00772945    mov         eax,dword ptr [eax+edx*4]
 00772948    mov         dword ptr [esp+0C],eax
 0077294C    mov         eax,dword ptr [esp+0C]
 00772950    mov         eax,dword ptr [eax+1C]
 00772953    mov         ebx,dword ptr [eax+8]
 00772956    sub         ebx,1
>00772959    jno         00772960
 0077295B    call        @IntOver
 00772960    test        ebx,ebx
>00772962    jl          007729D5
 00772964    inc         ebx
 00772965    xor         edi,edi
 00772967    mov         eax,dword ptr [esp+0C]
 0077296B    mov         esi,dword ptr [eax+1C]
 0077296E    lea         eax,[esi+8]
 00772971    mov         edx,edi
 00772973    call        00434534
 00772978    mov         eax,dword ptr [esi+20]
 0077297B    mov         esi,dword ptr [eax+edi*4]
 0077297E    lea         eax,[esi+28]
 00772981    call        006959E8
 00772986    test        al,al
>00772988    jne         007729B8
 0077298A    lea         eax,[esi+28]
 0077298D    call        006959F0
 00772992    test        al,al
>00772994    je          0077299C
 00772996    cmp         ebp,dword ptr [esp+4]
>0077299A    je          007729B8
 0077299C    lea         edx,[esi+28]
 0077299F    mov         eax,dword ptr [esp+8]
 007729A3    cmp         eax,0FFFF
>007729A8    jbe         007729AF
 007729AA    call        @BoundErr
 007729AF    call        006959BC
 007729B4    test        al,al
>007729B6    je          007729D1
 007729B8    mov         eax,dword ptr [esp]
 007729BB    mov         eax,dword ptr [eax+8]
 007729BE    mov         eax,dword ptr [eax+0C]
 007729C1    mov         dword ptr [esp+28],esi
 007729C5    lea         edx,[esp+28]
 007729C9    add         eax,8
 007729CC    call        0043489C
 007729D1    inc         edi
 007729D2    dec         ebx
>007729D3    jne         00772967
 007729D5    inc         dword ptr [esp+18]
 007729D9    dec         dword ptr [esp+24]
>007729DD    jne         0077292F
 007729E3    mov         eax,dword ptr [ebp+20]
 007729E6    mov         eax,dword ptr [eax+8]
 007729E9    sub         eax,1
>007729EC    jno         007729F3
 007729EE    call        @IntOver
 007729F3    test        eax,eax
>007729F5    jl          00772AE8
 007729FB    inc         eax
 007729FC    mov         dword ptr [esp+24],eax
 00772A00    mov         dword ptr [esp+1C],0
 00772A08    mov         ebx,dword ptr [ebp+20]
 00772A0B    lea         eax,[ebx+8]
 00772A0E    mov         edx,dword ptr [esp+1C]
 00772A12    call        00434534
 00772A17    mov         eax,dword ptr [ebx+20]
 00772A1A    mov         edx,dword ptr [esp+1C]
 00772A1E    mov         eax,dword ptr [eax+edx*4]
 00772A21    mov         dword ptr [esp+10],eax
 00772A25    mov         eax,dword ptr [esp+10]
 00772A29    mov         eax,dword ptr [eax+1C]
 00772A2C    mov         ebx,dword ptr [eax+8]
 00772A2F    sub         ebx,1
>00772A32    jno         00772A39
 00772A34    call        @IntOver
 00772A39    test        ebx,ebx
>00772A3B    jl          00772ADA
 00772A41    inc         ebx
 00772A42    xor         edi,edi
 00772A44    mov         eax,dword ptr [esp+10]
 00772A48    mov         esi,dword ptr [eax+1C]
 00772A4B    lea         eax,[esi+8]
 00772A4E    mov         edx,edi
 00772A50    call        00434534
 00772A55    mov         eax,dword ptr [esi+20]
 00772A58    mov         esi,dword ptr [eax+edi*4]
 00772A5B    lea         edx,[esp+34]
 00772A5F    mov         eax,esi
 00772A61    mov         ecx,dword ptr [eax]
 00772A63    call        dword ptr [ecx+28]
 00772A66    lea         eax,[esp+34]
 00772A6A    call        006959E8
 00772A6F    test        al,al
>00772A71    jne         00772AB9
 00772A73    lea         edx,[esp+34]
 00772A77    mov         eax,esi
 00772A79    mov         ecx,dword ptr [eax]
 00772A7B    call        dword ptr [ecx+28]
 00772A7E    lea         eax,[esp+34]
 00772A82    call        006959F0
 00772A87    test        al,al
>00772A89    je          00772A91
 00772A8B    cmp         ebp,dword ptr [esp+4]
>00772A8F    je          00772AB9
 00772A91    lea         edx,[esp+34]
 00772A95    mov         eax,esi
 00772A97    mov         ecx,dword ptr [eax]
 00772A99    call        dword ptr [ecx+28]
 00772A9C    lea         edx,[esp+34]
 00772AA0    mov         eax,dword ptr [esp+8]
 00772AA4    cmp         eax,0FFFF
>00772AA9    jbe         00772AB0
 00772AAB    call        @BoundErr
 00772AB0    call        006959BC
 00772AB5    test        al,al
>00772AB7    je          00772AD2
 00772AB9    mov         eax,dword ptr [esp]
 00772ABC    mov         eax,dword ptr [eax+8]
 00772ABF    mov         eax,dword ptr [eax+0C]
 00772AC2    mov         dword ptr [esp+2C],esi
 00772AC6    lea         edx,[esp+2C]
 00772ACA    add         eax,8
 00772ACD    call        0043489C
 00772AD2    inc         edi
 00772AD3    dec         ebx
>00772AD4    jne         00772A44
 00772ADA    inc         dword ptr [esp+1C]
 00772ADE    dec         dword ptr [esp+24]
>00772AE2    jne         00772A08
 00772AE8    inc         dword ptr [esp+14]
 00772AEC    dec         dword ptr [esp+20]
>00772AF0    jne         007728AB
 00772AF6    add         esp,0B8
 00772AFC    pop         ebp
 00772AFD    pop         edi
 00772AFE    pop         esi
 00772AFF    pop         ebx
 00772B00    ret
*}
end;

//00772B04
procedure TDCCtrlObjects.GetInputsOfOutputCG(OutPanel:TDCPanel; OutCG:Integer);
begin
{*
 00772B04    push        ebx
 00772B05    push        esi
 00772B06    push        edi
 00772B07    push        ebp
 00772B08    add         esp,0FFFFFFDC
 00772B0B    mov         dword ptr [esp+8],ecx
 00772B0F    mov         dword ptr [esp+4],edx
 00772B13    mov         dword ptr [esp],eax
 00772B16    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 00772B1B    mov         eax,dword ptr [eax+0C]
 00772B1E    mov         eax,dword ptr [eax+8]
 00772B21    sub         eax,1
>00772B24    jno         00772B2B
 00772B26    call        @IntOver
 00772B2B    test        eax,eax
>00772B2D    jl          00772C59
 00772B33    inc         eax
 00772B34    mov         dword ptr [esp+18],eax
 00772B38    mov         dword ptr [esp+10],0
 00772B40    mov         eax,[0090378C];gvar_0090378C:TDCSystem
 00772B45    mov         ebx,dword ptr [eax+0C]
 00772B48    lea         eax,[ebx+8]
 00772B4B    mov         edx,dword ptr [esp+10]
 00772B4F    call        00434534
 00772B54    mov         eax,dword ptr [ebx+20]
 00772B57    mov         edx,dword ptr [esp+10]
 00772B5B    mov         ebp,dword ptr [eax+edx*4]
 00772B5E    cmp         ebp,dword ptr [esp+4]
>00772B62    je          00772B95
 00772B64    mov         eax,dword ptr [ebp+8]
 00772B67    test        eax,eax
>00772B69    jle         00772B88
 00772B6B    sub         eax,1
>00772B6E    jno         00772B75
 00772B70    call        @IntOver
 00772B75    mov         edx,dword ptr [esp+4]
 00772B79    cmp         eax,1F
>00772B7C    ja          00772B82
 00772B7E    bt          dword ptr [edx+0C],eax
>00772B82    jae         00772C4B
 00772B88    mov         eax,dword ptr [ebp+10]
 00772B8B    cmp         eax,dword ptr [esp+8]
>00772B8F    jge         00772C4B
 00772B95    mov         eax,dword ptr [ebp+20]
 00772B98    mov         eax,dword ptr [eax+8]
 00772B9B    sub         eax,1
>00772B9E    jno         00772BA5
 00772BA0    call        @IntOver
 00772BA5    test        eax,eax
>00772BA7    jl          00772C4B
 00772BAD    inc         eax
 00772BAE    mov         dword ptr [esp+1C],eax
 00772BB2    mov         dword ptr [esp+14],0
 00772BBA    mov         ebx,dword ptr [ebp+20]
 00772BBD    lea         eax,[ebx+8]
 00772BC0    mov         edx,dword ptr [esp+14]
 00772BC4    call        00434534
 00772BC9    mov         eax,dword ptr [ebx+20]
 00772BCC    mov         edx,dword ptr [esp+14]
 00772BD0    mov         eax,dword ptr [eax+edx*4]
 00772BD3    mov         dword ptr [esp+0C],eax
 00772BD7    mov         eax,dword ptr [esp+0C]
 00772BDB    mov         eax,dword ptr [eax+1C]
 00772BDE    mov         edi,dword ptr [eax+8]
 00772BE1    sub         edi,1
>00772BE4    jno         00772BEB
 00772BE6    call        @IntOver
 00772BEB    test        edi,edi
>00772BED    jl          00772C3D
 00772BEF    inc         edi
 00772BF0    xor         ebx,ebx
 00772BF2    mov         eax,dword ptr [esp+0C]
 00772BF6    mov         esi,dword ptr [eax+1C]
 00772BF9    lea         eax,[esi+8]
 00772BFC    mov         edx,ebx
 00772BFE    call        00434534
 00772C03    mov         eax,dword ptr [esi+20]
 00772C06    mov         esi,dword ptr [eax+ebx*4]
 00772C09    mov         eax,dword ptr [esp+8]
 00772C0D    push        eax
 00772C0E    mov         ecx,esi
 00772C10    mov         edx,ebp
 00772C12    mov         eax,dword ptr [esp+4]
 00772C16    call        TDCCtrlObjects.InputControlsCGroup
 00772C1B    dec         eax
 00772C1C    sub         al,0A
>00772C1E    jae         00772C39
 00772C20    mov         eax,dword ptr [esp]
 00772C23    mov         eax,dword ptr [eax+4]
 00772C26    mov         eax,dword ptr [eax+0C]
 00772C29    mov         dword ptr [esp+20],esi
 00772C2D    lea         edx,[esp+20]
 00772C31    add         eax,8
 00772C34    call        0043489C
 00772C39    inc         ebx
 00772C3A    dec         edi
>00772C3B    jne         00772BF2
 00772C3D    inc         dword ptr [esp+14]
 00772C41    dec         dword ptr [esp+1C]
>00772C45    jne         00772BBA
 00772C4B    inc         dword ptr [esp+10]
 00772C4F    dec         dword ptr [esp+18]
>00772C53    jne         00772B40
 00772C59    add         esp,24
 00772C5C    pop         ebp
 00772C5D    pop         edi
 00772C5E    pop         esi
 00772C5F    pop         ebx
 00772C60    ret
*}
end;

//00772C64
procedure TDCCtrlObjects.GetOutputsOfOutputCG(OutPanel:TDCPanel; OutCG:Integer);
begin
{*
 00772C64    push        ebx
 00772C65    push        esi
 00772C66    push        edi
 00772C67    push        ebp
 00772C68    add         esp,0FFFFFF58
 00772C6E    mov         ebp,ecx
 00772C70    mov         dword ptr [esp+4],edx
 00772C74    mov         dword ptr [esp],eax
 00772C77    mov         eax,dword ptr [esp+4]
 00772C7B    mov         eax,dword ptr [eax+1C]
 00772C7E    mov         eax,dword ptr [eax+8]
 00772C81    sub         eax,1
>00772C84    jno         00772C8B
 00772C86    call        @IntOver
 00772C8B    test        eax,eax
>00772C8D    jl          00772D50
 00772C93    inc         eax
 00772C94    mov         dword ptr [esp+18],eax
 00772C98    mov         dword ptr [esp+10],0
 00772CA0    mov         eax,dword ptr [esp+4]
 00772CA4    mov         ebx,dword ptr [eax+1C]
 00772CA7    lea         eax,[ebx+8]
 00772CAA    mov         edx,dword ptr [esp+10]
 00772CAE    call        00434534
 00772CB3    mov         eax,dword ptr [ebx+20]
 00772CB6    mov         edx,dword ptr [esp+10]
 00772CBA    mov         eax,dword ptr [eax+edx*4]
 00772CBD    mov         dword ptr [esp+8],eax
 00772CC1    mov         eax,dword ptr [esp+8]
 00772CC5    mov         eax,dword ptr [eax+1C]
 00772CC8    mov         ebx,dword ptr [eax+8]
 00772CCB    sub         ebx,1
>00772CCE    jno         00772CD5
 00772CD0    call        @IntOver
 00772CD5    test        ebx,ebx
>00772CD7    jl          00772D42
 00772CD9    inc         ebx
 00772CDA    xor         edi,edi
 00772CDC    mov         eax,dword ptr [esp+8]
 00772CE0    mov         esi,dword ptr [eax+1C]
 00772CE3    lea         eax,[esi+8]
 00772CE6    mov         edx,edi
 00772CE8    call        00434534
 00772CED    mov         eax,dword ptr [esi+20]
 00772CF0    mov         esi,dword ptr [eax+edi*4]
 00772CF3    lea         edx,[esi+28]
 00772CF6    mov         eax,ebp
 00772CF8    cmp         eax,0FFFF
>00772CFD    jbe         00772D04
 00772CFF    call        @BoundErr
 00772D04    call        006959BC
 00772D09    test        al,al
>00772D0B    jne         00772D25
 00772D0D    lea         eax,[esi+28]
 00772D10    call        006959E8
 00772D15    test        al,al
>00772D17    jne         00772D25
 00772D19    lea         eax,[esi+28]
 00772D1C    call        006959F0
 00772D21    test        al,al
>00772D23    je          00772D3E
 00772D25    mov         eax,dword ptr [esp]
 00772D28    mov         eax,dword ptr [eax+8]
 00772D2B    mov         eax,dword ptr [eax+0C]
 00772D2E    mov         dword ptr [esp+1C],esi
 00772D32    lea         edx,[esp+1C]
 00772D36    add         eax,8
 00772D39    call        0043489C
 00772D3E    inc         edi
 00772D3F    dec         ebx
>00772D40    jne         00772CDC
 00772D42    inc         dword ptr [esp+10]
 00772D46    dec         dword ptr [esp+18]
>00772D4A    jne         00772CA0
 00772D50    mov         eax,dword ptr [esp+4]
 00772D54    mov         eax,dword ptr [eax+20]
 00772D57    mov         eax,dword ptr [eax+8]
 00772D5A    sub         eax,1
>00772D5D    jno         00772D64
 00772D5F    call        @IntOver
 00772D64    test        eax,eax
>00772D66    jl          00772E55
 00772D6C    inc         eax
 00772D6D    mov         dword ptr [esp+18],eax
 00772D71    mov         dword ptr [esp+14],0
 00772D79    mov         eax,dword ptr [esp+4]
 00772D7D    mov         ebx,dword ptr [eax+20]
 00772D80    lea         eax,[ebx+8]
 00772D83    mov         edx,dword ptr [esp+14]
 00772D87    call        00434534
 00772D8C    mov         eax,dword ptr [ebx+20]
 00772D8F    mov         edx,dword ptr [esp+14]
 00772D93    mov         eax,dword ptr [eax+edx*4]
 00772D96    mov         dword ptr [esp+0C],eax
 00772D9A    mov         eax,dword ptr [esp+0C]
 00772D9E    mov         eax,dword ptr [eax+1C]
 00772DA1    mov         ebx,dword ptr [eax+8]
 00772DA4    sub         ebx,1
>00772DA7    jno         00772DAE
 00772DA9    call        @IntOver
 00772DAE    test        ebx,ebx
>00772DB0    jl          00772E47
 00772DB6    inc         ebx
 00772DB7    xor         edi,edi
 00772DB9    mov         eax,dword ptr [esp+0C]
 00772DBD    mov         esi,dword ptr [eax+1C]
 00772DC0    lea         eax,[esi+8]
 00772DC3    mov         edx,edi
 00772DC5    call        00434534
 00772DCA    mov         eax,dword ptr [esi+20]
 00772DCD    mov         esi,dword ptr [eax+edi*4]
 00772DD0    lea         edx,[esp+24]
 00772DD4    mov         eax,esi
 00772DD6    mov         ecx,dword ptr [eax]
 00772DD8    call        dword ptr [ecx+28]
 00772DDB    lea         edx,[esp+24]
 00772DDF    mov         eax,ebp
 00772DE1    cmp         eax,0FFFF
>00772DE6    jbe         00772DED
 00772DE8    call        @BoundErr
 00772DED    call        006959BC
 00772DF2    test        al,al
>00772DF4    jne         00772E26
 00772DF6    lea         edx,[esp+24]
 00772DFA    mov         eax,esi
 00772DFC    mov         ecx,dword ptr [eax]
 00772DFE    call        dword ptr [ecx+28]
 00772E01    lea         eax,[esp+24]
 00772E05    call        006959E8
 00772E0A    test        al,al
>00772E0C    jne         00772E26
 00772E0E    lea         edx,[esp+24]
 00772E12    mov         eax,esi
 00772E14    mov         ecx,dword ptr [eax]
 00772E16    call        dword ptr [ecx+28]
 00772E19    lea         eax,[esp+24]
 00772E1D    call        006959F0
 00772E22    test        al,al
>00772E24    je          00772E3F
 00772E26    mov         eax,dword ptr [esp]
 00772E29    mov         eax,dword ptr [eax+8]
 00772E2C    mov         eax,dword ptr [eax+0C]
 00772E2F    mov         dword ptr [esp+20],esi
 00772E33    lea         edx,[esp+20]
 00772E37    add         eax,8
 00772E3A    call        0043489C
 00772E3F    inc         edi
 00772E40    dec         ebx
>00772E41    jne         00772DB9
 00772E47    inc         dword ptr [esp+14]
 00772E4B    dec         dword ptr [esp+18]
>00772E4F    jne         00772D79
 00772E55    add         esp,0A8
 00772E5B    pop         ebp
 00772E5C    pop         edi
 00772E5D    pop         esi
 00772E5E    pop         ebx
 00772E5F    ret
*}
end;

//00772E60
procedure TDCCtrlObjects.CollectInputsOutputsOfCGroup(APanel:TDCPanel; CtrlGroup:Integer; CtrlGroupKind:TCtrlGroupKind);
begin
{*
 00772E60    push        ebp
 00772E61    mov         ebp,esp
 00772E63    push        ebx
 00772E64    push        esi
 00772E65    push        edi
 00772E66    mov         edi,ecx
 00772E68    mov         esi,edx
 00772E6A    mov         ebx,eax
 00772E6C    mov         eax,ebx
 00772E6E    call        TDCCtrlObjects.Clear
 00772E73    movzx       eax,byte ptr [ebp+8]
 00772E77    sub         al,1
>00772E79    jb          00772E7F
>00772E7B    je          00772E97
>00772E7D    jmp         00772EAD
 00772E7F    mov         ecx,edi
 00772E81    mov         edx,esi
 00772E83    mov         eax,ebx
 00772E85    call        TDCCtrlObjects.GetInputsOfInputCG
 00772E8A    mov         ecx,edi
 00772E8C    mov         edx,esi
 00772E8E    mov         eax,ebx
 00772E90    call        TDCCtrlObjects.GetOutputsOfInputCG
>00772E95    jmp         00772EAD
 00772E97    mov         ecx,edi
 00772E99    mov         edx,esi
 00772E9B    mov         eax,ebx
 00772E9D    call        TDCCtrlObjects.GetInputsOfOutputCG
 00772EA2    mov         ecx,edi
 00772EA4    mov         edx,esi
 00772EA6    mov         eax,ebx
 00772EA8    call        TDCCtrlObjects.GetOutputsOfOutputCG
 00772EAD    pop         edi
 00772EAE    pop         esi
 00772EAF    pop         ebx
 00772EB0    pop         ebp
 00772EB1    ret         4
*}
end;

Initialization
Finalization
//00772EB4
{*
 00772EB4    push        ebp
 00772EB5    mov         ebp,esp
 00772EB7    xor         eax,eax
 00772EB9    push        ebp
 00772EBA    push        772F18
 00772EBF    push        dword ptr fs:[eax]
 00772EC2    mov         dword ptr fs:[eax],esp
 00772EC5    inc         dword ptr ds:[903798]
>00772ECB    jne         00772F0A
 00772ECD    mov         eax,7C3F80;^'IoUnit'
 00772ED2    call        @UStrClr
 00772ED7    mov         eax,7C3F84;^'Input'
 00772EDC    call        @UStrClr
 00772EE1    mov         eax,7C3F88;^'Output'
 00772EE6    call        @UStrClr
 00772EEB    mov         eax,7C3F8C;^'Loop '
 00772EF0    call        @UStrClr
 00772EF5    mov         eax,7C3F90;gvar_007C3F90:array[4] of ?
 00772EFA    mov         ecx,4
 00772EFF    mov         edx,dword ptr ds:[4012B8];string
 00772F05    call        @FinalizeArray
 00772F0A    xor         eax,eax
 00772F0C    pop         edx
 00772F0D    pop         ecx
 00772F0E    pop         ecx
 00772F0F    mov         dword ptr fs:[eax],edx
 00772F12    push        772F1F
 00772F17    ret
>00772F18    jmp         @HandleFinally
>00772F1D    jmp         00772F17
 00772F1F    pop         ebp
 00772F20    ret
*}
end.