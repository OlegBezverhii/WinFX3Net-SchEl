//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit23;

interface

uses
  SysUtils, Classes, System.Generics.Defaults, System.Generics.Collections, System.Actions, System.Generics.Collections, System.Rtti, System.Generics.Defaults, System.Classes, System.Generics.Collections;

type
  TComparer<System.IInterface> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function IInterface>.Default:IComparer<System.IInterface>;//004A7F74
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TCollectionItem> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Classes.TCollectionItem>.Default:IComparer<System.Classes.TCollectionItem>;//004A7F94
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.TObject> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function TObject>.Default:IComparer<System.TObject>;//004A7FB4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.arrayofT = array of TPair<System.Integer,System.Classes.IInterfaceList>;
//elSize = 8;
  TCollectionNotifyEvent<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>> = procedure(Sender:TObject; const Item:TPair<System.Integer,System.Classes.IInterfaceList>; Action:TCollectionNotification) of object;;
  TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.TEnumerator = class(TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>)
  published
    function Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.TEnumerator.MoveNext:Boolean;//004A8394
    constructor sub_004A8350(AList:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>);//004A8350
  public
    FList:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A8334
    procedure v4; virtual;//v4//004A8348
  end;
  TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>> = class(TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>)
  published
    procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Add(Value:TPair<System.Integer,System.Classes.IInterfaceList>);//004A8274
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Error(Msg:string; Data:NativeInt; ?:?);//004A823C
    procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator;//004A829C
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray(?:?);//004A8288
    constructor sub_004A8140(AComparer:IComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>);//004A8140
    constructor sub_004A80C8;//004A80C8
    destructor Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy();//004A81F0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//f10
    FArrayManager:TArrayManager<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//f18
    FItems:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//f28
    destructor Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy(); virtual;//004A81F0
    procedure v0; virtual;//v0//004A80A8
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray(?:?); virtual;//v4//004A8288
    //procedure v8(?:?); virtual;//v8//004A80B0
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A823C
  end;
  TList<System.Classes.IInterfaceList>.arrayofT = array of IInterfaceList;
//elSize = 4
//varType equivalent: varUnknown;
  TList<System.Classes.IInterfaceList>.TEnumerator = class(TEnumerator<System.Classes.IInterfaceList>)
  published
    function Classes.IInterfaceList>.TEnumerator.MoveNext:Boolean;//004A8714
    constructor sub_004A86D0(AList:TList<System.Classes.IInterfaceList>);//004A86D0
  public
    FList:TList<System.Classes.IInterfaceList>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A86B4
    procedure v4; virtual;//v4//004A86C8
  end;
  TList<System.Classes.IInterfaceList> = class(TEnumerable<System.Classes.IInterfaceList>)
  published
    procedure Classes.IInterfaceList>.Add(Value:IInterfaceList);//004A8610
    //procedure Classes.IInterfaceList>.Error(Msg:string; Data:NativeInt; ?:?);//004A85D8
    procedure Classes.IInterfaceList>.GetEnumerator;//004A8640
    //procedure Classes.IInterfaceList>.ToArray(?:?);//004A862C
    constructor sub_004A84DC(AComparer:IComparer<System.Classes.IInterfaceList>);//004A84DC
    constructor sub_004A8464;//004A8464
    destructor Classes.IInterfaceList>.Destroy();//004A858C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.IInterfaceList>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.IInterfaceList>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.IInterfaceList>;//f10
    FArrayManager:TArrayManager<System.Classes.IInterfaceList>;//f18
    FItems:TList<System.Classes.IInterfaceList>.arrayofT;//f20
    FComparer:IComparer<System.Classes.IInterfaceList>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.IInterfaceList>;//f28
    destructor Classes.IInterfaceList>.Destroy(); virtual;//004A858C
    procedure v0; virtual;//v0//004A8444
    //procedure Classes.IInterfaceList>.ToArray(?:?); virtual;//v4//004A862C
    //procedure v8(?:?); virtual;//v8//004A844C
    //procedure Classes.IInterfaceList>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A85D8
  end;
  TComparer<System.Classes.TBasicActionLink> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TBasicActionLink>.Default(?:?);//004A8734
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.arrayofT = array of TPair<System.string,System.Classes.TPersistentClass>;
//elSize = 8;
  TCollectionNotifyEvent<System.Classes.TPair<System.string,System.Classes.TPersistentClass>> = procedure(Sender:TObject; const Item:TPair<System.string,System.Classes.TPersistentClass>; Action:TCollectionNotification) of object;;
  TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.TEnumerator = class(TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>)
  published
    function Classes.TPair<System.string,System.Classes.TPersistentClass>>.TEnumerator.MoveNext:Boolean;//004A8AB4
    constructor sub_004A8A70(AList:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>);//004A8A70
  public
    FList:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A8A54
    procedure v4; virtual;//v4//004A8A68
  end;
  TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>> = class(TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>)
  published
    procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.Add(Value:TPair<System.string,System.Classes.TPersistentClass>);//004A8994
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.Error(Msg:string; Data:NativeInt; ?:?);//004A895C
    procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator;//004A89BC
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray(?:?);//004A89A8
    constructor sub_004A8860(AComparer:IComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>);//004A8860
    constructor sub_004A87E8;//004A87E8
    destructor Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy();//004A8910
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//f10
    FArrayManager:TArrayManager<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//f18
    FItems:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//f28
    destructor Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy(); virtual;//004A8910
    procedure v0; virtual;//v0//004A87C8
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray(?:?); virtual;//v4//004A89A8
    //procedure v8(?:?); virtual;//v8//004A87D0
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A895C
  end;
  TComparer<System.Classes.TPersistentClass> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TPersistentClass>.Default(?:?);//004A8AF4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  @TList`1.Pack$224$ActRec<System.Classes.TPersistentClass> = class(TInterfacedObject)
  public
    Self:TList<System.Classes.TPersistentClass>;//fC
  end;
  TComparer<System.Classes.TRegGroup> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TRegGroup>.Default(?:?);//004A8B34
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TIntConst> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TIntConst>.Default(?:?);//004A8B54
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TFindGlobalComponent> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TFindGlobalComponent>.Default(?:?);//004A8B74
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Generics.Collections.TList<System.Classes.TComponent>> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Generics.Collections.TList<System.Classes.TComponent>>.Default(?:?);//004A8B94
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TPropFixup> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TPropFixup>.Default(?:?);//004A8BB4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TPersistent> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TPersistent>.Default(?:?);//004A8BD4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TThread> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TThread>.Default(?:?);//004A8BF4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Default(?:?);//004A8CE0
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Integer> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Integer>.Default:IComparer<System.Integer>;//004A8D00
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.IInterfaceList> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.IInterfaceList>.Default(?:?);//004A8D20
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.Default(?:?);//004A8D40
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  EActionError = class(Exception)
  end;
  TStatusAction = (saNone, saTrivial, saDefault, saRequiredEmpty, saRequired, saValid, saInvalid, saWaiting, saWarning, saUnused, saCalculated, saError, saOther);
  TCustomShortCutList = class(TStringList)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function IndexOfShortCut(ShortCut:TShortCut):Integer;//004B1638
  end;
  TContainedAction = class(TBasicAction)
  published
    procedure DoHint(var HintStr:string);//004B20AC
    function Suspended:Boolean;//004B1FBC
    procedure GetParentComponent;//004B1980
    destructor Destroy();//004B16C8
    constructor Create;//004B167C
    procedure HasParent;//004B19C8
    procedure SetParentComponent(AParent:TComponent);//004B1990
  public
    FCategory:string;//f60
    FDisableIfNoHandler:Boolean;//f61
    FAutoCheck:Boolean;//f62
    FActionList:TContainedActionList;//f64
    FSavedEnabledState:Boolean;//f68
    FDisableIfNoHandler:Boolean;//f69
    FAutoCheck:Boolean;//f6A
    FCaption:string;//f6C
    FChecked:Boolean;//f70
    FEnabled:Boolean;//f71
    FGroupIndex:Integer;//f74
    FHelpContext:THelpContext;//f78
    FHelpKeyword:string;//f7C
    FHelpType:THelpType;//f80
    FShortCut:TShortCut;//f82
    FHint:string;//f84
    FVisible:Boolean;//f88
    FShortCut:TShortCut;//f8A
    FSecondaryShortCuts:TCustomShortCutList;//f8C
    FStatusAction:TStatusAction;//f8D
    FImageIndex:TImageIndex;//f90
    FChecking:Boolean;//f94
    FStatusAction:TStatusAction;//f95
    FOnHint:THintEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    destructor Destroy(); virtual;//004B16C8
    procedure AssignTo(Dest:Classes.TPersistent); virtual;//v0//004B1718
    procedure ReadState(Reader:Classes.TReader); virtual;//v18//004B19D8
    //procedure v28(?:?); virtual;//v28//004B1B24
    constructor Create; virtual;//v3C//004B167C
    function Suspended:Boolean; virtual;//v4C//004B1FBC
    //function v60:?; virtual;//v60//004B2034
    procedure v64; virtual;//v64//004B19BC
    //procedure v68(?:?); virtual;//v68//004B1A60
    procedure SetCaption(Value:string); virtual;//v6C//004B1ABC
    //procedure v70(?:?); virtual;//v70//004B1B74
    procedure SetEnabled(Value:Boolean); virtual;//v74//004B1C80
    //procedure v78(?:?); virtual;//v78//004B1CF8
    procedure SetHelpContext(Value:THelpContext); virtual;//v7C//004B1DC8
    //procedure v80(?:?); virtual;//v80//004B1E24
    //procedure v84(?:?); virtual;//v84//004B1E8C
    procedure SetHint(Value:string); virtual;//v88//004B1EEC
    procedure SetVisible(Value:Boolean); virtual;//v8C//004B1F5C
    procedure SetShortCut(Value:TShortCut); virtual;//v90//004B1FD0
    //procedure v94(?:?); virtual;//v94//004B20D4
    //procedure v98(?:?); virtual;//v98//004B2134
    procedure DoHint(var HintStr:string); dynamic;//004B20AC
    procedure HasParent; dynamic;//004B19C8
    procedure GetParentComponent; dynamic;//004B1980
    procedure SetParentComponent(AParent:TComponent); dynamic;//004B1990
    procedure SetActionList(AActionList:TContainedActionList);//004B1A0C
    procedure SetCategory(Value:string);//004B1A34
  end;
  TContainedActionLink = class(TBasicActionLink)
  public
    procedure DefaultIsLinked(var Result:Boolean); virtual;//v20//004B2948
    function IsCaptionLinked:Boolean; virtual;//v24//004B2964
    function IsCheckedLinked:Boolean; virtual;//v28//004B2974
    function IsEnabledLinked:Boolean; virtual;//v2C//004B2984
    function IsGroupIndexLinked:Boolean; virtual;//v30//004B2994
    function IsHelpContextLinked:Boolean; virtual;//v34//004B29A4
    function IsHelpLinked:Boolean; virtual;//v38//004B29B4
    function IsHintLinked:Boolean; virtual;//v3C//004B29C4
    function IsImageIndexLinked:Boolean; virtual;//v40//004B29D4
    function IsShortCutLinked:Boolean; virtual;//v44//004B29E4
    function IsStatusActionLinked:Boolean; virtual;//v48//004B29F4
    function IsVisibleLinked:Boolean; virtual;//v4C//004B2A04
    procedure v50; virtual;//v50//004B2A14
    procedure v54; virtual;//v54//004B2A18
    procedure v58; virtual;//v58//004B2A1C
    procedure v5C; virtual;//v5C//004B2A20
    procedure v60; virtual;//v60//004B2A24
    procedure v64; virtual;//v64//004B2A28
    procedure v68; virtual;//v68//004B2A2C
    procedure v6C; virtual;//v6C//004B2A30
    procedure v70; virtual;//v70//004B2A34
    procedure v74; virtual;//v74//004B2A38
    procedure v78; virtual;//v78//004B2A3C
    procedure v7C; virtual;//v7C//004B2A40
    procedure v80; virtual;//v80//004B2A44
  end;
  TActionListState = (asNormal, asSuspended, asSuspendedEnabled);
  TActionListEnumerator = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FIndex:Integer;//f4
    FActionList:TContainedActionList;//f8
    constructor Create;//004A2AFC
    function GetCurrent:TContainedAction;//004B2198
  end;
  TEnumActionListEvent = procedure(const Action:TContainedAction; var Done:Boolean) of object;;
  TContainedActionList = class(TComponent)
  published
    function UpdateAction(Action:TBasicAction):Boolean;//004B2480
    function GetAction(Index:Integer):TContainedAction;//004B2538
    constructor Create(AOwner:TComponent);//004B21A4
    destructor Destroy();//004B21EC
    procedure ExecuteAction(Action:TBasicAction);//004B23C8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);//004B25FC
  public
    FActions:TList<System.Actions.TContainedAction>;//f40
    FOnChange:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnExecute:TActionEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FOnUpdate:TActionEvent;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    FState:TActionListState;//f60
    FOnStateChange:TNotifyEvent;//f68
    f6A:word;//f6A
    f6C:dword;//f6C
    destructor Destroy(); virtual;//004B21EC
    procedure Notification(AComponent:TComponent; Operation:Classes.TOperation); virtual;//v14//004B2728
    constructor Create(AOwner:TComponent); virtual;//v3C//004B21A4
    function UpdateAction(Action:TBasicAction):Boolean; virtual;//v40//004B2480
    procedure v44; virtual;//v44//004B2384
    //procedure v48(?:?); virtual;//v48//004B27E0
    procedure ExecuteAction(Action:TBasicAction); dynamic;//004B23C8
    //procedure sub_0049ECB8(?:?; ?:?); dynamic;//004B279C
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?); dynamic;//004B25FC
    procedure RemoveAction(const Action:TContainedAction);//004B2760
  end;
  TArray<System.Actions.TContainedAction> = array of TContainedAction;
//elSize = 4;
  TEnumerator<System.Actions.TContainedAction> = class(TObject)
  published
    function Actions.TContainedAction>.MoveNext:Boolean;//004B2B44
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Actions.TContainedAction> = class(TObject)
  published
    //procedure Actions.TContainedAction>.ToArray(?:?);//004B2A90
    function Actions.TContainedAction>.GetEnumerator:TEnumerator<System.Actions.TContainedAction>;//004B2A88
    destructor Actions.TContainedAction>.Destroy();//004B2A64
  public
    destructor Actions.TContainedAction>.Destroy(); virtual;//004B2A64
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Actions.TContainedAction>.ToArray(?:?); virtual;//v4//004B2A90
  end;
  TList<System.Actions.TContainedAction>.arrayofT = array of TContainedAction;
//elSize = 4;
  TCollectionNotifyEvent<System.Actions.TContainedAction> = procedure(Sender:TObject; const Item:TContainedAction; Action:TCollectionNotification) of object;;
  TList<System.Actions.TContainedAction>.TEnumerator = class(TEnumerator<System.Actions.TContainedAction>)
  published
    function Actions.TContainedAction>.TEnumerator.MoveNext:Boolean;//004B2E2C
    constructor sub_004B2DE8(AList:TList<System.Actions.TContainedAction>);//004B2DE8
  public
    FList:TList<System.Actions.TContainedAction>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004B2DD8
    procedure v4; virtual;//v4//004B2DE0
  end;
  TList<System.Actions.TContainedAction> = class(TEnumerable<System.Actions.TContainedAction>)
  published
    procedure Actions.TContainedAction>.Add(Value:TContainedAction);//004B2D88
    //procedure Actions.TContainedAction>.Error(Msg:string; Data:NativeInt; ?:?);//004B2D50
    procedure Actions.TContainedAction>.GetEnumerator;//004B2DAC
    //procedure Actions.TContainedAction>.ToArray(?:?);//004B2D98
    constructor sub_004B2C54(AComparer:IComparer<System.Actions.TContainedAction>);//004B2C54
    constructor sub_004B2BDC;//004B2BDC
    destructor Actions.TContainedAction>.Destroy();//004B2D04
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Actions.TContainedAction>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Actions.TContainedAction>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Actions.TContainedAction>;//f10
    FArrayManager:TArrayManager<System.Actions.TContainedAction>;//f18
    FItems:TList<System.Actions.TContainedAction>.arrayofT;//f20
    FComparer:IComparer<System.Actions.TContainedAction>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Actions.TContainedAction>;//f28
    destructor Actions.TContainedAction>.Destroy(); virtual;//004B2D04
    procedure v0; virtual;//v0//004B2BBC
    //procedure Actions.TContainedAction>.ToArray(?:?); virtual;//v4//004B2D98
    //procedure v8(?:?); virtual;//v8//004B2BC4
    //procedure Actions.TContainedAction>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004B2D50
  end;
    constructor IInterface>.Create();//004A25DC
    destructor IInterface>.Destroy();//004A2634
    function IInterface>.LockList:TList<System.IInterface>;//004A26B0
    procedure IInterface>.UnlockList;//004A26D8
    destructor IInterface>.Destroy();//004A26E4
    function IInterface>.GetEnumerator:TEnumerator<System.IInterface>;//004A2708
    //procedure IInterface>.ToArray(?:?);//004A2710
    function IInterface>.MoveNext:Boolean;//004A27F8
    procedure sub_004A2848(?:TList<System.IInterface>);//004A2848
    //procedure sub_004A2854(?:?; ?:?);//004A2854
    //procedure sub_004A2860(?:?; ?:?; ?:?);//004A2860
    procedure sub_004A2870;//004A2870
    //procedure sub_004A2878(?:?);//004A2878
    constructor IInterface>.Create();//004A2890
    constructor sub_004A2908(AComparer:IComparer<System.IInterface>);//004A2908
    destructor IInterface>.Destroy();//004A29B8
    procedure IInterface>.Error(Msg:string; Data:NativeInt);//004A2A04
    procedure IInterface>.Add(Value:IInterface);//004A2A3C
    //procedure IInterface>.ToArray(?:?);//004A2A58
    function IInterface>.GetEnumerator:TList<System.IInterface>.TEnumerator;//004A2A6C
    //procedure sub_004A2A7C(?:TList<System.IInterface>.TEnumerator; ?:?);//004A2A7C
    //procedure sub_004A2AE0(?:?);//004A2AE0
    procedure sub_004A2AF4;//004A2AF4
    function IInterface>.TEnumerator.MoveNext:Boolean;//004A2B40
    destructor Classes.TCollectionItem>.Destroy();//004A2B60
    function Classes.TCollectionItem>.GetEnumerator:TEnumerator<System.Classes.TCollectionItem>;//004A2B84
    //procedure Classes.TCollectionItem>.ToArray(?:?);//004A2B8C
    function Classes.TCollectionItem>.MoveNext:Boolean;//004A2C40
    procedure sub_004A2C90(?:TList<System.Classes.TCollectionItem>);//004A2C90
    //procedure sub_004A2C9C(?:?; ?:?);//004A2C9C
    //procedure sub_004A2CA8(?:?; ?:?; ?:?);//004A2CA8
    procedure sub_004A2CB8;//004A2CB8
    //procedure sub_004A2CC0(?:?);//004A2CC0
    constructor Classes.TCollectionItem>.Create();//004A2CD8
    constructor sub_004A2D50(AComparer:IComparer<System.Classes.TCollectionItem>);//004A2D50
    destructor Classes.TCollectionItem>.Destroy();//004A2E00
    procedure Classes.TCollectionItem>.Error(Msg:string; Data:NativeInt);//004A2E4C
    procedure Classes.TCollectionItem>.Add(Value:TCollectionItem);//004A2E84
    //procedure Classes.TCollectionItem>.ToArray(?:?);//004A2E94
    function Classes.TCollectionItem>.GetEnumerator:TList<System.Classes.TCollectionItem>.TEnumerator;//004A2EA8
    //function sub_004A2EB8(?:?):?;//004A2EB8
    procedure sub_004A2ED4;//004A2ED4
    procedure sub_004A2EDC;//004A2EDC
    constructor Actions.TContainedAction>.TEnumerator.Create;//004A2EE4
    function Classes.TCollectionItem>.TEnumerator.MoveNext:Boolean;//004A2F28
    destructor TObject>.Destroy();//004A2F48
    function TObject>.GetEnumerator:TEnumerator<System.TObject>;//004A2F6C
    //procedure TObject>.ToArray(?:?);//004A2F74
    function TObject>.MoveNext:Boolean;//004A3028
    procedure sub_004A3078(?:TList<System.TObject>);//004A3078
    //procedure sub_004A3084(?:?; ?:?);//004A3084
    //procedure sub_004A3090(?:?; ?:?; ?:?);//004A3090
    procedure sub_004A30A0;//004A30A0
    //procedure sub_004A30A8(?:?);//004A30A8
    constructor TObject>.Create();//004A30C0
    constructor sub_004A3138(AComparer:IComparer<System.TObject>);//004A3138
    destructor TObject>.Destroy();//004A31E8
    //procedure TObject>.Error(Msg:string; Data:NativeInt; ?:?);//004A3234
    procedure TObject>.Add(Value:TObject);//004A326C
    //procedure TObject>.ToArray(?:?);//004A327C
    function TObject>.GetEnumerator:TList<System.TObject>.TEnumerator;//004A3290
    //function sub_004A32A0(?:?):?;//004A32A0
    procedure sub_004A32BC;//004A32BC
    procedure sub_004A32C4;//004A32C4
    constructor Classes.TShortCut>.TEnumerator.Create;//004A32CC
    function TObject>.TEnumerator.MoveNext:Boolean;//004A3310
    destructor Classes.TComponent>.Destroy();//004A3330
    function Classes.TComponent>.GetEnumerator:TEnumerator<System.Classes.TComponent>;//004A3354
    function Classes.TComponent>.ToArray:TArray<System.Classes.TComponent>;//004A335C
    function Classes.TComponent>.MoveNext:Boolean;//004A3410
    procedure sub_004A3460(?:TList<System.Classes.TComponent>);//004A3460
    //procedure sub_004A346C(?:?; ?:?);//004A346C
    //procedure sub_004A3478(?:?; ?:?; ?:?);//004A3478
    procedure sub_004A3488;//004A3488
    //procedure sub_004A3490(?:?);//004A3490
    constructor Actions.TContainedAction>.Create();//004A34A8
    constructor sub_004A3520(AComparer:IComparer<System.Classes.TComponent>);//004A3520
    destructor Classes.TComponent>.Destroy();//004A35D0
    //procedure Classes.TComponent>.Error(Msg:string; Data:NativeInt; ?:?);//004A361C
    function Classes.TComponent>.Add(Value:TComponent):Integer;//004A3654
    procedure Classes.TComponent>.Sort(AComparer:IComparer<System.Classes.TComponent>);//004A3664
    function Classes.TComponent>.ToArray:TArray<System.Classes.TComponent>;//004A3690
    procedure Classes.TComponent>.GetEnumerator;//004A36A4
    //function sub_004A36B4(?:?):?;//004A36B4
    procedure sub_004A36D0;//004A36D0
    procedure sub_004A36D8;//004A36D8
    constructor sub_004A36E0(AList:TList<System.Classes.TComponent>);//004A36E0
    function Classes.TComponent>.TEnumerator.MoveNext:Boolean;//004A3724
    //procedure sub_004A3744(?:TDictionary<System; ?:?; ?:?);//004A3744
    destructor Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy();//004A3820
    function Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator:TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//004A3844
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray(?:?);//004A384C
    function Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.MoveNext:Boolean;//004A3944
    procedure sub_004A394C(?:TDictionary<System.Integer,System.Classes.IInterfaceList>; ?:Integer);//004A394C
    //procedure sub_004A398C(?:?; ?:?);//004A398C
    procedure Integer,System.Classes.IInterfaceList>.Grow;//004A3ABC
    function Integer,System.Classes.IInterfaceList>.GetBucketIndex(const Key:Integer; HashCode:Integer):Integer;//004A3AE4
    function Integer,System.Classes.IInterfaceList>.Hash(const Key:Integer):Integer;//004A3B90
    //procedure sub_004A3BB0(?:?; ?:?; ?:?; ?:?);//004A3BB0
    procedure Integer,System.Classes.IInterfaceList>.DoAdd(HashCode:Integer; Index:Integer; const Key:Integer; const Value:IInterfaceList);//004A3C00
    function Integer,System.Classes.IInterfaceList>.DoRemove(const Key:Integer; HashCode:Integer; Notification:Generics.Collections.TCollectionNotification):IInterfaceList;//004A3C50
    procedure sub_004A3DCC;//004A3DCC
    //procedure sub_004A3DD4(?:?);//004A3DD4
    //procedure sub_004A3DEC(?:?);//004A3DEC
    constructor Integer,System.Classes.IInterfaceList>.Create;//004A3E04
    constructor sub_004A3E3C(ACapacity:Integer; AComparer:IEqualityComparer<System.Integer>);//004A3E3C
    destructor Integer,System.Classes.IInterfaceList>.Destroy();//004A3EF4
    procedure Integer,System.Classes.IInterfaceList>.Add(Key:Integer; Value:IInterfaceList);//004A3F30
    procedure Integer,System.Classes.IInterfaceList>.Remove(Key:Integer);//004A3F94
    procedure Integer,System.Classes.IInterfaceList>.Clear;//004A3FEC
    function Integer,System.Classes.IInterfaceList>.TryGetValue(Key:Integer; Value:IInterfaceList):Boolean;//004A40B8
    //procedure Integer,System.Classes.IInterfaceList>.ToArray(?:?);//004A4114
    procedure Integer,System.Classes.IInterfaceList>.GetEnumerator;//004A416C
    //procedure sub_004A417C(?:TDictionary<System; ?:?; ?:?);//004A417C
    destructor Integer>.Destroy();//004A4208
    function Integer>.GetEnumerator:TEnumerator<System.Integer>;//004A422C
    function Integer>.ToArray:TArray<System.Integer>;//004A4234
    function Integer>.MoveNext:Boolean;//004A42E8
    procedure sub_004A42F8;//004A42F8
    constructor sub_004A4300(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4300
    procedure Integer,System.Classes.IInterfaceList>.TKeyCollection.GetEnumerator;//004A433C
    //procedure Integer,System.Classes.IInterfaceList>.TKeyCollection.ToArray(?:?);//004A434C
    //function sub_004A4364(?:?):?;//004A4364
    procedure sub_004A4378;//004A4378
    procedure sub_004A4380;//004A4380
    constructor sub_004A4388(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4388
    function Integer,System.Classes.IInterfaceList>.TKeyEnumerator.MoveNext:Boolean;//004A43CC
    //procedure sub_004A4404(?:TDictionary<System; ?:?; ?:?);//004A4404
    destructor Classes.IInterfaceList>.Destroy();//004A44C8
    function Classes.IInterfaceList>.GetEnumerator:TEnumerator<System.Classes.IInterfaceList>;//004A44EC
    //procedure Classes.IInterfaceList>.ToArray(?:?);//004A44F4
    function Classes.IInterfaceList>.MoveNext:Boolean;//004A45DC
    procedure sub_004A45EC;//004A45EC
    constructor sub_004A45F4(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A45F4
    procedure Integer,System.Classes.IInterfaceList>.TValueCollection.GetEnumerator;//004A4630
    //procedure Integer,System.Classes.IInterfaceList>.TValueCollection.ToArray(?:?);//004A4640
    //procedure sub_004A4658(?:TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueEnumerator; ?:?);//004A4658
    //procedure sub_004A4678(?:?);//004A4678
    procedure sub_004A468C;//004A468C
    constructor sub_004A4694(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4694
    function Integer,System.Classes.IInterfaceList>.TValueEnumerator.MoveNext:Boolean;//004A46D8
    //procedure sub_004A4710(?:TDictionary<System.Integer,System.Classes.IInterfaceList>.TPairEnumerator; ?:?);//004A4710
    //procedure sub_004A4744(?:?);//004A4744
    procedure sub_004A4758;//004A4758
    constructor sub_004A4760(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4760
    function Integer,System.Classes.IInterfaceList>.TPairEnumerator.MoveNext:Boolean;//004A47A4
    destructor Classes.TBasicActionLink>.Destroy();//004A47DC
    function Classes.TBasicActionLink>.GetEnumerator:TEnumerator<System.Classes.TBasicActionLink>;//004A4800
    //procedure Classes.TBasicActionLink>.ToArray(?:?);//004A4808
    function Classes.TBasicActionLink>.MoveNext:Boolean;//004A48BC
    procedure sub_004A490C(?:TList<System.Classes.TBasicActionLink>);//004A490C
    //procedure sub_004A4918(?:?; ?:?);//004A4918
    //procedure sub_004A4924(?:?; ?:?; ?:?);//004A4924
    procedure sub_004A4934;//004A4934
    //procedure sub_004A493C(?:?);//004A493C
    constructor sub_004A4954;//004A4954
    constructor sub_004A49CC(AComparer:IComparer<System.Classes.TBasicActionLink>);//004A49CC
    destructor Classes.TBasicActionLink>.Destroy();//004A4A7C
    //procedure Classes.TBasicActionLink>.Error(Msg:string; Data:NativeInt; ?:?);//004A4AC8
    procedure Classes.TBasicActionLink>.Add(Value:TBasicActionLink);//004A4B00
    //procedure Classes.TBasicActionLink>.ToArray(?:?);//004A4B10
    procedure Classes.TBasicActionLink>.GetEnumerator;//004A4B24
    //function sub_004A4B34(?:?):?;//004A4B34
    procedure sub_004A4B50;//004A4B50
    procedure sub_004A4B58;//004A4B58
    constructor sub_004A4B60(AList:TList<System.Classes.TBasicActionLink>);//004A4B60
    function Classes.TBasicActionLink>.TEnumerator.MoveNext:Boolean;//004A4BA4
    //procedure sub_004A4BC4(?:TDictionary<System; ?:?; ?:?);//004A4BC4
    destructor Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy();//004A4CA0
    function Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator:TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//004A4CC4
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray(?:?);//004A4CCC
    function Classes.TPair<System.string,System.Classes.TPersistentClass>>.MoveNext:Boolean;//004A4DC4
    procedure sub_004A4DCC(?:TDictionary<System.string,System.Classes.TPersistentClass>; ?:Integer);//004A4DCC
    //procedure sub_004A4E0C(?:?; ?:?);//004A4E0C
    procedure string,System.Classes.TPersistentClass>.Grow;//004A4F3C
    function string,System.Classes.TPersistentClass>.GetBucketIndex(const Key:AnsiString; HashCode:Integer):Integer;//004A4F64
    function string,System.Classes.TPersistentClass>.Hash(const Key:AnsiString):Integer;//004A5010
    //procedure sub_004A5030(?:?; ?:?; ?:?; ?:?);//004A5030
    procedure string,System.Classes.TPersistentClass>.DoAdd(HashCode:Integer; Index:Integer; const Key:AnsiString; const Value:TPersistentClass);//004A5080
    procedure sub_004A50D0;//004A50D0
    //procedure sub_004A50D8(?:?);//004A50D8
    //procedure sub_004A50F0(?:?);//004A50F0
    constructor string,System.Classes.TPersistentClass>.Create;//004A5108
    constructor sub_004A5140(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);//004A5140
    destructor string,System.Classes.TPersistentClass>.Destroy();//004A51F8
    procedure string,System.Classes.TPersistentClass>.Add(Key:string; Value:TPersistentClass);//004A5234
    procedure string,System.Classes.TPersistentClass>.Clear;//004A5298
    function string,System.Classes.TPersistentClass>.TryGetValue(Key:string; Value:TPersistentClass):Boolean;//004A5364
    function string,System.Classes.TPersistentClass>.ContainsValue(Value:TPersistentClass):Boolean;//004A53A4
    //procedure string,System.Classes.TPersistentClass>.ToArray(?:?);//004A5444
    function string,System.Classes.TPersistentClass>.GetEnumerator:TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator;//004A549C
    procedure sub_004A54B4;//004A54B4
    constructor sub_004A54BC(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A54BC
    procedure string,System.Classes.TPersistentClass>.TKeyCollection.GetEnumerator;//004A54F8
    //procedure string,System.Classes.TPersistentClass>.TKeyCollection.ToArray(?:?);//004A5508
    //procedure sub_004A5520(?:TDictionary<System.string,System.Classes.TPersistentClass>.TKeyEnumerator; ?:?);//004A5520
    //procedure sub_004A5540(?:?);//004A5540
    procedure sub_004A5554;//004A5554
    constructor sub_004A555C(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A555C
    function string,System.Classes.TPersistentClass>.TKeyEnumerator.MoveNext:Boolean;//004A55A0
    //procedure sub_004A55D8(?:TDictionary<System; ?:?; ?:?);//004A55D8
    destructor Classes.TPersistentClass>.Destroy();//004A5664
    function Classes.TPersistentClass>.GetEnumerator:TEnumerator<System.Classes.TPersistentClass>;//004A5688
    //procedure Classes.TPersistentClass>.ToArray(?:?);//004A5690
    function Classes.TPersistentClass>.MoveNext:Boolean;//004A5744
    procedure sub_004A5754;//004A5754
    constructor sub_004A575C(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A575C
    procedure string,System.Classes.TPersistentClass>.TValueCollection.GetEnumerator;//004A5798
    //procedure string,System.Classes.TPersistentClass>.TValueCollection.ToArray(?:?);//004A57A8
    //function sub_004A57C0(?:?):?;//004A57C0
    procedure sub_004A57D4;//004A57D4
    procedure sub_004A57DC;//004A57DC
    constructor sub_004A57E4(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A57E4
    function string,System.Classes.TPersistentClass>.TValueEnumerator.MoveNext:Boolean;//004A5828
    procedure sub_004A5860(?:TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator; ?:Byte);//004A5860
    //procedure sub_004A5894(?:?);//004A5894
    procedure sub_004A58A8;//004A58A8
    constructor sub_004A58B0(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A58B0
    function string,System.Classes.TPersistentClass>.TPairEnumerator.MoveNext:Boolean;//004A58F4
    procedure sub_004A5974(?:TList<System.Classes.TPersistentClass>);//004A5974
    //procedure sub_004A5980(?:?; ?:?);//004A5980
    //procedure sub_004A598C(?:?; ?:?; ?:?);//004A598C
    procedure sub_004A599C;//004A599C
    //procedure sub_004A59A4(?:?);//004A59A4
    constructor sub_004A59BC;//004A59BC
    constructor sub_004A5A34(AComparer:IComparer<System.Classes.TPersistentClass>);//004A5A34
    destructor Classes.TPersistentClass>.Destroy();//004A5AE4
    //procedure Classes.TPersistentClass>.Error(Msg:string; Data:NativeInt; ?:?);//004A5B30
    procedure Classes.TPersistentClass>.Add(Value:TPersistentClass);//004A5B68
    procedure Classes.TPersistentClass>.Pack;//004A5B78
    //procedure Classes.TPersistentClass>.ToArray(?:?);//004A5C00
    procedure Classes.TPersistentClass>.GetEnumerator;//004A5C14
    //function sub_004A5C24(?:?):?;//004A5C24
    procedure sub_004A5C40;//004A5C40
    procedure sub_004A5C48;//004A5C48
    constructor sub_004A5C50(AList:TList<System.Classes.TPersistentClass>);//004A5C50
    function Classes.TPersistentClass>.TEnumerator.MoveNext:Boolean;//004A5C94
    destructor Classes.TRegGroup>.Destroy();//004A5CB4
    function Classes.TRegGroup>.GetEnumerator:TEnumerator<System.Classes.TRegGroup>;//004A5CD8
    //procedure Classes.TRegGroup>.ToArray(?:?);//004A5CE0
    function Classes.TRegGroup>.MoveNext:Boolean;//004A5D94
    procedure sub_004A5DE4(?:TList<System.Classes.TRegGroup>);//004A5DE4
    //procedure sub_004A5DF0(?:?; ?:?);//004A5DF0
    //procedure sub_004A5DFC(?:?; ?:?; ?:?);//004A5DFC
    procedure sub_004A5E0C;//004A5E0C
    //procedure sub_004A5E14(?:?);//004A5E14
    constructor sub_004A5E2C;//004A5E2C
    constructor sub_004A5EA4(AComparer:IComparer<System.Classes.TRegGroup>);//004A5EA4
    destructor Classes.TRegGroup>.Destroy();//004A5F54
    //procedure Classes.TRegGroup>.Error(Msg:string; Data:NativeInt; ?:?);//004A5FA0
    procedure Classes.TRegGroup>.Add(Value:TRegGroup);//004A5FD8
    //procedure Classes.TRegGroup>.ToArray(?:?);//004A5FE8
    procedure Classes.TRegGroup>.GetEnumerator;//004A5FFC
    //function sub_004A600C(?:?):?;//004A600C
    procedure sub_004A6028;//004A6028
    procedure sub_004A6030;//004A6030
    constructor sub_004A6038(AList:TList<System.Classes.TRegGroup>);//004A6038
    function Classes.TRegGroup>.TEnumerator.MoveNext:Boolean;//004A607C
    //procedure sub_004A609C(?:?; ?:?);//004A609C
    constructor sub_004A60C8(AOwnsObjects:Boolean);//004A60C8
    constructor sub_004A610C;//004A610C
    destructor Classes.TIntConst>.Destroy();//004A6164
    procedure Classes.TIntConst>.Add(Item:TIntConst);//004A61E0
    function Classes.TIntConst>.LockList:TList<System.Classes.TIntConst>;//004A62E0
    procedure Classes.TIntConst>.UnlockList;//004A6308
    destructor Classes.TIntConst>.Destroy();//004A6314
    function Classes.TIntConst>.GetEnumerator:TEnumerator<System.Classes.TIntConst>;//004A6338
    //procedure Classes.TIntConst>.ToArray(?:?);//004A6340
    function Classes.TIntConst>.MoveNext:Boolean;//004A63F4
    procedure sub_004A6444(?:TList<System.Classes.TIntConst>);//004A6444
    //procedure sub_004A6450(?:?; ?:?);//004A6450
    //procedure sub_004A645C(?:?; ?:?; ?:?);//004A645C
    function Actions.TContainedAction>.ItemValue(const Item:TContainedAction):NativeInt;//004A646C
    procedure sub_004A6494;//004A6494
    //procedure sub_004A649C(?:?);//004A649C
    constructor sub_004A64B4;//004A64B4
    constructor sub_004A652C(AComparer:IComparer<System.Classes.TIntConst>);//004A652C
    destructor Classes.TIntConst>.Destroy();//004A65DC
    //procedure Classes.TIntConst>.Error(Msg:string; Data:NativeInt; ?:?);//004A6628
    procedure Classes.TIntConst>.Add(Value:TIntConst);//004A6660
    //procedure Classes.TIntConst>.ToArray(?:?);//004A6670
    procedure Classes.TIntConst>.GetEnumerator;//004A6684
    //function sub_004A6694(?:?):?;//004A6694
    procedure sub_004A66B0;//004A66B0
    procedure sub_004A66B8;//004A66B8
    constructor sub_004A66C0(AList:TList<System.Classes.TIntConst>);//004A66C0
    function Classes.TIntConst>.TEnumerator.MoveNext:Boolean;//004A6704
    destructor Classes.TFindGlobalComponent>.Destroy();//004A6724
    function Classes.TFindGlobalComponent>.GetEnumerator:TEnumerator<System.Classes.TFindGlobalComponent>;//004A6748
    //procedure Classes.TFindGlobalComponent>.ToArray(?:?);//004A6750
    function Classes.TFindGlobalComponent>.MoveNext:Boolean;//004A6804
    procedure sub_004A6854(?:TList<System.Classes.TFindGlobalComponent>);//004A6854
    //procedure sub_004A6860(?:?; ?:?);//004A6860
    //procedure sub_004A686C(?:?; ?:?; ?:?);//004A686C
    procedure sub_004A687C;//004A687C
    //procedure sub_004A6884(?:?);//004A6884
    constructor sub_004A689C;//004A689C
    constructor sub_004A6914(AComparer:IComparer<System.Classes.TFindGlobalComponent>);//004A6914
    destructor Classes.TFindGlobalComponent>.Destroy();//004A69C4
    //procedure Classes.TFindGlobalComponent>.Error(Msg:string; Data:NativeInt; ?:?);//004A6A10
    procedure Classes.TFindGlobalComponent>.Add(Value:TFindGlobalComponent);//004A6A48
    //procedure Classes.TFindGlobalComponent>.ToArray(?:?);//004A6A58
    procedure Classes.TFindGlobalComponent>.GetEnumerator;//004A6A6C
    //function sub_004A6A7C(?:?):?;//004A6A7C
    procedure sub_004A6A98;//004A6A98
    procedure sub_004A6AA0;//004A6AA0
    constructor sub_004A6AA8(AList:TList<System.Classes.TFindGlobalComponent>);//004A6AA8
    function Classes.TFindGlobalComponent>.TEnumerator.MoveNext:Boolean;//004A6AEC
    destructor Classes.TList<System.Classes.TComponent>>.Destroy();//004A6B0C
    function Classes.TList<System.Classes.TComponent>>.GetEnumerator:TEnumerator<System.Classes.TList<System.Classes.TComponent>>;//004A6B30
    //procedure Classes.TList<System.Classes.TComponent>>.ToArray(?:?);//004A6B38
    function Classes.TList<System.Classes.TComponent>>.MoveNext:Boolean;//004A6BEC
    procedure sub_004A6C3C(?:TList<System.Generics.Collections.TList<System.Classes.TComponent>>);//004A6C3C
    //procedure sub_004A6C48(?:?; ?:?);//004A6C48
    //procedure sub_004A6C54(?:?; ?:?; ?:?);//004A6C54
    procedure sub_004A6C64;//004A6C64
    //procedure sub_004A6C6C(?:?);//004A6C6C
    constructor sub_004A6C84;//004A6C84
    constructor sub_004A6CFC(AComparer:IComparer<System.Generics.Collections.TList<System.Classes.TComponent>>);//004A6CFC
    destructor Generics.Collections.TList<System.Classes.TComponent>>.Destroy();//004A6DAC
    //procedure Generics.Collections.TList<System.Classes.TComponent>>.Error(Msg:string; Data:NativeInt; ?:?);//004A6DF8
    procedure Generics.Collections.TList<System.Classes.TComponent>>.Add(Value:TList<System.Classes.TComponent>);//004A6E30
    //procedure Generics.Collections.TList<System.Classes.TComponent>>.ToArray(?:?);//004A6E40
    procedure Generics.Collections.TList<System.Classes.TComponent>>.GetEnumerator;//004A6E54
    //function sub_004A6E64(?:?):?;//004A6E64
    procedure sub_004A6E80;//004A6E80
    procedure sub_004A6E88;//004A6E88
    constructor sub_004A6E90(AList:TList<System.Generics.Collections.TList<System.Classes.TComponent>>);//004A6E90
    function Generics.Collections.TList<System.Classes.TComponent>>.TEnumerator.MoveNext:Boolean;//004A6ED4
    constructor sub_004A6EF4;//004A6EF4
    destructor Classes.TPropFixup>.Destroy();//004A6F4C
    procedure Classes.TPropFixup>.Add(Item:TPropFixup);//004A6FC8
    function Classes.TPropFixup>.LockList:TList<System.Classes.TPropFixup>;//004A70C8
    procedure Classes.TPropFixup>.UnlockList;//004A70F0
    destructor Classes.TPropFixup>.Destroy();//004A70FC
    function Classes.TPropFixup>.GetEnumerator:TEnumerator<System.Classes.TPropFixup>;//004A7120
    //procedure Classes.TPropFixup>.ToArray(?:?);//004A7128
    function Classes.TPropFixup>.MoveNext:Boolean;//004A71DC
    procedure sub_004A722C(?:TList<System.Classes.TPropFixup>);//004A722C
    //procedure sub_004A7238(?:?; ?:?);//004A7238
    //procedure sub_004A7244(?:?; ?:?; ?:?);//004A7244
    //function sub_004A7254(?:?; ?:TPropFixup):?;//004A7254
    procedure sub_004A727C;//004A727C
    //procedure sub_004A7284(?:?);//004A7284
    constructor sub_004A729C;//004A729C
    constructor sub_004A7314(AComparer:IComparer<System.Classes.TPropFixup>);//004A7314
    destructor Classes.TPropFixup>.Destroy();//004A73C4
    //procedure Classes.TPropFixup>.Error(Msg:string; Data:NativeInt; ?:?);//004A7410
    procedure Classes.TPropFixup>.Add(Value:TPropFixup);//004A7448
    //procedure Classes.TPropFixup>.ToArray(?:?);//004A7458
    procedure Classes.TPropFixup>.GetEnumerator;//004A746C
    //function sub_004A747C(?:?):?;//004A747C
    procedure sub_004A7498;//004A7498
    procedure sub_004A74A0;//004A74A0
    constructor sub_004A74A8(AList:TList<System.Classes.TPropFixup>);//004A74A8
    function Classes.TPropFixup>.TEnumerator.MoveNext:Boolean;//004A74EC
    destructor Classes.TPersistent>.Destroy();//004A750C
    function Classes.TPersistent>.GetEnumerator:TEnumerator<System.Classes.TPersistent>;//004A7530
    //procedure Classes.TPersistent>.ToArray(?:?);//004A7538
    function Classes.TPersistent>.MoveNext:Boolean;//004A75EC
    procedure sub_004A763C(?:TList<System.Classes.TPersistent>);//004A763C
    //procedure sub_004A7648(?:?; ?:?);//004A7648
    //procedure sub_004A7654(?:?; ?:?; ?:?);//004A7654
    procedure sub_004A7664;//004A7664
    //procedure sub_004A766C(?:?);//004A766C
    constructor sub_004A7684;//004A7684
    constructor sub_004A76FC(AComparer:IComparer<System.Classes.TPersistent>);//004A76FC
    destructor Classes.TPersistent>.Destroy();//004A77AC
    //procedure Classes.TPersistent>.Error(Msg:string; Data:NativeInt; ?:?);//004A77F8
    procedure Classes.TPersistent>.Add(Value:TPersistent);//004A7830
    //procedure Classes.TPersistent>.ToArray(?:?);//004A7840
    procedure Classes.TPersistent>.GetEnumerator;//004A7854
    //function sub_004A7864(?:?):?;//004A7864
    procedure sub_004A7880;//004A7880
    procedure sub_004A7888;//004A7888
    constructor sub_004A7890(AList:TList<System.Classes.TPersistent>);//004A7890
    function Classes.TPersistent>.TEnumerator.MoveNext:Boolean;//004A78D4
    constructor sub_004A78F4;//004A78F4
    destructor Classes.TThread>.Destroy();//004A794C
    procedure Classes.TThread>.Add(Item:TThread);//004A79C8
    function Classes.TThread>.LockList:TList<System.Classes.TThread>;//004A7AC8
    procedure Classes.TThread>.UnlockList;//004A7AF0
    destructor Classes.TThread>.Destroy();//004A7AFC
    function Classes.TThread>.GetEnumerator:TEnumerator<System.Classes.TThread>;//004A7B20
    //procedure Classes.TThread>.ToArray(?:?);//004A7B28
    function Classes.TThread>.MoveNext:Boolean;//004A7BDC
    procedure sub_004A7C2C(?:TList<System.Classes.TThread>);//004A7C2C
    //procedure sub_004A7C38(?:?; ?:?);//004A7C38
    //procedure sub_004A7C44(?:?; ?:?; ?:?);//004A7C44
    //function sub_004A7C54(?:?; ?:TThread):?;//004A7C54
    procedure sub_004A7C7C;//004A7C7C
    //procedure sub_004A7C84(?:?);//004A7C84
    constructor sub_004A7C9C;//004A7C9C
    constructor sub_004A7D14(AComparer:IComparer<System.Classes.TThread>);//004A7D14
    destructor Classes.TThread>.Destroy();//004A7DC4
    //procedure Classes.TThread>.Error(Msg:string; Data:NativeInt; ?:?);//004A7E10
    procedure Classes.TThread>.Add(Value:TThread);//004A7E48
    //procedure Classes.TThread>.ToArray(?:?);//004A7E58
    procedure Classes.TThread>.GetEnumerator;//004A7E6C
    //function sub_004A7E7C(?:?):?;//004A7E7C
    procedure sub_004A7E98;//004A7E98
    procedure sub_004A7EA0;//004A7EA0
    constructor sub_004A7EA8(AList:TList<System.Classes.TThread>);//004A7EA8
    function Classes.TThread>.TEnumerator.MoveNext:Boolean;//004A7EEC
    function Classes.TComponent>.Default:IComparer<System.Classes.TComponent>;//004A7F0C
    constructor Actions.TContainedAction>.Create;//004A7F2C
    function Classes.TComponent>.Compare(Left:TComponent; Right:TComponent):Integer;//004A7F68
    //procedure sub_004A7FD4(?:?; ?:?; ?:?; ?:?);//004A7FD4
    procedure sub_004A807C(?:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>);//004A807C
    //procedure sub_004A8088(?:?);//004A8088
    //procedure sub_004A8098(?:?);//004A8098
    procedure sub_004A80A8;//004A80A8
    //procedure sub_004A80B0(?:?);//004A80B0
    //procedure sub_004A82AC(?:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.TEnumerator; ?:?);//004A82AC
    //procedure sub_004A8334(?:?);//004A8334
    procedure sub_004A8348;//004A8348
    //procedure sub_004A83B4(?:?);//004A83B4
    procedure sub_004A841C(?:TList<System.Classes.IInterfaceList>);//004A841C
    //procedure sub_004A8428(?:?; ?:?);//004A8428
    //procedure sub_004A8434(?:?; ?:?; ?:?);//004A8434
    procedure sub_004A8444;//004A8444
    //procedure sub_004A844C(?:?);//004A844C
    //procedure sub_004A8650(?:TList<System.Classes.IInterfaceList>.TEnumerator; ?:?);//004A8650
    //procedure sub_004A86B4(?:?);//004A86B4
    procedure sub_004A86C8;//004A86C8
    procedure sub_004A879C(?:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>);//004A879C
    //procedure sub_004A87A8(?:?);//004A87A8
    //procedure sub_004A87B8(?:?);//004A87B8
    procedure sub_004A87C8;//004A87C8
    //procedure sub_004A87D0(?:?);//004A87D0
    //procedure sub_004A89CC(?:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.TEnumerator; ?:?);//004A89CC
    //procedure sub_004A8A54(?:?);//004A8A54
    procedure sub_004A8A68;//004A8A68
    //procedure sub_004A8AD4(?:?);//004A8AD4
    //function sub_004A8B14(?:?; ?:?):Boolean;//004A8B14
    //procedure sub_004A8C14(?:?; ?:?; ?:?; ?:?; ?:?);//004A8C14
    procedure AssignTo(Dest:Classes.TPersistent);//004B1718
    //function sub_004B18F8(?:?):?;//004B18F8
    //procedure sub_004B192C(?:TContainedAction; ?:?);//004B192C
    procedure sub_004B19BC;//004B19BC
    procedure ReadState(Reader:Classes.TReader);//004B19D8
    //procedure sub_004B1A60(?:?);//004B1A60
    procedure SetCaption(Value:string);//004B1ABC
    //procedure sub_004B1B24(?:?);//004B1B24
    //procedure sub_004B1B74(?:?);//004B1B74
    procedure SetEnabled(Value:Boolean);//004B1C80
    //procedure sub_004B1CF8(?:?);//004B1CF8
    procedure SetHelpContext(Value:THelpContext);//004B1DC8
    //procedure sub_004B1E24(?:?);//004B1E24
    //procedure sub_004B1E8C(?:?);//004B1E8C
    procedure SetHint(Value:string);//004B1EEC
    procedure SetVisible(Value:Boolean);//004B1F5C
    procedure SetShortCut(Value:TShortCut);//004B1FD0
    //function sub_004B2034:?;//004B2034
    //function GetSecondaryShortCuts:?;//004B2038
    procedure SetSecondaryShortCuts(Value:TCustomShortCutList);//004B205C
    function IsStoredSecondaryShortCuts(Value:TCustomShortCutList):Boolean;//004B2088
    //procedure sub_004B20D4(?:?);//004B20D4
    //procedure sub_004B2134(?:?);//004B2134
    function sub_004B2268(?:TContainedActionList):Boolean;//004B2268
    //procedure sub_004B2270(?:?; ?:?);//004B2270
    procedure sub_004B2384;//004B2384
    //function sub_004B25EC(?:TContainedActionList):?;//004B25EC
    procedure Notification(AComponent:TComponent; Operation:Classes.TOperation);//004B2728
    //procedure sub_0049ECB8(?:?; ?:?);//004B279C
    //procedure sub_004B27E0(?:?);//004B27E0
    procedure DefaultIsLinked(var Result:Boolean);//004B2948
    function IsCaptionLinked:Boolean;//004B2964
    function IsCheckedLinked:Boolean;//004B2974
    function IsEnabledLinked:Boolean;//004B2984
    function IsGroupIndexLinked:Boolean;//004B2994
    function IsHelpContextLinked:Boolean;//004B29A4
    function IsHelpLinked:Boolean;//004B29B4
    function IsHintLinked:Boolean;//004B29C4
    function IsImageIndexLinked:Boolean;//004B29D4
    function IsShortCutLinked:Boolean;//004B29E4
    function IsStatusActionLinked:Boolean;//004B29F4
    function IsVisibleLinked:Boolean;//004B2A04
    procedure sub_004B2A14;//004B2A14
    procedure sub_004B2A18;//004B2A18
    procedure sub_004B2A1C;//004B2A1C
    procedure sub_004B2A20;//004B2A20
    procedure sub_004B2A24;//004B2A24
    procedure sub_004B2A28;//004B2A28
    procedure sub_004B2A2C;//004B2A2C
    procedure sub_004B2A30;//004B2A30
    procedure sub_004B2A34;//004B2A34
    procedure sub_004B2A38;//004B2A38
    procedure sub_004B2A3C;//004B2A3C
    procedure sub_004B2A40;//004B2A40
    procedure sub_004B2A44;//004B2A44

implementation

//004A25DC
constructor TThreadList<System.IInterface>.Create();
begin
{*
 004A25DC    push        ebx
 004A25DD    push        esi
 004A25DE    test        dl,dl
>004A25E0    je          004A25EA
 004A25E2    add         esp,0FFFFFFF0
 004A25E5    call        @ClassCreate
 004A25EA    mov         ebx,edx
 004A25EC    mov         esi,eax
 004A25EE    xor         edx,edx
 004A25F0    mov         eax,esi
 004A25F2    call        TObject.Create
 004A25F7    mov         dl,1
 004A25F9    mov         eax,[00401728];TObject
 004A25FE    call        TObject.Create
 004A2603    mov         dword ptr [esi+8],eax
 004A2606    mov         dl,1
 004A2608    mov         eax,[0047AB0C];TList<System.IInterface>
 004A260D    call        TList<System.IInterface>.Create
 004A2612    mov         dword ptr [esi+4],eax
 004A2615    mov         byte ptr [esi+0C],0
 004A2619    mov         eax,esi
 004A261B    test        bl,bl
>004A261D    je          004A262E
 004A261F    call        @AfterConstruction
 004A2624    pop         dword ptr fs:[0]
 004A262B    add         esp,0C
 004A262E    mov         eax,esi
 004A2630    pop         esi
 004A2631    pop         ebx
 004A2632    ret
*}
end;

//004A2634
destructor TThreadList<System.IInterface>.Destroy();
begin
{*
 004A2634    push        ebp
 004A2635    mov         ebp,esp
 004A2637    add         esp,0FFFFFFF8
 004A263A    call        @BeforeDestruction
 004A263F    mov         byte ptr [ebp-5],dl
 004A2642    mov         dword ptr [ebp-4],eax
 004A2645    mov         eax,dword ptr [ebp-4]
 004A2648    call        TThreadList<System.IInterface>.LockList
 004A264D    xor         eax,eax
 004A264F    push        ebp
 004A2650    push        4A2696
 004A2655    push        dword ptr fs:[eax]
 004A2658    mov         dword ptr fs:[eax],esp
 004A265B    mov         eax,dword ptr [ebp-4]
 004A265E    mov         eax,dword ptr [eax+4];TThreadList<System.IInterface>.FList:TList<System.IInterface>
 004A2661    call        TObject.Free
 004A2666    movzx       edx,byte ptr [ebp-5]
 004A266A    and         dl,0FC
 004A266D    mov         eax,dword ptr [ebp-4]
 004A2670    call        TObject.Destroy
 004A2675    xor         eax,eax
 004A2677    pop         edx
 004A2678    pop         ecx
 004A2679    pop         ecx
 004A267A    mov         dword ptr fs:[eax],edx
 004A267D    push        4A269D
 004A2682    mov         eax,dword ptr [ebp-4]
 004A2685    call        TThreadList<System.IInterface>.UnlockList
 004A268A    mov         eax,dword ptr [ebp-4]
 004A268D    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 004A2690    call        TObject.Free
 004A2695    ret
>004A2696    jmp         @HandleFinally
>004A269B    jmp         004A2682
 004A269D    cmp         byte ptr [ebp-5],0
>004A26A1    jle         004A26AB
 004A26A3    mov         eax,dword ptr [ebp-4]
 004A26A6    call        @ClassDestroy
 004A26AB    pop         ecx
 004A26AC    pop         ecx
 004A26AD    pop         ebp
 004A26AE    ret
*}
end;

//004A26B0
function TThreadList<System.IInterface>.LockList:TList<System.IInterface>;
begin
{*
 004A26B0    push        ebx
 004A26B1    push        ecx
 004A26B2    mov         ebx,eax
 004A26B4    mov         eax,dword ptr [ebx+8]
 004A26B7    mov         dword ptr [esp],eax
 004A26BA    call        TMonitor.CheckMonitorSupport
 004A26BF    mov         eax,dword ptr [esp]
 004A26C2    call        TMonitor.GetMonitor
 004A26C7    or          edx,0FFFFFFFF
 004A26CA    call        TMonitor.Enter
 004A26CF    mov         eax,dword ptr [ebx+4]
 004A26D2    pop         edx
 004A26D3    pop         ebx
 004A26D4    ret
*}
end;

//004A26D8
procedure TThreadList<System.IInterface>.UnlockList;
begin
{*
 004A26D8    mov         eax,dword ptr [eax+8]
 004A26DB    call        TMonitor.Exit
 004A26E0    ret
*}
end;

//004A26E4
destructor TEnumerable<System.IInterface>.Destroy();
begin
{*
 004A26E4    push        ebx
 004A26E5    push        esi
 004A26E6    call        @BeforeDestruction
 004A26EB    mov         ebx,edx
 004A26ED    mov         esi,eax
 004A26EF    mov         dl,0FC
 004A26F1    and         dl,bl
 004A26F3    mov         eax,esi
 004A26F5    call        TObject.Destroy
 004A26FA    test        bl,bl
>004A26FC    jle         004A2705
 004A26FE    mov         eax,esi
 004A2700    call        @ClassDestroy
 004A2705    pop         esi
 004A2706    pop         ebx
 004A2707    ret
*}
end;

//004A2708
function TEnumerable<System.IInterface>.GetEnumerator:TEnumerator<System.IInterface>;
begin
{*
 004A2708    mov         edx,dword ptr [eax]
 004A270A    call        dword ptr [edx]
 004A270C    ret
*}
end;

//004A2710
{*procedure TEnumerable<System.IInterface>.ToArray(?:?);
begin
 004A2710    push        ebp
 004A2711    mov         ebp,esp
 004A2713    add         esp,0FFFFFFF0
 004A2716    push        ebx
 004A2717    xor         ecx,ecx
 004A2719    mov         dword ptr [ebp-4],ecx
 004A271C    mov         dword ptr [ebp-8],edx
 004A271F    mov         ebx,eax
 004A2721    xor         eax,eax
 004A2723    push        ebp
 004A2724    push        4A27EA
 004A2729    push        dword ptr fs:[eax]
 004A272C    mov         dword ptr fs:[eax],esp
 004A272F    mov         dl,1
 004A2731    mov         eax,[0047AB0C];TList<System.IInterface>
 004A2736    call        TList<System.IInterface>.Create
 004A273B    mov         dword ptr [ebp-0C],eax
 004A273E    xor         eax,eax
 004A2740    push        ebp
 004A2741    push        4A27CD
 004A2746    push        dword ptr fs:[eax]
 004A2749    mov         dword ptr fs:[eax],esp
 004A274C    mov         eax,ebx
 004A274E    call        TEnumerable<System.IInterface>.GetEnumerator
 004A2753    mov         dword ptr [ebp-10],eax
 004A2756    xor         eax,eax
 004A2758    push        ebp
 004A2759    push        4A27A5
 004A275E    push        dword ptr fs:[eax]
 004A2761    mov         dword ptr fs:[eax],esp
>004A2764    jmp         004A277B
 004A2766    lea         edx,[ebp-4]
 004A2769    mov         eax,dword ptr [ebp-10]
 004A276C    mov         ecx,dword ptr [eax]
 004A276E    call        dword ptr [ecx]
 004A2770    mov         edx,dword ptr [ebp-4]
 004A2773    mov         eax,dword ptr [ebp-0C]
 004A2776    call        TList<System.IInterface>.Add
 004A277B    mov         eax,dword ptr [ebp-10]
 004A277E    call        TEnumerator<System.IInterface>.MoveNext
 004A2783    test        al,al
>004A2785    jne         004A2766
 004A2787    xor         eax,eax
 004A2789    pop         edx
 004A278A    pop         ecx
 004A278B    pop         ecx
 004A278C    mov         dword ptr fs:[eax],edx
 004A278F    push        4A27AC
 004A2794    cmp         dword ptr [ebp-10],0
>004A2798    je          004A27A4
 004A279A    mov         dl,1
 004A279C    mov         eax,dword ptr [ebp-10]
 004A279F    mov         ecx,dword ptr [eax]
 004A27A1    call        dword ptr [ecx-4]
 004A27A4    ret
>004A27A5    jmp         @HandleFinally
>004A27AA    jmp         004A2794
 004A27AC    mov         edx,dword ptr [ebp-8]
 004A27AF    mov         eax,dword ptr [ebp-0C]
 004A27B2    call        TList<System.IInterface>.ToArray
 004A27B7    xor         eax,eax
 004A27B9    pop         edx
 004A27BA    pop         ecx
 004A27BB    pop         ecx
 004A27BC    mov         dword ptr fs:[eax],edx
 004A27BF    push        4A27D4
 004A27C4    mov         eax,dword ptr [ebp-0C]
 004A27C7    call        TObject.Free
 004A27CC    ret
>004A27CD    jmp         @HandleFinally
>004A27D2    jmp         004A27C4
 004A27D4    xor         eax,eax
 004A27D6    pop         edx
 004A27D7    pop         ecx
 004A27D8    pop         ecx
 004A27D9    mov         dword ptr fs:[eax],edx
 004A27DC    push        4A27F1
 004A27E1    lea         eax,[ebp-4]
 004A27E4    call        @IntfClear
 004A27E9    ret
>004A27EA    jmp         @HandleFinally
>004A27EF    jmp         004A27E1
 004A27F1    pop         ebx
 004A27F2    mov         esp,ebp
 004A27F4    pop         ebp
 004A27F5    ret
end;*}

//004A27F8
function TEnumerator<System.IInterface>.MoveNext:Boolean;
begin
{*
 004A27F8    mov         edx,dword ptr [eax]
 004A27FA    call        dword ptr [edx+4]
 004A27FD    ret
*}
end;

//004A2848
procedure sub_004A2848(?:TList<System.IInterface>);
begin
{*
 004A2848    add         eax,8;TList<System.IInterface>.FCount:Integer
 004A284B    call        004358C0
 004A2850    ret
*}
end;

//004A2854
{*procedure sub_004A2854(?:?; ?:?);
begin
 004A2854    push        ebx
 004A2855    mov         edx,dword ptr [edx]
 004A2857    mov         ebx,dword ptr [eax]
 004A2859    call        dword ptr [ebx+8]
 004A285C    pop         ebx
 004A285D    ret
end;*}

//004A2860
{*procedure sub_004A2860(?:?; ?:?; ?:?);
begin
 004A2860    push        ebx
 004A2861    mov         edx,dword ptr [edx]
 004A2863    mov         ecx,dword ptr [ecx]
 004A2865    mov         eax,dword ptr [eax+24]
 004A2868    mov         ebx,dword ptr [eax]
 004A286A    call        dword ptr [ebx+0C]
 004A286D    pop         ebx
 004A286E    ret
end;*}

//004A2870
procedure sub_004A2870;
begin
{*
 004A2870    call        TList<System.IInterface>.GetEnumerator
 004A2875    ret
*}
end;

//004A2878
{*procedure sub_004A2878(?:?);
begin
 004A2878    push        ebx
 004A2879    cmp         word ptr [eax+2A],0
>004A287E    je          004A288D
 004A2880    push        ecx
 004A2881    mov         ebx,eax
 004A2883    mov         ecx,edx
 004A2885    mov         edx,eax
 004A2887    mov         eax,dword ptr [ebx+2C]
 004A288A    call        dword ptr [ebx+28]
 004A288D    pop         ebx
 004A288E    ret
end;*}

//004A2890
constructor TList<System.IInterface>.Create();
begin
{*
 004A2890    push        ebp
 004A2891    mov         ebp,esp
 004A2893    push        0
 004A2895    push        ebx
 004A2896    push        esi
 004A2897    test        dl,dl
>004A2899    je          004A28A3
 004A289B    add         esp,0FFFFFFF0
 004A289E    call        @ClassCreate
 004A28A3    mov         ebx,edx
 004A28A5    mov         esi,eax
 004A28A7    xor         eax,eax
 004A28A9    push        ebp
 004A28AA    push        4A28E4
 004A28AF    push        dword ptr fs:[eax]
 004A28B2    mov         dword ptr fs:[eax],esp
 004A28B5    lea         edx,[ebp-4]
 004A28B8    mov         eax,[004A8E18];TComparer<System.IInterface>
 004A28BD    call        TComparer<System.IInterface>.Default
 004A28C2    mov         ecx,dword ptr [ebp-4]
 004A28C5    xor         edx,edx
 004A28C7    mov         eax,esi
 004A28C9    call        004A2908
 004A28CE    xor         eax,eax
 004A28D0    pop         edx
 004A28D1    pop         ecx
 004A28D2    pop         ecx
 004A28D3    mov         dword ptr fs:[eax],edx
 004A28D6    push        4A28EB
 004A28DB    lea         eax,[ebp-4]
 004A28DE    call        @IntfClear
 004A28E3    ret
>004A28E4    jmp         @HandleFinally
>004A28E9    jmp         004A28DB
 004A28EB    mov         eax,esi
 004A28ED    test        bl,bl
>004A28EF    je          004A2900
 004A28F1    call        @AfterConstruction
 004A28F6    pop         dword ptr fs:[0]
 004A28FD    add         esp,0C
 004A2900    mov         eax,esi
 004A2902    pop         esi
 004A2903    pop         ebx
 004A2904    pop         ecx
 004A2905    pop         ebp
 004A2906    ret
*}
end;

//004A2908
constructor sub_004A2908(AComparer:IComparer<System.IInterface>);
begin
{*
 004A2908    push        ebp
 004A2909    mov         ebp,esp
 004A290B    push        0
 004A290D    push        ebx
 004A290E    push        esi
 004A290F    push        edi
 004A2910    test        dl,dl
>004A2912    je          004A291C
 004A2914    add         esp,0FFFFFFF0
 004A2917    call        @ClassCreate
 004A291C    mov         esi,ecx
 004A291E    mov         ebx,edx
 004A2920    mov         edi,eax
 004A2922    xor         eax,eax
 004A2924    push        ebp
 004A2925    push        4A2993
 004A292A    push        dword ptr fs:[eax]
 004A292D    mov         dword ptr fs:[eax],esp
 004A2930    xor         edx,edx
 004A2932    mov         eax,edi
 004A2934    call        TObject.Create
 004A2939    mov         dword ptr [edi+14],edi;TList<System.IInterface>.FOnNotify:TCollectionNotifyEvent<System....
 004A293C    mov         dword ptr [edi+10],4A2854;TList<System.IInterface>.FOnNotify:TCollectionNotifyEvent<Syst...
 004A2943    mov         dword ptr [edi+1C],edi
 004A2946    mov         dword ptr [edi+18],4A2860;sub_004A2860
 004A294D    mov         eax,[0047A754];TList<System.IInterface>.arrayofT
 004A2952    mov         dword ptr [edi+0C],eax;TList<System.IInterface>.FComparer:IComparer<System.IInterface>
 004A2955    lea         eax,[edi+24]
 004A2958    mov         edx,esi
 004A295A    call        @IntfCopy
 004A295F    cmp         dword ptr [edi+24],0
>004A2963    jne         004A297D
 004A2965    lea         edx,[ebp-4]
 004A2968    mov         eax,[004A8E18];TComparer<System.IInterface>
 004A296D    call        TComparer<System.IInterface>.Default
 004A2972    mov         edx,dword ptr [ebp-4]
 004A2975    lea         eax,[edi+24]
 004A2978    call        @IntfCopy
 004A297D    xor         eax,eax
 004A297F    pop         edx
 004A2980    pop         ecx
 004A2981    pop         ecx
 004A2982    mov         dword ptr fs:[eax],edx
 004A2985    push        4A299A
 004A298A    lea         eax,[ebp-4]
 004A298D    call        @IntfClear
 004A2992    ret
>004A2993    jmp         @HandleFinally
>004A2998    jmp         004A298A
 004A299A    mov         eax,edi
 004A299C    test        bl,bl
>004A299E    je          004A29AF
 004A29A0    call        @AfterConstruction
 004A29A5    pop         dword ptr fs:[0]
 004A29AC    add         esp,0C
 004A29AF    mov         eax,edi
 004A29B1    pop         edi
 004A29B2    pop         esi
 004A29B3    pop         ebx
 004A29B4    pop         ecx
 004A29B5    pop         ebp
 004A29B6    ret
*}
end;

//004A29B8
destructor TList<System.IInterface>.Destroy();
begin
{*
 004A29B8    push        ebx
 004A29B9    push        esi
 004A29BA    call        @BeforeDestruction
 004A29BF    mov         ebx,edx
 004A29C1    mov         esi,eax
 004A29C3    cmp         dword ptr [esi+8],0;TList<System.IInterface>.FCount:Integer
>004A29C7    jle         004A29D2
 004A29C9    xor         edx,edx
 004A29CB    mov         eax,esi
 004A29CD    call        004A2848
 004A29D2    push        0
 004A29D4    lea         eax,[esi+20]
 004A29D7    mov         ecx,1
 004A29DC    mov         edx,dword ptr ds:[47A754];TList<System.IInterface>.arrayofT
 004A29E2    call        @DynArraySetLength
 004A29E7    add         esp,4
 004A29EA    mov         dl,0FC
 004A29EC    and         dl,bl
 004A29EE    mov         eax,esi
 004A29F0    call        TEnumerable<System.IInterface>.Destroy
 004A29F5    test        bl,bl
>004A29F7    jle         004A2A00
 004A29F9    mov         eax,esi
 004A29FB    call        @ClassDestroy
 004A2A00    pop         esi
 004A2A01    pop         ebx
 004A2A02    ret
*}
end;

//004A2A04
procedure TList<System.IInterface>.Error(Msg:string; Data:NativeInt);
begin
{*
 004A2A04    push        ebp
 004A2A05    mov         ebp,esp
 004A2A07    add         esp,0FFFFFFF0
 004A2A0A    mov         dword ptr [ebp-8],ecx
 004A2A0D    mov         dword ptr [ebp-4],edx
 004A2A10    push        dword ptr [ebp+4]
 004A2A13    mov         eax,dword ptr [ebp-8]
 004A2A16    mov         dword ptr [ebp-10],eax
 004A2A19    mov         byte ptr [ebp-0C],0
 004A2A1D    lea         eax,[ebp-10]
 004A2A20    push        eax
 004A2A21    push        0
 004A2A23    mov         ecx,dword ptr [ebp-4]
 004A2A26    mov         dl,1
 004A2A28    mov         eax,[004180BC];EListError
 004A2A2D    call        Exception.CreateFmt
>004A2A32    jmp         @RaiseExcept
 004A2A37    mov         esp,ebp
 004A2A39    pop         ebp
 004A2A3A    ret
*}
end;

//004A2A3C
procedure TList<System.IInterface>.Add(Value:IInterface);
begin
{*
 004A2A3C    add         esp,0FFFFFFF8
 004A2A3F    mov         dword ptr [esp],edx
 004A2A42    add         eax,8
 004A2A45    mov         dword ptr [esp+4],eax
 004A2A49    mov         edx,esp
 004A2A4B    mov         eax,dword ptr [esp+4]
 004A2A4F    call        004345C8
 004A2A54    pop         ecx
 004A2A55    pop         edx
 004A2A56    ret
*}
end;

//004A2A58
{*procedure TList<System.IInterface>.ToArray(?:?);
begin
 004A2A58    push        ecx
 004A2A59    mov         dword ptr [esp],edx
 004A2A5C    mov         edx,dword ptr [esp]
 004A2A5F    add         eax,8
 004A2A62    call        004359D4
 004A2A67    pop         edx
 004A2A68    ret
end;*}

//004A2A6C
function TList<System.IInterface>.GetEnumerator:TList<System.IInterface>.TEnumerator;
begin
{*
 004A2A6C    mov         ecx,eax
 004A2A6E    mov         dl,1
 004A2A70    mov         eax,[0047A964];TList<System.IInterface>.TEnumerator
 004A2A75    call        TActionListEnumerator.Create
 004A2A7A    ret
*}
end;

//004A2A7C
{*procedure sub_004A2A7C(?:TList<System.IInterface>.TEnumerator; ?:?);
begin
 004A2A7C    push        ebp
 004A2A7D    mov         ebp,esp
 004A2A7F    push        0
 004A2A81    push        ebx
 004A2A82    push        esi
 004A2A83    push        edi
 004A2A84    mov         edi,edx
 004A2A86    xor         edx,edx
 004A2A88    push        ebp
 004A2A89    push        4A2AD2
 004A2A8E    push        dword ptr fs:[edx]
 004A2A91    mov         dword ptr fs:[edx],esp
 004A2A94    mov         ebx,dword ptr [eax+4]
 004A2A97    mov         esi,dword ptr [eax+8]
 004A2A9A    lea         eax,[ebx+8]
 004A2A9D    mov         edx,esi
 004A2A9F    call        00434534
 004A2AA4    lea         eax,[ebp-4]
 004A2AA7    mov         edx,dword ptr [ebx+20]
 004A2AAA    mov         edx,dword ptr [edx+esi*4]
 004A2AAD    call        @IntfCopy
 004A2AB2    mov         eax,edi
 004A2AB4    mov         edx,dword ptr [ebp-4]
 004A2AB7    call        @IntfCopy
 004A2ABC    xor         eax,eax
 004A2ABE    pop         edx
 004A2ABF    pop         ecx
 004A2AC0    pop         ecx
 004A2AC1    mov         dword ptr fs:[eax],edx
 004A2AC4    push        4A2AD9
 004A2AC9    lea         eax,[ebp-4]
 004A2ACC    call        @IntfClear
 004A2AD1    ret
>004A2AD2    jmp         @HandleFinally
>004A2AD7    jmp         004A2AC9
 004A2AD9    pop         edi
 004A2ADA    pop         esi
 004A2ADB    pop         ebx
 004A2ADC    pop         ecx
 004A2ADD    pop         ebp
 004A2ADE    ret
end;*}

//004A2AE0
{*procedure sub_004A2AE0(?:?);
begin
 004A2AE0    push        ebx
 004A2AE1    push        esi
 004A2AE2    mov         esi,edx
 004A2AE4    mov         ebx,eax
 004A2AE6    mov         edx,esi
 004A2AE8    mov         eax,ebx
 004A2AEA    call        004A2A7C
 004A2AEF    pop         esi
 004A2AF0    pop         ebx
 004A2AF1    ret
end;*}

//004A2AF4
procedure sub_004A2AF4;
begin
{*
 004A2AF4    call        TList<System.IInterface>.TEnumerator.MoveNext
 004A2AF9    ret
*}
end;

//004A2AFC
constructor TActionListEnumerator.Create;
begin
{*
 004A2AFC    push        ebx
 004A2AFD    push        esi
 004A2AFE    push        edi
 004A2AFF    test        dl,dl
>004A2B01    je          004A2B0B
 004A2B03    add         esp,0FFFFFFF0
 004A2B06    call        @ClassCreate
 004A2B0B    mov         esi,ecx
 004A2B0D    mov         ebx,edx
 004A2B0F    mov         edi,eax
 004A2B11    xor         edx,edx
 004A2B13    mov         eax,edi
 004A2B15    call        TObject.Create
 004A2B1A    mov         dword ptr [edi+4],esi
 004A2B1D    mov         dword ptr [edi+8],0FFFFFFFF
 004A2B24    mov         eax,edi
 004A2B26    test        bl,bl
>004A2B28    je          004A2B39
 004A2B2A    call        @AfterConstruction
 004A2B2F    pop         dword ptr fs:[0]
 004A2B36    add         esp,0C
 004A2B39    mov         eax,edi
 004A2B3B    pop         edi
 004A2B3C    pop         esi
 004A2B3D    pop         ebx
 004A2B3E    ret
*}
end;

//004A2B40
function TList<System.IInterface>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A2B40    mov         edx,dword ptr [eax+4]
 004A2B43    mov         edx,dword ptr [edx+8]
 004A2B46    cmp         edx,dword ptr [eax+8]
>004A2B49    jg          004A2B4E
 004A2B4B    xor         eax,eax
 004A2B4D    ret
 004A2B4E    inc         dword ptr [eax+8]
 004A2B51    mov         edx,dword ptr [eax+4]
 004A2B54    mov         edx,dword ptr [edx+8]
 004A2B57    cmp         edx,dword ptr [eax+8]
 004A2B5A    setg        al
 004A2B5D    ret
*}
end;

//004A2B60
destructor TEnumerable<System.Classes.TCollectionItem>.Destroy();
begin
{*
 004A2B60    push        ebx
 004A2B61    push        esi
 004A2B62    call        @BeforeDestruction
 004A2B67    mov         ebx,edx
 004A2B69    mov         esi,eax
 004A2B6B    mov         dl,0FC
 004A2B6D    and         dl,bl
 004A2B6F    mov         eax,esi
 004A2B71    call        TObject.Destroy
 004A2B76    test        bl,bl
>004A2B78    jle         004A2B81
 004A2B7A    mov         eax,esi
 004A2B7C    call        @ClassDestroy
 004A2B81    pop         esi
 004A2B82    pop         ebx
 004A2B83    ret
*}
end;

//004A2B84
function TEnumerable<System.Classes.TCollectionItem>.GetEnumerator:TEnumerator<System.Classes.TCollectionItem>;
begin
{*
 004A2B84    mov         edx,dword ptr [eax]
 004A2B86    call        dword ptr [edx]
 004A2B88    ret
*}
end;

//004A2B8C
{*procedure TEnumerable<System.Classes.TCollectionItem>.ToArray(?:?);
begin
 004A2B8C    push        ebp
 004A2B8D    mov         ebp,esp
 004A2B8F    add         esp,0FFFFFFF4
 004A2B92    push        ebx
 004A2B93    mov         dword ptr [ebp-4],edx
 004A2B96    mov         ebx,eax
 004A2B98    mov         dl,1
 004A2B9A    mov         eax,[0047C22C];TList<System.Classes.TCollectionItem>
 004A2B9F    call        TList<System.Classes.TCollectionItem>.Create
 004A2BA4    mov         dword ptr [ebp-8],eax
 004A2BA7    xor         eax,eax
 004A2BA9    push        ebp
 004A2BAA    push        4A2C34
 004A2BAF    push        dword ptr fs:[eax]
 004A2BB2    mov         dword ptr fs:[eax],esp
 004A2BB5    mov         eax,ebx
 004A2BB7    call        TEnumerable<System.Classes.TCollectionItem>.GetEnumerator
 004A2BBC    mov         dword ptr [ebp-0C],eax
 004A2BBF    xor         eax,eax
 004A2BC1    push        ebp
 004A2BC2    push        4A2C0C
 004A2BC7    push        dword ptr fs:[eax]
 004A2BCA    mov         dword ptr fs:[eax],esp
>004A2BCD    jmp         004A2BE2
 004A2BCF    mov         eax,dword ptr [ebp-0C]
 004A2BD2    mov         edx,dword ptr [eax]
 004A2BD4    call        dword ptr [edx]
 004A2BD6    mov         ebx,eax
 004A2BD8    mov         edx,ebx
 004A2BDA    mov         eax,dword ptr [ebp-8]
 004A2BDD    call        TList<System.Classes.TCollectionItem>.Add
 004A2BE2    mov         eax,dword ptr [ebp-0C]
 004A2BE5    call        TEnumerator<System.Classes.TCollectionItem>.MoveNext
 004A2BEA    test        al,al
>004A2BEC    jne         004A2BCF
 004A2BEE    xor         eax,eax
 004A2BF0    pop         edx
 004A2BF1    pop         ecx
 004A2BF2    pop         ecx
 004A2BF3    mov         dword ptr fs:[eax],edx
 004A2BF6    push        4A2C13
 004A2BFB    cmp         dword ptr [ebp-0C],0
>004A2BFF    je          004A2C0B
 004A2C01    mov         dl,1
 004A2C03    mov         eax,dword ptr [ebp-0C]
 004A2C06    mov         ecx,dword ptr [eax]
 004A2C08    call        dword ptr [ecx-4]
 004A2C0B    ret
>004A2C0C    jmp         @HandleFinally
>004A2C11    jmp         004A2BFB
 004A2C13    mov         edx,dword ptr [ebp-4]
 004A2C16    mov         eax,dword ptr [ebp-8]
 004A2C19    call        TList<System.Classes.TCollectionItem>.ToArray
 004A2C1E    xor         eax,eax
 004A2C20    pop         edx
 004A2C21    pop         ecx
 004A2C22    pop         ecx
 004A2C23    mov         dword ptr fs:[eax],edx
 004A2C26    push        4A2C3B
 004A2C2B    mov         eax,dword ptr [ebp-8]
 004A2C2E    call        TObject.Free
 004A2C33    ret
>004A2C34    jmp         @HandleFinally
>004A2C39    jmp         004A2C2B
 004A2C3B    pop         ebx
 004A2C3C    mov         esp,ebp
 004A2C3E    pop         ebp
 004A2C3F    ret
end;*}

//004A2C40
function TEnumerator<System.Classes.TCollectionItem>.MoveNext:Boolean;
begin
{*
 004A2C40    mov         edx,dword ptr [eax]
 004A2C42    call        dword ptr [edx+4]
 004A2C45    ret
*}
end;

//004A2C90
procedure sub_004A2C90(?:TList<System.Classes.TCollectionItem>);
begin
{*
 004A2C90    add         eax,8
 004A2C93    call        004357A0
 004A2C98    ret
*}
end;

//004A2C9C
{*procedure sub_004A2C9C(?:?; ?:?);
begin
 004A2C9C    push        ebx
 004A2C9D    mov         edx,dword ptr [edx]
 004A2C9F    mov         ebx,dword ptr [eax]
 004A2CA1    call        dword ptr [ebx+8]
 004A2CA4    pop         ebx
 004A2CA5    ret
end;*}

//004A2CA8
{*procedure sub_004A2CA8(?:?; ?:?; ?:?);
begin
 004A2CA8    push        ebx
 004A2CA9    mov         edx,dword ptr [edx]
 004A2CAB    mov         ecx,dword ptr [ecx]
 004A2CAD    mov         eax,dword ptr [eax+24]
 004A2CB0    mov         ebx,dword ptr [eax]
 004A2CB2    call        dword ptr [ebx+0C]
 004A2CB5    pop         ebx
 004A2CB6    ret
end;*}

//004A2CB8
procedure sub_004A2CB8;
begin
{*
 004A2CB8    call        TList<System.Classes.TCollectionItem>.GetEnumerator
 004A2CBD    ret
*}
end;

//004A2CC0
{*procedure sub_004A2CC0(?:?);
begin
 004A2CC0    push        ebx
 004A2CC1    cmp         word ptr [eax+2A],0
>004A2CC6    je          004A2CD5
 004A2CC8    push        ecx
 004A2CC9    mov         ebx,eax
 004A2CCB    mov         ecx,edx
 004A2CCD    mov         edx,eax
 004A2CCF    mov         eax,dword ptr [ebx+2C]
 004A2CD2    call        dword ptr [ebx+28]
 004A2CD5    pop         ebx
 004A2CD6    ret
end;*}

//004A2CD8
constructor TList<System.Classes.TCollectionItem>.Create();
begin
{*
 004A2CD8    push        ebp
 004A2CD9    mov         ebp,esp
 004A2CDB    push        0
 004A2CDD    push        ebx
 004A2CDE    push        esi
 004A2CDF    test        dl,dl
>004A2CE1    je          004A2CEB
 004A2CE3    add         esp,0FFFFFFF0
 004A2CE6    call        @ClassCreate
 004A2CEB    mov         ebx,edx
 004A2CED    mov         esi,eax
 004A2CEF    xor         eax,eax
 004A2CF1    push        ebp
 004A2CF2    push        4A2D2C
 004A2CF7    push        dword ptr fs:[eax]
 004A2CFA    mov         dword ptr fs:[eax],esp
 004A2CFD    lea         edx,[ebp-4]
 004A2D00    mov         eax,[004A9088];TComparer<System.Classes.TCollectionItem>
 004A2D05    call        TComparer<System.Classes.TCollectionItem>.Default
 004A2D0A    mov         ecx,dword ptr [ebp-4]
 004A2D0D    xor         edx,edx
 004A2D0F    mov         eax,esi
 004A2D11    call        004A2D50
 004A2D16    xor         eax,eax
 004A2D18    pop         edx
 004A2D19    pop         ecx
 004A2D1A    pop         ecx
 004A2D1B    mov         dword ptr fs:[eax],edx
 004A2D1E    push        4A2D33
 004A2D23    lea         eax,[ebp-4]
 004A2D26    call        @IntfClear
 004A2D2B    ret
>004A2D2C    jmp         @HandleFinally
>004A2D31    jmp         004A2D23
 004A2D33    mov         eax,esi
 004A2D35    test        bl,bl
>004A2D37    je          004A2D48
 004A2D39    call        @AfterConstruction
 004A2D3E    pop         dword ptr fs:[0]
 004A2D45    add         esp,0C
 004A2D48    mov         eax,esi
 004A2D4A    pop         esi
 004A2D4B    pop         ebx
 004A2D4C    pop         ecx
 004A2D4D    pop         ebp
 004A2D4E    ret
*}
end;

//004A2D50
constructor sub_004A2D50(AComparer:IComparer<System.Classes.TCollectionItem>);
begin
{*
 004A2D50    push        ebp
 004A2D51    mov         ebp,esp
 004A2D53    push        0
 004A2D55    push        ebx
 004A2D56    push        esi
 004A2D57    push        edi
 004A2D58    test        dl,dl
>004A2D5A    je          004A2D64
 004A2D5C    add         esp,0FFFFFFF0
 004A2D5F    call        @ClassCreate
 004A2D64    mov         esi,ecx
 004A2D66    mov         ebx,edx
 004A2D68    mov         edi,eax
 004A2D6A    xor         eax,eax
 004A2D6C    push        ebp
 004A2D6D    push        4A2DDB
 004A2D72    push        dword ptr fs:[eax]
 004A2D75    mov         dword ptr fs:[eax],esp
 004A2D78    xor         edx,edx
 004A2D7A    mov         eax,edi
 004A2D7C    call        TObject.Create
 004A2D81    mov         dword ptr [edi+14],edi;TList<System.Classes.TCollectionItem>.FOnNotify:TCollectionNotify...
 004A2D84    mov         dword ptr [edi+10],4A2C9C;TList<System.Classes.TCollectionItem>.FOnNotify:TCollectionNot...
 004A2D8B    mov         dword ptr [edi+1C],edi
 004A2D8E    mov         dword ptr [edi+18],4A2CA8;sub_004A2CA8
 004A2D95    mov         eax,[0047BE14];TList<System.Classes.TCollectionItem>.arrayofT
 004A2D9A    mov         dword ptr [edi+0C],eax;TList<System.Classes.TCollectionItem>.FComparer:IComparer<System....
 004A2D9D    lea         eax,[edi+24]
 004A2DA0    mov         edx,esi
 004A2DA2    call        @IntfCopy
 004A2DA7    cmp         dword ptr [edi+24],0
>004A2DAB    jne         004A2DC5
 004A2DAD    lea         edx,[ebp-4]
 004A2DB0    mov         eax,[004A9088];TComparer<System.Classes.TCollectionItem>
 004A2DB5    call        TComparer<System.Classes.TCollectionItem>.Default
 004A2DBA    mov         edx,dword ptr [ebp-4]
 004A2DBD    lea         eax,[edi+24]
 004A2DC0    call        @IntfCopy
 004A2DC5    xor         eax,eax
 004A2DC7    pop         edx
 004A2DC8    pop         ecx
 004A2DC9    pop         ecx
 004A2DCA    mov         dword ptr fs:[eax],edx
 004A2DCD    push        4A2DE2
 004A2DD2    lea         eax,[ebp-4]
 004A2DD5    call        @IntfClear
 004A2DDA    ret
>004A2DDB    jmp         @HandleFinally
>004A2DE0    jmp         004A2DD2
 004A2DE2    mov         eax,edi
 004A2DE4    test        bl,bl
>004A2DE6    je          004A2DF7
 004A2DE8    call        @AfterConstruction
 004A2DED    pop         dword ptr fs:[0]
 004A2DF4    add         esp,0C
 004A2DF7    mov         eax,edi
 004A2DF9    pop         edi
 004A2DFA    pop         esi
 004A2DFB    pop         ebx
 004A2DFC    pop         ecx
 004A2DFD    pop         ebp
 004A2DFE    ret
*}
end;

//004A2E00
destructor TList<System.Classes.TCollectionItem>.Destroy();
begin
{*
 004A2E00    push        ebx
 004A2E01    push        esi
 004A2E02    call        @BeforeDestruction
 004A2E07    mov         ebx,edx
 004A2E09    mov         esi,eax
 004A2E0B    cmp         dword ptr [esi+8],0;TList<System.Classes.TCollectionItem>.FCount:Integer
>004A2E0F    jle         004A2E1A
 004A2E11    xor         edx,edx
 004A2E13    mov         eax,esi
 004A2E15    call        004A2C90
 004A2E1A    push        0
 004A2E1C    lea         eax,[esi+20]
 004A2E1F    mov         ecx,1
 004A2E24    mov         edx,dword ptr ds:[47BE14];TList<System.Classes.TCollectionItem>.arrayofT
 004A2E2A    call        @DynArraySetLength
 004A2E2F    add         esp,4
 004A2E32    mov         dl,0FC
 004A2E34    and         dl,bl
 004A2E36    mov         eax,esi
 004A2E38    call        TEnumerable<System.Classes.TCollectionItem>.Destroy
 004A2E3D    test        bl,bl
>004A2E3F    jle         004A2E48
 004A2E41    mov         eax,esi
 004A2E43    call        @ClassDestroy
 004A2E48    pop         esi
 004A2E49    pop         ebx
 004A2E4A    ret
*}
end;

//004A2E4C
procedure TList<System.Classes.TCollectionItem>.Error(Msg:string; Data:NativeInt);
begin
{*
 004A2E4C    push        ebp
 004A2E4D    mov         ebp,esp
 004A2E4F    add         esp,0FFFFFFF0
 004A2E52    mov         dword ptr [ebp-8],ecx
 004A2E55    mov         dword ptr [ebp-4],edx
 004A2E58    push        dword ptr [ebp+4]
 004A2E5B    mov         eax,dword ptr [ebp-8]
 004A2E5E    mov         dword ptr [ebp-10],eax
 004A2E61    mov         byte ptr [ebp-0C],0
 004A2E65    lea         eax,[ebp-10]
 004A2E68    push        eax
 004A2E69    push        0
 004A2E6B    mov         ecx,dword ptr [ebp-4]
 004A2E6E    mov         dl,1
 004A2E70    mov         eax,[004180BC];EListError
 004A2E75    call        Exception.CreateFmt
>004A2E7A    jmp         @RaiseExcept
 004A2E7F    mov         esp,ebp
 004A2E81    pop         ebp
 004A2E82    ret
*}
end;

//004A2E84
procedure TList<System.Classes.TCollectionItem>.Add(Value:TCollectionItem);
begin
{*
 004A2E84    push        ecx
 004A2E85    mov         dword ptr [esp],edx
 004A2E88    mov         edx,esp
 004A2E8A    add         eax,8
 004A2E8D    call        0043489C
 004A2E92    pop         edx
 004A2E93    ret
*}
end;

//004A2E94
{*procedure TList<System.Classes.TCollectionItem>.ToArray(?:?);
begin
 004A2E94    push        ecx
 004A2E95    mov         dword ptr [esp],edx
 004A2E98    mov         edx,dword ptr [esp]
 004A2E9B    add         eax,8
 004A2E9E    call        00435980
 004A2EA3    pop         edx
 004A2EA4    ret
end;*}

//004A2EA8
function TList<System.Classes.TCollectionItem>.GetEnumerator:TList<System.Classes.TCollectionItem>.TEnumerator;
begin
{*
 004A2EA8    mov         ecx,eax
 004A2EAA    mov         dl,1
 004A2EAC    mov         eax,[0047C06C];TList<System.Classes.TCollectionItem>.TEnumerator
 004A2EB1    call        TList<System.Actions.TContainedAction>.TEnumerator.Create
 004A2EB6    ret
*}
end;

//004A2EB8
{*function sub_004A2EB8(?:?):?;
begin
 004A2EB8    push        ebx
 004A2EB9    push        esi
 004A2EBA    mov         ebx,dword ptr [eax+4]
 004A2EBD    mov         esi,dword ptr [eax+8]
 004A2EC0    lea         eax,[ebx+8]
 004A2EC3    mov         edx,esi
 004A2EC5    call        00434534
 004A2ECA    mov         eax,dword ptr [ebx+20]
 004A2ECD    mov         eax,dword ptr [eax+esi*4]
 004A2ED0    pop         esi
 004A2ED1    pop         ebx
 004A2ED2    ret
end;*}

//004A2ED4
procedure sub_004A2ED4;
begin
{*
 004A2ED4    call        004A2EB8
 004A2ED9    ret
*}
end;

//004A2EDC
procedure sub_004A2EDC;
begin
{*
 004A2EDC    call        TList<System.Classes.TCollectionItem>.TEnumerator.MoveNext
 004A2EE1    ret
*}
end;

//004A2EE4
constructor TList<System.Actions.TContainedAction>.TEnumerator.Create;
begin
{*
 004A2EE4    push        ebx
 004A2EE5    push        esi
 004A2EE6    push        edi
 004A2EE7    test        dl,dl
>004A2EE9    je          004A2EF3
 004A2EEB    add         esp,0FFFFFFF0
 004A2EEE    call        @ClassCreate
 004A2EF3    mov         esi,ecx
 004A2EF5    mov         ebx,edx
 004A2EF7    mov         edi,eax
 004A2EF9    xor         edx,edx
 004A2EFB    mov         eax,edi
 004A2EFD    call        TObject.Create
 004A2F02    mov         dword ptr [edi+4],esi
 004A2F05    mov         dword ptr [edi+8],0FFFFFFFF
 004A2F0C    mov         eax,edi
 004A2F0E    test        bl,bl
>004A2F10    je          004A2F21
 004A2F12    call        @AfterConstruction
 004A2F17    pop         dword ptr fs:[0]
 004A2F1E    add         esp,0C
 004A2F21    mov         eax,edi
 004A2F23    pop         edi
 004A2F24    pop         esi
 004A2F25    pop         ebx
 004A2F26    ret
*}
end;

//004A2F28
function TList<System.Classes.TCollectionItem>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A2F28    mov         edx,dword ptr [eax+4]
 004A2F2B    mov         edx,dword ptr [edx+8]
 004A2F2E    cmp         edx,dword ptr [eax+8]
>004A2F31    jg          004A2F36
 004A2F33    xor         eax,eax
 004A2F35    ret
 004A2F36    inc         dword ptr [eax+8]
 004A2F39    mov         edx,dword ptr [eax+4]
 004A2F3C    mov         edx,dword ptr [edx+8]
 004A2F3F    cmp         edx,dword ptr [eax+8]
 004A2F42    setg        al
 004A2F45    ret
*}
end;

//004A2F48
destructor TEnumerable<System.TObject>.Destroy();
begin
{*
 004A2F48    push        ebx
 004A2F49    push        esi
 004A2F4A    call        @BeforeDestruction
 004A2F4F    mov         ebx,edx
 004A2F51    mov         esi,eax
 004A2F53    mov         dl,0FC
 004A2F55    and         dl,bl
 004A2F57    mov         eax,esi
 004A2F59    call        TObject.Destroy
 004A2F5E    test        bl,bl
>004A2F60    jle         004A2F69
 004A2F62    mov         eax,esi
 004A2F64    call        @ClassDestroy
 004A2F69    pop         esi
 004A2F6A    pop         ebx
 004A2F6B    ret
*}
end;

//004A2F6C
function TEnumerable<System.TObject>.GetEnumerator:TEnumerator<System.TObject>;
begin
{*
 004A2F6C    mov         edx,dword ptr [eax]
 004A2F6E    call        dword ptr [edx]
 004A2F70    ret
*}
end;

//004A2F74
{*procedure TEnumerable<System.TObject>.ToArray(?:?);
begin
 004A2F74    push        ebp
 004A2F75    mov         ebp,esp
 004A2F77    add         esp,0FFFFFFF4
 004A2F7A    push        ebx
 004A2F7B    mov         dword ptr [ebp-4],edx
 004A2F7E    mov         ebx,eax
 004A2F80    mov         dl,1
 004A2F82    mov         eax,[0047D574];TList<System.TObject>
 004A2F87    call        TList<System.TObject>.Create
 004A2F8C    mov         dword ptr [ebp-8],eax
 004A2F8F    xor         eax,eax
 004A2F91    push        ebp
 004A2F92    push        4A301C
 004A2F97    push        dword ptr fs:[eax]
 004A2F9A    mov         dword ptr fs:[eax],esp
 004A2F9D    mov         eax,ebx
 004A2F9F    call        TEnumerable<System.TObject>.GetEnumerator
 004A2FA4    mov         dword ptr [ebp-0C],eax
 004A2FA7    xor         eax,eax
 004A2FA9    push        ebp
 004A2FAA    push        4A2FF4
 004A2FAF    push        dword ptr fs:[eax]
 004A2FB2    mov         dword ptr fs:[eax],esp
>004A2FB5    jmp         004A2FCA
 004A2FB7    mov         eax,dword ptr [ebp-0C]
 004A2FBA    mov         edx,dword ptr [eax]
 004A2FBC    call        dword ptr [edx]
 004A2FBE    mov         ebx,eax
 004A2FC0    mov         edx,ebx
 004A2FC2    mov         eax,dword ptr [ebp-8]
 004A2FC5    call        TList<System.TObject>.Add
 004A2FCA    mov         eax,dword ptr [ebp-0C]
 004A2FCD    call        TEnumerator<System.TObject>.MoveNext
 004A2FD2    test        al,al
>004A2FD4    jne         004A2FB7
 004A2FD6    xor         eax,eax
 004A2FD8    pop         edx
 004A2FD9    pop         ecx
 004A2FDA    pop         ecx
 004A2FDB    mov         dword ptr fs:[eax],edx
 004A2FDE    push        4A2FFB
 004A2FE3    cmp         dword ptr [ebp-0C],0
>004A2FE7    je          004A2FF3
 004A2FE9    mov         dl,1
 004A2FEB    mov         eax,dword ptr [ebp-0C]
 004A2FEE    mov         ecx,dword ptr [eax]
 004A2FF0    call        dword ptr [ecx-4]
 004A2FF3    ret
>004A2FF4    jmp         @HandleFinally
>004A2FF9    jmp         004A2FE3
 004A2FFB    mov         edx,dword ptr [ebp-4]
 004A2FFE    mov         eax,dword ptr [ebp-8]
 004A3001    call        TList<System.TObject>.ToArray
 004A3006    xor         eax,eax
 004A3008    pop         edx
 004A3009    pop         ecx
 004A300A    pop         ecx
 004A300B    mov         dword ptr fs:[eax],edx
 004A300E    push        4A3023
 004A3013    mov         eax,dword ptr [ebp-8]
 004A3016    call        TObject.Free
 004A301B    ret
>004A301C    jmp         @HandleFinally
>004A3021    jmp         004A3013
 004A3023    pop         ebx
 004A3024    mov         esp,ebp
 004A3026    pop         ebp
 004A3027    ret
end;*}

//004A3028
function TEnumerator<System.TObject>.MoveNext:Boolean;
begin
{*
 004A3028    mov         edx,dword ptr [eax]
 004A302A    call        dword ptr [edx+4]
 004A302D    ret
*}
end;

//004A3078
procedure sub_004A3078(?:TList<System.TObject>);
begin
{*
 004A3078    add         eax,8
 004A307B    call        004357A0
 004A3080    ret
*}
end;

//004A3084
{*procedure sub_004A3084(?:?; ?:?);
begin
 004A3084    push        ebx
 004A3085    mov         edx,dword ptr [edx]
 004A3087    mov         ebx,dword ptr [eax]
 004A3089    call        dword ptr [ebx+8]
 004A308C    pop         ebx
 004A308D    ret
end;*}

//004A3090
{*procedure sub_004A3090(?:?; ?:?; ?:?);
begin
 004A3090    push        ebx
 004A3091    mov         edx,dword ptr [edx]
 004A3093    mov         ecx,dword ptr [ecx]
 004A3095    mov         eax,dword ptr [eax+24]
 004A3098    mov         ebx,dword ptr [eax]
 004A309A    call        dword ptr [ebx+0C]
 004A309D    pop         ebx
 004A309E    ret
end;*}

//004A30A0
procedure sub_004A30A0;
begin
{*
 004A30A0    call        TList<System.TObject>.GetEnumerator
 004A30A5    ret
*}
end;

//004A30A8
{*procedure sub_004A30A8(?:?);
begin
 004A30A8    push        ebx
 004A30A9    cmp         word ptr [eax+2A],0
>004A30AE    je          004A30BD
 004A30B0    push        ecx
 004A30B1    mov         ebx,eax
 004A30B3    mov         ecx,edx
 004A30B5    mov         edx,eax
 004A30B7    mov         eax,dword ptr [ebx+2C]
 004A30BA    call        dword ptr [ebx+28]
 004A30BD    pop         ebx
 004A30BE    ret
end;*}

//004A30C0
constructor TList<System.TObject>.Create();
begin
{*
 004A30C0    push        ebp
 004A30C1    mov         ebp,esp
 004A30C3    push        0
 004A30C5    push        ebx
 004A30C6    push        esi
 004A30C7    test        dl,dl
>004A30C9    je          004A30D3
 004A30CB    add         esp,0FFFFFFF0
 004A30CE    call        @ClassCreate
 004A30D3    mov         ebx,edx
 004A30D5    mov         esi,eax
 004A30D7    xor         eax,eax
 004A30D9    push        ebp
 004A30DA    push        4A3114
 004A30DF    push        dword ptr fs:[eax]
 004A30E2    mov         dword ptr fs:[eax],esp
 004A30E5    lea         edx,[ebp-4]
 004A30E8    mov         eax,[004A9300];TComparer<System.TObject>
 004A30ED    call        TComparer<System.TObject>.Default
 004A30F2    mov         ecx,dword ptr [ebp-4]
 004A30F5    xor         edx,edx
 004A30F7    mov         eax,esi
 004A30F9    call        004A3138
 004A30FE    xor         eax,eax
 004A3100    pop         edx
 004A3101    pop         ecx
 004A3102    pop         ecx
 004A3103    mov         dword ptr fs:[eax],edx
 004A3106    push        4A311B
 004A310B    lea         eax,[ebp-4]
 004A310E    call        @IntfClear
 004A3113    ret
>004A3114    jmp         @HandleFinally
>004A3119    jmp         004A310B
 004A311B    mov         eax,esi
 004A311D    test        bl,bl
>004A311F    je          004A3130
 004A3121    call        @AfterConstruction
 004A3126    pop         dword ptr fs:[0]
 004A312D    add         esp,0C
 004A3130    mov         eax,esi
 004A3132    pop         esi
 004A3133    pop         ebx
 004A3134    pop         ecx
 004A3135    pop         ebp
 004A3136    ret
*}
end;

//004A3138
constructor sub_004A3138(AComparer:IComparer<System.TObject>);
begin
{*
 004A3138    push        ebp
 004A3139    mov         ebp,esp
 004A313B    push        0
 004A313D    push        ebx
 004A313E    push        esi
 004A313F    push        edi
 004A3140    test        dl,dl
>004A3142    je          004A314C
 004A3144    add         esp,0FFFFFFF0
 004A3147    call        @ClassCreate
 004A314C    mov         esi,ecx
 004A314E    mov         ebx,edx
 004A3150    mov         edi,eax
 004A3152    xor         eax,eax
 004A3154    push        ebp
 004A3155    push        4A31C3
 004A315A    push        dword ptr fs:[eax]
 004A315D    mov         dword ptr fs:[eax],esp
 004A3160    xor         edx,edx
 004A3162    mov         eax,edi
 004A3164    call        TObject.Create
 004A3169    mov         dword ptr [edi+14],edi;TList<System.TObject>.FOnNotify:TCollectionNotifyEvent<System.TOb...
 004A316C    mov         dword ptr [edi+10],4A3084;TList<System.TObject>.FOnNotify:TCollectionNotifyEvent<System....
 004A3173    mov         dword ptr [edi+1C],edi
 004A3176    mov         dword ptr [edi+18],4A3090;sub_004A3090
 004A317D    mov         eax,[0047D1D4];TList<System.TObject>.arrayofT
 004A3182    mov         dword ptr [edi+0C],eax;TList<System.TObject>.FComparer:IComparer<System.TObject>
 004A3185    lea         eax,[edi+24]
 004A3188    mov         edx,esi
 004A318A    call        @IntfCopy
 004A318F    cmp         dword ptr [edi+24],0
>004A3193    jne         004A31AD
 004A3195    lea         edx,[ebp-4]
 004A3198    mov         eax,[004A9300];TComparer<System.TObject>
 004A319D    call        TComparer<System.TObject>.Default
 004A31A2    mov         edx,dword ptr [ebp-4]
 004A31A5    lea         eax,[edi+24]
 004A31A8    call        @IntfCopy
 004A31AD    xor         eax,eax
 004A31AF    pop         edx
 004A31B0    pop         ecx
 004A31B1    pop         ecx
 004A31B2    mov         dword ptr fs:[eax],edx
 004A31B5    push        4A31CA
 004A31BA    lea         eax,[ebp-4]
 004A31BD    call        @IntfClear
 004A31C2    ret
>004A31C3    jmp         @HandleFinally
>004A31C8    jmp         004A31BA
 004A31CA    mov         eax,edi
 004A31CC    test        bl,bl
>004A31CE    je          004A31DF
 004A31D0    call        @AfterConstruction
 004A31D5    pop         dword ptr fs:[0]
 004A31DC    add         esp,0C
 004A31DF    mov         eax,edi
 004A31E1    pop         edi
 004A31E2    pop         esi
 004A31E3    pop         ebx
 004A31E4    pop         ecx
 004A31E5    pop         ebp
 004A31E6    ret
*}
end;

//004A31E8
destructor TList<System.TObject>.Destroy();
begin
{*
 004A31E8    push        ebx
 004A31E9    push        esi
 004A31EA    call        @BeforeDestruction
 004A31EF    mov         ebx,edx
 004A31F1    mov         esi,eax
 004A31F3    cmp         dword ptr [esi+8],0;TList<System.TObject>.FCount:Integer
>004A31F7    jle         004A3202
 004A31F9    xor         edx,edx
 004A31FB    mov         eax,esi
 004A31FD    call        004A3078
 004A3202    push        0
 004A3204    lea         eax,[esi+20]
 004A3207    mov         ecx,1
 004A320C    mov         edx,dword ptr ds:[47D1D4];TList<System.TObject>.arrayofT
 004A3212    call        @DynArraySetLength
 004A3217    add         esp,4
 004A321A    mov         dl,0FC
 004A321C    and         dl,bl
 004A321E    mov         eax,esi
 004A3220    call        TEnumerable<System.TObject>.Destroy
 004A3225    test        bl,bl
>004A3227    jle         004A3230
 004A3229    mov         eax,esi
 004A322B    call        @ClassDestroy
 004A3230    pop         esi
 004A3231    pop         ebx
 004A3232    ret
*}
end;

//004A3234
{*procedure TList<System.TObject>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A3234    push        ebp
 004A3235    mov         ebp,esp
 004A3237    add         esp,0FFFFFFF0
 004A323A    mov         dword ptr [ebp-8],ecx
 004A323D    mov         dword ptr [ebp-4],edx
 004A3240    push        dword ptr [ebp+4]
 004A3243    mov         eax,dword ptr [ebp-8]
 004A3246    mov         dword ptr [ebp-10],eax
 004A3249    mov         byte ptr [ebp-0C],0
 004A324D    lea         eax,[ebp-10]
 004A3250    push        eax
 004A3251    push        0
 004A3253    mov         ecx,dword ptr [ebp-4]
 004A3256    mov         dl,1
 004A3258    mov         eax,[004180BC];EListError
 004A325D    call        Exception.CreateFmt;EListError.Create
>004A3262    jmp         @RaiseExcept
end;*}

//004A326C
procedure TList<System.TObject>.Add(Value:TObject);
begin
{*
 004A326C    push        ecx
 004A326D    mov         dword ptr [esp],edx
 004A3270    mov         edx,esp
 004A3272    add         eax,8
 004A3275    call        0043489C
 004A327A    pop         edx
 004A327B    ret
*}
end;

//004A327C
{*procedure TList<System.TObject>.ToArray(?:?);
begin
 004A327C    push        ecx
 004A327D    mov         dword ptr [esp],edx
 004A3280    mov         edx,dword ptr [esp]
 004A3283    add         eax,8
 004A3286    call        00435980
 004A328B    pop         edx
 004A328C    ret
end;*}

//004A3290
function TList<System.TObject>.GetEnumerator:TList<System.TObject>.TEnumerator;
begin
{*
 004A3290    mov         ecx,eax
 004A3292    mov         dl,1
 004A3294    mov         eax,[0047D3D4];TList<System.TObject>.TEnumerator
 004A3299    call        TList<System.Classes.TShortCut>.TEnumerator.Create
 004A329E    ret
*}
end;

//004A32A0
{*function sub_004A32A0(?:?):?;
begin
 004A32A0    push        ebx
 004A32A1    push        esi
 004A32A2    mov         ebx,dword ptr [eax+4]
 004A32A5    mov         esi,dword ptr [eax+8]
 004A32A8    lea         eax,[ebx+8]
 004A32AB    mov         edx,esi
 004A32AD    call        00434534
 004A32B2    mov         eax,dword ptr [ebx+20]
 004A32B5    mov         eax,dword ptr [eax+esi*4]
 004A32B8    pop         esi
 004A32B9    pop         ebx
 004A32BA    ret
end;*}

//004A32BC
procedure sub_004A32BC;
begin
{*
 004A32BC    call        004A32A0
 004A32C1    ret
*}
end;

//004A32C4
procedure sub_004A32C4;
begin
{*
 004A32C4    call        TList<System.TObject>.TEnumerator.MoveNext
 004A32C9    ret
*}
end;

//004A32CC
constructor TList<System.Classes.TShortCut>.TEnumerator.Create;
begin
{*
 004A32CC    push        ebx
 004A32CD    push        esi
 004A32CE    push        edi
 004A32CF    test        dl,dl
>004A32D1    je          004A32DB
 004A32D3    add         esp,0FFFFFFF0
 004A32D6    call        @ClassCreate
 004A32DB    mov         esi,ecx
 004A32DD    mov         ebx,edx
 004A32DF    mov         edi,eax
 004A32E1    xor         edx,edx
 004A32E3    mov         eax,edi
 004A32E5    call        TObject.Create
 004A32EA    mov         dword ptr [edi+4],esi
 004A32ED    mov         dword ptr [edi+8],0FFFFFFFF
 004A32F4    mov         eax,edi
 004A32F6    test        bl,bl
>004A32F8    je          004A3309
 004A32FA    call        @AfterConstruction
 004A32FF    pop         dword ptr fs:[0]
 004A3306    add         esp,0C
 004A3309    mov         eax,edi
 004A330B    pop         edi
 004A330C    pop         esi
 004A330D    pop         ebx
 004A330E    ret
*}
end;

//004A3310
function TList<System.TObject>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A3310    mov         edx,dword ptr [eax+4]
 004A3313    mov         edx,dword ptr [edx+8]
 004A3316    cmp         edx,dword ptr [eax+8]
>004A3319    jg          004A331E
 004A331B    xor         eax,eax
 004A331D    ret
 004A331E    inc         dword ptr [eax+8]
 004A3321    mov         edx,dword ptr [eax+4]
 004A3324    mov         edx,dword ptr [edx+8]
 004A3327    cmp         edx,dword ptr [eax+8]
 004A332A    setg        al
 004A332D    ret
*}
end;

//004A3330
destructor TEnumerable<System.Classes.TComponent>.Destroy();
begin
{*
 004A3330    push        ebx
 004A3331    push        esi
 004A3332    call        @BeforeDestruction
 004A3337    mov         ebx,edx
 004A3339    mov         esi,eax
 004A333B    mov         dl,0FC
 004A333D    and         dl,bl
 004A333F    mov         eax,esi
 004A3341    call        TObject.Destroy
 004A3346    test        bl,bl
>004A3348    jle         004A3351
 004A334A    mov         eax,esi
 004A334C    call        @ClassDestroy
 004A3351    pop         esi
 004A3352    pop         ebx
 004A3353    ret
*}
end;

//004A3354
function TEnumerable<System.Classes.TComponent>.GetEnumerator:TEnumerator<System.Classes.TComponent>;
begin
{*
 004A3354    mov         edx,dword ptr [eax]
 004A3356    call        dword ptr [edx]
 004A3358    ret
*}
end;

//004A335C
function TEnumerable<System.Classes.TComponent>.ToArray:TArray<System.Classes.TComponent>;
begin
{*
 004A335C    push        ebp
 004A335D    mov         ebp,esp
 004A335F    add         esp,0FFFFFFF4
 004A3362    push        ebx
 004A3363    mov         dword ptr [ebp-4],edx
 004A3366    mov         ebx,eax
 004A3368    mov         dl,1
 004A336A    mov         eax,[0047E924];TList<System.Classes.TComponent>
 004A336F    call        TList<System.Actions.TContainedAction>.Create
 004A3374    mov         dword ptr [ebp-8],eax
 004A3377    xor         eax,eax
 004A3379    push        ebp
 004A337A    push        4A3404
 004A337F    push        dword ptr fs:[eax]
 004A3382    mov         dword ptr fs:[eax],esp
 004A3385    mov         eax,ebx
 004A3387    call        TEnumerable<System.Classes.TComponent>.GetEnumerator
 004A338C    mov         dword ptr [ebp-0C],eax
 004A338F    xor         eax,eax
 004A3391    push        ebp
 004A3392    push        4A33DC
 004A3397    push        dword ptr fs:[eax]
 004A339A    mov         dword ptr fs:[eax],esp
>004A339D    jmp         004A33B2
 004A339F    mov         eax,dword ptr [ebp-0C]
 004A33A2    mov         edx,dword ptr [eax]
 004A33A4    call        dword ptr [edx]
 004A33A6    mov         ebx,eax
 004A33A8    mov         edx,ebx
 004A33AA    mov         eax,dword ptr [ebp-8]
 004A33AD    call        TList<System.Classes.TComponent>.Add
 004A33B2    mov         eax,dword ptr [ebp-0C]
 004A33B5    call        TEnumerator<System.Classes.TComponent>.MoveNext
 004A33BA    test        al,al
>004A33BC    jne         004A339F
 004A33BE    xor         eax,eax
 004A33C0    pop         edx
 004A33C1    pop         ecx
 004A33C2    pop         ecx
 004A33C3    mov         dword ptr fs:[eax],edx
 004A33C6    push        4A33E3
 004A33CB    cmp         dword ptr [ebp-0C],0
>004A33CF    je          004A33DB
 004A33D1    mov         dl,1
 004A33D3    mov         eax,dword ptr [ebp-0C]
 004A33D6    mov         ecx,dword ptr [eax]
 004A33D8    call        dword ptr [ecx-4]
 004A33DB    ret
>004A33DC    jmp         @HandleFinally
>004A33E1    jmp         004A33CB
 004A33E3    mov         edx,dword ptr [ebp-4]
 004A33E6    mov         eax,dword ptr [ebp-8]
 004A33E9    call        TList<System.Classes.TComponent>.ToArray
 004A33EE    xor         eax,eax
 004A33F0    pop         edx
 004A33F1    pop         ecx
 004A33F2    pop         ecx
 004A33F3    mov         dword ptr fs:[eax],edx
 004A33F6    push        4A340B
 004A33FB    mov         eax,dword ptr [ebp-8]
 004A33FE    call        TObject.Free
 004A3403    ret
>004A3404    jmp         @HandleFinally
>004A3409    jmp         004A33FB
 004A340B    pop         ebx
 004A340C    mov         esp,ebp
 004A340E    pop         ebp
 004A340F    ret
*}
end;

//004A3410
function TEnumerator<System.Classes.TComponent>.MoveNext:Boolean;
begin
{*
 004A3410    mov         edx,dword ptr [eax]
 004A3412    call        dword ptr [edx+4]
 004A3415    ret
*}
end;

//004A3460
procedure sub_004A3460(?:TList<System.Classes.TComponent>);
begin
{*
 004A3460    add         eax,8
 004A3463    call        004357A0
 004A3468    ret
*}
end;

//004A346C
{*procedure sub_004A346C(?:?; ?:?);
begin
 004A346C    push        ebx
 004A346D    mov         edx,dword ptr [edx]
 004A346F    mov         ebx,dword ptr [eax]
 004A3471    call        dword ptr [ebx+8]
 004A3474    pop         ebx
 004A3475    ret
end;*}

//004A3478
{*procedure sub_004A3478(?:?; ?:?; ?:?);
begin
 004A3478    push        ebx
 004A3479    mov         edx,dword ptr [edx]
 004A347B    mov         ecx,dword ptr [ecx]
 004A347D    mov         eax,dword ptr [eax+24]
 004A3480    mov         ebx,dword ptr [eax]
 004A3482    call        dword ptr [ebx+0C]
 004A3485    pop         ebx
 004A3486    ret
end;*}

//004A3488
procedure sub_004A3488;
begin
{*
 004A3488    call        TList<System.Classes.TComponent>.GetEnumerator
 004A348D    ret
*}
end;

//004A3490
{*procedure sub_004A3490(?:?);
begin
 004A3490    push        ebx
 004A3491    cmp         word ptr [eax+2A],0
>004A3496    je          004A34A5
 004A3498    push        ecx
 004A3499    mov         ebx,eax
 004A349B    mov         ecx,edx
 004A349D    mov         edx,eax
 004A349F    mov         eax,dword ptr [ebx+2C]
 004A34A2    call        dword ptr [ebx+28]
 004A34A5    pop         ebx
 004A34A6    ret
end;*}

//004A34A8
constructor TList<System.Actions.TContainedAction>.Create();
begin
{*
 004A34A8    push        ebp
 004A34A9    mov         ebp,esp
 004A34AB    push        0
 004A34AD    push        ebx
 004A34AE    push        esi
 004A34AF    test        dl,dl
>004A34B1    je          004A34BB
 004A34B3    add         esp,0FFFFFFF0
 004A34B6    call        @ClassCreate
 004A34BB    mov         ebx,edx
 004A34BD    mov         esi,eax
 004A34BF    xor         eax,eax
 004A34C1    push        ebp
 004A34C2    push        4A34FC
 004A34C7    push        dword ptr fs:[eax]
 004A34CA    mov         dword ptr fs:[eax],esp
 004A34CD    lea         edx,[ebp-4]
 004A34D0    mov         eax,[0049EEDC];TComparer<System.Classes.TComponent>
 004A34D5    call        TComparer<System.Classes.TComponent>.Default
 004A34DA    mov         ecx,dword ptr [ebp-4]
 004A34DD    xor         edx,edx
 004A34DF    mov         eax,esi
 004A34E1    call        004A3520
 004A34E6    xor         eax,eax
 004A34E8    pop         edx
 004A34E9    pop         ecx
 004A34EA    pop         ecx
 004A34EB    mov         dword ptr fs:[eax],edx
 004A34EE    push        4A3503
 004A34F3    lea         eax,[ebp-4]
 004A34F6    call        @IntfClear
 004A34FB    ret
>004A34FC    jmp         @HandleFinally
>004A3501    jmp         004A34F3
 004A3503    mov         eax,esi
 004A3505    test        bl,bl
>004A3507    je          004A3518
 004A3509    call        @AfterConstruction
 004A350E    pop         dword ptr fs:[0]
 004A3515    add         esp,0C
 004A3518    mov         eax,esi
 004A351A    pop         esi
 004A351B    pop         ebx
 004A351C    pop         ecx
 004A351D    pop         ebp
 004A351E    ret
*}
end;

//004A3520
constructor sub_004A3520(AComparer:IComparer<System.Classes.TComponent>);
begin
{*
 004A3520    push        ebp
 004A3521    mov         ebp,esp
 004A3523    push        0
 004A3525    push        ebx
 004A3526    push        esi
 004A3527    push        edi
 004A3528    test        dl,dl
>004A352A    je          004A3534
 004A352C    add         esp,0FFFFFFF0
 004A352F    call        @ClassCreate
 004A3534    mov         esi,ecx
 004A3536    mov         ebx,edx
 004A3538    mov         edi,eax
 004A353A    xor         eax,eax
 004A353C    push        ebp
 004A353D    push        4A35AB
 004A3542    push        dword ptr fs:[eax]
 004A3545    mov         dword ptr fs:[eax],esp
 004A3548    xor         edx,edx
 004A354A    mov         eax,edi
 004A354C    call        TObject.Create
 004A3551    mov         dword ptr [edi+14],edi;TList<System.Classes.TComponent>.FOnNotify:TCollectionNotifyEvent...
 004A3554    mov         dword ptr [edi+10],4A346C;TList<System.Classes.TComponent>.FOnNotify:TCollectionNotifyEv...
 004A355B    mov         dword ptr [edi+1C],edi
 004A355E    mov         dword ptr [edi+18],4A3478;sub_004A3478
 004A3565    mov         eax,[0047E534];TList<System.Classes.TComponent>.arrayofT
 004A356A    mov         dword ptr [edi+0C],eax;TList<System.Classes.TComponent>.FComparer:IComparer<System.Class...
 004A356D    lea         eax,[edi+24]
 004A3570    mov         edx,esi
 004A3572    call        @IntfCopy
 004A3577    cmp         dword ptr [edi+24],0
>004A357B    jne         004A3595
 004A357D    lea         edx,[ebp-4]
 004A3580    mov         eax,[0049EEDC];TComparer<System.Classes.TComponent>
 004A3585    call        TComparer<System.Classes.TComponent>.Default
 004A358A    mov         edx,dword ptr [ebp-4]
 004A358D    lea         eax,[edi+24]
 004A3590    call        @IntfCopy
 004A3595    xor         eax,eax
 004A3597    pop         edx
 004A3598    pop         ecx
 004A3599    pop         ecx
 004A359A    mov         dword ptr fs:[eax],edx
 004A359D    push        4A35B2
 004A35A2    lea         eax,[ebp-4]
 004A35A5    call        @IntfClear
 004A35AA    ret
>004A35AB    jmp         @HandleFinally
>004A35B0    jmp         004A35A2
 004A35B2    mov         eax,edi
 004A35B4    test        bl,bl
>004A35B6    je          004A35C7
 004A35B8    call        @AfterConstruction
 004A35BD    pop         dword ptr fs:[0]
 004A35C4    add         esp,0C
 004A35C7    mov         eax,edi
 004A35C9    pop         edi
 004A35CA    pop         esi
 004A35CB    pop         ebx
 004A35CC    pop         ecx
 004A35CD    pop         ebp
 004A35CE    ret
*}
end;

//004A35D0
destructor TList<System.Classes.TComponent>.Destroy();
begin
{*
 004A35D0    push        ebx
 004A35D1    push        esi
 004A35D2    call        @BeforeDestruction
 004A35D7    mov         ebx,edx
 004A35D9    mov         esi,eax
 004A35DB    cmp         dword ptr [esi+8],0;TList<System.Classes.TComponent>.FCount:Integer
>004A35DF    jle         004A35EA
 004A35E1    xor         edx,edx
 004A35E3    mov         eax,esi
 004A35E5    call        004A3460
 004A35EA    push        0
 004A35EC    lea         eax,[esi+20]
 004A35EF    mov         ecx,1
 004A35F4    mov         edx,dword ptr ds:[47E534];TList<System.Classes.TComponent>.arrayofT
 004A35FA    call        @DynArraySetLength
 004A35FF    add         esp,4
 004A3602    mov         dl,0FC
 004A3604    and         dl,bl
 004A3606    mov         eax,esi
 004A3608    call        TEnumerable<System.Classes.TComponent>.Destroy
 004A360D    test        bl,bl
>004A360F    jle         004A3618
 004A3611    mov         eax,esi
 004A3613    call        @ClassDestroy
 004A3618    pop         esi
 004A3619    pop         ebx
 004A361A    ret
*}
end;

//004A361C
{*procedure TList<System.Classes.TComponent>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A361C    push        ebp
 004A361D    mov         ebp,esp
 004A361F    add         esp,0FFFFFFF0
 004A3622    mov         dword ptr [ebp-8],ecx
 004A3625    mov         dword ptr [ebp-4],edx
 004A3628    push        dword ptr [ebp+4]
 004A362B    mov         eax,dword ptr [ebp-8]
 004A362E    mov         dword ptr [ebp-10],eax
 004A3631    mov         byte ptr [ebp-0C],0
 004A3635    lea         eax,[ebp-10]
 004A3638    push        eax
 004A3639    push        0
 004A363B    mov         ecx,dword ptr [ebp-4]
 004A363E    mov         dl,1
 004A3640    mov         eax,[004180BC];EListError
 004A3645    call        Exception.CreateFmt;EListError.Create
>004A364A    jmp         @RaiseExcept
end;*}

//004A3654
function TList<System.Classes.TComponent>.Add(Value:TComponent):Integer;
begin
{*
 004A3654    push        ecx
 004A3655    mov         dword ptr [esp],edx
 004A3658    mov         edx,esp
 004A365A    add         eax,8
 004A365D    call        0043489C
 004A3662    pop         edx
 004A3663    ret
*}
end;

//004A3664
procedure TList<System.Classes.TComponent>.Sort(AComparer:IComparer<System.Classes.TComponent>);
begin
{*
 004A3664    push        ebx
 004A3665    push        esi
 004A3666    push        ecx
 004A3667    mov         esi,dword ptr [eax+20]
 004A366A    mov         dword ptr [esp],esi
 004A366D    mov         ecx,dword ptr [esp]
 004A3670    test        ecx,ecx
>004A3672    je          004A3679
 004A3674    sub         ecx,4
 004A3677    mov         ecx,dword ptr [ecx]
 004A3679    push        0
 004A367B    mov         ebx,dword ptr [eax+8]
 004A367E    push        ebx
 004A367F    mov         eax,esi
 004A3681    dec         ecx
 004A3682    xchg        ecx,edx
 004A3684    call        004A7FD4
 004A3689    pop         edx
 004A368A    pop         esi
 004A368B    pop         ebx
 004A368C    ret
*}
end;

//004A3690
function TList<System.Classes.TComponent>.ToArray:TArray<System.Classes.TComponent>;
begin
{*
 004A3690    push        ecx
 004A3691    mov         dword ptr [esp],edx
 004A3694    mov         edx,dword ptr [esp]
 004A3697    add         eax,8
 004A369A    call        00435980
 004A369F    pop         edx
 004A36A0    ret
*}
end;

//004A36A4
procedure TList<System.Classes.TComponent>.GetEnumerator;
begin
{*
 004A36A4    mov         ecx,eax
 004A36A6    mov         dl,1
 004A36A8    mov         eax,[0047E76C];TList<System.Classes.TComponent>.TEnumerator
 004A36AD    call        004A36E0
 004A36B2    ret
*}
end;

//004A36B4
{*function sub_004A36B4(?:?):?;
begin
 004A36B4    push        ebx
 004A36B5    push        esi
 004A36B6    mov         ebx,dword ptr [eax+4]
 004A36B9    mov         esi,dword ptr [eax+8]
 004A36BC    lea         eax,[ebx+8]
 004A36BF    mov         edx,esi
 004A36C1    call        00434534
 004A36C6    mov         eax,dword ptr [ebx+20]
 004A36C9    mov         eax,dword ptr [eax+esi*4]
 004A36CC    pop         esi
 004A36CD    pop         ebx
 004A36CE    ret
end;*}

//004A36D0
procedure sub_004A36D0;
begin
{*
 004A36D0    call        004A36B4
 004A36D5    ret
*}
end;

//004A36D8
procedure sub_004A36D8;
begin
{*
 004A36D8    call        TList<System.Classes.TComponent>.TEnumerator.MoveNext
 004A36DD    ret
*}
end;

//004A36E0
constructor sub_004A36E0(AList:TList<System.Classes.TComponent>);
begin
{*
 004A36E0    push        ebx
 004A36E1    push        esi
 004A36E2    push        edi
 004A36E3    test        dl,dl
>004A36E5    je          004A36EF
 004A36E7    add         esp,0FFFFFFF0
 004A36EA    call        @ClassCreate
 004A36EF    mov         esi,ecx
 004A36F1    mov         ebx,edx
 004A36F3    mov         edi,eax
 004A36F5    xor         edx,edx
 004A36F7    mov         eax,edi
 004A36F9    call        TObject.Create
 004A36FE    mov         dword ptr [edi+4],esi;TList<System.Classes.TComponent>.TEnumerator.FList:TList<System.Cl...
 004A3701    mov         dword ptr [edi+8],0FFFFFFFF
 004A3708    mov         eax,edi
 004A370A    test        bl,bl
>004A370C    je          004A371D
 004A370E    call        @AfterConstruction
 004A3713    pop         dword ptr fs:[0]
 004A371A    add         esp,0C
 004A371D    mov         eax,edi
 004A371F    pop         edi
 004A3720    pop         esi
 004A3721    pop         ebx
 004A3722    ret
*}
end;

//004A3724
function TList<System.Classes.TComponent>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A3724    mov         edx,dword ptr [eax+4]
 004A3727    mov         edx,dword ptr [edx+8]
 004A372A    cmp         edx,dword ptr [eax+8]
>004A372D    jg          004A3732
 004A372F    xor         eax,eax
 004A3731    ret
 004A3732    inc         dword ptr [eax+8]
 004A3735    mov         edx,dword ptr [eax+4]
 004A3738    mov         edx,dword ptr [edx+8]
 004A373B    cmp         edx,dword ptr [eax+8]
 004A373E    setg        al
 004A3741    ret
*}
end;

//004A3744
{*procedure sub_004A3744(?:TDictionary<System; ?:?; ?:?);
begin
 004A3744    push        ebp
 004A3745    mov         ebp,esp
 004A3747    add         esp,0FFFFFFF0
 004A374A    push        ebx
 004A374B    push        esi
 004A374C    mov         dword ptr [ebp-0C],ecx
 004A374F    mov         ebx,edx
 004A3751    mov         esi,eax
 004A3753    lea         eax,[ebp-8]
 004A3756    mov         edx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A375C    call        @AddRefRecord
 004A3761    xor         eax,eax
 004A3763    push        ebp
 004A3764    push        4A3810
 004A3769    push        dword ptr fs:[eax]
 004A376C    mov         dword ptr fs:[eax],esp
 004A376F    push        ebx
 004A3770    mov         eax,dword ptr [ebp-0C]
 004A3773    mov         ecx,1
 004A3778    mov         edx,dword ptr ds:[47F68C];TArray<System.Classes.TPair<System.Integer,System.Classes.IInt...
 004A377E    call        @DynArraySetLength
 004A3783    add         esp,4
 004A3786    xor         ebx,ebx
 004A3788    mov         eax,esi
 004A378A    call        TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator
 004A378F    mov         dword ptr [ebp-10],eax
 004A3792    xor         eax,eax
 004A3794    push        ebp
 004A3795    push        4A37ED
 004A379A    push        dword ptr fs:[eax]
 004A379D    mov         dword ptr fs:[eax],esp
>004A37A0    jmp         004A37C3
 004A37A2    lea         edx,[ebp-8]
 004A37A5    mov         eax,dword ptr [ebp-10]
 004A37A8    mov         ecx,dword ptr [eax]
 004A37AA    call        dword ptr [ecx]
 004A37AC    mov         eax,dword ptr [ebp-0C]
 004A37AF    mov         eax,dword ptr [eax]
 004A37B1    lea         eax,[eax+ebx*8]
 004A37B4    lea         edx,[ebp-8]
 004A37B7    mov         ecx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A37BD    call        @CopyRecord
 004A37C2    inc         ebx
 004A37C3    mov         eax,dword ptr [ebp-10]
 004A37C6    call        TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.MoveNext
 004A37CB    test        al,al
>004A37CD    jne         004A37A2
 004A37CF    xor         eax,eax
 004A37D1    pop         edx
 004A37D2    pop         ecx
 004A37D3    pop         ecx
 004A37D4    mov         dword ptr fs:[eax],edx
 004A37D7    push        4A37F4
 004A37DC    cmp         dword ptr [ebp-10],0
>004A37E0    je          004A37EC
 004A37E2    mov         dl,1
 004A37E4    mov         eax,dword ptr [ebp-10]
 004A37E7    mov         ecx,dword ptr [eax]
 004A37E9    call        dword ptr [ecx-4]
 004A37EC    ret
>004A37ED    jmp         @HandleFinally
>004A37F2    jmp         004A37DC
 004A37F4    xor         eax,eax
 004A37F6    pop         edx
 004A37F7    pop         ecx
 004A37F8    pop         ecx
 004A37F9    mov         dword ptr fs:[eax],edx
 004A37FC    push        4A3817
 004A3801    lea         eax,[ebp-8]
 004A3804    mov         edx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A380A    call        @FinalizeRecord
 004A380F    ret
>004A3810    jmp         @HandleFinally
>004A3815    jmp         004A3801
 004A3817    pop         esi
 004A3818    pop         ebx
 004A3819    mov         esp,ebp
 004A381B    pop         ebp
 004A381C    ret
end;*}

//004A3820
destructor TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy();
begin
{*
 004A3820    push        ebx
 004A3821    push        esi
 004A3822    call        @BeforeDestruction
 004A3827    mov         ebx,edx
 004A3829    mov         esi,eax
 004A382B    mov         dl,0FC
 004A382D    and         dl,bl
 004A382F    mov         eax,esi
 004A3831    call        TObject.Destroy
 004A3836    test        bl,bl
>004A3838    jle         004A3841
 004A383A    mov         eax,esi
 004A383C    call        @ClassDestroy
 004A3841    pop         esi
 004A3842    pop         ebx
 004A3843    ret
*}
end;

//004A3844
function TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator:TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;
begin
{*
 004A3844    mov         edx,dword ptr [eax]
 004A3846    call        dword ptr [edx]
 004A3848    ret
*}
end;

//004A384C
{*procedure TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray(?:?);
begin
 004A384C    push        ebp
 004A384D    mov         ebp,esp
 004A384F    add         esp,0FFFFFFEC
 004A3852    push        ebx
 004A3853    mov         dword ptr [ebp-0C],edx
 004A3856    mov         ebx,eax
 004A3858    lea         eax,[ebp-8]
 004A385B    mov         edx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A3861    call        @AddRefRecord
 004A3866    xor         eax,eax
 004A3868    push        ebp
 004A3869    push        4A3935
 004A386E    push        dword ptr fs:[eax]
 004A3871    mov         dword ptr fs:[eax],esp
 004A3874    mov         dl,1
 004A3876    mov         eax,[004A99D8];TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>
 004A387B    call        004A80C8
 004A3880    mov         dword ptr [ebp-10],eax
 004A3883    xor         eax,eax
 004A3885    push        ebp
 004A3886    push        4A3912
 004A388B    push        dword ptr fs:[eax]
 004A388E    mov         dword ptr fs:[eax],esp
 004A3891    mov         eax,ebx
 004A3893    call        TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator
 004A3898    mov         dword ptr [ebp-14],eax
 004A389B    xor         eax,eax
 004A389D    push        ebp
 004A389E    push        4A38EA
 004A38A3    push        dword ptr fs:[eax]
 004A38A6    mov         dword ptr fs:[eax],esp
>004A38A9    jmp         004A38C0
 004A38AB    lea         edx,[ebp-8]
 004A38AE    mov         eax,dword ptr [ebp-14]
 004A38B1    mov         ecx,dword ptr [eax]
 004A38B3    call        dword ptr [ecx]
 004A38B5    lea         edx,[ebp-8]
 004A38B8    mov         eax,dword ptr [ebp-10]
 004A38BB    call        TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Add
 004A38C0    mov         eax,dword ptr [ebp-14]
 004A38C3    call        TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.MoveNext
 004A38C8    test        al,al
>004A38CA    jne         004A38AB
 004A38CC    xor         eax,eax
 004A38CE    pop         edx
 004A38CF    pop         ecx
 004A38D0    pop         ecx
 004A38D1    mov         dword ptr fs:[eax],edx
 004A38D4    push        4A38F1
 004A38D9    cmp         dword ptr [ebp-14],0
>004A38DD    je          004A38E9
 004A38DF    mov         dl,1
 004A38E1    mov         eax,dword ptr [ebp-14]
 004A38E4    mov         ecx,dword ptr [eax]
 004A38E6    call        dword ptr [ecx-4]
 004A38E9    ret
>004A38EA    jmp         @HandleFinally
>004A38EF    jmp         004A38D9
 004A38F1    mov         edx,dword ptr [ebp-0C]
 004A38F4    mov         eax,dword ptr [ebp-10]
 004A38F7    call        TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray
 004A38FC    xor         eax,eax
 004A38FE    pop         edx
 004A38FF    pop         ecx
 004A3900    pop         ecx
 004A3901    mov         dword ptr fs:[eax],edx
 004A3904    push        4A3919
 004A3909    mov         eax,dword ptr [ebp-10]
 004A390C    call        TObject.Free
 004A3911    ret
>004A3912    jmp         @HandleFinally
>004A3917    jmp         004A3909
 004A3919    xor         eax,eax
 004A391B    pop         edx
 004A391C    pop         ecx
 004A391D    pop         ecx
 004A391E    mov         dword ptr fs:[eax],edx
 004A3921    push        4A393C
 004A3926    lea         eax,[ebp-8]
 004A3929    mov         edx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A392F    call        @FinalizeRecord
 004A3934    ret
>004A3935    jmp         @HandleFinally
>004A393A    jmp         004A3926
 004A393C    pop         ebx
 004A393D    mov         esp,ebp
 004A393F    pop         ebp
 004A3940    ret
end;*}

//004A3944
function TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.MoveNext:Boolean;
begin
{*
 004A3944    mov         edx,dword ptr [eax]
 004A3946    call        dword ptr [edx+4]
 004A3949    ret
*}
end;

//004A394C
procedure sub_004A394C(?:TDictionary<System.Integer,System.Classes.IInterfaceList>; ?:Integer);
begin
{*
 004A394C    cmp         edx,dword ptr [eax+8]
>004A394F    jge         004A3968
 004A3951    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004A3957    mov         dl,1
 004A3959    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004A395E    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004A3963    call        @RaiseExcept
 004A3968    test        edx,edx
>004A396A    jne         004A3974
 004A396C    xor         edx,edx
 004A396E    call        004A398C
 004A3973    ret
 004A3974    mov         ecx,4
 004A3979    cmp         edx,ecx
>004A397B    jle         004A3983
 004A397D    add         ecx,ecx
 004A397F    cmp         edx,ecx
>004A3981    jg          004A397D
 004A3983    mov         edx,ecx
 004A3985    call        004A398C
 004A398A    ret
*}
end;

//004A398C
{*procedure sub_004A398C(?:?; ?:?);
begin
 004A398C    push        ebp
 004A398D    mov         ebp,esp
 004A398F    add         esp,0FFFFFFF0
 004A3992    push        ebx
 004A3993    push        esi
 004A3994    push        edi
 004A3995    xor         ecx,ecx
 004A3997    mov         dword ptr [ebp-4],ecx
 004A399A    mov         dword ptr [ebp-8],ecx
 004A399D    mov         edi,edx
 004A399F    mov         dword ptr [ebp-0C],eax
 004A39A2    xor         eax,eax
 004A39A4    push        ebp
 004A39A5    push        4A3AAD
 004A39AA    push        dword ptr fs:[eax]
 004A39AD    mov         dword ptr fs:[eax],esp
 004A39B0    mov         eax,dword ptr [ebp-0C]
 004A39B3    mov         eax,dword ptr [eax+4]
 004A39B6    mov         dword ptr [ebp-10],eax
 004A39B9    mov         eax,dword ptr [ebp-10]
 004A39BC    test        eax,eax
>004A39BE    je          004A39C5
 004A39C0    sub         eax,4
 004A39C3    mov         eax,dword ptr [eax]
 004A39C5    cmp         eax,edi
>004A39C7    je          004A3A8C
 004A39CD    test        edi,edi
>004A39CF    jge         004A39D6
 004A39D1    call        00423F00
 004A39D6    lea         eax,[ebp-4]
 004A39D9    mov         edx,dword ptr [ebp-0C]
 004A39DC    mov         edx,dword ptr [edx+4]
 004A39DF    mov         ecx,dword ptr ds:[47FAFC];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A39E5    call        @DynArrayAsg
 004A39EA    push        edi
 004A39EB    lea         eax,[ebp-8]
 004A39EE    mov         ecx,1
 004A39F3    mov         edx,dword ptr ds:[47FAFC];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A39F9    call        @DynArraySetLength
 004A39FE    add         esp,4
 004A3A01    mov         eax,dword ptr [ebp-8]
 004A3A04    test        eax,eax
>004A3A06    je          004A3A0D
 004A3A08    sub         eax,4
 004A3A0B    mov         eax,dword ptr [eax]
 004A3A0D    mov         esi,eax
 004A3A0F    dec         esi
 004A3A10    test        esi,esi
>004A3A12    jl          004A3A28
 004A3A14    inc         esi
 004A3A15    xor         ebx,ebx
 004A3A17    lea         eax,[ebx+ebx*2]
 004A3A1A    mov         edx,dword ptr [ebp-8]
 004A3A1D    mov         dword ptr [edx+eax*4],0FFFFFFFF
 004A3A24    inc         ebx
 004A3A25    dec         esi
>004A3A26    jne         004A3A17
 004A3A28    mov         eax,dword ptr [ebp-0C]
 004A3A2B    add         eax,4
 004A3A2E    mov         edx,dword ptr [ebp-8]
 004A3A31    mov         ecx,dword ptr ds:[47FAFC];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A3A37    call        @DynArrayAsg
 004A3A3C    mov         eax,edi
 004A3A3E    shr         eax,1
 004A3A40    shr         edi,2
 004A3A43    add         eax,edi
 004A3A45    mov         edx,dword ptr [ebp-0C]
 004A3A48    mov         dword ptr [edx+10],eax
 004A3A4B    mov         eax,dword ptr [ebp-4]
 004A3A4E    test        eax,eax
>004A3A50    je          004A3A57
 004A3A52    sub         eax,4
 004A3A55    mov         eax,dword ptr [eax]
 004A3A57    mov         esi,eax
 004A3A59    dec         esi
 004A3A5A    test        esi,esi
>004A3A5C    jl          004A3A8C
 004A3A5E    inc         esi
 004A3A5F    xor         ebx,ebx
 004A3A61    lea         eax,[ebx+ebx*2]
 004A3A64    mov         edx,dword ptr [ebp-4]
 004A3A67    mov         edx,dword ptr [edx+eax*4]
 004A3A6A    cmp         edx,0FFFFFFFF
>004A3A6D    je          004A3A88
 004A3A6F    mov         ecx,dword ptr [ebp-4]
 004A3A72    mov         ecx,dword ptr [ecx+eax*4+8]
 004A3A76    push        ecx
 004A3A77    mov         ecx,dword ptr [ebp-4]
 004A3A7A    mov         ecx,dword ptr [ecx+eax*4+4]
 004A3A7E    push        ecx
 004A3A7F    mov         eax,dword ptr [ebp-0C]
 004A3A82    pop         ecx
 004A3A83    call        004A3BB0
 004A3A88    inc         ebx
 004A3A89    dec         esi
>004A3A8A    jne         004A3A61
 004A3A8C    xor         eax,eax
 004A3A8E    pop         edx
 004A3A8F    pop         ecx
 004A3A90    pop         ecx
 004A3A91    mov         dword ptr fs:[eax],edx
 004A3A94    push        4A3AB4
 004A3A99    lea         eax,[ebp-8]
 004A3A9C    mov         edx,dword ptr ds:[47FAFC];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A3AA2    mov         ecx,2
 004A3AA7    call        @FinalizeArray
 004A3AAC    ret
>004A3AAD    jmp         @HandleFinally
>004A3AB2    jmp         004A3A99
 004A3AB4    pop         edi
 004A3AB5    pop         esi
 004A3AB6    pop         ebx
 004A3AB7    mov         esp,ebp
 004A3AB9    pop         ebp
 004A3ABA    ret
end;*}

//004A3ABC
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.Grow;
begin
{*
 004A3ABC    push        ecx
 004A3ABD    mov         edx,dword ptr [eax+4]
 004A3AC0    mov         dword ptr [esp],edx
 004A3AC3    mov         edx,dword ptr [esp]
 004A3AC6    test        edx,edx
>004A3AC8    je          004A3ACF
 004A3ACA    sub         edx,4
 004A3ACD    mov         edx,dword ptr [edx]
 004A3ACF    add         edx,edx
 004A3AD1    test        edx,edx
>004A3AD3    jne         004A3ADA
 004A3AD5    mov         edx,4
 004A3ADA    call        004A398C
 004A3ADF    pop         edx
 004A3AE0    ret
*}
end;

//004A3AE4
function TDictionary<System.Integer,System.Classes.IInterfaceList>.GetBucketIndex(const Key:Integer; HashCode:Integer):Integer;
begin
{*
 004A3AE4    push        ebx
 004A3AE5    push        esi
 004A3AE6    push        edi
 004A3AE7    add         esp,0FFFFFFE8
 004A3AEA    mov         dword ptr [esp+4],ecx
 004A3AEE    mov         dword ptr [esp],edx
 004A3AF1    mov         esi,eax
 004A3AF3    mov         eax,dword ptr [esi+4]
 004A3AF6    mov         dword ptr [esp+0C],eax
 004A3AFA    mov         eax,dword ptr [esp+0C]
 004A3AFE    test        eax,eax
>004A3B00    je          004A3B07
 004A3B02    sub         eax,4
 004A3B05    mov         eax,dword ptr [eax]
 004A3B07    test        eax,eax
>004A3B09    jne         004A3B12
 004A3B0B    mov         ebx,80000000
>004A3B10    jmp         004A3B85
 004A3B12    mov         eax,dword ptr [esi+4]
 004A3B15    mov         dword ptr [esp+10],eax
 004A3B19    mov         eax,dword ptr [esp+10]
 004A3B1D    test        eax,eax
>004A3B1F    je          004A3B26
 004A3B21    sub         eax,4
 004A3B24    mov         eax,dword ptr [eax]
 004A3B26    dec         eax
 004A3B27    and         eax,dword ptr [esp+4]
 004A3B2B    mov         ebx,eax
 004A3B2D    lea         eax,[ebx+ebx*2]
 004A3B30    mov         edx,dword ptr [esi+4]
 004A3B33    mov         eax,dword ptr [edx+eax*4]
 004A3B36    mov         dword ptr [esp+8],eax
 004A3B3A    cmp         dword ptr [esp+8],0FFFFFFFF
>004A3B3F    jne         004A3B45
 004A3B41    not         ebx
>004A3B43    jmp         004A3B85
 004A3B45    mov         eax,dword ptr [esp+8]
 004A3B49    cmp         eax,dword ptr [esp+4]
>004A3B4D    jne         004A3B68
 004A3B4F    lea         eax,[ebx+ebx*2]
 004A3B52    mov         edx,dword ptr [esi+4]
 004A3B55    mov         edx,dword ptr [edx+eax*4+4]
 004A3B59    mov         ecx,dword ptr [esp]
 004A3B5C    mov         eax,dword ptr [esi+0C]
 004A3B5F    mov         edi,dword ptr [eax]
 004A3B61    call        dword ptr [edi+0C]
 004A3B64    test        al,al
>004A3B66    jne         004A3B85
 004A3B68    inc         ebx
 004A3B69    mov         eax,dword ptr [esi+4]
 004A3B6C    mov         dword ptr [esp+14],eax
 004A3B70    mov         edi,dword ptr [esp+14]
 004A3B74    test        edi,edi
>004A3B76    je          004A3B7D
 004A3B78    sub         edi,4
 004A3B7B    mov         edi,dword ptr [edi]
 004A3B7D    cmp         edi,ebx
>004A3B7F    jg          004A3B2D
 004A3B81    xor         ebx,ebx
>004A3B83    jmp         004A3B2D
 004A3B85    mov         eax,ebx
 004A3B87    add         esp,18
 004A3B8A    pop         edi
 004A3B8B    pop         esi
 004A3B8C    pop         ebx
 004A3B8D    ret
*}
end;

//004A3B90
function TDictionary<System.Integer,System.Classes.IInterfaceList>.Hash(const Key:Integer):Integer;
begin
{*
 004A3B90    push        ebx
 004A3B91    push        esi
 004A3B92    mov         esi,edx
 004A3B94    mov         ebx,eax
 004A3B96    mov         edx,esi
 004A3B98    mov         eax,dword ptr [ebx+0C]
 004A3B9B    mov         ecx,dword ptr [eax]
 004A3B9D    call        dword ptr [ecx+10]
 004A3BA0    and         eax,7FFFFFFF
 004A3BA5    inc         eax
 004A3BA6    and         eax,7FFFFFFF
 004A3BAB    pop         esi
 004A3BAC    pop         ebx
 004A3BAD    ret
*}
end;

//004A3BB0
{*procedure sub_004A3BB0(?:?; ?:?; ?:?; ?:?);
begin
 004A3BB0    push        ebp
 004A3BB1    mov         ebp,esp
 004A3BB3    add         esp,0FFFFFFF8
 004A3BB6    push        ebx
 004A3BB7    push        esi
 004A3BB8    push        edi
 004A3BB9    mov         dword ptr [ebp-8],ecx
 004A3BBC    mov         dword ptr [ebp-4],edx
 004A3BBF    mov         ebx,eax
 004A3BC1    mov         ecx,dword ptr [ebp-4]
 004A3BC4    mov         edx,dword ptr [ebp-8]
 004A3BC7    mov         eax,ebx
 004A3BC9    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.GetBucketIndex
 004A3BCE    mov         esi,eax
 004A3BD0    not         esi
 004A3BD2    lea         edi,[esi+esi*2]
 004A3BD5    mov         eax,dword ptr [ebx+4]
 004A3BD8    mov         edx,dword ptr [ebp-4]
 004A3BDB    mov         dword ptr [eax+edi*4],edx
 004A3BDE    mov         eax,dword ptr [ebx+4]
 004A3BE1    mov         edx,dword ptr [ebp-8]
 004A3BE4    mov         dword ptr [eax+edi*4+4],edx
 004A3BE8    mov         eax,dword ptr [ebx+4]
 004A3BEB    lea         eax,[eax+edi*4+8]
 004A3BEF    mov         edx,dword ptr [ebp+8]
 004A3BF2    call        @IntfCopy
 004A3BF7    pop         edi
 004A3BF8    pop         esi
 004A3BF9    pop         ebx
 004A3BFA    pop         ecx
 004A3BFB    pop         ecx
 004A3BFC    pop         ebp
 004A3BFD    ret         4
end;*}

//004A3C00
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.DoAdd(HashCode:Integer; Index:Integer; const Key:Integer; const Value:IInterfaceList);
begin
{*
 004A3C00    push        ebp
 004A3C01    mov         ebp,esp
 004A3C03    push        ebx
 004A3C04    push        esi
 004A3C05    push        edi
 004A3C06    mov         esi,ecx
 004A3C08    mov         ebx,eax
 004A3C0A    lea         edi,[esi+esi*2]
 004A3C0D    mov         eax,dword ptr [ebx+4]
 004A3C10    mov         dword ptr [eax+edi*4],edx
 004A3C13    mov         eax,dword ptr [ebx+4]
 004A3C16    mov         edx,dword ptr [ebp+0C]
 004A3C19    mov         dword ptr [eax+edi*4+4],edx
 004A3C1D    mov         eax,dword ptr [ebx+4]
 004A3C20    lea         eax,[eax+edi*4+8]
 004A3C24    mov         edx,dword ptr [ebp+8]
 004A3C27    call        @IntfCopy
 004A3C2C    inc         dword ptr [ebx+8]
 004A3C2F    xor         ecx,ecx
 004A3C31    mov         edx,dword ptr [ebp+0C]
 004A3C34    mov         eax,ebx
 004A3C36    mov         esi,dword ptr [eax]
 004A3C38    call        dword ptr [esi+8]
 004A3C3B    xor         ecx,ecx
 004A3C3D    mov         edx,dword ptr [ebp+8]
 004A3C40    mov         eax,ebx
 004A3C42    mov         ebx,dword ptr [eax]
 004A3C44    call        dword ptr [ebx+0C]
 004A3C47    pop         edi
 004A3C48    pop         esi
 004A3C49    pop         ebx
 004A3C4A    pop         ebp
 004A3C4B    ret         8
*}
end;

//004A3C50
function TDictionary<System.Integer,System.Classes.IInterfaceList>.DoRemove(const Key:Integer; HashCode:Integer; Notification:Generics.Collections.TCollectionNotification):IInterfaceList;
begin
{*
 004A3C50    push        ebp
 004A3C51    mov         ebp,esp
 004A3C53    add         esp,0FFFFFFE4
 004A3C56    push        ebx
 004A3C57    push        esi
 004A3C58    push        edi
 004A3C59    mov         dword ptr [ebp-4],eax
 004A3C5C    mov         eax,dword ptr [ebp-4]
 004A3C5F    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.GetBucketIndex
 004A3C64    mov         ebx,eax
 004A3C66    test        ebx,ebx
>004A3C68    jge         004A3C77
 004A3C6A    mov         eax,dword ptr [ebp+8]
 004A3C6D    call        @IntfClear
>004A3C72    jmp         004A3DC1
 004A3C77    lea         esi,[ebx+ebx*2]
 004A3C7A    mov         eax,dword ptr [ebp-4]
 004A3C7D    mov         eax,dword ptr [eax+4]
 004A3C80    mov         dword ptr [eax+esi*4],0FFFFFFFF
 004A3C87    mov         eax,dword ptr [ebp+8]
 004A3C8A    mov         edx,dword ptr [ebp-4]
 004A3C8D    mov         edx,dword ptr [edx+4]
 004A3C90    mov         edx,dword ptr [edx+esi*4+8]
 004A3C94    call        @IntfCopy
 004A3C99    mov         eax,dword ptr [ebp-4]
 004A3C9C    mov         eax,dword ptr [eax+4]
 004A3C9F    mov         eax,dword ptr [eax+esi*4+4]
 004A3CA3    mov         dword ptr [ebp-0C],eax
 004A3CA6    mov         esi,ebx
 004A3CA8    inc         ebx
 004A3CA9    mov         eax,dword ptr [ebp-4]
 004A3CAC    mov         eax,dword ptr [eax+4]
 004A3CAF    mov         dword ptr [ebp-10],eax
 004A3CB2    mov         eax,dword ptr [ebp-10]
 004A3CB5    mov         dword ptr [ebp-14],eax
 004A3CB8    cmp         dword ptr [ebp-14],0
>004A3CBC    je          004A3CC9
 004A3CBE    mov         eax,dword ptr [ebp-14]
 004A3CC1    sub         eax,4
 004A3CC4    mov         eax,dword ptr [eax]
 004A3CC6    mov         dword ptr [ebp-14],eax
 004A3CC9    cmp         ebx,dword ptr [ebp-14]
>004A3CCC    jne         004A3CD0
 004A3CCE    xor         ebx,ebx
 004A3CD0    lea         eax,[ebx+ebx*2]
 004A3CD3    mov         edx,dword ptr [ebp-4]
 004A3CD6    mov         edx,dword ptr [edx+4]
 004A3CD9    mov         eax,dword ptr [edx+eax*4]
 004A3CDC    mov         dword ptr [ebp-8],eax
 004A3CDF    cmp         dword ptr [ebp-8],0FFFFFFFF
>004A3CE3    je          004A3D70
 004A3CE9    mov         eax,dword ptr [ebp-4]
 004A3CEC    mov         eax,dword ptr [eax+4]
 004A3CEF    mov         dword ptr [ebp-18],eax
 004A3CF2    mov         eax,dword ptr [ebp-18]
 004A3CF5    mov         dword ptr [ebp-1C],eax
 004A3CF8    cmp         dword ptr [ebp-1C],0
>004A3CFC    je          004A3D09
 004A3CFE    mov         eax,dword ptr [ebp-1C]
 004A3D01    sub         eax,4
 004A3D04    mov         eax,dword ptr [eax]
 004A3D06    mov         dword ptr [ebp-1C],eax
 004A3D09    mov         edi,dword ptr [ebp-1C]
 004A3D0C    dec         edi
 004A3D0D    and         edi,dword ptr [ebp-8]
 004A3D10    cmp         edi,esi
>004A3D12    jle         004A3D18
 004A3D14    cmp         ebx,edi
>004A3D16    jge         004A3D2C
 004A3D18    cmp         esi,ebx
>004A3D1A    jle         004A3D20
 004A3D1C    cmp         esi,edi
>004A3D1E    jl          004A3D2C
 004A3D20    cmp         esi,ebx
>004A3D22    jle         004A3D28
 004A3D24    cmp         ebx,edi
>004A3D26    jge         004A3D2C
 004A3D28    xor         eax,eax
>004A3D2A    jmp         004A3D2E
 004A3D2C    mov         al,1
 004A3D2E    test        al,al
>004A3D30    jne         004A3CA8
 004A3D36    lea         eax,[esi+esi*2]
 004A3D39    mov         edx,dword ptr [ebp-4]
 004A3D3C    mov         edx,dword ptr [edx+4]
 004A3D3F    lea         eax,[edx+eax*4]
 004A3D42    lea         edx,[ebx+ebx*2]
 004A3D45    mov         ecx,dword ptr [ebp-4]
 004A3D48    mov         ecx,dword ptr [ecx+4]
 004A3D4B    lea         edx,[ecx+edx*4]
 004A3D4E    mov         ecx,dword ptr ds:[47FA68];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A3D54    call        @CopyRecord
 004A3D59    mov         esi,ebx
 004A3D5B    lea         eax,[esi+esi*2]
 004A3D5E    mov         edx,dword ptr [ebp-4]
 004A3D61    mov         edx,dword ptr [edx+4]
 004A3D64    mov         dword ptr [edx+eax*4],0FFFFFFFF
>004A3D6B    jmp         004A3CA8
 004A3D70    lea         ebx,[esi+esi*2]
 004A3D73    mov         eax,dword ptr [ebp-4]
 004A3D76    mov         eax,dword ptr [eax+4]
 004A3D79    mov         dword ptr [eax+ebx*4],0FFFFFFFF
 004A3D80    mov         eax,dword ptr [ebp-4]
 004A3D83    mov         eax,dword ptr [eax+4]
 004A3D86    xor         edx,edx
 004A3D88    mov         dword ptr [eax+ebx*4+4],edx
 004A3D8C    mov         eax,dword ptr [ebp-4]
 004A3D8F    mov         eax,dword ptr [eax+4]
 004A3D92    lea         eax,[eax+ebx*4+8]
 004A3D96    call        @IntfClear
 004A3D9B    mov         eax,dword ptr [ebp-4]
 004A3D9E    dec         dword ptr [eax+8]
 004A3DA1    movzx       ebx,byte ptr [ebp+0C]
 004A3DA5    mov         ecx,ebx
 004A3DA7    mov         edx,dword ptr [ebp-0C]
 004A3DAA    mov         eax,dword ptr [ebp-4]
 004A3DAD    mov         esi,dword ptr [eax]
 004A3DAF    call        dword ptr [esi+8]
 004A3DB2    mov         ecx,ebx
 004A3DB4    mov         edx,dword ptr [ebp+8]
 004A3DB7    mov         edx,dword ptr [edx]
 004A3DB9    mov         eax,dword ptr [ebp-4]
 004A3DBC    mov         ebx,dword ptr [eax]
 004A3DBE    call        dword ptr [ebx+0C]
 004A3DC1    pop         edi
 004A3DC2    pop         esi
 004A3DC3    pop         ebx
 004A3DC4    mov         esp,ebp
 004A3DC6    pop         ebp
 004A3DC7    ret         8
*}
end;

//004A3DCC
procedure sub_004A3DCC;
begin
{*
 004A3DCC    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.GetEnumerator
 004A3DD1    ret
*}
end;

//004A3DD4
{*procedure sub_004A3DD4(?:?);
begin
 004A3DD4    push        ebx
 004A3DD5    cmp         word ptr [eax+1A],0;TDictionary<System.Integer,System.Classes.IInterfaceList>.FOnKeyNoti...
>004A3DDA    je          004A3DE9
 004A3DDC    push        ecx
 004A3DDD    mov         ebx,eax
 004A3DDF    mov         ecx,edx
 004A3DE1    mov         edx,eax
 004A3DE3    mov         eax,dword ptr [ebx+1C];TDictionary<System.Integer,System.Classes.IInterfaceList>.FOnKeyN...
 004A3DE6    call        dword ptr [ebx+18];TDictionary<System.Integer,System.Classes.IInterfaceList>.FOnKeyNotify
 004A3DE9    pop         ebx
 004A3DEA    ret
end;*}

//004A3DEC
{*procedure sub_004A3DEC(?:?);
begin
 004A3DEC    push        ebx
 004A3DED    cmp         word ptr [eax+22],0;TDictionary<System.Integer,System.Classes.IInterfaceList>.FOnValueNo...
>004A3DF2    je          004A3E01
 004A3DF4    push        ecx
 004A3DF5    mov         ebx,eax
 004A3DF7    mov         ecx,edx
 004A3DF9    mov         edx,eax
 004A3DFB    mov         eax,dword ptr [ebx+24];TDictionary<System.Integer,System.Classes.IInterfaceList>.FOnValu...
 004A3DFE    call        dword ptr [ebx+20];TDictionary<System.Integer,System.Classes.IInterfaceList>.FOnValueNotify
 004A3E01    pop         ebx
 004A3E02    ret
end;*}

//004A3E04
constructor TDictionary<System.Integer,System.Classes.IInterfaceList>.Create;
begin
{*
 004A3E04    push        ebx
 004A3E05    push        esi
 004A3E06    test        dl,dl
>004A3E08    je          004A3E12
 004A3E0A    add         esp,0FFFFFFF0
 004A3E0D    call        @ClassCreate
 004A3E12    mov         ebx,edx
 004A3E14    mov         esi,eax
 004A3E16    push        0
 004A3E18    xor         edx,edx
 004A3E1A    mov         eax,esi
 004A3E1C    call        004A3E3C
 004A3E21    mov         eax,esi
 004A3E23    test        bl,bl
>004A3E25    je          004A3E36
 004A3E27    call        @AfterConstruction
 004A3E2C    pop         dword ptr fs:[0]
 004A3E33    add         esp,0C
 004A3E36    mov         eax,esi
 004A3E38    pop         esi
 004A3E39    pop         ebx
 004A3E3A    ret
*}
end;

//004A3E3C
constructor sub_004A3E3C(ACapacity:Integer; AComparer:IEqualityComparer<System.Integer>);
begin
{*
 004A3E3C    push        ebp
 004A3E3D    mov         ebp,esp
 004A3E3F    push        0
 004A3E41    push        ebx
 004A3E42    push        esi
 004A3E43    push        edi
 004A3E44    test        dl,dl
>004A3E46    je          004A3E50
 004A3E48    add         esp,0FFFFFFF0
 004A3E4B    call        @ClassCreate
 004A3E50    mov         esi,ecx
 004A3E52    mov         ebx,edx
 004A3E54    mov         edi,eax
 004A3E56    xor         eax,eax
 004A3E58    push        ebp
 004A3E59    push        4A3ECB
 004A3E5E    push        dword ptr fs:[eax]
 004A3E61    mov         dword ptr fs:[eax],esp
 004A3E64    xor         edx,edx
 004A3E66    mov         eax,edi
 004A3E68    call        TObject.Create
 004A3E6D    test        esi,esi
>004A3E6F    jge         004A3E88
 004A3E71    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004A3E77    mov         dl,1
 004A3E79    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004A3E7E    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004A3E83    call        @RaiseExcept
 004A3E88    lea         eax,[edi+0C];TDictionary<System.Integer,System.Classes.IInterfaceList>.FComparer:IEquali...
 004A3E8B    mov         edx,dword ptr [ebp+8]
 004A3E8E    call        @IntfCopy
 004A3E93    cmp         dword ptr [edi+0C],0;TDictionary<System.Integer,System.Classes.IInterfaceList>.FComparer...
>004A3E97    jne         004A3EAC
 004A3E99    lea         eax,[ebp-4]
 004A3E9C    call        004A83B4
 004A3EA1    mov         edx,dword ptr [ebp-4]
 004A3EA4    lea         eax,[edi+0C];TDictionary<System.Integer,System.Classes.IInterfaceList>.FComparer:IEquali...
 004A3EA7    call        @IntfCopy
 004A3EAC    mov         edx,esi
 004A3EAE    mov         eax,edi
 004A3EB0    call        004A394C
 004A3EB5    xor         eax,eax
 004A3EB7    pop         edx
 004A3EB8    pop         ecx
 004A3EB9    pop         ecx
 004A3EBA    mov         dword ptr fs:[eax],edx
 004A3EBD    push        4A3ED2
 004A3EC2    lea         eax,[ebp-4]
 004A3EC5    call        @IntfClear
 004A3ECA    ret
>004A3ECB    jmp         @HandleFinally
>004A3ED0    jmp         004A3EC2
 004A3ED2    mov         eax,edi
 004A3ED4    test        bl,bl
>004A3ED6    je          004A3EE7
 004A3ED8    call        @AfterConstruction
 004A3EDD    pop         dword ptr fs:[0]
 004A3EE4    add         esp,0C
 004A3EE7    mov         eax,edi
 004A3EE9    pop         edi
 004A3EEA    pop         esi
 004A3EEB    pop         ebx
 004A3EEC    pop         ecx
 004A3EED    pop         ebp
 004A3EEE    ret         4
*}
end;

//004A3EF4
destructor TDictionary<System.Integer,System.Classes.IInterfaceList>.Destroy();
begin
{*
 004A3EF4    push        ebx
 004A3EF5    push        esi
 004A3EF6    call        @BeforeDestruction
 004A3EFB    mov         ebx,edx
 004A3EFD    mov         esi,eax
 004A3EFF    mov         eax,esi
 004A3F01    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Clear
 004A3F06    mov         eax,dword ptr [esi+28];TDictionary<System.Integer,System.Classes.IInterfaceList>.FKeyCol...
 004A3F09    call        TObject.Free
 004A3F0E    mov         eax,dword ptr [esi+2C]
 004A3F11    call        TObject.Free
 004A3F16    mov         dl,0FC
 004A3F18    and         dl,bl
 004A3F1A    mov         eax,esi
 004A3F1C    call        TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy
 004A3F21    test        bl,bl
>004A3F23    jle         004A3F2C
 004A3F25    mov         eax,esi
 004A3F27    call        @ClassDestroy
 004A3F2C    pop         esi
 004A3F2D    pop         ebx
 004A3F2E    ret
*}
end;

//004A3F30
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.Add(Key:Integer; Value:IInterfaceList);
begin
{*
 004A3F30    push        ebx
 004A3F31    push        esi
 004A3F32    push        edi
 004A3F33    push        ecx
 004A3F34    mov         dword ptr [esp],ecx
 004A3F37    mov         esi,edx
 004A3F39    mov         ebx,eax
 004A3F3B    mov         eax,dword ptr [ebx+8]
 004A3F3E    cmp         eax,dword ptr [ebx+10]
>004A3F41    jl          004A3F4A
 004A3F43    mov         eax,ebx
 004A3F45    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Grow
 004A3F4A    mov         edx,esi
 004A3F4C    mov         eax,ebx
 004A3F4E    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Hash
 004A3F53    mov         edi,eax
 004A3F55    mov         ecx,edi
 004A3F57    mov         edx,esi
 004A3F59    mov         eax,ebx
 004A3F5B    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.GetBucketIndex
 004A3F60    test        eax,eax
>004A3F62    jl          004A3F7B
 004A3F64    mov         ecx,dword ptr ds:[7C423C];^SResString174:TResStringRec
 004A3F6A    mov         dl,1
 004A3F6C    mov         eax,[004180BC];EListError
 004A3F71    call        Exception.CreateRes
 004A3F76    call        @RaiseExcept
 004A3F7B    push        esi
 004A3F7C    mov         edx,dword ptr [esp+4]
 004A3F80    push        edx
 004A3F81    mov         ecx,eax
 004A3F83    not         ecx
 004A3F85    mov         edx,edi
 004A3F87    mov         eax,ebx
 004A3F89    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.DoAdd
 004A3F8E    pop         edx
 004A3F8F    pop         edi
 004A3F90    pop         esi
 004A3F91    pop         ebx
 004A3F92    ret
*}
end;

//004A3F94
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.Remove(Key:Integer);
begin
{*
 004A3F94    push        ebp
 004A3F95    mov         ebp,esp
 004A3F97    push        0
 004A3F99    push        ebx
 004A3F9A    push        esi
 004A3F9B    mov         esi,edx
 004A3F9D    mov         ebx,eax
 004A3F9F    xor         eax,eax
 004A3FA1    push        ebp
 004A3FA2    push        4A3FDD
 004A3FA7    push        dword ptr fs:[eax]
 004A3FAA    mov         dword ptr fs:[eax],esp
 004A3FAD    push        1
 004A3FAF    lea         eax,[ebp-4]
 004A3FB2    push        eax
 004A3FB3    mov         edx,esi
 004A3FB5    mov         eax,ebx
 004A3FB7    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Hash
 004A3FBC    mov         ecx,eax
 004A3FBE    mov         edx,esi
 004A3FC0    mov         eax,ebx
 004A3FC2    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.DoRemove
 004A3FC7    xor         eax,eax
 004A3FC9    pop         edx
 004A3FCA    pop         ecx
 004A3FCB    pop         ecx
 004A3FCC    mov         dword ptr fs:[eax],edx
 004A3FCF    push        4A3FE4
 004A3FD4    lea         eax,[ebp-4]
 004A3FD7    call        @IntfClear
 004A3FDC    ret
>004A3FDD    jmp         @HandleFinally
>004A3FE2    jmp         004A3FD4
 004A3FE4    pop         esi
 004A3FE5    pop         ebx
 004A3FE6    pop         ecx
 004A3FE7    pop         ebp
 004A3FE8    ret
*}
end;

//004A3FEC
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.Clear;
begin
{*
 004A3FEC    push        ebp
 004A3FED    mov         ebp,esp
 004A3FEF    add         esp,0FFFFFFF8
 004A3FF2    push        ebx
 004A3FF3    push        esi
 004A3FF4    push        edi
 004A3FF5    xor         edx,edx
 004A3FF7    mov         dword ptr [ebp-4],edx
 004A3FFA    mov         esi,eax
 004A3FFC    xor         eax,eax
 004A3FFE    push        ebp
 004A3FFF    push        4A40A7
 004A4004    push        dword ptr fs:[eax]
 004A4007    mov         dword ptr fs:[eax],esp
 004A400A    lea         eax,[ebp-4]
 004A400D    mov         edx,dword ptr [esi+4]
 004A4010    mov         ecx,dword ptr ds:[47FAFC];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A4016    call        @DynArrayAsg
 004A401B    xor         eax,eax
 004A401D    mov         dword ptr [esi+8],eax
 004A4020    lea         eax,[esi+4]
 004A4023    mov         edx,dword ptr ds:[47FAFC];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A4029    call        @DynArrayClear
 004A402E    xor         edx,edx
 004A4030    mov         eax,esi
 004A4032    call        004A394C
 004A4037    xor         eax,eax
 004A4039    mov         dword ptr [esi+10],eax
 004A403C    mov         eax,dword ptr [ebp-4]
 004A403F    test        eax,eax
>004A4041    je          004A4048
 004A4043    sub         eax,4
 004A4046    mov         eax,dword ptr [eax]
 004A4048    dec         eax
 004A4049    test        eax,eax
>004A404B    jl          004A408B
 004A404D    inc         eax
 004A404E    mov         dword ptr [ebp-8],eax
 004A4051    xor         ebx,ebx
 004A4053    lea         eax,[ebx+ebx*2]
 004A4056    mov         edx,dword ptr [ebp-4]
 004A4059    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A405D    je          004A4085
 004A405F    lea         eax,[ebx+ebx*2]
 004A4062    mov         edx,dword ptr [ebp-4]
 004A4065    mov         edx,dword ptr [edx+eax*4+4]
 004A4069    mov         cl,1
 004A406B    mov         eax,esi
 004A406D    mov         edi,dword ptr [eax]
 004A406F    call        dword ptr [edi+8]
 004A4072    lea         eax,[ebx+ebx*2]
 004A4075    mov         edx,dword ptr [ebp-4]
 004A4078    mov         edx,dword ptr [edx+eax*4+8]
 004A407C    mov         cl,1
 004A407E    mov         eax,esi
 004A4080    mov         edi,dword ptr [eax]
 004A4082    call        dword ptr [edi+0C]
 004A4085    inc         ebx
 004A4086    dec         dword ptr [ebp-8]
>004A4089    jne         004A4053
 004A408B    xor         eax,eax
 004A408D    pop         edx
 004A408E    pop         ecx
 004A408F    pop         ecx
 004A4090    mov         dword ptr fs:[eax],edx
 004A4093    push        4A40AE
 004A4098    lea         eax,[ebp-4]
 004A409B    mov         edx,dword ptr ds:[47FAFC];TDictionary<System.Integer,System.Classes.IInterfaceList>.TIte...
 004A40A1    call        @DynArrayClear
 004A40A6    ret
>004A40A7    jmp         @HandleFinally
>004A40AC    jmp         004A4098
 004A40AE    pop         edi
 004A40AF    pop         esi
 004A40B0    pop         ebx
 004A40B1    pop         ecx
 004A40B2    pop         ecx
 004A40B3    pop         ebp
 004A40B4    ret
*}
end;

//004A40B8
function TDictionary<System.Integer,System.Classes.IInterfaceList>.TryGetValue(Key:Integer; Value:IInterfaceList):Boolean;
begin
{*
 004A40B8    push        ebp
 004A40B9    mov         ebp,esp
 004A40BB    push        ecx
 004A40BC    push        ebx
 004A40BD    push        esi
 004A40BE    push        edi
 004A40BF    mov         edi,ecx
 004A40C1    mov         esi,edx
 004A40C3    mov         ebx,eax
 004A40C5    test        edi,edi
>004A40C7    je          004A40CD
 004A40C9    xor         eax,eax
 004A40CB    mov         dword ptr [edi],eax
 004A40CD    mov         edx,esi
 004A40CF    mov         eax,ebx
 004A40D1    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Hash
 004A40D6    mov         ecx,eax
 004A40D8    mov         edx,esi
 004A40DA    mov         eax,ebx
 004A40DC    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.GetBucketIndex
 004A40E1    mov         esi,eax
 004A40E3    test        esi,esi
 004A40E5    setge       byte ptr [ebp-1]
 004A40E9    cmp         byte ptr [ebp-1],0
>004A40ED    je          004A4102
 004A40EF    mov         eax,edi
 004A40F1    lea         edx,[esi+esi*2]
 004A40F4    mov         ecx,dword ptr [ebx+4]
 004A40F7    mov         edx,dword ptr [ecx+edx*4+8]
 004A40FB    call        @IntfCopy
>004A4100    jmp         004A4109
 004A4102    mov         eax,edi
 004A4104    call        @IntfClear
 004A4109    movzx       eax,byte ptr [ebp-1]
 004A410D    pop         edi
 004A410E    pop         esi
 004A410F    pop         ebx
 004A4110    pop         ecx
 004A4111    pop         ebp
 004A4112    ret
*}
end;

//004A4114
{*procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.ToArray(?:?);
begin
 004A4114    push        ebx
 004A4115    push        esi
 004A4116    mov         esi,edx
 004A4118    mov         ebx,eax
 004A411A    mov         ecx,esi
 004A411C    mov         edx,dword ptr [ebx+8]
 004A411F    mov         eax,ebx
 004A4121    call        004A3744
 004A4126    pop         esi
 004A4127    pop         ebx
 004A4128    ret
end;*}

//004A416C
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.GetEnumerator;
begin
{*
 004A416C    mov         ecx,eax
 004A416E    mov         dl,1
 004A4170    mov         eax,[00480B68];TDictionary<System.Integer,System.Classes.IInterfaceList>.TPairEnumerator
 004A4175    call        004A4760
 004A417A    ret
*}
end;

//004A417C
{*procedure sub_004A417C(?:TDictionary<System; ?:?; ?:?);
begin
 004A417C    push        ebp
 004A417D    mov         ebp,esp
 004A417F    add         esp,0FFFFFFF8
 004A4182    push        ebx
 004A4183    push        esi
 004A4184    mov         dword ptr [ebp-4],ecx
 004A4187    mov         esi,edx
 004A4189    mov         ebx,eax
 004A418B    push        esi
 004A418C    mov         eax,dword ptr [ebp-4]
 004A418F    mov         ecx,1
 004A4194    mov         edx,dword ptr ds:[402E44];TArray<System.Integer>
 004A419A    call        @DynArraySetLength
 004A419F    add         esp,4
 004A41A2    xor         esi,esi
 004A41A4    mov         eax,ebx
 004A41A6    call        TEnumerable<System.Integer>.GetEnumerator
 004A41AB    mov         dword ptr [ebp-8],eax
 004A41AE    xor         eax,eax
 004A41B0    push        ebp
 004A41B1    push        4A41FA
 004A41B6    push        dword ptr fs:[eax]
 004A41B9    mov         dword ptr fs:[eax],esp
>004A41BC    jmp         004A41D0
 004A41BE    mov         eax,dword ptr [ebp-8]
 004A41C1    mov         edx,dword ptr [eax]
 004A41C3    call        dword ptr [edx]
 004A41C5    mov         ebx,eax
 004A41C7    mov         eax,dword ptr [ebp-4]
 004A41CA    mov         eax,dword ptr [eax]
 004A41CC    mov         dword ptr [eax+esi*4],ebx
 004A41CF    inc         esi
 004A41D0    mov         eax,dword ptr [ebp-8]
 004A41D3    call        TEnumerator<System.Integer>.MoveNext
 004A41D8    test        al,al
>004A41DA    jne         004A41BE
 004A41DC    xor         eax,eax
 004A41DE    pop         edx
 004A41DF    pop         ecx
 004A41E0    pop         ecx
 004A41E1    mov         dword ptr fs:[eax],edx
 004A41E4    push        4A4201
 004A41E9    cmp         dword ptr [ebp-8],0
>004A41ED    je          004A41F9
 004A41EF    mov         dl,1
 004A41F1    mov         eax,dword ptr [ebp-8]
 004A41F4    mov         ecx,dword ptr [eax]
 004A41F6    call        dword ptr [ecx-4]
 004A41F9    ret
>004A41FA    jmp         @HandleFinally
>004A41FF    jmp         004A41E9
 004A4201    pop         esi
 004A4202    pop         ebx
 004A4203    pop         ecx
 004A4204    pop         ecx
 004A4205    pop         ebp
 004A4206    ret
end;*}

//004A4208
destructor TEnumerable<System.Integer>.Destroy();
begin
{*
 004A4208    push        ebx
 004A4209    push        esi
 004A420A    call        @BeforeDestruction
 004A420F    mov         ebx,edx
 004A4211    mov         esi,eax
 004A4213    mov         dl,0FC
 004A4215    and         dl,bl
 004A4217    mov         eax,esi
 004A4219    call        TObject.Destroy
 004A421E    test        bl,bl
>004A4220    jle         004A4229
 004A4222    mov         eax,esi
 004A4224    call        @ClassDestroy
 004A4229    pop         esi
 004A422A    pop         ebx
 004A422B    ret
*}
end;

//004A422C
function TEnumerable<System.Integer>.GetEnumerator:TEnumerator<System.Integer>;
begin
{*
 004A422C    mov         edx,dword ptr [eax]
 004A422E    call        dword ptr [edx]
 004A4230    ret
*}
end;

//004A4234
function TEnumerable<System.Integer>.ToArray:TArray<System.Integer>;
begin
{*
 004A4234    push        ebp
 004A4235    mov         ebp,esp
 004A4237    add         esp,0FFFFFFF4
 004A423A    push        ebx
 004A423B    mov         dword ptr [ebp-4],edx
 004A423E    mov         ebx,eax
 004A4240    mov         dl,1
 004A4242    mov         eax,[005D8814];TList<System.Integer>
 004A4247    call        TList<System.Classes.TShortCut>.Create
 004A424C    mov         dword ptr [ebp-8],eax
 004A424F    xor         eax,eax
 004A4251    push        ebp
 004A4252    push        4A42DC
 004A4257    push        dword ptr fs:[eax]
 004A425A    mov         dword ptr fs:[eax],esp
 004A425D    mov         eax,ebx
 004A425F    call        TEnumerable<System.Integer>.GetEnumerator
 004A4264    mov         dword ptr [ebp-0C],eax
 004A4267    xor         eax,eax
 004A4269    push        ebp
 004A426A    push        4A42B4
 004A426F    push        dword ptr fs:[eax]
 004A4272    mov         dword ptr fs:[eax],esp
>004A4275    jmp         004A428A
 004A4277    mov         eax,dword ptr [ebp-0C]
 004A427A    mov         edx,dword ptr [eax]
 004A427C    call        dword ptr [edx]
 004A427E    mov         ebx,eax
 004A4280    mov         edx,ebx
 004A4282    mov         eax,dword ptr [ebp-8]
 004A4285    call        TList<System.Integer>.Add
 004A428A    mov         eax,dword ptr [ebp-0C]
 004A428D    call        TEnumerator<System.Integer>.MoveNext
 004A4292    test        al,al
>004A4294    jne         004A4277
 004A4296    xor         eax,eax
 004A4298    pop         edx
 004A4299    pop         ecx
 004A429A    pop         ecx
 004A429B    mov         dword ptr fs:[eax],edx
 004A429E    push        4A42BB
 004A42A3    cmp         dword ptr [ebp-0C],0
>004A42A7    je          004A42B3
 004A42A9    mov         dl,1
 004A42AB    mov         eax,dword ptr [ebp-0C]
 004A42AE    mov         ecx,dword ptr [eax]
 004A42B0    call        dword ptr [ecx-4]
 004A42B3    ret
>004A42B4    jmp         @HandleFinally
>004A42B9    jmp         004A42A3
 004A42BB    mov         edx,dword ptr [ebp-4]
 004A42BE    mov         eax,dword ptr [ebp-8]
 004A42C1    call        TList<System.Integer>.ToArray
 004A42C6    xor         eax,eax
 004A42C8    pop         edx
 004A42C9    pop         ecx
 004A42CA    pop         ecx
 004A42CB    mov         dword ptr fs:[eax],edx
 004A42CE    push        4A42E3
 004A42D3    mov         eax,dword ptr [ebp-8]
 004A42D6    call        TObject.Free
 004A42DB    ret
>004A42DC    jmp         @HandleFinally
>004A42E1    jmp         004A42D3
 004A42E3    pop         ebx
 004A42E4    mov         esp,ebp
 004A42E6    pop         ebp
 004A42E7    ret
*}
end;

//004A42E8
function TEnumerator<System.Integer>.MoveNext:Boolean;
begin
{*
 004A42E8    mov         edx,dword ptr [eax]
 004A42EA    call        dword ptr [edx+4]
 004A42ED    ret
*}
end;

//004A42F8
procedure sub_004A42F8;
begin
{*
 004A42F8    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection.GetEnumerator
 004A42FD    ret
*}
end;

//004A4300
constructor sub_004A4300(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);
begin
{*
 004A4300    push        ebx
 004A4301    push        esi
 004A4302    push        edi
 004A4303    test        dl,dl
>004A4305    je          004A430F
 004A4307    add         esp,0FFFFFFF0
 004A430A    call        @ClassCreate
 004A430F    mov         esi,ecx
 004A4311    mov         ebx,edx
 004A4313    mov         edi,eax
 004A4315    xor         edx,edx
 004A4317    mov         eax,edi
 004A4319    call        TObject.Create
 004A431E    mov         dword ptr [edi+4],esi
 004A4321    mov         eax,edi
 004A4323    test        bl,bl
>004A4325    je          004A4336
 004A4327    call        @AfterConstruction
 004A432C    pop         dword ptr fs:[0]
 004A4333    add         esp,0C
 004A4336    mov         eax,edi
 004A4338    pop         edi
 004A4339    pop         esi
 004A433A    pop         ebx
 004A433B    ret
*}
end;

//004A433C
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection.GetEnumerator;
begin
{*
 004A433C    mov         ecx,dword ptr [eax+4]
 004A433F    mov         dl,1
 004A4341    mov         eax,[0047FFE4];TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyEnumerator
 004A4346    call        004A4388
 004A434B    ret
*}
end;

//004A434C
{*procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection.ToArray(?:?);
begin
 004A434C    push        ebx
 004A434D    push        esi
 004A434E    mov         esi,edx
 004A4350    mov         ebx,eax
 004A4352    mov         ecx,esi
 004A4354    mov         eax,dword ptr [ebx+4]
 004A4357    mov         edx,dword ptr [eax+8]
 004A435A    mov         eax,ebx
 004A435C    call        004A417C
 004A4361    pop         esi
 004A4362    pop         ebx
 004A4363    ret
end;*}

//004A4364
{*function sub_004A4364(?:?):?;
begin
 004A4364    mov         edx,dword ptr [eax+8]
 004A4367    lea         edx,[edx+edx*2]
 004A436A    mov         eax,dword ptr [eax+4]
 004A436D    mov         eax,dword ptr [eax+4]
 004A4370    mov         eax,dword ptr [eax+edx*4+4]
 004A4374    ret
end;*}

//004A4378
procedure sub_004A4378;
begin
{*
 004A4378    call        004A4364
 004A437D    ret
*}
end;

//004A4380
procedure sub_004A4380;
begin
{*
 004A4380    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyEnumerator.MoveNext
 004A4385    ret
*}
end;

//004A4388
constructor sub_004A4388(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);
begin
{*
 004A4388    push        ebx
 004A4389    push        esi
 004A438A    push        edi
 004A438B    test        dl,dl
>004A438D    je          004A4397
 004A438F    add         esp,0FFFFFFF0
 004A4392    call        @ClassCreate
 004A4397    mov         esi,ecx
 004A4399    mov         ebx,edx
 004A439B    mov         edi,eax
 004A439D    xor         edx,edx
 004A439F    mov         eax,edi
 004A43A1    call        TObject.Create
 004A43A6    mov         dword ptr [edi+8],0FFFFFFFF
 004A43AD    mov         dword ptr [edi+4],esi;TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyEnum...
 004A43B0    mov         eax,edi
 004A43B2    test        bl,bl
>004A43B4    je          004A43C5
 004A43B6    call        @AfterConstruction
 004A43BB    pop         dword ptr fs:[0]
 004A43C2    add         esp,0C
 004A43C5    mov         eax,edi
 004A43C7    pop         edi
 004A43C8    pop         esi
 004A43C9    pop         ebx
 004A43CA    ret
*}
end;

//004A43CC
function TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyEnumerator.MoveNext:Boolean;
begin
{*
 004A43CC    push        ebx
 004A43CD    push        esi
 004A43CE    mov         esi,eax
>004A43D0    jmp         004A43EB
 004A43D2    inc         dword ptr [esi+8]
 004A43D5    mov         eax,dword ptr [esi+8]
 004A43D8    lea         eax,[eax+eax*2]
 004A43DB    mov         edx,dword ptr [esi+4]
 004A43DE    mov         edx,dword ptr [edx+4]
 004A43E1    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A43E5    je          004A43EB
 004A43E7    mov         bl,1
>004A43E9    jmp         004A43FE
 004A43EB    mov         eax,dword ptr [esi+4]
 004A43EE    mov         eax,dword ptr [eax+4]
 004A43F1    call        0040ABA8
 004A43F6    dec         eax
 004A43F7    cmp         eax,dword ptr [esi+8]
>004A43FA    jg          004A43D2
 004A43FC    xor         ebx,ebx
 004A43FE    mov         eax,ebx
 004A4400    pop         esi
 004A4401    pop         ebx
 004A4402    ret
*}
end;

//004A4404
{*procedure sub_004A4404(?:TDictionary<System; ?:?; ?:?);
begin
 004A4404    push        ebp
 004A4405    mov         ebp,esp
 004A4407    add         esp,0FFFFFFF4
 004A440A    push        ebx
 004A440B    push        esi
 004A440C    xor         ebx,ebx
 004A440E    mov         dword ptr [ebp-4],ebx
 004A4411    mov         dword ptr [ebp-8],ecx
 004A4414    mov         ebx,edx
 004A4416    mov         esi,eax
 004A4418    xor         eax,eax
 004A441A    push        ebp
 004A441B    push        4A44BB
 004A4420    push        dword ptr fs:[eax]
 004A4423    mov         dword ptr fs:[eax],esp
 004A4426    push        ebx
 004A4427    mov         eax,dword ptr [ebp-8]
 004A442A    mov         ecx,1
 004A442F    mov         edx,dword ptr ds:[480410];TArray<System.Classes.IInterfaceList>
 004A4435    call        @DynArraySetLength
 004A443A    add         esp,4
 004A443D    xor         ebx,ebx
 004A443F    mov         eax,esi
 004A4441    call        TEnumerable<System.Classes.IInterfaceList>.GetEnumerator
 004A4446    mov         dword ptr [ebp-0C],eax
 004A4449    xor         eax,eax
 004A444B    push        ebp
 004A444C    push        4A449E
 004A4451    push        dword ptr fs:[eax]
 004A4454    mov         dword ptr fs:[eax],esp
>004A4457    jmp         004A4474
 004A4459    lea         edx,[ebp-4]
 004A445C    mov         eax,dword ptr [ebp-0C]
 004A445F    mov         ecx,dword ptr [eax]
 004A4461    call        dword ptr [ecx]
 004A4463    mov         eax,dword ptr [ebp-8]
 004A4466    mov         eax,dword ptr [eax]
 004A4468    lea         eax,[eax+ebx*4]
 004A446B    mov         edx,dword ptr [ebp-4]
 004A446E    call        @IntfCopy
 004A4473    inc         ebx
 004A4474    mov         eax,dword ptr [ebp-0C]
 004A4477    call        TEnumerator<System.Classes.IInterfaceList>.MoveNext
 004A447C    test        al,al
>004A447E    jne         004A4459
 004A4480    xor         eax,eax
 004A4482    pop         edx
 004A4483    pop         ecx
 004A4484    pop         ecx
 004A4485    mov         dword ptr fs:[eax],edx
 004A4488    push        4A44A5
 004A448D    cmp         dword ptr [ebp-0C],0
>004A4491    je          004A449D
 004A4493    mov         dl,1
 004A4495    mov         eax,dword ptr [ebp-0C]
 004A4498    mov         ecx,dword ptr [eax]
 004A449A    call        dword ptr [ecx-4]
 004A449D    ret
>004A449E    jmp         @HandleFinally
>004A44A3    jmp         004A448D
 004A44A5    xor         eax,eax
 004A44A7    pop         edx
 004A44A8    pop         ecx
 004A44A9    pop         ecx
 004A44AA    mov         dword ptr fs:[eax],edx
 004A44AD    push        4A44C2
 004A44B2    lea         eax,[ebp-4]
 004A44B5    call        @IntfClear
 004A44BA    ret
>004A44BB    jmp         @HandleFinally
>004A44C0    jmp         004A44B2
 004A44C2    pop         esi
 004A44C3    pop         ebx
 004A44C4    mov         esp,ebp
 004A44C6    pop         ebp
 004A44C7    ret
end;*}

//004A44C8
destructor TEnumerable<System.Classes.IInterfaceList>.Destroy();
begin
{*
 004A44C8    push        ebx
 004A44C9    push        esi
 004A44CA    call        @BeforeDestruction
 004A44CF    mov         ebx,edx
 004A44D1    mov         esi,eax
 004A44D3    mov         dl,0FC
 004A44D5    and         dl,bl
 004A44D7    mov         eax,esi
 004A44D9    call        TObject.Destroy
 004A44DE    test        bl,bl
>004A44E0    jle         004A44E9
 004A44E2    mov         eax,esi
 004A44E4    call        @ClassDestroy
 004A44E9    pop         esi
 004A44EA    pop         ebx
 004A44EB    ret
*}
end;

//004A44EC
function TEnumerable<System.Classes.IInterfaceList>.GetEnumerator:TEnumerator<System.Classes.IInterfaceList>;
begin
{*
 004A44EC    mov         edx,dword ptr [eax]
 004A44EE    call        dword ptr [edx]
 004A44F0    ret
*}
end;

//004A44F4
{*procedure TEnumerable<System.Classes.IInterfaceList>.ToArray(?:?);
begin
 004A44F4    push        ebp
 004A44F5    mov         ebp,esp
 004A44F7    add         esp,0FFFFFFF0
 004A44FA    push        ebx
 004A44FB    xor         ecx,ecx
 004A44FD    mov         dword ptr [ebp-4],ecx
 004A4500    mov         dword ptr [ebp-8],edx
 004A4503    mov         ebx,eax
 004A4505    xor         eax,eax
 004A4507    push        ebp
 004A4508    push        4A45CE
 004A450D    push        dword ptr fs:[eax]
 004A4510    mov         dword ptr fs:[eax],esp
 004A4513    mov         dl,1
 004A4515    mov         eax,[004AAA70];TList<System.Classes.IInterfaceList>
 004A451A    call        004A8464
 004A451F    mov         dword ptr [ebp-0C],eax
 004A4522    xor         eax,eax
 004A4524    push        ebp
 004A4525    push        4A45B1
 004A452A    push        dword ptr fs:[eax]
 004A452D    mov         dword ptr fs:[eax],esp
 004A4530    mov         eax,ebx
 004A4532    call        TEnumerable<System.Classes.IInterfaceList>.GetEnumerator
 004A4537    mov         dword ptr [ebp-10],eax
 004A453A    xor         eax,eax
 004A453C    push        ebp
 004A453D    push        4A4589
 004A4542    push        dword ptr fs:[eax]
 004A4545    mov         dword ptr fs:[eax],esp
>004A4548    jmp         004A455F
 004A454A    lea         edx,[ebp-4]
 004A454D    mov         eax,dword ptr [ebp-10]
 004A4550    mov         ecx,dword ptr [eax]
 004A4552    call        dword ptr [ecx]
 004A4554    mov         edx,dword ptr [ebp-4]
 004A4557    mov         eax,dword ptr [ebp-0C]
 004A455A    call        TList<System.Classes.IInterfaceList>.Add
 004A455F    mov         eax,dword ptr [ebp-10]
 004A4562    call        TEnumerator<System.Classes.IInterfaceList>.MoveNext
 004A4567    test        al,al
>004A4569    jne         004A454A
 004A456B    xor         eax,eax
 004A456D    pop         edx
 004A456E    pop         ecx
 004A456F    pop         ecx
 004A4570    mov         dword ptr fs:[eax],edx
 004A4573    push        4A4590
 004A4578    cmp         dword ptr [ebp-10],0
>004A457C    je          004A4588
 004A457E    mov         dl,1
 004A4580    mov         eax,dword ptr [ebp-10]
 004A4583    mov         ecx,dword ptr [eax]
 004A4585    call        dword ptr [ecx-4]
 004A4588    ret
>004A4589    jmp         @HandleFinally
>004A458E    jmp         004A4578
 004A4590    mov         edx,dword ptr [ebp-8]
 004A4593    mov         eax,dword ptr [ebp-0C]
 004A4596    call        TList<System.Classes.IInterfaceList>.ToArray
 004A459B    xor         eax,eax
 004A459D    pop         edx
 004A459E    pop         ecx
 004A459F    pop         ecx
 004A45A0    mov         dword ptr fs:[eax],edx
 004A45A3    push        4A45B8
 004A45A8    mov         eax,dword ptr [ebp-0C]
 004A45AB    call        TObject.Free
 004A45B0    ret
>004A45B1    jmp         @HandleFinally
>004A45B6    jmp         004A45A8
 004A45B8    xor         eax,eax
 004A45BA    pop         edx
 004A45BB    pop         ecx
 004A45BC    pop         ecx
 004A45BD    mov         dword ptr fs:[eax],edx
 004A45C0    push        4A45D5
 004A45C5    lea         eax,[ebp-4]
 004A45C8    call        @IntfClear
 004A45CD    ret
>004A45CE    jmp         @HandleFinally
>004A45D3    jmp         004A45C5
 004A45D5    pop         ebx
 004A45D6    mov         esp,ebp
 004A45D8    pop         ebp
 004A45D9    ret
end;*}

//004A45DC
function TEnumerator<System.Classes.IInterfaceList>.MoveNext:Boolean;
begin
{*
 004A45DC    mov         edx,dword ptr [eax]
 004A45DE    call        dword ptr [edx+4]
 004A45E1    ret
*}
end;

//004A45EC
procedure sub_004A45EC;
begin
{*
 004A45EC    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueCollection.GetEnumerator
 004A45F1    ret
*}
end;

//004A45F4
constructor sub_004A45F4(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);
begin
{*
 004A45F4    push        ebx
 004A45F5    push        esi
 004A45F6    push        edi
 004A45F7    test        dl,dl
>004A45F9    je          004A4603
 004A45FB    add         esp,0FFFFFFF0
 004A45FE    call        @ClassCreate
 004A4603    mov         esi,ecx
 004A4605    mov         ebx,edx
 004A4607    mov         edi,eax
 004A4609    xor         edx,edx
 004A460B    mov         eax,edi
 004A460D    call        TObject.Create
 004A4612    mov         dword ptr [edi+4],esi
 004A4615    mov         eax,edi
 004A4617    test        bl,bl
>004A4619    je          004A462A
 004A461B    call        @AfterConstruction
 004A4620    pop         dword ptr fs:[0]
 004A4627    add         esp,0C
 004A462A    mov         eax,edi
 004A462C    pop         edi
 004A462D    pop         esi
 004A462E    pop         ebx
 004A462F    ret
*}
end;

//004A4630
procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueCollection.GetEnumerator;
begin
{*
 004A4630    mov         ecx,dword ptr [eax+4]
 004A4633    mov         dl,1
 004A4635    mov         eax,[00480734];TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueEnumerato...
 004A463A    call        004A4694
 004A463F    ret
*}
end;

//004A4640
{*procedure TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueCollection.ToArray(?:?);
begin
 004A4640    push        ebx
 004A4641    push        esi
 004A4642    mov         esi,edx
 004A4644    mov         ebx,eax
 004A4646    mov         ecx,esi
 004A4648    mov         eax,dword ptr [ebx+4]
 004A464B    mov         edx,dword ptr [eax+8]
 004A464E    mov         eax,ebx
 004A4650    call        004A4404
 004A4655    pop         esi
 004A4656    pop         ebx
 004A4657    ret
end;*}

//004A4658
{*procedure sub_004A4658(?:TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueEnumerator; ?:?);
begin
 004A4658    push        ebx
 004A4659    push        esi
 004A465A    mov         esi,edx
 004A465C    mov         ebx,eax
 004A465E    mov         eax,esi
 004A4660    mov         edx,dword ptr [ebx+8]
 004A4663    lea         edx,[edx+edx*2]
 004A4666    mov         ecx,dword ptr [ebx+4]
 004A4669    mov         ecx,dword ptr [ecx+4]
 004A466C    mov         edx,dword ptr [ecx+edx*4+8]
 004A4670    call        @IntfCopy
 004A4675    pop         esi
 004A4676    pop         ebx
 004A4677    ret
end;*}

//004A4678
{*procedure sub_004A4678(?:?);
begin
 004A4678    push        ebx
 004A4679    push        esi
 004A467A    mov         esi,edx
 004A467C    mov         ebx,eax
 004A467E    mov         edx,esi
 004A4680    mov         eax,ebx
 004A4682    call        004A4658
 004A4687    pop         esi
 004A4688    pop         ebx
 004A4689    ret
end;*}

//004A468C
procedure sub_004A468C;
begin
{*
 004A468C    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueEnumerator.MoveNext
 004A4691    ret
*}
end;

//004A4694
constructor sub_004A4694(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);
begin
{*
 004A4694    push        ebx
 004A4695    push        esi
 004A4696    push        edi
 004A4697    test        dl,dl
>004A4699    je          004A46A3
 004A469B    add         esp,0FFFFFFF0
 004A469E    call        @ClassCreate
 004A46A3    mov         esi,ecx
 004A46A5    mov         ebx,edx
 004A46A7    mov         edi,eax
 004A46A9    xor         edx,edx
 004A46AB    mov         eax,edi
 004A46AD    call        TObject.Create
 004A46B2    mov         dword ptr [edi+8],0FFFFFFFF
 004A46B9    mov         dword ptr [edi+4],esi;TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueEn...
 004A46BC    mov         eax,edi
 004A46BE    test        bl,bl
>004A46C0    je          004A46D1
 004A46C2    call        @AfterConstruction
 004A46C7    pop         dword ptr fs:[0]
 004A46CE    add         esp,0C
 004A46D1    mov         eax,edi
 004A46D3    pop         edi
 004A46D4    pop         esi
 004A46D5    pop         ebx
 004A46D6    ret
*}
end;

//004A46D8
function TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueEnumerator.MoveNext:Boolean;
begin
{*
 004A46D8    push        ebx
 004A46D9    push        esi
 004A46DA    mov         esi,eax
>004A46DC    jmp         004A46F7
 004A46DE    inc         dword ptr [esi+8]
 004A46E1    mov         eax,dword ptr [esi+8]
 004A46E4    lea         eax,[eax+eax*2]
 004A46E7    mov         edx,dword ptr [esi+4]
 004A46EA    mov         edx,dword ptr [edx+4]
 004A46ED    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A46F1    je          004A46F7
 004A46F3    mov         bl,1
>004A46F5    jmp         004A470A
 004A46F7    mov         eax,dword ptr [esi+4]
 004A46FA    mov         eax,dword ptr [eax+4]
 004A46FD    call        0040ABA8
 004A4702    dec         eax
 004A4703    cmp         eax,dword ptr [esi+8]
>004A4706    jg          004A46DE
 004A4708    xor         ebx,ebx
 004A470A    mov         eax,ebx
 004A470C    pop         esi
 004A470D    pop         ebx
 004A470E    ret
*}
end;

//004A4710
{*procedure sub_004A4710(?:TDictionary<System.Integer,System.Classes.IInterfaceList>.TPairEnumerator; ?:?);
begin
 004A4710    push        ebx
 004A4711    push        esi
 004A4712    mov         esi,edx
 004A4714    mov         ebx,eax
 004A4716    mov         eax,dword ptr [ebx+8]
 004A4719    lea         eax,[eax+eax*2]
 004A471C    mov         edx,dword ptr [ebx+4]
 004A471F    mov         edx,dword ptr [edx+4]
 004A4722    mov         eax,dword ptr [edx+eax*4+4]
 004A4726    mov         dword ptr [esi],eax
 004A4728    lea         eax,[esi+4]
 004A472B    mov         edx,dword ptr [ebx+8]
 004A472E    lea         edx,[edx+edx*2]
 004A4731    mov         ecx,dword ptr [ebx+4]
 004A4734    mov         ecx,dword ptr [ecx+4]
 004A4737    mov         edx,dword ptr [ecx+edx*4+8]
 004A473B    call        @IntfCopy
 004A4740    pop         esi
 004A4741    pop         ebx
 004A4742    ret
end;*}

//004A4744
{*procedure sub_004A4744(?:?);
begin
 004A4744    push        ebx
 004A4745    push        esi
 004A4746    mov         esi,edx
 004A4748    mov         ebx,eax
 004A474A    mov         edx,esi
 004A474C    mov         eax,ebx
 004A474E    call        004A4710
 004A4753    pop         esi
 004A4754    pop         ebx
 004A4755    ret
end;*}

//004A4758
procedure sub_004A4758;
begin
{*
 004A4758    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TPairEnumerator.MoveNext
 004A475D    ret
*}
end;

//004A4760
constructor sub_004A4760(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);
begin
{*
 004A4760    push        ebx
 004A4761    push        esi
 004A4762    push        edi
 004A4763    test        dl,dl
>004A4765    je          004A476F
 004A4767    add         esp,0FFFFFFF0
 004A476A    call        @ClassCreate
 004A476F    mov         esi,ecx
 004A4771    mov         ebx,edx
 004A4773    mov         edi,eax
 004A4775    xor         edx,edx
 004A4777    mov         eax,edi
 004A4779    call        TObject.Create
 004A477E    mov         dword ptr [edi+8],0FFFFFFFF
 004A4785    mov         dword ptr [edi+4],esi;TDictionary<System.Integer,System.Classes.IInterfaceList>.TPairEnu...
 004A4788    mov         eax,edi
 004A478A    test        bl,bl
>004A478C    je          004A479D
 004A478E    call        @AfterConstruction
 004A4793    pop         dword ptr fs:[0]
 004A479A    add         esp,0C
 004A479D    mov         eax,edi
 004A479F    pop         edi
 004A47A0    pop         esi
 004A47A1    pop         ebx
 004A47A2    ret
*}
end;

//004A47A4
function TDictionary<System.Integer,System.Classes.IInterfaceList>.TPairEnumerator.MoveNext:Boolean;
begin
{*
 004A47A4    push        ebx
 004A47A5    push        esi
 004A47A6    mov         esi,eax
>004A47A8    jmp         004A47C3
 004A47AA    inc         dword ptr [esi+8]
 004A47AD    mov         eax,dword ptr [esi+8]
 004A47B0    lea         eax,[eax+eax*2]
 004A47B3    mov         edx,dword ptr [esi+4]
 004A47B6    mov         edx,dword ptr [edx+4]
 004A47B9    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A47BD    je          004A47C3
 004A47BF    mov         bl,1
>004A47C1    jmp         004A47D6
 004A47C3    mov         eax,dword ptr [esi+4]
 004A47C6    mov         eax,dword ptr [eax+4]
 004A47C9    call        0040ABA8
 004A47CE    dec         eax
 004A47CF    cmp         eax,dword ptr [esi+8]
>004A47D2    jg          004A47AA
 004A47D4    xor         ebx,ebx
 004A47D6    mov         eax,ebx
 004A47D8    pop         esi
 004A47D9    pop         ebx
 004A47DA    ret
*}
end;

//004A47DC
destructor TEnumerable<System.Classes.TBasicActionLink>.Destroy();
begin
{*
 004A47DC    push        ebx
 004A47DD    push        esi
 004A47DE    call        @BeforeDestruction
 004A47E3    mov         ebx,edx
 004A47E5    mov         esi,eax
 004A47E7    mov         dl,0FC
 004A47E9    and         dl,bl
 004A47EB    mov         eax,esi
 004A47ED    call        TObject.Destroy
 004A47F2    test        bl,bl
>004A47F4    jle         004A47FD
 004A47F6    mov         eax,esi
 004A47F8    call        @ClassDestroy
 004A47FD    pop         esi
 004A47FE    pop         ebx
 004A47FF    ret
*}
end;

//004A4800
function TEnumerable<System.Classes.TBasicActionLink>.GetEnumerator:TEnumerator<System.Classes.TBasicActionLink>;
begin
{*
 004A4800    mov         edx,dword ptr [eax]
 004A4802    call        dword ptr [edx]
 004A4804    ret
*}
end;

//004A4808
{*procedure TEnumerable<System.Classes.TBasicActionLink>.ToArray(?:?);
begin
 004A4808    push        ebp
 004A4809    mov         ebp,esp
 004A480B    add         esp,0FFFFFFF4
 004A480E    push        ebx
 004A480F    mov         dword ptr [ebp-4],edx
 004A4812    mov         ebx,eax
 004A4814    mov         dl,1
 004A4816    mov         eax,[00481C70];TList<System.Classes.TBasicActionLink>
 004A481B    call        004A4954
 004A4820    mov         dword ptr [ebp-8],eax
 004A4823    xor         eax,eax
 004A4825    push        ebp
 004A4826    push        4A48B0
 004A482B    push        dword ptr fs:[eax]
 004A482E    mov         dword ptr fs:[eax],esp
 004A4831    mov         eax,ebx
 004A4833    call        TEnumerable<System.Classes.TBasicActionLink>.GetEnumerator
 004A4838    mov         dword ptr [ebp-0C],eax
 004A483B    xor         eax,eax
 004A483D    push        ebp
 004A483E    push        4A4888
 004A4843    push        dword ptr fs:[eax]
 004A4846    mov         dword ptr fs:[eax],esp
>004A4849    jmp         004A485E
 004A484B    mov         eax,dword ptr [ebp-0C]
 004A484E    mov         edx,dword ptr [eax]
 004A4850    call        dword ptr [edx]
 004A4852    mov         ebx,eax
 004A4854    mov         edx,ebx
 004A4856    mov         eax,dword ptr [ebp-8]
 004A4859    call        TList<System.Classes.TBasicActionLink>.Add
 004A485E    mov         eax,dword ptr [ebp-0C]
 004A4861    call        TEnumerator<System.Classes.TBasicActionLink>.MoveNext
 004A4866    test        al,al
>004A4868    jne         004A484B
 004A486A    xor         eax,eax
 004A486C    pop         edx
 004A486D    pop         ecx
 004A486E    pop         ecx
 004A486F    mov         dword ptr fs:[eax],edx
 004A4872    push        4A488F
 004A4877    cmp         dword ptr [ebp-0C],0
>004A487B    je          004A4887
 004A487D    mov         dl,1
 004A487F    mov         eax,dword ptr [ebp-0C]
 004A4882    mov         ecx,dword ptr [eax]
 004A4884    call        dword ptr [ecx-4]
 004A4887    ret
>004A4888    jmp         @HandleFinally
>004A488D    jmp         004A4877
 004A488F    mov         edx,dword ptr [ebp-4]
 004A4892    mov         eax,dword ptr [ebp-8]
 004A4895    call        TList<System.Classes.TBasicActionLink>.ToArray
 004A489A    xor         eax,eax
 004A489C    pop         edx
 004A489D    pop         ecx
 004A489E    pop         ecx
 004A489F    mov         dword ptr fs:[eax],edx
 004A48A2    push        4A48B7
 004A48A7    mov         eax,dword ptr [ebp-8]
 004A48AA    call        TObject.Free
 004A48AF    ret
>004A48B0    jmp         @HandleFinally
>004A48B5    jmp         004A48A7
 004A48B7    pop         ebx
 004A48B8    mov         esp,ebp
 004A48BA    pop         ebp
 004A48BB    ret
end;*}

//004A48BC
function TEnumerator<System.Classes.TBasicActionLink>.MoveNext:Boolean;
begin
{*
 004A48BC    mov         edx,dword ptr [eax]
 004A48BE    call        dword ptr [edx+4]
 004A48C1    ret
*}
end;

//004A490C
procedure sub_004A490C(?:TList<System.Classes.TBasicActionLink>);
begin
{*
 004A490C    add         eax,8
 004A490F    call        004357A0
 004A4914    ret
*}
end;

//004A4918
{*procedure sub_004A4918(?:?; ?:?);
begin
 004A4918    push        ebx
 004A4919    mov         edx,dword ptr [edx]
 004A491B    mov         ebx,dword ptr [eax]
 004A491D    call        dword ptr [ebx+8]
 004A4920    pop         ebx
 004A4921    ret
end;*}

//004A4924
{*procedure sub_004A4924(?:?; ?:?; ?:?);
begin
 004A4924    push        ebx
 004A4925    mov         edx,dword ptr [edx]
 004A4927    mov         ecx,dword ptr [ecx]
 004A4929    mov         eax,dword ptr [eax+24]
 004A492C    mov         ebx,dword ptr [eax]
 004A492E    call        dword ptr [ebx+0C]
 004A4931    pop         ebx
 004A4932    ret
end;*}

//004A4934
procedure sub_004A4934;
begin
{*
 004A4934    call        TList<System.Classes.TBasicActionLink>.GetEnumerator
 004A4939    ret
*}
end;

//004A493C
{*procedure sub_004A493C(?:?);
begin
 004A493C    push        ebx
 004A493D    cmp         word ptr [eax+2A],0
>004A4942    je          004A4951
 004A4944    push        ecx
 004A4945    mov         ebx,eax
 004A4947    mov         ecx,edx
 004A4949    mov         edx,eax
 004A494B    mov         eax,dword ptr [ebx+2C]
 004A494E    call        dword ptr [ebx+28]
 004A4951    pop         ebx
 004A4952    ret
end;*}

//004A4954
constructor sub_004A4954;
begin
{*
 004A4954    push        ebp
 004A4955    mov         ebp,esp
 004A4957    push        0
 004A4959    push        ebx
 004A495A    push        esi
 004A495B    test        dl,dl
>004A495D    je          004A4967
 004A495F    add         esp,0FFFFFFF0
 004A4962    call        @ClassCreate
 004A4967    mov         ebx,edx
 004A4969    mov         esi,eax
 004A496B    xor         eax,eax
 004A496D    push        ebp
 004A496E    push        4A49A8
 004A4973    push        dword ptr fs:[eax]
 004A4976    mov         dword ptr fs:[eax],esp
 004A4979    lea         edx,[ebp-4]
 004A497C    mov         eax,[004AB83C];TComparer<System.Classes.TBasicActionLink>
 004A4981    call        TComparer<System.Classes.TBasicActionLink>.Default
 004A4986    mov         ecx,dword ptr [ebp-4]
 004A4989    xor         edx,edx
 004A498B    mov         eax,esi
 004A498D    call        004A49CC
 004A4992    xor         eax,eax
 004A4994    pop         edx
 004A4995    pop         ecx
 004A4996    pop         ecx
 004A4997    mov         dword ptr fs:[eax],edx
 004A499A    push        4A49AF
 004A499F    lea         eax,[ebp-4]
 004A49A2    call        @IntfClear
 004A49A7    ret
>004A49A8    jmp         @HandleFinally
>004A49AD    jmp         004A499F
 004A49AF    mov         eax,esi
 004A49B1    test        bl,bl
>004A49B3    je          004A49C4
 004A49B5    call        @AfterConstruction
 004A49BA    pop         dword ptr fs:[0]
 004A49C1    add         esp,0C
 004A49C4    mov         eax,esi
 004A49C6    pop         esi
 004A49C7    pop         ebx
 004A49C8    pop         ecx
 004A49C9    pop         ebp
 004A49CA    ret
*}
end;

//004A49CC
constructor sub_004A49CC(AComparer:IComparer<System.Classes.TBasicActionLink>);
begin
{*
 004A49CC    push        ebp
 004A49CD    mov         ebp,esp
 004A49CF    push        0
 004A49D1    push        ebx
 004A49D2    push        esi
 004A49D3    push        edi
 004A49D4    test        dl,dl
>004A49D6    je          004A49E0
 004A49D8    add         esp,0FFFFFFF0
 004A49DB    call        @ClassCreate
 004A49E0    mov         esi,ecx
 004A49E2    mov         ebx,edx
 004A49E4    mov         edi,eax
 004A49E6    xor         eax,eax
 004A49E8    push        ebp
 004A49E9    push        4A4A57
 004A49EE    push        dword ptr fs:[eax]
 004A49F1    mov         dword ptr fs:[eax],esp
 004A49F4    xor         edx,edx
 004A49F6    mov         eax,edi
 004A49F8    call        TObject.Create
 004A49FD    mov         dword ptr [edi+14],edi;TList<System.Classes.TBasicActionLink>.FOnNotify:TCollectionNotif...
 004A4A00    mov         dword ptr [edi+10],4A4918;TList<System.Classes.TBasicActionLink>.FOnNotify:TCollectionNo...
 004A4A07    mov         dword ptr [edi+1C],edi
 004A4A0A    mov         dword ptr [edi+18],4A4924;sub_004A4924
 004A4A11    mov         eax,[00481854];TList<System.Classes.TBasicActionLink>.arrayofT
 004A4A16    mov         dword ptr [edi+0C],eax;TList<System.Classes.TBasicActionLink>.FComparer:IComparer<System...
 004A4A19    lea         eax,[edi+24]
 004A4A1C    mov         edx,esi
 004A4A1E    call        @IntfCopy
 004A4A23    cmp         dword ptr [edi+24],0
>004A4A27    jne         004A4A41
 004A4A29    lea         edx,[ebp-4]
 004A4A2C    mov         eax,[004AB83C];TComparer<System.Classes.TBasicActionLink>
 004A4A31    call        TComparer<System.Classes.TBasicActionLink>.Default
 004A4A36    mov         edx,dword ptr [ebp-4]
 004A4A39    lea         eax,[edi+24]
 004A4A3C    call        @IntfCopy
 004A4A41    xor         eax,eax
 004A4A43    pop         edx
 004A4A44    pop         ecx
 004A4A45    pop         ecx
 004A4A46    mov         dword ptr fs:[eax],edx
 004A4A49    push        4A4A5E
 004A4A4E    lea         eax,[ebp-4]
 004A4A51    call        @IntfClear
 004A4A56    ret
>004A4A57    jmp         @HandleFinally
>004A4A5C    jmp         004A4A4E
 004A4A5E    mov         eax,edi
 004A4A60    test        bl,bl
>004A4A62    je          004A4A73
 004A4A64    call        @AfterConstruction
 004A4A69    pop         dword ptr fs:[0]
 004A4A70    add         esp,0C
 004A4A73    mov         eax,edi
 004A4A75    pop         edi
 004A4A76    pop         esi
 004A4A77    pop         ebx
 004A4A78    pop         ecx
 004A4A79    pop         ebp
 004A4A7A    ret
*}
end;

//004A4A7C
destructor TList<System.Classes.TBasicActionLink>.Destroy();
begin
{*
 004A4A7C    push        ebx
 004A4A7D    push        esi
 004A4A7E    call        @BeforeDestruction
 004A4A83    mov         ebx,edx
 004A4A85    mov         esi,eax
 004A4A87    cmp         dword ptr [esi+8],0;TList<System.Classes.TBasicActionLink>.FCount:Integer
>004A4A8B    jle         004A4A96
 004A4A8D    xor         edx,edx
 004A4A8F    mov         eax,esi
 004A4A91    call        004A490C
 004A4A96    push        0
 004A4A98    lea         eax,[esi+20]
 004A4A9B    mov         ecx,1
 004A4AA0    mov         edx,dword ptr ds:[481854];TList<System.Classes.TBasicActionLink>.arrayofT
 004A4AA6    call        @DynArraySetLength
 004A4AAB    add         esp,4
 004A4AAE    mov         dl,0FC
 004A4AB0    and         dl,bl
 004A4AB2    mov         eax,esi
 004A4AB4    call        TEnumerable<System.Classes.TBasicActionLink>.Destroy
 004A4AB9    test        bl,bl
>004A4ABB    jle         004A4AC4
 004A4ABD    mov         eax,esi
 004A4ABF    call        @ClassDestroy
 004A4AC4    pop         esi
 004A4AC5    pop         ebx
 004A4AC6    ret
*}
end;

//004A4AC8
{*procedure TList<System.Classes.TBasicActionLink>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A4AC8    push        ebp
 004A4AC9    mov         ebp,esp
 004A4ACB    add         esp,0FFFFFFF0
 004A4ACE    mov         dword ptr [ebp-8],ecx
 004A4AD1    mov         dword ptr [ebp-4],edx
 004A4AD4    push        dword ptr [ebp+4]
 004A4AD7    mov         eax,dword ptr [ebp-8]
 004A4ADA    mov         dword ptr [ebp-10],eax
 004A4ADD    mov         byte ptr [ebp-0C],0
 004A4AE1    lea         eax,[ebp-10]
 004A4AE4    push        eax
 004A4AE5    push        0
 004A4AE7    mov         ecx,dword ptr [ebp-4]
 004A4AEA    mov         dl,1
 004A4AEC    mov         eax,[004180BC];EListError
 004A4AF1    call        Exception.CreateFmt;EListError.Create
>004A4AF6    jmp         @RaiseExcept
end;*}

//004A4B00
procedure TList<System.Classes.TBasicActionLink>.Add(Value:TBasicActionLink);
begin
{*
 004A4B00    push        ecx
 004A4B01    mov         dword ptr [esp],edx
 004A4B04    mov         edx,esp
 004A4B06    add         eax,8
 004A4B09    call        0043489C
 004A4B0E    pop         edx
 004A4B0F    ret
*}
end;

//004A4B10
{*procedure TList<System.Classes.TBasicActionLink>.ToArray(?:?);
begin
 004A4B10    push        ecx
 004A4B11    mov         dword ptr [esp],edx
 004A4B14    mov         edx,dword ptr [esp]
 004A4B17    add         eax,8
 004A4B1A    call        00435980
 004A4B1F    pop         edx
 004A4B20    ret
end;*}

//004A4B24
procedure TList<System.Classes.TBasicActionLink>.GetEnumerator;
begin
{*
 004A4B24    mov         ecx,eax
 004A4B26    mov         dl,1
 004A4B28    mov         eax,[00481AAC];TList<System.Classes.TBasicActionLink>.TEnumerator
 004A4B2D    call        004A4B60
 004A4B32    ret
*}
end;

//004A4B34
{*function sub_004A4B34(?:?):?;
begin
 004A4B34    push        ebx
 004A4B35    push        esi
 004A4B36    mov         ebx,dword ptr [eax+4]
 004A4B39    mov         esi,dword ptr [eax+8]
 004A4B3C    lea         eax,[ebx+8]
 004A4B3F    mov         edx,esi
 004A4B41    call        00434534
 004A4B46    mov         eax,dword ptr [ebx+20]
 004A4B49    mov         eax,dword ptr [eax+esi*4]
 004A4B4C    pop         esi
 004A4B4D    pop         ebx
 004A4B4E    ret
end;*}

//004A4B50
procedure sub_004A4B50;
begin
{*
 004A4B50    call        004A4B34
 004A4B55    ret
*}
end;

//004A4B58
procedure sub_004A4B58;
begin
{*
 004A4B58    call        TList<System.Classes.TBasicActionLink>.TEnumerator.MoveNext
 004A4B5D    ret
*}
end;

//004A4B60
constructor sub_004A4B60(AList:TList<System.Classes.TBasicActionLink>);
begin
{*
 004A4B60    push        ebx
 004A4B61    push        esi
 004A4B62    push        edi
 004A4B63    test        dl,dl
>004A4B65    je          004A4B6F
 004A4B67    add         esp,0FFFFFFF0
 004A4B6A    call        @ClassCreate
 004A4B6F    mov         esi,ecx
 004A4B71    mov         ebx,edx
 004A4B73    mov         edi,eax
 004A4B75    xor         edx,edx
 004A4B77    mov         eax,edi
 004A4B79    call        TObject.Create
 004A4B7E    mov         dword ptr [edi+4],esi;TList<System.Classes.TBasicActionLink>.TEnumerator.FList:TList<Sys...
 004A4B81    mov         dword ptr [edi+8],0FFFFFFFF
 004A4B88    mov         eax,edi
 004A4B8A    test        bl,bl
>004A4B8C    je          004A4B9D
 004A4B8E    call        @AfterConstruction
 004A4B93    pop         dword ptr fs:[0]
 004A4B9A    add         esp,0C
 004A4B9D    mov         eax,edi
 004A4B9F    pop         edi
 004A4BA0    pop         esi
 004A4BA1    pop         ebx
 004A4BA2    ret
*}
end;

//004A4BA4
function TList<System.Classes.TBasicActionLink>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A4BA4    mov         edx,dword ptr [eax+4]
 004A4BA7    mov         edx,dword ptr [edx+8]
 004A4BAA    cmp         edx,dword ptr [eax+8]
>004A4BAD    jg          004A4BB2
 004A4BAF    xor         eax,eax
 004A4BB1    ret
 004A4BB2    inc         dword ptr [eax+8]
 004A4BB5    mov         edx,dword ptr [eax+4]
 004A4BB8    mov         edx,dword ptr [edx+8]
 004A4BBB    cmp         edx,dword ptr [eax+8]
 004A4BBE    setg        al
 004A4BC1    ret
*}
end;

//004A4BC4
{*procedure sub_004A4BC4(?:TDictionary<System; ?:?; ?:?);
begin
 004A4BC4    push        ebp
 004A4BC5    mov         ebp,esp
 004A4BC7    add         esp,0FFFFFFF0
 004A4BCA    push        ebx
 004A4BCB    push        esi
 004A4BCC    mov         dword ptr [ebp-0C],ecx
 004A4BCF    mov         ebx,edx
 004A4BD1    mov         esi,eax
 004A4BD3    lea         eax,[ebp-8]
 004A4BD6    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A4BDC    call        @AddRefRecord
 004A4BE1    xor         eax,eax
 004A4BE3    push        ebp
 004A4BE4    push        4A4C90
 004A4BE9    push        dword ptr fs:[eax]
 004A4BEC    mov         dword ptr fs:[eax],esp
 004A4BEF    push        ebx
 004A4BF0    mov         eax,dword ptr [ebp-0C]
 004A4BF3    mov         ecx,1
 004A4BF8    mov         edx,dword ptr ds:[483B58];TArray<System.Classes.TPair<System.string,System.Classes.TPers...
 004A4BFE    call        @DynArraySetLength
 004A4C03    add         esp,4
 004A4C06    xor         ebx,ebx
 004A4C08    mov         eax,esi
 004A4C0A    call        TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator
 004A4C0F    mov         dword ptr [ebp-10],eax
 004A4C12    xor         eax,eax
 004A4C14    push        ebp
 004A4C15    push        4A4C6D
 004A4C1A    push        dword ptr fs:[eax]
 004A4C1D    mov         dword ptr fs:[eax],esp
>004A4C20    jmp         004A4C43
 004A4C22    lea         edx,[ebp-8]
 004A4C25    mov         eax,dword ptr [ebp-10]
 004A4C28    mov         ecx,dword ptr [eax]
 004A4C2A    call        dword ptr [ecx]
 004A4C2C    mov         eax,dword ptr [ebp-0C]
 004A4C2F    mov         eax,dword ptr [eax]
 004A4C31    lea         eax,[eax+ebx*8]
 004A4C34    lea         edx,[ebp-8]
 004A4C37    mov         ecx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A4C3D    call        @CopyRecord
 004A4C42    inc         ebx
 004A4C43    mov         eax,dword ptr [ebp-10]
 004A4C46    call        TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.MoveNext
 004A4C4B    test        al,al
>004A4C4D    jne         004A4C22
 004A4C4F    xor         eax,eax
 004A4C51    pop         edx
 004A4C52    pop         ecx
 004A4C53    pop         ecx
 004A4C54    mov         dword ptr fs:[eax],edx
 004A4C57    push        4A4C74
 004A4C5C    cmp         dword ptr [ebp-10],0
>004A4C60    je          004A4C6C
 004A4C62    mov         dl,1
 004A4C64    mov         eax,dword ptr [ebp-10]
 004A4C67    mov         ecx,dword ptr [eax]
 004A4C69    call        dword ptr [ecx-4]
 004A4C6C    ret
>004A4C6D    jmp         @HandleFinally
>004A4C72    jmp         004A4C5C
 004A4C74    xor         eax,eax
 004A4C76    pop         edx
 004A4C77    pop         ecx
 004A4C78    pop         ecx
 004A4C79    mov         dword ptr fs:[eax],edx
 004A4C7C    push        4A4C97
 004A4C81    lea         eax,[ebp-8]
 004A4C84    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A4C8A    call        @FinalizeRecord
 004A4C8F    ret
>004A4C90    jmp         @HandleFinally
>004A4C95    jmp         004A4C81
 004A4C97    pop         esi
 004A4C98    pop         ebx
 004A4C99    mov         esp,ebp
 004A4C9B    pop         ebp
 004A4C9C    ret
end;*}

//004A4CA0
destructor TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy();
begin
{*
 004A4CA0    push        ebx
 004A4CA1    push        esi
 004A4CA2    call        @BeforeDestruction
 004A4CA7    mov         ebx,edx
 004A4CA9    mov         esi,eax
 004A4CAB    mov         dl,0FC
 004A4CAD    and         dl,bl
 004A4CAF    mov         eax,esi
 004A4CB1    call        TObject.Destroy
 004A4CB6    test        bl,bl
>004A4CB8    jle         004A4CC1
 004A4CBA    mov         eax,esi
 004A4CBC    call        @ClassDestroy
 004A4CC1    pop         esi
 004A4CC2    pop         ebx
 004A4CC3    ret
*}
end;

//004A4CC4
function TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator:TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;
begin
{*
 004A4CC4    mov         edx,dword ptr [eax]
 004A4CC6    call        dword ptr [edx]
 004A4CC8    ret
*}
end;

//004A4CCC
{*procedure TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray(?:?);
begin
 004A4CCC    push        ebp
 004A4CCD    mov         ebp,esp
 004A4CCF    add         esp,0FFFFFFEC
 004A4CD2    push        ebx
 004A4CD3    mov         dword ptr [ebp-0C],edx
 004A4CD6    mov         ebx,eax
 004A4CD8    lea         eax,[ebp-8]
 004A4CDB    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A4CE1    call        @AddRefRecord
 004A4CE6    xor         eax,eax
 004A4CE8    push        ebp
 004A4CE9    push        4A4DB5
 004A4CEE    push        dword ptr fs:[eax]
 004A4CF1    mov         dword ptr fs:[eax],esp
 004A4CF4    mov         dl,1
 004A4CF6    mov         eax,[004ABF38];TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>...
 004A4CFB    call        004A87E8
 004A4D00    mov         dword ptr [ebp-10],eax
 004A4D03    xor         eax,eax
 004A4D05    push        ebp
 004A4D06    push        4A4D92
 004A4D0B    push        dword ptr fs:[eax]
 004A4D0E    mov         dword ptr fs:[eax],esp
 004A4D11    mov         eax,ebx
 004A4D13    call        TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator
 004A4D18    mov         dword ptr [ebp-14],eax
 004A4D1B    xor         eax,eax
 004A4D1D    push        ebp
 004A4D1E    push        4A4D6A
 004A4D23    push        dword ptr fs:[eax]
 004A4D26    mov         dword ptr fs:[eax],esp
>004A4D29    jmp         004A4D40
 004A4D2B    lea         edx,[ebp-8]
 004A4D2E    mov         eax,dword ptr [ebp-14]
 004A4D31    mov         ecx,dword ptr [eax]
 004A4D33    call        dword ptr [ecx]
 004A4D35    lea         edx,[ebp-8]
 004A4D38    mov         eax,dword ptr [ebp-10]
 004A4D3B    call        TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Add
 004A4D40    mov         eax,dword ptr [ebp-14]
 004A4D43    call        TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.MoveNext
 004A4D48    test        al,al
>004A4D4A    jne         004A4D2B
 004A4D4C    xor         eax,eax
 004A4D4E    pop         edx
 004A4D4F    pop         ecx
 004A4D50    pop         ecx
 004A4D51    mov         dword ptr fs:[eax],edx
 004A4D54    push        4A4D71
 004A4D59    cmp         dword ptr [ebp-14],0
>004A4D5D    je          004A4D69
 004A4D5F    mov         dl,1
 004A4D61    mov         eax,dword ptr [ebp-14]
 004A4D64    mov         ecx,dword ptr [eax]
 004A4D66    call        dword ptr [ecx-4]
 004A4D69    ret
>004A4D6A    jmp         @HandleFinally
>004A4D6F    jmp         004A4D59
 004A4D71    mov         edx,dword ptr [ebp-0C]
 004A4D74    mov         eax,dword ptr [ebp-10]
 004A4D77    call        TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray
 004A4D7C    xor         eax,eax
 004A4D7E    pop         edx
 004A4D7F    pop         ecx
 004A4D80    pop         ecx
 004A4D81    mov         dword ptr fs:[eax],edx
 004A4D84    push        4A4D99
 004A4D89    mov         eax,dword ptr [ebp-10]
 004A4D8C    call        TObject.Free
 004A4D91    ret
>004A4D92    jmp         @HandleFinally
>004A4D97    jmp         004A4D89
 004A4D99    xor         eax,eax
 004A4D9B    pop         edx
 004A4D9C    pop         ecx
 004A4D9D    pop         ecx
 004A4D9E    mov         dword ptr fs:[eax],edx
 004A4DA1    push        4A4DBC
 004A4DA6    lea         eax,[ebp-8]
 004A4DA9    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A4DAF    call        @FinalizeRecord
 004A4DB4    ret
>004A4DB5    jmp         @HandleFinally
>004A4DBA    jmp         004A4DA6
 004A4DBC    pop         ebx
 004A4DBD    mov         esp,ebp
 004A4DBF    pop         ebp
 004A4DC0    ret
end;*}

//004A4DC4
function TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.MoveNext:Boolean;
begin
{*
 004A4DC4    mov         edx,dword ptr [eax]
 004A4DC6    call        dword ptr [edx+4]
 004A4DC9    ret
*}
end;

//004A4DCC
procedure sub_004A4DCC(?:TDictionary<System.string,System.Classes.TPersistentClass>; ?:Integer);
begin
{*
 004A4DCC    cmp         edx,dword ptr [eax+8]
>004A4DCF    jge         004A4DE8
 004A4DD1    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004A4DD7    mov         dl,1
 004A4DD9    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004A4DDE    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004A4DE3    call        @RaiseExcept
 004A4DE8    test        edx,edx
>004A4DEA    jne         004A4DF4
 004A4DEC    xor         edx,edx
 004A4DEE    call        004A4E0C
 004A4DF3    ret
 004A4DF4    mov         ecx,4
 004A4DF9    cmp         edx,ecx
>004A4DFB    jle         004A4E03
 004A4DFD    add         ecx,ecx
 004A4DFF    cmp         edx,ecx
>004A4E01    jg          004A4DFD
 004A4E03    mov         edx,ecx
 004A4E05    call        004A4E0C
 004A4E0A    ret
*}
end;

//004A4E0C
{*procedure sub_004A4E0C(?:?; ?:?);
begin
 004A4E0C    push        ebp
 004A4E0D    mov         ebp,esp
 004A4E0F    add         esp,0FFFFFFF0
 004A4E12    push        ebx
 004A4E13    push        esi
 004A4E14    push        edi
 004A4E15    xor         ecx,ecx
 004A4E17    mov         dword ptr [ebp-4],ecx
 004A4E1A    mov         dword ptr [ebp-8],ecx
 004A4E1D    mov         edi,edx
 004A4E1F    mov         dword ptr [ebp-0C],eax
 004A4E22    xor         eax,eax
 004A4E24    push        ebp
 004A4E25    push        4A4F2D
 004A4E2A    push        dword ptr fs:[eax]
 004A4E2D    mov         dword ptr fs:[eax],esp
 004A4E30    mov         eax,dword ptr [ebp-0C]
 004A4E33    mov         eax,dword ptr [eax+4]
 004A4E36    mov         dword ptr [ebp-10],eax
 004A4E39    mov         eax,dword ptr [ebp-10]
 004A4E3C    test        eax,eax
>004A4E3E    je          004A4E45
 004A4E40    sub         eax,4
 004A4E43    mov         eax,dword ptr [eax]
 004A4E45    cmp         eax,edi
>004A4E47    je          004A4F0C
 004A4E4D    test        edi,edi
>004A4E4F    jge         004A4E56
 004A4E51    call        00423F00
 004A4E56    lea         eax,[ebp-4]
 004A4E59    mov         edx,dword ptr [ebp-0C]
 004A4E5C    mov         edx,dword ptr [edx+4]
 004A4E5F    mov         ecx,dword ptr ds:[483FD0];TDictionary<System.string,System.Classes.TPersistentClass>.TIt...
 004A4E65    call        @DynArrayAsg
 004A4E6A    push        edi
 004A4E6B    lea         eax,[ebp-8]
 004A4E6E    mov         ecx,1
 004A4E73    mov         edx,dword ptr ds:[483FD0];TDictionary<System.string,System.Classes.TPersistentClass>.TIt...
 004A4E79    call        @DynArraySetLength
 004A4E7E    add         esp,4
 004A4E81    mov         eax,dword ptr [ebp-8]
 004A4E84    test        eax,eax
>004A4E86    je          004A4E8D
 004A4E88    sub         eax,4
 004A4E8B    mov         eax,dword ptr [eax]
 004A4E8D    mov         esi,eax
 004A4E8F    dec         esi
 004A4E90    test        esi,esi
>004A4E92    jl          004A4EA8
 004A4E94    inc         esi
 004A4E95    xor         ebx,ebx
 004A4E97    lea         eax,[ebx+ebx*2]
 004A4E9A    mov         edx,dword ptr [ebp-8]
 004A4E9D    mov         dword ptr [edx+eax*4],0FFFFFFFF
 004A4EA4    inc         ebx
 004A4EA5    dec         esi
>004A4EA6    jne         004A4E97
 004A4EA8    mov         eax,dword ptr [ebp-0C]
 004A4EAB    add         eax,4
 004A4EAE    mov         edx,dword ptr [ebp-8]
 004A4EB1    mov         ecx,dword ptr ds:[483FD0];TDictionary<System.string,System.Classes.TPersistentClass>.TIt...
 004A4EB7    call        @DynArrayAsg
 004A4EBC    mov         eax,edi
 004A4EBE    shr         eax,1
 004A4EC0    shr         edi,2
 004A4EC3    add         eax,edi
 004A4EC5    mov         edx,dword ptr [ebp-0C]
 004A4EC8    mov         dword ptr [edx+10],eax
 004A4ECB    mov         eax,dword ptr [ebp-4]
 004A4ECE    test        eax,eax
>004A4ED0    je          004A4ED7
 004A4ED2    sub         eax,4
 004A4ED5    mov         eax,dword ptr [eax]
 004A4ED7    mov         esi,eax
 004A4ED9    dec         esi
 004A4EDA    test        esi,esi
>004A4EDC    jl          004A4F0C
 004A4EDE    inc         esi
 004A4EDF    xor         ebx,ebx
 004A4EE1    lea         eax,[ebx+ebx*2]
 004A4EE4    mov         edx,dword ptr [ebp-4]
 004A4EE7    mov         edx,dword ptr [edx+eax*4]
 004A4EEA    cmp         edx,0FFFFFFFF
>004A4EED    je          004A4F08
 004A4EEF    mov         ecx,dword ptr [ebp-4]
 004A4EF2    mov         ecx,dword ptr [ecx+eax*4+8]
 004A4EF6    push        ecx
 004A4EF7    mov         ecx,dword ptr [ebp-4]
 004A4EFA    mov         ecx,dword ptr [ecx+eax*4+4]
 004A4EFE    push        ecx
 004A4EFF    mov         eax,dword ptr [ebp-0C]
 004A4F02    pop         ecx
 004A4F03    call        004A5030
 004A4F08    inc         ebx
 004A4F09    dec         esi
>004A4F0A    jne         004A4EE1
 004A4F0C    xor         eax,eax
 004A4F0E    pop         edx
 004A4F0F    pop         ecx
 004A4F10    pop         ecx
 004A4F11    mov         dword ptr fs:[eax],edx
 004A4F14    push        4A4F34
 004A4F19    lea         eax,[ebp-8]
 004A4F1C    mov         edx,dword ptr ds:[483FD0];TDictionary<System.string,System.Classes.TPersistentClass>.TIt...
 004A4F22    mov         ecx,2
 004A4F27    call        @FinalizeArray
 004A4F2C    ret
>004A4F2D    jmp         @HandleFinally
>004A4F32    jmp         004A4F19
 004A4F34    pop         edi
 004A4F35    pop         esi
 004A4F36    pop         ebx
 004A4F37    mov         esp,ebp
 004A4F39    pop         ebp
 004A4F3A    ret
end;*}

//004A4F3C
procedure TDictionary<System.string,System.Classes.TPersistentClass>.Grow;
begin
{*
 004A4F3C    push        ecx
 004A4F3D    mov         edx,dword ptr [eax+4]
 004A4F40    mov         dword ptr [esp],edx
 004A4F43    mov         edx,dword ptr [esp]
 004A4F46    test        edx,edx
>004A4F48    je          004A4F4F
 004A4F4A    sub         edx,4
 004A4F4D    mov         edx,dword ptr [edx]
 004A4F4F    add         edx,edx
 004A4F51    test        edx,edx
>004A4F53    jne         004A4F5A
 004A4F55    mov         edx,4
 004A4F5A    call        004A4E0C
 004A4F5F    pop         edx
 004A4F60    ret
*}
end;

//004A4F64
function TDictionary<System.string,System.Classes.TPersistentClass>.GetBucketIndex(const Key:AnsiString; HashCode:Integer):Integer;
begin
{*
 004A4F64    push        ebx
 004A4F65    push        esi
 004A4F66    push        edi
 004A4F67    add         esp,0FFFFFFE8
 004A4F6A    mov         dword ptr [esp+4],ecx
 004A4F6E    mov         dword ptr [esp],edx
 004A4F71    mov         esi,eax
 004A4F73    mov         eax,dword ptr [esi+4]
 004A4F76    mov         dword ptr [esp+0C],eax
 004A4F7A    mov         eax,dword ptr [esp+0C]
 004A4F7E    test        eax,eax
>004A4F80    je          004A4F87
 004A4F82    sub         eax,4
 004A4F85    mov         eax,dword ptr [eax]
 004A4F87    test        eax,eax
>004A4F89    jne         004A4F92
 004A4F8B    mov         ebx,80000000
>004A4F90    jmp         004A5005
 004A4F92    mov         eax,dword ptr [esi+4]
 004A4F95    mov         dword ptr [esp+10],eax
 004A4F99    mov         eax,dword ptr [esp+10]
 004A4F9D    test        eax,eax
>004A4F9F    je          004A4FA6
 004A4FA1    sub         eax,4
 004A4FA4    mov         eax,dword ptr [eax]
 004A4FA6    dec         eax
 004A4FA7    and         eax,dword ptr [esp+4]
 004A4FAB    mov         ebx,eax
 004A4FAD    lea         eax,[ebx+ebx*2]
 004A4FB0    mov         edx,dword ptr [esi+4]
 004A4FB3    mov         eax,dword ptr [edx+eax*4]
 004A4FB6    mov         dword ptr [esp+8],eax
 004A4FBA    cmp         dword ptr [esp+8],0FFFFFFFF
>004A4FBF    jne         004A4FC5
 004A4FC1    not         ebx
>004A4FC3    jmp         004A5005
 004A4FC5    mov         eax,dword ptr [esp+8]
 004A4FC9    cmp         eax,dword ptr [esp+4]
>004A4FCD    jne         004A4FE8
 004A4FCF    lea         eax,[ebx+ebx*2]
 004A4FD2    mov         edx,dword ptr [esi+4]
 004A4FD5    mov         edx,dword ptr [edx+eax*4+4]
 004A4FD9    mov         ecx,dword ptr [esp]
 004A4FDC    mov         eax,dword ptr [esi+0C]
 004A4FDF    mov         edi,dword ptr [eax]
 004A4FE1    call        dword ptr [edi+0C]
 004A4FE4    test        al,al
>004A4FE6    jne         004A5005
 004A4FE8    inc         ebx
 004A4FE9    mov         eax,dword ptr [esi+4]
 004A4FEC    mov         dword ptr [esp+14],eax
 004A4FF0    mov         edi,dword ptr [esp+14]
 004A4FF4    test        edi,edi
>004A4FF6    je          004A4FFD
 004A4FF8    sub         edi,4
 004A4FFB    mov         edi,dword ptr [edi]
 004A4FFD    cmp         edi,ebx
>004A4FFF    jg          004A4FAD
 004A5001    xor         ebx,ebx
>004A5003    jmp         004A4FAD
 004A5005    mov         eax,ebx
 004A5007    add         esp,18
 004A500A    pop         edi
 004A500B    pop         esi
 004A500C    pop         ebx
 004A500D    ret
*}
end;

//004A5010
function TDictionary<System.string,System.Classes.TPersistentClass>.Hash(const Key:AnsiString):Integer;
begin
{*
 004A5010    push        ebx
 004A5011    push        esi
 004A5012    mov         esi,edx
 004A5014    mov         ebx,eax
 004A5016    mov         edx,esi
 004A5018    mov         eax,dword ptr [ebx+0C]
 004A501B    mov         ecx,dword ptr [eax]
 004A501D    call        dword ptr [ecx+10]
 004A5020    and         eax,7FFFFFFF
 004A5025    inc         eax
 004A5026    and         eax,7FFFFFFF
 004A502B    pop         esi
 004A502C    pop         ebx
 004A502D    ret
*}
end;

//004A5030
{*procedure sub_004A5030(?:?; ?:?; ?:?; ?:?);
begin
 004A5030    push        ebp
 004A5031    mov         ebp,esp
 004A5033    add         esp,0FFFFFFF8
 004A5036    push        ebx
 004A5037    push        esi
 004A5038    push        edi
 004A5039    mov         dword ptr [ebp-8],ecx
 004A503C    mov         dword ptr [ebp-4],edx
 004A503F    mov         ebx,eax
 004A5041    mov         ecx,dword ptr [ebp-4]
 004A5044    mov         edx,dword ptr [ebp-8]
 004A5047    mov         eax,ebx
 004A5049    call        TDictionary<System.string,System.Classes.TPersistentClass>.GetBucketIndex
 004A504E    mov         esi,eax
 004A5050    not         esi
 004A5052    lea         edi,[esi+esi*2]
 004A5055    mov         eax,dword ptr [ebx+4]
 004A5058    mov         edx,dword ptr [ebp-4]
 004A505B    mov         dword ptr [eax+edi*4],edx
 004A505E    mov         eax,dword ptr [ebx+4]
 004A5061    lea         eax,[eax+edi*4+4]
 004A5065    mov         edx,dword ptr [ebp-8]
 004A5068    call        @UStrAsg
 004A506D    mov         eax,dword ptr [ebx+4]
 004A5070    mov         edx,dword ptr [ebp+8]
 004A5073    mov         dword ptr [eax+edi*4+8],edx
 004A5077    pop         edi
 004A5078    pop         esi
 004A5079    pop         ebx
 004A507A    pop         ecx
 004A507B    pop         ecx
 004A507C    pop         ebp
 004A507D    ret         4
end;*}

//004A5080
procedure TDictionary<System.string,System.Classes.TPersistentClass>.DoAdd(HashCode:Integer; Index:Integer; const Key:AnsiString; const Value:TPersistentClass);
begin
{*
 004A5080    push        ebp
 004A5081    mov         ebp,esp
 004A5083    push        ebx
 004A5084    push        esi
 004A5085    push        edi
 004A5086    mov         esi,ecx
 004A5088    mov         ebx,eax
 004A508A    lea         edi,[esi+esi*2]
 004A508D    mov         eax,dword ptr [ebx+4]
 004A5090    mov         dword ptr [eax+edi*4],edx
 004A5093    mov         eax,dword ptr [ebx+4]
 004A5096    lea         eax,[eax+edi*4+4]
 004A509A    mov         edx,dword ptr [ebp+0C]
 004A509D    call        @UStrAsg
 004A50A2    mov         eax,dword ptr [ebx+4]
 004A50A5    mov         edx,dword ptr [ebp+8]
 004A50A8    mov         dword ptr [eax+edi*4+8],edx
 004A50AC    inc         dword ptr [ebx+8]
 004A50AF    xor         ecx,ecx
 004A50B1    mov         edx,dword ptr [ebp+0C]
 004A50B4    mov         eax,ebx
 004A50B6    mov         esi,dword ptr [eax]
 004A50B8    call        dword ptr [esi+8]
 004A50BB    xor         ecx,ecx
 004A50BD    mov         edx,dword ptr [ebp+8]
 004A50C0    mov         eax,ebx
 004A50C2    mov         ebx,dword ptr [eax]
 004A50C4    call        dword ptr [ebx+0C]
 004A50C7    pop         edi
 004A50C8    pop         esi
 004A50C9    pop         ebx
 004A50CA    pop         ebp
 004A50CB    ret         8
*}
end;

//004A50D0
procedure sub_004A50D0;
begin
{*
 004A50D0    call        TDictionary<System.string,System.Classes.TPersistentClass>.GetEnumerator
 004A50D5    ret
*}
end;

//004A50D8
{*procedure sub_004A50D8(?:?);
begin
 004A50D8    push        ebx
 004A50D9    cmp         word ptr [eax+1A],0;TDictionary<System.string,System.Classes.TPersistentClass>.FOnKeyNot...
>004A50DE    je          004A50ED
 004A50E0    push        ecx
 004A50E1    mov         ebx,eax
 004A50E3    mov         ecx,edx
 004A50E5    mov         edx,eax
 004A50E7    mov         eax,dword ptr [ebx+1C];TDictionary<System.string,System.Classes.TPersistentClass>.FOnKey...
 004A50EA    call        dword ptr [ebx+18];TDictionary<System.string,System.Classes.TPersistentClass>.FOnKeyNotify
 004A50ED    pop         ebx
 004A50EE    ret
end;*}

//004A50F0
{*procedure sub_004A50F0(?:?);
begin
 004A50F0    push        ebx
 004A50F1    cmp         word ptr [eax+22],0;TDictionary<System.string,System.Classes.TPersistentClass>.FOnValueN...
>004A50F6    je          004A5105
 004A50F8    push        ecx
 004A50F9    mov         ebx,eax
 004A50FB    mov         ecx,edx
 004A50FD    mov         edx,eax
 004A50FF    mov         eax,dword ptr [ebx+24];TDictionary<System.string,System.Classes.TPersistentClass>.FOnVal...
 004A5102    call        dword ptr [ebx+20];TDictionary<System.string,System.Classes.TPersistentClass>.FOnValueNotify
 004A5105    pop         ebx
 004A5106    ret
end;*}

//004A5108
constructor TDictionary<System.string,System.Classes.TPersistentClass>.Create;
begin
{*
 004A5108    push        ebx
 004A5109    push        esi
 004A510A    test        dl,dl
>004A510C    je          004A5116
 004A510E    add         esp,0FFFFFFF0
 004A5111    call        @ClassCreate
 004A5116    mov         ebx,edx
 004A5118    mov         esi,eax
 004A511A    push        ecx
 004A511B    xor         edx,edx
 004A511D    mov         eax,esi
 004A511F    xor         ecx,ecx
 004A5121    call        004A5140
 004A5126    mov         eax,esi
 004A5128    test        bl,bl
>004A512A    je          004A513B
 004A512C    call        @AfterConstruction
 004A5131    pop         dword ptr fs:[0]
 004A5138    add         esp,0C
 004A513B    mov         eax,esi
 004A513D    pop         esi
 004A513E    pop         ebx
 004A513F    ret
*}
end;

//004A5140
constructor sub_004A5140(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);
begin
{*
 004A5140    push        ebp
 004A5141    mov         ebp,esp
 004A5143    push        0
 004A5145    push        ebx
 004A5146    push        esi
 004A5147    push        edi
 004A5148    test        dl,dl
>004A514A    je          004A5154
 004A514C    add         esp,0FFFFFFF0
 004A514F    call        @ClassCreate
 004A5154    mov         esi,ecx
 004A5156    mov         ebx,edx
 004A5158    mov         edi,eax
 004A515A    xor         eax,eax
 004A515C    push        ebp
 004A515D    push        4A51CF
 004A5162    push        dword ptr fs:[eax]
 004A5165    mov         dword ptr fs:[eax],esp
 004A5168    xor         edx,edx
 004A516A    mov         eax,edi
 004A516C    call        TObject.Create
 004A5171    test        esi,esi
>004A5173    jge         004A518C
 004A5175    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004A517B    mov         dl,1
 004A517D    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004A5182    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004A5187    call        @RaiseExcept
 004A518C    lea         eax,[edi+0C];TDictionary<System.string,System.Classes.TPersistentClass>.FComparer:IEqual...
 004A518F    mov         edx,dword ptr [ebp+8]
 004A5192    call        @IntfCopy
 004A5197    cmp         dword ptr [edi+0C],0;TDictionary<System.string,System.Classes.TPersistentClass>.FCompare...
>004A519B    jne         004A51B0
 004A519D    lea         eax,[ebp-4]
 004A51A0    call        004577BC
 004A51A5    mov         edx,dword ptr [ebp-4]
 004A51A8    lea         eax,[edi+0C];TDictionary<System.string,System.Classes.TPersistentClass>.FComparer:IEqual...
 004A51AB    call        @IntfCopy
 004A51B0    mov         edx,esi
 004A51B2    mov         eax,edi
 004A51B4    call        004A4DCC
 004A51B9    xor         eax,eax
 004A51BB    pop         edx
 004A51BC    pop         ecx
 004A51BD    pop         ecx
 004A51BE    mov         dword ptr fs:[eax],edx
 004A51C1    push        4A51D6
 004A51C6    lea         eax,[ebp-4]
 004A51C9    call        @IntfClear
 004A51CE    ret
>004A51CF    jmp         @HandleFinally
>004A51D4    jmp         004A51C6
 004A51D6    mov         eax,edi
 004A51D8    test        bl,bl
>004A51DA    je          004A51EB
 004A51DC    call        @AfterConstruction
 004A51E1    pop         dword ptr fs:[0]
 004A51E8    add         esp,0C
 004A51EB    mov         eax,edi
 004A51ED    pop         edi
 004A51EE    pop         esi
 004A51EF    pop         ebx
 004A51F0    pop         ecx
 004A51F1    pop         ebp
 004A51F2    ret         4
*}
end;

//004A51F8
destructor TDictionary<System.string,System.Classes.TPersistentClass>.Destroy();
begin
{*
 004A51F8    push        ebx
 004A51F9    push        esi
 004A51FA    call        @BeforeDestruction
 004A51FF    mov         ebx,edx
 004A5201    mov         esi,eax
 004A5203    mov         eax,esi
 004A5205    call        TDictionary<System.string,System.Classes.TPersistentClass>.Clear
 004A520A    mov         eax,dword ptr [esi+28];TDictionary<System.string,System.Classes.TPersistentClass>.FKeyCo...
 004A520D    call        TObject.Free
 004A5212    mov         eax,dword ptr [esi+2C]
 004A5215    call        TObject.Free
 004A521A    mov         dl,0FC
 004A521C    and         dl,bl
 004A521E    mov         eax,esi
 004A5220    call        TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy
 004A5225    test        bl,bl
>004A5227    jle         004A5230
 004A5229    mov         eax,esi
 004A522B    call        @ClassDestroy
 004A5230    pop         esi
 004A5231    pop         ebx
 004A5232    ret
*}
end;

//004A5234
procedure TDictionary<System.string,System.Classes.TPersistentClass>.Add(Key:string; Value:TPersistentClass);
begin
{*
 004A5234    push        ebx
 004A5235    push        esi
 004A5236    push        edi
 004A5237    push        ecx
 004A5238    mov         dword ptr [esp],ecx
 004A523B    mov         esi,edx
 004A523D    mov         ebx,eax
 004A523F    mov         eax,dword ptr [ebx+8]
 004A5242    cmp         eax,dword ptr [ebx+10]
>004A5245    jl          004A524E
 004A5247    mov         eax,ebx
 004A5249    call        TDictionary<System.string,System.Classes.TPersistentClass>.Grow
 004A524E    mov         edx,esi
 004A5250    mov         eax,ebx
 004A5252    call        TDictionary<System.string,System.Classes.TPersistentClass>.Hash
 004A5257    mov         edi,eax
 004A5259    mov         ecx,edi
 004A525B    mov         edx,esi
 004A525D    mov         eax,ebx
 004A525F    call        TDictionary<System.string,System.Classes.TPersistentClass>.GetBucketIndex
 004A5264    test        eax,eax
>004A5266    jl          004A527F
 004A5268    mov         ecx,dword ptr ds:[7C423C];^SResString174:TResStringRec
 004A526E    mov         dl,1
 004A5270    mov         eax,[004180BC];EListError
 004A5275    call        Exception.CreateRes
 004A527A    call        @RaiseExcept
 004A527F    push        esi
 004A5280    mov         edx,dword ptr [esp+4]
 004A5284    push        edx
 004A5285    mov         ecx,eax
 004A5287    not         ecx
 004A5289    mov         edx,edi
 004A528B    mov         eax,ebx
 004A528D    call        TDictionary<System.string,System.Classes.TPersistentClass>.DoAdd
 004A5292    pop         edx
 004A5293    pop         edi
 004A5294    pop         esi
 004A5295    pop         ebx
 004A5296    ret
*}
end;

//004A5298
procedure TDictionary<System.string,System.Classes.TPersistentClass>.Clear;
begin
{*
 004A5298    push        ebp
 004A5299    mov         ebp,esp
 004A529B    add         esp,0FFFFFFF8
 004A529E    push        ebx
 004A529F    push        esi
 004A52A0    push        edi
 004A52A1    xor         edx,edx
 004A52A3    mov         dword ptr [ebp-4],edx
 004A52A6    mov         esi,eax
 004A52A8    xor         eax,eax
 004A52AA    push        ebp
 004A52AB    push        4A5353
 004A52B0    push        dword ptr fs:[eax]
 004A52B3    mov         dword ptr fs:[eax],esp
 004A52B6    lea         eax,[ebp-4]
 004A52B9    mov         edx,dword ptr [esi+4]
 004A52BC    mov         ecx,dword ptr ds:[483FD0];TDictionary<System.string,System.Classes.TPersistentClass>.TIt...
 004A52C2    call        @DynArrayAsg
 004A52C7    xor         eax,eax
 004A52C9    mov         dword ptr [esi+8],eax
 004A52CC    lea         eax,[esi+4]
 004A52CF    mov         edx,dword ptr ds:[483FD0];TDictionary<System.string,System.Classes.TPersistentClass>.TIt...
 004A52D5    call        @DynArrayClear
 004A52DA    xor         edx,edx
 004A52DC    mov         eax,esi
 004A52DE    call        004A4DCC
 004A52E3    xor         eax,eax
 004A52E5    mov         dword ptr [esi+10],eax
 004A52E8    mov         eax,dword ptr [ebp-4]
 004A52EB    test        eax,eax
>004A52ED    je          004A52F4
 004A52EF    sub         eax,4
 004A52F2    mov         eax,dword ptr [eax]
 004A52F4    dec         eax
 004A52F5    test        eax,eax
>004A52F7    jl          004A5337
 004A52F9    inc         eax
 004A52FA    mov         dword ptr [ebp-8],eax
 004A52FD    xor         ebx,ebx
 004A52FF    lea         eax,[ebx+ebx*2]
 004A5302    mov         edx,dword ptr [ebp-4]
 004A5305    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A5309    je          004A5331
 004A530B    lea         eax,[ebx+ebx*2]
 004A530E    mov         edx,dword ptr [ebp-4]
 004A5311    mov         edx,dword ptr [edx+eax*4+4]
 004A5315    mov         cl,1
 004A5317    mov         eax,esi
 004A5319    mov         edi,dword ptr [eax]
 004A531B    call        dword ptr [edi+8]
 004A531E    lea         eax,[ebx+ebx*2]
 004A5321    mov         edx,dword ptr [ebp-4]
 004A5324    mov         edx,dword ptr [edx+eax*4+8]
 004A5328    mov         cl,1
 004A532A    mov         eax,esi
 004A532C    mov         edi,dword ptr [eax]
 004A532E    call        dword ptr [edi+0C]
 004A5331    inc         ebx
 004A5332    dec         dword ptr [ebp-8]
>004A5335    jne         004A52FF
 004A5337    xor         eax,eax
 004A5339    pop         edx
 004A533A    pop         ecx
 004A533B    pop         ecx
 004A533C    mov         dword ptr fs:[eax],edx
 004A533F    push        4A535A
 004A5344    lea         eax,[ebp-4]
 004A5347    mov         edx,dword ptr ds:[483FD0];TDictionary<System.string,System.Classes.TPersistentClass>.TIt...
 004A534D    call        @DynArrayClear
 004A5352    ret
>004A5353    jmp         @HandleFinally
>004A5358    jmp         004A5344
 004A535A    pop         edi
 004A535B    pop         esi
 004A535C    pop         ebx
 004A535D    pop         ecx
 004A535E    pop         ecx
 004A535F    pop         ebp
 004A5360    ret
*}
end;

//004A5364
function TDictionary<System.string,System.Classes.TPersistentClass>.TryGetValue(Key:string; Value:TPersistentClass):Boolean;
begin
{*
 004A5364    push        ebx
 004A5365    push        esi
 004A5366    push        edi
 004A5367    mov         edi,ecx
 004A5369    mov         esi,edx
 004A536B    mov         ebx,eax
 004A536D    mov         edx,esi
 004A536F    mov         eax,ebx
 004A5371    call        TDictionary<System.string,System.Classes.TPersistentClass>.Hash
 004A5376    mov         ecx,eax
 004A5378    mov         edx,esi
 004A537A    mov         eax,ebx
 004A537C    call        TDictionary<System.string,System.Classes.TPersistentClass>.GetBucketIndex
 004A5381    test        eax,eax
 004A5383    setge       dl
 004A5386    test        dl,dl
>004A5388    je          004A5398
 004A538A    lea         eax,[eax+eax*2]
 004A538D    mov         ecx,dword ptr [ebx+4]
 004A5390    mov         eax,dword ptr [ecx+eax*4+8]
 004A5394    mov         dword ptr [edi],eax
>004A5396    jmp         004A539C
 004A5398    xor         eax,eax
 004A539A    mov         dword ptr [edi],eax
 004A539C    mov         eax,edx
 004A539E    pop         edi
 004A539F    pop         esi
 004A53A0    pop         ebx
 004A53A1    ret
*}
end;

//004A53A4
function TDictionary<System.string,System.Classes.TPersistentClass>.ContainsValue(Value:TPersistentClass):Boolean;
begin
{*
 004A53A4    push        ebp
 004A53A5    mov         ebp,esp
 004A53A7    add         esp,0FFFFFFF0
 004A53AA    push        ebx
 004A53AB    push        esi
 004A53AC    push        edi
 004A53AD    xor         ecx,ecx
 004A53AF    mov         dword ptr [ebp-4],ecx
 004A53B2    mov         dword ptr [ebp-8],edx
 004A53B5    mov         esi,eax
 004A53B7    xor         eax,eax
 004A53B9    push        ebp
 004A53BA    push        4A5431
 004A53BF    push        dword ptr fs:[eax]
 004A53C2    mov         dword ptr fs:[eax],esp
 004A53C5    lea         eax,[ebp-4]
 004A53C8    call        004A8AD4
 004A53CD    mov         eax,dword ptr [esi+4]
 004A53D0    mov         dword ptr [ebp-10],eax
 004A53D3    mov         eax,dword ptr [ebp-10]
 004A53D6    test        eax,eax
>004A53D8    je          004A53DF
 004A53DA    sub         eax,4
 004A53DD    mov         eax,dword ptr [eax]
 004A53DF    dec         eax
 004A53E0    test        eax,eax
>004A53E2    jl          004A5419
 004A53E4    inc         eax
 004A53E5    mov         dword ptr [ebp-0C],eax
 004A53E8    xor         ebx,ebx
 004A53EA    lea         eax,[ebx+ebx*2]
 004A53ED    mov         edx,dword ptr [esi+4]
 004A53F0    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A53F4    je          004A5413
 004A53F6    lea         eax,[ebx+ebx*2]
 004A53F9    mov         edx,dword ptr [esi+4]
 004A53FC    mov         edx,dword ptr [edx+eax*4+8]
 004A5400    mov         ecx,dword ptr [ebp-8]
 004A5403    mov         eax,dword ptr [ebp-4]
 004A5406    mov         edi,dword ptr [eax]
 004A5408    call        dword ptr [edi+0C]
 004A540B    test        al,al
>004A540D    je          004A5413
 004A540F    mov         bl,1
>004A5411    jmp         004A541B
 004A5413    inc         ebx
 004A5414    dec         dword ptr [ebp-0C]
>004A5417    jne         004A53EA
 004A5419    xor         ebx,ebx
 004A541B    xor         eax,eax
 004A541D    pop         edx
 004A541E    pop         ecx
 004A541F    pop         ecx
 004A5420    mov         dword ptr fs:[eax],edx
 004A5423    push        4A5438
 004A5428    lea         eax,[ebp-4]
 004A542B    call        @IntfClear
 004A5430    ret
>004A5431    jmp         @HandleFinally
>004A5436    jmp         004A5428
 004A5438    mov         eax,ebx
 004A543A    pop         edi
 004A543B    pop         esi
 004A543C    pop         ebx
 004A543D    mov         esp,ebp
 004A543F    pop         ebp
 004A5440    ret
*}
end;

//004A5444
{*procedure TDictionary<System.string,System.Classes.TPersistentClass>.ToArray(?:?);
begin
 004A5444    push        ebx
 004A5445    push        esi
 004A5446    mov         esi,edx
 004A5448    mov         ebx,eax
 004A544A    mov         ecx,esi
 004A544C    mov         edx,dword ptr [ebx+8]
 004A544F    mov         eax,ebx
 004A5451    call        004A4BC4
 004A5456    pop         esi
 004A5457    pop         ebx
 004A5458    ret
end;*}

//004A549C
function TDictionary<System.string,System.Classes.TPersistentClass>.GetEnumerator:TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator;
begin
{*
 004A549C    mov         ecx,eax
 004A549E    mov         dl,1
 004A54A0    mov         eax,[00484CAC];TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerato...
 004A54A5    call        004A58B0
 004A54AA    ret
*}
end;

//004A54B4
procedure sub_004A54B4;
begin
{*
 004A54B4    call        TDictionary<System.string,System.Classes.TPersistentClass>.TKeyCollection.GetEnumerator
 004A54B9    ret
*}
end;

//004A54BC
constructor sub_004A54BC(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);
begin
{*
 004A54BC    push        ebx
 004A54BD    push        esi
 004A54BE    push        edi
 004A54BF    test        dl,dl
>004A54C1    je          004A54CB
 004A54C3    add         esp,0FFFFFFF0
 004A54C6    call        @ClassCreate
 004A54CB    mov         esi,ecx
 004A54CD    mov         ebx,edx
 004A54CF    mov         edi,eax
 004A54D1    xor         edx,edx
 004A54D3    mov         eax,edi
 004A54D5    call        TObject.Create
 004A54DA    mov         dword ptr [edi+4],esi
 004A54DD    mov         eax,edi
 004A54DF    test        bl,bl
>004A54E1    je          004A54F2
 004A54E3    call        @AfterConstruction
 004A54E8    pop         dword ptr fs:[0]
 004A54EF    add         esp,0C
 004A54F2    mov         eax,edi
 004A54F4    pop         edi
 004A54F5    pop         esi
 004A54F6    pop         ebx
 004A54F7    ret
*}
end;

//004A54F8
procedure TDictionary<System.string,System.Classes.TPersistentClass>.TKeyCollection.GetEnumerator;
begin
{*
 004A54F8    mov         ecx,dword ptr [eax+4]
 004A54FB    mov         dl,1
 004A54FD    mov         eax,[00484118];TDictionary<System.string,System.Classes.TPersistentClass>.TKeyEnumerator
 004A5502    call        004A555C
 004A5507    ret
*}
end;

//004A5508
{*procedure TDictionary<System.string,System.Classes.TPersistentClass>.TKeyCollection.ToArray(?:?);
begin
 004A5508    push        ebx
 004A5509    push        esi
 004A550A    mov         esi,edx
 004A550C    mov         ebx,eax
 004A550E    mov         ecx,esi
 004A5510    mov         eax,dword ptr [ebx+4]
 004A5513    mov         edx,dword ptr [eax+8]
 004A5516    mov         eax,ebx
 004A5518    call        00590BC0
 004A551D    pop         esi
 004A551E    pop         ebx
 004A551F    ret
end;*}

//004A5520
{*procedure sub_004A5520(?:TDictionary<System.string,System.Classes.TPersistentClass>.TKeyEnumerator; ?:?);
begin
 004A5520    push        ebx
 004A5521    push        esi
 004A5522    mov         esi,edx
 004A5524    mov         ebx,eax
 004A5526    mov         eax,esi
 004A5528    mov         edx,dword ptr [ebx+8]
 004A552B    lea         edx,[edx+edx*2]
 004A552E    mov         ecx,dword ptr [ebx+4]
 004A5531    mov         ecx,dword ptr [ecx+4]
 004A5534    mov         edx,dword ptr [ecx+edx*4+4]
 004A5538    call        @UStrAsg
 004A553D    pop         esi
 004A553E    pop         ebx
 004A553F    ret
end;*}

//004A5540
{*procedure sub_004A5540(?:?);
begin
 004A5540    push        ebx
 004A5541    push        esi
 004A5542    mov         esi,edx
 004A5544    mov         ebx,eax
 004A5546    mov         edx,esi
 004A5548    mov         eax,ebx
 004A554A    call        004A5520
 004A554F    pop         esi
 004A5550    pop         ebx
 004A5551    ret
end;*}

//004A5554
procedure sub_004A5554;
begin
{*
 004A5554    call        TDictionary<System.string,System.Classes.TPersistentClass>.TKeyEnumerator.MoveNext
 004A5559    ret
*}
end;

//004A555C
constructor sub_004A555C(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);
begin
{*
 004A555C    push        ebx
 004A555D    push        esi
 004A555E    push        edi
 004A555F    test        dl,dl
>004A5561    je          004A556B
 004A5563    add         esp,0FFFFFFF0
 004A5566    call        @ClassCreate
 004A556B    mov         esi,ecx
 004A556D    mov         ebx,edx
 004A556F    mov         edi,eax
 004A5571    xor         edx,edx
 004A5573    mov         eax,edi
 004A5575    call        TObject.Create
 004A557A    mov         dword ptr [edi+8],0FFFFFFFF
 004A5581    mov         dword ptr [edi+4],esi;TDictionary<System.string,System.Classes.TPersistentClass>.TKeyEnu...
 004A5584    mov         eax,edi
 004A5586    test        bl,bl
>004A5588    je          004A5599
 004A558A    call        @AfterConstruction
 004A558F    pop         dword ptr fs:[0]
 004A5596    add         esp,0C
 004A5599    mov         eax,edi
 004A559B    pop         edi
 004A559C    pop         esi
 004A559D    pop         ebx
 004A559E    ret
*}
end;

//004A55A0
function TDictionary<System.string,System.Classes.TPersistentClass>.TKeyEnumerator.MoveNext:Boolean;
begin
{*
 004A55A0    push        ebx
 004A55A1    push        esi
 004A55A2    mov         esi,eax
>004A55A4    jmp         004A55BF
 004A55A6    inc         dword ptr [esi+8]
 004A55A9    mov         eax,dword ptr [esi+8]
 004A55AC    lea         eax,[eax+eax*2]
 004A55AF    mov         edx,dword ptr [esi+4]
 004A55B2    mov         edx,dword ptr [edx+4]
 004A55B5    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A55B9    je          004A55BF
 004A55BB    mov         bl,1
>004A55BD    jmp         004A55D2
 004A55BF    mov         eax,dword ptr [esi+4]
 004A55C2    mov         eax,dword ptr [eax+4]
 004A55C5    call        0040ABA8
 004A55CA    dec         eax
 004A55CB    cmp         eax,dword ptr [esi+8]
>004A55CE    jg          004A55A6
 004A55D0    xor         ebx,ebx
 004A55D2    mov         eax,ebx
 004A55D4    pop         esi
 004A55D5    pop         ebx
 004A55D6    ret
*}
end;

//004A55D8
{*procedure sub_004A55D8(?:TDictionary<System; ?:?; ?:?);
begin
 004A55D8    push        ebp
 004A55D9    mov         ebp,esp
 004A55DB    add         esp,0FFFFFFF8
 004A55DE    push        ebx
 004A55DF    push        esi
 004A55E0    mov         dword ptr [ebp-4],ecx
 004A55E3    mov         esi,edx
 004A55E5    mov         ebx,eax
 004A55E7    push        esi
 004A55E8    mov         eax,dword ptr [ebp-4]
 004A55EB    mov         ecx,1
 004A55F0    mov         edx,dword ptr ds:[484544];TArray<System.Classes.TPersistentClass>
 004A55F6    call        @DynArraySetLength
 004A55FB    add         esp,4
 004A55FE    xor         esi,esi
 004A5600    mov         eax,ebx
 004A5602    call        TEnumerable<System.Classes.TPersistentClass>.GetEnumerator
 004A5607    mov         dword ptr [ebp-8],eax
 004A560A    xor         eax,eax
 004A560C    push        ebp
 004A560D    push        4A5656
 004A5612    push        dword ptr fs:[eax]
 004A5615    mov         dword ptr fs:[eax],esp
>004A5618    jmp         004A562C
 004A561A    mov         eax,dword ptr [ebp-8]
 004A561D    mov         edx,dword ptr [eax]
 004A561F    call        dword ptr [edx]
 004A5621    mov         ebx,eax
 004A5623    mov         eax,dword ptr [ebp-4]
 004A5626    mov         eax,dword ptr [eax]
 004A5628    mov         dword ptr [eax+esi*4],ebx
 004A562B    inc         esi
 004A562C    mov         eax,dword ptr [ebp-8]
 004A562F    call        TEnumerator<System.Classes.TPersistentClass>.MoveNext
 004A5634    test        al,al
>004A5636    jne         004A561A
 004A5638    xor         eax,eax
 004A563A    pop         edx
 004A563B    pop         ecx
 004A563C    pop         ecx
 004A563D    mov         dword ptr fs:[eax],edx
 004A5640    push        4A565D
 004A5645    cmp         dword ptr [ebp-8],0
>004A5649    je          004A5655
 004A564B    mov         dl,1
 004A564D    mov         eax,dword ptr [ebp-8]
 004A5650    mov         ecx,dword ptr [eax]
 004A5652    call        dword ptr [ecx-4]
 004A5655    ret
>004A5656    jmp         @HandleFinally
>004A565B    jmp         004A5645
 004A565D    pop         esi
 004A565E    pop         ebx
 004A565F    pop         ecx
 004A5660    pop         ecx
 004A5661    pop         ebp
 004A5662    ret
end;*}

//004A5664
destructor TEnumerable<System.Classes.TPersistentClass>.Destroy();
begin
{*
 004A5664    push        ebx
 004A5665    push        esi
 004A5666    call        @BeforeDestruction
 004A566B    mov         ebx,edx
 004A566D    mov         esi,eax
 004A566F    mov         dl,0FC
 004A5671    and         dl,bl
 004A5673    mov         eax,esi
 004A5675    call        TObject.Destroy
 004A567A    test        bl,bl
>004A567C    jle         004A5685
 004A567E    mov         eax,esi
 004A5680    call        @ClassDestroy
 004A5685    pop         esi
 004A5686    pop         ebx
 004A5687    ret
*}
end;

//004A5688
function TEnumerable<System.Classes.TPersistentClass>.GetEnumerator:TEnumerator<System.Classes.TPersistentClass>;
begin
{*
 004A5688    mov         edx,dword ptr [eax]
 004A568A    call        dword ptr [edx]
 004A568C    ret
*}
end;

//004A5690
{*procedure TEnumerable<System.Classes.TPersistentClass>.ToArray(?:?);
begin
 004A5690    push        ebp
 004A5691    mov         ebp,esp
 004A5693    add         esp,0FFFFFFF4
 004A5696    push        ebx
 004A5697    mov         dword ptr [ebp-4],edx
 004A569A    mov         ebx,eax
 004A569C    mov         dl,1
 004A569E    mov         eax,[004859B4];TList<System.Classes.TPersistentClass>
 004A56A3    call        004A59BC
 004A56A8    mov         dword ptr [ebp-8],eax
 004A56AB    xor         eax,eax
 004A56AD    push        ebp
 004A56AE    push        4A5738
 004A56B3    push        dword ptr fs:[eax]
 004A56B6    mov         dword ptr fs:[eax],esp
 004A56B9    mov         eax,ebx
 004A56BB    call        TEnumerable<System.Classes.TPersistentClass>.GetEnumerator
 004A56C0    mov         dword ptr [ebp-0C],eax
 004A56C3    xor         eax,eax
 004A56C5    push        ebp
 004A56C6    push        4A5710
 004A56CB    push        dword ptr fs:[eax]
 004A56CE    mov         dword ptr fs:[eax],esp
>004A56D1    jmp         004A56E6
 004A56D3    mov         eax,dword ptr [ebp-0C]
 004A56D6    mov         edx,dword ptr [eax]
 004A56D8    call        dword ptr [edx]
 004A56DA    mov         ebx,eax
 004A56DC    mov         edx,ebx
 004A56DE    mov         eax,dword ptr [ebp-8]
 004A56E1    call        TList<System.Classes.TPersistentClass>.Add
 004A56E6    mov         eax,dword ptr [ebp-0C]
 004A56E9    call        TEnumerator<System.Classes.TPersistentClass>.MoveNext
 004A56EE    test        al,al
>004A56F0    jne         004A56D3
 004A56F2    xor         eax,eax
 004A56F4    pop         edx
 004A56F5    pop         ecx
 004A56F6    pop         ecx
 004A56F7    mov         dword ptr fs:[eax],edx
 004A56FA    push        4A5717
 004A56FF    cmp         dword ptr [ebp-0C],0
>004A5703    je          004A570F
 004A5705    mov         dl,1
 004A5707    mov         eax,dword ptr [ebp-0C]
 004A570A    mov         ecx,dword ptr [eax]
 004A570C    call        dword ptr [ecx-4]
 004A570F    ret
>004A5710    jmp         @HandleFinally
>004A5715    jmp         004A56FF
 004A5717    mov         edx,dword ptr [ebp-4]
 004A571A    mov         eax,dword ptr [ebp-8]
 004A571D    call        TList<System.Classes.TPersistentClass>.ToArray
 004A5722    xor         eax,eax
 004A5724    pop         edx
 004A5725    pop         ecx
 004A5726    pop         ecx
 004A5727    mov         dword ptr fs:[eax],edx
 004A572A    push        4A573F
 004A572F    mov         eax,dword ptr [ebp-8]
 004A5732    call        TObject.Free
 004A5737    ret
>004A5738    jmp         @HandleFinally
>004A573D    jmp         004A572F
 004A573F    pop         ebx
 004A5740    mov         esp,ebp
 004A5742    pop         ebp
 004A5743    ret
end;*}

//004A5744
function TEnumerator<System.Classes.TPersistentClass>.MoveNext:Boolean;
begin
{*
 004A5744    mov         edx,dword ptr [eax]
 004A5746    call        dword ptr [edx+4]
 004A5749    ret
*}
end;

//004A5754
procedure sub_004A5754;
begin
{*
 004A5754    call        TDictionary<System.string,System.Classes.TPersistentClass>.TValueCollection.GetEnumerator
 004A5759    ret
*}
end;

//004A575C
constructor sub_004A575C(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);
begin
{*
 004A575C    push        ebx
 004A575D    push        esi
 004A575E    push        edi
 004A575F    test        dl,dl
>004A5761    je          004A576B
 004A5763    add         esp,0FFFFFFF0
 004A5766    call        @ClassCreate
 004A576B    mov         esi,ecx
 004A576D    mov         ebx,edx
 004A576F    mov         edi,eax
 004A5771    xor         edx,edx
 004A5773    mov         eax,edi
 004A5775    call        TObject.Create
 004A577A    mov         dword ptr [edi+4],esi
 004A577D    mov         eax,edi
 004A577F    test        bl,bl
>004A5781    je          004A5792
 004A5783    call        @AfterConstruction
 004A5788    pop         dword ptr fs:[0]
 004A578F    add         esp,0C
 004A5792    mov         eax,edi
 004A5794    pop         edi
 004A5795    pop         esi
 004A5796    pop         ebx
 004A5797    ret
*}
end;

//004A5798
procedure TDictionary<System.string,System.Classes.TPersistentClass>.TValueCollection.GetEnumerator;
begin
{*
 004A5798    mov         ecx,dword ptr [eax+4]
 004A579B    mov         dl,1
 004A579D    mov         eax,[00484874];TDictionary<System.string,System.Classes.TPersistentClass>.TValueEnumerat...
 004A57A2    call        004A57E4
 004A57A7    ret
*}
end;

//004A57A8
{*procedure TDictionary<System.string,System.Classes.TPersistentClass>.TValueCollection.ToArray(?:?);
begin
 004A57A8    push        ebx
 004A57A9    push        esi
 004A57AA    mov         esi,edx
 004A57AC    mov         ebx,eax
 004A57AE    mov         ecx,esi
 004A57B0    mov         eax,dword ptr [ebx+4]
 004A57B3    mov         edx,dword ptr [eax+8]
 004A57B6    mov         eax,ebx
 004A57B8    call        004A55D8
 004A57BD    pop         esi
 004A57BE    pop         ebx
 004A57BF    ret
end;*}

//004A57C0
{*function sub_004A57C0(?:?):?;
begin
 004A57C0    mov         edx,dword ptr [eax+8]
 004A57C3    lea         edx,[edx+edx*2]
 004A57C6    mov         eax,dword ptr [eax+4]
 004A57C9    mov         eax,dword ptr [eax+4]
 004A57CC    mov         eax,dword ptr [eax+edx*4+8]
 004A57D0    ret
end;*}

//004A57D4
procedure sub_004A57D4;
begin
{*
 004A57D4    call        004A57C0
 004A57D9    ret
*}
end;

//004A57DC
procedure sub_004A57DC;
begin
{*
 004A57DC    call        TDictionary<System.string,System.Classes.TPersistentClass>.TValueEnumerator.MoveNext
 004A57E1    ret
*}
end;

//004A57E4
constructor sub_004A57E4(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);
begin
{*
 004A57E4    push        ebx
 004A57E5    push        esi
 004A57E6    push        edi
 004A57E7    test        dl,dl
>004A57E9    je          004A57F3
 004A57EB    add         esp,0FFFFFFF0
 004A57EE    call        @ClassCreate
 004A57F3    mov         esi,ecx
 004A57F5    mov         ebx,edx
 004A57F7    mov         edi,eax
 004A57F9    xor         edx,edx
 004A57FB    mov         eax,edi
 004A57FD    call        TObject.Create
 004A5802    mov         dword ptr [edi+8],0FFFFFFFF
 004A5809    mov         dword ptr [edi+4],esi;TDictionary<System.string,System.Classes.TPersistentClass>.TValueE...
 004A580C    mov         eax,edi
 004A580E    test        bl,bl
>004A5810    je          004A5821
 004A5812    call        @AfterConstruction
 004A5817    pop         dword ptr fs:[0]
 004A581E    add         esp,0C
 004A5821    mov         eax,edi
 004A5823    pop         edi
 004A5824    pop         esi
 004A5825    pop         ebx
 004A5826    ret
*}
end;

//004A5828
function TDictionary<System.string,System.Classes.TPersistentClass>.TValueEnumerator.MoveNext:Boolean;
begin
{*
 004A5828    push        ebx
 004A5829    push        esi
 004A582A    mov         esi,eax
>004A582C    jmp         004A5847
 004A582E    inc         dword ptr [esi+8]
 004A5831    mov         eax,dword ptr [esi+8]
 004A5834    lea         eax,[eax+eax*2]
 004A5837    mov         edx,dword ptr [esi+4]
 004A583A    mov         edx,dword ptr [edx+4]
 004A583D    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A5841    je          004A5847
 004A5843    mov         bl,1
>004A5845    jmp         004A585A
 004A5847    mov         eax,dword ptr [esi+4]
 004A584A    mov         eax,dword ptr [eax+4]
 004A584D    call        0040ABA8
 004A5852    dec         eax
 004A5853    cmp         eax,dword ptr [esi+8]
>004A5856    jg          004A582E
 004A5858    xor         ebx,ebx
 004A585A    mov         eax,ebx
 004A585C    pop         esi
 004A585D    pop         ebx
 004A585E    ret
*}
end;

//004A5860
procedure sub_004A5860(?:TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator; ?:Byte);
begin
{*
 004A5860    push        ebx
 004A5861    push        esi
 004A5862    mov         esi,edx
 004A5864    mov         ebx,eax
 004A5866    mov         eax,esi
 004A5868    mov         edx,dword ptr [ebx+8]
 004A586B    lea         edx,[edx+edx*2]
 004A586E    mov         ecx,dword ptr [ebx+4];TDictionary<System.string,System.Classes.TPersistentClass>.TPairEn...
 004A5871    mov         ecx,dword ptr [ecx+4];TDictionary<System.string,System.Classes.TPersistentClass>.FItems:...
 004A5874    mov         edx,dword ptr [ecx+edx*4+4]
 004A5878    call        @UStrAsg
 004A587D    mov         eax,dword ptr [ebx+8]
 004A5880    lea         eax,[eax+eax*2]
 004A5883    mov         edx,dword ptr [ebx+4];TDictionary<System.string,System.Classes.TPersistentClass>.TPairEn...
 004A5886    mov         edx,dword ptr [edx+4];TDictionary<System.string,System.Classes.TPersistentClass>.FItems:...
 004A5889    mov         eax,dword ptr [edx+eax*4+8]
 004A588D    mov         dword ptr [esi+4],eax
 004A5890    pop         esi
 004A5891    pop         ebx
 004A5892    ret
*}
end;

//004A5894
{*procedure sub_004A5894(?:?);
begin
 004A5894    push        ebx
 004A5895    push        esi
 004A5896    mov         esi,edx
 004A5898    mov         ebx,eax
 004A589A    mov         edx,esi
 004A589C    mov         eax,ebx
 004A589E    call        004A5860
 004A58A3    pop         esi
 004A58A4    pop         ebx
 004A58A5    ret
end;*}

//004A58A8
procedure sub_004A58A8;
begin
{*
 004A58A8    call        TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator.MoveNext
 004A58AD    ret
*}
end;

//004A58B0
constructor sub_004A58B0(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);
begin
{*
 004A58B0    push        ebx
 004A58B1    push        esi
 004A58B2    push        edi
 004A58B3    test        dl,dl
>004A58B5    je          004A58BF
 004A58B7    add         esp,0FFFFFFF0
 004A58BA    call        @ClassCreate
 004A58BF    mov         esi,ecx
 004A58C1    mov         ebx,edx
 004A58C3    mov         edi,eax
 004A58C5    xor         edx,edx
 004A58C7    mov         eax,edi
 004A58C9    call        TObject.Create
 004A58CE    mov         dword ptr [edi+8],0FFFFFFFF
 004A58D5    mov         dword ptr [edi+4],esi;TDictionary<System.string,System.Classes.TPersistentClass>.TPairEn...
 004A58D8    mov         eax,edi
 004A58DA    test        bl,bl
>004A58DC    je          004A58ED
 004A58DE    call        @AfterConstruction
 004A58E3    pop         dword ptr fs:[0]
 004A58EA    add         esp,0C
 004A58ED    mov         eax,edi
 004A58EF    pop         edi
 004A58F0    pop         esi
 004A58F1    pop         ebx
 004A58F2    ret
*}
end;

//004A58F4
function TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator.MoveNext:Boolean;
begin
{*
 004A58F4    push        ebx
 004A58F5    push        esi
 004A58F6    mov         esi,eax
>004A58F8    jmp         004A5913
 004A58FA    inc         dword ptr [esi+8]
 004A58FD    mov         eax,dword ptr [esi+8]
 004A5900    lea         eax,[eax+eax*2]
 004A5903    mov         edx,dword ptr [esi+4]
 004A5906    mov         edx,dword ptr [edx+4]
 004A5909    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004A590D    je          004A5913
 004A590F    mov         bl,1
>004A5911    jmp         004A5926
 004A5913    mov         eax,dword ptr [esi+4]
 004A5916    mov         eax,dword ptr [eax+4]
 004A5919    call        0040ABA8
 004A591E    dec         eax
 004A591F    cmp         eax,dword ptr [esi+8]
>004A5922    jg          004A58FA
 004A5924    xor         ebx,ebx
 004A5926    mov         eax,ebx
 004A5928    pop         esi
 004A5929    pop         ebx
 004A592A    ret
*}
end;

//004A5974
procedure sub_004A5974(?:TList<System.Classes.TPersistentClass>);
begin
{*
 004A5974    add         eax,8
 004A5977    call        004357A0
 004A597C    ret
*}
end;

//004A5980
{*procedure sub_004A5980(?:?; ?:?);
begin
 004A5980    push        ebx
 004A5981    mov         edx,dword ptr [edx]
 004A5983    mov         ebx,dword ptr [eax]
 004A5985    call        dword ptr [ebx+8]
 004A5988    pop         ebx
 004A5989    ret
end;*}

//004A598C
{*procedure sub_004A598C(?:?; ?:?; ?:?);
begin
 004A598C    push        ebx
 004A598D    mov         edx,dword ptr [edx]
 004A598F    mov         ecx,dword ptr [ecx]
 004A5991    mov         eax,dword ptr [eax+24]
 004A5994    mov         ebx,dword ptr [eax]
 004A5996    call        dword ptr [ebx+0C]
 004A5999    pop         ebx
 004A599A    ret
end;*}

//004A599C
procedure sub_004A599C;
begin
{*
 004A599C    call        TList<System.Classes.TPersistentClass>.GetEnumerator
 004A59A1    ret
*}
end;

//004A59A4
{*procedure sub_004A59A4(?:?);
begin
 004A59A4    push        ebx
 004A59A5    cmp         word ptr [eax+2A],0
>004A59AA    je          004A59B9
 004A59AC    push        ecx
 004A59AD    mov         ebx,eax
 004A59AF    mov         ecx,edx
 004A59B1    mov         edx,eax
 004A59B3    mov         eax,dword ptr [ebx+2C]
 004A59B6    call        dword ptr [ebx+28]
 004A59B9    pop         ebx
 004A59BA    ret
end;*}

//004A59BC
constructor sub_004A59BC;
begin
{*
 004A59BC    push        ebp
 004A59BD    mov         ebp,esp
 004A59BF    push        0
 004A59C1    push        ebx
 004A59C2    push        esi
 004A59C3    test        dl,dl
>004A59C5    je          004A59CF
 004A59C7    add         esp,0FFFFFFF0
 004A59CA    call        @ClassCreate
 004A59CF    mov         ebx,edx
 004A59D1    mov         esi,eax
 004A59D3    xor         eax,eax
 004A59D5    push        ebp
 004A59D6    push        4A5A10
 004A59DB    push        dword ptr fs:[eax]
 004A59DE    mov         dword ptr fs:[eax],esp
 004A59E1    lea         edx,[ebp-4]
 004A59E4    mov         eax,[004ACD50];TComparer<System.Classes.TPersistentClass>
 004A59E9    call        TComparer<System.Classes.TPersistentClass>.Default
 004A59EE    mov         ecx,dword ptr [ebp-4]
 004A59F1    xor         edx,edx
 004A59F3    mov         eax,esi
 004A59F5    call        004A5A34
 004A59FA    xor         eax,eax
 004A59FC    pop         edx
 004A59FD    pop         ecx
 004A59FE    pop         ecx
 004A59FF    mov         dword ptr fs:[eax],edx
 004A5A02    push        4A5A17
 004A5A07    lea         eax,[ebp-4]
 004A5A0A    call        @IntfClear
 004A5A0F    ret
>004A5A10    jmp         @HandleFinally
>004A5A15    jmp         004A5A07
 004A5A17    mov         eax,esi
 004A5A19    test        bl,bl
>004A5A1B    je          004A5A2C
 004A5A1D    call        @AfterConstruction
 004A5A22    pop         dword ptr fs:[0]
 004A5A29    add         esp,0C
 004A5A2C    mov         eax,esi
 004A5A2E    pop         esi
 004A5A2F    pop         ebx
 004A5A30    pop         ecx
 004A5A31    pop         ebp
 004A5A32    ret
*}
end;

//004A5A34
constructor sub_004A5A34(AComparer:IComparer<System.Classes.TPersistentClass>);
begin
{*
 004A5A34    push        ebp
 004A5A35    mov         ebp,esp
 004A5A37    push        0
 004A5A39    push        ebx
 004A5A3A    push        esi
 004A5A3B    push        edi
 004A5A3C    test        dl,dl
>004A5A3E    je          004A5A48
 004A5A40    add         esp,0FFFFFFF0
 004A5A43    call        @ClassCreate
 004A5A48    mov         esi,ecx
 004A5A4A    mov         ebx,edx
 004A5A4C    mov         edi,eax
 004A5A4E    xor         eax,eax
 004A5A50    push        ebp
 004A5A51    push        4A5ABF
 004A5A56    push        dword ptr fs:[eax]
 004A5A59    mov         dword ptr fs:[eax],esp
 004A5A5C    xor         edx,edx
 004A5A5E    mov         eax,edi
 004A5A60    call        TObject.Create
 004A5A65    mov         dword ptr [edi+14],edi;TList<System.Classes.TPersistentClass>.FOnNotify:TCollectionNotif...
 004A5A68    mov         dword ptr [edi+10],4A5980;TList<System.Classes.TPersistentClass>.FOnNotify:TCollectionNo...
 004A5A6F    mov         dword ptr [edi+1C],edi
 004A5A72    mov         dword ptr [edi+18],4A598C;sub_004A598C
 004A5A79    mov         eax,[00485660];TList<System.Classes.TPersistentClass>.arrayofT
 004A5A7E    mov         dword ptr [edi+0C],eax;TList<System.Classes.TPersistentClass>.FComparer:IComparer<System...
 004A5A81    lea         eax,[edi+24]
 004A5A84    mov         edx,esi
 004A5A86    call        @IntfCopy
 004A5A8B    cmp         dword ptr [edi+24],0
>004A5A8F    jne         004A5AA9
 004A5A91    lea         edx,[ebp-4]
 004A5A94    mov         eax,[004ACD50];TComparer<System.Classes.TPersistentClass>
 004A5A99    call        TComparer<System.Classes.TPersistentClass>.Default
 004A5A9E    mov         edx,dword ptr [ebp-4]
 004A5AA1    lea         eax,[edi+24]
 004A5AA4    call        @IntfCopy
 004A5AA9    xor         eax,eax
 004A5AAB    pop         edx
 004A5AAC    pop         ecx
 004A5AAD    pop         ecx
 004A5AAE    mov         dword ptr fs:[eax],edx
 004A5AB1    push        4A5AC6
 004A5AB6    lea         eax,[ebp-4]
 004A5AB9    call        @IntfClear
 004A5ABE    ret
>004A5ABF    jmp         @HandleFinally
>004A5AC4    jmp         004A5AB6
 004A5AC6    mov         eax,edi
 004A5AC8    test        bl,bl
>004A5ACA    je          004A5ADB
 004A5ACC    call        @AfterConstruction
 004A5AD1    pop         dword ptr fs:[0]
 004A5AD8    add         esp,0C
 004A5ADB    mov         eax,edi
 004A5ADD    pop         edi
 004A5ADE    pop         esi
 004A5ADF    pop         ebx
 004A5AE0    pop         ecx
 004A5AE1    pop         ebp
 004A5AE2    ret
*}
end;

//004A5AE4
destructor TList<System.Classes.TPersistentClass>.Destroy();
begin
{*
 004A5AE4    push        ebx
 004A5AE5    push        esi
 004A5AE6    call        @BeforeDestruction
 004A5AEB    mov         ebx,edx
 004A5AED    mov         esi,eax
 004A5AEF    cmp         dword ptr [esi+8],0;TList<System.Classes.TPersistentClass>.FCount:Integer
>004A5AF3    jle         004A5AFE
 004A5AF5    xor         edx,edx
 004A5AF7    mov         eax,esi
 004A5AF9    call        004A5974
 004A5AFE    push        0
 004A5B00    lea         eax,[esi+20]
 004A5B03    mov         ecx,1
 004A5B08    mov         edx,dword ptr ds:[485660];TList<System.Classes.TPersistentClass>.arrayofT
 004A5B0E    call        @DynArraySetLength
 004A5B13    add         esp,4
 004A5B16    mov         dl,0FC
 004A5B18    and         dl,bl
 004A5B1A    mov         eax,esi
 004A5B1C    call        TEnumerable<System.Classes.TPersistentClass>.Destroy
 004A5B21    test        bl,bl
>004A5B23    jle         004A5B2C
 004A5B25    mov         eax,esi
 004A5B27    call        @ClassDestroy
 004A5B2C    pop         esi
 004A5B2D    pop         ebx
 004A5B2E    ret
*}
end;

//004A5B30
{*procedure TList<System.Classes.TPersistentClass>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A5B30    push        ebp
 004A5B31    mov         ebp,esp
 004A5B33    add         esp,0FFFFFFF0
 004A5B36    mov         dword ptr [ebp-8],ecx
 004A5B39    mov         dword ptr [ebp-4],edx
 004A5B3C    push        dword ptr [ebp+4]
 004A5B3F    mov         eax,dword ptr [ebp-8]
 004A5B42    mov         dword ptr [ebp-10],eax
 004A5B45    mov         byte ptr [ebp-0C],0
 004A5B49    lea         eax,[ebp-10]
 004A5B4C    push        eax
 004A5B4D    push        0
 004A5B4F    mov         ecx,dword ptr [ebp-4]
 004A5B52    mov         dl,1
 004A5B54    mov         eax,[004180BC];EListError
 004A5B59    call        Exception.CreateFmt;EListError.Create
>004A5B5E    jmp         @RaiseExcept
end;*}

//004A5B68
procedure TList<System.Classes.TPersistentClass>.Add(Value:TPersistentClass);
begin
{*
 004A5B68    push        ecx
 004A5B69    mov         dword ptr [esp],edx
 004A5B6C    mov         edx,esp
 004A5B6E    add         eax,8
 004A5B71    call        0043489C
 004A5B76    pop         edx
 004A5B77    ret
*}
end;

//004A5B78
procedure TList<System.Classes.TPersistentClass>.Pack;
begin
{*
 004A5B78    push        ebp
 004A5B79    mov         ebp,esp
 004A5B7B    push        0
 004A5B7D    push        0
 004A5B7F    push        ebx
 004A5B80    push        esi
 004A5B81    push        edi
 004A5B82    mov         esi,eax
 004A5B84    xor         eax,eax
 004A5B86    push        ebp
 004A5B87    push        4A5BF0
 004A5B8C    push        dword ptr fs:[eax]
 004A5B8F    mov         dword ptr fs:[eax],esp
 004A5B92    mov         dl,1
 004A5B94    mov         eax,[004ACFE4];@TList`1.Pack$224$ActRec<System.Classes.TPersistentClass>
 004A5B99    call        TObject.Create
 004A5B9E    mov         ebx,eax
 004A5BA0    lea         eax,[ebp-8]
 004A5BA3    mov         edx,ebx
 004A5BA5    test        edx,edx
>004A5BA7    je          004A5BAC
 004A5BA9    sub         edx,0FFFFFFF8
 004A5BAC    call        @IntfCopy
 004A5BB1    mov         edi,esi
 004A5BB3    mov         dword ptr [ebx+0C],edi
 004A5BB6    lea         eax,[ebp-4]
 004A5BB9    mov         edx,ebx
 004A5BBB    test        edx,edx
>004A5BBD    je          004A5BC2
 004A5BBF    sub         edx,0FFFFFFF0
 004A5BC2    call        @IntfCopy
 004A5BC7    lea         eax,[edi+8]
 004A5BCA    mov         edx,dword ptr [ebp-4]
 004A5BCD    call        0043576C
 004A5BD2    xor         eax,eax
 004A5BD4    pop         edx
 004A5BD5    pop         ecx
 004A5BD6    pop         ecx
 004A5BD7    mov         dword ptr fs:[eax],edx
 004A5BDA    push        4A5BF7
 004A5BDF    lea         eax,[ebp-8]
 004A5BE2    call        @IntfClear
 004A5BE7    lea         eax,[ebp-4]
 004A5BEA    call        @IntfClear
 004A5BEF    ret
>004A5BF0    jmp         @HandleFinally
>004A5BF5    jmp         004A5BDF
 004A5BF7    pop         edi
 004A5BF8    pop         esi
 004A5BF9    pop         ebx
 004A5BFA    pop         ecx
 004A5BFB    pop         ecx
 004A5BFC    pop         ebp
 004A5BFD    ret
*}
end;

//004A5C00
{*procedure TList<System.Classes.TPersistentClass>.ToArray(?:?);
begin
 004A5C00    push        ecx
 004A5C01    mov         dword ptr [esp],edx
 004A5C04    mov         edx,dword ptr [esp]
 004A5C07    add         eax,8
 004A5C0A    call        00435980
 004A5C0F    pop         edx
 004A5C10    ret
end;*}

//004A5C14
procedure TList<System.Classes.TPersistentClass>.GetEnumerator;
begin
{*
 004A5C14    mov         ecx,eax
 004A5C16    mov         dl,1
 004A5C18    mov         eax,[004857F0];TList<System.Classes.TPersistentClass>.TEnumerator
 004A5C1D    call        004A5C50
 004A5C22    ret
*}
end;

//004A5C24
{*function sub_004A5C24(?:?):?;
begin
 004A5C24    push        ebx
 004A5C25    push        esi
 004A5C26    mov         ebx,dword ptr [eax+4]
 004A5C29    mov         esi,dword ptr [eax+8]
 004A5C2C    lea         eax,[ebx+8]
 004A5C2F    mov         edx,esi
 004A5C31    call        00434534
 004A5C36    mov         eax,dword ptr [ebx+20]
 004A5C39    mov         eax,dword ptr [eax+esi*4]
 004A5C3C    pop         esi
 004A5C3D    pop         ebx
 004A5C3E    ret
end;*}

//004A5C40
procedure sub_004A5C40;
begin
{*
 004A5C40    call        004A5C24
 004A5C45    ret
*}
end;

//004A5C48
procedure sub_004A5C48;
begin
{*
 004A5C48    call        TList<System.Classes.TPersistentClass>.TEnumerator.MoveNext
 004A5C4D    ret
*}
end;

//004A5C50
constructor sub_004A5C50(AList:TList<System.Classes.TPersistentClass>);
begin
{*
 004A5C50    push        ebx
 004A5C51    push        esi
 004A5C52    push        edi
 004A5C53    test        dl,dl
>004A5C55    je          004A5C5F
 004A5C57    add         esp,0FFFFFFF0
 004A5C5A    call        @ClassCreate
 004A5C5F    mov         esi,ecx
 004A5C61    mov         ebx,edx
 004A5C63    mov         edi,eax
 004A5C65    xor         edx,edx
 004A5C67    mov         eax,edi
 004A5C69    call        TObject.Create
 004A5C6E    mov         dword ptr [edi+4],esi;TList<System.Classes.TPersistentClass>.TEnumerator.FList:TList<Sys...
 004A5C71    mov         dword ptr [edi+8],0FFFFFFFF
 004A5C78    mov         eax,edi
 004A5C7A    test        bl,bl
>004A5C7C    je          004A5C8D
 004A5C7E    call        @AfterConstruction
 004A5C83    pop         dword ptr fs:[0]
 004A5C8A    add         esp,0C
 004A5C8D    mov         eax,edi
 004A5C8F    pop         edi
 004A5C90    pop         esi
 004A5C91    pop         ebx
 004A5C92    ret
*}
end;

//004A5C94
function TList<System.Classes.TPersistentClass>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A5C94    mov         edx,dword ptr [eax+4]
 004A5C97    mov         edx,dword ptr [edx+8]
 004A5C9A    cmp         edx,dword ptr [eax+8]
>004A5C9D    jg          004A5CA2
 004A5C9F    xor         eax,eax
 004A5CA1    ret
 004A5CA2    inc         dword ptr [eax+8]
 004A5CA5    mov         edx,dword ptr [eax+4]
 004A5CA8    mov         edx,dword ptr [edx+8]
 004A5CAB    cmp         edx,dword ptr [eax+8]
 004A5CAE    setg        al
 004A5CB1    ret
*}
end;

//004A5CB4
destructor TEnumerable<System.Classes.TRegGroup>.Destroy();
begin
{*
 004A5CB4    push        ebx
 004A5CB5    push        esi
 004A5CB6    call        @BeforeDestruction
 004A5CBB    mov         ebx,edx
 004A5CBD    mov         esi,eax
 004A5CBF    mov         dl,0FC
 004A5CC1    and         dl,bl
 004A5CC3    mov         eax,esi
 004A5CC5    call        TObject.Destroy
 004A5CCA    test        bl,bl
>004A5CCC    jle         004A5CD5
 004A5CCE    mov         eax,esi
 004A5CD0    call        @ClassDestroy
 004A5CD5    pop         esi
 004A5CD6    pop         ebx
 004A5CD7    ret
*}
end;

//004A5CD8
function TEnumerable<System.Classes.TRegGroup>.GetEnumerator:TEnumerator<System.Classes.TRegGroup>;
begin
{*
 004A5CD8    mov         edx,dword ptr [eax]
 004A5CDA    call        dword ptr [edx]
 004A5CDC    ret
*}
end;

//004A5CE0
{*procedure TEnumerable<System.Classes.TRegGroup>.ToArray(?:?);
begin
 004A5CE0    push        ebp
 004A5CE1    mov         ebp,esp
 004A5CE3    add         esp,0FFFFFFF4
 004A5CE6    push        ebx
 004A5CE7    mov         dword ptr [ebp-4],edx
 004A5CEA    mov         ebx,eax
 004A5CEC    mov         dl,1
 004A5CEE    mov         eax,[00486D78];TList<System.Classes.TRegGroup>
 004A5CF3    call        004A5E2C
 004A5CF8    mov         dword ptr [ebp-8],eax
 004A5CFB    xor         eax,eax
 004A5CFD    push        ebp
 004A5CFE    push        4A5D88
 004A5D03    push        dword ptr fs:[eax]
 004A5D06    mov         dword ptr fs:[eax],esp
 004A5D09    mov         eax,ebx
 004A5D0B    call        TEnumerable<System.Classes.TRegGroup>.GetEnumerator
 004A5D10    mov         dword ptr [ebp-0C],eax
 004A5D13    xor         eax,eax
 004A5D15    push        ebp
 004A5D16    push        4A5D60
 004A5D1B    push        dword ptr fs:[eax]
 004A5D1E    mov         dword ptr fs:[eax],esp
>004A5D21    jmp         004A5D36
 004A5D23    mov         eax,dword ptr [ebp-0C]
 004A5D26    mov         edx,dword ptr [eax]
 004A5D28    call        dword ptr [edx]
 004A5D2A    mov         ebx,eax
 004A5D2C    mov         edx,ebx
 004A5D2E    mov         eax,dword ptr [ebp-8]
 004A5D31    call        TList<System.Classes.TRegGroup>.Add
 004A5D36    mov         eax,dword ptr [ebp-0C]
 004A5D39    call        TEnumerator<System.Classes.TRegGroup>.MoveNext
 004A5D3E    test        al,al
>004A5D40    jne         004A5D23
 004A5D42    xor         eax,eax
 004A5D44    pop         edx
 004A5D45    pop         ecx
 004A5D46    pop         ecx
 004A5D47    mov         dword ptr fs:[eax],edx
 004A5D4A    push        4A5D67
 004A5D4F    cmp         dword ptr [ebp-0C],0
>004A5D53    je          004A5D5F
 004A5D55    mov         dl,1
 004A5D57    mov         eax,dword ptr [ebp-0C]
 004A5D5A    mov         ecx,dword ptr [eax]
 004A5D5C    call        dword ptr [ecx-4]
 004A5D5F    ret
>004A5D60    jmp         @HandleFinally
>004A5D65    jmp         004A5D4F
 004A5D67    mov         edx,dword ptr [ebp-4]
 004A5D6A    mov         eax,dword ptr [ebp-8]
 004A5D6D    call        TList<System.Classes.TRegGroup>.ToArray
 004A5D72    xor         eax,eax
 004A5D74    pop         edx
 004A5D75    pop         ecx
 004A5D76    pop         ecx
 004A5D77    mov         dword ptr fs:[eax],edx
 004A5D7A    push        4A5D8F
 004A5D7F    mov         eax,dword ptr [ebp-8]
 004A5D82    call        TObject.Free
 004A5D87    ret
>004A5D88    jmp         @HandleFinally
>004A5D8D    jmp         004A5D7F
 004A5D8F    pop         ebx
 004A5D90    mov         esp,ebp
 004A5D92    pop         ebp
 004A5D93    ret
end;*}

//004A5D94
function TEnumerator<System.Classes.TRegGroup>.MoveNext:Boolean;
begin
{*
 004A5D94    mov         edx,dword ptr [eax]
 004A5D96    call        dword ptr [edx+4]
 004A5D99    ret
*}
end;

//004A5DE4
procedure sub_004A5DE4(?:TList<System.Classes.TRegGroup>);
begin
{*
 004A5DE4    add         eax,8
 004A5DE7    call        004357A0
 004A5DEC    ret
*}
end;

//004A5DF0
{*procedure sub_004A5DF0(?:?; ?:?);
begin
 004A5DF0    push        ebx
 004A5DF1    mov         edx,dword ptr [edx]
 004A5DF3    mov         ebx,dword ptr [eax]
 004A5DF5    call        dword ptr [ebx+8]
 004A5DF8    pop         ebx
 004A5DF9    ret
end;*}

//004A5DFC
{*procedure sub_004A5DFC(?:?; ?:?; ?:?);
begin
 004A5DFC    push        ebx
 004A5DFD    mov         edx,dword ptr [edx]
 004A5DFF    mov         ecx,dword ptr [ecx]
 004A5E01    mov         eax,dword ptr [eax+24]
 004A5E04    mov         ebx,dword ptr [eax]
 004A5E06    call        dword ptr [ebx+0C]
 004A5E09    pop         ebx
 004A5E0A    ret
end;*}

//004A5E0C
procedure sub_004A5E0C;
begin
{*
 004A5E0C    call        TList<System.Classes.TRegGroup>.GetEnumerator
 004A5E11    ret
*}
end;

//004A5E14
{*procedure sub_004A5E14(?:?);
begin
 004A5E14    push        ebx
 004A5E15    cmp         word ptr [eax+2A],0
>004A5E1A    je          004A5E29
 004A5E1C    push        ecx
 004A5E1D    mov         ebx,eax
 004A5E1F    mov         ecx,edx
 004A5E21    mov         edx,eax
 004A5E23    mov         eax,dword ptr [ebx+2C]
 004A5E26    call        dword ptr [ebx+28]
 004A5E29    pop         ebx
 004A5E2A    ret
end;*}

//004A5E2C
constructor sub_004A5E2C;
begin
{*
 004A5E2C    push        ebp
 004A5E2D    mov         ebp,esp
 004A5E2F    push        0
 004A5E31    push        ebx
 004A5E32    push        esi
 004A5E33    test        dl,dl
>004A5E35    je          004A5E3F
 004A5E37    add         esp,0FFFFFFF0
 004A5E3A    call        @ClassCreate
 004A5E3F    mov         ebx,edx
 004A5E41    mov         esi,eax
 004A5E43    xor         eax,eax
 004A5E45    push        ebp
 004A5E46    push        4A5E80
 004A5E4B    push        dword ptr fs:[eax]
 004A5E4E    mov         dword ptr fs:[eax],esp
 004A5E51    lea         edx,[ebp-4]
 004A5E54    mov         eax,[004AD1C4];TComparer<System.Classes.TRegGroup>
 004A5E59    call        TComparer<System.Classes.TRegGroup>.Default
 004A5E5E    mov         ecx,dword ptr [ebp-4]
 004A5E61    xor         edx,edx
 004A5E63    mov         eax,esi
 004A5E65    call        004A5EA4
 004A5E6A    xor         eax,eax
 004A5E6C    pop         edx
 004A5E6D    pop         ecx
 004A5E6E    pop         ecx
 004A5E6F    mov         dword ptr fs:[eax],edx
 004A5E72    push        4A5E87
 004A5E77    lea         eax,[ebp-4]
 004A5E7A    call        @IntfClear
 004A5E7F    ret
>004A5E80    jmp         @HandleFinally
>004A5E85    jmp         004A5E77
 004A5E87    mov         eax,esi
 004A5E89    test        bl,bl
>004A5E8B    je          004A5E9C
 004A5E8D    call        @AfterConstruction
 004A5E92    pop         dword ptr fs:[0]
 004A5E99    add         esp,0C
 004A5E9C    mov         eax,esi
 004A5E9E    pop         esi
 004A5E9F    pop         ebx
 004A5EA0    pop         ecx
 004A5EA1    pop         ebp
 004A5EA2    ret
*}
end;

//004A5EA4
constructor sub_004A5EA4(AComparer:IComparer<System.Classes.TRegGroup>);
begin
{*
 004A5EA4    push        ebp
 004A5EA5    mov         ebp,esp
 004A5EA7    push        0
 004A5EA9    push        ebx
 004A5EAA    push        esi
 004A5EAB    push        edi
 004A5EAC    test        dl,dl
>004A5EAE    je          004A5EB8
 004A5EB0    add         esp,0FFFFFFF0
 004A5EB3    call        @ClassCreate
 004A5EB8    mov         esi,ecx
 004A5EBA    mov         ebx,edx
 004A5EBC    mov         edi,eax
 004A5EBE    xor         eax,eax
 004A5EC0    push        ebp
 004A5EC1    push        4A5F2F
 004A5EC6    push        dword ptr fs:[eax]
 004A5EC9    mov         dword ptr fs:[eax],esp
 004A5ECC    xor         edx,edx
 004A5ECE    mov         eax,edi
 004A5ED0    call        TObject.Create
 004A5ED5    mov         dword ptr [edi+14],edi;TList<System.Classes.TRegGroup>.FOnNotify:TCollectionNotifyEvent<...
 004A5ED8    mov         dword ptr [edi+10],4A5DF0;TList<System.Classes.TRegGroup>.FOnNotify:TCollectionNotifyEve...
 004A5EDF    mov         dword ptr [edi+1C],edi
 004A5EE2    mov         dword ptr [edi+18],4A5DFC;sub_004A5DFC
 004A5EE9    mov         eax,[00486990];TList<System.Classes.TRegGroup>.arrayofT
 004A5EEE    mov         dword ptr [edi+0C],eax;TList<System.Classes.TRegGroup>.FComparer:IComparer<System.Classe...
 004A5EF1    lea         eax,[edi+24]
 004A5EF4    mov         edx,esi
 004A5EF6    call        @IntfCopy
 004A5EFB    cmp         dword ptr [edi+24],0
>004A5EFF    jne         004A5F19
 004A5F01    lea         edx,[ebp-4]
 004A5F04    mov         eax,[004AD1C4];TComparer<System.Classes.TRegGroup>
 004A5F09    call        TComparer<System.Classes.TRegGroup>.Default
 004A5F0E    mov         edx,dword ptr [ebp-4]
 004A5F11    lea         eax,[edi+24]
 004A5F14    call        @IntfCopy
 004A5F19    xor         eax,eax
 004A5F1B    pop         edx
 004A5F1C    pop         ecx
 004A5F1D    pop         ecx
 004A5F1E    mov         dword ptr fs:[eax],edx
 004A5F21    push        4A5F36
 004A5F26    lea         eax,[ebp-4]
 004A5F29    call        @IntfClear
 004A5F2E    ret
>004A5F2F    jmp         @HandleFinally
>004A5F34    jmp         004A5F26
 004A5F36    mov         eax,edi
 004A5F38    test        bl,bl
>004A5F3A    je          004A5F4B
 004A5F3C    call        @AfterConstruction
 004A5F41    pop         dword ptr fs:[0]
 004A5F48    add         esp,0C
 004A5F4B    mov         eax,edi
 004A5F4D    pop         edi
 004A5F4E    pop         esi
 004A5F4F    pop         ebx
 004A5F50    pop         ecx
 004A5F51    pop         ebp
 004A5F52    ret
*}
end;

//004A5F54
destructor TList<System.Classes.TRegGroup>.Destroy();
begin
{*
 004A5F54    push        ebx
 004A5F55    push        esi
 004A5F56    call        @BeforeDestruction
 004A5F5B    mov         ebx,edx
 004A5F5D    mov         esi,eax
 004A5F5F    cmp         dword ptr [esi+8],0;TList<System.Classes.TRegGroup>.FCount:Integer
>004A5F63    jle         004A5F6E
 004A5F65    xor         edx,edx
 004A5F67    mov         eax,esi
 004A5F69    call        004A5DE4
 004A5F6E    push        0
 004A5F70    lea         eax,[esi+20]
 004A5F73    mov         ecx,1
 004A5F78    mov         edx,dword ptr ds:[486990];TList<System.Classes.TRegGroup>.arrayofT
 004A5F7E    call        @DynArraySetLength
 004A5F83    add         esp,4
 004A5F86    mov         dl,0FC
 004A5F88    and         dl,bl
 004A5F8A    mov         eax,esi
 004A5F8C    call        TEnumerable<System.Classes.TRegGroup>.Destroy
 004A5F91    test        bl,bl
>004A5F93    jle         004A5F9C
 004A5F95    mov         eax,esi
 004A5F97    call        @ClassDestroy
 004A5F9C    pop         esi
 004A5F9D    pop         ebx
 004A5F9E    ret
*}
end;

//004A5FA0
{*procedure TList<System.Classes.TRegGroup>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A5FA0    push        ebp
 004A5FA1    mov         ebp,esp
 004A5FA3    add         esp,0FFFFFFF0
 004A5FA6    mov         dword ptr [ebp-8],ecx
 004A5FA9    mov         dword ptr [ebp-4],edx
 004A5FAC    push        dword ptr [ebp+4]
 004A5FAF    mov         eax,dword ptr [ebp-8]
 004A5FB2    mov         dword ptr [ebp-10],eax
 004A5FB5    mov         byte ptr [ebp-0C],0
 004A5FB9    lea         eax,[ebp-10]
 004A5FBC    push        eax
 004A5FBD    push        0
 004A5FBF    mov         ecx,dword ptr [ebp-4]
 004A5FC2    mov         dl,1
 004A5FC4    mov         eax,[004180BC];EListError
 004A5FC9    call        Exception.CreateFmt;EListError.Create
>004A5FCE    jmp         @RaiseExcept
end;*}

//004A5FD8
procedure TList<System.Classes.TRegGroup>.Add(Value:TRegGroup);
begin
{*
 004A5FD8    push        ecx
 004A5FD9    mov         dword ptr [esp],edx
 004A5FDC    mov         edx,esp
 004A5FDE    add         eax,8
 004A5FE1    call        0043489C
 004A5FE6    pop         edx
 004A5FE7    ret
*}
end;

//004A5FE8
{*procedure TList<System.Classes.TRegGroup>.ToArray(?:?);
begin
 004A5FE8    push        ecx
 004A5FE9    mov         dword ptr [esp],edx
 004A5FEC    mov         edx,dword ptr [esp]
 004A5FEF    add         eax,8
 004A5FF2    call        00435980
 004A5FF7    pop         edx
 004A5FF8    ret
end;*}

//004A5FFC
procedure TList<System.Classes.TRegGroup>.GetEnumerator;
begin
{*
 004A5FFC    mov         ecx,eax
 004A5FFE    mov         dl,1
 004A6000    mov         eax,[00486BC4];TList<System.Classes.TRegGroup>.TEnumerator
 004A6005    call        004A6038
 004A600A    ret
*}
end;

//004A600C
{*function sub_004A600C(?:?):?;
begin
 004A600C    push        ebx
 004A600D    push        esi
 004A600E    mov         ebx,dword ptr [eax+4]
 004A6011    mov         esi,dword ptr [eax+8]
 004A6014    lea         eax,[ebx+8]
 004A6017    mov         edx,esi
 004A6019    call        00434534
 004A601E    mov         eax,dword ptr [ebx+20]
 004A6021    mov         eax,dword ptr [eax+esi*4]
 004A6024    pop         esi
 004A6025    pop         ebx
 004A6026    ret
end;*}

//004A6028
procedure sub_004A6028;
begin
{*
 004A6028    call        004A600C
 004A602D    ret
*}
end;

//004A6030
procedure sub_004A6030;
begin
{*
 004A6030    call        TList<System.Classes.TRegGroup>.TEnumerator.MoveNext
 004A6035    ret
*}
end;

//004A6038
constructor sub_004A6038(AList:TList<System.Classes.TRegGroup>);
begin
{*
 004A6038    push        ebx
 004A6039    push        esi
 004A603A    push        edi
 004A603B    test        dl,dl
>004A603D    je          004A6047
 004A603F    add         esp,0FFFFFFF0
 004A6042    call        @ClassCreate
 004A6047    mov         esi,ecx
 004A6049    mov         ebx,edx
 004A604B    mov         edi,eax
 004A604D    xor         edx,edx
 004A604F    mov         eax,edi
 004A6051    call        TObject.Create
 004A6056    mov         dword ptr [edi+4],esi;TList<System.Classes.TRegGroup>.TEnumerator.FList:TList<System.Cla...
 004A6059    mov         dword ptr [edi+8],0FFFFFFFF
 004A6060    mov         eax,edi
 004A6062    test        bl,bl
>004A6064    je          004A6075
 004A6066    call        @AfterConstruction
 004A606B    pop         dword ptr fs:[0]
 004A6072    add         esp,0C
 004A6075    mov         eax,edi
 004A6077    pop         edi
 004A6078    pop         esi
 004A6079    pop         ebx
 004A607A    ret
*}
end;

//004A607C
function TList<System.Classes.TRegGroup>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A607C    mov         edx,dword ptr [eax+4]
 004A607F    mov         edx,dword ptr [edx+8]
 004A6082    cmp         edx,dword ptr [eax+8]
>004A6085    jg          004A608A
 004A6087    xor         eax,eax
 004A6089    ret
 004A608A    inc         dword ptr [eax+8]
 004A608D    mov         edx,dword ptr [eax+4]
 004A6090    mov         edx,dword ptr [edx+8]
 004A6093    cmp         edx,dword ptr [eax+8]
 004A6096    setg        al
 004A6099    ret
*}
end;

//004A609C
{*procedure sub_004A609C(?:?; ?:?);
begin
 004A609C    push        ebx
 004A609D    push        esi
 004A609E    push        edi
 004A609F    mov         ebx,ecx
 004A60A1    mov         edi,edx
 004A60A3    mov         esi,eax
 004A60A5    mov         ecx,ebx
 004A60A7    mov         edx,edi
 004A60A9    mov         eax,esi
 004A60AB    call        004A5E14
 004A60B0    cmp         byte ptr [esi+30],0
>004A60B4    je          004A60C2
 004A60B6    cmp         bl,1
>004A60B9    jne         004A60C2
 004A60BB    mov         eax,edi
 004A60BD    call        TObject.Free
 004A60C2    pop         edi
 004A60C3    pop         esi
 004A60C4    pop         ebx
 004A60C5    ret
end;*}

//004A60C8
constructor sub_004A60C8(AOwnsObjects:Boolean);
begin
{*
 004A60C8    push        ebp
 004A60C9    mov         ebp,esp
 004A60CB    push        ecx
 004A60CC    push        ebx
 004A60CD    push        esi
 004A60CE    test        dl,dl
>004A60D0    je          004A60DA
 004A60D2    add         esp,0FFFFFFF0
 004A60D5    call        @ClassCreate
 004A60DA    mov         ebx,ecx
 004A60DC    mov         byte ptr [ebp-1],dl
 004A60DF    mov         esi,eax
 004A60E1    xor         edx,edx
 004A60E3    mov         eax,esi
 004A60E5    call        004A5E2C
 004A60EA    mov         byte ptr [esi+30],bl
 004A60ED    mov         eax,esi
 004A60EF    cmp         byte ptr [ebp-1],0
>004A60F3    je          004A6104
 004A60F5    call        @AfterConstruction
 004A60FA    pop         dword ptr fs:[0]
 004A6101    add         esp,0C
 004A6104    mov         eax,esi
 004A6106    pop         esi
 004A6107    pop         ebx
 004A6108    pop         ecx
 004A6109    pop         ebp
 004A610A    ret
*}
end;

//004A610C
constructor sub_004A610C;
begin
{*
 004A610C    push        ebx
 004A610D    push        esi
 004A610E    test        dl,dl
>004A6110    je          004A611A
 004A6112    add         esp,0FFFFFFF0
 004A6115    call        @ClassCreate
 004A611A    mov         ebx,edx
 004A611C    mov         esi,eax
 004A611E    xor         edx,edx
 004A6120    mov         eax,esi
 004A6122    call        TObject.Create
 004A6127    mov         dl,1
 004A6129    mov         eax,[00401728];TObject
 004A612E    call        TObject.Create;TObject.Create
 004A6133    mov         dword ptr [esi+8],eax;TThreadList<System.Classes.TIntConst>.FLock:TObject
 004A6136    mov         dl,1
 004A6138    mov         eax,[00489488];TList<System.Classes.TIntConst>
 004A613D    call        004A64B4
 004A6142    mov         dword ptr [esi+4],eax;TThreadList<System.Classes.TIntConst>.FList:TList<System.Classes.T...
 004A6145    mov         byte ptr [esi+0C],0
 004A6149    mov         eax,esi
 004A614B    test        bl,bl
>004A614D    je          004A615E
 004A614F    call        @AfterConstruction
 004A6154    pop         dword ptr fs:[0]
 004A615B    add         esp,0C
 004A615E    mov         eax,esi
 004A6160    pop         esi
 004A6161    pop         ebx
 004A6162    ret
*}
end;

//004A6164
destructor TThreadList<System.Classes.TIntConst>.Destroy();
begin
{*
 004A6164    push        ebp
 004A6165    mov         ebp,esp
 004A6167    add         esp,0FFFFFFF8
 004A616A    call        @BeforeDestruction
 004A616F    mov         byte ptr [ebp-5],dl
 004A6172    mov         dword ptr [ebp-4],eax
 004A6175    mov         eax,dword ptr [ebp-4]
 004A6178    call        TThreadList<System.Classes.TIntConst>.LockList
 004A617D    xor         eax,eax
 004A617F    push        ebp
 004A6180    push        4A61C6
 004A6185    push        dword ptr fs:[eax]
 004A6188    mov         dword ptr fs:[eax],esp
 004A618B    mov         eax,dword ptr [ebp-4]
 004A618E    mov         eax,dword ptr [eax+4];TThreadList<System.Classes.TIntConst>.FList:TList<System.Classes.T...
 004A6191    call        TObject.Free
 004A6196    movzx       edx,byte ptr [ebp-5]
 004A619A    and         dl,0FC
 004A619D    mov         eax,dword ptr [ebp-4]
 004A61A0    call        TObject.Destroy
 004A61A5    xor         eax,eax
 004A61A7    pop         edx
 004A61A8    pop         ecx
 004A61A9    pop         ecx
 004A61AA    mov         dword ptr fs:[eax],edx
 004A61AD    push        4A61CD
 004A61B2    mov         eax,dword ptr [ebp-4]
 004A61B5    call        TThreadList<System.Classes.TIntConst>.UnlockList
 004A61BA    mov         eax,dword ptr [ebp-4]
 004A61BD    mov         eax,dword ptr [eax+8];TThreadList<System.Classes.TIntConst>.FLock:TObject
 004A61C0    call        TObject.Free
 004A61C5    ret
>004A61C6    jmp         @HandleFinally
>004A61CB    jmp         004A61B2
 004A61CD    cmp         byte ptr [ebp-5],0
>004A61D1    jle         004A61DB
 004A61D3    mov         eax,dword ptr [ebp-4]
 004A61D6    call        @ClassDestroy
 004A61DB    pop         ecx
 004A61DC    pop         ecx
 004A61DD    pop         ebp
 004A61DE    ret
*}
end;

//004A61E0
procedure TThreadList<System.Classes.TIntConst>.Add(Item:TIntConst);
begin
{*
 004A61E0    push        ebp
 004A61E1    mov         ebp,esp
 004A61E3    add         esp,0FFFFFFE4
 004A61E6    push        ebx
 004A61E7    xor         ecx,ecx
 004A61E9    mov         dword ptr [ebp-1C],ecx
 004A61EC    mov         ebx,edx
 004A61EE    mov         dword ptr [ebp-4],eax
 004A61F1    xor         eax,eax
 004A61F3    push        ebp
 004A61F4    push        4A62D1
 004A61F9    push        dword ptr fs:[eax]
 004A61FC    mov         dword ptr fs:[eax],esp
 004A61FF    mov         eax,dword ptr [ebp-4]
 004A6202    call        TThreadList<System.Classes.TIntConst>.LockList
 004A6207    xor         edx,edx
 004A6209    push        ebp
 004A620A    push        4A62B4
 004A620F    push        dword ptr fs:[edx]
 004A6212    mov         dword ptr fs:[edx],esp
 004A6215    mov         eax,dword ptr [ebp-4]
 004A6218    cmp         byte ptr [eax+0C],1
>004A621C    jne         004A6222
 004A621E    mov         al,1
>004A6220    jmp         004A6240
 004A6222    mov         eax,dword ptr [ebp-4]
 004A6225    mov         eax,dword ptr [eax+4]
 004A6228    mov         dword ptr [ebp-8],ebx
 004A622B    add         eax,8
 004A622E    mov         dword ptr [ebp-0C],eax
 004A6231    lea         edx,[ebp-8]
 004A6234    mov         eax,dword ptr [ebp-0C]
 004A6237    call        00434714
 004A623C    inc         eax
 004A623D    sete        al
 004A6240    test        al,al
>004A6242    je          004A625A
 004A6244    mov         eax,dword ptr [ebp-4]
 004A6247    mov         eax,dword ptr [eax+4]
 004A624A    mov         dword ptr [ebp-10],ebx
 004A624D    lea         edx,[ebp-10]
 004A6250    add         eax,8
 004A6253    call        0043489C
>004A6258    jmp         004A629E
 004A625A    mov         eax,dword ptr [ebp-4]
 004A625D    cmp         byte ptr [eax+0C],2
>004A6261    jne         004A629E
 004A6263    mov         eax,dword ptr [ebp-4]
 004A6266    mov         eax,dword ptr [eax+4]
 004A6269    mov         edx,ebx
 004A626B    call        TList<System.Actions.TContainedAction>.ItemValue
 004A6270    mov         dword ptr [ebp-18],eax
 004A6273    mov         byte ptr [ebp-14],0
 004A6277    lea         eax,[ebp-18]
 004A627A    push        eax
 004A627B    push        0
 004A627D    lea         edx,[ebp-1C]
 004A6280    mov         eax,[007C469C];^SResString120:TResStringRec
 004A6285    call        LoadResString
 004A628A    mov         ecx,dword ptr [ebp-1C]
 004A628D    mov         dl,1
 004A628F    mov         eax,[004180BC];EListError
 004A6294    call        Exception.CreateFmt
 004A6299    call        @RaiseExcept
 004A629E    xor         eax,eax
 004A62A0    pop         edx
 004A62A1    pop         ecx
 004A62A2    pop         ecx
 004A62A3    mov         dword ptr fs:[eax],edx
 004A62A6    push        4A62BB
 004A62AB    mov         eax,dword ptr [ebp-4]
 004A62AE    call        TThreadList<System.Classes.TIntConst>.UnlockList
 004A62B3    ret
>004A62B4    jmp         @HandleFinally
>004A62B9    jmp         004A62AB
 004A62BB    xor         eax,eax
 004A62BD    pop         edx
 004A62BE    pop         ecx
 004A62BF    pop         ecx
 004A62C0    mov         dword ptr fs:[eax],edx
 004A62C3    push        4A62D8
 004A62C8    lea         eax,[ebp-1C]
 004A62CB    call        @UStrClr
 004A62D0    ret
>004A62D1    jmp         @HandleFinally
>004A62D6    jmp         004A62C8
 004A62D8    pop         ebx
 004A62D9    mov         esp,ebp
 004A62DB    pop         ebp
 004A62DC    ret
*}
end;

//004A62E0
function TThreadList<System.Classes.TIntConst>.LockList:TList<System.Classes.TIntConst>;
begin
{*
 004A62E0    push        ebx
 004A62E1    push        ecx
 004A62E2    mov         ebx,eax
 004A62E4    mov         eax,dword ptr [ebx+8]
 004A62E7    mov         dword ptr [esp],eax
 004A62EA    call        TMonitor.CheckMonitorSupport
 004A62EF    mov         eax,dword ptr [esp]
 004A62F2    call        TMonitor.GetMonitor
 004A62F7    or          edx,0FFFFFFFF
 004A62FA    call        TMonitor.Enter
 004A62FF    mov         eax,dword ptr [ebx+4]
 004A6302    pop         edx
 004A6303    pop         ebx
 004A6304    ret
*}
end;

//004A6308
procedure TThreadList<System.Classes.TIntConst>.UnlockList;
begin
{*
 004A6308    mov         eax,dword ptr [eax+8]
 004A630B    call        TMonitor.Exit
 004A6310    ret
*}
end;

//004A6314
destructor TEnumerable<System.Classes.TIntConst>.Destroy();
begin
{*
 004A6314    push        ebx
 004A6315    push        esi
 004A6316    call        @BeforeDestruction
 004A631B    mov         ebx,edx
 004A631D    mov         esi,eax
 004A631F    mov         dl,0FC
 004A6321    and         dl,bl
 004A6323    mov         eax,esi
 004A6325    call        TObject.Destroy
 004A632A    test        bl,bl
>004A632C    jle         004A6335
 004A632E    mov         eax,esi
 004A6330    call        @ClassDestroy
 004A6335    pop         esi
 004A6336    pop         ebx
 004A6337    ret
*}
end;

//004A6338
function TEnumerable<System.Classes.TIntConst>.GetEnumerator:TEnumerator<System.Classes.TIntConst>;
begin
{*
 004A6338    mov         edx,dword ptr [eax]
 004A633A    call        dword ptr [edx]
 004A633C    ret
*}
end;

//004A6340
{*procedure TEnumerable<System.Classes.TIntConst>.ToArray(?:?);
begin
 004A6340    push        ebp
 004A6341    mov         ebp,esp
 004A6343    add         esp,0FFFFFFF4
 004A6346    push        ebx
 004A6347    mov         dword ptr [ebp-4],edx
 004A634A    mov         ebx,eax
 004A634C    mov         dl,1
 004A634E    mov         eax,[00489488];TList<System.Classes.TIntConst>
 004A6353    call        004A64B4
 004A6358    mov         dword ptr [ebp-8],eax
 004A635B    xor         eax,eax
 004A635D    push        ebp
 004A635E    push        4A63E8
 004A6363    push        dword ptr fs:[eax]
 004A6366    mov         dword ptr fs:[eax],esp
 004A6369    mov         eax,ebx
 004A636B    call        TEnumerable<System.Classes.TIntConst>.GetEnumerator
 004A6370    mov         dword ptr [ebp-0C],eax
 004A6373    xor         eax,eax
 004A6375    push        ebp
 004A6376    push        4A63C0
 004A637B    push        dword ptr fs:[eax]
 004A637E    mov         dword ptr fs:[eax],esp
>004A6381    jmp         004A6396
 004A6383    mov         eax,dword ptr [ebp-0C]
 004A6386    mov         edx,dword ptr [eax]
 004A6388    call        dword ptr [edx]
 004A638A    mov         ebx,eax
 004A638C    mov         edx,ebx
 004A638E    mov         eax,dword ptr [ebp-8]
 004A6391    call        TList<System.Classes.TIntConst>.Add
 004A6396    mov         eax,dword ptr [ebp-0C]
 004A6399    call        TEnumerator<System.Classes.TIntConst>.MoveNext
 004A639E    test        al,al
>004A63A0    jne         004A6383
 004A63A2    xor         eax,eax
 004A63A4    pop         edx
 004A63A5    pop         ecx
 004A63A6    pop         ecx
 004A63A7    mov         dword ptr fs:[eax],edx
 004A63AA    push        4A63C7
 004A63AF    cmp         dword ptr [ebp-0C],0
>004A63B3    je          004A63BF
 004A63B5    mov         dl,1
 004A63B7    mov         eax,dword ptr [ebp-0C]
 004A63BA    mov         ecx,dword ptr [eax]
 004A63BC    call        dword ptr [ecx-4]
 004A63BF    ret
>004A63C0    jmp         @HandleFinally
>004A63C5    jmp         004A63AF
 004A63C7    mov         edx,dword ptr [ebp-4]
 004A63CA    mov         eax,dword ptr [ebp-8]
 004A63CD    call        TList<System.Classes.TIntConst>.ToArray
 004A63D2    xor         eax,eax
 004A63D4    pop         edx
 004A63D5    pop         ecx
 004A63D6    pop         ecx
 004A63D7    mov         dword ptr fs:[eax],edx
 004A63DA    push        4A63EF
 004A63DF    mov         eax,dword ptr [ebp-8]
 004A63E2    call        TObject.Free
 004A63E7    ret
>004A63E8    jmp         @HandleFinally
>004A63ED    jmp         004A63DF
 004A63EF    pop         ebx
 004A63F0    mov         esp,ebp
 004A63F2    pop         ebp
 004A63F3    ret
end;*}

//004A63F4
function TEnumerator<System.Classes.TIntConst>.MoveNext:Boolean;
begin
{*
 004A63F4    mov         edx,dword ptr [eax]
 004A63F6    call        dword ptr [edx+4]
 004A63F9    ret
*}
end;

//004A6444
procedure sub_004A6444(?:TList<System.Classes.TIntConst>);
begin
{*
 004A6444    add         eax,8
 004A6447    call        004357A0
 004A644C    ret
*}
end;

//004A6450
{*procedure sub_004A6450(?:?; ?:?);
begin
 004A6450    push        ebx
 004A6451    mov         edx,dword ptr [edx]
 004A6453    mov         ebx,dword ptr [eax]
 004A6455    call        dword ptr [ebx+8]
 004A6458    pop         ebx
 004A6459    ret
end;*}

//004A645C
{*procedure sub_004A645C(?:?; ?:?; ?:?);
begin
 004A645C    push        ebx
 004A645D    mov         edx,dword ptr [edx]
 004A645F    mov         ecx,dword ptr [ecx]
 004A6461    mov         eax,dword ptr [eax+24]
 004A6464    mov         ebx,dword ptr [eax]
 004A6466    call        dword ptr [ebx+0C]
 004A6469    pop         ebx
 004A646A    ret
end;*}

//004A646C
function TList<System.Actions.TContainedAction>.ItemValue(const Item:TContainedAction):NativeInt;
begin
{*
 004A646C    push        ecx
 004A646D    mov         dword ptr [esp],edx
 004A6470    mov         eax,esp
 004A6472    movzx       edx,byte ptr [eax]
 004A6475    movzx       ecx,byte ptr [eax+1]
 004A6479    shl         ecx,8
 004A647C    add         edx,ecx
 004A647E    movzx       ecx,byte ptr [eax+2]
 004A6482    shl         ecx,10
 004A6485    add         edx,ecx
 004A6487    movzx       eax,byte ptr [eax+3]
 004A648B    shl         eax,18
 004A648E    add         edx,eax
 004A6490    mov         eax,edx
 004A6492    pop         edx
 004A6493    ret
*}
end;

//004A6494
procedure sub_004A6494;
begin
{*
 004A6494    call        TList<System.Classes.TIntConst>.GetEnumerator
 004A6499    ret
*}
end;

//004A649C
{*procedure sub_004A649C(?:?);
begin
 004A649C    push        ebx
 004A649D    cmp         word ptr [eax+2A],0
>004A64A2    je          004A64B1
 004A64A4    push        ecx
 004A64A5    mov         ebx,eax
 004A64A7    mov         ecx,edx
 004A64A9    mov         edx,eax
 004A64AB    mov         eax,dword ptr [ebx+2C]
 004A64AE    call        dword ptr [ebx+28]
 004A64B1    pop         ebx
 004A64B2    ret
end;*}

//004A64B4
constructor sub_004A64B4;
begin
{*
 004A64B4    push        ebp
 004A64B5    mov         ebp,esp
 004A64B7    push        0
 004A64B9    push        ebx
 004A64BA    push        esi
 004A64BB    test        dl,dl
>004A64BD    je          004A64C7
 004A64BF    add         esp,0FFFFFFF0
 004A64C2    call        @ClassCreate
 004A64C7    mov         ebx,edx
 004A64C9    mov         esi,eax
 004A64CB    xor         eax,eax
 004A64CD    push        ebp
 004A64CE    push        4A6508
 004A64D3    push        dword ptr fs:[eax]
 004A64D6    mov         dword ptr fs:[eax],esp
 004A64D9    lea         edx,[ebp-4]
 004A64DC    mov         eax,[004AD434];TComparer<System.Classes.TIntConst>
 004A64E1    call        TComparer<System.Classes.TIntConst>.Default
 004A64E6    mov         ecx,dword ptr [ebp-4]
 004A64E9    xor         edx,edx
 004A64EB    mov         eax,esi
 004A64ED    call        004A652C
 004A64F2    xor         eax,eax
 004A64F4    pop         edx
 004A64F5    pop         ecx
 004A64F6    pop         ecx
 004A64F7    mov         dword ptr fs:[eax],edx
 004A64FA    push        4A650F
 004A64FF    lea         eax,[ebp-4]
 004A6502    call        @IntfClear
 004A6507    ret
>004A6508    jmp         @HandleFinally
>004A650D    jmp         004A64FF
 004A650F    mov         eax,esi
 004A6511    test        bl,bl
>004A6513    je          004A6524
 004A6515    call        @AfterConstruction
 004A651A    pop         dword ptr fs:[0]
 004A6521    add         esp,0C
 004A6524    mov         eax,esi
 004A6526    pop         esi
 004A6527    pop         ebx
 004A6528    pop         ecx
 004A6529    pop         ebp
 004A652A    ret
*}
end;

//004A652C
constructor sub_004A652C(AComparer:IComparer<System.Classes.TIntConst>);
begin
{*
 004A652C    push        ebp
 004A652D    mov         ebp,esp
 004A652F    push        0
 004A6531    push        ebx
 004A6532    push        esi
 004A6533    push        edi
 004A6534    test        dl,dl
>004A6536    je          004A6540
 004A6538    add         esp,0FFFFFFF0
 004A653B    call        @ClassCreate
 004A6540    mov         esi,ecx
 004A6542    mov         ebx,edx
 004A6544    mov         edi,eax
 004A6546    xor         eax,eax
 004A6548    push        ebp
 004A6549    push        4A65B7
 004A654E    push        dword ptr fs:[eax]
 004A6551    mov         dword ptr fs:[eax],esp
 004A6554    xor         edx,edx
 004A6556    mov         eax,edi
 004A6558    call        TObject.Create
 004A655D    mov         dword ptr [edi+14],edi;TList<System.Classes.TIntConst>.FOnNotify:TCollectionNotifyEvent<...
 004A6560    mov         dword ptr [edi+10],4A6450;TList<System.Classes.TIntConst>.FOnNotify:TCollectionNotifyEve...
 004A6567    mov         dword ptr [edi+1C],edi
 004A656A    mov         dword ptr [edi+18],4A645C;sub_004A645C
 004A6571    mov         eax,[004890A0];TList<System.Classes.TIntConst>.arrayofT
 004A6576    mov         dword ptr [edi+0C],eax;TList<System.Classes.TIntConst>.FComparer:IComparer<System.Classe...
 004A6579    lea         eax,[edi+24]
 004A657C    mov         edx,esi
 004A657E    call        @IntfCopy
 004A6583    cmp         dword ptr [edi+24],0
>004A6587    jne         004A65A1
 004A6589    lea         edx,[ebp-4]
 004A658C    mov         eax,[004AD434];TComparer<System.Classes.TIntConst>
 004A6591    call        TComparer<System.Classes.TIntConst>.Default
 004A6596    mov         edx,dword ptr [ebp-4]
 004A6599    lea         eax,[edi+24]
 004A659C    call        @IntfCopy
 004A65A1    xor         eax,eax
 004A65A3    pop         edx
 004A65A4    pop         ecx
 004A65A5    pop         ecx
 004A65A6    mov         dword ptr fs:[eax],edx
 004A65A9    push        4A65BE
 004A65AE    lea         eax,[ebp-4]
 004A65B1    call        @IntfClear
 004A65B6    ret
>004A65B7    jmp         @HandleFinally
>004A65BC    jmp         004A65AE
 004A65BE    mov         eax,edi
 004A65C0    test        bl,bl
>004A65C2    je          004A65D3
 004A65C4    call        @AfterConstruction
 004A65C9    pop         dword ptr fs:[0]
 004A65D0    add         esp,0C
 004A65D3    mov         eax,edi
 004A65D5    pop         edi
 004A65D6    pop         esi
 004A65D7    pop         ebx
 004A65D8    pop         ecx
 004A65D9    pop         ebp
 004A65DA    ret
*}
end;

//004A65DC
destructor TList<System.Classes.TIntConst>.Destroy();
begin
{*
 004A65DC    push        ebx
 004A65DD    push        esi
 004A65DE    call        @BeforeDestruction
 004A65E3    mov         ebx,edx
 004A65E5    mov         esi,eax
 004A65E7    cmp         dword ptr [esi+8],0;TList<System.Classes.TIntConst>.FCount:Integer
>004A65EB    jle         004A65F6
 004A65ED    xor         edx,edx
 004A65EF    mov         eax,esi
 004A65F1    call        004A6444
 004A65F6    push        0
 004A65F8    lea         eax,[esi+20]
 004A65FB    mov         ecx,1
 004A6600    mov         edx,dword ptr ds:[4890A0];TList<System.Classes.TIntConst>.arrayofT
 004A6606    call        @DynArraySetLength
 004A660B    add         esp,4
 004A660E    mov         dl,0FC
 004A6610    and         dl,bl
 004A6612    mov         eax,esi
 004A6614    call        TEnumerable<System.Classes.TIntConst>.Destroy
 004A6619    test        bl,bl
>004A661B    jle         004A6624
 004A661D    mov         eax,esi
 004A661F    call        @ClassDestroy
 004A6624    pop         esi
 004A6625    pop         ebx
 004A6626    ret
*}
end;

//004A6628
{*procedure TList<System.Classes.TIntConst>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A6628    push        ebp
 004A6629    mov         ebp,esp
 004A662B    add         esp,0FFFFFFF0
 004A662E    mov         dword ptr [ebp-8],ecx
 004A6631    mov         dword ptr [ebp-4],edx
 004A6634    push        dword ptr [ebp+4]
 004A6637    mov         eax,dword ptr [ebp-8]
 004A663A    mov         dword ptr [ebp-10],eax
 004A663D    mov         byte ptr [ebp-0C],0
 004A6641    lea         eax,[ebp-10]
 004A6644    push        eax
 004A6645    push        0
 004A6647    mov         ecx,dword ptr [ebp-4]
 004A664A    mov         dl,1
 004A664C    mov         eax,[004180BC];EListError
 004A6651    call        Exception.CreateFmt;EListError.Create
>004A6656    jmp         @RaiseExcept
end;*}

//004A6660
procedure TList<System.Classes.TIntConst>.Add(Value:TIntConst);
begin
{*
 004A6660    push        ecx
 004A6661    mov         dword ptr [esp],edx
 004A6664    mov         edx,esp
 004A6666    add         eax,8
 004A6669    call        0043489C
 004A666E    pop         edx
 004A666F    ret
*}
end;

//004A6670
{*procedure TList<System.Classes.TIntConst>.ToArray(?:?);
begin
 004A6670    push        ecx
 004A6671    mov         dword ptr [esp],edx
 004A6674    mov         edx,dword ptr [esp]
 004A6677    add         eax,8
 004A667A    call        00435980
 004A667F    pop         edx
 004A6680    ret
end;*}

//004A6684
procedure TList<System.Classes.TIntConst>.GetEnumerator;
begin
{*
 004A6684    mov         ecx,eax
 004A6686    mov         dl,1
 004A6688    mov         eax,[004892D4];TList<System.Classes.TIntConst>.TEnumerator
 004A668D    call        004A66C0
 004A6692    ret
*}
end;

//004A6694
{*function sub_004A6694(?:?):?;
begin
 004A6694    push        ebx
 004A6695    push        esi
 004A6696    mov         ebx,dword ptr [eax+4]
 004A6699    mov         esi,dword ptr [eax+8]
 004A669C    lea         eax,[ebx+8]
 004A669F    mov         edx,esi
 004A66A1    call        00434534
 004A66A6    mov         eax,dword ptr [ebx+20]
 004A66A9    mov         eax,dword ptr [eax+esi*4]
 004A66AC    pop         esi
 004A66AD    pop         ebx
 004A66AE    ret
end;*}

//004A66B0
procedure sub_004A66B0;
begin
{*
 004A66B0    call        004A6694
 004A66B5    ret
*}
end;

//004A66B8
procedure sub_004A66B8;
begin
{*
 004A66B8    call        TList<System.Classes.TIntConst>.TEnumerator.MoveNext
 004A66BD    ret
*}
end;

//004A66C0
constructor sub_004A66C0(AList:TList<System.Classes.TIntConst>);
begin
{*
 004A66C0    push        ebx
 004A66C1    push        esi
 004A66C2    push        edi
 004A66C3    test        dl,dl
>004A66C5    je          004A66CF
 004A66C7    add         esp,0FFFFFFF0
 004A66CA    call        @ClassCreate
 004A66CF    mov         esi,ecx
 004A66D1    mov         ebx,edx
 004A66D3    mov         edi,eax
 004A66D5    xor         edx,edx
 004A66D7    mov         eax,edi
 004A66D9    call        TObject.Create
 004A66DE    mov         dword ptr [edi+4],esi;TList<System.Classes.TIntConst>.TEnumerator.FList:TList<System.Cla...
 004A66E1    mov         dword ptr [edi+8],0FFFFFFFF
 004A66E8    mov         eax,edi
 004A66EA    test        bl,bl
>004A66EC    je          004A66FD
 004A66EE    call        @AfterConstruction
 004A66F3    pop         dword ptr fs:[0]
 004A66FA    add         esp,0C
 004A66FD    mov         eax,edi
 004A66FF    pop         edi
 004A6700    pop         esi
 004A6701    pop         ebx
 004A6702    ret
*}
end;

//004A6704
function TList<System.Classes.TIntConst>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A6704    mov         edx,dword ptr [eax+4]
 004A6707    mov         edx,dword ptr [edx+8]
 004A670A    cmp         edx,dword ptr [eax+8]
>004A670D    jg          004A6712
 004A670F    xor         eax,eax
 004A6711    ret
 004A6712    inc         dword ptr [eax+8]
 004A6715    mov         edx,dword ptr [eax+4]
 004A6718    mov         edx,dword ptr [edx+8]
 004A671B    cmp         edx,dword ptr [eax+8]
 004A671E    setg        al
 004A6721    ret
*}
end;

//004A6724
destructor TEnumerable<System.Classes.TFindGlobalComponent>.Destroy();
begin
{*
 004A6724    push        ebx
 004A6725    push        esi
 004A6726    call        @BeforeDestruction
 004A672B    mov         ebx,edx
 004A672D    mov         esi,eax
 004A672F    mov         dl,0FC
 004A6731    and         dl,bl
 004A6733    mov         eax,esi
 004A6735    call        TObject.Destroy
 004A673A    test        bl,bl
>004A673C    jle         004A6745
 004A673E    mov         eax,esi
 004A6740    call        @ClassDestroy
 004A6745    pop         esi
 004A6746    pop         ebx
 004A6747    ret
*}
end;

//004A6748
function TEnumerable<System.Classes.TFindGlobalComponent>.GetEnumerator:TEnumerator<System.Classes.TFindGlobalComponent>;
begin
{*
 004A6748    mov         edx,dword ptr [eax]
 004A674A    call        dword ptr [edx]
 004A674C    ret
*}
end;

//004A6750
{*procedure TEnumerable<System.Classes.TFindGlobalComponent>.ToArray(?:?);
begin
 004A6750    push        ebp
 004A6751    mov         ebp,esp
 004A6753    add         esp,0FFFFFFF4
 004A6756    push        ebx
 004A6757    mov         dword ptr [ebp-4],edx
 004A675A    mov         ebx,eax
 004A675C    mov         dl,1
 004A675E    mov         eax,[0048ADE8];TList<System.Classes.TFindGlobalComponent>
 004A6763    call        004A689C
 004A6768    mov         dword ptr [ebp-8],eax
 004A676B    xor         eax,eax
 004A676D    push        ebp
 004A676E    push        4A67F8
 004A6773    push        dword ptr fs:[eax]
 004A6776    mov         dword ptr fs:[eax],esp
 004A6779    mov         eax,ebx
 004A677B    call        TEnumerable<System.Classes.TFindGlobalComponent>.GetEnumerator
 004A6780    mov         dword ptr [ebp-0C],eax
 004A6783    xor         eax,eax
 004A6785    push        ebp
 004A6786    push        4A67D0
 004A678B    push        dword ptr fs:[eax]
 004A678E    mov         dword ptr fs:[eax],esp
>004A6791    jmp         004A67A6
 004A6793    mov         eax,dword ptr [ebp-0C]
 004A6796    mov         edx,dword ptr [eax]
 004A6798    call        dword ptr [edx]
 004A679A    mov         ebx,eax
 004A679C    mov         edx,ebx
 004A679E    mov         eax,dword ptr [ebp-8]
 004A67A1    call        TList<System.Classes.TFindGlobalComponent>.Add
 004A67A6    mov         eax,dword ptr [ebp-0C]
 004A67A9    call        TEnumerator<System.Classes.TFindGlobalComponent>.MoveNext
 004A67AE    test        al,al
>004A67B0    jne         004A6793
 004A67B2    xor         eax,eax
 004A67B4    pop         edx
 004A67B5    pop         ecx
 004A67B6    pop         ecx
 004A67B7    mov         dword ptr fs:[eax],edx
 004A67BA    push        4A67D7
 004A67BF    cmp         dword ptr [ebp-0C],0
>004A67C3    je          004A67CF
 004A67C5    mov         dl,1
 004A67C7    mov         eax,dword ptr [ebp-0C]
 004A67CA    mov         ecx,dword ptr [eax]
 004A67CC    call        dword ptr [ecx-4]
 004A67CF    ret
>004A67D0    jmp         @HandleFinally
>004A67D5    jmp         004A67BF
 004A67D7    mov         edx,dword ptr [ebp-4]
 004A67DA    mov         eax,dword ptr [ebp-8]
 004A67DD    call        TList<System.Classes.TFindGlobalComponent>.ToArray
 004A67E2    xor         eax,eax
 004A67E4    pop         edx
 004A67E5    pop         ecx
 004A67E6    pop         ecx
 004A67E7    mov         dword ptr fs:[eax],edx
 004A67EA    push        4A67FF
 004A67EF    mov         eax,dword ptr [ebp-8]
 004A67F2    call        TObject.Free
 004A67F7    ret
>004A67F8    jmp         @HandleFinally
>004A67FD    jmp         004A67EF
 004A67FF    pop         ebx
 004A6800    mov         esp,ebp
 004A6802    pop         ebp
 004A6803    ret
end;*}

//004A6804
function TEnumerator<System.Classes.TFindGlobalComponent>.MoveNext:Boolean;
begin
{*
 004A6804    mov         edx,dword ptr [eax]
 004A6806    call        dword ptr [edx+4]
 004A6809    ret
*}
end;

//004A6854
procedure sub_004A6854(?:TList<System.Classes.TFindGlobalComponent>);
begin
{*
 004A6854    add         eax,8
 004A6857    call        004357A0
 004A685C    ret
*}
end;

//004A6860
{*procedure sub_004A6860(?:?; ?:?);
begin
 004A6860    push        ebx
 004A6861    mov         edx,dword ptr [edx]
 004A6863    mov         ebx,dword ptr [eax]
 004A6865    call        dword ptr [ebx+8]
 004A6868    pop         ebx
 004A6869    ret
end;*}

//004A686C
{*procedure sub_004A686C(?:?; ?:?; ?:?);
begin
 004A686C    push        ebx
 004A686D    mov         edx,dword ptr [edx]
 004A686F    mov         ecx,dword ptr [ecx]
 004A6871    mov         eax,dword ptr [eax+24]
 004A6874    mov         ebx,dword ptr [eax]
 004A6876    call        dword ptr [ebx+0C]
 004A6879    pop         ebx
 004A687A    ret
end;*}

//004A687C
procedure sub_004A687C;
begin
{*
 004A687C    call        TList<System.Classes.TFindGlobalComponent>.GetEnumerator
 004A6881    ret
*}
end;

//004A6884
{*procedure sub_004A6884(?:?);
begin
 004A6884    push        ebx
 004A6885    cmp         word ptr [eax+2A],0
>004A688A    je          004A6899
 004A688C    push        ecx
 004A688D    mov         ebx,eax
 004A688F    mov         ecx,edx
 004A6891    mov         edx,eax
 004A6893    mov         eax,dword ptr [ebx+2C]
 004A6896    call        dword ptr [ebx+28]
 004A6899    pop         ebx
 004A689A    ret
end;*}

//004A689C
constructor sub_004A689C;
begin
{*
 004A689C    push        ebp
 004A689D    mov         ebp,esp
 004A689F    push        0
 004A68A1    push        ebx
 004A68A2    push        esi
 004A68A3    test        dl,dl
>004A68A5    je          004A68AF
 004A68A7    add         esp,0FFFFFFF0
 004A68AA    call        @ClassCreate
 004A68AF    mov         ebx,edx
 004A68B1    mov         esi,eax
 004A68B3    xor         eax,eax
 004A68B5    push        ebp
 004A68B6    push        4A68F0
 004A68BB    push        dword ptr fs:[eax]
 004A68BE    mov         dword ptr fs:[eax],esp
 004A68C1    lea         edx,[ebp-4]
 004A68C4    mov         eax,[004AD6B0];TComparer<System.Classes.TFindGlobalComponent>
 004A68C9    call        TComparer<System.Classes.TFindGlobalComponent>.Default
 004A68CE    mov         ecx,dword ptr [ebp-4]
 004A68D1    xor         edx,edx
 004A68D3    mov         eax,esi
 004A68D5    call        004A6914
 004A68DA    xor         eax,eax
 004A68DC    pop         edx
 004A68DD    pop         ecx
 004A68DE    pop         ecx
 004A68DF    mov         dword ptr fs:[eax],edx
 004A68E2    push        4A68F7
 004A68E7    lea         eax,[ebp-4]
 004A68EA    call        @IntfClear
 004A68EF    ret
>004A68F0    jmp         @HandleFinally
>004A68F5    jmp         004A68E7
 004A68F7    mov         eax,esi
 004A68F9    test        bl,bl
>004A68FB    je          004A690C
 004A68FD    call        @AfterConstruction
 004A6902    pop         dword ptr fs:[0]
 004A6909    add         esp,0C
 004A690C    mov         eax,esi
 004A690E    pop         esi
 004A690F    pop         ebx
 004A6910    pop         ecx
 004A6911    pop         ebp
 004A6912    ret
*}
end;

//004A6914
constructor sub_004A6914(AComparer:IComparer<System.Classes.TFindGlobalComponent>);
begin
{*
 004A6914    push        ebp
 004A6915    mov         ebp,esp
 004A6917    push        0
 004A6919    push        ebx
 004A691A    push        esi
 004A691B    push        edi
 004A691C    test        dl,dl
>004A691E    je          004A6928
 004A6920    add         esp,0FFFFFFF0
 004A6923    call        @ClassCreate
 004A6928    mov         esi,ecx
 004A692A    mov         ebx,edx
 004A692C    mov         edi,eax
 004A692E    xor         eax,eax
 004A6930    push        ebp
 004A6931    push        4A699F
 004A6936    push        dword ptr fs:[eax]
 004A6939    mov         dword ptr fs:[eax],esp
 004A693C    xor         edx,edx
 004A693E    mov         eax,edi
 004A6940    call        TObject.Create
 004A6945    mov         dword ptr [edi+14],edi;TList<System.Classes.TFindGlobalComponent>.FOnNotify:TCollectionN...
 004A6948    mov         dword ptr [edi+10],4A6860;TList<System.Classes.TFindGlobalComponent>.FOnNotify:TCollecti...
 004A694F    mov         dword ptr [edi+1C],edi
 004A6952    mov         dword ptr [edi+18],4A686C;sub_004A686C
 004A6959    mov         eax,[0048A9AC];TList<System.Classes.TFindGlobalComponent>.arrayofT
 004A695E    mov         dword ptr [edi+0C],eax;TList<System.Classes.TFindGlobalComponent>.FComparer:IComparer<Sy...
 004A6961    lea         eax,[edi+24]
 004A6964    mov         edx,esi
 004A6966    call        @IntfCopy
 004A696B    cmp         dword ptr [edi+24],0
>004A696F    jne         004A6989
 004A6971    lea         edx,[ebp-4]
 004A6974    mov         eax,[004AD6B0];TComparer<System.Classes.TFindGlobalComponent>
 004A6979    call        TComparer<System.Classes.TFindGlobalComponent>.Default
 004A697E    mov         edx,dword ptr [ebp-4]
 004A6981    lea         eax,[edi+24]
 004A6984    call        @IntfCopy
 004A6989    xor         eax,eax
 004A698B    pop         edx
 004A698C    pop         ecx
 004A698D    pop         ecx
 004A698E    mov         dword ptr fs:[eax],edx
 004A6991    push        4A69A6
 004A6996    lea         eax,[ebp-4]
 004A6999    call        @IntfClear
 004A699E    ret
>004A699F    jmp         @HandleFinally
>004A69A4    jmp         004A6996
 004A69A6    mov         eax,edi
 004A69A8    test        bl,bl
>004A69AA    je          004A69BB
 004A69AC    call        @AfterConstruction
 004A69B1    pop         dword ptr fs:[0]
 004A69B8    add         esp,0C
 004A69BB    mov         eax,edi
 004A69BD    pop         edi
 004A69BE    pop         esi
 004A69BF    pop         ebx
 004A69C0    pop         ecx
 004A69C1    pop         ebp
 004A69C2    ret
*}
end;

//004A69C4
destructor TList<System.Classes.TFindGlobalComponent>.Destroy();
begin
{*
 004A69C4    push        ebx
 004A69C5    push        esi
 004A69C6    call        @BeforeDestruction
 004A69CB    mov         ebx,edx
 004A69CD    mov         esi,eax
 004A69CF    cmp         dword ptr [esi+8],0;TList<System.Classes.TFindGlobalComponent>.FCount:Integer
>004A69D3    jle         004A69DE
 004A69D5    xor         edx,edx
 004A69D7    mov         eax,esi
 004A69D9    call        004A6854
 004A69DE    push        0
 004A69E0    lea         eax,[esi+20]
 004A69E3    mov         ecx,1
 004A69E8    mov         edx,dword ptr ds:[48A9AC];TList<System.Classes.TFindGlobalComponent>.arrayofT
 004A69EE    call        @DynArraySetLength
 004A69F3    add         esp,4
 004A69F6    mov         dl,0FC
 004A69F8    and         dl,bl
 004A69FA    mov         eax,esi
 004A69FC    call        TEnumerable<System.Classes.TFindGlobalComponent>.Destroy
 004A6A01    test        bl,bl
>004A6A03    jle         004A6A0C
 004A6A05    mov         eax,esi
 004A6A07    call        @ClassDestroy
 004A6A0C    pop         esi
 004A6A0D    pop         ebx
 004A6A0E    ret
*}
end;

//004A6A10
{*procedure TList<System.Classes.TFindGlobalComponent>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A6A10    push        ebp
 004A6A11    mov         ebp,esp
 004A6A13    add         esp,0FFFFFFF0
 004A6A16    mov         dword ptr [ebp-8],ecx
 004A6A19    mov         dword ptr [ebp-4],edx
 004A6A1C    push        dword ptr [ebp+4]
 004A6A1F    mov         eax,dword ptr [ebp-8]
 004A6A22    mov         dword ptr [ebp-10],eax
 004A6A25    mov         byte ptr [ebp-0C],0
 004A6A29    lea         eax,[ebp-10]
 004A6A2C    push        eax
 004A6A2D    push        0
 004A6A2F    mov         ecx,dword ptr [ebp-4]
 004A6A32    mov         dl,1
 004A6A34    mov         eax,[004180BC];EListError
 004A6A39    call        Exception.CreateFmt;EListError.Create
>004A6A3E    jmp         @RaiseExcept
end;*}

//004A6A48
procedure TList<System.Classes.TFindGlobalComponent>.Add(Value:TFindGlobalComponent);
begin
{*
 004A6A48    push        ecx
 004A6A49    mov         dword ptr [esp],edx
 004A6A4C    mov         edx,esp
 004A6A4E    add         eax,8
 004A6A51    call        0043489C
 004A6A56    pop         edx
 004A6A57    ret
*}
end;

//004A6A58
{*procedure TList<System.Classes.TFindGlobalComponent>.ToArray(?:?);
begin
 004A6A58    push        ecx
 004A6A59    mov         dword ptr [esp],edx
 004A6A5C    mov         edx,dword ptr [esp]
 004A6A5F    add         eax,8
 004A6A62    call        00435980
 004A6A67    pop         edx
 004A6A68    ret
end;*}

//004A6A6C
procedure TList<System.Classes.TFindGlobalComponent>.GetEnumerator;
begin
{*
 004A6A6C    mov         ecx,eax
 004A6A6E    mov         dl,1
 004A6A70    mov         eax,[0048AC1C];TList<System.Classes.TFindGlobalComponent>.TEnumerator
 004A6A75    call        004A6AA8
 004A6A7A    ret
*}
end;

//004A6A7C
{*function sub_004A6A7C(?:?):?;
begin
 004A6A7C    push        ebx
 004A6A7D    push        esi
 004A6A7E    mov         ebx,dword ptr [eax+4]
 004A6A81    mov         esi,dword ptr [eax+8]
 004A6A84    lea         eax,[ebx+8]
 004A6A87    mov         edx,esi
 004A6A89    call        00434534
 004A6A8E    mov         eax,dword ptr [ebx+20]
 004A6A91    mov         eax,dword ptr [eax+esi*4]
 004A6A94    pop         esi
 004A6A95    pop         ebx
 004A6A96    ret
end;*}

//004A6A98
procedure sub_004A6A98;
begin
{*
 004A6A98    call        004A6A7C
 004A6A9D    ret
*}
end;

//004A6AA0
procedure sub_004A6AA0;
begin
{*
 004A6AA0    call        TList<System.Classes.TFindGlobalComponent>.TEnumerator.MoveNext
 004A6AA5    ret
*}
end;

//004A6AA8
constructor sub_004A6AA8(AList:TList<System.Classes.TFindGlobalComponent>);
begin
{*
 004A6AA8    push        ebx
 004A6AA9    push        esi
 004A6AAA    push        edi
 004A6AAB    test        dl,dl
>004A6AAD    je          004A6AB7
 004A6AAF    add         esp,0FFFFFFF0
 004A6AB2    call        @ClassCreate
 004A6AB7    mov         esi,ecx
 004A6AB9    mov         ebx,edx
 004A6ABB    mov         edi,eax
 004A6ABD    xor         edx,edx
 004A6ABF    mov         eax,edi
 004A6AC1    call        TObject.Create
 004A6AC6    mov         dword ptr [edi+4],esi;TList<System.Classes.TFindGlobalComponent>.TEnumerator.FList:TList...
 004A6AC9    mov         dword ptr [edi+8],0FFFFFFFF
 004A6AD0    mov         eax,edi
 004A6AD2    test        bl,bl
>004A6AD4    je          004A6AE5
 004A6AD6    call        @AfterConstruction
 004A6ADB    pop         dword ptr fs:[0]
 004A6AE2    add         esp,0C
 004A6AE5    mov         eax,edi
 004A6AE7    pop         edi
 004A6AE8    pop         esi
 004A6AE9    pop         ebx
 004A6AEA    ret
*}
end;

//004A6AEC
function TList<System.Classes.TFindGlobalComponent>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A6AEC    mov         edx,dword ptr [eax+4]
 004A6AEF    mov         edx,dword ptr [edx+8]
 004A6AF2    cmp         edx,dword ptr [eax+8]
>004A6AF5    jg          004A6AFA
 004A6AF7    xor         eax,eax
 004A6AF9    ret
 004A6AFA    inc         dword ptr [eax+8]
 004A6AFD    mov         edx,dword ptr [eax+4]
 004A6B00    mov         edx,dword ptr [edx+8]
 004A6B03    cmp         edx,dword ptr [eax+8]
 004A6B06    setg        al
 004A6B09    ret
*}
end;

//004A6B0C
destructor TEnumerable<System.Classes.TList<System.Classes.TComponent>>.Destroy();
begin
{*
 004A6B0C    push        ebx
 004A6B0D    push        esi
 004A6B0E    call        @BeforeDestruction
 004A6B13    mov         ebx,edx
 004A6B15    mov         esi,eax
 004A6B17    mov         dl,0FC
 004A6B19    and         dl,bl
 004A6B1B    mov         eax,esi
 004A6B1D    call        TObject.Destroy
 004A6B22    test        bl,bl
>004A6B24    jle         004A6B2D
 004A6B26    mov         eax,esi
 004A6B28    call        @ClassDestroy
 004A6B2D    pop         esi
 004A6B2E    pop         ebx
 004A6B2F    ret
*}
end;

//004A6B30
function TEnumerable<System.Classes.TList<System.Classes.TComponent>>.GetEnumerator:TEnumerator<System.Classes.TList<System.Classes.TComponent>>;
begin
{*
 004A6B30    mov         edx,dword ptr [eax]
 004A6B32    call        dword ptr [edx]
 004A6B34    ret
*}
end;

//004A6B38
{*procedure TEnumerable<System.Classes.TList<System.Classes.TComponent>>.ToArray(?:?);
begin
 004A6B38    push        ebp
 004A6B39    mov         ebp,esp
 004A6B3B    add         esp,0FFFFFFF4
 004A6B3E    push        ebx
 004A6B3F    mov         dword ptr [ebp-4],edx
 004A6B42    mov         ebx,eax
 004A6B44    mov         dl,1
 004A6B46    mov         eax,[0048C4A4];TList<System.Generics.Collections.TList<System.Classes.TComponent>>
 004A6B4B    call        004A6C84
 004A6B50    mov         dword ptr [ebp-8],eax
 004A6B53    xor         eax,eax
 004A6B55    push        ebp
 004A6B56    push        4A6BE0
 004A6B5B    push        dword ptr fs:[eax]
 004A6B5E    mov         dword ptr fs:[eax],esp
 004A6B61    mov         eax,ebx
 004A6B63    call        TEnumerable<System.Classes.TList<System.Classes.TComponent>>.GetEnumerator
 004A6B68    mov         dword ptr [ebp-0C],eax
 004A6B6B    xor         eax,eax
 004A6B6D    push        ebp
 004A6B6E    push        4A6BB8
 004A6B73    push        dword ptr fs:[eax]
 004A6B76    mov         dword ptr fs:[eax],esp
>004A6B79    jmp         004A6B8E
 004A6B7B    mov         eax,dword ptr [ebp-0C]
 004A6B7E    mov         edx,dword ptr [eax]
 004A6B80    call        dword ptr [edx]
 004A6B82    mov         ebx,eax
 004A6B84    mov         edx,ebx
 004A6B86    mov         eax,dword ptr [ebp-8]
 004A6B89    call        TList<System.Generics.Collections.TList<System.Classes.TComponent>>.Add
 004A6B8E    mov         eax,dword ptr [ebp-0C]
 004A6B91    call        TEnumerator<System.Classes.TList<System.Classes.TComponent>>.MoveNext
 004A6B96    test        al,al
>004A6B98    jne         004A6B7B
 004A6B9A    xor         eax,eax
 004A6B9C    pop         edx
 004A6B9D    pop         ecx
 004A6B9E    pop         ecx
 004A6B9F    mov         dword ptr fs:[eax],edx
 004A6BA2    push        4A6BBF
 004A6BA7    cmp         dword ptr [ebp-0C],0
>004A6BAB    je          004A6BB7
 004A6BAD    mov         dl,1
 004A6BAF    mov         eax,dword ptr [ebp-0C]
 004A6BB2    mov         ecx,dword ptr [eax]
 004A6BB4    call        dword ptr [ecx-4]
 004A6BB7    ret
>004A6BB8    jmp         @HandleFinally
>004A6BBD    jmp         004A6BA7
 004A6BBF    mov         edx,dword ptr [ebp-4]
 004A6BC2    mov         eax,dword ptr [ebp-8]
 004A6BC5    call        TList<System.Generics.Collections.TList<System.Classes.TComponent>>.ToArray
 004A6BCA    xor         eax,eax
 004A6BCC    pop         edx
 004A6BCD    pop         ecx
 004A6BCE    pop         ecx
 004A6BCF    mov         dword ptr fs:[eax],edx
 004A6BD2    push        4A6BE7
 004A6BD7    mov         eax,dword ptr [ebp-8]
 004A6BDA    call        TObject.Free
 004A6BDF    ret
>004A6BE0    jmp         @HandleFinally
>004A6BE5    jmp         004A6BD7
 004A6BE7    pop         ebx
 004A6BE8    mov         esp,ebp
 004A6BEA    pop         ebp
 004A6BEB    ret
end;*}

//004A6BEC
function TEnumerator<System.Classes.TList<System.Classes.TComponent>>.MoveNext:Boolean;
begin
{*
 004A6BEC    mov         edx,dword ptr [eax]
 004A6BEE    call        dword ptr [edx+4]
 004A6BF1    ret
*}
end;

//004A6C3C
procedure sub_004A6C3C(?:TList<System.Generics.Collections.TList<System.Classes.TComponent>>);
begin
{*
 004A6C3C    add         eax,8
 004A6C3F    call        004357A0
 004A6C44    ret
*}
end;

//004A6C48
{*procedure sub_004A6C48(?:?; ?:?);
begin
 004A6C48    push        ebx
 004A6C49    mov         edx,dword ptr [edx]
 004A6C4B    mov         ebx,dword ptr [eax]
 004A6C4D    call        dword ptr [ebx+8]
 004A6C50    pop         ebx
 004A6C51    ret
end;*}

//004A6C54
{*procedure sub_004A6C54(?:?; ?:?; ?:?);
begin
 004A6C54    push        ebx
 004A6C55    mov         edx,dword ptr [edx]
 004A6C57    mov         ecx,dword ptr [ecx]
 004A6C59    mov         eax,dword ptr [eax+24]
 004A6C5C    mov         ebx,dword ptr [eax]
 004A6C5E    call        dword ptr [ebx+0C]
 004A6C61    pop         ebx
 004A6C62    ret
end;*}

//004A6C64
procedure sub_004A6C64;
begin
{*
 004A6C64    call        TList<System.Generics.Collections.TList<System.Classes.TComponent>>.GetEnumerator
 004A6C69    ret
*}
end;

//004A6C6C
{*procedure sub_004A6C6C(?:?);
begin
 004A6C6C    push        ebx
 004A6C6D    cmp         word ptr [eax+2A],0
>004A6C72    je          004A6C81
 004A6C74    push        ecx
 004A6C75    mov         ebx,eax
 004A6C77    mov         ecx,edx
 004A6C79    mov         edx,eax
 004A6C7B    mov         eax,dword ptr [ebx+2C]
 004A6C7E    call        dword ptr [ebx+28]
 004A6C81    pop         ebx
 004A6C82    ret
end;*}

//004A6C84
constructor sub_004A6C84;
begin
{*
 004A6C84    push        ebp
 004A6C85    mov         ebp,esp
 004A6C87    push        0
 004A6C89    push        ebx
 004A6C8A    push        esi
 004A6C8B    test        dl,dl
>004A6C8D    je          004A6C97
 004A6C8F    add         esp,0FFFFFFF0
 004A6C92    call        @ClassCreate
 004A6C97    mov         ebx,edx
 004A6C99    mov         esi,eax
 004A6C9B    xor         eax,eax
 004A6C9D    push        ebp
 004A6C9E    push        4A6CD8
 004A6CA3    push        dword ptr fs:[eax]
 004A6CA6    mov         dword ptr fs:[eax],esp
 004A6CA9    lea         edx,[ebp-4]
 004A6CAC    mov         eax,[004AD95C];TComparer<System.Generics.Collections.TList<System.Classes.TComponent>>
 004A6CB1    call        TComparer<System.Generics.Collections.TList<System.Classes.TComponent>>.Default
 004A6CB6    mov         ecx,dword ptr [ebp-4]
 004A6CB9    xor         edx,edx
 004A6CBB    mov         eax,esi
 004A6CBD    call        004A6CFC
 004A6CC2    xor         eax,eax
 004A6CC4    pop         edx
 004A6CC5    pop         ecx
 004A6CC6    pop         ecx
 004A6CC7    mov         dword ptr fs:[eax],edx
 004A6CCA    push        4A6CDF
 004A6CCF    lea         eax,[ebp-4]
 004A6CD2    call        @IntfClear
 004A6CD7    ret
>004A6CD8    jmp         @HandleFinally
>004A6CDD    jmp         004A6CCF
 004A6CDF    mov         eax,esi
 004A6CE1    test        bl,bl
>004A6CE3    je          004A6CF4
 004A6CE5    call        @AfterConstruction
 004A6CEA    pop         dword ptr fs:[0]
 004A6CF1    add         esp,0C
 004A6CF4    mov         eax,esi
 004A6CF6    pop         esi
 004A6CF7    pop         ebx
 004A6CF8    pop         ecx
 004A6CF9    pop         ebp
 004A6CFA    ret
*}
end;

//004A6CFC
constructor sub_004A6CFC(AComparer:IComparer<System.Generics.Collections.TList<System.Classes.TComponent>>);
begin
{*
 004A6CFC    push        ebp
 004A6CFD    mov         ebp,esp
 004A6CFF    push        0
 004A6D01    push        ebx
 004A6D02    push        esi
 004A6D03    push        edi
 004A6D04    test        dl,dl
>004A6D06    je          004A6D10
 004A6D08    add         esp,0FFFFFFF0
 004A6D0B    call        @ClassCreate
 004A6D10    mov         esi,ecx
 004A6D12    mov         ebx,edx
 004A6D14    mov         edi,eax
 004A6D16    xor         eax,eax
 004A6D18    push        ebp
 004A6D19    push        4A6D87
 004A6D1E    push        dword ptr fs:[eax]
 004A6D21    mov         dword ptr fs:[eax],esp
 004A6D24    xor         edx,edx
 004A6D26    mov         eax,edi
 004A6D28    call        TObject.Create
 004A6D2D    mov         dword ptr [edi+14],edi;TList<System.Generics.Collections.TList<System.Classes.TComponent...
 004A6D30    mov         dword ptr [edi+10],4A6C48;TList<System.Generics.Collections.TList<System.Classes.TCompon...
 004A6D37    mov         dword ptr [edi+1C],edi
 004A6D3A    mov         dword ptr [edi+18],4A6C54;sub_004A6C54
 004A6D41    mov         eax,[0048BFB8];TList<System.Generics.Collections.TList<System.Classes.TComponent>>.array...
 004A6D46    mov         dword ptr [edi+0C],eax;TList<System.Generics.Collections.TList<System.Classes.TComponent...
 004A6D49    lea         eax,[edi+24]
 004A6D4C    mov         edx,esi
 004A6D4E    call        @IntfCopy
 004A6D53    cmp         dword ptr [edi+24],0
>004A6D57    jne         004A6D71
 004A6D59    lea         edx,[ebp-4]
 004A6D5C    mov         eax,[004AD95C];TComparer<System.Generics.Collections.TList<System.Classes.TComponent>>
 004A6D61    call        TComparer<System.Generics.Collections.TList<System.Classes.TComponent>>.Default
 004A6D66    mov         edx,dword ptr [ebp-4]
 004A6D69    lea         eax,[edi+24]
 004A6D6C    call        @IntfCopy
 004A6D71    xor         eax,eax
 004A6D73    pop         edx
 004A6D74    pop         ecx
 004A6D75    pop         ecx
 004A6D76    mov         dword ptr fs:[eax],edx
 004A6D79    push        4A6D8E
 004A6D7E    lea         eax,[ebp-4]
 004A6D81    call        @IntfClear
 004A6D86    ret
>004A6D87    jmp         @HandleFinally
>004A6D8C    jmp         004A6D7E
 004A6D8E    mov         eax,edi
 004A6D90    test        bl,bl
>004A6D92    je          004A6DA3
 004A6D94    call        @AfterConstruction
 004A6D99    pop         dword ptr fs:[0]
 004A6DA0    add         esp,0C
 004A6DA3    mov         eax,edi
 004A6DA5    pop         edi
 004A6DA6    pop         esi
 004A6DA7    pop         ebx
 004A6DA8    pop         ecx
 004A6DA9    pop         ebp
 004A6DAA    ret
*}
end;

//004A6DAC
destructor TList<System.Generics.Collections.TList<System.Classes.TComponent>>.Destroy();
begin
{*
 004A6DAC    push        ebx
 004A6DAD    push        esi
 004A6DAE    call        @BeforeDestruction
 004A6DB3    mov         ebx,edx
 004A6DB5    mov         esi,eax
 004A6DB7    cmp         dword ptr [esi+8],0;TList<System.Generics.Collections.TList<System.Classes.TComponent>>....
>004A6DBB    jle         004A6DC6
 004A6DBD    xor         edx,edx
 004A6DBF    mov         eax,esi
 004A6DC1    call        004A6C3C
 004A6DC6    push        0
 004A6DC8    lea         eax,[esi+20]
 004A6DCB    mov         ecx,1
 004A6DD0    mov         edx,dword ptr ds:[48BFB8];TList<System.Generics.Collections.TList<System.Classes.TCompon...
 004A6DD6    call        @DynArraySetLength
 004A6DDB    add         esp,4
 004A6DDE    mov         dl,0FC
 004A6DE0    and         dl,bl
 004A6DE2    mov         eax,esi
 004A6DE4    call        TEnumerable<System.Classes.TList<System.Classes.TComponent>>.Destroy
 004A6DE9    test        bl,bl
>004A6DEB    jle         004A6DF4
 004A6DED    mov         eax,esi
 004A6DEF    call        @ClassDestroy
 004A6DF4    pop         esi
 004A6DF5    pop         ebx
 004A6DF6    ret
*}
end;

//004A6DF8
{*procedure TList<System.Generics.Collections.TList<System.Classes.TComponent>>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A6DF8    push        ebp
 004A6DF9    mov         ebp,esp
 004A6DFB    add         esp,0FFFFFFF0
 004A6DFE    mov         dword ptr [ebp-8],ecx
 004A6E01    mov         dword ptr [ebp-4],edx
 004A6E04    push        dword ptr [ebp+4]
 004A6E07    mov         eax,dword ptr [ebp-8]
 004A6E0A    mov         dword ptr [ebp-10],eax
 004A6E0D    mov         byte ptr [ebp-0C],0
 004A6E11    lea         eax,[ebp-10]
 004A6E14    push        eax
 004A6E15    push        0
 004A6E17    mov         ecx,dword ptr [ebp-4]
 004A6E1A    mov         dl,1
 004A6E1C    mov         eax,[004180BC];EListError
 004A6E21    call        Exception.CreateFmt;EListError.Create
>004A6E26    jmp         @RaiseExcept
end;*}

//004A6E30
procedure TList<System.Generics.Collections.TList<System.Classes.TComponent>>.Add(Value:TList<System.Classes.TComponent>);
begin
{*
 004A6E30    push        ecx
 004A6E31    mov         dword ptr [esp],edx
 004A6E34    mov         edx,esp
 004A6E36    add         eax,8
 004A6E39    call        0043489C
 004A6E3E    pop         edx
 004A6E3F    ret
*}
end;

//004A6E40
{*procedure TList<System.Generics.Collections.TList<System.Classes.TComponent>>.ToArray(?:?);
begin
 004A6E40    push        ecx
 004A6E41    mov         dword ptr [esp],edx
 004A6E44    mov         edx,dword ptr [esp]
 004A6E47    add         eax,8
 004A6E4A    call        00435980
 004A6E4F    pop         edx
 004A6E50    ret
end;*}

//004A6E54
procedure TList<System.Generics.Collections.TList<System.Classes.TComponent>>.GetEnumerator;
begin
{*
 004A6E54    mov         ecx,eax
 004A6E56    mov         dl,1
 004A6E58    mov         eax,[0048C2A8];TList<System.Generics.Collections.TList<System.Classes.TComponent>>.TEnum...
 004A6E5D    call        004A6E90
 004A6E62    ret
*}
end;

//004A6E64
{*function sub_004A6E64(?:?):?;
begin
 004A6E64    push        ebx
 004A6E65    push        esi
 004A6E66    mov         ebx,dword ptr [eax+4]
 004A6E69    mov         esi,dword ptr [eax+8]
 004A6E6C    lea         eax,[ebx+8]
 004A6E6F    mov         edx,esi
 004A6E71    call        00434534
 004A6E76    mov         eax,dword ptr [ebx+20]
 004A6E79    mov         eax,dword ptr [eax+esi*4]
 004A6E7C    pop         esi
 004A6E7D    pop         ebx
 004A6E7E    ret
end;*}

//004A6E80
procedure sub_004A6E80;
begin
{*
 004A6E80    call        004A6E64
 004A6E85    ret
*}
end;

//004A6E88
procedure sub_004A6E88;
begin
{*
 004A6E88    call        TList<System.Generics.Collections.TList<System.Classes.TComponent>>.TEnumerator.MoveNext
 004A6E8D    ret
*}
end;

//004A6E90
constructor sub_004A6E90(AList:TList<System.Generics.Collections.TList<System.Classes.TComponent>>);
begin
{*
 004A6E90    push        ebx
 004A6E91    push        esi
 004A6E92    push        edi
 004A6E93    test        dl,dl
>004A6E95    je          004A6E9F
 004A6E97    add         esp,0FFFFFFF0
 004A6E9A    call        @ClassCreate
 004A6E9F    mov         esi,ecx
 004A6EA1    mov         ebx,edx
 004A6EA3    mov         edi,eax
 004A6EA5    xor         edx,edx
 004A6EA7    mov         eax,edi
 004A6EA9    call        TObject.Create
 004A6EAE    mov         dword ptr [edi+4],esi;TList<System.Generics.Collections.TList<System.Classes.TComponent>...
 004A6EB1    mov         dword ptr [edi+8],0FFFFFFFF
 004A6EB8    mov         eax,edi
 004A6EBA    test        bl,bl
>004A6EBC    je          004A6ECD
 004A6EBE    call        @AfterConstruction
 004A6EC3    pop         dword ptr fs:[0]
 004A6ECA    add         esp,0C
 004A6ECD    mov         eax,edi
 004A6ECF    pop         edi
 004A6ED0    pop         esi
 004A6ED1    pop         ebx
 004A6ED2    ret
*}
end;

//004A6ED4
function TList<System.Generics.Collections.TList<System.Classes.TComponent>>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A6ED4    mov         edx,dword ptr [eax+4]
 004A6ED7    mov         edx,dword ptr [edx+8]
 004A6EDA    cmp         edx,dword ptr [eax+8]
>004A6EDD    jg          004A6EE2
 004A6EDF    xor         eax,eax
 004A6EE1    ret
 004A6EE2    inc         dword ptr [eax+8]
 004A6EE5    mov         edx,dword ptr [eax+4]
 004A6EE8    mov         edx,dword ptr [edx+8]
 004A6EEB    cmp         edx,dword ptr [eax+8]
 004A6EEE    setg        al
 004A6EF1    ret
*}
end;

//004A6EF4
constructor sub_004A6EF4;
begin
{*
 004A6EF4    push        ebx
 004A6EF5    push        esi
 004A6EF6    test        dl,dl
>004A6EF8    je          004A6F02
 004A6EFA    add         esp,0FFFFFFF0
 004A6EFD    call        @ClassCreate
 004A6F02    mov         ebx,edx
 004A6F04    mov         esi,eax
 004A6F06    xor         edx,edx
 004A6F08    mov         eax,esi
 004A6F0A    call        TObject.Create
 004A6F0F    mov         dl,1
 004A6F11    mov         eax,[00401728];TObject
 004A6F16    call        TObject.Create;TObject.Create
 004A6F1B    mov         dword ptr [esi+8],eax;TThreadList<System.Classes.TPropFixup>.FLock:TObject
 004A6F1E    mov         dl,1
 004A6F20    mov         eax,[00493734];TList<System.Classes.TPropFixup>
 004A6F25    call        004A729C
 004A6F2A    mov         dword ptr [esi+4],eax;TThreadList<System.Classes.TPropFixup>.FList:TList<System.Classes....
 004A6F2D    mov         byte ptr [esi+0C],0
 004A6F31    mov         eax,esi
 004A6F33    test        bl,bl
>004A6F35    je          004A6F46
 004A6F37    call        @AfterConstruction
 004A6F3C    pop         dword ptr fs:[0]
 004A6F43    add         esp,0C
 004A6F46    mov         eax,esi
 004A6F48    pop         esi
 004A6F49    pop         ebx
 004A6F4A    ret
*}
end;

//004A6F4C
destructor TThreadList<System.Classes.TPropFixup>.Destroy();
begin
{*
 004A6F4C    push        ebp
 004A6F4D    mov         ebp,esp
 004A6F4F    add         esp,0FFFFFFF8
 004A6F52    call        @BeforeDestruction
 004A6F57    mov         byte ptr [ebp-5],dl
 004A6F5A    mov         dword ptr [ebp-4],eax
 004A6F5D    mov         eax,dword ptr [ebp-4]
 004A6F60    call        TThreadList<System.Classes.TPropFixup>.LockList
 004A6F65    xor         eax,eax
 004A6F67    push        ebp
 004A6F68    push        4A6FAE
 004A6F6D    push        dword ptr fs:[eax]
 004A6F70    mov         dword ptr fs:[eax],esp
 004A6F73    mov         eax,dword ptr [ebp-4]
 004A6F76    mov         eax,dword ptr [eax+4];TThreadList<System.Classes.TPropFixup>.FList:TList<System.Classes....
 004A6F79    call        TObject.Free
 004A6F7E    movzx       edx,byte ptr [ebp-5]
 004A6F82    and         dl,0FC
 004A6F85    mov         eax,dword ptr [ebp-4]
 004A6F88    call        TObject.Destroy
 004A6F8D    xor         eax,eax
 004A6F8F    pop         edx
 004A6F90    pop         ecx
 004A6F91    pop         ecx
 004A6F92    mov         dword ptr fs:[eax],edx
 004A6F95    push        4A6FB5
 004A6F9A    mov         eax,dword ptr [ebp-4]
 004A6F9D    call        TThreadList<System.Classes.TPropFixup>.UnlockList
 004A6FA2    mov         eax,dword ptr [ebp-4]
 004A6FA5    mov         eax,dword ptr [eax+8];TThreadList<System.Classes.TPropFixup>.FLock:TObject
 004A6FA8    call        TObject.Free
 004A6FAD    ret
>004A6FAE    jmp         @HandleFinally
>004A6FB3    jmp         004A6F9A
 004A6FB5    cmp         byte ptr [ebp-5],0
>004A6FB9    jle         004A6FC3
 004A6FBB    mov         eax,dword ptr [ebp-4]
 004A6FBE    call        @ClassDestroy
 004A6FC3    pop         ecx
 004A6FC4    pop         ecx
 004A6FC5    pop         ebp
 004A6FC6    ret
*}
end;

//004A6FC8
procedure TThreadList<System.Classes.TPropFixup>.Add(Item:TPropFixup);
begin
{*
 004A6FC8    push        ebp
 004A6FC9    mov         ebp,esp
 004A6FCB    add         esp,0FFFFFFE4
 004A6FCE    push        ebx
 004A6FCF    xor         ecx,ecx
 004A6FD1    mov         dword ptr [ebp-1C],ecx
 004A6FD4    mov         ebx,edx
 004A6FD6    mov         dword ptr [ebp-4],eax
 004A6FD9    xor         eax,eax
 004A6FDB    push        ebp
 004A6FDC    push        4A70B9
 004A6FE1    push        dword ptr fs:[eax]
 004A6FE4    mov         dword ptr fs:[eax],esp
 004A6FE7    mov         eax,dword ptr [ebp-4]
 004A6FEA    call        TThreadList<System.Classes.TPropFixup>.LockList
 004A6FEF    xor         edx,edx
 004A6FF1    push        ebp
 004A6FF2    push        4A709C
 004A6FF7    push        dword ptr fs:[edx]
 004A6FFA    mov         dword ptr fs:[edx],esp
 004A6FFD    mov         eax,dword ptr [ebp-4]
 004A7000    cmp         byte ptr [eax+0C],1
>004A7004    jne         004A700A
 004A7006    mov         al,1
>004A7008    jmp         004A7028
 004A700A    mov         eax,dword ptr [ebp-4]
 004A700D    mov         eax,dword ptr [eax+4]
 004A7010    mov         dword ptr [ebp-8],ebx
 004A7013    add         eax,8
 004A7016    mov         dword ptr [ebp-0C],eax
 004A7019    lea         edx,[ebp-8]
 004A701C    mov         eax,dword ptr [ebp-0C]
 004A701F    call        00434714
 004A7024    inc         eax
 004A7025    sete        al
 004A7028    test        al,al
>004A702A    je          004A7042
 004A702C    mov         eax,dword ptr [ebp-4]
 004A702F    mov         eax,dword ptr [eax+4]
 004A7032    mov         dword ptr [ebp-10],ebx
 004A7035    lea         edx,[ebp-10]
 004A7038    add         eax,8
 004A703B    call        0043489C
>004A7040    jmp         004A7086
 004A7042    mov         eax,dword ptr [ebp-4]
 004A7045    cmp         byte ptr [eax+0C],2
>004A7049    jne         004A7086
 004A704B    mov         eax,dword ptr [ebp-4]
 004A704E    mov         eax,dword ptr [eax+4]
 004A7051    mov         edx,ebx
 004A7053    call        004A7254
 004A7058    mov         dword ptr [ebp-18],eax
 004A705B    mov         byte ptr [ebp-14],0
 004A705F    lea         eax,[ebp-18]
 004A7062    push        eax
 004A7063    push        0
 004A7065    lea         edx,[ebp-1C]
 004A7068    mov         eax,[007C469C];^SResString120:TResStringRec
 004A706D    call        LoadResString
 004A7072    mov         ecx,dword ptr [ebp-1C]
 004A7075    mov         dl,1
 004A7077    mov         eax,[004180BC];EListError
 004A707C    call        Exception.CreateFmt;EListError.Create
 004A7081    call        @RaiseExcept
 004A7086    xor         eax,eax
 004A7088    pop         edx
 004A7089    pop         ecx
 004A708A    pop         ecx
 004A708B    mov         dword ptr fs:[eax],edx
 004A708E    push        4A70A3
 004A7093    mov         eax,dword ptr [ebp-4]
 004A7096    call        TThreadList<System.Classes.TPropFixup>.UnlockList
 004A709B    ret
>004A709C    jmp         @HandleFinally
>004A70A1    jmp         004A7093
 004A70A3    xor         eax,eax
 004A70A5    pop         edx
 004A70A6    pop         ecx
 004A70A7    pop         ecx
 004A70A8    mov         dword ptr fs:[eax],edx
 004A70AB    push        4A70C0
 004A70B0    lea         eax,[ebp-1C]
 004A70B3    call        @UStrClr
 004A70B8    ret
>004A70B9    jmp         @HandleFinally
>004A70BE    jmp         004A70B0
 004A70C0    pop         ebx
 004A70C1    mov         esp,ebp
 004A70C3    pop         ebp
 004A70C4    ret
*}
end;

//004A70C8
function TThreadList<System.Classes.TPropFixup>.LockList:TList<System.Classes.TPropFixup>;
begin
{*
 004A70C8    push        ebx
 004A70C9    push        ecx
 004A70CA    mov         ebx,eax
 004A70CC    mov         eax,dword ptr [ebx+8]
 004A70CF    mov         dword ptr [esp],eax
 004A70D2    call        TMonitor.CheckMonitorSupport
 004A70D7    mov         eax,dword ptr [esp]
 004A70DA    call        TMonitor.GetMonitor
 004A70DF    or          edx,0FFFFFFFF
 004A70E2    call        TMonitor.Enter
 004A70E7    mov         eax,dword ptr [ebx+4]
 004A70EA    pop         edx
 004A70EB    pop         ebx
 004A70EC    ret
*}
end;

//004A70F0
procedure TThreadList<System.Classes.TPropFixup>.UnlockList;
begin
{*
 004A70F0    mov         eax,dword ptr [eax+8]
 004A70F3    call        TMonitor.Exit
 004A70F8    ret
*}
end;

//004A70FC
destructor TEnumerable<System.Classes.TPropFixup>.Destroy();
begin
{*
 004A70FC    push        ebx
 004A70FD    push        esi
 004A70FE    call        @BeforeDestruction
 004A7103    mov         ebx,edx
 004A7105    mov         esi,eax
 004A7107    mov         dl,0FC
 004A7109    and         dl,bl
 004A710B    mov         eax,esi
 004A710D    call        TObject.Destroy
 004A7112    test        bl,bl
>004A7114    jle         004A711D
 004A7116    mov         eax,esi
 004A7118    call        @ClassDestroy
 004A711D    pop         esi
 004A711E    pop         ebx
 004A711F    ret
*}
end;

//004A7120
function TEnumerable<System.Classes.TPropFixup>.GetEnumerator:TEnumerator<System.Classes.TPropFixup>;
begin
{*
 004A7120    mov         edx,dword ptr [eax]
 004A7122    call        dword ptr [edx]
 004A7124    ret
*}
end;

//004A7128
{*procedure TEnumerable<System.Classes.TPropFixup>.ToArray(?:?);
begin
 004A7128    push        ebp
 004A7129    mov         ebp,esp
 004A712B    add         esp,0FFFFFFF4
 004A712E    push        ebx
 004A712F    mov         dword ptr [ebp-4],edx
 004A7132    mov         ebx,eax
 004A7134    mov         dl,1
 004A7136    mov         eax,[00493734];TList<System.Classes.TPropFixup>
 004A713B    call        004A729C
 004A7140    mov         dword ptr [ebp-8],eax
 004A7143    xor         eax,eax
 004A7145    push        ebp
 004A7146    push        4A71D0
 004A714B    push        dword ptr fs:[eax]
 004A714E    mov         dword ptr fs:[eax],esp
 004A7151    mov         eax,ebx
 004A7153    call        TEnumerable<System.Classes.TPropFixup>.GetEnumerator
 004A7158    mov         dword ptr [ebp-0C],eax
 004A715B    xor         eax,eax
 004A715D    push        ebp
 004A715E    push        4A71A8
 004A7163    push        dword ptr fs:[eax]
 004A7166    mov         dword ptr fs:[eax],esp
>004A7169    jmp         004A717E
 004A716B    mov         eax,dword ptr [ebp-0C]
 004A716E    mov         edx,dword ptr [eax]
 004A7170    call        dword ptr [edx]
 004A7172    mov         ebx,eax
 004A7174    mov         edx,ebx
 004A7176    mov         eax,dword ptr [ebp-8]
 004A7179    call        TList<System.Classes.TPropFixup>.Add
 004A717E    mov         eax,dword ptr [ebp-0C]
 004A7181    call        TEnumerator<System.Classes.TPropFixup>.MoveNext
 004A7186    test        al,al
>004A7188    jne         004A716B
 004A718A    xor         eax,eax
 004A718C    pop         edx
 004A718D    pop         ecx
 004A718E    pop         ecx
 004A718F    mov         dword ptr fs:[eax],edx
 004A7192    push        4A71AF
 004A7197    cmp         dword ptr [ebp-0C],0
>004A719B    je          004A71A7
 004A719D    mov         dl,1
 004A719F    mov         eax,dword ptr [ebp-0C]
 004A71A2    mov         ecx,dword ptr [eax]
 004A71A4    call        dword ptr [ecx-4]
 004A71A7    ret
>004A71A8    jmp         @HandleFinally
>004A71AD    jmp         004A7197
 004A71AF    mov         edx,dword ptr [ebp-4]
 004A71B2    mov         eax,dword ptr [ebp-8]
 004A71B5    call        TList<System.Classes.TPropFixup>.ToArray
 004A71BA    xor         eax,eax
 004A71BC    pop         edx
 004A71BD    pop         ecx
 004A71BE    pop         ecx
 004A71BF    mov         dword ptr fs:[eax],edx
 004A71C2    push        4A71D7
 004A71C7    mov         eax,dword ptr [ebp-8]
 004A71CA    call        TObject.Free
 004A71CF    ret
>004A71D0    jmp         @HandleFinally
>004A71D5    jmp         004A71C7
 004A71D7    pop         ebx
 004A71D8    mov         esp,ebp
 004A71DA    pop         ebp
 004A71DB    ret
end;*}

//004A71DC
function TEnumerator<System.Classes.TPropFixup>.MoveNext:Boolean;
begin
{*
 004A71DC    mov         edx,dword ptr [eax]
 004A71DE    call        dword ptr [edx+4]
 004A71E1    ret
*}
end;

//004A722C
procedure sub_004A722C(?:TList<System.Classes.TPropFixup>);
begin
{*
 004A722C    add         eax,8
 004A722F    call        004357A0
 004A7234    ret
*}
end;

//004A7238
{*procedure sub_004A7238(?:?; ?:?);
begin
 004A7238    push        ebx
 004A7239    mov         edx,dword ptr [edx]
 004A723B    mov         ebx,dword ptr [eax]
 004A723D    call        dword ptr [ebx+8]
 004A7240    pop         ebx
 004A7241    ret
end;*}

//004A7244
{*procedure sub_004A7244(?:?; ?:?; ?:?);
begin
 004A7244    push        ebx
 004A7245    mov         edx,dword ptr [edx]
 004A7247    mov         ecx,dword ptr [ecx]
 004A7249    mov         eax,dword ptr [eax+24]
 004A724C    mov         ebx,dword ptr [eax]
 004A724E    call        dword ptr [ebx+0C]
 004A7251    pop         ebx
 004A7252    ret
end;*}

//004A7254
{*function sub_004A7254(?:?; ?:TPropFixup):?;
begin
 004A7254    push        ecx
 004A7255    mov         dword ptr [esp],edx
 004A7258    mov         eax,esp
 004A725A    movzx       edx,byte ptr [eax]
 004A725D    movzx       ecx,byte ptr [eax+1]
 004A7261    shl         ecx,8
 004A7264    add         edx,ecx
 004A7266    movzx       ecx,byte ptr [eax+2]
 004A726A    shl         ecx,10
 004A726D    add         edx,ecx
 004A726F    movzx       eax,byte ptr [eax+3]
 004A7273    shl         eax,18
 004A7276    add         edx,eax
 004A7278    mov         eax,edx
 004A727A    pop         edx
 004A727B    ret
end;*}

//004A727C
procedure sub_004A727C;
begin
{*
 004A727C    call        TList<System.Classes.TPropFixup>.GetEnumerator
 004A7281    ret
*}
end;

//004A7284
{*procedure sub_004A7284(?:?);
begin
 004A7284    push        ebx
 004A7285    cmp         word ptr [eax+2A],0
>004A728A    je          004A7299
 004A728C    push        ecx
 004A728D    mov         ebx,eax
 004A728F    mov         ecx,edx
 004A7291    mov         edx,eax
 004A7293    mov         eax,dword ptr [ebx+2C]
 004A7296    call        dword ptr [ebx+28]
 004A7299    pop         ebx
 004A729A    ret
end;*}

//004A729C
constructor sub_004A729C;
begin
{*
 004A729C    push        ebp
 004A729D    mov         ebp,esp
 004A729F    push        0
 004A72A1    push        ebx
 004A72A2    push        esi
 004A72A3    test        dl,dl
>004A72A5    je          004A72AF
 004A72A7    add         esp,0FFFFFFF0
 004A72AA    call        @ClassCreate
 004A72AF    mov         ebx,edx
 004A72B1    mov         esi,eax
 004A72B3    xor         eax,eax
 004A72B5    push        ebp
 004A72B6    push        4A72F0
 004A72BB    push        dword ptr fs:[eax]
 004A72BE    mov         dword ptr fs:[eax],esp
 004A72C1    lea         edx,[ebp-4]
 004A72C4    mov         eax,[004ADC14];TComparer<System.Classes.TPropFixup>
 004A72C9    call        TComparer<System.Classes.TPropFixup>.Default
 004A72CE    mov         ecx,dword ptr [ebp-4]
 004A72D1    xor         edx,edx
 004A72D3    mov         eax,esi
 004A72D5    call        004A7314
 004A72DA    xor         eax,eax
 004A72DC    pop         edx
 004A72DD    pop         ecx
 004A72DE    pop         ecx
 004A72DF    mov         dword ptr fs:[eax],edx
 004A72E2    push        4A72F7
 004A72E7    lea         eax,[ebp-4]
 004A72EA    call        @IntfClear
 004A72EF    ret
>004A72F0    jmp         @HandleFinally
>004A72F5    jmp         004A72E7
 004A72F7    mov         eax,esi
 004A72F9    test        bl,bl
>004A72FB    je          004A730C
 004A72FD    call        @AfterConstruction
 004A7302    pop         dword ptr fs:[0]
 004A7309    add         esp,0C
 004A730C    mov         eax,esi
 004A730E    pop         esi
 004A730F    pop         ebx
 004A7310    pop         ecx
 004A7311    pop         ebp
 004A7312    ret
*}
end;

//004A7314
constructor sub_004A7314(AComparer:IComparer<System.Classes.TPropFixup>);
begin
{*
 004A7314    push        ebp
 004A7315    mov         ebp,esp
 004A7317    push        0
 004A7319    push        ebx
 004A731A    push        esi
 004A731B    push        edi
 004A731C    test        dl,dl
>004A731E    je          004A7328
 004A7320    add         esp,0FFFFFFF0
 004A7323    call        @ClassCreate
 004A7328    mov         esi,ecx
 004A732A    mov         ebx,edx
 004A732C    mov         edi,eax
 004A732E    xor         eax,eax
 004A7330    push        ebp
 004A7331    push        4A739F
 004A7336    push        dword ptr fs:[eax]
 004A7339    mov         dword ptr fs:[eax],esp
 004A733C    xor         edx,edx
 004A733E    mov         eax,edi
 004A7340    call        TObject.Create
 004A7345    mov         dword ptr [edi+14],edi;TList<System.Classes.TPropFixup>.FOnNotify:TCollectionNotifyEvent...
 004A7348    mov         dword ptr [edi+10],4A7238;TList<System.Classes.TPropFixup>.FOnNotify:TCollectionNotifyEv...
 004A734F    mov         dword ptr [edi+1C],edi
 004A7352    mov         dword ptr [edi+18],4A7244;sub_004A7244
 004A7359    mov         eax,[00493344];TList<System.Classes.TPropFixup>.arrayofT
 004A735E    mov         dword ptr [edi+0C],eax;TList<System.Classes.TPropFixup>.FComparer:IComparer<System.Class...
 004A7361    lea         eax,[edi+24]
 004A7364    mov         edx,esi
 004A7366    call        @IntfCopy
 004A736B    cmp         dword ptr [edi+24],0
>004A736F    jne         004A7389
 004A7371    lea         edx,[ebp-4]
 004A7374    mov         eax,[004ADC14];TComparer<System.Classes.TPropFixup>
 004A7379    call        TComparer<System.Classes.TPropFixup>.Default
 004A737E    mov         edx,dword ptr [ebp-4]
 004A7381    lea         eax,[edi+24]
 004A7384    call        @IntfCopy
 004A7389    xor         eax,eax
 004A738B    pop         edx
 004A738C    pop         ecx
 004A738D    pop         ecx
 004A738E    mov         dword ptr fs:[eax],edx
 004A7391    push        4A73A6
 004A7396    lea         eax,[ebp-4]
 004A7399    call        @IntfClear
 004A739E    ret
>004A739F    jmp         @HandleFinally
>004A73A4    jmp         004A7396
 004A73A6    mov         eax,edi
 004A73A8    test        bl,bl
>004A73AA    je          004A73BB
 004A73AC    call        @AfterConstruction
 004A73B1    pop         dword ptr fs:[0]
 004A73B8    add         esp,0C
 004A73BB    mov         eax,edi
 004A73BD    pop         edi
 004A73BE    pop         esi
 004A73BF    pop         ebx
 004A73C0    pop         ecx
 004A73C1    pop         ebp
 004A73C2    ret
*}
end;

//004A73C4
destructor TList<System.Classes.TPropFixup>.Destroy();
begin
{*
 004A73C4    push        ebx
 004A73C5    push        esi
 004A73C6    call        @BeforeDestruction
 004A73CB    mov         ebx,edx
 004A73CD    mov         esi,eax
 004A73CF    cmp         dword ptr [esi+8],0;TList<System.Classes.TPropFixup>.FCount:Integer
>004A73D3    jle         004A73DE
 004A73D5    xor         edx,edx
 004A73D7    mov         eax,esi
 004A73D9    call        004A722C
 004A73DE    push        0
 004A73E0    lea         eax,[esi+20]
 004A73E3    mov         ecx,1
 004A73E8    mov         edx,dword ptr ds:[493344];TList<System.Classes.TPropFixup>.arrayofT
 004A73EE    call        @DynArraySetLength
 004A73F3    add         esp,4
 004A73F6    mov         dl,0FC
 004A73F8    and         dl,bl
 004A73FA    mov         eax,esi
 004A73FC    call        TEnumerable<System.Classes.TPropFixup>.Destroy
 004A7401    test        bl,bl
>004A7403    jle         004A740C
 004A7405    mov         eax,esi
 004A7407    call        @ClassDestroy
 004A740C    pop         esi
 004A740D    pop         ebx
 004A740E    ret
*}
end;

//004A7410
{*procedure TList<System.Classes.TPropFixup>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A7410    push        ebp
 004A7411    mov         ebp,esp
 004A7413    add         esp,0FFFFFFF0
 004A7416    mov         dword ptr [ebp-8],ecx
 004A7419    mov         dword ptr [ebp-4],edx
 004A741C    push        dword ptr [ebp+4]
 004A741F    mov         eax,dword ptr [ebp-8]
 004A7422    mov         dword ptr [ebp-10],eax
 004A7425    mov         byte ptr [ebp-0C],0
 004A7429    lea         eax,[ebp-10]
 004A742C    push        eax
 004A742D    push        0
 004A742F    mov         ecx,dword ptr [ebp-4]
 004A7432    mov         dl,1
 004A7434    mov         eax,[004180BC];EListError
 004A7439    call        Exception.CreateFmt;EListError.Create
>004A743E    jmp         @RaiseExcept
end;*}

//004A7448
procedure TList<System.Classes.TPropFixup>.Add(Value:TPropFixup);
begin
{*
 004A7448    push        ecx
 004A7449    mov         dword ptr [esp],edx
 004A744C    mov         edx,esp
 004A744E    add         eax,8
 004A7451    call        0043489C
 004A7456    pop         edx
 004A7457    ret
*}
end;

//004A7458
{*procedure TList<System.Classes.TPropFixup>.ToArray(?:?);
begin
 004A7458    push        ecx
 004A7459    mov         dword ptr [esp],edx
 004A745C    mov         edx,dword ptr [esp]
 004A745F    add         eax,8
 004A7462    call        00435980
 004A7467    pop         edx
 004A7468    ret
end;*}

//004A746C
procedure TList<System.Classes.TPropFixup>.GetEnumerator;
begin
{*
 004A746C    mov         ecx,eax
 004A746E    mov         dl,1
 004A7470    mov         eax,[0049357C];TList<System.Classes.TPropFixup>.TEnumerator
 004A7475    call        004A74A8
 004A747A    ret
*}
end;

//004A747C
{*function sub_004A747C(?:?):?;
begin
 004A747C    push        ebx
 004A747D    push        esi
 004A747E    mov         ebx,dword ptr [eax+4]
 004A7481    mov         esi,dword ptr [eax+8]
 004A7484    lea         eax,[ebx+8]
 004A7487    mov         edx,esi
 004A7489    call        00434534
 004A748E    mov         eax,dword ptr [ebx+20]
 004A7491    mov         eax,dword ptr [eax+esi*4]
 004A7494    pop         esi
 004A7495    pop         ebx
 004A7496    ret
end;*}

//004A7498
procedure sub_004A7498;
begin
{*
 004A7498    call        004A747C
 004A749D    ret
*}
end;

//004A74A0
procedure sub_004A74A0;
begin
{*
 004A74A0    call        TList<System.Classes.TPropFixup>.TEnumerator.MoveNext
 004A74A5    ret
*}
end;

//004A74A8
constructor sub_004A74A8(AList:TList<System.Classes.TPropFixup>);
begin
{*
 004A74A8    push        ebx
 004A74A9    push        esi
 004A74AA    push        edi
 004A74AB    test        dl,dl
>004A74AD    je          004A74B7
 004A74AF    add         esp,0FFFFFFF0
 004A74B2    call        @ClassCreate
 004A74B7    mov         esi,ecx
 004A74B9    mov         ebx,edx
 004A74BB    mov         edi,eax
 004A74BD    xor         edx,edx
 004A74BF    mov         eax,edi
 004A74C1    call        TObject.Create
 004A74C6    mov         dword ptr [edi+4],esi;TList<System.Classes.TPropFixup>.TEnumerator.FList:TList<System.Cl...
 004A74C9    mov         dword ptr [edi+8],0FFFFFFFF
 004A74D0    mov         eax,edi
 004A74D2    test        bl,bl
>004A74D4    je          004A74E5
 004A74D6    call        @AfterConstruction
 004A74DB    pop         dword ptr fs:[0]
 004A74E2    add         esp,0C
 004A74E5    mov         eax,edi
 004A74E7    pop         edi
 004A74E8    pop         esi
 004A74E9    pop         ebx
 004A74EA    ret
*}
end;

//004A74EC
function TList<System.Classes.TPropFixup>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A74EC    mov         edx,dword ptr [eax+4]
 004A74EF    mov         edx,dword ptr [edx+8]
 004A74F2    cmp         edx,dword ptr [eax+8]
>004A74F5    jg          004A74FA
 004A74F7    xor         eax,eax
 004A74F9    ret
 004A74FA    inc         dword ptr [eax+8]
 004A74FD    mov         edx,dword ptr [eax+4]
 004A7500    mov         edx,dword ptr [edx+8]
 004A7503    cmp         edx,dword ptr [eax+8]
 004A7506    setg        al
 004A7509    ret
*}
end;

//004A750C
destructor TEnumerable<System.Classes.TPersistent>.Destroy();
begin
{*
 004A750C    push        ebx
 004A750D    push        esi
 004A750E    call        @BeforeDestruction
 004A7513    mov         ebx,edx
 004A7515    mov         esi,eax
 004A7517    mov         dl,0FC
 004A7519    and         dl,bl
 004A751B    mov         eax,esi
 004A751D    call        TObject.Destroy
 004A7522    test        bl,bl
>004A7524    jle         004A752D
 004A7526    mov         eax,esi
 004A7528    call        @ClassDestroy
 004A752D    pop         esi
 004A752E    pop         ebx
 004A752F    ret
*}
end;

//004A7530
function TEnumerable<System.Classes.TPersistent>.GetEnumerator:TEnumerator<System.Classes.TPersistent>;
begin
{*
 004A7530    mov         edx,dword ptr [eax]
 004A7532    call        dword ptr [edx]
 004A7534    ret
*}
end;

//004A7538
{*procedure TEnumerable<System.Classes.TPersistent>.ToArray(?:?);
begin
 004A7538    push        ebp
 004A7539    mov         ebp,esp
 004A753B    add         esp,0FFFFFFF4
 004A753E    push        ebx
 004A753F    mov         dword ptr [ebp-4],edx
 004A7542    mov         ebx,eax
 004A7544    mov         dl,1
 004A7546    mov         eax,[0049B3A8];TList<System.Classes.TPersistent>
 004A754B    call        004A7684
 004A7550    mov         dword ptr [ebp-8],eax
 004A7553    xor         eax,eax
 004A7555    push        ebp
 004A7556    push        4A75E0
 004A755B    push        dword ptr fs:[eax]
 004A755E    mov         dword ptr fs:[eax],esp
 004A7561    mov         eax,ebx
 004A7563    call        TEnumerable<System.Classes.TPersistent>.GetEnumerator
 004A7568    mov         dword ptr [ebp-0C],eax
 004A756B    xor         eax,eax
 004A756D    push        ebp
 004A756E    push        4A75B8
 004A7573    push        dword ptr fs:[eax]
 004A7576    mov         dword ptr fs:[eax],esp
>004A7579    jmp         004A758E
 004A757B    mov         eax,dword ptr [ebp-0C]
 004A757E    mov         edx,dword ptr [eax]
 004A7580    call        dword ptr [edx]
 004A7582    mov         ebx,eax
 004A7584    mov         edx,ebx
 004A7586    mov         eax,dword ptr [ebp-8]
 004A7589    call        TList<System.Classes.TPersistent>.Add
 004A758E    mov         eax,dword ptr [ebp-0C]
 004A7591    call        TEnumerator<System.Classes.TPersistent>.MoveNext
 004A7596    test        al,al
>004A7598    jne         004A757B
 004A759A    xor         eax,eax
 004A759C    pop         edx
 004A759D    pop         ecx
 004A759E    pop         ecx
 004A759F    mov         dword ptr fs:[eax],edx
 004A75A2    push        4A75BF
 004A75A7    cmp         dword ptr [ebp-0C],0
>004A75AB    je          004A75B7
 004A75AD    mov         dl,1
 004A75AF    mov         eax,dword ptr [ebp-0C]
 004A75B2    mov         ecx,dword ptr [eax]
 004A75B4    call        dword ptr [ecx-4]
 004A75B7    ret
>004A75B8    jmp         @HandleFinally
>004A75BD    jmp         004A75A7
 004A75BF    mov         edx,dword ptr [ebp-4]
 004A75C2    mov         eax,dword ptr [ebp-8]
 004A75C5    call        TList<System.Classes.TPersistent>.ToArray
 004A75CA    xor         eax,eax
 004A75CC    pop         edx
 004A75CD    pop         ecx
 004A75CE    pop         ecx
 004A75CF    mov         dword ptr fs:[eax],edx
 004A75D2    push        4A75E7
 004A75D7    mov         eax,dword ptr [ebp-8]
 004A75DA    call        TObject.Free
 004A75DF    ret
>004A75E0    jmp         @HandleFinally
>004A75E5    jmp         004A75D7
 004A75E7    pop         ebx
 004A75E8    mov         esp,ebp
 004A75EA    pop         ebp
 004A75EB    ret
end;*}

//004A75EC
function TEnumerator<System.Classes.TPersistent>.MoveNext:Boolean;
begin
{*
 004A75EC    mov         edx,dword ptr [eax]
 004A75EE    call        dword ptr [edx+4]
 004A75F1    ret
*}
end;

//004A763C
procedure sub_004A763C(?:TList<System.Classes.TPersistent>);
begin
{*
 004A763C    add         eax,8
 004A763F    call        004357A0
 004A7644    ret
*}
end;

//004A7648
{*procedure sub_004A7648(?:?; ?:?);
begin
 004A7648    push        ebx
 004A7649    mov         edx,dword ptr [edx]
 004A764B    mov         ebx,dword ptr [eax]
 004A764D    call        dword ptr [ebx+8]
 004A7650    pop         ebx
 004A7651    ret
end;*}

//004A7654
{*procedure sub_004A7654(?:?; ?:?; ?:?);
begin
 004A7654    push        ebx
 004A7655    mov         edx,dword ptr [edx]
 004A7657    mov         ecx,dword ptr [ecx]
 004A7659    mov         eax,dword ptr [eax+24]
 004A765C    mov         ebx,dword ptr [eax]
 004A765E    call        dword ptr [ebx+0C]
 004A7661    pop         ebx
 004A7662    ret
end;*}

//004A7664
procedure sub_004A7664;
begin
{*
 004A7664    call        TList<System.Classes.TPersistent>.GetEnumerator
 004A7669    ret
*}
end;

//004A766C
{*procedure sub_004A766C(?:?);
begin
 004A766C    push        ebx
 004A766D    cmp         word ptr [eax+2A],0
>004A7672    je          004A7681
 004A7674    push        ecx
 004A7675    mov         ebx,eax
 004A7677    mov         ecx,edx
 004A7679    mov         edx,eax
 004A767B    mov         eax,dword ptr [ebx+2C]
 004A767E    call        dword ptr [ebx+28]
 004A7681    pop         ebx
 004A7682    ret
end;*}

//004A7684
constructor sub_004A7684;
begin
{*
 004A7684    push        ebp
 004A7685    mov         ebp,esp
 004A7687    push        0
 004A7689    push        ebx
 004A768A    push        esi
 004A768B    test        dl,dl
>004A768D    je          004A7697
 004A768F    add         esp,0FFFFFFF0
 004A7692    call        @ClassCreate
 004A7697    mov         ebx,edx
 004A7699    mov         esi,eax
 004A769B    xor         eax,eax
 004A769D    push        ebp
 004A769E    push        4A76D8
 004A76A3    push        dword ptr fs:[eax]
 004A76A6    mov         dword ptr fs:[eax],esp
 004A76A9    lea         edx,[ebp-4]
 004A76AC    mov         eax,[004ADE90];TComparer<System.Classes.TPersistent>
 004A76B1    call        TComparer<System.Classes.TPersistent>.Default
 004A76B6    mov         ecx,dword ptr [ebp-4]
 004A76B9    xor         edx,edx
 004A76BB    mov         eax,esi
 004A76BD    call        004A76FC
 004A76C2    xor         eax,eax
 004A76C4    pop         edx
 004A76C5    pop         ecx
 004A76C6    pop         ecx
 004A76C7    mov         dword ptr fs:[eax],edx
 004A76CA    push        4A76DF
 004A76CF    lea         eax,[ebp-4]
 004A76D2    call        @IntfClear
 004A76D7    ret
>004A76D8    jmp         @HandleFinally
>004A76DD    jmp         004A76CF
 004A76DF    mov         eax,esi
 004A76E1    test        bl,bl
>004A76E3    je          004A76F4
 004A76E5    call        @AfterConstruction
 004A76EA    pop         dword ptr fs:[0]
 004A76F1    add         esp,0C
 004A76F4    mov         eax,esi
 004A76F6    pop         esi
 004A76F7    pop         ebx
 004A76F8    pop         ecx
 004A76F9    pop         ebp
 004A76FA    ret
*}
end;

//004A76FC
constructor sub_004A76FC(AComparer:IComparer<System.Classes.TPersistent>);
begin
{*
 004A76FC    push        ebp
 004A76FD    mov         ebp,esp
 004A76FF    push        0
 004A7701    push        ebx
 004A7702    push        esi
 004A7703    push        edi
 004A7704    test        dl,dl
>004A7706    je          004A7710
 004A7708    add         esp,0FFFFFFF0
 004A770B    call        @ClassCreate
 004A7710    mov         esi,ecx
 004A7712    mov         ebx,edx
 004A7714    mov         edi,eax
 004A7716    xor         eax,eax
 004A7718    push        ebp
 004A7719    push        4A7787
 004A771E    push        dword ptr fs:[eax]
 004A7721    mov         dword ptr fs:[eax],esp
 004A7724    xor         edx,edx
 004A7726    mov         eax,edi
 004A7728    call        TObject.Create
 004A772D    mov         dword ptr [edi+14],edi;TList<System.Classes.TPersistent>.FOnNotify:TCollectionNotifyEven...
 004A7730    mov         dword ptr [edi+10],4A7648;TList<System.Classes.TPersistent>.FOnNotify:TCollectionNotifyE...
 004A7737    mov         dword ptr [edi+1C],edi
 004A773A    mov         dword ptr [edi+18],4A7654;sub_004A7654
 004A7741    mov         eax,[0049AFB0];TList<System.Classes.TPersistent>.arrayofT
 004A7746    mov         dword ptr [edi+0C],eax;TList<System.Classes.TPersistent>.FComparer:IComparer<System.Clas...
 004A7749    lea         eax,[edi+24]
 004A774C    mov         edx,esi
 004A774E    call        @IntfCopy
 004A7753    cmp         dword ptr [edi+24],0
>004A7757    jne         004A7771
 004A7759    lea         edx,[ebp-4]
 004A775C    mov         eax,[004ADE90];TComparer<System.Classes.TPersistent>
 004A7761    call        TComparer<System.Classes.TPersistent>.Default
 004A7766    mov         edx,dword ptr [ebp-4]
 004A7769    lea         eax,[edi+24]
 004A776C    call        @IntfCopy
 004A7771    xor         eax,eax
 004A7773    pop         edx
 004A7774    pop         ecx
 004A7775    pop         ecx
 004A7776    mov         dword ptr fs:[eax],edx
 004A7779    push        4A778E
 004A777E    lea         eax,[ebp-4]
 004A7781    call        @IntfClear
 004A7786    ret
>004A7787    jmp         @HandleFinally
>004A778C    jmp         004A777E
 004A778E    mov         eax,edi
 004A7790    test        bl,bl
>004A7792    je          004A77A3
 004A7794    call        @AfterConstruction
 004A7799    pop         dword ptr fs:[0]
 004A77A0    add         esp,0C
 004A77A3    mov         eax,edi
 004A77A5    pop         edi
 004A77A6    pop         esi
 004A77A7    pop         ebx
 004A77A8    pop         ecx
 004A77A9    pop         ebp
 004A77AA    ret
*}
end;

//004A77AC
destructor TList<System.Classes.TPersistent>.Destroy();
begin
{*
 004A77AC    push        ebx
 004A77AD    push        esi
 004A77AE    call        @BeforeDestruction
 004A77B3    mov         ebx,edx
 004A77B5    mov         esi,eax
 004A77B7    cmp         dword ptr [esi+8],0;TList<System.Classes.TPersistent>.FCount:Integer
>004A77BB    jle         004A77C6
 004A77BD    xor         edx,edx
 004A77BF    mov         eax,esi
 004A77C1    call        004A763C
 004A77C6    push        0
 004A77C8    lea         eax,[esi+20]
 004A77CB    mov         ecx,1
 004A77D0    mov         edx,dword ptr ds:[49AFB0];TList<System.Classes.TPersistent>.arrayofT
 004A77D6    call        @DynArraySetLength
 004A77DB    add         esp,4
 004A77DE    mov         dl,0FC
 004A77E0    and         dl,bl
 004A77E2    mov         eax,esi
 004A77E4    call        TEnumerable<System.Classes.TPersistent>.Destroy
 004A77E9    test        bl,bl
>004A77EB    jle         004A77F4
 004A77ED    mov         eax,esi
 004A77EF    call        @ClassDestroy
 004A77F4    pop         esi
 004A77F5    pop         ebx
 004A77F6    ret
*}
end;

//004A77F8
{*procedure TList<System.Classes.TPersistent>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A77F8    push        ebp
 004A77F9    mov         ebp,esp
 004A77FB    add         esp,0FFFFFFF0
 004A77FE    mov         dword ptr [ebp-8],ecx
 004A7801    mov         dword ptr [ebp-4],edx
 004A7804    push        dword ptr [ebp+4]
 004A7807    mov         eax,dword ptr [ebp-8]
 004A780A    mov         dword ptr [ebp-10],eax
 004A780D    mov         byte ptr [ebp-0C],0
 004A7811    lea         eax,[ebp-10]
 004A7814    push        eax
 004A7815    push        0
 004A7817    mov         ecx,dword ptr [ebp-4]
 004A781A    mov         dl,1
 004A781C    mov         eax,[004180BC];EListError
 004A7821    call        Exception.CreateFmt;EListError.Create
>004A7826    jmp         @RaiseExcept
end;*}

//004A7830
procedure TList<System.Classes.TPersistent>.Add(Value:TPersistent);
begin
{*
 004A7830    push        ecx
 004A7831    mov         dword ptr [esp],edx
 004A7834    mov         edx,esp
 004A7836    add         eax,8
 004A7839    call        0043489C
 004A783E    pop         edx
 004A783F    ret
*}
end;

//004A7840
{*procedure TList<System.Classes.TPersistent>.ToArray(?:?);
begin
 004A7840    push        ecx
 004A7841    mov         dword ptr [esp],edx
 004A7844    mov         edx,dword ptr [esp]
 004A7847    add         eax,8
 004A784A    call        00435980
 004A784F    pop         edx
 004A7850    ret
end;*}

//004A7854
procedure TList<System.Classes.TPersistent>.GetEnumerator;
begin
{*
 004A7854    mov         ecx,eax
 004A7856    mov         dl,1
 004A7858    mov         eax,[0049B1F0];TList<System.Classes.TPersistent>.TEnumerator
 004A785D    call        004A7890
 004A7862    ret
*}
end;

//004A7864
{*function sub_004A7864(?:?):?;
begin
 004A7864    push        ebx
 004A7865    push        esi
 004A7866    mov         ebx,dword ptr [eax+4]
 004A7869    mov         esi,dword ptr [eax+8]
 004A786C    lea         eax,[ebx+8]
 004A786F    mov         edx,esi
 004A7871    call        00434534
 004A7876    mov         eax,dword ptr [ebx+20]
 004A7879    mov         eax,dword ptr [eax+esi*4]
 004A787C    pop         esi
 004A787D    pop         ebx
 004A787E    ret
end;*}

//004A7880
procedure sub_004A7880;
begin
{*
 004A7880    call        004A7864
 004A7885    ret
*}
end;

//004A7888
procedure sub_004A7888;
begin
{*
 004A7888    call        TList<System.Classes.TPersistent>.TEnumerator.MoveNext
 004A788D    ret
*}
end;

//004A7890
constructor sub_004A7890(AList:TList<System.Classes.TPersistent>);
begin
{*
 004A7890    push        ebx
 004A7891    push        esi
 004A7892    push        edi
 004A7893    test        dl,dl
>004A7895    je          004A789F
 004A7897    add         esp,0FFFFFFF0
 004A789A    call        @ClassCreate
 004A789F    mov         esi,ecx
 004A78A1    mov         ebx,edx
 004A78A3    mov         edi,eax
 004A78A5    xor         edx,edx
 004A78A7    mov         eax,edi
 004A78A9    call        TObject.Create
 004A78AE    mov         dword ptr [edi+4],esi;TList<System.Classes.TPersistent>.TEnumerator.FList:TList<System.C...
 004A78B1    mov         dword ptr [edi+8],0FFFFFFFF
 004A78B8    mov         eax,edi
 004A78BA    test        bl,bl
>004A78BC    je          004A78CD
 004A78BE    call        @AfterConstruction
 004A78C3    pop         dword ptr fs:[0]
 004A78CA    add         esp,0C
 004A78CD    mov         eax,edi
 004A78CF    pop         edi
 004A78D0    pop         esi
 004A78D1    pop         ebx
 004A78D2    ret
*}
end;

//004A78D4
function TList<System.Classes.TPersistent>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A78D4    mov         edx,dword ptr [eax+4]
 004A78D7    mov         edx,dword ptr [edx+8]
 004A78DA    cmp         edx,dword ptr [eax+8]
>004A78DD    jg          004A78E2
 004A78DF    xor         eax,eax
 004A78E1    ret
 004A78E2    inc         dword ptr [eax+8]
 004A78E5    mov         edx,dword ptr [eax+4]
 004A78E8    mov         edx,dword ptr [edx+8]
 004A78EB    cmp         edx,dword ptr [eax+8]
 004A78EE    setg        al
 004A78F1    ret
*}
end;

//004A78F4
constructor sub_004A78F4;
begin
{*
 004A78F4    push        ebx
 004A78F5    push        esi
 004A78F6    test        dl,dl
>004A78F8    je          004A7902
 004A78FA    add         esp,0FFFFFFF0
 004A78FD    call        @ClassCreate
 004A7902    mov         ebx,edx
 004A7904    mov         esi,eax
 004A7906    xor         edx,edx
 004A7908    mov         eax,esi
 004A790A    call        TObject.Create
 004A790F    mov         dl,1
 004A7911    mov         eax,[00401728];TObject
 004A7916    call        TObject.Create;TObject.Create
 004A791B    mov         dword ptr [esi+8],eax
 004A791E    mov         dl,1
 004A7920    mov         eax,[0049C86C];TList<System.Classes.TThread>
 004A7925    call        004A7C9C
 004A792A    mov         dword ptr [esi+4],eax
 004A792D    mov         byte ptr [esi+0C],0
 004A7931    mov         eax,esi
 004A7933    test        bl,bl
>004A7935    je          004A7946
 004A7937    call        @AfterConstruction
 004A793C    pop         dword ptr fs:[0]
 004A7943    add         esp,0C
 004A7946    mov         eax,esi
 004A7948    pop         esi
 004A7949    pop         ebx
 004A794A    ret
*}
end;

//004A794C
destructor TThreadList<System.Classes.TThread>.Destroy();
begin
{*
 004A794C    push        ebp
 004A794D    mov         ebp,esp
 004A794F    add         esp,0FFFFFFF8
 004A7952    call        @BeforeDestruction
 004A7957    mov         byte ptr [ebp-5],dl
 004A795A    mov         dword ptr [ebp-4],eax
 004A795D    mov         eax,dword ptr [ebp-4]
 004A7960    call        TThreadList<System.Classes.TThread>.LockList
 004A7965    xor         eax,eax
 004A7967    push        ebp
 004A7968    push        4A79AE
 004A796D    push        dword ptr fs:[eax]
 004A7970    mov         dword ptr fs:[eax],esp
 004A7973    mov         eax,dword ptr [ebp-4]
 004A7976    mov         eax,dword ptr [eax+4]
 004A7979    call        TObject.Free
 004A797E    movzx       edx,byte ptr [ebp-5]
 004A7982    and         dl,0FC
 004A7985    mov         eax,dword ptr [ebp-4]
 004A7988    call        TObject.Destroy
 004A798D    xor         eax,eax
 004A798F    pop         edx
 004A7990    pop         ecx
 004A7991    pop         ecx
 004A7992    mov         dword ptr fs:[eax],edx
 004A7995    push        4A79B5
 004A799A    mov         eax,dword ptr [ebp-4]
 004A799D    call        TThreadList<System.Classes.TThread>.UnlockList
 004A79A2    mov         eax,dword ptr [ebp-4]
 004A79A5    mov         eax,dword ptr [eax+8]
 004A79A8    call        TObject.Free
 004A79AD    ret
>004A79AE    jmp         @HandleFinally
>004A79B3    jmp         004A799A
 004A79B5    cmp         byte ptr [ebp-5],0
>004A79B9    jle         004A79C3
 004A79BB    mov         eax,dword ptr [ebp-4]
 004A79BE    call        @ClassDestroy
 004A79C3    pop         ecx
 004A79C4    pop         ecx
 004A79C5    pop         ebp
 004A79C6    ret
*}
end;

//004A79C8
procedure TThreadList<System.Classes.TThread>.Add(Item:TThread);
begin
{*
 004A79C8    push        ebp
 004A79C9    mov         ebp,esp
 004A79CB    add         esp,0FFFFFFE4
 004A79CE    push        ebx
 004A79CF    xor         ecx,ecx
 004A79D1    mov         dword ptr [ebp-1C],ecx
 004A79D4    mov         ebx,edx
 004A79D6    mov         dword ptr [ebp-4],eax
 004A79D9    xor         eax,eax
 004A79DB    push        ebp
 004A79DC    push        4A7AB9
 004A79E1    push        dword ptr fs:[eax]
 004A79E4    mov         dword ptr fs:[eax],esp
 004A79E7    mov         eax,dword ptr [ebp-4]
 004A79EA    call        TThreadList<System.Classes.TThread>.LockList
 004A79EF    xor         edx,edx
 004A79F1    push        ebp
 004A79F2    push        4A7A9C
 004A79F7    push        dword ptr fs:[edx]
 004A79FA    mov         dword ptr fs:[edx],esp
 004A79FD    mov         eax,dword ptr [ebp-4]
 004A7A00    cmp         byte ptr [eax+0C],1
>004A7A04    jne         004A7A0A
 004A7A06    mov         al,1
>004A7A08    jmp         004A7A28
 004A7A0A    mov         eax,dword ptr [ebp-4]
 004A7A0D    mov         eax,dword ptr [eax+4]
 004A7A10    mov         dword ptr [ebp-8],ebx
 004A7A13    add         eax,8
 004A7A16    mov         dword ptr [ebp-0C],eax
 004A7A19    lea         edx,[ebp-8]
 004A7A1C    mov         eax,dword ptr [ebp-0C]
 004A7A1F    call        00434714
 004A7A24    inc         eax
 004A7A25    sete        al
 004A7A28    test        al,al
>004A7A2A    je          004A7A42
 004A7A2C    mov         eax,dword ptr [ebp-4]
 004A7A2F    mov         eax,dword ptr [eax+4]
 004A7A32    mov         dword ptr [ebp-10],ebx
 004A7A35    lea         edx,[ebp-10]
 004A7A38    add         eax,8
 004A7A3B    call        0043489C
>004A7A40    jmp         004A7A86
 004A7A42    mov         eax,dword ptr [ebp-4]
 004A7A45    cmp         byte ptr [eax+0C],2
>004A7A49    jne         004A7A86
 004A7A4B    mov         eax,dword ptr [ebp-4]
 004A7A4E    mov         eax,dword ptr [eax+4]
 004A7A51    mov         edx,ebx
 004A7A53    call        004A7C54
 004A7A58    mov         dword ptr [ebp-18],eax
 004A7A5B    mov         byte ptr [ebp-14],0
 004A7A5F    lea         eax,[ebp-18]
 004A7A62    push        eax
 004A7A63    push        0
 004A7A65    lea         edx,[ebp-1C]
 004A7A68    mov         eax,[007C469C];^SResString120:TResStringRec
 004A7A6D    call        LoadResString
 004A7A72    mov         ecx,dword ptr [ebp-1C]
 004A7A75    mov         dl,1
 004A7A77    mov         eax,[004180BC];EListError
 004A7A7C    call        Exception.CreateFmt;EListError.Create
 004A7A81    call        @RaiseExcept
 004A7A86    xor         eax,eax
 004A7A88    pop         edx
 004A7A89    pop         ecx
 004A7A8A    pop         ecx
 004A7A8B    mov         dword ptr fs:[eax],edx
 004A7A8E    push        4A7AA3
 004A7A93    mov         eax,dword ptr [ebp-4]
 004A7A96    call        TThreadList<System.Classes.TThread>.UnlockList
 004A7A9B    ret
>004A7A9C    jmp         @HandleFinally
>004A7AA1    jmp         004A7A93
 004A7AA3    xor         eax,eax
 004A7AA5    pop         edx
 004A7AA6    pop         ecx
 004A7AA7    pop         ecx
 004A7AA8    mov         dword ptr fs:[eax],edx
 004A7AAB    push        4A7AC0
 004A7AB0    lea         eax,[ebp-1C]
 004A7AB3    call        @UStrClr
 004A7AB8    ret
>004A7AB9    jmp         @HandleFinally
>004A7ABE    jmp         004A7AB0
 004A7AC0    pop         ebx
 004A7AC1    mov         esp,ebp
 004A7AC3    pop         ebp
 004A7AC4    ret
*}
end;

//004A7AC8
function TThreadList<System.Classes.TThread>.LockList:TList<System.Classes.TThread>;
begin
{*
 004A7AC8    push        ebx
 004A7AC9    push        ecx
 004A7ACA    mov         ebx,eax
 004A7ACC    mov         eax,dword ptr [ebx+8]
 004A7ACF    mov         dword ptr [esp],eax
 004A7AD2    call        TMonitor.CheckMonitorSupport
 004A7AD7    mov         eax,dword ptr [esp]
 004A7ADA    call        TMonitor.GetMonitor
 004A7ADF    or          edx,0FFFFFFFF
 004A7AE2    call        TMonitor.Enter
 004A7AE7    mov         eax,dword ptr [ebx+4]
 004A7AEA    pop         edx
 004A7AEB    pop         ebx
 004A7AEC    ret
*}
end;

//004A7AF0
procedure TThreadList<System.Classes.TThread>.UnlockList;
begin
{*
 004A7AF0    mov         eax,dword ptr [eax+8]
 004A7AF3    call        TMonitor.Exit
 004A7AF8    ret
*}
end;

//004A7AFC
destructor TEnumerable<System.Classes.TThread>.Destroy();
begin
{*
 004A7AFC    push        ebx
 004A7AFD    push        esi
 004A7AFE    call        @BeforeDestruction
 004A7B03    mov         ebx,edx
 004A7B05    mov         esi,eax
 004A7B07    mov         dl,0FC
 004A7B09    and         dl,bl
 004A7B0B    mov         eax,esi
 004A7B0D    call        TObject.Destroy
 004A7B12    test        bl,bl
>004A7B14    jle         004A7B1D
 004A7B16    mov         eax,esi
 004A7B18    call        @ClassDestroy
 004A7B1D    pop         esi
 004A7B1E    pop         ebx
 004A7B1F    ret
*}
end;

//004A7B20
function TEnumerable<System.Classes.TThread>.GetEnumerator:TEnumerator<System.Classes.TThread>;
begin
{*
 004A7B20    mov         edx,dword ptr [eax]
 004A7B22    call        dword ptr [edx]
 004A7B24    ret
*}
end;

//004A7B28
{*procedure TEnumerable<System.Classes.TThread>.ToArray(?:?);
begin
 004A7B28    push        ebp
 004A7B29    mov         ebp,esp
 004A7B2B    add         esp,0FFFFFFF4
 004A7B2E    push        ebx
 004A7B2F    mov         dword ptr [ebp-4],edx
 004A7B32    mov         ebx,eax
 004A7B34    mov         dl,1
 004A7B36    mov         eax,[0049C86C];TList<System.Classes.TThread>
 004A7B3B    call        004A7C9C
 004A7B40    mov         dword ptr [ebp-8],eax
 004A7B43    xor         eax,eax
 004A7B45    push        ebp
 004A7B46    push        4A7BD0
 004A7B4B    push        dword ptr fs:[eax]
 004A7B4E    mov         dword ptr fs:[eax],esp
 004A7B51    mov         eax,ebx
 004A7B53    call        TEnumerable<System.Classes.TThread>.GetEnumerator
 004A7B58    mov         dword ptr [ebp-0C],eax
 004A7B5B    xor         eax,eax
 004A7B5D    push        ebp
 004A7B5E    push        4A7BA8
 004A7B63    push        dword ptr fs:[eax]
 004A7B66    mov         dword ptr fs:[eax],esp
>004A7B69    jmp         004A7B7E
 004A7B6B    mov         eax,dword ptr [ebp-0C]
 004A7B6E    mov         edx,dword ptr [eax]
 004A7B70    call        dword ptr [edx]
 004A7B72    mov         ebx,eax
 004A7B74    mov         edx,ebx
 004A7B76    mov         eax,dword ptr [ebp-8]
 004A7B79    call        TList<System.Classes.TThread>.Add
 004A7B7E    mov         eax,dword ptr [ebp-0C]
 004A7B81    call        TEnumerator<System.Classes.TThread>.MoveNext
 004A7B86    test        al,al
>004A7B88    jne         004A7B6B
 004A7B8A    xor         eax,eax
 004A7B8C    pop         edx
 004A7B8D    pop         ecx
 004A7B8E    pop         ecx
 004A7B8F    mov         dword ptr fs:[eax],edx
 004A7B92    push        4A7BAF
 004A7B97    cmp         dword ptr [ebp-0C],0
>004A7B9B    je          004A7BA7
 004A7B9D    mov         dl,1
 004A7B9F    mov         eax,dword ptr [ebp-0C]
 004A7BA2    mov         ecx,dword ptr [eax]
 004A7BA4    call        dword ptr [ecx-4]
 004A7BA7    ret
>004A7BA8    jmp         @HandleFinally
>004A7BAD    jmp         004A7B97
 004A7BAF    mov         edx,dword ptr [ebp-4]
 004A7BB2    mov         eax,dword ptr [ebp-8]
 004A7BB5    call        TList<System.Classes.TThread>.ToArray
 004A7BBA    xor         eax,eax
 004A7BBC    pop         edx
 004A7BBD    pop         ecx
 004A7BBE    pop         ecx
 004A7BBF    mov         dword ptr fs:[eax],edx
 004A7BC2    push        4A7BD7
 004A7BC7    mov         eax,dword ptr [ebp-8]
 004A7BCA    call        TObject.Free
 004A7BCF    ret
>004A7BD0    jmp         @HandleFinally
>004A7BD5    jmp         004A7BC7
 004A7BD7    pop         ebx
 004A7BD8    mov         esp,ebp
 004A7BDA    pop         ebp
 004A7BDB    ret
end;*}

//004A7BDC
function TEnumerator<System.Classes.TThread>.MoveNext:Boolean;
begin
{*
 004A7BDC    mov         edx,dword ptr [eax]
 004A7BDE    call        dword ptr [edx+4]
 004A7BE1    ret
*}
end;

//004A7C2C
procedure sub_004A7C2C(?:TList<System.Classes.TThread>);
begin
{*
 004A7C2C    add         eax,8
 004A7C2F    call        004357A0
 004A7C34    ret
*}
end;

//004A7C38
{*procedure sub_004A7C38(?:?; ?:?);
begin
 004A7C38    push        ebx
 004A7C39    mov         edx,dword ptr [edx]
 004A7C3B    mov         ebx,dword ptr [eax]
 004A7C3D    call        dword ptr [ebx+8]
 004A7C40    pop         ebx
 004A7C41    ret
end;*}

//004A7C44
{*procedure sub_004A7C44(?:?; ?:?; ?:?);
begin
 004A7C44    push        ebx
 004A7C45    mov         edx,dword ptr [edx]
 004A7C47    mov         ecx,dword ptr [ecx]
 004A7C49    mov         eax,dword ptr [eax+24]
 004A7C4C    mov         ebx,dword ptr [eax]
 004A7C4E    call        dword ptr [ebx+0C]
 004A7C51    pop         ebx
 004A7C52    ret
end;*}

//004A7C54
{*function sub_004A7C54(?:?; ?:TThread):?;
begin
 004A7C54    push        ecx
 004A7C55    mov         dword ptr [esp],edx
 004A7C58    mov         eax,esp
 004A7C5A    movzx       edx,byte ptr [eax]
 004A7C5D    movzx       ecx,byte ptr [eax+1]
 004A7C61    shl         ecx,8
 004A7C64    add         edx,ecx
 004A7C66    movzx       ecx,byte ptr [eax+2]
 004A7C6A    shl         ecx,10
 004A7C6D    add         edx,ecx
 004A7C6F    movzx       eax,byte ptr [eax+3]
 004A7C73    shl         eax,18
 004A7C76    add         edx,eax
 004A7C78    mov         eax,edx
 004A7C7A    pop         edx
 004A7C7B    ret
end;*}

//004A7C7C
procedure sub_004A7C7C;
begin
{*
 004A7C7C    call        TList<System.Classes.TThread>.GetEnumerator
 004A7C81    ret
*}
end;

//004A7C84
{*procedure sub_004A7C84(?:?);
begin
 004A7C84    push        ebx
 004A7C85    cmp         word ptr [eax+2A],0
>004A7C8A    je          004A7C99
 004A7C8C    push        ecx
 004A7C8D    mov         ebx,eax
 004A7C8F    mov         ecx,edx
 004A7C91    mov         edx,eax
 004A7C93    mov         eax,dword ptr [ebx+2C]
 004A7C96    call        dword ptr [ebx+28]
 004A7C99    pop         ebx
 004A7C9A    ret
end;*}

//004A7C9C
constructor sub_004A7C9C;
begin
{*
 004A7C9C    push        ebp
 004A7C9D    mov         ebp,esp
 004A7C9F    push        0
 004A7CA1    push        ebx
 004A7CA2    push        esi
 004A7CA3    test        dl,dl
>004A7CA5    je          004A7CAF
 004A7CA7    add         esp,0FFFFFFF0
 004A7CAA    call        @ClassCreate
 004A7CAF    mov         ebx,edx
 004A7CB1    mov         esi,eax
 004A7CB3    xor         eax,eax
 004A7CB5    push        ebp
 004A7CB6    push        4A7CF0
 004A7CBB    push        dword ptr fs:[eax]
 004A7CBE    mov         dword ptr fs:[eax],esp
 004A7CC1    lea         edx,[ebp-4]
 004A7CC4    mov         eax,[004AE108];TComparer<System.Classes.TThread>
 004A7CC9    call        TComparer<System.Classes.TThread>.Default
 004A7CCE    mov         ecx,dword ptr [ebp-4]
 004A7CD1    xor         edx,edx
 004A7CD3    mov         eax,esi
 004A7CD5    call        004A7D14
 004A7CDA    xor         eax,eax
 004A7CDC    pop         edx
 004A7CDD    pop         ecx
 004A7CDE    pop         ecx
 004A7CDF    mov         dword ptr fs:[eax],edx
 004A7CE2    push        4A7CF7
 004A7CE7    lea         eax,[ebp-4]
 004A7CEA    call        @IntfClear
 004A7CEF    ret
>004A7CF0    jmp         @HandleFinally
>004A7CF5    jmp         004A7CE7
 004A7CF7    mov         eax,esi
 004A7CF9    test        bl,bl
>004A7CFB    je          004A7D0C
 004A7CFD    call        @AfterConstruction
 004A7D02    pop         dword ptr fs:[0]
 004A7D09    add         esp,0C
 004A7D0C    mov         eax,esi
 004A7D0E    pop         esi
 004A7D0F    pop         ebx
 004A7D10    pop         ecx
 004A7D11    pop         ebp
 004A7D12    ret
*}
end;

//004A7D14
constructor sub_004A7D14(AComparer:IComparer<System.Classes.TThread>);
begin
{*
 004A7D14    push        ebp
 004A7D15    mov         ebp,esp
 004A7D17    push        0
 004A7D19    push        ebx
 004A7D1A    push        esi
 004A7D1B    push        edi
 004A7D1C    test        dl,dl
>004A7D1E    je          004A7D28
 004A7D20    add         esp,0FFFFFFF0
 004A7D23    call        @ClassCreate
 004A7D28    mov         esi,ecx
 004A7D2A    mov         ebx,edx
 004A7D2C    mov         edi,eax
 004A7D2E    xor         eax,eax
 004A7D30    push        ebp
 004A7D31    push        4A7D9F
 004A7D36    push        dword ptr fs:[eax]
 004A7D39    mov         dword ptr fs:[eax],esp
 004A7D3C    xor         edx,edx
 004A7D3E    mov         eax,edi
 004A7D40    call        TObject.Create
 004A7D45    mov         dword ptr [edi+14],edi;TList<System.Classes.TThread>.FOnNotify:TCollectionNotifyEvent<Sy...
 004A7D48    mov         dword ptr [edi+10],4A7C38;TList<System.Classes.TThread>.FOnNotify:TCollectionNotifyEvent...
 004A7D4F    mov         dword ptr [edi+1C],edi
 004A7D52    mov         dword ptr [edi+18],4A7C44;sub_004A7C44
 004A7D59    mov         eax,[0049C494];TList<System.Classes.TThread>.arrayofT
 004A7D5E    mov         dword ptr [edi+0C],eax;TList<System.Classes.TThread>.FComparer:IComparer<System.Classes....
 004A7D61    lea         eax,[edi+24]
 004A7D64    mov         edx,esi
 004A7D66    call        @IntfCopy
 004A7D6B    cmp         dword ptr [edi+24],0
>004A7D6F    jne         004A7D89
 004A7D71    lea         edx,[ebp-4]
 004A7D74    mov         eax,[004AE108];TComparer<System.Classes.TThread>
 004A7D79    call        TComparer<System.Classes.TThread>.Default
 004A7D7E    mov         edx,dword ptr [ebp-4]
 004A7D81    lea         eax,[edi+24]
 004A7D84    call        @IntfCopy
 004A7D89    xor         eax,eax
 004A7D8B    pop         edx
 004A7D8C    pop         ecx
 004A7D8D    pop         ecx
 004A7D8E    mov         dword ptr fs:[eax],edx
 004A7D91    push        4A7DA6
 004A7D96    lea         eax,[ebp-4]
 004A7D99    call        @IntfClear
 004A7D9E    ret
>004A7D9F    jmp         @HandleFinally
>004A7DA4    jmp         004A7D96
 004A7DA6    mov         eax,edi
 004A7DA8    test        bl,bl
>004A7DAA    je          004A7DBB
 004A7DAC    call        @AfterConstruction
 004A7DB1    pop         dword ptr fs:[0]
 004A7DB8    add         esp,0C
 004A7DBB    mov         eax,edi
 004A7DBD    pop         edi
 004A7DBE    pop         esi
 004A7DBF    pop         ebx
 004A7DC0    pop         ecx
 004A7DC1    pop         ebp
 004A7DC2    ret
*}
end;

//004A7DC4
destructor TList<System.Classes.TThread>.Destroy();
begin
{*
 004A7DC4    push        ebx
 004A7DC5    push        esi
 004A7DC6    call        @BeforeDestruction
 004A7DCB    mov         ebx,edx
 004A7DCD    mov         esi,eax
 004A7DCF    cmp         dword ptr [esi+8],0;TList<System.Classes.TThread>.FCount:Integer
>004A7DD3    jle         004A7DDE
 004A7DD5    xor         edx,edx
 004A7DD7    mov         eax,esi
 004A7DD9    call        004A7C2C
 004A7DDE    push        0
 004A7DE0    lea         eax,[esi+20]
 004A7DE3    mov         ecx,1
 004A7DE8    mov         edx,dword ptr ds:[49C494];TList<System.Classes.TThread>.arrayofT
 004A7DEE    call        @DynArraySetLength
 004A7DF3    add         esp,4
 004A7DF6    mov         dl,0FC
 004A7DF8    and         dl,bl
 004A7DFA    mov         eax,esi
 004A7DFC    call        TEnumerable<System.Classes.TThread>.Destroy
 004A7E01    test        bl,bl
>004A7E03    jle         004A7E0C
 004A7E05    mov         eax,esi
 004A7E07    call        @ClassDestroy
 004A7E0C    pop         esi
 004A7E0D    pop         ebx
 004A7E0E    ret
*}
end;

//004A7E10
{*procedure TList<System.Classes.TThread>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A7E10    push        ebp
 004A7E11    mov         ebp,esp
 004A7E13    add         esp,0FFFFFFF0
 004A7E16    mov         dword ptr [ebp-8],ecx
 004A7E19    mov         dword ptr [ebp-4],edx
 004A7E1C    push        dword ptr [ebp+4]
 004A7E1F    mov         eax,dword ptr [ebp-8]
 004A7E22    mov         dword ptr [ebp-10],eax
 004A7E25    mov         byte ptr [ebp-0C],0
 004A7E29    lea         eax,[ebp-10]
 004A7E2C    push        eax
 004A7E2D    push        0
 004A7E2F    mov         ecx,dword ptr [ebp-4]
 004A7E32    mov         dl,1
 004A7E34    mov         eax,[004180BC];EListError
 004A7E39    call        Exception.CreateFmt;EListError.Create
>004A7E3E    jmp         @RaiseExcept
end;*}

//004A7E48
procedure TList<System.Classes.TThread>.Add(Value:TThread);
begin
{*
 004A7E48    push        ecx
 004A7E49    mov         dword ptr [esp],edx
 004A7E4C    mov         edx,esp
 004A7E4E    add         eax,8
 004A7E51    call        0043489C
 004A7E56    pop         edx
 004A7E57    ret
*}
end;

//004A7E58
{*procedure TList<System.Classes.TThread>.ToArray(?:?);
begin
 004A7E58    push        ecx
 004A7E59    mov         dword ptr [esp],edx
 004A7E5C    mov         edx,dword ptr [esp]
 004A7E5F    add         eax,8
 004A7E62    call        00435980
 004A7E67    pop         edx
 004A7E68    ret
end;*}

//004A7E6C
procedure TList<System.Classes.TThread>.GetEnumerator;
begin
{*
 004A7E6C    mov         ecx,eax
 004A7E6E    mov         dl,1
 004A7E70    mov         eax,[0049C6BC];TList<System.Classes.TThread>.TEnumerator
 004A7E75    call        004A7EA8
 004A7E7A    ret
*}
end;

//004A7E7C
{*function sub_004A7E7C(?:?):?;
begin
 004A7E7C    push        ebx
 004A7E7D    push        esi
 004A7E7E    mov         ebx,dword ptr [eax+4]
 004A7E81    mov         esi,dword ptr [eax+8]
 004A7E84    lea         eax,[ebx+8]
 004A7E87    mov         edx,esi
 004A7E89    call        00434534
 004A7E8E    mov         eax,dword ptr [ebx+20]
 004A7E91    mov         eax,dword ptr [eax+esi*4]
 004A7E94    pop         esi
 004A7E95    pop         ebx
 004A7E96    ret
end;*}

//004A7E98
procedure sub_004A7E98;
begin
{*
 004A7E98    call        004A7E7C
 004A7E9D    ret
*}
end;

//004A7EA0
procedure sub_004A7EA0;
begin
{*
 004A7EA0    call        TList<System.Classes.TThread>.TEnumerator.MoveNext
 004A7EA5    ret
*}
end;

//004A7EA8
constructor sub_004A7EA8(AList:TList<System.Classes.TThread>);
begin
{*
 004A7EA8    push        ebx
 004A7EA9    push        esi
 004A7EAA    push        edi
 004A7EAB    test        dl,dl
>004A7EAD    je          004A7EB7
 004A7EAF    add         esp,0FFFFFFF0
 004A7EB2    call        @ClassCreate
 004A7EB7    mov         esi,ecx
 004A7EB9    mov         ebx,edx
 004A7EBB    mov         edi,eax
 004A7EBD    xor         edx,edx
 004A7EBF    mov         eax,edi
 004A7EC1    call        TObject.Create
 004A7EC6    mov         dword ptr [edi+4],esi;TList<System.Classes.TThread>.TEnumerator.FList:TList<System.Class...
 004A7EC9    mov         dword ptr [edi+8],0FFFFFFFF
 004A7ED0    mov         eax,edi
 004A7ED2    test        bl,bl
>004A7ED4    je          004A7EE5
 004A7ED6    call        @AfterConstruction
 004A7EDB    pop         dword ptr fs:[0]
 004A7EE2    add         esp,0C
 004A7EE5    mov         eax,edi
 004A7EE7    pop         edi
 004A7EE8    pop         esi
 004A7EE9    pop         ebx
 004A7EEA    ret
*}
end;

//004A7EEC
function TList<System.Classes.TThread>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A7EEC    mov         edx,dword ptr [eax+4]
 004A7EEF    mov         edx,dword ptr [edx+8]
 004A7EF2    cmp         edx,dword ptr [eax+8]
>004A7EF5    jg          004A7EFA
 004A7EF7    xor         eax,eax
 004A7EF9    ret
 004A7EFA    inc         dword ptr [eax+8]
 004A7EFD    mov         edx,dword ptr [eax+4]
 004A7F00    mov         edx,dword ptr [edx+8]
 004A7F03    cmp         edx,dword ptr [eax+8]
 004A7F06    setg        al
 004A7F09    ret
*}
end;

//004A7F0C
function TComparer<System.Classes.TComponent>.Default:IComparer<System.Classes.TComponent>;
begin
{*
 004A7F0C    push        ebx
 004A7F0D    mov         ebx,edx
 004A7F0F    mov         ecx,4
 004A7F14    mov         edx,dword ptr ds:[479744];TComponent
 004A7F1A    xor         eax,eax
 004A7F1C    call        _LookupVtableInfo
 004A7F21    mov         edx,eax
 004A7F23    mov         eax,ebx
 004A7F25    call        @IntfCopy
 004A7F2A    pop         ebx
 004A7F2B    ret
*}
end;

//004A7F2C
constructor TDelegatedComparer<System.Actions.TContainedAction>.Create;
begin
{*
 004A7F2C    push        ebx
 004A7F2D    push        esi
 004A7F2E    push        edi
 004A7F2F    test        dl,dl
>004A7F31    je          004A7F3B
 004A7F33    add         esp,0FFFFFFF0
 004A7F36    call        @ClassCreate
 004A7F3B    mov         esi,ecx
 004A7F3D    mov         ebx,edx
 004A7F3F    mov         edi,eax
 004A7F41    lea         eax,[edi+10]
 004A7F44    mov         edx,esi
 004A7F46    call        @IntfCopy
 004A7F4B    mov         eax,edi
 004A7F4D    test        bl,bl
>004A7F4F    je          004A7F60
 004A7F51    call        @AfterConstruction
 004A7F56    pop         dword ptr fs:[0]
 004A7F5D    add         esp,0C
 004A7F60    mov         eax,edi
 004A7F62    pop         edi
 004A7F63    pop         esi
 004A7F64    pop         ebx
 004A7F65    ret
*}
end;

//004A7F68
function TDelegatedComparer<System.Classes.TComponent>.Compare(Left:TComponent; Right:TComponent):Integer;
begin
{*
 004A7F68    push        ebx
 004A7F69    mov         eax,dword ptr [eax+10]
 004A7F6C    mov         ebx,dword ptr [eax]
 004A7F6E    call        dword ptr [ebx+0C]
 004A7F71    pop         ebx
 004A7F72    ret
*}
end;

//004A7F74
function TComparer<System.IInterface>.Default:IComparer<System.IInterface>;
begin
{*
 004A7F74    push        ebx
 004A7F75    mov         ebx,edx
 004A7F77    mov         ecx,4
 004A7F7C    mov         edx,dword ptr ds:[4022C8];IInterface
 004A7F82    xor         eax,eax
 004A7F84    call        _LookupVtableInfo
 004A7F89    mov         edx,eax
 004A7F8B    mov         eax,ebx
 004A7F8D    call        @IntfCopy
 004A7F92    pop         ebx
 004A7F93    ret
*}
end;

//004A7F94
function TComparer<System.Classes.TCollectionItem>.Default:IComparer<System.Classes.TCollectionItem>;
begin
{*
 004A7F94    push        ebx
 004A7F95    mov         ebx,edx
 004A7F97    mov         ecx,4
 004A7F9C    mov         edx,dword ptr ds:[46DC84];TCollectionItem
 004A7FA2    xor         eax,eax
 004A7FA4    call        _LookupVtableInfo
 004A7FA9    mov         edx,eax
 004A7FAB    mov         eax,ebx
 004A7FAD    call        @IntfCopy
 004A7FB2    pop         ebx
 004A7FB3    ret
*}
end;

//004A7FB4
function TComparer<System.TObject>.Default:IComparer<System.TObject>;
begin
{*
 004A7FB4    push        ebx
 004A7FB5    mov         ebx,edx
 004A7FB7    mov         ecx,4
 004A7FBC    mov         edx,dword ptr ds:[401FA0];TObject
 004A7FC2    xor         eax,eax
 004A7FC4    call        _LookupVtableInfo
 004A7FC9    mov         edx,eax
 004A7FCB    mov         eax,ebx
 004A7FCD    call        @IntfCopy
 004A7FD2    pop         ebx
 004A7FD3    ret
*}
end;

//004A7FD4
{*procedure sub_004A7FD4(?:?; ?:?; ?:?; ?:?);
begin
 004A7FD4    push        ebp
 004A7FD5    mov         ebp,esp
 004A7FD7    push        ecx
 004A7FD8    push        ebx
 004A7FD9    push        esi
 004A7FDA    mov         dword ptr [ebp-4],eax
 004A7FDD    mov         esi,dword ptr [ebp+8]
 004A7FE0    mov         eax,dword ptr [ebp+0C]
 004A7FE3    test        eax,eax
>004A7FE5    jl          004A8002
 004A7FE7    cmp         eax,edx
>004A7FE9    jle         004A7FEF
 004A7FEB    test        esi,esi
>004A7FED    jg          004A8002
 004A7FEF    lea         ebx,[esi+eax]
 004A7FF2    dec         ebx
 004A7FF3    cmp         ebx,edx
>004A7FF5    jg          004A8002
 004A7FF7    test        esi,esi
>004A7FF9    jl          004A8002
 004A7FFB    lea         ebx,[esi+eax]
 004A7FFE    test        ebx,ebx
>004A8000    jge         004A8019
 004A8002    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004A8008    mov         dl,1
 004A800A    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004A800F    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004A8014    call        @RaiseExcept
 004A8019    cmp         esi,1
>004A801C    jle         004A802B
 004A801E    push        eax
 004A801F    add         esi,eax
 004A8021    dec         esi
 004A8022    push        esi
 004A8023    mov         eax,dword ptr [ebp-4]
 004A8026    call        004A8C14
 004A802B    pop         esi
 004A802C    pop         ebx
 004A802D    pop         ecx
 004A802E    pop         ebp
 004A802F    ret         8
end;*}

//004A807C
procedure sub_004A807C(?:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>);
begin
{*
 004A807C    add         eax,8
 004A807F    call        00435860
 004A8084    ret
*}
end;

//004A8088
{*procedure sub_004A8088(?:?);
begin
 004A8088    push        ebx
 004A8089    push        esi
 004A808A    mov         esi,eax
 004A808C    mov         eax,esi
 004A808E    mov         ebx,dword ptr [eax]
 004A8090    call        dword ptr [ebx+8]
 004A8093    pop         esi
 004A8094    pop         ebx
 004A8095    ret
end;*}

//004A8098
{*procedure sub_004A8098(?:?);
begin
 004A8098    push        ebx
 004A8099    push        esi
 004A809A    mov         esi,eax
 004A809C    mov         eax,dword ptr [esi+24]
 004A809F    mov         ebx,dword ptr [eax]
 004A80A1    call        dword ptr [ebx+0C]
 004A80A4    pop         esi
 004A80A5    pop         ebx
 004A80A6    ret
end;*}

//004A80A8
procedure sub_004A80A8;
begin
{*
 004A80A8    call        TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator
 004A80AD    ret
*}
end;

//004A80B0
{*procedure sub_004A80B0(?:?);
begin
 004A80B0    push        esi
 004A80B1    mov         esi,eax
 004A80B3    cmp         word ptr [esi+2A],0
>004A80B8    je          004A80C5
 004A80BA    push        ecx
 004A80BB    mov         ecx,edx
 004A80BD    mov         edx,esi
 004A80BF    mov         eax,dword ptr [esi+2C]
 004A80C2    call        dword ptr [esi+28]
 004A80C5    pop         esi
 004A80C6    ret
end;*}

//004A80C8
constructor sub_004A80C8;
begin
{*
 004A80C8    push        ebp
 004A80C9    mov         ebp,esp
 004A80CB    push        0
 004A80CD    push        ebx
 004A80CE    push        esi
 004A80CF    test        dl,dl
>004A80D1    je          004A80DB
 004A80D3    add         esp,0FFFFFFF0
 004A80D6    call        @ClassCreate
 004A80DB    mov         ebx,edx
 004A80DD    mov         esi,eax
 004A80DF    xor         eax,eax
 004A80E1    push        ebp
 004A80E2    push        4A811C
 004A80E7    push        dword ptr fs:[eax]
 004A80EA    mov         dword ptr fs:[eax],esp
 004A80ED    lea         edx,[ebp-4]
 004A80F0    mov         eax,[004AE3A4];TComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceLi...
 004A80F5    call        TComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Default
 004A80FA    mov         ecx,dword ptr [ebp-4]
 004A80FD    xor         edx,edx
 004A80FF    mov         eax,esi
 004A8101    call        004A8140
 004A8106    xor         eax,eax
 004A8108    pop         edx
 004A8109    pop         ecx
 004A810A    pop         ecx
 004A810B    mov         dword ptr fs:[eax],edx
 004A810E    push        4A8123
 004A8113    lea         eax,[ebp-4]
 004A8116    call        @IntfClear
 004A811B    ret
>004A811C    jmp         @HandleFinally
>004A8121    jmp         004A8113
 004A8123    mov         eax,esi
 004A8125    test        bl,bl
>004A8127    je          004A8138
 004A8129    call        @AfterConstruction
 004A812E    pop         dword ptr fs:[0]
 004A8135    add         esp,0C
 004A8138    mov         eax,esi
 004A813A    pop         esi
 004A813B    pop         ebx
 004A813C    pop         ecx
 004A813D    pop         ebp
 004A813E    ret
*}
end;

//004A8140
constructor sub_004A8140(AComparer:IComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>);
begin
{*
 004A8140    push        ebp
 004A8141    mov         ebp,esp
 004A8143    push        0
 004A8145    push        ebx
 004A8146    push        esi
 004A8147    push        edi
 004A8148    test        dl,dl
>004A814A    je          004A8154
 004A814C    add         esp,0FFFFFFF0
 004A814F    call        @ClassCreate
 004A8154    mov         esi,ecx
 004A8156    mov         ebx,edx
 004A8158    mov         edi,eax
 004A815A    xor         eax,eax
 004A815C    push        ebp
 004A815D    push        4A81CB
 004A8162    push        dword ptr fs:[eax]
 004A8165    mov         dword ptr fs:[eax],esp
 004A8168    xor         edx,edx
 004A816A    mov         eax,edi
 004A816C    call        TObject.Create
 004A8171    mov         dword ptr [edi+14],edi;TList<System.Classes.TPair<System.Integer,System.Classes.IInterfa...
 004A8174    mov         dword ptr [edi+10],4A8088;TList<System.Classes.TPair<System.Integer,System.Classes.IInte...
 004A817B    mov         dword ptr [edi+1C],edi
 004A817E    mov         dword ptr [edi+18],4A8098;sub_004A8098
 004A8185    mov         eax,[004A94A0];TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>...
 004A818A    mov         dword ptr [edi+0C],eax;TList<System.Classes.TPair<System.Integer,System.Classes.IInterfa...
 004A818D    lea         eax,[edi+24]
 004A8190    mov         edx,esi
 004A8192    call        @IntfCopy
 004A8197    cmp         dword ptr [edi+24],0
>004A819B    jne         004A81B5
 004A819D    lea         edx,[ebp-4]
 004A81A0    mov         eax,[004AE3A4];TComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceLi...
 004A81A5    call        TComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Default
 004A81AA    mov         edx,dword ptr [ebp-4]
 004A81AD    lea         eax,[edi+24]
 004A81B0    call        @IntfCopy
 004A81B5    xor         eax,eax
 004A81B7    pop         edx
 004A81B8    pop         ecx
 004A81B9    pop         ecx
 004A81BA    mov         dword ptr fs:[eax],edx
 004A81BD    push        4A81D2
 004A81C2    lea         eax,[ebp-4]
 004A81C5    call        @IntfClear
 004A81CA    ret
>004A81CB    jmp         @HandleFinally
>004A81D0    jmp         004A81C2
 004A81D2    mov         eax,edi
 004A81D4    test        bl,bl
>004A81D6    je          004A81E7
 004A81D8    call        @AfterConstruction
 004A81DD    pop         dword ptr fs:[0]
 004A81E4    add         esp,0C
 004A81E7    mov         eax,edi
 004A81E9    pop         edi
 004A81EA    pop         esi
 004A81EB    pop         ebx
 004A81EC    pop         ecx
 004A81ED    pop         ebp
 004A81EE    ret
*}
end;

//004A81F0
destructor TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy();
begin
{*
 004A81F0    push        ebx
 004A81F1    push        esi
 004A81F2    call        @BeforeDestruction
 004A81F7    mov         ebx,edx
 004A81F9    mov         esi,eax
 004A81FB    cmp         dword ptr [esi+8],0;TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceL...
>004A81FF    jle         004A820A
 004A8201    xor         edx,edx
 004A8203    mov         eax,esi
 004A8205    call        004A807C
 004A820A    push        0
 004A820C    lea         eax,[esi+20]
 004A820F    mov         ecx,1
 004A8214    mov         edx,dword ptr ds:[4A94A0];TList<System.Classes.TPair<System.Integer,System.Classes.IInte...
 004A821A    call        @DynArraySetLength
 004A821F    add         esp,4
 004A8222    mov         dl,0FC
 004A8224    and         dl,bl
 004A8226    mov         eax,esi
 004A8228    call        TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy
 004A822D    test        bl,bl
>004A822F    jle         004A8238
 004A8231    mov         eax,esi
 004A8233    call        @ClassDestroy
 004A8238    pop         esi
 004A8239    pop         ebx
 004A823A    ret
*}
end;

//004A823C
{*procedure TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A823C    push        ebp
 004A823D    mov         ebp,esp
 004A823F    add         esp,0FFFFFFF0
 004A8242    mov         dword ptr [ebp-8],ecx
 004A8245    mov         dword ptr [ebp-4],edx
 004A8248    push        dword ptr [ebp+4]
 004A824B    mov         eax,dword ptr [ebp-8]
 004A824E    mov         dword ptr [ebp-10],eax
 004A8251    mov         byte ptr [ebp-0C],0
 004A8255    lea         eax,[ebp-10]
 004A8258    push        eax
 004A8259    push        0
 004A825B    mov         ecx,dword ptr [ebp-4]
 004A825E    mov         dl,1
 004A8260    mov         eax,[004180BC];EListError
 004A8265    call        Exception.CreateFmt;EListError.Create
>004A826A    jmp         @RaiseExcept
end;*}

//004A8274
procedure TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Add(Value:TPair<System.Integer,System.Classes.IInterfaceList>);
begin
{*
 004A8274    push        ecx
 004A8275    mov         dword ptr [esp],edx
 004A8278    mov         edx,dword ptr [esp]
 004A827B    add         eax,8
 004A827E    call        0043492C
 004A8283    pop         edx
 004A8284    ret
*}
end;

//004A8288
{*procedure TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray(?:?);
begin
 004A8288    push        ecx
 004A8289    mov         dword ptr [esp],edx
 004A828C    mov         edx,dword ptr [esp]
 004A828F    add         eax,8
 004A8292    call        004359D4
 004A8297    pop         edx
 004A8298    ret
end;*}

//004A829C
procedure TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator;
begin
{*
 004A829C    mov         ecx,eax
 004A829E    mov         dl,1
 004A82A0    mov         eax,[004A97D0];TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>...
 004A82A5    call        004A8350
 004A82AA    ret
*}
end;

//004A82AC
{*procedure sub_004A82AC(?:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.TEnumerator; ?:?);
begin
 004A82AC    push        ebp
 004A82AD    mov         ebp,esp
 004A82AF    add         esp,0FFFFFFF8
 004A82B2    push        ebx
 004A82B3    push        esi
 004A82B4    push        edi
 004A82B5    mov         edi,edx
 004A82B7    mov         ebx,eax
 004A82B9    lea         eax,[ebp-8]
 004A82BC    mov         edx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A82C2    call        @AddRefRecord
 004A82C7    xor         eax,eax
 004A82C9    push        ebp
 004A82CA    push        4A8325
 004A82CF    push        dword ptr fs:[eax]
 004A82D2    mov         dword ptr fs:[eax],esp
 004A82D5    mov         esi,dword ptr [ebx+4]
 004A82D8    mov         ebx,dword ptr [ebx+8]
 004A82DB    lea         eax,[esi+8]
 004A82DE    mov         edx,ebx
 004A82E0    call        00434534
 004A82E5    lea         eax,[ebp-8]
 004A82E8    mov         edx,dword ptr [esi+20]
 004A82EB    lea         edx,[edx+ebx*8]
 004A82EE    mov         ecx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A82F4    call        @CopyRecord
 004A82F9    mov         eax,edi
 004A82FB    lea         edx,[ebp-8]
 004A82FE    mov         ecx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A8304    call        @CopyRecord
 004A8309    xor         eax,eax
 004A830B    pop         edx
 004A830C    pop         ecx
 004A830D    pop         ecx
 004A830E    mov         dword ptr fs:[eax],edx
 004A8311    push        4A832C
 004A8316    lea         eax,[ebp-8]
 004A8319    mov         edx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A831F    call        @FinalizeRecord
 004A8324    ret
>004A8325    jmp         @HandleFinally
>004A832A    jmp         004A8316
 004A832C    pop         edi
 004A832D    pop         esi
 004A832E    pop         ebx
 004A832F    pop         ecx
 004A8330    pop         ecx
 004A8331    pop         ebp
 004A8332    ret
end;*}

//004A8334
{*procedure sub_004A8334(?:?);
begin
 004A8334    push        ebx
 004A8335    push        esi
 004A8336    mov         esi,edx
 004A8338    mov         ebx,eax
 004A833A    mov         edx,esi
 004A833C    mov         eax,ebx
 004A833E    call        004A82AC
 004A8343    pop         esi
 004A8344    pop         ebx
 004A8345    ret
end;*}

//004A8348
procedure sub_004A8348;
begin
{*
 004A8348    call        TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.TEnumerator.MoveNext
 004A834D    ret
*}
end;

//004A8350
constructor sub_004A8350(AList:TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>);
begin
{*
 004A8350    push        ebx
 004A8351    push        esi
 004A8352    push        edi
 004A8353    test        dl,dl
>004A8355    je          004A835F
 004A8357    add         esp,0FFFFFFF0
 004A835A    call        @ClassCreate
 004A835F    mov         esi,ecx
 004A8361    mov         ebx,edx
 004A8363    mov         edi,eax
 004A8365    xor         edx,edx
 004A8367    mov         eax,edi
 004A8369    call        TObject.Create
 004A836E    mov         dword ptr [edi+4],esi;TList<System.Classes.TPair<System.Integer,System.Classes.IInterfac...
 004A8371    mov         dword ptr [edi+8],0FFFFFFFF
 004A8378    mov         eax,edi
 004A837A    test        bl,bl
>004A837C    je          004A838D
 004A837E    call        @AfterConstruction
 004A8383    pop         dword ptr fs:[0]
 004A838A    add         esp,0C
 004A838D    mov         eax,edi
 004A838F    pop         edi
 004A8390    pop         esi
 004A8391    pop         ebx
 004A8392    ret
*}
end;

//004A8394
function TList<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A8394    mov         edx,dword ptr [eax+4]
 004A8397    mov         edx,dword ptr [edx+8]
 004A839A    cmp         edx,dword ptr [eax+8]
>004A839D    jg          004A83A2
 004A839F    xor         eax,eax
 004A83A1    ret
 004A83A2    inc         dword ptr [eax+8]
 004A83A5    mov         edx,dword ptr [eax+4]
 004A83A8    mov         edx,dword ptr [edx+8]
 004A83AB    cmp         edx,dword ptr [eax+8]
 004A83AE    setg        al
 004A83B1    ret
*}
end;

//004A83B4
{*procedure sub_004A83B4(?:?);
begin
 004A83B4    push        ebx
 004A83B5    mov         ebx,eax
 004A83B7    mov         ecx,4
 004A83BC    mov         edx,dword ptr ds:[40109C];Integer
 004A83C2    mov         al,1
 004A83C4    call        _LookupVtableInfo
 004A83C9    mov         edx,eax
 004A83CB    mov         eax,ebx
 004A83CD    call        @IntfCopy
 004A83D2    pop         ebx
 004A83D3    ret
end;*}

//004A841C
procedure sub_004A841C(?:TList<System.Classes.IInterfaceList>);
begin
{*
 004A841C    add         eax,8
 004A841F    call        004358C0
 004A8424    ret
*}
end;

//004A8428
{*procedure sub_004A8428(?:?; ?:?);
begin
 004A8428    push        ebx
 004A8429    mov         edx,dword ptr [edx]
 004A842B    mov         ebx,dword ptr [eax]
 004A842D    call        dword ptr [ebx+8]
 004A8430    pop         ebx
 004A8431    ret
end;*}

//004A8434
{*procedure sub_004A8434(?:?; ?:?; ?:?);
begin
 004A8434    push        ebx
 004A8435    mov         edx,dword ptr [edx]
 004A8437    mov         ecx,dword ptr [ecx]
 004A8439    mov         eax,dword ptr [eax+24]
 004A843C    mov         ebx,dword ptr [eax]
 004A843E    call        dword ptr [ebx+0C]
 004A8441    pop         ebx
 004A8442    ret
end;*}

//004A8444
procedure sub_004A8444;
begin
{*
 004A8444    call        TList<System.Classes.IInterfaceList>.GetEnumerator
 004A8449    ret
*}
end;

//004A844C
{*procedure sub_004A844C(?:?);
begin
 004A844C    push        ebx
 004A844D    cmp         word ptr [eax+2A],0
>004A8452    je          004A8461
 004A8454    push        ecx
 004A8455    mov         ebx,eax
 004A8457    mov         ecx,edx
 004A8459    mov         edx,eax
 004A845B    mov         eax,dword ptr [ebx+2C]
 004A845E    call        dword ptr [ebx+28]
 004A8461    pop         ebx
 004A8462    ret
end;*}

//004A8464
constructor sub_004A8464;
begin
{*
 004A8464    push        ebp
 004A8465    mov         ebp,esp
 004A8467    push        0
 004A8469    push        ebx
 004A846A    push        esi
 004A846B    test        dl,dl
>004A846D    je          004A8477
 004A846F    add         esp,0FFFFFFF0
 004A8472    call        @ClassCreate
 004A8477    mov         ebx,edx
 004A8479    mov         esi,eax
 004A847B    xor         eax,eax
 004A847D    push        ebp
 004A847E    push        4A84B8
 004A8483    push        dword ptr fs:[eax]
 004A8486    mov         dword ptr fs:[eax],esp
 004A8489    lea         edx,[ebp-4]
 004A848C    mov         eax,[004AE8C8];TComparer<System.Classes.IInterfaceList>
 004A8491    call        TComparer<System.Classes.IInterfaceList>.Default
 004A8496    mov         ecx,dword ptr [ebp-4]
 004A8499    xor         edx,edx
 004A849B    mov         eax,esi
 004A849D    call        004A84DC
 004A84A2    xor         eax,eax
 004A84A4    pop         edx
 004A84A5    pop         ecx
 004A84A6    pop         ecx
 004A84A7    mov         dword ptr fs:[eax],edx
 004A84AA    push        4A84BF
 004A84AF    lea         eax,[ebp-4]
 004A84B2    call        @IntfClear
 004A84B7    ret
>004A84B8    jmp         @HandleFinally
>004A84BD    jmp         004A84AF
 004A84BF    mov         eax,esi
 004A84C1    test        bl,bl
>004A84C3    je          004A84D4
 004A84C5    call        @AfterConstruction
 004A84CA    pop         dword ptr fs:[0]
 004A84D1    add         esp,0C
 004A84D4    mov         eax,esi
 004A84D6    pop         esi
 004A84D7    pop         ebx
 004A84D8    pop         ecx
 004A84D9    pop         ebp
 004A84DA    ret
*}
end;

//004A84DC
constructor sub_004A84DC(AComparer:IComparer<System.Classes.IInterfaceList>);
begin
{*
 004A84DC    push        ebp
 004A84DD    mov         ebp,esp
 004A84DF    push        0
 004A84E1    push        ebx
 004A84E2    push        esi
 004A84E3    push        edi
 004A84E4    test        dl,dl
>004A84E6    je          004A84F0
 004A84E8    add         esp,0FFFFFFF0
 004A84EB    call        @ClassCreate
 004A84F0    mov         esi,ecx
 004A84F2    mov         ebx,edx
 004A84F4    mov         edi,eax
 004A84F6    xor         eax,eax
 004A84F8    push        ebp
 004A84F9    push        4A8567
 004A84FE    push        dword ptr fs:[eax]
 004A8501    mov         dword ptr fs:[eax],esp
 004A8504    xor         edx,edx
 004A8506    mov         eax,edi
 004A8508    call        TObject.Create
 004A850D    mov         dword ptr [edi+14],edi;TList<System.Classes.IInterfaceList>.FOnNotify:TCollectionNotifyE...
 004A8510    mov         dword ptr [edi+10],4A8428;TList<System.Classes.IInterfaceList>.FOnNotify:TCollectionNoti...
 004A8517    mov         dword ptr [edi+1C],edi
 004A851A    mov         dword ptr [edi+18],4A8434;sub_004A8434
 004A8521    mov         eax,[004AA724];TList<System.Classes.IInterfaceList>.arrayofT
 004A8526    mov         dword ptr [edi+0C],eax;TList<System.Classes.IInterfaceList>.FComparer:IComparer<System.C...
 004A8529    lea         eax,[edi+24]
 004A852C    mov         edx,esi
 004A852E    call        @IntfCopy
 004A8533    cmp         dword ptr [edi+24],0
>004A8537    jne         004A8551
 004A8539    lea         edx,[ebp-4]
 004A853C    mov         eax,[004AE8C8];TComparer<System.Classes.IInterfaceList>
 004A8541    call        TComparer<System.Classes.IInterfaceList>.Default
 004A8546    mov         edx,dword ptr [ebp-4]
 004A8549    lea         eax,[edi+24]
 004A854C    call        @IntfCopy
 004A8551    xor         eax,eax
 004A8553    pop         edx
 004A8554    pop         ecx
 004A8555    pop         ecx
 004A8556    mov         dword ptr fs:[eax],edx
 004A8559    push        4A856E
 004A855E    lea         eax,[ebp-4]
 004A8561    call        @IntfClear
 004A8566    ret
>004A8567    jmp         @HandleFinally
>004A856C    jmp         004A855E
 004A856E    mov         eax,edi
 004A8570    test        bl,bl
>004A8572    je          004A8583
 004A8574    call        @AfterConstruction
 004A8579    pop         dword ptr fs:[0]
 004A8580    add         esp,0C
 004A8583    mov         eax,edi
 004A8585    pop         edi
 004A8586    pop         esi
 004A8587    pop         ebx
 004A8588    pop         ecx
 004A8589    pop         ebp
 004A858A    ret
*}
end;

//004A858C
destructor TList<System.Classes.IInterfaceList>.Destroy();
begin
{*
 004A858C    push        ebx
 004A858D    push        esi
 004A858E    call        @BeforeDestruction
 004A8593    mov         ebx,edx
 004A8595    mov         esi,eax
 004A8597    cmp         dword ptr [esi+8],0;TList<System.Classes.IInterfaceList>.FCount:Integer
>004A859B    jle         004A85A6
 004A859D    xor         edx,edx
 004A859F    mov         eax,esi
 004A85A1    call        004A841C
 004A85A6    push        0
 004A85A8    lea         eax,[esi+20]
 004A85AB    mov         ecx,1
 004A85B0    mov         edx,dword ptr ds:[4AA724];TList<System.Classes.IInterfaceList>.arrayofT
 004A85B6    call        @DynArraySetLength
 004A85BB    add         esp,4
 004A85BE    mov         dl,0FC
 004A85C0    and         dl,bl
 004A85C2    mov         eax,esi
 004A85C4    call        TEnumerable<System.Classes.IInterfaceList>.Destroy
 004A85C9    test        bl,bl
>004A85CB    jle         004A85D4
 004A85CD    mov         eax,esi
 004A85CF    call        @ClassDestroy
 004A85D4    pop         esi
 004A85D5    pop         ebx
 004A85D6    ret
*}
end;

//004A85D8
{*procedure TList<System.Classes.IInterfaceList>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A85D8    push        ebp
 004A85D9    mov         ebp,esp
 004A85DB    add         esp,0FFFFFFF0
 004A85DE    mov         dword ptr [ebp-8],ecx
 004A85E1    mov         dword ptr [ebp-4],edx
 004A85E4    push        dword ptr [ebp+4]
 004A85E7    mov         eax,dword ptr [ebp-8]
 004A85EA    mov         dword ptr [ebp-10],eax
 004A85ED    mov         byte ptr [ebp-0C],0
 004A85F1    lea         eax,[ebp-10]
 004A85F4    push        eax
 004A85F5    push        0
 004A85F7    mov         ecx,dword ptr [ebp-4]
 004A85FA    mov         dl,1
 004A85FC    mov         eax,[004180BC];EListError
 004A8601    call        Exception.CreateFmt;EListError.Create
>004A8606    jmp         @RaiseExcept
end;*}

//004A8610
procedure TList<System.Classes.IInterfaceList>.Add(Value:IInterfaceList);
begin
{*
 004A8610    add         esp,0FFFFFFF8
 004A8613    mov         dword ptr [esp],edx
 004A8616    add         eax,8
 004A8619    mov         dword ptr [esp+4],eax
 004A861D    mov         edx,esp
 004A861F    mov         eax,dword ptr [esp+4]
 004A8623    call        004345C8
 004A8628    pop         ecx
 004A8629    pop         edx
 004A862A    ret
*}
end;

//004A862C
{*procedure TList<System.Classes.IInterfaceList>.ToArray(?:?);
begin
 004A862C    push        ecx
 004A862D    mov         dword ptr [esp],edx
 004A8630    mov         edx,dword ptr [esp]
 004A8633    add         eax,8
 004A8636    call        004359D4
 004A863B    pop         edx
 004A863C    ret
end;*}

//004A8640
procedure TList<System.Classes.IInterfaceList>.GetEnumerator;
begin
{*
 004A8640    mov         ecx,eax
 004A8642    mov         dl,1
 004A8644    mov         eax,[004AA8B0];TList<System.Classes.IInterfaceList>.TEnumerator
 004A8649    call        004A86D0
 004A864E    ret
*}
end;

//004A8650
{*procedure sub_004A8650(?:TList<System.Classes.IInterfaceList>.TEnumerator; ?:?);
begin
 004A8650    push        ebp
 004A8651    mov         ebp,esp
 004A8653    push        0
 004A8655    push        ebx
 004A8656    push        esi
 004A8657    push        edi
 004A8658    mov         edi,edx
 004A865A    xor         edx,edx
 004A865C    push        ebp
 004A865D    push        4A86A6
 004A8662    push        dword ptr fs:[edx]
 004A8665    mov         dword ptr fs:[edx],esp
 004A8668    mov         ebx,dword ptr [eax+4]
 004A866B    mov         esi,dword ptr [eax+8]
 004A866E    lea         eax,[ebx+8]
 004A8671    mov         edx,esi
 004A8673    call        00434534
 004A8678    lea         eax,[ebp-4]
 004A867B    mov         edx,dword ptr [ebx+20]
 004A867E    mov         edx,dword ptr [edx+esi*4]
 004A8681    call        @IntfCopy
 004A8686    mov         eax,edi
 004A8688    mov         edx,dword ptr [ebp-4]
 004A868B    call        @IntfCopy
 004A8690    xor         eax,eax
 004A8692    pop         edx
 004A8693    pop         ecx
 004A8694    pop         ecx
 004A8695    mov         dword ptr fs:[eax],edx
 004A8698    push        4A86AD
 004A869D    lea         eax,[ebp-4]
 004A86A0    call        @IntfClear
 004A86A5    ret
>004A86A6    jmp         @HandleFinally
>004A86AB    jmp         004A869D
 004A86AD    pop         edi
 004A86AE    pop         esi
 004A86AF    pop         ebx
 004A86B0    pop         ecx
 004A86B1    pop         ebp
 004A86B2    ret
end;*}

//004A86B4
{*procedure sub_004A86B4(?:?);
begin
 004A86B4    push        ebx
 004A86B5    push        esi
 004A86B6    mov         esi,edx
 004A86B8    mov         ebx,eax
 004A86BA    mov         edx,esi
 004A86BC    mov         eax,ebx
 004A86BE    call        004A8650
 004A86C3    pop         esi
 004A86C4    pop         ebx
 004A86C5    ret
end;*}

//004A86C8
procedure sub_004A86C8;
begin
{*
 004A86C8    call        TList<System.Classes.IInterfaceList>.TEnumerator.MoveNext
 004A86CD    ret
*}
end;

//004A86D0
constructor sub_004A86D0(AList:TList<System.Classes.IInterfaceList>);
begin
{*
 004A86D0    push        ebx
 004A86D1    push        esi
 004A86D2    push        edi
 004A86D3    test        dl,dl
>004A86D5    je          004A86DF
 004A86D7    add         esp,0FFFFFFF0
 004A86DA    call        @ClassCreate
 004A86DF    mov         esi,ecx
 004A86E1    mov         ebx,edx
 004A86E3    mov         edi,eax
 004A86E5    xor         edx,edx
 004A86E7    mov         eax,edi
 004A86E9    call        TObject.Create
 004A86EE    mov         dword ptr [edi+4],esi;TList<System.Classes.IInterfaceList>.TEnumerator.FList:TList<Syste...
 004A86F1    mov         dword ptr [edi+8],0FFFFFFFF
 004A86F8    mov         eax,edi
 004A86FA    test        bl,bl
>004A86FC    je          004A870D
 004A86FE    call        @AfterConstruction
 004A8703    pop         dword ptr fs:[0]
 004A870A    add         esp,0C
 004A870D    mov         eax,edi
 004A870F    pop         edi
 004A8710    pop         esi
 004A8711    pop         ebx
 004A8712    ret
*}
end;

//004A8714
function TList<System.Classes.IInterfaceList>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A8714    mov         edx,dword ptr [eax+4]
 004A8717    mov         edx,dword ptr [edx+8]
 004A871A    cmp         edx,dword ptr [eax+8]
>004A871D    jg          004A8722
 004A871F    xor         eax,eax
 004A8721    ret
 004A8722    inc         dword ptr [eax+8]
 004A8725    mov         edx,dword ptr [eax+4]
 004A8728    mov         edx,dword ptr [edx+8]
 004A872B    cmp         edx,dword ptr [eax+8]
 004A872E    setg        al
 004A8731    ret
*}
end;

//004A8734
{*procedure TComparer<System.Classes.TBasicActionLink>.Default(?:?);
begin
 004A8734    push        ebx
 004A8735    mov         ebx,edx
 004A8737    mov         ecx,4
 004A873C    mov         edx,dword ptr ds:[479B14];TBasicActionLink
 004A8742    xor         eax,eax
 004A8744    call        _LookupVtableInfo
 004A8749    mov         edx,eax
 004A874B    mov         eax,ebx
 004A874D    call        @IntfCopy
 004A8752    pop         ebx
 004A8753    ret
end;*}

//004A879C
procedure sub_004A879C(?:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>);
begin
{*
 004A879C    add         eax,8
 004A879F    call        00435860
 004A87A4    ret
*}
end;

//004A87A8
{*procedure sub_004A87A8(?:?);
begin
 004A87A8    push        ebx
 004A87A9    push        esi
 004A87AA    mov         esi,eax
 004A87AC    mov         eax,esi
 004A87AE    mov         ebx,dword ptr [eax]
 004A87B0    call        dword ptr [ebx+8]
 004A87B3    pop         esi
 004A87B4    pop         ebx
 004A87B5    ret
end;*}

//004A87B8
{*procedure sub_004A87B8(?:?);
begin
 004A87B8    push        ebx
 004A87B9    push        esi
 004A87BA    mov         esi,eax
 004A87BC    mov         eax,dword ptr [esi+24]
 004A87BF    mov         ebx,dword ptr [eax]
 004A87C1    call        dword ptr [ebx+0C]
 004A87C4    pop         esi
 004A87C5    pop         ebx
 004A87C6    ret
end;*}

//004A87C8
procedure sub_004A87C8;
begin
{*
 004A87C8    call        TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator
 004A87CD    ret
*}
end;

//004A87D0
{*procedure sub_004A87D0(?:?);
begin
 004A87D0    push        esi
 004A87D1    mov         esi,eax
 004A87D3    cmp         word ptr [esi+2A],0
>004A87D8    je          004A87E5
 004A87DA    push        ecx
 004A87DB    mov         ecx,edx
 004A87DD    mov         edx,esi
 004A87DF    mov         eax,dword ptr [esi+2C]
 004A87E2    call        dword ptr [esi+28]
 004A87E5    pop         esi
 004A87E6    ret
end;*}

//004A87E8
constructor sub_004A87E8;
begin
{*
 004A87E8    push        ebp
 004A87E9    mov         ebp,esp
 004A87EB    push        0
 004A87ED    push        ebx
 004A87EE    push        esi
 004A87EF    test        dl,dl
>004A87F1    je          004A87FB
 004A87F3    add         esp,0FFFFFFF0
 004A87F6    call        @ClassCreate
 004A87FB    mov         ebx,edx
 004A87FD    mov         esi,eax
 004A87FF    xor         eax,eax
 004A8801    push        ebp
 004A8802    push        4A883C
 004A8807    push        dword ptr fs:[eax]
 004A880A    mov         dword ptr fs:[eax],esp
 004A880D    lea         edx,[ebp-4]
 004A8810    mov         eax,[004AEB74];TComparer<System.Classes.TPair<System.string,System.Classes.TPersistentCl...
 004A8815    call        TComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Default
 004A881A    mov         ecx,dword ptr [ebp-4]
 004A881D    xor         edx,edx
 004A881F    mov         eax,esi
 004A8821    call        004A8860
 004A8826    xor         eax,eax
 004A8828    pop         edx
 004A8829    pop         ecx
 004A882A    pop         ecx
 004A882B    mov         dword ptr fs:[eax],edx
 004A882E    push        4A8843
 004A8833    lea         eax,[ebp-4]
 004A8836    call        @IntfClear
 004A883B    ret
>004A883C    jmp         @HandleFinally
>004A8841    jmp         004A8833
 004A8843    mov         eax,esi
 004A8845    test        bl,bl
>004A8847    je          004A8858
 004A8849    call        @AfterConstruction
 004A884E    pop         dword ptr fs:[0]
 004A8855    add         esp,0C
 004A8858    mov         eax,esi
 004A885A    pop         esi
 004A885B    pop         ebx
 004A885C    pop         ecx
 004A885D    pop         ebp
 004A885E    ret
*}
end;

//004A8860
constructor sub_004A8860(AComparer:IComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>);
begin
{*
 004A8860    push        ebp
 004A8861    mov         ebp,esp
 004A8863    push        0
 004A8865    push        ebx
 004A8866    push        esi
 004A8867    push        edi
 004A8868    test        dl,dl
>004A886A    je          004A8874
 004A886C    add         esp,0FFFFFFF0
 004A886F    call        @ClassCreate
 004A8874    mov         esi,ecx
 004A8876    mov         ebx,edx
 004A8878    mov         edi,eax
 004A887A    xor         eax,eax
 004A887C    push        ebp
 004A887D    push        4A88EB
 004A8882    push        dword ptr fs:[eax]
 004A8885    mov         dword ptr fs:[eax],esp
 004A8888    xor         edx,edx
 004A888A    mov         eax,edi
 004A888C    call        TObject.Create
 004A8891    mov         dword ptr [edi+14],edi;TList<System.Classes.TPair<System.string,System.Classes.TPersiste...
 004A8894    mov         dword ptr [edi+10],4A87A8;TList<System.Classes.TPair<System.string,System.Classes.TPersi...
 004A889B    mov         dword ptr [edi+1C],edi
 004A889E    mov         dword ptr [edi+18],4A87B8;sub_004A87B8
 004A88A5    mov         eax,[004AB9FC];TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>...
 004A88AA    mov         dword ptr [edi+0C],eax;TList<System.Classes.TPair<System.string,System.Classes.TPersiste...
 004A88AD    lea         eax,[edi+24]
 004A88B0    mov         edx,esi
 004A88B2    call        @IntfCopy
 004A88B7    cmp         dword ptr [edi+24],0
>004A88BB    jne         004A88D5
 004A88BD    lea         edx,[ebp-4]
 004A88C0    mov         eax,[004AEB74];TComparer<System.Classes.TPair<System.string,System.Classes.TPersistentCl...
 004A88C5    call        TComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Default
 004A88CA    mov         edx,dword ptr [ebp-4]
 004A88CD    lea         eax,[edi+24]
 004A88D0    call        @IntfCopy
 004A88D5    xor         eax,eax
 004A88D7    pop         edx
 004A88D8    pop         ecx
 004A88D9    pop         ecx
 004A88DA    mov         dword ptr fs:[eax],edx
 004A88DD    push        4A88F2
 004A88E2    lea         eax,[ebp-4]
 004A88E5    call        @IntfClear
 004A88EA    ret
>004A88EB    jmp         @HandleFinally
>004A88F0    jmp         004A88E2
 004A88F2    mov         eax,edi
 004A88F4    test        bl,bl
>004A88F6    je          004A8907
 004A88F8    call        @AfterConstruction
 004A88FD    pop         dword ptr fs:[0]
 004A8904    add         esp,0C
 004A8907    mov         eax,edi
 004A8909    pop         edi
 004A890A    pop         esi
 004A890B    pop         ebx
 004A890C    pop         ecx
 004A890D    pop         ebp
 004A890E    ret
*}
end;

//004A8910
destructor TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy();
begin
{*
 004A8910    push        ebx
 004A8911    push        esi
 004A8912    call        @BeforeDestruction
 004A8917    mov         ebx,edx
 004A8919    mov         esi,eax
 004A891B    cmp         dword ptr [esi+8],0;TList<System.Classes.TPair<System.string,System.Classes.TPersistentC...
>004A891F    jle         004A892A
 004A8921    xor         edx,edx
 004A8923    mov         eax,esi
 004A8925    call        004A879C
 004A892A    push        0
 004A892C    lea         eax,[esi+20]
 004A892F    mov         ecx,1
 004A8934    mov         edx,dword ptr ds:[4AB9FC];TList<System.Classes.TPair<System.string,System.Classes.TPersi...
 004A893A    call        @DynArraySetLength
 004A893F    add         esp,4
 004A8942    mov         dl,0FC
 004A8944    and         dl,bl
 004A8946    mov         eax,esi
 004A8948    call        TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy
 004A894D    test        bl,bl
>004A894F    jle         004A8958
 004A8951    mov         eax,esi
 004A8953    call        @ClassDestroy
 004A8958    pop         esi
 004A8959    pop         ebx
 004A895A    ret
*}
end;

//004A895C
{*procedure TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004A895C    push        ebp
 004A895D    mov         ebp,esp
 004A895F    add         esp,0FFFFFFF0
 004A8962    mov         dword ptr [ebp-8],ecx
 004A8965    mov         dword ptr [ebp-4],edx
 004A8968    push        dword ptr [ebp+4]
 004A896B    mov         eax,dword ptr [ebp-8]
 004A896E    mov         dword ptr [ebp-10],eax
 004A8971    mov         byte ptr [ebp-0C],0
 004A8975    lea         eax,[ebp-10]
 004A8978    push        eax
 004A8979    push        0
 004A897B    mov         ecx,dword ptr [ebp-4]
 004A897E    mov         dl,1
 004A8980    mov         eax,[004180BC];EListError
 004A8985    call        Exception.CreateFmt;EListError.Create
>004A898A    jmp         @RaiseExcept
end;*}

//004A8994
procedure TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Add(Value:TPair<System.string,System.Classes.TPersistentClass>);
begin
{*
 004A8994    push        ecx
 004A8995    mov         dword ptr [esp],edx
 004A8998    mov         edx,dword ptr [esp]
 004A899B    add         eax,8
 004A899E    call        0043492C
 004A89A3    pop         edx
 004A89A4    ret
*}
end;

//004A89A8
{*procedure TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray(?:?);
begin
 004A89A8    push        ecx
 004A89A9    mov         dword ptr [esp],edx
 004A89AC    mov         edx,dword ptr [esp]
 004A89AF    add         eax,8
 004A89B2    call        004359D4
 004A89B7    pop         edx
 004A89B8    ret
end;*}

//004A89BC
procedure TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator;
begin
{*
 004A89BC    mov         ecx,eax
 004A89BE    mov         dl,1
 004A89C0    mov         eax,[004ABD2C];TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>...
 004A89C5    call        004A8A70
 004A89CA    ret
*}
end;

//004A89CC
{*procedure sub_004A89CC(?:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.TEnumerator; ?:?);
begin
 004A89CC    push        ebp
 004A89CD    mov         ebp,esp
 004A89CF    add         esp,0FFFFFFF8
 004A89D2    push        ebx
 004A89D3    push        esi
 004A89D4    push        edi
 004A89D5    mov         edi,edx
 004A89D7    mov         ebx,eax
 004A89D9    lea         eax,[ebp-8]
 004A89DC    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A89E2    call        @AddRefRecord
 004A89E7    xor         eax,eax
 004A89E9    push        ebp
 004A89EA    push        4A8A45
 004A89EF    push        dword ptr fs:[eax]
 004A89F2    mov         dword ptr fs:[eax],esp
 004A89F5    mov         esi,dword ptr [ebx+4]
 004A89F8    mov         ebx,dword ptr [ebx+8]
 004A89FB    lea         eax,[esi+8]
 004A89FE    mov         edx,ebx
 004A8A00    call        00434534
 004A8A05    lea         eax,[ebp-8]
 004A8A08    mov         edx,dword ptr [esi+20]
 004A8A0B    lea         edx,[edx+ebx*8]
 004A8A0E    mov         ecx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A8A14    call        @CopyRecord
 004A8A19    mov         eax,edi
 004A8A1B    lea         edx,[ebp-8]
 004A8A1E    mov         ecx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A8A24    call        @CopyRecord
 004A8A29    xor         eax,eax
 004A8A2B    pop         edx
 004A8A2C    pop         ecx
 004A8A2D    pop         ecx
 004A8A2E    mov         dword ptr fs:[eax],edx
 004A8A31    push        4A8A4C
 004A8A36    lea         eax,[ebp-8]
 004A8A39    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A8A3F    call        @FinalizeRecord
 004A8A44    ret
>004A8A45    jmp         @HandleFinally
>004A8A4A    jmp         004A8A36
 004A8A4C    pop         edi
 004A8A4D    pop         esi
 004A8A4E    pop         ebx
 004A8A4F    pop         ecx
 004A8A50    pop         ecx
 004A8A51    pop         ebp
 004A8A52    ret
end;*}

//004A8A54
{*procedure sub_004A8A54(?:?);
begin
 004A8A54    push        ebx
 004A8A55    push        esi
 004A8A56    mov         esi,edx
 004A8A58    mov         ebx,eax
 004A8A5A    mov         edx,esi
 004A8A5C    mov         eax,ebx
 004A8A5E    call        004A89CC
 004A8A63    pop         esi
 004A8A64    pop         ebx
 004A8A65    ret
end;*}

//004A8A68
procedure sub_004A8A68;
begin
{*
 004A8A68    call        TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.TEnumerator.MoveNext
 004A8A6D    ret
*}
end;

//004A8A70
constructor sub_004A8A70(AList:TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>);
begin
{*
 004A8A70    push        ebx
 004A8A71    push        esi
 004A8A72    push        edi
 004A8A73    test        dl,dl
>004A8A75    je          004A8A7F
 004A8A77    add         esp,0FFFFFFF0
 004A8A7A    call        @ClassCreate
 004A8A7F    mov         esi,ecx
 004A8A81    mov         ebx,edx
 004A8A83    mov         edi,eax
 004A8A85    xor         edx,edx
 004A8A87    mov         eax,edi
 004A8A89    call        TObject.Create
 004A8A8E    mov         dword ptr [edi+4],esi;TList<System.Classes.TPair<System.string,System.Classes.TPersisten...
 004A8A91    mov         dword ptr [edi+8],0FFFFFFFF
 004A8A98    mov         eax,edi
 004A8A9A    test        bl,bl
>004A8A9C    je          004A8AAD
 004A8A9E    call        @AfterConstruction
 004A8AA3    pop         dword ptr fs:[0]
 004A8AAA    add         esp,0C
 004A8AAD    mov         eax,edi
 004A8AAF    pop         edi
 004A8AB0    pop         esi
 004A8AB1    pop         ebx
 004A8AB2    ret
*}
end;

//004A8AB4
function TList<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.TEnumerator.MoveNext:Boolean;
begin
{*
 004A8AB4    mov         edx,dword ptr [eax+4]
 004A8AB7    mov         edx,dword ptr [edx+8]
 004A8ABA    cmp         edx,dword ptr [eax+8]
>004A8ABD    jg          004A8AC2
 004A8ABF    xor         eax,eax
 004A8AC1    ret
 004A8AC2    inc         dword ptr [eax+8]
 004A8AC5    mov         edx,dword ptr [eax+4]
 004A8AC8    mov         edx,dword ptr [edx+8]
 004A8ACB    cmp         edx,dword ptr [eax+8]
 004A8ACE    setg        al
 004A8AD1    ret
*}
end;

//004A8AD4
{*procedure sub_004A8AD4(?:?);
begin
 004A8AD4    push        ebx
 004A8AD5    mov         ebx,eax
 004A8AD7    mov         ecx,4
 004A8ADC    mov         edx,dword ptr ds:[46D8DC];TPersistentClass
 004A8AE2    mov         al,1
 004A8AE4    call        _LookupVtableInfo
 004A8AE9    mov         edx,eax
 004A8AEB    mov         eax,ebx
 004A8AED    call        @IntfCopy
 004A8AF2    pop         ebx
 004A8AF3    ret
end;*}

//004A8AF4
{*procedure TComparer<System.Classes.TPersistentClass>.Default(?:?);
begin
 004A8AF4    push        ebx
 004A8AF5    mov         ebx,edx
 004A8AF7    mov         ecx,4
 004A8AFC    mov         edx,dword ptr ds:[46D8DC];TPersistentClass
 004A8B02    xor         eax,eax
 004A8B04    call        _LookupVtableInfo
 004A8B09    mov         edx,eax
 004A8B0B    mov         eax,ebx
 004A8B0D    call        @IntfCopy
 004A8B12    pop         ebx
 004A8B13    ret
end;*}

//004A8B14
{*function sub_004A8B14(?:?; ?:?):Boolean;
begin
 004A8B14    push        ebx
 004A8B15    push        esi
 004A8B16    mov         esi,edx
 004A8B18    mov         ebx,eax
 004A8B1A    mov         edx,dword ptr [esi]
 004A8B1C    mov         eax,dword ptr [ebx+0C]
 004A8B1F    mov         eax,dword ptr [eax+24]
 004A8B22    xor         ecx,ecx
 004A8B24    mov         ebx,dword ptr [eax]
 004A8B26    call        dword ptr [ebx+0C]
 004A8B29    test        eax,eax
 004A8B2B    sete        al
 004A8B2E    pop         esi
 004A8B2F    pop         ebx
 004A8B30    ret
end;*}

//004A8B34
{*procedure TComparer<System.Classes.TRegGroup>.Default(?:?);
begin
 004A8B34    push        ebx
 004A8B35    mov         ebx,edx
 004A8B37    mov         ecx,4
 004A8B3C    mov         edx,dword ptr ds:[483588];TRegGroup
 004A8B42    xor         eax,eax
 004A8B44    call        _LookupVtableInfo
 004A8B49    mov         edx,eax
 004A8B4B    mov         eax,ebx
 004A8B4D    call        @IntfCopy
 004A8B52    pop         ebx
 004A8B53    ret
end;*}

//004A8B54
{*procedure TComparer<System.Classes.TIntConst>.Default(?:?);
begin
 004A8B54    push        ebx
 004A8B55    mov         ebx,edx
 004A8B57    mov         ecx,4
 004A8B5C    mov         edx,dword ptr ds:[488D64];TIntConst
 004A8B62    xor         eax,eax
 004A8B64    call        _LookupVtableInfo
 004A8B69    mov         edx,eax
 004A8B6B    mov         eax,ebx
 004A8B6D    call        @IntfCopy
 004A8B72    pop         ebx
 004A8B73    ret
end;*}

//004A8B74
{*procedure TComparer<System.Classes.TFindGlobalComponent>.Default(?:?);
begin
 004A8B74    push        ebx
 004A8B75    mov         ebx,edx
 004A8B77    mov         ecx,4
 004A8B7C    mov         edx,dword ptr ds:[4829B0];TFindGlobalComponent
 004A8B82    xor         eax,eax
 004A8B84    call        _LookupVtableInfo
 004A8B89    mov         edx,eax
 004A8B8B    mov         eax,ebx
 004A8B8D    call        @IntfCopy
 004A8B92    pop         ebx
 004A8B93    ret
end;*}

//004A8B94
{*procedure TComparer<System.Generics.Collections.TList<System.Classes.TComponent>>.Default(?:?);
begin
 004A8B94    push        ebx
 004A8B95    mov         ebx,edx
 004A8B97    mov         ecx,4
 004A8B9C    mov         edx,dword ptr ds:[47F4E4];TList<System.Classes.TComponent>
 004A8BA2    xor         eax,eax
 004A8BA4    call        _LookupVtableInfo
 004A8BA9    mov         edx,eax
 004A8BAB    mov         eax,ebx
 004A8BAD    call        @IntfCopy
 004A8BB2    pop         ebx
 004A8BB3    ret
end;*}

//004A8BB4
{*procedure TComparer<System.Classes.TPropFixup>.Default(?:?);
begin
 004A8BB4    push        ebx
 004A8BB5    mov         ebx,edx
 004A8BB7    mov         ecx,4
 004A8BBC    mov         edx,dword ptr ds:[492F0C];TPropFixup
 004A8BC2    xor         eax,eax
 004A8BC4    call        _LookupVtableInfo
 004A8BC9    mov         edx,eax
 004A8BCB    mov         eax,ebx
 004A8BCD    call        @IntfCopy
 004A8BD2    pop         ebx
 004A8BD3    ret
end;*}

//004A8BD4
{*procedure TComparer<System.Classes.TPersistent>.Default(?:?);
begin
 004A8BD4    push        ebx
 004A8BD5    mov         ebx,edx
 004A8BD7    mov         ecx,4
 004A8BDC    mov         edx,dword ptr ds:[46D8A8];TPersistent
 004A8BE2    xor         eax,eax
 004A8BE4    call        _LookupVtableInfo
 004A8BE9    mov         edx,eax
 004A8BEB    mov         eax,ebx
 004A8BED    call        @IntfCopy
 004A8BF2    pop         ebx
 004A8BF3    ret
end;*}

//004A8BF4
{*procedure TComparer<System.Classes.TThread>.Default(?:?);
begin
 004A8BF4    push        ebx
 004A8BF5    mov         ebx,edx
 004A8BF7    mov         ecx,4
 004A8BFC    mov         edx,dword ptr ds:[477BAC];TThread
 004A8C02    xor         eax,eax
 004A8C04    call        _LookupVtableInfo
 004A8C09    mov         edx,eax
 004A8C0B    mov         eax,ebx
 004A8C0D    call        @IntfCopy
 004A8C12    pop         ebx
 004A8C13    ret
end;*}

//004A8C14
{*procedure sub_004A8C14(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004A8C14    push        ebp
 004A8C15    mov         ebp,esp
 004A8C17    add         esp,0FFFFFFF0
 004A8C1A    push        ebx
 004A8C1B    push        esi
 004A8C1C    push        edi
 004A8C1D    mov         dword ptr [ebp-0C],ecx
 004A8C20    mov         dword ptr [ebp-8],edx
 004A8C23    mov         dword ptr [ebp-4],eax
 004A8C26    mov         eax,dword ptr [ebp-8]
 004A8C29    inc         eax
 004A8C2A    test        eax,eax
>004A8C2C    je          004A8CD4
 004A8C32    mov         eax,dword ptr [ebp+8]
 004A8C35    sub         eax,dword ptr [ebp+0C]
 004A8C38    test        eax,eax
>004A8C3A    jle         004A8CD4
 004A8C40    mov         ebx,dword ptr [ebp+0C]
 004A8C43    mov         esi,dword ptr [ebp+8]
 004A8C46    mov         eax,dword ptr [ebp+8]
 004A8C49    sub         eax,dword ptr [ebp+0C]
 004A8C4C    shr         eax,1
 004A8C4E    add         eax,dword ptr [ebp+0C]
 004A8C51    mov         edx,dword ptr [ebp-4]
 004A8C54    mov         eax,dword ptr [edx+eax*4]
 004A8C57    mov         dword ptr [ebp-10],eax
>004A8C5A    jmp         004A8C5D
 004A8C5C    inc         ebx
 004A8C5D    mov         eax,dword ptr [ebp-4]
 004A8C60    mov         edx,dword ptr [eax+ebx*4]
 004A8C63    mov         ecx,dword ptr [ebp-10]
 004A8C66    mov         eax,dword ptr [ebp-0C]
 004A8C69    mov         edi,dword ptr [eax]
 004A8C6B    call        dword ptr [edi+0C]
 004A8C6E    test        eax,eax
>004A8C70    jl          004A8C5C
>004A8C72    jmp         004A8C75
 004A8C74    dec         esi
 004A8C75    mov         eax,dword ptr [ebp-4]
 004A8C78    mov         edx,dword ptr [eax+esi*4]
 004A8C7B    mov         ecx,dword ptr [ebp-10]
 004A8C7E    mov         eax,dword ptr [ebp-0C]
 004A8C81    mov         edi,dword ptr [eax]
 004A8C83    call        dword ptr [edi+0C]
 004A8C86    test        eax,eax
>004A8C88    jg          004A8C74
 004A8C8A    cmp         esi,ebx
>004A8C8C    jl          004A8CAC
 004A8C8E    cmp         esi,ebx
>004A8C90    je          004A8CAA
 004A8C92    mov         eax,dword ptr [ebp-4]
 004A8C95    mov         eax,dword ptr [eax+ebx*4]
 004A8C98    mov         edx,dword ptr [ebp-4]
 004A8C9B    mov         edx,dword ptr [edx+esi*4]
 004A8C9E    mov         ecx,dword ptr [ebp-4]
 004A8CA1    mov         dword ptr [ecx+ebx*4],edx
 004A8CA4    mov         edx,dword ptr [ebp-4]
 004A8CA7    mov         dword ptr [edx+esi*4],eax
 004A8CAA    inc         ebx
 004A8CAB    dec         esi
 004A8CAC    cmp         esi,ebx
>004A8CAE    jge         004A8C5D
 004A8CB0    cmp         esi,dword ptr [ebp+0C]
>004A8CB3    jle         004A8CC8
 004A8CB5    mov         eax,dword ptr [ebp+0C]
 004A8CB8    push        eax
 004A8CB9    push        esi
 004A8CBA    mov         eax,dword ptr [ebp-4]
 004A8CBD    mov         ecx,dword ptr [ebp-0C]
 004A8CC0    mov         edx,dword ptr [ebp-8]
 004A8CC3    call        004A8C14
 004A8CC8    mov         dword ptr [ebp+0C],ebx
 004A8CCB    cmp         ebx,dword ptr [ebp+8]
>004A8CCE    jl          004A8C40
 004A8CD4    pop         edi
 004A8CD5    pop         esi
 004A8CD6    pop         ebx
 004A8CD7    mov         esp,ebp
 004A8CD9    pop         ebp
 004A8CDA    ret         8
end;*}

//004A8CE0
{*procedure TComparer<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Default(?:?);
begin
 004A8CE0    push        ebx
 004A8CE1    mov         ebx,edx
 004A8CE3    mov         ecx,8
 004A8CE8    mov         edx,dword ptr ds:[47F5E8];TPair<System.Integer,System.Classes.IInterfaceList>
 004A8CEE    xor         eax,eax
 004A8CF0    call        _LookupVtableInfo
 004A8CF5    mov         edx,eax
 004A8CF7    mov         eax,ebx
 004A8CF9    call        @IntfCopy
 004A8CFE    pop         ebx
 004A8CFF    ret
end;*}

//004A8D00
function TComparer<System.Integer>.Default:IComparer<System.Integer>;
begin
{*
 004A8D00    push        ebx
 004A8D01    mov         ebx,edx
 004A8D03    mov         ecx,4
 004A8D08    mov         edx,dword ptr ds:[40109C];Integer
 004A8D0E    xor         eax,eax
 004A8D10    call        _LookupVtableInfo
 004A8D15    mov         edx,eax
 004A8D17    mov         eax,ebx
 004A8D19    call        @IntfCopy
 004A8D1E    pop         ebx
 004A8D1F    ret
*}
end;

//004A8D20
{*procedure TComparer<System.Classes.IInterfaceList>.Default(?:?);
begin
 004A8D20    push        ebx
 004A8D21    mov         ebx,edx
 004A8D23    mov         ecx,4
 004A8D28    mov         edx,dword ptr ds:[46CC80];IInterfaceList
 004A8D2E    xor         eax,eax
 004A8D30    call        _LookupVtableInfo
 004A8D35    mov         edx,eax
 004A8D37    mov         eax,ebx
 004A8D39    call        @IntfCopy
 004A8D3E    pop         ebx
 004A8D3F    ret
end;*}

//004A8D40
{*procedure TComparer<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>.Default(?:?);
begin
 004A8D40    push        ebx
 004A8D41    mov         ebx,edx
 004A8D43    mov         ecx,8
 004A8D48    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 004A8D4E    xor         eax,eax
 004A8D50    call        _LookupVtableInfo
 004A8D55    mov         edx,eax
 004A8D57    mov         eax,ebx
 004A8D59    call        @IntfCopy
 004A8D5E    pop         ebx
 004A8D5F    ret
end;*}

//004B1638
function TCustomShortCutList.IndexOfShortCut(ShortCut:TShortCut):Integer;
begin
{*
 004B1638    push        ebx
 004B1639    push        esi
 004B163A    push        edi
 004B163B    push        ebp
 004B163C    push        ecx
 004B163D    mov         ebp,edx
 004B163F    mov         edi,eax
 004B1641    mov         dword ptr [esp],0FFFFFFFF
 004B1648    mov         eax,edi
 004B164A    mov         edx,dword ptr [eax]
 004B164C    call        dword ptr [edx+14]
 004B164F    mov         esi,eax
 004B1651    dec         esi
 004B1652    test        esi,esi
>004B1654    jl          004B1670
 004B1656    inc         esi
 004B1657    xor         ebx,ebx
 004B1659    mov         edx,ebx
 004B165B    mov         eax,edi
 004B165D    mov         ecx,dword ptr [eax]
 004B165F    call        dword ptr [ecx+18]
 004B1662    cmp         bp,ax
>004B1665    jne         004B166C
 004B1667    mov         dword ptr [esp],ebx
>004B166A    jmp         004B1670
 004B166C    inc         ebx
 004B166D    dec         esi
>004B166E    jne         004B1659
 004B1670    mov         eax,dword ptr [esp]
 004B1673    pop         edx
 004B1674    pop         ebp
 004B1675    pop         edi
 004B1676    pop         esi
 004B1677    pop         ebx
 004B1678    ret
*}
end;

//004B167C
constructor TContainedAction.Create;
begin
{*
 004B167C    push        ebx
 004B167D    push        esi
 004B167E    test        dl,dl
>004B1680    je          004B168A
 004B1682    add         esp,0FFFFFFF0
 004B1685    call        @ClassCreate
 004B168A    mov         ebx,edx
 004B168C    mov         esi,eax
 004B168E    xor         edx,edx
 004B1690    mov         eax,esi
 004B1692    call        TBasicAction.Create
 004B1697    mov         byte ptr [esi+71],1
 004B169B    mov         byte ptr [esi+88],1
 004B16A2    mov         dword ptr [esi+90],0FFFFFFFF
 004B16AC    mov         eax,esi
 004B16AE    test        bl,bl
>004B16B0    je          004B16C1
 004B16B2    call        @AfterConstruction
 004B16B7    pop         dword ptr fs:[0]
 004B16BE    add         esp,0C
 004B16C1    mov         eax,esi
 004B16C3    pop         esi
 004B16C4    pop         ebx
 004B16C5    ret
*}
end;

//004B16C8
destructor TContainedAction.Destroy();
begin
{*
 004B16C8    push        ebx
 004B16C9    push        esi
 004B16CA    push        ecx
 004B16CB    call        @BeforeDestruction
 004B16D0    mov         ebx,edx
 004B16D2    mov         esi,eax
 004B16D4    mov         eax,dword ptr [esi+64];TContainedAction.FActionList:TContainedActionList
 004B16D7    test        eax,eax
>004B16D9    je          004B16E2
 004B16DB    mov         edx,esi
 004B16DD    call        TContainedActionList.RemoveAction
 004B16E2    lea         eax,[esi+8C];TContainedAction.FSecondaryShortCuts:TCustomShortCutList
 004B16E8    mov         dword ptr [esp],eax
 004B16EB    mov         eax,dword ptr [esp]
 004B16EE    mov         eax,dword ptr [eax]
 004B16F0    mov         edx,dword ptr [esp]
 004B16F3    xor         ecx,ecx
 004B16F5    mov         dword ptr [edx],ecx
 004B16F7    call        TObject.Free
 004B16FC    mov         dl,0FC
 004B16FE    and         dl,bl
 004B1700    mov         eax,esi
 004B1702    call        TBasicAction.Destroy
 004B1707    test        bl,bl
>004B1709    jle         004B1712
 004B170B    mov         eax,esi
 004B170D    call        @ClassDestroy
 004B1712    pop         edx
 004B1713    pop         esi
 004B1714    pop         ebx
 004B1715    ret
*}
end;

//004B1718
procedure TContainedAction.AssignTo(Dest:Classes.TPersistent);
begin
{*
 004B1718    push        ebp
 004B1719    mov         ebp,esp
 004B171B    add         esp,0FFFFFFF4
 004B171E    push        ebx
 004B171F    push        esi
 004B1720    push        edi
 004B1721    xor         ecx,ecx
 004B1723    mov         dword ptr [ebp-0C],ecx
 004B1726    mov         ebx,edx
 004B1728    mov         esi,eax
 004B172A    xor         eax,eax
 004B172C    push        ebp
 004B172D    push        4B18D0
 004B1732    push        dword ptr fs:[eax]
 004B1735    mov         dword ptr fs:[eax],esp
 004B1738    mov         eax,ebx
 004B173A    mov         edx,dword ptr ds:[4AF118];TContainedAction
 004B1740    call        @IsClass
 004B1745    test        al,al
>004B1747    je          004B1878
 004B174D    movzx       edx,byte ptr [esi+6A]
 004B1751    mov         edi,ebx
 004B1753    mov         eax,edi
 004B1755    mov         ecx,dword ptr [eax]
 004B1757    call        dword ptr [ecx+68]
 004B175A    mov         edx,dword ptr [esi+6C]
 004B175D    mov         eax,edi
 004B175F    mov         ecx,dword ptr [eax]
 004B1761    call        dword ptr [ecx+6C]
 004B1764    movzx       edx,byte ptr [esi+70]
 004B1768    mov         eax,edi
 004B176A    mov         ecx,dword ptr [eax]
 004B176C    call        dword ptr [ecx+70]
 004B176F    movzx       edx,byte ptr [esi+71]
 004B1773    mov         eax,edi
 004B1775    mov         ecx,dword ptr [eax]
 004B1777    call        dword ptr [ecx+74]
 004B177A    mov         edx,dword ptr [esi+74]
 004B177D    mov         eax,edi
 004B177F    mov         ecx,dword ptr [eax]
 004B1781    call        dword ptr [ecx+78]
 004B1784    mov         edx,dword ptr [esi+78]
 004B1787    mov         eax,edi
 004B1789    mov         ecx,dword ptr [eax]
 004B178B    call        dword ptr [ecx+7C]
 004B178E    mov         edx,dword ptr [esi+7C]
 004B1791    mov         eax,edi
 004B1793    mov         ecx,dword ptr [eax]
 004B1795    call        dword ptr [ecx+80]
 004B179B    movzx       edx,byte ptr [esi+80]
 004B17A2    mov         eax,edi
 004B17A4    mov         ecx,dword ptr [eax]
 004B17A6    call        dword ptr [ecx+84]
 004B17AC    mov         edx,dword ptr [esi+84]
 004B17B2    mov         eax,edi
 004B17B4    mov         ecx,dword ptr [eax]
 004B17B6    call        dword ptr [ecx+88]
 004B17BC    movzx       edx,byte ptr [esi+88]
 004B17C3    mov         eax,edi
 004B17C5    mov         ecx,dword ptr [eax]
 004B17C7    call        dword ptr [ecx+8C]
 004B17CD    movzx       edx,word ptr [esi+8A]
 004B17D4    mov         eax,edi
 004B17D6    mov         ecx,dword ptr [eax]
 004B17D8    call        dword ptr [ecx+90]
 004B17DE    mov         eax,edi
 004B17E0    call        TVirtualListAction.GetSecondaryShortCuts
 004B17E5    test        eax,eax
>004B17E7    je          004B1812
 004B17E9    mov         eax,esi
 004B17EB    call        TVirtualListAction.GetSecondaryShortCuts
 004B17F0    test        eax,eax
>004B17F2    jne         004B1802
 004B17F4    mov         eax,edi
 004B17F6    call        TVirtualListAction.GetSecondaryShortCuts
 004B17FB    mov         edx,dword ptr [eax]
 004B17FD    call        dword ptr [edx+48]
>004B1800    jmp         004B1812
 004B1802    mov         eax,esi
 004B1804    call        TVirtualListAction.GetSecondaryShortCuts
 004B1809    mov         edx,eax
 004B180B    mov         eax,edi
 004B180D    call        TVirtualListAction.SetSecondaryShortCuts
 004B1812    mov         edx,dword ptr [esi+90]
 004B1818    mov         eax,edi
 004B181A    mov         ecx,dword ptr [eax]
 004B181C    call        dword ptr [ecx+94]
 004B1822    movzx       edx,byte ptr [esi+95]
 004B1829    mov         eax,edi
 004B182B    mov         ecx,dword ptr [eax]
 004B182D    call        dword ptr [ecx+98]
 004B1833    mov         eax,dword ptr [esi+0C]
 004B1836    mov         dword ptr [edi+0C],eax
 004B1839    push        dword ptr [esi+54]
 004B183C    push        dword ptr [esi+50]
 004B183F    mov         eax,edi
 004B1841    mov         edx,dword ptr [eax]
 004B1843    call        dword ptr [edx+48]
 004B1846    mov         eax,dword ptr [esi+98]
 004B184C    mov         dword ptr [edi+98],eax
 004B1852    mov         eax,dword ptr [esi+9C]
 004B1858    mov         dword ptr [edi+9C],eax
 004B185E    mov         eax,dword ptr [esi+58]
 004B1861    mov         dword ptr [edi+58],eax
 004B1864    mov         eax,dword ptr [esi+5C]
 004B1867    mov         dword ptr [edi+5C],eax
 004B186A    mov         eax,dword ptr [esi+48]
 004B186D    mov         dword ptr [edi+48],eax
 004B1870    mov         eax,dword ptr [esi+4C]
 004B1873    mov         dword ptr [edi+4C],eax
>004B1876    jmp         004B18BA
 004B1878    test        ebx,ebx
>004B187A    jne         004B18B1
 004B187C    mov         eax,4B18EC;'Dest'
 004B1881    mov         dword ptr [ebp-8],eax
 004B1884    mov         byte ptr [ebp-4],11
 004B1888    lea         eax,[ebp-8]
 004B188B    push        eax
 004B188C    push        0
 004B188E    lea         edx,[ebp-0C]
 004B1891    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B1896    call        LoadResString
 004B189B    mov         ecx,dword ptr [ebp-0C]
 004B189E    mov         dl,1
 004B18A0    mov         eax,[004AED7C];EActionError
 004B18A5    call        Exception.CreateFmt
 004B18AA    call        @RaiseExcept
>004B18AF    jmp         004B18BA
 004B18B1    mov         edx,ebx
 004B18B3    mov         eax,esi
 004B18B5    call        TPersistent.AssignTo
 004B18BA    xor         eax,eax
 004B18BC    pop         edx
 004B18BD    pop         ecx
 004B18BE    pop         ecx
 004B18BF    mov         dword ptr fs:[eax],edx
 004B18C2    push        4B18D7
 004B18C7    lea         eax,[ebp-0C]
 004B18CA    call        @UStrClr
 004B18CF    ret
>004B18D0    jmp         @HandleFinally
>004B18D5    jmp         004B18C7
 004B18D7    pop         edi
 004B18D8    pop         esi
 004B18D9    pop         ebx
 004B18DA    mov         esp,ebp
 004B18DC    pop         ebp
 004B18DD    ret
*}
end;

//004B18F8
{*function sub_004B18F8(?:?):?;
begin
 004B18F8    add         esp,0FFFFFFF8
 004B18FB    mov         edx,dword ptr [eax+64]
 004B18FE    test        edx,edx
>004B1900    je          004B1923
 004B1902    cmp         dword ptr [edx+40],0
>004B1906    je          004B1923
 004B1908    mov         edx,dword ptr [edx+40]
 004B190B    mov         dword ptr [esp],eax
 004B190E    lea         eax,[edx+8]
 004B1911    mov         dword ptr [esp+4],eax
 004B1915    mov         edx,esp
 004B1917    mov         eax,dword ptr [esp+4]
 004B191B    call        00434714
 004B1920    pop         ecx
 004B1921    pop         edx
 004B1922    ret
 004B1923    or          eax,0FFFFFFFF
 004B1926    pop         ecx
 004B1927    pop         edx
 004B1928    ret
end;*}

//004B192C
{*procedure sub_004B192C(?:TContainedAction; ?:?);
begin
 004B192C    push        ebx
 004B192D    push        esi
 004B192E    push        edi
 004B192F    push        ecx
 004B1930    mov         esi,edx
 004B1932    mov         ebx,eax
 004B1934    mov         eax,ebx
 004B1936    call        004B18F8
 004B193B    test        eax,eax
>004B193D    jl          004B197B
 004B193F    mov         edx,dword ptr [ebx+64]
 004B1942    mov         edi,dword ptr [edx+40]
 004B1945    mov         edx,dword ptr [edi+8]
 004B1948    test        esi,esi
>004B194A    jge         004B194E
 004B194C    xor         esi,esi
 004B194E    cmp         edx,esi
>004B1950    jg          004B1955
 004B1952    mov         esi,edx
 004B1954    dec         esi
 004B1955    cmp         eax,esi
>004B1957    je          004B197B
 004B1959    mov         edx,edi
 004B195B    add         edx,8
 004B195E    mov         cl,1
 004B1960    xchg        eax,edx
 004B1961    call        00435200
 004B1966    mov         eax,dword ptr [ebx+64]
 004B1969    mov         eax,dword ptr [eax+40]
 004B196C    mov         dword ptr [esp],ebx
 004B196F    mov         ecx,esp
 004B1971    add         eax,8
 004B1974    mov         edx,esi
 004B1976    call        004353E0
 004B197B    pop         edx
 004B197C    pop         edi
 004B197D    pop         esi
 004B197E    pop         ebx
 004B197F    ret
end;*}

//004B1980
procedure TContainedAction.GetParentComponent;
begin
{*
 004B1980    mov         edx,dword ptr [eax+64];TContainedAction.FActionList:TContainedActionList
 004B1983    test        edx,edx
>004B1985    je          004B198A
 004B1987    mov         eax,edx
 004B1989    ret
 004B198A    call        TComponent.GetParentComponent
 004B198F    ret
*}
end;

//004B1990
procedure TContainedAction.SetParentComponent(AParent:TComponent);
begin
{*
 004B1990    push        ebx
 004B1991    push        esi
 004B1992    mov         esi,edx
 004B1994    mov         ebx,eax
 004B1996    test        byte ptr [ebx+1C],1
>004B199A    jne         004B19B6
 004B199C    mov         eax,esi
 004B199E    mov         edx,dword ptr ds:[4AFD04];TContainedActionList
 004B19A4    call        @IsClass
 004B19A9    test        al,al
>004B19AB    je          004B19B6
 004B19AD    mov         edx,esi
 004B19AF    mov         eax,ebx
 004B19B1    call        TContainedAction.SetActionList
 004B19B6    pop         esi
 004B19B7    pop         ebx
 004B19B8    ret
*}
end;

//004B19BC
procedure sub_004B19BC;
begin
{*
 004B19BC    push        esi
 004B19BD    mov         si,0FFEF
 004B19C1    call        @CallDynaInst
 004B19C6    pop         esi
 004B19C7    ret
*}
end;

//004B19C8
procedure TContainedAction.HasParent;
begin
{*
 004B19C8    cmp         dword ptr [eax+64],0;TContainedAction.FActionList:TContainedActionList
>004B19CC    je          004B19D1
 004B19CE    mov         al,1
 004B19D0    ret
 004B19D1    call        TComponent.HasParent
 004B19D6    ret
*}
end;

//004B19D8
procedure TContainedAction.ReadState(Reader:Classes.TReader);
begin
{*
 004B19D8    push        ebx
 004B19D9    push        esi
 004B19DA    push        edi
 004B19DB    mov         esi,edx
 004B19DD    mov         ebx,eax
 004B19DF    mov         edx,esi
 004B19E1    mov         eax,ebx
 004B19E3    call        TComponent.ReadState
 004B19E8    mov         edi,dword ptr [esi+2C]
 004B19EB    mov         eax,edi
 004B19ED    mov         edx,dword ptr ds:[4AFD04];TContainedActionList
 004B19F3    call        @IsClass
 004B19F8    test        al,al
>004B19FA    je          004B1A05
 004B19FC    mov         edx,edi
 004B19FE    mov         eax,ebx
 004B1A00    call        TContainedAction.SetActionList
 004B1A05    pop         edi
 004B1A06    pop         esi
 004B1A07    pop         ebx
 004B1A08    ret
*}
end;

//004B1A0C
procedure TContainedAction.SetActionList(AActionList:TContainedActionList);
begin
{*
 004B1A0C    push        ebx
 004B1A0D    push        esi
 004B1A0E    mov         esi,edx
 004B1A10    mov         ebx,eax
 004B1A12    mov         eax,dword ptr [ebx+64]
 004B1A15    cmp         esi,eax
>004B1A17    je          004B1A31
 004B1A19    test        eax,eax
>004B1A1B    je          004B1A24
 004B1A1D    mov         edx,ebx
 004B1A1F    call        TContainedActionList.RemoveAction
 004B1A24    test        esi,esi
>004B1A26    je          004B1A31
 004B1A28    mov         edx,ebx
 004B1A2A    mov         eax,esi
 004B1A2C    call        004B2270
 004B1A31    pop         esi
 004B1A32    pop         ebx
 004B1A33    ret
*}
end;

//004B1A34
procedure TContainedAction.SetCategory(Value:string);
begin
{*
 004B1A34    push        ebx
 004B1A35    push        esi
 004B1A36    mov         esi,edx
 004B1A38    mov         ebx,eax
 004B1A3A    mov         eax,esi
 004B1A3C    mov         edx,dword ptr [ebx+60];TContainedAction.FCategory:string
 004B1A3F    call        @UStrEqual
>004B1A44    je          004B1A5C
 004B1A46    lea         eax,[ebx+60];TContainedAction.FCategory:string
 004B1A49    mov         edx,esi
 004B1A4B    call        @UStrAsg
 004B1A50    mov         eax,dword ptr [ebx+64];TContainedAction.FActionList:TContainedActionList
 004B1A53    test        eax,eax
>004B1A55    je          004B1A5C
 004B1A57    mov         edx,dword ptr [eax]
 004B1A59    call        dword ptr [edx+44];TContainedActionList.sub_004B2384
 004B1A5C    pop         esi
 004B1A5D    pop         ebx
 004B1A5E    ret
*}
end;

//004B1A60
{*procedure sub_004B1A60(?:?);
begin
 004B1A60    push        ebx
 004B1A61    push        esi
 004B1A62    push        edi
 004B1A63    push        ebp
 004B1A64    mov         ebx,edx
 004B1A66    mov         ebp,eax
 004B1A68    cmp         bl,byte ptr [ebp+6A];TContainedAction.FAutoCheck:Boolean
>004B1A6B    je          004B1AB4
 004B1A6D    mov         eax,ebp
 004B1A6F    call        0049FE10
 004B1A74    mov         edi,eax
 004B1A76    dec         edi
 004B1A77    test        edi,edi
>004B1A79    jl          004B1AAA
 004B1A7B    inc         edi
 004B1A7C    xor         esi,esi
 004B1A7E    mov         edx,esi
 004B1A80    mov         eax,ebp
 004B1A82    call        0049FDF4
 004B1A87    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1A8D    call        @IsClass
 004B1A92    test        al,al
>004B1A94    je          004B1AA6
 004B1A96    mov         edx,esi
 004B1A98    mov         eax,ebp
 004B1A9A    call        0049FDF4
 004B1A9F    mov         edx,ebx
 004B1AA1    mov         ecx,dword ptr [eax]
 004B1AA3    call        dword ptr [ecx+50]
 004B1AA6    inc         esi
 004B1AA7    dec         edi
>004B1AA8    jne         004B1A7E
 004B1AAA    mov         byte ptr [ebp+6A],bl;TContainedAction.FAutoCheck:Boolean
 004B1AAD    mov         eax,ebp
 004B1AAF    mov         edx,dword ptr [eax]
 004B1AB1    call        dword ptr [edx+44];TContainedAction.sub_0049FEF0
 004B1AB4    pop         ebp
 004B1AB5    pop         edi
 004B1AB6    pop         esi
 004B1AB7    pop         ebx
 004B1AB8    ret
end;*}

//004B1ABC
procedure TVirtualListAction.SetCaption(Value:string);
begin
{*
 004B1ABC    push        ebx
 004B1ABD    push        esi
 004B1ABE    push        edi
 004B1ABF    push        ebp
 004B1AC0    mov         ebp,edx
 004B1AC2    mov         ebx,eax
 004B1AC4    mov         eax,ebp
 004B1AC6    mov         edx,dword ptr [ebx+6C];TVirtualListAction.FCaption:string
 004B1AC9    call        @UStrEqual
>004B1ACE    je          004B1B1E
 004B1AD0    mov         eax,ebx
 004B1AD2    call        0049FE10
 004B1AD7    mov         edi,eax
 004B1AD9    dec         edi
 004B1ADA    test        edi,edi
>004B1ADC    jl          004B1B0D
 004B1ADE    inc         edi
 004B1ADF    xor         esi,esi
 004B1AE1    mov         edx,esi
 004B1AE3    mov         eax,ebx
 004B1AE5    call        0049FDF4
 004B1AEA    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1AF0    call        @IsClass
 004B1AF5    test        al,al
>004B1AF7    je          004B1B09
 004B1AF9    mov         edx,esi
 004B1AFB    mov         eax,ebx
 004B1AFD    call        0049FDF4
 004B1B02    mov         edx,ebp
 004B1B04    mov         ecx,dword ptr [eax]
 004B1B06    call        dword ptr [ecx+54]
 004B1B09    inc         esi
 004B1B0A    dec         edi
>004B1B0B    jne         004B1AE1
 004B1B0D    lea         eax,[ebx+6C];TVirtualListAction.FCaption:string
 004B1B10    mov         edx,ebp
 004B1B12    call        @UStrAsg
 004B1B17    mov         eax,ebx
 004B1B19    mov         edx,dword ptr [eax]
 004B1B1B    call        dword ptr [edx+44];TVirtualListAction.sub_0049FEF0
 004B1B1E    pop         ebp
 004B1B1F    pop         edi
 004B1B20    pop         esi
 004B1B21    pop         ebx
 004B1B22    ret
*}
end;

//004B1B24
{*procedure sub_004B1B24(?:?);
begin
 004B1B24    push        ebx
 004B1B25    push        esi
 004B1B26    push        edi
 004B1B27    mov         edi,edx
 004B1B29    mov         esi,eax
 004B1B2B    mov         eax,dword ptr [esi+8];TContainedAction.FName:TComponentName
 004B1B2E    mov         edx,dword ptr [esi+6C];TContainedAction.FCaption:string
 004B1B31    call        @UStrEqual
>004B1B36    jne         004B1B45
 004B1B38    mov         ebx,dword ptr [esi+4];TContainedAction.FOwner:TComponent
 004B1B3B    test        ebx,ebx
>004B1B3D    je          004B1B49
 004B1B3F    test        byte ptr [ebx+1C],1;TComponent.FComponentState:TComponentState
>004B1B43    je          004B1B49
 004B1B45    xor         eax,eax
>004B1B47    jmp         004B1B4B
 004B1B49    mov         al,1
 004B1B4B    mov         ebx,eax
 004B1B4D    mov         edx,edi
 004B1B4F    mov         eax,esi
 004B1B51    call        TComponent.SetName
 004B1B56    test        bl,bl
>004B1B58    je          004B1B6E
 004B1B5A    mov         eax,esi
 004B1B5C    call        0049FE10
 004B1B61    test        eax,eax
>004B1B63    jne         004B1B6E
 004B1B65    mov         edx,edi
 004B1B67    mov         eax,esi
 004B1B69    mov         ecx,dword ptr [eax]
 004B1B6B    call        dword ptr [ecx+6C];TVirtualListAction.SetCaption
 004B1B6E    pop         edi
 004B1B6F    pop         esi
 004B1B70    pop         ebx
 004B1B71    ret
end;*}

//004B1B74
{*procedure sub_004B1B74(?:?);
begin
 004B1B74    push        ebp
 004B1B75    mov         ebp,esp
 004B1B77    push        ecx
 004B1B78    push        ebx
 004B1B79    push        esi
 004B1B7A    push        edi
 004B1B7B    mov         ebx,edx
 004B1B7D    mov         dword ptr [ebp-4],eax
 004B1B80    mov         eax,dword ptr [ebp-4]
 004B1B83    cmp         byte ptr [eax+94],0;TContainedAction.FChecking:Boolean
>004B1B8A    jne         004B1C79
 004B1B90    mov         eax,dword ptr [ebp-4]
 004B1B93    mov         byte ptr [eax+94],1;TContainedAction.FChecking:Boolean
 004B1B9A    xor         edx,edx
 004B1B9C    push        ebp
 004B1B9D    push        4B1C72
 004B1BA2    push        dword ptr fs:[edx]
 004B1BA5    mov         dword ptr fs:[edx],esp
 004B1BA8    mov         eax,dword ptr [ebp-4]
 004B1BAB    cmp         bl,byte ptr [eax+70];TContainedAction.FChecked:Boolean
>004B1BAE    je          004B1C5A
 004B1BB4    mov         eax,dword ptr [ebp-4]
 004B1BB7    call        0049FE10
 004B1BBC    mov         edi,eax
 004B1BBE    dec         edi
 004B1BBF    test        edi,edi
>004B1BC1    jl          004B1BF4
 004B1BC3    inc         edi
 004B1BC4    xor         esi,esi
 004B1BC6    mov         edx,esi
 004B1BC8    mov         eax,dword ptr [ebp-4]
 004B1BCB    call        0049FDF4
 004B1BD0    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1BD6    call        @IsClass
 004B1BDB    test        al,al
>004B1BDD    je          004B1BF0
 004B1BDF    mov         edx,esi
 004B1BE1    mov         eax,dword ptr [ebp-4]
 004B1BE4    call        0049FDF4
 004B1BE9    mov         edx,ebx
 004B1BEB    mov         ecx,dword ptr [eax]
 004B1BED    call        dword ptr [ecx+58]
 004B1BF0    inc         esi
 004B1BF1    dec         edi
>004B1BF2    jne         004B1BC6
 004B1BF4    mov         eax,dword ptr [ebp-4]
 004B1BF7    mov         byte ptr [eax+70],bl;TContainedAction.FChecked:Boolean
 004B1BFA    mov         eax,dword ptr [ebp-4]
 004B1BFD    cmp         dword ptr [eax+74],0;TContainedAction.FGroupIndex:Integer
>004B1C01    jle         004B1C52
 004B1C03    mov         eax,dword ptr [ebp-4]
 004B1C06    cmp         byte ptr [eax+70],0;TContainedAction.FChecked:Boolean
>004B1C0A    je          004B1C52
 004B1C0C    mov         eax,dword ptr [ebp-4]
 004B1C0F    cmp         dword ptr [eax+64],0;TContainedAction.FActionList:TContainedActionList
>004B1C13    je          004B1C52
 004B1C15    mov         eax,dword ptr [ebp-4]
 004B1C18    mov         eax,dword ptr [eax+64];TContainedAction.FActionList:TContainedActionList
 004B1C1B    call        004B25EC
 004B1C20    mov         edi,eax
 004B1C22    dec         edi
 004B1C23    test        edi,edi
>004B1C25    jl          004B1C52
 004B1C27    inc         edi
 004B1C28    xor         esi,esi
 004B1C2A    mov         eax,dword ptr [ebp-4]
 004B1C2D    mov         eax,dword ptr [eax+64];TContainedAction.FActionList:TContainedActionList
 004B1C30    mov         edx,esi
 004B1C32    call        TContainedActionList.GetAction
 004B1C37    cmp         eax,dword ptr [ebp-4]
>004B1C3A    je          004B1C4E
 004B1C3C    mov         edx,dword ptr [eax+74];TContainedAction.FGroupIndex:Integer
 004B1C3F    mov         ecx,dword ptr [ebp-4]
 004B1C42    cmp         edx,dword ptr [ecx+74]
>004B1C45    jne         004B1C4E
 004B1C47    xor         edx,edx
 004B1C49    mov         ecx,dword ptr [eax]
 004B1C4B    call        dword ptr [ecx+70];TContainedAction.sub_004B1B74
 004B1C4E    inc         esi
 004B1C4F    dec         edi
>004B1C50    jne         004B1C2A
 004B1C52    mov         eax,dword ptr [ebp-4]
 004B1C55    mov         edx,dword ptr [eax]
 004B1C57    call        dword ptr [edx+44];TContainedAction.sub_0049FEF0
 004B1C5A    xor         eax,eax
 004B1C5C    pop         edx
 004B1C5D    pop         ecx
 004B1C5E    pop         ecx
 004B1C5F    mov         dword ptr fs:[eax],edx
 004B1C62    push        4B1C79
 004B1C67    mov         eax,dword ptr [ebp-4]
 004B1C6A    mov         byte ptr [eax+94],0;TContainedAction.FChecking:Boolean
 004B1C71    ret
>004B1C72    jmp         @HandleFinally
>004B1C77    jmp         004B1C67
 004B1C79    pop         edi
 004B1C7A    pop         esi
 004B1C7B    pop         ebx
 004B1C7C    pop         ecx
 004B1C7D    pop         ebp
 004B1C7E    ret
end;*}

//004B1C80
procedure TVirtualListAction.SetEnabled(Value:Boolean);
begin
{*
 004B1C80    push        ebx
 004B1C81    push        esi
 004B1C82    push        edi
 004B1C83    push        ebp
 004B1C84    mov         ebx,edx
 004B1C86    mov         ebp,eax
 004B1C88    cmp         bl,byte ptr [ebp+71];TVirtualListAction.FEnabled:Boolean
>004B1C8B    je          004B1CF0
 004B1C8D    mov         eax,dword ptr [ebp+64];TVirtualListAction.FActionList:TContainedActionList
 004B1C90    test        eax,eax
>004B1C92    je          004B1CA9
 004B1C94    movzx       edx,byte ptr [eax+60];TContainedActionList.FState:TActionListState
 004B1C98    cmp         dl,1
>004B1C9B    jne         004B1CA2
 004B1C9D    mov         byte ptr [ebp+71],bl;TVirtualListAction.FEnabled:Boolean
>004B1CA0    jmp         004B1CF0
 004B1CA2    cmp         dl,2
>004B1CA5    jne         004B1CA9
 004B1CA7    mov         bl,1
 004B1CA9    mov         eax,ebp
 004B1CAB    call        0049FE10
 004B1CB0    mov         edi,eax
 004B1CB2    dec         edi
 004B1CB3    test        edi,edi
>004B1CB5    jl          004B1CE6
 004B1CB7    inc         edi
 004B1CB8    xor         esi,esi
 004B1CBA    mov         edx,esi
 004B1CBC    mov         eax,ebp
 004B1CBE    call        0049FDF4
 004B1CC3    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1CC9    call        @IsClass
 004B1CCE    test        al,al
>004B1CD0    je          004B1CE2
 004B1CD2    mov         edx,esi
 004B1CD4    mov         eax,ebp
 004B1CD6    call        0049FDF4
 004B1CDB    mov         edx,ebx
 004B1CDD    mov         ecx,dword ptr [eax]
 004B1CDF    call        dword ptr [ecx+5C]
 004B1CE2    inc         esi
 004B1CE3    dec         edi
>004B1CE4    jne         004B1CBA
 004B1CE6    mov         byte ptr [ebp+71],bl;TVirtualListAction.FEnabled:Boolean
 004B1CE9    mov         eax,ebp
 004B1CEB    mov         edx,dword ptr [eax]
 004B1CED    call        dword ptr [edx+44];TVirtualListAction.sub_0049FEF0
 004B1CF0    pop         ebp
 004B1CF1    pop         edi
 004B1CF2    pop         esi
 004B1CF3    pop         ebx
 004B1CF4    ret
*}
end;

//004B1CF8
{*procedure sub_004B1CF8(?:?);
begin
 004B1CF8    push        ebx
 004B1CF9    push        esi
 004B1CFA    push        edi
 004B1CFB    push        ebp
 004B1CFC    push        ecx
 004B1CFD    mov         ebp,edx
 004B1CFF    mov         ebx,eax
 004B1D01    cmp         ebp,dword ptr [ebx+74];TContainedAction.FGroupIndex:Integer
>004B1D04    je          004B1DBF
 004B1D0A    movzx       eax,byte ptr [ebx+70];TContainedAction.FChecked:Boolean
 004B1D0E    mov         byte ptr [esp],al
 004B1D11    test        ebp,ebp
 004B1D13    setg        al
 004B1D16    and         al,byte ptr [esp]
>004B1D19    je          004B1D56
 004B1D1B    cmp         dword ptr [ebx+64],0;TContainedAction.FActionList:TContainedActionList
>004B1D1F    je          004B1D56
 004B1D21    mov         eax,dword ptr [ebx+64];TContainedAction.FActionList:TContainedActionList
 004B1D24    call        004B25EC
 004B1D29    mov         edi,eax
 004B1D2B    dec         edi
 004B1D2C    test        edi,edi
>004B1D2E    jl          004B1D56
 004B1D30    inc         edi
 004B1D31    xor         esi,esi
 004B1D33    mov         edx,esi
 004B1D35    mov         eax,dword ptr [ebx+64];TContainedAction.FActionList:TContainedActionList
 004B1D38    call        TContainedActionList.GetAction
 004B1D3D    cmp         ebx,eax
>004B1D3F    je          004B1D52
 004B1D41    cmp         ebp,dword ptr [eax+74];TContainedAction.FGroupIndex:Integer
>004B1D44    jne         004B1D52
 004B1D46    cmp         byte ptr [eax+70],0;TContainedAction.FChecked:Boolean
>004B1D4A    je          004B1D52
 004B1D4C    mov         byte ptr [esp],0
>004B1D50    jmp         004B1D56
 004B1D52    inc         esi
 004B1D53    dec         edi
>004B1D54    jne         004B1D33
 004B1D56    mov         eax,ebx
 004B1D58    call        0049FE10
 004B1D5D    mov         edi,eax
 004B1D5F    dec         edi
 004B1D60    test        edi,edi
>004B1D62    jl          004B1DAE
 004B1D64    inc         edi
 004B1D65    xor         esi,esi
 004B1D67    mov         edx,esi
 004B1D69    mov         eax,ebx
 004B1D6B    call        0049FDF4
 004B1D70    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1D76    call        @IsClass
 004B1D7B    test        al,al
>004B1D7D    je          004B1DAA
 004B1D7F    movzx       eax,byte ptr [esp]
 004B1D83    cmp         al,byte ptr [ebx+70];TContainedAction.FChecked:Boolean
>004B1D86    je          004B1D9A
 004B1D88    mov         edx,esi
 004B1D8A    mov         eax,ebx
 004B1D8C    call        0049FDF4
 004B1D91    movzx       edx,byte ptr [esp]
 004B1D95    mov         ecx,dword ptr [eax]
 004B1D97    call        dword ptr [ecx+58]
 004B1D9A    mov         edx,esi
 004B1D9C    mov         eax,ebx
 004B1D9E    call        0049FDF4
 004B1DA3    mov         edx,ebp
 004B1DA5    mov         ecx,dword ptr [eax]
 004B1DA7    call        dword ptr [ecx+60]
 004B1DAA    inc         esi
 004B1DAB    dec         edi
>004B1DAC    jne         004B1D67
 004B1DAE    movzx       eax,byte ptr [esp]
 004B1DB2    mov         byte ptr [ebx+70],al;TContainedAction.FChecked:Boolean
 004B1DB5    mov         dword ptr [ebx+74],ebp;TContainedAction.FGroupIndex:Integer
 004B1DB8    mov         eax,ebx
 004B1DBA    mov         edx,dword ptr [eax]
 004B1DBC    call        dword ptr [edx+44];TContainedAction.sub_0049FEF0
 004B1DBF    pop         edx
 004B1DC0    pop         ebp
 004B1DC1    pop         edi
 004B1DC2    pop         esi
 004B1DC3    pop         ebx
 004B1DC4    ret
end;*}

//004B1DC8
procedure TVirtualListAction.SetHelpContext(Value:THelpContext);
begin
{*
 004B1DC8    push        ebx
 004B1DC9    push        esi
 004B1DCA    push        edi
 004B1DCB    push        ebp
 004B1DCC    mov         ebp,edx
 004B1DCE    mov         ebx,eax
 004B1DD0    cmp         ebp,dword ptr [ebx+78];TVirtualListAction.FHelpContext:THelpContext
>004B1DD3    je          004B1E1C
 004B1DD5    mov         eax,ebx
 004B1DD7    call        0049FE10
 004B1DDC    mov         edi,eax
 004B1DDE    dec         edi
 004B1DDF    test        edi,edi
>004B1DE1    jl          004B1E12
 004B1DE3    inc         edi
 004B1DE4    xor         esi,esi
 004B1DE6    mov         edx,esi
 004B1DE8    mov         eax,ebx
 004B1DEA    call        0049FDF4
 004B1DEF    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1DF5    call        @IsClass
 004B1DFA    test        al,al
>004B1DFC    je          004B1E0E
 004B1DFE    mov         edx,esi
 004B1E00    mov         eax,ebx
 004B1E02    call        0049FDF4
 004B1E07    mov         edx,ebp
 004B1E09    mov         ecx,dword ptr [eax]
 004B1E0B    call        dword ptr [ecx+64]
 004B1E0E    inc         esi
 004B1E0F    dec         edi
>004B1E10    jne         004B1DE6
 004B1E12    mov         dword ptr [ebx+78],ebp;TVirtualListAction.FHelpContext:THelpContext
 004B1E15    mov         eax,ebx
 004B1E17    mov         edx,dword ptr [eax]
 004B1E19    call        dword ptr [edx+44];TVirtualListAction.sub_0049FEF0
 004B1E1C    pop         ebp
 004B1E1D    pop         edi
 004B1E1E    pop         esi
 004B1E1F    pop         ebx
 004B1E20    ret
*}
end;

//004B1E24
{*procedure sub_004B1E24(?:?);
begin
 004B1E24    push        ebx
 004B1E25    push        esi
 004B1E26    push        edi
 004B1E27    push        ebp
 004B1E28    mov         ebp,edx
 004B1E2A    mov         ebx,eax
 004B1E2C    mov         eax,ebp
 004B1E2E    mov         edx,dword ptr [ebx+7C];TContainedAction.FHelpKeyword:string
 004B1E31    call        @UStrEqual
>004B1E36    je          004B1E86
 004B1E38    mov         eax,ebx
 004B1E3A    call        0049FE10
 004B1E3F    mov         edi,eax
 004B1E41    dec         edi
 004B1E42    test        edi,edi
>004B1E44    jl          004B1E75
 004B1E46    inc         edi
 004B1E47    xor         esi,esi
 004B1E49    mov         edx,esi
 004B1E4B    mov         eax,ebx
 004B1E4D    call        0049FDF4
 004B1E52    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1E58    call        @IsClass
 004B1E5D    test        al,al
>004B1E5F    je          004B1E71
 004B1E61    mov         edx,esi
 004B1E63    mov         eax,ebx
 004B1E65    call        0049FDF4
 004B1E6A    mov         edx,ebp
 004B1E6C    mov         ecx,dword ptr [eax]
 004B1E6E    call        dword ptr [ecx+68]
 004B1E71    inc         esi
 004B1E72    dec         edi
>004B1E73    jne         004B1E49
 004B1E75    lea         eax,[ebx+7C];TContainedAction.FHelpKeyword:string
 004B1E78    mov         edx,ebp
 004B1E7A    call        @UStrAsg
 004B1E7F    mov         eax,ebx
 004B1E81    mov         edx,dword ptr [eax]
 004B1E83    call        dword ptr [edx+44];TContainedAction.sub_0049FEF0
 004B1E86    pop         ebp
 004B1E87    pop         edi
 004B1E88    pop         esi
 004B1E89    pop         ebx
 004B1E8A    ret
end;*}

//004B1E8C
{*procedure sub_004B1E8C(?:?);
begin
 004B1E8C    push        ebx
 004B1E8D    push        esi
 004B1E8E    push        edi
 004B1E8F    push        ebp
 004B1E90    mov         ebx,edx
 004B1E92    mov         ebp,eax
 004B1E94    cmp         bl,byte ptr [ebp+80];TContainedAction.FHelpType:THelpType
>004B1E9A    je          004B1EE6
 004B1E9C    mov         eax,ebp
 004B1E9E    call        0049FE10
 004B1EA3    mov         edi,eax
 004B1EA5    dec         edi
 004B1EA6    test        edi,edi
>004B1EA8    jl          004B1ED9
 004B1EAA    inc         edi
 004B1EAB    xor         esi,esi
 004B1EAD    mov         edx,esi
 004B1EAF    mov         eax,ebp
 004B1EB1    call        0049FDF4
 004B1EB6    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1EBC    call        @IsClass
 004B1EC1    test        al,al
>004B1EC3    je          004B1ED5
 004B1EC5    mov         edx,esi
 004B1EC7    mov         eax,ebp
 004B1EC9    call        0049FDF4
 004B1ECE    mov         edx,ebx
 004B1ED0    mov         ecx,dword ptr [eax]
 004B1ED2    call        dword ptr [ecx+6C]
 004B1ED5    inc         esi
 004B1ED6    dec         edi
>004B1ED7    jne         004B1EAD
 004B1ED9    mov         byte ptr [ebp+80],bl;TContainedAction.FHelpType:THelpType
 004B1EDF    mov         eax,ebp
 004B1EE1    mov         edx,dword ptr [eax]
 004B1EE3    call        dword ptr [edx+44];TContainedAction.sub_0049FEF0
 004B1EE6    pop         ebp
 004B1EE7    pop         edi
 004B1EE8    pop         esi
 004B1EE9    pop         ebx
 004B1EEA    ret
end;*}

//004B1EEC
procedure TVirtualListAction.SetHint(Value:string);
begin
{*
 004B1EEC    push        ebx
 004B1EED    push        esi
 004B1EEE    push        edi
 004B1EEF    push        ebp
 004B1EF0    mov         ebp,edx
 004B1EF2    mov         ebx,eax
 004B1EF4    mov         eax,ebp
 004B1EF6    mov         edx,dword ptr [ebx+84];TVirtualListAction.FHint:string
 004B1EFC    call        @UStrEqual
>004B1F01    je          004B1F54
 004B1F03    mov         eax,ebx
 004B1F05    call        0049FE10
 004B1F0A    mov         edi,eax
 004B1F0C    dec         edi
 004B1F0D    test        edi,edi
>004B1F0F    jl          004B1F40
 004B1F11    inc         edi
 004B1F12    xor         esi,esi
 004B1F14    mov         edx,esi
 004B1F16    mov         eax,ebx
 004B1F18    call        0049FDF4
 004B1F1D    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1F23    call        @IsClass
 004B1F28    test        al,al
>004B1F2A    je          004B1F3C
 004B1F2C    mov         edx,esi
 004B1F2E    mov         eax,ebx
 004B1F30    call        0049FDF4
 004B1F35    mov         edx,ebp
 004B1F37    mov         ecx,dword ptr [eax]
 004B1F39    call        dword ptr [ecx+70]
 004B1F3C    inc         esi
 004B1F3D    dec         edi
>004B1F3E    jne         004B1F14
 004B1F40    lea         eax,[ebx+84];TVirtualListAction.FHint:string
 004B1F46    mov         edx,ebp
 004B1F48    call        @UStrAsg
 004B1F4D    mov         eax,ebx
 004B1F4F    mov         edx,dword ptr [eax]
 004B1F51    call        dword ptr [edx+44];TVirtualListAction.sub_0049FEF0
 004B1F54    pop         ebp
 004B1F55    pop         edi
 004B1F56    pop         esi
 004B1F57    pop         ebx
 004B1F58    ret
*}
end;

//004B1F5C
procedure TVirtualListAction.SetVisible(Value:Boolean);
begin
{*
 004B1F5C    push        ebx
 004B1F5D    push        esi
 004B1F5E    push        edi
 004B1F5F    push        ebp
 004B1F60    mov         ebx,edx
 004B1F62    mov         ebp,eax
 004B1F64    cmp         bl,byte ptr [ebp+88];TVirtualListAction.FVisible:Boolean
>004B1F6A    je          004B1FB6
 004B1F6C    mov         eax,ebp
 004B1F6E    call        0049FE10
 004B1F73    mov         edi,eax
 004B1F75    dec         edi
 004B1F76    test        edi,edi
>004B1F78    jl          004B1FA9
 004B1F7A    inc         edi
 004B1F7B    xor         esi,esi
 004B1F7D    mov         edx,esi
 004B1F7F    mov         eax,ebp
 004B1F81    call        0049FDF4
 004B1F86    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B1F8C    call        @IsClass
 004B1F91    test        al,al
>004B1F93    je          004B1FA5
 004B1F95    mov         edx,esi
 004B1F97    mov         eax,ebp
 004B1F99    call        0049FDF4
 004B1F9E    mov         edx,ebx
 004B1FA0    mov         ecx,dword ptr [eax]
 004B1FA2    call        dword ptr [ecx+7C]
 004B1FA5    inc         esi
 004B1FA6    dec         edi
>004B1FA7    jne         004B1F7D
 004B1FA9    mov         byte ptr [ebp+88],bl;TVirtualListAction.FVisible:Boolean
 004B1FAF    mov         eax,ebp
 004B1FB1    mov         edx,dword ptr [eax]
 004B1FB3    call        dword ptr [edx+44];TVirtualListAction.sub_0049FEF0
 004B1FB6    pop         ebp
 004B1FB7    pop         edi
 004B1FB8    pop         esi
 004B1FB9    pop         ebx
 004B1FBA    ret
*}
end;

//004B1FBC
function TContainedAction.Suspended:Boolean;
begin
{*
 004B1FBC    mov         edx,dword ptr [eax+64];TContainedAction.FActionList:TContainedActionList
 004B1FBF    test        edx,edx
>004B1FC1    je          004B1FC9
 004B1FC3    cmp         byte ptr [edx+60],0;TContainedActionList.FState:TActionListState
>004B1FC7    jne         004B1FCC
 004B1FC9    xor         eax,eax
 004B1FCB    ret
 004B1FCC    mov         al,1
 004B1FCE    ret
*}
end;

//004B1FD0
procedure TVirtualListAction.SetShortCut(Value:TShortCut);
begin
{*
 004B1FD0    push        ebx
 004B1FD1    push        esi
 004B1FD2    push        edi
 004B1FD3    push        ebp
 004B1FD4    mov         ebp,edx
 004B1FD6    mov         ebx,eax
 004B1FD8    cmp         bp,word ptr [ebx+8A];TVirtualListAction.FShortCut:TShortCut
>004B1FDF    je          004B202C
 004B1FE1    mov         eax,ebx
 004B1FE3    call        0049FE10
 004B1FE8    mov         edi,eax
 004B1FEA    dec         edi
 004B1FEB    test        edi,edi
>004B1FED    jl          004B201E
 004B1FEF    inc         edi
 004B1FF0    xor         esi,esi
 004B1FF2    mov         edx,esi
 004B1FF4    mov         eax,ebx
 004B1FF6    call        0049FDF4
 004B1FFB    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B2001    call        @IsClass
 004B2006    test        al,al
>004B2008    je          004B201A
 004B200A    mov         edx,esi
 004B200C    mov         eax,ebx
 004B200E    call        0049FDF4
 004B2013    mov         edx,ebp
 004B2015    mov         ecx,dword ptr [eax]
 004B2017    call        dword ptr [ecx+78]
 004B201A    inc         esi
 004B201B    dec         edi
>004B201C    jne         004B1FF2
 004B201E    mov         word ptr [ebx+8A],bp;TVirtualListAction.FShortCut:TShortCut
 004B2025    mov         eax,ebx
 004B2027    mov         edx,dword ptr [eax]
 004B2029    call        dword ptr [edx+44];TVirtualListAction.sub_0049FEF0
 004B202C    pop         ebp
 004B202D    pop         edi
 004B202E    pop         esi
 004B202F    pop         ebx
 004B2030    ret
*}
end;

//004B2034
{*function sub_004B2034:?;
begin
 004B2034    xor         eax,eax
 004B2036    ret
end;*}

//004B2038
{*function TVirtualListAction.GetSecondaryShortCuts:?;
begin
 004B2038    push        ebx
 004B2039    mov         ebx,eax
 004B203B    cmp         dword ptr [ebx+8C],0;TVirtualListAction.FSecondaryShortCuts:TCustomShortCutList
>004B2042    jne         004B2051
 004B2044    mov         eax,ebx
 004B2046    mov         edx,dword ptr [eax]
 004B2048    call        dword ptr [edx+60];TCustomAction.CreateShortCutList
 004B204B    mov         dword ptr [ebx+8C],eax;TVirtualListAction.FSecondaryShortCuts:TCustomShortCutList
 004B2051    mov         eax,dword ptr [ebx+8C];TVirtualListAction.FSecondaryShortCuts:TCustomShortCutList
 004B2057    pop         ebx
 004B2058    ret
end;*}

//004B205C
procedure TVirtualListAction.SetSecondaryShortCuts(Value:TCustomShortCutList);
begin
{*
 004B205C    push        ebx
 004B205D    push        esi
 004B205E    mov         esi,edx
 004B2060    mov         ebx,eax
 004B2062    cmp         dword ptr [ebx+8C],0;TVirtualListAction.FSecondaryShortCuts:TCustomShortCutList
>004B2069    jne         004B2078
 004B206B    mov         eax,ebx
 004B206D    mov         edx,dword ptr [eax]
 004B206F    call        dword ptr [edx+60];TCustomAction.CreateShortCutList
 004B2072    mov         dword ptr [ebx+8C],eax;TVirtualListAction.FSecondaryShortCuts:TCustomShortCutList
 004B2078    mov         edx,esi
 004B207A    mov         eax,dword ptr [ebx+8C];TVirtualListAction.FSecondaryShortCuts:TCustomShortCutList
 004B2080    mov         ecx,dword ptr [eax]
 004B2082    call        dword ptr [ecx+8];TStringList.Assign
 004B2085    pop         esi
 004B2086    pop         ebx
 004B2087    ret
*}
end;

//004B2088
function TVirtualListAction.IsStoredSecondaryShortCuts(Value:TCustomShortCutList):Boolean;
begin
{*
 004B2088    push        ebx
 004B2089    push        esi
 004B208A    mov         ebx,eax
 004B208C    mov         esi,dword ptr [ebx+8C];TVirtualListAction.FSecondaryShortCuts:TCustomShortCutList
 004B2092    test        esi,esi
>004B2094    je          004B20A1
 004B2096    mov         eax,esi
 004B2098    mov         edx,dword ptr [eax]
 004B209A    call        dword ptr [edx+14];TStringList.GetCount
 004B209D    test        eax,eax
>004B209F    jg          004B20A6
 004B20A1    xor         eax,eax
 004B20A3    pop         esi
 004B20A4    pop         ebx
 004B20A5    ret
 004B20A6    mov         al,1
 004B20A8    pop         esi
 004B20A9    pop         ebx
 004B20AA    ret
*}
end;

//004B20AC
procedure TContainedAction.DoHint(var HintStr:string);
begin
{*
 004B20AC    push        ebx
 004B20AD    push        ecx
 004B20AE    mov         byte ptr [esp],1
 004B20B2    cmp         word ptr [eax+9A],0;TContainedAction.?f9A:word
>004B20BA    je          004B20CC
 004B20BC    mov         ecx,esp
 004B20BE    mov         ebx,eax
 004B20C0    mov         eax,dword ptr [ebx+9C];TContainedAction.?f9C:dword
 004B20C6    call        dword ptr [ebx+98];TContainedAction.FOnHint
 004B20CC    movzx       eax,byte ptr [esp]
 004B20D0    pop         edx
 004B20D1    pop         ebx
 004B20D2    ret
*}
end;

//004B20D4
{*procedure sub_004B20D4(?:?);
begin
 004B20D4    push        ebx
 004B20D5    push        esi
 004B20D6    push        edi
 004B20D7    push        ebp
 004B20D8    mov         ebp,edx
 004B20DA    mov         ebx,eax
 004B20DC    cmp         ebp,dword ptr [ebx+90];TContainedAction.FImageIndex:TImageIndex
>004B20E2    je          004B212E
 004B20E4    mov         eax,ebx
 004B20E6    call        0049FE10
 004B20EB    mov         edi,eax
 004B20ED    dec         edi
 004B20EE    test        edi,edi
>004B20F0    jl          004B2121
 004B20F2    inc         edi
 004B20F3    xor         esi,esi
 004B20F5    mov         edx,esi
 004B20F7    mov         eax,ebx
 004B20F9    call        0049FDF4
 004B20FE    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B2104    call        @IsClass
 004B2109    test        al,al
>004B210B    je          004B211D
 004B210D    mov         edx,esi
 004B210F    mov         eax,ebx
 004B2111    call        0049FDF4
 004B2116    mov         edx,ebp
 004B2118    mov         ecx,dword ptr [eax]
 004B211A    call        dword ptr [ecx+74]
 004B211D    inc         esi
 004B211E    dec         edi
>004B211F    jne         004B20F5
 004B2121    mov         dword ptr [ebx+90],ebp;TContainedAction.FImageIndex:TImageIndex
 004B2127    mov         eax,ebx
 004B2129    mov         edx,dword ptr [eax]
 004B212B    call        dword ptr [edx+44];TContainedAction.sub_0049FEF0
 004B212E    pop         ebp
 004B212F    pop         edi
 004B2130    pop         esi
 004B2131    pop         ebx
 004B2132    ret
end;*}

//004B2134
{*procedure sub_004B2134(?:?);
begin
 004B2134    push        ebx
 004B2135    push        esi
 004B2136    push        edi
 004B2137    push        ebp
 004B2138    mov         ebx,edx
 004B213A    mov         ebp,eax
 004B213C    cmp         bl,byte ptr [ebp+95];TContainedAction.FStatusAction:TStatusAction
>004B2142    je          004B2191
 004B2144    mov         eax,ebp
 004B2146    call        0049FE10
 004B214B    mov         edi,eax
 004B214D    dec         edi
 004B214E    test        edi,edi
>004B2150    jl          004B2184
 004B2152    inc         edi
 004B2153    xor         esi,esi
 004B2155    mov         edx,esi
 004B2157    mov         eax,ebp
 004B2159    call        0049FDF4
 004B215E    mov         edx,dword ptr ds:[4AF93C];TContainedActionLink
 004B2164    call        @IsClass
 004B2169    test        al,al
>004B216B    je          004B2180
 004B216D    mov         edx,esi
 004B216F    mov         eax,ebp
 004B2171    call        0049FDF4
 004B2176    mov         edx,ebx
 004B2178    mov         ecx,dword ptr [eax]
 004B217A    call        dword ptr [ecx+80]
 004B2180    inc         esi
 004B2181    dec         edi
>004B2182    jne         004B2155
 004B2184    mov         byte ptr [ebp+95],bl;TContainedAction.FStatusAction:TStatusAction
 004B218A    mov         eax,ebp
 004B218C    mov         edx,dword ptr [eax]
 004B218E    call        dword ptr [edx+44];TContainedAction.sub_0049FEF0
 004B2191    pop         ebp
 004B2192    pop         edi
 004B2193    pop         esi
 004B2194    pop         ebx
 004B2195    ret
end;*}

//004B2198
function TActionListEnumerator.GetCurrent:TContainedAction;
begin
{*
 004B2198    mov         edx,dword ptr [eax+4]
 004B219B    mov         eax,dword ptr [eax+8]
 004B219E    call        TContainedActionList.GetAction
 004B21A3    ret
*}
end;

//004B21A4
constructor TContainedActionList.Create(AOwner:TComponent);
begin
{*
 004B21A4    push        ebx
 004B21A5    push        esi
 004B21A6    test        dl,dl
>004B21A8    je          004B21B2
 004B21AA    add         esp,0FFFFFFF0
 004B21AD    call        @ClassCreate
 004B21B2    mov         ebx,edx
 004B21B4    mov         esi,eax
 004B21B6    xor         edx,edx
 004B21B8    mov         eax,esi
 004B21BA    call        TComponent.Create
 004B21BF    mov         dl,1
 004B21C1    mov         eax,[004B0968];TList<System.Actions.TContainedAction>
 004B21C6    call        004B2BDC
 004B21CB    mov         dword ptr [esi+40],eax;TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B21CE    mov         byte ptr [esi+60],0;TContainedActionList.FState:TActionListState
 004B21D2    mov         eax,esi
 004B21D4    test        bl,bl
>004B21D6    je          004B21E7
 004B21D8    call        @AfterConstruction
 004B21DD    pop         dword ptr fs:[0]
 004B21E4    add         esp,0C
 004B21E7    mov         eax,esi
 004B21E9    pop         esi
 004B21EA    pop         ebx
 004B21EB    ret
*}
end;

//004B21EC
destructor TContainedActionList.Destroy();
begin
{*
 004B21EC    push        ebx
 004B21ED    push        esi
 004B21EE    push        edi
 004B21EF    push        ebp
 004B21F0    add         esp,0FFFFFFF8
 004B21F3    call        @BeforeDestruction
 004B21F8    mov         byte ptr [esp],dl
 004B21FB    mov         esi,eax
 004B21FD    cmp         dword ptr [esi+40],0;TContainedActionList.FActions:TList<System.Actions.TContainedAction...
>004B2201    je          004B222C
>004B2203    jmp         004B2223
 004B2205    mov         ebx,dword ptr [esi+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B2208    mov         edi,dword ptr [ebx+8];TList<System.Actions.TContainedAction>.FCount:Integer
 004B220B    dec         edi
 004B220C    lea         eax,[ebx+8];TList<System.Actions.TContainedAction>.FCount:Integer
 004B220F    mov         edx,edi
 004B2211    call        00434534
 004B2216    mov         eax,dword ptr [ebx+20]
 004B2219    mov         ebp,dword ptr [eax+edi*4]
 004B221C    mov         eax,ebp
 004B221E    call        TObject.Free
 004B2223    mov         eax,dword ptr [esi+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B2226    cmp         dword ptr [eax+8],0;TList<System.Actions.TContainedAction>.FCount:Integer
>004B222A    jg          004B2205
 004B222C    lea         eax,[esi+40];TContainedActionList.FActions:TList<System.Actions.TContainedAction>
 004B222F    mov         dword ptr [esp+4],eax
 004B2233    mov         eax,dword ptr [esp+4]
 004B2237    mov         eax,dword ptr [eax]
 004B2239    mov         edx,dword ptr [esp+4]
 004B223D    xor         ecx,ecx
 004B223F    mov         dword ptr [edx],ecx
 004B2241    call        TObject.Free
 004B2246    movzx       edx,byte ptr [esp]
 004B224A    and         dl,0FC
 004B224D    mov         eax,esi
 004B224F    call        TComponent.Destroy
 004B2254    cmp         byte ptr [esp],0
>004B2258    jle         004B2261
 004B225A    mov         eax,esi
 004B225C    call        @ClassDestroy
 004B2261    pop         ecx
 004B2262    pop         edx
 004B2263    pop         ebp
 004B2264    pop         edi
 004B2265    pop         esi
 004B2266    pop         ebx
 004B2267    ret
*}
end;

//004B2268
function sub_004B2268(?:TContainedActionList):Boolean;
begin
{*
 004B2268    cmp         dword ptr [eax+40],0
 004B226C    setne       al
 004B226F    ret
*}
end;

//004B2270
{*procedure sub_004B2270(?:?; ?:?);
begin
 004B2270    push        ebp
 004B2271    mov         ebp,esp
 004B2273    add         esp,0FFFFFFEC
 004B2276    push        ebx
 004B2277    push        esi
 004B2278    xor         ecx,ecx
 004B227A    mov         dword ptr [ebp-14],ecx
 004B227D    mov         dword ptr [ebp-10],ecx
 004B2280    mov         esi,edx
 004B2282    mov         ebx,eax
 004B2284    xor         eax,eax
 004B2286    push        ebp
 004B2287    push        4B233F
 004B228C    push        dword ptr fs:[eax]
 004B228F    mov         dword ptr fs:[eax],esp
 004B2292    mov         eax,ebx
 004B2294    call        004B2268
 004B2299    test        al,al
>004B229B    jne         004B22D0
 004B229D    mov         eax,4B2358;'Actions'
 004B22A2    mov         dword ptr [ebp-0C],eax
 004B22A5    mov         byte ptr [ebp-8],11
 004B22A9    lea         eax,[ebp-0C]
 004B22AC    push        eax
 004B22AD    push        0
 004B22AF    lea         edx,[ebp-10]
 004B22B2    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B22B7    call        LoadResString
 004B22BC    mov         ecx,dword ptr [ebp-10]
 004B22BF    mov         dl,1
 004B22C1    mov         eax,[004AED7C];EActionError
 004B22C6    call        Exception.CreateFmt;EActionError.Create
 004B22CB    call        @RaiseExcept
 004B22D0    test        esi,esi
>004B22D2    jne         004B2307
 004B22D4    mov         eax,4B2374;'Action'
 004B22D9    mov         dword ptr [ebp-0C],eax
 004B22DC    mov         byte ptr [ebp-8],11
 004B22E0    lea         eax,[ebp-0C]
 004B22E3    push        eax
 004B22E4    push        0
 004B22E6    lea         edx,[ebp-14]
 004B22E9    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B22EE    call        LoadResString
 004B22F3    mov         ecx,dword ptr [ebp-14]
 004B22F6    mov         dl,1
 004B22F8    mov         eax,[004AED7C];EActionError
 004B22FD    call        Exception.CreateFmt;EActionError.Create
 004B2302    call        @RaiseExcept
 004B2307    mov         eax,dword ptr [ebx+40]
 004B230A    mov         dword ptr [ebp-4],esi
 004B230D    lea         edx,[ebp-4]
 004B2310    add         eax,8
 004B2313    call        0043489C
 004B2318    mov         dword ptr [esi+64],ebx
 004B231B    mov         edx,ebx
 004B231D    mov         eax,esi
 004B231F    call        TComponent.FreeNotification
 004B2324    xor         eax,eax
 004B2326    pop         edx
 004B2327    pop         ecx
 004B2328    pop         ecx
 004B2329    mov         dword ptr fs:[eax],edx
 004B232C    push        4B2346
 004B2331    lea         eax,[ebp-14]
 004B2334    mov         edx,2
 004B2339    call        @UStrArrayClr
 004B233E    ret
>004B233F    jmp         @HandleFinally
>004B2344    jmp         004B2331
 004B2346    pop         esi
 004B2347    pop         ebx
 004B2348    mov         esp,ebp
 004B234A    pop         ebp
 004B234B    ret
end;*}

//004B2384
procedure sub_004B2384;
begin
{*
 004B2384    push        ebx
 004B2385    push        esi
 004B2386    push        edi
 004B2387    mov         ebx,eax
 004B2389    cmp         dword ptr [ebx+40],0;TContainedActionList.FActions:TList<System.Actions.TContainedAction...
 004B238D    setne       al
 004B2390    test        al,al
>004B2392    je          004B23C3
 004B2394    cmp         word ptr [ebx+4A],0;TContainedActionList.?f4A:word
>004B2399    je          004B23A3
 004B239B    mov         edx,ebx
 004B239D    mov         eax,dword ptr [ebx+4C];TContainedActionList.?f4C:dword
 004B23A0    call        dword ptr [ebx+48];TContainedActionList.FOnChange
 004B23A3    mov         eax,dword ptr [ebx+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B23A6    mov         esi,dword ptr [eax+8];TList<System.Actions.TContainedAction>.FCount:Integer
 004B23A9    dec         esi
 004B23AA    test        esi,esi
>004B23AC    jl          004B23C3
 004B23AE    inc         esi
 004B23AF    xor         edi,edi
 004B23B1    mov         eax,dword ptr [ebx+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B23B4    mov         eax,dword ptr [eax+20]
 004B23B7    mov         eax,dword ptr [eax+edi*4]
 004B23BA    mov         edx,dword ptr [eax]
 004B23BC    call        dword ptr [edx+44]
 004B23BF    inc         edi
 004B23C0    dec         esi
>004B23C1    jne         004B23B1
 004B23C3    pop         edi
 004B23C4    pop         esi
 004B23C5    pop         ebx
 004B23C6    ret
*}
end;

//004B23C8
procedure TContainedActionList.ExecuteAction(Action:TBasicAction);
begin
{*
 004B23C8    push        ebp
 004B23C9    mov         ebp,esp
 004B23CB    add         esp,0FFFFFFF0
 004B23CE    push        ebx
 004B23CF    push        esi
 004B23D0    xor         ecx,ecx
 004B23D2    mov         dword ptr [ebp-10],ecx
 004B23D5    mov         esi,edx
 004B23D7    mov         ebx,eax
 004B23D9    xor         eax,eax
 004B23DB    push        ebp
 004B23DC    push        4B2451
 004B23E1    push        dword ptr fs:[eax]
 004B23E4    mov         dword ptr fs:[eax],esp
 004B23E7    mov         eax,ebx
 004B23E9    call        004B2268
 004B23EE    test        al,al
>004B23F0    jne         004B2425
 004B23F2    mov         eax,4B2470;'Actions'
 004B23F7    mov         dword ptr [ebp-0C],eax
 004B23FA    mov         byte ptr [ebp-8],11
 004B23FE    lea         eax,[ebp-0C]
 004B2401    push        eax
 004B2402    push        0
 004B2404    lea         edx,[ebp-10]
 004B2407    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B240C    call        LoadResString
 004B2411    mov         ecx,dword ptr [ebp-10]
 004B2414    mov         dl,1
 004B2416    mov         eax,[004AED7C];EActionError
 004B241B    call        Exception.CreateFmt;EActionError.Create
 004B2420    call        @RaiseExcept
 004B2425    mov         byte ptr [ebp-1],0
 004B2429    cmp         word ptr [ebx+52],0;TContainedActionList.?f52:word
>004B242E    je          004B243B
 004B2430    lea         ecx,[ebp-1]
 004B2433    mov         edx,esi
 004B2435    mov         eax,dword ptr [ebx+54];TContainedActionList.?f54:dword
 004B2438    call        dword ptr [ebx+50];TContainedActionList.FOnExecute
 004B243B    xor         eax,eax
 004B243D    pop         edx
 004B243E    pop         ecx
 004B243F    pop         ecx
 004B2440    mov         dword ptr fs:[eax],edx
 004B2443    push        4B2458
 004B2448    lea         eax,[ebp-10]
 004B244B    call        @UStrClr
 004B2450    ret
>004B2451    jmp         @HandleFinally
>004B2456    jmp         004B2448
 004B2458    movzx       eax,byte ptr [ebp-1]
 004B245C    pop         esi
 004B245D    pop         ebx
 004B245E    mov         esp,ebp
 004B2460    pop         ebp
 004B2461    ret
*}
end;

//004B2480
function TContainedActionList.UpdateAction(Action:TBasicAction):Boolean;
begin
{*
 004B2480    push        ebp
 004B2481    mov         ebp,esp
 004B2483    add         esp,0FFFFFFF0
 004B2486    push        ebx
 004B2487    push        esi
 004B2488    xor         ecx,ecx
 004B248A    mov         dword ptr [ebp-10],ecx
 004B248D    mov         esi,edx
 004B248F    mov         ebx,eax
 004B2491    xor         eax,eax
 004B2493    push        ebp
 004B2494    push        4B2509
 004B2499    push        dword ptr fs:[eax]
 004B249C    mov         dword ptr fs:[eax],esp
 004B249F    mov         eax,ebx
 004B24A1    call        004B2268
 004B24A6    test        al,al
>004B24A8    jne         004B24DD
 004B24AA    mov         eax,4B2528;'Actions'
 004B24AF    mov         dword ptr [ebp-0C],eax
 004B24B2    mov         byte ptr [ebp-8],11
 004B24B6    lea         eax,[ebp-0C]
 004B24B9    push        eax
 004B24BA    push        0
 004B24BC    lea         edx,[ebp-10]
 004B24BF    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B24C4    call        LoadResString
 004B24C9    mov         ecx,dword ptr [ebp-10]
 004B24CC    mov         dl,1
 004B24CE    mov         eax,[004AED7C];EActionError
 004B24D3    call        Exception.CreateFmt;EActionError.Create
 004B24D8    call        @RaiseExcept
 004B24DD    mov         byte ptr [ebp-1],0
 004B24E1    cmp         word ptr [ebx+5A],0;TContainedActionList.?f5A:word
>004B24E6    je          004B24F3
 004B24E8    lea         ecx,[ebp-1]
 004B24EB    mov         edx,esi
 004B24ED    mov         eax,dword ptr [ebx+5C];TContainedActionList.?f5C:dword
 004B24F0    call        dword ptr [ebx+58];TContainedActionList.FOnUpdate
 004B24F3    xor         eax,eax
 004B24F5    pop         edx
 004B24F6    pop         ecx
 004B24F7    pop         ecx
 004B24F8    mov         dword ptr fs:[eax],edx
 004B24FB    push        4B2510
 004B2500    lea         eax,[ebp-10]
 004B2503    call        @UStrClr
 004B2508    ret
>004B2509    jmp         @HandleFinally
>004B250E    jmp         004B2500
 004B2510    movzx       eax,byte ptr [ebp-1]
 004B2514    pop         esi
 004B2515    pop         ebx
 004B2516    mov         esp,ebp
 004B2518    pop         ebp
 004B2519    ret
*}
end;

//004B2538
function TContainedActionList.GetAction(Index:Integer):TContainedAction;
begin
{*
 004B2538    push        ebp
 004B2539    mov         ebp,esp
 004B253B    add         esp,0FFFFFFF4
 004B253E    push        ebx
 004B253F    push        esi
 004B2540    xor         ecx,ecx
 004B2542    mov         dword ptr [ebp-0C],ecx
 004B2545    mov         esi,edx
 004B2547    mov         ebx,eax
 004B2549    xor         eax,eax
 004B254B    push        ebp
 004B254C    push        4B25BE
 004B2551    push        dword ptr fs:[eax]
 004B2554    mov         dword ptr fs:[eax],esp
 004B2557    mov         eax,ebx
 004B2559    call        004B2268
 004B255E    test        al,al
>004B2560    jne         004B2595
 004B2562    mov         eax,4B25DC;'Actions'
 004B2567    mov         dword ptr [ebp-8],eax
 004B256A    mov         byte ptr [ebp-4],11
 004B256E    lea         eax,[ebp-8]
 004B2571    push        eax
 004B2572    push        0
 004B2574    lea         edx,[ebp-0C]
 004B2577    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B257C    call        LoadResString
 004B2581    mov         ecx,dword ptr [ebp-0C]
 004B2584    mov         dl,1
 004B2586    mov         eax,[004AED7C];EActionError
 004B258B    call        Exception.CreateFmt
 004B2590    call        @RaiseExcept
 004B2595    mov         ebx,dword ptr [ebx+40]
 004B2598    lea         eax,[ebx+8]
 004B259B    mov         edx,esi
 004B259D    call        00434534
 004B25A2    mov         eax,dword ptr [ebx+20]
 004B25A5    mov         ebx,dword ptr [eax+esi*4]
 004B25A8    xor         eax,eax
 004B25AA    pop         edx
 004B25AB    pop         ecx
 004B25AC    pop         ecx
 004B25AD    mov         dword ptr fs:[eax],edx
 004B25B0    push        4B25C5
 004B25B5    lea         eax,[ebp-0C]
 004B25B8    call        @UStrClr
 004B25BD    ret
>004B25BE    jmp         @HandleFinally
>004B25C3    jmp         004B25B5
 004B25C5    mov         eax,ebx
 004B25C7    pop         esi
 004B25C8    pop         ebx
 004B25C9    mov         esp,ebp
 004B25CB    pop         ebp
 004B25CC    ret
*}
end;

//004B25EC
{*function sub_004B25EC(?:TContainedActionList):?;
begin
 004B25EC    mov         edx,dword ptr [eax+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B25EF    test        edx,edx
>004B25F1    je          004B25F7
 004B25F3    mov         eax,dword ptr [edx+8];TList<System.Actions.TContainedAction>.FCount:Integer
 004B25F6    ret
 004B25F7    xor         eax,eax
 004B25F9    ret
end;*}

//004B25FC
{*procedure TContainedActionList.GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);
begin
 004B25FC    push        ebp
 004B25FD    mov         ebp,esp
 004B25FF    add         esp,0FFFFFFE8
 004B2602    push        ebx
 004B2603    push        esi
 004B2604    xor         ecx,ecx
 004B2606    mov         dword ptr [ebp-18],ecx
 004B2609    mov         dword ptr [ebp-14],ecx
 004B260C    mov         dword ptr [ebp-8],edx
 004B260F    mov         dword ptr [ebp-4],eax
 004B2612    xor         eax,eax
 004B2614    push        ebp
 004B2615    push        4B26E4
 004B261A    push        dword ptr fs:[eax]
 004B261D    mov         dword ptr fs:[eax],esp
 004B2620    mov         eax,dword ptr [ebp-4]
 004B2623    call        004B2268
 004B2628    test        al,al
>004B262A    jne         004B265F
 004B262C    mov         eax,4B2700;'Actions'
 004B2631    mov         dword ptr [ebp-10],eax
 004B2634    mov         byte ptr [ebp-0C],11
 004B2638    lea         eax,[ebp-10]
 004B263B    push        eax
 004B263C    push        0
 004B263E    lea         edx,[ebp-14]
 004B2641    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B2646    call        LoadResString
 004B264B    mov         ecx,dword ptr [ebp-14]
 004B264E    mov         dl,1
 004B2650    mov         eax,[004AED7C];EActionError
 004B2655    call        Exception.CreateFmt;EActionError.Create
 004B265A    call        @RaiseExcept
 004B265F    cmp         dword ptr [ebp+8],0
>004B2663    jne         004B2698
 004B2665    mov         eax,4B271C;'Proc'
 004B266A    mov         dword ptr [ebp-10],eax
 004B266D    mov         byte ptr [ebp-0C],11
 004B2671    lea         eax,[ebp-10]
 004B2674    push        eax
 004B2675    push        0
 004B2677    lea         edx,[ebp-18]
 004B267A    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B267F    call        LoadResString
 004B2684    mov         ecx,dword ptr [ebp-18]
 004B2687    mov         dl,1
 004B2689    mov         eax,[004AED7C];EActionError
 004B268E    call        Exception.CreateFmt;EActionError.Create
 004B2693    call        @RaiseExcept
 004B2698    mov         eax,dword ptr [ebp-4]
 004B269B    mov         eax,dword ptr [eax+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B269E    mov         ebx,dword ptr [eax+8];TList<System.Actions.TContainedAction>.FCount:Integer
 004B26A1    dec         ebx
 004B26A2    test        ebx,ebx
>004B26A4    jl          004B26C9
 004B26A6    inc         ebx
 004B26A7    xor         esi,esi
 004B26A9    mov         eax,dword ptr [ebp-4]
 004B26AC    mov         eax,dword ptr [eax+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B26AF    mov         eax,dword ptr [eax+20]
 004B26B2    mov         eax,dword ptr [eax+esi*4]
 004B26B5    mov         edx,dword ptr [eax+4]
 004B26B8    cmp         edx,dword ptr [ebp-8]
>004B26BB    jne         004B26C5
 004B26BD    mov         edx,eax
 004B26BF    mov         eax,dword ptr [ebp+0C]
 004B26C2    call        dword ptr [ebp+8]
 004B26C5    inc         esi
 004B26C6    dec         ebx
>004B26C7    jne         004B26A9
 004B26C9    xor         eax,eax
 004B26CB    pop         edx
 004B26CC    pop         ecx
 004B26CD    pop         ecx
 004B26CE    mov         dword ptr fs:[eax],edx
 004B26D1    push        4B26EB
 004B26D6    lea         eax,[ebp-18]
 004B26D9    mov         edx,2
 004B26DE    call        @UStrArrayClr
 004B26E3    ret
>004B26E4    jmp         @HandleFinally
>004B26E9    jmp         004B26D6
 004B26EB    pop         esi
 004B26EC    pop         ebx
 004B26ED    mov         esp,ebp
 004B26EF    pop         ebp
 004B26F0    ret         8
end;*}

//004B2728
procedure TContainedActionList.Notification(AComponent:TComponent; Operation:Classes.TOperation);
begin
{*
 004B2728    push        ebx
 004B2729    push        esi
 004B272A    push        edi
 004B272B    mov         ebx,ecx
 004B272D    mov         edi,edx
 004B272F    mov         esi,eax
 004B2731    mov         ecx,ebx
 004B2733    mov         edx,edi
 004B2735    mov         eax,esi
 004B2737    call        TComponent.Notification
 004B273C    cmp         bl,1
>004B273F    jne         004B275B
 004B2741    mov         eax,edi
 004B2743    mov         edx,dword ptr ds:[4AF118];TContainedAction
 004B2749    call        @IsClass
 004B274E    test        al,al
>004B2750    je          004B275B
 004B2752    mov         edx,edi
 004B2754    mov         eax,esi
 004B2756    call        TContainedActionList.RemoveAction
 004B275B    pop         edi
 004B275C    pop         esi
 004B275D    pop         ebx
 004B275E    ret
*}
end;

//004B2760
procedure TContainedActionList.RemoveAction(const Action:TContainedAction);
begin
{*
 004B2760    push        ebx
 004B2761    push        esi
 004B2762    add         esp,0FFFFFFF8
 004B2765    mov         esi,edx
 004B2767    mov         ebx,eax
 004B2769    mov         eax,dword ptr [ebx+40]
 004B276C    test        eax,eax
>004B276E    je          004B2797
 004B2770    mov         dword ptr [esp],esi
 004B2773    add         eax,8
 004B2776    mov         dword ptr [esp+4],eax
 004B277A    mov         edx,esp
 004B277C    mov         eax,dword ptr [esp+4]
 004B2780    call        00434878
 004B2785    test        eax,eax
>004B2787    jl          004B2797
 004B2789    mov         edx,ebx
 004B278B    mov         eax,esi
 004B278D    call        TComponent.RemoveFreeNotification
 004B2792    xor         eax,eax
 004B2794    mov         dword ptr [esi+64],eax
 004B2797    pop         ecx
 004B2798    pop         edx
 004B2799    pop         esi
 004B279A    pop         ebx
 004B279B    ret
*}
end;

//004B279C
{*procedure TContainedActionList.sub_0049ECB8(?:?; ?:?);
begin
 004B279C    push        ebx
 004B279D    push        esi
 004B279E    add         esp,0FFFFFFF8
 004B27A1    mov         esi,ecx
 004B27A3    mov         ebx,edx
 004B27A5    mov         edx,dword ptr [eax+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B27A8    test        edx,edx
>004B27AA    je          004B27DB
 004B27AC    mov         eax,edx
 004B27AE    mov         dword ptr [esp],ebx
 004B27B1    add         eax,8;TList<System.Actions.TContainedAction>.FCount:Integer
 004B27B4    mov         dword ptr [esp+4],eax
 004B27B8    mov         edx,esp
 004B27BA    mov         eax,dword ptr [esp+4]
 004B27BE    call        00434714
 004B27C3    test        eax,eax
>004B27C5    jl          004B27DB
 004B27C7    mov         eax,ebx
 004B27C9    mov         edx,dword ptr ds:[4AF118];TContainedAction
 004B27CF    call        @AsClass
 004B27D4    mov         edx,esi
 004B27D6    call        004B192C
 004B27DB    pop         ecx
 004B27DC    pop         edx
 004B27DD    pop         esi
 004B27DE    pop         ebx
 004B27DF    ret
end;*}

//004B27E0
{*procedure sub_004B27E0(?:?);
begin
 004B27E0    push        ebp
 004B27E1    mov         ebp,esp
 004B27E3    add         esp,0FFFFFFE8
 004B27E6    push        ebx
 004B27E7    push        esi
 004B27E8    push        edi
 004B27E9    xor         ecx,ecx
 004B27EB    mov         dword ptr [ebp-18],ecx
 004B27EE    mov         ebx,edx
 004B27F0    mov         dword ptr [ebp-4],eax
 004B27F3    xor         eax,eax
 004B27F5    push        ebp
 004B27F6    push        4B291B
 004B27FB    push        dword ptr fs:[eax]
 004B27FE    mov         dword ptr fs:[eax],esp
 004B2801    mov         eax,dword ptr [ebp-4]
 004B2804    cmp         bl,byte ptr [eax+60];TContainedActionList.FState:TActionListState
>004B2807    je          004B2905
 004B280D    mov         eax,dword ptr [ebp-4]
 004B2810    call        004B2268
 004B2815    test        al,al
>004B2817    jne         004B284C
 004B2819    mov         eax,4B2938;'Actions'
 004B281E    mov         dword ptr [ebp-14],eax
 004B2821    mov         byte ptr [ebp-10],11
 004B2825    lea         eax,[ebp-14]
 004B2828    push        eax
 004B2829    push        0
 004B282B    lea         edx,[ebp-18]
 004B282E    mov         eax,[007C47AC];^SResString155:TResStringRec
 004B2833    call        LoadResString
 004B2838    mov         ecx,dword ptr [ebp-18]
 004B283B    mov         dl,1
 004B283D    mov         eax,[004AED7C];EActionError
 004B2842    call        Exception.CreateFmt;EActionError.Create
 004B2847    call        @RaiseExcept
 004B284C    mov         eax,dword ptr [ebp-4]
 004B284F    movzx       eax,byte ptr [eax+60];TContainedActionList.FState:TActionListState
 004B2853    mov         byte ptr [ebp-9],al
 004B2856    mov         eax,ebx
 004B2858    mov         edx,dword ptr [ebp-4]
 004B285B    mov         byte ptr [edx+60],al;TContainedActionList.FState:TActionListState
 004B285E    xor         edx,edx
 004B2860    push        ebp
 004B2861    push        4B28FE
 004B2866    push        dword ptr fs:[edx]
 004B2869    mov         dword ptr fs:[edx],esp
 004B286C    cmp         al,1
>004B286E    je          004B28DA
 004B2870    mov         eax,dword ptr [ebp-4]
 004B2873    mov         eax,dword ptr [eax+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B2876    mov         esi,dword ptr [eax+8];TList<System.Actions.TContainedAction>.FCount:Integer
 004B2879    dec         esi
 004B287A    test        esi,esi
>004B287C    jl          004B28DA
 004B287E    inc         esi
 004B287F    xor         edi,edi
 004B2881    mov         eax,dword ptr [ebp-4]
 004B2884    mov         eax,dword ptr [eax+40];TContainedActionList.FActions:TList<System.Actions.TContainedActi...
 004B2887    mov         eax,dword ptr [eax+20]
 004B288A    mov         eax,dword ptr [eax+edi*4]
 004B288D    test        eax,eax
>004B288F    je          004B28D6
 004B2891    mov         dword ptr [ebp-8],eax
 004B2894    mov         eax,ebx
 004B2896    sub         al,1
>004B2898    jb          004B28A0
 004B289A    dec         al
>004B289C    je          004B28BF
>004B289E    jmp         004B28D6
 004B28A0    cmp         byte ptr [ebp-9],2
>004B28A4    jne         004B28B5
 004B28A6    mov         eax,dword ptr [ebp-8]
 004B28A9    movzx       edx,byte ptr [eax+68]
 004B28AD    mov         eax,dword ptr [ebp-8]
 004B28B0    mov         ecx,dword ptr [eax]
 004B28B2    call        dword ptr [ecx+74]
 004B28B5    mov         eax,dword ptr [ebp-8]
 004B28B8    mov         edx,dword ptr [eax]
 004B28BA    call        dword ptr [edx+5C]
>004B28BD    jmp         004B28D6
 004B28BF    mov         eax,dword ptr [ebp-8]
 004B28C2    movzx       eax,byte ptr [eax+71]
 004B28C6    mov         edx,dword ptr [ebp-8]
 004B28C9    mov         byte ptr [edx+68],al
 004B28CC    mov         dl,1
 004B28CE    mov         eax,dword ptr [ebp-8]
 004B28D1    mov         ecx,dword ptr [eax]
 004B28D3    call        dword ptr [ecx+74]
 004B28D6    inc         edi
 004B28D7    dec         esi
>004B28D8    jne         004B2881
 004B28DA    xor         eax,eax
 004B28DC    pop         edx
 004B28DD    pop         ecx
 004B28DE    pop         ecx
 004B28DF    mov         dword ptr fs:[eax],edx
 004B28E2    push        4B2905
 004B28E7    mov         eax,dword ptr [ebp-4]
 004B28EA    cmp         word ptr [eax+6A],0;TContainedActionList.?f6A:word
>004B28EF    je          004B28FD
 004B28F1    mov         ebx,dword ptr [ebp-4]
 004B28F4    mov         edx,dword ptr [ebp-4]
 004B28F7    mov         eax,dword ptr [ebx+6C];TContainedActionList.?f6C:dword
 004B28FA    call        dword ptr [ebx+68];TContainedActionList.FOnStateChange
 004B28FD    ret
>004B28FE    jmp         @HandleFinally
>004B2903    jmp         004B28E7
 004B2905    xor         eax,eax
 004B2907    pop         edx
 004B2908    pop         ecx
 004B2909    pop         ecx
 004B290A    mov         dword ptr fs:[eax],edx
 004B290D    push        4B2922
 004B2912    lea         eax,[ebp-18]
 004B2915    call        @UStrClr
 004B291A    ret
>004B291B    jmp         @HandleFinally
>004B2920    jmp         004B2912
 004B2922    pop         edi
 004B2923    pop         esi
 004B2924    pop         ebx
 004B2925    mov         esp,ebp
 004B2927    pop         ebp
 004B2928    ret
end;*}

//004B2948
procedure TContainedActionLink.DefaultIsLinked(var Result:Boolean);
begin
{*
 004B2948    push        ebx
 004B2949    push        esi
 004B294A    mov         esi,edx
 004B294C    mov         ebx,eax
 004B294E    mov         eax,dword ptr [ebx+10]
 004B2951    mov         edx,dword ptr ds:[4AF118];TContainedAction
 004B2957    call        @IsClass
 004B295C    mov         byte ptr [esi],al
 004B295E    pop         esi
 004B295F    pop         ebx
 004B2960    ret
*}
end;

//004B2964
function TContainedActionLink.IsCaptionLinked:Boolean;
begin
{*
 004B2964    push        ecx
 004B2965    mov         edx,esp
 004B2967    mov         ecx,dword ptr [eax]
 004B2969    call        dword ptr [ecx+20]
 004B296C    movzx       eax,byte ptr [esp]
 004B2970    pop         edx
 004B2971    ret
*}
end;

//004B2974
function TContainedActionLink.IsCheckedLinked:Boolean;
begin
{*
 004B2974    push        ecx
 004B2975    mov         edx,esp
 004B2977    mov         ecx,dword ptr [eax]
 004B2979    call        dword ptr [ecx+20]
 004B297C    movzx       eax,byte ptr [esp]
 004B2980    pop         edx
 004B2981    ret
*}
end;

//004B2984
function TContainedActionLink.IsEnabledLinked:Boolean;
begin
{*
 004B2984    push        ecx
 004B2985    mov         edx,esp
 004B2987    mov         ecx,dword ptr [eax]
 004B2989    call        dword ptr [ecx+20]
 004B298C    movzx       eax,byte ptr [esp]
 004B2990    pop         edx
 004B2991    ret
*}
end;

//004B2994
function TContainedActionLink.IsGroupIndexLinked:Boolean;
begin
{*
 004B2994    push        ecx
 004B2995    mov         edx,esp
 004B2997    mov         ecx,dword ptr [eax]
 004B2999    call        dword ptr [ecx+20]
 004B299C    movzx       eax,byte ptr [esp]
 004B29A0    pop         edx
 004B29A1    ret
*}
end;

//004B29A4
function TContainedActionLink.IsHelpContextLinked:Boolean;
begin
{*
 004B29A4    push        ecx
 004B29A5    mov         edx,esp
 004B29A7    mov         ecx,dword ptr [eax]
 004B29A9    call        dword ptr [ecx+20]
 004B29AC    movzx       eax,byte ptr [esp]
 004B29B0    pop         edx
 004B29B1    ret
*}
end;

//004B29B4
function TContainedActionLink.IsHelpLinked:Boolean;
begin
{*
 004B29B4    push        ecx
 004B29B5    mov         edx,esp
 004B29B7    mov         ecx,dword ptr [eax]
 004B29B9    call        dword ptr [ecx+20]
 004B29BC    movzx       eax,byte ptr [esp]
 004B29C0    pop         edx
 004B29C1    ret
*}
end;

//004B29C4
function TContainedActionLink.IsHintLinked:Boolean;
begin
{*
 004B29C4    push        ecx
 004B29C5    mov         edx,esp
 004B29C7    mov         ecx,dword ptr [eax]
 004B29C9    call        dword ptr [ecx+20]
 004B29CC    movzx       eax,byte ptr [esp]
 004B29D0    pop         edx
 004B29D1    ret
*}
end;

//004B29D4
function TContainedActionLink.IsImageIndexLinked:Boolean;
begin
{*
 004B29D4    push        ecx
 004B29D5    mov         edx,esp
 004B29D7    mov         ecx,dword ptr [eax]
 004B29D9    call        dword ptr [ecx+20]
 004B29DC    movzx       eax,byte ptr [esp]
 004B29E0    pop         edx
 004B29E1    ret
*}
end;

//004B29E4
function TContainedActionLink.IsShortCutLinked:Boolean;
begin
{*
 004B29E4    push        ecx
 004B29E5    mov         edx,esp
 004B29E7    mov         ecx,dword ptr [eax]
 004B29E9    call        dword ptr [ecx+20]
 004B29EC    movzx       eax,byte ptr [esp]
 004B29F0    pop         edx
 004B29F1    ret
*}
end;

//004B29F4
function TContainedActionLink.IsStatusActionLinked:Boolean;
begin
{*
 004B29F4    push        ecx
 004B29F5    mov         edx,esp
 004B29F7    mov         ecx,dword ptr [eax]
 004B29F9    call        dword ptr [ecx+20]
 004B29FC    movzx       eax,byte ptr [esp]
 004B2A00    pop         edx
 004B2A01    ret
*}
end;

//004B2A04
function TContainedActionLink.IsVisibleLinked:Boolean;
begin
{*
 004B2A04    push        ecx
 004B2A05    mov         edx,esp
 004B2A07    mov         ecx,dword ptr [eax]
 004B2A09    call        dword ptr [ecx+20]
 004B2A0C    movzx       eax,byte ptr [esp]
 004B2A10    pop         edx
 004B2A11    ret
*}
end;

//004B2A14
procedure sub_004B2A14;
begin
{*
 004B2A14    ret
*}
end;

//004B2A18
procedure sub_004B2A18;
begin
{*
 004B2A18    ret
*}
end;

//004B2A1C
procedure sub_004B2A1C;
begin
{*
 004B2A1C    ret
*}
end;

//004B2A20
procedure sub_004B2A20;
begin
{*
 004B2A20    ret
*}
end;

//004B2A24
procedure sub_004B2A24;
begin
{*
 004B2A24    ret
*}
end;

//004B2A28
procedure sub_004B2A28;
begin
{*
 004B2A28    ret
*}
end;

//004B2A2C
procedure sub_004B2A2C;
begin
{*
 004B2A2C    ret
*}
end;

//004B2A30
procedure sub_004B2A30;
begin
{*
 004B2A30    ret
*}
end;

//004B2A34
procedure sub_004B2A34;
begin
{*
 004B2A34    ret
*}
end;

//004B2A38
procedure sub_004B2A38;
begin
{*
 004B2A38    ret
*}
end;

//004B2A3C
procedure sub_004B2A3C;
begin
{*
 004B2A3C    ret
*}
end;

//004B2A40
procedure sub_004B2A40;
begin
{*
 004B2A40    ret
*}
end;

//004B2A44
procedure sub_004B2A44;
begin
{*
 004B2A44    ret
*}
end;

Initialization
//0079C7B0
{*
 0079C7B0    sub         dword ptr ds:[7CA3F8],1
>0079C7B7    jae         0079C7C7
 0079C7B9    xor         eax,eax
 0079C7BB    mov         [007CA3FC],eax;gvar_007CA3FC
 0079C7C0    mov         byte ptr ds:[7CA3F4],0
 0079C7C7    ret
*}
Finalization
end.