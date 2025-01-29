//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit18;

interface

uses
  SysUtils, Classes, System.Classes, System.Generics.Collections, System.TypInfo, System.Classes, Vcl.StdCtrls, System.Generics.Collections, System.Rtti, System.Generics.Defaults, System;

type
  TComponent = class(TPersistent)
  published
    function GetComponent(AIndex:Integer):TComponent;//0049F5E8
    procedure Destroying;//0049EA70
    procedure DestroyComponents;//0049E9E4
    function FindComponent(AName:string):TComponent;//0049F368
    procedure ExecuteAction(Action:TBasicAction);//0049FA30
    destructor Destroy();//0049E604
    constructor Create;//0049E5B8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure BeforeDestruction;//0049E688
    procedure FreeNotification(AComponent:TComponent);//0049E6F8
    procedure RemoveComponent(AComponent:TComponent);//0049E9AC
    procedure InsertComponent(AComponent:TComponent);//0049E8F4
    function UpdateAction(Action:TBasicAction):Boolean;//0049FA6C
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;//0049FB68
    procedure GetParentComponent;//0049ECBC
    procedure RemoveFreeNotification(AComponent:TComponent);//0049EB68
    procedure HasParent;//0049EC8C
    procedure GetNamePath;//0049ECA0
  public
    FOwner:TComponent;//f4
    FName:TComponentName;//f8
    FTag:NativeInt;//fC
    FComponents:TList<System.Classes.TComponent>;//f10
    FFreeNotifies:TList<System.Classes.TComponent>;//f14
    FDesignInfo:Integer;//f18
    FComponentState:TComponentState;//f1C
    f1D:byte;//f1D
    FVCLComObject:Pointer;//f20
    FObservers:TObservers;//f24
    FOnGetDeltaStreams:TGetDeltaStreamsEvent;//f28
    FSortedComponents:TList<System.Classes.TComponent>;//f2C
    FComponentStyle:TComponentStyle;//f30
    FSortedComponents:TList<System.Classes.TComponent>;//f34
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT; virtual;//0049FB68
    procedure BeforeDestruction; virtual;//0049E688
    destructor Destroy(); virtual;//0049E604
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0049EBF4
    procedure vC; virtual;//vC//0049E654
    procedure Loaded; virtual;//v10//0049ECDC
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//0049EB84
    procedure ReadState(Reader:TReader); virtual;//v18//0049ECEC
    //function v1C:?; virtual;//v1C//0049FAA8
    procedure v20; virtual;//v20//0049FAAC
    function GetObservers:TObservers; virtual;//v24//0049F910
    procedure SetName(Value:TComponentName); virtual;//v28//0049F4C8
    procedure v2C; virtual;//v2C//0049FB80
    //procedure v30(?:?; ?:?; ?:?); virtual;//v30//0049ECFC
    //procedure v34(?:?); virtual;//v34//0049ECF4
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; virtual; stdcall;//v38//0049FB88
    constructor Create; virtual;//v3C//0049E5B8
    function UpdateAction(Action:TBasicAction):Boolean; virtual;//v40//0049FA6C
    procedure HasParent; dynamic;//0049EC8C
    procedure GetParentComponent; dynamic;//0049ECBC
    procedure ExecuteAction(Action:TBasicAction); dynamic;//0049FA30
    procedure sub_0049EDC8; dynamic;//0049EDC8
    //procedure sub_0049EDB0(?:?); dynamic;//0049EDB0
    procedure Updated; dynamic;//0049ECD0
    procedure Updating; dynamic;//0049ECC4
    procedure sub_0049ECC0; dynamic;//0049ECC0
    procedure sub_0049ECB8; dynamic;//0049ECB8
    procedure sub_0049ECE8; dynamic;//0049ECE8
    procedure sub_0049F5E0; dynamic;//0049F5E0
    procedure sub_0049EC9C; dynamic;//0049EC9C
    procedure sub_0049EC98; dynamic;//0049EC98
    procedure sub_0049EC90; dynamic;//0049EC90
    procedure GetNamePath; dynamic;//0049ECA0
    procedure sub_0048EDE4; dynamic;//0049ECB4
  end;
  TBasicActionLink = class(TObject)
  published
    procedure Execute(AComponent:TComponent);//0049FCA0
    function Update:Boolean;//0049FCF4
    constructor Create;//0049FC0C
    destructor Destroy();//0049FC54
  public
    FOnChange:TNotifyEvent;//f8
    fC:TButton;//fC
    FAction:TBasicAction;//f10
    destructor Destroy(); virtual;//0049FC54
    procedure v0; virtual;//v0//0049FC50
    procedure Change; virtual;//v4//0049FC88
    //function v8:?; virtual;//v8//0049FCE8
    procedure SetAction(Value:TBasicAction); virtual;//vC//0049FCBC
    procedure v10; virtual;//v10//0049FCEC
    constructor Create; virtual;//v14//0049FC0C
    procedure Execute(AComponent:TComponent); virtual;//v18//0049FCA0
    function Update:Boolean; virtual;//v1C//0049FCF4
  end;
  TActionEvent = procedure(Action:TBasicAction; var Handled:Boolean) of object;;
  THintEvent = procedure(var HintStr:string; var CanShow:Boolean) of object;;
  TBasicAction = class(TComponent)
  published
    procedure RegisterChanges(Value:TBasicActionLink);//0049FF04
    procedure Execute;//0049FE4C
    function Update:Boolean;//0049FE68
    procedure UnRegisterChanges(Value:TBasicActionLink);//0049FF1C
    procedure ExecuteTarget(Target:TObject);//0049FDF0
    destructor Destroy();//0049FD5C
    constructor Create(AOwner:TComponent);//0049FD18
    function Suspended:Boolean;//0049FDE8
    procedure UpdateTarget(Target:TObject);//0049FE48
    function HandlesTarget(Target:TObject):Boolean;//0049FDEC
  public
    FClients:TList<System.Classes.TBasicActionLink>;//f40
    FActionComponent:TComponent;//f44
    FOnChange:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnExecute:TNotifyEvent;//f50
    f54:dword;//f54
    FOnUpdate:TNotifyEvent;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    destructor Destroy(); virtual;//0049FD5C
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//0049FE20
    constructor Create(AOwner:TComponent); virtual;//v3C//0049FD18
    procedure v44; virtual;//v44//0049FEF0
    //procedure v48(?:?; ?:?); virtual;//v48//0049FE84
    function Suspended:Boolean; virtual;//v4C//0049FDE8
    function HandlesTarget(Target:TObject):Boolean; virtual;//v50//0049FDEC
    procedure UpdateTarget(Target:TObject); virtual;//v54//0049FE48
    procedure ExecuteTarget(Target:TObject); virtual;//v58//0049FDF0
    function Update:Boolean; virtual;//v5C//0049FE68
    procedure Execute; dynamic;//0049FE4C
  end;
  TDataModule = class(TComponent)
  published
    procedure BeforeDestruction;//004A06F0
    procedure AfterConstruction;//004A0688
    constructor Create(AOwner:TComponent);//004A0554
    constructor CreateNew(Dummy:Integer);//004A0694
    destructor Destroy();//004A071C
  public
    FDesignSize:TPoint;//f40
    FDesignOffset:TPoint;//f48
    FOnCreate:TNotifyEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FOnDestroy:TNotifyEvent;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    FOldCreateOrder:Boolean;//f60
    procedure AfterConstruction; virtual;//004A0688
    procedure BeforeDestruction; virtual;//004A06F0
    destructor Destroy(); virtual;//004A071C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004A0934
    procedure ReadState(Reader:TReader); virtual;//v18//004A0B10
    constructor Create(AOwner:TComponent); virtual;//v3C//004A0554
    procedure v44; virtual;//v44//004A07B8
    procedure v48; virtual;//v48//004A0818
    constructor CreateNew(Dummy:Integer); virtual;//v4C//004A0694
    procedure HandleCreateException; dynamic;//004A0AF0
    //procedure sub_0049EC90(?:?; ?:?; ?:?); dynamic;//004A0A84
  end;
  TArray<System.IInterface> = array of IInterface;
//elSize = 4
//varType equivalent: varUnknown;
  TEnumerator<System.IInterface> = class(TObject)
  published
    function IInterface>.MoveNext:Boolean;//004A27F8
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.IInterface> = class(TObject)
  published
    //procedure IInterface>.ToArray(?:?);//004A2710
    function IInterface>.GetEnumerator:TEnumerator<System.IInterface>;//004A2708
    destructor IInterface>.Destroy();//004A26E4
  public
    destructor IInterface>.Destroy(); virtual;//004A26E4
    procedure v0; virtual; abstract;//v0//00405554
    //procedure IInterface>.ToArray(?:?); virtual;//v4//004A2710
  end;
  TList<System.IInterface>.arrayofT = array of IInterface;
//elSize = 4
//varType equivalent: varUnknown;
  TCollectionNotifyEvent<System.IInterface> = procedure(Sender:TObject; const Item:IInterface; Action:TCollectionNotification) of object;;
  TList<System.IInterface>.TEnumerator = class(TEnumerator<System.IInterface>)
  published
    function IInterface>.TEnumerator.MoveNext:Boolean;//004A2B40
    constructor Create;//004A2AFC
  public
    FList:TList<System.IInterface>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A2AE0
    procedure v4; virtual;//v4//004A2AF4
  end;
  TList<System.IInterface> = class(TEnumerable<System.IInterface>)
  published
    procedure IInterface>.Add(Value:IInterface);//004A2A3C
    procedure IInterface>.Error(Msg:string; Data:NativeInt);//004A2A04
    function IInterface>.GetEnumerator:TList<System.IInterface>.TEnumerator;//004A2A6C
    //procedure IInterface>.ToArray(?:?);//004A2A58
    constructor sub_004A2908(AComparer:IComparer<System.IInterface>);//004A2908
    constructor IInterface>.Create();//004A2890
    destructor IInterface>.Destroy();//004A29B8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.IInterface>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.IInterface>;//fC
    FOnNotify:TCollectionNotifyEvent<System.IInterface>;//f10
    FArrayManager:TArrayManager<System.IInterface>;//f18
    FItems:TList<System.IInterface>.arrayofT;//f20
    FComparer:IComparer<System.IInterface>;//f24
    FOnNotify:TCollectionNotifyEvent<System.IInterface>;//f28
    destructor IInterface>.Destroy(); virtual;//004A29B8
    procedure v0; virtual;//v0//004A2870
    //procedure IInterface>.ToArray(?:?); virtual;//v4//004A2A58
    //procedure v8(?:?); virtual;//v8//004A2878
  end;
  TThreadList<System.IInterface> = class(TObject)
  published
    function IInterface>.LockList:TList<System.IInterface>;//004A26B0
    procedure IInterface>.UnlockList;//004A26D8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor IInterface>.Create();//004A25DC
    destructor IInterface>.Destroy();//004A2634
  public
    FList:TList<System.IInterface>;//f4
    FLock:TObject;//f8
    FDuplicates:TDuplicates;//fC
  end;
  TArray<System.Classes.TCollectionItem> = array of TCollectionItem;
//elSize = 4;
  TEnumerator<System.Classes.TCollectionItem> = class(TObject)
  published
    function Classes.TCollectionItem>.MoveNext:Boolean;//004A2C40
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TCollectionItem> = class(TObject)
  published
    //procedure Classes.TCollectionItem>.ToArray(?:?);//004A2B8C
    function Classes.TCollectionItem>.GetEnumerator:TEnumerator<System.Classes.TCollectionItem>;//004A2B84
    destructor Classes.TCollectionItem>.Destroy();//004A2B60
  public
    destructor Classes.TCollectionItem>.Destroy(); virtual;//004A2B60
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TCollectionItem>.ToArray(?:?); virtual;//v4//004A2B8C
  end;
  TList<System.Classes.TCollectionItem>.arrayofT = array of TCollectionItem;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TCollectionItem> = procedure(Sender:TObject; const Item:TCollectionItem; Action:TCollectionNotification) of object;;
  TList<System.Classes.TCollectionItem>.TEnumerator = class(TEnumerator<System.Classes.TCollectionItem>)
  published
    function Classes.TCollectionItem>.TEnumerator.MoveNext:Boolean;//004A2F28
    constructor Actions.TContainedAction>.TEnumerator.Create;//004A2EE4
  public
    FList:TList<System.Classes.TCollectionItem>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A2ED4
    procedure v4; virtual;//v4//004A2EDC
  end;
  TList<System.Classes.TCollectionItem> = class(TEnumerable<System.Classes.TCollectionItem>)
  published
    procedure Classes.TCollectionItem>.Add(Value:TCollectionItem);//004A2E84
    procedure Classes.TCollectionItem>.Error(Msg:string; Data:NativeInt);//004A2E4C
    function Classes.TCollectionItem>.GetEnumerator:TList<System.Classes.TCollectionItem>.TEnumerator;//004A2EA8
    //procedure Classes.TCollectionItem>.ToArray(?:?);//004A2E94
    constructor sub_004A2D50(AComparer:IComparer<System.Classes.TCollectionItem>);//004A2D50
    constructor Classes.TCollectionItem>.Create();//004A2CD8
    destructor Classes.TCollectionItem>.Destroy();//004A2E00
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TCollectionItem>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TCollectionItem>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TCollectionItem>;//f10
    FArrayManager:TArrayManager<System.Classes.TCollectionItem>;//f18
    FItems:TList<System.Classes.TCollectionItem>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TCollectionItem>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TCollectionItem>;//f28
    destructor Classes.TCollectionItem>.Destroy(); virtual;//004A2E00
    procedure v0; virtual;//v0//004A2CB8
    //procedure Classes.TCollectionItem>.ToArray(?:?); virtual;//v4//004A2E94
    //procedure v8(?:?); virtual;//v8//004A2CC0
  end;
  TArray<System.TObject> = array of TObject;
//elSize = 4;
  TEnumerator<System.TObject> = class(TObject)
  published
    function TObject>.MoveNext:Boolean;//004A3028
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.TObject> = class(TObject)
  published
    //procedure TObject>.ToArray(?:?);//004A2F74
    function TObject>.GetEnumerator:TEnumerator<System.TObject>;//004A2F6C
    destructor TObject>.Destroy();//004A2F48
  public
    destructor TObject>.Destroy(); virtual;//004A2F48
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TObject>.ToArray(?:?); virtual;//v4//004A2F74
  end;
  TList<System.TObject>.arrayofT = array of TObject;
//elSize = 4;
  TCollectionNotifyEvent<System.TObject> = procedure(Sender:TObject; const Item:TObject; Action:TCollectionNotification) of object;;
  TList<System.TObject>.TEnumerator = class(TEnumerator<System.TObject>)
  published
    function TObject>.TEnumerator.MoveNext:Boolean;//004A3310
    constructor Classes.TShortCut>.TEnumerator.Create;//004A32CC
  public
    FList:TList<System.TObject>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A32BC
    procedure v4; virtual;//v4//004A32C4
  end;
  TList<System.TObject> = class(TEnumerable<System.TObject>)
  published
    procedure TObject>.Add(Value:TObject);//004A326C
    //procedure TObject>.Error(Msg:string; Data:NativeInt; ?:?);//004A3234
    function TObject>.GetEnumerator:TList<System.TObject>.TEnumerator;//004A3290
    //procedure TObject>.ToArray(?:?);//004A327C
    constructor sub_004A3138(AComparer:IComparer<System.TObject>);//004A3138
    constructor TObject>.Create();//004A30C0
    destructor TObject>.Destroy();//004A31E8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.TObject>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.TObject>;//fC
    FOnNotify:TCollectionNotifyEvent<System.TObject>;//f10
    FArrayManager:TArrayManager<System.TObject>;//f18
    FItems:TList<System.TObject>.arrayofT;//f20
    FComparer:IComparer<System.TObject>;//f24
    FOnNotify:TCollectionNotifyEvent<System.TObject>;//f28
    destructor TObject>.Destroy(); virtual;//004A31E8
    procedure v0; virtual;//v0//004A30A0
    //procedure TObject>.ToArray(?:?); virtual;//v4//004A327C
    //procedure v8(?:?); virtual;//v8//004A30A8
    //procedure TObject>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A3234
  end;
  TArray<System.Classes.TComponent> = array of TComponent;
//elSize = 4;
  TEnumerator<System.Classes.TComponent> = class(TObject)
  published
    function Classes.TComponent>.MoveNext:Boolean;//004A3410
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TComponent> = class(TObject)
  published
    function Classes.TComponent>.ToArray:TArray<System.Classes.TComponent>;//004A335C
    function Classes.TComponent>.GetEnumerator:TEnumerator<System.Classes.TComponent>;//004A3354
    destructor Classes.TComponent>.Destroy();//004A3330
  public
    destructor Classes.TComponent>.Destroy(); virtual;//004A3330
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TList<System.Classes.TComponent>.arrayofT = array of TComponent;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TComponent> = procedure(Sender:TObject; const Item:TComponent; Action:TCollectionNotification) of object;;
  TList<System.Classes.TComponent>.TEnumerator = class(TEnumerator<System.Classes.TComponent>)
  published
    function Classes.TComponent>.TEnumerator.MoveNext:Boolean;//004A3724
    constructor sub_004A36E0(AList:TList<System.Classes.TComponent>);//004A36E0
  public
    FList:TList<System.Classes.TComponent>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A36D0
    procedure v4; virtual;//v4//004A36D8
  end;
  TList<System.Classes.TComponent> = class(TEnumerable<System.Classes.TComponent>)
  published
    procedure Classes.TComponent>.Sort(AComparer:IComparer<System.Classes.TComponent>);//004A3664
    function Classes.TComponent>.Add(Value:TComponent):Integer;//004A3654
    procedure Classes.TComponent>.GetEnumerator;//004A36A4
    function Classes.TComponent>.ToArray:TArray<System.Classes.TComponent>;//004A3690
    //procedure Classes.TComponent>.Error(Msg:string; Data:NativeInt; ?:?);//004A361C
    constructor sub_004A3520(AComparer:IComparer<System.Classes.TComponent>);//004A3520
    constructor Actions.TContainedAction>.Create();//004A34A8
    destructor Classes.TComponent>.Destroy();//004A35D0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TComponent>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TComponent>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TComponent>;//f10
    FArrayManager:TArrayManager<System.Classes.TComponent>;//f18
    FItems:TList<System.Classes.TComponent>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TComponent>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TComponent>;//f28
    destructor Classes.TComponent>.Destroy(); virtual;//004A35D0
    procedure v0; virtual;//v0//004A3488
    //procedure v8(?:?); virtual;//v8//004A3490
    //procedure Classes.TComponent>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A361C
  end;
  TPair<System.Integer,System.Classes.IInterfaceList> = TPair<System.Integer,System.Classes.IInterfaceList> = record//size=8
f4:IInterfaceList;//f4
end;
Key:Integer;//f0
Value:IInterfaceList;//f4
end;
//Methods:
Create(AKey:Integer;AValue:IInterfaceList);//0079EC18;
  TArray<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>> = array of TPair<System.Integer,System.Classes.IInterfaceList>;
//elSize = 8;
  TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>> = class(TObject)
  published
    function Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.MoveNext:Boolean;//004A3944
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>> = class(TObject)
  published
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray(?:?);//004A384C
    function Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.GetEnumerator:TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>;//004A3844
    destructor Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy();//004A3820
  public
    destructor Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.Destroy(); virtual;//004A3820
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TPair<System.Integer,System.Classes.IInterfaceList>>.ToArray(?:?); virtual;//v4//004A384C
  end;
  TDictionary<System.Integer,System.Classes.IInterfaceList>.TItem = TDictionary<System.Integer,System.Classes.IInterfaceList>.TItem = record//size=C
f8:IInterfaceList;//f8
end;
HashCode:Integer;//f0
Key:Integer;//f4
Value:IInterfaceList;//f8
end;;
  TDictionary<System.Integer,System.Classes.IInterfaceList>.TItemArray = array of TDictionary<System.Integer,System.Classes.IInterfaceList>.TItem;
//elSize = C;
  TCollectionNotifyEvent<System.Integer> = procedure(Sender:TObject; const Item:Integer; Action:TCollectionNotification) of object;;
  TCollectionNotifyEvent<System.Classes.IInterfaceList> = procedure(Sender:TObject; const Item:IInterfaceList; Action:TCollectionNotification) of object;;
  TEnumerator<System.Integer> = class(TObject)
  published
    function Integer>.MoveNext:Boolean;//004A42E8
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Integer> = class(TObject)
  published
    function Integer>.ToArray:TArray<System.Integer>;//004A4234
    function Integer>.GetEnumerator:TEnumerator<System.Integer>;//004A422C
    destructor Integer>.Destroy();//004A4208
  public
    destructor Integer>.Destroy(); virtual;//004A4208
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyEnumerator = class(TEnumerator<System.Integer>)
  published
    function Integer,System.Classes.IInterfaceList>.TKeyEnumerator.MoveNext:Boolean;//004A43CC
    constructor sub_004A4388(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4388
  public
    FDictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A4378
    procedure v4; virtual;//v4//004A4380
  end;
  TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection = class(TEnumerable<System.Integer>)
  published
    //procedure Integer,System.Classes.IInterfaceList>.TKeyCollection.ToArray(?:?);//004A434C
    procedure Integer,System.Classes.IInterfaceList>.TKeyCollection.GetEnumerator;//004A433C
    constructor sub_004A4300(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4300
  public
    FDictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>;//f4
    procedure v0; virtual;//v0//004A42F8
    //procedure Integer,System.Classes.IInterfaceList>.TKeyCollection.ToArray(?:?); virtual;//v4//004A434C
  end;
  TArray<System.Classes.IInterfaceList> = array of IInterfaceList;
//elSize = 4
//varType equivalent: varUnknown;
  TEnumerator<System.Classes.IInterfaceList> = class(TObject)
  published
    function Classes.IInterfaceList>.MoveNext:Boolean;//004A45DC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.IInterfaceList> = class(TObject)
  published
    //procedure Classes.IInterfaceList>.ToArray(?:?);//004A44F4
    function Classes.IInterfaceList>.GetEnumerator:TEnumerator<System.Classes.IInterfaceList>;//004A44EC
    destructor Classes.IInterfaceList>.Destroy();//004A44C8
  public
    destructor Classes.IInterfaceList>.Destroy(); virtual;//004A44C8
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.IInterfaceList>.ToArray(?:?); virtual;//v4//004A44F4
  end;
  TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueEnumerator = class(TEnumerator<System.Classes.IInterfaceList>)
  published
    function Integer,System.Classes.IInterfaceList>.TValueEnumerator.MoveNext:Boolean;//004A46D8
    constructor sub_004A4694(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4694
  public
    FDictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A4678
    procedure v4; virtual;//v4//004A468C
  end;
  TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueCollection = class(TEnumerable<System.Classes.IInterfaceList>)
  published
    //procedure Integer,System.Classes.IInterfaceList>.TValueCollection.ToArray(?:?);//004A4640
    procedure Integer,System.Classes.IInterfaceList>.TValueCollection.GetEnumerator;//004A4630
    constructor sub_004A45F4(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A45F4
  public
    FDictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>;//f4
    procedure v0; virtual;//v0//004A45EC
    //procedure Integer,System.Classes.IInterfaceList>.TValueCollection.ToArray(?:?); virtual;//v4//004A4640
  end;
  TDictionary<System.Integer,System.Classes.IInterfaceList>.TPairEnumerator = class(TEnumerator<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>)
  published
    function Integer,System.Classes.IInterfaceList>.TPairEnumerator.MoveNext:Boolean;//004A47A4
    constructor sub_004A4760(ADictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>);//004A4760
  public
    FDictionary:TDictionary<System.Integer,System.Classes.IInterfaceList>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A4744
    procedure v4; virtual;//v4//004A4758
  end;
  TDictionary<System.Integer,System.Classes.IInterfaceList> = class(TEnumerable<System.Classes.TPair<System.Integer,System.Classes.IInterfaceList>>)
  published
    procedure Integer,System.Classes.IInterfaceList>.Clear;//004A3FEC
    procedure Integer,System.Classes.IInterfaceList>.Remove(Key:Integer);//004A3F94
    function Integer,System.Classes.IInterfaceList>.TryGetValue(Key:Integer; Value:IInterfaceList):Boolean;//004A40B8
    procedure Integer,System.Classes.IInterfaceList>.GetEnumerator;//004A416C
    //procedure Integer,System.Classes.IInterfaceList>.ToArray(?:?);//004A4114
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Integer,System.Classes.IInterfaceList>.Create;//004A3E04
    constructor sub_004A3E3C(ACapacity:Integer; AComparer:IEqualityComparer<System.Integer>);//004A3E3C
    procedure Integer,System.Classes.IInterfaceList>.Add(Key:Integer; Value:IInterfaceList);//004A3F30
    destructor Integer,System.Classes.IInterfaceList>.Destroy();//004A3EF4
  public
    FItems:TDictionary<System.Integer,System.Classes.IInterfaceList>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.Integer>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.Integer>;//f18
    FOnValueNotify:TCollectionNotifyEvent<System.Classes.IInterfaceList>;//f20
    FKeyCollection:TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.Integer,System.Classes.IInterfaceList>.TValueCollection;//f2C
    destructor Integer,System.Classes.IInterfaceList>.Destroy(); virtual;//004A3EF4
    procedure v0; virtual;//v0//004A3DCC
    //procedure Integer,System.Classes.IInterfaceList>.ToArray(?:?); virtual;//v4//004A4114
    //procedure v8(?:?); virtual;//v8//004A3DD4
    //procedure vC(?:?); virtual;//vC//004A3DEC
  end;
  TArray<System.Classes.TBasicActionLink> = array of TBasicActionLink;
//elSize = 4;
  TEnumerator<System.Classes.TBasicActionLink> = class(TObject)
  published
    function Classes.TBasicActionLink>.MoveNext:Boolean;//004A48BC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TBasicActionLink> = class(TObject)
  published
    //procedure Classes.TBasicActionLink>.ToArray(?:?);//004A4808
    function Classes.TBasicActionLink>.GetEnumerator:TEnumerator<System.Classes.TBasicActionLink>;//004A4800
    destructor Classes.TBasicActionLink>.Destroy();//004A47DC
  public
    destructor Classes.TBasicActionLink>.Destroy(); virtual;//004A47DC
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TBasicActionLink>.ToArray(?:?); virtual;//v4//004A4808
  end;
  TList<System.Classes.TBasicActionLink>.arrayofT = array of TBasicActionLink;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TBasicActionLink> = procedure(Sender:TObject; const Item:TBasicActionLink; Action:TCollectionNotification) of object;;
  TList<System.Classes.TBasicActionLink>.TEnumerator = class(TEnumerator<System.Classes.TBasicActionLink>)
  published
    function Classes.TBasicActionLink>.TEnumerator.MoveNext:Boolean;//004A4BA4
    constructor sub_004A4B60(AList:TList<System.Classes.TBasicActionLink>);//004A4B60
  public
    FList:TList<System.Classes.TBasicActionLink>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A4B50
    procedure v4; virtual;//v4//004A4B58
  end;
  TList<System.Classes.TBasicActionLink> = class(TEnumerable<System.Classes.TBasicActionLink>)
  published
    procedure Classes.TBasicActionLink>.Add(Value:TBasicActionLink);//004A4B00
    //procedure Classes.TBasicActionLink>.Error(Msg:string; Data:NativeInt; ?:?);//004A4AC8
    procedure Classes.TBasicActionLink>.GetEnumerator;//004A4B24
    //procedure Classes.TBasicActionLink>.ToArray(?:?);//004A4B10
    constructor sub_004A49CC(AComparer:IComparer<System.Classes.TBasicActionLink>);//004A49CC
    constructor sub_004A4954;//004A4954
    destructor Classes.TBasicActionLink>.Destroy();//004A4A7C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TBasicActionLink>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TBasicActionLink>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TBasicActionLink>;//f10
    FArrayManager:TArrayManager<System.Classes.TBasicActionLink>;//f18
    FItems:TList<System.Classes.TBasicActionLink>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TBasicActionLink>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TBasicActionLink>;//f28
    destructor Classes.TBasicActionLink>.Destroy(); virtual;//004A4A7C
    procedure v0; virtual;//v0//004A4934
    //procedure Classes.TBasicActionLink>.ToArray(?:?); virtual;//v4//004A4B10
    //procedure v8(?:?); virtual;//v8//004A493C
    //procedure Classes.TBasicActionLink>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A4AC8
  end;
  TWndMethod = procedure(var Message:TMessage) of object;;
  TLoginCredentialService.TLoginEvent = procedure(Sender:TObject; const Username:string; const Password:string; const Domain:string; var Handled:Boolean) of object;;
  TLoginCredentialService.TLoginCredentialEvent = procedure(Sender:TObject; Callback:TLoginCredentialService.TLoginEvent; var Success:Boolean) of object;;
  TLoginCredentialService.TLoginCredentialEventObject = class(TObject)
  published
    constructor TLoginCredentialEventObject.Create;//004A0EBC
  public
    Handler:TLoginCredentialEvent;//f8
  end;
  TLoginCredentialService = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure UnregisterLoginHandler(HandlerEvent:TLoginCredentialService.TLoginCredentialEvent);//004A0FE0
    procedure RegisterLoginHandler(HandlerEvent:TLoginCredentialService.TLoginCredentialEvent);//004A0EF0
  end;
  TRegGroup = class(TObject)
  published
    function InGroup(AClass:TPersistentClass):Boolean;//00487E38
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure RegisterClass(AClass:TPersistentClass);//00487E8C
    procedure UnregisterModuleClasses(Module:NativeUInt);//00487F6C
    function Registered(AClass:TPersistentClass):Boolean;//00487F44
    destructor Destroy();//00487DC0
    constructor Create(AClass:TPersistentClass);//00487D58
    function BestGroup(Group1:TRegGroup; Group2:TRegGroup; AClass:TPersistentClass):TRegGroup;//00487CE8
    function GetClass(AClassName:string):TPersistentClass;//00487DFC
    procedure AddClass(AClass:TPersistentClass);//00487C6C
  public
    FClassList:TDictionary<System.string,System.Classes.TPersistentClass>;//f4
    FAliasList:TDictionary<System.string,System.Classes.TPersistentClass>;//f8
    FGroupClasses:TList<System.Classes.TPersistentClass>;//fC
    FActive:Boolean;//f10
    function BestClass(AClass:TPersistentClass):TPersistentClass;//00487C80
  end;
  TRegGroups = class(TObject)
  published
    procedure RegisterClass(AClass:TPersistentClass);//00488628
    procedure GroupWith(AClass:TPersistentClass; AGroupClass:TPersistentClass);//0048847C
    function Registered(AClass:TPersistentClass):Boolean;//00488640
    procedure UnregisterModuleClasses(Module:NativeUInt);//00488714
    procedure StartGroup(AClass:TPersistentClass);//00488694
    destructor Destroy();//00488300
    constructor Create;//00488284
    procedure Activate(AClass:TPersistentClass);//00488234
    function GetClass(AClassName:string):TPersistentClass;//00488388
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FGroups:TObjectList<System.Classes.TRegGroup>;//f4
    FActiveClass:TPersistentClass;//f8
    function FindGroup(AClass:TPersistentClass):TRegGroup;//0048832C
  end;
  TPair<System.string,System.Classes.TPersistentClass> = TPair<System.string,System.Classes.TPersistentClass> = record//size=8
f0:string;//f0
end;
Key:string;//f0
Value:TPersistentClass;//f4
end;
//Methods:
Create(AKey:string;AValue:TPersistentClass);//0079EC18;
  TArray<System.Classes.TPair<System.string,System.Classes.TPersistentClass>> = array of TPair<System.string,System.Classes.TPersistentClass>;
//elSize = 8;
  TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>> = class(TObject)
  published
    function Classes.TPair<System.string,System.Classes.TPersistentClass>>.MoveNext:Boolean;//004A4DC4
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>> = class(TObject)
  published
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray(?:?);//004A4CCC
    function Classes.TPair<System.string,System.Classes.TPersistentClass>>.GetEnumerator:TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>;//004A4CC4
    destructor Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy();//004A4CA0
  public
    destructor Classes.TPair<System.string,System.Classes.TPersistentClass>>.Destroy(); virtual;//004A4CA0
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TPair<System.string,System.Classes.TPersistentClass>>.ToArray(?:?); virtual;//v4//004A4CCC
  end;
  TDictionary<System.string,System.Classes.TPersistentClass>.TItem = TDictionary<System.string,System.Classes.TPersistentClass>.TItem = record//size=C
f4:string;//f4
end;
HashCode:Integer;//f0
Key:string;//f4
Value:TPersistentClass;//f8
end;;
  TDictionary<System.string,System.Classes.TPersistentClass>.TItemArray = array of TDictionary<System.string,System.Classes.TPersistentClass>.TItem;
//elSize = C;
  TCollectionNotifyEvent<System.Classes.TPersistentClass> = procedure(Sender:TObject; const Item:TPersistentClass; Action:TCollectionNotification) of object;;
  TDictionary<System.string,System.Classes.TPersistentClass>.TKeyEnumerator = class(TEnumerator<System.string>)
  published
    function string,System.Classes.TPersistentClass>.TKeyEnumerator.MoveNext:Boolean;//004A55A0
    constructor sub_004A555C(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A555C
  public
    FDictionary:TDictionary<System.string,System.Classes.TPersistentClass>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A5540
    procedure v4; virtual;//v4//004A5554
  end;
  TDictionary<System.string,System.Classes.TPersistentClass>.TKeyCollection = class(TEnumerable<System.string>)
  published
    //procedure string,System.Classes.TPersistentClass>.TKeyCollection.ToArray(?:?);//004A5508
    procedure string,System.Classes.TPersistentClass>.TKeyCollection.GetEnumerator;//004A54F8
    constructor sub_004A54BC(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A54BC
  public
    FDictionary:TDictionary<System.string,System.Classes.TPersistentClass>;//f4
    procedure v0; virtual;//v0//004A54B4
    //procedure string,System.Classes.TPersistentClass>.TKeyCollection.ToArray(?:?); virtual;//v4//004A5508
  end;
  TArray<System.Classes.TPersistentClass> = array of TPersistentClass;
//elSize = 4;
  TEnumerator<System.Classes.TPersistentClass> = class(TObject)
  published
    function Classes.TPersistentClass>.MoveNext:Boolean;//004A5744
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TPersistentClass> = class(TObject)
  published
    //procedure Classes.TPersistentClass>.ToArray(?:?);//004A5690
    function Classes.TPersistentClass>.GetEnumerator:TEnumerator<System.Classes.TPersistentClass>;//004A5688
    destructor Classes.TPersistentClass>.Destroy();//004A5664
  public
    destructor Classes.TPersistentClass>.Destroy(); virtual;//004A5664
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TPersistentClass>.ToArray(?:?); virtual;//v4//004A5690
  end;
  TDictionary<System.string,System.Classes.TPersistentClass>.TValueEnumerator = class(TEnumerator<System.Classes.TPersistentClass>)
  published
    function string,System.Classes.TPersistentClass>.TValueEnumerator.MoveNext:Boolean;//004A5828
    constructor sub_004A57E4(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A57E4
  public
    FDictionary:TDictionary<System.string,System.Classes.TPersistentClass>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A57D4
    procedure v4; virtual;//v4//004A57DC
  end;
  TDictionary<System.string,System.Classes.TPersistentClass>.TValueCollection = class(TEnumerable<System.Classes.TPersistentClass>)
  published
    //procedure string,System.Classes.TPersistentClass>.TValueCollection.ToArray(?:?);//004A57A8
    procedure string,System.Classes.TPersistentClass>.TValueCollection.GetEnumerator;//004A5798
    constructor sub_004A575C(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A575C
  public
    FDictionary:TDictionary<System.string,System.Classes.TPersistentClass>;//f4
    procedure v0; virtual;//v0//004A5754
    //procedure string,System.Classes.TPersistentClass>.TValueCollection.ToArray(?:?); virtual;//v4//004A57A8
  end;
  TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator = class(TEnumerator<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>)
  published
    function string,System.Classes.TPersistentClass>.TPairEnumerator.MoveNext:Boolean;//004A58F4
    constructor sub_004A58B0(ADictionary:TDictionary<System.string,System.Classes.TPersistentClass>);//004A58B0
  public
    FDictionary:TDictionary<System.string,System.Classes.TPersistentClass>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004A5894
    procedure v4; virtual;//v4//004A58A8
  end;
  TDictionary<System.string,System.Classes.TPersistentClass> = class(TEnumerable<System.Classes.TPair<System.string,System.Classes.TPersistentClass>>)
  published
    function string,System.Classes.TPersistentClass>.TryGetValue(Key:string; Value:TPersistentClass):Boolean;//004A5364
    procedure string,System.Classes.TPersistentClass>.Clear;//004A5298
    function string,System.Classes.TPersistentClass>.ContainsValue(Value:TPersistentClass):Boolean;//004A53A4
    function string,System.Classes.TPersistentClass>.GetEnumerator:TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator;//004A549C
    //procedure string,System.Classes.TPersistentClass>.ToArray(?:?);//004A5444
    constructor string,System.Classes.TPersistentClass>.Create;//004A5108
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_004A5140(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);//004A5140
    procedure string,System.Classes.TPersistentClass>.Add(Key:string; Value:TPersistentClass);//004A5234
    destructor string,System.Classes.TPersistentClass>.Destroy();//004A51F8
  public
    FItems:TDictionary<System.string,System.Classes.TPersistentClass>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.string>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.string>;//f18
    FOnValueNotify:TCollectionNotifyEvent<System.Classes.TPersistentClass>;//f20
    FKeyCollection:TDictionary<System.string,System.Classes.TPersistentClass>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.string,System.Classes.TPersistentClass>.TValueCollection;//f2C
    destructor string,System.Classes.TPersistentClass>.Destroy(); virtual;//004A51F8
    procedure v0; virtual;//v0//004A50D0
    //procedure string,System.Classes.TPersistentClass>.ToArray(?:?); virtual;//v4//004A5444
    //procedure v8(?:?); virtual;//v8//004A50D8
    //procedure vC(?:?); virtual;//vC//004A50F0
  end;
  TList<System.Classes.TPersistentClass>.arrayofT = array of TPersistentClass;
//elSize = 4;
  TList<System.Classes.TPersistentClass>.TEnumerator = class(TEnumerator<System.Classes.TPersistentClass>)
  published
    function Classes.TPersistentClass>.TEnumerator.MoveNext:Boolean;//004A5C94
    constructor sub_004A5C50(AList:TList<System.Classes.TPersistentClass>);//004A5C50
  public
    FList:TList<System.Classes.TPersistentClass>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A5C40
    procedure v4; virtual;//v4//004A5C48
  end;
  TList<System.Classes.TPersistentClass> = class(TEnumerable<System.Classes.TPersistentClass>)
  published
    procedure Classes.TPersistentClass>.Pack;//004A5B78
    procedure Classes.TPersistentClass>.Add(Value:TPersistentClass);//004A5B68
    procedure Classes.TPersistentClass>.GetEnumerator;//004A5C14
    //procedure Classes.TPersistentClass>.ToArray(?:?);//004A5C00
    //procedure Classes.TPersistentClass>.Error(Msg:string; Data:NativeInt; ?:?);//004A5B30
    constructor sub_004A5A34(AComparer:IComparer<System.Classes.TPersistentClass>);//004A5A34
    constructor sub_004A59BC;//004A59BC
    destructor Classes.TPersistentClass>.Destroy();//004A5AE4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TPersistentClass>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TPersistentClass>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPersistentClass>;//f10
    FArrayManager:TArrayManager<System.Classes.TPersistentClass>;//f18
    FItems:TList<System.Classes.TPersistentClass>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TPersistentClass>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPersistentClass>;//f28
    destructor Classes.TPersistentClass>.Destroy(); virtual;//004A5AE4
    procedure v0; virtual;//v0//004A599C
    //procedure Classes.TPersistentClass>.ToArray(?:?); virtual;//v4//004A5C00
    //procedure v8(?:?); virtual;//v8//004A59A4
    //procedure Classes.TPersistentClass>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A5B30
  end;
  TArray<System.Classes.TRegGroup> = array of TRegGroup;
//elSize = 4;
  TEnumerator<System.Classes.TRegGroup> = class(TObject)
  published
    function Classes.TRegGroup>.MoveNext:Boolean;//004A5D94
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TRegGroup> = class(TObject)
  published
    //procedure Classes.TRegGroup>.ToArray(?:?);//004A5CE0
    function Classes.TRegGroup>.GetEnumerator:TEnumerator<System.Classes.TRegGroup>;//004A5CD8
    destructor Classes.TRegGroup>.Destroy();//004A5CB4
  public
    destructor Classes.TRegGroup>.Destroy(); virtual;//004A5CB4
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TRegGroup>.ToArray(?:?); virtual;//v4//004A5CE0
  end;
  TList<System.Classes.TRegGroup>.arrayofT = array of TRegGroup;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TRegGroup> = procedure(Sender:TObject; const Item:TRegGroup; Action:TCollectionNotification) of object;;
  TList<System.Classes.TRegGroup>.TEnumerator = class(TEnumerator<System.Classes.TRegGroup>)
  published
    function Classes.TRegGroup>.TEnumerator.MoveNext:Boolean;//004A607C
    constructor sub_004A6038(AList:TList<System.Classes.TRegGroup>);//004A6038
  public
    FList:TList<System.Classes.TRegGroup>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A6028
    procedure v4; virtual;//v4//004A6030
  end;
  TList<System.Classes.TRegGroup> = class(TEnumerable<System.Classes.TRegGroup>)
  published
    procedure Classes.TRegGroup>.Add(Value:TRegGroup);//004A5FD8
    //procedure Classes.TRegGroup>.Error(Msg:string; Data:NativeInt; ?:?);//004A5FA0
    procedure Classes.TRegGroup>.GetEnumerator;//004A5FFC
    //procedure Classes.TRegGroup>.ToArray(?:?);//004A5FE8
    constructor sub_004A5EA4(AComparer:IComparer<System.Classes.TRegGroup>);//004A5EA4
    constructor sub_004A5E2C;//004A5E2C
    destructor Classes.TRegGroup>.Destroy();//004A5F54
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TRegGroup>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TRegGroup>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TRegGroup>;//f10
    FArrayManager:TArrayManager<System.Classes.TRegGroup>;//f18
    FItems:TList<System.Classes.TRegGroup>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TRegGroup>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TRegGroup>;//f28
    destructor Classes.TRegGroup>.Destroy(); virtual;//004A5F54
    procedure v0; virtual;//v0//004A5E0C
    //procedure Classes.TRegGroup>.ToArray(?:?); virtual;//v4//004A5FE8
    //procedure v8(?:?); virtual;//v8//004A5E14
    //procedure Classes.TRegGroup>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A5FA0
  end;
  TObjectList<System.Classes.TRegGroup> = class(TList<System.Classes.TRegGroup>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_004A60C8(AOwnsObjects:Boolean);//004A60C8
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//004A609C
  end;
  TIntConst = class(TObject)
  published
    constructor Create(AIntToIdent:TIntToIdent; AIdentToInt:TIdentToInt);//0048A450
  public
    IntegerType:PTypeInfo;//f4
    IdentToInt:TIdentToInt;//f8
    IntToIdent:TIntToIdent;//fC
  end;
  TArray<System.Classes.TIntConst> = array of TIntConst;
//elSize = 4;
  TEnumerator<System.Classes.TIntConst> = class(TObject)
  published
    function Classes.TIntConst>.MoveNext:Boolean;//004A63F4
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TIntConst> = class(TObject)
  published
    //procedure Classes.TIntConst>.ToArray(?:?);//004A6340
    function Classes.TIntConst>.GetEnumerator:TEnumerator<System.Classes.TIntConst>;//004A6338
    destructor Classes.TIntConst>.Destroy();//004A6314
  public
    destructor Classes.TIntConst>.Destroy(); virtual;//004A6314
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TIntConst>.ToArray(?:?); virtual;//v4//004A6340
  end;
  TList<System.Classes.TIntConst>.arrayofT = array of TIntConst;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TIntConst> = procedure(Sender:TObject; const Item:TIntConst; Action:TCollectionNotification) of object;;
  TList<System.Classes.TIntConst>.TEnumerator = class(TEnumerator<System.Classes.TIntConst>)
  published
    function Classes.TIntConst>.TEnumerator.MoveNext:Boolean;//004A6704
    constructor sub_004A66C0(AList:TList<System.Classes.TIntConst>);//004A66C0
  public
    FList:TList<System.Classes.TIntConst>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A66B0
    procedure v4; virtual;//v4//004A66B8
  end;
  TList<System.Classes.TIntConst> = class(TEnumerable<System.Classes.TIntConst>)
  published
    procedure Classes.TIntConst>.Add(Value:TIntConst);//004A6660
    //procedure Classes.TIntConst>.Error(Msg:string; Data:NativeInt; ?:?);//004A6628
    procedure Classes.TIntConst>.GetEnumerator;//004A6684
    //procedure Classes.TIntConst>.ToArray(?:?);//004A6670
    constructor sub_004A652C(AComparer:IComparer<System.Classes.TIntConst>);//004A652C
    constructor sub_004A64B4;//004A64B4
    destructor Classes.TIntConst>.Destroy();//004A65DC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TIntConst>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TIntConst>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TIntConst>;//f10
    FArrayManager:TArrayManager<System.Classes.TIntConst>;//f18
    FItems:TList<System.Classes.TIntConst>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TIntConst>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TIntConst>;//f28
    destructor Classes.TIntConst>.Destroy(); virtual;//004A65DC
    procedure v0; virtual;//v0//004A6494
    //procedure Classes.TIntConst>.ToArray(?:?); virtual;//v4//004A6670
    //procedure v8(?:?); virtual;//v8//004A649C
    //procedure Classes.TIntConst>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A6628
  end;
  TThreadList<System.Classes.TIntConst> = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Classes.TIntConst>.LockList:TList<System.Classes.TIntConst>;//004A62E0
    procedure Classes.TIntConst>.UnlockList;//004A6308
    constructor sub_004A610C;//004A610C
    destructor Classes.TIntConst>.Destroy();//004A6164
    procedure Classes.TIntConst>.Add(Item:TIntConst);//004A61E0
  public
    FList:TList<System.Classes.TIntConst>;//f4
    FLock:TObject;//f8
    FDuplicates:TDuplicates;//fC
  end;
  TArray<System.Classes.TFindGlobalComponent> = array of TFindGlobalComponent;
//elSize = 4;
  TEnumerator<System.Classes.TFindGlobalComponent> = class(TObject)
  published
    function Classes.TFindGlobalComponent>.MoveNext:Boolean;//004A6804
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TFindGlobalComponent> = class(TObject)
  published
    //procedure Classes.TFindGlobalComponent>.ToArray(?:?);//004A6750
    function Classes.TFindGlobalComponent>.GetEnumerator:TEnumerator<System.Classes.TFindGlobalComponent>;//004A6748
    destructor Classes.TFindGlobalComponent>.Destroy();//004A6724
  public
    destructor Classes.TFindGlobalComponent>.Destroy(); virtual;//004A6724
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TFindGlobalComponent>.ToArray(?:?); virtual;//v4//004A6750
  end;
  TList<System.Classes.TFindGlobalComponent>.arrayofT = array of TFindGlobalComponent;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TFindGlobalComponent> = procedure(Sender:TObject; const Item:TFindGlobalComponent; Action:TCollectionNotification) of object;;
  TList<System.Classes.TFindGlobalComponent>.TEnumerator = class(TEnumerator<System.Classes.TFindGlobalComponent>)
  published
    function Classes.TFindGlobalComponent>.TEnumerator.MoveNext:Boolean;//004A6AEC
    constructor sub_004A6AA8(AList:TList<System.Classes.TFindGlobalComponent>);//004A6AA8
  public
    FList:TList<System.Classes.TFindGlobalComponent>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A6A98
    procedure v4; virtual;//v4//004A6AA0
  end;
  TList<System.Classes.TFindGlobalComponent> = class(TEnumerable<System.Classes.TFindGlobalComponent>)
  published
    procedure Classes.TFindGlobalComponent>.Add(Value:TFindGlobalComponent);//004A6A48
    //procedure Classes.TFindGlobalComponent>.Error(Msg:string; Data:NativeInt; ?:?);//004A6A10
    procedure Classes.TFindGlobalComponent>.GetEnumerator;//004A6A6C
    //procedure Classes.TFindGlobalComponent>.ToArray(?:?);//004A6A58
    constructor sub_004A6914(AComparer:IComparer<System.Classes.TFindGlobalComponent>);//004A6914
    constructor sub_004A689C;//004A689C
    destructor Classes.TFindGlobalComponent>.Destroy();//004A69C4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TFindGlobalComponent>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TFindGlobalComponent>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TFindGlobalComponent>;//f10
    FArrayManager:TArrayManager<System.Classes.TFindGlobalComponent>;//f18
    FItems:TList<System.Classes.TFindGlobalComponent>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TFindGlobalComponent>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TFindGlobalComponent>;//f28
    destructor Classes.TFindGlobalComponent>.Destroy(); virtual;//004A69C4
    procedure v0; virtual;//v0//004A687C
    //procedure Classes.TFindGlobalComponent>.ToArray(?:?); virtual;//v4//004A6A58
    //procedure v8(?:?); virtual;//v8//004A6884
    //procedure Classes.TFindGlobalComponent>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A6A10
  end;
  TArray<System.Classes.TList<System.Classes.TComponent>> = array of TList<System.Classes.TComponent>;
//elSize = 4;
  TEnumerator<System.Classes.TList<System.Classes.TComponent>> = class(TObject)
  published
    function Classes.TList<System.Classes.TComponent>>.MoveNext:Boolean;//004A6BEC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TList<System.Classes.TComponent>> = class(TObject)
  published
    //procedure Classes.TList<System.Classes.TComponent>>.ToArray(?:?);//004A6B38
    function Classes.TList<System.Classes.TComponent>>.GetEnumerator:TEnumerator<System.Classes.TList<System.Classes.TComponent>>;//004A6B30
    destructor Classes.TList<System.Classes.TComponent>>.Destroy();//004A6B0C
  public
    destructor Classes.TList<System.Classes.TComponent>>.Destroy(); virtual;//004A6B0C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TList<System.Classes.TComponent>>.ToArray(?:?); virtual;//v4//004A6B38
  end;
  TList<System.Generics.Collections.TList<System.Classes.TComponent>>.arrayofT = array of TList<System.Classes.TComponent>;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TList<System.Classes.TComponent>> = procedure(Sender:TObject; const Item:TList<System.Classes.TComponent>; Action:TCollectionNotification) of object;;
  TList<System.Generics.Collections.TList<System.Classes.TComponent>>.TEnumerator = class(TEnumerator<System.Classes.TList<System.Classes.TComponent>>)
  published
    function Generics.Collections.TList<System.Classes.TComponent>>.TEnumerator.MoveNext:Boolean;//004A6ED4
    constructor sub_004A6E90(AList:TList<System.Generics.Collections.TList<System.Classes.TComponent>>);//004A6E90
  public
    FList:TList<System.Generics.Collections.TList<System.Classes.TComponent>>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A6E80
    procedure v4; virtual;//v4//004A6E88
  end;
  TList<System.Generics.Collections.TList<System.Classes.TComponent>> = class(TEnumerable<System.Classes.TList<System.Classes.TComponent>>)
  published
    procedure Generics.Collections.TList<System.Classes.TComponent>>.Add(Value:TList<System.Classes.TComponent>);//004A6E30
    //procedure Generics.Collections.TList<System.Classes.TComponent>>.Error(Msg:string; Data:NativeInt; ?:?);//004A6DF8
    procedure Generics.Collections.TList<System.Classes.TComponent>>.GetEnumerator;//004A6E54
    //procedure Generics.Collections.TList<System.Classes.TComponent>>.ToArray(?:?);//004A6E40
    constructor sub_004A6CFC(AComparer:IComparer<System.Generics.Collections.TList<System.Classes.TComponent>>);//004A6CFC
    constructor sub_004A6C84;//004A6C84
    destructor Generics.Collections.TList<System.Classes.TComponent>>.Destroy();//004A6DAC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Generics.Collections.TList<System.Classes.TComponent>>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Generics.Collections.TList<System.Classes.TComponent>>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TList<System.Classes.TComponent>>;//f10
    FArrayManager:TArrayManager<System.Classes.TList<System.Classes.TComponent>>;//f18
    FItems:TList<System.Generics.Collections.TList<System.Classes.TComponent>>.arrayofT;//f20
    FComparer:IComparer<System.Generics.Collections.TList<System.Classes.TComponent>>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TList<System.Classes.TComponent>>;//f28
    destructor Generics.Collections.TList<System.Classes.TComponent>>.Destroy(); virtual;//004A6DAC
    procedure v0; virtual;//v0//004A6C64
    //procedure Generics.Collections.TList<System.Classes.TComponent>>.ToArray(?:?); virtual;//v4//004A6E40
    //procedure v8(?:?); virtual;//v8//004A6C6C
    //procedure Generics.Collections.TList<System.Classes.TComponent>>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A6DF8
  end;
  TList.Sort$122$ActRec = class(TInterfacedObject)
  public
    Compare:TListSortCompare;//fC
  end;
  TPropFixup = class(TObject)
  published
    procedure ResolveReference(Reference:Pointer);//004947B4
    function MakeGlobalReference:Boolean;//00494754
    constructor Create(Name:string; RootName:string; PropInfo:PPropInfo; InstanceRoot:TComponent);//004946FC
  public
    FInstance:TPersistent;//f4
    FInstanceRoot:TComponent;//f8
    FPropInfo:PPropInfo;//fC
    FRootName:string;//f10
    FName:string;//f14
    procedure ResolveReference(Reference:Pointer); virtual;//v0//004947B4
  end;
  TPropIntfFixup = class(TPropFixup)
  published
    procedure ResolveReference(Reference:Pointer);//004947C4
  public
    procedure ResolveReference(Reference:Pointer); virtual;//v0//004947C4
  end;
  TArray<System.Classes.TPropFixup> = array of TPropFixup;
//elSize = 4;
  TEnumerator<System.Classes.TPropFixup> = class(TObject)
  published
    function Classes.TPropFixup>.MoveNext:Boolean;//004A71DC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TPropFixup> = class(TObject)
  published
    //procedure Classes.TPropFixup>.ToArray(?:?);//004A7128
    function Classes.TPropFixup>.GetEnumerator:TEnumerator<System.Classes.TPropFixup>;//004A7120
    destructor Classes.TPropFixup>.Destroy();//004A70FC
  public
    destructor Classes.TPropFixup>.Destroy(); virtual;//004A70FC
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TPropFixup>.ToArray(?:?); virtual;//v4//004A7128
  end;
  TList<System.Classes.TPropFixup>.arrayofT = array of TPropFixup;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TPropFixup> = procedure(Sender:TObject; const Item:TPropFixup; Action:TCollectionNotification) of object;;
  TList<System.Classes.TPropFixup>.TEnumerator = class(TEnumerator<System.Classes.TPropFixup>)
  published
    function Classes.TPropFixup>.TEnumerator.MoveNext:Boolean;//004A74EC
    constructor sub_004A74A8(AList:TList<System.Classes.TPropFixup>);//004A74A8
  public
    FList:TList<System.Classes.TPropFixup>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A7498
    procedure v4; virtual;//v4//004A74A0
  end;
  TList<System.Classes.TPropFixup> = class(TEnumerable<System.Classes.TPropFixup>)
  published
    procedure Classes.TPropFixup>.Add(Value:TPropFixup);//004A7448
    //procedure Classes.TPropFixup>.Error(Msg:string; Data:NativeInt; ?:?);//004A7410
    procedure Classes.TPropFixup>.GetEnumerator;//004A746C
    //procedure Classes.TPropFixup>.ToArray(?:?);//004A7458
    constructor sub_004A7314(AComparer:IComparer<System.Classes.TPropFixup>);//004A7314
    constructor sub_004A729C;//004A729C
    destructor Classes.TPropFixup>.Destroy();//004A73C4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TPropFixup>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TPropFixup>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPropFixup>;//f10
    FArrayManager:TArrayManager<System.Classes.TPropFixup>;//f18
    FItems:TList<System.Classes.TPropFixup>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TPropFixup>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPropFixup>;//f28
    destructor Classes.TPropFixup>.Destroy(); virtual;//004A73C4
    procedure v0; virtual;//v0//004A727C
    //procedure Classes.TPropFixup>.ToArray(?:?); virtual;//v4//004A7458
    //procedure v8(?:?); virtual;//v8//004A7284
    //procedure Classes.TPropFixup>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A7410
  end;
  TThreadList<System.Classes.TPropFixup> = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Classes.TPropFixup>.LockList:TList<System.Classes.TPropFixup>;//004A70C8
    procedure Classes.TPropFixup>.UnlockList;//004A70F0
    constructor sub_004A6EF4;//004A6EF4
    destructor Classes.TPropFixup>.Destroy();//004A6F4C
    procedure Classes.TPropFixup>.Add(Item:TPropFixup);//004A6FC8
  public
    FList:TList<System.Classes.TPropFixup>;//f4
    FLock:TObject;//f8
    FDuplicates:TDuplicates;//fC
  end;
  :TReader.:1 = array of TComponent;
//elSize = 4;
  TArray<System.Classes.TPersistent> = array of TPersistent;
//elSize = 4;
  TEnumerator<System.Classes.TPersistent> = class(TObject)
  published
    function Classes.TPersistent>.MoveNext:Boolean;//004A75EC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TPersistent> = class(TObject)
  published
    //procedure Classes.TPersistent>.ToArray(?:?);//004A7538
    function Classes.TPersistent>.GetEnumerator:TEnumerator<System.Classes.TPersistent>;//004A7530
    destructor Classes.TPersistent>.Destroy();//004A750C
  public
    destructor Classes.TPersistent>.Destroy(); virtual;//004A750C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TPersistent>.ToArray(?:?); virtual;//v4//004A7538
  end;
  TList<System.Classes.TPersistent>.arrayofT = array of TPersistent;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TPersistent> = procedure(Sender:TObject; const Item:TPersistent; Action:TCollectionNotification) of object;;
  TList<System.Classes.TPersistent>.TEnumerator = class(TEnumerator<System.Classes.TPersistent>)
  published
    function Classes.TPersistent>.TEnumerator.MoveNext:Boolean;//004A78D4
    constructor sub_004A7890(AList:TList<System.Classes.TPersistent>);//004A7890
  public
    FList:TList<System.Classes.TPersistent>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A7880
    procedure v4; virtual;//v4//004A7888
  end;
  TList<System.Classes.TPersistent> = class(TEnumerable<System.Classes.TPersistent>)
  published
    procedure Classes.TPersistent>.Add(Value:TPersistent);//004A7830
    //procedure Classes.TPersistent>.Error(Msg:string; Data:NativeInt; ?:?);//004A77F8
    procedure Classes.TPersistent>.GetEnumerator;//004A7854
    //procedure Classes.TPersistent>.ToArray(?:?);//004A7840
    constructor sub_004A76FC(AComparer:IComparer<System.Classes.TPersistent>);//004A76FC
    constructor sub_004A7684;//004A7684
    destructor Classes.TPersistent>.Destroy();//004A77AC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Classes.TPersistent>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Classes.TPersistent>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPersistent>;//f10
    FArrayManager:TArrayManager<System.Classes.TPersistent>;//f18
    FItems:TList<System.Classes.TPersistent>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TPersistent>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TPersistent>;//f28
    destructor Classes.TPersistent>.Destroy(); virtual;//004A77AC
    procedure v0; virtual;//v0//004A7664
    //procedure Classes.TPersistent>.ToArray(?:?); virtual;//v4//004A7840
    //procedure v8(?:?); virtual;//v8//004A766C
    //procedure Classes.TPersistent>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A77F8
  end;
  TExternalThread = class(TThread)
  published
    constructor Create();//0049C150
  public
    procedure Execute; virtual;//v8//0049C190
  end;
  TArray<System.Classes.TThread> = array of TThread;
//elSize = 4;
  TEnumerator<System.Classes.TThread> = class(TObject)
  published
    function Classes.TThread>.MoveNext:Boolean;//004A7BDC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Classes.TThread> = class(TObject)
  published
    //procedure Classes.TThread>.ToArray(?:?);//004A7B28
    function Classes.TThread>.GetEnumerator:TEnumerator<System.Classes.TThread>;//004A7B20
    destructor Classes.TThread>.Destroy();//004A7AFC
  public
    destructor Classes.TThread>.Destroy(); virtual;//004A7AFC
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Classes.TThread>.ToArray(?:?); virtual;//v4//004A7B28
  end;
  TList<System.Classes.TThread>.arrayofT = array of TThread;
//elSize = 4;
  TCollectionNotifyEvent<System.Classes.TThread> = procedure(Sender:TObject; const Item:TThread; Action:TCollectionNotification) of object;;
  TList<System.Classes.TThread>.TEnumerator = class(TEnumerator<System.Classes.TThread>)
  published
    function Classes.TThread>.TEnumerator.MoveNext:Boolean;//004A7EEC
    constructor sub_004A7EA8(AList:TList<System.Classes.TThread>);//004A7EA8
  public
    FList:TList<System.Classes.TThread>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004A7E98
    procedure v4; virtual;//v4//004A7EA0
  end;
  TList<System.Classes.TThread> = class(TEnumerable<System.Classes.TThread>)
  published
    procedure Classes.TThread>.Add(Value:TThread);//004A7E48
    //procedure Classes.TThread>.Error(Msg:string; Data:NativeInt; ?:?);//004A7E10
    procedure Classes.TThread>.GetEnumerator;//004A7E6C
    //procedure Classes.TThread>.ToArray(?:?);//004A7E58
    constructor sub_004A7D14(AComparer:IComparer<System.Classes.TThread>);//004A7D14
    constructor sub_004A7C9C;//004A7C9C
    destructor Classes.TThread>.Destroy();//004A7DC4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<System.Classes.TThread>.arrayofT;//f20
    FComparer:IComparer<System.Classes.TThread>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Classes.TThread>;//f28
    destructor Classes.TThread>.Destroy(); virtual;//004A7DC4
    procedure v0; virtual;//v0//004A7C7C
    //procedure Classes.TThread>.ToArray(?:?); virtual;//v4//004A7E58
    //procedure v8(?:?); virtual;//v8//004A7C84
    //procedure Classes.TThread>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004A7E10
  end;
  TThreadList<System.Classes.TThread> = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Classes.TThread>.LockList:TList<System.Classes.TThread>;//004A7AC8
    procedure Classes.TThread>.UnlockList;//004A7AF0
    constructor sub_004A78F4;//004A78F4
    destructor Classes.TThread>.Destroy();//004A794C
    procedure Classes.TThread>.Add(Item:TThread);//004A79C8
  public
    FList:TList<System.Classes.TThread>;//f4
    FLock:TObject;//f8
    FDuplicates:TDuplicates;//fC
  end;
    procedure sub_004830B8(?:Integer; ?:TShiftState; ?:array[$0..-$1] of System.TVarRec);//004830B8
    function Rect(ALeft:Integer; ATop:Integer; ARight:Integer; ABottom:Integer):TRect;//004830C0
    function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;//004830DC
    function InvalidPoint(const At:Types.TPoint):Boolean;//00483104
    function InvalidPoint(const At:Types.TSmallPoint):Boolean;//00483118
    //function sub_00483134(?:?):?;//00483134
    procedure Error;//004883F8
    constructor sub_00488768(AClass:TPersistentClass; AIncludeActiveGroups:Boolean);//00488768
    destructor Destroy();//004888BC
    function GetClass(AClassName:string):TPersistentClass;//004888E8
    function GetFieldClassTable(AClass:TClass):PFieldClassTable;//00488984
    procedure ClassNotFound(const ClassName:UnicodeString);//00488990
    function GetClass(const AClassName:UnicodeString):TPersistentClass;//004889FC
    function FindClass(const ClassName:UnicodeString):TPersistentClass;//00488A54
    procedure RegisterClass(AClass:TPersistentClass);//00488A74
    //procedure sub_00488AE8(?:?; ?:?);//00488AE8
    procedure StartClassGroup(AClass:TPersistentClass);//00488B38
    procedure GroupDescendentsWith(AClass:TPersistentClass; AClassGroup:TPersistentClass);//00488B88
    function ActivateClassGroup(AClass:TPersistentClass):TPersistentClass;//00488BE0
    procedure RegisterIntegerConsts(AIntegerType:Pointer; AIdentToInt:TIdentToInt; AIntToIdent:TIntToIdent);//0048A488
    function FindIntToIdent(AIntegerType:Pointer):TIntToIdent;//0048A4B4
    function FindIdentToInt(AIntegerType:Pointer):TIdentToInt;//0048A538
    function IdentToInt(const Ident:UnicodeString; var Int:LongInt; const Map:array[$0..-$1] of TIdentMapEntry; const _Dv_:$0..-$1):Boolean;//0048A5BC
    function IntToIdent(Int:LongInt; var Ident:UnicodeString; const Map:array[$0..-$1] of TIdentMapEntry; const _Dv_:$0..-$1):Boolean;//0048A624
    procedure sub_0048BAC0(?:TComponent);//0048BAC0
    procedure sub_0048BB18(?:TComponent);//0048BB18
    function FindGlobalComponent(const Name:UnicodeString):TComponent;//0048BB44
    function IsUniqueGlobalComponentName(const Name:UnicodeString):Boolean;//0048BB90
    function InternalReadComponentRes(const ResName:UnicodeString; HInst:Windows.THandle; var Instance:TComponent):Boolean;//0048BBB4
    procedure sub_0048D1B0;//0048D1B0
    procedure sub_0048D214;//0048D214
    procedure sub_0048D24C;//0048D24C
    function InitComponent(ClassType:TClass):Boolean;//0048D2BC
    //function sub_0048D348(?:TComponent; ?:TComponent):?;//0048D348
    procedure WriteCollection(Stream:TStream; Collection:TCollection; CollectionOwner:TComponent);//0048D41C
    function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;//0048D488
    function GetCurrent:Pointer;//0048D5A4
    destructor Destroy();//0048D5B0
    function Add(Item:Pointer):Integer;//0048D5D0
    procedure Clear;//0048D610
    procedure Delete(Index:Integer);//0048D628
    procedure Error(Msg:string; Data:NativeInt);//0048D690
    procedure Error(Msg:PResStringRec; Data:NativeInt);//0048D6C8
    function Expand:TList;//0048D73C
    function Get(Index:Integer):Pointer;//0048D754
    procedure Grow;//0048D778
    function IndexOf(Item:Pointer):Integer;//0048D7AC
    function IndexOfItem(Item:Pointer; Direction:TDirection):Integer;//0048D7D0
    procedure Insert(Index:Integer; Item:Pointer);//0048D804
    function Last:Pointer;//0048D87C
    procedure Move(CurIndex:Integer; NewIndex:Integer);//0048D8A0
    procedure Put(Index:Integer; Item:Pointer);//0048D8F8
    function RemoveItem(Item:Pointer; Direction:TDirection):Integer;//0048D958
    procedure SetCapacity(NewCapacity:Integer);//0048D978
    procedure SetCount(NewCount:Integer);//0048D9B4
    procedure QuickSort(SortList:TPointerList; L:Integer; R:Integer; SCompare:TListSortCompareFunc);//0048DA50
    function Sort$1846$ActRec.$0$Body(Item1:Pointer; Item2:Pointer):Integer;//0048DCB4
    procedure Sort(Compare:TListSortCompare);//0048DCC0
    function ExtractItem(Item:Pointer; Direction:TDirection):Pointer;//0048DD3C
    procedure Notify(Ptr:Pointer; Action:TListNotification);//0048DD8C
    procedure Assign(ListA:TList; AOperator:TListAssignOp; ListB:TList);//0048DD90
    constructor Create();//0048E05C
    destructor Destroy();//0048E0B4
    procedure Add(Item:Pointer);//0048E130
    procedure Clear;//0048E1B8
    function LockList:TList;//0048E200
    procedure RemoveItem(Item:Pointer; Direction:TDirection);//0048E228
    procedure UnlockList;//0048E27C
    constructor Create;//0048E288
    function GetCurrent:IInterface;//0048E2CC
    constructor Create();//0048E2E4
    destructor Destroy();//0048E328
    procedure Clear;//0048E36C
    procedure Delete(Index:Integer);//0048E3E0
    function First:IInterface;//0048E448
    function Get(Index:Integer):IInterface;//0048E45C
    //function sub_0048E510(?:?):?;//0048E510
    procedure Unlock;//0048E557
    function GetCount:Integer;//0048E574
    function GetEnumerator:TInterfaceListEnumerator;//0048E5C8
    function IndexOf(Item:IInterface):Integer;//0048E5D8
    function IndexOfItem(Item:IInterface; Direction:TDirection):Integer;//0048E5E0
    function Add(Item:IInterface):Integer;//0048E65C
    procedure Insert(Index:Integer; Item:IInterface);//0048E6DC
    //procedure Last(?:?);//0048E758
    procedure Put(Index:Integer; Item:IInterface);//0048E7B4
    function Remove(Item:IInterface):Integer;//0048E868
    function RemoveItem(Item:IInterface; Direction:TDirection):Integer;//0048E870
    //procedure sub_0048E914(?:?; ?:?);//0048E914
    procedure Classes.TIntConst>.UnlockList;//0048E972
    //procedure sub_0048E988(?:?; ?:?);//0048E988
    procedure Classes.TPropFixup>.UnlockList;//0048E9C8
    procedure Exchange(Index1:Integer; Index2:Integer);//0048E9DC
    procedure Lock;//0048EA40
    procedure Unlock;//0048EA4C
    destructor Destroy();//0048EA58
    procedure Error;//0048EA88
    function Min(X:Integer; Y:Integer):Integer;//0048EAA0
    procedure SetSize(Value:Integer);//0048EAAC
    procedure SetBit(Index:Integer; Value:Boolean);//0048EB88
    function GetBit(Index:Integer):Boolean;//0048EBB4
    function OpenBit:Integer;//0048EBCC
    destructor Destroy();//0048EC44
    procedure Assign(Source:TPersistent);//0048EC70
    procedure AssignError(Source:TPersistent);//0048EC84
    procedure AssignTo(Dest:TPersistent);//0048ED40
    procedure DefineProperties(Filer:TFiler);//0048ED48
    procedure GetNamePath;//0048ED4C
    procedure sub_0048EDE4;//0048EDE4
    procedure AfterConstruction;//0048EDE8
    function _AddRef:Integer; stdcall;//0048EE38
    function _Release:Integer; stdcall;//0048EE58
    //function QueryInterface(IID:TGUID; Obj:?):HRESULT; stdcall;//0048EE78
    procedure GetDesigner(Obj:TPersistent; var Result:IDesignerNotify);//0048EEA0
    //procedure sub_0048EF40(?:TComponent; ?:?);//0048EF40
    procedure NotifyDesigner(Self:TPersistent; Item:TPersistent; Operation:TOperation);//0048EF8C
    constructor Create;//0048EFF0
    destructor Destroy();//0048F028
    procedure Release;//0048F05C
    procedure Changed(AllItems:Boolean);//0048F064
    function GetIndex:Integer;//0048F084
    function GetDisplayName:UnicodeString;//0048F0B0
    procedure GetNamePath;//0048F0C4
    procedure sub_0048EDE4;//0048F170
    procedure SetCollection(Value:TCollection);//0048F174
    procedure SetDisplayName(const Value:UnicodeString);//0048F19C
    //procedure sub_0048F1A4(?:?);//0048F1A4
    procedure GetCurrent;//0048F1D8
    constructor Create;//0048F1E4
    destructor Destroy();//0048F230
    function Add:TCollectionItem;//0048F27C
    procedure Assign(Source:TPersistent);//0048F29C
    procedure BeginUpdate;//0048F364
    procedure Changed;//0048F368
    procedure Clear;//0048F378
    procedure EndUpdate;//0048F3E4
    function FindItemID(ID:Integer):TCollectionItem;//0048F3F0
    procedure sub_0048F430;//0048F430
    procedure GetAttr(Index:Integer);//0048F434
    procedure GetItemAttr(Index:Integer; ItemIndex:Integer);//0048F458
    function GetCount:Integer;//0048F478
    function GetItem(Index:Integer):TCollectionItem;//0048F480
    procedure GetNamePath;//0048F49C
    function GetPropName:UnicodeString;//0048F550
    procedure InsertItem(Item:TCollectionItem);//0048F69C
    procedure RemoveItem(Item:TCollectionItem);//0048F70C
    procedure sub_0048F7D4;//0048F7D4
    procedure sub_0048F7D8;//0048F7D8
    function Owner:TPersistent;//0048F7DC
    procedure sub_0048F7E8;//0048F7E8
    procedure sub_0048F7EC;//0048F7EC
    procedure Notify(Item:TCollectionItem; Action:TCollectionNotification);//0048F7F0
    constructor Create(ItemClass:TCollectionItemClass);//0048F814
    procedure sub_0048EDE4;//0048F858
    constructor Create;//0048F85C
    function GetCurrent:string;//0048F8A0
    function MoveNext:Boolean;//0048F8B8
    constructor Create();//0048F8D4
    destructor Destroy();//0048F91C
    function Add(S:string):Integer;//0048F9A0
    function AddObject(S:string; AObject:TObject):Integer;//0048F9C4
    procedure AddStrings(Strings:TStrings);//0048F9E8
    procedure Assign(Source:TPersistent);//0048FAA0
    procedure BeginUpdate;//0048FB7C
    function DoWrite:Boolean;//0048FB94
    procedure DefineProperties(Filer:TFiler);//0048FBE4
    procedure EndUpdate;//0048FC3C
    function Equals(Strings:TStrings):Boolean;//0048FC50
    procedure Error(const Msg:UnicodeString; Data:Integer);//0048FCF8
    procedure Error(Msg:PResStringRec; Data:Integer);//0048FD40
    procedure Exchange(Index1:Integer; Index2:Integer);//0048FDC4
    procedure sub_0048FEB0;//0048FEB0
    function GetCommaText:UnicodeString;//0048FEB8
    function GetDelimitedText:UnicodeString;//0048FF50
    function GetEnumerator:TStringsEnumerator;//004901EC
    function GetObject(Index:Integer):TObject;//004901FC
    function GetText:PWideChar;//00490200
    function GetTextStr:UnicodeString;//00490254
    //procedure GetValue(Name:string; ?:?);//00490390
    function IndexOf(S:string):Integer;//0049041C
    function IndexOfName(Name:string):Integer;//004904A8
    function IndexOfObject(AObject:TObject):Integer;//0049057C
    procedure InsertObject(Index:Integer; S:string; AObject:TObject);//004905B0
    procedure LoadFromFile(FileName:string);//004905E0
    procedure LoadFromFile(FileName:string; Encoding:TEncoding);//00490634
    procedure LoadFromStream(Stream:TStream);//00490690
    procedure LoadFromStream(Stream:TStream; Encoding:TEncoding);//004906A8
    procedure Move(CurIndex:Integer; NewIndex:Integer);//004907B0
    procedure Put(Index:Integer; S:string);//00490870
    procedure PutObject(Index:Integer; AObject:TObject);//004908A4
    procedure ReadData(Reader:TReader);//004908A8
    procedure SaveToFile(FileName:string);//00490958
    procedure SaveToFile(FileName:string; Encoding:TEncoding);//00490974
    procedure SaveToStream(Stream:TStream);//004909D8
    procedure SaveToStream(Stream:TStream; Encoding:TEncoding);//004909F4
    procedure sub_00490AC0;//00490AC0
    procedure SetCommaText(const Value:UnicodeString);//00490AC4
    procedure SetStringsAdapter(const Value:IStringsAdapter);//00490B5C
    procedure SetText(Text:PWideChar);//00490B90
    procedure SetTextStr(const Value:UnicodeString);//00490BE0
    procedure sub_00490D78;//00490D78
    procedure SetValue(Name:string; Value:string);//00490D7C
    procedure WriteData(Writer:TWriter);//00490E28
    procedure SetDelimitedText(const Value:UnicodeString);//00490EAC
    function GetDelimiter:Char;//00491064
    function GetLineBreak:UnicodeString;//00491080
    function GetQuoteChar:Char;//004910BC
    function GetStrictDelimiter:Boolean;//004910D8
    procedure SetDefaultEncoding(const Value:SysUtils.TEncoding);//004910F0
    procedure SetDelimiter(const Value:Char);//00491138
    procedure SetEncoding(const Value:SysUtils.TEncoding);//00491158
    procedure SetLineBreak(const Value:UnicodeString);//004911A0
    procedure SetQuoteChar(const Value:Char);//004911CC
    procedure SetStrictDelimiter(const Value:Boolean);//004911EC
    function CompareStrings(const S1:UnicodeString; const S2:UnicodeString):Integer;//00491208
    function GetNameValueSeparator:Char;//00491214
    procedure SetNameValueSeparator(const Value:Char);//00491230
    destructor Destroy();//00491250
    function Add(S:string):Integer;//0049134C
    function AddObject(S:string; AObject:TObject):Integer;//00491358
    procedure Assign(Source:TPersistent);//004913BC
    procedure Changed;//004913F8
    procedure Changing;//00491414
    procedure Clear;//00491430
    procedure Delete(Index:Integer);//00491510
    procedure Exchange(Index1:Integer; Index2:Integer);//004915B8
    procedure ExchangeItems(Index1:Integer; Index2:Integer);//00491614
    function Find(S:string; var Index:Integer):Boolean;//00491638
    function Get(Index:Integer):UnicodeString;//004916BC
    //function sub_004916EC:?;//004916EC
    //function GetCount:?;//004916F0
    function GetObject(Index:Integer):TObject;//004916F4
    procedure Grow;//00491718
    function IndexOf(S:string):Integer;//0049174C
    procedure Insert(Index:Integer; S:string);//00491788
    procedure InsertObject(Index:Integer; S:string; AObject:TObject);//00491798
    procedure InsertItem(Index:Integer; const S:UnicodeString; AObject:TObject);//004917EC
    procedure Put(Index:Integer; const S:UnicodeString);//00491874
    procedure PutObject(Index:Integer; AObject:TObject);//004918CC
    procedure QuickSort(L:Integer; R:Integer; SCompare:TStringListSortCompare);//00491908
    procedure SetCapacity(NewCapacity:Integer);//004919A0
    procedure SetSorted(Value:Boolean);//004919DC
    //procedure sub_004919FC(?:?);//004919FC
    function StringListCompareStrings(List:TStringList; Index1:Integer; Index2:Integer):Integer;//00491A14
    procedure Sort;//00491A28
    procedure CustomSort(Compare:TStringListSortCompare);//00491A38
    function CompareStrings(const S1:UnicodeString; const S2:UnicodeString):Integer;//00491A70
    constructor Create();//00491A8C
    procedure SetCaseSensitive(const Value:Boolean);//00491AC4
    function GetPosition:Int64;//00491AEC
    procedure SetPosition(const Pos:Int64);//00491B14
    procedure sub_00491B30;//00491B30
    procedure sub_00491B7C;//00491B7C
    procedure SetSize64(const NewSize:Int64);//00491B80
    procedure SetSize(const NewSize:Int64);//00491B94
    procedure RaiseException;//00491BE8
    function Seek(Offset:Integer; Origin:Word):Integer;//00491C5C
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64;//00491CE0
    //function Read(var Buffer:?; Count:Integer):Integer;//00491D50
    //function Write(Buffer:?; Count:Integer):Integer;//00491D54
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00491D58
    procedure Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00491DBC
    procedure ReadBuffer(var Buffer:TArray<System.Byte>; Count:Integer);//00491DD0
    procedure ReadBuffer(var Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00491DDC
    //procedure ReadBuffer(var Buffer:?; Count:Integer);//00491E6C
    //procedure WriteBuffer(Buffer:?; Count:Integer);//00491EE8
    procedure WriteBuffer(Buffer:TArray<System.Byte>; Count:Integer);//00491F64
    procedure WriteBuffer(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00491F70
    function CopyFrom(Source:TStream; Count:Int64):Int64;//00491FFC
    function ReadComponent(Instance:TComponent):TComponent;//00492130
    procedure WriteComponent(Instance:TComponent);//00492190
    procedure WriteDescendent(Instance:TComponent; Ancestor:TComponent);//00492198
    constructor Integer,System.Classes.IInterfaceList>.TKeyCollection.Create;//004921F4
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492230
    //function Read(var Buffer:?; Count:Integer):Integer;//0049229C
    //function Write(Buffer:?; Count:Integer):Integer;//004922AC
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//004922BC
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64;//004922D8
    procedure SetSize(NewSize:LongInt);//00492304
    procedure SetSize(const NewSize:Int64);//00492318
    constructor Create(Mode:Word);//00492340
    constructor sub_00492384(AFileName:string; Rights:Cardinal; Mode:Word);//00492384
    destructor Destroy();//00492500
    procedure SetPointer(Ptr:Pointer; const Size:NativeInt);//00492534
    //function Read(var Buffer:?; Count:Integer):Integer;//0049253C
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492574
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64;//00492604
    procedure SaveToStream(Stream:TStream);//00492648
    destructor Destroy();//00492660
    procedure Clear;//0049268C
    procedure LoadFromStream(Stream:TStream);//004926A4
    procedure SetCapacity(NewCapacity:LongInt);//004926DC
    procedure SetSize(NewSize:Integer);//00492704
    //procedure SetSize(NewSize:Int64; ?:?);//00492718
    function Realloc(var NewCapacity:LongInt):Pointer;//00492758
    //function Write(Buffer:?; Count:Integer):Integer;//004927D8
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492828
    constructor sub_0049288C(ABytes:TArray<System.Byte>);//0049288C
    function Realloc(var NewCapacity:LongInt):Pointer;//0049290C
    constructor Create;//00492978
    destructor Destroy();//00492A54
    function GetDataString:UnicodeString;//00492A88
    constructor Create(ResType:PWideChar; ResName:string);//00492AA8
    procedure Error;//00492B00
    procedure Initialize(Instance:Windows.THandle; Name:PChar; ResType:PChar; FromID:Boolean);//00492BA0
    destructor Destroy();//00492C0C
    //function Write(Buffer:?; Count:Integer):Integer;//00492C3C
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492C54
    constructor Create(BufSize:Integer);//00492C74
    destructor Destroy();//00492CD8
    procedure SetRoot(Value:TComponent);//00492D00
    //function sub_0049485C(?:TComponent; ?:?):?;//0049485C
    //procedure sub_0049498C(?:?; ?:?);//0049498C
    //procedure sub_004949F0(?:?; ?:?);//004949F0
    procedure sub_00494A64;//00494A64
    procedure IInterface>.UnlockList;//00494C0D
    procedure RemoveFixupReferences(const Root:TComponent; const RootName:UnicodeString);//00494C44
    procedure Clear;//00494D24
    procedure ReadError(Ident:PResStringRec);//00494DB4
    procedure PropValueError;//00494DCC
    procedure PropertyNotFound(const Name:UnicodeString);//00494DD8
    function SetElementValue(EnumType:TypInfo.PTypeInfo; const EnumName:UnicodeString):Integer;//00494E04
    destructor Destroy();//00494E1C
    procedure CheckValue(Value:TValueType);//00494E54
    //procedure DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc; ?:?; ?:?);//00494E78
    //procedure DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc; ?:?; ?:?);//00494EE0
    function EndOfList:Boolean;//00494FE8
    function Error(const Message:UnicodeString):Boolean;//00494FFC
    function FindMethodInstance(Root:TComponent; const MethodName:UnicodeString):TMethod;//00495020
    function FindMethod(Root:TComponent; const MethodName:UnicodeString):Pointer;//00495090
    //procedure sub_004950E0(?:?);//004950E0
    procedure DoFixupReferences;//00495170
    procedure FlushBuffer;//004952D4
    procedure FreeFixups;//004952F8
    function GetFieldClass(const Instance:TObject; const ClassName:UnicodeString):TPersistentClass;//00495340
    function GetPosition:LongInt;//004953D4
    function NextValue:TValueType;//004953EC
    procedure PropertyError(const Name:UnicodeString);//004953FC
    //procedure Read(var Buffer:?; Count:Integer);//00495410
    procedure Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00495464
    procedure Read(Buffer:TArray<System.Byte>; Count:Integer);//00495500
    procedure ReadBuffer(Keeping:Integer; MoveBuffer:Boolean);//00495558
    function ReadBoolean:Boolean;//0049562C
    function ReadChar:Char;//00495658
    procedure ReadCollection(Collection:TCollection);//004956B8
    //procedure sub_0049579C(?:?);//0049579C
    //procedure sub_004957F0(?:?; ?:?);//004957F0
    //procedure sub_00495884(?:?; ?:?; ?:?);//00495884
    function ComponentCreated:Boolean;//00495908
    function Recover(var Component:TComponent):Boolean;//00495928
    //procedure sub_00495988(?:?);//00495988
    //procedure sub_00495A98(?:?);//00495A98
    //procedure sub_00495B38(?:?);//00495B38
    function ReadComponent(Component:TComponent):TComponent;//00495BD8
    procedure ReadData(const Instance:TComponent);//00495E3C
    procedure ReadDataInner(const Instance:TComponent);//00495EAC
    function ReadFloat:Extended;//00495F7C
    function ReadDouble:Double;//00495FB4
    function ReadSingle:Single;//00495FF8
    function ReadCurrency:Currency;//0049603C
    function ReadDate:TDateTime;//0049609C
    function ReadIdent:string;//004960F0
    function ReadInteger:Integer;//00496288
    function ReadInt64:Int64;//004962F4
    procedure ReadListBegin;//00496338
    procedure ReadListEnd;//00496340
    procedure ReadPrefix(var Flags:TFilerFlags; var AChildPos:Integer);//00496348
    procedure HandleException(E:SysUtils.Exception);//00496388
    procedure PropPathError;//00496458
    procedure ReadProperty(AInstance:TPersistent);//00496474
    procedure SetIntIdent(const Instance:TPersistent; PropInfo:Pointer; const Ident:UnicodeString);//004966E8
    //procedure sub_00496730(?:?; ?:?; ?:?; ?:?);//00496730
    procedure SetVariantReference;//00496780
    //procedure sub_004967DC(?:?);//004967DC
    //procedure sub_004968A4(?:?; ?:?; ?:?);//004968A4
    function FindUniqueName(const Name:UnicodeString):UnicodeString;//00496BC8
    function ReadRootComponent(Root:TComponent):TComponent;//00496C30
    function ReadSet(SetType:Pointer):Integer;//00496F8C
    procedure ReadSignature;//00497048
    function ReadStr:string;//0049706C
    function ReadString:string;//00497124
    function ReadValue:TValueType;//0049734C
    procedure SetPosition(Value:LongInt);//00497360
    procedure SkipSetBody;//00497380
    procedure SkipList;//004973C8
    procedure SkipBinary(BytesPerUnit:Integer);//004973F4
    procedure SkipCollection;//00497424
    procedure SkipValue;//00497488
    procedure SkipProperty;//00497638
    procedure SkipComponent(SkipHeader:Boolean);//00497680
    function FindAncestorComponent(const Name:UnicodeString; ComponentClass:TPersistentClass):TComponent;//0049772C
    procedure ReferenceName(var Name:UnicodeString);//004977E4
    //procedure sub_004977FC(?:?; ?:?);//004977FC
    function FindComponentClass(const ClassName:UnicodeString):TComponentClass;//00497824
    procedure SkipBytes(Count:Integer);//00497898
    function ReadCustomVariant:Variant;//0049792C
    function ReadVariant:Variant;//00497AF4
    destructor Destroy();//00497D10
    procedure DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc);//00497D50
    procedure DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc);//00497D78
    function GetPosition:LongInt;//00497DA4
    function FindMethodName(AMethod:TMethod):UnicodeString;//00497DB4
    procedure FlushBuffer;//00497DFC
    procedure SetPosition(Value:LongInt);//00497E04
    procedure SetRoot(Value:TComponent);//00497E40
    //procedure Write(Buffer:?; Count:Integer);//00497E58
    procedure WriteBinary(WriteData:TStreamProc);//00497EA8
    procedure WriteBuffer;//00497F30
    procedure Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00497F48
    procedure Write(Buffer:TArray<System.Byte>; Count:Integer);//004980E4
    procedure WriteBoolean(Value:Boolean);//0049813C
    procedure WriteChar(Value:Char);//00498150
    procedure WriteCollection(Value:TCollection);//004981A0
    //function sub_00498240(?:?; ?:?):?;//00498240
    procedure WriteComponent(Component:TComponent);//004982C4
    //procedure sub_00498418(?:?);//00498418
    procedure WriteDescendent(Root:TComponent; AAncestor:TComponent);//004987DC
    procedure WriteFloat(Value:Extended);//0049889C
    procedure WriteSingle(Value:Single);//004988C0
    procedure WriteCurrency(Value:Currency);//004988E4
    procedure WriteDate(Value:TDateTime);//0049891C
    procedure WriteIdent(Ident:string);//00498950
    procedure WriteInteger(Value:Integer);//00498AC0
    procedure WriteInteger(Value:Int64);//00498B34
    procedure WriteListBegin;//00498B8C
    procedure WriteListEnd;//00498B94
    procedure WritePrefix(Flags:TFilerFlags; AChildPos:Integer);//00498B9C
    procedure WriteProperties(Instance:TPersistent);//00498BE4
    function AncestorIsValid(const Ancestor:TPersistent; const Root:TComponent; const RootAncestor:TComponent):Boolean;//00498CAC
    //function sub_00498CC4(?:?; ?:?):?;//00498CC4
    //function sub_00498DF8(?:?; ?:?):?;//00498DF8
    function GetDefaultAttribute(var Default:Variant):Boolean;//00498EAC
    function IsDefaultOrdProp:Boolean;//0049905C
    //function sub_00499140(?:?):?;//00499140
    function IsDefaultInt64Prop:Boolean;//0049922C
    function IsDefaultStrProp:Boolean;//00499320
    function ObjectAncestorMatch(const AncestorValue:TComponent; const Value:TComponent):Boolean;//0049941C
    function IsDefault:Boolean;//0049947C
    //function sub_004994D4(?:?):?;//004994D4
    function IsDefaultValue:Boolean;//00499554
    function IsDefaultInterfaceProp:Boolean;//00499620
    function FindMethodName(AMethod:TMethod):UnicodeString;//004996FC
    function IsDefaultMethodProp:Boolean;//00499754
    function IsDefaultVariantProp:Boolean;//004997F4
    //function sub_004998D8(?:?; ?:?; ?:?; ?:?; ?:?):?;//004998D8
    //procedure sub_00499A3C(?:?);//00499A3C
    //procedure sub_00499AA4(?:NativeInt; ?:?);//00499AA4
    //procedure sub_00499B38(?:?; ?:NativeInt; ?:?);//00499B38
    //procedure sub_00499BA4(?:NativeInt; ?:?);//00499BA4
    //procedure sub_00499C48(?:?);//00499C48
    //procedure sub_00499D40(?:?);//00499D40
    //procedure sub_00499D80(?:?);//00499D80
    //procedure sub_00499DBC(?:?);//00499DBC
    function OwnedBy(Component:TComponent; Owner:TComponent):Boolean;//00499E1C
    //procedure sub_00499E34(?:NativeInt; ?:?; ?:?);//00499E34
    //procedure sub_00499F74(?:?);//00499F74
    //procedure sub_0049A1A0(?:?);//0049A1A0
    //procedure sub_0049A27C(?:?);//0049A27C
    //procedure sub_0049A30C(?:?);//0049A30C
    //procedure sub_0049A370(?:?; ?:?; ?:?);//0049A370
    procedure WriteVariant(Value:Variant);//0049A4C4
    procedure WritePropName(const PropName:UnicodeString);//0049A8BC
    procedure WriteSignature;//0049A910
    procedure WriteString(Value:string);//0049A920
    procedure WriteUTF8Str(Value:string);//0049AAA8
    procedure WriteValue(Value:TValueType);//0049AB3C
    procedure GetLookupInfo(var Ancestor:TPersistent; var Root:TComponent; var LookupRoot:TComponent; var RootAncestor:TComponent);//0049AB50
    procedure BinToHex(const Buffer::29; BufOffset:Integer; var Text::29; TextOffset:Integer; Count:Integer);//0049AB74
    function HexToBin(const Text::29; TextOffset:Integer; var Buffer::29; BufOffset:Integer; Count:Integer):Integer;//0049ABE0
    procedure Execute;//0049C190
    procedure sub_0049D828;//0049D828
    procedure DoneThreadSynchronization;//0049D85C
    procedure sub_0049D874;//0049D874
    procedure ResetSyncEvent;//0049D8F8
    procedure WaitForSyncEvent(Timeout:Integer);//0049D904
    procedure SignalSyncEvent;//0049D920
    function CheckSynchronize(Timeout:Integer):Boolean;//0049D92C
    constructor Create;//0049DC28
    destructor Destroy();//0049DD28

implementation

//004830B8
procedure sub_004830B8(?:Integer; ?:TShiftState; ?:array[$0..-$1] of System.TVarRec);
begin
{*
 004830B8    mov         dword ptr [ecx],eax
 004830BA    mov         dword ptr [ecx+4],edx
 004830BD    ret
*}
end;

//004830C0
function Rect(ALeft:Integer; ATop:Integer; ARight:Integer; ABottom:Integer):TRect;
begin
{*
 004830C0    push        ebp
 004830C1    mov         ebp,esp
 004830C3    push        ebx
 004830C4    mov         ebx,dword ptr [ebp+8]
 004830C7    mov         dword ptr [ebx],eax
 004830C9    mov         dword ptr [ebx+4],edx
 004830CC    mov         dword ptr [ebx+8],ecx
 004830CF    mov         eax,dword ptr [ebp+0C]
 004830D2    mov         dword ptr [ebx+0C],eax
 004830D5    pop         ebx
 004830D6    pop         ebp
 004830D7    ret         8
*}
end;

//004830DC
function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;
begin
{*
 004830DC    push        ebp
 004830DD    mov         ebp,esp
 004830DF    push        ebx
 004830E0    push        esi
 004830E1    push        edi
 004830E2    mov         edi,ecx
 004830E4    mov         esi,edx
 004830E6    mov         ebx,eax
 004830E8    mov         eax,dword ptr [ebp+0C]
 004830EB    push        eax
 004830EC    mov         eax,dword ptr [ebp+8]
 004830EF    push        eax
 004830F0    mov         ecx,edi
 004830F2    mov         edx,esi
 004830F4    mov         eax,ebx
 004830F6    call        Bounds
 004830FB    pop         edi
 004830FC    pop         esi
 004830FD    pop         ebx
 004830FE    pop         ebp
 004830FF    ret         8
*}
end;

//00483104
function InvalidPoint(const At:Types.TPoint):Boolean;
begin
{*
 00483104    cmp         dword ptr [eax],0FFFFFFFF
>00483107    jne         0048310F
 00483109    cmp         dword ptr [eax+4],0FFFFFFFF
>0048310D    je          00483112
 0048310F    xor         eax,eax
 00483111    ret
 00483112    mov         al,1
 00483114    ret
*}
end;

//00483118
function InvalidPoint(const At:Types.TSmallPoint):Boolean;
begin
{*
 00483118    push        ecx
 00483119    mov         dword ptr [esp],eax
 0048311C    cmp         word ptr [esp],0FFFFFFFF
>00483121    jne         0048312B
 00483123    cmp         word ptr [esp+2],0FFFFFFFF
>00483129    je          0048312F
 0048312B    xor         eax,eax
 0048312D    pop         edx
 0048312E    ret
 0048312F    mov         al,1
 00483131    pop         edx
 00483132    ret
*}
end;

//00483134
{*function sub_00483134(?:?):?;
begin
 00483134    push        ebx
 00483135    mov         ebx,eax
 00483137    test        ebx,ebx
>00483139    je          00483174
 0048313B    cmp         word ptr [ebx],0
>0048313F    je          00483174
 00483141    add         ebx,2
 00483144    mov         eax,ebx
 00483146    movzx       edx,word ptr [eax]
 00483149    cmp         dx,0DC00
>0048314E    jb          00483157
 00483150    cmp         dx,0DFFF
>00483155    jbe         0048315B
 00483157    xor         eax,eax
>00483159    jmp         0048315D
 0048315B    mov         al,1
 0048315D    test        al,al
>0048315F    je          00483169
 00483161    add         ebx,2
>00483164    jmp         00483169
 00483166    add         ebx,2
 00483169    mov         eax,ebx
 0048316B    call        00417114
 00483170    cmp         al,0C
>00483172    je          00483166
 00483174    mov         eax,ebx
 00483176    pop         ebx
 00483177    ret
end;*}

//00487C6C
procedure TRegGroup.AddClass(AClass:TPersistentClass);
begin
{*
 00487C6C    push        ecx
 00487C6D    mov         eax,dword ptr [eax+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 00487C70    mov         dword ptr [esp],edx
 00487C73    mov         edx,esp
 00487C75    add         eax,8;TList<System.Classes.TPersistentClass>.FCount:Integer
 00487C78    call        0043489C
 00487C7D    pop         edx
 00487C7E    ret
*}
end;

//00487C80
function TRegGroup.BestClass(AClass:TPersistentClass):TPersistentClass;
begin
{*
 00487C80    push        ebx
 00487C81    push        esi
 00487C82    push        edi
 00487C83    push        ebp
 00487C84    add         esp,0FFFFFFF8
 00487C87    mov         dword ptr [esp+4],edx
 00487C8B    mov         dword ptr [esp],eax
 00487C8E    xor         ebp,ebp
 00487C90    mov         eax,dword ptr [esp]
 00487C93    mov         eax,dword ptr [eax+0C]
 00487C96    mov         edi,dword ptr [eax+8]
 00487C99    dec         edi
 00487C9A    test        edi,edi
>00487C9C    jl          00487CDD
 00487C9E    inc         edi
 00487C9F    xor         ebx,ebx
 00487CA1    mov         eax,dword ptr [esp]
 00487CA4    mov         esi,dword ptr [eax+0C]
 00487CA7    lea         eax,[esi+8]
 00487CAA    mov         edx,ebx
 00487CAC    call        00434534
 00487CB1    mov         eax,dword ptr [esi+20]
 00487CB4    mov         esi,dword ptr [eax+ebx*4]
 00487CB7    mov         edx,esi
 00487CB9    mov         eax,dword ptr [esp+4]
 00487CBD    call        TObject.InheritsFrom
 00487CC2    test        al,al
>00487CC4    je          00487CD9
 00487CC6    test        ebp,ebp
>00487CC8    je          00487CD7
 00487CCA    mov         edx,ebp
 00487CCC    mov         eax,esi
 00487CCE    call        TObject.InheritsFrom
 00487CD3    test        al,al
>00487CD5    je          00487CD9
 00487CD7    mov         ebp,esi
 00487CD9    inc         ebx
 00487CDA    dec         edi
>00487CDB    jne         00487CA1
 00487CDD    mov         eax,ebp
 00487CDF    pop         ecx
 00487CE0    pop         edx
 00487CE1    pop         ebp
 00487CE2    pop         edi
 00487CE3    pop         esi
 00487CE4    pop         ebx
 00487CE5    ret
*}
end;

//00487CE8
function TRegGroup.BestGroup(Group1:TRegGroup; Group2:TRegGroup; AClass:TPersistentClass):TRegGroup;
begin
{*
 00487CE8    push        ebp
 00487CE9    mov         ebp,esp
 00487CEB    push        ecx
 00487CEC    push        ebx
 00487CED    push        esi
 00487CEE    push        edi
 00487CEF    mov         dword ptr [ebp-4],ecx
 00487CF2    mov         edi,edx
 00487CF4    mov         ebx,dword ptr [ebp+8]
 00487CF7    test        edi,edi
>00487CF9    je          00487D08
 00487CFB    mov         edx,ebx
 00487CFD    mov         eax,edi
 00487CFF    call        TRegGroup.BestClass
 00487D04    mov         esi,eax
>00487D06    jmp         00487D0A
 00487D08    xor         esi,esi
 00487D0A    cmp         dword ptr [ebp-4],0
>00487D0E    je          00487D1E
 00487D10    mov         edx,ebx
 00487D12    mov         eax,dword ptr [ebp-4]
 00487D15    call        TRegGroup.BestClass
 00487D1A    mov         ebx,eax
>00487D1C    jmp         00487D20
 00487D1E    xor         ebx,ebx
 00487D20    test        esi,esi
>00487D22    jne         00487D31
 00487D24    test        ebx,ebx
>00487D26    jne         00487D2C
 00487D28    xor         eax,eax
>00487D2A    jmp         00487D4D
 00487D2C    mov         eax,dword ptr [ebp-4]
>00487D2F    jmp         00487D4D
 00487D31    test        ebx,ebx
>00487D33    jne         00487D39
 00487D35    mov         eax,edi
>00487D37    jmp         00487D4D
 00487D39    mov         edx,ebx
 00487D3B    mov         eax,esi
 00487D3D    call        TObject.InheritsFrom
 00487D42    test        al,al
>00487D44    je          00487D4A
 00487D46    mov         eax,edi
>00487D48    jmp         00487D4D
 00487D4A    mov         eax,dword ptr [ebp-4]
 00487D4D    pop         edi
 00487D4E    pop         esi
 00487D4F    pop         ebx
 00487D50    pop         ecx
 00487D51    pop         ebp
 00487D52    ret         4
*}
end;

//00487D58
constructor TRegGroup.Create(AClass:TPersistentClass);
begin
{*
 00487D58    push        ebp
 00487D59    mov         ebp,esp
 00487D5B    add         esp,0FFFFFFF8
 00487D5E    push        ebx
 00487D5F    push        esi
 00487D60    push        edi
 00487D61    test        dl,dl
>00487D63    je          00487D6D
 00487D65    add         esp,0FFFFFFF0
 00487D68    call        @ClassCreate
 00487D6D    mov         edi,ecx
 00487D6F    mov         byte ptr [ebp-1],dl
 00487D72    mov         ebx,eax
 00487D74    xor         edx,edx
 00487D76    mov         eax,ebx
 00487D78    call        TObject.Create
 00487D7D    mov         dl,1
 00487D7F    mov         eax,[004859B4];TList<System.Classes.TPersistentClass>
 00487D84    call        004A59BC
 00487D89    mov         esi,eax
 00487D8B    mov         dword ptr [ebx+0C],esi;TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 00487D8E    mov         eax,esi
 00487D90    mov         dword ptr [ebp-8],edi
 00487D93    lea         edx,[ebp-8]
 00487D96    add         eax,8;TList<System.Classes.TPersistentClass>.FCount:Integer
 00487D99    call        0043489C
 00487D9E    mov         eax,ebx
 00487DA0    cmp         byte ptr [ebp-1],0
>00487DA4    je          00487DB5
 00487DA6    call        @AfterConstruction
 00487DAB    pop         dword ptr fs:[0]
 00487DB2    add         esp,0C
 00487DB5    mov         eax,ebx
 00487DB7    pop         edi
 00487DB8    pop         esi
 00487DB9    pop         ebx
 00487DBA    pop         ecx
 00487DBB    pop         ecx
 00487DBC    pop         ebp
 00487DBD    ret
*}
end;

//00487DC0
destructor TRegGroup.Destroy();
begin
{*
 00487DC0    push        ebx
 00487DC1    push        esi
 00487DC2    call        @BeforeDestruction
 00487DC7    mov         ebx,edx
 00487DC9    mov         esi,eax
 00487DCB    mov         dl,0FC
 00487DCD    and         dl,bl
 00487DCF    mov         eax,esi
 00487DD1    call        TObject.Destroy
 00487DD6    mov         eax,dword ptr [esi+4]
 00487DD9    call        TObject.Free
 00487DDE    mov         eax,dword ptr [esi+8]
 00487DE1    call        TObject.Free
 00487DE6    mov         eax,dword ptr [esi+0C]
 00487DE9    call        TObject.Free
 00487DEE    test        bl,bl
>00487DF0    jle         00487DF9
 00487DF2    mov         eax,esi
 00487DF4    call        @ClassDestroy
 00487DF9    pop         esi
 00487DFA    pop         ebx
 00487DFB    ret
*}
end;

//00487DFC
function TRegGroup.GetClass(AClassName:string):TPersistentClass;
begin
{*
 00487DFC    push        ebx
 00487DFD    push        esi
 00487DFE    push        ecx
 00487DFF    mov         esi,edx
 00487E01    mov         ebx,eax
 00487E03    xor         eax,eax
 00487E05    mov         dword ptr [esp],eax
 00487E08    mov         eax,dword ptr [ebx+4]
 00487E0B    test        eax,eax
>00487E0D    je          00487E18
 00487E0F    mov         ecx,esp
 00487E11    mov         edx,esi
 00487E13    call        TDictionary<System.string,System.Classes.TPersistentClass>.TryGetValue
 00487E18    cmp         dword ptr [esp],0
>00487E1C    jne         00487E30
 00487E1E    cmp         dword ptr [ebx+8],0
>00487E22    je          00487E30
 00487E24    mov         ecx,esp
 00487E26    mov         edx,esi
 00487E28    mov         eax,dword ptr [ebx+8]
 00487E2B    call        TDictionary<System.string,System.Classes.TPersistentClass>.TryGetValue
 00487E30    mov         eax,dword ptr [esp]
 00487E33    pop         edx
 00487E34    pop         esi
 00487E35    pop         ebx
 00487E36    ret
*}
end;

//00487E38
function TRegGroup.InGroup(AClass:TPersistentClass):Boolean;
begin
{*
 00487E38    push        ebx
 00487E39    push        esi
 00487E3A    push        edi
 00487E3B    push        ebp
 00487E3C    add         esp,0FFFFFFF8
 00487E3F    mov         dword ptr [esp],edx
 00487E42    mov         ebp,eax
 00487E44    mov         byte ptr [esp+4],1
 00487E49    mov         eax,dword ptr [ebp+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 00487E4C    mov         edi,dword ptr [eax+8];TList<System.Classes.TPersistentClass>.FCount:Integer
 00487E4F    dec         edi
 00487E50    test        edi,edi
>00487E52    jl          00487E7A
 00487E54    inc         edi
 00487E55    xor         ebx,ebx
 00487E57    mov         esi,dword ptr [ebp+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 00487E5A    lea         eax,[esi+8];TList<System.Classes.TPersistentClass>.FCount:Integer
 00487E5D    mov         edx,ebx
 00487E5F    call        00434534
 00487E64    mov         eax,dword ptr [esi+20]
 00487E67    mov         edx,dword ptr [eax+ebx*4]
 00487E6A    mov         eax,dword ptr [esp]
 00487E6D    call        TObject.InheritsFrom
 00487E72    test        al,al
>00487E74    jne         00487E7F
 00487E76    inc         ebx
 00487E77    dec         edi
>00487E78    jne         00487E57
 00487E7A    mov         byte ptr [esp+4],0
 00487E7F    movzx       eax,byte ptr [esp+4]
 00487E84    pop         ecx
 00487E85    pop         edx
 00487E86    pop         ebp
 00487E87    pop         edi
 00487E88    pop         esi
 00487E89    pop         ebx
 00487E8A    ret
*}
end;

//00487E8C
procedure TRegGroup.RegisterClass(AClass:TPersistentClass);
begin
{*
 00487E8C    push        ebp
 00487E8D    mov         ebp,esp
 00487E8F    add         esp,0FFFFFFF4
 00487E92    push        ebx
 00487E93    push        esi
 00487E94    xor         ecx,ecx
 00487E96    mov         dword ptr [ebp-4],ecx
 00487E99    mov         esi,edx
 00487E9B    mov         ebx,eax
 00487E9D    xor         eax,eax
 00487E9F    push        ebp
 00487EA0    push        487F35
 00487EA5    push        dword ptr fs:[eax]
 00487EA8    mov         dword ptr fs:[eax],esp
 00487EAB    lea         edx,[ebp-4]
 00487EAE    mov         eax,esi
 00487EB0    call        TObject.ClassName
 00487EB5    mov         edx,dword ptr [ebp-4]
 00487EB8    mov         eax,ebx
 00487EBA    call        TRegGroup.GetClass
 00487EBF    test        eax,eax
>00487EC1    jne         00487EF4
 00487EC3    cmp         dword ptr [ebx+4],0
>00487EC7    jne         00487EE5
 00487EC9    mov         ecx,dword ptr ds:[7CA3D4];gvar_007CA3D4:TOrdinalIStringComparer
 00487ECF    test        ecx,ecx
>00487ED1    je          00487ED6
 00487ED3    sub         ecx,0FFFFFFF8
 00487ED6    mov         dl,1
 00487ED8    mov         eax,[00484EAC];TDictionary<System.string,System.Classes.TPersistentClass>
 00487EDD    call        TDictionary<System.string,System.Classes.TPersistentClass>.Create
 00487EE2    mov         dword ptr [ebx+4],eax
 00487EE5    mov         ecx,esi
 00487EE7    mov         edx,dword ptr [ebp-4]
 00487EEA    mov         eax,dword ptr [ebx+4]
 00487EED    call        TDictionary<System.string,System.Classes.TPersistentClass>.Add
>00487EF2    jmp         00487F1F
 00487EF4    cmp         esi,eax
>00487EF6    je          00487F1F
 00487EF8    mov         eax,dword ptr [ebp-4]
 00487EFB    mov         dword ptr [ebp-0C],eax
 00487EFE    mov         byte ptr [ebp-8],11
 00487F02    lea         eax,[ebp-0C]
 00487F05    push        eax
 00487F06    push        0
 00487F08    mov         ecx,dword ptr ds:[7C4A78];^SResString119:TResStringRec
 00487F0E    mov         dl,1
 00487F10    mov         eax,[0046B894];EFilerError
 00487F15    call        Exception.CreateResFmt
 00487F1A    call        @RaiseExcept
 00487F1F    xor         eax,eax
 00487F21    pop         edx
 00487F22    pop         ecx
 00487F23    pop         ecx
 00487F24    mov         dword ptr fs:[eax],edx
 00487F27    push        487F3C
 00487F2C    lea         eax,[ebp-4]
 00487F2F    call        @UStrClr
 00487F34    ret
>00487F35    jmp         @HandleFinally
>00487F3A    jmp         00487F2C
 00487F3C    pop         esi
 00487F3D    pop         ebx
 00487F3E    mov         esp,ebp
 00487F40    pop         ebp
 00487F41    ret
*}
end;

//00487F44
function TRegGroup.Registered(AClass:TPersistentClass):Boolean;
begin
{*
 00487F44    push        ebx
 00487F45    push        esi
 00487F46    push        edi
 00487F47    mov         edi,edx
 00487F49    mov         ebx,eax
 00487F4B    mov         esi,dword ptr [ebx+4]
 00487F4E    test        esi,esi
>00487F50    je          00487F5F
 00487F52    mov         edx,edi
 00487F54    mov         eax,esi
 00487F56    call        TDictionary<System.string,System.Classes.TPersistentClass>.ContainsValue
 00487F5B    test        al,al
>00487F5D    jne         00487F63
 00487F5F    xor         eax,eax
>00487F61    jmp         00487F65
 00487F63    mov         al,1
 00487F65    pop         edi
 00487F66    pop         esi
 00487F67    pop         ebx
 00487F68    ret
*}
end;

//00487F6C
procedure TRegGroup.UnregisterModuleClasses(Module:NativeUInt);
begin
{*
 00487F6C    push        ebp
 00487F6D    mov         ebp,esp
 00487F6F    add         esp,0FFFFFFB8
 00487F72    push        ebx
 00487F73    push        esi
 00487F74    push        edi
 00487F75    mov         ebx,edx
 00487F77    mov         dword ptr [ebp-0C],eax
 00487F7A    lea         eax,[ebp-8]
 00487F7D    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 00487F83    call        @AddRefRecord
 00487F88    xor         eax,eax
 00487F8A    push        ebp
 00487F8B    push        488226
 00487F90    push        dword ptr fs:[eax]
 00487F93    mov         dword ptr fs:[eax],esp
 00487F96    test        ebx,ebx
>00487F98    je          004881DE
 00487F9E    mov         dword ptr [ebp-14],ebx
 00487FA1    mov         eax,dword ptr [ebp-14]
 00487FA4    mov         dword ptr [ebp-18],eax
 00487FA7    call        kernel32.GetCurrentProcess
 00487FAC    mov         ebx,eax
>00487FAE    jmp         00487FB9
 00487FB0    mov         eax,dword ptr [ebp-18]
 00487FB3    add         eax,dword ptr [ebp-3C]
 00487FB6    mov         dword ptr [ebp-18],eax
 00487FB9    push        1C
 00487FBB    lea         eax,[ebp-48]
 00487FBE    push        eax
 00487FBF    mov         eax,dword ptr [ebp-18]
 00487FC2    push        eax
 00487FC3    push        ebx
 00487FC4    call        kernel32.VirtualQueryEx
 00487FC9    cmp         eax,1C
>00487FCC    jne         00487FD6
 00487FCE    mov         eax,dword ptr [ebp-44]
 00487FD1    cmp         eax,dword ptr [ebp-14]
>00487FD4    je          00487FB0
 00487FD6    xor         ebx,ebx
 00487FD8    mov         eax,dword ptr [ebp-0C]
 00487FDB    mov         eax,dword ptr [eax+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 00487FDE    mov         edi,dword ptr [eax+8];TList<System.Classes.TPersistentClass>.FCount:Integer
 00487FE1    dec         edi
 00487FE2    cmp         edi,0
>00487FE5    jl          00488033
 00487FE7    mov         eax,dword ptr [ebp-0C]
 00487FEA    mov         esi,dword ptr [eax+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 00487FED    lea         eax,[esi+8];TList<System.Classes.TPersistentClass>.FCount:Integer
 00487FF0    mov         edx,edi
 00487FF2    call        00434534
 00487FF7    mov         eax,dword ptr [esi+20]
 00487FFA    mov         eax,dword ptr [eax+edi*4]
 00487FFD    mov         edx,eax
 00487FFF    cmp         edx,dword ptr [ebp-14]
>00488002    jb          00488009
 00488004    cmp         edx,dword ptr [ebp-18]
>00488007    jb          0048800D
 00488009    xor         eax,eax
>0048800B    jmp         0048800F
 0048800D    mov         al,1
 0048800F    test        al,al
>00488011    je          0048802D
 00488013    mov         eax,dword ptr [ebp-0C]
 00488016    mov         eax,dword ptr [eax+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 00488019    xor         edx,edx
 0048801B    mov         dword ptr [ebp-24],edx
 0048801E    lea         edx,[ebp-24]
 00488021    add         eax,8;TList<System.Classes.TPersistentClass>.FCount:Integer
 00488024    mov         ecx,edi
 00488026    call        0043455C
 0048802B    mov         bl,1
 0048802D    dec         edi
 0048802E    cmp         edi,0FFFFFFFF
>00488031    jne         00487FE7
 00488033    test        bl,bl
>00488035    je          00488042
 00488037    mov         eax,dword ptr [ebp-0C]
 0048803A    mov         eax,dword ptr [eax+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 0048803D    call        TList<System.Classes.TPersistentClass>.Pack
 00488042    mov         eax,dword ptr [ebp-0C]
 00488045    cmp         dword ptr [eax+4],0;TRegGroup.FClassList:TDictionary<System.string,System.Classes.TPersi...
>00488049    je          0048810F
 0048804F    mov         ecx,dword ptr ds:[7CA3D4];gvar_007CA3D4:TOrdinalIStringComparer
 00488055    test        ecx,ecx
>00488057    je          0048805C
 00488059    sub         ecx,0FFFFFFF8
 0048805C    mov         dl,1
 0048805E    mov         eax,[00484EAC];TDictionary<System.string,System.Classes.TPersistentClass>
 00488063    call        TDictionary<System.string,System.Classes.TPersistentClass>.Create
 00488068    mov         dword ptr [ebp-10],eax
 0048806B    mov         eax,dword ptr [ebp-0C]
 0048806E    mov         eax,dword ptr [eax+4];TRegGroup.FClassList:TDictionary<System.string,System.Classes.TPer...
 00488071    call        TDictionary<System.string,System.Classes.TPersistentClass>.GetEnumerator
 00488076    mov         dword ptr [ebp-1C],eax
 00488079    xor         eax,eax
 0048807B    push        ebp
 0048807C    push        4880E5
 00488081    push        dword ptr fs:[eax]
 00488084    mov         dword ptr fs:[eax],esp
>00488087    jmp         004880BB
 00488089    lea         edx,[ebp-8]
 0048808C    mov         eax,dword ptr [ebp-1C]
 0048808F    call        004A5860
 00488094    mov         ebx,dword ptr [ebp-4]
 00488097    mov         esi,ebx
 00488099    cmp         esi,dword ptr [ebp-14]
>0048809C    jb          004880A3
 0048809E    cmp         esi,dword ptr [ebp-18]
>004880A1    jb          004880A7
 004880A3    xor         eax,eax
>004880A5    jmp         004880A9
 004880A7    mov         al,1
 004880A9    test        al,al
>004880AB    jne         004880BB
 004880AD    mov         ecx,dword ptr [ebp-4]
 004880B0    mov         edx,dword ptr [ebp-8]
 004880B3    mov         eax,dword ptr [ebp-10]
 004880B6    call        TDictionary<System.string,System.Classes.TPersistentClass>.Add
 004880BB    mov         eax,dword ptr [ebp-1C]
 004880BE    call        TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator.MoveNext
 004880C3    test        al,al
>004880C5    jne         00488089
 004880C7    xor         eax,eax
 004880C9    pop         edx
 004880CA    pop         ecx
 004880CB    pop         ecx
 004880CC    mov         dword ptr fs:[eax],edx
 004880CF    push        4880EC
 004880D4    cmp         dword ptr [ebp-1C],0
>004880D8    je          004880E4
 004880DA    mov         dl,1
 004880DC    mov         eax,dword ptr [ebp-1C]
 004880DF    mov         ecx,dword ptr [eax]
 004880E1    call        dword ptr [ecx-4]
 004880E4    ret
>004880E5    jmp         @HandleFinally
>004880EA    jmp         004880D4
 004880EC    mov         eax,dword ptr [ebp-0C]
 004880EF    add         eax,4;TRegGroup.FClassList:TDictionary<System.string,System.Classes.TPersistentClass>
 004880F2    mov         dword ptr [ebp-28],eax
 004880F5    mov         eax,dword ptr [ebp-28]
 004880F8    mov         eax,dword ptr [eax]
 004880FA    mov         edx,dword ptr [ebp-28]
 004880FD    xor         ecx,ecx
 004880FF    mov         dword ptr [edx],ecx
 00488101    call        TObject.Free
 00488106    mov         eax,dword ptr [ebp-0C]
 00488109    mov         edx,dword ptr [ebp-10]
 0048810C    mov         dword ptr [eax+4],edx;TRegGroup.FClassList:TDictionary<System.string,System.Classes.TPer...
 0048810F    mov         eax,dword ptr [ebp-0C]
 00488112    cmp         dword ptr [eax+8],0;TRegGroup.FAliasList:TDictionary<System.string,System.Classes.TPersi...
>00488116    je          0048820A
 0048811C    mov         ecx,dword ptr ds:[7CA3D4];gvar_007CA3D4:TOrdinalIStringComparer
 00488122    test        ecx,ecx
>00488124    je          00488129
 00488126    sub         ecx,0FFFFFFF8
 00488129    mov         dl,1
 0048812B    mov         eax,[00484EAC];TDictionary<System.string,System.Classes.TPersistentClass>
 00488130    call        TDictionary<System.string,System.Classes.TPersistentClass>.Create
 00488135    mov         dword ptr [ebp-10],eax
 00488138    mov         eax,dword ptr [ebp-0C]
 0048813B    mov         eax,dword ptr [eax+8];TRegGroup.FAliasList:TDictionary<System.string,System.Classes.TPer...
 0048813E    call        TDictionary<System.string,System.Classes.TPersistentClass>.GetEnumerator
 00488143    mov         dword ptr [ebp-20],eax
 00488146    xor         eax,eax
 00488148    push        ebp
 00488149    push        4881B2
 0048814E    push        dword ptr fs:[eax]
 00488151    mov         dword ptr fs:[eax],esp
>00488154    jmp         00488188
 00488156    lea         edx,[ebp-8]
 00488159    mov         eax,dword ptr [ebp-20]
 0048815C    call        004A5860
 00488161    mov         ebx,dword ptr [ebp-4]
 00488164    mov         esi,ebx
 00488166    cmp         esi,dword ptr [ebp-14]
>00488169    jb          00488170
 0048816B    cmp         esi,dword ptr [ebp-18]
>0048816E    jb          00488174
 00488170    xor         eax,eax
>00488172    jmp         00488176
 00488174    mov         al,1
 00488176    test        al,al
>00488178    jne         00488188
 0048817A    mov         ecx,dword ptr [ebp-4]
 0048817D    mov         edx,dword ptr [ebp-8]
 00488180    mov         eax,dword ptr [ebp-10]
 00488183    call        TDictionary<System.string,System.Classes.TPersistentClass>.Add
 00488188    mov         eax,dword ptr [ebp-20]
 0048818B    call        TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator.MoveNext
 00488190    test        al,al
>00488192    jne         00488156
 00488194    xor         eax,eax
 00488196    pop         edx
 00488197    pop         ecx
 00488198    pop         ecx
 00488199    mov         dword ptr fs:[eax],edx
 0048819C    push        4881B9
 004881A1    cmp         dword ptr [ebp-20],0
>004881A5    je          004881B1
 004881A7    mov         dl,1
 004881A9    mov         eax,dword ptr [ebp-20]
 004881AC    mov         ecx,dword ptr [eax]
 004881AE    call        dword ptr [ecx-4]
 004881B1    ret
>004881B2    jmp         @HandleFinally
>004881B7    jmp         004881A1
 004881B9    mov         eax,dword ptr [ebp-0C]
 004881BC    add         eax,8;TRegGroup.FAliasList:TDictionary<System.string,System.Classes.TPersistentClass>
 004881BF    mov         dword ptr [ebp-2C],eax
 004881C2    mov         eax,dword ptr [ebp-2C]
 004881C5    mov         eax,dword ptr [eax]
 004881C7    mov         edx,dword ptr [ebp-2C]
 004881CA    xor         ecx,ecx
 004881CC    mov         dword ptr [edx],ecx
 004881CE    call        TObject.Free
 004881D3    mov         eax,dword ptr [ebp-0C]
 004881D6    mov         edx,dword ptr [ebp-10]
 004881D9    mov         dword ptr [eax+8],edx;TRegGroup.FAliasList:TDictionary<System.string,System.Classes.TPer...
>004881DC    jmp         0048820A
 004881DE    mov         eax,dword ptr [ebp-0C]
 004881E1    mov         eax,dword ptr [eax+0C];TRegGroup.FGroupClasses:TList<System.Classes.TPersistentClass>
 004881E4    add         eax,8;TList<System.Classes.TPersistentClass>.FCount:Integer
 004881E7    call        00434988
 004881EC    mov         eax,dword ptr [ebp-0C]
 004881EF    mov         eax,dword ptr [eax+4];TRegGroup.FClassList:TDictionary<System.string,System.Classes.TPer...
 004881F2    test        eax,eax
>004881F4    je          004881FB
 004881F6    call        TDictionary<System.string,System.Classes.TPersistentClass>.Clear
 004881FB    mov         eax,dword ptr [ebp-0C]
 004881FE    mov         eax,dword ptr [eax+8];TRegGroup.FAliasList:TDictionary<System.string,System.Classes.TPer...
 00488201    test        eax,eax
>00488203    je          0048820A
 00488205    call        TDictionary<System.string,System.Classes.TPersistentClass>.Clear
 0048820A    xor         eax,eax
 0048820C    pop         edx
 0048820D    pop         ecx
 0048820E    pop         ecx
 0048820F    mov         dword ptr fs:[eax],edx
 00488212    push        48822D
 00488217    lea         eax,[ebp-8]
 0048821A    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 00488220    call        @FinalizeRecord
 00488225    ret
>00488226    jmp         @HandleFinally
>0048822B    jmp         00488217
 0048822D    pop         edi
 0048822E    pop         esi
 0048822F    pop         ebx
 00488230    mov         esp,ebp
 00488232    pop         ebp
 00488233    ret
*}
end;

//00488234
procedure TRegGroups.Activate(AClass:TPersistentClass);
begin
{*
 00488234    push        ebx
 00488235    push        esi
 00488236    push        edi
 00488237    push        ebp
 00488238    push        ecx
 00488239    mov         dword ptr [esp],edx
 0048823C    mov         ebp,eax
 0048823E    mov         eax,dword ptr [ebp+8];TRegGroups.FActiveClass:TPersistentClass
 00488241    cmp         eax,dword ptr [esp]
>00488244    je          0048827E
 00488246    mov         eax,dword ptr [esp]
 00488249    mov         dword ptr [ebp+8],eax;TRegGroups.FActiveClass:TPersistentClass
 0048824C    mov         eax,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 0048824F    mov         edi,dword ptr [eax+8]
 00488252    dec         edi
 00488253    test        edi,edi
>00488255    jl          0048827E
 00488257    inc         edi
 00488258    xor         ebx,ebx
 0048825A    mov         esi,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 0048825D    lea         eax,[esi+8]
 00488260    mov         edx,ebx
 00488262    call        00434534
 00488267    mov         eax,dword ptr [esi+20]
 0048826A    mov         esi,dword ptr [eax+ebx*4]
 0048826D    mov         edx,dword ptr [esp]
 00488270    mov         eax,esi
 00488272    call        TRegGroup.InGroup
 00488277    mov         byte ptr [esi+10],al
 0048827A    inc         ebx
 0048827B    dec         edi
>0048827C    jne         0048825A
 0048827E    pop         edx
 0048827F    pop         ebp
 00488280    pop         edi
 00488281    pop         esi
 00488282    pop         ebx
 00488283    ret
*}
end;

//00488284
constructor TRegGroups.Create;
begin
{*
 00488284    push        ebp
 00488285    mov         ebp,esp
 00488287    add         esp,0FFFFFFF8
 0048828A    push        ebx
 0048828B    push        esi
 0048828C    test        dl,dl
>0048828E    je          00488298
 00488290    add         esp,0FFFFFFF0
 00488293    call        @ClassCreate
 00488298    mov         byte ptr [ebp-1],dl
 0048829B    mov         ebx,eax
 0048829D    xor         edx,edx
 0048829F    mov         eax,ebx
 004882A1    call        TObject.Create
 004882A6    mov         cl,1
 004882A8    mov         dl,1
 004882AA    mov         eax,[00487A3C];TObjectList<System.Classes.TRegGroup>
 004882AF    call        004A60C8
 004882B4    mov         dword ptr [ebx+4],eax;TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004882B7    mov         ecx,dword ptr ds:[46D778];TPersistent
 004882BD    mov         dl,1
 004882BF    mov         eax,[00483178];TRegGroup
 004882C4    call        TRegGroup.Create;TRegGroup.Create
 004882C9    mov         esi,eax
 004882CB    mov         eax,dword ptr [ebx+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004882CE    mov         dword ptr [ebp-8],esi
 004882D1    lea         edx,[ebp-8]
 004882D4    add         eax,8
 004882D7    call        0043489C
 004882DC    mov         byte ptr [esi+10],1;TRegGroup.FActive:Boolean
 004882E0    mov         eax,ebx
 004882E2    cmp         byte ptr [ebp-1],0
>004882E6    je          004882F7
 004882E8    call        @AfterConstruction
 004882ED    pop         dword ptr fs:[0]
 004882F4    add         esp,0C
 004882F7    mov         eax,ebx
 004882F9    pop         esi
 004882FA    pop         ebx
 004882FB    pop         ecx
 004882FC    pop         ecx
 004882FD    pop         ebp
 004882FE    ret
*}
end;

//00488300
destructor TClassFinder.Destroy();
begin
{*
 00488300    push        ebx
 00488301    push        esi
 00488302    call        @BeforeDestruction
 00488307    mov         ebx,edx
 00488309    mov         esi,eax
 0048830B    mov         eax,dword ptr [esi+4]
 0048830E    call        TObject.Free
 00488313    mov         dl,0FC
 00488315    and         dl,bl
 00488317    mov         eax,esi
 00488319    call        TObject.Destroy
 0048831E    test        bl,bl
>00488320    jle         00488329
 00488322    mov         eax,esi
 00488324    call        @ClassDestroy
 00488329    pop         esi
 0048832A    pop         ebx
 0048832B    ret
*}
end;

//0048832C
function TRegGroups.FindGroup(AClass:TPersistentClass):TRegGroup;
begin
{*
 0048832C    push        ebx
 0048832D    push        esi
 0048832E    push        edi
 0048832F    push        ebp
 00488330    add         esp,0FFFFFFF8
 00488333    mov         dword ptr [esp+4],edx
 00488337    mov         dword ptr [esp],eax
 0048833A    xor         ebp,ebp
 0048833C    mov         eax,dword ptr [esp]
 0048833F    mov         eax,dword ptr [eax+4]
 00488342    mov         edi,dword ptr [eax+8]
 00488345    dec         edi
 00488346    test        edi,edi
>00488348    jl          0048837C
 0048834A    inc         edi
 0048834B    xor         ebx,ebx
 0048834D    mov         eax,dword ptr [esp]
 00488350    mov         esi,dword ptr [eax+4]
 00488353    lea         eax,[esi+8]
 00488356    mov         edx,ebx
 00488358    call        00434534
 0048835D    mov         eax,dword ptr [esi+20]
 00488360    mov         eax,dword ptr [eax+ebx*4]
 00488363    mov         edx,dword ptr [esp+4]
 00488367    push        edx
 00488368    mov         ecx,ebp
 0048836A    mov         edx,eax
 0048836C    mov         eax,[00483178];TRegGroup
 00488371    call        TRegGroup.BestGroup
 00488376    mov         ebp,eax
 00488378    inc         ebx
 00488379    dec         edi
>0048837A    jne         0048834D
 0048837C    mov         eax,ebp
 0048837E    pop         ecx
 0048837F    pop         edx
 00488380    pop         ebp
 00488381    pop         edi
 00488382    pop         esi
 00488383    pop         ebx
 00488384    ret
*}
end;

//00488388
function TRegGroups.GetClass(AClassName:string):TPersistentClass;
begin
{*
 00488388    push        ebx
 00488389    push        esi
 0048838A    push        edi
 0048838B    push        ebp
 0048838C    add         esp,0FFFFFFF8
 0048838F    mov         dword ptr [esp],edx
 00488392    mov         ebp,eax
 00488394    xor         eax,eax
 00488396    mov         dword ptr [esp+4],eax
 0048839A    mov         eax,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 0048839D    mov         edi,dword ptr [eax+8]
 004883A0    dec         edi
 004883A1    test        edi,edi
>004883A3    jl          004883EB
 004883A5    inc         edi
 004883A6    xor         ebx,ebx
 004883A8    mov         esi,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004883AB    lea         eax,[esi+8]
 004883AE    mov         edx,ebx
 004883B0    call        00434534
 004883B5    mov         eax,dword ptr [esi+20]
 004883B8    mov         eax,dword ptr [eax+ebx*4]
 004883BB    cmp         byte ptr [eax+10],0
>004883BF    je          004883E0
 004883C1    mov         esi,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004883C4    lea         eax,[esi+8]
 004883C7    mov         edx,ebx
 004883C9    call        00434534
 004883CE    mov         eax,dword ptr [esi+20]
 004883D1    mov         eax,dword ptr [eax+ebx*4]
 004883D4    mov         edx,dword ptr [esp]
 004883D7    call        TRegGroup.GetClass
 004883DC    mov         dword ptr [esp+4],eax
 004883E0    cmp         dword ptr [esp+4],0
>004883E5    jne         004883EB
 004883E7    inc         ebx
 004883E8    dec         edi
>004883E9    jne         004883A8
 004883EB    mov         eax,dword ptr [esp+4]
 004883EF    pop         ecx
 004883F0    pop         edx
 004883F1    pop         ebp
 004883F2    pop         edi
 004883F3    pop         esi
 004883F4    pop         ebx
 004883F5    ret
*}
end;

//004883F8
procedure Error;
begin
{*
 004883F8    push        ebp
 004883F9    mov         ebp,esp
 004883FB    add         esp,0FFFFFFF0
 004883FE    xor         eax,eax
 00488400    mov         dword ptr [ebp-0C],eax
 00488403    mov         dword ptr [ebp-10],eax
 00488406    xor         eax,eax
 00488408    push        ebp
 00488409    push        48846E
 0048840E    push        dword ptr fs:[eax]
 00488411    mov         dword ptr fs:[eax],esp
 00488414    lea         edx,[ebp-0C]
 00488417    mov         eax,dword ptr [ebp+8]
 0048841A    mov         eax,dword ptr [eax-4]
 0048841D    call        TObject.ClassName
 00488422    mov         eax,dword ptr [ebp-0C]
 00488425    mov         dword ptr [ebp-8],eax
 00488428    mov         byte ptr [ebp-4],11
 0048842C    lea         eax,[ebp-8]
 0048842F    push        eax
 00488430    push        0
 00488432    lea         edx,[ebp-10]
 00488435    mov         eax,[007C4D70];^SResString147:TResStringRec
 0048843A    call        LoadResString
 0048843F    mov         ecx,dword ptr [ebp-10]
 00488442    mov         dl,1
 00488444    mov         eax,[0046B894];EFilerError
 00488449    call        Exception.CreateFmt
 0048844E    call        @RaiseExcept
 00488453    xor         eax,eax
 00488455    pop         edx
 00488456    pop         ecx
 00488457    pop         ecx
 00488458    mov         dword ptr fs:[eax],edx
 0048845B    push        488475
 00488460    lea         eax,[ebp-10]
 00488463    mov         edx,2
 00488468    call        @UStrArrayClr
 0048846D    ret
>0048846E    jmp         @HandleFinally
>00488473    jmp         00488460
 00488475    mov         esp,ebp
 00488477    pop         ebp
 00488478    ret
*}
end;

//0048847C
procedure TRegGroups.GroupWith(AClass:TPersistentClass; AGroupClass:TPersistentClass);
begin
{*
 0048847C    push        ebp
 0048847D    mov         ebp,esp
 0048847F    add         esp,0FFFFFFD0
 00488482    push        ebx
 00488483    mov         dword ptr [ebp-4],ecx
 00488486    mov         dword ptr [ebp-14],edx
 00488489    mov         dword ptr [ebp-10],eax
 0048848C    lea         eax,[ebp-0C]
 0048848F    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 00488495    call        @AddRefRecord
 0048849A    xor         eax,eax
 0048849C    push        ebp
 0048849D    push        48861B
 004884A2    push        dword ptr fs:[eax]
 004884A5    mov         dword ptr fs:[eax],esp
 004884A8    mov         edx,dword ptr [ebp-4]
 004884AB    mov         eax,dword ptr [ebp-10]
 004884AE    call        TRegGroups.FindGroup
 004884B3    mov         dword ptr [ebp-18],eax
 004884B6    cmp         dword ptr [ebp-18],0
>004884BA    jne         004884C3
 004884BC    push        ebp
 004884BD    call        Error
 004884C2    pop         ecx
 004884C3    mov         edx,dword ptr [ebp-14]
 004884C6    mov         eax,dword ptr [ebp-18]
 004884C9    call        TRegGroup.AddClass
 004884CE    mov         eax,dword ptr [ebp-10]
 004884D1    mov         eax,dword ptr [eax+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004884D4    mov         eax,dword ptr [eax+8]
 004884D7    dec         eax
 004884D8    test        eax,eax
>004884DA    jl          004885FF
 004884E0    inc         eax
 004884E1    mov         dword ptr [ebp-28],eax
 004884E4    mov         dword ptr [ebp-20],0
 004884EB    mov         eax,dword ptr [ebp-10]
 004884EE    mov         ebx,dword ptr [eax+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004884F1    lea         eax,[ebx+8]
 004884F4    mov         edx,dword ptr [ebp-20]
 004884F7    call        00434534
 004884FC    mov         eax,dword ptr [ebx+20]
 004884FF    mov         edx,dword ptr [ebp-20]
 00488502    mov         eax,dword ptr [eax+edx*4]
 00488505    mov         dword ptr [ebp-1C],eax
 00488508    mov         eax,dword ptr [ebp-1C]
 0048850B    cmp         eax,dword ptr [ebp-18]
>0048850E    je          004885F3
 00488514    mov         eax,dword ptr [ebp-1C]
 00488517    cmp         dword ptr [eax+4],0
>0048851B    je          004885F3
 00488521    mov         ecx,dword ptr ds:[7CA3D4];gvar_007CA3D4:TOrdinalIStringComparer
 00488527    test        ecx,ecx
>00488529    je          0048852E
 0048852B    sub         ecx,0FFFFFFF8
 0048852E    mov         dl,1
 00488530    mov         eax,[00484EAC];TDictionary<System.string,System.Classes.TPersistentClass>
 00488535    call        TDictionary<System.string,System.Classes.TPersistentClass>.Create
 0048853A    mov         dword ptr [ebp-24],eax
 0048853D    mov         eax,dword ptr [ebp-1C]
 00488540    mov         eax,dword ptr [eax+4]
 00488543    call        TDictionary<System.string,System.Classes.TPersistentClass>.GetEnumerator
 00488548    mov         dword ptr [ebp-2C],eax
 0048854B    xor         eax,eax
 0048854D    push        ebp
 0048854E    push        4885C9
 00488553    push        dword ptr fs:[eax]
 00488556    mov         dword ptr fs:[eax],esp
>00488559    jmp         0048859F
 0048855B    lea         edx,[ebp-0C]
 0048855E    mov         eax,dword ptr [ebp-2C]
 00488561    call        004A5860
 00488566    mov         edx,dword ptr [ebp-14]
 00488569    mov         ebx,dword ptr [ebp-8]
 0048856C    mov         eax,ebx
 0048856E    call        TObject.InheritsFrom
 00488573    test        al,al
>00488575    je          00488592
 00488577    mov         edx,ebx
 00488579    mov         eax,dword ptr [ebp-10]
 0048857C    call        TRegGroups.FindGroup
 00488581    cmp         eax,dword ptr [ebp-18]
>00488584    jne         00488592
 00488586    mov         edx,ebx
 00488588    mov         eax,dword ptr [ebp-18]
 0048858B    call        TRegGroup.RegisterClass
>00488590    jmp         0048859F
 00488592    mov         ecx,ebx
 00488594    mov         edx,dword ptr [ebp-0C]
 00488597    mov         eax,dword ptr [ebp-24]
 0048859A    call        TDictionary<System.string,System.Classes.TPersistentClass>.Add
 0048859F    mov         eax,dword ptr [ebp-2C]
 004885A2    call        TDictionary<System.string,System.Classes.TPersistentClass>.TPairEnumerator.MoveNext
 004885A7    test        al,al
>004885A9    jne         0048855B
 004885AB    xor         eax,eax
 004885AD    pop         edx
 004885AE    pop         ecx
 004885AF    pop         ecx
 004885B0    mov         dword ptr fs:[eax],edx
 004885B3    push        4885D0
 004885B8    cmp         dword ptr [ebp-2C],0
>004885BC    je          004885C8
 004885BE    mov         dl,1
 004885C0    mov         eax,dword ptr [ebp-2C]
 004885C3    mov         ecx,dword ptr [eax]
 004885C5    call        dword ptr [ecx-4]
 004885C8    ret
>004885C9    jmp         @HandleFinally
>004885CE    jmp         004885B8
 004885D0    mov         eax,dword ptr [ebp-1C]
 004885D3    add         eax,4
 004885D6    mov         dword ptr [ebp-30],eax
 004885D9    mov         eax,dword ptr [ebp-30]
 004885DC    mov         eax,dword ptr [eax]
 004885DE    mov         edx,dword ptr [ebp-30]
 004885E1    xor         ecx,ecx
 004885E3    mov         dword ptr [edx],ecx
 004885E5    call        TObject.Free
 004885EA    mov         eax,dword ptr [ebp-1C]
 004885ED    mov         edx,dword ptr [ebp-24]
 004885F0    mov         dword ptr [eax+4],edx
 004885F3    inc         dword ptr [ebp-20]
 004885F6    dec         dword ptr [ebp-28]
>004885F9    jne         004884EB
 004885FF    xor         eax,eax
 00488601    pop         edx
 00488602    pop         ecx
 00488603    pop         ecx
 00488604    mov         dword ptr fs:[eax],edx
 00488607    push        488622
 0048860C    lea         eax,[ebp-0C]
 0048860F    mov         edx,dword ptr ds:[483AB4];TPair<System.string,System.Classes.TPersistentClass>
 00488615    call        @FinalizeRecord
 0048861A    ret
>0048861B    jmp         @HandleFinally
>00488620    jmp         0048860C
 00488622    pop         ebx
 00488623    mov         esp,ebp
 00488625    pop         ebp
 00488626    ret
*}
end;

//00488628
procedure TRegGroups.RegisterClass(AClass:TPersistentClass);
begin
{*
 00488628    push        ebx
 00488629    mov         ebx,edx
 0048862B    mov         edx,ebx
 0048862D    call        TRegGroups.FindGroup
 00488632    test        eax,eax
>00488634    je          0048863D
 00488636    mov         edx,ebx
 00488638    call        TRegGroup.RegisterClass
 0048863D    pop         ebx
 0048863E    ret
*}
end;

//00488640
function TRegGroups.Registered(AClass:TPersistentClass):Boolean;
begin
{*
 00488640    push        ebx
 00488641    push        esi
 00488642    push        edi
 00488643    push        ebp
 00488644    add         esp,0FFFFFFF8
 00488647    mov         dword ptr [esp],edx
 0048864A    mov         ebp,eax
 0048864C    mov         byte ptr [esp+4],1
 00488651    mov         eax,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 00488654    mov         edi,dword ptr [eax+8]
 00488657    dec         edi
 00488658    test        edi,edi
>0048865A    jl          00488682
 0048865C    inc         edi
 0048865D    xor         ebx,ebx
 0048865F    mov         esi,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 00488662    lea         eax,[esi+8]
 00488665    mov         edx,ebx
 00488667    call        00434534
 0048866C    mov         eax,dword ptr [esi+20]
 0048866F    mov         eax,dword ptr [eax+ebx*4]
 00488672    mov         edx,dword ptr [esp]
 00488675    call        TRegGroup.Registered
 0048867A    test        al,al
>0048867C    jne         00488687
 0048867E    inc         ebx
 0048867F    dec         edi
>00488680    jne         0048865F
 00488682    mov         byte ptr [esp+4],0
 00488687    movzx       eax,byte ptr [esp+4]
 0048868C    pop         ecx
 0048868D    pop         edx
 0048868E    pop         ebp
 0048868F    pop         edi
 00488690    pop         esi
 00488691    pop         ebx
 00488692    ret
*}
end;

//00488694
procedure TRegGroups.StartGroup(AClass:TPersistentClass);
begin
{*
 00488694    push        ebx
 00488695    push        esi
 00488696    push        edi
 00488697    push        ebp
 00488698    add         esp,0FFFFFFF0
 0048869B    mov         dword ptr [esp],edx
 0048869E    mov         ebp,eax
 004886A0    mov         eax,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004886A3    mov         edi,dword ptr [eax+8]
 004886A6    dec         edi
 004886A7    test        edi,edi
>004886A9    jl          004886E7
 004886AB    inc         edi
 004886AC    xor         ebx,ebx
 004886AE    mov         esi,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004886B1    lea         eax,[esi+8]
 004886B4    mov         edx,ebx
 004886B6    call        00434534
 004886BB    mov         eax,dword ptr [esi+20]
 004886BE    mov         eax,dword ptr [eax+ebx*4]
 004886C1    mov         eax,dword ptr [eax+0C]
 004886C4    mov         edx,dword ptr [esp]
 004886C7    mov         dword ptr [esp+4],edx
 004886CB    add         eax,8
 004886CE    mov         dword ptr [esp+8],eax
 004886D2    lea         edx,[esp+4]
 004886D6    mov         eax,dword ptr [esp+8]
 004886DA    call        00434714
 004886DF    test        eax,eax
>004886E1    jge         00488709
 004886E3    inc         ebx
 004886E4    dec         edi
>004886E5    jne         004886AE
 004886E7    mov         ebx,dword ptr [ebp+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 004886EA    mov         ecx,dword ptr [esp]
 004886ED    mov         dl,1
 004886EF    mov         eax,[00483178];TRegGroup
 004886F4    call        TRegGroup.Create;TRegGroup.Create
 004886F9    mov         dword ptr [esp+0C],eax
 004886FD    lea         edx,[esp+0C]
 00488701    lea         eax,[ebx+8]
 00488704    call        0043489C
 00488709    add         esp,10
 0048870C    pop         ebp
 0048870D    pop         edi
 0048870E    pop         esi
 0048870F    pop         ebx
 00488710    ret
*}
end;

//00488714
procedure TRegGroups.UnregisterModuleClasses(Module:NativeUInt);
begin
{*
 00488714    push        ebx
 00488715    push        esi
 00488716    push        edi
 00488717    push        ebp
 00488718    mov         ebp,edx
 0048871A    mov         edi,eax
 0048871C    mov         eax,dword ptr [edi+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 0048871F    mov         ebx,dword ptr [eax+8]
 00488722    dec         ebx
 00488723    cmp         ebx,0
>00488726    jl          00488762
 00488728    mov         esi,dword ptr [edi+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 0048872B    lea         eax,[esi+8]
 0048872E    mov         edx,ebx
 00488730    call        00434534
 00488735    mov         eax,dword ptr [esi+20]
 00488738    mov         esi,dword ptr [eax+ebx*4]
 0048873B    mov         edx,ebp
 0048873D    mov         eax,esi
 0048873F    call        TRegGroup.UnregisterModuleClasses
 00488744    mov         eax,dword ptr [esi+0C]
 00488747    cmp         dword ptr [eax+8],0
>0048874B    jne         0048875C
 0048874D    mov         eax,dword ptr [edi+4];TRegGroups.FGroups:TObjectList<System.Classes.TRegGroup>
 00488750    add         eax,8
 00488753    mov         cl,1
 00488755    mov         edx,ebx
 00488757    call        00435200
 0048875C    dec         ebx
 0048875D    cmp         ebx,0FFFFFFFF
>00488760    jne         00488728
 00488762    pop         ebp
 00488763    pop         edi
 00488764    pop         esi
 00488765    pop         ebx
 00488766    ret
*}
end;

//00488768
constructor sub_00488768(AClass:TPersistentClass; AIncludeActiveGroups:Boolean);
begin
{*
 00488768    push        ebp
 00488769    mov         ebp,esp
 0048876B    add         esp,0FFFFFFEC
 0048876E    push        ebx
 0048876F    push        esi
 00488770    push        edi
 00488771    test        dl,dl
>00488773    je          0048877D
 00488775    add         esp,0FFFFFFF0
 00488778    call        @ClassCreate
 0048877D    mov         dword ptr [ebp-0C],ecx
 00488780    mov         byte ptr [ebp-5],dl
 00488783    mov         dword ptr [ebp-4],eax
 00488786    xor         edx,edx
 00488788    mov         eax,dword ptr [ebp-4]
 0048878B    call        TObject.Create
 00488790    mov         dl,1
 00488792    mov         eax,[0047D574];TList<System.TObject>
 00488797    call        TList<System.TObject>.Create
 0048879C    mov         edx,dword ptr [ebp-4]
 0048879F    mov         dword ptr [edx+4],eax;TClassFinder.FGroups:TList<System.TObject>
 004887A2    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 004887A7    or          edx,0FFFFFFFF
 004887AA    call        TMonitor.Enter
 004887AF    xor         edx,edx
 004887B1    push        ebp
 004887B2    push        48888F
 004887B7    push        dword ptr fs:[edx]
 004887BA    mov         dword ptr fs:[edx],esp
 004887BD    cmp         dword ptr [ebp-0C],0
>004887C1    jne         004887CE
 004887C3    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 004887C8    mov         eax,dword ptr [eax+8]
 004887CB    mov         dword ptr [ebp-0C],eax
 004887CE    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 004887D3    mov         eax,dword ptr [eax+4]
 004887D6    mov         edi,dword ptr [eax+8]
 004887D9    dec         edi
 004887DA    test        edi,edi
>004887DC    jl          0048881F
 004887DE    inc         edi
 004887DF    xor         ebx,ebx
 004887E1    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 004887E6    mov         esi,dword ptr [eax+4]
 004887E9    lea         eax,[esi+8]
 004887EC    mov         edx,ebx
 004887EE    call        00434534
 004887F3    mov         eax,dword ptr [esi+20]
 004887F6    mov         esi,dword ptr [eax+ebx*4]
 004887F9    mov         edx,dword ptr [ebp-0C]
 004887FC    mov         eax,esi
 004887FE    call        TRegGroup.InGroup
 00488803    test        al,al
>00488805    je          0048881B
 00488807    mov         eax,dword ptr [ebp-4]
 0048880A    mov         eax,dword ptr [eax+4];TClassFinder.FGroups:TList<System.TObject>
 0048880D    mov         dword ptr [ebp-10],esi
 00488810    lea         edx,[ebp-10]
 00488813    add         eax,8;TList<System.TObject>.FCount:Integer
 00488816    call        0043489C
 0048881B    inc         ebx
 0048881C    dec         edi
>0048881D    jne         004887E1
 0048881F    cmp         byte ptr [ebp+8],0
>00488823    je          0048886E
 00488825    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 0048882A    mov         eax,dword ptr [eax+4]
 0048882D    mov         edi,dword ptr [eax+8]
 00488830    dec         edi
 00488831    test        edi,edi
>00488833    jl          0048886E
 00488835    inc         edi
 00488836    xor         ebx,ebx
 00488838    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 0048883D    mov         esi,dword ptr [eax+4]
 00488840    lea         eax,[esi+8]
 00488843    mov         edx,ebx
 00488845    call        00434534
 0048884A    mov         eax,dword ptr [esi+20]
 0048884D    mov         esi,dword ptr [eax+ebx*4]
 00488850    cmp         byte ptr [esi+10],0
>00488854    je          0048886A
 00488856    mov         eax,dword ptr [ebp-4]
 00488859    mov         eax,dword ptr [eax+4];TClassFinder.FGroups:TList<System.TObject>
 0048885C    mov         dword ptr [ebp-14],esi
 0048885F    lea         edx,[ebp-14]
 00488862    add         eax,8;TList<System.TObject>.FCount:Integer
 00488865    call        0043489C
 0048886A    inc         ebx
 0048886B    dec         edi
>0048886C    jne         00488838
 0048886E    mov         eax,dword ptr [ebp-4]
 00488871    mov         edx,dword ptr [ebp-0C]
 00488874    mov         dword ptr [eax+8],edx;TClassFinder.FClass:TPersistentClass
 00488877    xor         eax,eax
 00488879    pop         edx
 0048887A    pop         ecx
 0048887B    pop         ecx
 0048887C    mov         dword ptr fs:[eax],edx
 0048887F    push        488896
 00488884    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488889    call        TMonitor.Exit
 0048888E    ret
>0048888F    jmp         @HandleFinally
>00488894    jmp         00488884
 00488896    mov         eax,dword ptr [ebp-4]
 00488899    cmp         byte ptr [ebp-5],0
>0048889D    je          004888AE
 0048889F    call        @AfterConstruction
 004888A4    pop         dword ptr fs:[0]
 004888AB    add         esp,0C
 004888AE    mov         eax,dword ptr [ebp-4]
 004888B1    pop         edi
 004888B2    pop         esi
 004888B3    pop         ebx
 004888B4    mov         esp,ebp
 004888B6    pop         ebp
 004888B7    ret         4
*}
end;

//004888BC
destructor TObserverMapping.Destroy();
begin
{*
 004888BC    push        ebx
 004888BD    push        esi
 004888BE    call        @BeforeDestruction
 004888C3    mov         ebx,edx
 004888C5    mov         esi,eax
 004888C7    mov         eax,dword ptr [esi+4]
 004888CA    call        TObject.Free
 004888CF    mov         dl,0FC
 004888D1    and         dl,bl
 004888D3    mov         eax,esi
 004888D5    call        TObject.Destroy
 004888DA    test        bl,bl
>004888DC    jle         004888E5
 004888DE    mov         eax,esi
 004888E0    call        @ClassDestroy
 004888E5    pop         esi
 004888E6    pop         ebx
 004888E7    ret
*}
end;

//004888E8
function TClassFinder.GetClass(AClassName:string):TPersistentClass;
begin
{*
 004888E8    push        ebp
 004888E9    mov         ebp,esp
 004888EB    add         esp,0FFFFFFF4
 004888EE    push        ebx
 004888EF    push        esi
 004888F0    push        edi
 004888F1    mov         dword ptr [ebp-8],edx
 004888F4    mov         dword ptr [ebp-4],eax
 004888F7    xor         eax,eax
 004888F9    mov         dword ptr [ebp-0C],eax
 004888FC    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488901    or          edx,0FFFFFFFF
 00488904    call        TMonitor.Enter
 00488909    xor         eax,eax
 0048890B    push        ebp
 0048890C    push        488972
 00488911    push        dword ptr fs:[eax]
 00488914    mov         dword ptr fs:[eax],esp
 00488917    mov         eax,dword ptr [ebp-4]
 0048891A    mov         eax,dword ptr [eax+4]
 0048891D    mov         edi,dword ptr [eax+8]
 00488920    dec         edi
 00488921    test        edi,edi
>00488923    jl          0048895A
 00488925    inc         edi
 00488926    xor         ebx,ebx
 00488928    mov         eax,dword ptr [ebp-4]
 0048892B    mov         esi,dword ptr [eax+4]
 0048892E    lea         eax,[esi+8]
 00488931    mov         edx,ebx
 00488933    call        00434534
 00488938    mov         eax,dword ptr [esi+20]
 0048893B    mov         eax,dword ptr [eax+ebx*4]
 0048893E    mov         edx,dword ptr [ebp-8]
 00488941    call        TRegGroup.GetClass
 00488946    mov         dword ptr [ebp-0C],eax
 00488949    cmp         dword ptr [ebp-0C],0
>0048894D    je          00488956
 0048894F    call        @TryFinallyExit
>00488954    jmp         00488979
 00488956    inc         ebx
 00488957    dec         edi
>00488958    jne         00488928
 0048895A    xor         eax,eax
 0048895C    pop         edx
 0048895D    pop         ecx
 0048895E    pop         ecx
 0048895F    mov         dword ptr fs:[eax],edx
 00488962    push        488979
 00488967    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 0048896C    call        TMonitor.Exit
 00488971    ret
>00488972    jmp         @HandleFinally
>00488977    jmp         00488967
 00488979    mov         eax,dword ptr [ebp-0C]
 0048897C    pop         edi
 0048897D    pop         esi
 0048897E    pop         ebx
 0048897F    mov         esp,ebp
 00488981    pop         ebp
 00488982    ret
*}
end;

//00488984
function GetFieldClassTable(AClass:TClass):PFieldClassTable;
begin
{*
 00488984    mov         eax,dword ptr [eax-44]
 00488987    or          eax,eax
>00488989    je          0048898E
 0048898B    mov         eax,dword ptr [eax+2]
 0048898E    ret
*}
end;

//00488990
procedure ClassNotFound(const ClassName:UnicodeString);
begin
{*
 00488990    push        ebp
 00488991    mov         ebp,esp
 00488993    add         esp,0FFFFFFF4
 00488996    push        ebx
 00488997    xor         edx,edx
 00488999    mov         dword ptr [ebp-0C],edx
 0048899C    mov         ebx,eax
 0048899E    xor         eax,eax
 004889A0    push        ebp
 004889A1    push        4889F0
 004889A6    push        dword ptr fs:[eax]
 004889A9    mov         dword ptr fs:[eax],esp
 004889AC    mov         dword ptr [ebp-8],ebx
 004889AF    mov         byte ptr [ebp-4],11
 004889B3    lea         eax,[ebp-8]
 004889B6    push        eax
 004889B7    push        0
 004889B9    lea         edx,[ebp-0C]
 004889BC    mov         eax,[007C4CD4];^SResString118:TResStringRec
 004889C1    call        LoadResString
 004889C6    mov         ecx,dword ptr [ebp-0C]
 004889C9    mov         dl,1
 004889CB    mov         eax,[0046BA8C];EClassNotFound
 004889D0    call        Exception.CreateFmt
 004889D5    call        @RaiseExcept
 004889DA    xor         eax,eax
 004889DC    pop         edx
 004889DD    pop         ecx
 004889DE    pop         ecx
 004889DF    mov         dword ptr fs:[eax],edx
 004889E2    push        4889F7
 004889E7    lea         eax,[ebp-0C]
 004889EA    call        @UStrClr
 004889EF    ret
>004889F0    jmp         @HandleFinally
>004889F5    jmp         004889E7
 004889F7    pop         ebx
 004889F8    mov         esp,ebp
 004889FA    pop         ebp
 004889FB    ret
*}
end;

//004889FC
function GetClass(const AClassName:UnicodeString):TPersistentClass;
begin
{*
 004889FC    push        ebp
 004889FD    mov         ebp,esp
 004889FF    push        ecx
 00488A00    push        ebx
 00488A01    mov         ebx,eax
 00488A03    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488A08    or          edx,0FFFFFFFF
 00488A0B    call        TMonitor.Enter
 00488A10    xor         eax,eax
 00488A12    push        ebp
 00488A13    push        488A45
 00488A18    push        dword ptr fs:[eax]
 00488A1B    mov         dword ptr fs:[eax],esp
 00488A1E    mov         edx,ebx
 00488A20    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488A25    call        TRegGroups.GetClass
 00488A2A    mov         dword ptr [ebp-4],eax
 00488A2D    xor         eax,eax
 00488A2F    pop         edx
 00488A30    pop         ecx
 00488A31    pop         ecx
 00488A32    mov         dword ptr fs:[eax],edx
 00488A35    push        488A4C
 00488A3A    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488A3F    call        TMonitor.Exit
 00488A44    ret
>00488A45    jmp         @HandleFinally
>00488A4A    jmp         00488A3A
 00488A4C    mov         eax,dword ptr [ebp-4]
 00488A4F    pop         ebx
 00488A50    pop         ecx
 00488A51    pop         ebp
 00488A52    ret
*}
end;

//00488A54
function FindClass(const ClassName:UnicodeString):TPersistentClass;
begin
{*
 00488A54    push        ebx
 00488A55    push        esi
 00488A56    mov         esi,eax
 00488A58    mov         eax,esi
 00488A5A    call        GetClass
 00488A5F    mov         ebx,eax
 00488A61    test        ebx,ebx
>00488A63    jne         00488A6C
 00488A65    mov         eax,esi
 00488A67    call        ClassNotFound
 00488A6C    mov         eax,ebx
 00488A6E    pop         esi
 00488A6F    pop         ebx
 00488A70    ret
*}
end;

//00488A74
procedure RegisterClass(AClass:TPersistentClass);
begin
{*
 00488A74    push        ebp
 00488A75    mov         ebp,esp
 00488A77    push        ebx
 00488A78    mov         ebx,eax
 00488A7A    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488A7F    or          edx,0FFFFFFFF
 00488A82    call        TMonitor.Enter
 00488A87    xor         eax,eax
 00488A89    push        ebp
 00488A8A    push        488ADC
 00488A8F    push        dword ptr fs:[eax]
 00488A92    mov         dword ptr fs:[eax],esp
>00488A95    jmp         00488AB4
 00488A97    mov         edx,ebx
 00488A99    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488A9E    call        TRegGroups.RegisterClass
 00488AA3    cmp         ebx,dword ptr ds:[46D778];TPersistent
>00488AA9    je          00488AC4
 00488AAB    mov         eax,ebx
 00488AAD    call        TObject.ClassParent
 00488AB2    mov         ebx,eax
 00488AB4    mov         edx,ebx
 00488AB6    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488ABB    call        TRegGroups.Registered
 00488AC0    test        al,al
>00488AC2    je          00488A97
 00488AC4    xor         eax,eax
 00488AC6    pop         edx
 00488AC7    pop         ecx
 00488AC8    pop         ecx
 00488AC9    mov         dword ptr fs:[eax],edx
 00488ACC    push        488AE3
 00488AD1    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488AD6    call        TMonitor.Exit
 00488ADB    ret
>00488ADC    jmp         @HandleFinally
>00488AE1    jmp         00488AD1
 00488AE3    pop         ebx
 00488AE4    pop         ebp
 00488AE5    ret
*}
end;

//00488AE8
{*procedure sub_00488AE8(?:?; ?:?);
begin
 00488AE8    push        ebp
 00488AE9    mov         ebp,esp
 00488AEB    push        ebx
 00488AEC    mov         ebx,eax
 00488AEE    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488AF3    or          edx,0FFFFFFFF
 00488AF6    call        TMonitor.Enter
 00488AFB    xor         eax,eax
 00488AFD    push        ebp
 00488AFE    push        488B2D
 00488B03    push        dword ptr fs:[eax]
 00488B06    mov         dword ptr fs:[eax],esp
 00488B09    mov         edx,ebx
 00488B0B    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488B10    call        TRegGroups.UnregisterModuleClasses
 00488B15    xor         eax,eax
 00488B17    pop         edx
 00488B18    pop         ecx
 00488B19    pop         ecx
 00488B1A    mov         dword ptr fs:[eax],edx
 00488B1D    push        488B34
 00488B22    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488B27    call        TMonitor.Exit
 00488B2C    ret
>00488B2D    jmp         @HandleFinally
>00488B32    jmp         00488B22
 00488B34    pop         ebx
 00488B35    pop         ebp
 00488B36    ret
end;*}

//00488B38
procedure StartClassGroup(AClass:TPersistentClass);
begin
{*
 00488B38    push        ebp
 00488B39    mov         ebp,esp
 00488B3B    push        ebx
 00488B3C    mov         ebx,eax
 00488B3E    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488B43    or          edx,0FFFFFFFF
 00488B46    call        TMonitor.Enter
 00488B4B    xor         eax,eax
 00488B4D    push        ebp
 00488B4E    push        488B7D
 00488B53    push        dword ptr fs:[eax]
 00488B56    mov         dword ptr fs:[eax],esp
 00488B59    mov         edx,ebx
 00488B5B    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488B60    call        TRegGroups.StartGroup
 00488B65    xor         eax,eax
 00488B67    pop         edx
 00488B68    pop         ecx
 00488B69    pop         ecx
 00488B6A    mov         dword ptr fs:[eax],edx
 00488B6D    push        488B84
 00488B72    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488B77    call        TMonitor.Exit
 00488B7C    ret
>00488B7D    jmp         @HandleFinally
>00488B82    jmp         00488B72
 00488B84    pop         ebx
 00488B85    pop         ebp
 00488B86    ret
*}
end;

//00488B88
procedure GroupDescendentsWith(AClass:TPersistentClass; AClassGroup:TPersistentClass);
begin
{*
 00488B88    push        ebp
 00488B89    mov         ebp,esp
 00488B8B    push        ebx
 00488B8C    push        esi
 00488B8D    mov         esi,edx
 00488B8F    mov         ebx,eax
 00488B91    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488B96    or          edx,0FFFFFFFF
 00488B99    call        TMonitor.Enter
 00488B9E    xor         eax,eax
 00488BA0    push        ebp
 00488BA1    push        488BD2
 00488BA6    push        dword ptr fs:[eax]
 00488BA9    mov         dword ptr fs:[eax],esp
 00488BAC    mov         ecx,esi
 00488BAE    mov         edx,ebx
 00488BB0    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488BB5    call        TRegGroups.GroupWith
 00488BBA    xor         eax,eax
 00488BBC    pop         edx
 00488BBD    pop         ecx
 00488BBE    pop         ecx
 00488BBF    mov         dword ptr fs:[eax],edx
 00488BC2    push        488BD9
 00488BC7    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488BCC    call        TMonitor.Exit
 00488BD1    ret
>00488BD2    jmp         @HandleFinally
>00488BD7    jmp         00488BC7
 00488BD9    pop         esi
 00488BDA    pop         ebx
 00488BDB    pop         ebp
 00488BDC    ret
*}
end;

//00488BE0
function ActivateClassGroup(AClass:TPersistentClass):TPersistentClass;
begin
{*
 00488BE0    push        ebp
 00488BE1    mov         ebp,esp
 00488BE3    push        ecx
 00488BE4    push        ebx
 00488BE5    mov         ebx,eax
 00488BE7    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488BEC    or          edx,0FFFFFFFF
 00488BEF    call        TMonitor.Enter
 00488BF4    xor         eax,eax
 00488BF6    push        ebp
 00488BF7    push        488C31
 00488BFC    push        dword ptr fs:[eax]
 00488BFF    mov         dword ptr fs:[eax],esp
 00488C02    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488C07    mov         eax,dword ptr [eax+8]
 00488C0A    mov         dword ptr [ebp-4],eax
 00488C0D    mov         edx,ebx
 00488C0F    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488C14    call        TRegGroups.Activate
 00488C19    xor         eax,eax
 00488C1B    pop         edx
 00488C1C    pop         ecx
 00488C1D    pop         ecx
 00488C1E    mov         dword ptr fs:[eax],edx
 00488C21    push        488C38
 00488C26    mov         eax,[007CA3D0];gvar_007CA3D0:TRegGroups
 00488C2B    call        TMonitor.Exit
 00488C30    ret
>00488C31    jmp         @HandleFinally
>00488C36    jmp         00488C26
 00488C38    mov         eax,dword ptr [ebp-4]
 00488C3B    pop         ebx
 00488C3C    pop         ecx
 00488C3D    pop         ebp
 00488C3E    ret
*}
end;

//0048A450
constructor TIntConst.Create(AIntToIdent:TIntToIdent; AIdentToInt:TIdentToInt);
begin
{*
 0048A450    push        ebp
 0048A451    mov         ebp,esp
 0048A453    test        dl,dl
>0048A455    je          0048A45F
 0048A457    add         esp,0FFFFFFF0
 0048A45A    call        @ClassCreate
 0048A45F    mov         dword ptr [eax+4],ecx
 0048A462    mov         ecx,dword ptr [ebp+0C]
 0048A465    mov         dword ptr [eax+8],ecx
 0048A468    mov         ecx,dword ptr [ebp+8]
 0048A46B    mov         dword ptr [eax+0C],ecx
 0048A46E    test        dl,dl
>0048A470    je          0048A481
 0048A472    call        @AfterConstruction
 0048A477    pop         dword ptr fs:[0]
 0048A47E    add         esp,0C
 0048A481    pop         ebp
 0048A482    ret         8
*}
end;

//0048A488
procedure RegisterIntegerConsts(AIntegerType:Pointer; AIdentToInt:TIdentToInt; AIntToIdent:TIntToIdent);
begin
{*
 0048A488    push        ebx
 0048A489    push        esi
 0048A48A    push        edi
 0048A48B    mov         edi,ecx
 0048A48D    mov         esi,edx
 0048A48F    mov         ebx,eax
 0048A491    push        esi
 0048A492    push        edi
 0048A493    mov         ecx,ebx
 0048A495    mov         dl,1
 0048A497    mov         eax,[00488C40];TIntConst
 0048A49C    call        TIntConst.Create
 0048A4A1    mov         edx,eax
 0048A4A3    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 0048A4A8    call        TThreadList<System.Classes.TIntConst>.Add
 0048A4AD    pop         edi
 0048A4AE    pop         esi
 0048A4AF    pop         ebx
 0048A4B0    ret
*}
end;

//0048A4B4
function FindIntToIdent(AIntegerType:Pointer):TIntToIdent;
begin
{*
 0048A4B4    push        ebp
 0048A4B5    mov         ebp,esp
 0048A4B7    push        ecx
 0048A4B8    push        ebx
 0048A4B9    push        esi
 0048A4BA    push        edi
 0048A4BB    mov         edi,eax
 0048A4BD    xor         eax,eax
 0048A4BF    mov         dword ptr [ebp-4],eax
 0048A4C2    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 0048A4C7    call        TThreadList<System.Classes.TIntConst>.LockList
 0048A4CC    mov         esi,eax
 0048A4CE    xor         edx,edx
 0048A4D0    push        ebp
 0048A4D1    push        48A528
 0048A4D6    push        dword ptr fs:[edx]
 0048A4D9    mov         dword ptr fs:[edx],esp
 0048A4DC    mov         ebx,dword ptr [esi+8]
 0048A4DF    dec         ebx
 0048A4E0    cmp         ebx,0
>0048A4E3    jl          0048A50D
 0048A4E5    lea         eax,[esi+8]
 0048A4E8    mov         edx,ebx
 0048A4EA    call        00434534
 0048A4EF    mov         eax,dword ptr [esi+20]
 0048A4F2    mov         eax,dword ptr [eax+ebx*4]
 0048A4F5    cmp         edi,dword ptr [eax+4]
>0048A4F8    jne         0048A507
 0048A4FA    mov         eax,dword ptr [eax+0C]
 0048A4FD    mov         dword ptr [ebp-4],eax
 0048A500    call        @TryFinallyExit
>0048A505    jmp         0048A52F
 0048A507    dec         ebx
 0048A508    cmp         ebx,0FFFFFFFF
>0048A50B    jne         0048A4E5
 0048A50D    xor         eax,eax
 0048A50F    pop         edx
 0048A510    pop         ecx
 0048A511    pop         ecx
 0048A512    mov         dword ptr fs:[eax],edx
 0048A515    push        48A52F
 0048A51A    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 0048A51F    mov         eax,dword ptr [eax+8]
 0048A522    call        TMonitor.Exit
 0048A527    ret
>0048A528    jmp         @HandleFinally
>0048A52D    jmp         0048A51A
 0048A52F    mov         eax,dword ptr [ebp-4]
 0048A532    pop         edi
 0048A533    pop         esi
 0048A534    pop         ebx
 0048A535    pop         ecx
 0048A536    pop         ebp
 0048A537    ret
*}
end;

//0048A538
function FindIdentToInt(AIntegerType:Pointer):TIdentToInt;
begin
{*
 0048A538    push        ebp
 0048A539    mov         ebp,esp
 0048A53B    push        ecx
 0048A53C    push        ebx
 0048A53D    push        esi
 0048A53E    push        edi
 0048A53F    mov         edi,eax
 0048A541    xor         eax,eax
 0048A543    mov         dword ptr [ebp-4],eax
 0048A546    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 0048A54B    call        TThreadList<System.Classes.TIntConst>.LockList
 0048A550    mov         esi,eax
 0048A552    xor         edx,edx
 0048A554    push        ebp
 0048A555    push        48A5AC
 0048A55A    push        dword ptr fs:[edx]
 0048A55D    mov         dword ptr fs:[edx],esp
 0048A560    mov         ebx,dword ptr [esi+8]
 0048A563    dec         ebx
 0048A564    cmp         ebx,0
>0048A567    jl          0048A591
 0048A569    lea         eax,[esi+8]
 0048A56C    mov         edx,ebx
 0048A56E    call        00434534
 0048A573    mov         eax,dword ptr [esi+20]
 0048A576    mov         eax,dword ptr [eax+ebx*4]
 0048A579    cmp         edi,dword ptr [eax+4]
>0048A57C    jne         0048A58B
 0048A57E    mov         eax,dword ptr [eax+8]
 0048A581    mov         dword ptr [ebp-4],eax
 0048A584    call        @TryFinallyExit
>0048A589    jmp         0048A5B3
 0048A58B    dec         ebx
 0048A58C    cmp         ebx,0FFFFFFFF
>0048A58F    jne         0048A569
 0048A591    xor         eax,eax
 0048A593    pop         edx
 0048A594    pop         ecx
 0048A595    pop         ecx
 0048A596    mov         dword ptr fs:[eax],edx
 0048A599    push        48A5B3
 0048A59E    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 0048A5A3    mov         eax,dword ptr [eax+8]
 0048A5A6    call        TMonitor.Exit
 0048A5AB    ret
>0048A5AC    jmp         @HandleFinally
>0048A5B1    jmp         0048A59E
 0048A5B3    mov         eax,dword ptr [ebp-4]
 0048A5B6    pop         edi
 0048A5B7    pop         esi
 0048A5B8    pop         ebx
 0048A5B9    pop         ecx
 0048A5BA    pop         ebp
 0048A5BB    ret
*}
end;

//0048A5BC
function IdentToInt(const Ident:UnicodeString; var Int:LongInt; const Map:array[$0..-$1] of TIdentMapEntry; const _Dv_:$0..-$1):Boolean;
begin
{*
 0048A5BC    push        ebp
 0048A5BD    mov         ebp,esp
 0048A5BF    add         esp,0FFFFFFF4
 0048A5C2    push        ebx
 0048A5C3    push        esi
 0048A5C4    push        edi
 0048A5C5    mov         dword ptr [ebp-4],edx
 0048A5C8    mov         esi,eax
 0048A5CA    mov         eax,dword ptr [ebp+8]
 0048A5CD    test        eax,eax
>0048A5CF    jl          0048A618
 0048A5D1    inc         eax
 0048A5D2    mov         dword ptr [ebp-8],eax
 0048A5D5    lea         edi,[ecx+4]
 0048A5D8    mov         ebx,dword ptr [edi]
 0048A5DA    cmp         ebx,esi
>0048A5DC    jne         0048A5E2
 0048A5DE    mov         al,1
>0048A5E0    jmp         0048A600
 0048A5E2    test        ebx,ebx
>0048A5E4    je          0048A5EA
 0048A5E6    test        esi,esi
>0048A5E8    jne         0048A5EE
 0048A5EA    xor         eax,eax
>0048A5EC    jmp         0048A600
 0048A5EE    mov         edx,esi
 0048A5F0    mov         dword ptr [ebp-0C],ebx
 0048A5F3    mov         eax,dword ptr [ebp-0C]
 0048A5F6    call        CompareText
 0048A5FB    test        eax,eax
 0048A5FD    sete        al
 0048A600    test        al,al
>0048A602    je          0048A610
 0048A604    mov         al,1
 0048A606    mov         edx,dword ptr [edi-4]
 0048A609    mov         ecx,dword ptr [ebp-4]
 0048A60C    mov         dword ptr [ecx],edx
>0048A60E    jmp         0048A61A
 0048A610    add         edi,8
 0048A613    dec         dword ptr [ebp-8]
>0048A616    jne         0048A5D8
 0048A618    xor         eax,eax
 0048A61A    pop         edi
 0048A61B    pop         esi
 0048A61C    pop         ebx
 0048A61D    mov         esp,ebp
 0048A61F    pop         ebp
 0048A620    ret         4
*}
end;

//0048A624
function IntToIdent(Int:LongInt; var Ident:UnicodeString; const Map:array[$0..-$1] of TIdentMapEntry; const _Dv_:$0..-$1):Boolean;
begin
{*
 0048A624    push        ebp
 0048A625    mov         ebp,esp
 0048A627    add         esp,0FFFFFFF8
 0048A62A    push        ebx
 0048A62B    push        esi
 0048A62C    push        edi
 0048A62D    mov         dword ptr [ebp-4],ecx
 0048A630    mov         edi,edx
 0048A632    mov         esi,dword ptr [ebp+8]
 0048A635    test        esi,esi
>0048A637    jl          0048A657
 0048A639    inc         esi
 0048A63A    mov         ebx,dword ptr [ebp-4]
 0048A63D    cmp         eax,dword ptr [ebx]
>0048A63F    jne         0048A651
 0048A641    mov         byte ptr [ebp-5],1
 0048A645    mov         eax,edi
 0048A647    mov         edx,dword ptr [ebx+4]
 0048A64A    call        @UStrAsg
>0048A64F    jmp         0048A65B
 0048A651    add         ebx,8
 0048A654    dec         esi
>0048A655    jne         0048A63D
 0048A657    mov         byte ptr [ebp-5],0
 0048A65B    movzx       eax,byte ptr [ebp-5]
 0048A65F    pop         edi
 0048A660    pop         esi
 0048A661    pop         ebx
 0048A662    pop         ecx
 0048A663    pop         ecx
 0048A664    pop         ebp
 0048A665    ret         4
*}
end;

//0048BAC0
procedure sub_0048BAC0(?:TComponent);
begin
{*
 0048BAC0    push        ebx
 0048BAC1    add         esp,0FFFFFFF4
 0048BAC4    mov         ebx,eax
 0048BAC6    cmp         dword ptr ds:[7CA3DC],0;gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
>0048BACD    jne         0048BAE0
 0048BACF    mov         dl,1
 0048BAD1    mov         eax,[0048ADE8];TList<System.Classes.TFindGlobalComponent>
 0048BAD6    call        004A689C
 0048BADB    mov         [007CA3DC],eax;gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 0048BAE0    mov         dword ptr [esp],ebx
 0048BAE3    mov         eax,[007CA3DC];gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 0048BAE8    add         eax,8
 0048BAEB    mov         dword ptr [esp+4],eax
 0048BAEF    mov         edx,esp
 0048BAF1    mov         eax,dword ptr [esp+4]
 0048BAF5    call        00434714
 0048BAFA    test        eax,eax
>0048BAFC    jge         0048BB13
 0048BAFE    mov         dword ptr [esp+8],ebx
 0048BB02    lea         edx,[esp+8]
 0048BB06    mov         eax,[007CA3DC];gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 0048BB0B    add         eax,8
 0048BB0E    call        0043489C
 0048BB13    add         esp,0C
 0048BB16    pop         ebx
 0048BB17    ret
*}
end;

//0048BB18
procedure sub_0048BB18(?:TComponent);
begin
{*
 0048BB18    add         esp,0FFFFFFF8
 0048BB1B    cmp         dword ptr ds:[7CA3DC],0;gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
>0048BB22    je          0048BB3E
 0048BB24    mov         dword ptr [esp],eax
 0048BB27    mov         eax,[007CA3DC];gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 0048BB2C    add         eax,8
 0048BB2F    mov         dword ptr [esp+4],eax
 0048BB33    mov         edx,esp
 0048BB35    mov         eax,dword ptr [esp+4]
 0048BB39    call        00434878
 0048BB3E    pop         ecx
 0048BB3F    pop         edx
 0048BB40    ret
*}
end;

//0048BB44
function FindGlobalComponent(const Name:UnicodeString):TComponent;
begin
{*
 0048BB44    push        ebx
 0048BB45    push        esi
 0048BB46    push        edi
 0048BB47    mov         esi,eax
 0048BB49    xor         eax,eax
 0048BB4B    cmp         dword ptr ds:[7CA3DC],0;gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
>0048BB52    je          0048BB8B
 0048BB54    mov         edx,dword ptr ds:[7CA3DC];gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 0048BB5A    mov         ebx,dword ptr [edx+8]
 0048BB5D    dec         ebx
 0048BB5E    cmp         ebx,0
>0048BB61    jl          0048BB8B
 0048BB63    mov         eax,[007CA3DC];gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 0048BB68    add         eax,8
 0048BB6B    mov         edx,ebx
 0048BB6D    call        00434534
 0048BB72    mov         eax,[007CA3DC];gvar_007CA3DC:TList<System.Classes.TFindGlobalComponent>
 0048BB77    mov         eax,dword ptr [eax+20]
 0048BB7A    mov         edi,dword ptr [eax+ebx*4]
 0048BB7D    mov         eax,esi
 0048BB7F    call        edi
 0048BB81    test        eax,eax
>0048BB83    jne         0048BB8B
 0048BB85    dec         ebx
 0048BB86    cmp         ebx,0FFFFFFFF
>0048BB89    jne         0048BB63
 0048BB8B    pop         edi
 0048BB8C    pop         esi
 0048BB8D    pop         ebx
 0048BB8E    ret
*}
end;

//0048BB90
function IsUniqueGlobalComponentName(const Name:UnicodeString):Boolean;
begin
{*
 0048BB90    push        ebx
 0048BB91    mov         ebx,eax
 0048BB93    cmp         dword ptr ds:[7CA3BC],0
>0048BB9A    je          0048BBA6
 0048BB9C    mov         eax,ebx
 0048BB9E    call        dword ptr ds:[7CA3BC]
 0048BBA4    pop         ebx
 0048BBA5    ret
 0048BBA6    mov         eax,ebx
 0048BBA8    call        FindGlobalComponent
 0048BBAD    test        eax,eax
 0048BBAF    sete        al
 0048BBB2    pop         ebx
 0048BBB3    ret
*}
end;

//0048BBB4
function InternalReadComponentRes(const ResName:UnicodeString; HInst:Windows.THandle; var Instance:TComponent):Boolean;
begin
{*
 0048BBB4    push        ebp
 0048BBB5    mov         ebp,esp
 0048BBB7    push        ecx
 0048BBB8    push        ebx
 0048BBB9    push        esi
 0048BBBA    push        edi
 0048BBBB    mov         esi,ecx
 0048BBBD    mov         ebx,edx
 0048BBBF    mov         edi,eax
 0048BBC1    test        ebx,ebx
>0048BBC3    jne         0048BBCB
 0048BBC5    mov         ebx,dword ptr ds:[7C7C54];gvar_007C7C54
 0048BBCB    push        0A
 0048BBCD    mov         eax,edi
 0048BBCF    call        @UStrToPWChar
 0048BBD4    push        eax
 0048BBD5    push        ebx
 0048BBD6    call        kernel32.FindResourceW
 0048BBDB    test        eax,eax
 0048BBDD    setne       al
 0048BBE0    test        al,al
>0048BBE2    je          0048BC31
 0048BBE4    push        edi
 0048BBE5    push        0A
 0048BBE7    mov         ecx,ebx
 0048BBE9    mov         dl,1
 0048BBEB    mov         eax,[00473500];TResourceStream
 0048BBF0    call        TResourceStream.Create
 0048BBF5    mov         dword ptr [ebp-4],eax
 0048BBF8    xor         eax,eax
 0048BBFA    push        ebp
 0048BBFB    push        48BC28
 0048BC00    push        dword ptr fs:[eax]
 0048BC03    mov         dword ptr fs:[eax],esp
 0048BC06    mov         edx,dword ptr [esi]
 0048BC08    mov         eax,dword ptr [ebp-4]
 0048BC0B    call        TStream.ReadComponent
 0048BC10    mov         dword ptr [esi],eax
 0048BC12    xor         eax,eax
 0048BC14    pop         edx
 0048BC15    pop         ecx
 0048BC16    pop         ecx
 0048BC17    mov         dword ptr fs:[eax],edx
 0048BC1A    push        48BC2F
 0048BC1F    mov         eax,dword ptr [ebp-4]
 0048BC22    call        TObject.Free
 0048BC27    ret
>0048BC28    jmp         @HandleFinally
>0048BC2D    jmp         0048BC1F
 0048BC2F    mov         al,1
 0048BC31    pop         edi
 0048BC32    pop         esi
 0048BC33    pop         ebx
 0048BC34    pop         ecx
 0048BC35    pop         ebp
 0048BC36    ret
*}
end;

//0048D1B0
procedure sub_0048D1B0;
begin
{*
 0048D1B0    push        ebx
 0048D1B1    push        ecx
 0048D1B2    call        00448910
 0048D1B7    call        @GetTls
 0048D1BC    mov         ebx,dword ptr [eax+10];{threadvar_16}
 0048D1C2    test        ebx,ebx
>0048D1C4    jne         0048D1DF
 0048D1C6    mov         dl,1
 0048D1C8    mov         eax,[0048C4A4];TList<System.Generics.Collections.TList<System.Classes.TComponent>>
 0048D1CD    call        004A6C84
 0048D1D2    mov         ebx,eax
 0048D1D4    call        @GetTls
 0048D1D9    mov         dword ptr [eax+10],ebx;{threadvar_16}
 0048D1DF    call        @GetTls
 0048D1E4    mov         eax,dword ptr [eax+0C];{threadvar_12}
 0048D1EA    mov         dword ptr [esp],eax
 0048D1ED    mov         edx,esp
 0048D1EF    lea         eax,[ebx+8]
 0048D1F2    call        0043489C
 0048D1F7    mov         dl,1
 0048D1F9    mov         eax,[0047E924];TList<System.Classes.TComponent>
 0048D1FE    call        TList<System.Actions.TContainedAction>.Create
 0048D203    mov         ebx,eax
 0048D205    call        @GetTls
 0048D20A    mov         dword ptr [eax+0C],ebx;{threadvar_12}
 0048D210    pop         edx
 0048D211    pop         ebx
 0048D212    ret
*}
end;

//0048D214
procedure sub_0048D214;
begin
{*
 0048D214    push        ebx
 0048D215    push        esi
 0048D216    push        edi
 0048D217    call        @GetTls
 0048D21C    mov         esi,dword ptr [eax+0C];{threadvar_12}
 0048D222    mov         edi,dword ptr [esi+8]
 0048D225    dec         edi
 0048D226    test        edi,edi
>0048D228    jl          0048D246
 0048D22A    inc         edi
 0048D22B    xor         ebx,ebx
 0048D22D    lea         eax,[esi+8]
 0048D230    mov         edx,ebx
 0048D232    call        00434534
 0048D237    mov         eax,dword ptr [esi+20]
 0048D23A    mov         eax,dword ptr [eax+ebx*4]
 0048D23D    mov         edx,dword ptr [eax]
 0048D23F    call        dword ptr [edx+10]
 0048D242    inc         ebx
 0048D243    dec         edi
>0048D244    jne         0048D22D
 0048D246    pop         edi
 0048D247    pop         esi
 0048D248    pop         ebx
 0048D249    ret
*}
end;

//0048D24C
procedure sub_0048D24C;
begin
{*
 0048D24C    push        ebx
 0048D24D    push        esi
 0048D24E    call        @GetTls
 0048D253    mov         eax,dword ptr [eax+0C];{threadvar_12}
 0048D259    call        TObject.Free
 0048D25E    call        @GetTls
 0048D263    mov         ebx,dword ptr [eax+10];{threadvar_16}
 0048D269    mov         esi,dword ptr [ebx+8]
 0048D26C    dec         esi
 0048D26D    lea         eax,[ebx+8]
 0048D270    mov         edx,esi
 0048D272    call        00434534
 0048D277    mov         eax,dword ptr [ebx+20]
 0048D27A    mov         esi,dword ptr [eax+esi*4]
 0048D27D    call        @GetTls
 0048D282    mov         dword ptr [eax+0C],esi;{threadvar_12}
 0048D288    mov         eax,dword ptr [ebx+8]
 0048D28B    dec         eax
 0048D28C    lea         edx,[ebx+8]
 0048D28F    mov         cl,1
 0048D291    xchg        eax,edx
 0048D292    call        00435200
 0048D297    cmp         dword ptr [ebx+8],0
>0048D29B    jne         0048D2B1
 0048D29D    call        @GetTls
 0048D2A2    xor         edx,edx
 0048D2A4    mov         dword ptr [eax+10],edx
 0048D2AA    mov         eax,ebx
 0048D2AC    call        TObject.Free
 0048D2B1    call        004488D4
 0048D2B6    pop         esi
 0048D2B7    pop         ebx
 0048D2B8    ret
*}
end;

//0048D2BC
function InitComponent(ClassType:TClass):Boolean;
begin
{*
 0048D2BC    push        ebp
 0048D2BD    mov         ebp,esp
 0048D2BF    push        0
 0048D2C1    push        ebx
 0048D2C2    push        esi
 0048D2C3    mov         esi,eax
 0048D2C5    xor         eax,eax
 0048D2C7    push        ebp
 0048D2C8    push        48D338
 0048D2CD    push        dword ptr fs:[eax]
 0048D2D0    mov         dword ptr fs:[eax],esp
 0048D2D3    xor         ebx,ebx
 0048D2D5    cmp         esi,dword ptr ds:[478C44];TComponent
>0048D2DB    je          0048D322
 0048D2DD    mov         eax,dword ptr [ebp+8]
 0048D2E0    cmp         esi,dword ptr [eax-8]
>0048D2E3    je          0048D322
 0048D2E5    mov         eax,dword ptr [ebp+8]
 0048D2E8    push        eax
 0048D2E9    mov         eax,esi
 0048D2EB    call        TObject.ClassParent
 0048D2F0    call        InitComponent
 0048D2F5    pop         ecx
 0048D2F6    mov         ebx,eax
 0048D2F8    lea         edx,[ebp-4]
 0048D2FB    mov         eax,esi
 0048D2FD    call        TObject.ClassName
 0048D302    mov         eax,dword ptr [ebp-4]
 0048D305    push        eax
 0048D306    mov         eax,esi
 0048D308    call        FindClassHInstance
 0048D30D    call        FindResourceHInstance
 0048D312    mov         edx,eax
 0048D314    mov         eax,dword ptr [ebp+8]
 0048D317    lea         ecx,[eax-4]
 0048D31A    pop         eax
 0048D31B    call        InternalReadComponentRes
 0048D320    or          bl,al
 0048D322    xor         eax,eax
 0048D324    pop         edx
 0048D325    pop         ecx
 0048D326    pop         ecx
 0048D327    mov         dword ptr fs:[eax],edx
 0048D32A    push        48D33F
 0048D32F    lea         eax,[ebp-4]
 0048D332    call        @UStrClr
 0048D337    ret
>0048D338    jmp         @HandleFinally
>0048D33D    jmp         0048D32F
 0048D33F    mov         eax,ebx
 0048D341    pop         esi
 0048D342    pop         ebx
 0048D343    pop         ecx
 0048D344    pop         ebp
 0048D345    ret
*}
end;

//0048D348
{*function sub_0048D348(?:TComponent; ?:TComponent):?;
begin
 0048D348    push        ebp
 0048D349    mov         ebp,esp
 0048D34B    add         esp,0FFFFFFF4
 0048D34E    mov         dword ptr [ebp-8],edx
 0048D351    mov         dword ptr [ebp-4],eax
 0048D354    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 0048D359    mov         edx,dword ptr [eax]
 0048D35B    call        dword ptr [edx+14]
 0048D35E    xor         edx,edx
 0048D360    push        ebp
 0048D361    push        48D403
 0048D366    push        dword ptr fs:[edx]
 0048D369    mov         dword ptr fs:[edx],esp
 0048D36C    mov         eax,dword ptr [ebp-4]
 0048D36F    movzx       eax,word ptr [eax+1C]
 0048D373    and         ax,word ptr ds:[48D414];0x201 gvar_0048D414
 0048D37A    movzx       edx,word ptr ds:[48D418];0x0 gvar_0048D418
 0048D381    cmp         dx,ax
 0048D384    sete        byte ptr [ebp-0A]
 0048D388    cmp         byte ptr [ebp-0A],0
>0048D38C    je          0048D393
 0048D38E    call        0048D1B0
 0048D393    xor         edx,edx
 0048D395    push        ebp
 0048D396    push        48D3E4
 0048D39B    push        dword ptr fs:[edx]
 0048D39E    mov         dword ptr fs:[edx],esp
 0048D3A1    mov         edx,dword ptr [ebp-4]
 0048D3A4    mov         edx,dword ptr [edx]
 0048D3A6    mov         eax,edx
 0048D3A8    push        ebp
 0048D3A9    call        InitComponent
 0048D3AE    pop         ecx
 0048D3AF    mov         byte ptr [ebp-9],al
 0048D3B2    cmp         byte ptr [ebp-9],0
>0048D3B6    je          0048D3C0
 0048D3B8    mov         eax,dword ptr [ebp-4]
 0048D3BB    call        0049E76C
 0048D3C0    cmp         byte ptr [ebp-0A],0
>0048D3C4    je          0048D3CB
 0048D3C6    call        0048D214
 0048D3CB    xor         eax,eax
 0048D3CD    pop         edx
 0048D3CE    pop         ecx
 0048D3CF    pop         ecx
 0048D3D0    mov         dword ptr fs:[eax],edx
 0048D3D3    push        48D3EB
 0048D3D8    cmp         byte ptr [ebp-0A],0
>0048D3DC    je          0048D3E3
 0048D3DE    call        0048D24C
 0048D3E3    ret
>0048D3E4    jmp         @HandleFinally
>0048D3E9    jmp         0048D3D8
 0048D3EB    xor         eax,eax
 0048D3ED    pop         edx
 0048D3EE    pop         ecx
 0048D3EF    pop         ecx
 0048D3F0    mov         dword ptr fs:[eax],edx
 0048D3F3    push        48D40A
 0048D3F8    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 0048D3FD    mov         edx,dword ptr [eax]
 0048D3FF    call        dword ptr [edx+18]
 0048D402    ret
>0048D403    jmp         @HandleFinally
>0048D408    jmp         0048D3F8
 0048D40A    movzx       eax,byte ptr [ebp-9]
 0048D40E    mov         esp,ebp
 0048D410    pop         ebp
 0048D411    ret
end;*}

//0048D41C
procedure WriteCollection(Stream:TStream; Collection:TCollection; CollectionOwner:TComponent);
begin
{*
 0048D41C    push        ebp
 0048D41D    mov         ebp,esp
 0048D41F    push        ecx
 0048D420    push        ebx
 0048D421    push        esi
 0048D422    mov         ebx,ecx
 0048D424    mov         esi,edx
 0048D426    push        400
 0048D42B    mov         ecx,eax
 0048D42D    mov         dl,1
 0048D42F    mov         eax,[00476148];TWriter
 0048D434    call        TFiler.Create
 0048D439    mov         dword ptr [ebp-4],eax
 0048D43C    mov         edx,ebx
 0048D43E    mov         eax,dword ptr [ebp-4]
 0048D441    mov         ecx,dword ptr [eax]
 0048D443    call        dword ptr [ecx]
 0048D445    mov         eax,dword ptr [ebp-4]
 0048D448    mov         dword ptr [eax+1C],ebx
 0048D44B    xor         eax,eax
 0048D44D    push        ebp
 0048D44E    push        48D479
 0048D453    push        dword ptr fs:[eax]
 0048D456    mov         dword ptr fs:[eax],esp
 0048D459    mov         edx,esi
 0048D45B    mov         eax,dword ptr [ebp-4]
 0048D45E    call        TWriter.WriteCollection
 0048D463    xor         eax,eax
 0048D465    pop         edx
 0048D466    pop         ecx
 0048D467    pop         ecx
 0048D468    mov         dword ptr fs:[eax],edx
 0048D46B    push        48D480
 0048D470    mov         eax,dword ptr [ebp-4]
 0048D473    call        TObject.Free
 0048D478    ret
>0048D479    jmp         @HandleFinally
>0048D47E    jmp         0048D470
 0048D480    pop         esi
 0048D481    pop         ebx
 0048D482    pop         ecx
 0048D483    pop         ebp
 0048D484    ret
*}
end;

//0048D488
function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;
begin
{*
 0048D488    push        ebp
 0048D489    mov         ebp,esp
 0048D48B    add         esp,0FFFFFFF4
 0048D48E    push        ebx
 0048D48F    push        esi
 0048D490    push        edi
 0048D491    mov         edi,ecx
 0048D493    mov         esi,edx
 0048D495    mov         ebx,eax
 0048D497    mov         byte ptr [ebp-1],0
 0048D49B    mov         edx,dword ptr [ebx]
 0048D49D    mov         eax,edx
 0048D49F    mov         ecx,dword ptr [esi]
 0048D4A1    mov         edx,ecx
 0048D4A3    cmp         edx,eax
>0048D4A5    jne         0048D594
 0048D4AB    mov         eax,ebx
 0048D4AD    call        TCollection.GetCount
 0048D4B2    push        eax
 0048D4B3    mov         eax,esi
 0048D4B5    call        TCollection.GetCount
 0048D4BA    pop         edx
 0048D4BB    cmp         edx,eax
>0048D4BD    jne         0048D594
 0048D4C3    mov         dl,1
 0048D4C5    mov         eax,[00472CE4];TMemoryStream
 0048D4CA    call        TObject.Create
 0048D4CF    mov         dword ptr [ebp-8],eax
 0048D4D2    xor         eax,eax
 0048D4D4    push        ebp
 0048D4D5    push        48D58D
 0048D4DA    push        dword ptr fs:[eax]
 0048D4DD    mov         dword ptr fs:[eax],esp
 0048D4E0    mov         ecx,edi
 0048D4E2    mov         edx,ebx
 0048D4E4    mov         eax,dword ptr [ebp-8]
 0048D4E7    call        WriteCollection
 0048D4EC    mov         dl,1
 0048D4EE    mov         eax,[00472CE4];TMemoryStream
 0048D4F3    call        TObject.Create
 0048D4F8    mov         dword ptr [ebp-0C],eax
 0048D4FB    xor         eax,eax
 0048D4FD    push        ebp
 0048D4FE    push        48D570
 0048D503    push        dword ptr fs:[eax]
 0048D506    mov         dword ptr fs:[eax],esp
 0048D509    mov         ecx,dword ptr [ebp+8]
 0048D50C    mov         edx,esi
 0048D50E    mov         eax,dword ptr [ebp-0C]
 0048D511    call        WriteCollection
 0048D516    mov         eax,dword ptr [ebp-8]
 0048D519    mov         edx,dword ptr [eax]
 0048D51B    call        dword ptr [edx]
 0048D51D    push        edx
 0048D51E    push        eax
 0048D51F    mov         eax,dword ptr [ebp-0C]
 0048D522    mov         edx,dword ptr [eax]
 0048D524    call        dword ptr [edx]
 0048D526    cmp         edx,dword ptr [esp+4]
>0048D52A    jne         0048D52F
 0048D52C    cmp         eax,dword ptr [esp]
 0048D52F    pop         edx
 0048D530    pop         eax
>0048D531    jne         0048D551
 0048D533    mov         eax,dword ptr [ebp-8]
 0048D536    mov         edx,dword ptr [eax]
 0048D538    call        dword ptr [edx]
 0048D53A    mov         ecx,eax
 0048D53C    mov         eax,dword ptr [ebp-0C]
 0048D53F    mov         edx,dword ptr [eax+4]
 0048D542    mov         eax,dword ptr [ebp-8]
 0048D545    mov         eax,dword ptr [eax+4]
 0048D548    call        CompareMem
 0048D54D    test        al,al
>0048D54F    jne         0048D555
 0048D551    xor         eax,eax
>0048D553    jmp         0048D557
 0048D555    mov         al,1
 0048D557    mov         byte ptr [ebp-1],al
 0048D55A    xor         eax,eax
 0048D55C    pop         edx
 0048D55D    pop         ecx
 0048D55E    pop         ecx
 0048D55F    mov         dword ptr fs:[eax],edx
 0048D562    push        48D577
 0048D567    mov         eax,dword ptr [ebp-0C]
 0048D56A    call        TObject.Free
 0048D56F    ret
>0048D570    jmp         @HandleFinally
>0048D575    jmp         0048D567
 0048D577    xor         eax,eax
 0048D579    pop         edx
 0048D57A    pop         ecx
 0048D57B    pop         ecx
 0048D57C    mov         dword ptr fs:[eax],edx
 0048D57F    push        48D594
 0048D584    mov         eax,dword ptr [ebp-8]
 0048D587    call        TObject.Free
 0048D58C    ret
>0048D58D    jmp         @HandleFinally
>0048D592    jmp         0048D584
 0048D594    movzx       eax,byte ptr [ebp-1]
 0048D598    pop         edi
 0048D599    pop         esi
 0048D59A    pop         ebx
 0048D59B    mov         esp,ebp
 0048D59D    pop         ebp
 0048D59E    ret         4
*}
end;

//0048D5A4
function TListEnumerator.GetCurrent:Pointer;
begin
{*
 0048D5A4    mov         edx,dword ptr [eax+4]
 0048D5A7    mov         eax,dword ptr [eax+8]
 0048D5AA    call        TList.Get
 0048D5AF    ret
*}
end;

//0048D5B0
destructor TList.Destroy();
begin
{*
 0048D5B0    push        ebx
 0048D5B1    push        esi
 0048D5B2    call        @BeforeDestruction
 0048D5B7    mov         ebx,edx
 0048D5B9    mov         esi,eax
 0048D5BB    mov         eax,esi
 0048D5BD    mov         edx,dword ptr [eax]
 0048D5BF    call        dword ptr [edx+8]
 0048D5C2    test        bl,bl
>0048D5C4    jle         0048D5CD
 0048D5C6    mov         eax,esi
 0048D5C8    call        @ClassDestroy
 0048D5CD    pop         esi
 0048D5CE    pop         ebx
 0048D5CF    ret
*}
end;

//0048D5D0
function TList.Add(Item:Pointer):Integer;
begin
{*
 0048D5D0    push        ebx
 0048D5D1    push        esi
 0048D5D2    push        edi
 0048D5D3    mov         edi,edx
 0048D5D5    mov         ebx,eax
 0048D5D7    mov         esi,dword ptr [ebx+8]
 0048D5DA    cmp         esi,dword ptr [ebx+0C]
>0048D5DD    jne         0048D5E5
 0048D5DF    mov         eax,ebx
 0048D5E1    mov         edx,dword ptr [eax]
 0048D5E3    call        dword ptr [edx]
 0048D5E5    mov         eax,dword ptr [ebx+4]
 0048D5E8    mov         dword ptr [eax+esi*4],edi
 0048D5EB    inc         dword ptr [ebx+8]
 0048D5EE    test        edi,edi
>0048D5F0    je          0048D609
 0048D5F2    mov         edx,dword ptr [ebx]
 0048D5F4    mov         eax,edx
 0048D5F6    cmp         eax,dword ptr ds:[46C204];TList
>0048D5FC    je          0048D609
 0048D5FE    xor         ecx,ecx
 0048D600    mov         edx,edi
 0048D602    mov         eax,ebx
 0048D604    mov         ebx,dword ptr [eax]
 0048D606    call        dword ptr [ebx+4]
 0048D609    mov         eax,esi
 0048D60B    pop         edi
 0048D60C    pop         esi
 0048D60D    pop         ebx
 0048D60E    ret
*}
end;

//0048D610
procedure TList.Clear;
begin
{*
 0048D610    push        ebx
 0048D611    mov         ebx,eax
 0048D613    xor         edx,edx
 0048D615    mov         eax,ebx
 0048D617    call        TList.SetCount
 0048D61C    xor         edx,edx
 0048D61E    mov         eax,ebx
 0048D620    call        TList.SetCapacity
 0048D625    pop         ebx
 0048D626    ret
*}
end;

//0048D628
procedure TList.Delete(Index:Integer);
begin
{*
 0048D628    push        ebx
 0048D629    push        esi
 0048D62A    push        edi
 0048D62B    mov         esi,edx
 0048D62D    mov         ebx,eax
 0048D62F    test        esi,esi
>0048D631    jl          0048D638
 0048D633    cmp         esi,dword ptr [ebx+8]
>0048D636    jl          0048D647
 0048D638    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0048D63E    mov         ecx,esi
 0048D640    mov         eax,dword ptr [ebx]
 0048D642    call        TList.Error
 0048D647    mov         eax,dword ptr [ebx+4]
 0048D64A    mov         edi,dword ptr [eax+esi*4]
 0048D64D    dec         dword ptr [ebx+8]
 0048D650    mov         eax,dword ptr [ebx+8]
 0048D653    cmp         esi,eax
>0048D655    jge         0048D671
 0048D657    sub         eax,esi
 0048D659    mov         ecx,eax
 0048D65B    add         ecx,ecx
 0048D65D    add         ecx,ecx
 0048D65F    mov         eax,dword ptr [ebx+4]
 0048D662    lea         edx,[eax+esi*4]
 0048D665    mov         eax,dword ptr [ebx+4]
 0048D668    lea         eax,[eax+esi*4+4]
 0048D66C    call        Move
 0048D671    test        edi,edi
>0048D673    je          0048D68C
 0048D675    mov         edx,dword ptr [ebx]
 0048D677    mov         eax,edx
 0048D679    cmp         eax,dword ptr ds:[46C204];TList
>0048D67F    je          0048D68C
 0048D681    mov         cl,2
 0048D683    mov         edx,edi
 0048D685    mov         eax,ebx
 0048D687    mov         ebx,dword ptr [eax]
 0048D689    call        dword ptr [ebx+4]
 0048D68C    pop         edi
 0048D68D    pop         esi
 0048D68E    pop         ebx
 0048D68F    ret
*}
end;

//0048D690
procedure TList.Error(Msg:string; Data:NativeInt);
begin
{*
 0048D690    push        ebp
 0048D691    mov         ebp,esp
 0048D693    add         esp,0FFFFFFF0
 0048D696    mov         dword ptr [ebp-8],ecx
 0048D699    mov         dword ptr [ebp-4],edx
 0048D69C    push        dword ptr [ebp+4]
 0048D69F    mov         eax,dword ptr [ebp-8]
 0048D6A2    mov         dword ptr [ebp-10],eax
 0048D6A5    mov         byte ptr [ebp-0C],0
 0048D6A9    lea         eax,[ebp-10]
 0048D6AC    push        eax
 0048D6AD    push        0
 0048D6AF    mov         ecx,dword ptr [ebp-4]
 0048D6B2    mov         dl,1
 0048D6B4    mov         eax,[004180BC];EListError
 0048D6B9    call        Exception.CreateFmt
>0048D6BE    jmp         @RaiseExcept
 0048D6C3    mov         esp,ebp
 0048D6C5    pop         ebp
 0048D6C6    ret
*}
end;

//0048D6C8
procedure TList.Error(Msg:PResStringRec; Data:NativeInt);
begin
{*
 0048D6C8    push        ebp
 0048D6C9    mov         ebp,esp
 0048D6CB    add         esp,0FFFFFFEC
 0048D6CE    push        ebx
 0048D6CF    xor         ebx,ebx
 0048D6D1    mov         dword ptr [ebp-14],ebx
 0048D6D4    mov         dword ptr [ebp-8],ecx
 0048D6D7    mov         dword ptr [ebp-4],edx
 0048D6DA    xor         eax,eax
 0048D6DC    push        ebp
 0048D6DD    push        48D730
 0048D6E2    push        dword ptr fs:[eax]
 0048D6E5    mov         dword ptr fs:[eax],esp
 0048D6E8    push        dword ptr [ebp+4]
 0048D6EB    mov         eax,dword ptr [ebp-8]
 0048D6EE    mov         dword ptr [ebp-10],eax
 0048D6F1    mov         byte ptr [ebp-0C],0
 0048D6F5    lea         eax,[ebp-10]
 0048D6F8    push        eax
 0048D6F9    push        0
 0048D6FB    lea         edx,[ebp-14]
 0048D6FE    mov         eax,dword ptr [ebp-4]
 0048D701    call        LoadResString
 0048D706    mov         ecx,dword ptr [ebp-14]
 0048D709    mov         dl,1
 0048D70B    mov         eax,[004180BC];EListError
 0048D710    call        Exception.CreateFmt
>0048D715    jmp         @RaiseExcept
 0048D71A    xor         eax,eax
 0048D71C    pop         edx
 0048D71D    pop         ecx
 0048D71E    pop         ecx
 0048D71F    mov         dword ptr fs:[eax],edx
 0048D722    push        48D737
 0048D727    lea         eax,[ebp-14]
 0048D72A    call        @UStrClr
 0048D72F    ret
>0048D730    jmp         @HandleFinally
>0048D735    jmp         0048D727
 0048D737    pop         ebx
 0048D738    mov         esp,ebp
 0048D73A    pop         ebp
 0048D73B    ret
*}
end;

//0048D73C
function TList.Expand:TList;
begin
{*
 0048D73C    push        ebx
 0048D73D    mov         ebx,eax
 0048D73F    mov         eax,dword ptr [ebx+8]
 0048D742    cmp         eax,dword ptr [ebx+0C]
>0048D745    jne         0048D74D
 0048D747    mov         eax,ebx
 0048D749    mov         edx,dword ptr [eax]
 0048D74B    call        dword ptr [edx]
 0048D74D    mov         eax,ebx
 0048D74F    pop         ebx
 0048D750    ret
*}
end;

//0048D754
function TList.Get(Index:Integer):Pointer;
begin
{*
 0048D754    push        ebx
 0048D755    push        esi
 0048D756    mov         esi,edx
 0048D758    mov         ebx,eax
 0048D75A    cmp         esi,dword ptr [ebx+8]
>0048D75D    jb          0048D76E
 0048D75F    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0048D765    mov         ecx,esi
 0048D767    mov         eax,dword ptr [ebx]
 0048D769    call        TList.Error
 0048D76E    mov         eax,dword ptr [ebx+4]
 0048D771    mov         eax,dword ptr [eax+esi*4]
 0048D774    pop         esi
 0048D775    pop         ebx
 0048D776    ret
*}
end;

//0048D778
procedure TList.Grow;
begin
{*
 0048D778    mov         edx,dword ptr [eax+0C]
 0048D77B    cmp         edx,40
>0048D77E    jle         0048D78E
 0048D780    mov         ecx,edx
 0048D782    test        ecx,ecx
>0048D784    jns         0048D789
 0048D786    add         ecx,3
 0048D789    sar         ecx,2
>0048D78C    jmp         0048D79F
 0048D78E    cmp         edx,8
>0048D791    jle         0048D79A
 0048D793    mov         ecx,10
>0048D798    jmp         0048D79F
 0048D79A    mov         ecx,4
 0048D79F    add         ecx,edx
 0048D7A1    mov         edx,ecx
 0048D7A3    call        TList.SetCapacity
 0048D7A8    ret
*}
end;

//0048D7AC
function TList.IndexOf(Item:Pointer):Integer;
begin
{*
 0048D7AC    push        esi
 0048D7AD    mov         ecx,dword ptr [eax+4]
 0048D7B0    mov         eax,dword ptr [eax+8]
 0048D7B3    dec         eax
 0048D7B4    test        eax,eax
>0048D7B6    jl          0048D7C6
 0048D7B8    inc         eax
 0048D7B9    xor         esi,esi
 0048D7BB    cmp         edx,dword ptr [ecx]
>0048D7BD    je          0048D7C9
 0048D7BF    add         ecx,4
 0048D7C2    inc         esi
 0048D7C3    dec         eax
>0048D7C4    jne         0048D7BB
 0048D7C6    or          esi,0FFFFFFFF
 0048D7C9    mov         eax,esi
 0048D7CB    pop         esi
 0048D7CC    ret
*}
end;

//0048D7D0
function TList.IndexOfItem(Item:Pointer; Direction:TDirection):Integer;
begin
{*
 0048D7D0    push        ebx
 0048D7D1    test        cl,cl
>0048D7D3    jne         0048D7DC
 0048D7D5    call        TList.IndexOf
>0048D7DA    jmp         0048D802
 0048D7DC    mov         ebx,dword ptr [eax+8]
 0048D7DF    test        ebx,ebx
>0048D7E1    jle         0048D7FF
 0048D7E3    mov         ecx,dword ptr [eax+4]
 0048D7E6    lea         ecx,[ecx+ebx*4-4]
 0048D7EA    dec         ebx
 0048D7EB    cmp         ebx,0
>0048D7EE    jl          0048D7FF
 0048D7F0    mov         eax,ebx
 0048D7F2    cmp         edx,dword ptr [ecx]
>0048D7F4    je          0048D802
 0048D7F6    sub         ecx,4
 0048D7F9    dec         eax
 0048D7FA    cmp         eax,0FFFFFFFF
>0048D7FD    jne         0048D7F2
 0048D7FF    or          eax,0FFFFFFFF
 0048D802    pop         ebx
 0048D803    ret
*}
end;

//0048D804
procedure TList.Insert(Index:Integer; Item:Pointer);
begin
{*
 0048D804    push        ebx
 0048D805    push        esi
 0048D806    push        edi
 0048D807    mov         edi,ecx
 0048D809    mov         esi,edx
 0048D80B    mov         ebx,eax
 0048D80D    test        esi,esi
>0048D80F    jl          0048D816
 0048D811    cmp         esi,dword ptr [ebx+8]
>0048D814    jle         0048D825
 0048D816    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0048D81C    mov         ecx,esi
 0048D81E    mov         eax,dword ptr [ebx]
 0048D820    call        TList.Error
 0048D825    mov         eax,dword ptr [ebx+8]
 0048D828    cmp         eax,dword ptr [ebx+0C]
>0048D82B    jne         0048D833
 0048D82D    mov         eax,ebx
 0048D82F    mov         edx,dword ptr [eax]
 0048D831    call        dword ptr [edx]
 0048D833    mov         eax,dword ptr [ebx+8]
 0048D836    cmp         esi,eax
>0048D838    jge         0048D854
 0048D83A    sub         eax,esi
 0048D83C    mov         ecx,eax
 0048D83E    add         ecx,ecx
 0048D840    add         ecx,ecx
 0048D842    mov         eax,dword ptr [ebx+4]
 0048D845    lea         edx,[eax+esi*4+4]
 0048D849    mov         eax,dword ptr [ebx+4]
 0048D84C    lea         eax,[eax+esi*4]
 0048D84F    call        Move
 0048D854    mov         eax,dword ptr [ebx+4]
 0048D857    mov         dword ptr [eax+esi*4],edi
 0048D85A    inc         dword ptr [ebx+8]
 0048D85D    test        edi,edi
>0048D85F    je          0048D878
 0048D861    mov         edx,dword ptr [ebx]
 0048D863    mov         eax,edx
 0048D865    cmp         eax,dword ptr ds:[46C204];TList
>0048D86B    je          0048D878
 0048D86D    xor         ecx,ecx
 0048D86F    mov         edx,edi
 0048D871    mov         eax,ebx
 0048D873    mov         ebx,dword ptr [eax]
 0048D875    call        dword ptr [ebx+4]
 0048D878    pop         edi
 0048D879    pop         esi
 0048D87A    pop         ebx
 0048D87B    ret
*}
end;

//0048D87C
function TList.Last:Pointer;
begin
{*
 0048D87C    mov         edx,dword ptr [eax+8]
 0048D87F    test        edx,edx
>0048D881    jle         0048D88B
 0048D883    mov         ecx,dword ptr [eax+4]
 0048D886    mov         eax,dword ptr [ecx+edx*4-4]
 0048D88A    ret
 0048D88B    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0048D891    xor         ecx,ecx
 0048D893    mov         eax,dword ptr [eax]
 0048D895    call        TList.Error
 0048D89A    xor         eax,eax
 0048D89C    ret
*}
end;

//0048D8A0
procedure TList.Move(CurIndex:Integer; NewIndex:Integer);
begin
{*
 0048D8A0    push        ebx
 0048D8A1    push        esi
 0048D8A2    push        edi
 0048D8A3    push        ebp
 0048D8A4    mov         esi,ecx
 0048D8A6    mov         edi,edx
 0048D8A8    mov         ebx,eax
 0048D8AA    cmp         esi,edi
>0048D8AC    je          0048D8F3
 0048D8AE    test        esi,esi
>0048D8B0    jl          0048D8B7
 0048D8B2    cmp         esi,dword ptr [ebx+8]
>0048D8B5    jl          0048D8C6
 0048D8B7    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0048D8BD    mov         ecx,esi
 0048D8BF    mov         eax,dword ptr [ebx]
 0048D8C1    call        TList.Error
 0048D8C6    mov         edx,edi
 0048D8C8    mov         eax,ebx
 0048D8CA    call        TList.Get
 0048D8CF    mov         ebp,eax
 0048D8D1    mov         eax,dword ptr [ebx+4]
 0048D8D4    xor         edx,edx
 0048D8D6    mov         dword ptr [eax+edi*4],edx
 0048D8D9    mov         edx,edi
 0048D8DB    mov         eax,ebx
 0048D8DD    call        TList.Delete
 0048D8E2    xor         ecx,ecx
 0048D8E4    mov         edx,esi
 0048D8E6    mov         eax,ebx
 0048D8E8    call        TList.Insert
 0048D8ED    mov         eax,dword ptr [ebx+4]
 0048D8F0    mov         dword ptr [eax+esi*4],ebp
 0048D8F3    pop         ebp
 0048D8F4    pop         edi
 0048D8F5    pop         esi
 0048D8F6    pop         ebx
 0048D8F7    ret
*}
end;

//0048D8F8
procedure TList.Put(Index:Integer; Item:Pointer);
begin
{*
 0048D8F8    push        ebx
 0048D8F9    push        esi
 0048D8FA    push        edi
 0048D8FB    mov         edi,ecx
 0048D8FD    mov         esi,edx
 0048D8FF    mov         ebx,eax
 0048D901    test        esi,esi
>0048D903    jl          0048D90A
 0048D905    cmp         esi,dword ptr [ebx+8]
>0048D908    jl          0048D919
 0048D90A    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0048D910    mov         ecx,esi
 0048D912    mov         eax,dword ptr [ebx]
 0048D914    call        TList.Error
 0048D919    mov         eax,dword ptr [ebx+4]
 0048D91C    mov         eax,dword ptr [eax+esi*4]
 0048D91F    cmp         edi,eax
>0048D921    je          0048D953
 0048D923    mov         edx,dword ptr [ebx+4]
 0048D926    mov         dword ptr [edx+esi*4],edi
 0048D929    mov         ecx,dword ptr [ebx]
 0048D92B    mov         edx,ecx
 0048D92D    cmp         edx,dword ptr ds:[46C204];TList
>0048D933    je          0048D953
 0048D935    test        eax,eax
>0048D937    je          0048D944
 0048D939    mov         cl,2
 0048D93B    mov         edx,eax
 0048D93D    mov         eax,ebx
 0048D93F    mov         esi,dword ptr [eax]
 0048D941    call        dword ptr [esi+4]
 0048D944    test        edi,edi
>0048D946    je          0048D953
 0048D948    xor         ecx,ecx
 0048D94A    mov         edx,edi
 0048D94C    mov         eax,ebx
 0048D94E    mov         ebx,dword ptr [eax]
 0048D950    call        dword ptr [ebx+4]
 0048D953    pop         edi
 0048D954    pop         esi
 0048D955    pop         ebx
 0048D956    ret
*}
end;

//0048D958
function TList.RemoveItem(Item:Pointer; Direction:TDirection):Integer;
begin
{*
 0048D958    push        ebx
 0048D959    push        esi
 0048D95A    mov         ebx,eax
 0048D95C    mov         eax,ebx
 0048D95E    call        TList.IndexOfItem
 0048D963    mov         esi,eax
 0048D965    test        esi,esi
>0048D967    jl          0048D972
 0048D969    mov         edx,esi
 0048D96B    mov         eax,ebx
 0048D96D    call        TList.Delete
 0048D972    mov         eax,esi
 0048D974    pop         esi
 0048D975    pop         ebx
 0048D976    ret
*}
end;

//0048D978
procedure TList.SetCapacity(NewCapacity:Integer);
begin
{*
 0048D978    push        ebx
 0048D979    push        esi
 0048D97A    mov         esi,edx
 0048D97C    mov         ebx,eax
 0048D97E    cmp         esi,dword ptr [ebx+8]
>0048D981    jge         0048D992
 0048D983    mov         edx,dword ptr ds:[7C4908];^SResString133:TResStringRec
 0048D989    mov         ecx,esi
 0048D98B    mov         eax,dword ptr [ebx]
 0048D98D    call        TList.Error
 0048D992    cmp         esi,dword ptr [ebx+0C]
>0048D995    je          0048D9B1
 0048D997    push        esi
 0048D998    lea         eax,[ebx+4]
 0048D99B    mov         ecx,1
 0048D9A0    mov         edx,dword ptr ds:[46BF4C];TPointerList
 0048D9A6    call        @DynArraySetLength
 0048D9AB    add         esp,4
 0048D9AE    mov         dword ptr [ebx+0C],esi
 0048D9B1    pop         esi
 0048D9B2    pop         ebx
 0048D9B3    ret
*}
end;

//0048D9B4
procedure TList.SetCount(NewCount:Integer);
begin
{*
 0048D9B4    push        ebx
 0048D9B5    push        esi
 0048D9B6    push        edi
 0048D9B7    add         esp,0FFFFFFF8
 0048D9BA    mov         esi,edx
 0048D9BC    mov         ebx,eax
 0048D9BE    test        esi,esi
>0048D9C0    jge         0048D9D1
 0048D9C2    mov         edx,dword ptr ds:[7C46F4];^SResString134:TResStringRec
 0048D9C8    mov         ecx,esi
 0048D9CA    mov         eax,dword ptr [ebx]
 0048D9CC    call        TList.Error
 0048D9D1    cmp         esi,dword ptr [ebx+8]
>0048D9D4    je          0048DA47
 0048D9D6    cmp         esi,dword ptr [ebx+0C]
>0048D9D9    jle         0048D9E4
 0048D9DB    mov         edx,esi
 0048D9DD    mov         eax,ebx
 0048D9DF    call        TList.SetCapacity
 0048D9E4    mov         eax,dword ptr [ebx+8]
 0048D9E7    cmp         esi,eax
>0048D9E9    jle         0048DA05
 0048D9EB    mov         edx,dword ptr [ebx+4]
 0048D9EE    lea         edx,[edx+eax*4]
 0048D9F1    mov         ecx,esi
 0048D9F3    sub         ecx,eax
 0048D9F5    mov         eax,ecx
 0048D9F7    add         eax,eax
 0048D9F9    add         eax,eax
 0048D9FB    xor         ecx,ecx
 0048D9FD    xchg        eax,edx
 0048D9FE    call        @FillChar
>0048DA03    jmp         0048DA44
 0048DA05    mov         ecx,dword ptr [ebx]
 0048DA07    mov         edx,ecx
 0048DA09    cmp         edx,dword ptr ds:[46C204];TList
>0048DA0F    je          0048DA44
 0048DA11    dec         eax
 0048DA12    mov         edx,esi
 0048DA14    sub         edx,eax
>0048DA16    jg          0048DA44
 0048DA18    dec         edx
 0048DA19    mov         dword ptr [esp+4],edx
 0048DA1D    mov         dword ptr [esp],eax
 0048DA20    dec         dword ptr [ebx+8]
 0048DA23    mov         eax,dword ptr [ebx+4]
 0048DA26    mov         edx,dword ptr [esp]
 0048DA29    mov         eax,dword ptr [eax+edx*4]
 0048DA2C    test        eax,eax
>0048DA2E    je          0048DA3B
 0048DA30    mov         cl,2
 0048DA32    mov         edx,eax
 0048DA34    mov         eax,ebx
 0048DA36    mov         edi,dword ptr [eax]
 0048DA38    call        dword ptr [edi+4]
 0048DA3B    dec         dword ptr [esp]
 0048DA3E    inc         dword ptr [esp+4]
>0048DA42    jne         0048DA20
 0048DA44    mov         dword ptr [ebx+8],esi
 0048DA47    pop         ecx
 0048DA48    pop         edx
 0048DA49    pop         edi
 0048DA4A    pop         esi
 0048DA4B    pop         ebx
 0048DA4C    ret
*}
end;

//0048DA50
procedure QuickSort(SortList:TPointerList; L:Integer; R:Integer; SCompare:TListSortCompareFunc);
begin
{*
 0048DA50    push        ebp
 0048DA51    mov         ebp,esp
 0048DA53    add         esp,0FFFFFFF0
 0048DA56    push        ebx
 0048DA57    push        esi
 0048DA58    push        edi
 0048DA59    mov         dword ptr [ebp-0C],ecx
 0048DA5C    mov         dword ptr [ebp-8],edx
 0048DA5F    mov         dword ptr [ebp-4],eax
 0048DA62    mov         eax,dword ptr [ebp-4]
 0048DA65    call        @DynArrayAddRef
 0048DA6A    mov         eax,dword ptr [ebp+8]
 0048DA6D    call        @IntfAddRef
 0048DA72    xor         eax,eax
 0048DA74    push        ebp
 0048DA75    push        48DB33
 0048DA7A    push        dword ptr fs:[eax]
 0048DA7D    mov         dword ptr fs:[eax],esp
 0048DA80    mov         ebx,dword ptr [ebp-8]
 0048DA83    mov         esi,dword ptr [ebp-0C]
 0048DA86    mov         eax,dword ptr [ebp-8]
 0048DA89    add         eax,dword ptr [ebp-0C]
 0048DA8C    shr         eax,1
 0048DA8E    mov         edx,dword ptr [ebp-4]
 0048DA91    mov         eax,dword ptr [edx+eax*4]
 0048DA94    mov         dword ptr [ebp-10],eax
>0048DA97    jmp         0048DA9A
 0048DA99    inc         ebx
 0048DA9A    mov         eax,dword ptr [ebp-4]
 0048DA9D    mov         edx,dword ptr [eax+ebx*4]
 0048DAA0    mov         ecx,dword ptr [ebp-10]
 0048DAA3    mov         eax,dword ptr [ebp+8]
 0048DAA6    mov         edi,dword ptr [eax]
 0048DAA8    call        dword ptr [edi+0C]
 0048DAAB    test        eax,eax
>0048DAAD    jl          0048DA99
>0048DAAF    jmp         0048DAB2
 0048DAB1    dec         esi
 0048DAB2    mov         eax,dword ptr [ebp-4]
 0048DAB5    mov         edx,dword ptr [eax+esi*4]
 0048DAB8    mov         ecx,dword ptr [ebp-10]
 0048DABB    mov         eax,dword ptr [ebp+8]
 0048DABE    mov         edi,dword ptr [eax]
 0048DAC0    call        dword ptr [edi+0C]
 0048DAC3    test        eax,eax
>0048DAC5    jg          0048DAB1
 0048DAC7    cmp         esi,ebx
>0048DAC9    jl          0048DAE9
 0048DACB    cmp         esi,ebx
>0048DACD    je          0048DAE7
 0048DACF    mov         eax,dword ptr [ebp-4]
 0048DAD2    mov         eax,dword ptr [eax+ebx*4]
 0048DAD5    mov         edx,dword ptr [ebp-4]
 0048DAD8    mov         edx,dword ptr [edx+esi*4]
 0048DADB    mov         ecx,dword ptr [ebp-4]
 0048DADE    mov         dword ptr [ecx+ebx*4],edx
 0048DAE1    mov         edx,dword ptr [ebp-4]
 0048DAE4    mov         dword ptr [edx+esi*4],eax
 0048DAE7    inc         ebx
 0048DAE8    dec         esi
 0048DAE9    cmp         esi,ebx
>0048DAEB    jge         0048DA9A
 0048DAED    cmp         esi,dword ptr [ebp-8]
>0048DAF0    jle         0048DB03
 0048DAF2    mov         eax,dword ptr [ebp+8]
 0048DAF5    push        eax
 0048DAF6    mov         ecx,esi
 0048DAF8    mov         edx,dword ptr [ebp-8]
 0048DAFB    mov         eax,dword ptr [ebp-4]
 0048DAFE    call        QuickSort
 0048DB03    mov         dword ptr [ebp-8],ebx
 0048DB06    cmp         ebx,dword ptr [ebp-0C]
>0048DB09    jl          0048DA80
 0048DB0F    xor         eax,eax
 0048DB11    pop         edx
 0048DB12    pop         ecx
 0048DB13    pop         ecx
 0048DB14    mov         dword ptr fs:[eax],edx
 0048DB17    push        48DB3A
 0048DB1C    lea         eax,[ebp-4]
 0048DB1F    mov         edx,dword ptr ds:[46BF4C];TPointerList
 0048DB25    call        @DynArrayClear
 0048DB2A    lea         eax,[ebp+8]
 0048DB2D    call        @IntfClear
 0048DB32    ret
>0048DB33    jmp         @HandleFinally
>0048DB38    jmp         0048DB1C
 0048DB3A    pop         edi
 0048DB3B    pop         esi
 0048DB3C    pop         ebx
 0048DB3D    mov         esp,ebp
 0048DB3F    pop         ebp
 0048DB40    ret         4
*}
end;

//0048DCB4
function TList.Sort$1846$ActRec.$0$Body(Item1:Pointer; Item2:Pointer):Integer;
begin
{*
 0048DCB4    push        ebx
 0048DCB5    mov         ebx,eax
 0048DCB7    mov         eax,edx
 0048DCB9    mov         edx,ecx
 0048DCBB    call        dword ptr [ebx+0C]
 0048DCBE    pop         ebx
 0048DCBF    ret
*}
end;

//0048DCC0
procedure TList.Sort(Compare:TListSortCompare);
begin
{*
 0048DCC0    push        ebp
 0048DCC1    mov         ebp,esp
 0048DCC3    push        0
 0048DCC5    push        ebx
 0048DCC6    push        esi
 0048DCC7    push        edi
 0048DCC8    mov         edi,edx
 0048DCCA    mov         esi,eax
 0048DCCC    xor         eax,eax
 0048DCCE    push        ebp
 0048DCCF    push        48DD2F
 0048DCD4    push        dword ptr fs:[eax]
 0048DCD7    mov         dword ptr fs:[eax],esp
 0048DCDA    mov         dl,1
 0048DCDC    mov         eax,[0048DBE8];TList.Sort$122$ActRec
 0048DCE1    call        TObject.Create
 0048DCE6    mov         ebx,eax
 0048DCE8    lea         eax,[ebp-4]
 0048DCEB    mov         edx,ebx
 0048DCED    test        edx,edx
>0048DCEF    je          0048DCF4
 0048DCF1    sub         edx,0FFFFFFF8
 0048DCF4    call        @IntfCopy
 0048DCF9    mov         dword ptr [ebx+0C],edi
 0048DCFC    mov         eax,dword ptr [esi+8]
 0048DCFF    cmp         eax,1
>0048DD02    jle         0048DD19
 0048DD04    test        ebx,ebx
>0048DD06    je          0048DD0B
 0048DD08    sub         ebx,0FFFFFFF0
 0048DD0B    push        ebx
 0048DD0C    mov         ecx,eax
 0048DD0E    dec         ecx
 0048DD0F    xor         edx,edx
 0048DD11    mov         eax,dword ptr [esi+4]
 0048DD14    call        QuickSort
 0048DD19    xor         eax,eax
 0048DD1B    pop         edx
 0048DD1C    pop         ecx
 0048DD1D    pop         ecx
 0048DD1E    mov         dword ptr fs:[eax],edx
 0048DD21    push        48DD36
 0048DD26    lea         eax,[ebp-4]
 0048DD29    call        @IntfClear
 0048DD2E    ret
>0048DD2F    jmp         @HandleFinally
>0048DD34    jmp         0048DD26
 0048DD36    pop         edi
 0048DD37    pop         esi
 0048DD38    pop         ebx
 0048DD39    pop         ecx
 0048DD3A    pop         ebp
 0048DD3B    ret
*}
end;

//0048DD3C
function TList.ExtractItem(Item:Pointer; Direction:TDirection):Pointer;
begin
{*
 0048DD3C    push        ebx
 0048DD3D    push        esi
 0048DD3E    push        edi
 0048DD3F    push        ecx
 0048DD40    mov         byte ptr [esp],cl
 0048DD43    mov         edi,edx
 0048DD45    mov         ebx,eax
 0048DD47    xor         esi,esi
 0048DD49    movzx       ecx,byte ptr [esp]
 0048DD4D    mov         edx,edi
 0048DD4F    mov         eax,ebx
 0048DD51    call        TList.IndexOfItem
 0048DD56    test        eax,eax
>0048DD58    jl          0048DD84
 0048DD5A    mov         esi,edi
 0048DD5C    mov         edx,dword ptr [ebx+4]
 0048DD5F    xor         ecx,ecx
 0048DD61    mov         dword ptr [edx+eax*4],ecx
 0048DD64    mov         edx,eax
 0048DD66    mov         eax,ebx
 0048DD68    call        TList.Delete
 0048DD6D    mov         edx,dword ptr [ebx]
 0048DD6F    mov         eax,edx
 0048DD71    cmp         eax,dword ptr ds:[46C204];TList
>0048DD77    je          0048DD84
 0048DD79    mov         cl,1
 0048DD7B    mov         edx,esi
 0048DD7D    mov         eax,ebx
 0048DD7F    mov         ebx,dword ptr [eax]
 0048DD81    call        dword ptr [ebx+4]
 0048DD84    mov         eax,esi
 0048DD86    pop         edx
 0048DD87    pop         edi
 0048DD88    pop         esi
 0048DD89    pop         ebx
 0048DD8A    ret
*}
end;

//0048DD8C
procedure TList.Notify(Ptr:Pointer; Action:TListNotification);
begin
{*
 0048DD8C    ret
*}
end;

//0048DD90
procedure TList.Assign(ListA:TList; AOperator:TListAssignOp; ListB:TList);
begin
{*
 0048DD90    push        ebp
 0048DD91    mov         ebp,esp
 0048DD93    add         esp,0FFFFFFF4
 0048DD96    push        ebx
 0048DD97    push        esi
 0048DD98    push        edi
 0048DD99    mov         ebx,ecx
 0048DD9B    mov         dword ptr [ebp-4],edx
 0048DD9E    mov         esi,eax
 0048DDA0    mov         eax,dword ptr [ebp+8]
 0048DDA3    test        eax,eax
>0048DDA5    je          0048DDB9
 0048DDA7    mov         edi,eax
 0048DDA9    push        0
 0048DDAB    xor         ecx,ecx
 0048DDAD    mov         edx,dword ptr [ebp-4]
 0048DDB0    mov         eax,esi
 0048DDB2    call        TList.Assign
>0048DDB7    jmp         0048DDBC
 0048DDB9    mov         edi,dword ptr [ebp-4]
 0048DDBC    movzx       eax,bl
 0048DDBF    cmp         eax,5
>0048DDC2    ja          0048E050
 0048DDC8    jmp         dword ptr [eax*4+48DDCF]
 0048DDC8    dd          0048DDE7
 0048DDC8    dd          0048DE27
 0048DDC8    dd          0048DE5D
 0048DDC8    dd          0048DEA1
 0048DDC8    dd          0048DF90
 0048DDC8    dd          0048DFC6
 0048DDE7    mov         eax,esi
 0048DDE9    mov         edx,dword ptr [eax]
 0048DDEB    call        dword ptr [edx+8]
 0048DDEE    mov         edx,dword ptr [edi+0C]
 0048DDF1    mov         eax,esi
 0048DDF3    call        TList.SetCapacity
 0048DDF8    mov         eax,dword ptr [edi+8]
 0048DDFB    dec         eax
 0048DDFC    test        eax,eax
>0048DDFE    jl          0048E050
 0048DE04    inc         eax
 0048DE05    mov         dword ptr [ebp-0C],eax
 0048DE08    xor         ebx,ebx
 0048DE0A    mov         edx,ebx
 0048DE0C    mov         eax,edi
 0048DE0E    call        TList.Get
 0048DE13    mov         edx,eax
 0048DE15    mov         eax,esi
 0048DE17    call        TList.Add
 0048DE1C    inc         ebx
 0048DE1D    dec         dword ptr [ebp-0C]
>0048DE20    jne         0048DE0A
>0048DE22    jmp         0048E050
 0048DE27    mov         ebx,dword ptr [esi+8]
 0048DE2A    dec         ebx
 0048DE2B    cmp         ebx,0
>0048DE2E    jl          0048E050
 0048DE34    mov         edx,ebx
 0048DE36    mov         eax,esi
 0048DE38    call        TList.Get
 0048DE3D    mov         edx,eax
 0048DE3F    mov         eax,edi
 0048DE41    call        TList.IndexOf
 0048DE46    inc         eax
>0048DE47    jne         0048DE52
 0048DE49    mov         edx,ebx
 0048DE4B    mov         eax,esi
 0048DE4D    call        TList.Delete
 0048DE52    dec         ebx
 0048DE53    cmp         ebx,0FFFFFFFF
>0048DE56    jne         0048DE34
>0048DE58    jmp         0048E050
 0048DE5D    mov         eax,dword ptr [edi+8]
 0048DE60    dec         eax
 0048DE61    test        eax,eax
>0048DE63    jl          0048E050
 0048DE69    inc         eax
 0048DE6A    mov         dword ptr [ebp-0C],eax
 0048DE6D    xor         ebx,ebx
 0048DE6F    mov         edx,ebx
 0048DE71    mov         eax,edi
 0048DE73    call        TList.Get
 0048DE78    mov         edx,eax
 0048DE7A    mov         eax,esi
 0048DE7C    call        TList.IndexOf
 0048DE81    inc         eax
>0048DE82    jne         0048DE96
 0048DE84    mov         edx,ebx
 0048DE86    mov         eax,edi
 0048DE88    call        TList.Get
 0048DE8D    mov         edx,eax
 0048DE8F    mov         eax,esi
 0048DE91    call        TList.Add
 0048DE96    inc         ebx
 0048DE97    dec         dword ptr [ebp-0C]
>0048DE9A    jne         0048DE6F
>0048DE9C    jmp         0048E050
 0048DEA1    mov         dl,1
 0048DEA3    mov         eax,[0046C204];TList
 0048DEA8    call        TObject.Create
 0048DEAD    mov         dword ptr [ebp-8],eax
 0048DEB0    xor         eax,eax
 0048DEB2    push        ebp
 0048DEB3    push        48DF89
 0048DEB8    push        dword ptr fs:[eax]
 0048DEBB    mov         dword ptr fs:[eax],esp
 0048DEBE    mov         edx,dword ptr [edi+8]
 0048DEC1    mov         eax,dword ptr [ebp-8]
 0048DEC4    call        TList.SetCapacity
 0048DEC9    mov         eax,dword ptr [edi+8]
 0048DECC    dec         eax
 0048DECD    test        eax,eax
>0048DECF    jl          0048DF05
 0048DED1    inc         eax
 0048DED2    mov         dword ptr [ebp-0C],eax
 0048DED5    xor         ebx,ebx
 0048DED7    mov         edx,ebx
 0048DED9    mov         eax,edi
 0048DEDB    call        TList.Get
 0048DEE0    mov         edx,eax
 0048DEE2    mov         eax,esi
 0048DEE4    call        TList.IndexOf
 0048DEE9    inc         eax
>0048DEEA    jne         0048DEFF
 0048DEEC    mov         edx,ebx
 0048DEEE    mov         eax,edi
 0048DEF0    call        TList.Get
 0048DEF5    mov         edx,eax
 0048DEF7    mov         eax,dword ptr [ebp-8]
 0048DEFA    call        TList.Add
 0048DEFF    inc         ebx
 0048DF00    dec         dword ptr [ebp-0C]
>0048DF03    jne         0048DED7
 0048DF05    mov         ebx,dword ptr [esi+8]
 0048DF08    dec         ebx
 0048DF09    cmp         ebx,0
>0048DF0C    jl          0048DF32
 0048DF0E    mov         edx,ebx
 0048DF10    mov         eax,esi
 0048DF12    call        TList.Get
 0048DF17    mov         edx,eax
 0048DF19    mov         eax,edi
 0048DF1B    call        TList.IndexOf
 0048DF20    inc         eax
>0048DF21    je          0048DF2C
 0048DF23    mov         edx,ebx
 0048DF25    mov         eax,esi
 0048DF27    call        TList.Delete
 0048DF2C    dec         ebx
 0048DF2D    cmp         ebx,0FFFFFFFF
>0048DF30    jne         0048DF0E
 0048DF32    mov         ebx,dword ptr [esi+8]
 0048DF35    mov         eax,dword ptr [ebp-8]
 0048DF38    add         ebx,dword ptr [eax+8]
 0048DF3B    cmp         ebx,dword ptr [esi+0C]
>0048DF3E    jle         0048DF49
 0048DF40    mov         edx,ebx
 0048DF42    mov         eax,esi
 0048DF44    call        TList.SetCapacity
 0048DF49    mov         eax,dword ptr [ebp-8]
 0048DF4C    mov         eax,dword ptr [eax+8]
 0048DF4F    dec         eax
 0048DF50    test        eax,eax
>0048DF52    jl          0048DF73
 0048DF54    inc         eax
 0048DF55    mov         dword ptr [ebp-0C],eax
 0048DF58    xor         ebx,ebx
 0048DF5A    mov         edx,ebx
 0048DF5C    mov         eax,dword ptr [ebp-8]
 0048DF5F    call        TList.Get
 0048DF64    mov         edx,eax
 0048DF66    mov         eax,esi
 0048DF68    call        TList.Add
 0048DF6D    inc         ebx
 0048DF6E    dec         dword ptr [ebp-0C]
>0048DF71    jne         0048DF5A
 0048DF73    xor         eax,eax
 0048DF75    pop         edx
 0048DF76    pop         ecx
 0048DF77    pop         ecx
 0048DF78    mov         dword ptr fs:[eax],edx
 0048DF7B    push        48E050
 0048DF80    mov         eax,dword ptr [ebp-8]
 0048DF83    call        TObject.Free
 0048DF88    ret
>0048DF89    jmp         @HandleFinally
>0048DF8E    jmp         0048DF80
 0048DF90    mov         ebx,dword ptr [esi+8]
 0048DF93    dec         ebx
 0048DF94    cmp         ebx,0
>0048DF97    jl          0048E050
 0048DF9D    mov         edx,ebx
 0048DF9F    mov         eax,esi
 0048DFA1    call        TList.Get
 0048DFA6    mov         edx,eax
 0048DFA8    mov         eax,edi
 0048DFAA    call        TList.IndexOf
 0048DFAF    inc         eax
>0048DFB0    je          0048DFBB
 0048DFB2    mov         edx,ebx
 0048DFB4    mov         eax,esi
 0048DFB6    call        TList.Delete
 0048DFBB    dec         ebx
 0048DFBC    cmp         ebx,0FFFFFFFF
>0048DFBF    jne         0048DF9D
>0048DFC1    jmp         0048E050
 0048DFC6    mov         dl,1
 0048DFC8    mov         eax,[0046C204];TList
 0048DFCD    call        TObject.Create
 0048DFD2    mov         dword ptr [ebp-8],eax
 0048DFD5    xor         eax,eax
 0048DFD7    push        ebp
 0048DFD8    push        48E049
 0048DFDD    push        dword ptr fs:[eax]
 0048DFE0    mov         dword ptr fs:[eax],esp
 0048DFE3    mov         edx,dword ptr [edi+8]
 0048DFE6    mov         eax,dword ptr [ebp-8]
 0048DFE9    call        TList.SetCapacity
 0048DFEE    mov         ebx,dword ptr [edi+8]
 0048DFF1    dec         ebx
 0048DFF2    cmp         ebx,0
>0048DFF5    jl          0048E025
 0048DFF7    mov         edx,ebx
 0048DFF9    mov         eax,edi
 0048DFFB    call        TList.Get
 0048E000    mov         edx,eax
 0048E002    mov         eax,esi
 0048E004    call        TList.IndexOf
 0048E009    inc         eax
>0048E00A    jne         0048E01F
 0048E00C    mov         edx,ebx
 0048E00E    mov         eax,edi
 0048E010    call        TList.Get
 0048E015    mov         edx,eax
 0048E017    mov         eax,dword ptr [ebp-8]
 0048E01A    call        TList.Add
 0048E01F    dec         ebx
 0048E020    cmp         ebx,0FFFFFFFF
>0048E023    jne         0048DFF7
 0048E025    push        0
 0048E027    xor         ecx,ecx
 0048E029    mov         edx,dword ptr [ebp-8]
 0048E02C    mov         eax,esi
 0048E02E    call        TList.Assign
 0048E033    xor         eax,eax
 0048E035    pop         edx
 0048E036    pop         ecx
 0048E037    pop         ecx
 0048E038    mov         dword ptr fs:[eax],edx
 0048E03B    push        48E050
 0048E040    mov         eax,dword ptr [ebp-8]
 0048E043    call        TObject.Free
 0048E048    ret
>0048E049    jmp         @HandleFinally
>0048E04E    jmp         0048E040
 0048E050    pop         edi
 0048E051    pop         esi
 0048E052    pop         ebx
 0048E053    mov         esp,ebp
 0048E055    pop         ebp
 0048E056    ret         4
*}
end;

//0048E05C
constructor TThreadList.Create();
begin
{*
 0048E05C    push        ebx
 0048E05D    push        esi
 0048E05E    test        dl,dl
>0048E060    je          0048E06A
 0048E062    add         esp,0FFFFFFF0
 0048E065    call        @ClassCreate
 0048E06A    mov         ebx,edx
 0048E06C    mov         esi,eax
 0048E06E    xor         edx,edx
 0048E070    mov         eax,esi
 0048E072    call        TObject.Create
 0048E077    mov         dl,1
 0048E079    mov         eax,[00401728];TObject
 0048E07E    call        TObject.Create
 0048E083    mov         dword ptr [esi+8],eax
 0048E086    mov         dl,1
 0048E088    mov         eax,[0046C204];TList
 0048E08D    call        TObject.Create
 0048E092    mov         dword ptr [esi+4],eax
 0048E095    mov         byte ptr [esi+0C],0
 0048E099    mov         eax,esi
 0048E09B    test        bl,bl
>0048E09D    je          0048E0AE
 0048E09F    call        @AfterConstruction
 0048E0A4    pop         dword ptr fs:[0]
 0048E0AB    add         esp,0C
 0048E0AE    mov         eax,esi
 0048E0B0    pop         esi
 0048E0B1    pop         ebx
 0048E0B2    ret
*}
end;

//0048E0B4
destructor TThreadList.Destroy();
begin
{*
 0048E0B4    push        ebp
 0048E0B5    mov         ebp,esp
 0048E0B7    add         esp,0FFFFFFF8
 0048E0BA    call        @BeforeDestruction
 0048E0BF    mov         byte ptr [ebp-5],dl
 0048E0C2    mov         dword ptr [ebp-4],eax
 0048E0C5    mov         eax,dword ptr [ebp-4]
 0048E0C8    call        TThreadList.LockList
 0048E0CD    xor         eax,eax
 0048E0CF    push        ebp
 0048E0D0    push        48E116
 0048E0D5    push        dword ptr fs:[eax]
 0048E0D8    mov         dword ptr fs:[eax],esp
 0048E0DB    mov         eax,dword ptr [ebp-4]
 0048E0DE    mov         eax,dword ptr [eax+4]
 0048E0E1    call        TObject.Free
 0048E0E6    movzx       edx,byte ptr [ebp-5]
 0048E0EA    and         dl,0FC
 0048E0ED    mov         eax,dword ptr [ebp-4]
 0048E0F0    call        TObject.Destroy
 0048E0F5    xor         eax,eax
 0048E0F7    pop         edx
 0048E0F8    pop         ecx
 0048E0F9    pop         ecx
 0048E0FA    mov         dword ptr fs:[eax],edx
 0048E0FD    push        48E11D
 0048E102    mov         eax,dword ptr [ebp-4]
 0048E105    call        TThreadList.UnlockList
 0048E10A    mov         eax,dword ptr [ebp-4]
 0048E10D    mov         eax,dword ptr [eax+8]
 0048E110    call        TObject.Free
 0048E115    ret
>0048E116    jmp         @HandleFinally
>0048E11B    jmp         0048E102
 0048E11D    cmp         byte ptr [ebp-5],0
>0048E121    jle         0048E12B
 0048E123    mov         eax,dword ptr [ebp-4]
 0048E126    call        @ClassDestroy
 0048E12B    pop         ecx
 0048E12C    pop         ecx
 0048E12D    pop         ebp
 0048E12E    ret
*}
end;

//0048E130
procedure TThreadList.Add(Item:Pointer);
begin
{*
 0048E130    push        ebp
 0048E131    mov         ebp,esp
 0048E133    push        ecx
 0048E134    push        ebx
 0048E135    mov         ebx,edx
 0048E137    mov         dword ptr [ebp-4],eax
 0048E13A    mov         eax,dword ptr [ebp-4]
 0048E13D    call        TThreadList.LockList
 0048E142    xor         eax,eax
 0048E144    push        ebp
 0048E145    push        48E1AC
 0048E14A    push        dword ptr fs:[eax]
 0048E14D    mov         dword ptr fs:[eax],esp
 0048E150    mov         eax,dword ptr [ebp-4]
 0048E153    cmp         byte ptr [eax+0C],1
>0048E157    je          0048E169
 0048E159    mov         eax,dword ptr [ebp-4]
 0048E15C    mov         eax,dword ptr [eax+4]
 0048E15F    mov         edx,ebx
 0048E161    call        TList.IndexOf
 0048E166    inc         eax
>0048E167    jne         0048E178
 0048E169    mov         eax,dword ptr [ebp-4]
 0048E16C    mov         eax,dword ptr [eax+4]
 0048E16F    mov         edx,ebx
 0048E171    call        TList.Add
>0048E176    jmp         0048E196
 0048E178    mov         eax,dword ptr [ebp-4]
 0048E17B    cmp         byte ptr [eax+0C],2
>0048E17F    jne         0048E196
 0048E181    mov         edx,dword ptr ds:[7C469C];^SResString120:TResStringRec
 0048E187    mov         eax,dword ptr [ebp-4]
 0048E18A    mov         eax,dword ptr [eax+4]
 0048E18D    mov         eax,dword ptr [eax]
 0048E18F    mov         ecx,ebx
 0048E191    call        TList.Error
 0048E196    xor         eax,eax
 0048E198    pop         edx
 0048E199    pop         ecx
 0048E19A    pop         ecx
 0048E19B    mov         dword ptr fs:[eax],edx
 0048E19E    push        48E1B3
 0048E1A3    mov         eax,dword ptr [ebp-4]
 0048E1A6    call        TThreadList.UnlockList
 0048E1AB    ret
>0048E1AC    jmp         @HandleFinally
>0048E1B1    jmp         0048E1A3
 0048E1B3    pop         ebx
 0048E1B4    pop         ecx
 0048E1B5    pop         ebp
 0048E1B6    ret
*}
end;

//0048E1B8
procedure TThreadList.Clear;
begin
{*
 0048E1B8    push        ebp
 0048E1B9    mov         ebp,esp
 0048E1BB    push        ecx
 0048E1BC    mov         dword ptr [ebp-4],eax
 0048E1BF    mov         eax,dword ptr [ebp-4]
 0048E1C2    call        TThreadList.LockList
 0048E1C7    xor         eax,eax
 0048E1C9    push        ebp
 0048E1CA    push        48E1F6
 0048E1CF    push        dword ptr fs:[eax]
 0048E1D2    mov         dword ptr fs:[eax],esp
 0048E1D5    mov         eax,dword ptr [ebp-4]
 0048E1D8    mov         eax,dword ptr [eax+4]
 0048E1DB    mov         edx,dword ptr [eax]
 0048E1DD    call        dword ptr [edx+8]
 0048E1E0    xor         eax,eax
 0048E1E2    pop         edx
 0048E1E3    pop         ecx
 0048E1E4    pop         ecx
 0048E1E5    mov         dword ptr fs:[eax],edx
 0048E1E8    push        48E1FD
 0048E1ED    mov         eax,dword ptr [ebp-4]
 0048E1F0    call        TThreadList.UnlockList
 0048E1F5    ret
>0048E1F6    jmp         @HandleFinally
>0048E1FB    jmp         0048E1ED
 0048E1FD    pop         ecx
 0048E1FE    pop         ebp
 0048E1FF    ret
*}
end;

//0048E200
function TThreadList.LockList:TList;
begin
{*
 0048E200    push        ebx
 0048E201    push        ecx
 0048E202    mov         ebx,eax
 0048E204    mov         eax,dword ptr [ebx+8]
 0048E207    mov         dword ptr [esp],eax
 0048E20A    call        TMonitor.CheckMonitorSupport
 0048E20F    mov         eax,dword ptr [esp]
 0048E212    call        TMonitor.GetMonitor
 0048E217    or          edx,0FFFFFFFF
 0048E21A    call        TMonitor.Enter
 0048E21F    mov         eax,dword ptr [ebx+4]
 0048E222    pop         edx
 0048E223    pop         ebx
 0048E224    ret
*}
end;

//0048E228
procedure TThreadList.RemoveItem(Item:Pointer; Direction:TDirection);
begin
{*
 0048E228    push        ebp
 0048E229    mov         ebp,esp
 0048E22B    push        ecx
 0048E22C    push        ebx
 0048E22D    push        esi
 0048E22E    mov         ebx,ecx
 0048E230    mov         esi,edx
 0048E232    mov         dword ptr [ebp-4],eax
 0048E235    mov         eax,dword ptr [ebp-4]
 0048E238    call        TThreadList.LockList
 0048E23D    xor         eax,eax
 0048E23F    push        ebp
 0048E240    push        48E270
 0048E245    push        dword ptr fs:[eax]
 0048E248    mov         dword ptr fs:[eax],esp
 0048E24B    mov         ecx,ebx
 0048E24D    mov         eax,dword ptr [ebp-4]
 0048E250    mov         eax,dword ptr [eax+4]
 0048E253    mov         edx,esi
 0048E255    call        TList.RemoveItem
 0048E25A    xor         eax,eax
 0048E25C    pop         edx
 0048E25D    pop         ecx
 0048E25E    pop         ecx
 0048E25F    mov         dword ptr fs:[eax],edx
 0048E262    push        48E277
 0048E267    mov         eax,dword ptr [ebp-4]
 0048E26A    call        TThreadList.UnlockList
 0048E26F    ret
>0048E270    jmp         @HandleFinally
>0048E275    jmp         0048E267
 0048E277    pop         esi
 0048E278    pop         ebx
 0048E279    pop         ecx
 0048E27A    pop         ebp
 0048E27B    ret
*}
end;

//0048E27C
procedure TThreadList.UnlockList;
begin
{*
 0048E27C    mov         eax,dword ptr [eax+8]
 0048E27F    call        TMonitor.Exit
 0048E284    ret
*}
end;

//0048E288
constructor TCollectionEnumerator.Create;
begin
{*
 0048E288    push        ebx
 0048E289    push        esi
 0048E28A    push        edi
 0048E28B    test        dl,dl
>0048E28D    je          0048E297
 0048E28F    add         esp,0FFFFFFF0
 0048E292    call        @ClassCreate
 0048E297    mov         esi,ecx
 0048E299    mov         ebx,edx
 0048E29B    mov         edi,eax
 0048E29D    xor         edx,edx
 0048E29F    mov         eax,edi
 0048E2A1    call        TObject.Create
 0048E2A6    mov         dword ptr [edi+4],0FFFFFFFF
 0048E2AD    mov         dword ptr [edi+8],esi
 0048E2B0    mov         eax,edi
 0048E2B2    test        bl,bl
>0048E2B4    je          0048E2C5
 0048E2B6    call        @AfterConstruction
 0048E2BB    pop         dword ptr fs:[0]
 0048E2C2    add         esp,0C
 0048E2C5    mov         eax,edi
 0048E2C7    pop         edi
 0048E2C8    pop         esi
 0048E2C9    pop         ebx
 0048E2CA    ret
*}
end;

//0048E2CC
function TInterfaceListEnumerator.GetCurrent:IInterface;
begin
{*
 0048E2CC    push        ebx
 0048E2CD    push        esi
 0048E2CE    mov         esi,edx
 0048E2D0    mov         ebx,eax
 0048E2D2    mov         ecx,esi
 0048E2D4    mov         edx,dword ptr [ebx+4]
 0048E2D7    mov         eax,dword ptr [ebx+8]
 0048E2DA    call        TInterfaceList.Get
 0048E2DF    pop         esi
 0048E2E0    pop         ebx
 0048E2E1    ret
*}
end;

//0048E2E4
constructor TInterfaceList.Create();
begin
{*
 0048E2E4    push        ebx
 0048E2E5    push        esi
 0048E2E6    test        dl,dl
>0048E2E8    je          0048E2F2
 0048E2EA    add         esp,0FFFFFFF0
 0048E2ED    call        @ClassCreate
 0048E2F2    mov         ebx,edx
 0048E2F4    mov         esi,eax
 0048E2F6    xor         edx,edx
 0048E2F8    mov         eax,esi
 0048E2FA    call        TObject.Create
 0048E2FF    mov         dl,1
 0048E301    mov         eax,[0047B7F8];TThreadList<System.IInterface>
 0048E306    call        TThreadList<System.IInterface>.Create
 0048E30B    mov         dword ptr [esi+0C],eax
 0048E30E    mov         eax,esi
 0048E310    test        bl,bl
>0048E312    je          0048E323
 0048E314    call        @AfterConstruction
 0048E319    pop         dword ptr fs:[0]
 0048E320    add         esp,0C
 0048E323    mov         eax,esi
 0048E325    pop         esi
 0048E326    pop         ebx
 0048E327    ret
*}
end;

//0048E328
destructor TInterfaceList.Destroy();
begin
{*
 0048E328    push        ebx
 0048E329    push        esi
 0048E32A    push        ecx
 0048E32B    call        @BeforeDestruction
 0048E330    mov         ebx,edx
 0048E332    mov         esi,eax
 0048E334    mov         eax,esi
 0048E336    call        TInterfaceList.Clear
 0048E33B    lea         eax,[esi+0C]
 0048E33E    mov         dword ptr [esp],eax
 0048E341    mov         eax,dword ptr [esp]
 0048E344    mov         eax,dword ptr [eax]
 0048E346    mov         edx,dword ptr [esp]
 0048E349    xor         ecx,ecx
 0048E34B    mov         dword ptr [edx],ecx
 0048E34D    call        TObject.Free
 0048E352    mov         dl,0FC
 0048E354    and         dl,bl
 0048E356    mov         eax,esi
 0048E358    call        TObject.Destroy
 0048E35D    test        bl,bl
>0048E35F    jle         0048E368
 0048E361    mov         eax,esi
 0048E363    call        @ClassDestroy
 0048E368    pop         edx
 0048E369    pop         esi
 0048E36A    pop         ebx
 0048E36B    ret
*}
end;

//0048E36C
procedure TInterfaceList.Clear;
begin
{*
 0048E36C    push        ebp
 0048E36D    mov         ebp,esp
 0048E36F    push        ecx
 0048E370    push        ebx
 0048E371    push        esi
 0048E372    push        edi
 0048E373    mov         dword ptr [ebp-4],eax
 0048E376    mov         eax,dword ptr [ebp-4]
 0048E379    mov         eax,dword ptr [eax+0C]
 0048E37C    test        eax,eax
>0048E37E    je          0048E3DA
 0048E380    call        TThreadList<System.IInterface>.LockList
 0048E385    mov         edi,eax
 0048E387    xor         edx,edx
 0048E389    push        ebp
 0048E38A    push        48E3D3
 0048E38F    push        dword ptr fs:[edx]
 0048E392    mov         dword ptr fs:[edx],esp
 0048E395    mov         ebx,dword ptr [edi+8]
 0048E398    dec         ebx
 0048E399    test        ebx,ebx
>0048E39B    jl          0048E3AF
 0048E39D    inc         ebx
 0048E39E    xor         esi,esi
 0048E3A0    mov         eax,dword ptr [edi+20]
 0048E3A3    lea         eax,[eax+esi*4]
 0048E3A6    call        @IntfClear
 0048E3AB    inc         esi
 0048E3AC    dec         ebx
>0048E3AD    jne         0048E3A0
 0048E3AF    lea         eax,[edi+8]
 0048E3B2    call        004349B8
 0048E3B7    xor         eax,eax
 0048E3B9    pop         edx
 0048E3BA    pop         ecx
 0048E3BB    pop         ecx
 0048E3BC    mov         dword ptr fs:[eax],edx
 0048E3BF    push        48E3DA
 0048E3C4    mov         eax,dword ptr [ebp-4]
 0048E3C7    mov         eax,dword ptr [eax+0C]
 0048E3CA    mov         eax,dword ptr [eax+8]
 0048E3CD    call        TMonitor.Exit
 0048E3D2    ret
>0048E3D3    jmp         @HandleFinally
>0048E3D8    jmp         0048E3C4
 0048E3DA    pop         edi
 0048E3DB    pop         esi
 0048E3DC    pop         ebx
 0048E3DD    pop         ecx
 0048E3DE    pop         ebp
 0048E3DF    ret
*}
end;

//0048E3E0
procedure TInterfaceList.Delete(Index:Integer);
begin
{*
 0048E3E0    push        ebp
 0048E3E1    mov         ebp,esp
 0048E3E3    push        ecx
 0048E3E4    push        ebx
 0048E3E5    push        esi
 0048E3E6    mov         ebx,edx
 0048E3E8    mov         dword ptr [ebp-4],eax
 0048E3EB    mov         eax,dword ptr [ebp-4]
 0048E3EE    mov         eax,dword ptr [eax+0C];TInterfaceList...............FList:TThreadList<System.IInterface>
 0048E3F1    call        TThreadList<System.IInterface>.LockList
 0048E3F6    mov         esi,eax
 0048E3F8    xor         edx,edx
 0048E3FA    push        ebp
 0048E3FB    push        48E43A
 0048E400    push        dword ptr fs:[edx]
 0048E403    mov         dword ptr fs:[edx],esp
 0048E406    xor         ecx,ecx
 0048E408    mov         edx,ebx
 0048E40A    mov         eax,dword ptr [ebp-4]
 0048E40D    call        TInterfaceList.Put
 0048E412    lea         eax,[esi+8];TList<System.IInterface>.FCount:Integer
 0048E415    mov         cl,1
 0048E417    mov         edx,ebx
 0048E419    call        00435294
 0048E41E    xor         eax,eax
 0048E420    pop         edx
 0048E421    pop         ecx
 0048E422    pop         ecx
 0048E423    mov         dword ptr fs:[eax],edx
 0048E426    push        48E441
 0048E42B    mov         eax,dword ptr [ebp-4]
 0048E42E    mov         eax,dword ptr [eax+0C];TInterfaceList................FList:TThreadList<System.IInterface...
 0048E431    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 0048E434    call        TMonitor.Exit
 0048E439    ret
>0048E43A    jmp         @HandleFinally
>0048E43F    jmp         0048E42B
 0048E441    pop         esi
 0048E442    pop         ebx
 0048E443    pop         ecx
 0048E444    pop         ebp
 0048E445    ret
*}
end;

//0048E448
function TInterfaceList.First:IInterface;
begin
{*
 0048E448    push        ebx
 0048E449    push        esi
 0048E44A    mov         esi,edx
 0048E44C    mov         ebx,eax
 0048E44E    mov         ecx,esi
 0048E450    xor         edx,edx
 0048E452    mov         eax,ebx
 0048E454    call        TInterfaceList.Get
 0048E459    pop         esi
 0048E45A    pop         ebx
 0048E45B    ret
*}
end;

//0048E45C
function TInterfaceList.Get(Index:Integer):IInterface;
begin
{*
 0048E45C    push        ebp
 0048E45D    mov         ebp,esp
 0048E45F    add         esp,0FFFFFFF8
 0048E462    push        ebx
 0048E463    push        esi
 0048E464    push        edi
 0048E465    xor         ebx,ebx
 0048E467    mov         dword ptr [ebp-8],ebx
 0048E46A    mov         edi,ecx
 0048E46C    mov         ebx,edx
 0048E46E    mov         dword ptr [ebp-4],eax
 0048E471    xor         eax,eax
 0048E473    push        ebp
 0048E474    push        48E500
 0048E479    push        dword ptr fs:[eax]
 0048E47C    mov         dword ptr fs:[eax],esp
 0048E47F    mov         eax,dword ptr [ebp-4]
 0048E482    mov         eax,dword ptr [eax+0C]
 0048E485    call        TThreadList<System.IInterface>.LockList
 0048E48A    mov         esi,eax
 0048E48C    xor         edx,edx
 0048E48E    push        ebp
 0048E48F    push        48E4E3
 0048E494    push        dword ptr fs:[edx]
 0048E497    mov         dword ptr fs:[edx],esp
 0048E49A    test        ebx,ebx
>0048E49C    jl          0048E4A3
 0048E49E    cmp         ebx,dword ptr [esi+8]
>0048E4A1    jl          0048E4BA
 0048E4A3    lea         edx,[ebp-8]
 0048E4A6    mov         eax,[007C4BB4];^SResString135:TResStringRec
 0048E4AB    call        LoadResString
 0048E4B0    mov         edx,dword ptr [ebp-8]
 0048E4B3    mov         eax,dword ptr [esi]
 0048E4B5    mov         ecx,ebx
 0048E4B7    call        dword ptr [eax+0C]
 0048E4BA    mov         eax,edi
 0048E4BC    mov         edx,dword ptr [esi+20]
 0048E4BF    mov         edx,dword ptr [edx+ebx*4]
 0048E4C2    call        @IntfCopy
 0048E4C7    xor         eax,eax
 0048E4C9    pop         edx
 0048E4CA    pop         ecx
 0048E4CB    pop         ecx
 0048E4CC    mov         dword ptr fs:[eax],edx
 0048E4CF    push        48E4EA
 0048E4D4    mov         eax,dword ptr [ebp-4]
 0048E4D7    mov         eax,dword ptr [eax+0C]
 0048E4DA    mov         eax,dword ptr [eax+8]
 0048E4DD    call        TMonitor.Exit
 0048E4E2    ret
>0048E4E3    jmp         @HandleFinally
>0048E4E8    jmp         0048E4D4
 0048E4EA    xor         eax,eax
 0048E4EC    pop         edx
 0048E4ED    pop         ecx
 0048E4EE    pop         ecx
 0048E4EF    mov         dword ptr fs:[eax],edx
 0048E4F2    push        48E507
 0048E4F7    lea         eax,[ebp-8]
 0048E4FA    call        @UStrClr
 0048E4FF    ret
>0048E500    jmp         @HandleFinally
>0048E505    jmp         0048E4F7
 0048E507    pop         edi
 0048E508    pop         esi
 0048E509    pop         ebx
 0048E50A    pop         ecx
 0048E50B    pop         ecx
 0048E50C    pop         ebp
 0048E50D    ret
*}
end;

//0048E510
{*function sub_0048E510(?:?):?;
begin
 0048E510    push        ebp
 0048E511    mov         ebp,esp
 0048E513    add         esp,0FFFFFFF4
 0048E516    mov         dword ptr [ebp-4],eax
 0048E519    mov         eax,dword ptr [ebp-4]
 0048E51C    mov         eax,dword ptr [eax+0C]
 0048E51F    call        TThreadList<System.IInterface>.LockList
 0048E524    xor         edx,edx
 0048E526    push        ebp
 0048E527    push        48E563
 0048E52C    push        dword ptr fs:[edx]
 0048E52F    mov         dword ptr fs:[edx],esp
 0048E532    mov         eax,dword ptr [eax+20]
 0048E535    mov         dword ptr [ebp-0C],eax
 0048E538    mov         eax,dword ptr [ebp-0C]
 0048E53B    test        eax,eax
>0048E53D    je          0048E544
 0048E53F    sub         eax,4
 0048E542    mov         eax,dword ptr [eax]
 0048E544    mov         dword ptr [ebp-8],eax
 0048E547    xor         eax,eax
 0048E549    pop         edx
 0048E54A    pop         ecx
 0048E54B    pop         ecx
 0048E54C    mov         dword ptr fs:[eax],edx
 0048E54F    push        48E56A
 0048E554    mov         eax,dword ptr [ebp-4]
 0048E557    mov         eax,dword ptr [eax+0C]
 0048E55A    mov         eax,dword ptr [eax+8]
 0048E55D    call        TMonitor.Exit
 0048E562    ret
>0048E563    jmp         @HandleFinally
>0048E568    jmp         0048E554
 0048E56A    mov         eax,dword ptr [ebp-8]
 0048E56D    mov         esp,ebp
 0048E56F    pop         ebp
 0048E570    ret
end;*}

//0048E557
procedure TInterfaceList.Unlock;
begin
{*
 0048E557    mov         eax,dword ptr [eax+0C]
 0048E55A    mov         eax,dword ptr [eax+8]
 0048E55D    call        TMonitor.Exit
 0048E562    ret
*}
end;

//0048E574
function TInterfaceList.GetCount:Integer;
begin
{*
 0048E574    push        ebp
 0048E575    mov         ebp,esp
 0048E577    add         esp,0FFFFFFF8
 0048E57A    mov         dword ptr [ebp-4],eax
 0048E57D    mov         eax,dword ptr [ebp-4]
 0048E580    mov         eax,dword ptr [eax+0C]
 0048E583    call        TThreadList<System.IInterface>.LockList
 0048E588    xor         edx,edx
 0048E58A    push        ebp
 0048E58B    push        48E5B8
 0048E590    push        dword ptr fs:[edx]
 0048E593    mov         dword ptr fs:[edx],esp
 0048E596    mov         eax,dword ptr [eax+8]
 0048E599    mov         dword ptr [ebp-8],eax
 0048E59C    xor         eax,eax
 0048E59E    pop         edx
 0048E59F    pop         ecx
 0048E5A0    pop         ecx
 0048E5A1    mov         dword ptr fs:[eax],edx
 0048E5A4    push        48E5BF
 0048E5A9    mov         eax,dword ptr [ebp-4]
 0048E5AC    mov         eax,dword ptr [eax+0C]
 0048E5AF    mov         eax,dword ptr [eax+8]
 0048E5B2    call        TMonitor.Exit
 0048E5B7    ret
>0048E5B8    jmp         @HandleFinally
>0048E5BD    jmp         0048E5A9
 0048E5BF    mov         eax,dword ptr [ebp-8]
 0048E5C2    pop         ecx
 0048E5C3    pop         ecx
 0048E5C4    pop         ebp
 0048E5C5    ret
*}
end;

//0048E5C8
function TInterfaceList.GetEnumerator:TInterfaceListEnumerator;
begin
{*
 0048E5C8    mov         ecx,eax
 0048E5CA    mov         dl,1
 0048E5CC    mov         eax,[0046CD00];TInterfaceListEnumerator
 0048E5D1    call        TCollectionEnumerator.Create
 0048E5D6    ret
*}
end;

//0048E5D8
function TInterfaceList.IndexOf(Item:IInterface):Integer;
begin
{*
 0048E5D8    xor         ecx,ecx
 0048E5DA    call        TInterfaceList.IndexOfItem
 0048E5DF    ret
*}
end;

//0048E5E0
function TInterfaceList.IndexOfItem(Item:IInterface; Direction:TDirection):Integer;
begin
{*
 0048E5E0    push        ebp
 0048E5E1    mov         ebp,esp
 0048E5E3    add         esp,0FFFFFFF0
 0048E5E6    push        ebx
 0048E5E7    push        esi
 0048E5E8    mov         ebx,ecx
 0048E5EA    mov         esi,edx
 0048E5EC    mov         dword ptr [ebp-4],eax
 0048E5EF    mov         eax,dword ptr [ebp-4]
 0048E5F2    mov         eax,dword ptr [eax+0C]
 0048E5F5    call        TThreadList<System.IInterface>.LockList
 0048E5FA    xor         edx,edx
 0048E5FC    push        ebp
 0048E5FD    push        48E64C
 0048E602    push        dword ptr fs:[edx]
 0048E605    mov         dword ptr fs:[edx],esp
 0048E608    mov         dword ptr [ebp-0C],esi
 0048E60B    add         eax,8
 0048E60E    mov         dword ptr [ebp-10],eax
 0048E611    test        bl,bl
>0048E613    jne         0048E622
 0048E615    lea         edx,[ebp-0C]
 0048E618    mov         eax,dword ptr [ebp-10]
 0048E61B    call        00434758
>0048E620    jmp         0048E62D
 0048E622    lea         edx,[ebp-0C]
 0048E625    mov         eax,dword ptr [ebp-10]
 0048E628    call        0043479C
 0048E62D    mov         dword ptr [ebp-8],eax
 0048E630    xor         eax,eax
 0048E632    pop         edx
 0048E633    pop         ecx
 0048E634    pop         ecx
 0048E635    mov         dword ptr fs:[eax],edx
 0048E638    push        48E653
 0048E63D    mov         eax,dword ptr [ebp-4]
 0048E640    mov         eax,dword ptr [eax+0C]
 0048E643    mov         eax,dword ptr [eax+8]
 0048E646    call        TMonitor.Exit
 0048E64B    ret
>0048E64C    jmp         @HandleFinally
>0048E651    jmp         0048E63D
 0048E653    mov         eax,dword ptr [ebp-8]
 0048E656    pop         esi
 0048E657    pop         ebx
 0048E658    mov         esp,ebp
 0048E65A    pop         ebp
 0048E65B    ret
*}
end;

//0048E65C
function TInterfaceList.Add(Item:IInterface):Integer;
begin
{*
 0048E65C    push        ebp
 0048E65D    mov         ebp,esp
 0048E65F    add         esp,0FFFFFFF0
 0048E662    push        ebx
 0048E663    push        esi
 0048E664    mov         esi,edx
 0048E666    mov         dword ptr [ebp-4],eax
 0048E669    mov         eax,dword ptr [ebp-4]
 0048E66C    mov         eax,dword ptr [eax+0C];TInterfaceList.................FList:TThreadList<System.IInterfac...
 0048E66F    call        TThreadList<System.IInterface>.LockList
 0048E674    mov         ebx,eax
 0048E676    xor         edx,edx
 0048E678    push        ebp
 0048E679    push        48E6C9
 0048E67E    push        dword ptr fs:[edx]
 0048E681    mov         dword ptr fs:[edx],esp
 0048E684    xor         eax,eax
 0048E686    mov         dword ptr [ebp-0C],eax
 0048E689    lea         eax,[ebx+8];TList<System.IInterface>.FCount:Integer
 0048E68C    mov         dword ptr [ebp-10],eax
 0048E68F    lea         edx,[ebp-0C]
 0048E692    mov         eax,dword ptr [ebp-10]
 0048E695    call        004345C8
 0048E69A    mov         dword ptr [ebp-8],eax
 0048E69D    mov         eax,dword ptr [ebx+20]
 0048E6A0    mov         edx,dword ptr [ebp-8]
 0048E6A3    lea         eax,[eax+edx*4]
 0048E6A6    mov         edx,esi
 0048E6A8    call        @IntfCopy
 0048E6AD    xor         eax,eax
 0048E6AF    pop         edx
 0048E6B0    pop         ecx
 0048E6B1    pop         ecx
 0048E6B2    mov         dword ptr fs:[eax],edx
 0048E6B5    push        48E6D0
 0048E6BA    mov         eax,dword ptr [ebp-4]
 0048E6BD    mov         eax,dword ptr [eax+0C];TInterfaceList..................FList:TThreadList<System.IInterfa...
 0048E6C0    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 0048E6C3    call        TMonitor.Exit
 0048E6C8    ret
>0048E6C9    jmp         @HandleFinally
>0048E6CE    jmp         0048E6BA
 0048E6D0    mov         eax,dword ptr [ebp-8]
 0048E6D3    pop         esi
 0048E6D4    pop         ebx
 0048E6D5    mov         esp,ebp
 0048E6D7    pop         ebp
 0048E6D8    ret
*}
end;

//0048E6DC
procedure TInterfaceList.Insert(Index:Integer; Item:IInterface);
begin
{*
 0048E6DC    push        ebp
 0048E6DD    mov         ebp,esp
 0048E6DF    add         esp,0FFFFFFF4
 0048E6E2    push        ebx
 0048E6E3    push        esi
 0048E6E4    push        edi
 0048E6E5    mov         edi,ecx
 0048E6E7    mov         esi,edx
 0048E6E9    mov         dword ptr [ebp-4],eax
 0048E6EC    mov         eax,dword ptr [ebp-4]
 0048E6EF    mov         eax,dword ptr [eax+0C];TInterfaceList...................FList:TThreadList<System.IInterf...
 0048E6F2    call        TThreadList<System.IInterface>.LockList
 0048E6F7    mov         ebx,eax
 0048E6F9    xor         edx,edx
 0048E6FB    push        ebp
 0048E6FC    push        48E748
 0048E701    push        dword ptr fs:[edx]
 0048E704    mov         dword ptr fs:[edx],esp
 0048E707    xor         eax,eax
 0048E709    mov         dword ptr [ebp-8],eax
 0048E70C    lea         eax,[ebx+8];TList<System.IInterface>.FCount:Integer
 0048E70F    mov         dword ptr [ebp-0C],eax
 0048E712    lea         ecx,[ebp-8]
 0048E715    mov         eax,dword ptr [ebp-0C]
 0048E718    mov         edx,esi
 0048E71A    call        004347DC
 0048E71F    mov         eax,dword ptr [ebx+20]
 0048E722    lea         eax,[eax+esi*4]
 0048E725    mov         edx,edi
 0048E727    call        @IntfCopy
 0048E72C    xor         eax,eax
 0048E72E    pop         edx
 0048E72F    pop         ecx
 0048E730    pop         ecx
 0048E731    mov         dword ptr fs:[eax],edx
 0048E734    push        48E74F
 0048E739    mov         eax,dword ptr [ebp-4]
 0048E73C    mov         eax,dword ptr [eax+0C];TInterfaceList....................FList:TThreadList<System.IInter...
 0048E73F    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 0048E742    call        TMonitor.Exit
 0048E747    ret
>0048E748    jmp         @HandleFinally
>0048E74D    jmp         0048E739
 0048E74F    pop         edi
 0048E750    pop         esi
 0048E751    pop         ebx
 0048E752    mov         esp,ebp
 0048E754    pop         ebp
 0048E755    ret
*}
end;

//0048E758
{*procedure TInterfaceList.Last(?:?);
begin
 0048E758    push        ebp
 0048E759    mov         ebp,esp
 0048E75B    push        ecx
 0048E75C    push        ebx
 0048E75D    push        esi
 0048E75E    mov         esi,edx
 0048E760    mov         dword ptr [ebp-4],eax
 0048E763    mov         eax,dword ptr [ebp-4]
 0048E766    mov         eax,dword ptr [eax+0C];TInterfaceList.....................FList:TThreadList<System.IInte...
 0048E769    call        TThreadList<System.IInterface>.LockList
 0048E76E    mov         ebx,eax
 0048E770    xor         edx,edx
 0048E772    push        ebp
 0048E773    push        48E7A8
 0048E778    push        dword ptr fs:[edx]
 0048E77B    mov         dword ptr fs:[edx],esp
 0048E77E    mov         ecx,esi
 0048E780    mov         edx,dword ptr [ebx+8];TList<System.IInterface>.FCount:Integer
 0048E783    dec         edx
 0048E784    mov         eax,dword ptr [ebp-4]
 0048E787    call        TInterfaceList.Get
 0048E78C    xor         eax,eax
 0048E78E    pop         edx
 0048E78F    pop         ecx
 0048E790    pop         ecx
 0048E791    mov         dword ptr fs:[eax],edx
 0048E794    push        48E7AF
 0048E799    mov         eax,dword ptr [ebp-4]
 0048E79C    mov         eax,dword ptr [eax+0C];TInterfaceList......................FList:TThreadList<System.IInt...
 0048E79F    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 0048E7A2    call        TMonitor.Exit
 0048E7A7    ret
>0048E7A8    jmp         @HandleFinally
>0048E7AD    jmp         0048E799
 0048E7AF    pop         esi
 0048E7B0    pop         ebx
 0048E7B1    pop         ecx
 0048E7B2    pop         ebp
 0048E7B3    ret
end;*}

//0048E7B4
procedure TInterfaceList.Put(Index:Integer; Item:IInterface);
begin
{*
 0048E7B4    push        ebp
 0048E7B5    mov         ebp,esp
 0048E7B7    add         esp,0FFFFFFF8
 0048E7BA    push        ebx
 0048E7BB    push        esi
 0048E7BC    push        edi
 0048E7BD    xor         ebx,ebx
 0048E7BF    mov         dword ptr [ebp-8],ebx
 0048E7C2    mov         edi,ecx
 0048E7C4    mov         ebx,edx
 0048E7C6    mov         dword ptr [ebp-4],eax
 0048E7C9    xor         eax,eax
 0048E7CB    push        ebp
 0048E7CC    push        48E858
 0048E7D1    push        dword ptr fs:[eax]
 0048E7D4    mov         dword ptr fs:[eax],esp
 0048E7D7    mov         eax,dword ptr [ebp-4]
 0048E7DA    mov         eax,dword ptr [eax+0C];TInterfaceList.......................FList:TThreadList<System.IIn...
 0048E7DD    call        TThreadList<System.IInterface>.LockList
 0048E7E2    mov         esi,eax
 0048E7E4    xor         edx,edx
 0048E7E6    push        ebp
 0048E7E7    push        48E83B
 0048E7EC    push        dword ptr fs:[edx]
 0048E7EF    mov         dword ptr fs:[edx],esp
 0048E7F2    test        ebx,ebx
>0048E7F4    jl          0048E7FB
 0048E7F6    cmp         ebx,dword ptr [esi+8];TList<System.IInterface>.FCount:Integer
>0048E7F9    jl          0048E812
 0048E7FB    lea         edx,[ebp-8]
 0048E7FE    mov         eax,[007C4BB4];^SResString135:TResStringRec
 0048E803    call        LoadResString
 0048E808    mov         edx,dword ptr [ebp-8]
 0048E80B    mov         eax,dword ptr [esi]
 0048E80D    mov         ecx,ebx
 0048E80F    call        dword ptr [eax+0C]
 0048E812    mov         eax,dword ptr [esi+20]
 0048E815    lea         eax,[eax+ebx*4]
 0048E818    mov         edx,edi
 0048E81A    call        @IntfCopy
 0048E81F    xor         eax,eax
 0048E821    pop         edx
 0048E822    pop         ecx
 0048E823    pop         ecx
 0048E824    mov         dword ptr fs:[eax],edx
 0048E827    push        48E842
 0048E82C    mov         eax,dword ptr [ebp-4]
 0048E82F    mov         eax,dword ptr [eax+0C];TInterfaceList........................FList:TThreadList<System.II...
 0048E832    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 0048E835    call        TMonitor.Exit
 0048E83A    ret
>0048E83B    jmp         @HandleFinally
>0048E840    jmp         0048E82C
 0048E842    xor         eax,eax
 0048E844    pop         edx
 0048E845    pop         ecx
 0048E846    pop         ecx
 0048E847    mov         dword ptr fs:[eax],edx
 0048E84A    push        48E85F
 0048E84F    lea         eax,[ebp-8]
 0048E852    call        @UStrClr
 0048E857    ret
>0048E858    jmp         @HandleFinally
>0048E85D    jmp         0048E84F
 0048E85F    pop         edi
 0048E860    pop         esi
 0048E861    pop         ebx
 0048E862    pop         ecx
 0048E863    pop         ecx
 0048E864    pop         ebp
 0048E865    ret
*}
end;

//0048E868
function TInterfaceList.Remove(Item:IInterface):Integer;
begin
{*
 0048E868    xor         ecx,ecx
 0048E86A    call        TInterfaceList.RemoveItem
 0048E86F    ret
*}
end;

//0048E870
function TInterfaceList.RemoveItem(Item:IInterface; Direction:TDirection):Integer;
begin
{*
 0048E870    push        ebp
 0048E871    mov         ebp,esp
 0048E873    add         esp,0FFFFFFF0
 0048E876    push        ebx
 0048E877    push        esi
 0048E878    push        edi
 0048E879    mov         ebx,ecx
 0048E87B    mov         esi,edx
 0048E87D    mov         dword ptr [ebp-4],eax
 0048E880    mov         eax,dword ptr [ebp-4]
 0048E883    mov         eax,dword ptr [eax+0C]
 0048E886    call        TThreadList<System.IInterface>.LockList
 0048E88B    mov         edi,eax
 0048E88D    xor         edx,edx
 0048E88F    push        ebp
 0048E890    push        48E900
 0048E895    push        dword ptr fs:[edx]
 0048E898    mov         dword ptr fs:[edx],esp
 0048E89B    mov         dword ptr [ebp-0C],esi
 0048E89E    lea         eax,[edi+8]
 0048E8A1    mov         dword ptr [ebp-10],eax
 0048E8A4    test        bl,bl
>0048E8A6    jne         0048E8B5
 0048E8A8    lea         edx,[ebp-0C]
 0048E8AB    mov         eax,dword ptr [ebp-10]
 0048E8AE    call        00434758
>0048E8B3    jmp         0048E8C0
 0048E8B5    lea         edx,[ebp-0C]
 0048E8B8    mov         eax,dword ptr [ebp-10]
 0048E8BB    call        0043479C
 0048E8C0    mov         dword ptr [ebp-8],eax
 0048E8C3    cmp         dword ptr [ebp-8],0FFFFFFFF
>0048E8C7    jle         0048E8E4
 0048E8C9    mov         eax,dword ptr [edi+20]
 0048E8CC    mov         edx,dword ptr [ebp-8]
 0048E8CF    lea         eax,[eax+edx*4]
 0048E8D2    call        @IntfClear
 0048E8D7    lea         eax,[edi+8]
 0048E8DA    mov         cl,1
 0048E8DC    mov         edx,dword ptr [ebp-8]
 0048E8DF    call        00435294
 0048E8E4    xor         eax,eax
 0048E8E6    pop         edx
 0048E8E7    pop         ecx
 0048E8E8    pop         ecx
 0048E8E9    mov         dword ptr fs:[eax],edx
 0048E8EC    push        48E907
 0048E8F1    mov         eax,dword ptr [ebp-4]
 0048E8F4    mov         eax,dword ptr [eax+0C]
 0048E8F7    mov         eax,dword ptr [eax+8]
 0048E8FA    call        TMonitor.Exit
 0048E8FF    ret
>0048E900    jmp         @HandleFinally
>0048E905    jmp         0048E8F1
 0048E907    mov         eax,dword ptr [ebp-8]
 0048E90A    pop         edi
 0048E90B    pop         esi
 0048E90C    pop         ebx
 0048E90D    mov         esp,ebp
 0048E90F    pop         ebp
 0048E910    ret
*}
end;

//0048E914
{*procedure sub_0048E914(?:?; ?:?);
begin
 0048E914    push        ebp
 0048E915    mov         ebp,esp
 0048E917    push        ecx
 0048E918    push        ebx
 0048E919    push        esi
 0048E91A    mov         esi,edx
 0048E91C    mov         dword ptr [ebp-4],eax
 0048E91F    mov         eax,dword ptr [ebp-4]
 0048E922    mov         eax,dword ptr [eax+0C]
 0048E925    call        TThreadList<System.IInterface>.LockList
 0048E92A    mov         ebx,eax
 0048E92C    xor         edx,edx
 0048E92E    push        ebp
 0048E92F    push        48E97B
 0048E934    push        dword ptr fs:[edx]
 0048E937    mov         dword ptr fs:[edx],esp
 0048E93A    cmp         esi,dword ptr [ebx+8];TList<System.IInterface>.FCount:Integer
>0048E93D    jge         0048E948
 0048E93F    mov         edx,esi
 0048E941    mov         eax,ebx
 0048E943    call        004A2848
 0048E948    push        esi
 0048E949    lea         eax,[ebx+20]
 0048E94C    mov         ecx,1
 0048E951    mov         edx,dword ptr ds:[47A754];TList<System.IInterface>.arrayofT
 0048E957    call        @DynArraySetLength
 0048E95C    add         esp,4
 0048E95F    xor         eax,eax
 0048E961    pop         edx
 0048E962    pop         ecx
 0048E963    pop         ecx
 0048E964    mov         dword ptr fs:[eax],edx
 0048E967    push        48E982
 0048E96C    mov         eax,dword ptr [ebp-4]
 0048E96F    mov         eax,dword ptr [eax+0C]
 0048E972    mov         eax,dword ptr [eax+8]
 0048E975    call        TMonitor.Exit
 0048E97A    ret
>0048E97B    jmp         @HandleFinally
>0048E980    jmp         0048E96C
 0048E982    pop         esi
 0048E983    pop         ebx
 0048E984    pop         ecx
 0048E985    pop         ebp
 0048E986    ret
end;*}

//0048E972
procedure TThreadList<System.Classes.TIntConst>.UnlockList;
begin
{*
 0048E972    mov         eax,dword ptr [eax+8]
 0048E975    call        TMonitor.Exit
 0048E97A    ret
*}
end;

//0048E988
{*procedure sub_0048E988(?:?; ?:?);
begin
 0048E988    push        ebp
 0048E989    mov         ebp,esp
 0048E98B    push        ecx
 0048E98C    push        ebx
 0048E98D    mov         ebx,edx
 0048E98F    mov         dword ptr [ebp-4],eax
 0048E992    mov         eax,dword ptr [ebp-4]
 0048E995    mov         eax,dword ptr [eax+0C]
 0048E998    call        TThreadList<System.IInterface>.LockList
 0048E99D    xor         edx,edx
 0048E99F    push        ebp
 0048E9A0    push        48E9D1
 0048E9A5    push        dword ptr fs:[edx]
 0048E9A8    mov         dword ptr fs:[edx],esp
 0048E9AB    add         eax,8;TList<System.IInterface>.FCount:Integer
 0048E9AE    mov         edx,ebx
 0048E9B0    call        004358C0
 0048E9B5    xor         eax,eax
 0048E9B7    pop         edx
 0048E9B8    pop         ecx
 0048E9B9    pop         ecx
 0048E9BA    mov         dword ptr fs:[eax],edx
 0048E9BD    push        48E9D8
 0048E9C2    mov         eax,dword ptr [ebp-4]
 0048E9C5    mov         eax,dword ptr [eax+0C]
 0048E9C8    mov         eax,dword ptr [eax+8]
 0048E9CB    call        TMonitor.Exit
 0048E9D0    ret
>0048E9D1    jmp         @HandleFinally
>0048E9D6    jmp         0048E9C2
 0048E9D8    pop         ebx
 0048E9D9    pop         ecx
 0048E9DA    pop         ebp
 0048E9DB    ret
end;*}

//0048E9C8
procedure TThreadList<System.Classes.TPropFixup>.UnlockList;
begin
{*
 0048E9C8    mov         eax,dword ptr [eax+8]
 0048E9CB    call        TMonitor.Exit
 0048E9D0    ret
*}
end;

//0048E9DC
procedure TInterfaceList.Exchange(Index1:Integer; Index2:Integer);
begin
{*
 0048E9DC    push        ebp
 0048E9DD    mov         ebp,esp
 0048E9DF    add         esp,0FFFFFFF8
 0048E9E2    push        ebx
 0048E9E3    push        esi
 0048E9E4    mov         esi,ecx
 0048E9E6    mov         ebx,edx
 0048E9E8    mov         dword ptr [ebp-4],eax
 0048E9EB    mov         eax,dword ptr [ebp-4]
 0048E9EE    mov         eax,dword ptr [eax+0C];TInterfaceList.........................FList:TThreadList<System.I...
 0048E9F1    call        TThreadList<System.IInterface>.LockList
 0048E9F6    xor         edx,edx
 0048E9F8    push        ebp
 0048E9F9    push        48EA32
 0048E9FE    push        dword ptr fs:[edx]
 0048EA01    mov         dword ptr fs:[edx],esp
 0048EA04    add         eax,8;TList<System.IInterface>.FCount:Integer
 0048EA07    mov         dword ptr [ebp-8],eax
 0048EA0A    mov         eax,dword ptr [ebp-8]
 0048EA0D    mov         ecx,esi
 0048EA0F    mov         edx,ebx
 0048EA11    call        00434660
 0048EA16    xor         eax,eax
 0048EA18    pop         edx
 0048EA19    pop         ecx
 0048EA1A    pop         ecx
 0048EA1B    mov         dword ptr fs:[eax],edx
 0048EA1E    push        48EA39
 0048EA23    mov         eax,dword ptr [ebp-4]
 0048EA26    mov         eax,dword ptr [eax+0C];TInterfaceList..........................FList:TThreadList<System....
 0048EA29    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 0048EA2C    call        TMonitor.Exit
 0048EA31    ret
>0048EA32    jmp         @HandleFinally
>0048EA37    jmp         0048EA23
 0048EA39    pop         esi
 0048EA3A    pop         ebx
 0048EA3B    pop         ecx
 0048EA3C    pop         ecx
 0048EA3D    pop         ebp
 0048EA3E    ret
*}
end;

//0048EA40
procedure TInterfaceList.Lock;
begin
{*
 0048EA40    mov         eax,dword ptr [eax+0C]
 0048EA43    call        TThreadList<System.IInterface>.LockList
 0048EA48    ret
*}
end;

//0048EA4C
procedure TInterfaceList.Unlock;
begin
{*
 0048EA4C    mov         eax,dword ptr [eax+0C];TInterfaceList...........................FList:TThreadList<System...
 0048EA4F    mov         eax,dword ptr [eax+8];TThreadList<System.IInterface>.FLock:TObject
 0048EA52    call        TMonitor.Exit
 0048EA57    ret
*}
end;

//0048EA58
destructor TBits.Destroy();
begin
{*
 0048EA58    push        ebx
 0048EA59    push        esi
 0048EA5A    call        @BeforeDestruction
 0048EA5F    mov         ebx,edx
 0048EA61    mov         esi,eax
 0048EA63    xor         edx,edx
 0048EA65    mov         eax,esi
 0048EA67    call        TBits.SetSize
 0048EA6C    mov         dl,0FC
 0048EA6E    and         dl,bl
 0048EA70    mov         eax,esi
 0048EA72    call        TObject.Destroy
 0048EA77    test        bl,bl
>0048EA79    jle         0048EA82
 0048EA7B    mov         eax,esi
 0048EA7D    call        @ClassDestroy
 0048EA82    pop         esi
 0048EA83    pop         ebx
 0048EA84    ret
*}
end;

//0048EA88
procedure TBits.Error;
begin
{*
 0048EA88    mov         ecx,dword ptr ds:[7C4C90];^SResString115:TResStringRec
 0048EA8E    mov         dl,1
 0048EA90    mov         eax,[0046BBE4];EBitsError
 0048EA95    call        Exception.CreateRes
 0048EA9A    call        @RaiseExcept
 0048EA9F    ret
*}
end;

//0048EAA0
function Min(X:Integer; Y:Integer):Integer;
begin
{*
 0048EAA0    mov         ecx,eax
 0048EAA2    cmp         edx,eax
>0048EAA4    jge         0048EAA8
 0048EAA6    mov         ecx,edx
 0048EAA8    mov         eax,ecx
 0048EAAA    ret
*}
end;

//0048EAAC
procedure TBits.SetSize(Value:Integer);
begin
{*
 0048EAAC    push        ebx
 0048EAAD    push        esi
 0048EAAE    push        edi
 0048EAAF    push        ebp
 0048EAB0    push        ecx
 0048EAB1    mov         esi,edx
 0048EAB3    mov         ebx,eax
 0048EAB5    cmp         esi,dword ptr [ebx+4]
>0048EAB8    je          0048EB81
 0048EABE    test        esi,esi
>0048EAC0    jge         0048EAC9
 0048EAC2    mov         eax,ebx
 0048EAC4    call        TBits.Error
 0048EAC9    mov         eax,esi
 0048EACB    test        eax,eax
>0048EACD    jns         0048EAD2
 0048EACF    add         eax,1F
 0048EAD2    sar         eax,5
 0048EAD5    mov         edx,esi
 0048EAD7    and         edx,8000001F
>0048EADD    jns         0048EAE4
 0048EADF    dec         edx
 0048EAE0    or          edx,0FFFFFFE0
 0048EAE3    inc         edx
 0048EAE4    add         edx,20
 0048EAE7    dec         edx
 0048EAE8    test        edx,edx
>0048EAEA    jns         0048EAEF
 0048EAEC    add         edx,1F
 0048EAEF    sar         edx,5
 0048EAF2    add         eax,edx
 0048EAF4    mov         edi,eax
 0048EAF6    add         edi,edi
 0048EAF8    add         edi,edi
 0048EAFA    mov         eax,dword ptr [ebx+4]
 0048EAFD    mov         edx,eax
 0048EAFF    test        edx,edx
>0048EB01    jns         0048EB06
 0048EB03    add         edx,1F
 0048EB06    sar         edx,5
 0048EB09    and         eax,8000001F
>0048EB0E    jns         0048EB15
 0048EB10    dec         eax
 0048EB11    or          eax,0FFFFFFE0
 0048EB14    inc         eax
 0048EB15    add         eax,20
 0048EB18    dec         eax
 0048EB19    test        eax,eax
>0048EB1B    jns         0048EB20
 0048EB1D    add         eax,1F
 0048EB20    sar         eax,5
 0048EB23    add         edx,eax
 0048EB25    mov         ebp,edx
 0048EB27    add         ebp,ebp
 0048EB29    add         ebp,ebp
 0048EB2B    cmp         ebp,edi
>0048EB2D    je          0048EB7E
 0048EB2F    xor         eax,eax
 0048EB31    mov         dword ptr [esp],eax
 0048EB34    test        edi,edi
>0048EB36    je          0048EB4E
 0048EB38    mov         eax,edi
 0048EB3A    call        @GetMem
 0048EB3F    mov         dword ptr [esp],eax
 0048EB42    mov         eax,dword ptr [esp]
 0048EB45    xor         ecx,ecx
 0048EB47    mov         edx,edi
 0048EB49    call        @FillChar
 0048EB4E    test        ebp,ebp
>0048EB50    je          0048EB78
 0048EB52    cmp         dword ptr [esp],0
>0048EB56    je          0048EB6E
 0048EB58    mov         edx,edi
 0048EB5A    mov         eax,ebp
 0048EB5C    call        Min
 0048EB61    mov         ecx,eax
 0048EB63    mov         edx,dword ptr [esp]
 0048EB66    mov         eax,dword ptr [ebx+8]
 0048EB69    call        Move
 0048EB6E    mov         edx,ebp
 0048EB70    mov         eax,dword ptr [ebx+8]
 0048EB73    call        @FreeMem
 0048EB78    mov         eax,dword ptr [esp]
 0048EB7B    mov         dword ptr [ebx+8],eax
 0048EB7E    mov         dword ptr [ebx+4],esi
 0048EB81    pop         edx
 0048EB82    pop         ebp
 0048EB83    pop         edi
 0048EB84    pop         esi
 0048EB85    pop         ebx
 0048EB86    ret
*}
end;

//0048EB88
procedure TBits.SetBit(Index:Integer; Value:Boolean);
begin
{*
 0048EB88    cmp         edx,dword ptr [eax+4]
>0048EB8B    jae         0048EB9C
 0048EB8D    mov         eax,dword ptr [eax+8]
 0048EB90    or          cl,cl
>0048EB92    je          0048EB98
 0048EB94    bts         dword ptr [eax],edx
 0048EB97    ret
 0048EB98    btr         dword ptr [eax],edx
 0048EB9B    ret
 0048EB9C    cmp         edx,0
>0048EB9F    jl          0048EA88
 0048EBA5    push        eax
 0048EBA6    push        edx
 0048EBA7    push        ecx
 0048EBA8    inc         edx
 0048EBA9    call        TBits.SetSize
 0048EBAE    pop         ecx
 0048EBAF    pop         edx
 0048EBB0    pop         eax
>0048EBB1    jmp         0048EB8D
 0048EBB3    ret
*}
end;

//0048EBB4
function TBits.GetBit(Index:Integer):Boolean;
begin
{*
 0048EBB4    cmp         edx,dword ptr [eax+4]
>0048EBB7    jae         0048EA88
 0048EBBD    mov         eax,dword ptr [eax+8]
 0048EBC0    bt          dword ptr [eax],edx
 0048EBC3    sbb         eax,eax
 0048EBC5    and         eax,1
 0048EBC8    ret
*}
end;

//0048EBCC
function TBits.OpenBit:Integer;
begin
{*
 0048EBCC    push        ebx
 0048EBCD    push        esi
 0048EBCE    push        edi
 0048EBCF    push        ecx
 0048EBD0    mov         ebx,eax
 0048EBD2    mov         eax,dword ptr [ebx+4]
 0048EBD5    add         eax,20
 0048EBD8    dec         eax
 0048EBD9    test        eax,eax
>0048EBDB    jns         0048EBE0
 0048EBDD    add         eax,1F
 0048EBE0    sar         eax,5
 0048EBE3    dec         eax
 0048EBE4    test        eax,eax
>0048EBE6    jl          0048EC35
 0048EBE8    inc         eax
 0048EBE9    mov         dword ptr [esp],eax
 0048EBEC    xor         esi,esi
 0048EBEE    mov         eax,dword ptr [ebx+8]
 0048EBF1    mov         edx,dword ptr ds:[48EC40]
 0048EBF7    cmp         edx,dword ptr [eax+esi*4]
>0048EBFA    je          0048EC2F
 0048EBFC    mov         eax,dword ptr [ebx+8]
 0048EBFF    mov         edi,dword ptr [eax+esi*4]
 0048EC02    xor         eax,eax
 0048EC04    mov         edx,eax
 0048EC06    cmp         dl,1F
>0048EC09    ja          0048EC11
 0048EC0B    and         edx,7F
 0048EC0E    bt          edi,edx
>0048EC11    jb          0048EC2A
 0048EC13    mov         edx,esi
 0048EC15    shl         edx,5
 0048EC18    and         eax,7F
 0048EC1B    add         edx,eax
 0048EC1D    mov         eax,edx
 0048EC1F    mov         edx,dword ptr [ebx+4]
 0048EC22    cmp         eax,edx
>0048EC24    jl          0048EC38
 0048EC26    mov         eax,edx
>0048EC28    jmp         0048EC38
 0048EC2A    inc         eax
 0048EC2B    cmp         al,20
>0048EC2D    jne         0048EC04
 0048EC2F    inc         esi
 0048EC30    dec         dword ptr [esp]
>0048EC33    jne         0048EBEE
 0048EC35    mov         eax,dword ptr [ebx+4]
 0048EC38    pop         edx
 0048EC39    pop         edi
 0048EC3A    pop         esi
 0048EC3B    pop         ebx
 0048EC3C    ret
*}
end;

//0048EC44
destructor TMemoryStream.Destroy();
begin
{*
 0048EC44    push        ebx
 0048EC45    push        esi
 0048EC46    call        @BeforeDestruction
 0048EC4B    mov         ebx,edx
 0048EC4D    mov         esi,eax
 0048EC4F    mov         eax,esi
 0048EC51    call        TMemoryStream.Clear
 0048EC56    mov         dl,0FC
 0048EC58    and         dl,bl
 0048EC5A    mov         eax,esi
 0048EC5C    call        TObject.Destroy
 0048EC61    test        bl,bl
>0048EC63    jle         0048EC6C
 0048EC65    mov         eax,esi
 0048EC67    call        @ClassDestroy
 0048EC6C    pop         esi
 0048EC6D    pop         ebx
 0048EC6E    ret
*}
end;

//0048EC70
procedure TPersistent.Assign(Source:TPersistent);
begin
{*
 0048EC70    test        edx,edx
>0048EC72    je          0048EC7A
 0048EC74    xchg        eax,edx
 0048EC75    mov         ecx,dword ptr [eax]
 0048EC77    call        dword ptr [ecx]
 0048EC79    ret
 0048EC7A    xor         edx,edx
 0048EC7C    call        TPersistent.AssignError
 0048EC81    ret
*}
end;

//0048EC84
procedure TPersistent.AssignError(Source:TPersistent);
begin
{*
 0048EC84    push        ebp
 0048EC85    mov         ebp,esp
 0048EC87    add         esp,0FFFFFFE8
 0048EC8A    push        ebx
 0048EC8B    push        esi
 0048EC8C    xor         ecx,ecx
 0048EC8E    mov         dword ptr [ebp-18],ecx
 0048EC91    mov         dword ptr [ebp-4],ecx
 0048EC94    mov         esi,edx
 0048EC96    mov         ebx,eax
 0048EC98    xor         eax,eax
 0048EC9A    push        ebp
 0048EC9B    push        48ED1C
 0048ECA0    push        dword ptr fs:[eax]
 0048ECA3    mov         dword ptr fs:[eax],esp
 0048ECA6    test        esi,esi
>0048ECA8    je          0048ECB6
 0048ECAA    lea         edx,[ebp-4]
 0048ECAD    mov         eax,dword ptr [esi]
 0048ECAF    call        TObject.ClassName
>0048ECB4    jmp         0048ECC3
 0048ECB6    lea         eax,[ebp-4]
 0048ECB9    mov         edx,48ED38;'nil'
 0048ECBE    call        @UStrLAsg
 0048ECC3    mov         eax,dword ptr [ebp-4]
 0048ECC6    mov         dword ptr [ebp-14],eax
 0048ECC9    mov         byte ptr [ebp-10],11
 0048ECCD    lea         edx,[ebp-18]
 0048ECD0    mov         eax,dword ptr [ebx]
 0048ECD2    call        TObject.ClassName
 0048ECD7    mov         eax,dword ptr [ebp-18]
 0048ECDA    mov         dword ptr [ebp-0C],eax
 0048ECDD    mov         byte ptr [ebp-8],11
 0048ECE1    lea         eax,[ebp-14]
 0048ECE4    push        eax
 0048ECE5    push        1
 0048ECE7    mov         ecx,dword ptr ds:[7C4778];^SResString114:TResStringRec
 0048ECED    mov         dl,1
 0048ECEF    mov         eax,[00418D28];EConvertError
 0048ECF4    call        Exception.CreateResFmt
 0048ECF9    call        @RaiseExcept
 0048ECFE    xor         eax,eax
 0048ED00    pop         edx
 0048ED01    pop         ecx
 0048ED02    pop         ecx
 0048ED03    mov         dword ptr fs:[eax],edx
 0048ED06    push        48ED23
 0048ED0B    lea         eax,[ebp-18]
 0048ED0E    call        @UStrClr
 0048ED13    lea         eax,[ebp-4]
 0048ED16    call        @UStrClr
 0048ED1B    ret
>0048ED1C    jmp         @HandleFinally
>0048ED21    jmp         0048ED0B
 0048ED23    pop         esi
 0048ED24    pop         ebx
 0048ED25    mov         esp,ebp
 0048ED27    pop         ebp
 0048ED28    ret
*}
end;

//0048ED40
procedure TPersistent.AssignTo(Dest:TPersistent);
begin
{*
 0048ED40    xchg        eax,edx
 0048ED41    call        TPersistent.AssignError
 0048ED46    ret
*}
end;

//0048ED48
procedure TPersistent.DefineProperties(Filer:TFiler);
begin
{*
 0048ED48    ret
*}
end;

//0048ED4C
procedure TPersistent.GetNamePath;
begin
{*
 0048ED4C    push        ebp
 0048ED4D    mov         ebp,esp
 0048ED4F    push        0
 0048ED51    push        ebx
 0048ED52    push        esi
 0048ED53    push        edi
 0048ED54    mov         edi,edx
 0048ED56    mov         ebx,eax
 0048ED58    xor         eax,eax
 0048ED5A    push        ebp
 0048ED5B    push        48EDC7
 0048ED60    push        dword ptr fs:[eax]
 0048ED63    mov         dword ptr fs:[eax],esp
 0048ED66    mov         edx,edi
 0048ED68    mov         eax,dword ptr [ebx]
 0048ED6A    call        TObject.ClassName
 0048ED6F    mov         eax,ebx
 0048ED71    mov         si,0FFFF
 0048ED75    call        @CallDynaInst
 0048ED7A    test        eax,eax
>0048ED7C    je          0048EDB1
 0048ED7E    mov         eax,ebx
 0048ED80    mov         si,0FFFF
 0048ED84    call        @CallDynaInst
 0048ED89    lea         edx,[ebp-4]
 0048ED8C    mov         si,0FFFE
 0048ED90    call        @CallDynaInst
 0048ED95    cmp         dword ptr [ebp-4],0
>0048ED99    je          0048EDB1
 0048ED9B    push        dword ptr [ebp-4]
 0048ED9E    push        48EDE0;'.'
 0048EDA3    push        dword ptr [edi]
 0048EDA5    mov         eax,edi
 0048EDA7    mov         edx,3
 0048EDAC    call        @UStrCatN
 0048EDB1    xor         eax,eax
 0048EDB3    pop         edx
 0048EDB4    pop         ecx
 0048EDB5    pop         ecx
 0048EDB6    mov         dword ptr fs:[eax],edx
 0048EDB9    push        48EDCE
 0048EDBE    lea         eax,[ebp-4]
 0048EDC1    call        @UStrClr
 0048EDC6    ret
>0048EDC7    jmp         @HandleFinally
>0048EDCC    jmp         0048EDBE
 0048EDCE    pop         edi
 0048EDCF    pop         esi
 0048EDD0    pop         ebx
 0048EDD1    pop         ecx
 0048EDD2    pop         ebp
 0048EDD3    ret
*}
end;

//0048EDE4
procedure TPersistent.sub_0048EDE4;
begin
{*
 0048EDE4    xor         eax,eax
 0048EDE6    ret
*}
end;

//0048EDE8
procedure TInterfacedPersistent.AfterConstruction;
begin
{*
 0048EDE8    push        ebx
 0048EDE9    push        esi
 0048EDEA    mov         ebx,eax
 0048EDEC    mov         eax,ebx
 0048EDEE    call        TObject.AfterConstruction
 0048EDF3    mov         eax,ebx
 0048EDF5    mov         si,0FFFF
 0048EDF9    call        @CallDynaInst
 0048EDFE    test        eax,eax
>0048EE00    je          0048EE23
 0048EE02    mov         eax,ebx
 0048EE04    mov         si,0FFFF
 0048EE08    call        @CallDynaInst
 0048EE0D    push        eax
 0048EE0E    lea         eax,[ebx+4]
 0048EE11    call        @IntfClear
 0048EE16    mov         ecx,eax
 0048EE18    mov         edx,48EE28
 0048EE1D    pop         eax
 0048EE1E    call        TObject.GetInterface
 0048EE23    pop         esi
 0048EE24    pop         ebx
 0048EE25    ret
*}
end;

//0048EE38
function TInterfacedPersistent._AddRef:Integer; stdcall;
begin
{*
 0048EE38    push        ebp
 0048EE39    mov         ebp,esp
 0048EE3B    mov         eax,dword ptr [ebp+8]
 0048EE3E    cmp         dword ptr [eax+4],0
>0048EE42    je          0048EE4F
 0048EE44    mov         eax,dword ptr [eax+4]
 0048EE47    push        eax
 0048EE48    mov         eax,dword ptr [eax]
 0048EE4A    call        dword ptr [eax+4]
>0048EE4D    jmp         0048EE52
 0048EE4F    or          eax,0FFFFFFFF
 0048EE52    pop         ebp
 0048EE53    ret         4
*}
end;

//0048EE58
function TInterfacedPersistent._Release:Integer; stdcall;
begin
{*
 0048EE58    push        ebp
 0048EE59    mov         ebp,esp
 0048EE5B    mov         eax,dword ptr [ebp+8]
 0048EE5E    cmp         dword ptr [eax+4],0
>0048EE62    je          0048EE6F
 0048EE64    mov         eax,dword ptr [eax+4]
 0048EE67    push        eax
 0048EE68    mov         eax,dword ptr [eax]
 0048EE6A    call        dword ptr [eax+8]
>0048EE6D    jmp         0048EE72
 0048EE6F    or          eax,0FFFFFFFF
 0048EE72    pop         ebp
 0048EE73    ret         4
*}
end;

//0048EE78
{*function TInterfacedPersistent.QueryInterface(IID:TGUID; Obj:?):HRESULT; stdcall;
begin
 0048EE78    push        ebp
 0048EE79    mov         ebp,esp
 0048EE7B    push        ebx
 0048EE7C    mov         ebx,dword ptr [ebp+8]
 0048EE7F    mov         ecx,dword ptr [ebp+10]
 0048EE82    mov         edx,dword ptr [ebp+0C]
 0048EE85    mov         eax,ebx
 0048EE87    call        TObject.GetInterface
 0048EE8C    test        al,al
>0048EE8E    je          0048EE94
 0048EE90    xor         eax,eax
>0048EE92    jmp         0048EE99
 0048EE94    mov         eax,80004002
 0048EE99    pop         ebx
 0048EE9A    pop         ebp
 0048EE9B    ret         0C
end;*}

//0048EEA0
procedure GetDesigner(Obj:TPersistent; var Result:IDesignerNotify);
begin
{*
 0048EEA0    push        ebp
 0048EEA1    mov         ebp,esp
 0048EEA3    push        ecx
 0048EEA4    push        ebx
 0048EEA5    push        esi
 0048EEA6    push        edi
 0048EEA7    mov         dword ptr [ebp-4],edx
 0048EEAA    mov         edi,eax
 0048EEAC    mov         eax,dword ptr [ebp-4]
 0048EEAF    test        eax,eax
>0048EEB1    je          0048EEB7
 0048EEB3    xor         edx,edx
 0048EEB5    mov         dword ptr [eax],edx
 0048EEB7    mov         eax,dword ptr [ebp-4]
 0048EEBA    call        @IntfClear
 0048EEBF    test        edi,edi
>0048EEC1    je          0048EF29
 0048EEC3    mov         eax,edi
 0048EEC5    mov         si,0FFFF
 0048EEC9    call        @CallDynaInst
 0048EECE    mov         ebx,eax
 0048EED0    test        ebx,ebx
>0048EED2    jne         0048EF01
 0048EED4    mov         eax,edi
 0048EED6    mov         edx,dword ptr ds:[478C44];TComponent
 0048EEDC    call        @IsClass
 0048EEE1    test        al,al
>0048EEE3    je          0048EF29
 0048EEE5    test        byte ptr [edi+1C],10
>0048EEE9    je          0048EF29
 0048EEEB    mov         eax,dword ptr [ebp-4]
 0048EEEE    call        @IntfClear
 0048EEF3    push        eax
 0048EEF4    push        48EF30
 0048EEF9    push        edi
 0048EEFA    mov         eax,dword ptr [edi]
 0048EEFC    call        dword ptr [eax+38]
>0048EEFF    jmp         0048EF29
 0048EF01    mov         eax,edi
 0048EF03    mov         edx,dword ptr ds:[478C44];TComponent
 0048EF09    call        @IsClass
 0048EF0E    test        al,al
>0048EF10    je          0048EF18
 0048EF12    test        byte ptr [edi+1C],10
>0048EF16    je          0048EF29
 0048EF18    mov         eax,dword ptr [ebp-4]
 0048EF1B    call        @IntfClear
 0048EF20    mov         edx,eax
 0048EF22    mov         eax,ebx
 0048EF24    call        GetDesigner
 0048EF29    pop         edi
 0048EF2A    pop         esi
 0048EF2B    pop         ebx
 0048EF2C    pop         ecx
 0048EF2D    pop         ebp
 0048EF2E    ret
*}
end;

//0048EF40
{*procedure sub_0048EF40(?:TComponent; ?:?);
begin
 0048EF40    push        ebp
 0048EF41    mov         ebp,esp
 0048EF43    push        esi
 0048EF44    push        edi
 0048EF45    mov         edi,edx
 0048EF47    mov         esi,eax
 0048EF49    test        edi,edi
>0048EF4B    je          0048EF51
 0048EF4D    xor         eax,eax
 0048EF4F    mov         dword ptr [edi],eax
 0048EF51    mov         eax,edi
 0048EF53    call        @IntfClear
 0048EF58    test        esi,esi
>0048EF5A    je          0048EF75
 0048EF5C    test        byte ptr [esi+1C],10
>0048EF60    je          0048EF75
 0048EF62    mov         eax,edi
 0048EF64    call        @IntfClear
 0048EF69    push        eax
 0048EF6A    push        48EF7C
 0048EF6F    push        esi
 0048EF70    mov         eax,dword ptr [esi]
 0048EF72    call        dword ptr [eax+38]
 0048EF75    pop         edi
 0048EF76    pop         esi
 0048EF77    pop         ebp
 0048EF78    ret
end;*}

//0048EF8C
procedure NotifyDesigner(Self:TPersistent; Item:TPersistent; Operation:TOperation);
begin
{*
 0048EF8C    push        ebp
 0048EF8D    mov         ebp,esp
 0048EF8F    push        0
 0048EF91    push        ebx
 0048EF92    push        esi
 0048EF93    push        edi
 0048EF94    mov         ebx,ecx
 0048EF96    mov         esi,edx
 0048EF98    mov         edi,eax
 0048EF9A    xor         eax,eax
 0048EF9C    push        ebp
 0048EF9D    push        48EFE1
 0048EFA2    push        dword ptr fs:[eax]
 0048EFA5    mov         dword ptr fs:[eax],esp
 0048EFA8    lea         eax,[ebp-4]
 0048EFAB    call        @IntfClear
 0048EFB0    mov         edx,eax
 0048EFB2    mov         eax,edi
 0048EFB4    call        GetDesigner
 0048EFB9    cmp         dword ptr [ebp-4],0
>0048EFBD    je          0048EFCB
 0048EFBF    mov         ecx,ebx
 0048EFC1    mov         edx,esi
 0048EFC3    mov         eax,dword ptr [ebp-4]
 0048EFC6    mov         ebx,dword ptr [eax]
 0048EFC8    call        dword ptr [ebx+10]
 0048EFCB    xor         eax,eax
 0048EFCD    pop         edx
 0048EFCE    pop         ecx
 0048EFCF    pop         ecx
 0048EFD0    mov         dword ptr fs:[eax],edx
 0048EFD3    push        48EFE8
 0048EFD8    lea         eax,[ebp-4]
 0048EFDB    call        @IntfClear
 0048EFE0    ret
>0048EFE1    jmp         @HandleFinally
>0048EFE6    jmp         0048EFD8
 0048EFE8    pop         edi
 0048EFE9    pop         esi
 0048EFEA    pop         ebx
 0048EFEB    pop         ecx
 0048EFEC    pop         ebp
 0048EFED    ret
*}
end;

//0048EFF0
constructor TCollectionItem.Create;
begin
{*
 0048EFF0    push        ebx
 0048EFF1    push        esi
 0048EFF2    test        dl,dl
>0048EFF4    je          0048EFFE
 0048EFF6    add         esp,0FFFFFFF0
 0048EFF9    call        @ClassCreate
 0048EFFE    mov         ebx,edx
 0048F000    mov         esi,eax
 0048F002    mov         edx,ecx
 0048F004    mov         eax,esi
 0048F006    mov         ecx,dword ptr [eax]
 0048F008    call        dword ptr [ecx+10]
 0048F00B    mov         eax,esi
 0048F00D    test        bl,bl
>0048F00F    je          0048F020
 0048F011    call        @AfterConstruction
 0048F016    pop         dword ptr fs:[0]
 0048F01D    add         esp,0C
 0048F020    mov         eax,esi
 0048F022    pop         esi
 0048F023    pop         ebx
 0048F024    ret
*}
end;

//0048F028
destructor TCollectionItem.Destroy();
begin
{*
 0048F028    push        ebx
 0048F029    push        esi
 0048F02A    call        @BeforeDestruction
 0048F02F    mov         ebx,edx
 0048F031    mov         esi,eax
 0048F033    cmp         dword ptr [esi+4],0
>0048F037    je          0048F040
 0048F039    mov         eax,esi
 0048F03B    mov         edx,dword ptr [eax]
 0048F03D    call        dword ptr [edx+20]
 0048F040    mov         dl,0FC
 0048F042    and         dl,bl
 0048F044    mov         eax,esi
 0048F046    call        TMemoryStream.Destroy
 0048F04B    test        bl,bl
>0048F04D    jle         0048F056
 0048F04F    mov         eax,esi
 0048F051    call        @ClassDestroy
 0048F056    pop         esi
 0048F057    pop         ebx
 0048F058    ret
*}
end;

//0048F05C
procedure TCollectionItem.Release;
begin
{*
 0048F05C    xor         edx,edx
 0048F05E    mov         ecx,dword ptr [eax]
 0048F060    call        dword ptr [ecx+10]
 0048F063    ret
*}
end;

//0048F064
procedure TCollectionItem.Changed(AllItems:Boolean);
begin
{*
 0048F064    mov         ecx,dword ptr [eax+4]
 0048F067    test        ecx,ecx
>0048F069    je          0048F082
 0048F06B    cmp         dword ptr [ecx+0C],0
>0048F06F    jne         0048F082
 0048F071    test        dl,dl
>0048F073    je          0048F079
 0048F075    xor         edx,edx
>0048F077    jmp         0048F07B
 0048F079    mov         edx,eax
 0048F07B    mov         eax,ecx
 0048F07D    mov         ecx,dword ptr [eax]
 0048F07F    call        dword ptr [ecx+1C]
 0048F082    ret
*}
end;

//0048F084
function TCollectionItem.GetIndex:Integer;
begin
{*
 0048F084    add         esp,0FFFFFFF8
 0048F087    mov         edx,dword ptr [eax+4]
 0048F08A    test        edx,edx
>0048F08C    je          0048F0A9
 0048F08E    mov         edx,dword ptr [edx+8]
 0048F091    mov         dword ptr [esp],eax
 0048F094    lea         eax,[edx+8]
 0048F097    mov         dword ptr [esp+4],eax
 0048F09B    mov         edx,esp
 0048F09D    mov         eax,dword ptr [esp+4]
 0048F0A1    call        00434714
 0048F0A6    pop         ecx
 0048F0A7    pop         edx
 0048F0A8    ret
 0048F0A9    or          eax,0FFFFFFFF
 0048F0AC    pop         ecx
 0048F0AD    pop         edx
 0048F0AE    ret
*}
end;

//0048F0B0
function TCollectionItem.GetDisplayName:UnicodeString;
begin
{*
 0048F0B0    push        ebx
 0048F0B1    push        esi
 0048F0B2    mov         esi,edx
 0048F0B4    mov         ebx,eax
 0048F0B6    mov         edx,esi
 0048F0B8    mov         eax,dword ptr [ebx]
 0048F0BA    call        TObject.ClassName
 0048F0BF    pop         esi
 0048F0C0    pop         ebx
 0048F0C1    ret
*}
end;

//0048F0C4
procedure TCollectionItem.GetNamePath;
begin
{*
 0048F0C4    push        ebp
 0048F0C5    mov         ebp,esp
 0048F0C7    add         esp,0FFFFFFEC
 0048F0CA    push        ebx
 0048F0CB    push        esi
 0048F0CC    push        edi
 0048F0CD    xor         ecx,ecx
 0048F0CF    mov         dword ptr [ebp-14],ecx
 0048F0D2    mov         edi,edx
 0048F0D4    mov         ebx,eax
 0048F0D6    xor         eax,eax
 0048F0D8    push        ebp
 0048F0D9    push        48F145
 0048F0DE    push        dword ptr fs:[eax]
 0048F0E1    mov         dword ptr fs:[eax],esp
 0048F0E4    cmp         dword ptr [ebx+4],0
>0048F0E8    je          0048F126
 0048F0EA    push        edi
 0048F0EB    lea         edx,[ebp-14]
 0048F0EE    mov         eax,dword ptr [ebx+4]
 0048F0F1    mov         si,0FFFE
 0048F0F5    call        @CallDynaInst
 0048F0FA    mov         eax,dword ptr [ebp-14]
 0048F0FD    mov         dword ptr [ebp-10],eax
 0048F100    mov         byte ptr [ebp-0C],11
 0048F104    mov         eax,ebx
 0048F106    call        TCollectionItem.GetIndex
 0048F10B    mov         dword ptr [ebp-8],eax
 0048F10E    mov         byte ptr [ebp-4],0
 0048F112    lea         edx,[ebp-10]
 0048F115    mov         ecx,1
 0048F11A    mov         eax,48F160;'%s[%d]'
 0048F11F    call        Format
>0048F124    jmp         0048F12F
 0048F126    mov         edx,edi
 0048F128    mov         eax,dword ptr [ebx]
 0048F12A    call        TObject.ClassName
 0048F12F    xor         eax,eax
 0048F131    pop         edx
 0048F132    pop         ecx
 0048F133    pop         ecx
 0048F134    mov         dword ptr fs:[eax],edx
 0048F137    push        48F14C
 0048F13C    lea         eax,[ebp-14]
 0048F13F    call        @UStrClr
 0048F144    ret
>0048F145    jmp         @HandleFinally
>0048F14A    jmp         0048F13C
 0048F14C    pop         edi
 0048F14D    pop         esi
 0048F14E    pop         ebx
 0048F14F    mov         esp,ebp
 0048F151    pop         ebp
 0048F152    ret
*}
end;

//0048F170
procedure TCollectionItem.sub_0048EDE4;
begin
{*
 0048F170    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 0048F173    ret
*}
end;

//0048F174
procedure TCollectionItem.SetCollection(Value:TCollection);
begin
{*
 0048F174    push        ebx
 0048F175    push        esi
 0048F176    mov         esi,edx
 0048F178    mov         ebx,eax
 0048F17A    mov         eax,dword ptr [ebx+4]
 0048F17D    cmp         esi,eax
>0048F17F    je          0048F199
 0048F181    test        eax,eax
>0048F183    je          0048F18C
 0048F185    mov         edx,ebx
 0048F187    call        TCollection.RemoveItem
 0048F18C    test        esi,esi
>0048F18E    je          0048F199
 0048F190    mov         edx,ebx
 0048F192    mov         eax,esi
 0048F194    call        TCollection.InsertItem
 0048F199    pop         esi
 0048F19A    pop         ebx
 0048F19B    ret
*}
end;

//0048F19C
procedure TCollectionItem.SetDisplayName(const Value:UnicodeString);
begin
{*
 0048F19C    xor         edx,edx
 0048F19E    call        TCollectionItem.Changed
 0048F1A3    ret
*}
end;

//0048F1A4
{*procedure sub_0048F1A4(?:?);
begin
 0048F1A4    push        ebx
 0048F1A5    push        esi
 0048F1A6    mov         esi,edx
 0048F1A8    mov         ebx,eax
 0048F1AA    mov         eax,ebx
 0048F1AC    call        TCollectionItem.GetIndex
 0048F1B1    test        eax,eax
>0048F1B3    jl          0048F1D3
 0048F1B5    cmp         esi,eax
>0048F1B7    je          0048F1D3
 0048F1B9    mov         edx,dword ptr [ebx+4];TCollectionItem.FCollection:TCollection
 0048F1BC    mov         edx,dword ptr [edx+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0048F1BF    add         edx,8;TList<System.Classes.TCollectionItem>.FCount:Integer
 0048F1C2    mov         ecx,esi
 0048F1C4    xchg        eax,edx
 0048F1C5    call        004355E8
 0048F1CA    mov         dl,1
 0048F1CC    mov         eax,ebx
 0048F1CE    call        TCollectionItem.Changed
 0048F1D3    pop         esi
 0048F1D4    pop         ebx
 0048F1D5    ret
end;*}

//0048F1D8
procedure TCollectionEnumerator.GetCurrent;
begin
{*
 0048F1D8    mov         edx,dword ptr [eax+4];TCollectionEnumerator.FIndex:Integer
 0048F1DB    mov         eax,dword ptr [eax+8];TCollectionEnumerator.FCollection:TCollection
 0048F1DE    call        TCollection.GetItem
 0048F1E3    ret
*}
end;

//0048F1E4
constructor TCollection.Create;
begin
{*
 0048F1E4    push        ebx
 0048F1E5    push        esi
 0048F1E6    test        dl,dl
>0048F1E8    je          0048F1F2
 0048F1EA    add         esp,0FFFFFFF0
 0048F1ED    call        @ClassCreate
 0048F1F2    mov         ebx,edx
 0048F1F4    mov         esi,eax
 0048F1F6    mov         dword ptr [esi+4],ecx
 0048F1F9    mov         dl,1
 0048F1FB    mov         eax,[0047C22C];TList<System.Classes.TCollectionItem>
 0048F200    call        TList<System.Classes.TCollectionItem>.Create
 0048F205    mov         dword ptr [esi+8],eax
 0048F208    xor         ecx,ecx
 0048F20A    mov         edx,esi
 0048F20C    mov         eax,esi
 0048F20E    call        NotifyDesigner
 0048F213    mov         eax,esi
 0048F215    test        bl,bl
>0048F217    je          0048F228
 0048F219    call        @AfterConstruction
 0048F21E    pop         dword ptr fs:[0]
 0048F225    add         esp,0C
 0048F228    mov         eax,esi
 0048F22A    pop         esi
 0048F22B    pop         ebx
 0048F22C    ret
*}
end;

//0048F230
destructor TCollection.Destroy();
begin
{*
 0048F230    push        ebx
 0048F231    push        esi
 0048F232    call        @BeforeDestruction
 0048F237    mov         ebx,edx
 0048F239    mov         esi,eax
 0048F23B    mov         dword ptr [esi+0C],1
 0048F242    cmp         dword ptr [esi+8],0
>0048F246    je          0048F24F
 0048F248    mov         eax,esi
 0048F24A    call        TCollection.Clear
 0048F24F    mov         cl,1
 0048F251    mov         edx,esi
 0048F253    mov         eax,esi
 0048F255    call        NotifyDesigner
 0048F25A    mov         eax,dword ptr [esi+8]
 0048F25D    call        TObject.Free
 0048F262    mov         dl,0FC
 0048F264    and         dl,bl
 0048F266    mov         eax,esi
 0048F268    call        TMemoryStream.Destroy
 0048F26D    test        bl,bl
>0048F26F    jle         0048F278
 0048F271    mov         eax,esi
 0048F273    call        @ClassDestroy
 0048F278    pop         esi
 0048F279    pop         ebx
 0048F27A    ret
*}
end;

//0048F27C
function TCollection.Add:TCollectionItem;
begin
{*
 0048F27C    push        ebx
 0048F27D    push        ecx
 0048F27E    mov         ebx,eax
 0048F280    mov         ecx,ebx
 0048F282    mov         dl,1
 0048F284    mov         eax,dword ptr [ebx+4]
 0048F287    call        dword ptr [eax+1C]
 0048F28A    mov         dword ptr [esp],eax
 0048F28D    mov         edx,esp
 0048F28F    mov         eax,ebx
 0048F291    mov         ecx,dword ptr [eax]
 0048F293    call        dword ptr [ecx+0C]
 0048F296    mov         eax,dword ptr [esp]
 0048F299    pop         edx
 0048F29A    pop         ebx
 0048F29B    ret
*}
end;

//0048F29C
procedure TCollection.Assign(Source:TPersistent);
begin
{*
 0048F29C    push        ebp
 0048F29D    mov         ebp,esp
 0048F29F    add         esp,0FFFFFFF4
 0048F2A2    push        ebx
 0048F2A3    push        esi
 0048F2A4    push        edi
 0048F2A5    mov         dword ptr [ebp-8],edx
 0048F2A8    mov         dword ptr [ebp-4],eax
 0048F2AB    mov         eax,dword ptr [ebp-8]
 0048F2AE    mov         edx,dword ptr ds:[46DF34];TCollection
 0048F2B4    call        @IsClass
 0048F2B9    test        al,al
>0048F2BB    je          0048F352
 0048F2C1    mov         eax,dword ptr [ebp-4]
 0048F2C4    mov         edx,dword ptr [eax]
 0048F2C6    call        dword ptr [edx+20];TCollection.BeginUpdate
 0048F2C9    xor         eax,eax
 0048F2CB    push        ebp
 0048F2CC    push        48F34B
 0048F2D1    push        dword ptr fs:[eax]
 0048F2D4    mov         dword ptr fs:[eax],esp
>0048F2D7    jmp         0048F2E7
 0048F2D9    mov         eax,dword ptr [ebx+20]
 0048F2DC    mov         esi,dword ptr [eax+edi*4-4]
 0048F2E0    mov         eax,esi
 0048F2E2    call        TObject.Free
 0048F2E7    mov         eax,dword ptr [ebp-4]
 0048F2EA    mov         ebx,dword ptr [eax+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0048F2ED    mov         edi,dword ptr [ebx+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0048F2F0    test        edi,edi
>0048F2F2    jg          0048F2D9
 0048F2F4    mov         eax,dword ptr [ebp-8]
 0048F2F7    mov         eax,dword ptr [eax+8]
 0048F2FA    mov         eax,dword ptr [eax+8]
 0048F2FD    dec         eax
 0048F2FE    test        eax,eax
>0048F300    jl          0048F335
 0048F302    inc         eax
 0048F303    mov         dword ptr [ebp-0C],eax
 0048F306    xor         esi,esi
 0048F308    mov         eax,dword ptr [ebp-4]
 0048F30B    call        TCollection.Add
 0048F310    mov         ebx,eax
 0048F312    mov         eax,dword ptr [ebp-8]
 0048F315    mov         edi,dword ptr [eax+8]
 0048F318    lea         eax,[edi+8]
 0048F31B    mov         edx,esi
 0048F31D    call        00434534
 0048F322    mov         eax,dword ptr [edi+20]
 0048F325    mov         edx,dword ptr [eax+esi*4]
 0048F328    mov         eax,ebx
 0048F32A    mov         ecx,dword ptr [eax]
 0048F32C    call        dword ptr [ecx+8];TPersistent.Assign
 0048F32F    inc         esi
 0048F330    dec         dword ptr [ebp-0C]
>0048F333    jne         0048F308
 0048F335    xor         eax,eax
 0048F337    pop         edx
 0048F338    pop         ecx
 0048F339    pop         ecx
 0048F33A    mov         dword ptr fs:[eax],edx
 0048F33D    push        48F35D
 0048F342    mov         eax,dword ptr [ebp-4]
 0048F345    mov         edx,dword ptr [eax]
 0048F347    call        dword ptr [edx+24];TCollection.EndUpdate
 0048F34A    ret
>0048F34B    jmp         @HandleFinally
>0048F350    jmp         0048F342
 0048F352    mov         edx,dword ptr [ebp-8]
 0048F355    mov         eax,dword ptr [ebp-4]
 0048F358    call        TPersistent.Assign
 0048F35D    pop         edi
 0048F35E    pop         esi
 0048F35F    pop         ebx
 0048F360    mov         esp,ebp
 0048F362    pop         ebp
 0048F363    ret
*}
end;

//0048F364
procedure TCollection.BeginUpdate;
begin
{*
 0048F364    inc         dword ptr [eax+0C];TCollection.FUpdateCount:Integer
 0048F367    ret
*}
end;

//0048F368
procedure TCollection.Changed;
begin
{*
 0048F368    cmp         dword ptr [eax+0C],0
>0048F36C    jne         0048F375
 0048F36E    xor         edx,edx
 0048F370    mov         ecx,dword ptr [eax]
 0048F372    call        dword ptr [ecx+1C]
 0048F375    ret
*}
end;

//0048F378
procedure TCollection.Clear;
begin
{*
 0048F378    push        ebp
 0048F379    mov         ebp,esp
 0048F37B    push        ecx
 0048F37C    push        ebx
 0048F37D    push        esi
 0048F37E    push        edi
 0048F37F    mov         dword ptr [ebp-4],eax
 0048F382    mov         eax,dword ptr [ebp-4]
 0048F385    mov         eax,dword ptr [eax+8]
 0048F388    cmp         dword ptr [eax+8],0
>0048F38C    jle         0048F3DE
 0048F38E    mov         eax,dword ptr [ebp-4]
 0048F391    mov         edx,dword ptr [eax]
 0048F393    call        dword ptr [edx+20]
 0048F396    xor         eax,eax
 0048F398    push        ebp
 0048F399    push        48F3D7
 0048F39E    push        dword ptr fs:[eax]
 0048F3A1    mov         dword ptr fs:[eax],esp
>0048F3A4    jmp         0048F3B4
 0048F3A6    mov         eax,dword ptr [ebx+20]
 0048F3A9    mov         esi,dword ptr [eax+edi*4-4]
 0048F3AD    mov         eax,esi
 0048F3AF    call        TObject.Free
 0048F3B4    mov         eax,dword ptr [ebp-4]
 0048F3B7    mov         ebx,dword ptr [eax+8]
 0048F3BA    mov         edi,dword ptr [ebx+8]
 0048F3BD    test        edi,edi
>0048F3BF    jg          0048F3A6
 0048F3C1    xor         eax,eax
 0048F3C3    pop         edx
 0048F3C4    pop         ecx
 0048F3C5    pop         ecx
 0048F3C6    mov         dword ptr fs:[eax],edx
 0048F3C9    push        48F3DE
 0048F3CE    mov         eax,dword ptr [ebp-4]
 0048F3D1    mov         edx,dword ptr [eax]
 0048F3D3    call        dword ptr [edx+24]
 0048F3D6    ret
>0048F3D7    jmp         @HandleFinally
>0048F3DC    jmp         0048F3CE
 0048F3DE    pop         edi
 0048F3DF    pop         esi
 0048F3E0    pop         ebx
 0048F3E1    pop         ecx
 0048F3E2    pop         ebp
 0048F3E3    ret
*}
end;

//0048F3E4
procedure TCollection.EndUpdate;
begin
{*
 0048F3E4    dec         dword ptr [eax+0C]
 0048F3E7    call        TCollection.Changed
 0048F3EC    ret
*}
end;

//0048F3F0
function TCollection.FindItemID(ID:Integer):TCollectionItem;
begin
{*
 0048F3F0    push        ebx
 0048F3F1    push        esi
 0048F3F2    push        edi
 0048F3F3    push        ebp
 0048F3F4    push        ecx
 0048F3F5    mov         dword ptr [esp],edx
 0048F3F8    mov         ebp,eax
 0048F3FA    mov         eax,dword ptr [ebp+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0048F3FD    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0048F400    dec         edi
 0048F401    test        edi,edi
>0048F403    jl          0048F427
 0048F405    inc         edi
 0048F406    xor         ebx,ebx
 0048F408    mov         esi,dword ptr [ebp+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0048F40B    lea         eax,[esi+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0048F40E    mov         edx,ebx
 0048F410    call        00434534
 0048F415    mov         eax,dword ptr [esi+20]
 0048F418    mov         eax,dword ptr [eax+ebx*4]
 0048F41B    mov         edx,dword ptr [eax+8]
 0048F41E    cmp         edx,dword ptr [esp]
>0048F421    je          0048F429
 0048F423    inc         ebx
 0048F424    dec         edi
>0048F425    jne         0048F408
 0048F427    xor         eax,eax
 0048F429    pop         edx
 0048F42A    pop         ebp
 0048F42B    pop         edi
 0048F42C    pop         esi
 0048F42D    pop         ebx
 0048F42E    ret
*}
end;

//0048F430
procedure TCollection.sub_0048F430;
begin
{*
 0048F430    xor         eax,eax
 0048F432    ret
*}
end;

//0048F434
procedure TCollection.GetAttr(Index:Integer);
begin
{*
 0048F434    push        ebx
 0048F435    mov         ebx,ecx
 0048F437    mov         eax,ebx
 0048F439    call        @UStrClr
 0048F43E    pop         ebx
 0048F43F    ret
*}
end;

//0048F458
procedure TCollection.GetItemAttr(Index:Integer; ItemIndex:Integer);
begin
{*
 0048F458    push        ebp
 0048F459    mov         ebp,esp
 0048F45B    push        ebx
 0048F45C    push        esi
 0048F45D    mov         esi,ecx
 0048F45F    mov         ebx,eax
 0048F461    mov         edx,esi
 0048F463    mov         eax,ebx
 0048F465    call        TCollection.GetItem
 0048F46A    mov         edx,dword ptr [ebp+8]
 0048F46D    mov         ecx,dword ptr [eax]
 0048F46F    call        dword ptr [ecx+0C]
 0048F472    pop         esi
 0048F473    pop         ebx
 0048F474    pop         ebp
 0048F475    ret         4
*}
end;

//0048F478
function TCollection.GetCount:Integer;
begin
{*
 0048F478    mov         eax,dword ptr [eax+8]
 0048F47B    mov         eax,dword ptr [eax+8]
 0048F47E    ret
*}
end;

//0048F480
function TCollection.GetItem(Index:Integer):TCollectionItem;
begin
{*
 0048F480    push        ebx
 0048F481    push        esi
 0048F482    mov         esi,edx
 0048F484    mov         ebx,dword ptr [eax+8]
 0048F487    lea         eax,[ebx+8]
 0048F48A    mov         edx,esi
 0048F48C    call        00434534
 0048F491    mov         eax,dword ptr [ebx+20]
 0048F494    mov         eax,dword ptr [eax+esi*4]
 0048F497    pop         esi
 0048F498    pop         ebx
 0048F499    ret
*}
end;

//0048F49C
procedure TCollection.GetNamePath;
begin
{*
 0048F49C    push        ebp
 0048F49D    mov         ebp,esp
 0048F49F    push        0
 0048F4A1    push        0
 0048F4A3    push        ebx
 0048F4A4    push        esi
 0048F4A5    push        edi
 0048F4A6    mov         edi,edx
 0048F4A8    mov         ebx,eax
 0048F4AA    xor         eax,eax
 0048F4AC    push        ebp
 0048F4AD    push        48F52F
 0048F4B2    push        dword ptr fs:[eax]
 0048F4B5    mov         dword ptr fs:[eax],esp
 0048F4B8    mov         edx,edi
 0048F4BA    mov         eax,dword ptr [ebx]
 0048F4BC    call        TObject.ClassName
 0048F4C1    mov         eax,ebx
 0048F4C3    mov         si,0FFFF
 0048F4C7    call        @CallDynaInst
 0048F4CC    test        eax,eax
>0048F4CE    je          0048F514
 0048F4D0    mov         eax,ebx
 0048F4D2    mov         si,0FFFF
 0048F4D6    call        @CallDynaInst
 0048F4DB    lea         edx,[ebp-4]
 0048F4DE    mov         si,0FFFE
 0048F4E2    call        @CallDynaInst
 0048F4E7    cmp         dword ptr [ebp-4],0
>0048F4EB    je          0048F514
 0048F4ED    lea         edx,[ebp-8]
 0048F4F0    mov         eax,ebx
 0048F4F2    call        TCollection.GetPropName
 0048F4F7    cmp         dword ptr [ebp-8],0
>0048F4FB    je          0048F514
 0048F4FD    push        dword ptr [ebp-4]
 0048F500    push        48F54C;'.'
 0048F505    push        dword ptr [ebp-8]
 0048F508    mov         eax,edi
 0048F50A    mov         edx,3
 0048F50F    call        @UStrCatN
 0048F514    xor         eax,eax
 0048F516    pop         edx
 0048F517    pop         ecx
 0048F518    pop         ecx
 0048F519    mov         dword ptr fs:[eax],edx
 0048F51C    push        48F536
 0048F521    lea         eax,[ebp-8]
 0048F524    mov         edx,2
 0048F529    call        @UStrArrayClr
 0048F52E    ret
>0048F52F    jmp         @HandleFinally
>0048F534    jmp         0048F521
 0048F536    pop         edi
 0048F537    pop         esi
 0048F538    pop         ebx
 0048F539    pop         ecx
 0048F53A    pop         ecx
 0048F53B    pop         ebp
 0048F53C    ret
*}
end;

//0048F550
function TCollection.GetPropName:UnicodeString;
begin
{*
 0048F550    push        ebp
 0048F551    mov         ebp,esp
 0048F553    add         esp,0FFFFFFF0
 0048F556    push        ebx
 0048F557    push        esi
 0048F558    push        edi
 0048F559    xor         ecx,ecx
 0048F55B    mov         dword ptr [ebp-10],ecx
 0048F55E    mov         dword ptr [ebp-8],edx
 0048F561    mov         dword ptr [ebp-4],eax
 0048F564    xor         eax,eax
 0048F566    push        ebp
 0048F567    push        48F68D
 0048F56C    push        dword ptr fs:[eax]
 0048F56F    mov         dword ptr fs:[eax],esp
 0048F572    mov         eax,dword ptr [ebp-8]
 0048F575    mov         edx,dword ptr [ebp-4]
 0048F578    mov         edx,dword ptr [edx+14]
 0048F57B    call        @UStrAsg
 0048F580    mov         eax,dword ptr [ebp-4]
 0048F583    mov         si,0FFFF
 0048F587    call        @CallDynaInst
 0048F58C    mov         edi,eax
 0048F58E    mov         eax,dword ptr [ebp-8]
 0048F591    cmp         dword ptr [eax],0
>0048F594    jne         0048F59A
 0048F596    test        edi,edi
>0048F598    jne         0048F59E
 0048F59A    mov         al,1
>0048F59C    jmp         0048F5A9
 0048F59E    mov         eax,dword ptr [edi]
 0048F5A0    add         eax,0FFFFFFB8
 0048F5A3    cmp         dword ptr [eax],0
 0048F5A6    sete        al
 0048F5A9    test        al,al
>0048F5AB    jne         0048F677
 0048F5B1    mov         eax,dword ptr [edi]
 0048F5B3    add         eax,0FFFFFFB8
 0048F5B6    mov         eax,dword ptr [eax]
 0048F5B8    call        GetTypeData
 0048F5BD    mov         ebx,eax
 0048F5BF    test        ebx,ebx
>0048F5C1    je          0048F677
 0048F5C7    cmp         word ptr [ebx+8],0
>0048F5CC    je          0048F677
 0048F5D2    movsx       eax,word ptr [ebx+8]
 0048F5D6    add         eax,eax
 0048F5D8    add         eax,eax
 0048F5DA    call        @GetMem
 0048F5DF    mov         dword ptr [ebp-0C],eax
 0048F5E2    xor         edx,edx
 0048F5E4    push        ebp
 0048F5E5    push        48F662
 0048F5EA    push        dword ptr fs:[edx]
 0048F5ED    mov         dword ptr fs:[edx],esp
 0048F5F0    mov         eax,dword ptr [edi]
 0048F5F2    add         eax,0FFFFFFB8
 0048F5F5    mov         eax,dword ptr [eax]
 0048F5F7    mov         edx,dword ptr [ebp-0C]
 0048F5FA    call        GetPropInfos
 0048F5FF    movsx       esi,word ptr [ebx+8]
 0048F603    dec         esi
 0048F604    test        esi,esi
>0048F606    jl          0048F64C
 0048F608    inc         esi
 0048F609    xor         ebx,ebx
 0048F60B    mov         eax,dword ptr [ebp-0C]
 0048F60E    mov         eax,dword ptr [eax+ebx*4]
 0048F611    mov         eax,dword ptr [eax]
 0048F613    mov         eax,dword ptr [eax]
 0048F615    cmp         byte ptr [eax],7
>0048F618    jne         0048F648
 0048F61A    mov         eax,dword ptr [ebp-0C]
 0048F61D    mov         edx,dword ptr [eax+ebx*4]
 0048F620    mov         eax,edi
 0048F622    call        GetOrdProp
 0048F627    cmp         eax,dword ptr [ebp-4]
>0048F62A    jne         0048F648
 0048F62C    mov         eax,dword ptr [ebp-0C]
 0048F62F    mov         eax,dword ptr [eax+ebx*4]
 0048F632    lea         edx,[ebp-10]
 0048F635    call        GetPropName
 0048F63A    mov         edx,dword ptr [ebp-10]
 0048F63D    mov         eax,dword ptr [ebp-4]
 0048F640    add         eax,14
 0048F643    call        @UStrAsg
 0048F648    inc         ebx
 0048F649    dec         esi
>0048F64A    jne         0048F60B
 0048F64C    xor         eax,eax
 0048F64E    pop         edx
 0048F64F    pop         ecx
 0048F650    pop         ecx
 0048F651    mov         dword ptr fs:[eax],edx
 0048F654    push        48F669
 0048F659    mov         eax,dword ptr [ebp-0C]
 0048F65C    call        @FreeMem
 0048F661    ret
>0048F662    jmp         @HandleFinally
>0048F667    jmp         0048F659
 0048F669    mov         eax,dword ptr [ebp-8]
 0048F66C    mov         edx,dword ptr [ebp-4]
 0048F66F    mov         edx,dword ptr [edx+14]
 0048F672    call        @UStrAsg
 0048F677    xor         eax,eax
 0048F679    pop         edx
 0048F67A    pop         ecx
 0048F67B    pop         ecx
 0048F67C    mov         dword ptr fs:[eax],edx
 0048F67F    push        48F694
 0048F684    lea         eax,[ebp-10]
 0048F687    call        @UStrClr
 0048F68C    ret
>0048F68D    jmp         @HandleFinally
>0048F692    jmp         0048F684
 0048F694    pop         edi
 0048F695    pop         esi
 0048F696    pop         ebx
 0048F697    mov         esp,ebp
 0048F699    pop         ebp
 0048F69A    ret
*}
end;

//0048F69C
procedure TCollection.InsertItem(Item:TCollectionItem);
begin
{*
 0048F69C    push        ebx
 0048F69D    push        esi
 0048F69E    push        edi
 0048F69F    push        ecx
 0048F6A0    mov         esi,edx
 0048F6A2    mov         ebx,eax
 0048F6A4    mov         eax,esi
 0048F6A6    mov         edx,dword ptr [ebx+4]
 0048F6A9    call        @IsClass
 0048F6AE    test        al,al
>0048F6B0    jne         0048F6C4
 0048F6B2    mov         edx,dword ptr ds:[7C4998];^SResString129:TResStringRec
 0048F6B8    xor         ecx,ecx
 0048F6BA    mov         eax,[0046C204];TList
 0048F6BF    call        TList.Error
 0048F6C4    mov         eax,dword ptr [ebx+8]
 0048F6C7    mov         dword ptr [esp],esi
 0048F6CA    mov         edx,esp
 0048F6CC    add         eax,8
 0048F6CF    call        0043489C
 0048F6D4    mov         dword ptr [esi+4],ebx
 0048F6D7    mov         eax,dword ptr [ebx+10]
 0048F6DA    mov         dword ptr [esi+8],eax
 0048F6DD    inc         dword ptr [ebx+10]
 0048F6E0    mov         edx,esi
 0048F6E2    mov         eax,ebx
 0048F6E4    mov         ecx,dword ptr [eax]
 0048F6E6    call        dword ptr [ecx+18]
 0048F6E9    xor         ecx,ecx
 0048F6EB    mov         edx,esi
 0048F6ED    mov         eax,ebx
 0048F6EF    mov         edi,dword ptr [eax]
 0048F6F1    call        dword ptr [edi+14]
 0048F6F4    mov         eax,ebx
 0048F6F6    call        TCollection.Changed
 0048F6FB    xor         ecx,ecx
 0048F6FD    mov         edx,esi
 0048F6FF    mov         eax,ebx
 0048F701    call        NotifyDesigner
 0048F706    pop         edx
 0048F707    pop         edi
 0048F708    pop         esi
 0048F709    pop         ebx
 0048F70A    ret
*}
end;

//0048F70C
procedure TCollection.RemoveItem(Item:TCollectionItem);
begin
{*
 0048F70C    push        ebx
 0048F70D    push        esi
 0048F70E    push        edi
 0048F70F    push        ebp
 0048F710    add         esp,0FFFFFFF8
 0048F713    mov         esi,edx
 0048F715    mov         ebx,eax
 0048F717    mov         cl,1
 0048F719    mov         edx,esi
 0048F71B    mov         eax,ebx
 0048F71D    mov         edi,dword ptr [eax]
 0048F71F    call        dword ptr [edi+14]
 0048F722    mov         edi,dword ptr [ebx+8]
 0048F725    mov         ebp,dword ptr [edi+8]
 0048F728    dec         ebp
 0048F729    lea         eax,[edi+8]
 0048F72C    mov         edx,ebp
 0048F72E    call        00434534
 0048F733    mov         eax,dword ptr [edi+20]
 0048F736    mov         eax,dword ptr [eax+ebp*4]
 0048F739    cmp         eax,esi
>0048F73B    jne         0048F752
 0048F73D    mov         edx,dword ptr [ebx+8]
 0048F740    mov         eax,edx
 0048F742    mov         edx,dword ptr [edx+8]
 0048F745    dec         edx
 0048F746    add         eax,8
 0048F749    mov         cl,1
 0048F74B    call        00435200
>0048F750    jmp         0048F76A
 0048F752    mov         eax,dword ptr [ebx+8]
 0048F755    mov         dword ptr [esp],esi
 0048F758    add         eax,8
 0048F75B    mov         dword ptr [esp+4],eax
 0048F75F    mov         edx,esp
 0048F761    mov         eax,dword ptr [esp+4]
 0048F765    call        00434878
 0048F76A    xor         eax,eax
 0048F76C    mov         dword ptr [esi+4],eax
 0048F76F    mov         cl,1
 0048F771    mov         edx,esi
 0048F773    mov         eax,ebx
 0048F775    call        NotifyDesigner
 0048F77A    mov         eax,ebx
 0048F77C    call        TCollection.Changed
 0048F781    pop         ecx
 0048F782    pop         edx
 0048F783    pop         ebp
 0048F784    pop         edi
 0048F785    pop         esi
 0048F786    pop         ebx
 0048F787    ret
*}
end;

//0048F7D4
procedure sub_0048F7D4;
begin
{*
 0048F7D4    ret
*}
end;

//0048F7D8
procedure sub_0048F7D8;
begin
{*
 0048F7D8    ret
*}
end;

//0048F7DC
function TCollection.Owner:TPersistent;
begin
{*
 0048F7DC    push        esi
 0048F7DD    mov         si,0FFFF
 0048F7E1    call        @CallDynaInst
 0048F7E6    pop         esi
 0048F7E7    ret
*}
end;

//0048F7E8
procedure sub_0048F7E8;
begin
{*
 0048F7E8    ret
*}
end;

//0048F7EC
procedure sub_0048F7EC;
begin
{*
 0048F7EC    ret
*}
end;

//0048F7F0
procedure TCollection.Notify(Item:TCollectionItem; Action:TCollectionNotification);
begin
{*
 0048F7F0    push        ecx
 0048F7F1    mov         dword ptr [esp],edx
 0048F7F4    sub         cl,1
>0048F7F7    jb          0048F7FF
 0048F7F9    dec         cl
>0048F7FB    je          0048F808
>0048F7FD    jmp         0048F810
 0048F7FF    mov         edx,esp
 0048F801    mov         ecx,dword ptr [eax]
 0048F803    call        dword ptr [ecx+0C]
 0048F806    pop         edx
 0048F807    ret
 0048F808    mov         edx,dword ptr [esp]
 0048F80B    mov         ecx,dword ptr [eax]
 0048F80D    call        dword ptr [ecx+10]
 0048F810    pop         edx
 0048F811    ret
*}
end;

//0048F814
constructor TOwnedCollection.Create(ItemClass:TCollectionItemClass);
begin
{*
 0048F814    push        ebp
 0048F815    mov         ebp,esp
 0048F817    push        ebx
 0048F818    push        esi
 0048F819    test        dl,dl
>0048F81B    je          0048F825
 0048F81D    add         esp,0FFFFFFF0
 0048F820    call        @ClassCreate
 0048F825    mov         ebx,edx
 0048F827    mov         esi,eax
 0048F829    mov         dword ptr [esi+18],ecx
 0048F82C    mov         ecx,dword ptr [ebp+8]
 0048F82F    xor         edx,edx
 0048F831    mov         eax,esi
 0048F833    call        TCollection.Create
 0048F838    mov         eax,esi
 0048F83A    test        bl,bl
>0048F83C    je          0048F84D
 0048F83E    call        @AfterConstruction
 0048F843    pop         dword ptr fs:[0]
 0048F84A    add         esp,0C
 0048F84D    mov         eax,esi
 0048F84F    pop         esi
 0048F850    pop         ebx
 0048F851    pop         ebp
 0048F852    ret         4
*}
end;

//0048F858
procedure TOwnedCollection.sub_0048EDE4;
begin
{*
 0048F858    mov         eax,dword ptr [eax+18];TOwnedCollection...FOwner:TPersistent
 0048F85B    ret
*}
end;

//0048F85C
constructor TComponentEnumerator.Create;
begin
{*
 0048F85C    push        ebx
 0048F85D    push        esi
 0048F85E    push        edi
 0048F85F    test        dl,dl
>0048F861    je          0048F86B
 0048F863    add         esp,0FFFFFFF0
 0048F866    call        @ClassCreate
 0048F86B    mov         esi,ecx
 0048F86D    mov         ebx,edx
 0048F86F    mov         edi,eax
 0048F871    xor         edx,edx
 0048F873    mov         eax,edi
 0048F875    call        TObject.Create
 0048F87A    mov         dword ptr [edi+4],0FFFFFFFF
 0048F881    mov         dword ptr [edi+8],esi
 0048F884    mov         eax,edi
 0048F886    test        bl,bl
>0048F888    je          0048F899
 0048F88A    call        @AfterConstruction
 0048F88F    pop         dword ptr fs:[0]
 0048F896    add         esp,0C
 0048F899    mov         eax,edi
 0048F89B    pop         edi
 0048F89C    pop         esi
 0048F89D    pop         ebx
 0048F89E    ret
*}
end;

//0048F8A0
function TStringsEnumerator.GetCurrent:string;
begin
{*
 0048F8A0    push        ebx
 0048F8A1    push        esi
 0048F8A2    mov         esi,edx
 0048F8A4    mov         ebx,eax
 0048F8A6    mov         ecx,esi
 0048F8A8    mov         edx,dword ptr [ebx+4]
 0048F8AB    mov         eax,dword ptr [ebx+8]
 0048F8AE    mov         ebx,dword ptr [eax]
 0048F8B0    call        dword ptr [ebx+0C]
 0048F8B3    pop         esi
 0048F8B4    pop         ebx
 0048F8B5    ret
*}
end;

//0048F8B8
function TStringsEnumerator.MoveNext:Boolean;
begin
{*
 0048F8B8    push        ebx
 0048F8B9    mov         ebx,eax
 0048F8BB    mov         eax,dword ptr [ebx+8]
 0048F8BE    mov         edx,dword ptr [eax]
 0048F8C0    call        dword ptr [edx+14]
 0048F8C3    dec         eax
 0048F8C4    cmp         eax,dword ptr [ebx+4]
 0048F8C7    setg        al
 0048F8CA    test        al,al
>0048F8CC    je          0048F8D1
 0048F8CE    inc         dword ptr [ebx+4]
 0048F8D1    pop         ebx
 0048F8D2    ret
*}
end;

//0048F8D4
constructor TStrings.Create();
begin
{*
 0048F8D4    push        ebx
 0048F8D5    push        esi
 0048F8D6    test        dl,dl
>0048F8D8    je          0048F8E2
 0048F8DA    add         esp,0FFFFFFF0
 0048F8DD    call        @ClassCreate
 0048F8E2    mov         ebx,edx
 0048F8E4    mov         esi,eax
 0048F8E6    xor         edx,edx
 0048F8E8    mov         eax,esi
 0048F8EA    call        TObject.Create
 0048F8EF    call        TEncoding.GetANSI
 0048F8F4    mov         dword ptr [esi+0C],eax
 0048F8F7    xor         eax,eax
 0048F8F9    mov         dword ptr [esi+4],eax
 0048F8FC    mov         byte ptr [esi+28],1
 0048F900    mov         eax,esi
 0048F902    test        bl,bl
>0048F904    je          0048F915
 0048F906    call        @AfterConstruction
 0048F90B    pop         dword ptr fs:[0]
 0048F912    add         esp,0C
 0048F915    mov         eax,esi
 0048F917    pop         esi
 0048F918    pop         ebx
 0048F919    ret
*}
end;

//0048F91C
destructor TStrings.Destroy();
begin
{*
 0048F91C    push        ebx
 0048F91D    push        esi
 0048F91E    push        edi
 0048F91F    add         esp,0FFFFFFF8
 0048F922    call        @BeforeDestruction
 0048F927    mov         ebx,edx
 0048F929    mov         edi,eax
 0048F92B    mov         esi,dword ptr [edi+4]
 0048F92E    test        esi,esi
>0048F930    je          0048F954
 0048F932    mov         eax,esi
 0048F934    call        TEncoding.IsStandardEncoding
 0048F939    test        al,al
>0048F93B    jne         0048F954
 0048F93D    lea         eax,[edi+4]
 0048F940    mov         dword ptr [esp],eax
 0048F943    mov         eax,dword ptr [esp]
 0048F946    mov         eax,dword ptr [eax]
 0048F948    mov         edx,dword ptr [esp]
 0048F94B    xor         ecx,ecx
 0048F94D    mov         dword ptr [edx],ecx
 0048F94F    call        TObject.Free
 0048F954    mov         eax,dword ptr [edi+0C]
 0048F957    call        TEncoding.IsStandardEncoding
 0048F95C    test        al,al
>0048F95E    jne         0048F97A
 0048F960    lea         eax,[edi+0C]
 0048F963    mov         dword ptr [esp+4],eax
 0048F967    mov         eax,dword ptr [esp+4]
 0048F96B    mov         eax,dword ptr [eax]
 0048F96D    mov         edx,dword ptr [esp+4]
 0048F971    xor         ecx,ecx
 0048F973    mov         dword ptr [edx],ecx
 0048F975    call        TObject.Free
 0048F97A    xor         edx,edx
 0048F97C    mov         eax,edi
 0048F97E    call        TStrings.SetStringsAdapter
 0048F983    mov         dl,0FC
 0048F985    and         dl,bl
 0048F987    mov         eax,edi
 0048F989    call        TMemoryStream.Destroy
 0048F98E    test        bl,bl
>0048F990    jle         0048F999
 0048F992    mov         eax,edi
 0048F994    call        @ClassDestroy
 0048F999    pop         ecx
 0048F99A    pop         edx
 0048F99B    pop         edi
 0048F99C    pop         esi
 0048F99D    pop         ebx
 0048F99E    ret
*}
end;

//0048F9A0
function TStrings.Add(S:string):Integer;
begin
{*
 0048F9A0    push        ebx
 0048F9A1    push        esi
 0048F9A2    push        edi
 0048F9A3    push        ebp
 0048F9A4    mov         ebp,edx
 0048F9A6    mov         esi,eax
 0048F9A8    mov         eax,esi
 0048F9AA    mov         edx,dword ptr [eax]
 0048F9AC    call        dword ptr [edx+14];TStrings.GetCount
 0048F9AF    mov         edi,eax
 0048F9B1    mov         ecx,ebp
 0048F9B3    mov         edx,edi
 0048F9B5    mov         eax,esi
 0048F9B7    mov         ebx,dword ptr [eax]
 0048F9B9    call        dword ptr [ebx+64];TStrings.Insert
 0048F9BC    mov         eax,edi
 0048F9BE    pop         ebp
 0048F9BF    pop         edi
 0048F9C0    pop         esi
 0048F9C1    pop         ebx
 0048F9C2    ret
*}
end;

//0048F9C4
function TStrings.AddObject(S:string; AObject:TObject):Integer;
begin
{*
 0048F9C4    push        ebx
 0048F9C5    push        esi
 0048F9C6    push        edi
 0048F9C7    mov         edi,ecx
 0048F9C9    mov         esi,eax
 0048F9CB    mov         eax,esi
 0048F9CD    mov         ecx,dword ptr [eax]
 0048F9CF    call        dword ptr [ecx+3C]
 0048F9D2    mov         ebx,eax
 0048F9D4    mov         ecx,edi
 0048F9D6    mov         edx,ebx
 0048F9D8    mov         eax,esi
 0048F9DA    mov         esi,dword ptr [eax]
 0048F9DC    call        dword ptr [esi+24]
 0048F9DF    mov         eax,ebx
 0048F9E1    pop         edi
 0048F9E2    pop         esi
 0048F9E3    pop         ebx
 0048F9E4    ret
*}
end;

//0048F9E8
procedure TStrings.AddStrings(Strings:TStrings);
begin
{*
 0048F9E8    push        ebp
 0048F9E9    mov         ebp,esp
 0048F9EB    add         esp,0FFFFFFF4
 0048F9EE    push        ebx
 0048F9EF    push        esi
 0048F9F0    push        edi
 0048F9F1    xor         ecx,ecx
 0048F9F3    mov         dword ptr [ebp-0C],ecx
 0048F9F6    mov         dword ptr [ebp-8],edx
 0048F9F9    mov         dword ptr [ebp-4],eax
 0048F9FC    xor         eax,eax
 0048F9FE    push        ebp
 0048F9FF    push        48FA8F
 0048FA04    push        dword ptr fs:[eax]
 0048FA07    mov         dword ptr fs:[eax],esp
 0048FA0A    mov         eax,dword ptr [ebp-4]
 0048FA0D    call        TStrings.BeginUpdate
 0048FA12    xor         eax,eax
 0048FA14    push        ebp
 0048FA15    push        48FA72
 0048FA1A    push        dword ptr fs:[eax]
 0048FA1D    mov         dword ptr fs:[eax],esp
 0048FA20    mov         eax,dword ptr [ebp-8]
 0048FA23    mov         edx,dword ptr [eax]
 0048FA25    call        dword ptr [edx+14]
 0048FA28    mov         esi,eax
 0048FA2A    dec         esi
 0048FA2B    test        esi,esi
>0048FA2D    jl          0048FA5C
 0048FA2F    inc         esi
 0048FA30    xor         ebx,ebx
 0048FA32    lea         ecx,[ebp-0C]
 0048FA35    mov         edx,ebx
 0048FA37    mov         eax,dword ptr [ebp-8]
 0048FA3A    mov         edi,dword ptr [eax]
 0048FA3C    call        dword ptr [edi+0C]
 0048FA3F    mov         eax,dword ptr [ebp-0C]
 0048FA42    push        eax
 0048FA43    mov         edx,ebx
 0048FA45    mov         eax,dword ptr [ebp-8]
 0048FA48    mov         ecx,dword ptr [eax]
 0048FA4A    call        dword ptr [ecx+18]
 0048FA4D    mov         ecx,eax
 0048FA4F    mov         eax,dword ptr [ebp-4]
 0048FA52    pop         edx
 0048FA53    mov         edi,dword ptr [eax]
 0048FA55    call        dword ptr [edi+40]
 0048FA58    inc         ebx
 0048FA59    dec         esi
>0048FA5A    jne         0048FA32
 0048FA5C    xor         eax,eax
 0048FA5E    pop         edx
 0048FA5F    pop         ecx
 0048FA60    pop         ecx
 0048FA61    mov         dword ptr fs:[eax],edx
 0048FA64    push        48FA79
 0048FA69    mov         eax,dword ptr [ebp-4]
 0048FA6C    call        TStrings.EndUpdate
 0048FA71    ret
>0048FA72    jmp         @HandleFinally
>0048FA77    jmp         0048FA69
 0048FA79    xor         eax,eax
 0048FA7B    pop         edx
 0048FA7C    pop         ecx
 0048FA7D    pop         ecx
 0048FA7E    mov         dword ptr fs:[eax],edx
 0048FA81    push        48FA96
 0048FA86    lea         eax,[ebp-0C]
 0048FA89    call        @UStrClr
 0048FA8E    ret
>0048FA8F    jmp         @HandleFinally
>0048FA94    jmp         0048FA86
 0048FA96    pop         edi
 0048FA97    pop         esi
 0048FA98    pop         ebx
 0048FA99    mov         esp,ebp
 0048FA9B    pop         ebp
 0048FA9C    ret
*}
end;

//0048FAA0
procedure TStrings.Assign(Source:TPersistent);
begin
{*
 0048FAA0    push        ebp
 0048FAA1    mov         ebp,esp
 0048FAA3    push        ecx
 0048FAA4    push        ebx
 0048FAA5    push        esi
 0048FAA6    mov         ebx,edx
 0048FAA8    mov         dword ptr [ebp-4],eax
 0048FAAB    mov         eax,ebx
 0048FAAD    mov         edx,dword ptr ds:[46E838];TStrings
 0048FAB3    call        @IsClass
 0048FAB8    test        al,al
>0048FABA    je          0048FB6A
 0048FAC0    mov         eax,dword ptr [ebp-4]
 0048FAC3    call        TStrings.BeginUpdate
 0048FAC8    xor         eax,eax
 0048FACA    push        ebp
 0048FACB    push        48FB63
 0048FAD0    push        dword ptr fs:[eax]
 0048FAD3    mov         dword ptr fs:[eax],esp
 0048FAD6    mov         eax,dword ptr [ebp-4]
 0048FAD9    mov         edx,dword ptr [eax]
 0048FADB    call        dword ptr [edx+48]
 0048FADE    mov         esi,ebx
 0048FAE0    mov         edx,dword ptr [esi+0C]
 0048FAE3    mov         eax,dword ptr [ebp-4]
 0048FAE6    call        TStrings.SetDefaultEncoding
 0048FAEB    movzx       eax,byte ptr [esi+8]
 0048FAEF    mov         edx,dword ptr [ebp-4]
 0048FAF2    mov         byte ptr [edx+8],al
 0048FAF5    mov         edx,dword ptr [esi+4]
 0048FAF8    mov         eax,dword ptr [ebp-4]
 0048FAFB    mov         ecx,dword ptr [eax]
 0048FAFD    call        dword ptr [ecx+2C]
 0048FB00    movzx       eax,word ptr [esi+1A]
 0048FB04    mov         edx,dword ptr [ebp-4]
 0048FB07    mov         word ptr [edx+1A],ax
 0048FB0B    movzx       eax,word ptr [esi+18]
 0048FB0F    mov         edx,dword ptr [ebp-4]
 0048FB12    mov         word ptr [edx+18],ax
 0048FB16    movzx       eax,word ptr [esi+10]
 0048FB1A    mov         edx,dword ptr [ebp-4]
 0048FB1D    mov         word ptr [edx+10],ax
 0048FB21    mov         eax,dword ptr [ebp-4]
 0048FB24    add         eax,14
 0048FB27    mov         edx,dword ptr [esi+14]
 0048FB2A    call        @UStrAsg
 0048FB2F    movzx       eax,byte ptr [esi+1C]
 0048FB33    mov         edx,dword ptr [ebp-4]
 0048FB36    mov         byte ptr [edx+1C],al
 0048FB39    movzx       eax,byte ptr [esi+28]
 0048FB3D    mov         edx,dword ptr [ebp-4]
 0048FB40    mov         byte ptr [edx+28],al
 0048FB43    mov         edx,esi
 0048FB45    mov         eax,dword ptr [ebp-4]
 0048FB48    mov         ecx,dword ptr [eax]
 0048FB4A    call        dword ptr [ecx+44]
 0048FB4D    xor         eax,eax
 0048FB4F    pop         edx
 0048FB50    pop         ecx
 0048FB51    pop         ecx
 0048FB52    mov         dword ptr fs:[eax],edx
 0048FB55    push        48FB74
 0048FB5A    mov         eax,dword ptr [ebp-4]
 0048FB5D    call        TStrings.EndUpdate
 0048FB62    ret
>0048FB63    jmp         @HandleFinally
>0048FB68    jmp         0048FB5A
 0048FB6A    mov         edx,ebx
 0048FB6C    mov         eax,dword ptr [ebp-4]
 0048FB6F    call        TPersistent.Assign
 0048FB74    pop         esi
 0048FB75    pop         ebx
 0048FB76    pop         ecx
 0048FB77    pop         ebp
 0048FB78    ret
*}
end;

//0048FB7C
procedure TStrings.BeginUpdate;
begin
{*
 0048FB7C    push        ebx
 0048FB7D    mov         ebx,eax
 0048FB7F    cmp         dword ptr [ebx+20],0
>0048FB83    jne         0048FB8E
 0048FB85    mov         dl,1
 0048FB87    mov         eax,ebx
 0048FB89    mov         ecx,dword ptr [eax]
 0048FB8B    call        dword ptr [ecx+34]
 0048FB8E    inc         dword ptr [ebx+20]
 0048FB91    pop         ebx
 0048FB92    ret
*}
end;

//0048FB94
function DoWrite:Boolean;
begin
{*
 0048FB94    push        ebp
 0048FB95    mov         ebp,esp
 0048FB97    push        ebx
 0048FB98    push        esi
 0048FB99    mov         eax,dword ptr [ebp+8]
 0048FB9C    mov         eax,dword ptr [eax-4]
 0048FB9F    mov         esi,dword ptr [eax+20]
 0048FBA2    test        esi,esi
>0048FBA4    je          0048FBCD
 0048FBA6    mov         bl,1
 0048FBA8    mov         eax,esi
 0048FBAA    mov         edx,dword ptr ds:[46E838];TStrings
 0048FBB0    call        @IsClass
 0048FBB5    test        al,al
>0048FBB7    je          0048FBDD
 0048FBB9    mov         edx,esi
 0048FBBB    mov         eax,dword ptr [ebp+8]
 0048FBBE    mov         eax,dword ptr [eax-8]
 0048FBC1    call        TStrings.Equals
 0048FBC6    mov         ebx,eax
 0048FBC8    xor         bl,1
>0048FBCB    jmp         0048FBDD
 0048FBCD    mov         eax,dword ptr [ebp+8]
 0048FBD0    mov         eax,dword ptr [eax-8]
 0048FBD3    mov         edx,dword ptr [eax]
 0048FBD5    call        dword ptr [edx+14]
 0048FBD8    test        eax,eax
 0048FBDA    setg        bl
 0048FBDD    mov         eax,ebx
 0048FBDF    pop         esi
 0048FBE0    pop         ebx
 0048FBE1    pop         ebp
 0048FBE2    ret
*}
end;

//0048FBE4
procedure TStrings.DefineProperties(Filer:TFiler);
begin
{*
 0048FBE4    push        ebp
 0048FBE5    mov         ebp,esp
 0048FBE7    add         esp,0FFFFFFF8
 0048FBEA    push        ebx
 0048FBEB    mov         dword ptr [ebp-4],edx
 0048FBEE    mov         dword ptr [ebp-8],eax
 0048FBF1    mov         eax,dword ptr [ebp-8]
 0048FBF4    push        eax
 0048FBF5    push        4908A8;TStrings.ReadData
 0048FBFA    mov         eax,dword ptr [ebp-8]
 0048FBFD    push        eax
 0048FBFE    push        490E28;TStrings.WriteData
 0048FC03    push        ebp
 0048FC04    call        DoWrite
 0048FC09    pop         ecx
 0048FC0A    mov         ecx,eax
 0048FC0C    mov         edx,48FC2C;'Strings'
 0048FC11    mov         eax,dword ptr [ebp-4]
 0048FC14    mov         ebx,dword ptr [eax]
 0048FC16    call        dword ptr [ebx+4]
 0048FC19    pop         ebx
 0048FC1A    pop         ecx
 0048FC1B    pop         ecx
 0048FC1C    pop         ebp
 0048FC1D    ret
*}
end;

//0048FC3C
procedure TStrings.EndUpdate;
begin
{*
 0048FC3C    dec         dword ptr [eax+20]
 0048FC3F    cmp         dword ptr [eax+20],0
>0048FC43    jne         0048FC4C
 0048FC45    xor         edx,edx
 0048FC47    mov         ecx,dword ptr [eax]
 0048FC49    call        dword ptr [ecx+34]
 0048FC4C    ret
*}
end;

//0048FC50
function TStrings.Equals(Strings:TStrings):Boolean;
begin
{*
 0048FC50    push        ebp
 0048FC51    mov         ebp,esp
 0048FC53    add         esp,0FFFFFFEC
 0048FC56    push        ebx
 0048FC57    push        esi
 0048FC58    push        edi
 0048FC59    xor         ecx,ecx
 0048FC5B    mov         dword ptr [ebp-10],ecx
 0048FC5E    mov         dword ptr [ebp-14],ecx
 0048FC61    mov         dword ptr [ebp-8],edx
 0048FC64    mov         dword ptr [ebp-4],eax
 0048FC67    xor         eax,eax
 0048FC69    push        ebp
 0048FC6A    push        48FCE5
 0048FC6F    push        dword ptr fs:[eax]
 0048FC72    mov         dword ptr fs:[eax],esp
 0048FC75    mov         byte ptr [ebp-9],0
 0048FC79    mov         eax,dword ptr [ebp-4]
 0048FC7C    mov         edx,dword ptr [eax]
 0048FC7E    call        dword ptr [edx+14]
 0048FC81    mov         ebx,eax
 0048FC83    mov         eax,dword ptr [ebp-8]
 0048FC86    mov         edx,dword ptr [eax]
 0048FC88    call        dword ptr [edx+14]
 0048FC8B    cmp         ebx,eax
>0048FC8D    jne         0048FCCA
 0048FC8F    mov         esi,ebx
 0048FC91    dec         esi
 0048FC92    test        esi,esi
>0048FC94    jl          0048FCC6
 0048FC96    inc         esi
 0048FC97    xor         ebx,ebx
 0048FC99    lea         ecx,[ebp-10]
 0048FC9C    mov         edx,ebx
 0048FC9E    mov         eax,dword ptr [ebp-4]
 0048FCA1    mov         edi,dword ptr [eax]
 0048FCA3    call        dword ptr [edi+0C]
 0048FCA6    mov         eax,dword ptr [ebp-10]
 0048FCA9    push        eax
 0048FCAA    lea         ecx,[ebp-14]
 0048FCAD    mov         edx,ebx
 0048FCAF    mov         eax,dword ptr [ebp-8]
 0048FCB2    mov         edi,dword ptr [eax]
 0048FCB4    call        dword ptr [edi+0C]
 0048FCB7    mov         edx,dword ptr [ebp-14]
 0048FCBA    pop         eax
 0048FCBB    call        @UStrEqual
>0048FCC0    jne         0048FCCA
 0048FCC2    inc         ebx
 0048FCC3    dec         esi
>0048FCC4    jne         0048FC99
 0048FCC6    mov         byte ptr [ebp-9],1
 0048FCCA    xor         eax,eax
 0048FCCC    pop         edx
 0048FCCD    pop         ecx
 0048FCCE    pop         ecx
 0048FCCF    mov         dword ptr fs:[eax],edx
 0048FCD2    push        48FCEC
 0048FCD7    lea         eax,[ebp-14]
 0048FCDA    mov         edx,2
 0048FCDF    call        @UStrArrayClr
 0048FCE4    ret
>0048FCE5    jmp         @HandleFinally
>0048FCEA    jmp         0048FCD7
 0048FCEC    movzx       eax,byte ptr [ebp-9]
 0048FCF0    pop         edi
 0048FCF1    pop         esi
 0048FCF2    pop         ebx
 0048FCF3    mov         esp,ebp
 0048FCF5    pop         ebp
 0048FCF6    ret
*}
end;

//0048FCF8
procedure TStrings.Error(const Msg:UnicodeString; Data:Integer);
begin
{*
 0048FCF8    push        ebp
 0048FCF9    mov         ebp,esp
 0048FCFB    add         esp,0FFFFFFEC
 0048FCFE    mov         dword ptr [ebp-0C],ecx
 0048FD01    mov         dword ptr [ebp-8],edx
 0048FD04    mov         dword ptr [ebp-4],eax
 0048FD07    lea         eax,[ebp-8]
 0048FD0A    add         eax,4
 0048FD0D    add         eax,4
 0048FD10    add         eax,4
 0048FD13    push        dword ptr [eax]
 0048FD15    mov         eax,dword ptr [ebp-0C]
 0048FD18    mov         dword ptr [ebp-14],eax
 0048FD1B    mov         byte ptr [ebp-10],0
 0048FD1F    lea         eax,[ebp-14]
 0048FD22    push        eax
 0048FD23    push        0
 0048FD25    mov         ecx,dword ptr [ebp-8]
 0048FD28    mov         dl,1
 0048FD2A    mov         eax,[0046BC8C];EStringListError
 0048FD2F    call        Exception.CreateFmt
>0048FD34    jmp         @RaiseExcept
 0048FD39    mov         esp,ebp
 0048FD3B    pop         ebp
 0048FD3C    ret
*}
end;

//0048FD40
procedure TStrings.Error(Msg:PResStringRec; Data:Integer);
begin
{*
 0048FD40    push        ebp
 0048FD41    mov         ebp,esp
 0048FD43    add         esp,0FFFFFFE8
 0048FD46    push        ebx
 0048FD47    xor         ebx,ebx
 0048FD49    mov         dword ptr [ebp-18],ebx
 0048FD4C    mov         dword ptr [ebp-0C],ecx
 0048FD4F    mov         dword ptr [ebp-8],edx
 0048FD52    mov         dword ptr [ebp-4],eax
 0048FD55    xor         eax,eax
 0048FD57    push        ebp
 0048FD58    push        48FDB6
 0048FD5D    push        dword ptr fs:[eax]
 0048FD60    mov         dword ptr fs:[eax],esp
 0048FD63    lea         eax,[ebp-8]
 0048FD66    add         eax,4
 0048FD69    add         eax,4
 0048FD6C    add         eax,4
 0048FD6F    push        dword ptr [eax]
 0048FD71    mov         eax,dword ptr [ebp-0C]
 0048FD74    mov         dword ptr [ebp-14],eax
 0048FD77    mov         byte ptr [ebp-10],0
 0048FD7B    lea         eax,[ebp-14]
 0048FD7E    push        eax
 0048FD7F    push        0
 0048FD81    lea         edx,[ebp-18]
 0048FD84    mov         eax,dword ptr [ebp-8]
 0048FD87    call        LoadResString
 0048FD8C    mov         ecx,dword ptr [ebp-18]
 0048FD8F    mov         dl,1
 0048FD91    mov         eax,[0046BC8C];EStringListError
 0048FD96    call        Exception.CreateFmt
>0048FD9B    jmp         @RaiseExcept
 0048FDA0    xor         eax,eax
 0048FDA2    pop         edx
 0048FDA3    pop         ecx
 0048FDA4    pop         ecx
 0048FDA5    mov         dword ptr fs:[eax],edx
 0048FDA8    push        48FDBD
 0048FDAD    lea         eax,[ebp-18]
 0048FDB0    call        @UStrClr
 0048FDB5    ret
>0048FDB6    jmp         @HandleFinally
>0048FDBB    jmp         0048FDAD
 0048FDBD    pop         ebx
 0048FDBE    mov         esp,ebp
 0048FDC0    pop         ebp
 0048FDC1    ret
*}
end;

//0048FDC4
procedure TStrings.Exchange(Index1:Integer; Index2:Integer);
begin
{*
 0048FDC4    push        ebp
 0048FDC5    mov         ebp,esp
 0048FDC7    add         esp,0FFFFFFF0
 0048FDCA    push        ebx
 0048FDCB    push        esi
 0048FDCC    push        edi
 0048FDCD    xor         ebx,ebx
 0048FDCF    mov         dword ptr [ebp-10],ebx
 0048FDD2    mov         dword ptr [ebp-4],ebx
 0048FDD5    mov         esi,ecx
 0048FDD7    mov         ebx,edx
 0048FDD9    mov         dword ptr [ebp-8],eax
 0048FDDC    xor         eax,eax
 0048FDDE    push        ebp
 0048FDDF    push        48FE9F
 0048FDE4    push        dword ptr fs:[eax]
 0048FDE7    mov         dword ptr fs:[eax],esp
 0048FDEA    mov         eax,dword ptr [ebp-8]
 0048FDED    call        TStrings.BeginUpdate
 0048FDF2    xor         eax,eax
 0048FDF4    push        ebp
 0048FDF5    push        48FE7A
 0048FDFA    push        dword ptr fs:[eax]
 0048FDFD    mov         dword ptr fs:[eax],esp
 0048FE00    lea         ecx,[ebp-4]
 0048FE03    mov         edx,ebx
 0048FE05    mov         eax,dword ptr [ebp-8]
 0048FE08    mov         edi,dword ptr [eax]
 0048FE0A    call        dword ptr [edi+0C]
 0048FE0D    mov         edx,ebx
 0048FE0F    mov         eax,dword ptr [ebp-8]
 0048FE12    mov         ecx,dword ptr [eax]
 0048FE14    call        dword ptr [ecx+18]
 0048FE17    mov         dword ptr [ebp-0C],eax
 0048FE1A    lea         ecx,[ebp-10]
 0048FE1D    mov         edx,esi
 0048FE1F    mov         eax,dword ptr [ebp-8]
 0048FE22    mov         edi,dword ptr [eax]
 0048FE24    call        dword ptr [edi+0C]
 0048FE27    mov         ecx,dword ptr [ebp-10]
 0048FE2A    mov         edx,ebx
 0048FE2C    mov         eax,dword ptr [ebp-8]
 0048FE2F    mov         edi,dword ptr [eax]
 0048FE31    call        dword ptr [edi+20]
 0048FE34    mov         edx,esi
 0048FE36    mov         eax,dword ptr [ebp-8]
 0048FE39    mov         ecx,dword ptr [eax]
 0048FE3B    call        dword ptr [ecx+18]
 0048FE3E    mov         ecx,eax
 0048FE40    mov         edx,ebx
 0048FE42    mov         eax,dword ptr [ebp-8]
 0048FE45    mov         ebx,dword ptr [eax]
 0048FE47    call        dword ptr [ebx+24]
 0048FE4A    mov         ecx,dword ptr [ebp-4]
 0048FE4D    mov         edx,esi
 0048FE4F    mov         eax,dword ptr [ebp-8]
 0048FE52    mov         ebx,dword ptr [eax]
 0048FE54    call        dword ptr [ebx+20]
 0048FE57    mov         ecx,dword ptr [ebp-0C]
 0048FE5A    mov         edx,esi
 0048FE5C    mov         eax,dword ptr [ebp-8]
 0048FE5F    mov         ebx,dword ptr [eax]
 0048FE61    call        dword ptr [ebx+24]
 0048FE64    xor         eax,eax
 0048FE66    pop         edx
 0048FE67    pop         ecx
 0048FE68    pop         ecx
 0048FE69    mov         dword ptr fs:[eax],edx
 0048FE6C    push        48FE81
 0048FE71    mov         eax,dword ptr [ebp-8]
 0048FE74    call        TStrings.EndUpdate
 0048FE79    ret
>0048FE7A    jmp         @HandleFinally
>0048FE7F    jmp         0048FE71
 0048FE81    xor         eax,eax
 0048FE83    pop         edx
 0048FE84    pop         ecx
 0048FE85    pop         ecx
 0048FE86    mov         dword ptr fs:[eax],edx
 0048FE89    push        48FEA6
 0048FE8E    lea         eax,[ebp-10]
 0048FE91    call        @UStrClr
 0048FE96    lea         eax,[ebp-4]
 0048FE99    call        @UStrClr
 0048FE9E    ret
>0048FE9F    jmp         @HandleFinally
>0048FEA4    jmp         0048FE8E
 0048FEA6    pop         edi
 0048FEA7    pop         esi
 0048FEA8    pop         ebx
 0048FEA9    mov         esp,ebp
 0048FEAB    pop         ebp
 0048FEAC    ret
*}
end;

//0048FEB0
procedure sub_0048FEB0;
begin
{*
 0048FEB0    mov         edx,dword ptr [eax]
 0048FEB2    call        dword ptr [edx+14];TStrings.GetCount
 0048FEB5    ret
*}
end;

//0048FEB8
function TStrings.GetCommaText:UnicodeString;
begin
{*
 0048FEB8    push        ebp
 0048FEB9    mov         ebp,esp
 0048FEBB    add         esp,0FFFFFFF4
 0048FEBE    push        ebx
 0048FEBF    mov         ebx,edx
 0048FEC1    mov         dword ptr [ebp-4],eax
 0048FEC4    mov         eax,dword ptr [ebp-4]
 0048FEC7    movzx       eax,byte ptr [eax+8]
 0048FECB    mov         byte ptr [ebp-5],al
 0048FECE    mov         eax,dword ptr [ebp-4]
 0048FED1    movzx       eax,word ptr [eax+10]
 0048FED5    mov         word ptr [ebp-8],ax
 0048FED9    mov         eax,dword ptr [ebp-4]
 0048FEDC    movzx       eax,word ptr [eax+18]
 0048FEE0    mov         word ptr [ebp-0A],ax
 0048FEE4    mov         dx,2C
 0048FEE8    mov         eax,dword ptr [ebp-4]
 0048FEEB    call        TStrings.SetDelimiter
 0048FEF0    mov         dx,22
 0048FEF4    mov         eax,dword ptr [ebp-4]
 0048FEF7    call        TStrings.SetQuoteChar
 0048FEFC    xor         eax,eax
 0048FEFE    push        ebp
 0048FEFF    push        48FF42
 0048FF04    push        dword ptr fs:[eax]
 0048FF07    mov         dword ptr fs:[eax],esp
 0048FF0A    mov         edx,ebx
 0048FF0C    mov         eax,dword ptr [ebp-4]
 0048FF0F    call        TStrings.GetDelimitedText
 0048FF14    xor         eax,eax
 0048FF16    pop         edx
 0048FF17    pop         ecx
 0048FF18    pop         ecx
 0048FF19    mov         dword ptr fs:[eax],edx
 0048FF1C    push        48FF49
 0048FF21    mov         eax,dword ptr [ebp-4]
 0048FF24    movzx       edx,word ptr [ebp-8]
 0048FF28    mov         word ptr [eax+10],dx
 0048FF2C    mov         eax,dword ptr [ebp-4]
 0048FF2F    movzx       edx,word ptr [ebp-0A]
 0048FF33    mov         word ptr [eax+18],dx
 0048FF37    mov         eax,dword ptr [ebp-4]
 0048FF3A    movzx       edx,byte ptr [ebp-5]
 0048FF3E    mov         byte ptr [eax+8],dl
 0048FF41    ret
>0048FF42    jmp         @HandleFinally
>0048FF47    jmp         0048FF21
 0048FF49    pop         ebx
 0048FF4A    mov         esp,ebp
 0048FF4C    pop         ebp
 0048FF4D    ret
*}
end;

//0048FF50
function TStrings.GetDelimitedText:UnicodeString;
begin
{*
 0048FF50    push        ebp
 0048FF51    mov         ebp,esp
 0048FF53    add         esp,0FFFFFF7C
 0048FF59    push        ebx
 0048FF5A    push        esi
 0048FF5B    push        edi
 0048FF5C    xor         ecx,ecx
 0048FF5E    mov         dword ptr [ebp-84],ecx
 0048FF64    mov         dword ptr [ebp-3C],ecx
 0048FF67    mov         dword ptr [ebp-40],ecx
 0048FF6A    mov         dword ptr [ebp-38],ecx
 0048FF6D    mov         dword ptr [ebp-4],ecx
 0048FF70    mov         dword ptr [ebp-8],edx
 0048FF73    mov         esi,eax
 0048FF75    xor         eax,eax
 0048FF77    push        ebp
 0048FF78    push        49019B
 0048FF7D    push        dword ptr fs:[eax]
 0048FF80    mov         dword ptr fs:[eax],esp
 0048FF83    mov         eax,esi
 0048FF85    mov         edx,dword ptr [eax]
 0048FF87    call        dword ptr [edx+14]
 0048FF8A    mov         ebx,eax
 0048FF8C    cmp         ebx,1
>0048FF8F    jne         0048FFF3
 0048FF91    lea         ecx,[ebp-38]
 0048FF94    xor         edx,edx
 0048FF96    mov         eax,esi
 0048FF98    mov         edi,dword ptr [eax]
 0048FF9A    call        dword ptr [edi+0C]
 0048FF9D    cmp         dword ptr [ebp-38],0
>0048FFA1    jne         0048FFF3
 0048FFA3    mov         eax,esi
 0048FFA5    call        TStrings.GetQuoteChar
 0048FFAA    test        ax,ax
>0048FFAD    jne         0048FFBC
 0048FFAF    mov         eax,dword ptr [ebp-8]
 0048FFB2    call        @UStrClr
>0048FFB7    jmp         0049016D
 0048FFBC    mov         eax,esi
 0048FFBE    call        TStrings.GetQuoteChar
 0048FFC3    mov         edx,eax
 0048FFC5    lea         eax,[ebp-3C]
 0048FFC8    call        @UStrFromWChar
 0048FFCD    mov         eax,dword ptr [ebp-3C]
 0048FFD0    push        eax
 0048FFD1    mov         eax,esi
 0048FFD3    call        TStrings.GetQuoteChar
 0048FFD8    mov         edx,eax
 0048FFDA    lea         eax,[ebp-40]
 0048FFDD    call        @UStrFromWChar
 0048FFE2    mov         edx,dword ptr [ebp-40]
 0048FFE5    mov         eax,dword ptr [ebp-8]
 0048FFE8    pop         ecx
 0048FFE9    call        @UStrCat3
>0048FFEE    jmp         0049016D
 0048FFF3    mov         eax,dword ptr [ebp-8]
 0048FFF6    call        @UStrClr
 0048FFFB    mov         eax,esi
 0048FFFD    call        TStrings.GetQuoteChar
 00490002    test        ax,ax
>00490005    je          00490071
 00490007    push        esi
 00490008    mov         esi,4901AC
 0049000D    lea         edi,[ebp-60]
 00490010    mov         ecx,8
 00490015    rep movs    dword ptr [edi],dword ptr [esi]
 00490017    pop         esi
 00490018    mov         eax,esi
 0049001A    call        TStrings.GetQuoteChar
 0049001F    mov         edx,eax
 00490021    lea         eax,[ebp-80]
 00490024    mov         cl,20
 00490026    call        @SetElem
 0049002B    mov         eax,esi
 0049002D    call        TStrings.GetDelimiter
 00490032    push        eax
 00490033    pop         eax
 00490034    movzx       eax,al
 00490037    bts         dword ptr [ebp-80],eax
 0049003B    lea         edx,[ebp-80]
 0049003E    lea         eax,[ebp-60]
 00490041    mov         cl,20
 00490043    call        @SetUnion
 00490048    push        esi
 00490049    lea         esi,[ebp-60]
 0049004C    lea         edi,[ebp-34]
 0049004F    mov         ecx,8
 00490054    rep movs    dword ptr [edi],dword ptr [esi]
 00490056    pop         esi
 00490057    mov         eax,esi
 00490059    call        TStrings.GetStrictDelimiter
 0049005E    test        al,al
>00490060    jne         00490071
 00490062    lea         eax,[ebp-34]
 00490065    mov         edx,4901CC
 0049006A    mov         cl,20
 0049006C    call        @SetUnion
 00490071    mov         dl,1
 00490073    mov         eax,[0041A374];TStringBuilder
 00490078    call        004261E0
 0049007D    mov         dword ptr [ebp-10],eax
 00490080    xor         eax,eax
 00490082    push        ebp
 00490083    push        490166
 00490088    push        dword ptr fs:[eax]
 0049008B    mov         dword ptr fs:[eax],esp
 0049008E    dec         ebx
 0049008F    test        ebx,ebx
>00490091    jl          00490135
 00490097    inc         ebx
 00490098    mov         dword ptr [ebp-14],ebx
 0049009B    mov         dword ptr [ebp-0C],0
 004900A2    lea         ecx,[ebp-4]
 004900A5    mov         edx,dword ptr [ebp-0C]
 004900A8    mov         eax,esi
 004900AA    mov         ebx,dword ptr [eax]
 004900AC    call        dword ptr [ebx+0C]
 004900AF    mov         eax,esi
 004900B1    call        TStrings.GetQuoteChar
 004900B6    test        ax,ax
>004900B9    je          0049010D
 004900BB    mov         eax,dword ptr [ebp-4]
 004900BE    call        @UStrToPWChar
 004900C3    mov         ebx,eax
>004900C5    jmp         004900D0
 004900C7    mov         eax,ebx
 004900C9    call        00483134
 004900CE    mov         ebx,eax
 004900D0    movzx       eax,word ptr [ebx]
 004900D3    cmp         ax,0FF
>004900D7    ja          004900E0
 004900D9    movzx       eax,ax
 004900DC    bt          dword ptr [ebp-34],eax
>004900E0    jae         004900C7
 004900E2    cmp         word ptr [ebx],0
>004900E6    je          0049010D
 004900E8    mov         eax,esi
 004900EA    call        TStrings.GetQuoteChar
 004900EF    mov         edx,eax
 004900F1    lea         ecx,[ebp-84]
 004900F7    mov         eax,dword ptr [ebp-4]
 004900FA    call        0041D9E8
 004900FF    mov         edx,dword ptr [ebp-84]
 00490105    lea         eax,[ebp-4]
 00490108    call        @UStrLAsg
 0049010D    mov         edx,dword ptr [ebp-4]
 00490110    mov         eax,dword ptr [ebp-10]
 00490113    call        TStringBuilder.Append
 00490118    mov         eax,esi
 0049011A    call        TStrings.GetDelimiter
 0049011F    mov         edx,eax
 00490121    mov         eax,dword ptr [ebp-10]
 00490124    call        TStringBuilder.Append
 00490129    inc         dword ptr [ebp-0C]
 0049012C    dec         dword ptr [ebp-14]
>0049012F    jne         004900A2
 00490135    mov         eax,dword ptr [ebp-10]
 00490138    mov         ebx,dword ptr [eax+8]
 0049013B    test        ebx,ebx
>0049013D    jle         00490150
 0049013F    mov         eax,dword ptr [ebp-8]
 00490142    push        eax
 00490143    mov         ecx,ebx
 00490145    dec         ecx
 00490146    xor         edx,edx
 00490148    mov         eax,dword ptr [ebp-10]
 0049014B    call        TStringBuilder.ToString
 00490150    xor         eax,eax
 00490152    pop         edx
 00490153    pop         ecx
 00490154    pop         ecx
 00490155    mov         dword ptr fs:[eax],edx
 00490158    push        49016D
 0049015D    mov         eax,dword ptr [ebp-10]
 00490160    call        TObject.Free
 00490165    ret
>00490166    jmp         @HandleFinally
>0049016B    jmp         0049015D
 0049016D    xor         eax,eax
 0049016F    pop         edx
 00490170    pop         ecx
 00490171    pop         ecx
 00490172    mov         dword ptr fs:[eax],edx
 00490175    push        4901A2
 0049017A    lea         eax,[ebp-84]
 00490180    call        @UStrClr
 00490185    lea         eax,[ebp-40]
 00490188    mov         edx,3
 0049018D    call        @UStrArrayClr
 00490192    lea         eax,[ebp-4]
 00490195    call        @UStrClr
 0049019A    ret
>0049019B    jmp         @HandleFinally
>004901A0    jmp         0049017A
 004901A2    pop         edi
 004901A3    pop         esi
 004901A4    pop         ebx
 004901A5    mov         esp,ebp
 004901A7    pop         ebp
 004901A8    ret
*}
end;

//004901EC
function TStrings.GetEnumerator:TStringsEnumerator;
begin
{*
 004901EC    mov         ecx,eax
 004901EE    mov         dl,1
 004901F0    mov         eax,[0046E688];TStringsEnumerator
 004901F5    call        TComponentEnumerator.Create
 004901FA    ret
*}
end;

//004901FC
function TStrings.GetObject(Index:Integer):TObject;
begin
{*
 004901FC    xor         eax,eax
 004901FE    ret
*}
end;

//00490200
function TStrings.GetText:PWideChar;
begin
{*
 00490200    push        ebp
 00490201    mov         ebp,esp
 00490203    push        0
 00490205    push        ebx
 00490206    mov         ebx,eax
 00490208    xor         eax,eax
 0049020A    push        ebp
 0049020B    push        490245
 00490210    push        dword ptr fs:[eax]
 00490213    mov         dword ptr fs:[eax],esp
 00490216    lea         edx,[ebp-4]
 00490219    mov         eax,ebx
 0049021B    mov         ecx,dword ptr [eax]
 0049021D    call        dword ptr [ecx+1C]
 00490220    mov         eax,dword ptr [ebp-4]
 00490223    call        @UStrToPWChar
 00490228    call        StrNew
 0049022D    mov         ebx,eax
 0049022F    xor         eax,eax
 00490231    pop         edx
 00490232    pop         ecx
 00490233    pop         ecx
 00490234    mov         dword ptr fs:[eax],edx
 00490237    push        49024C
 0049023C    lea         eax,[ebp-4]
 0049023F    call        @UStrClr
 00490244    ret
>00490245    jmp         @HandleFinally
>0049024A    jmp         0049023C
 0049024C    mov         eax,ebx
 0049024E    pop         ebx
 0049024F    pop         ecx
 00490250    pop         ebp
 00490251    ret
*}
end;

//00490254
function TStrings.GetTextStr:UnicodeString;
begin
{*
 00490254    push        ebp
 00490255    mov         ebp,esp
 00490257    add         esp,0FFFFFFDC
 0049025A    push        ebx
 0049025B    push        esi
 0049025C    xor         ecx,ecx
 0049025E    mov         dword ptr [ebp-24],ecx
 00490261    mov         dword ptr [ebp-4],ecx
 00490264    mov         dword ptr [ebp-8],ecx
 00490267    mov         dword ptr [ebp-10],edx
 0049026A    mov         dword ptr [ebp-0C],eax
 0049026D    xor         eax,eax
 0049026F    push        ebp
 00490270    push        490383
 00490275    push        dword ptr fs:[eax]
 00490278    mov         dword ptr fs:[eax],esp
 0049027B    mov         eax,dword ptr [ebp-0C]
 0049027E    mov         edx,dword ptr [eax]
 00490280    call        dword ptr [edx+14]
 00490283    mov         dword ptr [ebp-1C],eax
 00490286    xor         eax,eax
 00490288    mov         dword ptr [ebp-18],eax
 0049028B    lea         edx,[ebp-8]
 0049028E    mov         eax,dword ptr [ebp-0C]
 00490291    call        TStrings.GetLineBreak
 00490296    mov         esi,dword ptr [ebp-1C]
 00490299    dec         esi
 0049029A    test        esi,esi
>0049029C    jl          004902D7
 0049029E    inc         esi
 0049029F    mov         dword ptr [ebp-14],0
 004902A6    lea         ecx,[ebp-24]
 004902A9    mov         edx,dword ptr [ebp-14]
 004902AC    mov         eax,dword ptr [ebp-0C]
 004902AF    mov         ebx,dword ptr [eax]
 004902B1    call        dword ptr [ebx+0C]
 004902B4    mov         eax,dword ptr [ebp-24]
 004902B7    test        eax,eax
>004902B9    je          004902C0
 004902BB    sub         eax,4
 004902BE    mov         eax,dword ptr [eax]
 004902C0    mov         edx,dword ptr [ebp-8]
 004902C3    test        edx,edx
>004902C5    je          004902CC
 004902C7    sub         edx,4
 004902CA    mov         edx,dword ptr [edx]
 004902CC    add         edx,eax
 004902CE    add         dword ptr [ebp-18],edx
 004902D1    inc         dword ptr [ebp-14]
 004902D4    dec         esi
>004902D5    jne         004902A6
 004902D7    mov         eax,dword ptr [ebp-10]
 004902DA    mov         ecx,dword ptr [ebp-18]
 004902DD    xor         edx,edx
 004902DF    call        @UStrFromPWCharLen
 004902E4    mov         eax,dword ptr [ebp-10]
 004902E7    mov         eax,dword ptr [eax]
 004902E9    mov         dword ptr [ebp-20],eax
 004902EC    mov         esi,dword ptr [ebp-1C]
 004902EF    dec         esi
 004902F0    test        esi,esi
>004902F2    jl          00490360
 004902F4    inc         esi
 004902F5    mov         dword ptr [ebp-14],0
 004902FC    lea         ecx,[ebp-4]
 004902FF    mov         edx,dword ptr [ebp-14]
 00490302    mov         eax,dword ptr [ebp-0C]
 00490305    mov         ebx,dword ptr [eax]
 00490307    call        dword ptr [ebx+0C]
 0049030A    mov         eax,dword ptr [ebp-4]
 0049030D    test        eax,eax
>0049030F    je          00490316
 00490311    sub         eax,4
 00490314    mov         eax,dword ptr [eax]
 00490316    mov         ebx,eax
 00490318    test        ebx,ebx
>0049031A    je          00490332
 0049031C    mov         ecx,ebx
 0049031E    add         ecx,ecx
 00490320    mov         edx,dword ptr [ebp-20]
 00490323    mov         eax,dword ptr [ebp-4]
 00490326    call        Move
 0049032B    mov         eax,ebx
 0049032D    add         eax,eax
 0049032F    add         dword ptr [ebp-20],eax
 00490332    mov         eax,dword ptr [ebp-8]
 00490335    test        eax,eax
>00490337    je          0049033E
 00490339    sub         eax,4
 0049033C    mov         eax,dword ptr [eax]
 0049033E    mov         ebx,eax
 00490340    test        ebx,ebx
>00490342    je          0049035A
 00490344    mov         ecx,ebx
 00490346    add         ecx,ecx
 00490348    mov         edx,dword ptr [ebp-20]
 0049034B    mov         eax,dword ptr [ebp-8]
 0049034E    call        Move
 00490353    mov         eax,ebx
 00490355    add         eax,eax
 00490357    add         dword ptr [ebp-20],eax
 0049035A    inc         dword ptr [ebp-14]
 0049035D    dec         esi
>0049035E    jne         004902FC
 00490360    xor         eax,eax
 00490362    pop         edx
 00490363    pop         ecx
 00490364    pop         ecx
 00490365    mov         dword ptr fs:[eax],edx
 00490368    push        49038A
 0049036D    lea         eax,[ebp-24]
 00490370    call        @UStrClr
 00490375    lea         eax,[ebp-8]
 00490378    mov         edx,2
 0049037D    call        @UStrArrayClr
 00490382    ret
>00490383    jmp         @HandleFinally
>00490388    jmp         0049036D
 0049038A    pop         esi
 0049038B    pop         ebx
 0049038C    mov         esp,ebp
 0049038E    pop         ebp
 0049038F    ret
*}
end;

//00490390
{*procedure TStrings.GetValue(Name:string; ?:?);
begin
 00490390    push        ebp
 00490391    mov         ebp,esp
 00490393    add         esp,0FFFFFFF4
 00490396    push        ebx
 00490397    push        esi
 00490398    xor         ebx,ebx
 0049039A    mov         dword ptr [ebp-4],ebx
 0049039D    mov         dword ptr [ebp-0C],ecx
 004903A0    mov         dword ptr [ebp-8],edx
 004903A3    mov         esi,eax
 004903A5    xor         eax,eax
 004903A7    push        ebp
 004903A8    push        49040F
 004903AD    push        dword ptr fs:[eax]
 004903B0    mov         dword ptr fs:[eax],esp
 004903B3    mov         edx,dword ptr [ebp-8]
 004903B6    mov         eax,esi
 004903B8    mov         ecx,dword ptr [eax]
 004903BA    call        dword ptr [ecx+5C];TStrings.IndexOfName
 004903BD    mov         ebx,eax
 004903BF    test        ebx,ebx
>004903C1    jl          004903F1
 004903C3    lea         ecx,[ebp-4]
 004903C6    mov         edx,ebx
 004903C8    mov         eax,esi
 004903CA    mov         ebx,dword ptr [eax]
 004903CC    call        dword ptr [ebx+0C];TStrings.Get
 004903CF    mov         ebx,dword ptr [ebp-8]
 004903D2    test        ebx,ebx
>004903D4    je          004903DB
 004903D6    sub         ebx,4
 004903D9    mov         ebx,dword ptr [ebx]
 004903DB    mov         eax,dword ptr [ebp-0C]
 004903DE    push        eax
 004903DF    lea         edx,[ebx+2]
 004903E2    mov         ecx,7FFFFFFF
 004903E7    mov         eax,dword ptr [ebp-4]
 004903EA    call        @UStrCopy
>004903EF    jmp         004903F9
 004903F1    mov         eax,dword ptr [ebp-0C]
 004903F4    call        @UStrClr
 004903F9    xor         eax,eax
 004903FB    pop         edx
 004903FC    pop         ecx
 004903FD    pop         ecx
 004903FE    mov         dword ptr fs:[eax],edx
 00490401    push        490416
 00490406    lea         eax,[ebp-4]
 00490409    call        @UStrClr
 0049040E    ret
>0049040F    jmp         @HandleFinally
>00490414    jmp         00490406
 00490416    pop         esi
 00490417    pop         ebx
 00490418    mov         esp,ebp
 0049041A    pop         ebp
 0049041B    ret
end;*}

//0049041C
function TStrings.IndexOf(S:string):Integer;
begin
{*
 0049041C    push        ebp
 0049041D    mov         ebp,esp
 0049041F    add         esp,0FFFFFFF4
 00490422    push        ebx
 00490423    push        esi
 00490424    push        edi
 00490425    xor         ecx,ecx
 00490427    mov         dword ptr [ebp-0C],ecx
 0049042A    mov         dword ptr [ebp-4],edx
 0049042D    mov         ebx,eax
 0049042F    xor         eax,eax
 00490431    push        ebp
 00490432    push        490494
 00490437    push        dword ptr fs:[eax]
 0049043A    mov         dword ptr fs:[eax],esp
 0049043D    mov         eax,ebx
 0049043F    mov         edx,dword ptr [eax]
 00490441    call        dword ptr [edx+14]
 00490444    mov         esi,eax
 00490446    dec         esi
 00490447    test        esi,esi
>00490449    jl          00490477
 0049044B    inc         esi
 0049044C    mov         dword ptr [ebp-8],0
 00490453    lea         ecx,[ebp-0C]
 00490456    mov         edx,dword ptr [ebp-8]
 00490459    mov         eax,ebx
 0049045B    mov         edi,dword ptr [eax]
 0049045D    call        dword ptr [edi+0C]
 00490460    mov         edx,dword ptr [ebp-0C]
 00490463    mov         ecx,dword ptr [ebp-4]
 00490466    mov         eax,ebx
 00490468    mov         edi,dword ptr [eax]
 0049046A    call        dword ptr [edi+38]
 0049046D    test        eax,eax
>0049046F    je          0049047E
 00490471    inc         dword ptr [ebp-8]
 00490474    dec         esi
>00490475    jne         00490453
 00490477    mov         dword ptr [ebp-8],0FFFFFFFF
 0049047E    xor         eax,eax
 00490480    pop         edx
 00490481    pop         ecx
 00490482    pop         ecx
 00490483    mov         dword ptr fs:[eax],edx
 00490486    push        49049B
 0049048B    lea         eax,[ebp-0C]
 0049048E    call        @UStrClr
 00490493    ret
>00490494    jmp         @HandleFinally
>00490499    jmp         0049048B
 0049049B    mov         eax,dword ptr [ebp-8]
 0049049E    pop         edi
 0049049F    pop         esi
 004904A0    pop         ebx
 004904A1    mov         esp,ebp
 004904A3    pop         ebp
 004904A4    ret
*}
end;

//004904A8
function TStrings.IndexOfName(Name:string):Integer;
begin
{*
 004904A8    push        ebp
 004904A9    mov         ebp,esp
 004904AB    add         esp,0FFFFFFE8
 004904AE    push        ebx
 004904AF    push        esi
 004904B0    xor         ecx,ecx
 004904B2    mov         dword ptr [ebp-18],ecx
 004904B5    mov         dword ptr [ebp-14],ecx
 004904B8    mov         dword ptr [ebp-4],ecx
 004904BB    mov         dword ptr [ebp-8],edx
 004904BE    mov         ebx,eax
 004904C0    xor         eax,eax
 004904C2    push        ebp
 004904C3    push        49056B
 004904C8    push        dword ptr fs:[eax]
 004904CB    mov         dword ptr fs:[eax],esp
 004904CE    mov         eax,ebx
 004904D0    mov         edx,dword ptr [eax]
 004904D2    call        dword ptr [edx+14]
 004904D5    dec         eax
 004904D6    test        eax,eax
>004904D8    jl          00490541
 004904DA    inc         eax
 004904DB    mov         dword ptr [ebp-10],eax
 004904DE    mov         dword ptr [ebp-0C],0
 004904E5    lea         ecx,[ebp-4]
 004904E8    mov         edx,dword ptr [ebp-0C]
 004904EB    mov         eax,ebx
 004904ED    mov         esi,dword ptr [eax]
 004904EF    call        dword ptr [esi+0C]
 004904F2    mov         eax,ebx
 004904F4    call        TStrings.GetNameValueSeparator
 004904F9    mov         edx,eax
 004904FB    lea         eax,[ebp-14]
 004904FE    call        @UStrFromWChar
 00490503    mov         eax,dword ptr [ebp-14]
 00490506    mov         edx,dword ptr [ebp-4]
 00490509    call        AnsiPos
 0049050E    mov         esi,eax
 00490510    test        esi,esi
>00490512    je          00490539
 00490514    lea         eax,[ebp-18]
 00490517    push        eax
 00490518    mov         ecx,esi
 0049051A    dec         ecx
 0049051B    mov         edx,1
 00490520    mov         eax,dword ptr [ebp-4]
 00490523    call        @UStrCopy
 00490528    mov         edx,dword ptr [ebp-18]
 0049052B    mov         ecx,dword ptr [ebp-8]
 0049052E    mov         eax,ebx
 00490530    mov         esi,dword ptr [eax]
 00490532    call        dword ptr [esi+38]
 00490535    test        eax,eax
>00490537    je          00490548
 00490539    inc         dword ptr [ebp-0C]
 0049053C    dec         dword ptr [ebp-10]
>0049053F    jne         004904E5
 00490541    mov         dword ptr [ebp-0C],0FFFFFFFF
 00490548    xor         eax,eax
 0049054A    pop         edx
 0049054B    pop         ecx
 0049054C    pop         ecx
 0049054D    mov         dword ptr fs:[eax],edx
 00490550    push        490572
 00490555    lea         eax,[ebp-18]
 00490558    mov         edx,2
 0049055D    call        @UStrArrayClr
 00490562    lea         eax,[ebp-4]
 00490565    call        @UStrClr
 0049056A    ret
>0049056B    jmp         @HandleFinally
>00490570    jmp         00490555
 00490572    mov         eax,dword ptr [ebp-0C]
 00490575    pop         esi
 00490576    pop         ebx
 00490577    mov         esp,ebp
 00490579    pop         ebp
 0049057A    ret
*}
end;

//0049057C
function TStrings.IndexOfObject(AObject:TObject):Integer;
begin
{*
 0049057C    push        ebx
 0049057D    push        esi
 0049057E    push        edi
 0049057F    push        ebp
 00490580    mov         ebp,edx
 00490582    mov         edi,eax
 00490584    mov         eax,edi
 00490586    mov         edx,dword ptr [eax]
 00490588    call        dword ptr [edx+14]
 0049058B    mov         ebx,eax
 0049058D    dec         ebx
 0049058E    test        ebx,ebx
>00490590    jl          004905A6
 00490592    inc         ebx
 00490593    xor         esi,esi
 00490595    mov         edx,esi
 00490597    mov         eax,edi
 00490599    mov         ecx,dword ptr [eax]
 0049059B    call        dword ptr [ecx+18]
 0049059E    cmp         ebp,eax
>004905A0    je          004905A9
 004905A2    inc         esi
 004905A3    dec         ebx
>004905A4    jne         00490595
 004905A6    or          esi,0FFFFFFFF
 004905A9    mov         eax,esi
 004905AB    pop         ebp
 004905AC    pop         edi
 004905AD    pop         esi
 004905AE    pop         ebx
 004905AF    ret
*}
end;

//004905B0
procedure TStrings.InsertObject(Index:Integer; S:string; AObject:TObject);
begin
{*
 004905B0    push        ebp
 004905B1    mov         ebp,esp
 004905B3    push        ecx
 004905B4    push        ebx
 004905B5    push        esi
 004905B6    push        edi
 004905B7    mov         dword ptr [ebp-4],ecx
 004905BA    mov         edi,edx
 004905BC    mov         esi,eax
 004905BE    mov         ecx,dword ptr [ebp-4]
 004905C1    mov         edx,edi
 004905C3    mov         eax,esi
 004905C5    mov         ebx,dword ptr [eax]
 004905C7    call        dword ptr [ebx+64];TStrings.Insert
 004905CA    mov         ecx,dword ptr [ebp+8]
 004905CD    mov         edx,edi
 004905CF    mov         eax,esi
 004905D1    mov         ebx,dword ptr [eax]
 004905D3    call        dword ptr [ebx+24];TStrings.PutObject
 004905D6    pop         edi
 004905D7    pop         esi
 004905D8    pop         ebx
 004905D9    pop         ecx
 004905DA    pop         ebp
 004905DB    ret         4
*}
end;

//004905E0
procedure TStrings.LoadFromFile(FileName:string);
begin
{*
 004905E0    push        ebp
 004905E1    mov         ebp,esp
 004905E3    push        ecx
 004905E4    push        esi
 004905E5    mov         esi,eax
 004905E7    push        20
 004905E9    mov         ecx,edx
 004905EB    mov         eax,[00472830];TFileStream
 004905F0    mov         dl,1
 004905F2    call        TFileStream.Create;TFileStream.Create
 004905F7    mov         dword ptr [ebp-4],eax
 004905FA    xor         eax,eax
 004905FC    push        ebp
 004905FD    push        490628
 00490602    push        dword ptr fs:[eax]
 00490605    mov         dword ptr fs:[eax],esp
 00490608    mov         edx,dword ptr [ebp-4]
 0049060B    mov         eax,esi
 0049060D    mov         ecx,dword ptr [eax]
 0049060F    call        dword ptr [ecx+74];TStrings.LoadFromStream
 00490612    xor         eax,eax
 00490614    pop         edx
 00490615    pop         ecx
 00490616    pop         ecx
 00490617    mov         dword ptr fs:[eax],edx
 0049061A    push        49062F
 0049061F    mov         eax,dword ptr [ebp-4]
 00490622    call        TObject.Free
 00490627    ret
>00490628    jmp         @HandleFinally
>0049062D    jmp         0049061F
 0049062F    pop         esi
 00490630    pop         ecx
 00490631    pop         ebp
 00490632    ret
*}
end;

//00490634
procedure TStrings.LoadFromFile(FileName:string; Encoding:TEncoding);
begin
{*
 00490634    push        ebp
 00490635    mov         ebp,esp
 00490637    push        ecx
 00490638    push        ebx
 00490639    push        esi
 0049063A    push        edi
 0049063B    mov         edi,ecx
 0049063D    mov         esi,eax
 0049063F    push        20
 00490641    mov         ecx,edx
 00490643    mov         eax,[00472830];TFileStream
 00490648    mov         dl,1
 0049064A    call        TFileStream.Create;TFileStream.Create
 0049064F    mov         dword ptr [ebp-4],eax
 00490652    xor         eax,eax
 00490654    push        ebp
 00490655    push        490682
 0049065A    push        dword ptr fs:[eax]
 0049065D    mov         dword ptr fs:[eax],esp
 00490660    mov         ecx,edi
 00490662    mov         edx,dword ptr [ebp-4]
 00490665    mov         eax,esi
 00490667    mov         ebx,dword ptr [eax]
 00490669    call        dword ptr [ebx+78];TStrings.LoadFromStream
 0049066C    xor         eax,eax
 0049066E    pop         edx
 0049066F    pop         ecx
 00490670    pop         ecx
 00490671    mov         dword ptr fs:[eax],edx
 00490674    push        490689
 00490679    mov         eax,dword ptr [ebp-4]
 0049067C    call        TObject.Free
 00490681    ret
>00490682    jmp         @HandleFinally
>00490687    jmp         00490679
 00490689    pop         edi
 0049068A    pop         esi
 0049068B    pop         ebx
 0049068C    pop         ecx
 0049068D    pop         ebp
 0049068E    ret
*}
end;

//00490690
procedure TStrings.LoadFromStream(Stream:TStream);
begin
{*
 00490690    push        ebx
 00490691    push        esi
 00490692    push        edi
 00490693    mov         edi,edx
 00490695    mov         esi,eax
 00490697    xor         ecx,ecx
 00490699    mov         edx,edi
 0049069B    mov         eax,esi
 0049069D    mov         ebx,dword ptr [eax]
 0049069F    call        dword ptr [ebx+78];TStrings.LoadFromStream
 004906A2    pop         edi
 004906A3    pop         esi
 004906A4    pop         ebx
 004906A5    ret
*}
end;

//004906A8
procedure TStrings.LoadFromStream(Stream:TStream; Encoding:TEncoding);
begin
{*
 004906A8    push        ebp
 004906A9    mov         ebp,esp
 004906AB    add         esp,0FFFFFFF0
 004906AE    push        ebx
 004906AF    push        esi
 004906B0    xor         ebx,ebx
 004906B2    mov         dword ptr [ebp-10],ebx
 004906B5    mov         dword ptr [ebp-4],ebx
 004906B8    mov         dword ptr [ebp-0C],ecx
 004906BB    mov         esi,edx
 004906BD    mov         dword ptr [ebp-8],eax
 004906C0    xor         eax,eax
 004906C2    push        ebp
 004906C3    push        4907A3
 004906C8    push        dword ptr fs:[eax]
 004906CB    mov         dword ptr fs:[eax],esp
 004906CE    mov         eax,dword ptr [ebp-8]
 004906D1    call        TStrings.BeginUpdate
 004906D6    xor         eax,eax
 004906D8    push        ebp
 004906D9    push        490778
 004906DE    push        dword ptr fs:[eax]
 004906E1    mov         dword ptr fs:[eax],esp
 004906E4    mov         eax,esi
 004906E6    mov         edx,dword ptr [eax]
 004906E8    call        dword ptr [edx];TStream.sub_00491B30
 004906EA    mov         ebx,eax
 004906EC    mov         eax,esi
 004906EE    call        TStream.GetPosition
 004906F3    sub         ebx,eax
 004906F5    push        ebx
 004906F6    lea         eax,[ebp-4]
 004906F9    mov         ecx,1
 004906FE    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00490704    call        @DynArraySetLength
 00490709    add         esp,4
 0049070C    push        ebx
 0049070D    xor         ecx,ecx
 0049070F    mov         edx,dword ptr [ebp-4]
 00490712    mov         eax,esi
 00490714    mov         ebx,dword ptr [eax]
 00490716    call        dword ptr [ebx+14];TStream.Read
 00490719    mov         eax,dword ptr [ebp-8]
 0049071C    mov         ecx,dword ptr [eax+0C];TStrings.FDefaultEncoding:TEncoding
 0049071F    lea         edx,[ebp-0C]
 00490722    mov         eax,dword ptr [ebp-4]
 00490725    call        TEncoding.GetBufferEncoding
 0049072A    mov         ebx,eax
 0049072C    mov         edx,dword ptr [ebp-0C]
 0049072F    mov         eax,dword ptr [ebp-8]
 00490732    mov         ecx,dword ptr [eax]
 00490734    call        dword ptr [ecx+2C];TStrings.SetEncoding
 00490737    mov         esi,dword ptr [ebp-4]
 0049073A    test        esi,esi
>0049073C    je          00490743
 0049073E    sub         esi,4
 00490741    mov         esi,dword ptr [esi]
 00490743    sub         esi,ebx
 00490745    push        esi
 00490746    lea         eax,[ebp-10]
 00490749    push        eax
 0049074A    mov         ecx,ebx
 0049074C    mov         edx,dword ptr [ebp-4]
 0049074F    mov         eax,dword ptr [ebp-0C]
 00490752    call        TEncoding.GetString
 00490757    mov         edx,dword ptr [ebp-10]
 0049075A    mov         eax,dword ptr [ebp-8]
 0049075D    mov         ecx,dword ptr [eax]
 0049075F    call        dword ptr [ecx+30];TStrings.SetTextStr
 00490762    xor         eax,eax
 00490764    pop         edx
 00490765    pop         ecx
 00490766    pop         ecx
 00490767    mov         dword ptr fs:[eax],edx
 0049076A    push        49077F
 0049076F    mov         eax,dword ptr [ebp-8]
 00490772    call        TStrings.EndUpdate
 00490777    ret
>00490778    jmp         @HandleFinally
>0049077D    jmp         0049076F
 0049077F    xor         eax,eax
 00490781    pop         edx
 00490782    pop         ecx
 00490783    pop         ecx
 00490784    mov         dword ptr fs:[eax],edx
 00490787    push        4907AA
 0049078C    lea         eax,[ebp-10]
 0049078F    call        @UStrClr
 00490794    lea         eax,[ebp-4]
 00490797    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0049079D    call        @DynArrayClear
 004907A2    ret
>004907A3    jmp         @HandleFinally
>004907A8    jmp         0049078C
 004907AA    pop         esi
 004907AB    pop         ebx
 004907AC    mov         esp,ebp
 004907AE    pop         ebp
 004907AF    ret
*}
end;

//004907B0
procedure TStrings.Move(CurIndex:Integer; NewIndex:Integer);
begin
{*
 004907B0    push        ebp
 004907B1    mov         ebp,esp
 004907B3    add         esp,0FFFFFFF4
 004907B6    push        ebx
 004907B7    push        esi
 004907B8    push        edi
 004907B9    xor         ebx,ebx
 004907BB    mov         dword ptr [ebp-4],ebx
 004907BE    mov         esi,ecx
 004907C0    mov         ebx,edx
 004907C2    mov         dword ptr [ebp-8],eax
 004907C5    xor         eax,eax
 004907C7    push        ebp
 004907C8    push        490861
 004907CD    push        dword ptr fs:[eax]
 004907D0    mov         dword ptr fs:[eax],esp
 004907D3    cmp         esi,ebx
>004907D5    je          0049084B
 004907D7    mov         eax,dword ptr [ebp-8]
 004907DA    call        TStrings.BeginUpdate
 004907DF    xor         eax,eax
 004907E1    push        ebp
 004907E2    push        490844
 004907E7    push        dword ptr fs:[eax]
 004907EA    mov         dword ptr fs:[eax],esp
 004907ED    lea         ecx,[ebp-4]
 004907F0    mov         edx,ebx
 004907F2    mov         eax,dword ptr [ebp-8]
 004907F5    mov         edi,dword ptr [eax]
 004907F7    call        dword ptr [edi+0C];TStrings.Get
 004907FA    mov         edx,ebx
 004907FC    mov         eax,dword ptr [ebp-8]
 004907FF    mov         ecx,dword ptr [eax]
 00490801    call        dword ptr [ecx+18];TStrings.GetObject
 00490804    mov         dword ptr [ebp-0C],eax
 00490807    xor         ecx,ecx
 00490809    mov         edx,ebx
 0049080B    mov         eax,dword ptr [ebp-8]
 0049080E    mov         edi,dword ptr [eax]
 00490810    call        dword ptr [edi+24];TStrings.PutObject
 00490813    mov         edx,ebx
 00490815    mov         eax,dword ptr [ebp-8]
 00490818    mov         ecx,dword ptr [eax]
 0049081A    call        dword ptr [ecx+4C];TStrings.Delete
 0049081D    mov         eax,dword ptr [ebp-0C]
 00490820    push        eax
 00490821    mov         ecx,dword ptr [ebp-4]
 00490824    mov         edx,esi
 00490826    mov         eax,dword ptr [ebp-8]
 00490829    mov         ebx,dword ptr [eax]
 0049082B    call        dword ptr [ebx+68];TStrings.InsertObject
 0049082E    xor         eax,eax
 00490830    pop         edx
 00490831    pop         ecx
 00490832    pop         ecx
 00490833    mov         dword ptr fs:[eax],edx
 00490836    push        49084B
 0049083B    mov         eax,dword ptr [ebp-8]
 0049083E    call        TStrings.EndUpdate
 00490843    ret
>00490844    jmp         @HandleFinally
>00490849    jmp         0049083B
 0049084B    xor         eax,eax
 0049084D    pop         edx
 0049084E    pop         ecx
 0049084F    pop         ecx
 00490850    mov         dword ptr fs:[eax],edx
 00490853    push        490868
 00490858    lea         eax,[ebp-4]
 0049085B    call        @UStrClr
 00490860    ret
>00490861    jmp         @HandleFinally
>00490866    jmp         00490858
 00490868    pop         edi
 00490869    pop         esi
 0049086A    pop         ebx
 0049086B    mov         esp,ebp
 0049086D    pop         ebp
 0049086E    ret
*}
end;

//00490870
procedure TStrings.Put(Index:Integer; S:string);
begin
{*
 00490870    push        ebx
 00490871    push        esi
 00490872    push        edi
 00490873    push        ebp
 00490874    push        ecx
 00490875    mov         dword ptr [esp],ecx
 00490878    mov         edi,edx
 0049087A    mov         esi,eax
 0049087C    mov         edx,edi
 0049087E    mov         eax,esi
 00490880    mov         ecx,dword ptr [eax]
 00490882    call        dword ptr [ecx+18];TStrings.GetObject
 00490885    mov         ebp,eax
 00490887    mov         edx,edi
 00490889    mov         eax,esi
 0049088B    mov         ecx,dword ptr [eax]
 0049088D    call        dword ptr [ecx+4C];TStrings.Delete
 00490890    push        ebp
 00490891    mov         ecx,dword ptr [esp+4]
 00490895    mov         edx,edi
 00490897    mov         eax,esi
 00490899    mov         ebx,dword ptr [eax]
 0049089B    call        dword ptr [ebx+68];TStrings.InsertObject
 0049089E    pop         edx
 0049089F    pop         ebp
 004908A0    pop         edi
 004908A1    pop         esi
 004908A2    pop         ebx
 004908A3    ret
*}
end;

//004908A4
procedure TStrings.PutObject(Index:Integer; AObject:TObject);
begin
{*
 004908A4    ret
*}
end;

//004908A8
procedure TStrings.ReadData(Reader:TReader);
begin
{*
 004908A8    push        ebp
 004908A9    mov         ebp,esp
 004908AB    add         esp,0FFFFFFF4
 004908AE    xor         ecx,ecx
 004908B0    mov         dword ptr [ebp-0C],ecx
 004908B3    mov         dword ptr [ebp-8],edx
 004908B6    mov         dword ptr [ebp-4],eax
 004908B9    xor         eax,eax
 004908BB    push        ebp
 004908BC    push        49094C
 004908C1    push        dword ptr fs:[eax]
 004908C4    mov         dword ptr fs:[eax],esp
 004908C7    mov         eax,dword ptr [ebp-8]
 004908CA    call        TReader.ReadListBegin
 004908CF    mov         eax,dword ptr [ebp-4]
 004908D2    call        TStrings.BeginUpdate
 004908D7    xor         eax,eax
 004908D9    push        ebp
 004908DA    push        490927
 004908DF    push        dword ptr fs:[eax]
 004908E2    mov         dword ptr fs:[eax],esp
 004908E5    mov         eax,dword ptr [ebp-4]
 004908E8    mov         edx,dword ptr [eax]
 004908EA    call        dword ptr [edx+48]
>004908ED    jmp         00490905
 004908EF    lea         edx,[ebp-0C]
 004908F2    mov         eax,dword ptr [ebp-8]
 004908F5    call        TReader.ReadString
 004908FA    mov         edx,dword ptr [ebp-0C]
 004908FD    mov         eax,dword ptr [ebp-4]
 00490900    mov         ecx,dword ptr [eax]
 00490902    call        dword ptr [ecx+3C]
 00490905    mov         eax,dword ptr [ebp-8]
 00490908    call        TReader.EndOfList
 0049090D    test        al,al
>0049090F    je          004908EF
 00490911    xor         eax,eax
 00490913    pop         edx
 00490914    pop         ecx
 00490915    pop         ecx
 00490916    mov         dword ptr fs:[eax],edx
 00490919    push        49092E
 0049091E    mov         eax,dword ptr [ebp-4]
 00490921    call        TStrings.EndUpdate
 00490926    ret
>00490927    jmp         @HandleFinally
>0049092C    jmp         0049091E
 0049092E    mov         eax,dword ptr [ebp-8]
 00490931    call        TReader.ReadListEnd
 00490936    xor         eax,eax
 00490938    pop         edx
 00490939    pop         ecx
 0049093A    pop         ecx
 0049093B    mov         dword ptr fs:[eax],edx
 0049093E    push        490953
 00490943    lea         eax,[ebp-0C]
 00490946    call        @UStrClr
 0049094B    ret
>0049094C    jmp         @HandleFinally
>00490951    jmp         00490943
 00490953    mov         esp,ebp
 00490955    pop         ebp
 00490956    ret
*}
end;

//00490958
procedure TStrings.SaveToFile(FileName:string);
begin
{*
 00490958    push        ebx
 00490959    push        esi
 0049095A    push        edi
 0049095B    mov         edi,edx
 0049095D    mov         esi,eax
 0049095F    mov         ecx,dword ptr [esi+4];TStrings.FEncoding:TEncoding
 00490962    mov         edx,edi
 00490964    mov         eax,esi
 00490966    mov         ebx,dword ptr [eax]
 00490968    call        dword ptr [ebx+84];TStrings.SaveToFile
 0049096E    pop         edi
 0049096F    pop         esi
 00490970    pop         ebx
 00490971    ret
*}
end;

//00490974
procedure TStrings.SaveToFile(FileName:string; Encoding:TEncoding);
begin
{*
 00490974    push        ebp
 00490975    mov         ebp,esp
 00490977    push        ecx
 00490978    push        ebx
 00490979    push        esi
 0049097A    push        edi
 0049097B    mov         edi,ecx
 0049097D    mov         esi,eax
 0049097F    push        0FF00
 00490984    mov         ecx,edx
 00490986    mov         eax,[00472830];TFileStream
 0049098B    mov         dl,1
 0049098D    call        TFileStream.Create;TFileStream.Create
 00490992    mov         dword ptr [ebp-4],eax
 00490995    xor         eax,eax
 00490997    push        ebp
 00490998    push        4909C8
 0049099D    push        dword ptr fs:[eax]
 004909A0    mov         dword ptr fs:[eax],esp
 004909A3    mov         ecx,edi
 004909A5    mov         edx,dword ptr [ebp-4]
 004909A8    mov         eax,esi
 004909AA    mov         ebx,dword ptr [eax]
 004909AC    call        dword ptr [ebx+8C];TStrings.SaveToStream
 004909B2    xor         eax,eax
 004909B4    pop         edx
 004909B5    pop         ecx
 004909B6    pop         ecx
 004909B7    mov         dword ptr fs:[eax],edx
 004909BA    push        4909CF
 004909BF    mov         eax,dword ptr [ebp-4]
 004909C2    call        TObject.Free
 004909C7    ret
>004909C8    jmp         @HandleFinally
>004909CD    jmp         004909BF
 004909CF    pop         edi
 004909D0    pop         esi
 004909D1    pop         ebx
 004909D2    pop         ecx
 004909D3    pop         ebp
 004909D4    ret
*}
end;

//004909D8
procedure TStrings.SaveToStream(Stream:TStream);
begin
{*
 004909D8    push        ebx
 004909D9    push        esi
 004909DA    push        edi
 004909DB    mov         edi,edx
 004909DD    mov         esi,eax
 004909DF    mov         ecx,dword ptr [esi+4];TStrings.FEncoding:TEncoding
 004909E2    mov         edx,edi
 004909E4    mov         eax,esi
 004909E6    mov         ebx,dword ptr [eax]
 004909E8    call        dword ptr [ebx+8C];TStrings.SaveToStream
 004909EE    pop         edi
 004909EF    pop         esi
 004909F0    pop         ebx
 004909F1    ret
*}
end;

//004909F4
procedure TStrings.SaveToStream(Stream:TStream; Encoding:TEncoding);
begin
{*
 004909F4    push        ebp
 004909F5    mov         ebp,esp
 004909F7    push        0
 004909F9    push        0
 004909FB    push        0
 004909FD    push        0
 004909FF    push        ebx
 00490A00    push        esi
 00490A01    mov         esi,ecx
 00490A03    mov         dword ptr [ebp-0C],edx
 00490A06    mov         ebx,eax
 00490A08    xor         eax,eax
 00490A0A    push        ebp
 00490A0B    push        490AB0
 00490A10    push        dword ptr fs:[eax]
 00490A13    mov         dword ptr fs:[eax],esp
 00490A16    test        esi,esi
>00490A18    jne         00490A1D
 00490A1A    mov         esi,dword ptr [ebx+0C];TStrings.FDefaultEncoding:TEncoding
 00490A1D    lea         edx,[ebp-10]
 00490A20    mov         eax,ebx
 00490A22    mov         ecx,dword ptr [eax]
 00490A24    call        dword ptr [ecx+1C];TStrings.GetTextStr
 00490A27    mov         edx,dword ptr [ebp-10]
 00490A2A    lea         ecx,[ebp-4]
 00490A2D    mov         eax,esi
 00490A2F    call        TEncoding.GetBytes
 00490A34    cmp         byte ptr [ebx+28],0;TStrings.FWriteBOM:Boolean
>00490A38    je          00490A6E
 00490A3A    lea         edx,[ebp-8]
 00490A3D    mov         eax,esi
 00490A3F    mov         ecx,dword ptr [eax]
 00490A41    call        dword ptr [ecx+24];TEncoding.GetPreamble
 00490A44    mov         edx,dword ptr [ebp-8]
 00490A47    mov         eax,edx
 00490A49    test        eax,eax
>00490A4B    je          00490A52
 00490A4D    sub         eax,4
 00490A50    mov         eax,dword ptr [eax]
 00490A52    test        eax,eax
>00490A54    jle         00490A6E
 00490A56    mov         eax,edx
 00490A58    test        eax,eax
>00490A5A    je          00490A61
 00490A5C    sub         eax,4
 00490A5F    mov         eax,dword ptr [eax]
 00490A61    mov         ecx,eax
 00490A63    mov         edx,dword ptr [ebp-8]
 00490A66    mov         eax,dword ptr [ebp-0C]
 00490A69    call        TStream.WriteBuffer
 00490A6E    mov         eax,dword ptr [ebp-4]
 00490A71    test        eax,eax
>00490A73    je          00490A7A
 00490A75    sub         eax,4
 00490A78    mov         eax,dword ptr [eax]
 00490A7A    mov         ecx,eax
 00490A7C    mov         edx,dword ptr [ebp-4]
 00490A7F    mov         eax,dword ptr [ebp-0C]
 00490A82    call        TStream.WriteBuffer
 00490A87    xor         eax,eax
 00490A89    pop         edx
 00490A8A    pop         ecx
 00490A8B    pop         ecx
 00490A8C    mov         dword ptr fs:[eax],edx
 00490A8F    push        490AB7
 00490A94    lea         eax,[ebp-10]
 00490A97    call        @UStrClr
 00490A9C    lea         eax,[ebp-8]
 00490A9F    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00490AA5    mov         ecx,2
 00490AAA    call        @FinalizeArray
 00490AAF    ret
>00490AB0    jmp         @HandleFinally
>00490AB5    jmp         00490A94
 00490AB7    pop         esi
 00490AB8    pop         ebx
 00490AB9    mov         esp,ebp
 00490ABB    pop         ebp
 00490ABC    ret
*}
end;

//00490AC0
procedure sub_00490AC0;
begin
{*
 00490AC0    ret
*}
end;

//00490AC4
procedure TStrings.SetCommaText(const Value:UnicodeString);
begin
{*
 00490AC4    push        ebp
 00490AC5    mov         ebp,esp
 00490AC7    add         esp,0FFFFFFF4
 00490ACA    push        ebx
 00490ACB    mov         ebx,edx
 00490ACD    mov         dword ptr [ebp-4],eax
 00490AD0    mov         eax,dword ptr [ebp-4]
 00490AD3    movzx       eax,byte ptr [eax+8]
 00490AD7    mov         byte ptr [ebp-5],al
 00490ADA    mov         eax,dword ptr [ebp-4]
 00490ADD    movzx       eax,word ptr [eax+10]
 00490AE1    mov         word ptr [ebp-8],ax
 00490AE5    mov         eax,dword ptr [ebp-4]
 00490AE8    movzx       eax,word ptr [eax+18]
 00490AEC    mov         word ptr [ebp-0A],ax
 00490AF0    mov         dx,2C
 00490AF4    mov         eax,dword ptr [ebp-4]
 00490AF7    call        TStrings.SetDelimiter
 00490AFC    mov         dx,22
 00490B00    mov         eax,dword ptr [ebp-4]
 00490B03    call        TStrings.SetQuoteChar
 00490B08    xor         eax,eax
 00490B0A    push        ebp
 00490B0B    push        490B4E
 00490B10    push        dword ptr fs:[eax]
 00490B13    mov         dword ptr fs:[eax],esp
 00490B16    mov         edx,ebx
 00490B18    mov         eax,dword ptr [ebp-4]
 00490B1B    call        TStrings.SetDelimitedText
 00490B20    xor         eax,eax
 00490B22    pop         edx
 00490B23    pop         ecx
 00490B24    pop         ecx
 00490B25    mov         dword ptr fs:[eax],edx
 00490B28    push        490B55
 00490B2D    mov         eax,dword ptr [ebp-4]
 00490B30    movzx       edx,word ptr [ebp-8]
 00490B34    mov         word ptr [eax+10],dx
 00490B38    mov         eax,dword ptr [ebp-4]
 00490B3B    movzx       edx,word ptr [ebp-0A]
 00490B3F    mov         word ptr [eax+18],dx
 00490B43    mov         eax,dword ptr [ebp-4]
 00490B46    movzx       edx,byte ptr [ebp-5]
 00490B4A    mov         byte ptr [eax+8],dl
 00490B4D    ret
>00490B4E    jmp         @HandleFinally
>00490B53    jmp         00490B2D
 00490B55    pop         ebx
 00490B56    mov         esp,ebp
 00490B58    pop         ebp
 00490B59    ret
*}
end;

//00490B5C
procedure TStrings.SetStringsAdapter(const Value:IStringsAdapter);
begin
{*
 00490B5C    push        ebx
 00490B5D    push        esi
 00490B5E    mov         esi,edx
 00490B60    mov         ebx,eax
 00490B62    cmp         dword ptr [ebx+24],0
>00490B66    je          00490B70
 00490B68    mov         eax,dword ptr [ebx+24]
 00490B6B    mov         edx,dword ptr [eax]
 00490B6D    call        dword ptr [edx+10]
 00490B70    lea         eax,[ebx+24]
 00490B73    mov         edx,esi
 00490B75    call        @IntfCopy
 00490B7A    cmp         dword ptr [ebx+24],0
>00490B7E    je          00490B8A
 00490B80    mov         edx,ebx
 00490B82    mov         eax,dword ptr [ebx+24]
 00490B85    mov         ecx,dword ptr [eax]
 00490B87    call        dword ptr [ecx+0C]
 00490B8A    pop         esi
 00490B8B    pop         ebx
 00490B8C    ret
*}
end;

//00490B90
procedure TStrings.SetText(Text:PWideChar);
begin
{*
 00490B90    push        ebp
 00490B91    mov         ebp,esp
 00490B93    push        0
 00490B95    push        ebx
 00490B96    push        esi
 00490B97    mov         esi,edx
 00490B99    mov         ebx,eax
 00490B9B    xor         eax,eax
 00490B9D    push        ebp
 00490B9E    push        490BD3
 00490BA3    push        dword ptr fs:[eax]
 00490BA6    mov         dword ptr fs:[eax],esp
 00490BA9    lea         eax,[ebp-4]
 00490BAC    mov         edx,esi
 00490BAE    call        @UStrFromPWChar
 00490BB3    mov         edx,dword ptr [ebp-4]
 00490BB6    mov         eax,ebx
 00490BB8    mov         ecx,dword ptr [eax]
 00490BBA    call        dword ptr [ecx+30]
 00490BBD    xor         eax,eax
 00490BBF    pop         edx
 00490BC0    pop         ecx
 00490BC1    pop         ecx
 00490BC2    mov         dword ptr fs:[eax],edx
 00490BC5    push        490BDA
 00490BCA    lea         eax,[ebp-4]
 00490BCD    call        @UStrClr
 00490BD2    ret
>00490BD3    jmp         @HandleFinally
>00490BD8    jmp         00490BCA
 00490BDA    pop         esi
 00490BDB    pop         ebx
 00490BDC    pop         ecx
 00490BDD    pop         ebp
 00490BDE    ret
*}
end;

//00490BE0
procedure TStrings.SetTextStr(const Value:UnicodeString);
begin
{*
 00490BE0    push        ebp
 00490BE1    mov         ebp,esp
 00490BE3    xor         ecx,ecx
 00490BE5    push        ecx
 00490BE6    push        ecx
 00490BE7    push        ecx
 00490BE8    push        ecx
 00490BE9    push        ecx
 00490BEA    push        ecx
 00490BEB    push        ebx
 00490BEC    push        esi
 00490BED    push        edi
 00490BEE    mov         ebx,edx
 00490BF0    mov         dword ptr [ebp-8],eax
 00490BF3    xor         eax,eax
 00490BF5    push        ebp
 00490BF6    push        490D56
 00490BFB    push        dword ptr fs:[eax]
 00490BFE    mov         dword ptr fs:[eax],esp
 00490C01    mov         eax,dword ptr [ebp-8]
 00490C04    call        TStrings.BeginUpdate
 00490C09    xor         edx,edx
 00490C0B    push        ebp
 00490C0C    push        490D2C
 00490C11    push        dword ptr fs:[edx]
 00490C14    mov         dword ptr fs:[edx],esp
 00490C17    mov         eax,dword ptr [ebp-8]
 00490C1A    mov         edx,dword ptr [eax]
 00490C1C    call        dword ptr [edx+48]
 00490C1F    test        ebx,ebx
>00490C21    je          00490D16
 00490C27    lea         edx,[ebp-10]
 00490C2A    mov         eax,dword ptr [ebp-8]
 00490C2D    call        TStrings.GetLineBreak
 00490C32    mov         eax,dword ptr [ebp-10]
 00490C35    mov         edx,490D70;'
'
 00490C3A    call        CompareStr
 00490C3F    test        eax,eax
>00490C41    jne         00490C9A
>00490C43    jmp         00490C92
 00490C45    mov         esi,ebx
>00490C47    jmp         00490C4C
 00490C49    add         ebx,2
 00490C4C    movzx       eax,word ptr [ebx]
 00490C4F    test        ax,ax
>00490C52    je          00490C60
 00490C54    sub         ax,0A
>00490C58    je          00490C60
 00490C5A    sub         ax,3
>00490C5E    jne         00490C49
 00490C60    mov         ecx,ebx
 00490C62    sub         ecx,esi
 00490C64    sar         ecx,1
>00490C66    jns         00490C6B
 00490C68    adc         ecx,0
 00490C6B    lea         eax,[ebp-4]
 00490C6E    mov         edx,esi
 00490C70    call        @UStrFromPWCharLen
 00490C75    mov         edx,dword ptr [ebp-4]
 00490C78    mov         eax,dword ptr [ebp-8]
 00490C7B    mov         ecx,dword ptr [eax]
 00490C7D    call        dword ptr [ecx+3C]
 00490C80    cmp         word ptr [ebx],0D
>00490C84    jne         00490C89
 00490C86    add         ebx,2
 00490C89    cmp         word ptr [ebx],0A
>00490C8D    jne         00490C92
 00490C8F    add         ebx,2
 00490C92    cmp         word ptr [ebx],0
>00490C96    jne         00490C45
>00490C98    jmp         00490D16
 00490C9A    lea         edx,[ebp-14]
 00490C9D    mov         eax,dword ptr [ebp-8]
 00490CA0    call        TStrings.GetLineBreak
 00490CA5    mov         eax,dword ptr [ebp-14]
 00490CA8    test        eax,eax
>00490CAA    je          00490CB1
 00490CAC    sub         eax,4
 00490CAF    mov         eax,dword ptr [eax]
 00490CB1    mov         dword ptr [ebp-0C],eax
>00490CB4    jmp         00490D10
 00490CB6    mov         esi,ebx
 00490CB8    lea         edx,[ebp-18]
 00490CBB    mov         eax,dword ptr [ebp-8]
 00490CBE    call        TStrings.GetLineBreak
 00490CC3    mov         eax,dword ptr [ebp-18]
 00490CC6    call        @UStrToPWChar
 00490CCB    mov         edx,eax
 00490CCD    mov         eax,ebx
 00490CCF    call        AnsiStrPos
 00490CD4    mov         edi,eax
>00490CD6    jmp         00490CDB
 00490CD8    add         ebx,2
 00490CDB    cmp         word ptr [ebx],0
>00490CDF    je          00490CE5
 00490CE1    cmp         edi,ebx
>00490CE3    jne         00490CD8
 00490CE5    mov         ecx,ebx
 00490CE7    sub         ecx,esi
 00490CE9    sar         ecx,1
>00490CEB    jns         00490CF0
 00490CED    adc         ecx,0
 00490CF0    lea         eax,[ebp-4]
 00490CF3    mov         edx,esi
 00490CF5    call        @UStrFromPWCharLen
 00490CFA    mov         edx,dword ptr [ebp-4]
 00490CFD    mov         eax,dword ptr [ebp-8]
 00490D00    mov         ecx,dword ptr [eax]
 00490D02    call        dword ptr [ecx+3C]
 00490D05    cmp         edi,ebx
>00490D07    jne         00490D10
 00490D09    mov         eax,dword ptr [ebp-0C]
 00490D0C    add         eax,eax
 00490D0E    add         ebx,eax
 00490D10    cmp         word ptr [ebx],0
>00490D14    jne         00490CB6
 00490D16    xor         eax,eax
 00490D18    pop         edx
 00490D19    pop         ecx
 00490D1A    pop         ecx
 00490D1B    mov         dword ptr fs:[eax],edx
 00490D1E    push        490D33
 00490D23    mov         eax,dword ptr [ebp-8]
 00490D26    call        TStrings.EndUpdate
 00490D2B    ret
>00490D2C    jmp         @HandleFinally
>00490D31    jmp         00490D23
 00490D33    xor         eax,eax
 00490D35    pop         edx
 00490D36    pop         ecx
 00490D37    pop         ecx
 00490D38    mov         dword ptr fs:[eax],edx
 00490D3B    push        490D5D
 00490D40    lea         eax,[ebp-18]
 00490D43    mov         edx,3
 00490D48    call        @UStrArrayClr
 00490D4D    lea         eax,[ebp-4]
 00490D50    call        @UStrClr
 00490D55    ret
>00490D56    jmp         @HandleFinally
>00490D5B    jmp         00490D40
 00490D5D    pop         edi
 00490D5E    pop         esi
 00490D5F    pop         ebx
 00490D60    mov         esp,ebp
 00490D62    pop         ebp
 00490D63    ret
*}
end;

//00490D78
procedure sub_00490D78;
begin
{*
 00490D78    ret
*}
end;

//00490D7C
procedure TStrings.SetValue(Name:string; Value:string);
begin
{*
 00490D7C    push        ebp
 00490D7D    mov         ebp,esp
 00490D7F    push        0
 00490D81    push        0
 00490D83    push        0
 00490D85    push        ebx
 00490D86    push        esi
 00490D87    push        edi
 00490D88    mov         dword ptr [ebp-4],ecx
 00490D8B    mov         edi,edx
 00490D8D    mov         esi,eax
 00490D8F    xor         eax,eax
 00490D91    push        ebp
 00490D92    push        490E18
 00490D97    push        dword ptr fs:[eax]
 00490D9A    mov         dword ptr fs:[eax],esp
 00490D9D    mov         edx,edi
 00490D9F    mov         eax,esi
 00490DA1    mov         ecx,dword ptr [eax]
 00490DA3    call        dword ptr [ecx+5C]
 00490DA6    mov         ebx,eax
 00490DA8    cmp         dword ptr [ebp-4],0
>00490DAC    je          00490DF0
 00490DAE    test        ebx,ebx
>00490DB0    jge         00490DBD
 00490DB2    xor         edx,edx
 00490DB4    mov         eax,esi
 00490DB6    mov         ecx,dword ptr [eax]
 00490DB8    call        dword ptr [ecx+3C]
 00490DBB    mov         ebx,eax
 00490DBD    push        edi
 00490DBE    mov         eax,esi
 00490DC0    call        TStrings.GetNameValueSeparator
 00490DC5    mov         edx,eax
 00490DC7    lea         eax,[ebp-0C]
 00490DCA    call        @UStrFromWChar
 00490DCF    push        dword ptr [ebp-0C]
 00490DD2    push        dword ptr [ebp-4]
 00490DD5    lea         eax,[ebp-8]
 00490DD8    mov         edx,3
 00490DDD    call        @UStrCatN
 00490DE2    mov         ecx,dword ptr [ebp-8]
 00490DE5    mov         edx,ebx
 00490DE7    mov         eax,esi
 00490DE9    mov         ebx,dword ptr [eax]
 00490DEB    call        dword ptr [ebx+20]
>00490DEE    jmp         00490DFD
 00490DF0    test        ebx,ebx
>00490DF2    jl          00490DFD
 00490DF4    mov         edx,ebx
 00490DF6    mov         eax,esi
 00490DF8    mov         ecx,dword ptr [eax]
 00490DFA    call        dword ptr [ecx+4C]
 00490DFD    xor         eax,eax
 00490DFF    pop         edx
 00490E00    pop         ecx
 00490E01    pop         ecx
 00490E02    mov         dword ptr fs:[eax],edx
 00490E05    push        490E1F
 00490E0A    lea         eax,[ebp-0C]
 00490E0D    mov         edx,2
 00490E12    call        @UStrArrayClr
 00490E17    ret
>00490E18    jmp         @HandleFinally
>00490E1D    jmp         00490E0A
 00490E1F    pop         edi
 00490E20    pop         esi
 00490E21    pop         ebx
 00490E22    mov         esp,ebp
 00490E24    pop         ebp
 00490E25    ret
*}
end;

//00490E28
procedure TStrings.WriteData(Writer:TWriter);
begin
{*
 00490E28    push        ebp
 00490E29    mov         ebp,esp
 00490E2B    add         esp,0FFFFFFF4
 00490E2E    push        ebx
 00490E2F    push        esi
 00490E30    push        edi
 00490E31    xor         ecx,ecx
 00490E33    mov         dword ptr [ebp-0C],ecx
 00490E36    mov         dword ptr [ebp-8],edx
 00490E39    mov         dword ptr [ebp-4],eax
 00490E3C    xor         eax,eax
 00490E3E    push        ebp
 00490E3F    push        490E9E
 00490E44    push        dword ptr fs:[eax]
 00490E47    mov         dword ptr fs:[eax],esp
 00490E4A    mov         eax,dword ptr [ebp-8]
 00490E4D    call        TWriter.WriteListBegin
 00490E52    mov         eax,dword ptr [ebp-4]
 00490E55    mov         edx,dword ptr [eax]
 00490E57    call        dword ptr [edx+14]
 00490E5A    mov         ebx,eax
 00490E5C    dec         ebx
 00490E5D    test        ebx,ebx
>00490E5F    jl          00490E80
 00490E61    inc         ebx
 00490E62    xor         esi,esi
 00490E64    lea         ecx,[ebp-0C]
 00490E67    mov         edx,esi
 00490E69    mov         eax,dword ptr [ebp-4]
 00490E6C    mov         edi,dword ptr [eax]
 00490E6E    call        dword ptr [edi+0C]
 00490E71    mov         edx,dword ptr [ebp-0C]
 00490E74    mov         eax,dword ptr [ebp-8]
 00490E77    call        TWriter.WriteString
 00490E7C    inc         esi
 00490E7D    dec         ebx
>00490E7E    jne         00490E64
 00490E80    mov         eax,dword ptr [ebp-8]
 00490E83    call        TWriter.WriteListEnd
 00490E88    xor         eax,eax
 00490E8A    pop         edx
 00490E8B    pop         ecx
 00490E8C    pop         ecx
 00490E8D    mov         dword ptr fs:[eax],edx
 00490E90    push        490EA5
 00490E95    lea         eax,[ebp-0C]
 00490E98    call        @UStrClr
 00490E9D    ret
>00490E9E    jmp         @HandleFinally
>00490EA3    jmp         00490E95
 00490EA5    pop         edi
 00490EA6    pop         esi
 00490EA7    pop         ebx
 00490EA8    mov         esp,ebp
 00490EAA    pop         ebp
 00490EAB    ret
*}
end;

//00490EAC
procedure TStrings.SetDelimitedText(const Value:UnicodeString);
begin
{*
 00490EAC    push        ebp
 00490EAD    mov         ebp,esp
 00490EAF    add         esp,0FFFFFFF4
 00490EB2    push        ebx
 00490EB3    push        esi
 00490EB4    xor         ecx,ecx
 00490EB6    mov         dword ptr [ebp-4],ecx
 00490EB9    mov         esi,edx
 00490EBB    mov         dword ptr [ebp-8],eax
 00490EBE    lea         ebx,[ebp-0C]
 00490EC1    xor         eax,eax
 00490EC3    push        ebp
 00490EC4    push        491057
 00490EC9    push        dword ptr fs:[eax]
 00490ECC    mov         dword ptr fs:[eax],esp
 00490ECF    mov         eax,dword ptr [ebp-8]
 00490ED2    call        TStrings.BeginUpdate
 00490ED7    xor         eax,eax
 00490ED9    push        ebp
 00490EDA    push        49103A
 00490EDF    push        dword ptr fs:[eax]
 00490EE2    mov         dword ptr fs:[eax],esp
 00490EE5    mov         eax,dword ptr [ebp-8]
 00490EE8    mov         edx,dword ptr [eax]
 00490EEA    call        dword ptr [edx+48]
 00490EED    mov         eax,esi
 00490EEF    call        @UStrToPWChar
 00490EF4    mov         dword ptr [ebx],eax
 00490EF6    mov         eax,dword ptr [ebp-8]
 00490EF9    call        TStrings.GetStrictDelimiter
 00490EFE    test        al,al
>00490F00    jne         00491018
>00490F06    jmp         00490F11
 00490F08    mov         eax,dword ptr [ebx]
 00490F0A    call        00483134
 00490F0F    mov         dword ptr [ebx],eax
 00490F11    mov         eax,dword ptr [ebx]
 00490F13    movzx       eax,word ptr [eax]
 00490F16    dec         eax
 00490F17    sub         ax,20
>00490F1B    jb          00490F08
>00490F1D    jmp         00491018
 00490F22    mov         eax,dword ptr [ebp-8]
 00490F25    call        TStrings.GetQuoteChar
 00490F2A    mov         edx,dword ptr [ebx]
 00490F2C    cmp         ax,word ptr [edx]
>00490F2F    jne         00490F54
 00490F31    mov         eax,dword ptr [ebp-8]
 00490F34    call        TStrings.GetQuoteChar
 00490F39    test        ax,ax
>00490F3C    je          00490F54
 00490F3E    mov         eax,dword ptr [ebp-8]
 00490F41    call        TStrings.GetQuoteChar
 00490F46    mov         edx,eax
 00490F48    lea         ecx,[ebp-4]
 00490F4B    mov         eax,ebx
 00490F4D    call        0041DB5C
>00490F52    jmp         00490FA7
 00490F54    mov         esi,dword ptr [ebx]
>00490F56    jmp         00490F61
 00490F58    mov         eax,dword ptr [ebx]
 00490F5A    call        00483134
 00490F5F    mov         dword ptr [ebx],eax
 00490F61    mov         eax,dword ptr [ebp-8]
 00490F64    cmp         byte ptr [eax+1C],0
>00490F68    jne         00490F72
 00490F6A    mov         eax,dword ptr [ebx]
 00490F6C    cmp         word ptr [eax],20
>00490F70    ja          00490F83
 00490F72    mov         eax,dword ptr [ebp-8]
 00490F75    cmp         byte ptr [eax+1C],0
>00490F79    je          00490F92
 00490F7B    mov         eax,dword ptr [ebx]
 00490F7D    cmp         word ptr [eax],0
>00490F81    je          00490F92
 00490F83    mov         eax,dword ptr [ebp-8]
 00490F86    call        TStrings.GetDelimiter
 00490F8B    mov         edx,dword ptr [ebx]
 00490F8D    cmp         ax,word ptr [edx]
>00490F90    jne         00490F58
 00490F92    mov         ecx,dword ptr [ebx]
 00490F94    sub         ecx,esi
 00490F96    sar         ecx,1
>00490F98    jns         00490F9D
 00490F9A    adc         ecx,0
 00490F9D    lea         eax,[ebp-4]
 00490FA0    mov         edx,esi
 00490FA2    call        @UStrFromPWCharLen
 00490FA7    mov         edx,dword ptr [ebp-4]
 00490FAA    mov         eax,dword ptr [ebp-8]
 00490FAD    mov         ecx,dword ptr [eax]
 00490FAF    call        dword ptr [ecx+3C]
 00490FB2    mov         eax,dword ptr [ebp-8]
 00490FB5    cmp         byte ptr [eax+1C],0
>00490FB9    jne         00490FD2
>00490FBB    jmp         00490FC6
 00490FBD    mov         eax,dword ptr [ebx]
 00490FBF    call        00483134
 00490FC4    mov         dword ptr [ebx],eax
 00490FC6    mov         eax,dword ptr [ebx]
 00490FC8    movzx       eax,word ptr [eax]
 00490FCB    dec         eax
 00490FCC    sub         ax,20
>00490FD0    jb          00490FBD
 00490FD2    mov         eax,dword ptr [ebp-8]
 00490FD5    call        TStrings.GetDelimiter
 00490FDA    mov         edx,dword ptr [ebx]
 00490FDC    cmp         ax,word ptr [edx]
>00490FDF    jne         00491018
 00490FE1    mov         esi,dword ptr [ebx]
 00490FE3    mov         eax,esi
 00490FE5    call        00483134
 00490FEA    cmp         word ptr [eax],0
>00490FEE    jne         00490FFA
 00490FF0    xor         edx,edx
 00490FF2    mov         eax,dword ptr [ebp-8]
 00490FF5    mov         ecx,dword ptr [eax]
 00490FF7    call        dword ptr [ecx+3C]
 00490FFA    mov         eax,dword ptr [ebx]
 00490FFC    call        00483134
 00491001    mov         dword ptr [ebx],eax
 00491003    mov         eax,dword ptr [ebp-8]
 00491006    cmp         byte ptr [eax+1C],0
>0049100A    jne         00491018
 0049100C    mov         eax,dword ptr [ebx]
 0049100E    movzx       eax,word ptr [eax]
 00491011    dec         eax
 00491012    sub         ax,20
>00491016    jb          00490FFA
 00491018    mov         eax,dword ptr [ebx]
 0049101A    cmp         word ptr [eax],0
>0049101E    jne         00490F22
 00491024    xor         eax,eax
 00491026    pop         edx
 00491027    pop         ecx
 00491028    pop         ecx
 00491029    mov         dword ptr fs:[eax],edx
 0049102C    push        491041
 00491031    mov         eax,dword ptr [ebp-8]
 00491034    call        TStrings.EndUpdate
 00491039    ret
>0049103A    jmp         @HandleFinally
>0049103F    jmp         00491031
 00491041    xor         eax,eax
 00491043    pop         edx
 00491044    pop         ecx
 00491045    pop         ecx
 00491046    mov         dword ptr fs:[eax],edx
 00491049    push        49105E
 0049104E    lea         eax,[ebp-4]
 00491051    call        @UStrClr
 00491056    ret
>00491057    jmp         @HandleFinally
>0049105C    jmp         0049104E
 0049105E    pop         esi
 0049105F    pop         ebx
 00491060    mov         esp,ebp
 00491062    pop         ebp
 00491063    ret
*}
end;

//00491064
function TStrings.GetDelimiter:Char;
begin
{*
 00491064    push        ebx
 00491065    mov         ebx,eax
 00491067    test        byte ptr [ebx+8],1
>0049106B    jne         00491078
 0049106D    mov         dx,2C
 00491071    mov         eax,ebx
 00491073    call        TStrings.SetDelimiter
 00491078    movzx       eax,word ptr [ebx+10]
 0049107C    pop         ebx
 0049107D    ret
*}
end;

//00491080
function TStrings.GetLineBreak:UnicodeString;
begin
{*
 00491080    push        ebx
 00491081    push        esi
 00491082    mov         esi,edx
 00491084    mov         ebx,eax
 00491086    test        byte ptr [ebx+8],8
>0049108A    jne         00491098
 0049108C    mov         edx,4910B4;'
'
 00491091    mov         eax,ebx
 00491093    call        TStrings.SetLineBreak
 00491098    mov         eax,esi
 0049109A    mov         edx,dword ptr [ebx+14]
 0049109D    call        @UStrAsg
 004910A2    pop         esi
 004910A3    pop         ebx
 004910A4    ret
*}
end;

//004910BC
function TStrings.GetQuoteChar:Char;
begin
{*
 004910BC    push        ebx
 004910BD    mov         ebx,eax
 004910BF    test        byte ptr [ebx+8],2
>004910C3    jne         004910D0
 004910C5    mov         dx,22
 004910C9    mov         eax,ebx
 004910CB    call        TStrings.SetQuoteChar
 004910D0    movzx       eax,word ptr [ebx+18]
 004910D4    pop         ebx
 004910D5    ret
*}
end;

//004910D8
function TStrings.GetStrictDelimiter:Boolean;
begin
{*
 004910D8    push        ebx
 004910D9    mov         ebx,eax
 004910DB    test        byte ptr [ebx+8],10
>004910DF    jne         004910EA
 004910E1    xor         edx,edx
 004910E3    mov         eax,ebx
 004910E5    call        TStrings.SetStrictDelimiter
 004910EA    movzx       eax,byte ptr [ebx+1C]
 004910EE    pop         ebx
 004910EF    ret
*}
end;

//004910F0
procedure TStrings.SetDefaultEncoding(const Value:SysUtils.TEncoding);
begin
{*
 004910F0    push        ebx
 004910F1    push        esi
 004910F2    mov         esi,edx
 004910F4    mov         ebx,eax
 004910F6    mov         eax,dword ptr [ebx+0C]
 004910F9    call        TEncoding.IsStandardEncoding
 004910FE    test        al,al
>00491100    jne         0049110A
 00491102    mov         eax,dword ptr [ebx+0C]
 00491105    call        TObject.Free
 0049110A    mov         eax,esi
 0049110C    call        TEncoding.IsStandardEncoding
 00491111    test        al,al
>00491113    je          0049111B
 00491115    mov         dword ptr [ebx+0C],esi
 00491118    pop         esi
 00491119    pop         ebx
 0049111A    ret
 0049111B    test        esi,esi
>0049111D    je          0049112B
 0049111F    mov         eax,esi
 00491121    mov         edx,dword ptr [eax]
 00491123    call        dword ptr [edx+18]
 00491126    mov         dword ptr [ebx+0C],eax
>00491129    jmp         00491133
 0049112B    call        TEncoding.GetANSI
 00491130    mov         dword ptr [ebx+0C],eax
 00491133    pop         esi
 00491134    pop         ebx
 00491135    ret
*}
end;

//00491138
procedure TStrings.SetDelimiter(const Value:Char);
begin
{*
 00491138    push        ebx
 00491139    push        esi
 0049113A    mov         esi,edx
 0049113C    mov         ebx,eax
 0049113E    cmp         si,word ptr [ebx+10]
>00491142    jne         0049114A
 00491144    test        byte ptr [ebx+8],1
>00491148    jne         00491152
 0049114A    or          byte ptr [ebx+8],1
 0049114E    mov         word ptr [ebx+10],si
 00491152    pop         esi
 00491153    pop         ebx
 00491154    ret
*}
end;

//00491158
procedure TStrings.SetEncoding(const Value:SysUtils.TEncoding);
begin
{*
 00491158    push        ebx
 00491159    push        esi
 0049115A    mov         esi,edx
 0049115C    mov         ebx,eax
 0049115E    mov         eax,dword ptr [ebx+4]
 00491161    call        TEncoding.IsStandardEncoding
 00491166    test        al,al
>00491168    jne         00491172
 0049116A    mov         eax,dword ptr [ebx+4]
 0049116D    call        TObject.Free
 00491172    mov         eax,esi
 00491174    call        TEncoding.IsStandardEncoding
 00491179    test        al,al
>0049117B    je          00491183
 0049117D    mov         dword ptr [ebx+4],esi
 00491180    pop         esi
 00491181    pop         ebx
 00491182    ret
 00491183    test        esi,esi
>00491185    je          00491193
 00491187    mov         eax,esi
 00491189    mov         edx,dword ptr [eax]
 0049118B    call        dword ptr [edx+18]
 0049118E    mov         dword ptr [ebx+4],eax
>00491191    jmp         0049119B
 00491193    call        TEncoding.GetANSI
 00491198    mov         dword ptr [ebx+4],eax
 0049119B    pop         esi
 0049119C    pop         ebx
 0049119D    ret
*}
end;

//004911A0
procedure TStrings.SetLineBreak(const Value:UnicodeString);
begin
{*
 004911A0    push        ebx
 004911A1    push        esi
 004911A2    mov         esi,edx
 004911A4    mov         ebx,eax
 004911A6    mov         eax,dword ptr [ebx+14]
 004911A9    mov         edx,esi
 004911AB    call        @UStrEqual
>004911B0    jne         004911B8
 004911B2    test        byte ptr [ebx+8],8
>004911B6    jne         004911C6
 004911B8    or          byte ptr [ebx+8],8
 004911BC    lea         eax,[ebx+14]
 004911BF    mov         edx,esi
 004911C1    call        @UStrAsg
 004911C6    pop         esi
 004911C7    pop         ebx
 004911C8    ret
*}
end;

//004911CC
procedure TStrings.SetQuoteChar(const Value:Char);
begin
{*
 004911CC    push        ebx
 004911CD    push        esi
 004911CE    mov         esi,edx
 004911D0    mov         ebx,eax
 004911D2    cmp         si,word ptr [ebx+18]
>004911D6    jne         004911DE
 004911D8    test        byte ptr [ebx+8],2
>004911DC    jne         004911E6
 004911DE    or          byte ptr [ebx+8],2
 004911E2    mov         word ptr [ebx+18],si
 004911E6    pop         esi
 004911E7    pop         ebx
 004911E8    ret
*}
end;

//004911EC
procedure TStrings.SetStrictDelimiter(const Value:Boolean);
begin
{*
 004911EC    push        ebx
 004911ED    push        esi
 004911EE    mov         ebx,edx
 004911F0    mov         esi,eax
 004911F2    cmp         bl,byte ptr [esi+1C]
>004911F5    jne         004911FD
 004911F7    test        byte ptr [esi+8],10
>004911FB    jne         00491204
 004911FD    or          byte ptr [esi+8],10
 00491201    mov         byte ptr [esi+1C],bl
 00491204    pop         esi
 00491205    pop         ebx
 00491206    ret
*}
end;

//00491208
function TStrings.CompareStrings(const S1:UnicodeString; const S2:UnicodeString):Integer;
begin
{*
 00491208    mov         eax,edx
 0049120A    mov         edx,ecx
 0049120C    call        AnsiCompareText
 00491211    ret
*}
end;

//00491214
function TStrings.GetNameValueSeparator:Char;
begin
{*
 00491214    push        ebx
 00491215    mov         ebx,eax
 00491217    test        byte ptr [ebx+8],4
>0049121B    jne         00491228
 0049121D    mov         dx,3D
 00491221    mov         eax,ebx
 00491223    call        TStrings.SetNameValueSeparator
 00491228    movzx       eax,word ptr [ebx+1A]
 0049122C    pop         ebx
 0049122D    ret
*}
end;

//00491230
procedure TStrings.SetNameValueSeparator(const Value:Char);
begin
{*
 00491230    push        ebx
 00491231    push        esi
 00491232    mov         esi,edx
 00491234    mov         ebx,eax
 00491236    cmp         si,word ptr [ebx+1A]
>0049123A    jne         00491242
 0049123C    test        byte ptr [ebx+8],4
>00491240    jne         0049124A
 00491242    or          byte ptr [ebx+8],4
 00491246    mov         word ptr [ebx+1A],si
 0049124A    pop         esi
 0049124B    pop         ebx
 0049124C    ret
*}
end;

//00491250
destructor TStringList.Destroy();
begin
{*
 00491250    push        ebp
 00491251    mov         ebp,esp
 00491253    add         esp,0FFFFFFF8
 00491256    push        ebx
 00491257    push        esi
 00491258    push        edi
 00491259    xor         ecx,ecx
 0049125B    mov         dword ptr [ebp-4],ecx
 0049125E    call        @BeforeDestruction
 00491263    mov         byte ptr [ebp-5],dl
 00491266    mov         edi,eax
 00491268    xor         eax,eax
 0049126A    push        ebp
 0049126B    push        491330
 00491270    push        dword ptr fs:[eax]
 00491273    mov         dword ptr fs:[eax],esp
 00491276    xor         eax,eax
 00491278    mov         dword ptr [edi+40],eax
 0049127B    mov         dword ptr [edi+44],eax
 0049127E    xor         eax,eax
 00491280    mov         dword ptr [edi+48],eax
 00491283    mov         dword ptr [edi+4C],eax
 00491286    cmp         byte ptr [edi+50],0
>0049128A    je          004912C2
 0049128C    mov         eax,dword ptr [edi+30]
 0049128F    push        eax
 00491290    lea         eax,[ebp-4]
 00491293    mov         ecx,1
 00491298    mov         edx,dword ptr ds:[47CEFC];TArray<System.TObject>
 0049129E    call        @DynArraySetLength
 004912A3    add         esp,4
 004912A6    mov         esi,dword ptr [edi+30]
 004912A9    dec         esi
 004912AA    test        esi,esi
>004912AC    jl          004912C2
 004912AE    inc         esi
 004912AF    xor         ebx,ebx
 004912B1    mov         eax,dword ptr [edi+2C]
 004912B4    mov         eax,dword ptr [eax+ebx*8+4]
 004912B8    mov         edx,dword ptr [ebp-4]
 004912BB    mov         dword ptr [edx+ebx*4],eax
 004912BE    inc         ebx
 004912BF    dec         esi
>004912C0    jne         004912B1
 004912C2    movzx       edx,byte ptr [ebp-5]
 004912C6    and         dl,0FC
 004912C9    mov         eax,edi
 004912CB    call        TStrings.Destroy
 004912D0    xor         eax,eax
 004912D2    mov         dword ptr [edi+30],eax
 004912D5    xor         edx,edx
 004912D7    mov         eax,edi
 004912D9    mov         ecx,dword ptr [eax]
 004912DB    call        dword ptr [ecx+28]
 004912DE    mov         edx,dword ptr [ebp-4]
 004912E1    mov         eax,edx
 004912E3    test        eax,eax
>004912E5    je          004912EC
 004912E7    sub         eax,4
 004912EA    mov         eax,dword ptr [eax]
 004912EC    test        eax,eax
>004912EE    jle         00491314
 004912F0    mov         eax,edx
 004912F2    test        eax,eax
>004912F4    je          004912FB
 004912F6    sub         eax,4
 004912F9    mov         eax,dword ptr [eax]
 004912FB    mov         esi,eax
 004912FD    dec         esi
 004912FE    test        esi,esi
>00491300    jl          00491314
 00491302    inc         esi
 00491303    xor         ebx,ebx
 00491305    mov         eax,dword ptr [ebp-4]
 00491308    mov         eax,dword ptr [eax+ebx*4]
 0049130B    call        TObject.Free
 00491310    inc         ebx
 00491311    dec         esi
>00491312    jne         00491305
 00491314    xor         eax,eax
 00491316    pop         edx
 00491317    pop         ecx
 00491318    pop         ecx
 00491319    mov         dword ptr fs:[eax],edx
 0049131C    push        491337
 00491321    lea         eax,[ebp-4]
 00491324    mov         edx,dword ptr ds:[47CEFC];TArray<System.TObject>
 0049132A    call        @DynArrayClear
 0049132F    ret
>00491330    jmp         @HandleFinally
>00491335    jmp         00491321
 00491337    cmp         byte ptr [ebp-5],0
>0049133B    jle         00491344
 0049133D    mov         eax,edi
 0049133F    call        @ClassDestroy
 00491344    pop         edi
 00491345    pop         esi
 00491346    pop         ebx
 00491347    pop         ecx
 00491348    pop         ecx
 00491349    pop         ebp
 0049134A    ret
*}
end;

//0049134C
function TStringList.Add(S:string):Integer;
begin
{*
 0049134C    push        ebx
 0049134D    xor         ecx,ecx
 0049134F    mov         ebx,dword ptr [eax]
 00491351    call        dword ptr [ebx+40]
 00491354    pop         ebx
 00491355    ret
*}
end;

//00491358
function TStringList.AddObject(S:string; AObject:TObject):Integer;
begin
{*
 00491358    push        ebx
 00491359    push        esi
 0049135A    push        edi
 0049135B    push        ebp
 0049135C    push        ecx
 0049135D    mov         edi,ecx
 0049135F    mov         esi,edx
 00491361    mov         ebx,eax
 00491363    cmp         byte ptr [ebx+38],0
>00491367    jne         00491371
 00491369    mov         eax,dword ptr [ebx+30]
 0049136C    mov         dword ptr [esp],eax
>0049136F    jmp         004913A0
 00491371    mov         ecx,esp
 00491373    mov         edx,esi
 00491375    mov         eax,ebx
 00491377    mov         ebp,dword ptr [eax]
 00491379    call        dword ptr [ebp+0A0]
 0049137F    test        al,al
>00491381    je          004913A0
 00491383    movzx       eax,byte ptr [ebx+39]
 00491387    sub         al,1
>00491389    jb          004913B1
 0049138B    dec         al
>0049138D    je          00491391
>0049138F    jmp         004913A0
 00491391    mov         edx,dword ptr ds:[7C44E0];^SResString122:TResStringRec
 00491397    xor         ecx,ecx
 00491399    mov         eax,ebx
 0049139B    call        TStrings.Error
 004913A0    push        edi
 004913A1    mov         ecx,esi
 004913A3    mov         edx,dword ptr [esp+4]
 004913A7    mov         eax,ebx
 004913A9    mov         ebx,dword ptr [eax]
 004913AB    call        dword ptr [ebx+9C]
 004913B1    mov         eax,dword ptr [esp]
 004913B4    pop         edx
 004913B5    pop         ebp
 004913B6    pop         edi
 004913B7    pop         esi
 004913B8    pop         ebx
 004913B9    ret
*}
end;

//004913BC
procedure TStringList.Assign(Source:TPersistent);
begin
{*
 004913BC    push        ebx
 004913BD    push        esi
 004913BE    mov         esi,edx
 004913C0    mov         ebx,eax
 004913C2    mov         eax,esi
 004913C4    mov         edx,dword ptr ds:[46F9A0];TStringList
 004913CA    call        @IsClass
 004913CF    test        al,al
>004913D1    je          004913EA
 004913D3    mov         eax,esi
 004913D5    movzx       edx,byte ptr [eax+3A]
 004913D9    mov         byte ptr [ebx+3A],dl;TStringList.FCaseSensitive:Boolean
 004913DC    movzx       edx,byte ptr [eax+39]
 004913E0    mov         byte ptr [ebx+39],dl;TStringList.FDuplicates:TDuplicates
 004913E3    movzx       eax,byte ptr [eax+38]
 004913E7    mov         byte ptr [ebx+38],al;TStringList.FSorted:Boolean
 004913EA    mov         edx,esi
 004913EC    mov         eax,ebx
 004913EE    call        TStrings.Assign
 004913F3    pop         esi
 004913F4    pop         ebx
 004913F5    ret
*}
end;

//004913F8
procedure TStringList.Changed;
begin
{*
 004913F8    push        ebx
 004913F9    cmp         dword ptr [eax+20],0
>004913FD    jne         00491410
 004913FF    cmp         word ptr [eax+42],0
>00491404    je          00491410
 00491406    mov         ebx,eax
 00491408    mov         edx,eax
 0049140A    mov         eax,dword ptr [ebx+44]
 0049140D    call        dword ptr [ebx+40]
 00491410    pop         ebx
 00491411    ret
*}
end;

//00491414
procedure TStringList.Changing;
begin
{*
 00491414    push        ebx
 00491415    cmp         dword ptr [eax+20],0
>00491419    jne         0049142C
 0049141B    cmp         word ptr [eax+4A],0
>00491420    je          0049142C
 00491422    mov         ebx,eax
 00491424    mov         edx,eax
 00491426    mov         eax,dword ptr [ebx+4C]
 00491429    call        dword ptr [ebx+48]
 0049142C    pop         ebx
 0049142D    ret
*}
end;

//00491430
procedure TStringList.Clear;
begin
{*
 00491430    push        ebp
 00491431    mov         ebp,esp
 00491433    push        0
 00491435    push        ebx
 00491436    push        esi
 00491437    push        edi
 00491438    mov         ebx,eax
 0049143A    xor         eax,eax
 0049143C    push        ebp
 0049143D    push        491502
 00491442    push        dword ptr fs:[eax]
 00491445    mov         dword ptr fs:[eax],esp
 00491448    cmp         dword ptr [ebx+30],0
>0049144C    je          004914E6
 00491452    mov         eax,ebx
 00491454    mov         edx,dword ptr [eax]
 00491456    call        dword ptr [edx+98]
 0049145C    cmp         byte ptr [ebx+50],0
>00491460    je          00491498
 00491462    mov         eax,dword ptr [ebx+30]
 00491465    push        eax
 00491466    lea         eax,[ebp-4]
 00491469    mov         ecx,1
 0049146E    mov         edx,dword ptr ds:[47CEFC];TArray<System.TObject>
 00491474    call        @DynArraySetLength
 00491479    add         esp,4
 0049147C    mov         edi,dword ptr [ebx+30]
 0049147F    dec         edi
 00491480    test        edi,edi
>00491482    jl          00491498
 00491484    inc         edi
 00491485    xor         esi,esi
 00491487    mov         eax,dword ptr [ebx+2C]
 0049148A    mov         eax,dword ptr [eax+esi*8+4]
 0049148E    mov         edx,dword ptr [ebp-4]
 00491491    mov         dword ptr [edx+esi*4],eax
 00491494    inc         esi
 00491495    dec         edi
>00491496    jne         00491487
 00491498    xor         eax,eax
 0049149A    mov         dword ptr [ebx+30],eax
 0049149D    xor         edx,edx
 0049149F    mov         eax,ebx
 004914A1    mov         ecx,dword ptr [eax]
 004914A3    call        dword ptr [ecx+28]
 004914A6    mov         edx,dword ptr [ebp-4]
 004914A9    mov         eax,edx
 004914AB    test        eax,eax
>004914AD    je          004914B4
 004914AF    sub         eax,4
 004914B2    mov         eax,dword ptr [eax]
 004914B4    test        eax,eax
>004914B6    jle         004914DC
 004914B8    mov         eax,edx
 004914BA    test        eax,eax
>004914BC    je          004914C3
 004914BE    sub         eax,4
 004914C1    mov         eax,dword ptr [eax]
 004914C3    mov         edi,eax
 004914C5    dec         edi
 004914C6    test        edi,edi
>004914C8    jl          004914DC
 004914CA    inc         edi
 004914CB    xor         esi,esi
 004914CD    mov         eax,dword ptr [ebp-4]
 004914D0    mov         eax,dword ptr [eax+esi*4]
 004914D3    call        TObject.Free
 004914D8    inc         esi
 004914D9    dec         edi
>004914DA    jne         004914CD
 004914DC    mov         eax,ebx
 004914DE    mov         edx,dword ptr [eax]
 004914E0    call        dword ptr [edx+94]
 004914E6    xor         eax,eax
 004914E8    pop         edx
 004914E9    pop         ecx
 004914EA    pop         ecx
 004914EB    mov         dword ptr fs:[eax],edx
 004914EE    push        491509
 004914F3    lea         eax,[ebp-4]
 004914F6    mov         edx,dword ptr ds:[47CEFC];TArray<System.TObject>
 004914FC    call        @DynArrayClear
 00491501    ret
>00491502    jmp         @HandleFinally
>00491507    jmp         004914F3
 00491509    pop         edi
 0049150A    pop         esi
 0049150B    pop         ebx
 0049150C    pop         ecx
 0049150D    pop         ebp
 0049150E    ret
*}
end;

//00491510
procedure TStringList.Delete(Index:Integer);
begin
{*
 00491510    push        ebx
 00491511    push        esi
 00491512    push        edi
 00491513    mov         esi,edx
 00491515    mov         ebx,eax
 00491517    test        esi,esi
>00491519    jl          00491520
 0049151B    cmp         esi,dword ptr [ebx+30]
>0049151E    jl          0049152F
 00491520    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 00491526    mov         ecx,esi
 00491528    mov         eax,ebx
 0049152A    call        TStrings.Error
 0049152F    mov         eax,ebx
 00491531    mov         edx,dword ptr [eax]
 00491533    call        dword ptr [edx+98]
 00491539    cmp         byte ptr [ebx+50],0
>0049153D    je          00491548
 0049153F    mov         eax,dword ptr [ebx+2C]
 00491542    mov         edi,dword ptr [eax+esi*8+4]
>00491546    jmp         0049154A
 00491548    xor         edi,edi
 0049154A    mov         eax,dword ptr [ebx+2C]
 0049154D    lea         eax,[eax+esi*8]
 00491550    mov         edx,dword ptr ds:[46F8C0];TStringItem
 00491556    call        @FinalizeRecord
 0049155B    dec         dword ptr [ebx+30]
 0049155E    mov         eax,dword ptr [ebx+30]
 00491561    cmp         esi,eax
>00491563    jge         0049159C
 00491565    sub         eax,esi
 00491567    mov         ecx,eax
 00491569    add         ecx,ecx
 0049156B    add         ecx,ecx
 0049156D    add         ecx,ecx
 0049156F    mov         eax,dword ptr [ebx+2C]
 00491572    lea         edx,[eax+esi*8]
 00491575    mov         eax,dword ptr [ebx+2C]
 00491578    lea         eax,[eax+esi*8+8]
 0049157C    call        Move
 00491581    mov         eax,dword ptr [ebx+2C]
 00491584    mov         edx,dword ptr [ebx+30]
 00491587    lea         eax,[eax+edx*8]
 0049158A    xor         edx,edx
 0049158C    mov         dword ptr [eax],edx
 0049158E    mov         eax,dword ptr [ebx+2C]
 00491591    mov         edx,dword ptr [ebx+30]
 00491594    lea         eax,[eax+edx*8+4]
 00491598    xor         edx,edx
 0049159A    mov         dword ptr [eax],edx
 0049159C    test        edi,edi
>0049159E    je          004915A7
 004915A0    mov         eax,edi
 004915A2    call        TObject.Free
 004915A7    mov         eax,ebx
 004915A9    mov         edx,dword ptr [eax]
 004915AB    call        dword ptr [edx+94]
 004915B1    pop         edi
 004915B2    pop         esi
 004915B3    pop         ebx
 004915B4    ret
*}
end;

//004915B8
procedure TStringList.Exchange(Index1:Integer; Index2:Integer);
begin
{*
 004915B8    push        ebx
 004915B9    push        esi
 004915BA    push        edi
 004915BB    mov         edi,ecx
 004915BD    mov         esi,edx
 004915BF    mov         ebx,eax
 004915C1    test        esi,esi
>004915C3    jl          004915CA
 004915C5    cmp         esi,dword ptr [ebx+30]
>004915C8    jl          004915D9
 004915CA    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 004915D0    mov         ecx,esi
 004915D2    mov         eax,ebx
 004915D4    call        TStrings.Error
 004915D9    test        edi,edi
>004915DB    jl          004915E2
 004915DD    cmp         edi,dword ptr [ebx+30]
>004915E0    jl          004915F1
 004915E2    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 004915E8    mov         ecx,edi
 004915EA    mov         eax,ebx
 004915EC    call        TStrings.Error
 004915F1    mov         eax,ebx
 004915F3    mov         edx,dword ptr [eax]
 004915F5    call        dword ptr [edx+98]
 004915FB    mov         ecx,edi
 004915FD    mov         edx,esi
 004915FF    mov         eax,ebx
 00491601    call        TStringList.ExchangeItems
 00491606    mov         eax,ebx
 00491608    mov         edx,dword ptr [eax]
 0049160A    call        dword ptr [edx+94]
 00491610    pop         edi
 00491611    pop         esi
 00491612    pop         ebx
 00491613    ret
*}
end;

//00491614
procedure TStringList.ExchangeItems(Index1:Integer; Index2:Integer);
begin
{*
 00491614    push        ebx
 00491615    mov         ebx,dword ptr [eax+2C]
 00491618    lea         edx,[ebx+edx*8]
 0049161B    mov         eax,dword ptr [eax+2C]
 0049161E    lea         eax,[eax+ecx*8]
 00491621    mov         ecx,dword ptr [edx]
 00491623    mov         ebx,dword ptr [eax]
 00491625    mov         dword ptr [edx],ebx
 00491627    mov         dword ptr [eax],ecx
 00491629    mov         ecx,dword ptr [edx+4]
 0049162C    mov         ebx,dword ptr [eax+4]
 0049162F    mov         dword ptr [edx+4],ebx
 00491632    mov         dword ptr [eax+4],ecx
 00491635    pop         ebx
 00491636    ret
*}
end;

//00491638
function TStringList.Find(S:string; var Index:Integer):Boolean;
begin
{*
 00491638    push        ebx
 00491639    push        esi
 0049163A    push        edi
 0049163B    push        ebp
 0049163C    add         esp,0FFFFFFEC
 0049163F    mov         dword ptr [esp+4],ecx
 00491643    mov         dword ptr [esp],edx
 00491646    mov         edi,eax
 00491648    mov         byte ptr [esp+8],0
 0049164D    xor         esi,esi
 0049164F    mov         eax,dword ptr [edi+30]
 00491652    dec         eax
 00491653    mov         dword ptr [esp+0C],eax
 00491657    cmp         esi,dword ptr [esp+0C]
>0049165B    jg          004916A6
 0049165D    mov         ebx,esi
 0049165F    add         ebx,dword ptr [esp+0C]
 00491663    shr         ebx,1
 00491665    mov         eax,dword ptr [edi+2C]
 00491668    mov         edx,dword ptr [eax+ebx*8]
 0049166B    mov         ecx,dword ptr [esp]
 0049166E    mov         eax,edi
 00491670    mov         ebp,dword ptr [eax]
 00491672    call        dword ptr [ebp+38]
 00491675    mov         dword ptr [esp+10],eax
 00491679    cmp         dword ptr [esp+10],0
>0049167E    jge         00491685
 00491680    lea         esi,[ebx+1]
>00491683    jmp         004916A0
 00491685    mov         eax,ebx
 00491687    dec         eax
 00491688    mov         dword ptr [esp+0C],eax
 0049168C    cmp         dword ptr [esp+10],0
>00491691    jne         004916A0
 00491693    mov         byte ptr [esp+8],1
 00491698    cmp         byte ptr [edi+39],1
>0049169C    je          004916A0
 0049169E    mov         esi,ebx
 004916A0    cmp         esi,dword ptr [esp+0C]
>004916A4    jle         0049165D
 004916A6    mov         eax,dword ptr [esp+4]
 004916AA    mov         dword ptr [eax],esi
 004916AC    movzx       eax,byte ptr [esp+8]
 004916B1    add         esp,14
 004916B4    pop         ebp
 004916B5    pop         edi
 004916B6    pop         esi
 004916B7    pop         ebx
 004916B8    ret
*}
end;

//004916BC
function TStringList.Get(Index:Integer):UnicodeString;
begin
{*
 004916BC    push        ebx
 004916BD    push        esi
 004916BE    push        edi
 004916BF    mov         edi,ecx
 004916C1    mov         esi,edx
 004916C3    mov         ebx,eax
 004916C5    cmp         esi,dword ptr [ebx+30]
>004916C8    jb          004916D9
 004916CA    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 004916D0    mov         ecx,esi
 004916D2    mov         eax,ebx
 004916D4    call        TStrings.Error
 004916D9    mov         eax,edi
 004916DB    mov         edx,dword ptr [ebx+2C]
 004916DE    mov         edx,dword ptr [edx+esi*8]
 004916E1    call        @UStrAsg
 004916E6    pop         edi
 004916E7    pop         esi
 004916E8    pop         ebx
 004916E9    ret
*}
end;

//004916EC
{*function sub_004916EC:?;
begin
 004916EC    mov         eax,dword ptr [eax+34];TStringList.FCapacity:Integer
 004916EF    ret
end;*}

//004916F0
{*function TStringList.GetCount:?;
begin
 004916F0    mov         eax,dword ptr [eax+30];TStringList.FCount:Integer
 004916F3    ret
end;*}

//004916F4
function TStringList.GetObject(Index:Integer):TObject;
begin
{*
 004916F4    push        ebx
 004916F5    push        esi
 004916F6    mov         esi,edx
 004916F8    mov         ebx,eax
 004916FA    cmp         esi,dword ptr [ebx+30]
>004916FD    jb          0049170E
 004916FF    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 00491705    mov         ecx,esi
 00491707    mov         eax,ebx
 00491709    call        TStrings.Error
 0049170E    mov         eax,dword ptr [ebx+2C]
 00491711    mov         eax,dword ptr [eax+esi*8+4]
 00491715    pop         esi
 00491716    pop         ebx
 00491717    ret
*}
end;

//00491718
procedure TStringList.Grow;
begin
{*
 00491718    mov         edx,dword ptr [eax+34]
 0049171B    cmp         edx,40
>0049171E    jle         0049172E
 00491720    mov         ecx,edx
 00491722    test        ecx,ecx
>00491724    jns         00491729
 00491726    add         ecx,3
 00491729    sar         ecx,2
>0049172C    jmp         0049173F
 0049172E    cmp         edx,8
>00491731    jle         0049173A
 00491733    mov         ecx,10
>00491738    jmp         0049173F
 0049173A    mov         ecx,4
 0049173F    add         ecx,edx
 00491741    mov         edx,ecx
 00491743    mov         ecx,dword ptr [eax]
 00491745    call        dword ptr [ecx+28]
 00491748    ret
*}
end;

//0049174C
function TStringList.IndexOf(S:string):Integer;
begin
{*
 0049174C    push        ebx
 0049174D    push        esi
 0049174E    push        ecx
 0049174F    mov         esi,edx
 00491751    mov         ebx,eax
 00491753    cmp         byte ptr [ebx+38],0
>00491757    jne         00491767
 00491759    mov         edx,esi
 0049175B    mov         eax,ebx
 0049175D    call        TStrings.IndexOf
 00491762    mov         dword ptr [esp],eax
>00491765    jmp         00491780
 00491767    mov         ecx,esp
 00491769    mov         edx,esi
 0049176B    mov         eax,ebx
 0049176D    mov         ebx,dword ptr [eax]
 0049176F    call        dword ptr [ebx+0A0]
 00491775    test        al,al
>00491777    jne         00491780
 00491779    mov         dword ptr [esp],0FFFFFFFF
 00491780    mov         eax,dword ptr [esp]
 00491783    pop         edx
 00491784    pop         esi
 00491785    pop         ebx
 00491786    ret
*}
end;

//00491788
procedure TStringList.Insert(Index:Integer; S:string);
begin
{*
 00491788    push        ebx
 00491789    push        esi
 0049178A    mov         esi,eax
 0049178C    push        0
 0049178E    mov         eax,esi
 00491790    mov         ebx,dword ptr [eax]
 00491792    call        dword ptr [ebx+68]
 00491795    pop         esi
 00491796    pop         ebx
 00491797    ret
*}
end;

//00491798
procedure TStringList.InsertObject(Index:Integer; S:string; AObject:TObject);
begin
{*
 00491798    push        ebp
 00491799    mov         ebp,esp
 0049179B    push        ebx
 0049179C    push        esi
 0049179D    push        edi
 0049179E    mov         edi,ecx
 004917A0    mov         esi,edx
 004917A2    mov         ebx,eax
 004917A4    cmp         byte ptr [ebx+38],0
>004917A8    je          004917B9
 004917AA    mov         edx,dword ptr ds:[7C46F0];^SResString146:TResStringRec
 004917B0    xor         ecx,ecx
 004917B2    mov         eax,ebx
 004917B4    call        TStrings.Error
 004917B9    test        esi,esi
>004917BB    jl          004917C2
 004917BD    cmp         esi,dword ptr [ebx+30]
>004917C0    jle         004917D1
 004917C2    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 004917C8    mov         ecx,esi
 004917CA    mov         eax,ebx
 004917CC    call        TStrings.Error
 004917D1    mov         eax,dword ptr [ebp+8]
 004917D4    push        eax
 004917D5    mov         ecx,edi
 004917D7    mov         edx,esi
 004917D9    mov         eax,ebx
 004917DB    mov         ebx,dword ptr [eax]
 004917DD    call        dword ptr [ebx+9C]
 004917E3    pop         edi
 004917E4    pop         esi
 004917E5    pop         ebx
 004917E6    pop         ebp
 004917E7    ret         4
*}
end;

//004917EC
procedure TStringList.InsertItem(Index:Integer; const S:UnicodeString; AObject:TObject);
begin
{*
 004917EC    push        ebp
 004917ED    mov         ebp,esp
 004917EF    push        ecx
 004917F0    push        ebx
 004917F1    push        esi
 004917F2    mov         dword ptr [ebp-4],ecx
 004917F5    mov         esi,edx
 004917F7    mov         ebx,eax
 004917F9    mov         eax,ebx
 004917FB    mov         edx,dword ptr [eax]
 004917FD    call        dword ptr [edx+98]
 00491803    mov         eax,dword ptr [ebx+30]
 00491806    cmp         eax,dword ptr [ebx+34]
>00491809    jne         00491812
 0049180B    mov         eax,ebx
 0049180D    call        TStringList.Grow
 00491812    mov         eax,dword ptr [ebx+30]
 00491815    cmp         esi,eax
>00491817    jge         00491835
 00491819    sub         eax,esi
 0049181B    mov         ecx,eax
 0049181D    add         ecx,ecx
 0049181F    add         ecx,ecx
 00491821    add         ecx,ecx
 00491823    mov         eax,dword ptr [ebx+2C]
 00491826    lea         edx,[eax+esi*8+8]
 0049182A    mov         eax,dword ptr [ebx+2C]
 0049182D    lea         eax,[eax+esi*8]
 00491830    call        Move
 00491835    mov         eax,dword ptr [ebx+2C]
 00491838    xor         edx,edx
 0049183A    mov         dword ptr [eax+esi*8],edx
 0049183D    mov         eax,dword ptr [ebx+2C]
 00491840    xor         edx,edx
 00491842    mov         dword ptr [eax+esi*8+4],edx
 00491846    mov         eax,dword ptr [ebx+2C]
 00491849    mov         edx,dword ptr [ebp+8]
 0049184C    mov         dword ptr [eax+esi*8+4],edx
 00491850    mov         eax,dword ptr [ebx+2C]
 00491853    lea         eax,[eax+esi*8]
 00491856    mov         edx,dword ptr [ebp-4]
 00491859    call        @UStrAsg
 0049185E    inc         dword ptr [ebx+30]
 00491861    mov         eax,ebx
 00491863    mov         edx,dword ptr [eax]
 00491865    call        dword ptr [edx+94]
 0049186B    pop         esi
 0049186C    pop         ebx
 0049186D    pop         ecx
 0049186E    pop         ebp
 0049186F    ret         4
*}
end;

//00491874
procedure TStringList.Put(Index:Integer; const S:UnicodeString);
begin
{*
 00491874    push        ebx
 00491875    push        esi
 00491876    push        edi
 00491877    mov         edi,ecx
 00491879    mov         esi,edx
 0049187B    mov         ebx,eax
 0049187D    cmp         byte ptr [ebx+38],0
>00491881    je          00491892
 00491883    mov         edx,dword ptr ds:[7C46F0];^SResString146:TResStringRec
 00491889    xor         ecx,ecx
 0049188B    mov         eax,ebx
 0049188D    call        TStrings.Error
 00491892    cmp         esi,dword ptr [ebx+30]
>00491895    jb          004918A6
 00491897    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0049189D    mov         ecx,esi
 0049189F    mov         eax,ebx
 004918A1    call        TStrings.Error
 004918A6    mov         eax,ebx
 004918A8    mov         edx,dword ptr [eax]
 004918AA    call        dword ptr [edx+98]
 004918B0    mov         eax,dword ptr [ebx+2C]
 004918B3    lea         eax,[eax+esi*8]
 004918B6    mov         edx,edi
 004918B8    call        @UStrAsg
 004918BD    mov         eax,ebx
 004918BF    mov         edx,dword ptr [eax]
 004918C1    call        dword ptr [edx+94]
 004918C7    pop         edi
 004918C8    pop         esi
 004918C9    pop         ebx
 004918CA    ret
*}
end;

//004918CC
procedure TStringList.PutObject(Index:Integer; AObject:TObject);
begin
{*
 004918CC    push        ebx
 004918CD    push        esi
 004918CE    push        edi
 004918CF    mov         edi,ecx
 004918D1    mov         esi,edx
 004918D3    mov         ebx,eax
 004918D5    cmp         esi,dword ptr [ebx+30]
>004918D8    jb          004918E9
 004918DA    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 004918E0    mov         ecx,esi
 004918E2    mov         eax,ebx
 004918E4    call        TStrings.Error
 004918E9    mov         eax,ebx
 004918EB    mov         edx,dword ptr [eax]
 004918ED    call        dword ptr [edx+98]
 004918F3    mov         eax,dword ptr [ebx+2C]
 004918F6    mov         dword ptr [eax+esi*8+4],edi
 004918FA    mov         eax,ebx
 004918FC    mov         edx,dword ptr [eax]
 004918FE    call        dword ptr [edx+94]
 00491904    pop         edi
 00491905    pop         esi
 00491906    pop         ebx
 00491907    ret
*}
end;

//00491908
procedure TStringList.QuickSort(L:Integer; R:Integer; SCompare:TStringListSortCompare);
begin
{*
 00491908    push        ebp
 00491909    mov         ebp,esp
 0049190B    add         esp,0FFFFFFF0
 0049190E    push        ebx
 0049190F    push        esi
 00491910    mov         dword ptr [ebp-0C],ecx
 00491913    mov         dword ptr [ebp-8],edx
 00491916    mov         dword ptr [ebp-4],eax
 00491919    mov         ebx,dword ptr [ebp-8]
 0049191C    mov         esi,dword ptr [ebp-0C]
 0049191F    mov         eax,dword ptr [ebp-8]
 00491922    add         eax,dword ptr [ebp-0C]
 00491925    shr         eax,1
 00491927    mov         dword ptr [ebp-10],eax
>0049192A    jmp         0049192D
 0049192C    inc         ebx
 0049192D    mov         ecx,dword ptr [ebp-10]
 00491930    mov         edx,ebx
 00491932    mov         eax,dword ptr [ebp-4]
 00491935    call        dword ptr [ebp+8]
 00491938    test        eax,eax
>0049193A    jl          0049192C
>0049193C    jmp         0049193F
 0049193E    dec         esi
 0049193F    mov         ecx,dword ptr [ebp-10]
 00491942    mov         edx,esi
 00491944    mov         eax,dword ptr [ebp-4]
 00491947    call        dword ptr [ebp+8]
 0049194A    test        eax,eax
>0049194C    jg          0049193E
 0049194E    cmp         esi,ebx
>00491950    jl          00491976
 00491952    cmp         esi,ebx
>00491954    je          00491962
 00491956    mov         ecx,esi
 00491958    mov         edx,ebx
 0049195A    mov         eax,dword ptr [ebp-4]
 0049195D    call        TStringList.ExchangeItems
 00491962    cmp         ebx,dword ptr [ebp-10]
>00491965    jne         0049196C
 00491967    mov         dword ptr [ebp-10],esi
>0049196A    jmp         00491974
 0049196C    cmp         esi,dword ptr [ebp-10]
>0049196F    jne         00491974
 00491971    mov         dword ptr [ebp-10],ebx
 00491974    inc         ebx
 00491975    dec         esi
 00491976    cmp         esi,ebx
>00491978    jge         0049192D
 0049197A    cmp         esi,dword ptr [ebp-8]
>0049197D    jle         00491990
 0049197F    mov         eax,dword ptr [ebp+8]
 00491982    push        eax
 00491983    mov         ecx,esi
 00491985    mov         edx,dword ptr [ebp-8]
 00491988    mov         eax,dword ptr [ebp-4]
 0049198B    call        TStringList.QuickSort
 00491990    mov         dword ptr [ebp-8],ebx
 00491993    cmp         ebx,dword ptr [ebp-0C]
>00491996    jl          00491919
 00491998    pop         esi
 00491999    pop         ebx
 0049199A    mov         esp,ebp
 0049199C    pop         ebp
 0049199D    ret         4
*}
end;

//004919A0
procedure TStringList.SetCapacity(NewCapacity:Integer);
begin
{*
 004919A0    push        ebx
 004919A1    push        esi
 004919A2    mov         esi,edx
 004919A4    mov         ebx,eax
 004919A6    cmp         esi,dword ptr [ebx+30]
>004919A9    jge         004919BA
 004919AB    mov         edx,dword ptr ds:[7C4908];^SResString133:TResStringRec
 004919B1    mov         ecx,esi
 004919B3    mov         eax,ebx
 004919B5    call        TStrings.Error
 004919BA    cmp         esi,dword ptr [ebx+34]
>004919BD    je          004919D9
 004919BF    push        esi
 004919C0    lea         eax,[ebx+2C]
 004919C3    mov         ecx,1
 004919C8    mov         edx,dword ptr ds:[46F910];TStringItemList
 004919CE    call        @DynArraySetLength
 004919D3    add         esp,4
 004919D6    mov         dword ptr [ebx+34],esi
 004919D9    pop         esi
 004919DA    pop         ebx
 004919DB    ret
*}
end;

//004919DC
procedure TStringList.SetSorted(Value:Boolean);
begin
{*
 004919DC    push        ebx
 004919DD    push        esi
 004919DE    mov         ebx,edx
 004919E0    mov         esi,eax
 004919E2    cmp         bl,byte ptr [esi+38]
>004919E5    je          004919F8
 004919E7    test        bl,bl
>004919E9    je          004919F5
 004919EB    mov         eax,esi
 004919ED    mov         edx,dword ptr [eax]
 004919EF    call        dword ptr [edx+0A4]
 004919F5    mov         byte ptr [esi+38],bl
 004919F8    pop         esi
 004919F9    pop         ebx
 004919FA    ret
*}
end;

//004919FC
{*procedure sub_004919FC(?:?);
begin
 004919FC    test        dl,dl
>004919FE    je          00491A09
 00491A00    mov         edx,dword ptr [eax]
 00491A02    call        dword ptr [edx+98];TStringList.Changing
 00491A08    ret
 00491A09    mov         edx,dword ptr [eax]
 00491A0B    call        dword ptr [edx+94];TStringList.Changed
 00491A11    ret
end;*}

//00491A14
function StringListCompareStrings(List:TStringList; Index1:Integer; Index2:Integer):Integer;
begin
{*
 00491A14    push        ebx
 00491A15    mov         ebx,dword ptr [eax+2C]
 00491A18    mov         ecx,dword ptr [ebx+ecx*8]
 00491A1B    mov         ebx,dword ptr [eax+2C]
 00491A1E    mov         edx,dword ptr [ebx+edx*8]
 00491A21    mov         ebx,dword ptr [eax]
 00491A23    call        dword ptr [ebx+38]
 00491A26    pop         ebx
 00491A27    ret
*}
end;

//00491A28
procedure TStringList.Sort;
begin
{*
 00491A28    mov         edx,491A14;StringListCompareStrings:Integer
 00491A2D    mov         ecx,dword ptr [eax]
 00491A2F    call        dword ptr [ecx+0A8]
 00491A35    ret
*}
end;

//00491A38
procedure TStringList.CustomSort(Compare:TStringListSortCompare);
begin
{*
 00491A38    push        ebx
 00491A39    push        esi
 00491A3A    mov         esi,edx
 00491A3C    mov         ebx,eax
 00491A3E    cmp         byte ptr [ebx+38],0
>00491A42    jne         00491A6C
 00491A44    cmp         dword ptr [ebx+30],1
>00491A48    jle         00491A6C
 00491A4A    mov         eax,ebx
 00491A4C    mov         edx,dword ptr [eax]
 00491A4E    call        dword ptr [edx+98]
 00491A54    push        esi
 00491A55    mov         ecx,dword ptr [ebx+30]
 00491A58    dec         ecx
 00491A59    xor         edx,edx
 00491A5B    mov         eax,ebx
 00491A5D    call        TStringList.QuickSort
 00491A62    mov         eax,ebx
 00491A64    mov         edx,dword ptr [eax]
 00491A66    call        dword ptr [edx+94]
 00491A6C    pop         esi
 00491A6D    pop         ebx
 00491A6E    ret
*}
end;

//00491A70
function TStringList.CompareStrings(const S1:UnicodeString; const S2:UnicodeString):Integer;
begin
{*
 00491A70    cmp         byte ptr [eax+3A],0
>00491A74    je          00491A80
 00491A76    mov         eax,edx
 00491A78    mov         edx,ecx
 00491A7A    call        AnsiCompareStr
 00491A7F    ret
 00491A80    mov         eax,edx
 00491A82    mov         edx,ecx
 00491A84    call        AnsiCompareText
 00491A89    ret
*}
end;

//00491A8C
constructor TStringList.Create();
begin
{*
 00491A8C    push        ebx
 00491A8D    push        esi
 00491A8E    test        dl,dl
>00491A90    je          00491A9A
 00491A92    add         esp,0FFFFFFF0
 00491A95    call        @ClassCreate
 00491A9A    mov         ebx,edx
 00491A9C    mov         esi,eax
 00491A9E    xor         edx,edx
 00491AA0    mov         eax,esi
 00491AA2    call        TStrings.Create
 00491AA7    mov         eax,esi
 00491AA9    test        bl,bl
>00491AAB    je          00491ABC
 00491AAD    call        @AfterConstruction
 00491AB2    pop         dword ptr fs:[0]
 00491AB9    add         esp,0C
 00491ABC    mov         eax,esi
 00491ABE    pop         esi
 00491ABF    pop         ebx
 00491AC0    ret
*}
end;

//00491AC4
procedure TStringList.SetCaseSensitive(const Value:Boolean);
begin
{*
 00491AC4    push        ebx
 00491AC5    mov         ebx,eax
 00491AC7    cmp         dl,byte ptr [ebx+3A]
>00491ACA    je          00491AE7
 00491ACC    mov         byte ptr [ebx+3A],dl
 00491ACF    cmp         byte ptr [ebx+38],0
>00491AD3    je          00491AE7
 00491AD5    xor         edx,edx
 00491AD7    mov         eax,ebx
 00491AD9    call        TStringList.SetSorted
 00491ADE    mov         dl,1
 00491AE0    mov         eax,ebx
 00491AE2    call        TStringList.SetSorted
 00491AE7    pop         ebx
 00491AE8    ret
*}
end;

//00491AEC
function TStream.GetPosition:Int64;
begin
{*
 00491AEC    push        esi
 00491AED    add         esp,0FFFFFFF8
 00491AF0    mov         esi,eax
 00491AF2    push        0
 00491AF4    push        0
 00491AF6    mov         dl,1
 00491AF8    mov         eax,esi
 00491AFA    mov         ecx,dword ptr [eax]
 00491AFC    call        dword ptr [ecx+20]
 00491AFF    mov         dword ptr [esp],eax
 00491B02    mov         dword ptr [esp+4],edx
 00491B06    mov         eax,dword ptr [esp]
 00491B09    mov         edx,dword ptr [esp+4]
 00491B0D    pop         ecx
 00491B0E    pop         edx
 00491B0F    pop         esi
 00491B10    ret
*}
end;

//00491B14
procedure TStream.SetPosition(const Pos:Int64);
begin
{*
 00491B14    push        ebp
 00491B15    mov         ebp,esp
 00491B17    push        esi
 00491B18    mov         esi,eax
 00491B1A    push        dword ptr [ebp+0C]
 00491B1D    push        dword ptr [ebp+8]
 00491B20    xor         edx,edx
 00491B22    mov         eax,esi
 00491B24    mov         ecx,dword ptr [eax]
 00491B26    call        dword ptr [ecx+20]
 00491B29    pop         esi
 00491B2A    pop         ebp
 00491B2B    ret         8
*}
end;

//00491B30
procedure sub_00491B30;
begin
{*
 00491B30    push        esi
 00491B31    add         esp,0FFFFFFF0
 00491B34    mov         esi,eax
 00491B36    push        0
 00491B38    push        0
 00491B3A    mov         dl,1
 00491B3C    mov         eax,esi
 00491B3E    mov         ecx,dword ptr [eax]
 00491B40    call        dword ptr [ecx+20];TStream.Seek
 00491B43    mov         dword ptr [esp+8],eax
 00491B47    mov         dword ptr [esp+0C],edx
 00491B4B    push        0
 00491B4D    push        0
 00491B4F    mov         dl,2
 00491B51    mov         eax,esi
 00491B53    mov         ecx,dword ptr [eax]
 00491B55    call        dword ptr [ecx+20];TStream.Seek
 00491B58    mov         dword ptr [esp],eax
 00491B5B    mov         dword ptr [esp+4],edx
 00491B5F    push        dword ptr [esp+0C]
 00491B63    push        dword ptr [esp+0C]
 00491B67    xor         edx,edx
 00491B69    mov         eax,esi
 00491B6B    mov         ecx,dword ptr [eax]
 00491B6D    call        dword ptr [ecx+20];TStream.Seek
 00491B70    mov         eax,dword ptr [esp]
 00491B73    mov         edx,dword ptr [esp+4]
 00491B77    add         esp,10
 00491B7A    pop         esi
 00491B7B    ret
*}
end;

//00491B7C
procedure sub_00491B7C;
begin
{*
 00491B7C    ret
*}
end;

//00491B80
procedure TStream.SetSize64(const NewSize:Int64);
begin
{*
 00491B80    push        ebp
 00491B81    mov         ebp,esp
 00491B83    push        dword ptr [ebp+0C]
 00491B86    push        dword ptr [ebp+8]
 00491B89    mov         edx,dword ptr [eax]
 00491B8B    call        dword ptr [edx+8]
 00491B8E    pop         ebp
 00491B8F    ret         8
*}
end;

//00491B94
procedure TStream.SetSize(const NewSize:Int64);
begin
{*
 00491B94    push        ebp
 00491B95    mov         ebp,esp
 00491B97    mov         ecx,eax
 00491B99    cmp         dword ptr [ebp+0C],0FFFFFFFF
>00491B9D    jne         00491BAA
 00491B9F    cmp         dword ptr [ebp+8],80000000
>00491BA6    jb          00491BBF
>00491BA8    jmp         00491BAC
>00491BAA    jl          00491BBF
 00491BAC    cmp         dword ptr [ebp+0C],0
>00491BB0    jne         00491BBD
 00491BB2    cmp         dword ptr [ebp+8],7FFFFFFF
>00491BB9    jbe         00491BD6
>00491BBB    jmp         00491BBF
>00491BBD    jle         00491BD6
 00491BBF    mov         ecx,dword ptr ds:[7C4D14];^SResString17:TResStringRec
 00491BC5    mov         dl,1
 00491BC7    mov         eax,[0041873C];ERangeError
 00491BCC    call        Exception.CreateRes
 00491BD1    call        @RaiseExcept
 00491BD6    mov         eax,dword ptr [ebp+8]
 00491BD9    mov         edx,eax
 00491BDB    mov         eax,ecx
 00491BDD    mov         ecx,dword ptr [eax]
 00491BDF    call        dword ptr [ecx+4]
 00491BE2    pop         ebp
 00491BE3    ret         8
*}
end;

//00491BE8
procedure RaiseException;
begin
{*
 00491BE8    push        ebp
 00491BE9    mov         ebp,esp
 00491BEB    add         esp,0FFFFFFF4
 00491BEE    xor         eax,eax
 00491BF0    mov         dword ptr [ebp-0C],eax
 00491BF3    xor         eax,eax
 00491BF5    push        ebp
 00491BF6    push        491C4E
 00491BFB    push        dword ptr fs:[eax]
 00491BFE    mov         dword ptr fs:[eax],esp
 00491C01    lea         edx,[ebp-0C]
 00491C04    mov         eax,dword ptr [ebp+8]
 00491C07    mov         eax,dword ptr [eax-14]
 00491C0A    mov         eax,dword ptr [eax]
 00491C0C    call        TObject.ClassName
 00491C11    mov         eax,dword ptr [ebp-0C]
 00491C14    mov         dword ptr [ebp-8],eax
 00491C17    mov         byte ptr [ebp-4],11
 00491C1B    lea         eax,[ebp-8]
 00491C1E    push        eax
 00491C1F    push        0
 00491C21    mov         ecx,dword ptr ds:[7C4DA4];^SResString145:TResStringRec
 00491C27    mov         dl,1
 00491C29    mov         eax,[0046B594];EStreamError
 00491C2E    call        Exception.CreateResFmt
 00491C33    call        @RaiseExcept
 00491C38    xor         eax,eax
 00491C3A    pop         edx
 00491C3B    pop         ecx
 00491C3C    pop         ecx
 00491C3D    mov         dword ptr fs:[eax],edx
 00491C40    push        491C55
 00491C45    lea         eax,[ebp-0C]
 00491C48    call        @UStrClr
 00491C4D    ret
>00491C4E    jmp         @HandleFinally
>00491C53    jmp         00491C45
 00491C55    mov         esp,ebp
 00491C57    pop         ebp
 00491C58    ret
*}
end;

//00491C5C
function TStream.Seek(Offset:Integer; Origin:Word):Integer;
begin
{*
 00491C5C    push        ebp
 00491C5D    mov         ebp,esp
 00491C5F    add         esp,0FFFFFFE0
 00491C62    push        ebx
 00491C63    mov         word ptr [ebp-1A],cx
 00491C67    mov         dword ptr [ebp-18],edx
 00491C6A    mov         dword ptr [ebp-14],eax
 00491C6D    lea         ebx,[ebp-20]
 00491C70    mov         eax,dword ptr [ebp-14]
 00491C73    mov         dword ptr [ebp-4],eax
 00491C76    mov         eax,dword ptr [eax]
 00491C78    mov         eax,dword ptr [eax+20]
 00491C7B    mov         dword ptr [ebp-8],eax
 00491C7E    mov         edx,dword ptr [ebp-14]
 00491C81    mov         edx,dword ptr [edx]
 00491C83    mov         eax,edx
 00491C85    mov         dword ptr [ebx],eax
>00491C87    jmp         00491C92
 00491C89    mov         eax,dword ptr [ebx]
 00491C8B    call        TObject.ClassParent
 00491C90    mov         dword ptr [ebx],eax
 00491C92    cmp         dword ptr [ebx],0
>00491C95    je          00491CA1
 00491C97    mov         eax,dword ptr [ebx]
 00491C99    cmp         eax,dword ptr ds:[470078];TStream
>00491C9F    jne         00491C89
 00491CA1    cmp         dword ptr [ebx],0
>00491CA4    jne         00491CAD
 00491CA6    push        ebp
 00491CA7    call        RaiseException
 00491CAC    pop         ecx
 00491CAD    mov         dword ptr [ebp-0C],ebx
 00491CB0    mov         eax,dword ptr [ebx]
 00491CB2    mov         eax,dword ptr [eax+20]
 00491CB5    mov         dword ptr [ebp-10],eax
 00491CB8    mov         eax,dword ptr [ebp-8]
 00491CBB    cmp         eax,dword ptr [ebp-10]
>00491CBE    jne         00491CC7
 00491CC0    push        ebp
 00491CC1    call        RaiseException
 00491CC6    pop         ecx
 00491CC7    mov         eax,dword ptr [ebp-18]
 00491CCA    cdq
 00491CCB    push        edx
 00491CCC    push        eax
 00491CCD    movzx       edx,byte ptr [ebp-1A]
 00491CD1    mov         eax,dword ptr [ebp-14]
 00491CD4    mov         ecx,dword ptr [eax]
 00491CD6    call        dword ptr [ecx+20]
 00491CD9    pop         ebx
 00491CDA    mov         esp,ebp
 00491CDC    pop         ebp
 00491CDD    ret
*}
end;

//00491CE0
function TStream.Seek(Origin:TSeekOrigin; Offset:Int64):Int64;
begin
{*
 00491CE0    push        ebp
 00491CE1    mov         ebp,esp
 00491CE3    add         esp,0FFFFFFF8
 00491CE6    push        ebx
 00491CE7    push        esi
 00491CE8    mov         ebx,edx
 00491CEA    mov         esi,eax
 00491CEC    cmp         dword ptr [ebp+0C],0FFFFFFFF
>00491CF0    jne         00491CFD
 00491CF2    cmp         dword ptr [ebp+8],80000000
>00491CF9    jb          00491D12
>00491CFB    jmp         00491CFF
>00491CFD    jl          00491D12
 00491CFF    cmp         dword ptr [ebp+0C],0
>00491D03    jne         00491D10
 00491D05    cmp         dword ptr [ebp+8],7FFFFFFF
>00491D0C    jbe         00491D29
>00491D0E    jmp         00491D12
>00491D10    jle         00491D29
 00491D12    mov         ecx,dword ptr ds:[7C4D14];^SResString17:TResStringRec
 00491D18    mov         dl,1
 00491D1A    mov         eax,[0041873C];ERangeError
 00491D1F    call        Exception.CreateRes
 00491D24    call        @RaiseExcept
 00491D29    mov         eax,dword ptr [ebp+8]
 00491D2C    mov         edx,eax
 00491D2E    movzx       ecx,bl
 00491D31    mov         eax,esi
 00491D33    mov         ebx,dword ptr [eax]
 00491D35    call        dword ptr [ebx+1C]
 00491D38    cdq
 00491D39    mov         dword ptr [ebp-8],eax
 00491D3C    mov         dword ptr [ebp-4],edx
 00491D3F    mov         eax,dword ptr [ebp-8]
 00491D42    mov         edx,dword ptr [ebp-4]
 00491D45    pop         esi
 00491D46    pop         ebx
 00491D47    pop         ecx
 00491D48    pop         ecx
 00491D49    pop         ebp
 00491D4A    ret         8
*}
end;

//00491D50
{*function TStream.Read(var Buffer:?; Count:Integer):Integer;
begin
 00491D50    xor         eax,eax
 00491D52    ret
end;*}

//00491D54
{*function TStream.Write(Buffer:?; Count:Integer):Integer;
begin
 00491D54    xor         eax,eax
 00491D56    ret
end;*}

//00491D58
function TStream.Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;
begin
{*
 00491D58    push        ebp
 00491D59    mov         ebp,esp
 00491D5B    push        ecx
 00491D5C    push        ebx
 00491D5D    push        esi
 00491D5E    mov         esi,ecx
 00491D60    mov         dword ptr [ebp-4],edx
 00491D63    mov         ebx,eax
 00491D65    mov         eax,dword ptr [ebp-4]
 00491D68    call        @DynArrayAddRef
 00491D6D    xor         eax,eax
 00491D6F    push        ebp
 00491D70    push        491DA9
 00491D75    push        dword ptr fs:[eax]
 00491D78    mov         dword ptr fs:[eax],esp
 00491D7B    mov         eax,dword ptr [ebp-4]
 00491D7E    lea         edx,[eax+esi]
 00491D81    mov         ecx,dword ptr [ebp+8]
 00491D84    mov         eax,ebx
 00491D86    mov         ebx,dword ptr [eax]
 00491D88    call        dword ptr [ebx+0C]
 00491D8B    mov         ebx,eax
 00491D8D    xor         eax,eax
 00491D8F    pop         edx
 00491D90    pop         ecx
 00491D91    pop         ecx
 00491D92    mov         dword ptr fs:[eax],edx
 00491D95    push        491DB0
 00491D9A    lea         eax,[ebp-4]
 00491D9D    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00491DA3    call        @DynArrayClear
 00491DA8    ret
>00491DA9    jmp         @HandleFinally
>00491DAE    jmp         00491D9A
 00491DB0    mov         eax,ebx
 00491DB2    pop         esi
 00491DB3    pop         ebx
 00491DB4    pop         ecx
 00491DB5    pop         ebp
 00491DB6    ret         4
*}
end;

//00491DBC
procedure TStream.Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);
begin
{*
 00491DBC    push        ebp
 00491DBD    mov         ebp,esp
 00491DBF    push        ebx
 00491DC0    add         edx,ecx
 00491DC2    mov         ecx,dword ptr [ebp+8]
 00491DC5    mov         ebx,dword ptr [eax]
 00491DC7    call        dword ptr [ebx+10];TStream.Write
 00491DCA    pop         ebx
 00491DCB    pop         ebp
 00491DCC    ret         4
*}
end;

//00491DD0
procedure TStream.ReadBuffer(var Buffer:TArray<System.Byte>; Count:Integer);
begin
{*
 00491DD0    push        ecx
 00491DD1    xor         ecx,ecx
 00491DD3    call        TStream.ReadBuffer
 00491DD8    ret
*}
end;

//00491DDC
procedure TStream.ReadBuffer(var Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);
begin
{*
 00491DDC    push        ebp
 00491DDD    mov         ebp,esp
 00491DDF    add         esp,0FFFFFFF4
 00491DE2    push        ebx
 00491DE3    push        esi
 00491DE4    mov         dword ptr [ebp-0C],ecx
 00491DE7    mov         dword ptr [ebp-8],edx
 00491DEA    mov         dword ptr [ebp-4],eax
 00491DED    mov         eax,dword ptr [ebp+8]
 00491DF0    push        eax
 00491DF1    mov         edx,dword ptr [ebp-8]
 00491DF4    mov         edx,dword ptr [edx]
 00491DF6    mov         ecx,dword ptr [ebp-0C]
 00491DF9    mov         eax,dword ptr [ebp-4]
 00491DFC    mov         ebx,dword ptr [eax]
 00491DFE    call        dword ptr [ebx+14];TStream.Read
 00491E01    mov         ebx,eax
 00491E03    test        ebx,ebx
>00491E05    jge         00491E1E
 00491E07    mov         ecx,dword ptr ds:[7C4CFC];^SResString139:TResStringRec
 00491E0D    mov         dl,1
 00491E0F    mov         eax,[0046B93C];EReadError
 00491E14    call        Exception.CreateRes;EReadError.Create
 00491E19    call        @RaiseExcept
 00491E1E    cmp         ebx,dword ptr [ebp+8]
>00491E21    jge         00491E61
 00491E23    mov         eax,dword ptr [ebp+8]
 00491E26    sub         eax,ebx
 00491E28    push        eax
 00491E29    mov         ecx,dword ptr [ebp-0C]
 00491E2C    add         ecx,ebx
 00491E2E    mov         edx,dword ptr [ebp-8]
 00491E31    mov         edx,dword ptr [edx]
 00491E33    mov         eax,dword ptr [ebp-4]
 00491E36    mov         esi,dword ptr [eax]
 00491E38    call        dword ptr [esi+14];TStream.Read
 00491E3B    mov         esi,eax
 00491E3D    test        esi,esi
>00491E3F    jg          00491E5A
 00491E41    mov         ecx,dword ptr ds:[7C4CFC];^SResString139:TResStringRec
 00491E47    mov         dl,1
 00491E49    mov         eax,[0046B93C];EReadError
 00491E4E    call        Exception.CreateRes;EReadError.Create
 00491E53    call        @RaiseExcept
>00491E58    jmp         00491E5C
 00491E5A    add         ebx,esi
 00491E5C    cmp         ebx,dword ptr [ebp+8]
>00491E5F    jl          00491E23
 00491E61    pop         esi
 00491E62    pop         ebx
 00491E63    mov         esp,ebp
 00491E65    pop         ebp
 00491E66    ret         4
*}
end;

//00491E6C
{*procedure TStream.ReadBuffer(var Buffer:?; Count:Integer);
begin
 00491E6C    push        ebx
 00491E6D    push        esi
 00491E6E    push        edi
 00491E6F    add         esp,0FFFFFFF8
 00491E72    mov         edi,ecx
 00491E74    mov         dword ptr [esp+4],edx
 00491E78    mov         dword ptr [esp],eax
 00491E7B    mov         edx,dword ptr [esp+4]
 00491E7F    mov         ecx,edi
 00491E81    mov         eax,dword ptr [esp]
 00491E84    mov         ebx,dword ptr [eax]
 00491E86    call        dword ptr [ebx+0C]
 00491E89    mov         ebx,eax
 00491E8B    test        ebx,ebx
>00491E8D    jge         00491EA6
 00491E8F    mov         ecx,dword ptr ds:[7C4CFC];^SResString139:TResStringRec
 00491E95    mov         dl,1
 00491E97    mov         eax,[0046B93C];EReadError
 00491E9C    call        Exception.CreateRes
 00491EA1    call        @RaiseExcept
 00491EA6    cmp         edi,ebx
>00491EA8    jle         00491EE1
 00491EAA    mov         ecx,edi
 00491EAC    sub         ecx,ebx
 00491EAE    mov         edx,dword ptr [esp+4]
 00491EB2    add         edx,ebx
 00491EB4    mov         eax,dword ptr [esp]
 00491EB7    mov         esi,dword ptr [eax]
 00491EB9    call        dword ptr [esi+0C]
 00491EBC    mov         esi,eax
 00491EBE    test        esi,esi
>00491EC0    jg          00491EDB
 00491EC2    mov         ecx,dword ptr ds:[7C4CFC];^SResString139:TResStringRec
 00491EC8    mov         dl,1
 00491ECA    mov         eax,[0046B93C];EReadError
 00491ECF    call        Exception.CreateRes
 00491ED4    call        @RaiseExcept
>00491ED9    jmp         00491EDD
 00491EDB    add         ebx,esi
 00491EDD    cmp         edi,ebx
>00491EDF    jg          00491EAA
 00491EE1    pop         ecx
 00491EE2    pop         edx
 00491EE3    pop         edi
 00491EE4    pop         esi
 00491EE5    pop         ebx
 00491EE6    ret
end;*}

//00491EE8
{*procedure TStream.WriteBuffer(Buffer:?; Count:Integer);
begin
 00491EE8    push        ebx
 00491EE9    push        esi
 00491EEA    push        edi
 00491EEB    add         esp,0FFFFFFF8
 00491EEE    mov         edi,ecx
 00491EF0    mov         dword ptr [esp+4],edx
 00491EF4    mov         dword ptr [esp],eax
 00491EF7    mov         edx,dword ptr [esp+4]
 00491EFB    mov         ecx,edi
 00491EFD    mov         eax,dword ptr [esp]
 00491F00    mov         ebx,dword ptr [eax]
 00491F02    call        dword ptr [ebx+10]
 00491F05    mov         ebx,eax
 00491F07    test        ebx,ebx
>00491F09    jge         00491F22
 00491F0B    mov         ecx,dword ptr ds:[7C486C];^SResString149:TResStringRec
 00491F11    mov         dl,1
 00491F13    mov         eax,[0046B9E4];EWriteError
 00491F18    call        Exception.CreateRes;EWriteError.Create
 00491F1D    call        @RaiseExcept
 00491F22    cmp         edi,ebx
>00491F24    jle         00491F5D
 00491F26    mov         ecx,edi
 00491F28    sub         ecx,ebx
 00491F2A    mov         edx,dword ptr [esp+4]
 00491F2E    add         edx,ebx
 00491F30    mov         eax,dword ptr [esp]
 00491F33    mov         esi,dword ptr [eax]
 00491F35    call        dword ptr [esi+10]
 00491F38    mov         esi,eax
 00491F3A    test        esi,esi
>00491F3C    jg          00491F57
 00491F3E    mov         ecx,dword ptr ds:[7C486C];^SResString149:TResStringRec
 00491F44    mov         dl,1
 00491F46    mov         eax,[0046B9E4];EWriteError
 00491F4B    call        Exception.CreateRes;EWriteError.Create
 00491F50    call        @RaiseExcept
>00491F55    jmp         00491F59
 00491F57    add         ebx,esi
 00491F59    cmp         edi,ebx
>00491F5B    jg          00491F26
 00491F5D    pop         ecx
 00491F5E    pop         edx
 00491F5F    pop         edi
 00491F60    pop         esi
 00491F61    pop         ebx
 00491F62    ret
end;*}

//00491F64
procedure TStream.WriteBuffer(Buffer:TArray<System.Byte>; Count:Integer);
begin
{*
 00491F64    push        ecx
 00491F65    xor         ecx,ecx
 00491F67    call        TStream.WriteBuffer
 00491F6C    ret
*}
end;

//00491F70
procedure TStream.WriteBuffer(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);
begin
{*
 00491F70    push        ebp
 00491F71    mov         ebp,esp
 00491F73    add         esp,0FFFFFFF4
 00491F76    push        ebx
 00491F77    push        esi
 00491F78    mov         dword ptr [ebp-0C],ecx
 00491F7B    mov         dword ptr [ebp-8],edx
 00491F7E    mov         dword ptr [ebp-4],eax
 00491F81    mov         eax,dword ptr [ebp+8]
 00491F84    push        eax
 00491F85    mov         ecx,dword ptr [ebp-0C]
 00491F88    mov         edx,dword ptr [ebp-8]
 00491F8B    mov         eax,dword ptr [ebp-4]
 00491F8E    mov         ebx,dword ptr [eax]
 00491F90    call        dword ptr [ebx+18];TStream.Write
 00491F93    mov         ebx,eax
 00491F95    test        ebx,ebx
>00491F97    jge         00491FB0
 00491F99    mov         ecx,dword ptr ds:[7C486C];^SResString149:TResStringRec
 00491F9F    mov         dl,1
 00491FA1    mov         eax,[0046B9E4];EWriteError
 00491FA6    call        Exception.CreateRes;EWriteError.Create
 00491FAB    call        @RaiseExcept
 00491FB0    cmp         ebx,dword ptr [ebp+8]
>00491FB3    jge         00491FF1
 00491FB5    mov         eax,dword ptr [ebp+8]
 00491FB8    sub         eax,ebx
 00491FBA    push        eax
 00491FBB    mov         ecx,dword ptr [ebp-0C]
 00491FBE    add         ecx,ebx
 00491FC0    mov         edx,dword ptr [ebp-8]
 00491FC3    mov         eax,dword ptr [ebp-4]
 00491FC6    mov         esi,dword ptr [eax]
 00491FC8    call        dword ptr [esi+18];TStream.Write
 00491FCB    mov         esi,eax
 00491FCD    test        esi,esi
>00491FCF    jg          00491FEA
 00491FD1    mov         ecx,dword ptr ds:[7C486C];^SResString149:TResStringRec
 00491FD7    mov         dl,1
 00491FD9    mov         eax,[0046B9E4];EWriteError
 00491FDE    call        Exception.CreateRes;EWriteError.Create
 00491FE3    call        @RaiseExcept
>00491FE8    jmp         00491FEC
 00491FEA    add         ebx,esi
 00491FEC    cmp         ebx,dword ptr [ebp+8]
>00491FEF    jl          00491FB5
 00491FF1    pop         esi
 00491FF2    pop         ebx
 00491FF3    mov         esp,ebp
 00491FF5    pop         ebp
 00491FF6    ret         4
*}
end;

//00491FFC
function TStream.CopyFrom(Source:TStream; Count:Int64):Int64;
begin
{*
 00491FFC    push        ebp
 00491FFD    mov         ebp,esp
 00491FFF    add         esp,0FFFFFFF0
 00492002    push        ebx
 00492003    push        esi
 00492004    push        edi
 00492005    xor         ecx,ecx
 00492007    mov         dword ptr [ebp-4],ecx
 0049200A    mov         edi,edx
 0049200C    mov         dword ptr [ebp-8],eax
 0049200F    xor         eax,eax
 00492011    push        ebp
 00492012    push        492119
 00492017    push        dword ptr fs:[eax]
 0049201A    mov         dword ptr fs:[eax],esp
 0049201D    cmp         dword ptr [ebp+0C],0
>00492021    jne         0049202B
 00492023    cmp         dword ptr [ebp+8],0
>00492027    ja          00492044
>00492029    jmp         0049202D
>0049202B    jg          00492044
 0049202D    push        0
 0049202F    push        0
 00492031    mov         eax,edi
 00492033    call        TStream.SetPosition
 00492038    mov         eax,edi
 0049203A    mov         edx,dword ptr [eax]
 0049203C    call        dword ptr [edx]
 0049203E    mov         dword ptr [ebp+8],eax
 00492041    mov         dword ptr [ebp+0C],edx
 00492044    mov         eax,dword ptr [ebp+8]
 00492047    mov         dword ptr [ebp-10],eax
 0049204A    mov         eax,dword ptr [ebp+0C]
 0049204D    mov         dword ptr [ebp-0C],eax
 00492050    cmp         dword ptr [ebp+0C],0
>00492054    jne         00492061
 00492056    cmp         dword ptr [ebp+8],0F000
>0049205D    jbe         0049206A
>0049205F    jmp         00492063
>00492061    jle         0049206A
 00492063    mov         esi,0F000
>00492068    jmp         0049206D
 0049206A    mov         esi,dword ptr [ebp+8]
 0049206D    push        esi
 0049206E    lea         eax,[ebp-4]
 00492071    mov         ecx,1
 00492076    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0049207C    call        @DynArraySetLength
 00492081    add         esp,4
 00492084    xor         eax,eax
 00492086    push        ebp
 00492087    push        4920F6
 0049208C    push        dword ptr fs:[eax]
 0049208F    mov         dword ptr fs:[eax],esp
>00492092    jmp         004920CE
 00492094    mov         eax,esi
 00492096    cdq
 00492097    cmp         edx,dword ptr [ebp+0C]
>0049209A    jne         004920A3
 0049209C    cmp         eax,dword ptr [ebp+8]
>0049209F    jae         004920A9
>004920A1    jmp         004920A5
>004920A3    jge         004920A9
 004920A5    mov         ebx,esi
>004920A7    jmp         004920AC
 004920A9    mov         ebx,dword ptr [ebp+8]
 004920AC    lea         edx,[ebp-4]
 004920AF    mov         ecx,ebx
 004920B1    mov         eax,edi
 004920B3    call        TStream.ReadBuffer
 004920B8    mov         ecx,ebx
 004920BA    mov         edx,dword ptr [ebp-4]
 004920BD    mov         eax,dword ptr [ebp-8]
 004920C0    call        TStream.WriteBuffer
 004920C5    mov         eax,ebx
 004920C7    cdq
 004920C8    sub         dword ptr [ebp+8],eax
 004920CB    sbb         dword ptr [ebp+0C],edx
 004920CE    cmp         dword ptr [ebp+0C],0
>004920D2    jne         00492094
 004920D4    cmp         dword ptr [ebp+8],0
>004920D8    jne         00492094
 004920DA    xor         eax,eax
 004920DC    pop         edx
 004920DD    pop         ecx
 004920DE    pop         ecx
 004920DF    mov         dword ptr fs:[eax],edx
 004920E2    push        4920FD
 004920E7    lea         eax,[ebp-4]
 004920EA    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004920F0    call        @DynArrayClear
 004920F5    ret
>004920F6    jmp         @HandleFinally
>004920FB    jmp         004920E7
 004920FD    xor         eax,eax
 004920FF    pop         edx
 00492100    pop         ecx
 00492101    pop         ecx
 00492102    mov         dword ptr fs:[eax],edx
 00492105    push        492120
 0049210A    lea         eax,[ebp-4]
 0049210D    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00492113    call        @DynArrayClear
 00492118    ret
>00492119    jmp         @HandleFinally
>0049211E    jmp         0049210A
 00492120    mov         eax,dword ptr [ebp-10]
 00492123    mov         edx,dword ptr [ebp-0C]
 00492126    pop         edi
 00492127    pop         esi
 00492128    pop         ebx
 00492129    mov         esp,ebp
 0049212B    pop         ebp
 0049212C    ret         8
*}
end;

//00492130
function TStream.ReadComponent(Instance:TComponent):TComponent;
begin
{*
 00492130    push        ebp
 00492131    mov         ebp,esp
 00492133    add         esp,0FFFFFFF8
 00492136    push        ebx
 00492137    mov         ebx,edx
 00492139    push        1000
 0049213E    mov         ecx,eax
 00492140    mov         dl,1
 00492142    mov         eax,[00474D48];TReader
 00492147    call        TFiler.Create
 0049214C    mov         dword ptr [ebp-8],eax
 0049214F    xor         eax,eax
 00492151    push        ebp
 00492152    push        492180
 00492157    push        dword ptr fs:[eax]
 0049215A    mov         dword ptr fs:[eax],esp
 0049215D    mov         edx,ebx
 0049215F    mov         eax,dword ptr [ebp-8]
 00492162    call        TReader.ReadRootComponent
 00492167    mov         dword ptr [ebp-4],eax
 0049216A    xor         eax,eax
 0049216C    pop         edx
 0049216D    pop         ecx
 0049216E    pop         ecx
 0049216F    mov         dword ptr fs:[eax],edx
 00492172    push        492187
 00492177    mov         eax,dword ptr [ebp-8]
 0049217A    call        TObject.Free
 0049217F    ret
>00492180    jmp         @HandleFinally
>00492185    jmp         00492177
 00492187    mov         eax,dword ptr [ebp-4]
 0049218A    pop         ebx
 0049218B    pop         ecx
 0049218C    pop         ecx
 0049218D    pop         ebp
 0049218E    ret
*}
end;

//00492190
procedure TStream.WriteComponent(Instance:TComponent);
begin
{*
 00492190    xor         ecx,ecx
 00492192    call        TStream.WriteDescendent
 00492197    ret
*}
end;

//00492198
procedure TStream.WriteDescendent(Instance:TComponent; Ancestor:TComponent);
begin
{*
 00492198    push        ebp
 00492199    mov         ebp,esp
 0049219B    push        ecx
 0049219C    push        ebx
 0049219D    push        esi
 0049219E    mov         esi,ecx
 004921A0    mov         ebx,edx
 004921A2    push        1000
 004921A7    mov         ecx,eax
 004921A9    mov         dl,1
 004921AB    mov         eax,[00476148];TWriter
 004921B0    call        TFiler.Create
 004921B5    mov         dword ptr [ebp-4],eax
 004921B8    xor         eax,eax
 004921BA    push        ebp
 004921BB    push        4921E8
 004921C0    push        dword ptr fs:[eax]
 004921C3    mov         dword ptr fs:[eax],esp
 004921C6    mov         ecx,esi
 004921C8    mov         edx,ebx
 004921CA    mov         eax,dword ptr [ebp-4]
 004921CD    call        TWriter.WriteDescendent
 004921D2    xor         eax,eax
 004921D4    pop         edx
 004921D5    pop         ecx
 004921D6    pop         ecx
 004921D7    mov         dword ptr fs:[eax],edx
 004921DA    push        4921EF
 004921DF    mov         eax,dword ptr [ebp-4]
 004921E2    call        TObject.Free
 004921E7    ret
>004921E8    jmp         @HandleFinally
>004921ED    jmp         004921DF
 004921EF    pop         esi
 004921F0    pop         ebx
 004921F1    pop         ecx
 004921F2    pop         ebp
 004921F3    ret
*}
end;

//004921F4
constructor TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection.Create;
begin
{*
 004921F4    push        ebx
 004921F5    push        esi
 004921F6    push        edi
 004921F7    test        dl,dl
>004921F9    je          00492203
 004921FB    add         esp,0FFFFFFF0
 004921FE    call        @ClassCreate
 00492203    mov         esi,ecx
 00492205    mov         ebx,edx
 00492207    mov         edi,eax
 00492209    xor         edx,edx
 0049220B    mov         eax,edi
 0049220D    call        TObject.Create
 00492212    mov         dword ptr [edi+4],esi
 00492215    mov         eax,edi
 00492217    test        bl,bl
>00492219    je          0049222A
 0049221B    call        @AfterConstruction
 00492220    pop         dword ptr fs:[0]
 00492227    add         esp,0C
 0049222A    mov         eax,edi
 0049222C    pop         edi
 0049222D    pop         esi
 0049222E    pop         ebx
 0049222F    ret
*}
end;

//00492230
function THandleStream.Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;
begin
{*
 00492230    push        ebp
 00492231    mov         ebp,esp
 00492233    push        ecx
 00492234    push        ebx
 00492235    push        esi
 00492236    mov         esi,ecx
 00492238    mov         dword ptr [ebp-4],edx
 0049223B    mov         ebx,eax
 0049223D    mov         eax,dword ptr [ebp-4]
 00492240    call        @DynArrayAddRef
 00492245    xor         eax,eax
 00492247    push        ebp
 00492248    push        492289
 0049224D    push        dword ptr fs:[eax]
 00492250    mov         dword ptr fs:[eax],esp
 00492253    mov         eax,dword ptr [ebp+8]
 00492256    push        eax
 00492257    lea         edx,[ebp-4]
 0049225A    mov         ecx,esi
 0049225C    mov         eax,dword ptr [ebx+4]
 0049225F    call        FileRead
 00492264    mov         ebx,eax
 00492266    cmp         ebx,0FFFFFFFF
>00492269    jne         0049226D
 0049226B    xor         ebx,ebx
 0049226D    xor         eax,eax
 0049226F    pop         edx
 00492270    pop         ecx
 00492271    pop         ecx
 00492272    mov         dword ptr fs:[eax],edx
 00492275    push        492290
 0049227A    lea         eax,[ebp-4]
 0049227D    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00492283    call        @DynArrayClear
 00492288    ret
>00492289    jmp         @HandleFinally
>0049228E    jmp         0049227A
 00492290    mov         eax,ebx
 00492292    pop         esi
 00492293    pop         ebx
 00492294    pop         ecx
 00492295    pop         ebp
 00492296    ret         4
*}
end;

//0049229C
{*function THandleStream.Read(var Buffer:?; Count:Integer):Integer;
begin
 0049229C    mov         eax,dword ptr [eax+4]
 0049229F    call        FileRead
 004922A4    cmp         eax,0FFFFFFFF
>004922A7    jne         004922AB
 004922A9    xor         eax,eax
 004922AB    ret
end;*}

//004922AC
{*function THandleStream.Write(Buffer:?; Count:Integer):Integer;
begin
 004922AC    mov         eax,dword ptr [eax+4]
 004922AF    call        FileWrite
 004922B4    cmp         eax,0FFFFFFFF
>004922B7    jne         004922BB
 004922B9    xor         eax,eax
 004922BB    ret
end;*}

//004922BC
function THandleStream.Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;
begin
{*
 004922BC    push        ebp
 004922BD    mov         ebp,esp
 004922BF    push        ebx
 004922C0    mov         ebx,dword ptr [ebp+8]
 004922C3    push        ebx
 004922C4    mov         eax,dword ptr [eax+4]
 004922C7    call        FileWrite
 004922CC    cmp         eax,0FFFFFFFF
>004922CF    jne         004922D3
 004922D1    xor         eax,eax
 004922D3    pop         ebx
 004922D4    pop         ebp
 004922D5    ret         4
*}
end;

//004922D8
function THandleStream.Seek(Origin:TSeekOrigin; Offset:Int64):Int64;
begin
{*
 004922D8    push        ebp
 004922D9    mov         ebp,esp
 004922DB    add         esp,0FFFFFFF8
 004922DE    push        dword ptr [ebp+0C]
 004922E1    push        dword ptr [ebp+8]
 004922E4    and         edx,7F
 004922E7    mov         eax,dword ptr [eax+4]
 004922EA    call        FileSeek
 004922EF    mov         dword ptr [ebp-8],eax
 004922F2    mov         dword ptr [ebp-4],edx
 004922F5    mov         eax,dword ptr [ebp-8]
 004922F8    mov         edx,dword ptr [ebp-4]
 004922FB    pop         ecx
 004922FC    pop         ecx
 004922FD    pop         ebp
 004922FE    ret         8
*}
end;

//00492304
procedure THandleStream.SetSize(NewSize:LongInt);
begin
{*
 00492304    push        ebx
 00492305    mov         ebx,edx
 00492307    mov         ecx,eax
 00492309    mov         eax,ebx
 0049230B    cdq
 0049230C    push        edx
 0049230D    push        eax
 0049230E    mov         eax,ecx
 00492310    mov         edx,dword ptr [eax]
 00492312    call        dword ptr [edx+8]
 00492315    pop         ebx
 00492316    ret
*}
end;

//00492318
procedure THandleStream.SetSize(const NewSize:Int64);
begin
{*
 00492318    push        ebp
 00492319    mov         ebp,esp
 0049231B    push        ebx
 0049231C    mov         ebx,eax
 0049231E    push        dword ptr [ebp+0C]
 00492321    push        dword ptr [ebp+8]
 00492324    xor         edx,edx
 00492326    mov         eax,ebx
 00492328    mov         ecx,dword ptr [eax]
 0049232A    call        dword ptr [ecx+20]
 0049232D    mov         eax,dword ptr [ebx+4]
 00492330    push        eax
 00492331    call        kernel32.SetEndOfFile
 00492336    call        Win32Check
 0049233B    pop         ebx
 0049233C    pop         ebp
 0049233D    ret         8
*}
end;

//00492340
constructor TFileStream.Create(Mode:Word);
begin
{*
 00492340    push        ebp
 00492341    mov         ebp,esp
 00492343    push        ebx
 00492344    push        esi
 00492345    test        dl,dl
>00492347    je          00492351
 00492349    add         esp,0FFFFFFF0
 0049234C    call        @ClassCreate
 00492351    mov         ebx,edx
 00492353    mov         esi,eax
 00492355    movzx       eax,word ptr [ebp+8]
 00492359    push        eax
 0049235A    push        0
 0049235C    xor         edx,edx
 0049235E    mov         eax,esi
 00492360    call        00492384
 00492365    mov         eax,esi
 00492367    test        bl,bl
>00492369    je          0049237A
 0049236B    call        @AfterConstruction
 00492370    pop         dword ptr fs:[0]
 00492377    add         esp,0C
 0049237A    mov         eax,esi
 0049237C    pop         esi
 0049237D    pop         ebx
 0049237E    pop         ebp
 0049237F    ret         4
*}
end;

//00492384
constructor sub_00492384(AFileName:string; Rights:Cardinal; Mode:Word);
begin
{*
 00492384    push        ebp
 00492385    mov         ebp,esp
 00492387    add         esp,0FFFFFFDC
 0049238A    push        ebx
 0049238B    push        esi
 0049238C    push        edi
 0049238D    xor         ebx,ebx
 0049238F    mov         dword ptr [ebp-20],ebx
 00492392    mov         dword ptr [ebp-24],ebx
 00492395    mov         dword ptr [ebp-18],ebx
 00492398    mov         dword ptr [ebp-1C],ebx
 0049239B    test        dl,dl
>0049239D    je          004923A7
 0049239F    add         esp,0FFFFFFF0
 004923A2    call        @ClassCreate
 004923A7    mov         esi,ecx
 004923A9    mov         byte ptr [ebp-1],dl
 004923AC    mov         ebx,eax
 004923AE    mov         edi,dword ptr [ebp+0C]
 004923B1    xor         eax,eax
 004923B3    push        ebp
 004923B4    push        4924D4
 004923B9    push        dword ptr fs:[eax]
 004923BC    mov         dword ptr fs:[eax],esp
 004923BF    mov         ax,0FF00
 004923C3    and         ax,di
 004923C6    cmp         ax,0FF00
>004923CA    jne         0049244A
 004923CC    and         di,0FF
 004923D1    cmp         di,0FF
>004923D6    jne         004923DC
 004923D8    mov         di,10
 004923DC    movzx       edx,di
 004923DF    mov         ecx,dword ptr [ebp+8]
 004923E2    mov         eax,esi
 004923E4    call        0041E86C
 004923E9    mov         ecx,eax
 004923EB    xor         edx,edx
 004923ED    mov         eax,ebx
 004923EF    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection.Create
 004923F4    cmp         dword ptr [ebx+4],0FFFFFFFF;TFileStream....FHandle:NativeUInt
>004923F8    jne         004924AF
 004923FE    lea         edx,[ebp-18]
 00492401    mov         eax,esi
 00492403    call        0041F078
 00492408    mov         eax,dword ptr [ebp-18]
 0049240B    mov         dword ptr [ebp-14],eax
 0049240E    mov         byte ptr [ebp-10],11
 00492412    call        kernel32.GetLastError
 00492417    lea         ecx,[ebp-1C]
 0049241A    xor         edx,edx
 0049241C    call        00422CB4
 00492421    mov         eax,dword ptr [ebp-1C]
 00492424    mov         dword ptr [ebp-0C],eax
 00492427    mov         byte ptr [ebp-8],11
 0049242B    lea         eax,[ebp-14]
 0049242E    push        eax
 0049242F    push        1
 00492431    mov         ecx,dword ptr ds:[7C4EE0];^SResString123:TResStringRec
 00492437    mov         dl,1
 00492439    mov         eax,[0046B744];EFCreateError
 0049243E    call        Exception.CreateResFmt;EFCreateError.Create
 00492443    call        @RaiseExcept
>00492448    jmp         004924AF
 0049244A    movzx       edx,di
 0049244D    mov         eax,esi
 0049244F    call        0041E814
 00492454    mov         ecx,eax
 00492456    xor         edx,edx
 00492458    mov         eax,ebx
 0049245A    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TKeyCollection.Create
 0049245F    cmp         dword ptr [ebx+4],0FFFFFFFF;TFileStream.....FHandle:NativeUInt
>00492463    jne         004924AF
 00492465    lea         edx,[ebp-20]
 00492468    mov         eax,esi
 0049246A    call        0041F078
 0049246F    mov         eax,dword ptr [ebp-20]
 00492472    mov         dword ptr [ebp-14],eax
 00492475    mov         byte ptr [ebp-10],11
 00492479    call        kernel32.GetLastError
 0049247E    lea         ecx,[ebp-24]
 00492481    xor         edx,edx
 00492483    call        00422CB4
 00492488    mov         eax,dword ptr [ebp-24]
 0049248B    mov         dword ptr [ebp-0C],eax
 0049248E    mov         byte ptr [ebp-8],11
 00492492    lea         eax,[ebp-14]
 00492495    push        eax
 00492496    push        1
 00492498    mov         ecx,dword ptr ds:[7C4180];^SResString124:TResStringRec
 0049249E    mov         dl,1
 004924A0    mov         eax,[0046B7EC];EFOpenError
 004924A5    call        Exception.CreateResFmt;EFOpenError.Create
 004924AA    call        @RaiseExcept
 004924AF    lea         eax,[ebx+8];TFileStream...FFileName:string
 004924B2    mov         edx,esi
 004924B4    call        @UStrAsg
 004924B9    xor         eax,eax
 004924BB    pop         edx
 004924BC    pop         ecx
 004924BD    pop         ecx
 004924BE    mov         dword ptr fs:[eax],edx
 004924C1    push        4924DB
 004924C6    lea         eax,[ebp-24]
 004924C9    mov         edx,4
 004924CE    call        @UStrArrayClr
 004924D3    ret
>004924D4    jmp         @HandleFinally
>004924D9    jmp         004924C6
 004924DB    mov         eax,ebx
 004924DD    cmp         byte ptr [ebp-1],0
>004924E1    je          004924F2
 004924E3    call        @AfterConstruction
 004924E8    pop         dword ptr fs:[0]
 004924EF    add         esp,0C
 004924F2    mov         eax,ebx
 004924F4    pop         edi
 004924F5    pop         esi
 004924F6    pop         ebx
 004924F7    mov         esp,ebp
 004924F9    pop         ebp
 004924FA    ret         8
*}
end;

//00492500
destructor TFileStream.Destroy();
begin
{*
 00492500    push        ebx
 00492501    push        esi
 00492502    call        @BeforeDestruction
 00492507    mov         ebx,edx
 00492509    mov         esi,eax
 0049250B    mov         eax,dword ptr [esi+4]
 0049250E    cmp         eax,0FFFFFFFF
>00492511    je          00492519
 00492513    push        eax
 00492514    call        kernel32.CloseHandle
 00492519    mov         dl,0FC
 0049251B    and         dl,bl
 0049251D    mov         eax,esi
 0049251F    call        TObject.Destroy
 00492524    test        bl,bl
>00492526    jle         0049252F
 00492528    mov         eax,esi
 0049252A    call        @ClassDestroy
 0049252F    pop         esi
 00492530    pop         ebx
 00492531    ret
*}
end;

//00492534
procedure TCustomMemoryStream.SetPointer(Ptr:Pointer; const Size:NativeInt);
begin
{*
 00492534    mov         dword ptr [eax+4],edx
 00492537    mov         dword ptr [eax+8],ecx
 0049253A    ret
*}
end;

//0049253C
{*function TCustomMemoryStream.Read(var Buffer:?; Count:Integer):Integer;
begin
 0049253C    push        ebx
 0049253D    push        esi
 0049253E    push        edi
 0049253F    mov         ebx,eax
 00492541    mov         edi,dword ptr [ebx+0C]
 00492544    test        edi,edi
>00492546    jl          0049256C
 00492548    test        ecx,ecx
>0049254A    jl          0049256C
 0049254C    mov         esi,dword ptr [ebx+8]
 0049254F    sub         esi,edi
 00492551    test        esi,esi
>00492553    jle         0049256C
 00492555    cmp         ecx,esi
>00492557    jge         0049255B
 00492559    mov         esi,ecx
 0049255B    mov         eax,dword ptr [ebx+4]
 0049255E    add         eax,edi
 00492560    mov         ecx,esi
 00492562    call        Move
 00492567    add         dword ptr [ebx+0C],esi
>0049256A    jmp         0049256E
 0049256C    xor         esi,esi
 0049256E    mov         eax,esi
 00492570    pop         edi
 00492571    pop         esi
 00492572    pop         ebx
 00492573    ret
end;*}

//00492574
function TCustomMemoryStream.Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;
begin
{*
 00492574    push        ebp
 00492575    mov         ebp,esp
 00492577    add         esp,0FFFFFFF8
 0049257A    push        ebx
 0049257B    push        esi
 0049257C    push        edi
 0049257D    mov         dword ptr [ebp-8],ecx
 00492580    mov         dword ptr [ebp-4],edx
 00492583    mov         ebx,eax
 00492585    mov         edi,dword ptr [ebp+8]
 00492588    mov         eax,dword ptr [ebp-4]
 0049258B    call        @DynArrayAddRef
 00492590    xor         eax,eax
 00492592    push        ebp
 00492593    push        4925F1
 00492598    push        dword ptr fs:[eax]
 0049259B    mov         dword ptr fs:[eax],esp
 0049259E    mov         eax,dword ptr [ebx+0C]
 004925A1    test        eax,eax
>004925A3    jl          004925D3
 004925A5    test        edi,edi
>004925A7    jl          004925D3
 004925A9    mov         esi,dword ptr [ebx+8]
 004925AC    sub         esi,eax
 004925AE    test        esi,esi
>004925B0    jle         004925D3
 004925B2    cmp         edi,esi
>004925B4    jge         004925B8
 004925B6    mov         esi,edi
 004925B8    mov         edx,dword ptr [ebp-4]
 004925BB    mov         ecx,dword ptr [ebp-8]
 004925BE    add         edx,ecx
 004925C0    mov         ecx,dword ptr [ebx+4]
 004925C3    add         ecx,eax
 004925C5    mov         eax,ecx
 004925C7    mov         ecx,esi
 004925C9    call        Move
 004925CE    add         dword ptr [ebx+0C],esi
>004925D1    jmp         004925D5
 004925D3    xor         esi,esi
 004925D5    xor         eax,eax
 004925D7    pop         edx
 004925D8    pop         ecx
 004925D9    pop         ecx
 004925DA    mov         dword ptr fs:[eax],edx
 004925DD    push        4925F8
 004925E2    lea         eax,[ebp-4]
 004925E5    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004925EB    call        @DynArrayClear
 004925F0    ret
>004925F1    jmp         @HandleFinally
>004925F6    jmp         004925E2
 004925F8    mov         eax,esi
 004925FA    pop         edi
 004925FB    pop         esi
 004925FC    pop         ebx
 004925FD    pop         ecx
 004925FE    pop         ecx
 004925FF    pop         ebp
 00492600    ret         4
*}
end;

//00492604
function TCustomMemoryStream.Seek(Origin:TSeekOrigin; Offset:Int64):Int64;
begin
{*
 00492604    push        ebp
 00492605    mov         ebp,esp
 00492607    add         esp,0FFFFFFF8
 0049260A    mov         ecx,eax
 0049260C    sub         dl,1
>0049260F    jb          00492619
>00492611    je          00492621
 00492613    dec         dl
>00492615    je          00492629
>00492617    jmp         00492632
 00492619    mov         eax,dword ptr [ebp+8]
 0049261C    mov         dword ptr [ecx+0C],eax
>0049261F    jmp         00492632
 00492621    mov         eax,dword ptr [ebp+8]
 00492624    add         dword ptr [ecx+0C],eax
>00492627    jmp         00492632
 00492629    mov         eax,dword ptr [ecx+8]
 0049262C    add         eax,dword ptr [ebp+8]
 0049262F    mov         dword ptr [ecx+0C],eax
 00492632    mov         eax,dword ptr [ecx+0C]
 00492635    cdq
 00492636    mov         dword ptr [ebp-8],eax
 00492639    mov         dword ptr [ebp-4],edx
 0049263C    mov         eax,dword ptr [ebp-8]
 0049263F    mov         edx,dword ptr [ebp-4]
 00492642    pop         ecx
 00492643    pop         ecx
 00492644    pop         ebp
 00492645    ret         8
*}
end;

//00492648
procedure TCustomMemoryStream.SaveToStream(Stream:TStream);
begin
{*
 00492648    push        ebx
 00492649    mov         ecx,dword ptr [eax+8]
 0049264C    test        ecx,ecx
>0049264E    je          0049265C
 00492650    mov         ebx,dword ptr [eax+4]
 00492653    xchg        ebx,edx
 00492655    mov         eax,ebx
 00492657    call        TStream.WriteBuffer
 0049265C    pop         ebx
 0049265D    ret
*}
end;

//00492660
destructor TPersistent.Destroy();
begin
{*
 00492660    push        ebx
 00492661    push        esi
 00492662    call        @BeforeDestruction
 00492667    mov         ebx,edx
 00492669    mov         esi,eax
 0049266B    mov         eax,esi
 0049266D    call        TMemoryStream.Clear
 00492672    mov         dl,0FC
 00492674    and         dl,bl
 00492676    mov         eax,esi
 00492678    call        TObject.Destroy
 0049267D    test        bl,bl
>0049267F    jle         00492688
 00492681    mov         eax,esi
 00492683    call        @ClassDestroy
 00492688    pop         esi
 00492689    pop         ebx
 0049268A    ret
*}
end;

//0049268C
procedure TMemoryStream.Clear;
begin
{*
 0049268C    push        ebx
 0049268D    mov         ebx,eax
 0049268F    xor         edx,edx
 00492691    mov         eax,ebx
 00492693    call        TMemoryStream.SetCapacity
 00492698    xor         eax,eax
 0049269A    mov         dword ptr [ebx+8],eax
 0049269D    xor         eax,eax
 0049269F    mov         dword ptr [ebx+0C],eax
 004926A2    pop         ebx
 004926A3    ret
*}
end;

//004926A4
procedure TMemoryStream.LoadFromStream(Stream:TStream);
begin
{*
 004926A4    push        ebx
 004926A5    push        esi
 004926A6    push        edi
 004926A7    mov         edi,edx
 004926A9    mov         esi,eax
 004926AB    push        0
 004926AD    push        0
 004926AF    mov         eax,edi
 004926B1    call        TStream.SetPosition
 004926B6    mov         eax,edi
 004926B8    mov         edx,dword ptr [eax]
 004926BA    call        dword ptr [edx]
 004926BC    mov         ebx,eax
 004926BE    mov         edx,ebx
 004926C0    mov         eax,esi
 004926C2    mov         ecx,dword ptr [eax]
 004926C4    call        dword ptr [ecx+4]
 004926C7    test        ebx,ebx
>004926C9    je          004926D7
 004926CB    mov         edx,dword ptr [esi+4]
 004926CE    mov         ecx,ebx
 004926D0    mov         eax,edi
 004926D2    call        TStream.ReadBuffer
 004926D7    pop         edi
 004926D8    pop         esi
 004926D9    pop         ebx
 004926DA    ret
*}
end;

//004926DC
procedure TMemoryStream.SetCapacity(NewCapacity:LongInt);
begin
{*
 004926DC    push        ebx
 004926DD    push        ecx
 004926DE    mov         dword ptr [esp],edx
 004926E1    mov         ebx,eax
 004926E3    mov         edx,esp
 004926E5    mov         eax,ebx
 004926E7    mov         ecx,dword ptr [eax]
 004926E9    call        dword ptr [ecx+28]
 004926EC    mov         edx,eax
 004926EE    mov         ecx,dword ptr [ebx+8]
 004926F1    mov         eax,ebx
 004926F3    call        TCustomMemoryStream.SetPointer
 004926F8    mov         eax,dword ptr [esp]
 004926FB    mov         dword ptr [ebx+10],eax
 004926FE    pop         edx
 004926FF    pop         ebx
 00492700    ret
*}
end;

//00492704
procedure TMemoryStream.SetSize(NewSize:Integer);
begin
{*
 00492704    push        ebx
 00492705    mov         ebx,edx
 00492707    mov         ecx,eax
 00492709    mov         eax,ebx
 0049270B    cdq
 0049270C    push        edx
 0049270D    push        eax
 0049270E    mov         eax,ecx
 00492710    mov         edx,dword ptr [eax]
 00492712    call        dword ptr [edx+8];TMemoryStream.SetSize
 00492715    pop         ebx
 00492716    ret
*}
end;

//00492718
{*procedure TMemoryStream.SetSize(NewSize:Int64; ?:?);
begin
 00492718    push        ebp
 00492719    mov         ebp,esp
 0049271B    push        ebx
 0049271C    push        esi
 0049271D    push        edi
 0049271E    mov         ebx,eax
 00492720    mov         esi,dword ptr [ebx+0C];TMemoryStream.FPosition:NativeInt
 00492723    mov         edi,dword ptr [ebp+8]
 00492726    mov         edx,edi
 00492728    mov         eax,ebx
 0049272A    call        TMemoryStream.SetCapacity
 0049272F    mov         dword ptr [ebx+8],edi;TMemoryStream.FSize:NativeInt
 00492732    mov         eax,esi
 00492734    cdq
 00492735    cmp         edx,dword ptr [ebp+0C]
>00492738    jne         00492741
 0049273A    cmp         eax,dword ptr [ebp+8]
>0049273D    jbe         00492750
>0049273F    jmp         00492743
>00492741    jle         00492750
 00492743    push        0
 00492745    push        0
 00492747    mov         dl,2
 00492749    mov         eax,ebx
 0049274B    mov         ecx,dword ptr [eax]
 0049274D    call        dword ptr [ecx+20];TCustomMemoryStream.Seek
 00492750    pop         edi
 00492751    pop         esi
 00492752    pop         ebx
 00492753    pop         ebp
 00492754    ret         8
end;*}

//00492758
function TMemoryStream.Realloc(var NewCapacity:LongInt):Pointer;
begin
{*
 00492758    push        ebx
 00492759    push        ecx
 0049275A    mov         ebx,edx
 0049275C    cmp         dword ptr [ebx],0
>0049275F    jle         00492778
 00492761    mov         edx,dword ptr [ebx]
 00492763    cmp         edx,dword ptr [eax+8]
>00492766    je          00492778
 00492768    mov         edx,dword ptr [ebx]
 0049276A    add         edx,1FFF
 00492770    and         edx,0FFFFE000
 00492776    mov         dword ptr [ebx],edx
 00492778    mov         edx,dword ptr [eax+4]
 0049277B    mov         dword ptr [esp],edx
 0049277E    mov         ecx,dword ptr [ebx]
 00492780    mov         edx,dword ptr [eax+10]
 00492783    cmp         ecx,edx
>00492785    je          004927D1
 00492787    cmp         dword ptr [ebx],0
>0049278A    jne         0049279B
 0049278C    mov         eax,dword ptr [eax+4]
 0049278F    call        @FreeMem
 00492794    xor         eax,eax
 00492796    mov         dword ptr [esp],eax
>00492799    jmp         004927D1
 0049279B    test        edx,edx
>0049279D    jne         004927AB
 0049279F    mov         eax,dword ptr [ebx]
 004927A1    call        @GetMem
 004927A6    mov         dword ptr [esp],eax
>004927A9    jmp         004927B4
 004927AB    mov         edx,dword ptr [ebx]
 004927AD    mov         eax,esp
 004927AF    call        @ReallocMem
 004927B4    cmp         dword ptr [esp],0
>004927B8    jne         004927D1
 004927BA    mov         ecx,dword ptr ds:[7C4D74];^SResString136:TResStringRec
 004927C0    mov         dl,1
 004927C2    mov         eax,[0046B594];EStreamError
 004927C7    call        Exception.CreateRes
 004927CC    call        @RaiseExcept
 004927D1    mov         eax,dword ptr [esp]
 004927D4    pop         edx
 004927D5    pop         ebx
 004927D6    ret
*}
end;

//004927D8
{*function TMemoryStream.Write(Buffer:?; Count:Integer):Integer;
begin
 004927D8    push        ebx
 004927D9    push        esi
 004927DA    push        edi
 004927DB    push        ebp
 004927DC    mov         esi,ecx
 004927DE    mov         ebp,edx
 004927E0    mov         ebx,eax
 004927E2    mov         eax,dword ptr [ebx+0C]
 004927E5    test        eax,eax
>004927E7    jl          00492821
 004927E9    test        esi,esi
>004927EB    jl          00492821
 004927ED    mov         edi,eax
 004927EF    add         edi,esi
 004927F1    test        edi,edi
>004927F3    jle         00492821
 004927F5    cmp         edi,dword ptr [ebx+8]
>004927F8    jle         0049280B
 004927FA    cmp         edi,dword ptr [ebx+10]
>004927FD    jle         00492808
 004927FF    mov         edx,edi
 00492801    mov         eax,ebx
 00492803    call        TMemoryStream.SetCapacity
 00492808    mov         dword ptr [ebx+8],edi
 0049280B    mov         edx,dword ptr [ebx+4]
 0049280E    add         edx,dword ptr [ebx+0C]
 00492811    mov         eax,ebp
 00492813    mov         ecx,esi
 00492815    call        Move
 0049281A    mov         dword ptr [ebx+0C],edi
 0049281D    mov         eax,esi
>0049281F    jmp         00492823
 00492821    xor         eax,eax
 00492823    pop         ebp
 00492824    pop         edi
 00492825    pop         esi
 00492826    pop         ebx
 00492827    ret
end;*}

//00492828
function TMemoryStream.Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;
begin
{*
 00492828    push        ebp
 00492829    mov         ebp,esp
 0049282B    add         esp,0FFFFFFF8
 0049282E    push        ebx
 0049282F    push        esi
 00492830    push        edi
 00492831    mov         dword ptr [ebp-8],ecx
 00492834    mov         dword ptr [ebp-4],edx
 00492837    mov         ebx,eax
 00492839    mov         esi,dword ptr [ebp+8]
 0049283C    mov         eax,dword ptr [ebx+0C];TMemoryStream.FPosition:NativeInt
 0049283F    test        eax,eax
>00492841    jl          00492881
 00492843    test        esi,esi
>00492845    jl          00492881
 00492847    mov         edi,eax
 00492849    add         edi,esi
 0049284B    test        edi,edi
>0049284D    jle         00492881
 0049284F    cmp         edi,dword ptr [ebx+8];TMemoryStream.FSize:NativeInt
>00492852    jle         00492865
 00492854    cmp         edi,dword ptr [ebx+10];TMemoryStream....FCapacity:Integer
>00492857    jle         00492862
 00492859    mov         edx,edi
 0049285B    mov         eax,ebx
 0049285D    call        TMemoryStream.SetCapacity
 00492862    mov         dword ptr [ebx+8],edi;TMemoryStream.FSize:NativeInt
 00492865    mov         eax,dword ptr [ebp-4]
 00492868    mov         edx,dword ptr [ebp-8]
 0049286B    add         eax,edx
 0049286D    mov         edx,dword ptr [ebx+4];TMemoryStream.FMemory:Pointer
 00492870    add         edx,dword ptr [ebx+0C];TMemoryStream.FPosition:NativeInt
 00492873    mov         ecx,esi
 00492875    call        Move
 0049287A    mov         dword ptr [ebx+0C],edi;TMemoryStream.FPosition:NativeInt
 0049287D    mov         eax,esi
>0049287F    jmp         00492883
 00492881    xor         eax,eax
 00492883    pop         edi
 00492884    pop         esi
 00492885    pop         ebx
 00492886    pop         ecx
 00492887    pop         ecx
 00492888    pop         ebp
 00492889    ret         4
*}
end;

//0049288C
constructor sub_0049288C(ABytes:TArray<System.Byte>);
begin
{*
 0049288C    push        ebp
 0049288D    mov         ebp,esp
 0049288F    add         esp,0FFFFFFF8
 00492892    push        ebx
 00492893    push        esi
 00492894    test        dl,dl
>00492896    je          004928A0
 00492898    add         esp,0FFFFFFF0
 0049289B    call        @ClassCreate
 004928A0    mov         esi,ecx
 004928A2    mov         byte ptr [ebp-1],dl
 004928A5    mov         ebx,eax
 004928A7    xor         edx,edx
 004928A9    mov         eax,ebx
 004928AB    call        TObject.Create
 004928B0    lea         eax,[ebx+14];TBytesStream......FBytes:TArray<System.Byte>
 004928B3    mov         edx,esi
 004928B5    mov         ecx,dword ptr ds:[402DD4];TArray<System.Byte>
 004928BB    call        @DynArrayAsg
 004928C0    mov         eax,dword ptr [ebx+14];TBytesStream.......FBytes:TArray<System.Byte>
 004928C3    mov         dword ptr [ebp-8],eax
 004928C6    mov         eax,dword ptr [ebp-8]
 004928C9    test        eax,eax
>004928CB    je          004928D2
 004928CD    sub         eax,4
 004928D0    mov         eax,dword ptr [eax]
 004928D2    mov         edx,dword ptr [ebx+14];TBytesStream........FBytes:TArray<System.Byte>
 004928D5    mov         ecx,eax
 004928D7    mov         eax,ebx
 004928D9    call        TCustomMemoryStream.SetPointer
 004928DE    mov         eax,dword ptr [ebx+14];TBytesStream.........FBytes:TArray<System.Byte>
 004928E1    mov         dword ptr [ebx+4],eax;TBytesStream.FMemory:Pointer
 004928E4    mov         eax,dword ptr [ebx+8];TBytesStream.FSize:NativeInt
 004928E7    mov         dword ptr [ebx+10],eax;TBytesStream.....FCapacity:Integer
 004928EA    mov         eax,ebx
 004928EC    cmp         byte ptr [ebp-1],0
>004928F0    je          00492901
 004928F2    call        @AfterConstruction
 004928F7    pop         dword ptr fs:[0]
 004928FE    add         esp,0C
 00492901    mov         eax,ebx
 00492903    pop         esi
 00492904    pop         ebx
 00492905    pop         ecx
 00492906    pop         ecx
 00492907    pop         ebp
 00492908    ret
*}
end;

//0049290C
function TBytesStream.Realloc(var NewCapacity:LongInt):Pointer;
begin
{*
 0049290C    push        ebx
 0049290D    push        esi
 0049290E    mov         ebx,edx
 00492910    mov         esi,eax
 00492912    cmp         dword ptr [ebx],0
>00492915    jle         0049292C
 00492917    mov         eax,dword ptr [ebx]
 00492919    cmp         eax,dword ptr [esi+8]
>0049291C    je          0049292C
 0049291E    mov         eax,dword ptr [ebx]
 00492920    add         eax,1FFF
 00492925    and         eax,0FFFFE000
 0049292A    mov         dword ptr [ebx],eax
 0049292C    mov         eax,dword ptr [esi+14]
 0049292F    mov         edx,dword ptr [ebx]
 00492931    cmp         edx,dword ptr [esi+10]
>00492934    je          00492972
 00492936    mov         eax,dword ptr [ebx]
 00492938    push        eax
 00492939    lea         eax,[esi+14]
 0049293C    mov         ecx,1
 00492941    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00492947    call        @DynArraySetLength
 0049294C    add         esp,4
 0049294F    mov         eax,dword ptr [esi+14]
 00492952    cmp         dword ptr [ebx],0
>00492955    je          00492972
 00492957    test        eax,eax
>00492959    jne         00492972
 0049295B    mov         ecx,dword ptr ds:[7C4D74];^SResString136:TResStringRec
 00492961    mov         dl,1
 00492963    mov         eax,[0046B594];EStreamError
 00492968    call        Exception.CreateRes
 0049296D    call        @RaiseExcept
 00492972    pop         esi
 00492973    pop         ebx
 00492974    ret
*}
end;

//00492978
constructor TStringStream.Create;
begin
{*
 00492978    push        ebp
 00492979    mov         ebp,esp
 0049297B    add         esp,0FFFFFFF4
 0049297E    push        ebx
 0049297F    push        esi
 00492980    push        edi
 00492981    xor         ebx,ebx
 00492983    mov         dword ptr [ebp-0C],ebx
 00492986    test        dl,dl
>00492988    je          00492992
 0049298A    add         esp,0FFFFFFF0
 0049298D    call        @ClassCreate
 00492992    mov         edi,ecx
 00492994    mov         byte ptr [ebp-1],dl
 00492997    mov         ebx,eax
 00492999    xor         eax,eax
 0049299B    push        ebp
 0049299C    push        492A2B
 004929A1    push        dword ptr fs:[eax]
 004929A4    mov         dword ptr fs:[eax],esp
 004929A7    test        edi,edi
>004929A9    je          004929B5
 004929AB    mov         eax,edi
 004929AD    sub         eax,0C
 004929B0    movzx       eax,word ptr [eax]
>004929B3    jmp         004929BD
 004929B5    mov         eax,[007C4388];^gvar_007C5900
 004929BA    movzx       eax,word ptr [eax]
 004929BD    movzx       esi,ax
 004929C0    test        esi,esi
>004929C2    jne         004929C8
 004929C4    mov         al,1
>004929C6    jmp         004929DD
 004929C8    call        TEncoding.GetANSI
 004929CD    mov         dword ptr [ebp-8],eax
 004929D0    mov         eax,dword ptr [ebp-8]
 004929D3    mov         edx,dword ptr [eax]
 004929D5    call        dword ptr [edx+10]
 004929D8    cmp         esi,eax
 004929DA    sete        al
 004929DD    test        al,al
>004929DF    je          004929EB
 004929E1    call        TEncoding.GetANSI
 004929E6    mov         dword ptr [ebx+18],eax
>004929E9    jmp         004929F9
 004929EB    mov         eax,esi
 004929ED    call        TEncoding.GetEncoding
 004929F2    mov         dword ptr [ebx+18],eax
 004929F5    mov         byte ptr [ebx+1C],1
 004929F9    lea         edx,[ebp-0C]
 004929FC    mov         eax,edi
 004929FE    call        00427E9C
 00492A03    mov         ecx,dword ptr [ebp-0C]
 00492A06    xor         edx,edx
 00492A08    mov         eax,ebx
 00492A0A    call        0049288C
 00492A0F    xor         eax,eax
 00492A11    pop         edx
 00492A12    pop         ecx
 00492A13    pop         ecx
 00492A14    mov         dword ptr fs:[eax],edx
 00492A17    push        492A32
 00492A1C    lea         eax,[ebp-0C]
 00492A1F    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00492A25    call        @DynArrayClear
 00492A2A    ret
>00492A2B    jmp         @HandleFinally
>00492A30    jmp         00492A1C
 00492A32    mov         eax,ebx
 00492A34    cmp         byte ptr [ebp-1],0
>00492A38    je          00492A49
 00492A3A    call        @AfterConstruction
 00492A3F    pop         dword ptr fs:[0]
 00492A46    add         esp,0C
 00492A49    mov         eax,ebx
 00492A4B    pop         edi
 00492A4C    pop         esi
 00492A4D    pop         ebx
 00492A4E    mov         esp,ebp
 00492A50    pop         ebp
 00492A51    ret
*}
end;

//00492A54
destructor TStringStream.Destroy();
begin
{*
 00492A54    push        ebx
 00492A55    push        esi
 00492A56    call        @BeforeDestruction
 00492A5B    mov         ebx,edx
 00492A5D    mov         esi,eax
 00492A5F    cmp         byte ptr [esi+1C],0;TStringStream.FOwnsEncoding:Boolean
>00492A63    je          00492A6D
 00492A65    mov         eax,dword ptr [esi+18];TStringStream.FEncoding:TEncoding
 00492A68    call        TObject.Free
 00492A6D    mov         dl,0FC
 00492A6F    and         dl,bl
 00492A71    mov         eax,esi
 00492A73    call        TPersistent.Destroy
 00492A78    test        bl,bl
>00492A7A    jle         00492A83
 00492A7C    mov         eax,esi
 00492A7E    call        @ClassDestroy
 00492A83    pop         esi
 00492A84    pop         ebx
 00492A85    ret
*}
end;

//00492A88
function TStringStream.GetDataString:UnicodeString;
begin
{*
 00492A88    push        ebx
 00492A89    push        esi
 00492A8A    mov         esi,edx
 00492A8C    mov         ebx,eax
 00492A8E    mov         eax,ebx
 00492A90    mov         edx,dword ptr [eax]
 00492A92    call        dword ptr [edx]
 00492A94    push        eax
 00492A95    push        esi
 00492A96    xor         ecx,ecx
 00492A98    mov         edx,dword ptr [ebx+14]
 00492A9B    mov         eax,dword ptr [ebx+18]
 00492A9E    call        TEncoding.GetString
 00492AA3    pop         esi
 00492AA4    pop         ebx
 00492AA5    ret
*}
end;

//00492AA8
constructor TResourceStream.Create(ResType:PWideChar; ResName:string);
begin
{*
 00492AA8    push        ebp
 00492AA9    mov         ebp,esp
 00492AAB    push        ebx
 00492AAC    push        esi
 00492AAD    push        edi
 00492AAE    test        dl,dl
>00492AB0    je          00492ABA
 00492AB2    add         esp,0FFFFFFF0
 00492AB5    call        @ClassCreate
 00492ABA    mov         esi,ecx
 00492ABC    mov         ebx,edx
 00492ABE    mov         edi,eax
 00492AC0    xor         edx,edx
 00492AC2    mov         eax,edi
 00492AC4    call        TObject.Create
 00492AC9    mov         eax,dword ptr [ebp+8]
 00492ACC    push        eax
 00492ACD    push        0
 00492ACF    mov         eax,dword ptr [ebp+0C]
 00492AD2    call        @UStrToPWChar
 00492AD7    mov         ecx,eax
 00492AD9    mov         edx,esi
 00492ADB    mov         eax,edi
 00492ADD    call        TResourceStream.Initialize
 00492AE2    mov         eax,edi
 00492AE4    test        bl,bl
>00492AE6    je          00492AF7
 00492AE8    call        @AfterConstruction
 00492AED    pop         dword ptr fs:[0]
 00492AF4    add         esp,0C
 00492AF7    mov         eax,edi
 00492AF9    pop         edi
 00492AFA    pop         esi
 00492AFB    pop         ebx
 00492AFC    pop         ebp
 00492AFD    ret         8
*}
end;

//00492B00
procedure Error;
begin
{*
 00492B00    push        ebp
 00492B01    mov         ebp,esp
 00492B03    add         esp,0FFFFFFF0
 00492B06    xor         eax,eax
 00492B08    mov         dword ptr [ebp-10],eax
 00492B0B    mov         dword ptr [ebp-4],eax
 00492B0E    xor         eax,eax
 00492B10    push        ebp
 00492B11    push        492B92
 00492B16    push        dword ptr fs:[eax]
 00492B19    mov         dword ptr fs:[eax],esp
 00492B1C    mov         eax,dword ptr [ebp+8]
 00492B1F    cmp         byte ptr [eax+8],0
>00492B23    je          00492B35
 00492B25    lea         edx,[ebp-4]
 00492B28    mov         eax,dword ptr [ebp+8]
 00492B2B    mov         eax,dword ptr [eax-4]
 00492B2E    call        IntToStr
>00492B33    jmp         00492B43
 00492B35    lea         eax,[ebp-4]
 00492B38    mov         edx,dword ptr [ebp+8]
 00492B3B    mov         edx,dword ptr [edx-4]
 00492B3E    call        @UStrFromPWChar
 00492B43    mov         eax,dword ptr [ebp-4]
 00492B46    mov         dword ptr [ebp-0C],eax
 00492B49    mov         byte ptr [ebp-8],11
 00492B4D    lea         eax,[ebp-0C]
 00492B50    push        eax
 00492B51    push        0
 00492B53    lea         edx,[ebp-10]
 00492B56    mov         eax,[007C47C0];^SResString144:TResStringRec
 00492B5B    call        LoadResString
 00492B60    mov         ecx,dword ptr [ebp-10]
 00492B63    mov         dl,1
 00492B65    mov         eax,[0046BB3C];EResNotFound
 00492B6A    call        Exception.CreateFmt
 00492B6F    call        @RaiseExcept
 00492B74    xor         eax,eax
 00492B76    pop         edx
 00492B77    pop         ecx
 00492B78    pop         ecx
 00492B79    mov         dword ptr fs:[eax],edx
 00492B7C    push        492B99
 00492B81    lea         eax,[ebp-10]
 00492B84    call        @UStrClr
 00492B89    lea         eax,[ebp-4]
 00492B8C    call        @UStrClr
 00492B91    ret
>00492B92    jmp         @HandleFinally
>00492B97    jmp         00492B81
 00492B99    mov         esp,ebp
 00492B9B    pop         ebp
 00492B9C    ret
*}
end;

//00492BA0
procedure TResourceStream.Initialize(Instance:Windows.THandle; Name:PChar; ResType:PChar; FromID:Boolean);
begin
{*
 00492BA0    push        ebp
 00492BA1    mov         ebp,esp
 00492BA3    push        ecx
 00492BA4    push        ebx
 00492BA5    push        esi
 00492BA6    push        edi
 00492BA7    mov         dword ptr [ebp-4],ecx
 00492BAA    mov         esi,edx
 00492BAC    mov         ebx,eax
 00492BAE    mov         eax,dword ptr [ebp+0C]
 00492BB1    push        eax
 00492BB2    mov         eax,dword ptr [ebp-4]
 00492BB5    push        eax
 00492BB6    push        esi
 00492BB7    call        kernel32.FindResourceW
 00492BBC    mov         edi,eax
 00492BBE    mov         dword ptr [ebx+10],edi
 00492BC1    test        edi,edi
>00492BC3    jne         00492BCC
 00492BC5    push        ebp
 00492BC6    call        Error
 00492BCB    pop         ecx
 00492BCC    mov         eax,dword ptr [ebx+10]
 00492BCF    push        eax
 00492BD0    push        esi
 00492BD1    call        kernel32.LoadResource
 00492BD6    mov         edi,eax
 00492BD8    mov         dword ptr [ebx+14],edi
 00492BDB    test        edi,edi
>00492BDD    jne         00492BE6
 00492BDF    push        ebp
 00492BE0    call        Error
 00492BE5    pop         ecx
 00492BE6    mov         eax,dword ptr [ebx+10]
 00492BE9    push        eax
 00492BEA    push        esi
 00492BEB    call        kernel32.SizeofResource
 00492BF0    push        eax
 00492BF1    mov         eax,dword ptr [ebx+14]
 00492BF4    push        eax
 00492BF5    call        kernel32.LockResource
 00492BFA    mov         edx,eax
 00492BFC    mov         eax,ebx
 00492BFE    pop         ecx
 00492BFF    call        TCustomMemoryStream.SetPointer
 00492C04    pop         edi
 00492C05    pop         esi
 00492C06    pop         ebx
 00492C07    pop         ecx
 00492C08    pop         ebp
 00492C09    ret         8
*}
end;

//00492C0C
destructor TResourceStream.Destroy();
begin
{*
 00492C0C    push        ebx
 00492C0D    push        esi
 00492C0E    call        @BeforeDestruction
 00492C13    mov         ebx,edx
 00492C15    mov         esi,eax
 00492C17    mov         eax,dword ptr [esi+14]
 00492C1A    push        eax
 00492C1B    call        kernel32.FreeResource
 00492C20    mov         dl,0FC
 00492C22    and         dl,bl
 00492C24    mov         eax,esi
 00492C26    call        TObject.Destroy
 00492C2B    test        bl,bl
>00492C2D    jle         00492C36
 00492C2F    mov         eax,esi
 00492C31    call        @ClassDestroy
 00492C36    pop         esi
 00492C37    pop         ebx
 00492C38    ret
*}
end;

//00492C3C
{*function TResourceStream.Write(Buffer:?; Count:Integer):Integer;
begin
 00492C3C    mov         ecx,dword ptr ds:[7C4814];^SResString116:TResStringRec
 00492C42    mov         dl,1
 00492C44    mov         eax,[0046B594];EStreamError
 00492C49    call        Exception.CreateRes
 00492C4E    call        @RaiseExcept
 00492C53    ret
end;*}

//00492C54
function TResourceStream.Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;
begin
{*
 00492C54    push        ebp
 00492C55    mov         ebp,esp
 00492C57    mov         ecx,dword ptr ds:[7C4814];^SResString116:TResStringRec
 00492C5D    mov         dl,1
 00492C5F    mov         eax,[0046B594];EStreamError
 00492C64    call        Exception.CreateRes
 00492C69    call        @RaiseExcept
 00492C6E    pop         ebp
 00492C6F    ret         4
*}
end;

//00492C74
constructor TFiler.Create(BufSize:Integer);
begin
{*
 00492C74    push        ebp
 00492C75    mov         ebp,esp
 00492C77    push        ecx
 00492C78    push        ebx
 00492C79    push        esi
 00492C7A    push        edi
 00492C7B    test        dl,dl
>00492C7D    je          00492C87
 00492C7F    add         esp,0FFFFFFF0
 00492C82    call        @ClassCreate
 00492C87    mov         edi,ecx
 00492C89    mov         byte ptr [ebp-1],dl
 00492C8C    mov         ebx,eax
 00492C8E    mov         esi,dword ptr [ebp+8]
 00492C91    xor         edx,edx
 00492C93    mov         eax,ebx
 00492C95    call        TObject.Create
 00492C9A    mov         dword ptr [ebx+4],edi
 00492C9D    mov         dword ptr [ebx+0C],esi
 00492CA0    push        esi
 00492CA1    lea         eax,[ebx+8]
 00492CA4    mov         ecx,1
 00492CA9    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00492CAF    call        @DynArraySetLength
 00492CB4    add         esp,4
 00492CB7    mov         eax,ebx
 00492CB9    cmp         byte ptr [ebp-1],0
>00492CBD    je          00492CCE
 00492CBF    call        @AfterConstruction
 00492CC4    pop         dword ptr fs:[0]
 00492CCB    add         esp,0C
 00492CCE    mov         eax,ebx
 00492CD0    pop         edi
 00492CD1    pop         esi
 00492CD2    pop         ebx
 00492CD3    pop         ecx
 00492CD4    pop         ebp
 00492CD5    ret         4
*}
end;

//00492CD8
destructor TFiler.Destroy();
begin
{*
 00492CD8    push        ebx
 00492CD9    push        esi
 00492CDA    call        @BeforeDestruction
 00492CDF    mov         ebx,edx
 00492CE1    mov         esi,eax
 00492CE3    lea         eax,[esi+8]
 00492CE6    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00492CEC    call        @DynArrayClear
 00492CF1    test        bl,bl
>00492CF3    jle         00492CFC
 00492CF5    mov         eax,esi
 00492CF7    call        @ClassDestroy
 00492CFC    pop         esi
 00492CFD    pop         ebx
 00492CFE    ret
*}
end;

//00492D00
procedure TFiler.SetRoot(Value:TComponent);
begin
{*
 00492D00    mov         dword ptr [eax+18],edx
 00492D03    ret
*}
end;

//004946FC
constructor TPropFixup.Create(Name:string; RootName:string; PropInfo:PPropInfo; InstanceRoot:TComponent);
begin
{*
 004946FC    push        ebp
 004946FD    mov         ebp,esp
 004946FF    push        ebx
 00494700    push        esi
 00494701    test        dl,dl
>00494703    je          0049470D
 00494705    add         esp,0FFFFFFF0
 00494708    call        @ClassCreate
 0049470D    mov         ebx,edx
 0049470F    mov         esi,eax
 00494711    mov         dword ptr [esi+4],ecx
 00494714    mov         eax,dword ptr [ebp+14]
 00494717    mov         dword ptr [esi+8],eax
 0049471A    mov         eax,dword ptr [ebp+10]
 0049471D    mov         dword ptr [esi+0C],eax
 00494720    lea         eax,[esi+10]
 00494723    mov         edx,dword ptr [ebp+0C]
 00494726    call        @UStrAsg
 0049472B    lea         eax,[esi+14]
 0049472E    mov         edx,dword ptr [ebp+8]
 00494731    call        @UStrAsg
 00494736    mov         eax,esi
 00494738    test        bl,bl
>0049473A    je          0049474B
 0049473C    call        @AfterConstruction
 00494741    pop         dword ptr fs:[0]
 00494748    add         esp,0C
 0049474B    mov         eax,esi
 0049474D    pop         esi
 0049474E    pop         ebx
 0049474F    pop         ebp
 00494750    ret         10
*}
end;

//00494754
function TPropFixup.MakeGlobalReference:Boolean;
begin
{*
 00494754    push        ebx
 00494755    push        esi
 00494756    push        edi
 00494757    push        ebp
 00494758    mov         edi,eax
 0049475A    xor         ebx,ebx
 0049475C    mov         eax,dword ptr [edi+14]
 0049475F    call        @UStrToPWChar
 00494764    mov         esi,eax
 00494766    mov         ebp,esi
>00494768    jmp         0049476D
 0049476A    add         ebp,2
 0049476D    movzx       eax,word ptr [ebp]
 00494771    test        ax,ax
>00494774    je          0049477C
 00494776    sub         ax,2E
>0049477A    jne         0049476A
 0049477C    cmp         word ptr [ebp],0
>00494781    je          004947AC
 00494783    mov         ebx,ebp
 00494785    sub         ebx,esi
 00494787    sar         ebx,1
>00494789    jns         0049478E
 0049478B    adc         ebx,0
 0049478E    mov         ecx,ebx
 00494790    lea         eax,[edi+10]
 00494793    mov         edx,esi
 00494795    call        @UStrFromPWCharLen
 0049479A    mov         ecx,ebx
 0049479C    inc         ecx
 0049479D    lea         eax,[edi+14]
 004947A0    mov         edx,1
 004947A5    call        @UStrDelete
 004947AA    mov         bl,1
 004947AC    mov         eax,ebx
 004947AE    pop         ebp
 004947AF    pop         edi
 004947B0    pop         esi
 004947B1    pop         ebx
 004947B2    ret
*}
end;

//004947B4
procedure TPropFixup.ResolveReference(Reference:Pointer);
begin
{*
 004947B4    mov         ecx,edx
 004947B6    mov         edx,dword ptr [eax+4]
 004947B9    mov         eax,dword ptr [eax+0C]
 004947BC    xchg        eax,edx
 004947BD    call        SetOrdProp
 004947C2    ret
*}
end;

//004947C4
procedure TPropIntfFixup.ResolveReference(Reference:Pointer);
begin
{*
 004947C4    push        ebp
 004947C5    mov         ebp,esp
 004947C7    add         esp,0FFFFFFEC
 004947CA    push        ebx
 004947CB    push        esi
 004947CC    push        edi
 004947CD    xor         ecx,ecx
 004947CF    mov         dword ptr [ebp-4],ecx
 004947D2    mov         esi,edx
 004947D4    mov         ebx,eax
 004947D6    xor         eax,eax
 004947D8    push        ebp
 004947D9    push        49484C
 004947DE    push        dword ptr fs:[eax]
 004947E1    mov         dword ptr fs:[eax],esp
 004947E4    lea         eax,[ebp-4]
 004947E7    call        @IntfClear
 004947EC    test        esi,esi
>004947EE    je          00494828
 004947F0    mov         eax,dword ptr [ebx+0C];TPropIntfFixup.FPropInfo:PPropInfo
 004947F3    mov         eax,dword ptr [eax]
 004947F5    mov         eax,dword ptr [eax]
 004947F7    call        GetTypeData
 004947FC    push        esi
 004947FD    lea         esi,[eax+5]
 00494800    lea         edi,[ebp-14]
 00494803    movs        dword ptr [edi],dword ptr [esi]
 00494804    movs        dword ptr [edi],dword ptr [esi]
 00494805    movs        dword ptr [edi],dword ptr [esi]
 00494806    movs        dword ptr [edi],dword ptr [esi]
 00494807    pop         esi
 00494808    lea         eax,[ebp-4]
 0049480B    call        @IntfClear
 00494810    mov         ecx,eax
 00494812    lea         edx,[ebp-14]
 00494815    mov         eax,esi
 00494817    call        Supports
 0049481C    test        al,al
>0049481E    jne         00494828
 00494820    lea         eax,[ebp-4]
 00494823    call        @IntfClear
 00494828    mov         ecx,dword ptr [ebp-4]
 0049482B    mov         edx,dword ptr [ebx+0C];TPropIntfFixup.FPropInfo:PPropInfo
 0049482E    mov         eax,dword ptr [ebx+4];TPropIntfFixup.FInstance:TPersistent
 00494831    call        SetInterfaceProp
 00494836    xor         eax,eax
 00494838    pop         edx
 00494839    pop         ecx
 0049483A    pop         ecx
 0049483B    mov         dword ptr fs:[eax],edx
 0049483E    push        494853
 00494843    lea         eax,[ebp-4]
 00494846    call        @IntfClear
 0049484B    ret
>0049484C    jmp         @HandleFinally
>00494851    jmp         00494843
 00494853    pop         edi
 00494854    pop         esi
 00494855    pop         ebx
 00494856    mov         esp,ebp
 00494858    pop         ebp
 00494859    ret
*}
end;

//0049485C
{*function sub_0049485C(?:TComponent; ?:?):?;
begin
 0049485C    push        ebp
 0049485D    mov         ebp,esp
 0049485F    add         esp,0FFFFFFF0
 00494862    push        ebx
 00494863    push        esi
 00494864    push        edi
 00494865    xor         ecx,ecx
 00494867    mov         dword ptr [ebp-4],ecx
 0049486A    mov         ebx,edx
 0049486C    mov         esi,eax
 0049486E    xor         eax,eax
 00494870    push        ebp
 00494871    push        494961
 00494876    push        dword ptr fs:[eax]
 00494879    mov         dword ptr fs:[eax],esp
 0049487C    xor         eax,eax
 0049487E    mov         dword ptr [ebp-8],eax
 00494881    test        ebx,ebx
>00494883    je          0049494B
 00494889    mov         dword ptr [ebp-0C],esi
 0049488C    mov         eax,ebx
 0049488E    call        @UStrToPWChar
 00494893    mov         ebx,eax
>00494895    jmp         0049493B
 0049489A    mov         edi,ebx
>0049489C    jmp         004948A1
 0049489E    add         ebx,2
 004948A1    movzx       eax,word ptr [ebx]
 004948A4    test        ax,ax
>004948A7    je          004948B2
 004948A9    add         eax,0FFFFFFD3
 004948AC    sub         ax,2
>004948B0    jae         0049489E
 004948B2    mov         ecx,ebx
 004948B4    sub         ecx,edi
 004948B6    sar         ecx,1
>004948B8    jns         004948BD
 004948BA    adc         ecx,0
 004948BD    lea         eax,[ebp-4]
 004948C0    mov         edx,edi
 004948C2    call        @UStrFromPWCharLen
 004948C7    mov         edx,dword ptr [ebp-4]
 004948CA    mov         eax,dword ptr [ebp-0C]
 004948CD    call        TComponent.FindComponent
 004948D2    mov         esi,eax
 004948D4    test        esi,esi
>004948D6    jne         00494919
 004948D8    mov         eax,dword ptr [ebp-4]
 004948DB    cmp         eax,494980;'Owner'
>004948E0    jne         004948E8
 004948E2    mov         byte ptr [ebp-0D],1
>004948E6    jmp         00494910
 004948E8    cmp         dword ptr [ebp-4],0
>004948EC    je          004948F7
 004948EE    mov         eax,494980;'Owner'
 004948F3    test        eax,eax
>004948F5    jne         004948FD
 004948F7    mov         byte ptr [ebp-0D],0
>004948FB    jmp         00494910
 004948FD    mov         edx,494980;'Owner'
 00494902    mov         eax,dword ptr [ebp-4]
 00494905    call        CompareText
 0049490A    test        eax,eax
 0049490C    sete        byte ptr [ebp-0D]
 00494910    cmp         byte ptr [ebp-0D],0
>00494914    je          00494919
 00494916    mov         esi,dword ptr [ebp-0C]
 00494919    test        esi,esi
>0049491B    je          0049494B
 0049491D    cmp         word ptr [ebx],2E
>00494921    jne         00494926
 00494923    add         ebx,2
 00494926    cmp         word ptr [ebx],2D
>0049492A    jne         0049492F
 0049492C    add         ebx,2
 0049492F    cmp         word ptr [ebx],3E
>00494933    jne         00494938
 00494935    add         ebx,2
 00494938    mov         dword ptr [ebp-0C],esi
 0049493B    cmp         word ptr [ebx],0
>0049493F    jne         0049489A
 00494945    mov         eax,dword ptr [ebp-0C]
 00494948    mov         dword ptr [ebp-8],eax
 0049494B    xor         eax,eax
 0049494D    pop         edx
 0049494E    pop         ecx
 0049494F    pop         ecx
 00494950    mov         dword ptr fs:[eax],edx
 00494953    push        494968
 00494958    lea         eax,[ebp-4]
 0049495B    call        @UStrClr
 00494960    ret
>00494961    jmp         @HandleFinally
>00494966    jmp         00494958
 00494968    mov         eax,dword ptr [ebp-8]
 0049496B    pop         edi
 0049496C    pop         esi
 0049496D    pop         ebx
 0049496E    mov         esp,ebp
 00494970    pop         ebp
 00494971    ret
end;*}

//0049498C
{*procedure sub_0049498C(?:?; ?:?);
begin
 0049498C    push        ebp
 0049498D    mov         ebp,esp
 0049498F    add         esp,0FFFFFFD8
 00494992    push        ebx
 00494993    push        esi
 00494994    mov         ebx,eax
 00494996    mov         eax,dword ptr [ebp+8]
 00494999    mov         eax,dword ptr [eax-4]
 0049499C    mov         esi,ebx
 0049499E    mov         dword ptr [ebp-4],esi
 004949A1    add         eax,8
 004949A4    mov         dword ptr [ebp-8],eax
 004949A7    lea         edx,[ebp-4]
 004949AA    mov         eax,dword ptr [ebp-8]
 004949AD    call        00434714
 004949B2    test        eax,eax
>004949B4    jge         004949E8
 004949B6    mov         eax,dword ptr [ebp+8]
 004949B9    mov         eax,dword ptr [eax-8]
 004949BC    mov         dword ptr [ebp-0C],esi
 004949BF    add         eax,8
 004949C2    mov         dword ptr [ebp-10],eax
 004949C5    lea         edx,[ebp-0C]
 004949C8    mov         eax,dword ptr [ebp-10]
 004949CB    call        00434714
 004949D0    test        eax,eax
>004949D2    jl          004949E8
 004949D4    mov         eax,dword ptr [ebp+8]
 004949D7    mov         eax,dword ptr [eax-4]
 004949DA    mov         dword ptr [ebp-20],esi
 004949DD    lea         edx,[ebp-20]
 004949E0    add         eax,8
 004949E3    call        0043489C
 004949E8    pop         esi
 004949E9    pop         ebx
 004949EA    mov         esp,ebp
 004949EC    pop         ebp
 004949ED    ret
end;*}

//004949F0
{*procedure sub_004949F0(?:?; ?:?);
begin
 004949F0    push        ebp
 004949F1    mov         ebp,esp
 004949F3    add         esp,0FFFFFFD0
 004949F6    push        ebx
 004949F7    push        esi
 004949F8    mov         ebx,eax
 004949FA    mov         eax,dword ptr [ebp+8]
 004949FD    mov         eax,dword ptr [eax-4]
 00494A00    mov         esi,ebx
 00494A02    mov         dword ptr [ebp-4],esi
 00494A05    add         eax,8
 00494A08    mov         dword ptr [ebp-8],eax
 00494A0B    lea         edx,[ebp-4]
 00494A0E    mov         eax,dword ptr [ebp-8]
 00494A11    call        00434714
 00494A16    cmp         eax,0FFFFFFFF
>00494A19    je          00494A2C
 00494A1B    mov         edx,dword ptr [ebp+8]
 00494A1E    mov         edx,dword ptr [edx-4]
 00494A21    add         edx,8
 00494A24    mov         cl,1
 00494A26    xchg        eax,edx
 00494A27    call        00435200
 00494A2C    mov         eax,dword ptr [ebp+8]
 00494A2F    mov         eax,dword ptr [eax-8]
 00494A32    mov         dword ptr [ebp-0C],esi
 00494A35    add         eax,8
 00494A38    mov         dword ptr [ebp-14],eax
 00494A3B    lea         edx,[ebp-0C]
 00494A3E    mov         eax,dword ptr [ebp-14]
 00494A41    call        00434714
 00494A46    test        eax,eax
>00494A48    jge         00494A5E
 00494A4A    mov         eax,dword ptr [ebp+8]
 00494A4D    mov         eax,dword ptr [eax-8]
 00494A50    mov         dword ptr [ebp-28],esi
 00494A53    lea         edx,[ebp-28]
 00494A56    add         eax,8
 00494A59    call        0043489C
 00494A5E    pop         esi
 00494A5F    pop         ebx
 00494A60    mov         esp,ebp
 00494A62    pop         ebp
 00494A63    ret
end;*}

//00494A64
procedure sub_00494A64;
begin
{*
 00494A64    push        ebp
 00494A65    mov         ebp,esp
 00494A67    add         esp,0FFFFFFF0
 00494A6A    push        ebx
 00494A6B    push        esi
 00494A6C    push        edi
 00494A6D    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 00494A72    mov         edx,dword ptr [eax]
 00494A74    call        dword ptr [edx+14]
 00494A77    xor         eax,eax
 00494A79    push        ebp
 00494A7A    push        494C35
 00494A7F    push        dword ptr fs:[eax]
 00494A82    mov         dword ptr fs:[eax],esp
 00494A85    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 00494A8A    call        TThreadList<System.Classes.TPropFixup>.LockList
 00494A8F    mov         edi,eax
 00494A91    xor         eax,eax
 00494A93    push        ebp
 00494A94    push        494C16
 00494A99    push        dword ptr fs:[eax]
 00494A9C    mov         dword ptr fs:[eax],esp
 00494A9F    cmp         dword ptr [edi+8],0;TList<System.Classes.TPropFixup>.FCount:Integer
>00494AA3    jle         00494BFB
 00494AA9    mov         dl,1
 00494AAB    mov         eax,[0049B3A8];TList<System.Classes.TPersistent>
 00494AB0    call        004A7684
 00494AB5    mov         dword ptr [ebp-4],eax
 00494AB8    xor         eax,eax
 00494ABA    push        ebp
 00494ABB    push        494BF4
 00494AC0    push        dword ptr fs:[eax]
 00494AC3    mov         dword ptr fs:[eax],esp
 00494AC6    mov         dl,1
 00494AC8    mov         eax,[0049B3A8];TList<System.Classes.TPersistent>
 00494ACD    call        004A7684
 00494AD2    mov         dword ptr [ebp-8],eax
 00494AD5    xor         eax,eax
 00494AD7    push        ebp
 00494AD8    push        494B98
 00494ADD    push        dword ptr fs:[eax]
 00494AE0    mov         dword ptr fs:[eax],esp
 00494AE3    xor         ebx,ebx
>00494AE5    jmp         00494B79
 00494AEA    lea         eax,[edi+8];TList<System.Classes.TPropFixup>.FCount:Integer
 00494AED    mov         edx,ebx
 00494AEF    call        00434534
 00494AF4    mov         eax,dword ptr [edi+20]
 00494AF7    mov         esi,dword ptr [eax+ebx*4]
 00494AFA    mov         eax,dword ptr [esi+10]
 00494AFD    call        FindGlobalComponent
 00494B02    mov         dword ptr [ebp-0C],eax
 00494B05    cmp         dword ptr [ebp-0C],0
>00494B09    jne         00494B1A
 00494B0B    mov         edx,dword ptr [esi+0C]
 00494B0E    mov         eax,dword ptr [esi+4]
 00494B11    call        GetOrdProp
 00494B16    test        eax,eax
>00494B18    je          00494B6E
 00494B1A    cmp         dword ptr [ebp-0C],0
>00494B1E    je          00494B4F
 00494B20    mov         eax,dword ptr [ebp-0C]
 00494B23    test        byte ptr [eax+1C],2;TComponent.FComponentState:TComponentState
>00494B27    jne         00494B42
 00494B29    mov         edx,dword ptr [esi+14]
 00494B2C    mov         eax,dword ptr [ebp-0C]
 00494B2F    call        0049485C
 00494B34    mov         dword ptr [ebp-10],eax
 00494B37    mov         edx,dword ptr [ebp-10]
 00494B3A    mov         eax,esi
 00494B3C    mov         ecx,dword ptr [eax]
 00494B3E    call        dword ptr [ecx]
>00494B40    jmp         00494B4F
 00494B42    push        ebp
 00494B43    mov         eax,dword ptr [esi+4]
 00494B46    call        004949F0
 00494B4B    pop         ecx
 00494B4C    inc         ebx
>00494B4D    jmp         00494B79
 00494B4F    push        ebp
 00494B50    mov         eax,dword ptr [esi+4]
 00494B53    call        0049498C
 00494B58    pop         ecx
 00494B59    lea         eax,[edi+8];TList<System.Classes.TPropFixup>.FCount:Integer
 00494B5C    mov         cl,1
 00494B5E    mov         edx,ebx
 00494B60    call        00435200
 00494B65    mov         eax,esi
 00494B67    call        TObject.Free
>00494B6C    jmp         00494B79
 00494B6E    push        ebp
 00494B6F    mov         eax,dword ptr [esi+4]
 00494B72    call        004949F0
 00494B77    pop         ecx
 00494B78    inc         ebx
 00494B79    cmp         ebx,dword ptr [edi+8];TList<System.Classes.TPropFixup>.FCount:Integer
>00494B7C    jl          00494AEA
 00494B82    xor         eax,eax
 00494B84    pop         edx
 00494B85    pop         ecx
 00494B86    pop         ecx
 00494B87    mov         dword ptr fs:[eax],edx
 00494B8A    push        494B9F
 00494B8F    mov         eax,dword ptr [ebp-8]
 00494B92    call        TObject.Free
 00494B97    ret
>00494B98    jmp         @HandleFinally
>00494B9D    jmp         00494B8F
 00494B9F    mov         eax,dword ptr [ebp-4]
 00494BA2    mov         esi,dword ptr [eax+8];TList<System.Classes.TPersistent>.FCount:Integer
 00494BA5    dec         esi
 00494BA6    test        esi,esi
>00494BA8    jl          00494BDE
 00494BAA    inc         esi
 00494BAB    xor         ebx,ebx
 00494BAD    mov         eax,dword ptr [ebp-4]
 00494BB0    add         eax,8;TList<System.Classes.TPersistent>.FCount:Integer
 00494BB3    mov         edx,ebx
 00494BB5    call        00434534
 00494BBA    mov         eax,dword ptr [ebp-4]
 00494BBD    mov         eax,dword ptr [eax+20]
 00494BC0    mov         edi,dword ptr [eax+ebx*4]
 00494BC3    mov         eax,edi
 00494BC5    mov         edx,dword ptr ds:[478C44];TComponent
 00494BCB    call        @IsClass
 00494BD0    test        al,al
>00494BD2    je          00494BDA
 00494BD4    and         word ptr [edi+1C],0FF7F
 00494BDA    inc         ebx
 00494BDB    dec         esi
>00494BDC    jne         00494BAD
 00494BDE    xor         eax,eax
 00494BE0    pop         edx
 00494BE1    pop         ecx
 00494BE2    pop         ecx
 00494BE3    mov         dword ptr fs:[eax],edx
 00494BE6    push        494BFB
 00494BEB    mov         eax,dword ptr [ebp-4]
 00494BEE    call        TObject.Free
 00494BF3    ret
>00494BF4    jmp         @HandleFinally
>00494BF9    jmp         00494BEB
 00494BFB    xor         eax,eax
 00494BFD    pop         edx
 00494BFE    pop         ecx
 00494BFF    pop         ecx
 00494C00    mov         dword ptr fs:[eax],edx
 00494C03    push        494C1D
 00494C08    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 00494C0D    mov         eax,dword ptr [eax+8]
 00494C10    call        TMonitor.Exit
 00494C15    ret
>00494C16    jmp         @HandleFinally
>00494C1B    jmp         00494C08
 00494C1D    xor         eax,eax
 00494C1F    pop         edx
 00494C20    pop         ecx
 00494C21    pop         ecx
 00494C22    mov         dword ptr fs:[eax],edx
 00494C25    push        494C3C
 00494C2A    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 00494C2F    mov         edx,dword ptr [eax]
 00494C31    call        dword ptr [edx+18]
 00494C34    ret
>00494C35    jmp         @HandleFinally
>00494C3A    jmp         00494C2A
 00494C3C    pop         edi
 00494C3D    pop         esi
 00494C3E    pop         ebx
 00494C3F    mov         esp,ebp
 00494C41    pop         ebp
 00494C42    ret
*}
end;

//00494C0D
procedure TThreadList<System.IInterface>.UnlockList;
begin
{*
 00494C0D    mov         eax,dword ptr [eax+8]
 00494C10    call        TMonitor.Exit
 00494C15    ret
*}
end;

//00494C44
procedure RemoveFixupReferences(const Root:TComponent; const RootName:UnicodeString);
begin
{*
 00494C44    push        ebp
 00494C45    mov         ebp,esp
 00494C47    add         esp,0FFFFFFF4
 00494C4A    push        ebx
 00494C4B    push        esi
 00494C4C    push        edi
 00494C4D    mov         dword ptr [ebp-8],edx
 00494C50    mov         dword ptr [ebp-4],eax
 00494C53    cmp         dword ptr ds:[7CA3E0],0;gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
>00494C5A    je          00494D1C
 00494C60    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 00494C65    call        TThreadList<System.Classes.TPropFixup>.LockList
 00494C6A    mov         esi,eax
 00494C6C    xor         edx,edx
 00494C6E    push        ebp
 00494C6F    push        494D15
 00494C74    push        dword ptr fs:[edx]
 00494C77    mov         dword ptr fs:[edx],esp
 00494C7A    mov         ebx,dword ptr [esi+8]
 00494C7D    dec         ebx
 00494C7E    cmp         ebx,0
>00494C81    jl          00494CFA
 00494C83    lea         eax,[esi+8]
 00494C86    mov         edx,ebx
 00494C88    call        00434534
 00494C8D    mov         eax,dword ptr [esi+20]
 00494C90    mov         edi,dword ptr [eax+ebx*4]
 00494C93    cmp         dword ptr [ebp-4],0
>00494C97    je          00494CA1
 00494C99    mov         eax,dword ptr [edi+8]
 00494C9C    cmp         eax,dword ptr [ebp-4]
>00494C9F    jne         00494CF4
 00494CA1    cmp         dword ptr [ebp-8],0
>00494CA5    jne         00494CAB
 00494CA7    mov         al,1
>00494CA9    jmp         00494CDD
 00494CAB    mov         eax,dword ptr [edi+10]
 00494CAE    mov         dword ptr [ebp-0C],eax
 00494CB1    mov         eax,dword ptr [ebp-8]
 00494CB4    cmp         eax,dword ptr [ebp-0C]
>00494CB7    jne         00494CBD
 00494CB9    mov         al,1
>00494CBB    jmp         00494CDD
 00494CBD    cmp         dword ptr [ebp-8],0
>00494CC1    je          00494CC9
 00494CC3    cmp         dword ptr [ebp-0C],0
>00494CC7    jne         00494CCD
 00494CC9    xor         eax,eax
>00494CCB    jmp         00494CDD
 00494CCD    mov         edx,dword ptr [ebp-0C]
 00494CD0    mov         eax,dword ptr [ebp-8]
 00494CD3    call        CompareText
 00494CD8    test        eax,eax
 00494CDA    sete        al
 00494CDD    test        al,al
>00494CDF    je          00494CF4
 00494CE1    lea         eax,[esi+8]
 00494CE4    mov         cl,1
 00494CE6    mov         edx,ebx
 00494CE8    call        00435200
 00494CED    mov         eax,edi
 00494CEF    call        TObject.Free
 00494CF4    dec         ebx
 00494CF5    cmp         ebx,0FFFFFFFF
>00494CF8    jne         00494C83
 00494CFA    xor         eax,eax
 00494CFC    pop         edx
 00494CFD    pop         ecx
 00494CFE    pop         ecx
 00494CFF    mov         dword ptr fs:[eax],edx
 00494D02    push        494D1C
 00494D07    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 00494D0C    mov         eax,dword ptr [eax+8]
 00494D0F    call        TMonitor.Exit
 00494D14    ret
>00494D15    jmp         @HandleFinally
>00494D1A    jmp         00494D07
 00494D1C    pop         edi
 00494D1D    pop         esi
 00494D1E    pop         ebx
 00494D1F    mov         esp,ebp
 00494D21    pop         ebp
 00494D22    ret
*}
end;

//00494D24
procedure TMemoryStream.Clear;
begin
{*
 00494D24    push        ebp
 00494D25    mov         ebp,esp
 00494D27    push        ecx
 00494D28    push        ebx
 00494D29    push        esi
 00494D2A    push        edi
 00494D2B    mov         dword ptr [ebp-4],eax
 00494D2E    cmp         dword ptr ds:[7CA3E0],0;gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
>00494D35    je          00494DAD
 00494D37    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 00494D3C    call        TThreadList<System.Classes.TPropFixup>.LockList
 00494D41    mov         esi,eax
 00494D43    xor         eax,eax
 00494D45    push        ebp
 00494D46    push        494DA6
 00494D4B    push        dword ptr fs:[eax]
 00494D4E    mov         dword ptr fs:[eax],esp
 00494D51    mov         ebx,dword ptr [esi+8]
 00494D54    dec         ebx
 00494D55    cmp         ebx,0
>00494D58    jl          00494D8B
 00494D5A    lea         eax,[esi+8]
 00494D5D    mov         edx,ebx
 00494D5F    call        00434534
 00494D64    mov         eax,dword ptr [esi+20]
 00494D67    mov         edi,dword ptr [eax+ebx*4]
 00494D6A    mov         eax,dword ptr [edi+4]
 00494D6D    cmp         eax,dword ptr [ebp-4]
>00494D70    jne         00494D85
 00494D72    lea         eax,[esi+8]
 00494D75    mov         cl,1
 00494D77    mov         edx,ebx
 00494D79    call        00435200
 00494D7E    mov         eax,edi
 00494D80    call        TObject.Free
 00494D85    dec         ebx
 00494D86    cmp         ebx,0FFFFFFFF
>00494D89    jne         00494D5A
 00494D8B    xor         eax,eax
 00494D8D    pop         edx
 00494D8E    pop         ecx
 00494D8F    pop         ecx
 00494D90    mov         dword ptr fs:[eax],edx
 00494D93    push        494DAD
 00494D98    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 00494D9D    mov         eax,dword ptr [eax+8]
 00494DA0    call        TMonitor.Exit
 00494DA5    ret
>00494DA6    jmp         @HandleFinally
>00494DAB    jmp         00494D98
 00494DAD    pop         edi
 00494DAE    pop         esi
 00494DAF    pop         ebx
 00494DB0    pop         ecx
 00494DB1    pop         ebp
 00494DB2    ret
*}
end;

//00494DB4
procedure ReadError(Ident:PResStringRec);
begin
{*
 00494DB4    push        ebx
 00494DB5    mov         ebx,eax
 00494DB7    mov         ecx,ebx
 00494DB9    mov         dl,1
 00494DBB    mov         eax,[0046B93C];EReadError
 00494DC0    call        Exception.CreateRes
 00494DC5    call        @RaiseExcept
 00494DCA    pop         ebx
 00494DCB    ret
*}
end;

//00494DCC
procedure PropValueError;
begin
{*
 00494DCC    mov         eax,[007C49AC];^SResString131:TResStringRec
 00494DD1    call        ReadError
 00494DD6    ret
*}
end;

//00494DD8
procedure PropertyNotFound(const Name:UnicodeString);
begin
{*
 00494DD8    push        ebx
 00494DD9    add         esp,0FFFFFFF8
 00494DDC    mov         ebx,eax
 00494DDE    mov         dword ptr [esp],ebx
 00494DE1    mov         byte ptr [esp+4],11
 00494DE6    push        esp
 00494DE7    push        0
 00494DE9    mov         ecx,dword ptr ds:[7C43F8];^SResString148:TResStringRec
 00494DEF    mov         dl,1
 00494DF1    mov         eax,[0046B93C];EReadError
 00494DF6    call        Exception.CreateResFmt
 00494DFB    call        @RaiseExcept
 00494E00    pop         ecx
 00494E01    pop         edx
 00494E02    pop         ebx
 00494E03    ret
*}
end;

//00494E04
function SetElementValue(EnumType:TypInfo.PTypeInfo; const EnumName:UnicodeString):Integer;
begin
{*
 00494E04    push        ebx
 00494E05    call        GetSetElementValue
 00494E0A    mov         ebx,eax
 00494E0C    cmp         ebx,0FFFFFFFF
>00494E0F    jne         00494E16
 00494E11    call        PropValueError
 00494E16    mov         eax,ebx
 00494E18    pop         ebx
 00494E19    ret
*}
end;

//00494E1C
destructor TReader.Destroy();
begin
{*
 00494E1C    push        ebx
 00494E1D    push        esi
 00494E1E    call        @BeforeDestruction
 00494E23    mov         ebx,edx
 00494E25    mov         esi,eax
 00494E27    mov         eax,dword ptr [esi+10]
 00494E2A    sub         eax,dword ptr [esi+14]
 00494E2D    cdq
 00494E2E    push        edx
 00494E2F    push        eax
 00494E30    mov         eax,dword ptr [esi+4]
 00494E33    mov         dl,1
 00494E35    mov         ecx,dword ptr [eax]
 00494E37    call        dword ptr [ecx+20]
 00494E3A    mov         dl,0FC
 00494E3C    and         dl,bl
 00494E3E    mov         eax,esi
 00494E40    call        TFiler.Destroy
 00494E45    test        bl,bl
>00494E47    jle         00494E50
 00494E49    mov         eax,esi
 00494E4B    call        @ClassDestroy
 00494E50    pop         esi
 00494E51    pop         ebx
 00494E52    ret
*}
end;

//00494E54
procedure TReader.CheckValue(Value:TValueType);
begin
{*
 00494E54    push        ebx
 00494E55    push        esi
 00494E56    mov         ebx,edx
 00494E58    mov         esi,eax
 00494E5A    mov         eax,esi
 00494E5C    call        TReader.ReadValue
 00494E61    cmp         bl,al
>00494E63    je          00494E74
 00494E65    dec         dword ptr [esi+10]
 00494E68    mov         eax,esi
 00494E6A    call        TReader.SkipValue
 00494E6F    call        PropValueError
 00494E74    pop         esi
 00494E75    pop         ebx
 00494E76    ret
*}
end;

//00494E78
{*procedure TReader.DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc; ?:?; ?:?);
begin
 00494E78    push        ebp
 00494E79    mov         ebp,esp
 00494E7B    add         esp,0FFFFFFF8
 00494E7E    push        ebx
 00494E7F    push        esi
 00494E80    mov         esi,edx
 00494E82    mov         dword ptr [ebp-4],eax
 00494E85    mov         eax,dword ptr [ebp-4]
 00494E88    mov         ebx,dword ptr [eax+80];TReader.FPropName:string
 00494E8E    cmp         esi,ebx
>00494E90    jne         00494E96
 00494E92    mov         al,1
>00494E94    jmp         00494EB4
 00494E96    test        esi,esi
>00494E98    je          00494E9E
 00494E9A    test        ebx,ebx
>00494E9C    jne         00494EA2
 00494E9E    xor         eax,eax
>00494EA0    jmp         00494EB4
 00494EA2    mov         dword ptr [ebp-8],ebx
 00494EA5    mov         edx,dword ptr [ebp-8]
 00494EA8    mov         eax,esi
 00494EAA    call        CompareText
 00494EAF    test        eax,eax
 00494EB1    sete        al
 00494EB4    test        al,al
>00494EB6    je          00494ED5
 00494EB8    cmp         word ptr [ebp+12],0
>00494EBD    je          00494ED5
 00494EBF    mov         edx,dword ptr [ebp-4]
 00494EC2    mov         eax,dword ptr [ebp+14]
 00494EC5    call        dword ptr [ebp+10]
 00494EC8    mov         eax,dword ptr [ebp-4]
 00494ECB    add         eax,80;TReader.FPropName:string
 00494ED0    call        @UStrClr
 00494ED5    pop         esi
 00494ED6    pop         ebx
 00494ED7    pop         ecx
 00494ED8    pop         ecx
 00494ED9    pop         ebp
 00494EDA    ret         10
end;*}

//00494EE0
{*procedure TReader.DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc; ?:?; ?:?);
begin
 00494EE0    push        ebp
 00494EE1    mov         ebp,esp
 00494EE3    add         esp,0FFFFFFF0
 00494EE6    push        ebx
 00494EE7    push        esi
 00494EE8    mov         esi,edx
 00494EEA    mov         dword ptr [ebp-4],eax
 00494EED    mov         eax,dword ptr [ebp-4]
 00494EF0    mov         ebx,dword ptr [eax+80];TReader.FPropName:string
 00494EF6    cmp         esi,ebx
>00494EF8    jne         00494EFE
 00494EFA    mov         al,1
>00494EFC    jmp         00494F1C
 00494EFE    test        esi,esi
>00494F00    je          00494F06
 00494F02    test        ebx,ebx
>00494F04    jne         00494F0A
 00494F06    xor         eax,eax
>00494F08    jmp         00494F1C
 00494F0A    mov         dword ptr [ebp-10],ebx
 00494F0D    mov         edx,dword ptr [ebp-10]
 00494F10    mov         eax,esi
 00494F12    call        CompareText
 00494F17    test        eax,eax
 00494F19    sete        al
 00494F1C    test        al,al
>00494F1E    je          00494FDE
 00494F24    cmp         word ptr [ebp+12],0
>00494F29    je          00494FDE
 00494F2F    mov         eax,dword ptr [ebp-4]
 00494F32    call        TReader.ReadValue
 00494F37    cmp         al,0A
>00494F39    je          00494F58
 00494F3B    mov         eax,dword ptr [ebp-4]
 00494F3E    dec         dword ptr [eax+10];TReader.FBufPos:Integer
 00494F41    mov         eax,dword ptr [ebp-4]
 00494F44    call        TReader.SkipValue
 00494F49    mov         eax,dword ptr [ebp-4]
 00494F4C    mov         byte ptr [eax+88],1;TReader.FCanHandleExcepts:Boolean
 00494F53    call        PropValueError
 00494F58    mov         dl,1
 00494F5A    mov         eax,[00472CE4];TMemoryStream
 00494F5F    call        TObject.Create;TMemoryStream.Create
 00494F64    mov         dword ptr [ebp-8],eax
 00494F67    xor         eax,eax
 00494F69    push        ebp
 00494F6A    push        494FCA
 00494F6F    push        dword ptr fs:[eax]
 00494F72    mov         dword ptr fs:[eax],esp
 00494F75    lea         edx,[ebp-0C]
 00494F78    mov         ecx,4
 00494F7D    mov         eax,dword ptr [ebp-4]
 00494F80    call        TReader.Read
 00494F85    mov         edx,dword ptr [ebp-0C]
 00494F88    mov         eax,dword ptr [ebp-8]
 00494F8B    mov         ecx,dword ptr [eax]
 00494F8D    call        dword ptr [ecx+4];TMemoryStream.SetSize
 00494F90    mov         eax,dword ptr [ebp-8]
 00494F93    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00494F96    mov         ecx,dword ptr [ebp-0C]
 00494F99    mov         eax,dword ptr [ebp-4]
 00494F9C    call        TReader.Read
 00494FA1    mov         eax,dword ptr [ebp-4]
 00494FA4    mov         byte ptr [eax+88],1;TReader.FCanHandleExcepts:Boolean
 00494FAB    mov         edx,dword ptr [ebp-8]
 00494FAE    mov         eax,dword ptr [ebp+14]
 00494FB1    call        dword ptr [ebp+10]
 00494FB4    xor         eax,eax
 00494FB6    pop         edx
 00494FB7    pop         ecx
 00494FB8    pop         ecx
 00494FB9    mov         dword ptr fs:[eax],edx
 00494FBC    push        494FD1
 00494FC1    mov         eax,dword ptr [ebp-8]
 00494FC4    call        TObject.Free
 00494FC9    ret
>00494FCA    jmp         @HandleFinally
>00494FCF    jmp         00494FC1
 00494FD1    mov         eax,dword ptr [ebp-4]
 00494FD4    add         eax,80;TReader.FPropName:string
 00494FD9    call        @UStrClr
 00494FDE    pop         esi
 00494FDF    pop         ebx
 00494FE0    mov         esp,ebp
 00494FE2    pop         ebp
 00494FE3    ret         10
end;*}

//00494FE8
function TReader.EndOfList:Boolean;
begin
{*
 00494FE8    push        ebx
 00494FE9    mov         ebx,eax
 00494FEB    mov         eax,ebx
 00494FED    call        TReader.ReadValue
 00494FF2    test        al,al
 00494FF4    sete        al
 00494FF7    dec         dword ptr [ebx+10]
 00494FFA    pop         ebx
 00494FFB    ret
*}
end;

//00494FFC
function TReader.Error(const Message:UnicodeString):Boolean;
begin
{*
 00494FFC    push        ebx
 00494FFD    push        ecx
 00494FFE    mov         byte ptr [esp],0
 00495002    cmp         word ptr [eax+62],0
>00495007    je          00495016
 00495009    push        esp
 0049500A    mov         ebx,eax
 0049500C    mov         ecx,edx
 0049500E    mov         edx,eax
 00495010    mov         eax,dword ptr [ebx+64]
 00495013    call        dword ptr [ebx+60]
 00495016    movzx       eax,byte ptr [esp]
 0049501A    pop         edx
 0049501B    pop         ebx
 0049501C    ret
*}
end;

//00495020
function TReader.FindMethodInstance(Root:TComponent; const MethodName:UnicodeString):TMethod;
begin
{*
 00495020    push        ebp
 00495021    mov         ebp,esp
 00495023    add         esp,0FFFFFFF4
 00495026    push        ebx
 00495027    push        esi
 00495028    mov         dword ptr [ebp-8],ecx
 0049502B    mov         dword ptr [ebp-4],edx
 0049502E    mov         ebx,eax
 00495030    mov         esi,dword ptr [ebp+8]
 00495033    cmp         word ptr [ebx+42],0
>00495038    je          00495068
 0049503A    mov         eax,dword ptr [ebp-4]
 0049503D    mov         eax,dword ptr [eax]
 0049503F    mov         edx,dword ptr [ebp-8]
 00495042    call        TObject.MethodAddress
 00495047    mov         dword ptr [esi],eax
 00495049    mov         eax,dword ptr [ebp-4]
 0049504C    mov         dword ptr [esi+4],eax
 0049504F    cmp         dword ptr [esi],0
 00495052    sete        byte ptr [ebp-9]
 00495056    push        esi
 00495057    lea         eax,[ebp-9]
 0049505A    push        eax
 0049505B    mov         ecx,dword ptr [ebp-8]
 0049505E    mov         edx,ebx
 00495060    mov         eax,dword ptr [ebx+44]
 00495063    call        dword ptr [ebx+40]
>00495066    jmp         0049506C
 00495068    mov         byte ptr [ebp-9],1
 0049506C    cmp         byte ptr [ebp-9],0
>00495070    je          00495087
 00495072    mov         eax,dword ptr [ebp-4]
 00495075    mov         dword ptr [esi+4],eax
 00495078    mov         ecx,dword ptr [ebp-8]
 0049507B    mov         edx,dword ptr [ebp-4]
 0049507E    mov         eax,ebx
 00495080    mov         ebx,dword ptr [eax]
 00495082    call        dword ptr [ebx+1C]
 00495085    mov         dword ptr [esi],eax
 00495087    pop         esi
 00495088    pop         ebx
 00495089    mov         esp,ebp
 0049508B    pop         ebp
 0049508C    ret         4
*}
end;

//00495090
function TReader.FindMethod(Root:TComponent; const MethodName:UnicodeString):Pointer;
begin
{*
 00495090    push        ebx
 00495091    push        esi
 00495092    push        edi
 00495093    add         esp,0FFFFFFF8
 00495096    mov         esi,ecx
 00495098    mov         edi,edx
 0049509A    mov         ebx,eax
 0049509C    mov         eax,dword ptr [edi]
 0049509E    mov         edx,esi
 004950A0    call        TObject.MethodAddress
 004950A5    mov         dword ptr [esp],eax
 004950A8    cmp         dword ptr [esp],0
 004950AC    sete        byte ptr [esp+4]
 004950B1    cmp         word ptr [ebx+3A],0
>004950B6    je          004950C8
 004950B8    push        esp
 004950B9    lea         eax,[esp+8]
 004950BD    push        eax
 004950BE    mov         ecx,esi
 004950C0    mov         edx,ebx
 004950C2    mov         eax,dword ptr [ebx+3C]
 004950C5    call        dword ptr [ebx+38]
 004950C8    cmp         byte ptr [esp+4],0
>004950CD    je          004950D4
 004950CF    call        PropValueError
 004950D4    mov         eax,dword ptr [esp]
 004950D7    pop         ecx
 004950D8    pop         edx
 004950D9    pop         edi
 004950DA    pop         esi
 004950DB    pop         ebx
 004950DC    ret
*}
end;

//004950E0
{*procedure sub_004950E0(?:?);
begin
 004950E0    push        ebp
 004950E1    mov         ebp,esp
 004950E3    push        ecx
 004950E4    push        ebx
 004950E5    push        esi
 004950E6    mov         dword ptr [ebp-4],eax
 004950E9    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 004950EE    call        TThreadList<System.Classes.TPropFixup>.LockList
 004950F3    mov         esi,eax
 004950F5    xor         edx,edx
 004950F7    push        ebp
 004950F8    push        495164
 004950FD    push        dword ptr fs:[edx]
 00495100    mov         dword ptr fs:[edx],esp
 00495103    mov         ebx,dword ptr [esi+8];TList<System.Classes.TPropFixup>.FCount:Integer
 00495106    dec         ebx
 00495107    cmp         ebx,0
>0049510A    jl          00495149
 0049510C    lea         eax,[esi+8];TList<System.Classes.TPropFixup>.FCount:Integer
 0049510F    mov         edx,ebx
 00495111    call        00434534
 00495116    mov         eax,dword ptr [esi+20]
 00495119    mov         eax,dword ptr [eax+ebx*4]
 0049511C    mov         edx,dword ptr [eax+4]
 0049511F    mov         ecx,dword ptr [ebp-4]
 00495122    cmp         edx,dword ptr [ecx+4]
>00495125    jne         00495143
 00495127    mov         edx,dword ptr [eax+0C]
 0049512A    mov         ecx,dword ptr [ebp-4]
 0049512D    cmp         edx,dword ptr [ecx+0C]
>00495130    jne         00495143
 00495132    call        TObject.Free
 00495137    lea         eax,[esi+8];TList<System.Classes.TPropFixup>.FCount:Integer
 0049513A    mov         cl,1
 0049513C    mov         edx,ebx
 0049513E    call        00435200
 00495143    dec         ebx
 00495144    cmp         ebx,0FFFFFFFF
>00495147    jne         0049510C
 00495149    xor         eax,eax
 0049514B    pop         edx
 0049514C    pop         ecx
 0049514D    pop         ecx
 0049514E    mov         dword ptr fs:[eax],edx
 00495151    push        49516B
 00495156    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 0049515B    mov         eax,dword ptr [eax+8]
 0049515E    call        TMonitor.Exit
 00495163    ret
>00495164    jmp         @HandleFinally
>00495169    jmp         00495156
 0049516B    pop         esi
 0049516C    pop         ebx
 0049516D    pop         ecx
 0049516E    pop         ebp
 0049516F    ret
end;*}

//00495170
procedure TReader.DoFixupReferences;
begin
{*
 00495170    push        ebp
 00495171    mov         ebp,esp
 00495173    add         esp,0FFFFFFEC
 00495176    push        ebx
 00495177    push        esi
 00495178    push        edi
 00495179    xor         edx,edx
 0049517B    mov         dword ptr [ebp-4],edx
 0049517E    mov         dword ptr [ebp-8],eax
 00495181    xor         eax,eax
 00495183    push        ebp
 00495184    push        4952C6
 00495189    push        dword ptr fs:[eax]
 0049518C    mov         dword ptr fs:[eax],esp
 0049518F    mov         eax,dword ptr [ebp-8]
 00495192    mov         eax,dword ptr [eax+30]
 00495195    test        eax,eax
>00495197    je          004952B0
 0049519D    xor         edx,edx
 0049519F    push        ebp
 004951A0    push        4952A9
 004951A5    push        dword ptr fs:[edx]
 004951A8    mov         dword ptr fs:[edx],esp
 004951AB    mov         eax,dword ptr [eax+8]
 004951AE    dec         eax
 004951AF    test        eax,eax
>004951B1    jl          00495293
 004951B7    inc         eax
 004951B8    mov         dword ptr [ebp-10],eax
 004951BB    xor         ebx,ebx
 004951BD    mov         eax,dword ptr [ebp-8]
 004951C0    mov         esi,dword ptr [eax+30]
 004951C3    lea         eax,[esi+8]
 004951C6    mov         edx,ebx
 004951C8    call        00434534
 004951CD    mov         eax,dword ptr [esi+20]
 004951D0    mov         esi,dword ptr [eax+ebx*4]
 004951D3    lea         eax,[ebp-4]
 004951D6    mov         edx,dword ptr [esi+14]
 004951D9    call        @UStrLAsg
 004951DE    lea         edx,[ebp-4]
 004951E1    mov         eax,dword ptr [ebp-8]
 004951E4    mov         ecx,dword ptr [eax]
 004951E6    call        dword ptr [ecx+24]
 004951E9    mov         eax,dword ptr [esi+8]
 004951EC    mov         edx,dword ptr [ebp-4]
 004951EF    call        0049485C
 004951F4    mov         dword ptr [ebp-0C],eax
 004951F7    cmp         dword ptr [ebp-0C],0
>004951FB    jne         0049521A
 004951FD    mov         eax,dword ptr [ebp-8]
 00495200    cmp         word ptr [eax+7A],0
>00495205    je          0049521A
 00495207    lea         eax,[ebp-0C]
 0049520A    push        eax
 0049520B    mov         edi,dword ptr [ebp-8]
 0049520E    mov         ecx,dword ptr [ebp-4]
 00495211    mov         edx,dword ptr [ebp-8]
 00495214    mov         eax,dword ptr [edi+7C]
 00495217    call        dword ptr [edi+78]
 0049521A    mov         eax,dword ptr [ebp-8]
 0049521D    mov         edi,dword ptr [eax+30]
 00495220    lea         eax,[edi+8]
 00495223    mov         edx,ebx
 00495225    call        00434534
 0049522A    mov         eax,dword ptr [edi+20]
 0049522D    mov         eax,dword ptr [eax+ebx*4]
 00495230    call        004950E0
 00495235    cmp         dword ptr [ebp-0C],0
>00495239    jne         00495280
 0049523B    mov         eax,esi
 0049523D    call        TPropFixup.MakeGlobalReference
 00495242    test        al,al
>00495244    je          00495280
 00495246    mov         eax,dword ptr [ebp-8]
 00495249    mov         esi,dword ptr [eax+30]
 0049524C    lea         eax,[esi+8]
 0049524F    mov         edx,ebx
 00495251    call        00434534
 00495256    mov         eax,dword ptr [esi+20]
 00495259    mov         edx,dword ptr [eax+ebx*4]
 0049525C    mov         eax,[007CA3E0];gvar_007CA3E0:TThreadList<System.Classes.TPropFixup>
 00495261    call        TThreadList<System.Classes.TPropFixup>.Add
 00495266    mov         eax,dword ptr [ebp-8]
 00495269    mov         eax,dword ptr [eax+30]
 0049526C    xor         edx,edx
 0049526E    mov         dword ptr [ebp-14],edx
 00495271    lea         edx,[ebp-14]
 00495274    add         eax,8
 00495277    mov         ecx,ebx
 00495279    call        0043455C
>0049527E    jmp         00495289
 00495280    mov         edx,dword ptr [ebp-0C]
 00495283    mov         eax,esi
 00495285    mov         ecx,dword ptr [eax]
 00495287    call        dword ptr [ecx]
 00495289    inc         ebx
 0049528A    dec         dword ptr [ebp-10]
>0049528D    jne         004951BD
 00495293    xor         eax,eax
 00495295    pop         edx
 00495296    pop         ecx
 00495297    pop         ecx
 00495298    mov         dword ptr fs:[eax],edx
 0049529B    push        4952B0
 004952A0    mov         eax,dword ptr [ebp-8]
 004952A3    call        TReader.FreeFixups
 004952A8    ret
>004952A9    jmp         @HandleFinally
>004952AE    jmp         004952A0
 004952B0    xor         eax,eax
 004952B2    pop         edx
 004952B3    pop         ecx
 004952B4    pop         ecx
 004952B5    mov         dword ptr fs:[eax],edx
 004952B8    push        4952CD
 004952BD    lea         eax,[ebp-4]
 004952C0    call        @UStrClr
 004952C5    ret
>004952C6    jmp         @HandleFinally
>004952CB    jmp         004952BD
 004952CD    pop         edi
 004952CE    pop         esi
 004952CF    pop         ebx
 004952D0    mov         esp,ebp
 004952D2    pop         ebp
 004952D3    ret
*}
end;

//004952D4
procedure TReader.FlushBuffer;
begin
{*
 004952D4    push        ebx
 004952D5    mov         ebx,eax
 004952D7    mov         eax,ebx
 004952D9    call        TReader.GetPosition
 004952DE    cdq
 004952DF    push        edx
 004952E0    push        eax
 004952E1    mov         eax,dword ptr [ebx+4]
 004952E4    call        TStream.SetPosition
 004952E9    xor         eax,eax
 004952EB    mov         dword ptr [ebx+10],eax
 004952EE    xor         eax,eax
 004952F0    mov         dword ptr [ebx+14],eax
 004952F3    pop         ebx
 004952F4    ret
*}
end;

//004952F8
procedure TReader.FreeFixups;
begin
{*
 004952F8    push        ebx
 004952F9    push        esi
 004952FA    push        edi
 004952FB    push        ebp
 004952FC    mov         edi,eax
 004952FE    mov         eax,dword ptr [edi+30]
 00495301    test        eax,eax
>00495303    je          00495339
 00495305    mov         ebp,dword ptr [eax+8]
 00495308    dec         ebp
 00495309    test        ebp,ebp
>0049530B    jl          0049532C
 0049530D    inc         ebp
 0049530E    xor         ebx,ebx
 00495310    mov         esi,dword ptr [edi+30]
 00495313    lea         eax,[esi+8]
 00495316    mov         edx,ebx
 00495318    call        00434534
 0049531D    mov         eax,dword ptr [esi+20]
 00495320    mov         eax,dword ptr [eax+ebx*4]
 00495323    call        TObject.Free
 00495328    inc         ebx
 00495329    dec         ebp
>0049532A    jne         00495310
 0049532C    mov         eax,dword ptr [edi+30]
 0049532F    call        TObject.Free
 00495334    xor         eax,eax
 00495336    mov         dword ptr [edi+30],eax
 00495339    pop         ebp
 0049533A    pop         edi
 0049533B    pop         esi
 0049533C    pop         ebx
 0049533D    ret
*}
end;

//00495340
function TReader.GetFieldClass(const Instance:TObject; const ClassName:UnicodeString):TPersistentClass;
begin
{*
 00495340    push        ebx
 00495341    push        esi
 00495342    push        edi
 00495343    push        ebp
 00495344    add         esp,0FFFFFFF4
 00495347    mov         dword ptr [esp+4],ecx
 0049534B    mov         dword ptr [esp],eax
 0049534E    mov         edx,dword ptr [edx]
 00495350    mov         eax,edx
 00495352    mov         ebp,eax
>00495354    jmp         0049539D
 00495356    mov         eax,ebp
 00495358    call        GetFieldClassTable
 0049535D    mov         esi,eax
 0049535F    test        esi,esi
>00495361    je          00495394
 00495363    movsx       ebx,word ptr [esi]
 00495366    dec         ebx
 00495367    test        ebx,ebx
>00495369    jl          00495394
 0049536B    inc         ebx
 0049536C    mov         dword ptr [esp+8],0
 00495374    mov         eax,dword ptr [esp+8]
 00495378    mov         eax,dword ptr [esi+eax*4+2]
 0049537C    mov         edi,dword ptr [eax]
 0049537E    mov         edx,dword ptr [esp+4]
 00495382    mov         eax,edi
 00495384    call        TObject.ClassNameIs
 00495389    test        al,al
>0049538B    jne         004953CA
 0049538D    inc         dword ptr [esp+8]
 00495391    dec         ebx
>00495392    jne         00495374
 00495394    mov         eax,ebp
 00495396    call        TObject.ClassParent
 0049539B    mov         ebp,eax
 0049539D    cmp         ebp,dword ptr ds:[46D778];TPersistent
>004953A3    jne         00495356
 004953A5    mov         eax,dword ptr [esp]
 004953A8    mov         eax,dword ptr [eax+84]
 004953AE    test        eax,eax
>004953B0    je          004953BF
 004953B2    mov         edx,dword ptr [esp+4]
 004953B6    call        TClassFinder.GetClass
 004953BB    mov         edi,eax
>004953BD    jmp         004953CA
 004953BF    mov         eax,dword ptr [esp+4]
 004953C3    call        GetClass
 004953C8    mov         edi,eax
 004953CA    mov         eax,edi
 004953CC    add         esp,0C
 004953CF    pop         ebp
 004953D0    pop         edi
 004953D1    pop         esi
 004953D2    pop         ebx
 004953D3    ret
*}
end;

//004953D4
function TReader.GetPosition:LongInt;
begin
{*
 004953D4    push        ebx
 004953D5    mov         ebx,eax
 004953D7    mov         eax,dword ptr [ebx+4]
 004953DA    call        TStream.GetPosition
 004953DF    mov         edx,dword ptr [ebx+14]
 004953E2    sub         edx,dword ptr [ebx+10]
 004953E5    sub         eax,edx
 004953E7    pop         ebx
 004953E8    ret
*}
end;

//004953EC
function TReader.NextValue:TValueType;
begin
{*
 004953EC    push        ebx
 004953ED    mov         ebx,eax
 004953EF    mov         eax,ebx
 004953F1    call        TReader.ReadValue
 004953F6    dec         dword ptr [ebx+10]
 004953F9    pop         ebx
 004953FA    ret
*}
end;

//004953FC
procedure TReader.PropertyError(const Name:UnicodeString);
begin
{*
 004953FC    push        ebx
 004953FD    mov         ebx,edx
 004953FF    call        TReader.SkipValue
 00495404    mov         eax,ebx
 00495406    call        PropertyNotFound
 0049540B    pop         ebx
 0049540C    ret
*}
end;

//00495410
{*procedure TReader.Read(var Buffer:?; Count:Integer);
begin
 00495410    push        ebx
 00495411    push        esi
 00495412    push        edi
 00495413    push        ebp
 00495414    push        ecx
 00495415    mov         edi,ecx
 00495417    mov         dword ptr [esp],edx
 0049541A    mov         esi,eax
 0049541C    xor         ebp,ebp
 0049541E    test        edi,edi
>00495420    jle         0049545D
 00495422    mov         ebx,dword ptr [esi+14]
 00495425    sub         ebx,dword ptr [esi+10]
 00495428    test        ebx,ebx
>0049542A    jne         0049543A
 0049542C    mov         cl,1
 0049542E    xor         edx,edx
 00495430    mov         eax,esi
 00495432    call        TReader.ReadBuffer
 00495437    mov         ebx,dword ptr [esi+14]
 0049543A    cmp         ebx,edi
>0049543C    jl          00495440
 0049543E    mov         ebx,edi
 00495440    mov         edx,dword ptr [esp]
 00495443    add         edx,ebp
 00495445    mov         eax,dword ptr [esi+8]
 00495448    add         eax,dword ptr [esi+10]
 0049544B    mov         ecx,ebx
 0049544D    call        Move
 00495452    add         dword ptr [esi+10],ebx
 00495455    add         ebp,ebx
 00495457    sub         edi,ebx
 00495459    test        edi,edi
>0049545B    jg          00495422
 0049545D    pop         edx
 0049545E    pop         ebp
 0049545F    pop         edi
 00495460    pop         esi
 00495461    pop         ebx
 00495462    ret
end;*}

//00495464
procedure TReader.Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);
begin
{*
 00495464    push        ebp
 00495465    mov         ebp,esp
 00495467    add         esp,0FFFFFFF8
 0049546A    push        ebx
 0049546B    push        esi
 0049546C    push        edi
 0049546D    mov         dword ptr [ebp-8],ecx
 00495470    mov         dword ptr [ebp-4],edx
 00495473    mov         esi,eax
 00495475    mov         edi,dword ptr [ebp+8]
 00495478    mov         eax,dword ptr [ebp-4]
 0049547B    call        @DynArrayAddRef
 00495480    xor         eax,eax
 00495482    push        ebp
 00495483    push        4954F0
 00495488    push        dword ptr fs:[eax]
 0049548B    mov         dword ptr fs:[eax],esp
 0049548E    test        edi,edi
>00495490    jle         004954D4
 00495492    mov         ebx,dword ptr [esi+14];TReader.FBufEnd:Integer
 00495495    sub         ebx,dword ptr [esi+10]
 00495498    test        ebx,ebx
>0049549A    jne         004954AA
 0049549C    mov         cl,1
 0049549E    xor         edx,edx
 004954A0    mov         eax,esi
 004954A2    call        TReader.ReadBuffer
 004954A7    mov         ebx,dword ptr [esi+14];TReader.FBufEnd:Integer
 004954AA    cmp         ebx,edi
>004954AC    jl          004954B0
 004954AE    mov         ebx,edi
 004954B0    mov         eax,dword ptr [ebp-4]
 004954B3    mov         edx,dword ptr [ebp-8]
 004954B6    lea         edx,[eax+edx]
 004954B9    mov         eax,dword ptr [esi+8];TReader.FBuffer:TArray<System.Byte>
 004954BC    mov         ecx,dword ptr [esi+10];TReader.FBufPos:Integer
 004954BF    add         eax,ecx
 004954C1    mov         ecx,ebx
 004954C3    call        Move
 004954C8    add         dword ptr [esi+10],ebx;TReader.FBufPos:Integer
 004954CB    add         dword ptr [ebp-8],ebx
 004954CE    sub         edi,ebx
 004954D0    test        edi,edi
>004954D2    jg          00495492
 004954D4    xor         eax,eax
 004954D6    pop         edx
 004954D7    pop         ecx
 004954D8    pop         ecx
 004954D9    mov         dword ptr fs:[eax],edx
 004954DC    push        4954F7
 004954E1    lea         eax,[ebp-4]
 004954E4    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004954EA    call        @DynArrayClear
 004954EF    ret
>004954F0    jmp         @HandleFinally
>004954F5    jmp         004954E1
 004954F7    pop         edi
 004954F8    pop         esi
 004954F9    pop         ebx
 004954FA    pop         ecx
 004954FB    pop         ecx
 004954FC    pop         ebp
 004954FD    ret         4
*}
end;

//00495500
procedure TReader.Read(Buffer:TArray<System.Byte>; Count:Integer);
begin
{*
 00495500    push        ebp
 00495501    mov         ebp,esp
 00495503    push        ecx
 00495504    push        ebx
 00495505    push        esi
 00495506    mov         esi,ecx
 00495508    mov         dword ptr [ebp-4],edx
 0049550B    mov         ebx,eax
 0049550D    mov         eax,dword ptr [ebp-4]
 00495510    call        @DynArrayAddRef
 00495515    xor         eax,eax
 00495517    push        ebp
 00495518    push        49554C
 0049551D    push        dword ptr fs:[eax]
 00495520    mov         dword ptr fs:[eax],esp
 00495523    push        esi
 00495524    xor         ecx,ecx
 00495526    mov         edx,dword ptr [ebp-4]
 00495529    mov         eax,ebx
 0049552B    call        TReader.Read
 00495530    xor         eax,eax
 00495532    pop         edx
 00495533    pop         ecx
 00495534    pop         ecx
 00495535    mov         dword ptr fs:[eax],edx
 00495538    push        495553
 0049553D    lea         eax,[ebp-4]
 00495540    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00495546    call        @DynArrayClear
 0049554B    ret
>0049554C    jmp         @HandleFinally
>00495551    jmp         0049553D
 00495553    pop         esi
 00495554    pop         ebx
 00495555    pop         ecx
 00495556    pop         ebp
 00495557    ret
*}
end;

//00495558
procedure TReader.ReadBuffer(Keeping:Integer; MoveBuffer:Boolean);
begin
{*
 00495558    push        ebp
 00495559    mov         ebp,esp
 0049555B    add         esp,0FFFFFFEC
 0049555E    push        ebx
 0049555F    push        esi
 00495560    push        edi
 00495561    xor         ebx,ebx
 00495563    mov         dword ptr [ebp-14],ebx
 00495566    mov         byte ptr [ebp-1],cl
 00495569    mov         esi,edx
 0049556B    mov         ebx,eax
 0049556D    xor         eax,eax
 0049556F    push        ebp
 00495570    push        49561D
 00495575    push        dword ptr fs:[eax]
 00495578    mov         dword ptr fs:[eax],esp
 0049557B    cmp         byte ptr [ebp-1],0
>0049557F    je          004955A5
 00495581    test        esi,esi
>00495583    jle         004955A5
 00495585    mov         eax,dword ptr [ebx+8]
 00495588    mov         dword ptr [ebp-8],eax
 0049558B    mov         eax,dword ptr [ebp-8]
 0049558E    test        eax,eax
>00495590    je          00495597
 00495592    sub         eax,4
 00495595    mov         eax,dword ptr [eax]
 00495597    mov         edx,dword ptr [ebx+8]
 0049559A    add         eax,edx
 0049559C    sub         eax,esi
 0049559E    mov         ecx,esi
 004955A0    call        Move
 004955A5    mov         eax,dword ptr [ebx+8]
 004955A8    mov         dword ptr [ebp-0C],eax
 004955AB    mov         eax,dword ptr [ebp-0C]
 004955AE    mov         dword ptr [ebp-10],eax
 004955B1    cmp         dword ptr [ebp-10],0
>004955B5    je          004955C2
 004955B7    mov         eax,dword ptr [ebp-10]
 004955BA    sub         eax,4
 004955BD    mov         eax,dword ptr [eax]
 004955BF    mov         dword ptr [ebp-10],eax
 004955C2    mov         eax,dword ptr [ebp-10]
 004955C5    sub         eax,esi
 004955C7    push        eax
 004955C8    mov         ecx,esi
 004955CA    mov         edx,dword ptr [ebx+8]
 004955CD    mov         eax,dword ptr [ebx+4]
 004955D0    mov         edi,dword ptr [eax]
 004955D2    call        dword ptr [edi+14]
 004955D5    mov         dword ptr [ebx+14],eax
 004955D8    cmp         dword ptr [ebx+14],0
>004955DC    jne         004955FF
 004955DE    lea         edx,[ebp-14]
 004955E1    mov         eax,[007C4CFC];^SResString139:TResStringRec
 004955E6    call        LoadResString
 004955EB    mov         ecx,dword ptr [ebp-14]
 004955EE    mov         dl,1
 004955F0    mov         eax,[0046B93C];EReadError
 004955F5    call        Exception.Create
 004955FA    call        @RaiseExcept
 004955FF    add         dword ptr [ebx+14],esi
 00495602    xor         eax,eax
 00495604    mov         dword ptr [ebx+10],eax
 00495607    xor         eax,eax
 00495609    pop         edx
 0049560A    pop         ecx
 0049560B    pop         ecx
 0049560C    mov         dword ptr fs:[eax],edx
 0049560F    push        495624
 00495614    lea         eax,[ebp-14]
 00495617    call        @UStrClr
 0049561C    ret
>0049561D    jmp         @HandleFinally
>00495622    jmp         00495614
 00495624    pop         edi
 00495625    pop         esi
 00495626    pop         ebx
 00495627    mov         esp,ebp
 00495629    pop         ebp
 0049562A    ret
*}
end;

//0049562C
function TReader.ReadBoolean:Boolean;
begin
{*
 0049562C    push        ebx
 0049562D    mov         ebx,eax
 0049562F    mov         eax,ebx
 00495631    call        TReader.ReadValue
 00495636    mov         edx,eax
 00495638    add         dl,0F8
 0049563B    sub         dl,2
>0049563E    jae         00495647
 00495640    cmp         al,9
 00495642    sete        al
 00495645    pop         ebx
 00495646    ret
 00495647    mov         eax,[007C49AC];^SResString131:TResStringRec
 0049564C    call        ReadError
 00495651    xor         eax,eax
 00495653    pop         ebx
 00495654    ret
*}
end;

//00495658
function TReader.ReadChar:Char;
begin
{*
 00495658    push        ebp
 00495659    mov         ebp,esp
 0049565B    push        0
 0049565D    push        ebx
 0049565E    mov         ebx,eax
 00495660    xor         eax,eax
 00495662    push        ebp
 00495663    push        4956A8
 00495668    push        dword ptr fs:[eax]
 0049566B    mov         dword ptr fs:[eax],esp
 0049566E    lea         edx,[ebp-4]
 00495671    mov         eax,ebx
 00495673    call        TReader.ReadString
 00495678    mov         eax,dword ptr [ebp-4]
 0049567B    test        eax,eax
>0049567D    je          00495684
 0049567F    sub         eax,4
 00495682    mov         eax,dword ptr [eax]
 00495684    dec         eax
>00495685    jle         0049568C
 00495687    call        PropValueError
 0049568C    mov         eax,dword ptr [ebp-4]
 0049568F    movzx       ebx,word ptr [eax]
 00495692    xor         eax,eax
 00495694    pop         edx
 00495695    pop         ecx
 00495696    pop         ecx
 00495697    mov         dword ptr fs:[eax],edx
 0049569A    push        4956AF
 0049569F    lea         eax,[ebp-4]
 004956A2    call        @UStrClr
 004956A7    ret
>004956A8    jmp         @HandleFinally
>004956AD    jmp         0049569F
 004956AF    mov         eax,ebx
 004956B1    pop         ebx
 004956B2    pop         ecx
 004956B3    pop         ebp
 004956B4    ret
*}
end;

//004956B8
procedure TReader.ReadCollection(Collection:TCollection);
begin
{*
 004956B8    push        ebp
 004956B9    mov         ebp,esp
 004956BB    push        ecx
 004956BC    push        ebx
 004956BD    push        esi
 004956BE    mov         dword ptr [ebp-4],edx
 004956C1    mov         ebx,eax
 004956C3    mov         eax,dword ptr [ebp-4]
 004956C6    mov         edx,dword ptr [eax]
 004956C8    call        dword ptr [edx+20]
 004956CB    xor         eax,eax
 004956CD    push        ebp
 004956CE    push        495758
 004956D3    push        dword ptr fs:[eax]
 004956D6    mov         dword ptr fs:[eax],esp
 004956D9    mov         eax,ebx
 004956DB    call        TReader.EndOfList
 004956E0    test        al,al
>004956E2    jne         00495730
 004956E4    mov         eax,dword ptr [ebp-4]
 004956E7    call        TCollection.Clear
>004956EC    jmp         00495730
 004956EE    mov         eax,ebx
 004956F0    call        TReader.NextValue
 004956F5    add         al,0FE
 004956F7    sub         al,3
>004956F9    jae         00495702
 004956FB    mov         eax,ebx
 004956FD    call        TReader.ReadInteger
 00495702    mov         eax,dword ptr [ebp-4]
 00495705    call        TCollection.Add
 0049570A    mov         esi,eax
 0049570C    mov         eax,ebx
 0049570E    call        TReader.ReadListBegin
>00495713    jmp         0049571E
 00495715    mov         edx,esi
 00495717    mov         eax,ebx
 00495719    call        TReader.ReadProperty
 0049571E    mov         eax,ebx
 00495720    call        TReader.EndOfList
 00495725    test        al,al
>00495727    je          00495715
 00495729    mov         eax,ebx
 0049572B    call        TReader.ReadListEnd
 00495730    mov         eax,ebx
 00495732    call        TReader.EndOfList
 00495737    test        al,al
>00495739    je          004956EE
 0049573B    mov         eax,ebx
 0049573D    call        TReader.ReadListEnd
 00495742    xor         eax,eax
 00495744    pop         edx
 00495745    pop         ecx
 00495746    pop         ecx
 00495747    mov         dword ptr fs:[eax],edx
 0049574A    push        49575F
 0049574F    mov         eax,dword ptr [ebp-4]
 00495752    mov         edx,dword ptr [eax]
 00495754    call        dword ptr [edx+24]
 00495757    ret
>00495758    jmp         @HandleFinally
>0049575D    jmp         0049574F
 0049575F    pop         esi
 00495760    pop         ebx
 00495761    pop         ecx
 00495762    pop         ebp
 00495763    ret
*}
end;

//0049579C
{*procedure sub_0049579C(?:?);
begin
 0049579C    push        ebp
 0049579D    mov         ebp,esp
 0049579F    add         esp,0FFFFFFF8
 004957A2    push        ebx
 004957A3    push        esi
 004957A4    mov         eax,dword ptr [ebp+8]
 004957A7    mov         eax,dword ptr [eax-4]
 004957AA    mov         dword ptr [ebp-4],eax
 004957AD    mov         eax,dword ptr [ebp-4]
 004957B0    test        eax,eax
>004957B2    je          004957B9
 004957B4    sub         eax,4
 004957B7    mov         eax,dword ptr [eax]
 004957B9    mov         ebx,eax
 004957BB    dec         ebx
 004957BC    test        ebx,ebx
>004957BE    jl          004957E7
 004957C0    inc         ebx
 004957C1    xor         esi,esi
 004957C3    mov         eax,dword ptr [ebp+8]
 004957C6    mov         eax,dword ptr [eax-10]
 004957C9    mov         eax,dword ptr [eax+34]
 004957CC    mov         edx,dword ptr [ebp+8]
 004957CF    mov         edx,dword ptr [edx-4]
 004957D2    mov         edx,dword ptr [edx+esi*4]
 004957D5    mov         dword ptr [ebp-8],edx
 004957D8    lea         edx,[ebp-8]
 004957DB    add         eax,8
 004957DE    call        0043489C
 004957E3    inc         esi
 004957E4    dec         ebx
>004957E5    jne         004957C3
 004957E7    pop         esi
 004957E8    pop         ebx
 004957E9    pop         ecx
 004957EA    pop         ecx
 004957EB    pop         ebp
 004957EC    ret
end;*}

//004957F0
{*procedure sub_004957F0(?:?; ?:?);
begin
 004957F0    push        ebp
 004957F1    mov         ebp,esp
 004957F3    add         esp,0FFFFFFF4
 004957F6    push        ebx
 004957F7    push        esi
 004957F8    push        edi
 004957F9    mov         dword ptr [ebp-4],eax
 004957FC    mov         eax,dword ptr [ebp-4]
 004957FF    call        TComponent.GetComponentCount
 00495804    mov         esi,eax
 00495806    dec         esi
 00495807    test        esi,esi
>00495809    jl          0049587B
 0049580B    inc         esi
 0049580C    xor         ebx,ebx
 0049580E    mov         edx,ebx
 00495810    mov         eax,dword ptr [ebp-4]
 00495813    call        TComponent.GetComponent
 00495818    test        byte ptr [eax+30],4;TComponent.FComponentStyle:TComponentStyle
>0049581C    je          00495877
 0049581E    mov         eax,dword ptr [ebp+8]
 00495821    mov         eax,dword ptr [eax-4]
 00495824    mov         dword ptr [ebp-8],eax
 00495827    mov         edi,dword ptr [ebp-8]
 0049582A    test        edi,edi
>0049582C    je          00495833
 0049582E    sub         edi,4
 00495831    mov         edi,dword ptr [edi]
 00495833    inc         edi
 00495834    push        edi
 00495835    mov         eax,dword ptr [ebp+8]
 00495838    add         eax,0FFFFFFFC
 0049583B    mov         ecx,1
 00495840    mov         edx,dword ptr ds:[495764];:TReader.:1
 00495846    call        @DynArraySetLength
 0049584B    add         esp,4
 0049584E    mov         eax,dword ptr [ebp+8]
 00495851    mov         eax,dword ptr [eax-4]
 00495854    mov         dword ptr [ebp-0C],eax
 00495857    mov         edi,dword ptr [ebp-0C]
 0049585A    test        edi,edi
>0049585C    je          00495863
 0049585E    sub         edi,4
 00495861    mov         edi,dword ptr [edi]
 00495863    mov         edx,ebx
 00495865    mov         eax,dword ptr [ebp-4]
 00495868    call        TComponent.GetComponent
 0049586D    mov         edx,dword ptr [ebp+8]
 00495870    mov         edx,dword ptr [edx-4]
 00495873    mov         dword ptr [edx+edi*4-4],eax
 00495877    inc         ebx
 00495878    dec         esi
>00495879    jne         0049580E
 0049587B    pop         edi
 0049587C    pop         esi
 0049587D    pop         ebx
 0049587E    mov         esp,ebp
 00495880    pop         ebp
 00495881    ret
end;*}

//00495884
{*procedure sub_00495884(?:?; ?:?; ?:?);
begin
 00495884    push        ebp
 00495885    mov         ebp,esp
 00495887    add         esp,0FFFFFFF4
 0049588A    push        ebx
 0049588B    push        esi
 0049588C    push        edi
 0049588D    mov         word ptr [ebp-2],ax
 00495891    test        dl,dl
>00495893    je          004958CB
 00495895    mov         eax,dword ptr [ebp+8]
 00495898    mov         eax,dword ptr [eax-4]
 0049589B    mov         dword ptr [ebp-8],eax
 0049589E    mov         eax,dword ptr [ebp-8]
 004958A1    test        eax,eax
>004958A3    je          004958AA
 004958A5    sub         eax,4
 004958A8    mov         eax,dword ptr [eax]
 004958AA    mov         esi,eax
 004958AC    dec         esi
 004958AD    test        esi,esi
>004958AF    jl          00495901
 004958B1    inc         esi
 004958B2    xor         ebx,ebx
 004958B4    mov         eax,dword ptr [ebp+8]
 004958B7    mov         eax,dword ptr [eax-4]
 004958BA    mov         edi,dword ptr [eax+ebx*4]
 004958BD    movzx       eax,word ptr [ebp-2]
 004958C1    or          word ptr [edi+1C],ax
 004958C5    inc         ebx
 004958C6    dec         esi
>004958C7    jne         004958B4
>004958C9    jmp         00495901
 004958CB    mov         eax,dword ptr [ebp+8]
 004958CE    mov         eax,dword ptr [eax-4]
 004958D1    mov         dword ptr [ebp-0C],eax
 004958D4    mov         eax,dword ptr [ebp-0C]
 004958D7    test        eax,eax
>004958D9    je          004958E0
 004958DB    sub         eax,4
 004958DE    mov         eax,dword ptr [eax]
 004958E0    mov         esi,eax
 004958E2    dec         esi
 004958E3    test        esi,esi
>004958E5    jl          00495901
 004958E7    inc         esi
 004958E8    xor         ebx,ebx
 004958EA    mov         eax,dword ptr [ebp+8]
 004958ED    mov         eax,dword ptr [eax-4]
 004958F0    mov         edi,dword ptr [eax+ebx*4]
 004958F3    movzx       eax,word ptr [ebp-2]
 004958F7    not         eax
 004958F9    and         word ptr [edi+1C],ax
 004958FD    inc         ebx
 004958FE    dec         esi
>004958FF    jne         004958EA
 00495901    pop         edi
 00495902    pop         esi
 00495903    pop         ebx
 00495904    mov         esp,ebp
 00495906    pop         ebp
 00495907    ret
end;*}

//00495908
function ComponentCreated:Boolean;
begin
{*
 00495908    push        ebp
 00495909    mov         ebp,esp
 0049590B    mov         eax,dword ptr [ebp+8]
 0049590E    test        byte ptr [eax-11],1
>00495912    jne         0049591D
 00495914    mov         eax,dword ptr [ebp+8]
 00495917    cmp         dword ptr [eax-18],0
>0049591B    je          00495921
 0049591D    xor         eax,eax
 0049591F    pop         ebp
 00495920    ret
 00495921    mov         al,1
 00495923    pop         ebp
 00495924    ret
*}
end;

//00495928
function Recover(var Component:TComponent):Boolean;
begin
{*
 00495928    push        ebp
 00495929    mov         ebp,esp
 0049592B    push        ebx
 0049592C    push        esi
 0049592D    mov         esi,eax
 0049592F    xor         ebx,ebx
 00495931    call        ExceptObject
 00495936    mov         edx,dword ptr ds:[4174D0];Exception
 0049593C    call        @IsClass
 00495941    test        al,al
>00495943    je          00495980
 00495945    mov         eax,dword ptr [ebp+8]
 00495948    push        eax
 00495949    call        ComponentCreated
 0049594E    pop         ecx
 0049594F    test        al,al
>00495951    je          0049595A
 00495953    mov         eax,dword ptr [esi]
 00495955    call        TObject.Free
 0049595A    xor         eax,eax
 0049595C    mov         dword ptr [esi],eax
 0049595E    mov         eax,dword ptr [ebp+8]
 00495961    mov         eax,dword ptr [eax-10]
 00495964    xor         edx,edx
 00495966    call        TReader.SkipComponent
 0049596B    call        ExceptObject
 00495970    mov         edx,dword ptr [eax+4]
 00495973    mov         eax,dword ptr [ebp+8]
 00495976    mov         eax,dword ptr [eax-10]
 00495979    mov         ecx,dword ptr [eax]
 0049597B    call        dword ptr [ecx+10]
 0049597E    mov         ebx,eax
 00495980    mov         eax,ebx
 00495982    pop         esi
 00495983    pop         ebx
 00495984    pop         ebp
 00495985    ret
*}
end;

//00495988
{*procedure sub_00495988(?:?);
begin
 00495988    push        ebp
 00495989    mov         ebp,esp
 0049598B    push        ebx
 0049598C    push        esi
 0049598D    push        edi
 0049598E    xor         eax,eax
 00495990    push        ebp
 00495991    push        495A6E
 00495996    push        dword ptr fs:[eax]
 00495999    mov         dword ptr fs:[eax],esp
 0049599C    mov         eax,dword ptr [ebp+8]
 0049599F    mov         edx,dword ptr [eax-1C]
 004959A2    mov         eax,dword ptr [ebp+8]
 004959A5    mov         eax,dword ptr [eax-10]
 004959A8    call        TReader.FindComponentClass
 004959AD    mov         ebx,eax
 004959AF    mov         eax,dword ptr [ebp+8]
 004959B2    xor         edx,edx
 004959B4    mov         dword ptr [eax-8],edx
 004959B7    mov         eax,dword ptr [ebp+8]
 004959BA    mov         eax,dword ptr [eax-10]
 004959BD    cmp         word ptr [eax+72],0
>004959C2    je          004959DF
 004959C4    mov         eax,dword ptr [ebp+8]
 004959C7    add         eax,0FFFFFFF8
 004959CA    push        eax
 004959CB    mov         eax,dword ptr [ebp+8]
 004959CE    mov         esi,dword ptr [eax-10]
 004959D1    mov         eax,dword ptr [ebp+8]
 004959D4    mov         edx,dword ptr [eax-10]
 004959D7    mov         ecx,ebx
 004959D9    mov         eax,dword ptr [esi+74]
 004959DC    call        dword ptr [esi+70]
 004959DF    mov         eax,dword ptr [ebp+8]
 004959E2    cmp         dword ptr [eax-8],0
>004959E6    jne         00495A59
 004959E8    mov         eax,ebx
 004959EA    call        dword ptr [eax-0C]
 004959ED    mov         edx,dword ptr [ebp+8]
 004959F0    mov         dword ptr [edx-8],eax
 004959F3    mov         eax,dword ptr [ebp+8]
 004959F6    test        byte ptr [eax-11],4
>004959FA    je          00495A13
 004959FC    mov         eax,dword ptr [ebp+8]
 004959FF    mov         eax,dword ptr [eax-8]
 00495A02    or          word ptr [eax+1C],1
 00495A07    mov         eax,dword ptr [ebp+8]
 00495A0A    mov         eax,dword ptr [eax-8]
 00495A0D    or          word ptr [eax+1C],200
 00495A13    xor         eax,eax
 00495A15    push        ebp
 00495A16    push        495A42
 00495A1B    push        dword ptr fs:[eax]
 00495A1E    mov         dword ptr fs:[eax],esp
 00495A21    mov         eax,dword ptr [ebp+8]
 00495A24    mov         eax,dword ptr [eax-10]
 00495A27    mov         ecx,dword ptr [eax+28]
 00495A2A    mov         eax,dword ptr [ebp+8]
 00495A2D    mov         eax,dword ptr [eax-8]
 00495A30    or          edx,0FFFFFFFF
 00495A33    mov         ebx,dword ptr [eax]
 00495A35    call        dword ptr [ebx+3C]
 00495A38    xor         eax,eax
 00495A3A    pop         edx
 00495A3B    pop         ecx
 00495A3C    pop         ecx
 00495A3D    mov         dword ptr fs:[eax],edx
>00495A40    jmp         00495A59
>00495A42    jmp         @HandleAnyException
 00495A47    mov         eax,dword ptr [ebp+8]
 00495A4A    xor         edx,edx
 00495A4C    mov         dword ptr [eax-8],edx
 00495A4F    call        @RaiseAgain
 00495A54    call        @DoneExcept
 00495A59    mov         eax,dword ptr [ebp+8]
 00495A5C    mov         eax,dword ptr [eax-8]
 00495A5F    or          word ptr [eax+1C],1
 00495A64    xor         eax,eax
 00495A66    pop         edx
 00495A67    pop         ecx
 00495A68    pop         ecx
 00495A69    mov         dword ptr fs:[eax],edx
>00495A6C    jmp         00495A91
>00495A6E    jmp         @HandleAnyException
 00495A73    mov         eax,dword ptr [ebp+8]
 00495A76    push        eax
 00495A77    mov         eax,dword ptr [ebp+8]
 00495A7A    add         eax,0FFFFFFF8
 00495A7D    call        Recover
 00495A82    pop         ecx
 00495A83    test        al,al
>00495A85    jne         00495A8C
 00495A87    call        @RaiseAgain
 00495A8C    call        @DoneExcept
 00495A91    pop         edi
 00495A92    pop         esi
 00495A93    pop         ebx
 00495A94    pop         ebp
 00495A95    ret
end;*}

//00495A98
{*procedure sub_00495A98(?:?);
begin
 00495A98    push        ebp
 00495A99    mov         ebp,esp
 00495A9B    push        ebx
 00495A9C    push        esi
 00495A9D    push        edi
 00495A9E    xor         eax,eax
 00495AA0    push        ebp
 00495AA1    push        495B10
 00495AA6    push        dword ptr fs:[eax]
 00495AA9    mov         dword ptr fs:[eax],esp
 00495AAC    mov         eax,dword ptr [ebp+8]
 00495AAF    mov         eax,dword ptr [eax-10]
 00495AB2    mov         edx,dword ptr [eax+2C]
 00495AB5    mov         eax,dword ptr [ebp+8]
 00495AB8    mov         eax,dword ptr [eax-8]
 00495ABB    mov         si,0FFF7
 00495ABF    call        @CallDynaInst
 00495AC4    mov         eax,dword ptr [ebp+8]
 00495AC7    lea         ecx,[eax-0C]
 00495ACA    mov         eax,dword ptr [ebp+8]
 00495ACD    mov         edx,dword ptr [eax-8]
 00495AD0    mov         eax,dword ptr [ebp+8]
 00495AD3    mov         eax,dword ptr [eax-10]
 00495AD6    mov         ebx,dword ptr [eax]
 00495AD8    call        dword ptr [ebx+20]
 00495ADB    mov         eax,dword ptr [ebp+8]
 00495ADE    mov         eax,dword ptr [eax-8]
 00495AE1    test        byte ptr [eax+1C],10
>00495AE5    je          00495B06
 00495AE7    mov         eax,dword ptr [ebp+8]
 00495AEA    mov         eax,dword ptr [eax-0C]
 00495AED    call        FindGlobalComponent
 00495AF2    mov         edx,dword ptr [ebp+8]
 00495AF5    cmp         eax,dword ptr [edx-8]
>00495AF8    jne         00495B06
 00495AFA    mov         eax,dword ptr [ebp+8]
 00495AFD    mov         eax,dword ptr [eax-8]
 00495B00    or          word ptr [eax+1C],200
 00495B06    xor         eax,eax
 00495B08    pop         edx
 00495B09    pop         ecx
 00495B0A    pop         ecx
 00495B0B    mov         dword ptr fs:[eax],edx
>00495B0E    jmp         00495B33
>00495B10    jmp         @HandleAnyException
 00495B15    mov         eax,dword ptr [ebp+8]
 00495B18    push        eax
 00495B19    mov         eax,dword ptr [ebp+8]
 00495B1C    add         eax,0FFFFFFF8
 00495B1F    call        Recover
 00495B24    pop         ecx
 00495B25    test        al,al
>00495B27    jne         00495B2E
 00495B29    call        @RaiseAgain
 00495B2E    call        @DoneExcept
 00495B33    pop         edi
 00495B34    pop         esi
 00495B35    pop         ebx
 00495B36    pop         ebp
 00495B37    ret
end;*}

//00495B38
{*procedure sub_00495B38(?:?);
begin
 00495B38    push        ebp
 00495B39    mov         ebp,esp
 00495B3B    push        ebx
 00495B3C    push        esi
 00495B3D    push        edi
 00495B3E    xor         eax,eax
 00495B40    push        ebp
 00495B41    push        495BB0
 00495B46    push        dword ptr fs:[eax]
 00495B49    mov         dword ptr fs:[eax],esp
 00495B4C    mov         eax,dword ptr [ebp+8]
 00495B4F    mov         edx,dword ptr [eax-1C]
 00495B52    mov         eax,dword ptr [ebp+8]
 00495B55    mov         eax,dword ptr [eax-10]
 00495B58    call        TReader.FindComponentClass
 00495B5D    mov         ecx,eax
 00495B5F    mov         eax,dword ptr [ebp+8]
 00495B62    mov         edx,dword ptr [eax-0C]
 00495B65    mov         eax,dword ptr [ebp+8]
 00495B68    mov         eax,dword ptr [eax-10]
 00495B6B    mov         ebx,dword ptr [eax]
 00495B6D    call        dword ptr [ebx+14]
 00495B70    mov         edx,dword ptr [ebp+8]
 00495B73    mov         dword ptr [edx-8],eax
 00495B76    mov         eax,dword ptr [ebp+8]
 00495B79    mov         eax,dword ptr [eax-8]
 00495B7C    mov         si,0FFF1
 00495B80    call        @CallDynaInst
 00495B85    mov         ebx,eax
 00495B87    mov         eax,dword ptr [ebp+8]
 00495B8A    mov         eax,dword ptr [eax-10]
 00495B8D    mov         dword ptr [eax+2C],ebx
 00495B90    test        ebx,ebx
>00495B92    jne         00495BA6
 00495B94    mov         eax,dword ptr [ebp+8]
 00495B97    mov         eax,dword ptr [eax-10]
 00495B9A    mov         eax,dword ptr [eax+18]
 00495B9D    mov         edx,dword ptr [ebp+8]
 00495BA0    mov         edx,dword ptr [edx-10]
 00495BA3    mov         dword ptr [edx+2C],eax
 00495BA6    xor         eax,eax
 00495BA8    pop         edx
 00495BA9    pop         ecx
 00495BAA    pop         ecx
 00495BAB    mov         dword ptr fs:[eax],edx
>00495BAE    jmp         00495BD3
>00495BB0    jmp         @HandleAnyException
 00495BB5    mov         eax,dword ptr [ebp+8]
 00495BB8    push        eax
 00495BB9    mov         eax,dword ptr [ebp+8]
 00495BBC    add         eax,0FFFFFFF8
 00495BBF    call        Recover
 00495BC4    pop         ecx
 00495BC5    test        al,al
>00495BC7    jne         00495BCE
 00495BC9    call        @RaiseAgain
 00495BCE    call        @DoneExcept
 00495BD3    pop         edi
 00495BD4    pop         esi
 00495BD5    pop         ebx
 00495BD6    pop         ebp
 00495BD7    ret
end;*}

//00495BD8
function TReader.ReadComponent(Component:TComponent):TComponent;
begin
{*
 00495BD8    push        ebp
 00495BD9    mov         ebp,esp
 00495BDB    add         esp,0FFFFFFC8
 00495BDE    push        ebx
 00495BDF    push        esi
 00495BE0    push        edi
 00495BE1    xor         ecx,ecx
 00495BE3    mov         dword ptr [ebp-1C],ecx
 00495BE6    mov         dword ptr [ebp-0C],ecx
 00495BE9    mov         dword ptr [ebp-4],ecx
 00495BEC    mov         dword ptr [ebp-18],edx
 00495BEF    mov         dword ptr [ebp-10],eax
 00495BF2    xor         eax,eax
 00495BF4    push        ebp
 00495BF5    push        495E20
 00495BFA    push        dword ptr fs:[eax]
 00495BFD    mov         dword ptr fs:[eax],esp
 00495C00    lea         ecx,[ebp-20]
 00495C03    lea         edx,[ebp-11]
 00495C06    mov         eax,dword ptr [ebp-10]
 00495C09    mov         ebx,dword ptr [eax]
 00495C0B    call        dword ptr [ebx+28]
 00495C0E    lea         edx,[ebp-1C]
 00495C11    mov         eax,dword ptr [ebp-10]
 00495C14    call        TReader.ReadStr
 00495C19    lea         edx,[ebp-0C]
 00495C1C    mov         eax,dword ptr [ebp-10]
 00495C1F    call        TReader.ReadStr
 00495C24    mov         eax,dword ptr [ebp-10]
 00495C27    mov         eax,dword ptr [eax+2C]
 00495C2A    mov         dword ptr [ebp-24],eax
 00495C2D    mov         eax,dword ptr [ebp-10]
 00495C30    mov         eax,dword ptr [eax+1C]
 00495C33    mov         dword ptr [ebp-28],eax
 00495C36    xor         edx,edx
 00495C38    push        ebp
 00495C39    push        495DED
 00495C3E    push        dword ptr fs:[edx]
 00495C41    mov         dword ptr fs:[edx],esp
 00495C44    mov         eax,dword ptr [ebp-18]
 00495C47    mov         dword ptr [ebp-8],eax
 00495C4A    cmp         dword ptr [ebp-8],0
>00495C4E    jne         00495C66
 00495C50    test        byte ptr [ebp-11],1
>00495C54    je          00495C5F
 00495C56    push        ebp
 00495C57    call        00495B38
 00495C5C    pop         ecx
>00495C5D    jmp         00495C66
 00495C5F    push        ebp
 00495C60    call        00495988
 00495C65    pop         ecx
 00495C66    cmp         dword ptr [ebp-8],0
>00495C6A    je          00495DCD
 00495C70    xor         edx,edx
 00495C72    push        ebp
 00495C73    push        495DAB
 00495C78    push        dword ptr fs:[edx]
 00495C7B    mov         dword ptr fs:[edx],esp
 00495C7E    push        ebp
 00495C7F    mov         eax,dword ptr [ebp-8]
 00495C82    call        004957F0
 00495C87    pop         ecx
 00495C88    mov         eax,dword ptr [ebp-8]
 00495C8B    or          word ptr [eax+1C],1
 00495C90    push        ebp
 00495C91    mov         dl,1
 00495C93    movzx       eax,word ptr ds:[495E34]
 00495C9A    call        00495884
 00495C9F    pop         ecx
 00495CA0    test        byte ptr [ebp-11],1
>00495CA4    jne         00495CAD
 00495CA6    push        ebp
 00495CA7    call        00495A98
 00495CAC    pop         ecx
 00495CAD    cmp         dword ptr [ebp-8],0
>00495CB1    jne         00495CC5
 00495CB3    xor         eax,eax
 00495CB5    pop         edx
 00495CB6    pop         ecx
 00495CB7    pop         ecx
 00495CB8    mov         dword ptr fs:[eax],edx
 00495CBB    call        @TryFinallyExit
>00495CC0    jmp         00495DF4
 00495CC5    mov         eax,dword ptr [ebp-8]
 00495CC8    test        byte ptr [eax+1D],2
>00495CCC    je          00495CD7
 00495CCE    mov         eax,dword ptr [ebp-10]
 00495CD1    mov         edx,dword ptr [ebp-8]
 00495CD4    mov         dword ptr [eax+1C],edx
 00495CD7    mov         eax,dword ptr [ebp-8]
 00495CDA    or          word ptr [eax+1C],2
 00495CDF    push        ebp
 00495CE0    mov         dl,1
 00495CE2    movzx       eax,word ptr ds:[495E38]
 00495CE9    call        00495884
 00495CEE    pop         ecx
 00495CEF    mov         edx,dword ptr [ebp-10]
 00495CF2    mov         eax,dword ptr [ebp-8]
 00495CF5    mov         ecx,dword ptr [eax]
 00495CF7    call        dword ptr [ecx+18]
 00495CFA    mov         eax,dword ptr [ebp-8]
 00495CFD    and         word ptr [eax+1C],0FFFFFFFD
 00495D02    push        ebp
 00495D03    xor         edx,edx
 00495D05    movzx       eax,word ptr ds:[495E38]
 00495D0C    call        00495884
 00495D11    pop         ecx
 00495D12    test        byte ptr [ebp-11],2
>00495D16    je          00495D2D
 00495D18    mov         eax,dword ptr [ebp-10]
 00495D1B    mov         eax,dword ptr [eax+2C]
 00495D1E    mov         ecx,dword ptr [ebp-20]
 00495D21    mov         edx,dword ptr [ebp-8]
 00495D24    mov         si,0FFF8
 00495D28    call        @CallDynaInst
 00495D2D    test        byte ptr [ebp-11],1
>00495D31    jne         00495D3C
 00495D33    mov         eax,dword ptr [ebp-8]
 00495D36    test        byte ptr [eax+1D],2
>00495D3A    je          00495D80
 00495D3C    mov         eax,dword ptr [ebp-10]
 00495D3F    mov         eax,dword ptr [eax+34]
 00495D42    mov         edx,dword ptr [ebp-8]
 00495D45    mov         dword ptr [ebp-2C],edx
 00495D48    add         eax,8
 00495D4B    mov         dword ptr [ebp-30],eax
 00495D4E    lea         edx,[ebp-2C]
 00495D51    mov         eax,dword ptr [ebp-30]
 00495D54    call        00434714
 00495D59    test        eax,eax
>00495D5B    jge         00495DA1
 00495D5D    push        ebp
 00495D5E    mov         eax,dword ptr [ebp-8]
 00495D61    call        0049579C
 00495D66    pop         ecx
 00495D67    mov         eax,dword ptr [ebp-10]
 00495D6A    mov         eax,dword ptr [eax+34]
 00495D6D    mov         edx,dword ptr [ebp-8]
 00495D70    mov         dword ptr [ebp-34],edx
 00495D73    lea         edx,[ebp-34]
 00495D76    add         eax,8
 00495D79    call        0043489C
>00495D7E    jmp         00495DA1
 00495D80    push        ebp
 00495D81    mov         eax,dword ptr [ebp-8]
 00495D84    call        0049579C
 00495D89    pop         ecx
 00495D8A    mov         eax,dword ptr [ebp-10]
 00495D8D    mov         eax,dword ptr [eax+34]
 00495D90    mov         edx,dword ptr [ebp-8]
 00495D93    mov         dword ptr [ebp-38],edx
 00495D96    lea         edx,[ebp-38]
 00495D99    add         eax,8
 00495D9C    call        0043489C
 00495DA1    xor         eax,eax
 00495DA3    pop         edx
 00495DA4    pop         ecx
 00495DA5    pop         ecx
 00495DA6    mov         dword ptr fs:[eax],edx
>00495DA9    jmp         00495DCD
>00495DAB    jmp         @HandleAnyException
 00495DB0    push        ebp
 00495DB1    call        ComponentCreated
 00495DB6    pop         ecx
 00495DB7    test        al,al
>00495DB9    je          00495DC3
 00495DBB    mov         eax,dword ptr [ebp-8]
 00495DBE    call        TObject.Free
 00495DC3    call        @RaiseAgain
 00495DC8    call        @DoneExcept
 00495DCD    xor         eax,eax
 00495DCF    pop         edx
 00495DD0    pop         ecx
 00495DD1    pop         ecx
 00495DD2    mov         dword ptr fs:[eax],edx
 00495DD5    push        495DF4
 00495DDA    mov         eax,dword ptr [ebp-10]
 00495DDD    mov         edx,dword ptr [ebp-24]
 00495DE0    mov         dword ptr [eax+2C],edx
 00495DE3    mov         eax,dword ptr [ebp-10]
 00495DE6    mov         edx,dword ptr [ebp-28]
 00495DE9    mov         dword ptr [eax+1C],edx
 00495DEC    ret
>00495DED    jmp         @HandleFinally
>00495DF2    jmp         00495DDA
 00495DF4    xor         eax,eax
 00495DF6    pop         edx
 00495DF7    pop         ecx
 00495DF8    pop         ecx
 00495DF9    mov         dword ptr fs:[eax],edx
 00495DFC    push        495E27
 00495E01    lea         eax,[ebp-1C]
 00495E04    call        @UStrClr
 00495E09    lea         eax,[ebp-0C]
 00495E0C    call        @UStrClr
 00495E11    lea         eax,[ebp-4]
 00495E14    mov         edx,dword ptr ds:[495764];:TReader.:1
 00495E1A    call        @DynArrayClear
 00495E1F    ret
>00495E20    jmp         @HandleFinally
>00495E25    jmp         00495E01
 00495E27    mov         eax,dword ptr [ebp-8]
 00495E2A    pop         edi
 00495E2B    pop         esi
 00495E2C    pop         ebx
 00495E2D    mov         esp,ebp
 00495E2F    pop         ebp
 00495E30    ret
*}
end;

//00495E3C
procedure TReader.ReadData(const Instance:TComponent);
begin
{*
 00495E3C    push        ebp
 00495E3D    mov         ebp,esp
 00495E3F    push        ecx
 00495E40    push        ebx
 00495E41    mov         ebx,edx
 00495E43    mov         dword ptr [ebp-4],eax
 00495E46    mov         eax,dword ptr [ebp-4]
 00495E49    cmp         dword ptr [eax+30],0
>00495E4D    jne         00495E9E
 00495E4F    mov         dl,1
 00495E51    mov         eax,[0047D574];TList<System.TObject>
 00495E56    call        TList<System.TObject>.Create
 00495E5B    mov         edx,dword ptr [ebp-4]
 00495E5E    mov         dword ptr [edx+30],eax
 00495E61    xor         eax,eax
 00495E63    push        ebp
 00495E64    push        495E97
 00495E69    push        dword ptr fs:[eax]
 00495E6C    mov         dword ptr fs:[eax],esp
 00495E6F    mov         edx,ebx
 00495E71    mov         eax,dword ptr [ebp-4]
 00495E74    call        TReader.ReadDataInner
 00495E79    mov         eax,dword ptr [ebp-4]
 00495E7C    call        TReader.DoFixupReferences
 00495E81    xor         eax,eax
 00495E83    pop         edx
 00495E84    pop         ecx
 00495E85    pop         ecx
 00495E86    mov         dword ptr fs:[eax],edx
 00495E89    push        495EA8
 00495E8E    mov         eax,dword ptr [ebp-4]
 00495E91    call        TReader.FreeFixups
 00495E96    ret
>00495E97    jmp         @HandleFinally
>00495E9C    jmp         00495E8E
 00495E9E    mov         edx,ebx
 00495EA0    mov         eax,dword ptr [ebp-4]
 00495EA3    call        TReader.ReadDataInner
 00495EA8    pop         ebx
 00495EA9    pop         ecx
 00495EAA    pop         ebp
 00495EAB    ret
*}
end;

//00495EAC
procedure TReader.ReadDataInner(const Instance:TComponent);
begin
{*
 00495EAC    push        ebp
 00495EAD    mov         ebp,esp
 00495EAF    add         esp,0FFFFFFF4
 00495EB2    push        ebx
 00495EB3    push        esi
 00495EB4    push        edi
 00495EB5    mov         ebx,edx
 00495EB7    mov         dword ptr [ebp-4],eax
>00495EBA    jmp         00495EC6
 00495EBC    mov         edx,ebx
 00495EBE    mov         eax,dword ptr [ebp-4]
 00495EC1    call        TReader.ReadProperty
 00495EC6    mov         eax,dword ptr [ebp-4]
 00495EC9    call        TReader.EndOfList
 00495ECE    test        al,al
>00495ED0    je          00495EBC
 00495ED2    mov         eax,dword ptr [ebp-4]
 00495ED5    call        TReader.ReadListEnd
 00495EDA    mov         eax,dword ptr [ebp-4]
 00495EDD    mov         eax,dword ptr [eax+2C]
 00495EE0    mov         dword ptr [ebp-8],eax
 00495EE3    mov         eax,dword ptr [ebp-4]
 00495EE6    mov         eax,dword ptr [eax+28]
 00495EE9    mov         dword ptr [ebp-0C],eax
 00495EEC    mov         eax,ebx
 00495EEE    mov         si,0FFFB
 00495EF2    call        @CallDynaInst
 00495EF7    mov         edx,dword ptr [ebp-4]
 00495EFA    mov         dword ptr [edx+2C],eax
 00495EFD    xor         eax,eax
 00495EFF    push        ebp
 00495F00    push        495F6E
 00495F05    push        dword ptr fs:[eax]
 00495F08    mov         dword ptr fs:[eax],esp
 00495F0B    mov         eax,ebx
 00495F0D    mov         si,0FFFC
 00495F11    call        @CallDynaInst
 00495F16    mov         edi,eax
 00495F18    mov         eax,dword ptr [ebp-4]
 00495F1B    mov         dword ptr [eax+28],edi
 00495F1E    test        edi,edi
>00495F20    jne         00495F3A
 00495F22    mov         eax,dword ptr [ebp-4]
 00495F25    mov         eax,dword ptr [eax+18]
 00495F28    mov         edx,dword ptr [ebp-4]
 00495F2B    mov         dword ptr [edx+28],eax
>00495F2E    jmp         00495F3A
 00495F30    xor         edx,edx
 00495F32    mov         eax,dword ptr [ebp-4]
 00495F35    call        TReader.ReadComponent
 00495F3A    mov         eax,dword ptr [ebp-4]
 00495F3D    call        TReader.EndOfList
 00495F42    test        al,al
>00495F44    je          00495F30
 00495F46    mov         eax,dword ptr [ebp-4]
 00495F49    call        TReader.ReadListEnd
 00495F4E    xor         eax,eax
 00495F50    pop         edx
 00495F51    pop         ecx
 00495F52    pop         ecx
 00495F53    mov         dword ptr fs:[eax],edx
 00495F56    push        495F75
 00495F5B    mov         eax,dword ptr [ebp-4]
 00495F5E    mov         edx,dword ptr [ebp-8]
 00495F61    mov         dword ptr [eax+2C],edx
 00495F64    mov         eax,dword ptr [ebp-4]
 00495F67    mov         edx,dword ptr [ebp-0C]
 00495F6A    mov         dword ptr [eax+28],edx
 00495F6D    ret
>00495F6E    jmp         @HandleFinally
>00495F73    jmp         00495F5B
 00495F75    pop         edi
 00495F76    pop         esi
 00495F77    pop         ebx
 00495F78    mov         esp,ebp
 00495F7A    pop         ebp
 00495F7B    ret
*}
end;

//00495F7C
function TReader.ReadFloat:Extended;
begin
{*
 00495F7C    push        ebx
 00495F7D    add         esp,0FFFFFFF4
 00495F80    mov         ebx,eax
 00495F82    mov         eax,ebx
 00495F84    call        TReader.ReadValue
 00495F89    cmp         al,5
>00495F8B    jne         00495F9D
 00495F8D    mov         edx,esp
 00495F8F    mov         ecx,0A
 00495F94    mov         eax,ebx
 00495F96    call        TReader.Read
>00495F9B    jmp         00495FAB
 00495F9D    dec         dword ptr [ebx+10]
 00495FA0    mov         eax,ebx
 00495FA2    call        TReader.ReadDouble
 00495FA7    fstp        tbyte ptr [esp]
 00495FAA    wait
 00495FAB    fld         tbyte ptr [esp]
 00495FAE    add         esp,0C
 00495FB1    pop         ebx
 00495FB2    ret
*}
end;

//00495FB4
function TReader.ReadDouble:Double;
begin
{*
 00495FB4    push        ebx
 00495FB5    add         esp,0FFFFFFF0
 00495FB8    mov         ebx,eax
 00495FBA    mov         eax,ebx
 00495FBC    call        TReader.ReadValue
 00495FC1    cmp         al,15
>00495FC3    jne         00495FD5
 00495FC5    mov         edx,esp
 00495FC7    mov         ecx,8
 00495FCC    mov         eax,ebx
 00495FCE    call        TReader.Read
>00495FD3    jmp         00495FEF
 00495FD5    dec         dword ptr [ebx+10]
 00495FD8    mov         eax,ebx
 00495FDA    call        TReader.ReadInt64
 00495FDF    mov         dword ptr [esp+8],eax
 00495FE3    mov         dword ptr [esp+0C],edx
 00495FE7    fild        qword ptr [esp+8]
 00495FEB    fstp        qword ptr [esp]
 00495FEE    wait
 00495FEF    fld         qword ptr [esp]
 00495FF2    add         esp,10
 00495FF5    pop         ebx
 00495FF6    ret
*}
end;

//00495FF8
function TReader.ReadSingle:Single;
begin
{*
 00495FF8    push        ebx
 00495FF9    add         esp,0FFFFFFF4
 00495FFC    mov         ebx,eax
 00495FFE    mov         eax,ebx
 00496000    call        TReader.ReadValue
 00496005    cmp         al,0F
>00496007    jne         00496019
 00496009    mov         edx,esp
 0049600B    mov         ecx,4
 00496010    mov         eax,ebx
 00496012    call        TReader.Read
>00496017    jmp         00496033
 00496019    dec         dword ptr [ebx+10]
 0049601C    mov         eax,ebx
 0049601E    call        TReader.ReadInt64
 00496023    mov         dword ptr [esp+4],eax
 00496027    mov         dword ptr [esp+8],edx
 0049602B    fild        qword ptr [esp+4]
 0049602F    fstp        dword ptr [esp]
 00496032    wait
 00496033    fld         dword ptr [esp]
 00496036    add         esp,0C
 00496039    pop         ebx
 0049603A    ret
*}
end;

//0049603C
function TReader.ReadCurrency:Currency;
begin
{*
 0049603C    push        ebx
 0049603D    add         esp,0FFFFFFE8
 00496040    mov         ebx,eax
 00496042    mov         eax,ebx
 00496044    call        TReader.ReadValue
 00496049    cmp         al,10
>0049604B    jne         0049606F
 0049604D    lea         edx,[esp+8]
 00496051    mov         ecx,8
 00496056    mov         eax,ebx
 00496058    call        TReader.Read
 0049605D    lea         eax,[esp+8]
 00496061    mov         edx,dword ptr [eax]
 00496063    mov         dword ptr [esp],edx
 00496066    mov         edx,dword ptr [eax+4]
 00496069    mov         dword ptr [esp+4],edx
>0049606D    jmp         0049608F
 0049606F    dec         dword ptr [ebx+10]
 00496072    mov         eax,ebx
 00496074    call        TReader.ReadInt64
 00496079    mov         dword ptr [esp+10],eax
 0049607D    mov         dword ptr [esp+14],edx
 00496081    fild        qword ptr [esp+10]
 00496085    fmul        dword ptr ds:[496098]
 0049608B    fistp       qword ptr [esp]
 0049608E    wait
 0049608F    fild        qword ptr [esp]
 00496092    add         esp,18
 00496095    pop         ebx
 00496096    ret
*}
end;

//0049609C
function TReader.ReadDate:TDateTime;
begin
{*
 0049609C    push        ebx
 0049609D    add         esp,0FFFFFFE8
 004960A0    mov         ebx,eax
 004960A2    mov         eax,ebx
 004960A4    call        TReader.ReadValue
 004960A9    cmp         al,11
>004960AB    jne         004960CE
 004960AD    lea         edx,[esp+8]
 004960B1    mov         ecx,8
 004960B6    mov         eax,ebx
 004960B8    call        TReader.Read
 004960BD    mov         eax,dword ptr [esp+8]
 004960C1    mov         dword ptr [esp],eax
 004960C4    mov         eax,dword ptr [esp+0C]
 004960C8    mov         dword ptr [esp+4],eax
>004960CC    jmp         004960E8
 004960CE    dec         dword ptr [ebx+10]
 004960D1    mov         eax,ebx
 004960D3    call        TReader.ReadInt64
 004960D8    mov         dword ptr [esp+10],eax
 004960DC    mov         dword ptr [esp+14],edx
 004960E0    fild        qword ptr [esp+10]
 004960E4    fstp        qword ptr [esp]
 004960E7    wait
 004960E8    fld         qword ptr [esp]
 004960EB    add         esp,18
 004960EE    pop         ebx
 004960EF    ret
*}
end;

//004960F0
function TReader.ReadIdent:string;
begin
{*
 004960F0    push        ebp
 004960F1    mov         ebp,esp
 004960F3    push        0
 004960F5    push        0
 004960F7    push        0
 004960F9    push        ebx
 004960FA    push        esi
 004960FB    push        edi
 004960FC    mov         esi,edx
 004960FE    mov         ebx,eax
 00496100    xor         eax,eax
 00496102    push        ebp
 00496103    push        49621E
 00496108    push        dword ptr fs:[eax]
 0049610B    mov         dword ptr fs:[eax],esp
 0049610E    mov         eax,ebx
 00496110    call        TReader.ReadValue
 00496115    and         eax,7F
 00496118    cmp         eax,0D
>0049611B    ja          004961F5
 00496121    movzx       eax,byte ptr [eax+49612F]
 00496128    jmp         dword ptr [eax*4+49613D]
 00496128    db          5
 00496128    db          0
 00496128    db          0
 00496128    db          0
 00496128    db          0
 00496128    db          0
 00496128    db          0
 00496128    db          1
 00496128    db          2
 00496128    db          3
 00496128    db          0
 00496128    db          0
 00496128    db          0
 00496128    db          4
 00496128    dd          004961F5
 00496128    dd          00496155
 00496128    dd          004961BD
 00496128    dd          004961CB
 00496128    dd          004961D9
 00496128    dd          004961E7
 00496155    lea         edx,[ebp-9]
 00496158    mov         ecx,1
 0049615D    mov         eax,ebx
 0049615F    call        TReader.Read
 00496164    movzx       eax,byte ptr [ebp-9]
 00496168    push        eax
 00496169    lea         eax,[ebp-4]
 0049616C    mov         ecx,1
 00496171    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00496177    call        @DynArraySetLength
 0049617C    add         esp,4
 0049617F    movzx       ecx,byte ptr [ebp-9]
 00496183    mov         edx,dword ptr [ebp-4]
 00496186    mov         eax,ebx
 00496188    call        TReader.Read
 0049618D    call        004276C0
 00496192    mov         edi,eax
 00496194    mov         ebx,dword ptr [ebp-4]
 00496197    test        ebx,ebx
>00496199    je          004961A0
 0049619B    sub         ebx,4
 0049619E    mov         ebx,dword ptr [ebx]
 004961A0    push        ebx
 004961A1    lea         eax,[ebp-8]
 004961A4    push        eax
 004961A5    xor         ecx,ecx
 004961A7    mov         edx,dword ptr [ebp-4]
 004961AA    mov         eax,edi
 004961AC    call        TEncoding.GetString
 004961B1    mov         eax,esi
 004961B3    mov         edx,dword ptr [ebp-8]
 004961B6    call        @UStrAsg
>004961BB    jmp         004961FA
 004961BD    mov         eax,esi
 004961BF    mov         edx,496238;'False'
 004961C4    call        @UStrAsg
>004961C9    jmp         004961FA
 004961CB    mov         eax,esi
 004961CD    mov         edx,496250;'True'
 004961D2    call        @UStrAsg
>004961D7    jmp         004961FA
 004961D9    mov         eax,esi
 004961DB    mov         edx,496268;'nil'
 004961E0    call        @UStrAsg
>004961E5    jmp         004961FA
 004961E7    mov         eax,esi
 004961E9    mov         edx,49627C;'Null'
 004961EE    call        @UStrAsg
>004961F3    jmp         004961FA
 004961F5    call        PropValueError
 004961FA    xor         eax,eax
 004961FC    pop         edx
 004961FD    pop         ecx
 004961FE    pop         ecx
 004961FF    mov         dword ptr fs:[eax],edx
 00496202    push        496225
 00496207    lea         eax,[ebp-8]
 0049620A    call        @UStrClr
 0049620F    lea         eax,[ebp-4]
 00496212    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00496218    call        @DynArrayClear
 0049621D    ret
>0049621E    jmp         @HandleFinally
>00496223    jmp         00496207
 00496225    pop         edi
 00496226    pop         esi
 00496227    pop         ebx
 00496228    mov         esp,ebp
 0049622A    pop         ebp
 0049622B    ret
*}
end;

//00496288
function TReader.ReadInteger:Integer;
begin
{*
 00496288    push        ebx
 00496289    add         esp,0FFFFFFF8
 0049628C    mov         ebx,eax
 0049628E    mov         eax,ebx
 00496290    call        TReader.ReadValue
 00496295    sub         al,2
>00496297    je          004962A3
 00496299    dec         al
>0049629B    je          004962BD
 0049629D    dec         al
>0049629F    je          004962D7
>004962A1    jmp         004962E7
 004962A3    lea         edx,[esp+4]
 004962A7    mov         ecx,1
 004962AC    mov         eax,ebx
 004962AE    call        TReader.Read
 004962B3    movsx       eax,byte ptr [esp+4]
 004962B8    mov         dword ptr [esp],eax
>004962BB    jmp         004962EC
 004962BD    lea         edx,[esp+6]
 004962C1    mov         ecx,2
 004962C6    mov         eax,ebx
 004962C8    call        TReader.Read
 004962CD    movsx       eax,word ptr [esp+6]
 004962D2    mov         dword ptr [esp],eax
>004962D5    jmp         004962EC
 004962D7    mov         edx,esp
 004962D9    mov         ecx,4
 004962DE    mov         eax,ebx
 004962E0    call        TReader.Read
>004962E5    jmp         004962EC
 004962E7    call        PropValueError
 004962EC    mov         eax,dword ptr [esp]
 004962EF    pop         ecx
 004962F0    pop         edx
 004962F1    pop         ebx
 004962F2    ret
*}
end;

//004962F4
function TReader.ReadInt64:Int64;
begin
{*
 004962F4    push        ebx
 004962F5    add         esp,0FFFFFFF8
 004962F8    mov         ebx,eax
 004962FA    mov         eax,ebx
 004962FC    call        TReader.NextValue
 00496301    cmp         al,13
>00496303    jne         0049631C
 00496305    mov         eax,ebx
 00496307    call        TReader.ReadValue
 0049630C    mov         edx,esp
 0049630E    mov         ecx,8
 00496313    mov         eax,ebx
 00496315    call        TReader.Read
>0049631A    jmp         0049632B
 0049631C    mov         eax,ebx
 0049631E    call        TReader.ReadInteger
 00496323    cdq
 00496324    mov         dword ptr [esp],eax
 00496327    mov         dword ptr [esp+4],edx
 0049632B    mov         eax,dword ptr [esp]
 0049632E    mov         edx,dword ptr [esp+4]
 00496332    pop         ecx
 00496333    pop         edx
 00496334    pop         ebx
 00496335    ret
*}
end;

//00496338
procedure TReader.ReadListBegin;
begin
{*
 00496338    mov         dl,1
 0049633A    call        TReader.CheckValue
 0049633F    ret
*}
end;

//00496340
procedure TReader.ReadListEnd;
begin
{*
 00496340    xor         edx,edx
 00496342    call        TReader.CheckValue
 00496347    ret
*}
end;

//00496348
procedure TReader.ReadPrefix(var Flags:TFilerFlags; var AChildPos:Integer);
begin
{*
 00496348    push        ebx
 00496349    push        esi
 0049634A    push        edi
 0049634B    mov         edi,ecx
 0049634D    mov         esi,edx
 0049634F    mov         ebx,eax
 00496351    movzx       eax,byte ptr ds:[496384]
 00496358    mov         byte ptr [esi],al
 0049635A    mov         eax,ebx
 0049635C    call        TReader.NextValue
 00496361    and         al,0F0
 00496363    cmp         al,0F0
>00496365    jne         00496380
 00496367    mov         eax,ebx
 00496369    call        TReader.ReadValue
 0049636E    and         al,0F
 00496370    mov         byte ptr [esi],al
 00496372    test        byte ptr [esi],2
>00496375    je          00496380
 00496377    mov         eax,ebx
 00496379    call        TReader.ReadInteger
 0049637E    mov         dword ptr [edi],eax
 00496380    pop         edi
 00496381    pop         esi
 00496382    pop         ebx
 00496383    ret
*}
end;

//00496388
procedure HandleException(E:SysUtils.Exception);
begin
{*
 00496388    push        ebp
 00496389    mov         ebp,esp
 0049638B    add         esp,0FFFFFFDC
 0049638E    push        ebx
 0049638F    xor         edx,edx
 00496391    mov         dword ptr [ebp-4],edx
 00496394    mov         ebx,eax
 00496396    xor         eax,eax
 00496398    push        ebp
 00496399    push        49644A
 0049639E    push        dword ptr fs:[eax]
 004963A1    mov         dword ptr fs:[eax],esp
 004963A4    lea         eax,[ebp-4]
 004963A7    call        @UStrClr
 004963AC    mov         eax,dword ptr [ebp+8]
 004963AF    mov         eax,dword ptr [eax-4]
 004963B2    mov         edx,dword ptr ds:[478C44];TComponent
 004963B8    call        @IsClass
 004963BD    test        al,al
>004963BF    je          004963D2
 004963C1    lea         eax,[ebp-4]
 004963C4    mov         edx,dword ptr [ebp+8]
 004963C7    mov         edx,dword ptr [edx-4]
 004963CA    mov         edx,dword ptr [edx+8]
 004963CD    call        @UStrLAsg
 004963D2    cmp         dword ptr [ebp-4],0
>004963D6    jne         004963E8
 004963D8    lea         edx,[ebp-4]
 004963DB    mov         eax,dword ptr [ebp+8]
 004963DE    mov         eax,dword ptr [eax-4]
 004963E1    mov         eax,dword ptr [eax]
 004963E3    call        TObject.ClassName
 004963E8    mov         eax,dword ptr [ebp-4]
 004963EB    mov         dword ptr [ebp-24],eax
 004963EE    mov         byte ptr [ebp-20],11
 004963F2    mov         eax,[007C45F4]
 004963F7    mov         eax,dword ptr [eax]
 004963F9    mov         dword ptr [ebp-1C],eax
 004963FC    mov         byte ptr [ebp-18],11
 00496400    mov         eax,dword ptr [ebp+8]
 00496403    mov         eax,dword ptr [eax-8]
 00496406    mov         dword ptr [ebp-14],eax
 00496409    mov         byte ptr [ebp-10],11
 0049640D    mov         eax,dword ptr [ebx+4]
 00496410    mov         dword ptr [ebp-0C],eax
 00496413    mov         byte ptr [ebp-8],11
 00496417    lea         eax,[ebp-24]
 0049641A    push        eax
 0049641B    push        3
 0049641D    mov         ecx,dword ptr ds:[7C4D10];^SResString138:TResStringRec
 00496423    mov         dl,1
 00496425    mov         eax,[0046B93C];EReadError
 0049642A    call        Exception.CreateResFmt
 0049642F    call        @RaiseExcept
 00496434    xor         eax,eax
 00496436    pop         edx
 00496437    pop         ecx
 00496438    pop         ecx
 00496439    mov         dword ptr fs:[eax],edx
 0049643C    push        496451
 00496441    lea         eax,[ebp-4]
 00496444    call        @UStrClr
 00496449    ret
>0049644A    jmp         @HandleFinally
>0049644F    jmp         00496441
 00496451    pop         ebx
 00496452    mov         esp,ebp
 00496454    pop         ebp
 00496455    ret
*}
end;

//00496458
procedure PropPathError;
begin
{*
 00496458    push        ebp
 00496459    mov         ebp,esp
 0049645B    mov         eax,dword ptr [ebp+8]
 0049645E    mov         eax,dword ptr [eax-0C]
 00496461    call        TReader.SkipValue
 00496466    mov         eax,[007C4CA4];^SResString130:TResStringRec
 0049646B    call        ReadError
 00496470    pop         ebp
 00496471    ret
*}
end;

//00496474
procedure TReader.ReadProperty(AInstance:TPersistent);
begin
{*
 00496474    push        ebp
 00496475    mov         ebp,esp
 00496477    add         esp,0FFFFFFE0
 0049647A    push        ebx
 0049647B    push        esi
 0049647C    push        edi
 0049647D    xor         ecx,ecx
 0049647F    mov         dword ptr [ebp-20],ecx
 00496482    mov         dword ptr [ebp-8],ecx
 00496485    mov         dword ptr [ebp-4],edx
 00496488    mov         dword ptr [ebp-0C],eax
 0049648B    xor         eax,eax
 0049648D    push        ebp
 0049648E    push        4966DA
 00496493    push        dword ptr fs:[eax]
 00496496    mov         dword ptr fs:[eax],esp
 00496499    xor         edx,edx
 0049649B    push        ebp
 0049649C    push        496684
 004964A1    push        dword ptr fs:[edx]
 004964A4    mov         dword ptr fs:[edx],esp
 004964A7    lea         edx,[ebp-8]
 004964AA    mov         eax,dword ptr [ebp-0C]
 004964AD    call        TReader.ReadStr
 004964B2    xor         edx,edx
 004964B4    push        ebp
 004964B5    push        49665D
 004964BA    push        dword ptr fs:[edx]
 004964BD    mov         dword ptr fs:[edx],esp
 004964C0    mov         ebx,1
 004964C5    mov         eax,dword ptr [ebp-8]
 004964C8    test        eax,eax
>004964CA    je          004964D1
 004964CC    sub         eax,4
 004964CF    mov         eax,dword ptr [eax]
 004964D1    mov         esi,eax
 004964D3    mov         eax,dword ptr [ebp-4]
 004964D6    mov         dword ptr [ebp-14],eax
 004964D9    mov         eax,dword ptr [ebp-0C]
 004964DC    mov         byte ptr [eax+88],1
 004964E3    mov         dword ptr [ebp-10],ebx
>004964E6    jmp         004964E9
 004964E8    inc         ebx
 004964E9    cmp         esi,ebx
>004964EB    jl          004964F8
 004964ED    mov         eax,dword ptr [ebp-8]
 004964F0    cmp         word ptr [eax+ebx*2-2],2E
>004964F6    jne         004964E8
 004964F8    lea         eax,[ebp-20]
 004964FB    push        eax
 004964FC    mov         ecx,ebx
 004964FE    sub         ecx,dword ptr [ebp-10]
 00496501    mov         edx,dword ptr [ebp-10]
 00496504    dec         edx
 00496505    lea         eax,[ebp-8]
 00496508    call        00426870
 0049650D    mov         edx,dword ptr [ebp-20]
 00496510    mov         eax,dword ptr [ebp-0C]
 00496513    add         eax,80
 00496518    call        @UStrAsg
 0049651D    cmp         esi,ebx
>0049651F    jl          004965EA
 00496525    mov         eax,dword ptr [ebp-14]
 00496528    mov         eax,dword ptr [eax]
 0049652A    mov         dword ptr [ebp-1C],eax
 0049652D    mov         eax,dword ptr [ebp-0C]
 00496530    mov         edx,dword ptr [eax+80]
 00496536    mov         eax,dword ptr [ebp-1C]
 00496539    add         eax,0FFFFFFB8
 0049653C    mov         eax,dword ptr [eax]
 0049653E    call        GetPropInfo
 00496543    mov         edi,eax
 00496545    test        edi,edi
>00496547    jne         004965AA
 00496549    mov         eax,dword ptr [ebp-0C]
 0049654C    add         eax,80
 00496551    mov         edx,dword ptr [ebp-8]
 00496554    call        @UStrAsg
 00496559    mov         eax,dword ptr [ebp-0C]
 0049655C    mov         byte ptr [eax+88],0
 00496563    mov         edx,dword ptr [ebp-0C]
 00496566    mov         eax,dword ptr [ebp-14]
 00496569    mov         ecx,dword ptr [eax]
 0049656B    call        dword ptr [ecx+4]
 0049656E    mov         eax,dword ptr [ebp-0C]
 00496571    mov         byte ptr [eax+88],1
 00496578    mov         eax,dword ptr [ebp-0C]
 0049657B    cmp         dword ptr [eax+80],0
>00496582    je          00496595
 00496584    mov         eax,dword ptr [ebp-0C]
 00496587    mov         edx,dword ptr [eax+80]
 0049658D    mov         eax,dword ptr [ebp-0C]
 00496590    call        TReader.PropertyError
 00496595    xor         eax,eax
 00496597    pop         edx
 00496598    pop         ecx
 00496599    pop         ecx
 0049659A    mov         dword ptr fs:[eax],edx
 0049659D    xor         eax,eax
 0049659F    pop         edx
 004965A0    pop         ecx
 004965A1    pop         ecx
 004965A2    mov         dword ptr fs:[eax],edx
>004965A5    jmp         004966BC
 004965AA    xor         eax,eax
 004965AC    mov         dword ptr [ebp-18],eax
 004965AF    mov         eax,dword ptr [edi]
 004965B1    mov         eax,dword ptr [eax]
 004965B3    cmp         byte ptr [eax],7
>004965B6    jne         004965C5
 004965B8    mov         edx,edi
 004965BA    mov         eax,dword ptr [ebp-14]
 004965BD    call        GetOrdProp
 004965C2    mov         dword ptr [ebp-18],eax
 004965C5    mov         eax,dword ptr [ebp-18]
 004965C8    mov         edx,dword ptr ds:[46D778];TPersistent
 004965CE    call        @IsClass
 004965D3    test        al,al
>004965D5    jne         004965DE
 004965D7    push        ebp
 004965D8    call        PropPathError
 004965DD    pop         ecx
 004965DE    mov         eax,dword ptr [ebp-18]
 004965E1    mov         dword ptr [ebp-14],eax
 004965E4    inc         ebx
>004965E5    jmp         004964E3
 004965EA    mov         eax,dword ptr [ebp-14]
 004965ED    mov         eax,dword ptr [eax]
 004965EF    mov         edx,dword ptr [ebp-0C]
 004965F2    mov         edx,dword ptr [edx+80]
 004965F8    add         eax,0FFFFFFB8
 004965FB    mov         eax,dword ptr [eax]
 004965FD    call        GetPropInfo
 00496602    mov         edi,eax
 00496604    test        edi,edi
>00496606    je          00496617
 00496608    mov         ecx,edi
 0049660A    mov         edx,dword ptr [ebp-14]
 0049660D    mov         eax,dword ptr [ebp-0C]
 00496610    call        004968A4
>00496615    jmp         00496653
 00496617    mov         eax,dword ptr [ebp-0C]
 0049661A    mov         byte ptr [eax+88],0
 00496621    mov         edx,dword ptr [ebp-0C]
 00496624    mov         eax,dword ptr [ebp-14]
 00496627    mov         ecx,dword ptr [eax]
 00496629    call        dword ptr [ecx+4]
 0049662C    mov         eax,dword ptr [ebp-0C]
 0049662F    mov         byte ptr [eax+88],1
 00496636    mov         eax,dword ptr [ebp-0C]
 00496639    cmp         dword ptr [eax+80],0
>00496640    je          00496653
 00496642    mov         eax,dword ptr [ebp-0C]
 00496645    mov         edx,dword ptr [eax+80]
 0049664B    mov         eax,dword ptr [ebp-0C]
 0049664E    call        TReader.PropertyError
 00496653    xor         eax,eax
 00496655    pop         edx
 00496656    pop         ecx
 00496657    pop         ecx
 00496658    mov         dword ptr fs:[eax],edx
>0049665B    jmp         0049667A
>0049665D    jmp         @HandleOnException
 00496662    dd          1
 00496666    dd          004174D0;Exception
 0049666A    dd          0049666E
 0049666E    push        ebp
 0049666F    call        HandleException
 00496674    pop         ecx
 00496675    call        @DoneExcept
 0049667A    xor         eax,eax
 0049667C    pop         edx
 0049667D    pop         ecx
 0049667E    pop         ecx
 0049667F    mov         dword ptr fs:[eax],edx
>00496682    jmp         004966BC
>00496684    jmp         @HandleOnException
 00496689    dd          1
 0049668D    dd          004174D0;Exception
 00496691    dd          00496695
 00496695    mov         ebx,eax
 00496697    mov         eax,dword ptr [ebp-0C]
 0049669A    cmp         byte ptr [eax+88],0
>004966A1    je          004966B2
 004966A3    mov         edx,dword ptr [ebx+4]
 004966A6    mov         eax,dword ptr [ebp-0C]
 004966A9    mov         ecx,dword ptr [eax]
 004966AB    call        dword ptr [ecx+10]
 004966AE    test        al,al
>004966B0    jne         004966B7
 004966B2    call        @RaiseAgain
 004966B7    call        @DoneExcept
 004966BC    xor         eax,eax
 004966BE    pop         edx
 004966BF    pop         ecx
 004966C0    pop         ecx
 004966C1    mov         dword ptr fs:[eax],edx
 004966C4    push        4966E1
 004966C9    lea         eax,[ebp-20]
 004966CC    call        @UStrClr
 004966D1    lea         eax,[ebp-8]
 004966D4    call        @UStrClr
 004966D9    ret
>004966DA    jmp         @HandleFinally
>004966DF    jmp         004966C9
 004966E1    pop         edi
 004966E2    pop         esi
 004966E3    pop         ebx
 004966E4    mov         esp,ebp
 004966E6    pop         ebp
 004966E7    ret
*}
end;

//004966E8
procedure SetIntIdent(const Instance:TPersistent; PropInfo:Pointer; const Ident:UnicodeString);
begin
{*
 004966E8    push        ebp
 004966E9    mov         ebp,esp
 004966EB    add         esp,0FFFFFFF8
 004966EE    push        ebx
 004966EF    push        esi
 004966F0    push        edi
 004966F1    mov         edi,ecx
 004966F3    mov         esi,edx
 004966F5    mov         dword ptr [ebp-4],eax
 004966F8    mov         eax,dword ptr [esi]
 004966FA    mov         eax,dword ptr [eax]
 004966FC    call        FindIdentToInt
 00496701    mov         ebx,eax
 00496703    test        ebx,ebx
>00496705    je          00496721
 00496707    lea         edx,[ebp-8]
 0049670A    mov         eax,edi
 0049670C    call        ebx
 0049670E    test        al,al
>00496710    je          00496721
 00496712    mov         ecx,dword ptr [ebp-8]
 00496715    mov         edx,esi
 00496717    mov         eax,dword ptr [ebp-4]
 0049671A    call        SetOrdProp
>0049671F    jmp         00496726
 00496721    call        PropValueError
 00496726    pop         edi
 00496727    pop         esi
 00496728    pop         ebx
 00496729    pop         ecx
 0049672A    pop         ecx
 0049672B    pop         ebp
 0049672C    ret
*}
end;

//00496730
{*procedure sub_00496730(?:?; ?:?; ?:?; ?:?);
begin
 00496730    push        ebp
 00496731    mov         ebp,esp
 00496733    add         esp,0FFFFFFF8
 00496736    push        ebx
 00496737    push        esi
 00496738    push        edi
 00496739    mov         dword ptr [ebp-4],ecx
 0049673C    mov         edi,edx
 0049673E    mov         esi,eax
 00496740    mov         eax,dword ptr [ebp+8]
 00496743    mov         eax,dword ptr [eax-4]
 00496746    mov         ebx,dword ptr [eax+30]
 00496749    mov         eax,dword ptr [ebp+8]
 0049674C    mov         eax,dword ptr [eax-4]
 0049674F    mov         eax,dword ptr [eax+18]
 00496752    push        eax
 00496753    push        edi
 00496754    push        0
 00496756    mov         eax,dword ptr [ebp-4]
 00496759    push        eax
 0049675A    mov         ecx,esi
 0049675C    mov         dl,1
 0049675E    mov         eax,[00492D04];TPropFixup
 00496763    call        TPropFixup.Create;TPropFixup.Create
 00496768    mov         dword ptr [ebp-8],eax
 0049676B    lea         edx,[ebp-8]
 0049676E    lea         eax,[ebx+8]
 00496771    call        0043489C
 00496776    pop         edi
 00496777    pop         esi
 00496778    pop         ebx
 00496779    pop         ecx
 0049677A    pop         ecx
 0049677B    pop         ebp
 0049677C    ret
end;*}

//00496780
procedure SetVariantReference;
begin
{*
 00496780    push        ebp
 00496781    mov         ebp,esp
 00496783    xor         ecx,ecx
 00496785    push        ecx
 00496786    push        ecx
 00496787    push        ecx
 00496788    push        ecx
 00496789    xor         eax,eax
 0049678B    push        ebp
 0049678C    push        4967CF
 00496791    push        dword ptr fs:[eax]
 00496794    mov         dword ptr fs:[eax],esp
 00496797    lea         edx,[ebp-10]
 0049679A    mov         eax,dword ptr [ebp+8]
 0049679D    mov         eax,dword ptr [eax-4]
 004967A0    call        TReader.ReadVariant
 004967A5    lea         ecx,[ebp-10]
 004967A8    mov         eax,dword ptr [ebp+8]
 004967AB    mov         edx,dword ptr [eax-0C]
 004967AE    mov         eax,dword ptr [ebp+8]
 004967B1    mov         eax,dword ptr [eax-8]
 004967B4    call        SetVariantProp
 004967B9    xor         eax,eax
 004967BB    pop         edx
 004967BC    pop         ecx
 004967BD    pop         ecx
 004967BE    mov         dword ptr fs:[eax],edx
 004967C1    push        4967D6
 004967C6    lea         eax,[ebp-10]
 004967C9    call        @VarClr
 004967CE    ret
>004967CF    jmp         @HandleFinally
>004967D4    jmp         004967C6
 004967D6    mov         esp,ebp
 004967D8    pop         ebp
 004967D9    ret
*}
end;

//004967DC
{*procedure sub_004967DC(?:?);
begin
 004967DC    push        ebp
 004967DD    mov         ebp,esp
 004967DF    push        0
 004967E1    push        0
 004967E3    push        0
 004967E5    push        ebx
 004967E6    xor         eax,eax
 004967E8    push        ebp
 004967E9    push        496898
 004967EE    push        dword ptr fs:[eax]
 004967F1    mov         dword ptr fs:[eax],esp
 004967F4    mov         eax,dword ptr [ebp+8]
 004967F7    mov         eax,dword ptr [eax-4]
 004967FA    call        TReader.NextValue
 004967FF    cmp         al,0D
>00496801    jne         0049682C
 00496803    mov         eax,dword ptr [ebp+8]
 00496806    mov         eax,dword ptr [eax-4]
 00496809    call        TReader.ReadValue
 0049680E    lea         eax,[ebp-4]
 00496811    call        @IntfClear
 00496816    mov         eax,dword ptr [ebp+8]
 00496819    mov         edx,dword ptr [eax-0C]
 0049681C    mov         eax,dword ptr [ebp+8]
 0049681F    mov         eax,dword ptr [eax-8]
 00496822    mov         ecx,dword ptr [ebp-4]
 00496825    call        SetInterfaceProp
>0049682A    jmp         0049687A
 0049682C    mov         eax,dword ptr [ebp+8]
 0049682F    mov         eax,dword ptr [eax-4]
 00496832    mov         ebx,dword ptr [eax+30]
 00496835    mov         eax,dword ptr [ebp+8]
 00496838    mov         eax,dword ptr [eax-4]
 0049683B    mov         eax,dword ptr [eax+18]
 0049683E    push        eax
 0049683F    mov         eax,dword ptr [ebp+8]
 00496842    mov         eax,dword ptr [eax-0C]
 00496845    push        eax
 00496846    push        0
 00496848    lea         edx,[ebp-0C]
 0049684B    mov         eax,dword ptr [ebp+8]
 0049684E    mov         eax,dword ptr [eax-4]
 00496851    call        TReader.ReadIdent
 00496856    mov         eax,dword ptr [ebp-0C]
 00496859    push        eax
 0049685A    mov         eax,dword ptr [ebp+8]
 0049685D    mov         ecx,dword ptr [eax-8]
 00496860    mov         dl,1
 00496862    mov         eax,[00492F40];TPropIntfFixup
 00496867    call        TPropFixup.Create;TPropIntfFixup.Create
 0049686C    mov         dword ptr [ebp-8],eax
 0049686F    lea         edx,[ebp-8]
 00496872    lea         eax,[ebx+8]
 00496875    call        0043489C
 0049687A    xor         eax,eax
 0049687C    pop         edx
 0049687D    pop         ecx
 0049687E    pop         ecx
 0049687F    mov         dword ptr fs:[eax],edx
 00496882    push        49689F
 00496887    lea         eax,[ebp-0C]
 0049688A    call        @UStrClr
 0049688F    lea         eax,[ebp-4]
 00496892    call        @IntfClear
 00496897    ret
>00496898    jmp         @HandleFinally
>0049689D    jmp         00496887
 0049689F    pop         ebx
 004968A0    mov         esp,ebp
 004968A2    pop         ebp
 004968A3    ret
end;*}

//004968A4
{*procedure sub_004968A4(?:?; ?:?; ?:?);
begin
 004968A4    push        ebp
 004968A5    mov         ebp,esp
 004968A7    push        ecx
 004968A8    mov         ecx,5
 004968AD    push        0
 004968AF    push        0
 004968B1    dec         ecx
>004968B2    jne         004968AD
 004968B4    push        ecx
 004968B5    xchg        ecx,dword ptr [ebp-4]
 004968B8    push        ebx
 004968B9    mov         dword ptr [ebp-0C],ecx
 004968BC    mov         dword ptr [ebp-8],edx
 004968BF    mov         dword ptr [ebp-4],eax
 004968C2    xor         eax,eax
 004968C4    push        ebp
 004968C5    push        496BBB
 004968CA    push        dword ptr fs:[eax]
 004968CD    mov         dword ptr fs:[eax],esp
 004968D0    mov         eax,dword ptr [ebp-0C]
 004968D3    cmp         dword ptr [eax+8],0
>004968D7    jne         0049691A
 004968D9    mov         eax,dword ptr [ebp-0C]
 004968DC    mov         eax,dword ptr [eax]
 004968DE    mov         eax,dword ptr [eax]
 004968E0    cmp         byte ptr [eax],7
>004968E3    jne         00496910
 004968E5    mov         edx,dword ptr [ebp-0C]
 004968E8    mov         eax,dword ptr [ebp-8]
 004968EB    call        GetOrdProp
 004968F0    mov         edx,dword ptr ds:[478C44];TComponent
 004968F6    call        @IsClass
 004968FB    test        al,al
>004968FD    je          00496910
 004968FF    mov         edx,dword ptr [ebp-0C]
 00496902    mov         eax,dword ptr [ebp-8]
 00496905    call        GetOrdProp
 0049690A    test        byte ptr [eax+30],4
>0049690E    jne         0049691A
 00496910    mov         eax,[007C4B10];^SResString140:TResStringRec
 00496915    call        ReadError
 0049691A    mov         eax,dword ptr [ebp-0C]
 0049691D    mov         eax,dword ptr [eax]
 0049691F    mov         ebx,dword ptr [eax]
 00496921    movzx       eax,byte ptr [ebx]
 00496924    cmp         eax,12
>00496927    ja          00496BA0
 0049692D    jmp         dword ptr [eax*4+496934]
 0049692D    dd          00496BA0
 0049692D    dd          00496980
 0049692D    dd          004969C4
 0049692D    dd          004969DF
 0049692D    dd          00496A1A
 0049692D    dd          00496A39
 0049692D    dd          00496A93
 0049692D    dd          00496AAF
 0049692D    dd          00496B1D
 0049692D    dd          004969C4
 0049692D    dd          00496A39
 0049692D    dd          00496A57
 0049692D    dd          00496B79
 0049692D    dd          00496BA0
 0049692D    dd          00496BA0
 0049692D    dd          00496B99
 0049692D    dd          00496B82
 0049692D    dd          00496BA0
 0049692D    dd          00496A75
 00496980    mov         eax,dword ptr [ebp-4]
 00496983    call        TReader.NextValue
 00496988    cmp         al,7
>0049698A    jne         004969AA
 0049698C    lea         edx,[ebp-18]
 0049698F    mov         eax,dword ptr [ebp-4]
 00496992    call        TReader.ReadIdent
 00496997    mov         ecx,dword ptr [ebp-18]
 0049699A    mov         edx,dword ptr [ebp-0C]
 0049699D    mov         eax,dword ptr [ebp-8]
 004969A0    call        SetIntIdent
>004969A5    jmp         00496BA0
 004969AA    mov         eax,dword ptr [ebp-4]
 004969AD    call        TReader.ReadInteger
 004969B2    mov         ecx,eax
 004969B4    mov         edx,dword ptr [ebp-0C]
 004969B7    mov         eax,dword ptr [ebp-8]
 004969BA    call        SetOrdProp
>004969BF    jmp         00496BA0
 004969C4    mov         eax,dword ptr [ebp-4]
 004969C7    call        TReader.ReadChar
 004969CC    movzx       ecx,ax
 004969CF    mov         edx,dword ptr [ebp-0C]
 004969D2    mov         eax,dword ptr [ebp-8]
 004969D5    call        SetOrdProp
>004969DA    jmp         00496BA0
 004969DF    lea         edx,[ebp-1C]
 004969E2    mov         eax,dword ptr [ebp-4]
 004969E5    call        TReader.ReadIdent
 004969EA    mov         edx,dword ptr [ebp-1C]
 004969ED    mov         eax,ebx
 004969EF    call        GetEnumValue
 004969F4    cmp         eax,0FFFFFFFF
>004969F7    je          00496A0B
 004969F9    mov         ecx,eax
 004969FB    mov         edx,dword ptr [ebp-0C]
 004969FE    mov         eax,dword ptr [ebp-8]
 00496A01    call        SetOrdProp
>00496A06    jmp         00496BA0
 00496A0B    mov         eax,[007C49AC];^SResString131:TResStringRec
 00496A10    call        ReadError
>00496A15    jmp         00496BA0
 00496A1A    mov         eax,dword ptr [ebp-4]
 00496A1D    call        TReader.ReadFloat
 00496A22    add         esp,0FFFFFFF4
 00496A25    fstp        tbyte ptr [esp]
 00496A28    wait
 00496A29    mov         edx,dword ptr [ebp-0C]
 00496A2C    mov         eax,dword ptr [ebp-8]
 00496A2F    call        00469B8C
>00496A34    jmp         00496BA0
 00496A39    lea         edx,[ebp-20]
 00496A3C    mov         eax,dword ptr [ebp-4]
 00496A3F    call        TReader.ReadString
 00496A44    mov         ecx,dword ptr [ebp-20]
 00496A47    mov         edx,dword ptr [ebp-0C]
 00496A4A    mov         eax,dword ptr [ebp-8]
 00496A4D    call        SetStrProp
>00496A52    jmp         00496BA0
 00496A57    lea         edx,[ebp-24]
 00496A5A    mov         eax,dword ptr [ebp-4]
 00496A5D    call        TReader.ReadString
 00496A62    mov         ecx,dword ptr [ebp-24]
 00496A65    mov         edx,dword ptr [ebp-0C]
 00496A68    mov         eax,dword ptr [ebp-8]
 00496A6B    call        SetStrProp
>00496A70    jmp         00496BA0
 00496A75    lea         edx,[ebp-28]
 00496A78    mov         eax,dword ptr [ebp-4]
 00496A7B    call        TReader.ReadString
 00496A80    mov         ecx,dword ptr [ebp-28]
 00496A83    mov         edx,dword ptr [ebp-0C]
 00496A86    mov         eax,dword ptr [ebp-8]
 00496A89    call        SetStrProp
>00496A8E    jmp         00496BA0
 00496A93    mov         edx,ebx
 00496A95    mov         eax,dword ptr [ebp-4]
 00496A98    call        TReader.ReadSet
 00496A9D    mov         ecx,eax
 00496A9F    mov         edx,dword ptr [ebp-0C]
 00496AA2    mov         eax,dword ptr [ebp-8]
 00496AA5    call        SetOrdProp
>00496AAA    jmp         00496BA0
 00496AAF    mov         eax,dword ptr [ebp-4]
 00496AB2    call        TReader.NextValue
 00496AB7    sub         al,0D
>00496AB9    je          00496AC1
 00496ABB    dec         al
>00496ABD    je          00496ADB
>00496ABF    jmp         00496AFD
 00496AC1    mov         eax,dword ptr [ebp-4]
 00496AC4    call        TReader.ReadValue
 00496AC9    xor         ecx,ecx
 00496ACB    mov         edx,dword ptr [ebp-0C]
 00496ACE    mov         eax,dword ptr [ebp-8]
 00496AD1    call        SetOrdProp
>00496AD6    jmp         00496BA0
 00496ADB    mov         eax,dword ptr [ebp-4]
 00496ADE    call        TReader.ReadValue
 00496AE3    mov         edx,dword ptr [ebp-0C]
 00496AE6    mov         eax,dword ptr [ebp-8]
 00496AE9    call        GetOrdProp
 00496AEE    mov         edx,eax
 00496AF0    mov         eax,dword ptr [ebp-4]
 00496AF3    call        TReader.ReadCollection
>00496AF8    jmp         00496BA0
 00496AFD    push        ebp
 00496AFE    lea         edx,[ebp-2C]
 00496B01    mov         eax,dword ptr [ebp-4]
 00496B04    call        TReader.ReadIdent
 00496B09    mov         ecx,dword ptr [ebp-2C]
 00496B0C    mov         edx,dword ptr [ebp-0C]
 00496B0F    mov         eax,dword ptr [ebp-8]
 00496B12    call        00496730
 00496B17    pop         ecx
>00496B18    jmp         00496BA0
 00496B1D    mov         eax,dword ptr [ebp-4]
 00496B20    call        TReader.NextValue
 00496B25    cmp         al,0D
>00496B27    jne         00496B43
 00496B29    mov         eax,dword ptr [ebp-4]
 00496B2C    call        TReader.ReadValue
 00496B31    mov         ecx,7A0674
 00496B36    mov         edx,dword ptr [ebp-0C]
 00496B39    mov         eax,dword ptr [ebp-8]
 00496B3C    call        SetMethodProp
>00496B41    jmp         00496BA0
 00496B43    lea         eax,[ebp-14]
 00496B46    push        eax
 00496B47    lea         edx,[ebp-30]
 00496B4A    mov         eax,dword ptr [ebp-4]
 00496B4D    call        TReader.ReadIdent
 00496B52    mov         ecx,dword ptr [ebp-30]
 00496B55    mov         eax,dword ptr [ebp-4]
 00496B58    mov         edx,dword ptr [eax+18]
 00496B5B    mov         eax,dword ptr [ebp-4]
 00496B5E    mov         ebx,dword ptr [eax]
 00496B60    call        dword ptr [ebx+18]
 00496B63    cmp         dword ptr [ebp-14],0
>00496B67    je          00496BA0
 00496B69    lea         ecx,[ebp-14]
 00496B6C    mov         edx,dword ptr [ebp-0C]
 00496B6F    mov         eax,dword ptr [ebp-8]
 00496B72    call        SetMethodProp
>00496B77    jmp         00496BA0
 00496B79    push        ebp
 00496B7A    call        SetVariantReference
 00496B7F    pop         ecx
>00496B80    jmp         00496BA0
 00496B82    mov         eax,dword ptr [ebp-4]
 00496B85    call        TReader.ReadInt64
 00496B8A    push        edx
 00496B8B    push        eax
 00496B8C    mov         edx,dword ptr [ebp-0C]
 00496B8F    mov         eax,dword ptr [ebp-8]
 00496B92    call        SetInt64Prop
>00496B97    jmp         00496BA0
 00496B99    push        ebp
 00496B9A    call        004967DC
 00496B9F    pop         ecx
 00496BA0    xor         eax,eax
 00496BA2    pop         edx
 00496BA3    pop         ecx
 00496BA4    pop         ecx
 00496BA5    mov         dword ptr fs:[eax],edx
 00496BA8    push        496BC2
 00496BAD    lea         eax,[ebp-30]
 00496BB0    mov         edx,7
 00496BB5    call        @UStrArrayClr
 00496BBA    ret
>00496BBB    jmp         @HandleFinally
>00496BC0    jmp         00496BAD
 00496BC2    pop         ebx
 00496BC3    mov         esp,ebp
 00496BC5    pop         ebp
 00496BC6    ret
end;*}

//00496BC8
function FindUniqueName(const Name:UnicodeString):UnicodeString;
begin
{*
 00496BC8    push        ebp
 00496BC9    mov         ebp,esp
 00496BCB    add         esp,0FFFFFFF0
 00496BCE    push        ebx
 00496BCF    push        esi
 00496BD0    push        edi
 00496BD1    mov         ebx,edx
 00496BD3    mov         edi,eax
 00496BD5    xor         esi,esi
 00496BD7    mov         eax,ebx
 00496BD9    mov         edx,edi
 00496BDB    call        @UStrAsg
>00496BE0    jmp         00496C04
 00496BE2    inc         esi
 00496BE3    push        ebx
 00496BE4    mov         dword ptr [ebp-10],edi
 00496BE7    mov         byte ptr [ebp-0C],11
 00496BEB    mov         dword ptr [ebp-8],esi
 00496BEE    mov         byte ptr [ebp-4],0
 00496BF2    lea         edx,[ebp-10]
 00496BF5    mov         ecx,1
 00496BFA    mov         eax,496C24;'%s_%d'
 00496BFF    call        Format
 00496C04    mov         eax,dword ptr [ebx]
 00496C06    call        IsUniqueGlobalComponentName
 00496C0B    test        al,al
>00496C0D    je          00496BE2
 00496C0F    pop         edi
 00496C10    pop         esi
 00496C11    pop         ebx
 00496C12    mov         esp,ebp
 00496C14    pop         ebp
 00496C15    ret
*}
end;

//00496C30
function TReader.ReadRootComponent(Root:TComponent):TComponent;
begin
{*
 00496C30    push        ebp
 00496C31    mov         ebp,esp
 00496C33    add         esp,0FFFFFFC0
 00496C36    push        ebx
 00496C37    push        esi
 00496C38    push        edi
 00496C39    xor         ecx,ecx
 00496C3B    mov         dword ptr [ebp-3C],ecx
 00496C3E    mov         dword ptr [ebp-40],ecx
 00496C41    mov         dword ptr [ebp-38],ecx
 00496C44    mov         dword ptr [ebp-34],ecx
 00496C47    mov         dword ptr [ebp-30],ecx
 00496C4A    mov         dword ptr [ebp-2C],ecx
 00496C4D    mov         dword ptr [ebp-8],edx
 00496C50    mov         dword ptr [ebp-4],eax
 00496C53    xor         eax,eax
 00496C55    push        ebp
 00496C56    push        496F7A
 00496C5B    push        dword ptr fs:[eax]
 00496C5E    mov         dword ptr fs:[eax],esp
 00496C61    mov         eax,dword ptr [ebp-4]
 00496C64    call        TReader.ReadSignature
 00496C69    xor         eax,eax
 00496C6B    mov         dword ptr [ebp-0C],eax
 00496C6E    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 00496C73    mov         edx,dword ptr [eax]
 00496C75    call        dword ptr [edx+14]
 00496C78    xor         edx,edx
 00496C7A    push        ebp
 00496C7B    push        496F58
 00496C80    push        dword ptr fs:[edx]
 00496C83    mov         dword ptr fs:[edx],esp
 00496C86    xor         edx,edx
 00496C88    push        ebp
 00496C89    push        496F19
 00496C8E    push        dword ptr fs:[edx]
 00496C91    mov         dword ptr fs:[edx],esp
 00496C94    lea         ecx,[ebp-10]
 00496C97    lea         edx,[ebp-11]
 00496C9A    mov         eax,dword ptr [ebp-4]
 00496C9D    mov         ebx,dword ptr [eax]
 00496C9F    call        dword ptr [ebx+28]
 00496CA2    cmp         dword ptr [ebp-8],0
>00496CA6    jne         00496CDD
 00496CA8    lea         edx,[ebp-2C]
 00496CAB    mov         eax,dword ptr [ebp-4]
 00496CAE    call        TReader.ReadStr
 00496CB3    mov         eax,dword ptr [ebp-2C]
 00496CB6    call        FindClass
 00496CBB    xor         ecx,ecx
 00496CBD    mov         dl,1
 00496CBF    call        dword ptr [eax+3C]
 00496CC2    mov         dword ptr [ebp-0C],eax
 00496CC5    lea         edx,[ebp-30]
 00496CC8    mov         eax,dword ptr [ebp-4]
 00496CCB    call        TReader.ReadStr
 00496CD0    mov         edx,dword ptr [ebp-30]
 00496CD3    mov         eax,dword ptr [ebp-0C]
 00496CD6    mov         ecx,dword ptr [eax]
 00496CD8    call        dword ptr [ecx+28]
>00496CDB    jmp         00496D35
 00496CDD    mov         eax,dword ptr [ebp-8]
 00496CE0    mov         dword ptr [ebp-0C],eax
 00496CE3    lea         edx,[ebp-34]
 00496CE6    mov         eax,dword ptr [ebp-4]
 00496CE9    call        TReader.ReadStr
 00496CEE    mov         eax,dword ptr [ebp-0C]
 00496CF1    test        byte ptr [eax+1C],10
>00496CF5    je          00496D04
 00496CF7    lea         edx,[ebp-38]
 00496CFA    mov         eax,dword ptr [ebp-4]
 00496CFD    call        TReader.ReadStr
>00496D02    jmp         00496D35
 00496D04    mov         eax,dword ptr [ebp-0C]
 00496D07    or          word ptr [eax+1C],1
 00496D0C    mov         eax,dword ptr [ebp-0C]
 00496D0F    or          word ptr [eax+1C],2
 00496D14    lea         edx,[ebp-40]
 00496D17    mov         eax,dword ptr [ebp-4]
 00496D1A    call        TReader.ReadStr
 00496D1F    mov         eax,dword ptr [ebp-40]
 00496D22    lea         edx,[ebp-3C]
 00496D25    call        FindUniqueName
 00496D2A    mov         edx,dword ptr [ebp-3C]
 00496D2D    mov         eax,dword ptr [ebp-0C]
 00496D30    mov         ecx,dword ptr [eax]
 00496D32    call        dword ptr [ecx+28]
 00496D35    mov         eax,dword ptr [ebp-4]
 00496D38    mov         edx,dword ptr [ebp-0C]
 00496D3B    mov         dword ptr [eax+18],edx
 00496D3E    mov         eax,dword ptr [ebp-0C]
 00496D41    mov         eax,dword ptr [eax]
 00496D43    mov         ebx,eax
 00496D45    push        1
 00496D47    mov         ecx,ebx
 00496D49    mov         dl,1
 00496D4B    mov         eax,[00473EB0];TClassFinder
 00496D50    call        00488768
 00496D55    mov         edx,dword ptr [ebp-4]
 00496D58    mov         dword ptr [edx+84],eax
 00496D5E    xor         edx,edx
 00496D60    push        ebp
 00496D61    push        496EBE
 00496D66    push        dword ptr fs:[edx]
 00496D69    mov         dword ptr fs:[edx],esp
 00496D6C    mov         eax,dword ptr [ebp-4]
 00496D6F    mov         edx,dword ptr [ebp-0C]
 00496D72    mov         dword ptr [eax+1C],edx
 00496D75    call        @GetTls
 00496D7A    mov         eax,dword ptr [eax+0C]
 00496D80    mov         dword ptr [ebp-18],eax
 00496D83    cmp         dword ptr [ebp-18],0
>00496D87    je          00496D94
 00496D89    mov         eax,dword ptr [ebp-4]
 00496D8C    mov         edx,dword ptr [ebp-18]
 00496D8F    mov         dword ptr [eax+34],edx
>00496D92    jmp         00496DA6
 00496D94    mov         dl,1
 00496D96    mov         eax,[0047E924];TList<System.Classes.TComponent>
 00496D9B    call        TList<System.Actions.TContainedAction>.Create
 00496DA0    mov         edx,dword ptr [ebp-4]
 00496DA3    mov         dword ptr [edx+34],eax
 00496DA6    xor         edx,edx
 00496DA8    push        ebp
 00496DA9    push        496E9B
 00496DAE    push        dword ptr fs:[edx]
 00496DB1    mov         dword ptr fs:[edx],esp
 00496DB4    mov         eax,dword ptr [ebp-4]
 00496DB7    mov         eax,dword ptr [eax+34]
 00496DBA    mov         edx,dword ptr [ebp-4]
 00496DBD    mov         edx,dword ptr [edx+18]
 00496DC0    mov         dword ptr [ebp-1C],edx
 00496DC3    mov         edx,dword ptr [ebp-1C]
 00496DC6    mov         dword ptr [ebp-20],edx
 00496DC9    add         eax,8
 00496DCC    mov         dword ptr [ebp-24],eax
 00496DCF    lea         edx,[ebp-20]
 00496DD2    mov         eax,dword ptr [ebp-24]
 00496DD5    call        00434714
 00496DDA    test        eax,eax
>00496DDC    jge         00496DF8
 00496DDE    mov         eax,dword ptr [ebp-4]
 00496DE1    mov         eax,dword ptr [eax+34]
 00496DE4    mov         edx,dword ptr [ebp-4]
 00496DE7    mov         edx,dword ptr [edx+18]
 00496DEA    mov         dword ptr [ebp-28],edx
 00496DED    lea         edx,[ebp-28]
 00496DF0    add         eax,8
 00496DF3    call        0043489C
 00496DF8    mov         eax,dword ptr [ebp-4]
 00496DFB    mov         eax,dword ptr [eax+18]
 00496DFE    mov         edx,dword ptr [ebp-4]
 00496E01    mov         dword ptr [edx+28],eax
 00496E04    mov         eax,dword ptr [ebp-4]
 00496E07    mov         eax,dword ptr [eax+18]
 00496E0A    or          word ptr [eax+1C],1
 00496E0F    mov         eax,dword ptr [ebp-4]
 00496E12    mov         eax,dword ptr [eax+18]
 00496E15    or          word ptr [eax+1C],2
 00496E1A    mov         eax,dword ptr [ebp-4]
 00496E1D    mov         eax,dword ptr [eax+18]
 00496E20    mov         edx,dword ptr [ebp-4]
 00496E23    mov         ecx,dword ptr [eax]
 00496E25    call        dword ptr [ecx+18]
 00496E28    mov         eax,dword ptr [ebp-4]
 00496E2B    mov         eax,dword ptr [eax+18]
 00496E2E    and         word ptr [eax+1C],0FFFFFFFD
 00496E33    cmp         dword ptr [ebp-18],0
>00496E37    jne         00496E74
 00496E39    mov         eax,dword ptr [ebp-4]
 00496E3C    mov         eax,dword ptr [eax+34]
 00496E3F    mov         esi,dword ptr [eax+8]
 00496E42    dec         esi
 00496E43    test        esi,esi
>00496E45    jl          00496E74
 00496E47    inc         esi
 00496E48    mov         dword ptr [ebp-10],0
 00496E4F    mov         eax,dword ptr [ebp-4]
 00496E52    mov         ebx,dword ptr [eax+34]
 00496E55    lea         eax,[ebx+8]
 00496E58    mov         edx,dword ptr [ebp-10]
 00496E5B    call        00434534
 00496E60    mov         eax,dword ptr [ebx+20]
 00496E63    mov         edx,dword ptr [ebp-10]
 00496E66    mov         eax,dword ptr [eax+edx*4]
 00496E69    mov         edx,dword ptr [eax]
 00496E6B    call        dword ptr [edx+10]
 00496E6E    inc         dword ptr [ebp-10]
 00496E71    dec         esi
>00496E72    jne         00496E4F
 00496E74    xor         eax,eax
 00496E76    pop         edx
 00496E77    pop         ecx
 00496E78    pop         ecx
 00496E79    mov         dword ptr fs:[eax],edx
 00496E7C    push        496EA2
 00496E81    cmp         dword ptr [ebp-18],0
>00496E85    jne         00496E92
 00496E87    mov         eax,dword ptr [ebp-4]
 00496E8A    mov         eax,dword ptr [eax+34]
 00496E8D    call        TObject.Free
 00496E92    mov         eax,dword ptr [ebp-4]
 00496E95    xor         edx,edx
 00496E97    mov         dword ptr [eax+34],edx
 00496E9A    ret
>00496E9B    jmp         @HandleFinally
>00496EA0    jmp         00496E81
 00496EA2    xor         eax,eax
 00496EA4    pop         edx
 00496EA5    pop         ecx
 00496EA6    pop         ecx
 00496EA7    mov         dword ptr fs:[eax],edx
 00496EAA    push        496EC5
 00496EAF    mov         eax,dword ptr [ebp-4]
 00496EB2    mov         eax,dword ptr [eax+84]
 00496EB8    call        TObject.Free
 00496EBD    ret
>00496EBE    jmp         @HandleFinally
>00496EC3    jmp         00496EAF
 00496EC5    xor         eax,eax
 00496EC7    push        ebp
 00496EC8    push        496EEA
 00496ECD    push        dword ptr fs:[eax]
 00496ED0    mov         dword ptr fs:[eax],esp
 00496ED3    call        00494A64
 00496ED8    xor         eax,eax
 00496EDA    pop         edx
 00496EDB    pop         ecx
 00496EDC    pop         ecx
 00496EDD    mov         dword ptr fs:[eax],edx
>00496EE0    jmp         00496F0F
 00496EE2    xor         eax,eax
 00496EE4    pop         edx
 00496EE5    pop         ecx
 00496EE6    pop         ecx
 00496EE7    mov         dword ptr fs:[eax],edx
>00496EEA    jmp         @HandleAnyException
 00496EEF    call        ExceptObject
 00496EF4    mov         edx,dword ptr [eax+4]
 00496EF7    mov         eax,dword ptr [ebp-4]
 00496EFA    mov         ecx,dword ptr [eax]
 00496EFC    call        dword ptr [ecx+10]
 00496EFF    test        al,al
>00496F01    jne         00496F08
 00496F03    call        @RaiseAgain
 00496F08    call        @DoneExcept
>00496F0D    jmp         00496EC5
 00496F0F    xor         eax,eax
 00496F11    pop         edx
 00496F12    pop         ecx
 00496F13    pop         ecx
 00496F14    mov         dword ptr fs:[eax],edx
>00496F17    jmp         00496F40
>00496F19    jmp         @HandleAnyException
 00496F1E    xor         edx,edx
 00496F20    mov         eax,dword ptr [ebp-8]
 00496F23    call        RemoveFixupReferences
 00496F28    cmp         dword ptr [ebp-8],0
>00496F2C    jne         00496F36
 00496F2E    mov         eax,dword ptr [ebp-0C]
 00496F31    call        TObject.Free
 00496F36    call        @RaiseAgain
 00496F3B    call        @DoneExcept
 00496F40    xor         eax,eax
 00496F42    pop         edx
 00496F43    pop         ecx
 00496F44    pop         ecx
 00496F45    mov         dword ptr fs:[eax],edx
 00496F48    push        496F5F
 00496F4D    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 00496F52    mov         edx,dword ptr [eax]
 00496F54    call        dword ptr [edx+18]
 00496F57    ret
>00496F58    jmp         @HandleFinally
>00496F5D    jmp         00496F4D
 00496F5F    xor         eax,eax
 00496F61    pop         edx
 00496F62    pop         ecx
 00496F63    pop         ecx
 00496F64    mov         dword ptr fs:[eax],edx
 00496F67    push        496F81
 00496F6C    lea         eax,[ebp-40]
 00496F6F    mov         edx,6
 00496F74    call        @UStrArrayClr
 00496F79    ret
>00496F7A    jmp         @HandleFinally
>00496F7F    jmp         00496F6C
 00496F81    mov         eax,dword ptr [ebp-0C]
 00496F84    pop         edi
 00496F85    pop         esi
 00496F86    pop         ebx
 00496F87    mov         esp,ebp
 00496F89    pop         ebp
 00496F8A    ret
*}
end;

//00496F8C
function TReader.ReadSet(SetType:Pointer):Integer;
begin
{*
 00496F8C    push        ebp
 00496F8D    mov         ebp,esp
 00496F8F    add         esp,0FFFFFFF8
 00496F92    push        ebx
 00496F93    push        esi
 00496F94    push        edi
 00496F95    xor         ecx,ecx
 00496F97    mov         dword ptr [ebp-4],ecx
 00496F9A    mov         ebx,edx
 00496F9C    mov         dword ptr [ebp-8],eax
 00496F9F    xor         eax,eax
 00496FA1    push        ebp
 00496FA2    push        497036
 00496FA7    push        dword ptr fs:[eax]
 00496FAA    mov         dword ptr fs:[eax],esp
 00496FAD    xor         eax,eax
 00496FAF    push        ebp
 00496FB0    push        497009
 00496FB5    push        dword ptr fs:[eax]
 00496FB8    mov         dword ptr fs:[eax],esp
 00496FBB    mov         eax,dword ptr [ebp-8]
 00496FBE    call        TReader.ReadValue
 00496FC3    cmp         al,0B
>00496FC5    je          00496FCC
 00496FC7    call        PropValueError
 00496FCC    mov         eax,ebx
 00496FCE    call        GetTypeData
 00496FD3    mov         eax,dword ptr [eax+1]
 00496FD6    mov         esi,dword ptr [eax]
 00496FD8    xor         ebx,ebx
 00496FDA    lea         edx,[ebp-4]
 00496FDD    mov         eax,dword ptr [ebp-8]
 00496FE0    call        TReader.ReadStr
 00496FE5    cmp         dword ptr [ebp-4],0
>00496FE9    je          00496FFF
 00496FEB    mov         edx,dword ptr [ebp-4]
 00496FEE    mov         eax,esi
 00496FF0    call        SetElementValue
 00496FF5    cmp         eax,1F
>00496FF8    ja          00496FDA
 00496FFA    bts         ebx,eax
>00496FFD    jmp         00496FDA
 00496FFF    xor         eax,eax
 00497001    pop         edx
 00497002    pop         ecx
 00497003    pop         ecx
 00497004    mov         dword ptr fs:[eax],edx
>00497007    jmp         00497020
>00497009    jmp         @HandleAnyException
 0049700E    mov         eax,dword ptr [ebp-8]
 00497011    call        TReader.SkipSetBody
 00497016    call        @RaiseAgain
 0049701B    call        @DoneExcept
 00497020    xor         eax,eax
 00497022    pop         edx
 00497023    pop         ecx
 00497024    pop         ecx
 00497025    mov         dword ptr fs:[eax],edx
 00497028    push        49703D
 0049702D    lea         eax,[ebp-4]
 00497030    call        @UStrClr
 00497035    ret
>00497036    jmp         @HandleFinally
>0049703B    jmp         0049702D
 0049703D    mov         eax,ebx
 0049703F    pop         edi
 00497040    pop         esi
 00497041    pop         ebx
 00497042    pop         ecx
 00497043    pop         ecx
 00497044    pop         ebp
 00497045    ret
*}
end;

//00497048
procedure TReader.ReadSignature;
begin
{*
 00497048    push        ecx
 00497049    mov         edx,esp
 0049704B    mov         ecx,4
 00497050    call        TReader.Read
 00497055    mov         eax,dword ptr [esp]
 00497058    cmp         eax,dword ptr ds:[7A0600]
>0049705E    je          0049706A
 00497060    mov         eax,[007C4744];^SResString127:TResStringRec
 00497065    call        ReadError
 0049706A    pop         edx
 0049706B    ret
*}
end;

//0049706C
function TReader.ReadStr:string;
begin
{*
 0049706C    push        ebp
 0049706D    mov         ebp,esp
 0049706F    push        0
 00497071    push        0
 00497073    push        0
 00497075    push        ebx
 00497076    push        esi
 00497077    push        edi
 00497078    mov         edi,edx
 0049707A    mov         ebx,eax
 0049707C    xor         eax,eax
 0049707E    push        ebp
 0049707F    push        497114
 00497084    push        dword ptr fs:[eax]
 00497087    mov         dword ptr fs:[eax],esp
 0049708A    lea         edx,[ebp-9]
 0049708D    mov         ecx,1
 00497092    mov         eax,ebx
 00497094    call        TReader.Read
 00497099    movzx       eax,byte ptr [ebp-9]
 0049709D    push        eax
 0049709E    lea         eax,[ebp-4]
 004970A1    mov         ecx,1
 004970A6    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004970AC    call        @DynArraySetLength
 004970B1    add         esp,4
 004970B4    movzx       ecx,byte ptr [ebp-9]
 004970B8    mov         edx,dword ptr [ebp-4]
 004970BB    mov         eax,ebx
 004970BD    call        TReader.Read
 004970C2    call        004276C0
 004970C7    mov         esi,eax
 004970C9    mov         ebx,dword ptr [ebp-4]
 004970CC    test        ebx,ebx
>004970CE    je          004970D5
 004970D0    sub         ebx,4
 004970D3    mov         ebx,dword ptr [ebx]
 004970D5    push        ebx
 004970D6    lea         eax,[ebp-8]
 004970D9    push        eax
 004970DA    xor         ecx,ecx
 004970DC    mov         edx,dword ptr [ebp-4]
 004970DF    mov         eax,esi
 004970E1    call        TEncoding.GetString
 004970E6    mov         eax,edi
 004970E8    mov         edx,dword ptr [ebp-8]
 004970EB    call        @UStrAsg
 004970F0    xor         eax,eax
 004970F2    pop         edx
 004970F3    pop         ecx
 004970F4    pop         ecx
 004970F5    mov         dword ptr fs:[eax],edx
 004970F8    push        49711B
 004970FD    lea         eax,[ebp-8]
 00497100    call        @UStrClr
 00497105    lea         eax,[ebp-4]
 00497108    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0049710E    call        @DynArrayClear
 00497113    ret
>00497114    jmp         @HandleFinally
>00497119    jmp         004970FD
 0049711B    pop         edi
 0049711C    pop         esi
 0049711D    pop         ebx
 0049711E    mov         esp,ebp
 00497120    pop         ebp
 00497121    ret
*}
end;

//00497124
function TReader.ReadString:string;
begin
{*
 00497124    push        ebp
 00497125    mov         ebp,esp
 00497127    xor         ecx,ecx
 00497129    push        ecx
 0049712A    push        ecx
 0049712B    push        ecx
 0049712C    push        ecx
 0049712D    push        ecx
 0049712E    push        ecx
 0049712F    push        ebx
 00497130    push        esi
 00497131    push        edi
 00497132    mov         esi,edx
 00497134    mov         ebx,eax
 00497136    xor         eax,eax
 00497138    push        ebp
 00497139    push        49733D
 0049713E    push        dword ptr fs:[eax]
 00497141    mov         dword ptr fs:[eax],esp
 00497144    xor         eax,eax
 00497146    mov         dword ptr [ebp-18],eax
 00497149    mov         eax,ebx
 0049714B    call        TReader.ReadValue
 00497150    sub         al,6
>00497152    je          00497243
 00497158    sub         al,6
>0049715A    je          004972A9
 00497160    sub         al,6
>00497162    je          0049716D
 00497164    sub         al,2
>00497166    je          004971DA
>00497168    jmp         0049730F
 0049716D    lea         edx,[ebp-18]
 00497170    mov         ecx,4
 00497175    mov         eax,ebx
 00497177    call        TReader.Read
 0049717C    mov         eax,dword ptr [ebp-18]
 0049717F    add         eax,eax
 00497181    push        eax
 00497182    lea         eax,[ebp-4]
 00497185    mov         ecx,1
 0049718A    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00497190    call        @DynArraySetLength
 00497195    add         esp,4
 00497198    mov         ecx,dword ptr [ebp-18]
 0049719B    add         ecx,ecx
 0049719D    mov         edx,dword ptr [ebp-4]
 004971A0    mov         eax,ebx
 004971A2    call        TReader.Read
 004971A7    call        0042768C
 004971AC    mov         edi,eax
 004971AE    mov         ebx,dword ptr [ebp-4]
 004971B1    test        ebx,ebx
>004971B3    je          004971BA
 004971B5    sub         ebx,4
 004971B8    mov         ebx,dword ptr [ebx]
 004971BA    push        ebx
 004971BB    lea         eax,[ebp-8]
 004971BE    push        eax
 004971BF    xor         ecx,ecx
 004971C1    mov         edx,dword ptr [ebp-4]
 004971C4    mov         eax,edi
 004971C6    call        TEncoding.GetString
 004971CB    mov         eax,esi
 004971CD    mov         edx,dword ptr [ebp-8]
 004971D0    call        @UStrAsg
>004971D5    jmp         00497314
 004971DA    lea         edx,[ebp-18]
 004971DD    mov         ecx,4
 004971E2    mov         eax,ebx
 004971E4    call        TReader.Read
 004971E9    mov         eax,dword ptr [ebp-18]
 004971EC    push        eax
 004971ED    lea         eax,[ebp-4]
 004971F0    mov         ecx,1
 004971F5    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004971FB    call        @DynArraySetLength
 00497200    add         esp,4
 00497203    mov         ecx,dword ptr [ebp-18]
 00497206    mov         edx,dword ptr [ebp-4]
 00497209    mov         eax,ebx
 0049720B    call        TReader.Read
 00497210    call        004276C0
 00497215    mov         edi,eax
 00497217    mov         ebx,dword ptr [ebp-4]
 0049721A    test        ebx,ebx
>0049721C    je          00497223
 0049721E    sub         ebx,4
 00497221    mov         ebx,dword ptr [ebx]
 00497223    push        ebx
 00497224    lea         eax,[ebp-0C]
 00497227    push        eax
 00497228    xor         ecx,ecx
 0049722A    mov         edx,dword ptr [ebp-4]
 0049722D    mov         eax,edi
 0049722F    call        TEncoding.GetString
 00497234    mov         eax,esi
 00497236    mov         edx,dword ptr [ebp-0C]
 00497239    call        @UStrAsg
>0049723E    jmp         00497314
 00497243    lea         edx,[ebp-18]
 00497246    mov         ecx,1
 0049724B    mov         eax,ebx
 0049724D    call        TReader.Read
 00497252    mov         eax,dword ptr [ebp-18]
 00497255    push        eax
 00497256    lea         eax,[ebp-4]
 00497259    mov         ecx,1
 0049725E    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00497264    call        @DynArraySetLength
 00497269    add         esp,4
 0049726C    mov         ecx,dword ptr [ebp-18]
 0049726F    mov         edx,dword ptr [ebp-4]
 00497272    mov         eax,ebx
 00497274    call        TReader.Read
 00497279    call        TEncoding.GetANSI
 0049727E    mov         edi,eax
 00497280    mov         ebx,dword ptr [ebp-4]
 00497283    test        ebx,ebx
>00497285    je          0049728C
 00497287    sub         ebx,4
 0049728A    mov         ebx,dword ptr [ebx]
 0049728C    push        ebx
 0049728D    lea         eax,[ebp-10]
 00497290    push        eax
 00497291    xor         ecx,ecx
 00497293    mov         edx,dword ptr [ebp-4]
 00497296    mov         eax,edi
 00497298    call        TEncoding.GetString
 0049729D    mov         eax,esi
 0049729F    mov         edx,dword ptr [ebp-10]
 004972A2    call        @UStrAsg
>004972A7    jmp         00497314
 004972A9    lea         edx,[ebp-18]
 004972AC    mov         ecx,4
 004972B1    mov         eax,ebx
 004972B3    call        TReader.Read
 004972B8    mov         eax,dword ptr [ebp-18]
 004972BB    push        eax
 004972BC    lea         eax,[ebp-4]
 004972BF    mov         ecx,1
 004972C4    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004972CA    call        @DynArraySetLength
 004972CF    add         esp,4
 004972D2    mov         ecx,dword ptr [ebp-18]
 004972D5    mov         edx,dword ptr [ebp-4]
 004972D8    mov         eax,ebx
 004972DA    call        TReader.Read
 004972DF    call        TEncoding.GetANSI
 004972E4    mov         edi,eax
 004972E6    mov         ebx,dword ptr [ebp-4]
 004972E9    test        ebx,ebx
>004972EB    je          004972F2
 004972ED    sub         ebx,4
 004972F0    mov         ebx,dword ptr [ebx]
 004972F2    push        ebx
 004972F3    lea         eax,[ebp-14]
 004972F6    push        eax
 004972F7    xor         ecx,ecx
 004972F9    mov         edx,dword ptr [ebp-4]
 004972FC    mov         eax,edi
 004972FE    call        TEncoding.GetString
 00497303    mov         eax,esi
 00497305    mov         edx,dword ptr [ebp-14]
 00497308    call        @UStrAsg
>0049730D    jmp         00497314
 0049730F    call        PropValueError
 00497314    xor         eax,eax
 00497316    pop         edx
 00497317    pop         ecx
 00497318    pop         ecx
 00497319    mov         dword ptr fs:[eax],edx
 0049731C    push        497344
 00497321    lea         eax,[ebp-14]
 00497324    mov         edx,4
 00497329    call        @UStrArrayClr
 0049732E    lea         eax,[ebp-4]
 00497331    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00497337    call        @DynArrayClear
 0049733C    ret
>0049733D    jmp         @HandleFinally
>00497342    jmp         00497321
 00497344    pop         edi
 00497345    pop         esi
 00497346    pop         ebx
 00497347    mov         esp,ebp
 00497349    pop         ebp
 0049734A    ret
*}
end;

//0049734C
function TReader.ReadValue:TValueType;
begin
{*
 0049734C    push        ecx
 0049734D    mov         edx,esp
 0049734F    mov         ecx,1
 00497354    call        TReader.Read
 00497359    movzx       eax,byte ptr [esp]
 0049735D    pop         edx
 0049735E    ret
*}
end;

//00497360
procedure TReader.SetPosition(Value:LongInt);
begin
{*
 00497360    push        ebx
 00497361    mov         ecx,edx
 00497363    mov         ebx,eax
 00497365    mov         eax,ecx
 00497367    cdq
 00497368    push        edx
 00497369    push        eax
 0049736A    mov         eax,dword ptr [ebx+4]
 0049736D    call        TStream.SetPosition
 00497372    xor         eax,eax
 00497374    mov         dword ptr [ebx+10],eax
 00497377    xor         eax,eax
 00497379    mov         dword ptr [ebx+14],eax
 0049737C    pop         ebx
 0049737D    ret
*}
end;

//00497380
procedure TReader.SkipSetBody;
begin
{*
 00497380    push        ebp
 00497381    mov         ebp,esp
 00497383    push        0
 00497385    push        ebx
 00497386    mov         ebx,eax
 00497388    xor         eax,eax
 0049738A    push        ebp
 0049738B    push        4973BC
 00497390    push        dword ptr fs:[eax]
 00497393    mov         dword ptr fs:[eax],esp
 00497396    lea         edx,[ebp-4]
 00497399    mov         eax,ebx
 0049739B    call        TReader.ReadStr
 004973A0    cmp         dword ptr [ebp-4],0
>004973A4    jne         00497396
 004973A6    xor         eax,eax
 004973A8    pop         edx
 004973A9    pop         ecx
 004973AA    pop         ecx
 004973AB    mov         dword ptr fs:[eax],edx
 004973AE    push        4973C3
 004973B3    lea         eax,[ebp-4]
 004973B6    call        @UStrClr
 004973BB    ret
>004973BC    jmp         @HandleFinally
>004973C1    jmp         004973B3
 004973C3    pop         ebx
 004973C4    pop         ecx
 004973C5    pop         ebp
 004973C6    ret
*}
end;

//004973C8
procedure SkipList;
begin
{*
 004973C8    push        ebp
 004973C9    mov         ebp,esp
 004973CB    push        ebx
 004973CC    mov         ebx,dword ptr [ebp+8]
 004973CF    add         ebx,0FFFFFFFC
>004973D2    jmp         004973DB
 004973D4    mov         eax,dword ptr [ebx]
 004973D6    call        TReader.SkipValue
 004973DB    mov         eax,dword ptr [ebx]
 004973DD    call        TReader.EndOfList
 004973E2    test        al,al
>004973E4    je          004973D4
 004973E6    mov         eax,dword ptr [ebx]
 004973E8    xor         edx,edx
 004973EA    call        TReader.CheckValue
 004973EF    pop         ebx
 004973F0    pop         ebp
 004973F1    ret
*}
end;

//004973F4
procedure SkipBinary(BytesPerUnit:Integer);
begin
{*
 004973F4    push        ebp
 004973F5    mov         ebp,esp
 004973F7    push        ecx
 004973F8    push        ebx
 004973F9    mov         ebx,eax
 004973FB    lea         edx,[ebp-4]
 004973FE    mov         eax,dword ptr [ebp+8]
 00497401    mov         eax,dword ptr [eax-4]
 00497404    mov         ecx,4
 00497409    call        TReader.Read
 0049740E    mov         edx,dword ptr [ebp-4]
 00497411    imul        edx,ebx
 00497414    mov         eax,dword ptr [ebp+8]
 00497417    mov         eax,dword ptr [eax-4]
 0049741A    call        TReader.SkipBytes
 0049741F    pop         ebx
 00497420    pop         ecx
 00497421    pop         ebp
 00497422    ret
*}
end;

//00497424
procedure SkipCollection;
begin
{*
 00497424    push        ebp
 00497425    mov         ebp,esp
 00497427    push        ebx
 00497428    push        esi
 00497429    mov         ebx,dword ptr [ebp+8]
 0049742C    add         ebx,0FFFFFFFC
>0049742F    jmp         00497470
 00497431    mov         eax,dword ptr [ebx]
 00497433    call        TReader.NextValue
 00497438    add         al,0FE
 0049743A    sub         al,3
>0049743C    jae         00497445
 0049743E    mov         eax,dword ptr [ebx]
 00497440    call        TReader.SkipValue
 00497445    mov         eax,dword ptr [ebx]
 00497447    mov         edx,1
 0049744C    call        TReader.SkipBytes
>00497451    jmp         0049745A
 00497453    mov         eax,dword ptr [ebx]
 00497455    call        TReader.SkipProperty
 0049745A    mov         eax,dword ptr [ebx]
 0049745C    call        TReader.EndOfList
 00497461    test        al,al
>00497463    je          00497453
 00497465    mov         esi,dword ptr [ebx]
 00497467    xor         edx,edx
 00497469    mov         eax,esi
 0049746B    call        TReader.CheckValue
 00497470    mov         eax,dword ptr [ebx]
 00497472    call        TReader.EndOfList
 00497477    test        al,al
>00497479    je          00497431
 0049747B    mov         eax,dword ptr [ebx]
 0049747D    xor         edx,edx
 0049747F    call        TReader.CheckValue
 00497484    pop         esi
 00497485    pop         ebx
 00497486    pop         ebp
 00497487    ret
*}
end;

//00497488
procedure TReader.SkipValue;
begin
{*
 00497488    push        ebp
 00497489    mov         ebp,esp
 0049748B    add         esp,0FFFFFFF8
 0049748E    xor         edx,edx
 00497490    mov         dword ptr [ebp-8],edx
 00497493    mov         dword ptr [ebp-4],eax
 00497496    xor         eax,eax
 00497498    push        ebp
 00497499    push        49762D
 0049749E    push        dword ptr fs:[eax]
 004974A1    mov         dword ptr fs:[eax],esp
 004974A4    mov         eax,dword ptr [ebp-4]
 004974A7    call        TReader.ReadValue
 004974AC    and         eax,7F
 004974AF    cmp         eax,15
>004974B2    ja          00497617
 004974B8    jmp         dword ptr [eax*4+4974BF]
 004974B8    dd          00497617
 004974B8    dd          0049751C
 004974B8    dd          00497528
 004974B8    dd          0049753A
 004974B8    dd          0049754C
 004974B8    dd          0049755E
 004974B8    dd          00497570
 004974B8    dd          00497570
 004974B8    dd          00497617
 004974B8    dd          00497617
 004974B8    dd          00497580
 004974B8    dd          00497591
 004974B8    dd          0049759B
 004974B8    dd          00497617
 004974B8    dd          004975A9
 004974B8    dd          004975B2
 004974B8    dd          004975C1
 004974B8    dd          004975D0
 004974B8    dd          004975DF
 004974B8    dd          004975ED
 004974B8    dd          004975FC
 004974B8    dd          0049760A
>00497517    jmp         00497617
 0049751C    push        ebp
 0049751D    call        SkipList
 00497522    pop         ecx
>00497523    jmp         00497617
 00497528    mov         edx,1
 0049752D    mov         eax,dword ptr [ebp-4]
 00497530    call        TReader.SkipBytes
>00497535    jmp         00497617
 0049753A    mov         edx,2
 0049753F    mov         eax,dword ptr [ebp-4]
 00497542    call        TReader.SkipBytes
>00497547    jmp         00497617
 0049754C    mov         edx,4
 00497551    mov         eax,dword ptr [ebp-4]
 00497554    call        TReader.SkipBytes
>00497559    jmp         00497617
 0049755E    mov         edx,0A
 00497563    mov         eax,dword ptr [ebp-4]
 00497566    call        TReader.SkipBytes
>0049756B    jmp         00497617
 00497570    lea         edx,[ebp-8]
 00497573    mov         eax,dword ptr [ebp-4]
 00497576    call        TReader.ReadStr
>0049757B    jmp         00497617
 00497580    push        ebp
 00497581    mov         eax,1
 00497586    call        SkipBinary
 0049758B    pop         ecx
>0049758C    jmp         00497617
 00497591    mov         eax,dword ptr [ebp-4]
 00497594    call        TReader.SkipSetBody
>00497599    jmp         00497617
 0049759B    push        ebp
 0049759C    mov         eax,1
 004975A1    call        SkipBinary
 004975A6    pop         ecx
>004975A7    jmp         00497617
 004975A9    push        ebp
 004975AA    call        SkipCollection
 004975AF    pop         ecx
>004975B0    jmp         00497617
 004975B2    mov         edx,4
 004975B7    mov         eax,dword ptr [ebp-4]
 004975BA    call        TReader.SkipBytes
>004975BF    jmp         00497617
 004975C1    mov         edx,8
 004975C6    mov         eax,dword ptr [ebp-4]
 004975C9    call        TReader.SkipBytes
>004975CE    jmp         00497617
 004975D0    mov         edx,8
 004975D5    mov         eax,dword ptr [ebp-4]
 004975D8    call        TReader.SkipBytes
>004975DD    jmp         00497617
 004975DF    push        ebp
 004975E0    mov         eax,2
 004975E5    call        SkipBinary
 004975EA    pop         ecx
>004975EB    jmp         00497617
 004975ED    mov         edx,8
 004975F2    mov         eax,dword ptr [ebp-4]
 004975F5    call        TReader.SkipBytes
>004975FA    jmp         00497617
 004975FC    push        ebp
 004975FD    mov         eax,1
 00497602    call        SkipBinary
 00497607    pop         ecx
>00497608    jmp         00497617
 0049760A    mov         edx,8
 0049760F    mov         eax,dword ptr [ebp-4]
 00497612    call        TReader.SkipBytes
 00497617    xor         eax,eax
 00497619    pop         edx
 0049761A    pop         ecx
 0049761B    pop         ecx
 0049761C    mov         dword ptr fs:[eax],edx
 0049761F    push        497634
 00497624    lea         eax,[ebp-8]
 00497627    call        @UStrClr
 0049762C    ret
>0049762D    jmp         @HandleFinally
>00497632    jmp         00497624
 00497634    pop         ecx
 00497635    pop         ecx
 00497636    pop         ebp
 00497637    ret
*}
end;

//00497638
procedure TReader.SkipProperty;
begin
{*
 00497638    push        ebp
 00497639    mov         ebp,esp
 0049763B    push        0
 0049763D    push        ebx
 0049763E    mov         ebx,eax
 00497640    xor         eax,eax
 00497642    push        ebp
 00497643    push        497675
 00497648    push        dword ptr fs:[eax]
 0049764B    mov         dword ptr fs:[eax],esp
 0049764E    lea         edx,[ebp-4]
 00497651    mov         eax,ebx
 00497653    call        TReader.ReadStr
 00497658    mov         eax,ebx
 0049765A    call        TReader.SkipValue
 0049765F    xor         eax,eax
 00497661    pop         edx
 00497662    pop         ecx
 00497663    pop         ecx
 00497664    mov         dword ptr fs:[eax],edx
 00497667    push        49767C
 0049766C    lea         eax,[ebp-4]
 0049766F    call        @UStrClr
 00497674    ret
>00497675    jmp         @HandleFinally
>0049767A    jmp         0049766C
 0049767C    pop         ebx
 0049767D    pop         ecx
 0049767E    pop         ebp
 0049767F    ret
*}
end;

//00497680
procedure TReader.SkipComponent(SkipHeader:Boolean);
begin
{*
 00497680    push        ebp
 00497681    mov         ebp,esp
 00497683    add         esp,0FFFFFFF0
 00497686    push        ebx
 00497687    push        esi
 00497688    xor         ecx,ecx
 0049768A    mov         dword ptr [ebp-10],ecx
 0049768D    mov         dword ptr [ebp-0C],ecx
 00497690    mov         esi,eax
 00497692    xor         eax,eax
 00497694    push        ebp
 00497695    push        49771C
 0049769A    push        dword ptr fs:[eax]
 0049769D    mov         dword ptr fs:[eax],esp
 004976A0    test        dl,dl
>004976A2    je          004976CE
 004976A4    lea         ecx,[ebp-8]
 004976A7    lea         edx,[ebp-1]
 004976AA    mov         eax,esi
 004976AC    mov         ebx,dword ptr [eax]
 004976AE    call        dword ptr [ebx+28]
 004976B1    lea         edx,[ebp-0C]
 004976B4    mov         eax,esi
 004976B6    call        TReader.ReadStr
 004976BB    lea         edx,[ebp-10]
 004976BE    mov         eax,esi
 004976C0    call        TReader.ReadStr
>004976C5    jmp         004976CE
 004976C7    mov         eax,esi
 004976C9    call        TReader.SkipProperty
 004976CE    mov         eax,esi
 004976D0    call        TReader.EndOfList
 004976D5    test        al,al
>004976D7    je          004976C7
 004976D9    xor         edx,edx
 004976DB    mov         eax,esi
 004976DD    call        TReader.CheckValue
>004976E2    jmp         004976ED
 004976E4    mov         dl,1
 004976E6    mov         eax,esi
 004976E8    call        TReader.SkipComponent
 004976ED    mov         eax,esi
 004976EF    call        TReader.EndOfList
 004976F4    test        al,al
>004976F6    je          004976E4
 004976F8    xor         edx,edx
 004976FA    mov         eax,esi
 004976FC    call        TReader.CheckValue
 00497701    xor         eax,eax
 00497703    pop         edx
 00497704    pop         ecx
 00497705    pop         ecx
 00497706    mov         dword ptr fs:[eax],edx
 00497709    push        497723
 0049770E    lea         eax,[ebp-10]
 00497711    mov         edx,2
 00497716    call        @UStrArrayClr
 0049771B    ret
>0049771C    jmp         @HandleFinally
>00497721    jmp         0049770E
 00497723    pop         esi
 00497724    pop         ebx
 00497725    mov         esp,ebp
 00497727    pop         ebp
 00497728    ret
*}
end;

//0049772C
function TReader.FindAncestorComponent(const Name:UnicodeString; ComponentClass:TPersistentClass):TComponent;
begin
{*
 0049772C    push        ebp
 0049772D    mov         ebp,esp
 0049772F    add         esp,0FFFFFFF0
 00497732    push        ebx
 00497733    push        esi
 00497734    push        edi
 00497735    xor         ebx,ebx
 00497737    mov         dword ptr [ebp-4],ebx
 0049773A    mov         edi,ecx
 0049773C    mov         esi,edx
 0049773E    mov         ebx,eax
 00497740    xor         eax,eax
 00497742    push        ebp
 00497743    push        4977D1
 00497748    push        dword ptr fs:[eax]
 0049774B    mov         dword ptr fs:[eax],esp
 0049774E    lea         eax,[ebp-4]
 00497751    mov         edx,esi
 00497753    call        @UStrLAsg
 00497758    xor         eax,eax
 0049775A    mov         dword ptr [ebp-8],eax
 0049775D    mov         esi,dword ptr [ebx+1C]
 00497760    test        esi,esi
>00497762    je          00497771
 00497764    mov         edx,dword ptr [ebp-4]
 00497767    mov         eax,esi
 00497769    call        TComponent.FindComponent
 0049776E    mov         dword ptr [ebp-8],eax
 00497771    cmp         dword ptr [ebp-8],0
>00497775    jne         004977BB
 00497777    cmp         word ptr [ebx+5A],0
>0049777C    je          0049778E
 0049777E    push        edi
 0049777F    lea         eax,[ebp-8]
 00497782    push        eax
 00497783    mov         ecx,dword ptr [ebp-4]
 00497786    mov         edx,ebx
 00497788    mov         eax,dword ptr [ebx+5C]
 0049778B    call        dword ptr [ebx+58]
 0049778E    cmp         dword ptr [ebp-8],0
>00497792    jne         004977BB
 00497794    mov         eax,dword ptr [ebp-4]
 00497797    mov         dword ptr [ebp-10],eax
 0049779A    mov         byte ptr [ebp-0C],11
 0049779E    lea         eax,[ebp-10]
 004977A1    push        eax
 004977A2    push        0
 004977A4    mov         ecx,dword ptr ds:[7C4598];^SResString113:TResStringRec
 004977AA    mov         dl,1
 004977AC    mov         eax,[0046B93C];EReadError
 004977B1    call        Exception.CreateResFmt
 004977B6    call        @RaiseExcept
 004977BB    xor         eax,eax
 004977BD    pop         edx
 004977BE    pop         ecx
 004977BF    pop         ecx
 004977C0    mov         dword ptr fs:[eax],edx
 004977C3    push        4977D8
 004977C8    lea         eax,[ebp-4]
 004977CB    call        @UStrClr
 004977D0    ret
>004977D1    jmp         @HandleFinally
>004977D6    jmp         004977C8
 004977D8    mov         eax,dword ptr [ebp-8]
 004977DB    pop         edi
 004977DC    pop         esi
 004977DD    pop         ebx
 004977DE    mov         esp,ebp
 004977E0    pop         ebp
 004977E1    ret
*}
end;

//004977E4
procedure TReader.ReferenceName(var Name:UnicodeString);
begin
{*
 004977E4    push        ebx
 004977E5    cmp         word ptr [eax+52],0
>004977EA    je          004977F8
 004977EC    mov         ecx,edx
 004977EE    mov         ebx,eax
 004977F0    mov         edx,eax
 004977F2    mov         eax,dword ptr [ebx+54]
 004977F5    call        dword ptr [ebx+50]
 004977F8    pop         ebx
 004977F9    ret
*}
end;

//004977FC
{*procedure sub_004977FC(?:?; ?:?);
begin
 004977FC    push        ebx
 004977FD    push        esi
 004977FE    push        edi
 004977FF    mov         edi,ecx
 00497801    mov         esi,edx
 00497803    cmp         word ptr [eax+4A],0;TReader.?f4A:word
>00497808    je          00497817
 0049780A    push        edi
 0049780B    mov         ebx,eax
 0049780D    mov         ecx,esi
 0049780F    mov         edx,eax
 00497811    mov         eax,dword ptr [ebx+4C];TReader.?f4C:dword
 00497814    call        dword ptr [ebx+48];TReader.FOnSetName
 00497817    mov         edx,dword ptr [edi]
 00497819    mov         eax,esi
 0049781B    mov         ecx,dword ptr [eax]
 0049781D    call        dword ptr [ecx+28]
 00497820    pop         edi
 00497821    pop         esi
 00497822    pop         ebx
 00497823    ret
end;*}

//00497824
function TReader.FindComponentClass(const ClassName:UnicodeString):TComponentClass;
begin
{*
 00497824    push        ebx
 00497825    push        esi
 00497826    push        ecx
 00497827    mov         esi,edx
 00497829    mov         ebx,eax
 0049782B    mov         ecx,esi
 0049782D    mov         edx,dword ptr [ebx+18]
 00497830    mov         eax,ebx
 00497832    call        TReader.GetFieldClass
 00497837    mov         dword ptr [esp],eax
 0049783A    cmp         dword ptr [esp],0
>0049783E    jne         0049785D
 00497840    cmp         dword ptr [ebx+1C],0
>00497844    je          0049785D
 00497846    mov         eax,dword ptr [ebx+1C]
 00497849    cmp         eax,dword ptr [ebx+18]
>0049784C    je          0049785D
 0049784E    mov         ecx,esi
 00497850    mov         edx,dword ptr [ebx+1C]
 00497853    mov         eax,ebx
 00497855    call        TReader.GetFieldClass
 0049785A    mov         dword ptr [esp],eax
 0049785D    cmp         word ptr [ebx+6A],0
>00497862    je          0049786F
 00497864    push        esp
 00497865    mov         ecx,esi
 00497867    mov         edx,ebx
 00497869    mov         eax,dword ptr [ebx+6C]
 0049786C    call        dword ptr [ebx+68]
 0049786F    cmp         dword ptr [esp],0
>00497873    je          00497887
 00497875    mov         edx,dword ptr ds:[478C44];TComponent
 0049787B    mov         eax,dword ptr [esp]
 0049787E    call        TObject.InheritsFrom
 00497883    test        al,al
>00497885    jne         0049788E
 00497887    mov         eax,esi
 00497889    call        ClassNotFound
 0049788E    mov         eax,dword ptr [esp]
 00497891    pop         edx
 00497892    pop         esi
 00497893    pop         ebx
 00497894    ret
*}
end;

//00497898
procedure TReader.SkipBytes(Count:Integer);
begin
{*
 00497898    push        ebp
 00497899    mov         ebp,esp
 0049789B    push        0
 0049789D    push        ebx
 0049789E    push        esi
 0049789F    mov         ebx,edx
 004978A1    mov         esi,eax
 004978A3    xor         eax,eax
 004978A5    push        ebp
 004978A6    push        49791D
 004978AB    push        dword ptr fs:[eax]
 004978AE    mov         dword ptr fs:[eax],esp
 004978B1    push        100
 004978B6    lea         eax,[ebp-4]
 004978B9    mov         ecx,1
 004978BE    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004978C4    call        @DynArraySetLength
 004978C9    add         esp,4
 004978CC    test        ebx,ebx
>004978CE    jle         00497901
 004978D0    cmp         ebx,100
>004978D6    jle         004978EF
 004978D8    mov         ecx,100
 004978DD    mov         edx,dword ptr [ebp-4]
 004978E0    mov         eax,esi
 004978E2    call        TReader.Read
 004978E7    sub         ebx,100
>004978ED    jmp         004978FD
 004978EF    mov         ecx,ebx
 004978F1    mov         edx,dword ptr [ebp-4]
 004978F4    mov         eax,esi
 004978F6    call        TReader.Read
 004978FB    xor         ebx,ebx
 004978FD    test        ebx,ebx
>004978FF    jg          004978D0
 00497901    xor         eax,eax
 00497903    pop         edx
 00497904    pop         ecx
 00497905    pop         ecx
 00497906    mov         dword ptr fs:[eax],edx
 00497909    push        497924
 0049790E    lea         eax,[ebp-4]
 00497911    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00497917    call        @DynArrayClear
 0049791C    ret
>0049791D    jmp         @HandleFinally
>00497922    jmp         0049790E
 00497924    pop         esi
 00497925    pop         ebx
 00497926    pop         ecx
 00497927    pop         ebp
 00497928    ret
*}
end;

//0049792C
function ReadCustomVariant:Variant;
begin
{*
 0049792C    push        ebp
 0049792D    mov         ebp,esp
 0049792F    add         esp,0FFFFFFE4
 00497932    push        ebx
 00497933    xor         edx,edx
 00497935    mov         dword ptr [ebp-4],edx
 00497938    mov         dword ptr [ebp-8],edx
 0049793B    mov         ebx,eax
 0049793D    xor         eax,eax
 0049793F    push        ebp
 00497940    push        497AD5
 00497945    push        dword ptr fs:[eax]
 00497948    mov         dword ptr fs:[eax],esp
 0049794B    mov         eax,dword ptr [ebp+8]
 0049794E    mov         eax,dword ptr [eax-4]
 00497951    mov         dl,0A
 00497953    call        TReader.CheckValue
 00497958    xor         eax,eax
 0049795A    mov         dword ptr [ebp-10],eax
 0049795D    mov         dl,1
 0049795F    mov         eax,[00472CE4];TMemoryStream
 00497964    call        TObject.Create
 00497969    mov         dword ptr [ebp-0C],eax
 0049796C    xor         eax,eax
 0049796E    push        ebp
 0049796F    push        497AB0
 00497974    push        dword ptr fs:[eax]
 00497977    mov         dword ptr fs:[eax],esp
 0049797A    mov         dl,1
 0049797C    mov         eax,[00472CE4];TMemoryStream
 00497981    call        TObject.Create
 00497986    mov         dword ptr [ebp-10],eax
 00497989    lea         edx,[ebp-18]
 0049798C    mov         eax,dword ptr [ebp+8]
 0049798F    mov         eax,dword ptr [eax-4]
 00497992    mov         ecx,4
 00497997    call        TReader.Read
 0049799C    mov         eax,dword ptr [ebp-18]
 0049799F    cdq
 004979A0    push        edx
 004979A1    push        eax
 004979A2    mov         eax,dword ptr [ebp-0C]
 004979A5    call        TStream.SetSize64
 004979AA    mov         eax,dword ptr [ebp-0C]
 004979AD    mov         edx,dword ptr [eax+4]
 004979B0    mov         eax,dword ptr [ebp+8]
 004979B3    mov         eax,dword ptr [eax-4]
 004979B6    mov         ecx,dword ptr [ebp-18]
 004979B9    call        TReader.Read
 004979BE    push        400
 004979C3    mov         ecx,dword ptr [ebp-0C]
 004979C6    mov         dl,1
 004979C8    mov         eax,[00474D48];TReader
 004979CD    call        TFiler.Create
 004979D2    mov         dword ptr [ebp-14],eax
 004979D5    xor         eax,eax
 004979D7    push        ebp
 004979D8    push        497A8B
 004979DD    push        dword ptr fs:[eax]
 004979E0    mov         dword ptr fs:[eax],esp
 004979E3    lea         edx,[ebp-4]
 004979E6    mov         eax,dword ptr [ebp-14]
 004979E9    call        TReader.ReadString
 004979EE    lea         edx,[ebp-18]
 004979F1    mov         ecx,4
 004979F6    mov         eax,dword ptr [ebp-14]
 004979F9    call        TReader.Read
 004979FE    mov         eax,dword ptr [ebp-18]
 00497A01    cdq
 00497A02    push        edx
 00497A03    push        eax
 00497A04    mov         eax,dword ptr [ebp-10]
 00497A07    call        TStream.SetSize64
 00497A0C    mov         eax,dword ptr [ebp-10]
 00497A0F    mov         edx,dword ptr [eax+4]
 00497A12    mov         ecx,dword ptr [ebp-18]
 00497A15    mov         eax,dword ptr [ebp-14]
 00497A18    call        TReader.Read
 00497A1D    lea         edx,[ebp-1C]
 00497A20    mov         eax,dword ptr [ebp-4]
 00497A23    call        00431A50
 00497A28    test        al,al
>00497A2A    je          00497A47
 00497A2C    lea         eax,[ebp-8]
 00497A2F    call        @IntfClear
 00497A34    mov         ecx,eax
 00497A36    mov         edx,497AE4
 00497A3B    mov         eax,dword ptr [ebp-1C]
 00497A3E    call        Supports
 00497A43    test        al,al
>00497A45    jne         00497A5E
 00497A47    mov         ecx,dword ptr ds:[7C4CFC];^SResString139:TResStringRec
 00497A4D    mov         dl,1
 00497A4F    mov         eax,[0046B93C];EReadError
 00497A54    call        Exception.CreateRes
 00497A59    call        @RaiseExcept
 00497A5E    mov         eax,dword ptr [ebp-1C]
 00497A61    movzx       eax,word ptr [eax+4]
 00497A65    mov         word ptr [ebx],ax
 00497A68    mov         edx,ebx
 00497A6A    mov         ecx,dword ptr [ebp-10]
 00497A6D    mov         eax,dword ptr [ebp-8]
 00497A70    mov         ebx,dword ptr [eax]
 00497A72    call        dword ptr [ebx+0C]
 00497A75    xor         eax,eax
 00497A77    pop         edx
 00497A78    pop         ecx
 00497A79    pop         ecx
 00497A7A    mov         dword ptr fs:[eax],edx
 00497A7D    push        497A92
 00497A82    mov         eax,dword ptr [ebp-14]
 00497A85    call        TObject.Free
 00497A8A    ret
>00497A8B    jmp         @HandleFinally
>00497A90    jmp         00497A82
 00497A92    xor         eax,eax
 00497A94    pop         edx
 00497A95    pop         ecx
 00497A96    pop         ecx
 00497A97    mov         dword ptr fs:[eax],edx
 00497A9A    push        497AB7
 00497A9F    mov         eax,dword ptr [ebp-10]
 00497AA2    call        TObject.Free
 00497AA7    mov         eax,dword ptr [ebp-0C]
 00497AAA    call        TObject.Free
 00497AAF    ret
>00497AB0    jmp         @HandleFinally
>00497AB5    jmp         00497A9F
 00497AB7    xor         eax,eax
 00497AB9    pop         edx
 00497ABA    pop         ecx
 00497ABB    pop         ecx
 00497ABC    mov         dword ptr fs:[eax],edx
 00497ABF    push        497ADC
 00497AC4    lea         eax,[ebp-8]
 00497AC7    call        @IntfClear
 00497ACC    lea         eax,[ebp-4]
 00497ACF    call        @UStrClr
 00497AD4    ret
>00497AD5    jmp         @HandleFinally
>00497ADA    jmp         00497AC4
 00497ADC    pop         ebx
 00497ADD    mov         esp,ebp
 00497ADF    pop         ebp
 00497AE0    ret
*}
end;

//00497AF4
function TReader.ReadVariant:Variant;
begin
{*
 00497AF4    push        ebp
 00497AF5    mov         ebp,esp
 00497AF7    xor         ecx,ecx
 00497AF9    push        ecx
 00497AFA    push        ecx
 00497AFB    push        ecx
 00497AFC    push        ecx
 00497AFD    push        ecx
 00497AFE    push        ecx
 00497AFF    push        ecx
 00497B00    push        ebx
 00497B01    mov         ebx,edx
 00497B03    mov         dword ptr [ebp-4],eax
 00497B06    xor         eax,eax
 00497B08    push        ebp
 00497B09    push        497D03
 00497B0E    push        dword ptr fs:[eax]
 00497B11    mov         dword ptr fs:[eax],esp
 00497B14    mov         eax,ebx
 00497B16    call        @VarClear
 00497B1B    mov         eax,dword ptr [ebp-4]
 00497B1E    call        TReader.NextValue
 00497B23    and         eax,7F
 00497B26    cmp         eax,15
>00497B29    ja          00497CC9
 00497B2F    jmp         dword ptr [eax*4+497B36]
 00497B2F    dd          00497B8E
 00497B2F    dd          00497CC9
 00497B2F    dd          00497BAA
 00497B2F    dd          00497BC5
 00497B2F    dd          00497BE0
 00497B2F    dd          00497BF8
 00497B2F    dd          00497C5C
 00497B2F    dd          00497CC9
 00497B2F    dd          00497C8A
 00497B2F    dd          00497C8A
 00497B2F    dd          00497CA0
 00497B2F    dd          00497CC9
 00497B2F    dd          00497C5C
 00497B2F    dd          00497B8E
 00497B2F    dd          00497CC9
 00497B2F    dd          00497C0C
 00497B2F    dd          00497C34
 00497B2F    dd          00497C48
 00497B2F    dd          00497C73
 00497B2F    dd          00497CB6
 00497B2F    dd          00497C73
 00497B2F    dd          00497C20
 00497B8E    mov         eax,dword ptr [ebp-4]
 00497B91    call        TReader.ReadValue
 00497B96    cmp         al,0D
>00497B98    je          00497CE0
 00497B9E    mov         eax,ebx
 00497BA0    call        Null
>00497BA5    jmp         00497CE0
 00497BAA    mov         eax,dword ptr [ebp-4]
 00497BAD    call        TReader.ReadInteger
 00497BB2    mov         edx,eax
 00497BB4    movsx       edx,dl
 00497BB7    mov         eax,ebx
 00497BB9    mov         cl,0FF
 00497BBB    call        @VarFromInt
>00497BC0    jmp         00497CE0
 00497BC5    mov         eax,dword ptr [ebp-4]
 00497BC8    call        TReader.ReadInteger
 00497BCD    mov         edx,eax
 00497BCF    movsx       edx,dx
 00497BD2    mov         eax,ebx
 00497BD4    mov         cl,0FE
 00497BD6    call        @VarFromInt
>00497BDB    jmp         00497CE0
 00497BE0    mov         eax,dword ptr [ebp-4]
 00497BE3    call        TReader.ReadInteger
 00497BE8    mov         edx,eax
 00497BEA    mov         eax,ebx
 00497BEC    mov         cl,0FC
 00497BEE    call        @VarFromInt
>00497BF3    jmp         00497CE0
 00497BF8    mov         eax,dword ptr [ebp-4]
 00497BFB    call        TReader.ReadFloat
 00497C00    mov         eax,ebx
 00497C02    call        @VarFromReal
>00497C07    jmp         00497CE0
 00497C0C    mov         eax,dword ptr [ebp-4]
 00497C0F    call        TReader.ReadSingle
 00497C14    mov         eax,ebx
 00497C16    call        @VarFromReal
>00497C1B    jmp         00497CE0
 00497C20    mov         eax,dword ptr [ebp-4]
 00497C23    call        TReader.ReadDouble
 00497C28    mov         eax,ebx
 00497C2A    call        @VarFromReal
>00497C2F    jmp         00497CE0
 00497C34    mov         eax,dword ptr [ebp-4]
 00497C37    call        TReader.ReadCurrency
 00497C3C    mov         eax,ebx
 00497C3E    call        @VarFromCurr
>00497C43    jmp         00497CE0
 00497C48    mov         eax,dword ptr [ebp-4]
 00497C4B    call        TReader.ReadDate
 00497C50    mov         eax,ebx
 00497C52    call        @VarFromTDateTime
>00497C57    jmp         00497CE0
 00497C5C    lea         edx,[ebp-8]
 00497C5F    mov         eax,dword ptr [ebp-4]
 00497C62    call        TReader.ReadString
 00497C67    mov         edx,dword ptr [ebp-8]
 00497C6A    mov         eax,ebx
 00497C6C    call        @VarFromUStr
>00497C71    jmp         00497CE0
 00497C73    lea         edx,[ebp-0C]
 00497C76    mov         eax,dword ptr [ebp-4]
 00497C79    call        TReader.ReadString
 00497C7E    mov         edx,dword ptr [ebp-0C]
 00497C81    mov         eax,ebx
 00497C83    call        @VarFromUStr
>00497C88    jmp         00497CE0
 00497C8A    mov         eax,dword ptr [ebp-4]
 00497C8D    call        TReader.ReadValue
 00497C92    cmp         al,9
 00497C94    sete        dl
 00497C97    mov         eax,ebx
 00497C99    call        @VarFromBool
>00497C9E    jmp         00497CE0
 00497CA0    push        ebp
 00497CA1    lea         eax,[ebp-1C]
 00497CA4    call        ReadCustomVariant
 00497CA9    pop         ecx
 00497CAA    lea         edx,[ebp-1C]
 00497CAD    mov         eax,ebx
 00497CAF    call        @VarCopy
>00497CB4    jmp         00497CE0
 00497CB6    mov         eax,dword ptr [ebp-4]
 00497CB9    call        TReader.ReadInt64
 00497CBE    push        edx
 00497CBF    push        eax
 00497CC0    mov         eax,ebx
 00497CC2    call        @VarFromInt64
>00497CC7    jmp         00497CE0
 00497CC9    mov         ecx,dword ptr ds:[7C4CFC];^SResString139:TResStringRec
 00497CCF    mov         dl,1
 00497CD1    mov         eax,[0046B93C];EReadError
 00497CD6    call        Exception.CreateRes
 00497CDB    call        @RaiseExcept
 00497CE0    xor         eax,eax
 00497CE2    pop         edx
 00497CE3    pop         ecx
 00497CE4    pop         ecx
 00497CE5    mov         dword ptr fs:[eax],edx
 00497CE8    push        497D0A
 00497CED    lea         eax,[ebp-1C]
 00497CF0    call        @VarClr
 00497CF5    lea         eax,[ebp-0C]
 00497CF8    mov         edx,2
 00497CFD    call        @UStrArrayClr
 00497D02    ret
>00497D03    jmp         @HandleFinally
>00497D08    jmp         00497CED
 00497D0A    pop         ebx
 00497D0B    mov         esp,ebp
 00497D0D    pop         ebp
 00497D0E    ret
*}
end;

//00497D10
destructor TWriter.Destroy();
begin
{*
 00497D10    push        ebx
 00497D11    push        esi
 00497D12    call        @BeforeDestruction
 00497D17    mov         ebx,edx
 00497D19    mov         esi,eax
 00497D1B    mov         eax,esi
 00497D1D    call        TWriter.WriteBuffer
 00497D22    mov         dl,0FC
 00497D24    and         dl,bl
 00497D26    mov         eax,esi
 00497D28    call        TFiler.Destroy
 00497D2D    test        bl,bl
>00497D2F    jle         00497D38
 00497D31    mov         eax,esi
 00497D33    call        @ClassDestroy
 00497D38    pop         esi
 00497D39    pop         ebx
 00497D3A    ret
*}
end;

//00497D50
procedure TWriter.DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc);
begin
{*
 00497D50    push        ebp
 00497D51    mov         ebp,esp
 00497D53    push        ebx
 00497D54    mov         ebx,eax
 00497D56    test        cl,cl
>00497D58    je          00497D70
 00497D5A    cmp         word ptr [ebp+0A],0
>00497D5F    je          00497D70
 00497D61    mov         eax,ebx
 00497D63    call        TWriter.WritePropName
 00497D68    mov         edx,ebx
 00497D6A    mov         eax,dword ptr [ebp+0C]
 00497D6D    call        dword ptr [ebp+8]
 00497D70    pop         ebx
 00497D71    pop         ebp
 00497D72    ret         10
*}
end;

//00497D78
procedure TWriter.DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc);
begin
{*
 00497D78    push        ebp
 00497D79    mov         ebp,esp
 00497D7B    push        ebx
 00497D7C    mov         ebx,eax
 00497D7E    test        cl,cl
>00497D80    je          00497D9D
 00497D82    cmp         word ptr [ebp+0A],0
>00497D87    je          00497D9D
 00497D89    mov         eax,ebx
 00497D8B    call        TWriter.WritePropName
 00497D90    push        dword ptr [ebp+0C]
 00497D93    push        dword ptr [ebp+8]
 00497D96    mov         eax,ebx
 00497D98    call        TWriter.WriteBinary
 00497D9D    pop         ebx
 00497D9E    pop         ebp
 00497D9F    ret         10
*}
end;

//00497DA4
function TWriter.GetPosition:LongInt;
begin
{*
 00497DA4    push        ebx
 00497DA5    mov         ebx,eax
 00497DA7    mov         eax,dword ptr [ebx+4]
 00497DAA    call        TStream.GetPosition
 00497DAF    add         eax,dword ptr [ebx+10]
 00497DB2    pop         ebx
 00497DB3    ret
*}
end;

//00497DB4
function TWriter.FindMethodName(AMethod:TMethod):UnicodeString;
begin
{*
 00497DB4    push        ebx
 00497DB5    push        esi
 00497DB6    push        edi
 00497DB7    add         esp,0FFFFFFF8
 00497DBA    mov         esi,edx
 00497DBC    lea         edi,[esp]
 00497DBF    movs        dword ptr [edi],dword ptr [esi]
 00497DC0    movs        dword ptr [edi],dword ptr [esi]
 00497DC1    mov         esi,ecx
 00497DC3    mov         ebx,eax
 00497DC5    mov         eax,esi
 00497DC7    call        @UStrClr
 00497DCC    cmp         word ptr [ebx+4A],0
>00497DD1    je          00497DE0
 00497DD3    push        esi
 00497DD4    lea         ecx,[esp+4]
 00497DD8    mov         edx,ebx
 00497DDA    mov         eax,dword ptr [ebx+4C]
 00497DDD    call        dword ptr [ebx+48]
 00497DE0    cmp         dword ptr [esi],0
>00497DE3    jne         00497DF4
 00497DE5    mov         ecx,esi
 00497DE7    mov         eax,dword ptr [ebx+1C]
 00497DEA    mov         eax,dword ptr [eax]
 00497DEC    mov         edx,dword ptr [esp]
 00497DEF    call        TObject.MethodName
 00497DF4    pop         ecx
 00497DF5    pop         edx
 00497DF6    pop         edi
 00497DF7    pop         esi
 00497DF8    pop         ebx
 00497DF9    ret
*}
end;

//00497DFC
procedure TWriter.FlushBuffer;
begin
{*
 00497DFC    call        TWriter.WriteBuffer
 00497E01    ret
*}
end;

//00497E04
procedure TWriter.SetPosition(Value:LongInt);
begin
{*
 00497E04    push        ebx
 00497E05    push        esi
 00497E06    mov         esi,edx
 00497E08    mov         ebx,eax
 00497E0A    mov         eax,dword ptr [ebx+4]
 00497E0D    call        TStream.GetPosition
 00497E12    cmp         eax,esi
>00497E14    jg          00497E1F
 00497E16    mov         edx,eax
 00497E18    add         edx,dword ptr [ebx+10]
 00497E1B    cmp         esi,edx
>00497E1D    jle         00497E36
 00497E1F    mov         eax,ebx
 00497E21    call        TWriter.WriteBuffer
 00497E26    mov         eax,esi
 00497E28    cdq
 00497E29    push        edx
 00497E2A    push        eax
 00497E2B    mov         eax,dword ptr [ebx+4]
 00497E2E    call        TStream.SetPosition
 00497E33    pop         esi
 00497E34    pop         ebx
 00497E35    ret
 00497E36    sub         esi,eax
 00497E38    mov         dword ptr [ebx+10],esi
 00497E3B    pop         esi
 00497E3C    pop         ebx
 00497E3D    ret
*}
end;

//00497E40
procedure TWriter.SetRoot(Value:TComponent);
begin
{*
 00497E40    push        ebx
 00497E41    push        esi
 00497E42    mov         esi,edx
 00497E44    mov         ebx,eax
 00497E46    mov         edx,esi
 00497E48    mov         eax,ebx
 00497E4A    call        TFiler.SetRoot
 00497E4F    mov         dword ptr [ebx+1C],esi
 00497E52    pop         esi
 00497E53    pop         ebx
 00497E54    ret
*}
end;

//00497E58
{*procedure TWriter.Write(Buffer:?; Count:Integer);
begin
 00497E58    push        ebx
 00497E59    push        esi
 00497E5A    push        edi
 00497E5B    push        ebp
 00497E5C    push        ecx
 00497E5D    mov         edi,ecx
 00497E5F    mov         dword ptr [esp],edx
 00497E62    mov         esi,eax
 00497E64    xor         ebp,ebp
 00497E66    test        edi,edi
>00497E68    jle         00497EA1
 00497E6A    mov         ebx,dword ptr [esi+0C]
 00497E6D    sub         ebx,dword ptr [esi+10]
 00497E70    test        ebx,ebx
>00497E72    jne         00497E7E
 00497E74    mov         eax,esi
 00497E76    call        TWriter.WriteBuffer
 00497E7B    mov         ebx,dword ptr [esi+0C]
 00497E7E    cmp         edi,ebx
>00497E80    jg          00497E84
 00497E82    mov         ebx,edi
 00497E84    mov         edx,dword ptr [esi+8]
 00497E87    add         edx,dword ptr [esi+10]
 00497E8A    mov         eax,dword ptr [esp]
 00497E8D    add         eax,ebp
 00497E8F    mov         ecx,ebx
 00497E91    call        Move
 00497E96    add         dword ptr [esi+10],ebx
 00497E99    add         ebp,ebx
 00497E9B    sub         edi,ebx
 00497E9D    test        edi,edi
>00497E9F    jg          00497E6A
 00497EA1    pop         edx
 00497EA2    pop         ebp
 00497EA3    pop         edi
 00497EA4    pop         esi
 00497EA5    pop         ebx
 00497EA6    ret
end;*}

//00497EA8
procedure TWriter.WriteBinary(WriteData:TStreamProc);
begin
{*
 00497EA8    push        ebp
 00497EA9    mov         ebp,esp
 00497EAB    add         esp,0FFFFFFF8
 00497EAE    push        ebx
 00497EAF    mov         ebx,eax
 00497EB1    mov         dl,1
 00497EB3    mov         eax,[00472CE4];TMemoryStream
 00497EB8    call        TObject.Create
 00497EBD    mov         dword ptr [ebp-4],eax
 00497EC0    xor         eax,eax
 00497EC2    push        ebp
 00497EC3    push        497F1F
 00497EC8    push        dword ptr fs:[eax]
 00497ECB    mov         dword ptr fs:[eax],esp
 00497ECE    mov         edx,dword ptr [ebp-4]
 00497ED1    mov         eax,dword ptr [ebp+0C]
 00497ED4    call        dword ptr [ebp+8]
 00497ED7    mov         dl,0A
 00497ED9    mov         eax,ebx
 00497EDB    call        TWriter.WriteValue
 00497EE0    mov         eax,dword ptr [ebp-4]
 00497EE3    mov         edx,dword ptr [eax]
 00497EE5    call        dword ptr [edx]
 00497EE7    mov         dword ptr [ebp-8],eax
 00497EEA    lea         edx,[ebp-8]
 00497EED    mov         ecx,4
 00497EF2    mov         eax,ebx
 00497EF4    call        TWriter.Write
 00497EF9    mov         eax,dword ptr [ebp-4]
 00497EFC    mov         edx,dword ptr [eax+4]
 00497EFF    mov         ecx,dword ptr [ebp-8]
 00497F02    mov         eax,ebx
 00497F04    call        TWriter.Write
 00497F09    xor         eax,eax
 00497F0B    pop         edx
 00497F0C    pop         ecx
 00497F0D    pop         ecx
 00497F0E    mov         dword ptr fs:[eax],edx
 00497F11    push        497F26
 00497F16    mov         eax,dword ptr [ebp-4]
 00497F19    call        TObject.Free
 00497F1E    ret
>00497F1F    jmp         @HandleFinally
>00497F24    jmp         00497F16
 00497F26    pop         ebx
 00497F27    pop         ecx
 00497F28    pop         ecx
 00497F29    pop         ebp
 00497F2A    ret         8
*}
end;

//00497F30
procedure TWriter.WriteBuffer;
begin
{*
 00497F30    push        ebx
 00497F31    mov         ebx,eax
 00497F33    mov         ecx,dword ptr [ebx+10]
 00497F36    mov         edx,dword ptr [ebx+8]
 00497F39    mov         eax,dword ptr [ebx+4]
 00497F3C    call        TStream.WriteBuffer
 00497F41    xor         eax,eax
 00497F43    mov         dword ptr [ebx+10],eax
 00497F46    pop         ebx
 00497F47    ret
*}
end;

//00497F48
procedure TWriter.Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);
begin
{*
 00497F48    push        ebp
 00497F49    mov         ebp,esp
 00497F4B    add         esp,0FFFFFFD0
 00497F4E    push        ebx
 00497F4F    push        esi
 00497F50    push        edi
 00497F51    mov         esi,ecx
 00497F53    mov         dword ptr [ebp-4],edx
 00497F56    mov         ebx,eax
 00497F58    mov         edi,dword ptr [ebp+8]
 00497F5B    mov         eax,dword ptr [ebp-4]
 00497F5E    call        @DynArrayAddRef
 00497F63    xor         eax,eax
 00497F65    push        ebp
 00497F66    push        4980D3
 00497F6B    push        dword ptr fs:[eax]
 00497F6E    mov         dword ptr fs:[eax],esp
 00497F71    mov         dword ptr [ebp-8],esi
 00497F74    mov         eax,dword ptr [ebp-4]
 00497F77    test        eax,eax
>00497F79    je          00497F80
 00497F7B    sub         eax,4
 00497F7E    mov         eax,dword ptr [eax]
 00497F80    lea         edx,[edi+esi]
 00497F83    dec         eax
 00497F84    inc         eax
 00497F85    cmp         edx,eax
>00497F87    jle         00497FA4
 00497F89    mov         eax,dword ptr [ebp-4]
 00497F8C    test        eax,eax
>00497F8E    je          00497F95
 00497F90    sub         eax,4
 00497F93    mov         eax,dword ptr [eax]
 00497F95    dec         eax
 00497F96    sub         eax,esi
 00497F98    inc         eax
 00497F99    mov         esi,eax
 00497F9B    sub         edi,esi
 00497F9D    mov         dword ptr [ebp-0C],edi
 00497FA0    mov         edi,esi
>00497FA2    jmp         00497FA9
 00497FA4    xor         eax,eax
 00497FA6    mov         dword ptr [ebp-0C],eax
 00497FA9    test        edi,edi
>00497FAB    jle         00498025
 00497FAD    mov         eax,dword ptr [ebx+8];TWriter.FBuffer:TArray<System.Byte>
 00497FB0    mov         dword ptr [ebp-14],eax
 00497FB3    mov         eax,dword ptr [ebp-14]
 00497FB6    mov         dword ptr [ebp-18],eax
 00497FB9    cmp         dword ptr [ebp-18],0
>00497FBD    je          00497FCA
 00497FBF    mov         eax,dword ptr [ebp-18]
 00497FC2    sub         eax,4
 00497FC5    mov         eax,dword ptr [eax]
 00497FC7    mov         dword ptr [ebp-18],eax
 00497FCA    mov         esi,dword ptr [ebp-18]
 00497FCD    sub         esi,dword ptr [ebx+10]
 00497FD0    test        esi,esi
>00497FD2    jg          00497FFB
 00497FD4    mov         eax,ebx
 00497FD6    call        TWriter.WriteBuffer
 00497FDB    mov         eax,dword ptr [ebx+8];TWriter.FBuffer:TArray<System.Byte>
 00497FDE    mov         dword ptr [ebp-1C],eax
 00497FE1    mov         eax,dword ptr [ebp-1C]
 00497FE4    mov         dword ptr [ebp-20],eax
 00497FE7    cmp         dword ptr [ebp-20],0
>00497FEB    je          00497FF8
 00497FED    mov         eax,dword ptr [ebp-20]
 00497FF0    sub         eax,4
 00497FF3    mov         eax,dword ptr [eax]
 00497FF5    mov         dword ptr [ebp-20],eax
 00497FF8    mov         esi,dword ptr [ebp-20]
 00497FFB    cmp         edi,esi
>00497FFD    jge         00498001
 00497FFF    mov         esi,edi
 00498001    mov         eax,dword ptr [ebx+8];TWriter.FBuffer:TArray<System.Byte>
 00498004    mov         edx,dword ptr [ebx+10];TWriter.FBufPos:Integer
 00498007    lea         edx,[eax+edx]
 0049800A    mov         eax,dword ptr [ebp-4]
 0049800D    mov         ecx,dword ptr [ebp-8]
 00498010    add         eax,ecx
 00498012    mov         ecx,esi
 00498014    call        Move
 00498019    add         dword ptr [ebp-8],esi
 0049801C    add         dword ptr [ebx+10],esi;TWriter.FBufPos:Integer
 0049801F    sub         edi,esi
 00498021    test        edi,edi
>00498023    jg          00497FAD
 00498025    cmp         dword ptr [ebp-0C],0
>00498029    jle         004980B7
 0049802F    mov         eax,dword ptr [ebx+8];TWriter.FBuffer:TArray<System.Byte>
 00498032    mov         dword ptr [ebp-24],eax
 00498035    mov         eax,dword ptr [ebp-24]
 00498038    mov         dword ptr [ebp-28],eax
 0049803B    cmp         dword ptr [ebp-28],0
>0049803F    je          0049804C
 00498041    mov         eax,dword ptr [ebp-28]
 00498044    sub         eax,4
 00498047    mov         eax,dword ptr [eax]
 00498049    mov         dword ptr [ebp-28],eax
 0049804C    mov         esi,dword ptr [ebp-28]
 0049804F    sub         esi,dword ptr [ebx+10]
 00498052    test        esi,esi
>00498054    jg          0049807D
 00498056    mov         eax,ebx
 00498058    call        TWriter.WriteBuffer
 0049805D    mov         eax,dword ptr [ebx+8];TWriter.FBuffer:TArray<System.Byte>
 00498060    mov         dword ptr [ebp-2C],eax
 00498063    mov         eax,dword ptr [ebp-2C]
 00498066    mov         dword ptr [ebp-30],eax
 00498069    cmp         dword ptr [ebp-30],0
>0049806D    je          0049807A
 0049806F    mov         eax,dword ptr [ebp-30]
 00498072    sub         eax,4
 00498075    mov         eax,dword ptr [eax]
 00498077    mov         dword ptr [ebp-30],eax
 0049807A    mov         esi,dword ptr [ebp-30]
 0049807D    cmp         esi,dword ptr [ebp-0C]
>00498080    jle         00498085
 00498082    mov         esi,dword ptr [ebp-0C]
 00498085    mov         edi,esi
 00498087    dec         edi
 00498088    test        edi,edi
>0049808A    jl          004980A7
 0049808C    inc         edi
 0049808D    mov         dword ptr [ebp-10],0
 00498094    mov         eax,dword ptr [ebx+10];TWriter.FBufPos:Integer
 00498097    add         eax,dword ptr [ebp-10]
 0049809A    mov         edx,dword ptr [ebx+8];TWriter.FBuffer:TArray<System.Byte>
 0049809D    mov         byte ptr [edx+eax],0
 004980A1    inc         dword ptr [ebp-10]
 004980A4    dec         edi
>004980A5    jne         00498094
 004980A7    add         dword ptr [ebx+10],esi;TWriter.FBufPos:Integer
 004980AA    sub         dword ptr [ebp-0C],esi
 004980AD    cmp         dword ptr [ebp-0C],0
>004980B1    jg          0049802F
 004980B7    xor         eax,eax
 004980B9    pop         edx
 004980BA    pop         ecx
 004980BB    pop         ecx
 004980BC    mov         dword ptr fs:[eax],edx
 004980BF    push        4980DA
 004980C4    lea         eax,[ebp-4]
 004980C7    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004980CD    call        @DynArrayClear
 004980D2    ret
>004980D3    jmp         @HandleFinally
>004980D8    jmp         004980C4
 004980DA    pop         edi
 004980DB    pop         esi
 004980DC    pop         ebx
 004980DD    mov         esp,ebp
 004980DF    pop         ebp
 004980E0    ret         4
*}
end;

//004980E4
procedure TWriter.Write(Buffer:TArray<System.Byte>; Count:Integer);
begin
{*
 004980E4    push        ebp
 004980E5    mov         ebp,esp
 004980E7    push        ecx
 004980E8    push        ebx
 004980E9    push        esi
 004980EA    mov         esi,ecx
 004980EC    mov         dword ptr [ebp-4],edx
 004980EF    mov         ebx,eax
 004980F1    mov         eax,dword ptr [ebp-4]
 004980F4    call        @DynArrayAddRef
 004980F9    xor         eax,eax
 004980FB    push        ebp
 004980FC    push        498130
 00498101    push        dword ptr fs:[eax]
 00498104    mov         dword ptr fs:[eax],esp
 00498107    push        esi
 00498108    xor         ecx,ecx
 0049810A    mov         edx,dword ptr [ebp-4]
 0049810D    mov         eax,ebx
 0049810F    call        TWriter.Write
 00498114    xor         eax,eax
 00498116    pop         edx
 00498117    pop         ecx
 00498118    pop         ecx
 00498119    mov         dword ptr fs:[eax],edx
 0049811C    push        498137
 00498121    lea         eax,[ebp-4]
 00498124    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0049812A    call        @DynArrayClear
 0049812F    ret
>00498130    jmp         @HandleFinally
>00498135    jmp         00498121
 00498137    pop         esi
 00498138    pop         ebx
 00498139    pop         ecx
 0049813A    pop         ebp
 0049813B    ret
*}
end;

//0049813C
procedure TWriter.WriteBoolean(Value:Boolean);
begin
{*
 0049813C    test        dl,dl
>0049813E    je          00498148
 00498140    mov         dl,9
 00498142    call        TWriter.WriteValue
 00498147    ret
 00498148    mov         dl,8
 0049814A    call        TWriter.WriteValue
 0049814F    ret
*}
end;

//00498150
procedure TWriter.WriteChar(Value:Char);
begin
{*
 00498150    push        ebp
 00498151    mov         ebp,esp
 00498153    push        0
 00498155    push        ebx
 00498156    push        esi
 00498157    mov         esi,edx
 00498159    mov         ebx,eax
 0049815B    xor         eax,eax
 0049815D    push        ebp
 0049815E    push        498193
 00498163    push        dword ptr fs:[eax]
 00498166    mov         dword ptr fs:[eax],esp
 00498169    lea         eax,[ebp-4]
 0049816C    mov         edx,esi
 0049816E    call        @UStrFromWChar
 00498173    mov         edx,dword ptr [ebp-4]
 00498176    mov         eax,ebx
 00498178    call        TWriter.WriteString
 0049817D    xor         eax,eax
 0049817F    pop         edx
 00498180    pop         ecx
 00498181    pop         ecx
 00498182    mov         dword ptr fs:[eax],edx
 00498185    push        49819A
 0049818A    lea         eax,[ebp-4]
 0049818D    call        @UStrClr
 00498192    ret
>00498193    jmp         @HandleFinally
>00498198    jmp         0049818A
 0049819A    pop         esi
 0049819B    pop         ebx
 0049819C    pop         ecx
 0049819D    pop         ebp
 0049819E    ret
*}
end;

//004981A0
procedure TWriter.WriteCollection(Value:TCollection);
begin
{*
 004981A0    push        ebp
 004981A1    mov         ebp,esp
 004981A3    add         esp,0FFFFFFF8
 004981A6    push        ebx
 004981A7    push        esi
 004981A8    push        edi
 004981A9    mov         edi,edx
 004981AB    mov         dword ptr [ebp-4],eax
 004981AE    mov         eax,dword ptr [ebp-4]
 004981B1    mov         eax,dword ptr [eax+20]
 004981B4    mov         dword ptr [ebp-8],eax
 004981B7    mov         eax,dword ptr [ebp-4]
 004981BA    xor         edx,edx
 004981BC    mov         dword ptr [eax+20],edx
 004981BF    xor         eax,eax
 004981C1    push        ebp
 004981C2    push        49822F
 004981C7    push        dword ptr fs:[eax]
 004981CA    mov         dword ptr fs:[eax],esp
 004981CD    mov         dl,0E
 004981CF    mov         eax,dword ptr [ebp-4]
 004981D2    call        TWriter.WriteValue
 004981D7    test        edi,edi
>004981D9    je          00498210
 004981DB    mov         eax,dword ptr [edi+8]
 004981DE    mov         ebx,dword ptr [eax+8]
 004981E1    dec         ebx
 004981E2    test        ebx,ebx
>004981E4    jl          00498210
 004981E6    inc         ebx
 004981E7    xor         esi,esi
 004981E9    mov         eax,dword ptr [ebp-4]
 004981EC    call        TWriter.WriteListBegin
 004981F1    mov         edx,esi
 004981F3    mov         eax,edi
 004981F5    call        TCollection.GetItem
 004981FA    mov         edx,eax
 004981FC    mov         eax,dword ptr [ebp-4]
 004981FF    call        TWriter.WriteProperties
 00498204    mov         eax,dword ptr [ebp-4]
 00498207    call        TWriter.WriteListEnd
 0049820C    inc         esi
 0049820D    dec         ebx
>0049820E    jne         004981E9
 00498210    mov         eax,dword ptr [ebp-4]
 00498213    call        TWriter.WriteListEnd
 00498218    xor         eax,eax
 0049821A    pop         edx
 0049821B    pop         ecx
 0049821C    pop         ecx
 0049821D    mov         dword ptr fs:[eax],edx
 00498220    push        498236
 00498225    mov         eax,dword ptr [ebp-4]
 00498228    mov         edx,dword ptr [ebp-8]
 0049822B    mov         dword ptr [eax+20],edx
 0049822E    ret
>0049822F    jmp         @HandleFinally
>00498234    jmp         00498225
 00498236    pop         edi
 00498237    pop         esi
 00498238    pop         ebx
 00498239    pop         ecx
 0049823A    pop         ecx
 0049823B    pop         ebp
 0049823C    ret
*}
end;

//00498240
{*function sub_00498240(?:?; ?:?):?;
begin
 00498240    push        ebp
 00498241    mov         ebp,esp
 00498243    add         esp,0FFFFFFF4
 00498246    push        ebx
 00498247    push        esi
 00498248    push        edi
 00498249    mov         esi,eax
 0049824B    mov         eax,dword ptr [ebp+8]
 0049824E    mov         eax,dword ptr [eax-4]
 00498251    mov         eax,dword ptr [eax+30]
 00498254    mov         eax,dword ptr [eax+8]
 00498257    dec         eax
 00498258    test        eax,eax
>0049825A    jl          004982B4
 0049825C    inc         eax
 0049825D    mov         dword ptr [ebp-8],eax
 00498260    xor         edi,edi
 00498262    mov         eax,dword ptr [ebp+8]
 00498265    mov         eax,dword ptr [eax-4]
 00498268    mov         ebx,dword ptr [eax+30]
 0049826B    lea         eax,[ebx+8]
 0049826E    mov         edx,edi
 00498270    call        00434534
 00498275    mov         eax,dword ptr [ebx+20]
 00498278    mov         eax,dword ptr [eax+edi*4]
 0049827B    mov         dword ptr [ebp-4],eax
 0049827E    mov         eax,dword ptr [ebp-4]
 00498281    mov         ebx,dword ptr [eax+8]
 00498284    cmp         ebx,esi
>00498286    jne         0049828C
 00498288    mov         al,1
>0049828A    jmp         004982AA
 0049828C    test        ebx,ebx
>0049828E    je          00498294
 00498290    test        esi,esi
>00498292    jne         00498298
 00498294    xor         eax,eax
>00498296    jmp         004982AA
 00498298    mov         edx,esi
 0049829A    mov         dword ptr [ebp-0C],ebx
 0049829D    mov         eax,dword ptr [ebp-0C]
 004982A0    call        CompareText
 004982A5    test        eax,eax
 004982A7    sete        al
 004982AA    test        al,al
>004982AC    jne         004982B9
 004982AE    inc         edi
 004982AF    dec         dword ptr [ebp-8]
>004982B2    jne         00498262
 004982B4    xor         eax,eax
 004982B6    mov         dword ptr [ebp-4],eax
 004982B9    mov         eax,dword ptr [ebp-4]
 004982BC    pop         edi
 004982BD    pop         esi
 004982BE    pop         ebx
 004982BF    mov         esp,ebp
 004982C1    pop         ebp
 004982C2    ret
end;*}

//004982C4
procedure TWriter.WriteComponent(Component:TComponent);
begin
{*
 004982C4    push        ebp
 004982C5    mov         ebp,esp
 004982C7    add         esp,0FFFFFFEC
 004982CA    push        ebx
 004982CB    push        esi
 004982CC    mov         dword ptr [ebp-8],edx
 004982CF    mov         dword ptr [ebp-4],eax
 004982D2    mov         eax,dword ptr [ebp-4]
 004982D5    mov         eax,dword ptr [eax+20]
 004982D8    mov         dword ptr [ebp-0C],eax
 004982DB    mov         eax,dword ptr [ebp-4]
 004982DE    mov         eax,dword ptr [eax+28]
 004982E1    mov         dword ptr [ebp-10],eax
 004982E4    xor         eax,eax
 004982E6    push        ebp
 004982E7    push        49840B
 004982EC    push        dword ptr fs:[eax]
 004982EF    mov         dword ptr fs:[eax],esp
 004982F2    mov         eax,dword ptr [ebp-8]
 004982F5    or          word ptr [eax+1C],4
 004982FA    mov         eax,dword ptr [ebp-8]
 004982FD    call        TComponent.GetComponentCount
 00498302    mov         esi,eax
 00498304    dec         esi
 00498305    test        esi,esi
>00498307    jl          0049832F
 00498309    inc         esi
 0049830A    xor         ebx,ebx
 0049830C    mov         edx,ebx
 0049830E    mov         eax,dword ptr [ebp-8]
 00498311    call        TComponent.GetComponent
 00498316    test        byte ptr [eax+30],4
>0049831A    je          0049832B
 0049831C    mov         edx,ebx
 0049831E    mov         eax,dword ptr [ebp-8]
 00498321    call        TComponent.GetComponent
 00498326    or          word ptr [eax+1C],4
 0049832B    inc         ebx
 0049832C    dec         esi
>0049832D    jne         0049830C
 0049832F    mov         eax,dword ptr [ebp-4]
 00498332    cmp         dword ptr [eax+30],0
>00498336    je          0049834B
 00498338    push        ebp
 00498339    mov         eax,dword ptr [ebp-8]
 0049833C    mov         eax,dword ptr [eax+8]
 0049833F    call        00498240
 00498344    pop         ecx
 00498345    mov         edx,dword ptr [ebp-4]
 00498348    mov         dword ptr [edx+20],eax
 0049834B    mov         eax,dword ptr [ebp-4]
 0049834E    cmp         word ptr [eax+42],0
>00498353    je          004983A3
 00498355    mov         eax,dword ptr [ebp-4]
 00498358    mov         ebx,dword ptr [eax+20]
 0049835B    test        ebx,ebx
>0049835D    je          00498370
 0049835F    mov         eax,ebx
 00498361    mov         edx,dword ptr ds:[478C44];TComponent
 00498367    call        @IsClass
 0049836C    test        al,al
>0049836E    je          004983A3
 00498370    mov         eax,dword ptr [ebp-4]
 00498373    mov         eax,dword ptr [eax+20]
 00498376    mov         dword ptr [ebp-14],eax
 00498379    mov         eax,dword ptr [ebp-8]
 0049837C    mov         eax,dword ptr [eax+8]
 0049837F    push        eax
 00498380    lea         eax,[ebp-14]
 00498383    push        eax
 00498384    mov         eax,dword ptr [ebp-4]
 00498387    add         eax,28
 0049838A    push        eax
 0049838B    mov         ebx,dword ptr [ebp-4]
 0049838E    mov         ecx,dword ptr [ebp-8]
 00498391    mov         edx,dword ptr [ebp-4]
 00498394    mov         eax,dword ptr [ebx+44]
 00498397    call        dword ptr [ebx+40]
 0049839A    mov         eax,dword ptr [ebp-4]
 0049839D    mov         edx,dword ptr [ebp-14]
 004983A0    mov         dword ptr [eax+20],edx
 004983A3    mov         edx,dword ptr [ebp-4]
 004983A6    mov         eax,dword ptr [ebp-8]
 004983A9    mov         ecx,dword ptr [eax]
 004983AB    call        dword ptr [ecx+34]
 004983AE    mov         eax,dword ptr [ebp-8]
 004983B1    and         word ptr [eax+1C],0FFFFFFFB
 004983B6    mov         eax,dword ptr [ebp-8]
 004983B9    call        TComponent.GetComponentCount
 004983BE    mov         esi,eax
 004983C0    dec         esi
 004983C1    test        esi,esi
>004983C3    jl          004983EB
 004983C5    inc         esi
 004983C6    xor         ebx,ebx
 004983C8    mov         edx,ebx
 004983CA    mov         eax,dword ptr [ebp-8]
 004983CD    call        TComponent.GetComponent
 004983D2    test        byte ptr [eax+30],4
>004983D6    je          004983E7
 004983D8    mov         edx,ebx
 004983DA    mov         eax,dword ptr [ebp-8]
 004983DD    call        TComponent.GetComponent
 004983E2    and         word ptr [eax+1C],0FFFFFFFB
 004983E7    inc         ebx
 004983E8    dec         esi
>004983E9    jne         004983C8
 004983EB    xor         eax,eax
 004983ED    pop         edx
 004983EE    pop         ecx
 004983EF    pop         ecx
 004983F0    mov         dword ptr fs:[eax],edx
 004983F3    push        498412
 004983F8    mov         eax,dword ptr [ebp-4]
 004983FB    mov         edx,dword ptr [ebp-0C]
 004983FE    mov         dword ptr [eax+20],edx
 00498401    mov         eax,dword ptr [ebp-4]
 00498404    mov         edx,dword ptr [ebp-10]
 00498407    mov         dword ptr [eax+28],edx
 0049840A    ret
>0049840B    jmp         @HandleFinally
>00498410    jmp         004983F8
 00498412    pop         esi
 00498413    pop         ebx
 00498414    mov         esp,ebp
 00498416    pop         ebp
 00498417    ret
*}
end;

//00498418
{*procedure sub_00498418(?:?);
begin
 00498418    push        ebp
 00498419    mov         ebp,esp
 0049841B    add         esp,0FFFFFFC4
 0049841E    push        ebx
 0049841F    push        esi
 00498420    xor         ecx,ecx
 00498422    mov         dword ptr [ebp-3C],ecx
 00498425    mov         dword ptr [ebp-30],ecx
 00498428    mov         dword ptr [ebp-34],ecx
 0049842B    mov         dword ptr [ebp-38],ecx
 0049842E    mov         dword ptr [ebp-2C],ecx
 00498431    mov         dword ptr [ebp-8],edx
 00498434    mov         dword ptr [ebp-4],eax
 00498437    xor         eax,eax
 00498439    push        ebp
 0049843A    push        4987B4
 0049843F    push        dword ptr fs:[eax]
 00498442    mov         dword ptr fs:[eax],esp
 00498445    lea         edx,[ebp-2C]
 00498448    mov         eax,dword ptr [ebp-8]
 0049844B    mov         eax,dword ptr [eax]
 0049844D    call        TObject.ClassName
 00498452    mov         eax,dword ptr [ebp-2C]
 00498455    test        eax,eax
>00498457    je          0049845E
 00498459    sub         eax,4
 0049845C    mov         eax,dword ptr [eax]
 0049845E    mov         edx,dword ptr [ebp-8]
 00498461    mov         edx,dword ptr [edx+8]
 00498464    test        edx,edx
>00498466    je          0049846D
 00498468    sub         edx,4
 0049846B    mov         edx,dword ptr [edx]
 0049846D    mov         ecx,dword ptr [ebp-4]
 00498470    mov         ecx,dword ptr [ecx+0C]
 00498473    mov         ebx,dword ptr [ebp-4]
 00498476    sub         ecx,dword ptr [ebx+10]
 00498479    lea         edx,[edx+eax+9]
 0049847D    cmp         ecx,edx
>0049847F    jge         00498489
 00498481    mov         eax,dword ptr [ebp-4]
 00498484    call        TWriter.WriteBuffer
 00498489    mov         eax,dword ptr [ebp-4]
 0049848C    call        TWriter.GetPosition
 00498491    mov         dword ptr [ebp-0C],eax
 00498494    movzx       eax,byte ptr ds:[4987C4];0x0 gvar_004987C4
 0049849B    mov         byte ptr [ebp-25],al
 0049849E    mov         eax,dword ptr [ebp-8]
 004984A1    test        byte ptr [eax+1D],2
>004984A5    je          004984CE
 004984A7    mov         eax,dword ptr [ebp-4]
 004984AA    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>004984AE    je          004984C8
 004984B0    mov         eax,dword ptr [ebp-8]
 004984B3    test        byte ptr [eax+1C],20
>004984B7    je          004984C8
 004984B9    mov         eax,dword ptr [ebp-4]
 004984BC    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList<System.Classes.TComponent>
>004984C0    je          004984C8
 004984C2    or          byte ptr [ebp-25],1
>004984C6    jmp         004984DB
 004984C8    or          byte ptr [ebp-25],4
>004984CC    jmp         004984DB
 004984CE    mov         eax,dword ptr [ebp-4]
 004984D1    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>004984D5    je          004984DB
 004984D7    or          byte ptr [ebp-25],1
 004984DB    mov         eax,dword ptr [ebp-4]
 004984DE    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList<System.Classes.TComponent>
 004984E1    test        eax,eax
>004984E3    je          00498526
 004984E5    mov         edx,dword ptr [ebp-4]
 004984E8    mov         edx,dword ptr [edx+34];TWriter.FAncestorPos:Integer
 004984EB    cmp         edx,dword ptr [eax+8];TList<System.Classes.TComponent>.FCount:Integer
>004984EE    jge         00498526
 004984F0    mov         edx,dword ptr [ebp-4]
 004984F3    cmp         dword ptr [edx+20],0;TWriter.FAncestor:TPersistent
>004984F7    jne         004984FD
 004984F9    mov         al,1
>004984FB    jmp         0049851E
 004984FD    mov         ebx,eax
 004984FF    mov         eax,dword ptr [ebp-4]
 00498502    mov         esi,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00498505    lea         eax,[ebx+8];TList<System.Classes.TComponent>.FCount:Integer
 00498508    mov         edx,esi
 0049850A    call        00434534
 0049850F    mov         eax,dword ptr [ebx+20]
 00498512    mov         eax,dword ptr [eax+esi*4]
 00498515    mov         edx,dword ptr [ebp-4]
 00498518    cmp         eax,dword ptr [edx+20];TWriter.FAncestor:TPersistent
 0049851B    setne       al
 0049851E    test        al,al
>00498520    je          00498526
 00498522    or          byte ptr [ebp-25],2
 00498526    mov         eax,dword ptr [ebp-4]
 00498529    mov         ecx,dword ptr [eax+38];TWriter.FChildPos:Integer
 0049852C    movzx       edx,byte ptr [ebp-25]
 00498530    mov         eax,dword ptr [ebp-4]
 00498533    call        TWriter.WritePrefix
 00498538    mov         eax,dword ptr [ebp-4]
 0049853B    cmp         byte ptr [eax+50],0;TWriter.FUseQualifiedNames:Boolean
>0049853F    je          00498584
 00498541    mov         eax,dword ptr [ebp-8]
 00498544    mov         eax,dword ptr [eax]
 00498546    mov         ebx,eax
 00498548    lea         edx,[ebp-34]
 0049854B    mov         eax,ebx
 0049854D    call        TObject.UnitName
 00498552    push        dword ptr [ebp-34]
 00498555    push        4987D4;'.'
 0049855A    lea         edx,[ebp-38]
 0049855D    mov         eax,dword ptr [ebp-8]
 00498560    mov         eax,dword ptr [eax]
 00498562    call        TObject.ClassName
 00498567    push        dword ptr [ebp-38]
 0049856A    lea         eax,[ebp-30]
 0049856D    mov         edx,3
 00498572    call        @UStrCatN
 00498577    mov         edx,dword ptr [ebp-30]
 0049857A    mov         eax,dword ptr [ebp-4]
 0049857D    call        TWriter.WriteUTF8Str
>00498582    jmp         0049859C
 00498584    lea         edx,[ebp-3C]
 00498587    mov         eax,dword ptr [ebp-8]
 0049858A    mov         eax,dword ptr [eax]
 0049858C    call        TObject.ClassName
 00498591    mov         edx,dword ptr [ebp-3C]
 00498594    mov         eax,dword ptr [ebp-4]
 00498597    call        TWriter.WriteUTF8Str
 0049859C    mov         eax,dword ptr [ebp-8]
 0049859F    mov         edx,dword ptr [eax+8]
 004985A2    mov         eax,dword ptr [ebp-4]
 004985A5    call        TWriter.WriteUTF8Str
 004985AA    mov         eax,dword ptr [ebp-4]
 004985AD    call        TWriter.GetPosition
 004985B2    mov         dword ptr [ebp-10],eax
 004985B5    mov         eax,dword ptr [ebp-4]
 004985B8    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList<System.Classes.TComponent>
 004985BB    test        eax,eax
>004985BD    je          004985DF
 004985BF    mov         edx,dword ptr [ebp-4]
 004985C2    mov         edx,dword ptr [edx+34];TWriter.FAncestorPos:Integer
 004985C5    cmp         edx,dword ptr [eax+8];TList<System.Classes.TComponent>.FCount:Integer
>004985C8    jge         004985DF
 004985CA    mov         eax,dword ptr [ebp-4]
 004985CD    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>004985D1    je          004985D9
 004985D3    mov         eax,dword ptr [ebp-4]
 004985D6    inc         dword ptr [eax+34];TWriter.FAncestorPos:Integer
 004985D9    mov         eax,dword ptr [ebp-4]
 004985DC    inc         dword ptr [eax+38];TWriter.FChildPos:Integer
 004985DF    mov         edx,dword ptr [ebp-8]
 004985E2    mov         eax,dword ptr [ebp-4]
 004985E5    call        TWriter.WriteProperties
 004985EA    mov         eax,dword ptr [ebp-4]
 004985ED    call        TWriter.WriteListEnd
 004985F2    mov         eax,dword ptr [ebp-4]
 004985F5    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList<System.Classes.TComponent>
 004985F8    mov         dword ptr [ebp-14],eax
 004985FB    mov         eax,dword ptr [ebp-4]
 004985FE    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00498601    mov         dword ptr [ebp-18],eax
 00498604    mov         eax,dword ptr [ebp-4]
 00498607    mov         eax,dword ptr [eax+38];TWriter.FChildPos:Integer
 0049860A    mov         dword ptr [ebp-1C],eax
 0049860D    mov         eax,dword ptr [ebp-4]
 00498610    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 00498613    mov         dword ptr [ebp-20],eax
 00498616    mov         eax,dword ptr [ebp-4]
 00498619    mov         eax,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 0049861C    mov         dword ptr [ebp-24],eax
 0049861F    xor         eax,eax
 00498621    push        ebp
 00498622    push        498756
 00498627    push        dword ptr fs:[eax]
 0049862A    mov         dword ptr fs:[eax],esp
 0049862D    mov         eax,dword ptr [ebp-4]
 00498630    xor         edx,edx
 00498632    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList<System.Classes.TComponent>
 00498635    mov         eax,dword ptr [ebp-4]
 00498638    xor         edx,edx
 0049863A    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 0049863D    mov         eax,dword ptr [ebp-4]
 00498640    xor         edx,edx
 00498642    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 00498645    mov         eax,dword ptr [ebp-4]
 00498648    cmp         byte ptr [eax+24],0;TWriter.FIgnoreChildren:Boolean
>0049864C    jne         0049871B
 00498652    xor         eax,eax
 00498654    push        ebp
 00498655    push        498714
 0049865A    push        dword ptr fs:[eax]
 0049865D    mov         dword ptr fs:[eax],esp
 00498660    mov         eax,dword ptr [ebp-4]
 00498663    mov         ebx,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 00498666    test        ebx,ebx
>00498668    je          004986CE
 0049866A    mov         eax,ebx
 0049866C    mov         edx,dword ptr ds:[478C44];TComponent
 00498672    call        @IsClass
 00498677    test        al,al
>00498679    je          004986CE
 0049867B    mov         eax,dword ptr [ebp-4]
 0049867E    mov         ebx,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 00498681    mov         eax,ebx
 00498683    mov         edx,dword ptr ds:[478C44];TComponent
 00498689    call        @IsClass
 0049868E    test        al,al
>00498690    je          0049869E
 00498692    test        byte ptr [ebx+1D],2
>00498696    je          0049869E
 00498698    mov         eax,dword ptr [ebp-4]
 0049869B    mov         dword ptr [eax+28],ebx;TWriter.FRootAncestor:TComponent
 0049869E    mov         dl,1
 004986A0    mov         eax,[0047E924];TList<System.Classes.TComponent>
 004986A5    call        TList<System.Actions.TContainedAction>.Create
 004986AA    mov         edx,dword ptr [ebp-4]
 004986AD    mov         dword ptr [edx+30],eax;TWriter.FAncestorList:TList<System.Classes.TComponent>
 004986B0    mov         eax,dword ptr [ebp-4]
 004986B3    push        eax
 004986B4    push        497D3C
 004986B9    mov         eax,dword ptr [ebp-4]
 004986BC    mov         edx,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 004986BF    mov         eax,dword ptr [ebp-4]
 004986C2    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 004986C5    mov         si,0FFFD
 004986C9    call        @CallDynaInst
 004986CE    mov         eax,dword ptr [ebp-8]
 004986D1    test        byte ptr [eax+1D],2
>004986D5    je          004986E0
 004986D7    mov         eax,dword ptr [ebp-4]
 004986DA    mov         edx,dword ptr [ebp-8]
 004986DD    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 004986E0    mov         eax,dword ptr [ebp-4]
 004986E3    push        eax
 004986E4    push        4982C4;TWriter.WriteComponent
 004986E9    mov         eax,dword ptr [ebp-4]
 004986EC    mov         edx,dword ptr [eax+18];TWriter.FRoot:TComponent
 004986EF    mov         eax,dword ptr [ebp-8]
 004986F2    mov         si,0FFFD
 004986F6    call        @CallDynaInst
 004986FB    xor         eax,eax
 004986FD    pop         edx
 004986FE    pop         ecx
 004986FF    pop         ecx
 00498700    mov         dword ptr fs:[eax],edx
 00498703    push        49871B
 00498708    mov         eax,dword ptr [ebp-4]
 0049870B    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList<System.Classes.TComponent>
 0049870E    call        TObject.Free
 00498713    ret
>00498714    jmp         @HandleFinally
>00498719    jmp         00498708
 0049871B    xor         eax,eax
 0049871D    pop         edx
 0049871E    pop         ecx
 0049871F    pop         ecx
 00498720    mov         dword ptr fs:[eax],edx
 00498723    push        49875D
 00498728    mov         eax,dword ptr [ebp-4]
 0049872B    mov         edx,dword ptr [ebp-14]
 0049872E    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList<System.Classes.TComponent>
 00498731    mov         eax,dword ptr [ebp-4]
 00498734    mov         edx,dword ptr [ebp-18]
 00498737    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 0049873A    mov         eax,dword ptr [ebp-4]
 0049873D    mov         edx,dword ptr [ebp-1C]
 00498740    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 00498743    mov         eax,dword ptr [ebp-4]
 00498746    mov         edx,dword ptr [ebp-20]
 00498749    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 0049874C    mov         eax,dword ptr [ebp-4]
 0049874F    mov         edx,dword ptr [ebp-24]
 00498752    mov         dword ptr [eax+28],edx;TWriter.FRootAncestor:TComponent
 00498755    ret
>00498756    jmp         @HandleFinally
>0049875B    jmp         00498728
 0049875D    mov         eax,dword ptr [ebp-4]
 00498760    call        TWriter.WriteListEnd
 00498765    mov         eax,dword ptr [ebp-4]
 00498768    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 0049876B    cmp         eax,dword ptr [ebp-8]
>0049876E    je          00498799
 00498770    movzx       eax,byte ptr ds:[4987D8];0x1 gvar_004987D8
 00498777    cmp         al,byte ptr [ebp-25]
>0049877A    jne         00498799
 0049877C    mov         eax,dword ptr [ebp-4]
 0049877F    call        TWriter.GetPosition
 00498784    mov         edx,dword ptr [ebp-10]
 00498787    add         edx,2
 0049878A    cmp         eax,edx
>0049878C    jne         00498799
 0049878E    mov         edx,dword ptr [ebp-0C]
 00498791    mov         eax,dword ptr [ebp-4]
 00498794    call        TWriter.SetPosition
 00498799    xor         eax,eax
 0049879B    pop         edx
 0049879C    pop         ecx
 0049879D    pop         ecx
 0049879E    mov         dword ptr fs:[eax],edx
 004987A1    push        4987BB
 004987A6    lea         eax,[ebp-3C]
 004987A9    mov         edx,5
 004987AE    call        @UStrArrayClr
 004987B3    ret
>004987B4    jmp         @HandleFinally
>004987B9    jmp         004987A6
 004987BB    pop         esi
 004987BC    pop         ebx
 004987BD    mov         esp,ebp
 004987BF    pop         ebp
 004987C0    ret
end;*}

//004987DC
procedure TWriter.WriteDescendent(Root:TComponent; AAncestor:TComponent);
begin
{*
 004987DC    push        ebp
 004987DD    mov         ebp,esp
 004987DF    add         esp,0FFFFFFF8
 004987E2    push        ebx
 004987E3    push        esi
 004987E4    push        edi
 004987E5    xor         ebx,ebx
 004987E7    mov         dword ptr [ebp-8],ebx
 004987EA    mov         edi,ecx
 004987EC    mov         esi,edx
 004987EE    mov         ebx,eax
 004987F0    lea         eax,[ebp-4]
 004987F3    mov         edx,dword ptr ds:[43AC94];TRttiContext
 004987F9    call        @AddRefRecord
 004987FE    xor         eax,eax
 00498800    push        ebp
 00498801    push        49888D
 00498806    push        dword ptr fs:[eax]
 00498809    mov         dword ptr fs:[eax],esp
 0049880C    mov         dword ptr [ebx+28],edi
 0049880F    mov         dword ptr [ebx+20],edi
 00498812    mov         dword ptr [ebx+18],esi
 00498815    mov         dword ptr [ebx+1C],esi
 00498818    mov         eax,ebx
 0049881A    call        TWriter.WriteSignature
 0049881F    lea         eax,[ebp-8]
 00498822    call        TRttiContext.Create
 00498827    lea         edx,[ebp-8]
 0049882A    lea         eax,[ebp-4]
 0049882D    mov         ecx,dword ptr ds:[43AC94];TRttiContext
 00498833    call        @CopyRecord
 00498838    xor         eax,eax
 0049883A    push        ebp
 0049883B    push        498865
 00498840    push        dword ptr fs:[eax]
 00498843    mov         dword ptr fs:[eax],esp
 00498846    mov         edx,esi
 00498848    mov         eax,ebx
 0049884A    call        TWriter.WriteComponent
 0049884F    xor         eax,eax
 00498851    pop         edx
 00498852    pop         ecx
 00498853    pop         ecx
 00498854    mov         dword ptr fs:[eax],edx
 00498857    push        49886C
 0049885C    lea         eax,[ebp-4]
 0049885F    call        TRttiContext.Free
 00498864    ret
>00498865    jmp         @HandleFinally
>0049886A    jmp         0049885C
 0049886C    xor         eax,eax
 0049886E    pop         edx
 0049886F    pop         ecx
 00498870    pop         ecx
 00498871    mov         dword ptr fs:[eax],edx
 00498874    push        498894
 00498879    lea         eax,[ebp-8]
 0049887C    mov         edx,dword ptr ds:[43AC94];TRttiContext
 00498882    mov         ecx,2
 00498887    call        @FinalizeArray
 0049888C    ret
>0049888D    jmp         @HandleFinally
>00498892    jmp         00498879
 00498894    pop         edi
 00498895    pop         esi
 00498896    pop         ebx
 00498897    pop         ecx
 00498898    pop         ecx
 00498899    pop         ebp
 0049889A    ret
*}
end;

//0049889C
procedure TWriter.WriteFloat(Value:Extended);
begin
{*
 0049889C    push        ebp
 0049889D    mov         ebp,esp
 0049889F    push        ebx
 004988A0    mov         ebx,eax
 004988A2    mov         dl,5
 004988A4    mov         eax,ebx
 004988A6    call        TWriter.WriteValue
 004988AB    lea         edx,[ebp+8]
 004988AE    mov         ecx,0A
 004988B3    mov         eax,ebx
 004988B5    call        TWriter.Write
 004988BA    pop         ebx
 004988BB    pop         ebp
 004988BC    ret         0C
*}
end;

//004988C0
procedure TWriter.WriteSingle(Value:Single);
begin
{*
 004988C0    push        ebp
 004988C1    mov         ebp,esp
 004988C3    push        ebx
 004988C4    mov         ebx,eax
 004988C6    mov         dl,0F
 004988C8    mov         eax,ebx
 004988CA    call        TWriter.WriteValue
 004988CF    lea         edx,[ebp+8]
 004988D2    mov         ecx,4
 004988D7    mov         eax,ebx
 004988D9    call        TWriter.Write
 004988DE    pop         ebx
 004988DF    pop         ebp
 004988E0    ret         4
*}
end;

//004988E4
procedure TWriter.WriteCurrency(Value:Currency);
begin
{*
 004988E4    push        ebp
 004988E5    mov         ebp,esp
 004988E7    add         esp,0FFFFFFF8
 004988EA    push        ebx
 004988EB    mov         ebx,eax
 004988ED    lea         eax,[ebp+8]
 004988F0    mov         edx,dword ptr [eax]
 004988F2    mov         dword ptr [ebp-8],edx
 004988F5    mov         edx,dword ptr [eax+4]
 004988F8    mov         dword ptr [ebp-4],edx
 004988FB    mov         dl,10
 004988FD    mov         eax,ebx
 004988FF    call        TWriter.WriteValue
 00498904    lea         edx,[ebp-8]
 00498907    mov         ecx,8
 0049890C    mov         eax,ebx
 0049890E    call        TWriter.Write
 00498913    pop         ebx
 00498914    pop         ecx
 00498915    pop         ecx
 00498916    pop         ebp
 00498917    ret         8
*}
end;

//0049891C
procedure TWriter.WriteDate(Value:TDateTime);
begin
{*
 0049891C    push        ebp
 0049891D    mov         ebp,esp
 0049891F    add         esp,0FFFFFFF8
 00498922    push        ebx
 00498923    mov         ebx,eax
 00498925    mov         eax,dword ptr [ebp+8]
 00498928    mov         dword ptr [ebp-8],eax
 0049892B    mov         eax,dword ptr [ebp+0C]
 0049892E    mov         dword ptr [ebp-4],eax
 00498931    mov         dl,11
 00498933    mov         eax,ebx
 00498935    call        TWriter.WriteValue
 0049893A    lea         edx,[ebp-8]
 0049893D    mov         ecx,8
 00498942    mov         eax,ebx
 00498944    call        TWriter.Write
 00498949    pop         ebx
 0049894A    pop         ecx
 0049894B    pop         ecx
 0049894C    pop         ebp
 0049894D    ret         8
*}
end;

//00498950
procedure TWriter.WriteIdent(Ident:string);
begin
{*
 00498950    push        ebx
 00498951    push        esi
 00498952    mov         ebx,edx
 00498954    mov         esi,eax
 00498956    cmp         ebx,498A70;'False'
>0049895C    jne         00498962
 0049895E    mov         al,1
>00498960    jmp         00498984
 00498962    test        ebx,ebx
>00498964    je          0049896F
 00498966    mov         eax,498A70;'False'
 0049896B    test        eax,eax
>0049896D    jne         00498973
 0049896F    xor         eax,eax
>00498971    jmp         00498984
 00498973    mov         edx,498A70;'False'
 00498978    mov         eax,ebx
 0049897A    call        CompareText
 0049897F    test        eax,eax
 00498981    sete        al
 00498984    test        al,al
>00498986    je          00498994
 00498988    mov         dl,8
 0049898A    mov         eax,esi
 0049898C    call        TWriter.WriteValue
 00498991    pop         esi
 00498992    pop         ebx
 00498993    ret
 00498994    cmp         ebx,498A88;'True'
>0049899A    jne         004989A0
 0049899C    mov         al,1
>0049899E    jmp         004989C2
 004989A0    test        ebx,ebx
>004989A2    je          004989AD
 004989A4    mov         eax,498A88;'True'
 004989A9    test        eax,eax
>004989AB    jne         004989B1
 004989AD    xor         eax,eax
>004989AF    jmp         004989C2
 004989B1    mov         edx,498A88;'True'
 004989B6    mov         eax,ebx
 004989B8    call        CompareText
 004989BD    test        eax,eax
 004989BF    sete        al
 004989C2    test        al,al
>004989C4    je          004989D4
 004989C6    mov         dl,9
 004989C8    mov         eax,esi
 004989CA    call        TWriter.WriteValue
>004989CF    jmp         00498A60
 004989D4    cmp         ebx,498AA0;'Null'
>004989DA    jne         004989E0
 004989DC    mov         al,1
>004989DE    jmp         00498A02
 004989E0    test        ebx,ebx
>004989E2    je          004989ED
 004989E4    mov         eax,498AA0;'Null'
 004989E9    test        eax,eax
>004989EB    jne         004989F1
 004989ED    xor         eax,eax
>004989EF    jmp         00498A02
 004989F1    mov         edx,498AA0;'Null'
 004989F6    mov         eax,ebx
 004989F8    call        CompareText
 004989FD    test        eax,eax
 004989FF    sete        al
 00498A02    test        al,al
>00498A04    je          00498A11
 00498A06    xor         edx,edx
 00498A08    mov         eax,esi
 00498A0A    call        TWriter.WriteValue
>00498A0F    jmp         00498A60
 00498A11    cmp         ebx,498AB8;'nil'
>00498A17    jne         00498A1D
 00498A19    mov         al,1
>00498A1B    jmp         00498A3F
 00498A1D    test        ebx,ebx
>00498A1F    je          00498A2A
 00498A21    mov         eax,498AB8;'nil'
 00498A26    test        eax,eax
>00498A28    jne         00498A2E
 00498A2A    xor         eax,eax
>00498A2C    jmp         00498A3F
 00498A2E    mov         edx,498AB8;'nil'
 00498A33    mov         eax,ebx
 00498A35    call        CompareText
 00498A3A    test        eax,eax
 00498A3C    sete        al
 00498A3F    test        al,al
>00498A41    je          00498A4E
 00498A43    mov         dl,0D
 00498A45    mov         eax,esi
 00498A47    call        TWriter.WriteValue
>00498A4C    jmp         00498A60
 00498A4E    mov         dl,7
 00498A50    mov         eax,esi
 00498A52    call        TWriter.WriteValue
 00498A57    mov         edx,ebx
 00498A59    mov         eax,esi
 00498A5B    call        TWriter.WriteUTF8Str
 00498A60    pop         esi
 00498A61    pop         ebx
 00498A62    ret
*}
end;

//00498AC0
procedure TWriter.WriteInteger(Value:Integer);
begin
{*
 00498AC0    push        ebx
 00498AC1    push        ecx
 00498AC2    mov         dword ptr [esp],edx
 00498AC5    mov         ebx,eax
 00498AC7    cmp         dword ptr [esp],0FFFFFF80
>00498ACB    jl          00498AED
 00498ACD    cmp         dword ptr [esp],7F
>00498AD1    jg          00498AED
 00498AD3    mov         dl,2
 00498AD5    mov         eax,ebx
 00498AD7    call        TWriter.WriteValue
 00498ADC    mov         edx,esp
 00498ADE    mov         ecx,1
 00498AE3    mov         eax,ebx
 00498AE5    call        TWriter.Write
 00498AEA    pop         edx
 00498AEB    pop         ebx
 00498AEC    ret
 00498AED    cmp         dword ptr [esp],0FFFF8000
>00498AF4    jl          00498B18
 00498AF6    cmp         dword ptr [esp],7FFF
>00498AFD    jg          00498B18
 00498AFF    mov         dl,3
 00498B01    mov         eax,ebx
 00498B03    call        TWriter.WriteValue
 00498B08    mov         edx,esp
 00498B0A    mov         ecx,2
 00498B0F    mov         eax,ebx
 00498B11    call        TWriter.Write
>00498B16    jmp         00498B2F
 00498B18    mov         dl,4
 00498B1A    mov         eax,ebx
 00498B1C    call        TWriter.WriteValue
 00498B21    mov         edx,esp
 00498B23    mov         ecx,4
 00498B28    mov         eax,ebx
 00498B2A    call        TWriter.Write
 00498B2F    pop         edx
 00498B30    pop         ebx
 00498B31    ret
*}
end;

//00498B34
procedure TWriter.WriteInteger(Value:Int64);
begin
{*
 00498B34    push        ebp
 00498B35    mov         ebp,esp
 00498B37    push        ebx
 00498B38    mov         ebx,eax
 00498B3A    cmp         dword ptr [ebp+0C],0FFFFFFFF
>00498B3E    jne         00498B4B
 00498B40    cmp         dword ptr [ebp+8],80000000
>00498B47    jb          00498B6E
>00498B49    jmp         00498B4D
>00498B4B    jl          00498B6E
 00498B4D    cmp         dword ptr [ebp+0C],0
>00498B51    jne         00498B5E
 00498B53    cmp         dword ptr [ebp+8],7FFFFFFF
>00498B5A    ja          00498B6E
>00498B5C    jmp         00498B60
>00498B5E    jg          00498B6E
 00498B60    mov         eax,dword ptr [ebp+8]
 00498B63    mov         edx,eax
 00498B65    mov         eax,ebx
 00498B67    call        TWriter.WriteInteger
>00498B6C    jmp         00498B86
 00498B6E    mov         dl,13
 00498B70    mov         eax,ebx
 00498B72    call        TWriter.WriteValue
 00498B77    lea         edx,[ebp+8]
 00498B7A    mov         ecx,8
 00498B7F    mov         eax,ebx
 00498B81    call        TWriter.Write
 00498B86    pop         ebx
 00498B87    pop         ebp
 00498B88    ret         8
*}
end;

//00498B8C
procedure TWriter.WriteListBegin;
begin
{*
 00498B8C    mov         dl,1
 00498B8E    call        TWriter.WriteValue
 00498B93    ret
*}
end;

//00498B94
procedure TWriter.WriteListEnd;
begin
{*
 00498B94    xor         edx,edx
 00498B96    call        TWriter.WriteValue
 00498B9B    ret
*}
end;

//00498B9C
procedure TWriter.WritePrefix(Flags:TFilerFlags; AChildPos:Integer);
begin
{*
 00498B9C    push        ebx
 00498B9D    push        esi
 00498B9E    push        ecx
 00498B9F    mov         esi,ecx
 00498BA1    mov         byte ptr [esp],dl
 00498BA4    mov         ebx,eax
 00498BA6    movzx       eax,byte ptr ds:[498BE0]
 00498BAD    cmp         al,byte ptr [esp]
>00498BB0    je          00498BDB
 00498BB2    movzx       eax,byte ptr [esp]
 00498BB6    or          al,0F0
 00498BB8    mov         byte ptr [esp+1],al
 00498BBC    lea         edx,[esp+1]
 00498BC0    mov         ecx,1
 00498BC5    mov         eax,ebx
 00498BC7    call        TWriter.Write
 00498BCC    test        byte ptr [esp],2
>00498BD0    je          00498BDB
 00498BD2    mov         edx,esi
 00498BD4    mov         eax,ebx
 00498BD6    call        TWriter.WriteInteger
 00498BDB    pop         edx
 00498BDC    pop         esi
 00498BDD    pop         ebx
 00498BDE    ret
*}
end;

//00498BE4
procedure TWriter.WriteProperties(Instance:TPersistent);
begin
{*
 00498BE4    push        ebp
 00498BE5    mov         ebp,esp
 00498BE7    add         esp,0FFFFFFF0
 00498BEA    push        ebx
 00498BEB    push        esi
 00498BEC    push        edi
 00498BED    mov         dword ptr [ebp-8],edx
 00498BF0    mov         dword ptr [ebp-4],eax
 00498BF3    mov         eax,dword ptr [ebp-8]
 00498BF6    mov         ebx,dword ptr [eax]
 00498BF8    add         ebx,0FFFFFFB8
 00498BFB    mov         eax,dword ptr [ebx]
 00498BFD    call        GetTypeData
 00498C02    movsx       eax,word ptr [eax+8]
 00498C06    mov         dword ptr [ebp-0C],eax
 00498C09    cmp         dword ptr [ebp-0C],0
>00498C0D    jle         00498C9A
 00498C13    mov         eax,dword ptr [ebp-0C]
 00498C16    add         eax,eax
 00498C18    add         eax,eax
 00498C1A    call        @GetMem
 00498C1F    mov         dword ptr [ebp-10],eax
 00498C22    xor         edx,edx
 00498C24    push        ebp
 00498C25    push        498C93
 00498C2A    push        dword ptr fs:[edx]
 00498C2D    mov         dword ptr fs:[edx],esp
 00498C30    mov         eax,dword ptr [ebp-8]
 00498C33    mov         eax,dword ptr [eax]
 00498C35    add         eax,0FFFFFFB8
 00498C38    mov         eax,dword ptr [eax]
 00498C3A    mov         edx,dword ptr [ebp-10]
 00498C3D    call        GetPropInfos
 00498C42    mov         esi,dword ptr [ebp-0C]
 00498C45    dec         esi
 00498C46    test        esi,esi
>00498C48    jl          00498C76
 00498C4A    inc         esi
 00498C4B    xor         edi,edi
 00498C4D    mov         eax,dword ptr [ebp-10]
 00498C50    mov         ebx,dword ptr [eax+edi*4]
 00498C53    test        ebx,ebx
>00498C55    je          00498C76
 00498C57    mov         edx,ebx
 00498C59    mov         eax,dword ptr [ebp-8]
 00498C5C    call        IsStoredProp
 00498C61    test        al,al
>00498C63    je          00498C72
 00498C65    mov         ecx,ebx
 00498C67    mov         edx,dword ptr [ebp-8]
 00498C6A    mov         eax,dword ptr [ebp-4]
 00498C6D    call        0049A370
 00498C72    inc         edi
 00498C73    dec         esi
>00498C74    jne         00498C4D
 00498C76    xor         eax,eax
 00498C78    pop         edx
 00498C79    pop         ecx
 00498C7A    pop         ecx
 00498C7B    mov         dword ptr fs:[eax],edx
 00498C7E    push        498C9A
 00498C83    mov         edx,dword ptr [ebp-0C]
 00498C86    add         edx,edx
 00498C88    add         edx,edx
 00498C8A    mov         eax,dword ptr [ebp-10]
 00498C8D    call        @FreeMem
 00498C92    ret
>00498C93    jmp         @HandleFinally
>00498C98    jmp         00498C83
 00498C9A    mov         edx,dword ptr [ebp-4]
 00498C9D    mov         eax,dword ptr [ebp-8]
 00498CA0    mov         ecx,dword ptr [eax]
 00498CA2    call        dword ptr [ecx+4]
 00498CA5    pop         edi
 00498CA6    pop         esi
 00498CA7    pop         ebx
 00498CA8    mov         esp,ebp
 00498CAA    pop         ebp
 00498CAB    ret
*}
end;

//00498CAC
function AncestorIsValid(const Ancestor:TPersistent; const Root:TComponent; const RootAncestor:TComponent):Boolean;
begin
{*
 00498CAC    test        eax,eax
>00498CAE    je          00498CC1
 00498CB0    test        ecx,ecx
>00498CB2    je          00498CC1
 00498CB4    mov         ecx,dword ptr [ecx]
 00498CB6    mov         eax,ecx
 00498CB8    mov         edx,dword ptr [edx]
 00498CBA    xchg        eax,edx
 00498CBB    call        TObject.InheritsFrom
 00498CC0    ret
 00498CC1    xor         eax,eax
 00498CC3    ret
*}
end;

//00498CC4
{*function sub_00498CC4(?:?; ?:?):?;
begin
 00498CC4    push        ebx
 00498CC5    push        esi
 00498CC6    push        edi
 00498CC7    push        ebp
 00498CC8    add         esp,0FFFFFFC4
 00498CCB    mov         dword ptr [esp],edx
 00498CCE    mov         eax,dword ptr [eax]
 00498CD0    add         eax,0FFFFFFB8
 00498CD3    mov         eax,dword ptr [eax]
 00498CD5    mov         dword ptr [esp+8],eax
 00498CD9    cmp         dword ptr [esp+8],0
>00498CDE    je          00498DE6
 00498CE4    mov         eax,dword ptr [esp+8]
 00498CE8    mov         dword ptr [esp+10],eax
 00498CEC    mov         eax,dword ptr [esp+10]
 00498CF0    inc         eax
 00498CF1    mov         dword ptr [esp+1C],eax
 00498CF5    mov         eax,dword ptr [esp+1C]
 00498CF9    mov         dword ptr [esp+18],eax
 00498CFD    mov         eax,dword ptr [esp+18]
 00498D01    mov         dword ptr [esp+14],eax
 00498D05    mov         eax,dword ptr [esp+14]
 00498D09    movzx       eax,byte ptr [eax]
 00498D0C    add         eax,dword ptr [esp+14]
 00498D10    inc         eax
 00498D11    mov         dword ptr [esp+0C],eax
 00498D15    mov         eax,dword ptr [esp+0C]
 00498D19    mov         dword ptr [esp+20],eax
 00498D1D    mov         eax,dword ptr [esp+20]
 00498D21    add         eax,0A
 00498D24    mov         dword ptr [esp+2C],eax
 00498D28    mov         eax,dword ptr [esp+2C]
 00498D2C    mov         dword ptr [esp+28],eax
 00498D30    mov         eax,dword ptr [esp+28]
 00498D34    mov         dword ptr [esp+24],eax
 00498D38    mov         eax,dword ptr [esp+24]
 00498D3C    movzx       ebx,byte ptr [eax]
 00498D3F    add         ebx,dword ptr [esp+24]
 00498D43    inc         ebx
 00498D44    movzx       esi,word ptr [ebx]
 00498D47    add         ebx,2
 00498D4A    test        si,si
>00498D4D    jbe         00498D7A
 00498D4F    mov         ebp,ebx
 00498D51    lea         eax,[ebp+1A]
 00498D54    mov         dword ptr [esp+38],eax
 00498D58    mov         eax,dword ptr [esp+38]
 00498D5C    mov         dword ptr [esp+34],eax
 00498D60    mov         eax,dword ptr [esp+34]
 00498D64    mov         dword ptr [esp+30],eax
 00498D68    mov         eax,dword ptr [esp+30]
 00498D6C    movzx       ebx,byte ptr [eax]
 00498D6F    add         ebx,dword ptr [esp+30]
 00498D73    inc         ebx
 00498D74    dec         esi
 00498D75    test        si,si
>00498D78    ja          00498D4F
 00498D7A    movzx       esi,word ptr [ebx]
 00498D7D    add         ebx,2
 00498D80    test        si,si
>00498D83    jbe         00498DC4
 00498D85    mov         eax,dword ptr [ebx+1]
 00498D88    add         eax,1A
 00498D8B    mov         edx,dword ptr [esp]
 00498D8E    add         edx,1A
 00498D91    movzx       ecx,byte ptr [eax]
 00498D94    inc         ecx
 00498D95    call        @AStrCmp
>00498D9A    jne         00498DB1
 00498D9C    lea         eax,[ebx+5]
 00498D9F    mov         ebx,eax
 00498DA1    movzx       edi,word ptr [ebx]
 00498DA4    cmp         di,2
>00498DA8    je          00498DB9
 00498DAA    mov         byte ptr [esp+4],1
>00498DAF    jmp         00498DEB
 00498DB1    lea         eax,[ebx+5]
 00498DB4    mov         ebx,eax
 00498DB6    movzx       edi,word ptr [ebx]
 00498DB9    movzx       eax,di
 00498DBC    add         ebx,eax
 00498DBE    dec         esi
 00498DBF    test        si,si
>00498DC2    ja          00498D85
 00498DC4    mov         eax,dword ptr [esp+0C]
 00498DC8    cmp         dword ptr [eax+4],0
>00498DCC    je          00498DE6
 00498DCE    mov         eax,dword ptr [esp+0C]
 00498DD2    mov         eax,dword ptr [eax+4]
 00498DD5    mov         eax,dword ptr [eax]
 00498DD7    mov         dword ptr [esp+8],eax
 00498DDB    cmp         dword ptr [esp+8],0
>00498DE0    jne         00498CE4
 00498DE6    mov         byte ptr [esp+4],0
 00498DEB    movzx       eax,byte ptr [esp+4]
 00498DF0    add         esp,3C
 00498DF3    pop         ebp
 00498DF4    pop         edi
 00498DF5    pop         esi
 00498DF6    pop         ebx
 00498DF7    ret
end;*}

//00498DF8
{*function sub_00498DF8(?:?; ?:?):?;
begin
 00498DF8    push        ebp
 00498DF9    mov         ebp,esp
 00498DFB    add         esp,0FFFFFFF8
 00498DFE    push        ebx
 00498DFF    push        esi
 00498E00    push        edi
 00498E01    xor         edx,edx
 00498E03    mov         dword ptr [ebp-4],edx
 00498E06    mov         edi,eax
 00498E08    xor         eax,eax
 00498E0A    push        ebp
 00498E0B    push        498E99
 00498E10    push        dword ptr fs:[eax]
 00498E13    mov         dword ptr fs:[eax],esp
>00498E16    jmp         00498E73
 00498E18    lea         edx,[ebp-4]
 00498E1B    mov         eax,dword ptr [edi]
 00498E1D    mov         ecx,dword ptr [eax]
 00498E1F    call        dword ptr [ecx+48]
 00498E22    xor         ebx,ebx
>00498E24    jmp         00498E50
 00498E26    mov         eax,dword ptr [ebp-4]
 00498E29    mov         esi,dword ptr [eax+ebx*4]
 00498E2C    mov         eax,esi
 00498E2E    mov         edx,dword ptr [eax]
 00498E30    call        dword ptr [edx+30]
 00498E33    add         eax,1A
 00498E36    mov         edx,dword ptr [ebp+8]
 00498E39    mov         edx,dword ptr [edx-4]
 00498E3C    add         edx,1A
 00498E3F    movzx       ecx,byte ptr [eax]
 00498E42    inc         ecx
 00498E43    call        @AStrCmp
>00498E48    jne         00498E4F
 00498E4A    mov         dword ptr [ebp-8],esi
>00498E4D    jmp         00498E7D
 00498E4F    inc         ebx
 00498E50    mov         eax,dword ptr [ebp-4]
 00498E53    call        0040ABA8
 00498E58    cmp         ebx,eax
>00498E5A    jl          00498E26
 00498E5C    lea         eax,[ebp-4]
 00498E5F    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00498E65    call        @DynArrayClear
 00498E6A    mov         eax,dword ptr [edi]
 00498E6C    mov         edx,dword ptr [eax]
 00498E6E    call        dword ptr [edx+1C]
 00498E71    mov         dword ptr [edi],eax
 00498E73    cmp         dword ptr [edi],0
>00498E76    jne         00498E18
 00498E78    xor         eax,eax
 00498E7A    mov         dword ptr [ebp-8],eax
 00498E7D    xor         eax,eax
 00498E7F    pop         edx
 00498E80    pop         ecx
 00498E81    pop         ecx
 00498E82    mov         dword ptr fs:[eax],edx
 00498E85    push        498EA0
 00498E8A    lea         eax,[ebp-4]
 00498E8D    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00498E93    call        @DynArrayClear
 00498E98    ret
>00498E99    jmp         @HandleFinally
>00498E9E    jmp         00498E8A
 00498EA0    mov         eax,dword ptr [ebp-8]
 00498EA3    pop         edi
 00498EA4    pop         esi
 00498EA5    pop         ebx
 00498EA6    pop         ecx
 00498EA7    pop         ecx
 00498EA8    pop         ebp
 00498EA9    ret
end;*}

//00498EAC
function GetDefaultAttribute(var Default:Variant):Boolean;
begin
{*
 00498EAC    push        ebp
 00498EAD    mov         ebp,esp
 00498EAF    mov         ecx,5
 00498EB4    push        0
 00498EB6    push        0
 00498EB8    dec         ecx
>00498EB9    jne         00498EB4
 00498EBB    push        ebx
 00498EBC    push        esi
 00498EBD    push        edi
 00498EBE    mov         dword ptr [ebp-0C],eax
 00498EC1    mov         eax,dword ptr [ebp-0C]
 00498EC4    mov         edx,dword ptr [ebp-0C]
 00498EC7    test        edx,edx
>00498EC9    je          00498ED8
 00498ECB    xor         ecx,ecx
 00498ECD    mov         dword ptr [edx+0C],ecx
 00498ED0    mov         dword ptr [edx+8],ecx
 00498ED3    mov         dword ptr [edx+4],ecx
 00498ED6    mov         dword ptr [edx],ecx
 00498ED8    lea         eax,[ebp-4]
 00498EDB    mov         edx,dword ptr ds:[43AC94];TRttiContext
 00498EE1    call        @AddRefRecord
 00498EE6    xor         eax,eax
 00498EE8    push        ebp
 00498EE9    push        49904A
 00498EEE    push        dword ptr fs:[eax]
 00498EF1    mov         dword ptr fs:[eax],esp
 00498EF4    mov         byte ptr [ebp-0D],0
 00498EF8    lea         eax,[ebp-24]
 00498EFB    call        Null
 00498F00    lea         edx,[ebp-24]
 00498F03    mov         eax,dword ptr [ebp-0C]
 00498F06    call        @VarCopy
 00498F0B    mov         eax,dword ptr [ebp+8]
 00498F0E    mov         edx,dword ptr [eax-4]
 00498F11    mov         eax,dword ptr [ebp+8]
 00498F14    mov         eax,dword ptr [eax-8]
 00498F17    call        00498CC4
 00498F1C    test        al,al
>00498F1E    je          0049900A
 00498F24    lea         eax,[ebp-28]
 00498F27    call        TRttiContext.Create
 00498F2C    lea         edx,[ebp-28]
 00498F2F    lea         eax,[ebp-4]
 00498F32    mov         ecx,dword ptr ds:[43AC94];TRttiContext
 00498F38    call        @CopyRecord
 00498F3D    xor         eax,eax
 00498F3F    push        ebp
 00498F40    push        499003
 00498F45    push        dword ptr fs:[eax]
 00498F48    mov         dword ptr fs:[eax],esp
 00498F4B    mov         eax,dword ptr [ebp+8]
 00498F4E    mov         eax,dword ptr [eax-8]
 00498F51    mov         ebx,dword ptr [eax]
 00498F53    add         ebx,0FFFFFFB8
 00498F56    mov         edx,dword ptr [ebx]
 00498F58    lea         eax,[ebp-4]
 00498F5B    call        TRttiContext.GetType
 00498F60    mov         dword ptr [ebp-14],eax
 00498F63    cmp         dword ptr [ebp-14],0
>00498F67    je          00498FED
 00498F6D    mov         eax,dword ptr [ebp+8]
 00498F70    push        eax
 00498F71    lea         eax,[ebp-14]
 00498F74    call        00498DF8
 00498F79    pop         ecx
 00498F7A    mov         edi,eax
 00498F7C    test        edi,edi
>00498F7E    je          00498FD6
 00498F80    lea         edx,[ebp-8]
 00498F83    mov         eax,edi
 00498F85    mov         ecx,dword ptr [eax]
 00498F87    call        dword ptr [ecx+4]
 00498F8A    xor         ebx,ebx
>00498F8C    jmp         00498FBC
 00498F8E    mov         eax,dword ptr [ebp-8]
 00498F91    mov         esi,dword ptr [eax+ebx*4]
 00498F94    mov         eax,esi
 00498F96    mov         edx,dword ptr ds:[79EC18];TComparer<FXLicenseManagerFrm.TLicFile>.Compare:Integer
 00498F9C    call        @IsClass
 00498FA1    test        al,al
>00498FA3    je          00498FBB
 00498FA5    mov         byte ptr [ebp-0D],1
 00498FA9    mov         eax,dword ptr [ebp-0C]
 00498FAC    lea         edx,[esi+8]
 00498FAF    call        @VarCopy
 00498FB4    call        @TryFinallyExit
>00498FB9    jmp         0049900A
 00498FBB    inc         ebx
 00498FBC    mov         eax,dword ptr [ebp-8]
 00498FBF    call        0040ABA8
 00498FC4    cmp         ebx,eax
>00498FC6    jl          00498F8E
 00498FC8    lea         eax,[ebp-8]
 00498FCB    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00498FD1    call        @DynArrayClear
 00498FD6    cmp         dword ptr [ebp-14],0
>00498FDA    je          00498FE7
 00498FDC    mov         eax,dword ptr [ebp-14]
 00498FDF    mov         edx,dword ptr [eax]
 00498FE1    call        dword ptr [edx+1C]
 00498FE4    mov         dword ptr [ebp-14],eax
 00498FE7    cmp         dword ptr [ebp-14],0
>00498FEB    jne         00498F6D
 00498FED    xor         eax,eax
 00498FEF    pop         edx
 00498FF0    pop         ecx
 00498FF1    pop         ecx
 00498FF2    mov         dword ptr fs:[eax],edx
 00498FF5    push        49900A
 00498FFA    lea         eax,[ebp-4]
 00498FFD    call        TRttiContext.Free
 00499002    ret
>00499003    jmp         @HandleFinally
>00499008    jmp         00498FFA
 0049900A    xor         eax,eax
 0049900C    pop         edx
 0049900D    pop         ecx
 0049900E    pop         ecx
 0049900F    mov         dword ptr fs:[eax],edx
 00499012    push        499051
 00499017    lea         eax,[ebp-28]
 0049901A    mov         edx,dword ptr ds:[43AC94];TRttiContext
 00499020    call        @FinalizeRecord
 00499025    lea         eax,[ebp-24]
 00499028    call        @VarClr
 0049902D    lea         eax,[ebp-8]
 00499030    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00499036    call        @DynArrayClear
 0049903B    lea         eax,[ebp-4]
 0049903E    mov         edx,dword ptr ds:[43AC94];TRttiContext
 00499044    call        @FinalizeRecord
 00499049    ret
>0049904A    jmp         @HandleFinally
>0049904F    jmp         00499017
 00499051    movzx       eax,byte ptr [ebp-0D]
 00499055    pop         edi
 00499056    pop         esi
 00499057    pop         ebx
 00499058    mov         esp,ebp
 0049905A    pop         ebp
 0049905B    ret
*}
end;

//0049905C
function IsDefaultOrdProp:Boolean;
begin
{*
 0049905C    push        ebp
 0049905D    mov         ebp,esp
 0049905F    xor         ecx,ecx
 00499061    push        ecx
 00499062    push        ecx
 00499063    push        ecx
 00499064    push        ecx
 00499065    push        ecx
 00499066    push        ecx
 00499067    push        ecx
 00499068    push        ecx
 00499069    push        ebx
 0049906A    xor         eax,eax
 0049906C    push        ebp
 0049906D    push        499130
 00499072    push        dword ptr fs:[eax]
 00499075    mov         dword ptr fs:[eax],esp
 00499078    mov         eax,dword ptr [ebp+8]
 0049907B    mov         edx,dword ptr [eax-4]
 0049907E    mov         eax,dword ptr [ebp+8]
 00499081    mov         eax,dword ptr [eax-8]
 00499084    call        GetOrdProp
 00499089    mov         ebx,eax
 0049908B    mov         eax,dword ptr [ebp+8]
 0049908E    cmp         byte ptr [eax-9],0
>00499092    je          004990AE
 00499094    mov         eax,dword ptr [ebp+8]
 00499097    mov         edx,dword ptr [eax-4]
 0049909A    mov         eax,dword ptr [ebp+8]
 0049909D    mov         eax,dword ptr [eax-10]
 004990A0    call        GetOrdProp
 004990A5    cmp         ebx,eax
 004990A7    sete        al
 004990AA    mov         ebx,eax
>004990AC    jmp         0049910F
 004990AE    mov         eax,dword ptr [ebp+8]
 004990B1    push        eax
 004990B2    lea         eax,[ebp-10]
 004990B5    call        @VarClr
 004990BA    call        GetDefaultAttribute
 004990BF    pop         ecx
 004990C0    test        al,al
>004990C2    je          004990F3
 004990C4    lea         eax,[ebp-10]
 004990C7    call        VarIsNull
 004990CC    test        al,al
>004990CE    jne         004990E9
 004990D0    lea         eax,[ebp-20]
 004990D3    mov         edx,ebx
 004990D5    mov         cl,0FC
 004990D7    call        @VarFromInt
 004990DC    lea         eax,[ebp-20]
 004990DF    lea         edx,[ebp-10]
 004990E2    call        @VarCmpEQ
>004990E7    je          004990ED
 004990E9    xor         eax,eax
>004990EB    jmp         004990EF
 004990ED    mov         al,1
 004990EF    mov         ebx,eax
>004990F1    jmp         0049910F
 004990F3    mov         eax,dword ptr [ebp+8]
 004990F6    mov         eax,dword ptr [eax-4]
 004990F9    mov         eax,dword ptr [eax+14]
 004990FC    cmp         eax,80000000
>00499101    je          00499107
 00499103    cmp         eax,ebx
>00499105    je          0049910B
 00499107    xor         eax,eax
>00499109    jmp         0049910D
 0049910B    mov         al,1
 0049910D    mov         ebx,eax
 0049910F    xor         eax,eax
 00499111    pop         edx
 00499112    pop         ecx
 00499113    pop         ecx
 00499114    mov         dword ptr fs:[eax],edx
 00499117    push        499137
 0049911C    lea         eax,[ebp-20]
 0049911F    mov         edx,dword ptr ds:[4012F0];Variant
 00499125    mov         ecx,2
 0049912A    call        @FinalizeArray
 0049912F    ret
>00499130    jmp         @HandleFinally
>00499135    jmp         0049911C
 00499137    mov         eax,ebx
 00499139    pop         ebx
 0049913A    mov         esp,ebp
 0049913C    pop         ebp
 0049913D    ret
*}
end;

//00499140
{*function sub_00499140(?:?):?;
begin
 00499140    push        ebp
 00499141    mov         ebp,esp
 00499143    mov         ecx,6
 00499148    push        0
 0049914A    push        0
 0049914C    dec         ecx
>0049914D    jne         00499148
 0049914F    push        ebx
 00499150    xor         eax,eax
 00499152    push        ebp
 00499153    push        49921D
 00499158    push        dword ptr fs:[eax]
 0049915B    mov         dword ptr fs:[eax],esp
 0049915E    mov         eax,dword ptr [ebp+8]
 00499161    mov         edx,dword ptr [eax-4]
 00499164    mov         eax,dword ptr [ebp+8]
 00499167    mov         eax,dword ptr [eax-8]
 0049916A    call        GetFloatProp
 0049916F    fstp        tbyte ptr [ebp-20]
 00499172    wait
 00499173    mov         eax,dword ptr [ebp+8]
 00499176    cmp         byte ptr [eax-9],0
>0049917A    je          0049919B
 0049917C    mov         eax,dword ptr [ebp+8]
 0049917F    mov         edx,dword ptr [eax-4]
 00499182    mov         eax,dword ptr [ebp+8]
 00499185    mov         eax,dword ptr [eax-10]
 00499188    call        GetFloatProp
 0049918D    fld         tbyte ptr [ebp-20]
 00499190    fcompp
 00499192    wait
 00499193    fnstsw      al
 00499195    sahf
 00499196    sete        bl
>00499199    jmp         004991FF
 0049919B    mov         eax,dword ptr [ebp+8]
 0049919E    push        eax
 0049919F    lea         eax,[ebp-10]
 004991A2    call        @VarClr
 004991A7    call        GetDefaultAttribute
 004991AC    pop         ecx
 004991AD    test        al,al
>004991AF    je          004991DD
 004991B1    lea         eax,[ebp-10]
 004991B4    call        VarIsNull
 004991B9    test        al,al
>004991BB    jne         004991D5
 004991BD    fld         tbyte ptr [ebp-20]
 004991C0    lea         eax,[ebp-30]
 004991C3    call        @VarFromReal
 004991C8    lea         eax,[ebp-30]
 004991CB    lea         edx,[ebp-10]
 004991CE    call        @VarCmpEQ
>004991D3    je          004991D9
 004991D5    xor         ebx,ebx
>004991D7    jmp         004991FF
 004991D9    mov         bl,1
>004991DB    jmp         004991FF
 004991DD    mov         eax,dword ptr [ebp+8]
 004991E0    mov         eax,dword ptr [eax-4]
 004991E3    cmp         dword ptr [eax+14],80000000
>004991EA    je          004991F9
 004991EC    fldz
 004991EE    fld         tbyte ptr [ebp-20]
 004991F1    fcompp
 004991F3    wait
 004991F4    fnstsw      al
 004991F6    sahf
>004991F7    je          004991FD
 004991F9    xor         ebx,ebx
>004991FB    jmp         004991FF
 004991FD    mov         bl,1
 004991FF    xor         eax,eax
 00499201    pop         edx
 00499202    pop         ecx
 00499203    pop         ecx
 00499204    mov         dword ptr fs:[eax],edx
 00499207    push        499224
 0049920C    lea         eax,[ebp-30]
 0049920F    call        @VarClr
 00499214    lea         eax,[ebp-10]
 00499217    call        @VarClr
 0049921C    ret
>0049921D    jmp         @HandleFinally
>00499222    jmp         0049920C
 00499224    mov         eax,ebx
 00499226    pop         ebx
 00499227    mov         esp,ebp
 00499229    pop         ebp
 0049922A    ret
end;*}

//0049922C
function IsDefaultInt64Prop:Boolean;
begin
{*
 0049922C    push        ebp
 0049922D    mov         ebp,esp
 0049922F    mov         ecx,5
 00499234    push        0
 00499236    push        0
 00499238    dec         ecx
>00499239    jne         00499234
 0049923B    push        ebx
 0049923C    xor         eax,eax
 0049923E    push        ebp
 0049923F    push        499311
 00499244    push        dword ptr fs:[eax]
 00499247    mov         dword ptr fs:[eax],esp
 0049924A    mov         eax,dword ptr [ebp+8]
 0049924D    mov         edx,dword ptr [eax-4]
 00499250    mov         eax,dword ptr [ebp+8]
 00499253    mov         eax,dword ptr [eax-8]
 00499256    call        GetInt64Prop
 0049925B    mov         dword ptr [ebp-18],eax
 0049925E    mov         dword ptr [ebp-14],edx
 00499261    mov         eax,dword ptr [ebp+8]
 00499264    cmp         byte ptr [eax-9],0
>00499268    je          00499288
 0049926A    mov         eax,dword ptr [ebp+8]
 0049926D    mov         edx,dword ptr [eax-4]
 00499270    mov         eax,dword ptr [ebp+8]
 00499273    mov         eax,dword ptr [eax-10]
 00499276    call        GetInt64Prop
 0049927B    cmp         edx,dword ptr [ebp-14]
>0049927E    jne         00499283
 00499280    cmp         eax,dword ptr [ebp-18]
 00499283    sete        bl
>00499286    jmp         004992F3
 00499288    mov         eax,dword ptr [ebp+8]
 0049928B    push        eax
 0049928C    lea         eax,[ebp-10]
 0049928F    call        @VarClr
 00499294    call        GetDefaultAttribute
 00499299    pop         ecx
 0049929A    test        al,al
>0049929C    je          004992CF
 0049929E    lea         eax,[ebp-10]
 004992A1    call        VarIsNull
 004992A6    test        al,al
>004992A8    jne         004992C7
 004992AA    mov         eax,dword ptr [ebp-18]
 004992AD    mov         edx,dword ptr [ebp-14]
 004992B0    push        edx
 004992B1    push        eax
 004992B2    lea         eax,[ebp-28]
 004992B5    call        @VarFromInt64
 004992BA    lea         eax,[ebp-28]
 004992BD    lea         edx,[ebp-10]
 004992C0    call        @VarCmpEQ
>004992C5    je          004992CB
 004992C7    xor         ebx,ebx
>004992C9    jmp         004992F3
 004992CB    mov         bl,1
>004992CD    jmp         004992F3
 004992CF    mov         eax,dword ptr [ebp+8]
 004992D2    mov         eax,dword ptr [eax-4]
 004992D5    mov         ecx,dword ptr [eax+14]
 004992D8    cmp         ecx,80000000
>004992DE    je          004992ED
 004992E0    mov         eax,ecx
 004992E2    cdq
 004992E3    cmp         edx,dword ptr [ebp-14]
>004992E6    jne         004992EB
 004992E8    cmp         eax,dword ptr [ebp-18]
>004992EB    je          004992F1
 004992ED    xor         ebx,ebx
>004992EF    jmp         004992F3
 004992F1    mov         bl,1
 004992F3    xor         eax,eax
 004992F5    pop         edx
 004992F6    pop         ecx
 004992F7    pop         ecx
 004992F8    mov         dword ptr fs:[eax],edx
 004992FB    push        499318
 00499300    lea         eax,[ebp-28]
 00499303    call        @VarClr
 00499308    lea         eax,[ebp-10]
 0049930B    call        @VarClr
 00499310    ret
>00499311    jmp         @HandleFinally
>00499316    jmp         00499300
 00499318    mov         eax,ebx
 0049931A    pop         ebx
 0049931B    mov         esp,ebp
 0049931D    pop         ebp
 0049931E    ret
*}
end;

//00499320
function IsDefaultStrProp:Boolean;
begin
{*
 00499320    push        ebp
 00499321    mov         ebp,esp
 00499323    mov         ecx,5
 00499328    push        0
 0049932A    push        0
 0049932C    dec         ecx
>0049932D    jne         00499328
 0049932F    push        ecx
 00499330    push        ebx
 00499331    xor         eax,eax
 00499333    push        ebp
 00499334    push        49940B
 00499339    push        dword ptr fs:[eax]
 0049933C    mov         dword ptr fs:[eax],esp
 0049933F    lea         ecx,[ebp-4]
 00499342    mov         eax,dword ptr [ebp+8]
 00499345    mov         edx,dword ptr [eax-4]
 00499348    mov         eax,dword ptr [ebp+8]
 0049934B    mov         eax,dword ptr [eax-8]
 0049934E    call        GetStrProp
 00499353    mov         eax,dword ptr [ebp+8]
 00499356    cmp         byte ptr [eax-9],0
>0049935A    je          00499380
 0049935C    lea         ecx,[ebp-1C]
 0049935F    mov         eax,dword ptr [ebp+8]
 00499362    mov         edx,dword ptr [eax-4]
 00499365    mov         eax,dword ptr [ebp+8]
 00499368    mov         eax,dword ptr [eax-10]
 0049936B    call        GetStrProp
 00499370    mov         edx,dword ptr [ebp-1C]
 00499373    mov         eax,dword ptr [ebp-4]
 00499376    call        @UStrEqual
 0049937B    sete        bl
>0049937E    jmp         004993DD
 00499380    mov         eax,dword ptr [ebp+8]
 00499383    push        eax
 00499384    lea         eax,[ebp-18]
 00499387    call        @VarClr
 0049938C    call        GetDefaultAttribute
 00499391    pop         ecx
 00499392    test        al,al
>00499394    je          004993C2
 00499396    lea         eax,[ebp-18]
 00499399    call        VarIsNull
 0049939E    test        al,al
>004993A0    jne         004993BA
 004993A2    lea         eax,[ebp-2C]
 004993A5    mov         edx,dword ptr [ebp-4]
 004993A8    call        @VarFromUStr
 004993AD    lea         eax,[ebp-2C]
 004993B0    lea         edx,[ebp-18]
 004993B3    call        @VarCmpEQ
>004993B8    je          004993BE
 004993BA    xor         ebx,ebx
>004993BC    jmp         004993DD
 004993BE    mov         bl,1
>004993C0    jmp         004993DD
 004993C2    mov         eax,dword ptr [ebp+8]
 004993C5    mov         eax,dword ptr [eax-4]
 004993C8    cmp         dword ptr [eax+14],80000000
>004993CF    je          004993D7
 004993D1    cmp         dword ptr [ebp-4],0
>004993D5    je          004993DB
 004993D7    xor         ebx,ebx
>004993D9    jmp         004993DD
 004993DB    mov         bl,1
 004993DD    xor         eax,eax
 004993DF    pop         edx
 004993E0    pop         ecx
 004993E1    pop         ecx
 004993E2    mov         dword ptr fs:[eax],edx
 004993E5    push        499412
 004993EA    lea         eax,[ebp-2C]
 004993ED    call        @VarClr
 004993F2    lea         eax,[ebp-1C]
 004993F5    call        @UStrClr
 004993FA    lea         eax,[ebp-18]
 004993FD    call        @VarClr
 00499402    lea         eax,[ebp-4]
 00499405    call        @UStrClr
 0049940A    ret
>0049940B    jmp         @HandleFinally
>00499410    jmp         004993EA
 00499412    mov         eax,ebx
 00499414    pop         ebx
 00499415    mov         esp,ebp
 00499417    pop         ebp
 00499418    ret
*}
end;

//0049941C
function ObjectAncestorMatch(const AncestorValue:TComponent; const Value:TComponent):Boolean;
begin
{*
 0049941C    push        ebp
 0049941D    mov         ebp,esp
 0049941F    add         esp,0FFFFFFF8
 00499422    push        ebx
 00499423    push        esi
 00499424    test        eax,eax
>00499426    je          00499474
 00499428    mov         ecx,dword ptr [eax+4]
 0049942B    mov         ebx,dword ptr [ebp+8]
 0049942E    cmp         ecx,dword ptr [ebx-14]
>00499431    jne         00499474
 00499433    test        edx,edx
>00499435    je          00499474
 00499437    mov         ecx,dword ptr [edx+4]
 0049943A    mov         ebx,dword ptr [ebp+8]
 0049943D    cmp         ecx,dword ptr [ebx-18]
>00499440    jne         00499474
 00499442    mov         ebx,dword ptr [eax+8]
 00499445    mov         esi,dword ptr [edx+8]
 00499448    cmp         ebx,esi
>0049944A    jne         00499450
 0049944C    mov         al,1
>0049944E    jmp         00499476
 00499450    test        ebx,ebx
>00499452    je          00499458
 00499454    test        esi,esi
>00499456    jne         0049945C
 00499458    xor         eax,eax
>0049945A    jmp         00499476
 0049945C    mov         dword ptr [ebp-4],esi
 0049945F    mov         edx,dword ptr [ebp-4]
 00499462    mov         dword ptr [ebp-8],ebx
 00499465    mov         eax,dword ptr [ebp-8]
 00499468    call        CompareText
 0049946D    test        eax,eax
 0049946F    sete        al
>00499472    jmp         00499476
 00499474    xor         eax,eax
 00499476    pop         esi
 00499477    pop         ebx
 00499478    pop         ecx
 00499479    pop         ecx
 0049947A    pop         ebp
 0049947B    ret
*}
end;

//0049947C
function IsDefault:Boolean;
begin
{*
 0049947C    push        ebp
 0049947D    mov         ebp,esp
 0049947F    push        ebx
 00499480    xor         ebx,ebx
 00499482    mov         eax,dword ptr [ebp+8]
 00499485    mov         eax,dword ptr [eax+8]
 00499488    cmp         byte ptr [eax-9],0
>0049948C    je          004994C6
 0049948E    mov         eax,dword ptr [ebp+8]
 00499491    mov         eax,dword ptr [eax+8]
 00499494    mov         edx,dword ptr [eax-4]
 00499497    mov         eax,dword ptr [ebp+8]
 0049949A    mov         eax,dword ptr [eax+8]
 0049949D    mov         eax,dword ptr [eax-10]
 004994A0    call        GetOrdProp
 004994A5    mov         ebx,eax
 004994A7    mov         eax,dword ptr [ebp+8]
 004994AA    mov         eax,dword ptr [eax+8]
 004994AD    push        eax
 004994AE    mov         eax,dword ptr [ebp+8]
 004994B1    mov         edx,dword ptr [eax-4]
 004994B4    mov         eax,ebx
 004994B6    call        ObjectAncestorMatch
 004994BB    pop         ecx
 004994BC    test        al,al
>004994BE    je          004994C6
 004994C0    mov         eax,dword ptr [ebp+8]
 004994C3    mov         ebx,dword ptr [eax-4]
 004994C6    mov         eax,dword ptr [ebp+8]
 004994C9    cmp         ebx,dword ptr [eax-4]
 004994CC    sete        al
 004994CF    pop         ebx
 004994D0    pop         ebp
 004994D1    ret
*}
end;

//004994D4
{*function sub_004994D4(?:?):?;
begin
 004994D4    push        ebp
 004994D5    mov         ebp,esp
 004994D7    push        ecx
 004994D8    push        ebx
 004994D9    mov         bl,1
 004994DB    mov         eax,dword ptr [ebp+8]
 004994DE    mov         edx,dword ptr [eax-4]
 004994E1    mov         eax,dword ptr [ebp+8]
 004994E4    mov         eax,dword ptr [eax-8]
 004994E7    call        GetOrdProp
 004994EC    mov         dword ptr [ebp-4],eax
 004994EF    cmp         dword ptr [ebp-4],0
>004994F3    jne         00499504
 004994F5    push        ebp
 004994F6    call        IsDefault
 004994FB    pop         ecx
 004994FC    test        al,al
>004994FE    jne         00499504
 00499500    xor         ebx,ebx
>00499502    jmp         0049954B
 00499504    mov         eax,dword ptr [ebp-4]
 00499507    mov         edx,dword ptr ds:[46D778];TPersistent
 0049950D    call        @IsClass
 00499512    test        al,al
>00499514    je          0049954B
 00499516    mov         eax,dword ptr [ebp-4]
 00499519    mov         edx,dword ptr ds:[478C44];TComponent
 0049951F    call        @IsClass
 00499524    test        al,al
>00499526    je          00499549
 00499528    mov         eax,dword ptr [ebp-4]
 0049952B    test        byte ptr [eax+30],4
>0049952F    jne         00499549
 00499531    push        ebp
 00499532    call        IsDefault
 00499537    pop         ecx
 00499538    test        al,al
>0049953A    jne         0049954B
 0049953C    mov         eax,dword ptr [ebp-4]
 0049953F    cmp         dword ptr [eax+8],0
>00499543    je          0049954B
 00499545    xor         ebx,ebx
>00499547    jmp         0049954B
 00499549    xor         ebx,ebx
 0049954B    mov         eax,ebx
 0049954D    pop         ebx
 0049954E    pop         ecx
 0049954F    pop         ebp
 00499550    ret
end;*}

//00499554
function IsDefaultValue:Boolean;
begin
{*
 00499554    push        ebp
 00499555    mov         ebp,esp
 00499557    push        0
 00499559    push        0
 0049955B    push        ebx
 0049955C    xor         eax,eax
 0049955E    push        ebp
 0049955F    push        499600
 00499564    push        dword ptr fs:[eax]
 00499567    mov         dword ptr fs:[eax],esp
 0049956A    mov         eax,dword ptr [ebp+8]
 0049956D    cmp         dword ptr [eax-4],0
 00499571    sete        bl
 00499574    mov         eax,dword ptr [ebp+8]
 00499577    mov         eax,dword ptr [eax+8]
 0049957A    cmp         byte ptr [eax-9],0
>0049957E    je          004995E2
 00499580    lea         ecx,[ebp-4]
 00499583    mov         eax,dword ptr [ebp+8]
 00499586    mov         eax,dword ptr [eax+8]
 00499589    mov         edx,dword ptr [eax-4]
 0049958C    mov         eax,dword ptr [ebp+8]
 0049958F    mov         eax,dword ptr [eax+8]
 00499592    mov         eax,dword ptr [eax-10]
 00499595    call        GetInterfaceProp
 0049959A    mov         eax,dword ptr [ebp+8]
 0049959D    mov         eax,dword ptr [eax-4]
 004995A0    cmp         eax,dword ptr [ebp-4]
 004995A3    sete        bl
 004995A6    test        bl,bl
>004995A8    jne         004995E2
 004995AA    lea         eax,[ebp-8]
 004995AD    call        @IntfClear
 004995B2    mov         ecx,eax
 004995B4    mov         edx,499610
 004995B9    mov         eax,dword ptr [ebp-4]
 004995BC    call        Supports
 004995C1    test        al,al
>004995C3    je          004995E2
 004995C5    mov         eax,dword ptr [ebp+8]
 004995C8    mov         eax,dword ptr [eax+8]
 004995CB    push        eax
 004995CC    mov         eax,dword ptr [ebp-8]
 004995CF    mov         edx,dword ptr [eax]
 004995D1    call        dword ptr [edx+0C]
 004995D4    mov         edx,dword ptr [ebp+8]
 004995D7    mov         edx,dword ptr [edx-8]
 004995DA    call        ObjectAncestorMatch
 004995DF    pop         ecx
 004995E0    mov         ebx,eax
 004995E2    xor         eax,eax
 004995E4    pop         edx
 004995E5    pop         ecx
 004995E6    pop         ecx
 004995E7    mov         dword ptr fs:[eax],edx
 004995EA    push        499607
 004995EF    lea         eax,[ebp-8]
 004995F2    call        @IntfClear
 004995F7    lea         eax,[ebp-4]
 004995FA    call        @IntfClear
 004995FF    ret
>00499600    jmp         @HandleFinally
>00499605    jmp         004995EF
 00499607    mov         eax,ebx
 00499609    pop         ebx
 0049960A    pop         ecx
 0049960B    pop         ecx
 0049960C    pop         ebp
 0049960D    ret
*}
end;

//00499620
function IsDefaultInterfaceProp:Boolean;
begin
{*
 00499620    push        ebp
 00499621    mov         ebp,esp
 00499623    xor         ecx,ecx
 00499625    push        ecx
 00499626    push        ecx
 00499627    push        ecx
 00499628    push        ecx
 00499629    push        ebx
 0049962A    xor         eax,eax
 0049962C    push        ebp
 0049962D    push        4996DD
 00499632    push        dword ptr fs:[eax]
 00499635    mov         dword ptr fs:[eax],esp
 00499638    mov         bl,1
 0049963A    lea         ecx,[ebp-4]
 0049963D    mov         eax,dword ptr [ebp+8]
 00499640    mov         edx,dword ptr [eax-4]
 00499643    mov         eax,dword ptr [ebp+8]
 00499646    mov         eax,dword ptr [eax-8]
 00499649    call        GetInterfaceProp
 0049964E    cmp         dword ptr [ebp-4],0
>00499652    je          0049966F
 00499654    lea         eax,[ebp-0C]
 00499657    call        @IntfClear
 0049965C    mov         ecx,eax
 0049965E    mov         edx,4996EC
 00499663    mov         eax,dword ptr [ebp-4]
 00499666    call        Supports
 0049966B    test        al,al
>0049966D    jne         00499696
 0049966F    mov         eax,dword ptr [ebp+8]
 00499672    cmp         byte ptr [eax-9],0
>00499676    je          004996B7
 00499678    lea         ecx,[ebp-10]
 0049967B    mov         eax,dword ptr [ebp+8]
 0049967E    mov         edx,dword ptr [eax-4]
 00499681    mov         eax,dword ptr [ebp+8]
 00499684    mov         eax,dword ptr [eax-10]
 00499687    call        GetInterfaceProp
 0049968C    cmp         dword ptr [ebp-10],0
>00499690    je          004996B7
 00499692    xor         ebx,ebx
>00499694    jmp         004996B7
 00499696    mov         eax,dword ptr [ebp-0C]
 00499699    mov         edx,dword ptr [eax]
 0049969B    call        dword ptr [edx+0C]
 0049969E    mov         dword ptr [ebp-8],eax
 004996A1    push        ebp
 004996A2    call        IsDefaultValue
 004996A7    pop         ecx
 004996A8    test        al,al
>004996AA    jne         004996B7
 004996AC    mov         eax,dword ptr [ebp-8]
 004996AF    cmp         dword ptr [eax+8],0
>004996B3    je          004996B7
 004996B5    xor         ebx,ebx
 004996B7    xor         eax,eax
 004996B9    pop         edx
 004996BA    pop         ecx
 004996BB    pop         ecx
 004996BC    mov         dword ptr fs:[eax],edx
 004996BF    push        4996E4
 004996C4    lea         eax,[ebp-10]
 004996C7    call        @IntfClear
 004996CC    lea         eax,[ebp-0C]
 004996CF    call        @IntfClear
 004996D4    lea         eax,[ebp-4]
 004996D7    call        @IntfClear
 004996DC    ret
>004996DD    jmp         @HandleFinally
>004996E2    jmp         004996C4
 004996E4    mov         eax,ebx
 004996E6    pop         ebx
 004996E7    mov         esp,ebp
 004996E9    pop         ebp
 004996EA    ret
*}
end;

//004996FC
function FindMethodName(AMethod:TMethod):UnicodeString;
begin
{*
 004996FC    push        ebp
 004996FD    mov         ebp,esp
 004996FF    add         esp,0FFFFFFF8
 00499702    push        ebx
 00499703    push        esi
 00499704    push        edi
 00499705    mov         esi,eax
 00499707    lea         edi,[ebp-8]
 0049970A    movs        dword ptr [edi],dword ptr [esi]
 0049970B    movs        dword ptr [edi],dword ptr [esi]
 0049970C    mov         ebx,edx
 0049970E    mov         eax,ebx
 00499710    call        @UStrClr
 00499715    mov         eax,dword ptr [ebp+8]
 00499718    cmp         word ptr [eax+0A],0
>0049971D    je          00499734
 0049971F    push        ebx
 00499720    mov         eax,dword ptr [ebp+8]
 00499723    lea         esi,[eax+8]
 00499726    mov         eax,dword ptr [ebp+8]
 00499729    mov         edx,dword ptr [eax-1C]
 0049972C    lea         ecx,[ebp-8]
 0049972F    mov         eax,dword ptr [esi+4]
 00499732    call        dword ptr [esi]
 00499734    cmp         dword ptr [ebx],0
>00499737    jne         0049974B
 00499739    mov         ecx,ebx
 0049973B    mov         eax,dword ptr [ebp+8]
 0049973E    mov         eax,dword ptr [eax-20]
 00499741    mov         eax,dword ptr [eax]
 00499743    mov         edx,dword ptr [ebp-8]
 00499746    call        TObject.MethodName
 0049974B    pop         edi
 0049974C    pop         esi
 0049974D    pop         ebx
 0049974E    pop         ecx
 0049974F    pop         ecx
 00499750    pop         ebp
 00499751    ret
*}
end;

//00499754
function IsDefaultMethodProp:Boolean;
begin
{*
 00499754    push        ebp
 00499755    mov         ebp,esp
 00499757    add         esp,0FFFFFFEC
 0049975A    push        ebx
 0049975B    xor         eax,eax
 0049975D    mov         dword ptr [ebp-14],eax
 00499760    xor         eax,eax
 00499762    push        ebp
 00499763    push        4997E3
 00499768    push        dword ptr fs:[eax]
 0049976B    mov         dword ptr fs:[eax],esp
 0049976E    lea         ecx,[ebp-8]
 00499771    mov         eax,dword ptr [ebp+8]
 00499774    mov         edx,dword ptr [eax-4]
 00499777    mov         eax,dword ptr [ebp+8]
 0049977A    mov         eax,dword ptr [eax-8]
 0049977D    call        GetMethodProp
 00499782    xor         ebx,ebx
 00499784    mov         eax,dword ptr [ebp+8]
 00499787    cmp         byte ptr [eax-9],0
>0049978B    je          004997A4
 0049978D    lea         ecx,[ebp-10]
 00499790    mov         eax,dword ptr [ebp+8]
 00499793    mov         edx,dword ptr [eax-4]
 00499796    mov         eax,dword ptr [ebp+8]
 00499799    mov         eax,dword ptr [eax-10]
 0049979C    call        GetMethodProp
 004997A1    mov         ebx,dword ptr [ebp-10]
 004997A4    cmp         ebx,dword ptr [ebp-8]
>004997A7    je          004997C9
 004997A9    cmp         dword ptr [ebp-8],0
>004997AD    je          004997C5
 004997AF    mov         eax,dword ptr [ebp+8]
 004997B2    push        eax
 004997B3    lea         edx,[ebp-14]
 004997B6    lea         eax,[ebp-8]
 004997B9    call        FindMethodName
 004997BE    pop         ecx
 004997BF    cmp         dword ptr [ebp-14],0
>004997C3    je          004997C9
 004997C5    xor         eax,eax
>004997C7    jmp         004997CB
 004997C9    mov         al,1
 004997CB    mov         ebx,eax
 004997CD    xor         eax,eax
 004997CF    pop         edx
 004997D0    pop         ecx
 004997D1    pop         ecx
 004997D2    mov         dword ptr fs:[eax],edx
 004997D5    push        4997EA
 004997DA    lea         eax,[ebp-14]
 004997DD    call        @UStrClr
 004997E2    ret
>004997E3    jmp         @HandleFinally
>004997E8    jmp         004997DA
 004997EA    mov         eax,ebx
 004997EC    pop         ebx
 004997ED    mov         esp,ebp
 004997EF    pop         ebp
 004997F0    ret
*}
end;

//004997F4
function IsDefaultVariantProp:Boolean;
begin
{*
 004997F4    push        ebp
 004997F5    mov         ebp,esp
 004997F7    mov         ecx,6
 004997FC    push        0
 004997FE    push        0
 00499800    dec         ecx
>00499801    jne         004997FC
 00499803    push        ebx
 00499804    xor         eax,eax
 00499806    push        ebp
 00499807    push        4998CA
 0049980C    push        dword ptr fs:[eax]
 0049980F    mov         dword ptr fs:[eax],esp
 00499812    lea         ecx,[ebp-10]
 00499815    mov         eax,dword ptr [ebp+8]
 00499818    mov         edx,dword ptr [eax-4]
 0049981B    mov         eax,dword ptr [ebp+8]
 0049981E    mov         eax,dword ptr [eax-8]
 00499821    call        GetVariantProp
 00499826    mov         eax,dword ptr [ebp+8]
 00499829    cmp         byte ptr [eax-9],0
>0049982D    je          00499852
 0049982F    lea         ecx,[ebp-30]
 00499832    mov         eax,dword ptr [ebp+8]
 00499835    mov         edx,dword ptr [eax-4]
 00499838    mov         eax,dword ptr [ebp+8]
 0049983B    mov         eax,dword ptr [eax-10]
 0049983E    call        GetVariantProp
 00499843    lea         edx,[ebp-30]
 00499846    lea         eax,[ebp-10]
 00499849    call        VarSameValue
 0049984E    mov         ebx,eax
>00499850    jmp         004998A9
 00499852    mov         eax,dword ptr [ebp+8]
 00499855    push        eax
 00499856    lea         eax,[ebp-20]
 00499859    call        @VarClr
 0049985E    call        GetDefaultAttribute
 00499863    pop         ecx
 00499864    test        al,al
>00499866    je          00499888
 00499868    lea         eax,[ebp-20]
 0049986B    call        VarIsNull
 00499870    test        al,al
>00499872    jne         00499880
 00499874    lea         eax,[ebp-10]
 00499877    call        VarIsClear
 0049987C    test        al,al
>0049987E    jne         00499884
 00499880    xor         ebx,ebx
>00499882    jmp         004998A9
 00499884    mov         bl,1
>00499886    jmp         004998A9
 00499888    mov         eax,dword ptr [ebp+8]
 0049988B    mov         eax,dword ptr [eax-4]
 0049988E    cmp         dword ptr [eax+14],80000000
>00499895    je          004998A3
 00499897    lea         eax,[ebp-10]
 0049989A    call        VarIsClear
 0049989F    test        al,al
>004998A1    jne         004998A7
 004998A3    xor         ebx,ebx
>004998A5    jmp         004998A9
 004998A7    mov         bl,1
 004998A9    xor         eax,eax
 004998AB    pop         edx
 004998AC    pop         ecx
 004998AD    pop         ecx
 004998AE    mov         dword ptr fs:[eax],edx
 004998B1    push        4998D1
 004998B6    lea         eax,[ebp-30]
 004998B9    mov         edx,dword ptr ds:[4012F0];Variant
 004998BF    mov         ecx,3
 004998C4    call        @FinalizeArray
 004998C9    ret
>004998CA    jmp         @HandleFinally
>004998CF    jmp         004998B6
 004998D1    mov         eax,ebx
 004998D3    pop         ebx
 004998D4    mov         esp,ebp
 004998D6    pop         ebp
 004998D7    ret
*}
end;

//004998D8
{*function sub_004998D8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004998D8    push        ebp
 004998D9    mov         ebp,esp
 004998DB    add         esp,0FFFFFFE0
 004998DE    push        ebx
 004998DF    mov         dword ptr [ebp-1C],ecx
 004998E2    mov         dword ptr [ebp-4],edx
 004998E5    mov         dword ptr [ebp-8],eax
 004998E8    xor         eax,eax
 004998EA    mov         dword ptr [ebp-10],eax
 004998ED    xor         eax,eax
 004998EF    mov         dword ptr [ebp-18],eax
 004998F2    xor         eax,eax
 004998F4    mov         dword ptr [ebp-20],eax
 004998F7    xor         eax,eax
 004998F9    mov         dword ptr [ebp-14],eax
 004998FC    cmp         word ptr [ebp+12],0
>00499901    je          00499917
 00499903    lea         eax,[ebp-20]
 00499906    push        eax
 00499907    lea         eax,[ebp-14]
 0049990A    push        eax
 0049990B    lea         ecx,[ebp-18]
 0049990E    lea         edx,[ebp-10]
 00499911    mov         eax,dword ptr [ebp+14]
 00499914    call        dword ptr [ebp+10]
 00499917    mov         ecx,dword ptr [ebp-14]
 0049991A    mov         edx,dword ptr [ebp-18]
 0049991D    mov         eax,dword ptr [ebp-10]
 00499920    call        AncestorIsValid
 00499925    mov         byte ptr [ebp-9],al
 00499928    mov         bl,1
 0049992A    mov         eax,dword ptr [ebp-4]
 0049992D    cmp         dword ptr [eax+4],0
>00499931    je          00499A31
 00499937    mov         eax,dword ptr [ebp-4]
 0049993A    cmp         dword ptr [eax+8],0
>0049993E    jne         00499983
 00499940    mov         eax,dword ptr [ebp-4]
 00499943    mov         eax,dword ptr [eax]
 00499945    mov         eax,dword ptr [eax]
 00499947    cmp         byte ptr [eax],7
>0049994A    jne         00499A31
 00499950    mov         edx,dword ptr [ebp-4]
 00499953    mov         eax,dword ptr [ebp-8]
 00499956    call        GetOrdProp
 0049995B    mov         edx,dword ptr ds:[478C44];TComponent
 00499961    call        @IsClass
 00499966    test        al,al
>00499968    je          00499A31
 0049996E    mov         edx,dword ptr [ebp-4]
 00499971    mov         eax,dword ptr [ebp-8]
 00499974    call        GetOrdProp
 00499979    test        byte ptr [eax+30],4
>0049997D    je          00499A31
 00499983    mov         eax,dword ptr [ebp-4]
 00499986    mov         eax,dword ptr [eax]
 00499988    mov         eax,dword ptr [eax]
 0049998A    movzx       eax,byte ptr [eax]
 0049998D    cmp         eax,12
>00499990    ja          00499A31
 00499996    movzx       eax,byte ptr [eax+4999A4]
 0049999D    jmp         dword ptr [eax*4+4999B7]
 0049999D    db          0
 0049999D    db          1
 0049999D    db          1
 0049999D    db          1
 0049999D    db          2
 0049999D    db          3
 0049999D    db          1
 0049999D    db          4
 0049999D    db          5
 0049999D    db          1
 0049999D    db          3
 0049999D    db          3
 0049999D    db          6
 0049999D    db          0
 0049999D    db          0
 0049999D    db          8
 0049999D    db          7
 0049999D    db          0
 0049999D    db          3
 0049999D    dd          00499A31
 0049999D    dd          004999DB
 0049999D    dd          004999E6
 0049999D    dd          004999F1
 0049999D    dd          004999FC
 0049999D    dd          00499A07
 0049999D    dd          00499A12
 0049999D    dd          00499A1D
 0049999D    dd          00499A28
 004999DB    push        ebp
 004999DC    call        IsDefaultOrdProp
 004999E1    pop         ecx
 004999E2    mov         ebx,eax
>004999E4    jmp         00499A31
 004999E6    push        ebp
 004999E7    call        00499140
 004999EC    pop         ecx
 004999ED    mov         ebx,eax
>004999EF    jmp         00499A31
 004999F1    push        ebp
 004999F2    call        IsDefaultStrProp
 004999F7    pop         ecx
 004999F8    mov         ebx,eax
>004999FA    jmp         00499A31
 004999FC    push        ebp
 004999FD    call        004994D4
 00499A02    pop         ecx
 00499A03    mov         ebx,eax
>00499A05    jmp         00499A31
 00499A07    push        ebp
 00499A08    call        IsDefaultMethodProp
 00499A0D    pop         ecx
 00499A0E    mov         ebx,eax
>00499A10    jmp         00499A31
 00499A12    push        ebp
 00499A13    call        IsDefaultVariantProp
 00499A18    pop         ecx
 00499A19    mov         ebx,eax
>00499A1B    jmp         00499A31
 00499A1D    push        ebp
 00499A1E    call        IsDefaultInt64Prop
 00499A23    pop         ecx
 00499A24    mov         ebx,eax
>00499A26    jmp         00499A31
 00499A28    push        ebp
 00499A29    call        IsDefaultInterfaceProp
 00499A2E    pop         ecx
 00499A2F    mov         ebx,eax
 00499A31    mov         eax,ebx
 00499A33    pop         ebx
 00499A34    mov         esp,ebp
 00499A36    pop         ebp
 00499A37    ret         10
end;*}

//00499A3C
{*procedure sub_00499A3C(?:?);
begin
 00499A3C    push        ebp
 00499A3D    mov         ebp,esp
 00499A3F    add         esp,0FFFFFFF4
 00499A42    xor         eax,eax
 00499A44    mov         dword ptr [ebp-0C],eax
 00499A47    xor         eax,eax
 00499A49    push        ebp
 00499A4A    push        499A96
 00499A4F    push        dword ptr fs:[eax]
 00499A52    mov         dword ptr fs:[eax],esp
 00499A55    mov         eax,dword ptr [ebp+8]
 00499A58    mov         eax,dword ptr [eax-4]
 00499A5B    add         eax,1A
 00499A5E    mov         dword ptr [ebp-8],eax
 00499A61    mov         eax,dword ptr [ebp-8]
 00499A64    mov         dword ptr [ebp-4],eax
 00499A67    lea         eax,[ebp-4]
 00499A6A    lea         edx,[ebp-0C]
 00499A6D    call        TTypeInfoFieldAccessor.ToString
 00499A72    mov         edx,dword ptr [ebp-0C]
 00499A75    mov         eax,dword ptr [ebp+8]
 00499A78    mov         eax,dword ptr [eax-8]
 00499A7B    call        TWriter.WritePropName
 00499A80    xor         eax,eax
 00499A82    pop         edx
 00499A83    pop         ecx
 00499A84    pop         ecx
 00499A85    mov         dword ptr fs:[eax],edx
 00499A88    push        499A9D
 00499A8D    lea         eax,[ebp-0C]
 00499A90    call        @UStrClr
 00499A95    ret
>00499A96    jmp         @HandleFinally
>00499A9B    jmp         00499A8D
 00499A9D    mov         esp,ebp
 00499A9F    pop         ebp
 00499AA0    ret
end;*}

//00499AA4
{*procedure sub_00499AA4(?:NativeInt; ?:?);
begin
 00499AA4    push        ebp
 00499AA5    mov         ebp,esp
 00499AA7    push        0
 00499AA9    push        ebx
 00499AAA    push        esi
 00499AAB    push        edi
 00499AAC    mov         esi,eax
 00499AAE    xor         eax,eax
 00499AB0    push        ebp
 00499AB1    push        499B2A
 00499AB6    push        dword ptr fs:[eax]
 00499AB9    mov         dword ptr fs:[eax],esp
 00499ABC    mov         eax,dword ptr [ebp+8]
 00499ABF    mov         eax,dword ptr [eax-0C]
 00499AC2    call        GetTypeData
 00499AC7    mov         eax,dword ptr [eax+1]
 00499ACA    mov         edi,dword ptr [eax]
 00499ACC    mov         eax,dword ptr [ebp+8]
 00499ACF    mov         eax,dword ptr [eax-8]
 00499AD2    mov         dl,0B
 00499AD4    call        TWriter.WriteValue
 00499AD9    xor         ebx,ebx
 00499ADB    mov         eax,ebx
 00499ADD    cmp         eax,1F
>00499AE0    ja          00499AE5
 00499AE2    bt          esi,eax
>00499AE5    jae         00499B01
 00499AE7    lea         ecx,[ebp-4]
 00499AEA    mov         edx,ebx
 00499AEC    mov         eax,edi
 00499AEE    call        GetSetElementName
 00499AF3    mov         edx,dword ptr [ebp-4]
 00499AF6    mov         eax,dword ptr [ebp+8]
 00499AF9    mov         eax,dword ptr [eax-8]
 00499AFC    call        TWriter.WriteUTF8Str
 00499B01    inc         ebx
 00499B02    cmp         ebx,20
>00499B05    jne         00499ADB
 00499B07    mov         eax,dword ptr [ebp+8]
 00499B0A    mov         eax,dword ptr [eax-8]
 00499B0D    xor         edx,edx
 00499B0F    call        TWriter.WriteUTF8Str
 00499B14    xor         eax,eax
 00499B16    pop         edx
 00499B17    pop         ecx
 00499B18    pop         ecx
 00499B19    mov         dword ptr fs:[eax],edx
 00499B1C    push        499B31
 00499B21    lea         eax,[ebp-4]
 00499B24    call        @UStrClr
 00499B29    ret
>00499B2A    jmp         @HandleFinally
>00499B2F    jmp         00499B21
 00499B31    pop         edi
 00499B32    pop         esi
 00499B33    pop         ebx
 00499B34    pop         ecx
 00499B35    pop         ebp
 00499B36    ret
end;*}

//00499B38
{*procedure sub_00499B38(?:?; ?:NativeInt; ?:?);
begin
 00499B38    push        ebp
 00499B39    mov         ebp,esp
 00499B3B    push        0
 00499B3D    push        ebx
 00499B3E    push        esi
 00499B3F    mov         esi,edx
 00499B41    xor         edx,edx
 00499B43    push        ebp
 00499B44    push        499B98
 00499B49    push        dword ptr fs:[edx]
 00499B4C    mov         dword ptr fs:[edx],esp
 00499B4F    call        FindIntToIdent
 00499B54    mov         ebx,eax
 00499B56    test        ebx,ebx
>00499B58    je          00499B75
 00499B5A    lea         edx,[ebp-4]
 00499B5D    mov         eax,esi
 00499B5F    call        ebx
 00499B61    test        al,al
>00499B63    je          00499B75
 00499B65    mov         eax,dword ptr [ebp+8]
 00499B68    mov         eax,dword ptr [eax-8]
 00499B6B    mov         edx,dword ptr [ebp-4]
 00499B6E    call        TWriter.WriteIdent
>00499B73    jmp         00499B82
 00499B75    mov         eax,dword ptr [ebp+8]
 00499B78    mov         eax,dword ptr [eax-8]
 00499B7B    mov         edx,esi
 00499B7D    call        TWriter.WriteInteger
 00499B82    xor         eax,eax
 00499B84    pop         edx
 00499B85    pop         ecx
 00499B86    pop         ecx
 00499B87    mov         dword ptr fs:[eax],edx
 00499B8A    push        499B9F
 00499B8F    lea         eax,[ebp-4]
 00499B92    call        @UStrClr
 00499B97    ret
>00499B98    jmp         @HandleFinally
>00499B9D    jmp         00499B8F
 00499B9F    pop         esi
 00499BA0    pop         ebx
 00499BA1    pop         ecx
 00499BA2    pop         ebp
 00499BA3    ret
end;*}

//00499BA4
{*procedure sub_00499BA4(?:NativeInt; ?:?);
begin
 00499BA4    push        ebp
 00499BA5    mov         ebp,esp
 00499BA7    push        0
 00499BA9    push        ebx
 00499BAA    mov         ebx,eax
 00499BAC    xor         eax,eax
 00499BAE    push        ebp
 00499BAF    push        499C3A
 00499BB4    push        dword ptr fs:[eax]
 00499BB7    mov         dword ptr fs:[eax],esp
 00499BBA    mov         eax,dword ptr [ebp+8]
 00499BBD    push        eax
 00499BBE    call        00499A3C
 00499BC3    pop         ecx
 00499BC4    lea         eax,[ebp-4]
 00499BC7    mov         edx,dword ptr [ebp+8]
 00499BCA    mov         edx,dword ptr [edx-8]
 00499BCD    mov         edx,dword ptr [edx+2C]
 00499BD0    call        @UStrLAsg
 00499BD5    xor         eax,eax
 00499BD7    push        ebp
 00499BD8    push        499C1D
 00499BDD    push        dword ptr fs:[eax]
 00499BE0    mov         dword ptr fs:[eax],esp
 00499BE3    mov         eax,dword ptr [ebp+8]
 00499BE6    mov         eax,dword ptr [eax-8]
 00499BE9    add         eax,2C
 00499BEC    call        @UStrClr
 00499BF1    mov         eax,dword ptr [ebp+8]
 00499BF4    mov         eax,dword ptr [eax-8]
 00499BF7    mov         edx,ebx
 00499BF9    call        TWriter.WriteCollection
 00499BFE    xor         eax,eax
 00499C00    pop         edx
 00499C01    pop         ecx
 00499C02    pop         ecx
 00499C03    mov         dword ptr fs:[eax],edx
 00499C06    push        499C24
 00499C0B    mov         eax,dword ptr [ebp+8]
 00499C0E    mov         eax,dword ptr [eax-8]
 00499C11    add         eax,2C
 00499C14    mov         edx,dword ptr [ebp-4]
 00499C17    call        @UStrAsg
 00499C1C    ret
>00499C1D    jmp         @HandleFinally
>00499C22    jmp         00499C0B
 00499C24    xor         eax,eax
 00499C26    pop         edx
 00499C27    pop         ecx
 00499C28    pop         ecx
 00499C29    mov         dword ptr fs:[eax],edx
 00499C2C    push        499C41
 00499C31    lea         eax,[ebp-4]
 00499C34    call        @UStrClr
 00499C39    ret
>00499C3A    jmp         @HandleFinally
>00499C3F    jmp         00499C31
 00499C41    pop         ebx
 00499C42    pop         ecx
 00499C43    pop         ebp
 00499C44    ret
end;*}

//00499C48
{*procedure sub_00499C48(?:?);
begin
 00499C48    push        ebp
 00499C49    mov         ebp,esp
 00499C4B    push        0
 00499C4D    push        ebx
 00499C4E    xor         eax,eax
 00499C50    push        ebp
 00499C51    push        499D32
 00499C56    push        dword ptr fs:[eax]
 00499C59    mov         dword ptr fs:[eax],esp
 00499C5C    mov         eax,dword ptr [ebp+8]
 00499C5F    mov         edx,dword ptr [eax-4]
 00499C62    mov         eax,dword ptr [ebp+8]
 00499C65    mov         eax,dword ptr [eax-10]
 00499C68    call        GetOrdProp
 00499C6D    mov         ebx,eax
 00499C6F    mov         eax,dword ptr [ebp+8]
 00499C72    push        eax
 00499C73    call        00499A3C
 00499C78    pop         ecx
 00499C79    mov         eax,dword ptr [ebp+8]
 00499C7C    mov         eax,dword ptr [eax-0C]
 00499C7F    movzx       eax,byte ptr [eax]
 00499C82    cmp         eax,9
>00499C85    ja          00499D1C
 00499C8B    jmp         dword ptr [eax*4+499C92]
 00499C8B    dd          00499D1C
 00499C8B    dd          00499CBA
 00499C8B    dd          00499CD2
 00499C8B    dd          00499CFE
 00499C8B    dd          00499D1C
 00499C8B    dd          00499D1C
 00499C8B    dd          00499CF0
 00499C8B    dd          00499D1C
 00499C8B    dd          00499D1C
 00499C8B    dd          00499CE1
 00499CBA    mov         eax,dword ptr [ebp+8]
 00499CBD    push        eax
 00499CBE    mov         eax,dword ptr [ebp+8]
 00499CC1    mov         eax,dword ptr [eax-4]
 00499CC4    mov         eax,dword ptr [eax]
 00499CC6    mov         eax,dword ptr [eax]
 00499CC8    mov         edx,ebx
 00499CCA    call        00499B38
 00499CCF    pop         ecx
>00499CD0    jmp         00499D1C
 00499CD2    mov         edx,ebx
 00499CD4    mov         eax,dword ptr [ebp+8]
 00499CD7    mov         eax,dword ptr [eax-8]
 00499CDA    call        TWriter.WriteChar
>00499CDF    jmp         00499D1C
 00499CE1    mov         eax,dword ptr [ebp+8]
 00499CE4    mov         eax,dword ptr [eax-8]
 00499CE7    mov         edx,ebx
 00499CE9    call        TWriter.WriteChar
>00499CEE    jmp         00499D1C
 00499CF0    mov         eax,dword ptr [ebp+8]
 00499CF3    push        eax
 00499CF4    mov         eax,ebx
 00499CF6    call        00499AA4
 00499CFB    pop         ecx
>00499CFC    jmp         00499D1C
 00499CFE    lea         ecx,[ebp-4]
 00499D01    mov         eax,dword ptr [ebp+8]
 00499D04    mov         eax,dword ptr [eax-0C]
 00499D07    mov         edx,ebx
 00499D09    call        GetEnumName
 00499D0E    mov         edx,dword ptr [ebp-4]
 00499D11    mov         eax,dword ptr [ebp+8]
 00499D14    mov         eax,dword ptr [eax-8]
 00499D17    call        TWriter.WriteIdent
 00499D1C    xor         eax,eax
 00499D1E    pop         edx
 00499D1F    pop         ecx
 00499D20    pop         ecx
 00499D21    mov         dword ptr fs:[eax],edx
 00499D24    push        499D39
 00499D29    lea         eax,[ebp-4]
 00499D2C    call        @UStrClr
 00499D31    ret
>00499D32    jmp         @HandleFinally
>00499D37    jmp         00499D29
 00499D39    pop         ebx
 00499D3A    pop         ecx
 00499D3B    pop         ebp
 00499D3C    ret
end;*}

//00499D40
{*procedure sub_00499D40(?:?);
begin
 00499D40    push        ebp
 00499D41    mov         ebp,esp
 00499D43    add         esp,0FFFFFFF0
 00499D46    mov         eax,dword ptr [ebp+8]
 00499D49    mov         edx,dword ptr [eax-4]
 00499D4C    mov         eax,dword ptr [ebp+8]
 00499D4F    mov         eax,dword ptr [eax-10]
 00499D52    call        GetFloatProp
 00499D57    fstp        tbyte ptr [ebp-10]
 00499D5A    wait
 00499D5B    mov         eax,dword ptr [ebp+8]
 00499D5E    push        eax
 00499D5F    call        00499A3C
 00499D64    pop         ecx
 00499D65    movzx       eax,word ptr [ebp-8]
 00499D69    push        eax
 00499D6A    push        dword ptr [ebp-0C]
 00499D6D    push        dword ptr [ebp-10]
 00499D70    mov         eax,dword ptr [ebp+8]
 00499D73    mov         eax,dword ptr [eax-8]
 00499D76    call        TWriter.WriteFloat
 00499D7B    mov         esp,ebp
 00499D7D    pop         ebp
 00499D7E    ret
end;*}

//00499D80
{*procedure sub_00499D80(?:?);
begin
 00499D80    push        ebp
 00499D81    mov         ebp,esp
 00499D83    add         esp,0FFFFFFF8
 00499D86    mov         eax,dword ptr [ebp+8]
 00499D89    mov         edx,dword ptr [eax-4]
 00499D8C    mov         eax,dword ptr [ebp+8]
 00499D8F    mov         eax,dword ptr [eax-10]
 00499D92    call        GetInt64Prop
 00499D97    mov         dword ptr [ebp-8],eax
 00499D9A    mov         dword ptr [ebp-4],edx
 00499D9D    mov         eax,dword ptr [ebp+8]
 00499DA0    push        eax
 00499DA1    call        00499A3C
 00499DA6    pop         ecx
 00499DA7    push        dword ptr [ebp-4]
 00499DAA    push        dword ptr [ebp-8]
 00499DAD    mov         eax,dword ptr [ebp+8]
 00499DB0    mov         eax,dword ptr [eax-8]
 00499DB3    call        TWriter.WriteInteger
 00499DB8    pop         ecx
 00499DB9    pop         ecx
 00499DBA    pop         ebp
 00499DBB    ret
end;*}

//00499DBC
{*procedure sub_00499DBC(?:?);
begin
 00499DBC    push        ebp
 00499DBD    mov         ebp,esp
 00499DBF    push        0
 00499DC1    xor         eax,eax
 00499DC3    push        ebp
 00499DC4    push        499E11
 00499DC9    push        dword ptr fs:[eax]
 00499DCC    mov         dword ptr fs:[eax],esp
 00499DCF    lea         ecx,[ebp-4]
 00499DD2    mov         eax,dword ptr [ebp+8]
 00499DD5    mov         edx,dword ptr [eax-4]
 00499DD8    mov         eax,dword ptr [ebp+8]
 00499DDB    mov         eax,dword ptr [eax-10]
 00499DDE    call        GetStrProp
 00499DE3    mov         eax,dword ptr [ebp+8]
 00499DE6    push        eax
 00499DE7    call        00499A3C
 00499DEC    pop         ecx
 00499DED    mov         eax,dword ptr [ebp+8]
 00499DF0    mov         eax,dword ptr [eax-8]
 00499DF3    mov         edx,dword ptr [ebp-4]
 00499DF6    call        TWriter.WriteString
 00499DFB    xor         eax,eax
 00499DFD    pop         edx
 00499DFE    pop         ecx
 00499DFF    pop         ecx
 00499E00    mov         dword ptr fs:[eax],edx
 00499E03    push        499E18
 00499E08    lea         eax,[ebp-4]
 00499E0B    call        @UStrClr
 00499E10    ret
>00499E11    jmp         @HandleFinally
>00499E16    jmp         00499E08
 00499E18    pop         ecx
 00499E19    pop         ebp
 00499E1A    ret
end;*}

//00499E1C
function OwnedBy(Component:TComponent; Owner:TComponent):Boolean;
begin
{*
 00499E1C    mov         cl,1
 00499E1E    test        eax,eax
>00499E20    je          00499E2D
 00499E22    cmp         edx,eax
>00499E24    je          00499E2F
 00499E26    mov         eax,dword ptr [eax+4]
 00499E29    test        eax,eax
>00499E2B    jne         00499E22
 00499E2D    xor         ecx,ecx
 00499E2F    mov         eax,ecx
 00499E31    ret
*}
end;

//00499E34
{*procedure sub_00499E34(?:NativeInt; ?:?; ?:?);
begin
 00499E34    push        ebp
 00499E35    mov         ebp,esp
 00499E37    push        0
 00499E39    push        ebx
 00499E3A    push        esi
 00499E3B    push        edi
 00499E3C    mov         esi,edx
 00499E3E    mov         ebx,eax
 00499E40    xor         eax,eax
 00499E42    push        ebp
 00499E43    push        499F23
 00499E48    push        dword ptr fs:[eax]
 00499E4B    mov         dword ptr fs:[eax],esp
 00499E4E    mov         eax,dword ptr [ebp+8]
 00499E51    mov         eax,dword ptr [eax-8]
 00499E54    mov         eax,dword ptr [eax+1C]
 00499E57    cmp         eax,dword ptr [ebx+4]
>00499E5A    jne         00499E6B
 00499E5C    mov         eax,esi
 00499E5E    mov         edx,dword ptr [ebx+8]
 00499E61    call        @UStrAsg
>00499E66    jmp         00499F0D
 00499E6B    mov         edx,dword ptr [ebp+8]
 00499E6E    cmp         eax,ebx
>00499E70    jne         00499E83
 00499E72    mov         eax,esi
 00499E74    mov         edx,499F3C;'Owner'
 00499E79    call        @UStrAsg
>00499E7E    jmp         00499F0D
 00499E83    mov         edi,dword ptr [ebx+4]
 00499E86    test        edi,edi
>00499E88    je          00499EEF
 00499E8A    cmp         dword ptr [edi+8],0
>00499E8E    je          00499EEF
 00499E90    cmp         dword ptr [ebx+8],0
>00499E94    je          00499EEF
 00499E96    mov         eax,dword ptr [ebp+8]
 00499E99    mov         eax,dword ptr [eax-8]
 00499E9C    mov         edx,dword ptr [eax+1C]
 00499E9F    mov         eax,edi
 00499EA1    call        OwnedBy
 00499EA6    test        al,al
>00499EA8    je          00499ED3
 00499EAA    mov         eax,dword ptr [ebp+8]
 00499EAD    push        eax
 00499EAE    lea         edx,[ebp-4]
 00499EB1    mov         eax,dword ptr [ebx+4]
 00499EB4    call        00499E34
 00499EB9    pop         ecx
 00499EBA    push        dword ptr [ebp-4]
 00499EBD    push        499F54;'.'
 00499EC2    push        dword ptr [ebx+8]
 00499EC5    mov         eax,esi
 00499EC7    mov         edx,3
 00499ECC    call        @UStrCatN
>00499ED1    jmp         00499F0D
 00499ED3    mov         eax,dword ptr [ebx+4]
 00499ED6    push        dword ptr [eax+8]
 00499ED9    push        499F54;'.'
 00499EDE    push        dword ptr [ebx+8]
 00499EE1    mov         eax,esi
 00499EE3    mov         edx,3
 00499EE8    call        @UStrCatN
>00499EED    jmp         00499F0D
 00499EEF    cmp         dword ptr [ebx+8],0
>00499EF3    je          00499F06
 00499EF5    mov         eax,esi
 00499EF7    mov         ecx,499F64;'.Owner'
 00499EFC    mov         edx,dword ptr [ebx+8]
 00499EFF    call        @UStrCat3
>00499F04    jmp         00499F0D
 00499F06    mov         eax,esi
 00499F08    call        @UStrClr
 00499F0D    xor         eax,eax
 00499F0F    pop         edx
 00499F10    pop         ecx
 00499F11    pop         ecx
 00499F12    mov         dword ptr fs:[eax],edx
 00499F15    push        499F2A
 00499F1A    lea         eax,[ebp-4]
 00499F1D    call        @UStrClr
 00499F22    ret
>00499F23    jmp         @HandleFinally
>00499F28    jmp         00499F1A
 00499F2A    pop         edi
 00499F2B    pop         esi
 00499F2C    pop         ebx
 00499F2D    pop         ecx
 00499F2E    pop         ebp
 00499F2F    ret
end;*}

//00499F74
{*procedure sub_00499F74(?:?);
begin
 00499F74    push        ebp
 00499F75    mov         ebp,esp
 00499F77    add         esp,0FFFFFFE4
 00499F7A    xor         eax,eax
 00499F7C    mov         dword ptr [ebp-1C],eax
 00499F7F    mov         dword ptr [ebp-4],eax
 00499F82    mov         dword ptr [ebp-8],eax
 00499F85    xor         eax,eax
 00499F87    push        ebp
 00499F88    push        49A183
 00499F8D    push        dword ptr fs:[eax]
 00499F90    mov         dword ptr fs:[eax],esp
 00499F93    mov         eax,dword ptr [ebp+8]
 00499F96    mov         edx,dword ptr [eax-4]
 00499F99    mov         eax,dword ptr [ebp+8]
 00499F9C    mov         eax,dword ptr [eax-10]
 00499F9F    call        GetOrdProp
 00499FA4    mov         dword ptr [ebp-0C],eax
 00499FA7    cmp         dword ptr [ebp-0C],0
>00499FAB    jne         00499FC9
 00499FAD    mov         eax,dword ptr [ebp+8]
 00499FB0    push        eax
 00499FB1    call        00499A3C
 00499FB6    pop         ecx
 00499FB7    mov         eax,dword ptr [ebp+8]
 00499FBA    mov         eax,dword ptr [eax-8]
 00499FBD    mov         dl,0D
 00499FBF    call        TWriter.WriteValue
>00499FC4    jmp         0049A160
 00499FC9    mov         eax,dword ptr [ebp-0C]
 00499FCC    mov         edx,dword ptr ds:[46D778];TPersistent
 00499FD2    call        @IsClass
 00499FD7    test        al,al
>00499FD9    je          0049A160
 00499FDF    mov         eax,dword ptr [ebp-0C]
 00499FE2    mov         edx,dword ptr ds:[478C44];TComponent
 00499FE8    call        @IsClass
 00499FED    test        al,al
>00499FEF    je          0049A031
 00499FF1    mov         eax,dword ptr [ebp-0C]
 00499FF4    test        byte ptr [eax+30],4
>00499FF8    jne         0049A031
 00499FFA    mov         eax,dword ptr [ebp+8]
 00499FFD    push        eax
 00499FFE    lea         edx,[ebp-8]
 0049A001    mov         eax,dword ptr [ebp-0C]
 0049A004    call        00499E34
 0049A009    pop         ecx
 0049A00A    cmp         dword ptr [ebp-8],0
>0049A00E    je          0049A160
 0049A014    mov         eax,dword ptr [ebp+8]
 0049A017    push        eax
 0049A018    call        00499A3C
 0049A01D    pop         ecx
 0049A01E    mov         eax,dword ptr [ebp+8]
 0049A021    mov         eax,dword ptr [eax-8]
 0049A024    mov         edx,dword ptr [ebp-8]
 0049A027    call        TWriter.WriteIdent
>0049A02C    jmp         0049A160
 0049A031    mov         eax,dword ptr [ebp+8]
 0049A034    mov         eax,dword ptr [eax-8]
 0049A037    mov         eax,dword ptr [eax+20]
 0049A03A    mov         dword ptr [ebp-10],eax
 0049A03D    lea         eax,[ebp-4]
 0049A040    mov         edx,dword ptr [ebp+8]
 0049A043    mov         edx,dword ptr [edx-8]
 0049A046    mov         edx,dword ptr [edx+2C]
 0049A049    call        @UStrLAsg
 0049A04E    xor         edx,edx
 0049A050    push        ebp
 0049A051    push        49A0FC
 0049A056    push        dword ptr fs:[edx]
 0049A059    mov         dword ptr fs:[edx],esp
 0049A05C    mov         eax,dword ptr [ebp+8]
 0049A05F    mov         eax,dword ptr [eax-4]
 0049A062    add         eax,1A
 0049A065    mov         dword ptr [ebp-18],eax
 0049A068    mov         eax,dword ptr [ebp+8]
 0049A06B    mov         eax,dword ptr [eax-8]
 0049A06E    push        dword ptr [eax+2C]
 0049A071    mov         eax,dword ptr [ebp-18]
 0049A074    mov         dword ptr [ebp-14],eax
 0049A077    lea         eax,[ebp-14]
 0049A07A    lea         edx,[ebp-1C]
 0049A07D    call        TTypeInfoFieldAccessor.ToString
 0049A082    push        dword ptr [ebp-1C]
 0049A085    push        49A19C;'.'
 0049A08A    mov         eax,dword ptr [ebp+8]
 0049A08D    mov         eax,dword ptr [eax-8]
 0049A090    add         eax,2C
 0049A093    mov         edx,3
 0049A098    call        @UStrCatN
 0049A09D    mov         eax,dword ptr [ebp+8]
 0049A0A0    cmp         byte ptr [eax-11],0
>0049A0A4    je          0049A0C3
 0049A0A6    mov         eax,dword ptr [ebp+8]
 0049A0A9    mov         edx,dword ptr [eax-4]
 0049A0AC    mov         eax,dword ptr [ebp+8]
 0049A0AF    mov         eax,dword ptr [eax-8]
 0049A0B2    mov         eax,dword ptr [eax+20]
 0049A0B5    call        GetOrdProp
 0049A0BA    mov         edx,dword ptr [ebp+8]
 0049A0BD    mov         edx,dword ptr [edx-8]
 0049A0C0    mov         dword ptr [edx+20],eax
 0049A0C3    mov         eax,dword ptr [ebp+8]
 0049A0C6    mov         eax,dword ptr [eax-8]
 0049A0C9    mov         edx,dword ptr [ebp-0C]
 0049A0CC    call        TWriter.WriteProperties
 0049A0D1    xor         eax,eax
 0049A0D3    pop         edx
 0049A0D4    pop         ecx
 0049A0D5    pop         ecx
 0049A0D6    mov         dword ptr fs:[eax],edx
 0049A0D9    push        49A103
 0049A0DE    mov         eax,dword ptr [ebp+8]
 0049A0E1    mov         eax,dword ptr [eax-8]
 0049A0E4    mov         edx,dword ptr [ebp-10]
 0049A0E7    mov         dword ptr [eax+20],edx
 0049A0EA    mov         eax,dword ptr [ebp+8]
 0049A0ED    mov         eax,dword ptr [eax-8]
 0049A0F0    add         eax,2C
 0049A0F3    mov         edx,dword ptr [ebp-4]
 0049A0F6    call        @UStrAsg
 0049A0FB    ret
>0049A0FC    jmp         @HandleFinally
>0049A101    jmp         0049A0DE
 0049A103    mov         eax,dword ptr [ebp-0C]
 0049A106    mov         edx,dword ptr ds:[46DF34];TCollection
 0049A10C    call        @IsClass
 0049A111    test        al,al
>0049A113    je          0049A160
 0049A115    mov         eax,dword ptr [ebp+8]
 0049A118    cmp         byte ptr [eax-11],0
>0049A11C    je          0049A153
 0049A11E    mov         eax,dword ptr [ebp+8]
 0049A121    mov         eax,dword ptr [eax-8]
 0049A124    mov         eax,dword ptr [eax+28]
 0049A127    push        eax
 0049A128    mov         eax,dword ptr [ebp+8]
 0049A12B    mov         edx,dword ptr [eax-4]
 0049A12E    mov         eax,dword ptr [ebp+8]
 0049A131    mov         eax,dword ptr [eax-8]
 0049A134    mov         eax,dword ptr [eax+20]
 0049A137    call        GetOrdProp
 0049A13C    mov         edx,eax
 0049A13E    mov         eax,dword ptr [ebp+8]
 0049A141    mov         eax,dword ptr [eax-8]
 0049A144    mov         ecx,dword ptr [eax+1C]
 0049A147    mov         eax,dword ptr [ebp-0C]
 0049A14A    call        CollectionsEqual
 0049A14F    test        al,al
>0049A151    jne         0049A160
 0049A153    mov         eax,dword ptr [ebp+8]
 0049A156    push        eax
 0049A157    mov         eax,dword ptr [ebp-0C]
 0049A15A    call        00499BA4
 0049A15F    pop         ecx
 0049A160    xor         eax,eax
 0049A162    pop         edx
 0049A163    pop         ecx
 0049A164    pop         ecx
 0049A165    mov         dword ptr fs:[eax],edx
 0049A168    push        49A18A
 0049A16D    lea         eax,[ebp-1C]
 0049A170    call        @UStrClr
 0049A175    lea         eax,[ebp-8]
 0049A178    mov         edx,2
 0049A17D    call        @UStrArrayClr
 0049A182    ret
>0049A183    jmp         @HandleFinally
>0049A188    jmp         0049A16D
 0049A18A    mov         esp,ebp
 0049A18C    pop         ebp
 0049A18D    ret
end;*}

//0049A1A0
{*procedure sub_0049A1A0(?:?);
begin
 0049A1A0    push        ebp
 0049A1A1    mov         ebp,esp
 0049A1A3    push        0
 0049A1A5    push        0
 0049A1A7    push        0
 0049A1A9    push        ebx
 0049A1AA    xor         eax,eax
 0049A1AC    push        ebp
 0049A1AD    push        49A25D
 0049A1B2    push        dword ptr fs:[eax]
 0049A1B5    mov         dword ptr fs:[eax],esp
 0049A1B8    lea         ecx,[ebp-4]
 0049A1BB    mov         eax,dword ptr [ebp+8]
 0049A1BE    mov         edx,dword ptr [eax-4]
 0049A1C1    mov         eax,dword ptr [ebp+8]
 0049A1C4    mov         eax,dword ptr [eax-10]
 0049A1C7    call        GetInterfaceProp
 0049A1CC    cmp         dword ptr [ebp-4],0
>0049A1D0    jne         0049A1EB
 0049A1D2    mov         eax,dword ptr [ebp+8]
 0049A1D5    push        eax
 0049A1D6    call        00499A3C
 0049A1DB    pop         ecx
 0049A1DC    mov         eax,dword ptr [ebp+8]
 0049A1DF    mov         eax,dword ptr [eax-8]
 0049A1E2    mov         dl,0D
 0049A1E4    call        TWriter.WriteValue
>0049A1E9    jmp         0049A237
 0049A1EB    lea         eax,[ebp-8]
 0049A1EE    call        @IntfClear
 0049A1F3    mov         ecx,eax
 0049A1F5    mov         edx,49A26C;['{E28B1858-EC86-4559-8FCD-6B4F824151ED}']
 0049A1FA    mov         eax,dword ptr [ebp-4]
 0049A1FD    call        Supports
 0049A202    test        al,al
>0049A204    je          0049A237
 0049A206    mov         eax,dword ptr [ebp-8]
 0049A209    mov         edx,dword ptr [eax]
 0049A20B    call        dword ptr [edx+0C]
 0049A20E    mov         ebx,eax
 0049A210    mov         eax,dword ptr [ebp+8]
 0049A213    push        eax
 0049A214    lea         edx,[ebp-0C]
 0049A217    mov         eax,ebx
 0049A219    call        00499E34
 0049A21E    pop         ecx
 0049A21F    mov         eax,dword ptr [ebp+8]
 0049A222    push        eax
 0049A223    call        00499A3C
 0049A228    pop         ecx
 0049A229    mov         eax,dword ptr [ebp+8]
 0049A22C    mov         eax,dword ptr [eax-8]
 0049A22F    mov         edx,dword ptr [ebp-0C]
 0049A232    call        TWriter.WriteIdent
 0049A237    xor         eax,eax
 0049A239    pop         edx
 0049A23A    pop         ecx
 0049A23B    pop         ecx
 0049A23C    mov         dword ptr fs:[eax],edx
 0049A23F    push        49A264
 0049A244    lea         eax,[ebp-0C]
 0049A247    call        @UStrClr
 0049A24C    lea         eax,[ebp-8]
 0049A24F    call        @IntfClear
 0049A254    lea         eax,[ebp-4]
 0049A257    call        @IntfClear
 0049A25C    ret
>0049A25D    jmp         @HandleFinally
>0049A262    jmp         0049A244
 0049A264    pop         ebx
 0049A265    mov         esp,ebp
 0049A267    pop         ebp
 0049A268    ret
end;*}

//0049A27C
{*procedure sub_0049A27C(?:?);
begin
 0049A27C    push        ebp
 0049A27D    mov         ebp,esp
 0049A27F    add         esp,0FFFFFFF4
 0049A282    push        ebx
 0049A283    xor         eax,eax
 0049A285    mov         dword ptr [ebp-0C],eax
 0049A288    xor         eax,eax
 0049A28A    push        ebp
 0049A28B    push        49A2FE
 0049A290    push        dword ptr fs:[eax]
 0049A293    mov         dword ptr fs:[eax],esp
 0049A296    lea         ecx,[ebp-8]
 0049A299    mov         eax,dword ptr [ebp+8]
 0049A29C    mov         edx,dword ptr [eax-4]
 0049A29F    mov         eax,dword ptr [ebp+8]
 0049A2A2    mov         eax,dword ptr [eax-10]
 0049A2A5    call        GetMethodProp
 0049A2AA    mov         eax,dword ptr [ebp+8]
 0049A2AD    push        eax
 0049A2AE    call        00499A3C
 0049A2B3    pop         ecx
 0049A2B4    cmp         dword ptr [ebp-8],0
>0049A2B8    jne         0049A2C9
 0049A2BA    mov         eax,dword ptr [ebp+8]
 0049A2BD    mov         eax,dword ptr [eax-8]
 0049A2C0    mov         dl,0D
 0049A2C2    call        TWriter.WriteValue
>0049A2C7    jmp         0049A2E8
 0049A2C9    lea         ecx,[ebp-0C]
 0049A2CC    mov         eax,dword ptr [ebp+8]
 0049A2CF    mov         eax,dword ptr [eax-8]
 0049A2D2    lea         edx,[ebp-8]
 0049A2D5    mov         ebx,dword ptr [eax]
 0049A2D7    call        dword ptr [ebx+14]
 0049A2DA    mov         edx,dword ptr [ebp-0C]
 0049A2DD    mov         eax,dword ptr [ebp+8]
 0049A2E0    mov         eax,dword ptr [eax-8]
 0049A2E3    call        TWriter.WriteIdent
 0049A2E8    xor         eax,eax
 0049A2EA    pop         edx
 0049A2EB    pop         ecx
 0049A2EC    pop         ecx
 0049A2ED    mov         dword ptr fs:[eax],edx
 0049A2F0    push        49A305
 0049A2F5    lea         eax,[ebp-0C]
 0049A2F8    call        @UStrClr
 0049A2FD    ret
>0049A2FE    jmp         @HandleFinally
>0049A303    jmp         0049A2F5
 0049A305    pop         ebx
 0049A306    mov         esp,ebp
 0049A308    pop         ebp
 0049A309    ret
end;*}

//0049A30C
{*procedure sub_0049A30C(?:?);
begin
 0049A30C    push        ebp
 0049A30D    mov         ebp,esp
 0049A30F    xor         ecx,ecx
 0049A311    push        ecx
 0049A312    push        ecx
 0049A313    push        ecx
 0049A314    push        ecx
 0049A315    xor         eax,eax
 0049A317    push        ebp
 0049A318    push        49A365
 0049A31D    push        dword ptr fs:[eax]
 0049A320    mov         dword ptr fs:[eax],esp
 0049A323    lea         ecx,[ebp-10]
 0049A326    mov         eax,dword ptr [ebp+8]
 0049A329    mov         edx,dword ptr [eax-4]
 0049A32C    mov         eax,dword ptr [ebp+8]
 0049A32F    mov         eax,dword ptr [eax-10]
 0049A332    call        GetVariantProp
 0049A337    mov         eax,dword ptr [ebp+8]
 0049A33A    push        eax
 0049A33B    call        00499A3C
 0049A340    pop         ecx
 0049A341    lea         edx,[ebp-10]
 0049A344    mov         eax,dword ptr [ebp+8]
 0049A347    mov         eax,dword ptr [eax-8]
 0049A34A    call        TWriter.WriteVariant
 0049A34F    xor         eax,eax
 0049A351    pop         edx
 0049A352    pop         ecx
 0049A353    pop         ecx
 0049A354    mov         dword ptr fs:[eax],edx
 0049A357    push        49A36C
 0049A35C    lea         eax,[ebp-10]
 0049A35F    call        @VarClr
 0049A364    ret
>0049A365    jmp         @HandleFinally
>0049A36A    jmp         0049A35C
 0049A36C    mov         esp,ebp
 0049A36E    pop         ebp
 0049A36F    ret
end;*}

//0049A370
{*procedure sub_0049A370(?:?; ?:?; ?:?);
begin
 0049A370    push        ebp
 0049A371    mov         ebp,esp
 0049A373    add         esp,0FFFFFFEC
 0049A376    mov         dword ptr [ebp-4],ecx
 0049A379    mov         dword ptr [ebp-10],edx
 0049A37C    mov         dword ptr [ebp-8],eax
 0049A37F    mov         eax,dword ptr [ebp-4]
 0049A382    cmp         dword ptr [eax+4],0
>0049A386    je          0049A4BE
 0049A38C    mov         eax,dword ptr [ebp-4]
 0049A38F    cmp         dword ptr [eax+8],0
>0049A393    jne         0049A3D8
 0049A395    mov         eax,dword ptr [ebp-4]
 0049A398    mov         eax,dword ptr [eax]
 0049A39A    mov         eax,dword ptr [eax]
 0049A39C    cmp         byte ptr [eax],7
>0049A39F    jne         0049A4BE
 0049A3A5    mov         edx,dword ptr [ebp-4]
 0049A3A8    mov         eax,dword ptr [ebp-10]
 0049A3AB    call        GetOrdProp
 0049A3B0    mov         edx,dword ptr ds:[478C44];TComponent
 0049A3B6    call        @IsClass
 0049A3BB    test        al,al
>0049A3BD    je          0049A4BE
 0049A3C3    mov         edx,dword ptr [ebp-4]
 0049A3C6    mov         eax,dword ptr [ebp-10]
 0049A3C9    call        GetOrdProp
 0049A3CE    test        byte ptr [eax+30],4
>0049A3D2    je          0049A4BE
 0049A3D8    mov         eax,dword ptr [ebp-8]
 0049A3DB    push        eax
 0049A3DC    push        49AB50;TWriter.GetLookupInfo
 0049A3E1    mov         eax,dword ptr [ebp-8]
 0049A3E4    push        dword ptr [eax+4C]
 0049A3E7    push        dword ptr [eax+48]
 0049A3EA    mov         ecx,dword ptr [ebp-8]
 0049A3ED    mov         edx,dword ptr [ebp-4]
 0049A3F0    mov         eax,dword ptr [ebp-10]
 0049A3F3    call        004998D8
 0049A3F8    test        al,al
>0049A3FA    jne         0049A4BE
 0049A400    mov         eax,dword ptr [ebp-8]
 0049A403    mov         ecx,dword ptr [eax+28]
 0049A406    mov         eax,dword ptr [ebp-8]
 0049A409    mov         edx,dword ptr [eax+18]
 0049A40C    mov         eax,dword ptr [ebp-8]
 0049A40F    mov         eax,dword ptr [eax+20]
 0049A412    call        AncestorIsValid
 0049A417    mov         byte ptr [ebp-11],al
 0049A41A    mov         eax,dword ptr [ebp-4]
 0049A41D    mov         eax,dword ptr [eax]
 0049A41F    mov         eax,dword ptr [eax]
 0049A421    mov         dword ptr [ebp-0C],eax
 0049A424    mov         eax,dword ptr [ebp-0C]
 0049A427    movzx       eax,byte ptr [eax]
 0049A42A    cmp         eax,12
>0049A42D    ja          0049A4BE
 0049A433    movzx       eax,byte ptr [eax+49A441]
 0049A43A    jmp         dword ptr [eax*4+49A454]
 0049A43A    db          0
 0049A43A    db          1
 0049A43A    db          1
 0049A43A    db          1
 0049A43A    db          2
 0049A43A    db          3
 0049A43A    db          1
 0049A43A    db          4
 0049A43A    db          5
 0049A43A    db          1
 0049A43A    db          3
 0049A43A    db          3
 0049A43A    db          6
 0049A43A    db          0
 0049A43A    db          0
 0049A43A    db          8
 0049A43A    db          7
 0049A43A    db          0
 0049A43A    db          3
 0049A43A    dd          0049A4BE
 0049A43A    dd          0049A478
 0049A43A    dd          0049A481
 0049A43A    dd          0049A48A
 0049A43A    dd          0049A493
 0049A43A    dd          0049A49C
 0049A43A    dd          0049A4A5
 0049A43A    dd          0049A4AE
 0049A43A    dd          0049A4B7
 0049A478    push        ebp
 0049A479    call        00499C48
 0049A47E    pop         ecx
>0049A47F    jmp         0049A4BE
 0049A481    push        ebp
 0049A482    call        00499D40
 0049A487    pop         ecx
>0049A488    jmp         0049A4BE
 0049A48A    push        ebp
 0049A48B    call        00499DBC
 0049A490    pop         ecx
>0049A491    jmp         0049A4BE
 0049A493    push        ebp
 0049A494    call        00499F74
 0049A499    pop         ecx
>0049A49A    jmp         0049A4BE
 0049A49C    push        ebp
 0049A49D    call        0049A27C
 0049A4A2    pop         ecx
>0049A4A3    jmp         0049A4BE
 0049A4A5    push        ebp
 0049A4A6    call        0049A30C
 0049A4AB    pop         ecx
>0049A4AC    jmp         0049A4BE
 0049A4AE    push        ebp
 0049A4AF    call        00499D80
 0049A4B4    pop         ecx
>0049A4B5    jmp         0049A4BE
 0049A4B7    push        ebp
 0049A4B8    call        0049A1A0
 0049A4BD    pop         ecx
 0049A4BE    mov         esp,ebp
 0049A4C0    pop         ebp
 0049A4C1    ret
end;*}

//0049A4C4
procedure TWriter.WriteVariant(Value:Variant);
begin
{*
 0049A4C4    push        ebp
 0049A4C5    mov         ebp,esp
 0049A4C7    add         esp,0FFFFFFB8
 0049A4CA    push        ebx
 0049A4CB    push        esi
 0049A4CC    push        edi
 0049A4CD    xor         ecx,ecx
 0049A4CF    mov         dword ptr [ebp-48],ecx
 0049A4D2    mov         dword ptr [ebp-44],ecx
 0049A4D5    mov         dword ptr [ebp-40],ecx
 0049A4D8    mov         dword ptr [ebp-30],ecx
 0049A4DB    mov         dword ptr [ebp-2C],ecx
 0049A4DE    mov         dword ptr [ebp-4],ecx
 0049A4E1    mov         dword ptr [ebp-0C],edx
 0049A4E4    mov         dword ptr [ebp-8],eax
 0049A4E7    xor         eax,eax
 0049A4E9    push        ebp
 0049A4EA    push        49A89C
 0049A4EF    push        dword ptr fs:[eax]
 0049A4F2    mov         dword ptr fs:[eax],esp
 0049A4F5    mov         eax,dword ptr [ebp-0C]
 0049A4F8    call        VarIsArray
 0049A4FD    test        al,al
>0049A4FF    je          0049A518
 0049A501    mov         ecx,dword ptr ds:[7C486C];^SResString149:TResStringRec
 0049A507    mov         dl,1
 0049A509    mov         eax,[0046B9E4];EWriteError
 0049A50E    call        Exception.CreateRes;EWriteError.Create
 0049A513    call        @RaiseExcept
 0049A518    mov         eax,dword ptr [ebp-0C]
 0049A51B    movzx       eax,word ptr [eax]
 0049A51E    and         ax,0FFF
 0049A522    movzx       eax,ax
 0049A525    cmp         eax,7
>0049A528    jg          0049A55C
>0049A52A    je          0049A650
 0049A530    cmp         eax,6
>0049A533    ja          0049A6BA
 0049A539    jmp         dword ptr [eax*4+49A540]
 0049A539    dd          0049A591
 0049A539    dd          0049A5A0
 0049A539    dd          0049A5E5
 0049A539    dd          0049A5E5
 0049A539    dd          0049A5FC
 0049A539    dd          0049A618
 0049A539    dd          0049A634
 0049A55C    cmp         eax,10
>0049A55F    jge         0049A574
 0049A561    sub         eax,8
>0049A564    je          0049A5AF
 0049A566    sub         eax,3
>0049A569    je          0049A66F
>0049A56F    jmp         0049A6BA
 0049A574    add         eax,0FFFFFFF0
 0049A577    sub         eax,3
>0049A57A    jb          0049A5E5
 0049A57C    sub         eax,2
>0049A57F    jb          0049A699
 0049A585    sub         eax,0EB
>0049A58A    je          0049A5CA
>0049A58C    jmp         0049A6BA
 0049A591    mov         dl,0D
 0049A593    mov         eax,dword ptr [ebp-8]
 0049A596    call        TWriter.WriteValue
>0049A59B    jmp         0049A864
 0049A5A0    xor         edx,edx
 0049A5A2    mov         eax,dword ptr [ebp-8]
 0049A5A5    call        TWriter.WriteValue
>0049A5AA    jmp         0049A864
 0049A5AF    lea         eax,[ebp-2C]
 0049A5B2    mov         edx,dword ptr [ebp-0C]
 0049A5B5    call        @VarToUStr
 0049A5BA    mov         edx,dword ptr [ebp-2C]
 0049A5BD    mov         eax,dword ptr [ebp-8]
 0049A5C0    call        TWriter.WriteString
>0049A5C5    jmp         0049A864
 0049A5CA    lea         eax,[ebp-30]
 0049A5CD    mov         edx,dword ptr [ebp-0C]
 0049A5D0    call        @VarToUStr
 0049A5D5    mov         edx,dword ptr [ebp-30]
 0049A5D8    mov         eax,dword ptr [ebp-8]
 0049A5DB    call        TWriter.WriteString
>0049A5E0    jmp         0049A864
 0049A5E5    mov         eax,dword ptr [ebp-0C]
 0049A5E8    call        @VarToInt64
 0049A5ED    push        edx
 0049A5EE    push        eax
 0049A5EF    mov         eax,dword ptr [ebp-8]
 0049A5F2    call        TWriter.WriteInteger
>0049A5F7    jmp         0049A864
 0049A5FC    mov         eax,dword ptr [ebp-0C]
 0049A5FF    call        @VarToReal
 0049A604    fstp        dword ptr [ebp-34]
 0049A607    wait
 0049A608    push        dword ptr [ebp-34]
 0049A60B    mov         eax,dword ptr [ebp-8]
 0049A60E    call        TWriter.WriteSingle
>0049A613    jmp         0049A864
 0049A618    mov         eax,dword ptr [ebp-0C]
 0049A61B    call        @VarToReal
 0049A620    add         esp,0FFFFFFF4
 0049A623    fstp        tbyte ptr [esp]
 0049A626    wait
 0049A627    mov         eax,dword ptr [ebp-8]
 0049A62A    call        TWriter.WriteFloat
>0049A62F    jmp         0049A864
 0049A634    mov         eax,dword ptr [ebp-0C]
 0049A637    call        @VarToCurrency
 0049A63C    add         esp,0FFFFFFF8
 0049A63F    fistp       qword ptr [esp]
 0049A642    wait
 0049A643    mov         eax,dword ptr [ebp-8]
 0049A646    call        TWriter.WriteCurrency
>0049A64B    jmp         0049A864
 0049A650    mov         eax,dword ptr [ebp-0C]
 0049A653    call        @VarToReal
 0049A658    fstp        qword ptr [ebp-3C]
 0049A65B    wait
 0049A65C    push        dword ptr [ebp-38]
 0049A65F    push        dword ptr [ebp-3C]
 0049A662    mov         eax,dword ptr [ebp-8]
 0049A665    call        TWriter.WriteDate
>0049A66A    jmp         0049A864
 0049A66F    mov         eax,dword ptr [ebp-0C]
 0049A672    call        @VarToBool
 0049A677    test        al,al
>0049A679    je          0049A68A
 0049A67B    mov         dl,9
 0049A67D    mov         eax,dword ptr [ebp-8]
 0049A680    call        TWriter.WriteValue
>0049A685    jmp         0049A864
 0049A68A    mov         dl,8
 0049A68C    mov         eax,dword ptr [ebp-8]
 0049A68F    call        TWriter.WriteValue
>0049A694    jmp         0049A864
 0049A699    mov         eax,dword ptr [ebp-0C]
 0049A69C    call        @VarToInt64
 0049A6A1    mov         dword ptr [ebp-28],eax
 0049A6A4    mov         dword ptr [ebp-24],edx
 0049A6A7    push        dword ptr [ebp-24]
 0049A6AA    push        dword ptr [ebp-28]
 0049A6AD    mov         eax,dword ptr [ebp-8]
 0049A6B0    call        TWriter.WriteInteger
>0049A6B5    jmp         0049A864
 0049A6BA    xor         eax,eax
 0049A6BC    push        ebp
 0049A6BD    push        49A843
 0049A6C2    push        dword ptr fs:[eax]
 0049A6C5    mov         dword ptr fs:[eax],esp
 0049A6C8    lea         edx,[ebp-10]
 0049A6CB    mov         eax,dword ptr [ebp-0C]
 0049A6CE    movzx       eax,word ptr [eax]
 0049A6D1    call        FindCustomVariantType
 0049A6D6    test        al,al
>0049A6D8    je          0049A700
 0049A6DA    lea         eax,[ebp-4]
 0049A6DD    call        @IntfClear
 0049A6E2    push        eax
 0049A6E3    lea         eax,[ebp-40]
 0049A6E6    mov         edx,dword ptr [ebp-0C]
 0049A6E9    call        @VarToIntf
 0049A6EE    mov         eax,dword ptr [ebp-40]
 0049A6F1    mov         edx,49A8AC;['{D60BA026-5E42-4C2A-BB01-3F1C8F30A28E}']
 0049A6F6    pop         ecx
 0049A6F7    call        Supports
 0049A6FC    test        al,al
>0049A6FE    jne         0049A71B
 0049A700    lea         eax,[ebp-44]
 0049A703    mov         edx,dword ptr [ebp-0C]
 0049A706    call        @VarToUStr
 0049A70B    mov         edx,dword ptr [ebp-44]
 0049A70E    mov         eax,dword ptr [ebp-8]
 0049A711    call        TWriter.WriteString
>0049A716    jmp         0049A839
 0049A71B    xor         eax,eax
 0049A71D    mov         dword ptr [ebp-18],eax
 0049A720    mov         dl,1
 0049A722    mov         eax,[00472CE4];TMemoryStream
 0049A727    call        TObject.Create;TMemoryStream.Create
 0049A72C    mov         dword ptr [ebp-14],eax
 0049A72F    xor         eax,eax
 0049A731    push        ebp
 0049A732    push        49A832
 0049A737    push        dword ptr fs:[eax]
 0049A73A    mov         dword ptr fs:[eax],esp
 0049A73D    mov         dl,1
 0049A73F    mov         eax,[00472CE4];TMemoryStream
 0049A744    call        TObject.Create;TMemoryStream.Create
 0049A749    mov         dword ptr [ebp-18],eax
 0049A74C    push        400
 0049A751    mov         ecx,dword ptr [ebp-14]
 0049A754    mov         dl,1
 0049A756    mov         eax,[00476148];TWriter
 0049A75B    call        TFiler.Create;TWriter.Create
 0049A760    mov         dword ptr [ebp-1C],eax
 0049A763    xor         eax,eax
 0049A765    push        ebp
 0049A766    push        49A7D8
 0049A76B    push        dword ptr fs:[eax]
 0049A76E    mov         dword ptr fs:[eax],esp
 0049A771    mov         edx,dword ptr [ebp-0C]
 0049A774    mov         ecx,dword ptr [ebp-18]
 0049A777    mov         eax,dword ptr [ebp-4]
 0049A77A    mov         ebx,dword ptr [eax]
 0049A77C    call        dword ptr [ebx+10]
 0049A77F    mov         eax,dword ptr [ebp-18]
 0049A782    mov         edx,dword ptr [eax]
 0049A784    call        dword ptr [edx];TMemoryStream.sub_00491B30
 0049A786    mov         dword ptr [ebp-20],eax
 0049A789    lea         edx,[ebp-48]
 0049A78C    mov         eax,dword ptr [ebp-10]
 0049A78F    mov         eax,dword ptr [eax]
 0049A791    call        TObject.ClassName
 0049A796    mov         edx,dword ptr [ebp-48]
 0049A799    mov         eax,dword ptr [ebp-1C]
 0049A79C    call        TWriter.WriteString
 0049A7A1    lea         edx,[ebp-20]
 0049A7A4    mov         ecx,4
 0049A7A9    mov         eax,dword ptr [ebp-1C]
 0049A7AC    call        TWriter.Write
 0049A7B1    mov         eax,dword ptr [ebp-18]
 0049A7B4    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0049A7B7    mov         ecx,dword ptr [ebp-20]
 0049A7BA    mov         eax,dword ptr [ebp-1C]
 0049A7BD    call        TWriter.Write
 0049A7C2    xor         eax,eax
 0049A7C4    pop         edx
 0049A7C5    pop         ecx
 0049A7C6    pop         ecx
 0049A7C7    mov         dword ptr fs:[eax],edx
 0049A7CA    push        49A7DF
 0049A7CF    mov         eax,dword ptr [ebp-1C]
 0049A7D2    call        TObject.Free
 0049A7D7    ret
>0049A7D8    jmp         @HandleFinally
>0049A7DD    jmp         0049A7CF
 0049A7DF    mov         eax,dword ptr [ebp-14]
 0049A7E2    mov         edx,dword ptr [eax]
 0049A7E4    call        dword ptr [edx];TMemoryStream.sub_00491B30
 0049A7E6    mov         dword ptr [ebp-20],eax
 0049A7E9    mov         dl,0A
 0049A7EB    mov         eax,dword ptr [ebp-8]
 0049A7EE    call        TWriter.WriteValue
 0049A7F3    lea         edx,[ebp-20]
 0049A7F6    mov         ecx,4
 0049A7FB    mov         eax,dword ptr [ebp-8]
 0049A7FE    call        TWriter.Write
 0049A803    mov         eax,dword ptr [ebp-14]
 0049A806    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0049A809    mov         ecx,dword ptr [ebp-20]
 0049A80C    mov         eax,dword ptr [ebp-8]
 0049A80F    call        TWriter.Write
 0049A814    xor         eax,eax
 0049A816    pop         edx
 0049A817    pop         ecx
 0049A818    pop         ecx
 0049A819    mov         dword ptr fs:[eax],edx
 0049A81C    push        49A839
 0049A821    mov         eax,dword ptr [ebp-18]
 0049A824    call        TObject.Free
 0049A829    mov         eax,dword ptr [ebp-14]
 0049A82C    call        TObject.Free
 0049A831    ret
>0049A832    jmp         @HandleFinally
>0049A837    jmp         0049A821
 0049A839    xor         eax,eax
 0049A83B    pop         edx
 0049A83C    pop         ecx
 0049A83D    pop         ecx
 0049A83E    mov         dword ptr fs:[eax],edx
>0049A841    jmp         0049A864
>0049A843    jmp         @HandleAnyException
 0049A848    mov         ecx,dword ptr ds:[7C486C];^SResString149:TResStringRec
 0049A84E    mov         dl,1
 0049A850    mov         eax,[0046B9E4];EWriteError
 0049A855    call        Exception.CreateRes;EWriteError.Create
 0049A85A    call        @RaiseExcept
 0049A85F    call        @DoneExcept
 0049A864    xor         eax,eax
 0049A866    pop         edx
 0049A867    pop         ecx
 0049A868    pop         ecx
 0049A869    mov         dword ptr fs:[eax],edx
 0049A86C    push        49A8A3
 0049A871    lea         eax,[ebp-48]
 0049A874    mov         edx,2
 0049A879    call        @UStrArrayClr
 0049A87E    lea         eax,[ebp-40]
 0049A881    call        @IntfClear
 0049A886    lea         eax,[ebp-30]
 0049A889    mov         edx,2
 0049A88E    call        @UStrArrayClr
 0049A893    lea         eax,[ebp-4]
 0049A896    call        @IntfClear
 0049A89B    ret
>0049A89C    jmp         @HandleFinally
>0049A8A1    jmp         0049A871
 0049A8A3    pop         edi
 0049A8A4    pop         esi
 0049A8A5    pop         ebx
 0049A8A6    mov         esp,ebp
 0049A8A8    pop         ebp
 0049A8A9    ret
*}
end;

//0049A8BC
procedure TWriter.WritePropName(const PropName:UnicodeString);
begin
{*
 0049A8BC    push        ebp
 0049A8BD    mov         ebp,esp
 0049A8BF    push        0
 0049A8C1    push        ebx
 0049A8C2    push        esi
 0049A8C3    mov         esi,edx
 0049A8C5    mov         ebx,eax
 0049A8C7    xor         eax,eax
 0049A8C9    push        ebp
 0049A8CA    push        49A902
 0049A8CF    push        dword ptr fs:[eax]
 0049A8D2    mov         dword ptr fs:[eax],esp
 0049A8D5    lea         eax,[ebp-4]
 0049A8D8    mov         ecx,esi
 0049A8DA    mov         edx,dword ptr [ebx+2C]
 0049A8DD    call        @UStrCat3
 0049A8E2    mov         edx,dword ptr [ebp-4]
 0049A8E5    mov         eax,ebx
 0049A8E7    call        TWriter.WriteUTF8Str
 0049A8EC    xor         eax,eax
 0049A8EE    pop         edx
 0049A8EF    pop         ecx
 0049A8F0    pop         ecx
 0049A8F1    mov         dword ptr fs:[eax],edx
 0049A8F4    push        49A909
 0049A8F9    lea         eax,[ebp-4]
 0049A8FC    call        @UStrClr
 0049A901    ret
>0049A902    jmp         @HandleFinally
>0049A907    jmp         0049A8F9
 0049A909    pop         esi
 0049A90A    pop         ebx
 0049A90B    pop         ecx
 0049A90C    pop         ebp
 0049A90D    ret
*}
end;

//0049A910
procedure TWriter.WriteSignature;
begin
{*
 0049A910    mov         edx,7A0600
 0049A915    mov         ecx,4
 0049A91A    call        TWriter.Write
 0049A91F    ret
*}
end;

//0049A920
procedure TWriter.WriteString(Value:string);
begin
{*
 0049A920    push        ebp
 0049A921    mov         ebp,esp
 0049A923    add         esp,0FFFFFFF8
 0049A926    push        ebx
 0049A927    push        esi
 0049A928    push        edi
 0049A929    xor         ecx,ecx
 0049A92B    mov         dword ptr [ebp-4],ecx
 0049A92E    mov         esi,edx
 0049A930    mov         ebx,eax
 0049A932    xor         eax,eax
 0049A934    push        ebp
 0049A935    push        49AA9A
 0049A93A    push        dword ptr fs:[eax]
 0049A93D    mov         dword ptr fs:[eax],esp
 0049A940    call        004276C0
 0049A945    lea         ecx,[ebp-4]
 0049A948    mov         edx,esi
 0049A94A    call        TEncoding.GetBytes
 0049A94F    mov         edi,dword ptr [ebp-4]
 0049A952    mov         eax,edi
 0049A954    test        eax,eax
>0049A956    je          0049A95D
 0049A958    sub         eax,4
 0049A95B    mov         eax,dword ptr [eax]
 0049A95D    mov         edx,esi
 0049A95F    test        edx,edx
>0049A961    je          0049A968
 0049A963    sub         edx,4
 0049A966    mov         edx,dword ptr [edx]
 0049A968    add         edx,edx
 0049A96A    cmp         eax,edx
>0049A96C    jge         0049AA29
 0049A972    xor         edx,edx
 0049A974    mov         eax,edi
 0049A976    test        eax,eax
>0049A978    je          0049A97F
 0049A97A    sub         eax,4
 0049A97D    mov         eax,dword ptr [eax]
 0049A97F    dec         eax
 0049A980    test        eax,eax
>0049A982    jl          0049A9A2
 0049A984    inc         eax
 0049A985    mov         dword ptr [ebp-8],0
 0049A98C    mov         ecx,dword ptr [ebp-4]
 0049A98F    mov         esi,dword ptr [ebp-8]
 0049A992    cmp         byte ptr [ecx+esi],7F
>0049A996    jbe         0049A99C
 0049A998    mov         dl,1
>0049A99A    jmp         0049A9A2
 0049A99C    inc         dword ptr [ebp-8]
 0049A99F    dec         eax
>0049A9A0    jne         0049A98C
 0049A9A2    mov         eax,dword ptr [ebp-4]
 0049A9A5    test        eax,eax
>0049A9A7    je          0049A9AE
 0049A9A9    sub         eax,4
 0049A9AC    mov         eax,dword ptr [eax]
 0049A9AE    mov         dword ptr [ebp-8],eax
 0049A9B1    test        dl,dl
>0049A9B3    je          0049A9DF
 0049A9B5    mov         dl,14
 0049A9B7    mov         eax,ebx
 0049A9B9    call        TWriter.WriteValue
 0049A9BE    lea         edx,[ebp-8]
 0049A9C1    mov         ecx,4
 0049A9C6    mov         eax,ebx
 0049A9C8    call        TWriter.Write
 0049A9CD    mov         ecx,dword ptr [ebp-8]
 0049A9D0    mov         edx,dword ptr [ebp-4]
 0049A9D3    mov         eax,ebx
 0049A9D5    call        TWriter.Write
>0049A9DA    jmp         0049AA7E
 0049A9DF    cmp         dword ptr [ebp-8],0FF
>0049A9E6    jg          0049AA02
 0049A9E8    mov         dl,6
 0049A9EA    mov         eax,ebx
 0049A9EC    call        TWriter.WriteValue
 0049A9F1    lea         edx,[ebp-8]
 0049A9F4    mov         ecx,1
 0049A9F9    mov         eax,ebx
 0049A9FB    call        TWriter.Write
>0049AA00    jmp         0049AA1A
 0049AA02    mov         dl,0C
 0049AA04    mov         eax,ebx
 0049AA06    call        TWriter.WriteValue
 0049AA0B    lea         edx,[ebp-8]
 0049AA0E    mov         ecx,4
 0049AA13    mov         eax,ebx
 0049AA15    call        TWriter.Write
 0049AA1A    mov         ecx,dword ptr [ebp-8]
 0049AA1D    mov         edx,dword ptr [ebp-4]
 0049AA20    mov         eax,ebx
 0049AA22    call        TWriter.Write
>0049AA27    jmp         0049AA7E
 0049AA29    call        0042768C
 0049AA2E    lea         ecx,[ebp-4]
 0049AA31    mov         edx,esi
 0049AA33    call        TEncoding.GetBytes
 0049AA38    mov         dl,12
 0049AA3A    mov         eax,ebx
 0049AA3C    call        TWriter.WriteValue
 0049AA41    mov         eax,dword ptr [ebp-4]
 0049AA44    test        eax,eax
>0049AA46    je          0049AA4D
 0049AA48    sub         eax,4
 0049AA4B    mov         eax,dword ptr [eax]
 0049AA4D    sar         eax,1
>0049AA4F    jns         0049AA54
 0049AA51    adc         eax,0
 0049AA54    mov         dword ptr [ebp-8],eax
 0049AA57    lea         edx,[ebp-8]
 0049AA5A    mov         ecx,4
 0049AA5F    mov         eax,ebx
 0049AA61    call        TWriter.Write
 0049AA66    mov         eax,dword ptr [ebp-4]
 0049AA69    test        eax,eax
>0049AA6B    je          0049AA72
 0049AA6D    sub         eax,4
 0049AA70    mov         eax,dword ptr [eax]
 0049AA72    mov         ecx,eax
 0049AA74    mov         edx,dword ptr [ebp-4]
 0049AA77    mov         eax,ebx
 0049AA79    call        TWriter.Write
 0049AA7E    xor         eax,eax
 0049AA80    pop         edx
 0049AA81    pop         ecx
 0049AA82    pop         ecx
 0049AA83    mov         dword ptr fs:[eax],edx
 0049AA86    push        49AAA1
 0049AA8B    lea         eax,[ebp-4]
 0049AA8E    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0049AA94    call        @DynArrayClear
 0049AA99    ret
>0049AA9A    jmp         @HandleFinally
>0049AA9F    jmp         0049AA8B
 0049AAA1    pop         edi
 0049AAA2    pop         esi
 0049AAA3    pop         ebx
 0049AAA4    pop         ecx
 0049AAA5    pop         ecx
 0049AAA6    pop         ebp
 0049AAA7    ret
*}
end;

//0049AAA8
procedure TWriter.WriteUTF8Str(Value:string);
begin
{*
 0049AAA8    push        ebp
 0049AAA9    mov         ebp,esp
 0049AAAB    add         esp,0FFFFFFF8
 0049AAAE    push        ebx
 0049AAAF    push        esi
 0049AAB0    xor         ecx,ecx
 0049AAB2    mov         dword ptr [ebp-4],ecx
 0049AAB5    mov         esi,edx
 0049AAB7    mov         ebx,eax
 0049AAB9    xor         eax,eax
 0049AABB    push        ebp
 0049AABC    push        49AB2D
 0049AAC1    push        dword ptr fs:[eax]
 0049AAC4    mov         dword ptr fs:[eax],esp
 0049AAC7    call        004276C0
 0049AACC    lea         ecx,[ebp-4]
 0049AACF    mov         edx,esi
 0049AAD1    call        TEncoding.GetBytes
 0049AAD6    mov         eax,dword ptr [ebp-4]
 0049AAD9    test        eax,eax
>0049AADB    je          0049AAE2
 0049AADD    sub         eax,4
 0049AAE0    mov         eax,dword ptr [eax]
 0049AAE2    mov         dword ptr [ebp-8],eax
 0049AAE5    cmp         dword ptr [ebp-8],0FF
>0049AAEC    jle         0049AAF5
 0049AAEE    mov         dword ptr [ebp-8],0FF
 0049AAF5    lea         edx,[ebp-8]
 0049AAF8    mov         ecx,1
 0049AAFD    mov         eax,ebx
 0049AAFF    call        TWriter.Write
 0049AB04    mov         ecx,dword ptr [ebp-8]
 0049AB07    mov         edx,dword ptr [ebp-4]
 0049AB0A    mov         eax,ebx
 0049AB0C    call        TWriter.Write
 0049AB11    xor         eax,eax
 0049AB13    pop         edx
 0049AB14    pop         ecx
 0049AB15    pop         ecx
 0049AB16    mov         dword ptr fs:[eax],edx
 0049AB19    push        49AB34
 0049AB1E    lea         eax,[ebp-4]
 0049AB21    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0049AB27    call        @DynArrayClear
 0049AB2C    ret
>0049AB2D    jmp         @HandleFinally
>0049AB32    jmp         0049AB1E
 0049AB34    pop         esi
 0049AB35    pop         ebx
 0049AB36    pop         ecx
 0049AB37    pop         ecx
 0049AB38    pop         ebp
 0049AB39    ret
*}
end;

//0049AB3C
procedure TWriter.WriteValue(Value:TValueType);
begin
{*
 0049AB3C    push        ecx
 0049AB3D    mov         byte ptr [esp],dl
 0049AB40    mov         edx,esp
 0049AB42    mov         ecx,1
 0049AB47    call        TWriter.Write
 0049AB4C    pop         edx
 0049AB4D    ret
*}
end;

//0049AB50
procedure TWriter.GetLookupInfo(var Ancestor:TPersistent; var Root:TComponent; var LookupRoot:TComponent; var RootAncestor:TComponent);
begin
{*
 0049AB50    push        ebp
 0049AB51    mov         ebp,esp
 0049AB53    push        ebx
 0049AB54    mov         ebx,dword ptr [eax+20]
 0049AB57    mov         dword ptr [edx],ebx
 0049AB59    mov         edx,dword ptr [eax+18]
 0049AB5C    mov         dword ptr [ecx],edx
 0049AB5E    mov         edx,dword ptr [ebp+0C]
 0049AB61    mov         ecx,dword ptr [eax+1C]
 0049AB64    mov         dword ptr [edx],ecx
 0049AB66    mov         edx,dword ptr [ebp+8]
 0049AB69    mov         eax,dword ptr [eax+28]
 0049AB6C    mov         dword ptr [edx],eax
 0049AB6E    pop         ebx
 0049AB6F    pop         ebp
 0049AB70    ret         8
*}
end;

//0049AB74
procedure BinToHex(const Buffer::29; BufOffset:Integer; var Text::29; TextOffset:Integer; Count:Integer);
begin
{*
 0049AB74    push        ebp
 0049AB75    mov         ebp,esp
 0049AB77    push        ecx
 0049AB78    push        ebx
 0049AB79    push        esi
 0049AB7A    push        edi
 0049AB7B    mov         dword ptr [ebp-4],ecx
 0049AB7E    mov         ecx,dword ptr [ebp+8]
 0049AB81    dec         ecx
 0049AB82    test        ecx,ecx
>0049AB84    jl          0049ABD8
 0049AB86    inc         ecx
 0049AB87    xor         esi,esi
 0049AB89    lea         ebx,[esi+edx]
 0049AB8C    movzx       ebx,byte ptr [eax+ebx]
 0049AB90    shr         ebx,4
 0049AB93    movzx       ebx,byte ptr [ebx+7A067C]
 0049AB9A    push        ebx
 0049AB9B    mov         ebx,esi
 0049AB9D    add         ebx,ebx
 0049AB9F    add         ebx,dword ptr [ebp+0C]
 0049ABA2    mov         edi,dword ptr [ebp-4]
 0049ABA5    mov         edi,dword ptr [edi]
 0049ABA7    add         edi,ebx
 0049ABA9    pop         ebx
 0049ABAA    mov         byte ptr [edi],bl
 0049ABAC    lea         ebx,[esi+edx]
 0049ABAF    movzx       ebx,byte ptr [eax+ebx]
 0049ABB3    and         bl,0F
 0049ABB6    movzx       ebx,bl
 0049ABB9    movzx       ebx,byte ptr [ebx+7A067C]
 0049ABC0    push        ebx
 0049ABC1    mov         ebx,esi
 0049ABC3    add         ebx,ebx
 0049ABC5    add         ebx,dword ptr [ebp+0C]
 0049ABC8    mov         edi,dword ptr [ebp-4]
 0049ABCB    mov         edi,dword ptr [edi]
 0049ABCD    lea         edi,[edi+ebx+1]
 0049ABD1    pop         ebx
 0049ABD2    mov         byte ptr [edi],bl
 0049ABD4    inc         esi
 0049ABD5    dec         ecx
>0049ABD6    jne         0049AB89
 0049ABD8    pop         edi
 0049ABD9    pop         esi
 0049ABDA    pop         ebx
 0049ABDB    pop         ecx
 0049ABDC    pop         ebp
 0049ABDD    ret         8
*}
end;

//0049ABE0
function HexToBin(const Text::29; TextOffset:Integer; var Buffer::29; BufOffset:Integer; Count:Integer):Integer;
begin
{*
 0049ABE0    push        ebp
 0049ABE1    mov         ebp,esp
 0049ABE3    add         esp,0FFFFFFF4
 0049ABE6    push        ebx
 0049ABE7    push        esi
 0049ABE8    push        edi
 0049ABE9    mov         dword ptr [ebp-4],ecx
 0049ABEC    xor         ecx,ecx
 0049ABEE    mov         dword ptr [ebp-8],ecx
 0049ABF1    mov         ecx,dword ptr [ebp+8]
 0049ABF4    dec         ecx
 0049ABF5    test        ecx,ecx
>0049ABF7    jl          0049AC8F
 0049ABFD    inc         ecx
 0049ABFE    mov         dword ptr [ebp-0C],ecx
 0049AC01    xor         esi,esi
 0049AC03    mov         ecx,esi
 0049AC05    add         ecx,ecx
 0049AC07    add         ecx,edx
 0049AC09    movzx       ecx,byte ptr [eax+ecx]
 0049AC0D    add         ecx,0FFFFFFD0
 0049AC10    sub         cx,0A
>0049AC14    jb          0049AC28
 0049AC16    add         ecx,0FFFFFFF9
 0049AC19    sub         cx,6
>0049AC1D    jb          0049AC28
 0049AC1F    add         ecx,0FFFFFFE6
 0049AC22    sub         cx,6
>0049AC26    jae         0049AC8F
 0049AC28    mov         ecx,esi
 0049AC2A    add         ecx,ecx
 0049AC2C    add         ecx,edx
 0049AC2E    movzx       ecx,byte ptr [eax+ecx+1]
 0049AC33    add         ecx,0FFFFFFD0
 0049AC36    sub         cx,0A
>0049AC3A    jb          0049AC4E
 0049AC3C    add         ecx,0FFFFFFF9
 0049AC3F    sub         cx,6
>0049AC43    jb          0049AC4E
 0049AC45    add         ecx,0FFFFFFE6
 0049AC48    sub         cx,6
>0049AC4C    jae         0049AC8F
 0049AC4E    mov         ecx,esi
 0049AC50    add         ecx,ecx
 0049AC52    add         ecx,edx
 0049AC54    movzx       ecx,byte ptr [eax+ecx]
 0049AC58    movzx       ecx,byte ptr [ecx*2+7A05A4];^'function '
 0049AC60    shl         ecx,4
 0049AC63    mov         ebx,esi
 0049AC65    add         ebx,ebx
 0049AC67    add         ebx,edx
 0049AC69    movzx       ebx,byte ptr [eax+ebx+1]
 0049AC6E    or          cl,byte ptr [ebx*2+7A05A4];^'function '
 0049AC75    mov         ebx,dword ptr [ebp+0C]
 0049AC78    add         ebx,esi
 0049AC7A    mov         edi,dword ptr [ebp-4]
 0049AC7D    mov         edi,dword ptr [edi]
 0049AC7F    mov         byte ptr [edi+ebx],cl
 0049AC82    inc         dword ptr [ebp-8]
 0049AC85    inc         esi
 0049AC86    dec         dword ptr [ebp-0C]
>0049AC89    jne         0049AC03
 0049AC8F    mov         eax,dword ptr [ebp-8]
 0049AC92    pop         edi
 0049AC93    pop         esi
 0049AC94    pop         ebx
 0049AC95    mov         esp,ebp
 0049AC97    pop         ebp
 0049AC98    ret         8
*}
end;

//0049C150
constructor TExternalThread.Create();
begin
{*
 0049C150    push        ebx
 0049C151    push        esi
 0049C152    test        dl,dl
>0049C154    je          0049C15E
 0049C156    add         esp,0FFFFFFF0
 0049C159    call        @ClassCreate
 0049C15E    mov         ebx,edx
 0049C160    mov         esi,eax
 0049C162    mov         byte ptr [esi+3C],1
 0049C166    mov         byte ptr [esi+0C],1
 0049C16A    xor         ecx,ecx
 0049C16C    xor         edx,edx
 0049C16E    mov         eax,esi
 0049C170    call        TThread.Create
 0049C175    mov         eax,esi
 0049C177    test        bl,bl
>0049C179    je          0049C18A
 0049C17B    call        @AfterConstruction
 0049C180    pop         dword ptr fs:[0]
 0049C187    add         esp,0C
 0049C18A    mov         eax,esi
 0049C18C    pop         esi
 0049C18D    pop         ebx
 0049C18E    ret
*}
end;

//0049C190
procedure TExternalThread.Execute;
begin
{*
 0049C190    ret
*}
end;

//0049D828
procedure sub_0049D828;
begin
{*
 0049D828    mov         dl,1
 0049D82A    mov         eax,[00401728];TObject
 0049D82F    call        TObject.Create;TObject.Create
 0049D834    mov         [007CA3E4],eax;gvar_007CA3E4:TObject
 0049D839    push        0
 0049D83B    push        0
 0049D83D    push        0FF
 0049D83F    push        0
 0049D841    call        kernel32.CreateEventW
 0049D846    mov         [007CA3C0],eax;gvar_007CA3C0:THandle
 0049D84B    cmp         dword ptr ds:[7CA3C0],0;gvar_007CA3C0:THandle
>0049D852    jne         0049D859
 0049D854    call        RaiseLastOSError
 0049D859    ret
*}
end;

//0049D85C
procedure DoneThreadSynchronization;
begin
{*
 0049D85C    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049D861    call        TObject.Free
 0049D866    mov         eax,[007CA3C0];gvar_007CA3C0:THandle
 0049D86B    push        eax
 0049D86C    call        kernel32.CloseHandle
 0049D871    ret
*}
end;

//0049D874
procedure sub_0049D874;
begin
{*
 0049D874    push        ebp
 0049D875    mov         ebp,esp
 0049D877    push        ecx
 0049D878    push        ebx
 0049D879    push        esi
 0049D87A    push        edi
 0049D87B    xor         eax,eax
 0049D87D    lock xchg   eax,dword ptr ds:[7CA3E8];gvar_007CA3E8
 0049D884    mov         dword ptr [ebp-4],eax
 0049D887    cmp         dword ptr [ebp-4],0
>0049D88B    je          0049D8E9
 0049D88D    mov         eax,dword ptr [ebp-4]
 0049D890    call        TThreadList<System.Classes.TThread>.LockList
 0049D895    mov         esi,eax
 0049D897    xor         edx,edx
 0049D899    push        ebp
 0049D89A    push        49D8E2
 0049D89F    push        dword ptr fs:[edx]
 0049D8A2    mov         dword ptr fs:[edx],esp
 0049D8A5    mov         edi,dword ptr [esi+8];TList<System.Classes.TThread>.FCount:Integer
 0049D8A8    dec         edi
 0049D8A9    test        edi,edi
>0049D8AB    jl          0049D8C9
 0049D8AD    inc         edi
 0049D8AE    xor         ebx,ebx
 0049D8B0    lea         eax,[esi+8];TList<System.Classes.TThread>.FCount:Integer
 0049D8B3    mov         edx,ebx
 0049D8B5    call        00434534
 0049D8BA    mov         eax,dword ptr [esi+20]
 0049D8BD    mov         eax,dword ptr [eax+ebx*4]
 0049D8C0    call        TObject.Free
 0049D8C5    inc         ebx
 0049D8C6    dec         edi
>0049D8C7    jne         0049D8B0
 0049D8C9    xor         eax,eax
 0049D8CB    pop         edx
 0049D8CC    pop         ecx
 0049D8CD    pop         ecx
 0049D8CE    mov         dword ptr fs:[eax],edx
 0049D8D1    push        49D8E9
 0049D8D6    mov         eax,dword ptr [ebp-4]
 0049D8D9    mov         eax,dword ptr [eax+8]
 0049D8DC    call        TMonitor.Exit
 0049D8E1    ret
>0049D8E2    jmp         @HandleFinally
>0049D8E7    jmp         0049D8D6
 0049D8E9    mov         eax,dword ptr [ebp-4]
 0049D8EC    call        TObject.Free
 0049D8F1    pop         edi
 0049D8F2    pop         esi
 0049D8F3    pop         ebx
 0049D8F4    pop         ecx
 0049D8F5    pop         ebp
 0049D8F6    ret
*}
end;

//0049D8F8
procedure ResetSyncEvent;
begin
{*
 0049D8F8    mov         eax,[007CA3C0];gvar_007CA3C0:THandle
 0049D8FD    push        eax
 0049D8FE    call        kernel32.ResetEvent
 0049D903    ret
*}
end;

//0049D904
procedure WaitForSyncEvent(Timeout:Integer);
begin
{*
 0049D904    push        ebx
 0049D905    mov         ebx,eax
 0049D907    push        ebx
 0049D908    mov         eax,[007CA3C0];gvar_007CA3C0:THandle
 0049D90D    push        eax
 0049D90E    call        kernel32.WaitForSingleObject
 0049D913    test        eax,eax
>0049D915    jne         0049D91C
 0049D917    call        ResetSyncEvent
 0049D91C    pop         ebx
 0049D91D    ret
*}
end;

//0049D920
procedure SignalSyncEvent;
begin
{*
 0049D920    mov         eax,[007CA3C0];gvar_007CA3C0:THandle
 0049D925    push        eax
 0049D926    call        kernel32.SetEvent
 0049D92B    ret
*}
end;

//0049D92C
function CheckSynchronize(Timeout:Integer):Boolean;
begin
{*
 0049D92C    push        ebp
 0049D92D    mov         ebp,esp
 0049D92F    add         esp,0FFFFFFEC
 0049D932    push        ebx
 0049D933    push        esi
 0049D934    push        edi
 0049D935    mov         ebx,eax
 0049D937    cmp         dword ptr ds:[7CA3C0],0;gvar_007CA3C0:THandle
>0049D93E    jne         0049D949
 0049D940    mov         byte ptr [ebp-1],0
>0049D944    jmp         0049DB5E
 0049D949    call        TThread.GetCurrentThread
 0049D94E    mov         eax,dword ptr [eax+4]
 0049D951    mov         edx,dword ptr ds:[7C4EF8];^MainThreadID:Cardinal
 0049D957    cmp         eax,dword ptr [edx]
>0049D959    je          0049D987
 0049D95B    call        TThread.GetCurrentThread
 0049D960    mov         eax,dword ptr [eax+4]
 0049D963    mov         dword ptr [ebp-14],eax
 0049D966    mov         byte ptr [ebp-10],0
 0049D96A    lea         eax,[ebp-14]
 0049D96D    push        eax
 0049D96E    push        0
 0049D970    mov         ecx,dword ptr ds:[7C4A1C];^SResString117:TResStringRec
 0049D976    mov         dl,1
 0049D978    mov         eax,[004770A4];EThread
 0049D97D    call        Exception.CreateResFmt
 0049D982    call        @RaiseExcept
 0049D987    test        ebx,ebx
>0049D989    jle         0049D994
 0049D98B    mov         eax,ebx
 0049D98D    call        WaitForSyncEvent
>0049D992    jmp         0049D999
 0049D994    call        ResetSyncEvent
 0049D999    xor         eax,eax
 0049D99B    mov         dword ptr [ebp-0C],eax
 0049D99E    call        TMonitor.CheckMonitorSupport
 0049D9A3    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049D9A8    call        TMonitor.GetMonitor
 0049D9AD    or          edx,0FFFFFFFF
 0049D9B0    call        TMonitor.Enter
 0049D9B5    xor         eax,eax
 0049D9B7    push        ebp
 0049D9B8    push        49DB57
 0049D9BD    push        dword ptr fs:[eax]
 0049D9C0    mov         dword ptr fs:[eax],esp
 0049D9C3    mov         eax,dword ptr [ebp-0C]
 0049D9C6    lock xchg   eax,dword ptr ds:[7A068C];gvar_007A068C
 0049D9CD    mov         dword ptr [ebp-0C],eax
 0049D9D0    xor         eax,eax
 0049D9D2    push        ebp
 0049D9D3    push        49DB38
 0049D9D8    push        dword ptr fs:[eax]
 0049D9DB    mov         dword ptr fs:[eax],esp
 0049D9DE    cmp         dword ptr [ebp-0C],0
>0049D9E2    je          0049D9ED
 0049D9E4    mov         eax,dword ptr [ebp-0C]
 0049D9E7    cmp         dword ptr [eax+8],0
>0049D9EB    jg          0049D9F1
 0049D9ED    xor         eax,eax
>0049D9EF    jmp         0049D9F3
 0049D9F1    mov         al,1
 0049D9F3    mov         byte ptr [ebp-1],al
 0049D9F6    cmp         byte ptr [ebp-1],0
>0049D9FA    je          0049DB22
>0049DA00    jmp         0049DB15
 0049DA05    xor         edx,edx
 0049DA07    mov         eax,dword ptr [ebp-0C]
 0049DA0A    call        TList.Get
 0049DA0F    mov         dword ptr [ebp-8],eax
 0049DA12    xor         edx,edx
 0049DA14    mov         eax,dword ptr [ebp-0C]
 0049DA17    call        TList.Delete
 0049DA1C    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049DA21    call        TMonitor.Exit
 0049DA26    xor         eax,eax
 0049DA28    push        ebp
 0049DA29    push        49DAE0
 0049DA2E    push        dword ptr fs:[eax]
 0049DA31    mov         dword ptr fs:[eax],esp
 0049DA34    xor         eax,eax
 0049DA36    push        ebp
 0049DA37    push        49DA73
 0049DA3C    push        dword ptr fs:[eax]
 0049DA3F    mov         dword ptr fs:[eax],esp
 0049DA42    mov         eax,dword ptr [ebp-8]
 0049DA45    mov         ebx,dword ptr [eax]
 0049DA47    cmp         word ptr [ebx+0A],0
>0049DA4C    je          0049DA56
 0049DA4E    mov         eax,dword ptr [ebx+0C]
 0049DA51    call        dword ptr [ebx+8]
>0049DA54    jmp         0049DA69
 0049DA56    cmp         dword ptr [ebx+10],0
>0049DA5A    je          0049DA69
 0049DA5C    mov         eax,dword ptr [ebp-8]
 0049DA5F    mov         eax,dword ptr [eax]
 0049DA61    mov         eax,dword ptr [eax+10]
 0049DA64    mov         edx,dword ptr [eax]
 0049DA66    call        dword ptr [edx+0C]
 0049DA69    xor         eax,eax
 0049DA6B    pop         edx
 0049DA6C    pop         ecx
 0049DA6D    pop         ecx
 0049DA6E    mov         dword ptr fs:[eax],edx
>0049DA71    jmp         0049DAB2
>0049DA73    jmp         @HandleAnyException
 0049DA78    mov         eax,dword ptr [ebp-8]
 0049DA7B    cmp         byte ptr [eax+4],0
>0049DA7F    jne         0049DA90
 0049DA81    call        AcquireExceptionObject
 0049DA86    mov         edx,dword ptr [ebp-8]
 0049DA89    mov         edx,dword ptr [edx]
 0049DA8B    mov         dword ptr [edx+14],eax
>0049DA8E    jmp         0049DAAD
 0049DA90    cmp         word ptr ds:[7A05E2],0;gvar_007A05E2
>0049DA98    je          0049DAAD
 0049DA9A    mov         eax,dword ptr [ebp-8]
 0049DA9D    mov         eax,dword ptr [eax]
 0049DA9F    mov         edx,dword ptr [eax]
 0049DAA1    mov         eax,dword ptr ds:[7A05E4];gvar_007A05E4
 0049DAA7    call        dword ptr ds:[7A05E0]
 0049DAAD    call        @DoneExcept
 0049DAB2    xor         eax,eax
 0049DAB4    pop         edx
 0049DAB5    pop         ecx
 0049DAB6    pop         ecx
 0049DAB7    mov         dword ptr fs:[eax],edx
 0049DABA    push        49DAE7
 0049DABF    mov         eax,dword ptr [ebp-8]
 0049DAC2    mov         eax,dword ptr [eax]
 0049DAC4    xor         edx,edx
 0049DAC6    mov         dword ptr [eax],edx
 0049DAC8    call        TMonitor.CheckMonitorSupport
 0049DACD    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049DAD2    call        TMonitor.GetMonitor
 0049DAD7    or          edx,0FFFFFFFF
 0049DADA    call        TMonitor.Enter
 0049DADF    ret
>0049DAE0    jmp         @HandleFinally
>0049DAE5    jmp         0049DABF
 0049DAE7    mov         eax,dword ptr [ebp-8]
 0049DAEA    cmp         byte ptr [eax+4],0
>0049DAEE    jne         0049DAFD
 0049DAF0    mov         eax,dword ptr [ebp-8]
 0049DAF3    mov         eax,dword ptr [eax+8]
 0049DAF6    call        TMonitor.Pulse
>0049DAFB    jmp         0049DB15
 0049DAFD    mov         eax,dword ptr [ebp-8]
 0049DB00    mov         eax,dword ptr [eax]
 0049DB02    mov         edx,dword ptr ds:[477220];TThread.TSynchronizeRecord
 0049DB08    call        @Dispose
 0049DB0D    mov         eax,dword ptr [ebp-8]
 0049DB10    call        @FreeMem
 0049DB15    mov         eax,dword ptr [ebp-0C]
 0049DB18    cmp         dword ptr [eax+8],0
>0049DB1C    jg          0049DA05
 0049DB22    xor         eax,eax
 0049DB24    pop         edx
 0049DB25    pop         ecx
 0049DB26    pop         ecx
 0049DB27    mov         dword ptr fs:[eax],edx
 0049DB2A    push        49DB3F
 0049DB2F    mov         eax,dword ptr [ebp-0C]
 0049DB32    call        TObject.Free
 0049DB37    ret
>0049DB38    jmp         @HandleFinally
>0049DB3D    jmp         0049DB2F
 0049DB3F    xor         eax,eax
 0049DB41    pop         edx
 0049DB42    pop         ecx
 0049DB43    pop         ecx
 0049DB44    mov         dword ptr fs:[eax],edx
 0049DB47    push        49DB5E
 0049DB4C    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049DB51    call        TMonitor.Exit
 0049DB56    ret
>0049DB57    jmp         @HandleFinally
>0049DB5C    jmp         0049DB4C
 0049DB5E    movzx       eax,byte ptr [ebp-1]
 0049DB62    pop         edi
 0049DB63    pop         esi
 0049DB64    pop         ebx
 0049DB65    mov         esp,ebp
 0049DB67    pop         ebp
 0049DB68    ret
*}
end;

//0049DC28
constructor TThread.Create;
begin
{*
 0049DC28    push        ebp
 0049DC29    mov         ebp,esp
 0049DC2B    add         esp,0FFFFFFF0
 0049DC2E    push        ebx
 0049DC2F    push        esi
 0049DC30    push        edi
 0049DC31    xor         ebx,ebx
 0049DC33    mov         dword ptr [ebp-10],ebx
 0049DC36    test        dl,dl
>0049DC38    je          0049DC42
 0049DC3A    add         esp,0FFFFFFF0
 0049DC3D    call        @ClassCreate
 0049DC42    mov         ebx,ecx
 0049DC44    mov         byte ptr [ebp-1],dl
 0049DC47    mov         edi,eax
 0049DC49    xor         eax,eax
 0049DC4B    push        ebp
 0049DC4C    push        49DCFE
 0049DC51    push        dword ptr fs:[eax]
 0049DC54    mov         dword ptr fs:[eax],esp
 0049DC57    xor         edx,edx
 0049DC59    mov         eax,edi
 0049DC5B    call        TObject.Create
 0049DC60    movzx       eax,byte ptr [edi+3C]
 0049DC64    xor         al,1
 0049DC66    mov         byte ptr [edi+0F],al
 0049DC69    test        bl,bl
>0049DC6B    je          0049DC73
 0049DC6D    cmp         byte ptr [edi+3C],0
>0049DC71    je          0049DC77
 0049DC73    xor         eax,eax
>0049DC75    jmp         0049DC79
 0049DC77    mov         al,1
 0049DC79    mov         byte ptr [edi+0D],al
 0049DC7C    cmp         byte ptr [edi+3C],0
>0049DC80    jne         0049DCD8
 0049DC82    push        edi
 0049DC83    push        4
 0049DC85    lea         eax,[edi+4]
 0049DC88    push        eax
 0049DC89    mov         ecx,49DB6C
 0049DC8E    xor         edx,edx
 0049DC90    xor         eax,eax
 0049DC92    call        BeginThread
 0049DC97    mov         esi,eax
 0049DC99    mov         dword ptr [edi+8],esi
 0049DC9C    test        esi,esi
>0049DC9E    jne         0049DCE8
 0049DCA0    call        kernel32.GetLastError
 0049DCA5    lea         ecx,[ebp-10]
 0049DCA8    xor         edx,edx
 0049DCAA    call        00422CB4
 0049DCAF    mov         eax,dword ptr [ebp-10]
 0049DCB2    mov         dword ptr [ebp-0C],eax
 0049DCB5    mov         byte ptr [ebp-8],11
 0049DCB9    lea         eax,[ebp-0C]
 0049DCBC    push        eax
 0049DCBD    push        0
 0049DCBF    mov         ecx,dword ptr ds:[7C4D34];^SResString150:TResStringRec
 0049DCC5    mov         dl,1
 0049DCC7    mov         eax,[004770A4];EThread
 0049DCCC    call        Exception.CreateResFmt
 0049DCD1    call        @RaiseExcept
>0049DCD6    jmp         0049DCE8
 0049DCD8    call        kernel32.GetCurrentThread
 0049DCDD    mov         dword ptr [edi+8],eax
 0049DCE0    call        kernel32.GetCurrentThreadId
 0049DCE5    mov         dword ptr [edi+4],eax
 0049DCE8    xor         eax,eax
 0049DCEA    pop         edx
 0049DCEB    pop         ecx
 0049DCEC    pop         ecx
 0049DCED    mov         dword ptr fs:[eax],edx
 0049DCF0    push        49DD05
 0049DCF5    lea         eax,[ebp-10]
 0049DCF8    call        @UStrClr
 0049DCFD    ret
>0049DCFE    jmp         @HandleFinally
>0049DD03    jmp         0049DCF5
 0049DD05    mov         eax,edi
 0049DD07    cmp         byte ptr [ebp-1],0
>0049DD0B    je          0049DD1C
 0049DD0D    call        @AfterConstruction
 0049DD12    pop         dword ptr fs:[0]
 0049DD19    add         esp,0C
 0049DD1C    mov         eax,edi
 0049DD1E    pop         edi
 0049DD1F    pop         esi
 0049DD20    pop         ebx
 0049DD21    mov         esp,ebp
 0049DD23    pop         ebp
 0049DD24    ret
*}
end;

//0049DD28
destructor TThread.Destroy();
begin
{*
 0049DD28    push        ebx
 0049DD29    push        esi
 0049DD2A    call        @BeforeDestruction
 0049DD2F    mov         ebx,edx
 0049DD31    mov         esi,eax
 0049DD33    cmp         dword ptr [esi+4],0;TThread.FThreadID:Cardinal
>0049DD37    je          0049DD73
 0049DD39    cmp         byte ptr [esi+11],0;TThread.FFinished:Boolean
>0049DD3D    jne         0049DD73
 0049DD3F    cmp         byte ptr [esi+3C],0;TThread.FExternalThread:Boolean
>0049DD43    jne         0049DD73
 0049DD45    mov         eax,esi
 0049DD47    call        TThread.Terminate
 0049DD4C    cmp         byte ptr [esi+0D],0;TThread.FCreateSuspended:Boolean
>0049DD50    jne         0049DD58
 0049DD52    cmp         byte ptr [esi+0F],0;TThread.FSuspended:Boolean
>0049DD56    je          0049DD66
 0049DD58    mov         eax,esi
 0049DD5A    call        TThread.Resume
>0049DD5F    jmp         0049DD66
 0049DD61    call        TThread.Yield
 0049DD66    cmp         byte ptr [esi+0C],0;TThread.FStarted:Boolean
>0049DD6A    je          0049DD61
 0049DD6C    mov         eax,esi
 0049DD6E    call        TThread.WaitFor
 0049DD73    mov         eax,esi
 0049DD75    call        TThread.RemoveQueuedEvents
 0049DD7A    mov         eax,dword ptr [esi+8];TThread.FHandle:NativeUInt
 0049DD7D    test        eax,eax
>0049DD7F    je          0049DD8D
 0049DD81    cmp         byte ptr [esi+3C],0;TThread.FExternalThread:Boolean
>0049DD85    jne         0049DD8D
 0049DD87    push        eax
 0049DD88    call        kernel32.CloseHandle
 0049DD8D    mov         dl,0FC
 0049DD8F    and         dl,bl
 0049DD91    mov         eax,esi
 0049DD93    call        TObject.Destroy
 0049DD98    mov         eax,dword ptr [esi+38];TThread.FFatalException:TObject
 0049DD9B    call        TObject.Free
 0049DDA0    test        bl,bl
>0049DDA2    jle         0049DDAB
 0049DDA4    mov         eax,esi
 0049DDA6    call        @ClassDestroy
 0049DDAB    pop         esi
 0049DDAC    pop         ebx
 0049DDAD    ret
*}
end;

Initialization
//0079C638
{*
 0079C638    sub         dword ptr ds:[7CA3A8],1
>0079C63F    jae         0079C652
 0079C641    call        0049D828
 0079C646    mov         eax,[007C4D48];^CPUCount:Integer
 0079C64B    mov         eax,dword ptr [eax]
 0079C64D    mov         [007CA3A4],eax;gvar_007CA3A4:Integer
 0079C652    ret
*}
Finalization
end.