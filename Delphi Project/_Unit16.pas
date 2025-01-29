//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit16;

interface

uses
  SysUtils, Classes, System.Generics.Collections, System.Rtti, System.Generics.Defaults, System.Rtti;

type
  TRttiContext = TRttiContext = record//size=4
f0:IInterface;//f0
end;
FContextToken:IInterface;//f0
end;
//Methods:
Create:TRttiContext;//004488A8
Free;//004488B0
KeepContext;//00448910
DropContext;//004488D4
GetType(ATypeInfo:Pointer):TRttiType;//004488BC
GetType(AClass:TClass):TRttiType;//0079EC18
GetTypes:TArray<System.Rtti.TRttiType>;//0079EC18
FindType(AQualifiedName:string):TRttiType;//0079EC18
GetPackages:TArray<System.Rtti.TRttiPackage>;//0079EC18;
  TArray<System.Rtti.TValue> = array of TValue;
//elSize = 18;
  TArray<System.TCustomAttribute> = array of TCustomAttribute;
//elSize = 4;
  TArray<System.Rtti.TRttiMethod> = array of TRttiMethod;
//elSize = 4;
  TArray<System.Rtti.TRttiField> = array of TRttiField;
//elSize = 4;
  TArray<System.Rtti.TRttiProperty> = array of TRttiProperty;
//elSize = 4;
  TArray<System.Rtti.TRttiIndexedProperty> = array of TRttiIndexedProperty;
//elSize = 4;
  TArray<System.Rtti.TRttiManagedField> = array of TRttiManagedField;
//elSize = 4;
  TArray<System.Rtti.TMethodImplementation.TParamLoc> = array of TMethodImplementation.TParamLoc;
//elSize = C;
  TEnumerator<System.Rtti.TMethodImplementation.TParamLoc> = class(TObject)
  published
    function Rtti.TMethodImplementation.TParamLoc>.MoveNext:Boolean;//00456544
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TMethodImplementation.TParamLoc> = class(TObject)
  published
    //procedure Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?);//00456488
    function Rtti.TMethodImplementation.TParamLoc>.GetEnumerator:TEnumerator<System.Rtti.TMethodImplementation.TParamLoc>;//00456480
    destructor Rtti.TMethodImplementation.TParamLoc>.Destroy();//0045645C
  public
    destructor Rtti.TMethodImplementation.TParamLoc>.Destroy(); virtual;//0045645C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?); virtual;//v4//00456488
  end;
  TList<System.Rtti.TMethodImplementation.TParamLoc>.arrayofT = array of TMethodImplementation.TParamLoc;
//elSize = C;
  TCollectionNotifyEvent<System.Rtti.TMethodImplementation.TParamLoc> = procedure(Sender:TObject; const Item:TMethodImplementation.TParamLoc; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TMethodImplementation.TParamLoc>.TEnumerator = class(TEnumerator<System.Rtti.TMethodImplementation.TParamLoc>)
  published
    function Rtti.TMethodImplementation.TParamLoc>.TEnumerator.MoveNext:Boolean;//00456874
    constructor sub_00456830(AList:TList<System.Rtti.TMethodImplementation.TParamLoc>);//00456830
  public
    FList:TList<System.Rtti.TMethodImplementation.TParamLoc>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00456814
    procedure v4; virtual;//v4//00456828
  end;
  TList<System.Rtti.TMethodImplementation.TParamLoc> = class(TEnumerable<System.Rtti.TMethodImplementation.TParamLoc>)
  published
    procedure Rtti.TMethodImplementation.TParamLoc>.Add(Value:TMethodImplementation.TParamLoc);//0045678C
    //procedure Rtti.TMethodImplementation.TParamLoc>.Error(Msg:string; Data:NativeInt; ?:?);//00456754
    procedure Rtti.TMethodImplementation.TParamLoc>.GetEnumerator;//004567B4
    //procedure Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?);//004567A0
    constructor sub_00456658(AComparer:IComparer<System.Rtti.TMethodImplementation.TParamLoc>);//00456658
    constructor sub_004565E0;//004565E0
    destructor Rtti.TMethodImplementation.TParamLoc>.Destroy();//00456708
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Rtti.TMethodImplementation.TParamLoc>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TMethodImplementation.TParamLoc>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TMethodImplementation.TParamLoc>;//f10
    FArrayManager:TArrayManager<System.Rtti.TMethodImplementation.TParamLoc>;//f18
    FItems:TList<System.Rtti.TMethodImplementation.TParamLoc>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TMethodImplementation.TParamLoc>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TMethodImplementation.TParamLoc>;//f28
    destructor Rtti.TMethodImplementation.TParamLoc>.Destroy(); virtual;//00456708
    procedure v0; virtual;//v0//004565C0
    //procedure Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?); virtual;//v4//004567A0
    //procedure v8(?:?); virtual;//v8//004565C8
    //procedure Rtti.TMethodImplementation.TParamLoc>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00456754
  end;
  TArray<System.Rtti.TRttiParameter> = array of TRttiParameter;
//elSize = 4;
  TArray<System.Rtti.TRttiInterfaceType> = array of TRttiInterfaceType;
//elSize = 4;
  TPair<System.Pointer,System.Rtti.TRttiObject> = TPair<System.Pointer,System.Rtti.TRttiObject> = record//size=8
Key:Pointer;//f0
Value:TRttiObject;//f4
end;
//Methods:
Create(AKey:Pointer;AValue:TRttiObject);//00456894;
  TArray<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>> = array of TPair<System.Pointer,System.Rtti.TRttiObject>;
//elSize = 8;
  TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>> = class(TObject)
  published
    function Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.MoveNext:Boolean;//00456A20
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>> = class(TObject)
  published
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray(?:?);//00456964
    function Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//0045695C
    destructor Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy();//00456938
  public
    destructor Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy(); virtual;//00456938
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray(?:?); virtual;//v4//00456964
  end;
  TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItem = TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItem = record//size=C
HashCode:Integer;//f0
Key:Pointer;//f4
Value:TRttiObject;//f8
end;;
  TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray = array of TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItem;
//elSize = C;
  TCollectionNotifyEvent<System.Pointer> = procedure(Sender:TObject; const Item:Pointer; Action:TCollectionNotification) of object;;
  TCollectionNotifyEvent<System.Rtti.TRttiObject> = procedure(Sender:TObject; const Item:TRttiObject; Action:TCollectionNotification) of object;;
  TArray<System.Pointer> = array of Pointer;
//elSize = 4;
  TEnumerator<System.Pointer> = class(TObject)
  published
    function Pointer>.MoveNext:Boolean;//00457358
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Pointer> = class(TObject)
  published
    //procedure Pointer>.ToArray(?:?);//004572A4
    function Pointer>.GetEnumerator:TEnumerator<System.Pointer>;//0045729C
    destructor Pointer>.Destroy();//00457278
  public
    destructor Pointer>.Destroy(); virtual;//00457278
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Pointer>.ToArray(?:?); virtual;//v4//004572A4
  end;
  TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyEnumerator = class(TEnumerator<System.Pointer>)
  published
    function Pointer,System.Rtti.TRttiObject>.TKeyEnumerator.MoveNext:Boolean;//0045743C
    constructor sub_004573F8(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//004573F8
  public
    FDictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004573E8
    procedure v4; virtual;//v4//004573F0
  end;
  TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyCollection = class(TEnumerable<System.Pointer>)
  published
    //procedure Pointer,System.Rtti.TRttiObject>.TKeyCollection.ToArray(?:?);//004573BC
    procedure Pointer,System.Rtti.TRttiObject>.TKeyCollection.GetEnumerator;//004573AC
    constructor sub_00457370(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//00457370
  public
    FDictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>;//f4
    procedure v0; virtual;//v0//00457368
    //procedure Pointer,System.Rtti.TRttiObject>.TKeyCollection.ToArray(?:?); virtual;//v4//004573BC
  end;
  TArray<System.Rtti.TRttiObject> = array of TRttiObject;
//elSize = 4;
  TEnumerator<System.Rtti.TRttiObject> = class(TObject)
  published
    function Rtti.TRttiObject>.MoveNext:Boolean;//004575E0
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TRttiObject> = class(TObject)
  published
    //procedure Rtti.TRttiObject>.ToArray(?:?);//0045752C
    function Rtti.TRttiObject>.GetEnumerator:TEnumerator<System.Rtti.TRttiObject>;//00457524
    destructor Rtti.TRttiObject>.Destroy();//00457500
  public
    destructor Rtti.TRttiObject>.Destroy(); virtual;//00457500
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TRttiObject>.ToArray(?:?); virtual;//v4//0045752C
  end;
  TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueEnumerator = class(TEnumerator<System.Rtti.TRttiObject>)
  published
    function Pointer,System.Rtti.TRttiObject>.TValueEnumerator.MoveNext:Boolean;//004576C4
    constructor sub_00457680(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//00457680
  public
    FDictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00457670
    procedure v4; virtual;//v4//00457678
  end;
  TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueCollection = class(TEnumerable<System.Rtti.TRttiObject>)
  published
    //procedure Pointer,System.Rtti.TRttiObject>.TValueCollection.ToArray(?:?);//00457644
    procedure Pointer,System.Rtti.TRttiObject>.TValueCollection.GetEnumerator;//00457634
    constructor sub_004575F8(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//004575F8
  public
    FDictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>;//f4
    procedure v0; virtual;//v0//004575F0
    //procedure Pointer,System.Rtti.TRttiObject>.TValueCollection.ToArray(?:?); virtual;//v4//00457644
  end;
  TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator = class(TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>)
  published
    function Pointer,System.Rtti.TRttiObject>.TPairEnumerator.MoveNext:Boolean;//00457784
    constructor sub_00457740(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//00457740
  public
    FDictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00457724
    procedure v4; virtual;//v4//00457738
  end;
  TDictionary<System.Pointer,System.Rtti.TRttiObject> = class(TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>)
  published
    function Pointer,System.Rtti.TRttiObject>.TryGetValue(Key:Pointer; Value:TRttiObject):Boolean;//00457144
    procedure Pointer,System.Rtti.TRttiObject>.Clear;//00457078
    procedure Pointer,System.Rtti.TRttiObject>.GetEnumerator;//004571DC
    //procedure Pointer,System.Rtti.TRttiObject>.ToArray(?:?);//00457184
    //procedure Pointer,System.Rtti.TRttiObject>.ExtractPair(Key:Pointer; ?:?);//00457028
    constructor sub_00456ED0(ACapacity:Integer; AComparer:IEqualityComparer<System.Pointer>);//00456ED0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Pointer,System.Rtti.TRttiObject>.Add(Key:Pointer; Value:TRttiObject);//00456FC4
    destructor Pointer,System.Rtti.TRttiObject>.Destroy();//00456F88
  public
    FItems:TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.Pointer>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.Pointer>;//f18
    FOnValueNotify:TCollectionNotifyEvent<System.Rtti.TRttiObject>;//f20
    FKeyCollection:TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueCollection;//f2C
    destructor Pointer,System.Rtti.TRttiObject>.Destroy(); virtual;//00456F88
    procedure v0; virtual;//v0//00456E98
    //procedure Pointer,System.Rtti.TRttiObject>.ToArray(?:?); virtual;//v4//00457184
    //procedure v8(?:?); virtual;//v8//00456EA0
    //procedure vC(?:?); virtual;//vC//00456EB8
  end;
  TArray<System.Rtti.TRttiType> = array of TRttiType;
//elSize = 4;
  TArray<System.Rtti.TRttiPackage> = array of TRttiPackage;
//elSize = 4;
  TPrivateHeap = class(TObject)
  published
    procedure FreeMem(P:Pointer);//0043E794
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure GetMem(var P:?; Size:Cardinal);//0043E7E4
    constructor Create();//0043E730
    destructor Destroy();//0043E750
  public
    FHandle:NativeUInt;//f4
    destructor Destroy(); virtual;//0043E750
    //procedure GetMem(var P:?; Size:Cardinal); virtual;//v0//0043E7E4
    function GetHandle:THandle;//0043E7B8
  end;
  TFinalizer = class(TInterfacedObject)
  published
    procedure Add(Obj:TObject);//0043EA64
    destructor Destroy();//0043EA20
  public
    FItems:TArray<System.TObject>;//fC
    FCount:Integer;//f10
  end;
  TListHelper = class(TObject)
  end;
  TValueDataImpl = class(TInterfacedObject)
  published
    procedure ExtractRawData(ABuffer:Pointer);//0043F5E4
    function GetDataSize:Integer;//0043F5CC
    function GetReferenceToRawData:Pointer;//0043F64C
    procedure ExtractRawDataNoCopy(ABuffer:Pointer);//0043F62C
    constructor CreateEmpty(ATypeInfo:PTypeInfo);//0043F4D8
    constructor Create(ATypeInfo:PTypeInfo; ACount:Integer);//0043F460
    destructor Destroy();//0043F58C
    constructor CreateWithoutCopy(ATypeInfo:PTypeInfo; ACount:Integer);//0043F52C
  public
    FTypeInfo:PTypeInfo;//fC
    FData:TArray<System.Byte>;//f10
  end;
  :45 = array of Byte;
//elSize = 1
//varType equivalent: varByte;
  TRealPackage = class(TRttiPackage)
  published
    function FindType(AQualifiedName:string):TRttiType;//00455348
    function GetTypes:TArray<System.Rtti.TRttiType>;//00455458
    destructor Destroy();//00455314
  public
    FTypeInfo:PPackageTypeInfo;//f24
    FTypeToName:TDictionary<System.TypInfo.PTypeInfo,System.string>;//f28
    FNameToType:TDictionary<System.string,System.TypInfo.PTypeInfo>;//f2C
    destructor Destroy(); virtual;//00455314
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00455244
    function GetName:UnicodeString; virtual;//v8//00455418
    function GetNameFromType(AType:TRttiType):UnicodeString; virtual;//vC//00455530
    function GetTypes:TArray<System.Rtti.TRttiType>; virtual;//v10//00455458
    function FindType(AQualifiedName:string):TRttiType; virtual;//v14//00455348
    procedure MakeTypeLookupTable;//004557E8
  end;
  TOrphanPackage = class(TRttiPackage)
  published
    //procedure GetTypes(?:?);//00455230
    function FindType(AQualifiedName:string):TRttiType;//004551E8
    constructor Create();//00455180
    function GetName:string;//004551EC
  public
    function GetName:string; virtual;//v8//004551EC
    //procedure GetTypes(?:?); virtual;//v10//00455230
    function FindType(AQualifiedName:string):TRttiType; virtual;//v14//004551E8
  end;
  TRttiPool = class(TObject)
  published
    function GetType(AClass:TClass):TRttiType;//00446724
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetType(ATypeInfo:Pointer):TRttiType;//00446700
    constructor Create();//00445D68
    destructor Destroy();//00445DA4
  public
    FLatestPackageList:TArray<System.Rtti.TRttiPackage>;//f4
    FOrphanPackage:TRttiPackage;//f8
    FPackageVer:Integer;//fC
    function GetPackageList:TArray<System.Rtti.TRttiPackage>;//00446584
    function GetPackageFor(AHandle:Pointer):TRttiPackage;//00446608
    function ReadObject(ARttiClass:TRttiClass; AParent:TRttiObject; var P:Windows.PByte):TRttiObject;//004466B4
    function ReadObjectPointer(ARttiClass:TRttiClass; AParent:TRttiObject; P:Pointer):TRttiObject;//004466E4
    function TypeOrNil(Value:TypInfo.PPTypeInfo):TRttiType;//0044673C
  end;
  TPair<System.TypInfo.PTypeInfo,System.string> = TPair<System.TypInfo.PTypeInfo,System.string> = record//size=8
f4:string;//f4
end;
Key:PTypeInfo;//f0
Value:string;//f4
end;
//Methods:
Create(AKey:PTypeInfo;AValue:string);//0079EC18;
  TArray<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>> = array of TPair<System.TypInfo.PTypeInfo,System.string>;
//elSize = 8;
  TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>> = class(TObject)
  published
    function Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.MoveNext:Boolean;//00457F5C
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>> = class(TObject)
  published
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray(?:?);//00457E64
    function Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//00457E5C
    destructor Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy();//00457E38
  public
    destructor Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy(); virtual;//00457E38
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray(?:?); virtual;//v4//00457E64
  end;
  TDictionary<System.TypInfo.PTypeInfo,System.string>.TItem = TDictionary<System.TypInfo.PTypeInfo,System.string>.TItem = record//size=C
f8:string;//f8
end;
HashCode:Integer;//f0
Key:PTypeInfo;//f4
Value:string;//f8
end;;
  TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray = array of TDictionary<System.TypInfo.PTypeInfo,System.string>.TItem;
//elSize = C;
  TCollectionNotifyEvent<System.TypInfo.PTypeInfo> = procedure(Sender:TObject; const Item:PTypeInfo; Action:TCollectionNotification) of object;;
  TArray<System.TypInfo.PTypeInfo> = array of PTypeInfo;
//elSize = 4;
  TEnumerator<System.TypInfo.PTypeInfo> = class(TObject)
  published
    function TypInfo.PTypeInfo>.MoveNext:Boolean;//00458750
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.TypInfo.PTypeInfo> = class(TObject)
  published
    //procedure TypInfo.PTypeInfo>.ToArray(?:?);//0045869C
    function TypInfo.PTypeInfo>.GetEnumerator:TEnumerator<System.TypInfo.PTypeInfo>;//00458694
    destructor TypInfo.PTypeInfo>.Destroy();//00458670
  public
    destructor TypInfo.PTypeInfo>.Destroy(); virtual;//00458670
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TypInfo.PTypeInfo>.ToArray(?:?); virtual;//v4//0045869C
  end;
  TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyEnumerator = class(TEnumerator<System.TypInfo.PTypeInfo>)
  published
    function TypInfo.PTypeInfo,System.string>.TKeyEnumerator.MoveNext:Boolean;//00458834
    constructor sub_004587F0(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//004587F0
  public
    FDictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004587E0
    procedure v4; virtual;//v4//004587E8
  end;
  TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyCollection = class(TEnumerable<System.TypInfo.PTypeInfo>)
  published
    //procedure TypInfo.PTypeInfo,System.string>.TKeyCollection.ToArray(?:?);//004587B4
    procedure TypInfo.PTypeInfo,System.string>.TKeyCollection.GetEnumerator;//004587A4
    constructor sub_00458768(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//00458768
  public
    FDictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>;//f4
    procedure v0; virtual;//v0//00458760
    //procedure TypInfo.PTypeInfo,System.string>.TKeyCollection.ToArray(?:?); virtual;//v4//004587B4
  end;
  TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueEnumerator = class(TEnumerator<System.string>)
  published
    function TypInfo.PTypeInfo,System.string>.TValueEnumerator.MoveNext:Boolean;//00458960
    constructor sub_0045891C(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//0045891C
  public
    FDictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00458900
    procedure v4; virtual;//v4//00458914
  end;
  TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueCollection = class(TEnumerable<System.string>)
  published
    //procedure TypInfo.PTypeInfo,System.string>.TValueCollection.ToArray(?:?);//004588C8
    procedure TypInfo.PTypeInfo,System.string>.TValueCollection.GetEnumerator;//004588B8
    constructor sub_0045887C(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//0045887C
  public
    FDictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>;//f4
    procedure v0; virtual;//v0//00458874
    //procedure TypInfo.PTypeInfo,System.string>.TValueCollection.ToArray(?:?); virtual;//v4//004588C8
  end;
  TDictionary<System.TypInfo.PTypeInfo,System.string>.TPairEnumerator = class(TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>)
  published
    function TypInfo.PTypeInfo,System.string>.TPairEnumerator.MoveNext:Boolean;//00458A2C
    constructor sub_004589E8(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//004589E8
  public
    FDictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//004589CC
    procedure v4; virtual;//v4//004589E0
  end;
  TDictionary<System.TypInfo.PTypeInfo,System.string> = class(TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>)
  published
    function TypInfo.PTypeInfo,System.string>.TryGetValue(Key:PTypeInfo; Value:string):Boolean;//004584FC
    procedure TypInfo.PTypeInfo,System.string>.Clear;//00458430
    function TypInfo.PTypeInfo,System.string>.ContainsKey(Key:PTypeInfo):Boolean;//00458558
    procedure TypInfo.PTypeInfo,System.string>.GetEnumerator;//004585D4
    //procedure TypInfo.PTypeInfo,System.string>.ToArray(?:?);//0045857C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_004582A0(ACapacity:Integer);//004582A0
    constructor sub_004582D8(ACapacity:Integer; AComparer:IEqualityComparer<System.TypInfo.PTypeInfo>);//004582D8
    procedure TypInfo.PTypeInfo,System.string>.Add(Key:PTypeInfo; Value:string);//004583CC
    destructor TypInfo.PTypeInfo,System.string>.Destroy();//00458390
  public
    FItems:TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.TypInfo.PTypeInfo>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.TypInfo.PTypeInfo>;//f18
    FOnValueNotify:TCollectionNotifyEvent<System.string>;//f20
    FKeyCollection:TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueCollection;//f2C
    destructor TypInfo.PTypeInfo,System.string>.Destroy(); virtual;//00458390
    procedure v0; virtual;//v0//00458268
    //procedure TypInfo.PTypeInfo,System.string>.ToArray(?:?); virtual;//v4//0045857C
    //procedure v8(?:?); virtual;//v8//00458270
    //procedure vC(?:?); virtual;//vC//00458288
  end;
  TPair<System.string,System.TypInfo.PTypeInfo> = TPair<System.string,System.TypInfo.PTypeInfo> = record//size=8
f0:string;//f0
end;
Key:string;//f0
Value:PTypeInfo;//f4
end;
//Methods:
Create(AKey:string;AValue:PTypeInfo);//0079EC18;
  TArray<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>> = array of TPair<System.string,System.TypInfo.PTypeInfo>;
//elSize = 8;
  TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>> = class(TObject)
  published
    function Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.MoveNext:Boolean;//00458C64
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>> = class(TObject)
  published
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray(?:?);//00458B6C
    function Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//00458B64
    destructor Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy();//00458B40
  public
    destructor Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy(); virtual;//00458B40
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray(?:?); virtual;//v4//00458B6C
  end;
  TDictionary<System.string,System.TypInfo.PTypeInfo>.TItem = TDictionary<System.string,System.TypInfo.PTypeInfo>.TItem = record//size=C
f4:string;//f4
end;
HashCode:Integer;//f0
Key:string;//f4
Value:PTypeInfo;//f8
end;;
  TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray = array of TDictionary<System.string,System.TypInfo.PTypeInfo>.TItem;
//elSize = C;
  TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyEnumerator = class(TEnumerator<System.string>)
  published
    function string,System.TypInfo.PTypeInfo>.TKeyEnumerator.MoveNext:Boolean;//004593C4
    constructor sub_00459380(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//00459380
  public
    FDictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00459364
    procedure v4; virtual;//v4//00459378
  end;
  TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyCollection = class(TEnumerable<System.string>)
  published
    //procedure string,System.TypInfo.PTypeInfo>.TKeyCollection.ToArray(?:?);//0045932C
    procedure string,System.TypInfo.PTypeInfo>.TKeyCollection.GetEnumerator;//0045931C
    constructor sub_004592E0(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//004592E0
  public
    FDictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>;//f4
    procedure v0; virtual;//v0//004592D8
    //procedure string,System.TypInfo.PTypeInfo>.TKeyCollection.ToArray(?:?); virtual;//v4//0045932C
  end;
  TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueEnumerator = class(TEnumerator<System.TypInfo.PTypeInfo>)
  published
    function string,System.TypInfo.PTypeInfo>.TValueEnumerator.MoveNext:Boolean;//004594D8
    constructor sub_00459494(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//00459494
  public
    FDictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00459484
    procedure v4; virtual;//v4//0045948C
  end;
  TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueCollection = class(TEnumerable<System.TypInfo.PTypeInfo>)
  published
    //procedure string,System.TypInfo.PTypeInfo>.TValueCollection.ToArray(?:?);//00459458
    procedure string,System.TypInfo.PTypeInfo>.TValueCollection.GetEnumerator;//00459448
    constructor sub_0045940C(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//0045940C
  public
    FDictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>;//f4
    procedure v0; virtual;//v0//00459404
    //procedure string,System.TypInfo.PTypeInfo>.TValueCollection.ToArray(?:?); virtual;//v4//00459458
  end;
  TDictionary<System.string,System.TypInfo.PTypeInfo>.TPairEnumerator = class(TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>)
  published
    function string,System.TypInfo.PTypeInfo>.TPairEnumerator.MoveNext:Boolean;//004595A4
    constructor sub_00459560(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//00459560
  public
    FDictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00459544
    procedure v4; virtual;//v4//00459558
  end;
  TDictionary<System.string,System.TypInfo.PTypeInfo> = class(TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>)
  published
    function string,System.TypInfo.PTypeInfo>.TryGetValue(Key:string; Value:PTypeInfo):Boolean;//00459204
    procedure string,System.TypInfo.PTypeInfo>.Clear;//00459138
    function string,System.TypInfo.PTypeInfo>.ContainsKey(Key:string):Boolean;//00459244
    procedure string,System.TypInfo.PTypeInfo>.GetEnumerator;//004592C0
    //procedure string,System.TypInfo.PTypeInfo>.ToArray(?:?);//00459268
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00458FA8(ACapacity:Integer);//00458FA8
    constructor sub_00458FE0(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);//00458FE0
    procedure string,System.TypInfo.PTypeInfo>.Add(Key:string; Value:PTypeInfo);//004590D4
    destructor string,System.TypInfo.PTypeInfo>.Destroy();//00459098
  public
    FItems:TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.string>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.string>;//f18
    FOnValueNotify:TCollectionNotifyEvent<System.TypInfo.PTypeInfo>;//f20
    FKeyCollection:TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueCollection;//f2C
    destructor string,System.TypInfo.PTypeInfo>.Destroy(); virtual;//00459098
    procedure v0; virtual;//v0//00458F70
    //procedure string,System.TypInfo.PTypeInfo>.ToArray(?:?); virtual;//v4//00459268
    //procedure v8(?:?); virtual;//v8//00458F78
    //procedure vC(?:?); virtual;//vC//00458F90
  end;
  TComparer<System.Rtti.TRttiPackage> = class(TInterfacedObject)
  published
    //procedure Rtti.TRttiPackage>.Construct(Comparison:TComparison<System.Rtti.TRttiPackage>; ?:?);//004595F8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    procedure Rtti.TRttiPackage>.Rtti.TRttiPackage>.Compare; virtual; abstract;//v0//00405554
  end;
  DoUpdate$162$ActRec = class(TInterfacedObject)
  end;
  TPoolToken = class(TInterfacedObject)
  published
    destructor Destroy();//004468EC
    constructor sub_00446844;//00446844
  end;
  TEnumerator<System.TCustomAttribute> = class(TObject)
  published
    function TCustomAttribute>.MoveNext:Boolean;//00459760
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.TCustomAttribute> = class(TObject)
  published
    //procedure TCustomAttribute>.ToArray(?:?);//004596AC
    function TCustomAttribute>.GetEnumerator:TEnumerator<System.TCustomAttribute>;//004596A4
    destructor TCustomAttribute>.Destroy();//00459680
  public
    destructor TCustomAttribute>.Destroy(); virtual;//00459680
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TCustomAttribute>.ToArray(?:?); virtual;//v4//004596AC
  end;
  TList<System.TCustomAttribute>.arrayofT = array of TCustomAttribute;
//elSize = 4;
  TCollectionNotifyEvent<System.TCustomAttribute> = procedure(Sender:TObject; const Item:TCustomAttribute; Action:TCollectionNotification) of object;;
  TList<System.TCustomAttribute>.TEnumerator = class(TEnumerator<System.TCustomAttribute>)
  published
    function TCustomAttribute>.TEnumerator.MoveNext:Boolean;//00459A48
    constructor sub_00459A04(AList:TList<System.TCustomAttribute>);//00459A04
  public
    FList:TList<System.TCustomAttribute>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004599F4
    procedure v4; virtual;//v4//004599FC
  end;
  TList<System.TCustomAttribute> = class(TEnumerable<System.TCustomAttribute>)
  published
    procedure TCustomAttribute>.Add(Value:TCustomAttribute);//004599A4
    //procedure TCustomAttribute>.Error(Msg:string; Data:NativeInt; ?:?);//0045996C
    procedure TCustomAttribute>.GetEnumerator;//004599C8
    //procedure TCustomAttribute>.ToArray(?:?);//004599B4
    constructor sub_00459870(AComparer:IComparer<System.TCustomAttribute>);//00459870
    constructor sub_004597F8;//004597F8
    destructor TCustomAttribute>.Destroy();//00459920
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.TCustomAttribute>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.TCustomAttribute>;//fC
    FOnNotify:TCollectionNotifyEvent<System.TCustomAttribute>;//f10
    FArrayManager:TArrayManager<System.TCustomAttribute>;//f18
    FItems:TList<System.TCustomAttribute>.arrayofT;//f20
    FComparer:IComparer<System.TCustomAttribute>;//f24
    FOnNotify:TCollectionNotifyEvent<System.TCustomAttribute>;//f28
    destructor TCustomAttribute>.Destroy(); virtual;//00459920
    procedure v0; virtual;//v0//004597D8
    //procedure TCustomAttribute>.ToArray(?:?); virtual;//v4//004599B4
    //procedure v8(?:?); virtual;//v8//004597E0
    //procedure TCustomAttribute>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045996C
  end;
  MakeClosure$185$ActRec = class(TInterfacedObject)
  public
    finalizer:IFinalizer;//fC
    value:TArray<System.TCustomAttribute>;//f10
    data:PByte;//f14
  end;
  TArray<System.TArray<System.Rtti.TRttiField>> = array of TArray<System.Rtti.TRttiField>;
//elSize = 4;
  TArray<System.TArray<System.Rtti.TRttiIndexedProperty>> = array of TArray<System.Rtti.TRttiIndexedProperty>;
//elSize = 4;
  TArray<System.TArray<System.Rtti.TRttiMethod>> = array of TArray<System.Rtti.TRttiMethod>;
//elSize = 4;
  TArray<System.TArray<System.Rtti.TRttiProperty>> = array of TArray<System.Rtti.TRttiProperty>;
//elSize = 4;
  TRttiInstanceMethodClassic = class(TRttiMethod)
  published
    //procedure GetParameters(?:?);//00449D1C
  public
    FTail:PVmtMethodEntryTail;//f1C
    FReturnType:PTypeInfo;//f20
    FParams:TArray<System.Rtti.TRttiParameter>;//f24
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00449B7C
    function GetMethodKind:TMethodKind; virtual;//v10//0044A228
    function GetCallingConvention:TCallConv; virtual;//v14//0044A250
    function GetReturnType:TRttiType; virtual;//v18//0044A260
    function GetHasExtendedInfo:Boolean; virtual;//v20//0044A27C
    //function v28:?; virtual;//v28//0044A2BC
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//00449D54
    //procedure GetParameters(?:?); virtual;//v38//00449D1C
    procedure CheckExtended;//0044A20C
    function GetTailHandle:PVmtMethodEntryTail;//0044A2AC
    function GetHandle:PVmtMethodEntry;//00456098
  end;
  TRttiInstMethParameter = class(TRttiParameter)
  public
    FName:string;//f18
    FFlags:TParamFlags;//f1C
    FParamType:PTypeInfo;//f20
    FLocation:SmallInt;//f24
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00454200
    function GetName:UnicodeString; virtual;//v8//004542D0
    //function GetFlags:?; virtual;//vC//004542E4
    function GetParamType:TRttiType; virtual;//v10//004542EC
  end;
  TRttiInstanceMethodEx = class(TRttiMethod)
  published
    function GetAttributes:TArray<System.TCustomAttribute>;//0044A5C8
    function GetParameters:TArray<System.Rtti.TRttiParameter>;//0044AE1C
  public
    FInstanceMethod:TRttiInstanceMethodClassic;//f1C
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte); virtual;//v0//0044A490
    function GetAttributes:TArray<System.TCustomAttribute>; virtual;//v4//0044A5C8
    function GetName:UnicodeString; virtual;//v8//0044A694
    function GetVisibility:TMemberVisibility; virtual;//vC//0044A510
    function GetMethodKind:TMethodKind; virtual;//v10//0044A530
    function GetCallingConvention:TCallConv; virtual;//v14//0044A5B8
    function GetReturnType:TRttiType; virtual;//v18//0044A5DC
    function GetDispatchKind:TDispatchKind; virtual;//v1C//0044A604
    function GetHasExtendedInfo:Boolean; virtual;//v20//0044A5E8
    function GetVirtualIndex:SmallInt; virtual;//v24//0044A5F4
    function GetCodeAddress:Pointer; virtual;//v28//0044A688
    function GetIsClassMethod:Boolean; virtual;//v2C//0044A624
    function GetIsStatic:Boolean; virtual;//v30//0044A648
    //procedure v34(?:?; ?:?; ?:?; ?:?); virtual;//v34//0044A6AC
    function GetParameters:TArray<System.Rtti.TRttiParameter>; virtual;//v38//0044AE1C
    function GetHandle:PVmtMethodExEntry;//0044A6A8
  end;
  TRttiInstancePropertyClassic = class(TRttiInstanceProperty)
  public
    procedure GetPropInfo; virtual;//v30//0044C440
    function GetHandle:PPropInfo;//00454570
  end;
  TRttiInstancePropertyEx = class(TRttiInstanceProperty)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte); virtual;//v0//0044C448
    function GetVisibility:TMemberVisibility; virtual;//vC//0044C4F8
    function GetPropInfo:PPropInfo; virtual;//v30//0044C4E4
    function GetHandle:PPropInfoEx;//0044C4F4
  end;
  TRttiInstanceFieldClassic = class(TRttiField)
  public
    //procedure GetName(?:?); virtual;//v8//0045454C
    procedure v10; virtual;//v10//00454574
    //function v14:?; virtual;//v14//004545A0
    function GetHandle:PVmtFieldEntry;//0044C43C
    function GetParent:TRttiInstanceType;//004545B0
  end;
  TRttiInstanceFieldEx = class(TRttiField)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte); virtual;//v0//004545BC
    function GetName:UnicodeString; virtual;//v8//0045465C
    function GetVisibility:TMemberVisibility; virtual;//vC//004546B0
    function GetFieldType:TRttiType; virtual;//v10//00454694
    function GetOffset:Integer; virtual;//v14//00454684
    function GetHandle:PFieldExEntry;//00454680
  end;
  TEnumerator<System.Rtti.TRttiProperty> = class(TObject)
  published
    function Rtti.TRttiProperty>.MoveNext:Boolean;//00459E7C
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TRttiProperty> = class(TObject)
  published
    //procedure Rtti.TRttiProperty>.ToArray(?:?);//00459DC8
    function Rtti.TRttiProperty>.GetEnumerator:TEnumerator<System.Rtti.TRttiProperty>;//00459DC0
    destructor Rtti.TRttiProperty>.Destroy();//00459D9C
  public
    destructor Rtti.TRttiProperty>.Destroy(); virtual;//00459D9C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TRttiProperty>.ToArray(?:?); virtual;//v4//00459DC8
  end;
  TList<System.Rtti.TRttiProperty>.arrayofT = array of TRttiProperty;
//elSize = 4;
  TCollectionNotifyEvent<System.Rtti.TRttiProperty> = procedure(Sender:TObject; const Item:TRttiProperty; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TRttiProperty>.TEnumerator = class(TEnumerator<System.Rtti.TRttiProperty>)
  published
    function Rtti.TRttiProperty>.TEnumerator.MoveNext:Boolean;//0045A194
    constructor sub_0045A150(AList:TList<System.Rtti.TRttiProperty>);//0045A150
  public
    FList:TList<System.Rtti.TRttiProperty>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0045A140
    procedure v4; virtual;//v4//0045A148
  end;
  TList<System.Rtti.TRttiProperty> = class(TEnumerable<System.Rtti.TRttiProperty>)
  published
    procedure Rtti.TRttiProperty>.AddRange(Values:TRttiProperty);//0045A0D0
    procedure Rtti.TRttiProperty>.Add(Value:TRttiProperty);//0045A0C0
    //procedure Rtti.TRttiProperty>.InsertRange(Index:Integer; Values:TRttiProperty; ?:?);//0045A0E4
    procedure Rtti.TRttiProperty>.GetEnumerator;//0045A114
    //procedure Rtti.TRttiProperty>.ToArray(?:?);//0045A100
    constructor sub_00459F8C(AComparer:IComparer<System.Rtti.TRttiProperty>);//00459F8C
    constructor sub_00459F14;//00459F14
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiProperty>.Error(Msg:string; Data:NativeInt; ?:?);//0045A088
    destructor Rtti.TRttiProperty>.Destroy();//0045A03C
  public
    FItems:TList<System.Rtti.TRttiProperty>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TRttiProperty>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiProperty>;//f10
    FArrayManager:TArrayManager<System.Rtti.TRttiProperty>;//f18
    FItems:TList<System.Rtti.TRttiProperty>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TRttiProperty>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiProperty>;//f28
    destructor Rtti.TRttiProperty>.Destroy(); virtual;//0045A03C
    procedure v0; virtual;//v0//00459EF4
    //procedure Rtti.TRttiProperty>.ToArray(?:?); virtual;//v4//0045A100
    //procedure v8(?:?); virtual;//v8//00459EFC
    //procedure Rtti.TRttiProperty>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045A088
  end;
  TEnumerator<System.Rtti.TRttiMethod> = class(TObject)
  published
    function Rtti.TRttiMethod>.MoveNext:Boolean;//0045A2E4
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TRttiMethod> = class(TObject)
  published
    //procedure Rtti.TRttiMethod>.ToArray(?:?);//0045A230
    function Rtti.TRttiMethod>.GetEnumerator:TEnumerator<System.Rtti.TRttiMethod>;//0045A228
    destructor Rtti.TRttiMethod>.Destroy();//0045A204
  public
    destructor Rtti.TRttiMethod>.Destroy(); virtual;//0045A204
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TRttiMethod>.ToArray(?:?); virtual;//v4//0045A230
  end;
  TList<System.Rtti.TRttiMethod>.arrayofT = array of TRttiMethod;
//elSize = 4;
  TCollectionNotifyEvent<System.Rtti.TRttiMethod> = procedure(Sender:TObject; const Item:TRttiMethod; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TRttiMethod>.TEnumerator = class(TEnumerator<System.Rtti.TRttiMethod>)
  published
    function Rtti.TRttiMethod>.TEnumerator.MoveNext:Boolean;//0045A5FC
    constructor sub_0045A5B8(AList:TList<System.Rtti.TRttiMethod>);//0045A5B8
  public
    FList:TList<System.Rtti.TRttiMethod>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0045A5A8
    procedure v4; virtual;//v4//0045A5B0
  end;
  TList<System.Rtti.TRttiMethod> = class(TEnumerable<System.Rtti.TRttiMethod>)
  published
    procedure Rtti.TRttiMethod>.AddRange(Values:TRttiMethod);//0045A538
    procedure Rtti.TRttiMethod>.Add(Value:TRttiMethod);//0045A528
    //procedure Rtti.TRttiMethod>.InsertRange(Index:Integer; Values:TRttiMethod; ?:?);//0045A54C
    procedure Rtti.TRttiMethod>.GetEnumerator;//0045A57C
    //procedure Rtti.TRttiMethod>.ToArray(?:?);//0045A568
    constructor sub_0045A3F4(AComparer:IComparer<System.Rtti.TRttiMethod>);//0045A3F4
    constructor sub_0045A37C;//0045A37C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiMethod>.Error(Msg:string; Data:NativeInt; ?:?);//0045A4F0
    destructor Rtti.TRttiMethod>.Destroy();//0045A4A4
  public
    FItems:TList<System.Rtti.TRttiMethod>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TRttiMethod>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiMethod>;//f10
    FArrayManager:TArrayManager<System.Rtti.TRttiMethod>;//f18
    FItems:TList<System.Rtti.TRttiMethod>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TRttiMethod>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiMethod>;//f28
    destructor Rtti.TRttiMethod>.Destroy(); virtual;//0045A4A4
    procedure v0; virtual;//v0//0045A35C
    //procedure Rtti.TRttiMethod>.ToArray(?:?); virtual;//v4//0045A568
    //procedure v8(?:?); virtual;//v8//0045A364
    //procedure Rtti.TRttiMethod>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045A4F0
  end;
  TEnumerator<System.Rtti.TRttiField> = class(TObject)
  published
    function Rtti.TRttiField>.MoveNext:Boolean;//0045A74C
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TRttiField> = class(TObject)
  published
    //procedure Rtti.TRttiField>.ToArray(?:?);//0045A698
    function Rtti.TRttiField>.GetEnumerator:TEnumerator<System.Rtti.TRttiField>;//0045A690
    destructor Rtti.TRttiField>.Destroy();//0045A66C
  public
    destructor Rtti.TRttiField>.Destroy(); virtual;//0045A66C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TRttiField>.ToArray(?:?); virtual;//v4//0045A698
  end;
  TList<System.Rtti.TRttiField>.arrayofT = array of TRttiField;
//elSize = 4;
  TCollectionNotifyEvent<System.Rtti.TRttiField> = procedure(Sender:TObject; const Item:TRttiField; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TRttiField>.TEnumerator = class(TEnumerator<System.Rtti.TRttiField>)
  published
    function Rtti.TRttiField>.TEnumerator.MoveNext:Boolean;//0045AA64
    constructor sub_0045AA20(AList:TList<System.Rtti.TRttiField>);//0045AA20
  public
    FList:TList<System.Rtti.TRttiField>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0045AA10
    procedure v4; virtual;//v4//0045AA18
  end;
  TList<System.Rtti.TRttiField> = class(TEnumerable<System.Rtti.TRttiField>)
  published
    procedure Rtti.TRttiField>.AddRange(Values:TRttiField);//0045A9A0
    procedure Rtti.TRttiField>.Add(Value:TRttiField);//0045A990
    //procedure Rtti.TRttiField>.InsertRange(Index:Integer; Values:TRttiField; ?:?);//0045A9B4
    procedure Rtti.TRttiField>.GetEnumerator;//0045A9E4
    //procedure Rtti.TRttiField>.ToArray(?:?);//0045A9D0
    constructor sub_0045A85C(AComparer:IComparer<System.Rtti.TRttiField>);//0045A85C
    constructor sub_0045A7E4;//0045A7E4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiField>.Error(Msg:string; Data:NativeInt; ?:?);//0045A958
    destructor Rtti.TRttiField>.Destroy();//0045A90C
  public
    FItems:TList<System.Rtti.TRttiField>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TRttiField>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiField>;//f10
    FArrayManager:TArrayManager<System.Rtti.TRttiField>;//f18
    FItems:TList<System.Rtti.TRttiField>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TRttiField>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiField>;//f28
    destructor Rtti.TRttiField>.Destroy(); virtual;//0045A90C
    procedure v0; virtual;//v0//0045A7C4
    //procedure Rtti.TRttiField>.ToArray(?:?); virtual;//v4//0045A9D0
    //procedure v8(?:?); virtual;//v8//0045A7CC
    //procedure Rtti.TRttiField>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045A958
  end;
  TProcSig = class(TRttiObject)
  published
    function GetReturnType:TRttiType;//00450814
    function ToString:string;//00450690
    function HasInfo:Boolean;//0045067C
    function GetParams:TArray<System.Rtti.TRttiParameter>;//0045083C
  public
    function ToString:string; virtual;//00450690
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte); virtual;//v0//004505E0
    function GetHandle:PProcedureSignature;//00450810
  end;
  TProcParam = class(TRttiParameter)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte); virtual;//v0//004508D0
    function GetFlags:TParamFlags; virtual;//vC//00450974
    function GetParamType:TRttiType; virtual;//v10//00450988
    function GetHandle:PProcedureParam;//0044A2A8
  end;
  TRttiRecordField = class(TRttiField)
  public
    function GetName:UnicodeString; virtual;//v8//00450C00
    function GetVisibility:TMemberVisibility; virtual;//vC//00450BB8
    function GetFieldType:TRttiType; virtual;//v10//00450BD8
    function GetOffset:Integer; virtual;//v14//00450BF0
    function GetHandle:PRecordTypeField;//00450BD4
  end;
  TRttiRecordMethod = class(TRttiMethod)
  published
    function GetParameters:TArray<System.Rtti.TRttiParameter>;//00451138
  public
    FSig:TProcSig;//f1C
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte); virtual;//v0//00450D88
    function GetName:UnicodeString; virtual;//v8//004511AC
    function GetMethodKind:TMethodKind; virtual;//v10//0045114C
    function GetCallingConvention:TCallConv; virtual;//v14//00450E44
    function GetReturnType:TRttiType; virtual;//v18//00450E58
    //function v1C:?; virtual;//v1C//00450E64
    function GetHasExtendedInfo:Boolean; virtual;//v20//00450E68
    //function v28:?; virtual;//v28//00450E74
    function GetIsClassMethod:Boolean; virtual;//v2C//00450E7C
    function GetIsStatic:Boolean; virtual;//v30//00450E98
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//00450EAC
    function GetParameters:TArray<System.Rtti.TRttiParameter>; virtual;//v38//00451138
  end;
  TEnumerator<System.Rtti.TRttiManagedField> = class(TObject)
  published
    function Rtti.TRttiManagedField>.MoveNext:Boolean;//0045ABB4
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Rtti.TRttiManagedField> = class(TObject)
  published
    //procedure Rtti.TRttiManagedField>.ToArray(?:?);//0045AB00
    function Rtti.TRttiManagedField>.GetEnumerator:TEnumerator<System.Rtti.TRttiManagedField>;//0045AAF8
    destructor Rtti.TRttiManagedField>.Destroy();//0045AAD4
  public
    destructor Rtti.TRttiManagedField>.Destroy(); virtual;//0045AAD4
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Rtti.TRttiManagedField>.ToArray(?:?); virtual;//v4//0045AB00
  end;
  TList<System.Rtti.TRttiManagedField>.arrayofT = array of TRttiManagedField;
//elSize = 4;
  TCollectionNotifyEvent<System.Rtti.TRttiManagedField> = procedure(Sender:TObject; const Item:TRttiManagedField; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TRttiManagedField>.TEnumerator = class(TEnumerator<System.Rtti.TRttiManagedField>)
  published
    function Rtti.TRttiManagedField>.TEnumerator.MoveNext:Boolean;//0045AE9C
    constructor sub_0045AE58(AList:TList<System.Rtti.TRttiManagedField>);//0045AE58
  public
    FList:TList<System.Rtti.TRttiManagedField>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0045AE48
    procedure v4; virtual;//v4//0045AE50
  end;
  TList<System.Rtti.TRttiManagedField> = class(TEnumerable<System.Rtti.TRttiManagedField>)
  published
    procedure Rtti.TRttiManagedField>.Add(Value:TRttiManagedField);//0045ADF8
    //procedure Rtti.TRttiManagedField>.Error(Msg:string; Data:NativeInt; ?:?);//0045ADC0
    procedure Rtti.TRttiManagedField>.GetEnumerator;//0045AE1C
    //procedure Rtti.TRttiManagedField>.ToArray(?:?);//0045AE08
    constructor sub_0045ACC4(AComparer:IComparer<System.Rtti.TRttiManagedField>);//0045ACC4
    constructor sub_0045AC4C;//0045AC4C
    destructor Rtti.TRttiManagedField>.Destroy();//0045AD74
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Rtti.TRttiManagedField>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TRttiManagedField>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiManagedField>;//f10
    FArrayManager:TArrayManager<System.Rtti.TRttiManagedField>;//f18
    FItems:TList<System.Rtti.TRttiManagedField>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TRttiManagedField>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiManagedField>;//f28
    destructor Rtti.TRttiManagedField>.Destroy(); virtual;//0045AD74
    procedure v0; virtual;//v0//0045AC2C
    //procedure Rtti.TRttiManagedField>.ToArray(?:?); virtual;//v4//0045AE08
    //procedure v8(?:?); virtual;//v8//0045AC34
    //procedure Rtti.TRttiManagedField>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045ADC0
  end;
  TRttiIntfMethParameter = class(TRttiParameter)
  public
    FName:string;//f18
    FFlags:TParamFlags;//f1C
    FParamType:PPTypeInfo;//f20
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00454CC0
    function GetName:UnicodeString; virtual;//v8//00454D90
    //function GetFlags:?; virtual;//vC//00454DA4
    function GetParamType:TRttiType; virtual;//v10//00454DAC
  end;
  TRttiIntfMethod = class(TRttiMethod)
  published
    function GetParameters:TArray<System.Rtti.TRttiParameter>;//00455164
  public
    FTail:PIntfMethodEntryTail;//f1C
    FParameters:TArray<System.Rtti.TRttiParameter>;//f20
    FReturnType:PTypeInfo;//f24
    FVirtualIndex:Integer;//f28
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00454DBC
    function GetMethodKind:TMethodKind; virtual;//v10//00454F38
    function GetCallingConvention:TCallConv; virtual;//v14//00454F48
    function GetReturnType:TRttiType; virtual;//v18//00454F50
    //function v1C:?; virtual;//v1C//00454F6C
    //function v20:?; virtual;//v20//00454F60
    //function v24:?; virtual;//v24//00454F64
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//00454F70
    function GetParameters:TArray<System.Rtti.TRttiParameter>; virtual;//v38//00455164
  end;
  TObjectDictionary<System.Pointer,System.Rtti.TRttiObject> = class(TDictionary<System.Pointer,System.Rtti.TRttiObject>)
  published
    constructor sub_0045B0D4(Ownerships:TDictionaryOwnerships; AComparer:IEqualityComparer<System.Pointer>; ACapacity:Integer);//0045B0D4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Pointer,System.Rtti.TRttiObject>.Create(ACapacity:Integer);//0045B088
  public
    FOwnerships:TDictionaryOwnerships;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//0045B028
    //procedure vC(?:?; ?:?); virtual;//vC//0045B058
  end;
    function CodeHeap:TPrivateHeap;//0043E6F8
    function GetModuleListVersion:Integer;//0043E828
    procedure OnUnloadModule(HInstance:Windows.HINST);//0043E838
    function InsufficientRtti:Exception;//0043EAD0
    procedure CheckCodeAddress(code:Pointer);//0043EAE4
    //function sub_0043EB94(?:Pointer):?;//0043EB94
    function NopRefCount(inst:Pointer):Integer; stdcall;//0043EB9C
    function NopQueryInterface(inst:Pointer; const IID:TGUID; var Obj:void ):HRESULT; stdcall;//0043EBA8
    function IsManaged(TypeInfo:TypInfo.PTypeInfo):Boolean;//0043EBB8
    function GetInlineSize(TypeInfo:TypInfo.PTypeInfo):Integer;//0043EC30
    function UseResultPointer(TypeInfo:TypInfo.PTypeInfo; IsConstructor:Boolean):Boolean;//0043ED90
    function PassByRef(TypeInfo:TypInfo.PTypeInfo; CC:TypInfo.TCallConv; IsConst:Boolean):Boolean;//0043EE20
    procedure PassArg(Par:TRttiParameter; const ArgSrc:TValue; var ArgDest:TValue; CC:TypInfo.TCallConv);//0043EEA4
    function AllocReg(var Regs:UInt32):UInt32;//0043F07C
    function Align4(Value:Integer):Integer;//0043F09C
    constructor Create;//0043F650
    function GetIsEmpty:Boolean;//0043F678
    function GetTypeInfo:PTypeInfo;//0043F6D0
    function GetTypeKind:TTypeKind;//0043F6D4
    function GetTypeDataProp:PTypeData;//0043F6E8
    function GetDataSize:Integer;//0043F6FC
    function GetValueStackSize(const AValue:TValue):Integer;//0043F840
    function GetEmpty:TValue;//0043F854
    function &op_Implicit:TValue;//0043F8A4
    function &op_Implicit:TValue;//0043F8C0
    function &op_Implicit:TValue;//0043F8E0
    function &op_Implicit:TValue;//0043F904
    function &op_Implicit:TValue;//0043F928
    function &op_Implicit:TValue;//0043F94C
    procedure sub_0043F970(?:TRttiType; ?:Byte);//0043F970
    function &op_Implicit:TValue;//0043F9C0
    function &op_Implicit:TValue;//0043F9E8
    function IsObject:Boolean;//0043FA04
    //function sub_0043FA24(?:Byte):?;//0043FA24
    function GetDynArrayElType(ATypeInfo:TypInfo.PTypeInfo):PTypeInfo;//0043FA60
    //function sub_0043FA7C:?;//0043FA7C
    function IsOrdinal:Boolean;//0043FA84
    function AsOrdinal:Int64;//0043FABC
    function TryAsOrdinal(var AResult:Int64):Boolean;//0043FAF4
    function Cast:TValue;//0043FBDC
    function AsInteger:Integer;//0043FC1C
    function AsBoolean:Boolean;//0043FC7C
    function AsExtended:Extended;//0043FCA8
    function AsInt64:Int64;//0043FD38
    function AsInterface:IInterface;//0043FDA8
    function AsString:UnicodeString;//0043FDDC
    function Pointer,System.Rtti.TRttiObject>.TPairEnumerator.DoGetCurrent:TPair<System.Pointer,System.Rtti.TRttiObject>;//0043FE5C
    function GetClassInfo(AClass:TClass):PTypeInfo;//0043FE70
    procedure Make(ATypeInfo:TypInfo.PTypeInfo; var Result:TValue);//0043FE88
    //procedure sub_0043FF3C(?:?; ?:?; ?:?);//0043FF3C
    //procedure sub_0043FFA4(?:?; ?:?; ?:?);//0043FFA4
    procedure ExtractRawData(ABuffer:Pointer);//00440024
    procedure ExtractRawDataNoCopy(ABuffer:Pointer);//0044006C
    function GetReferenceToRawData:Pointer;//004400B4
    function GetEnumBaseType(ATypeInfo:TypInfo.PTypeInfo):PTypeInfo;//00440804
    function IsBoolType(ATypeInfo:TypInfo.PTypeInfo):Boolean;//00440838
    function TryCast(ATypeInfo:TypInfo.PTypeInfo; var AResult:TValue):Boolean;//00442230
    procedure PeekData(var P:Windows.PByte; var Data:void ; Len:Integer);//00442374
    procedure ReadData(var P:Windows.PByte; var Data:void ; Len:Integer);//0044237C
    function ReadI32(var P:Windows.PByte):LongInt;//00442390
    function ReadPointer(var P:Windows.PByte):Pointer;//004423A4
    function ReadI16(var P:Windows.PByte):SmallInt;//004423B8
    function ReadI8(var P:Windows.PByte):ShortInt;//004423CC
    function _UTF8ToString(P:Pointer):UnicodeString;//0044240C
    function ReadShortString(var P:Windows.PByte):UnicodeString;//004424A0
    function PeekI16(var P:Windows.PByte):SmallInt;//004424C0
    function _SkipShortString(P:Pointer):PByte;//004424D4
    function GetBitField(Value:Integer; Shift:Integer; Bits:Integer):Integer;//004424E0
    function GetRttiClass(ATypeInfo:TypInfo.PTypeInfo):TRttiClass;//004424F8
    //procedure sub_0044621C(?:?; ?:?);//0044621C
    function $0$1$Body(const L:TRttiPackage; const R:TRttiPackage):Integer;//00446320
    function DoUpdate:TArray<System.Rtti.TRttiPackage>System.TArray`1<TRttiPackage>;//00446340
    procedure DoCreate;//00446984
    procedure EnsurePoolToken(TokenRef:PInterface);//00446A0C
    //procedure sub_00446A30(?:?; ?:?);//00446A30
    //procedure sub_00446A6C(?:?; ?:?);//00446A6C
    //procedure sub_00446AA8(?:TRttiInstanceType; ?:?; ?:SmallInt; ?:?; ?:?);//00446AA8
    //function sub_00446E84(?:TRttiInstanceType; ?:Pointer):?;//00446E84
    //function sub_00446F68(?:PByte; ?:?):?;//00446F68
    //procedure sub_004470A4(?:?; ?:?);//004470A4
    //procedure sub_0044866C(?:?; ?:?);//0044866C
    function MakeClosure(data:Windows.PByte):TFunc<System.TArray<System.TCustomAttribute>>System.SysUtils.TFunc`1<TArray<System.TCustomAttribute>System.TArray`1<System.TCustomAttribute>>;//00448808
    function LazyLoadAttributes(var P:Windows.PByte):TFunc<System.TArray<System.TCustomAttribute>>System.SysUtils.TFunc`1<TArray<System.TCustomAttribute>System.TArray`1<System.TCustomAttribute>>;//00448880
    function Create:TRttiContext;//004488A8
    procedure Free;//004488B0
    function GetType(AClass:TClass):TRttiType;//004488BC
    //procedure sub_004488D4(?:?);//004488D4
    procedure sub_00448910;//00448910
    destructor Destroy();//0044892C
    function GetHandle:HINST;//00448974
    function GetNameFromType(AType:TRttiType):UnicodeString;//00448978
    function ReadObject(ARttiClass:TRttiClass; AParent:TRttiObject; var P:PByte):TRttiObject;//00448984
    function ReadObjectPointer(ARttiClass:TRttiClass; AParent:TRttiObject; P:Pointer):TRttiObject;//00448A44
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00448A60
    destructor Destroy();//00448AB8
    function GetAttributes:TArray<System.TCustomAttribute>;//00448B60
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00448B8C
    function GetAsInstance:TRttiInstanceType;//00448C30
    function GetAsOrdinal:TRttiOrdinalType;//00448C44
    function GetAsRecord:TRttiRecordType;//00448C58
    function GetAsSet:TRttiSetType;//00448C6C
    function GetField(AName:string):TRttiField;//00448C80
    //procedure GetFields(?:?);//00448D58
    function GetHandle:PTypeInfo;//00448E2C
    //procedure GetIndexedProperties(?:?);//00448E30
    function GetIndexedProperty(AName:string):TRttiIndexedProperty;//00448F04
    function GetIsInstance:Boolean;//00448FDC
    function GetIsManaged:Boolean;//00448FF0
    function GetIsOrdinal:Boolean;//00449004
    function GetIsRecord:Boolean;//00449018
    function GetIsSet:Boolean;//0044902C
    //function sub_00449040:?;//00449040
    //function sub_00449044:?;//00449044
    //function sub_00449048:?;//00449048
    function GetMethod(AName:string):TRttiMethod;//0044904C
    //procedure GetMethods(AName:string; ?:?);//00449124
    //procedure GetMethods(?:?);//004492E0
    function GetName:UnicodeString;//004493B4
    //procedure GetProperties(?:?);//004493D8
    function GetProperty(AName:string):TRttiProperty;//004494AC
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;//00449584
    function GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>;//00449598
    function GetDeclaredFields:TArray<System.Rtti.TRttiField>;//004495AC
    function GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>;//004495C0
    function GetTypeData:PTypeData;//004495D4
    function GetTypeKind:TTypeKind;//004495E8
    //function sub_004495F8:?;//004495F8
    function ToString:string;//00449600
    function GetQualifiedName:UnicodeString;//00449614
    //function sub_0044969C:?;//0044969C
    function GetIsPublicType:Boolean;//004496A0
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00449B7C
    //procedure sub_00449D54(?:?; ?:?; ?:?);//00449D54
    function GetMethodKind:TMethodKind;//0044A228
    function GetCallingConvention:TCallConv;//0044A250
    function GetReturnType:TRttiType;//0044A260
    function GetHasExtendedInfo:Boolean;//0044A27C
    function GetName:UnicodeString;//0044A284
    //function sub_0044A2BC:?;//0044A2BC
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//0044A490
    function GetVisibility:TMemberVisibility;//0044A510
    function GetMethodKind:TMethodKind;//0044A530
    function GetCallingConvention:TCallConv;//0044A5B8
    function GetReturnType:TRttiType;//0044A5DC
    function GetHasExtendedInfo:Boolean;//0044A5E8
    function GetVirtualIndex:SmallInt;//0044A5F4
    function GetDispatchKind:TDispatchKind;//0044A604
    function GetIsClassMethod:Boolean;//0044A624
    function GetIsStatic:Boolean;//0044A648
    function GetCodeAddress:Pointer;//0044A688
    function GetName:UnicodeString;//0044A694
    //procedure sub_0044A6AC(?:?; ?:?; ?:?; ?:?);//0044A6AC
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//0044B294
    function GetAttributes:TArray<System.TCustomAttribute>;//0044B2F0
    procedure sub_0044B310;//0044B310
    function GetBaseTyped:TRttiInstanceType;//0044B318
    function GetMetaclassType:TClass;//0044B33C
    //procedure sub_0044B34C(?:?; ?:?);//0044B34C
    //procedure sub_0044B3E0(?:?; ?:?);//0044B3E0
    //function sub_0044B474(?:?; ?:?):?;//0044B474
    //procedure sub_0044B4D4(?:?; ?:?; ?:?);//0044B4D4
    //procedure sub_0044B590(?:?; ?:?);//0044B590
    procedure ReadPropData;//0044B60C
    function GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>;//0044B788
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;//0044B7B0
    //procedure sub_0044B7D8(?:?; ?:?);//0044B7D8
    //procedure sub_0044B898(?:?; ?:?);//0044B898
    //function sub_0044B92C(?:?; ?:?):?;//0044B92C
    //procedure sub_0044B98C(?:?; ?:?; ?:?);//0044B98C
    procedure ReadMethData;//0044BA48
    function ReadClassicFields:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>;//0044BB94
    function ReadExtendedFields:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>;//0044BC14
    //function sub_0044BC90(?:?; ?:?):?;//0044BC90
    function SubtractClassic(const AClassic:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>; const AExtended:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>):TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>;//0044BCF0
    function GetDeclaredFields:TArray<System.Rtti.TRttiField>;//0044BDAC
    function GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>;//0044BE74
    function GetDeclaringUnitName:UnicodeString;//0044BE9C
    function GetVmtSize:Integer;//0044BEC0
    function GetDefault:Integer;//0044BEE0
    function GetIndex:Integer;//0044BEF0
    function GetName:UnicodeString;//0044BF00
    function GetNameIndex:SmallInt;//0044BF24
    function GetPropertyType:TRttiType;//0044BF34
    function GetIsReadable:Boolean;//0044BF4C
    function GetIsWritable:Boolean;//0044BF60
    function DoGetValue(Instance:Pointer):TValue;//0044BF74
    //procedure sub_0044C118(?:?; ?:?);//0044C118
    function ToString:string;//0044C338
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//0044C3E4
    procedure GetPropInfo;//0044C440
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//0044C448
    function GetPropInfo:PPropInfo;//0044C4E4
    function GetVisibility:TMemberVisibility;//0044C4F8
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//0044C514
    function GetMaxValue:LongInt;//0044C5B4
    function GetMinValue:LongInt;//0044C5C4
    function GetFloatType:TFloatType;//0044C5D4
    function GetTypeSize:Integer;//0044C5E4
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//0044C5FC
    //function sub_0044C698:?;//0044C698
    function GetMaxValue:Int64;//0044C6A0
    function GetMinValue:Int64;//0044C6C8
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//0044C6EC
    function GetInstanceType:TRttiInstanceType;//0044C788
    function GetMetaclassType:TClass;//0044C7AC
    function SkipEnumNameList(P:Windows.PByte; ACount:Integer):PByte;//0044C7D0
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//0044C7F0
    function GetUnderlyingType:TRttiType;//0044C8CC
    function GetMaxValue:LongInt;//0044C8E8
    function GetMinValue:LongInt;//0044C910
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//004505E0
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//004508D0
    function GetHandle:PArrayPropInfo;//00450970
    function GetFlags:TParamFlags;//00450974
    function GetParamType:TRttiType;//00450988
    function GetName:UnicodeString;//004509A4
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//004509C8
    function GetFieldType:TRttiType;//00450A1C
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00450B18
    function GetVisibility:TMemberVisibility;//00450BB8
    function GetFieldType:TRttiType;//00450BD8
    function GetOffset:Integer;//00450BF0
    function GetName:UnicodeString;//00450C00
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//00450D88
    function GetCallingConvention:TCallConv;//00450E44
    function GetReturnType:TRttiType;//00450E58
    //function sub_00450E64:?;//00450E64
    function GetHasExtendedInfo:Boolean;//00450E68
    //function sub_00450E74:?;//00450E74
    function GetIsClassMethod:Boolean;//00450E7C
    function GetIsStatic:Boolean;//00450E98
    //procedure sub_00450EAC(?:?; ?:?; ?:?);//00450EAC
    function GetMethodKind:TMethodKind;//0045114C
    function GetName:UnicodeString;//004511AC
    //procedure GetDeclaredFields(?:?);//00451278
    //procedure GetDeclaredMethods(?:?);//004513CC
    //procedure GetAttributes(?:?);//00451488
    function GetTypeSize:Integer;//004514E4
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//004514F4
    function GetElementSize:LongInt;//004515A0
    function GetTotalElementCount:Integer;//004515B0
    function GetElementType:TRttiType;//004515C0
    function GetDimensionCount:Integer;//004515DC
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//004515EC
    function GetDeclaringUnitName:UnicodeString;//0045168C
    function GetTypeSize:Integer;//004516B0
    function GetElementType:TRttiType;//004516C0
    function GetOleAutoVarType:TVarType;//004516E0
    function GetReferredType:TRttiType;//004516F0
    //procedure GetAttributes(?:?);//00451708
    function GetReturnType:TRttiType;//004517E4
    function GetCallingConvention:TCallConv;//004517F8
    function GetParameters:TArray<System.Rtti.TRttiParameter>;//00451814
    function ToString:string;//00451840
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//0045193C
    //procedure Invoke(Callable:TValue; Args:TValue; ?:?; ?:?);//00451A50
    function ToString:string;//00451CD0
    function GetMethodKind:TMethodKind;//00451D48
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00451D58
    //procedure Invoke(Callable:TValue; Args:TValue; ?:?; ?:?);//00451DC4
    //procedure GetAttributes(?:?);//00452028
    function GetCodePage:Word;//00452104
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00452114
    function GetStringKind:TRttiStringKind;//004521E0
    function GetTypeSize:Integer;//00452208
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//0045222C
    function GetOrdType:TOrdType;//004522C8
    function GetTypeSize:Integer;//004522D8
    //procedure sub_004522F0(?:?; ?:?);//004522F0
    //procedure sub_004536DC(?:?; ?:?);//004536DC
    //function sub_00453760(?:?; ?:?):?;//00453760
    procedure PutArg(const Arg:TValue);//004537DC
    procedure PutRefArg(const Loc:Pointer);//00453870
    function Invoke(CodeAddress:Pointer; const Args:TArray<System.Rtti.TValue>System.TArray`1<TValue>; CallingConvention:TypInfo.TCallConv; AResultType:TypInfo.PTypeInfo; IsStatic:Boolean; IsConstructor:Boolean):TValue;//004538C0
    destructor Destroy();//00453BC0
    //function sub_00453BF0:?;//00453BF0
    //function sub_00453BF4:?;//00453BF4
    //function sub_00453BF8:?;//00453BF8
    function GetIsClassMethod:Boolean;//00453BFC
    function GetIsConstructor:Boolean;//00453C20
    function GetIsDestructor:Boolean;//00453C44
    //function sub_00453C68:?;//00453C68
    //function sub_00453C6C:?;//00453C6C
    function Invoke(Instance:TObject; Args:TValue):TValue;//00453C70
    function Invoke(Instance:TClass; Args:TValue):TValue;//00453CE4
    function ToString:string;//00453D9C
    function ToString:string;//004540C4
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00454200
    function GetName:UnicodeString;//004542D0
    //function GetFlags:?;//004542E4
    function GetParamType:TRttiType;//004542EC
    function GetParent:TRttiType;//004542FC
    //function sub_00454300:?;//00454300
    //function sub_00454304:?;//00454304
    //function sub_00454308:?;//00454308
    //procedure GetValue(Instance:Pointer; ?:?);//00454310
    procedure SetValue(Instance:Pointer; AValue:TValue);//00454360
    function ToString:string;//004543F8
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//004544F4
    //procedure GetName(?:?);//0045454C
    procedure sub_00454574;//00454574
    //function sub_004545A0:?;//004545A0
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//004545BC
    function GetName:UnicodeString;//0045465C
    function GetOffset:Integer;//00454684
    function GetFieldType:TRttiType;//00454694
    function GetVisibility:TMemberVisibility;//004546B0
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//004546CC
    function GetElementType:TRttiType;//0045476C
    function GetTypeSize:Integer;//00454788
    procedure GetMethods(var P:Windows.PByte);//00454A9C
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00454B68
    function GetIntfFlags:TIntfFlags;//00454C24
    function GetDeclaringUnitName:UnicodeString;//00454C38
    procedure sub_00454C5C;//00454C5C
    function GetBaseTyped:TRttiInterfaceType;//00454C64
    function GetGUID:TGUID;//00454C88
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;//00454CA4
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00454CC0
    function GetName:UnicodeString;//00454D90
    //function GetFlags:?;//00454DA4
    function GetParamType:TRttiType;//00454DAC
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00454DBC
    //function sub_00454F0C(?:TRttiIntfMethod):?;//00454F0C
    function GetName:UnicodeString;//00454F14
    function GetMethodKind:TMethodKind;//00454F38
    function GetCallingConvention:TCallConv;//00454F48
    function GetReturnType:TRttiType;//00454F50
    //function sub_00454F60:?;//00454F60
    //function sub_00454F64:?;//00454F64
    //function sub_00454F6C:?;//00454F6C
    //procedure sub_00454F70(?:?; ?:?; ?:?);//00454F70
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);//00455244
    function GetName:UnicodeString;//00455418
    function GetType(ATypeInfo:Pointer):TRttiType;//00455430
    function GetNameFromType(AType:TRttiType):UnicodeString;//00455530
    function GetUnits:TArray<System.string>System.TArray`1<System.string>;//00455560
    procedure DoMake;//00455604
    destructor TInvokeInfo.Destroy();//00455804
    procedure TInvokeInfo.CheckNotSealed;//00455830
    //procedure sub_00455834(?:?; ?:?; ?:?);//00455834
    //procedure sub_004558F0(?:?; ?:?; ?:?; ?:?);//004558F0
    function TInvokeInfo.GetParamLocs:TArray<System.Rtti.TMethodImplementation.TParamLoc>;//004559D4
    procedure TInvokeInfo.SetReturnType(Value:TypInfo.PTypeInfo);//004559F0
    //procedure sub_00455A04(?:Integer; ?:?; ?:?);//00455A04
    function TParamLoc.GetArgLoc(AFrame:PInterceptFrame):Pointer;//00455A70
    //procedure sub_00455AA4(?:Integer; ?:?; ?:Integer);//00455AA4
    procedure FreeIntercept(AIntercept:PFirstStageIntercept);//00455D80
    destructor Destroy();//00455D94
    TMethodImplementationIntercept; stdcall;//00455DC8
    //procedure sub_00455DD8(?:?; ?:?);//00455DD8
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);//00455EB4
    procedure GetAccessors;//00455F54
    function GetReadMethod:TRttiMethod;//00456048
    function GetWriteMethod:TRttiMethod;//00456070
    function GetIsDefault:Boolean;//0045609C
    function GetIsReadable:Boolean;//004560B0
    function GetIsWritable:Boolean;//004560C8
    function GetName:UnicodeString;//004560E0
    procedure sub_0045618C;//0045618C
    function ToString:string;//004561AC

implementation

//0043E6F8
function CodeHeap:TPrivateHeap;
begin
{*
 0043E6F8    cmp         dword ptr ds:[7C9F88],0
>0043E6FF    jne         0043E72A
 0043E701    mov         dl,1
 0043E703    mov         eax,[0043E4FC];TPrivateHeap
 0043E708    call        TPrivateHeap.Create
 0043E70D    mov         edx,eax
 0043E70F    xor         eax,eax
 0043E711    lock cmpxchgdword ptr ds:[7C9F88],edx
 0043E719    test        eax,eax
>0043E71B    jne         0043E723
 0043E71D    xor         eax,eax
 0043E71F    mov         edx,eax
>0043E721    jmp         0043E72A
 0043E723    mov         eax,edx
 0043E725    call        TObject.Free
 0043E72A    mov         eax,[007C9F88]
 0043E72F    ret
*}
end;

//0043E730
constructor TPrivateHeap.Create();
begin
{*
 0043E730    test        dl,dl
>0043E732    je          0043E73C
 0043E734    add         esp,0FFFFFFF0
 0043E737    call        @ClassCreate
 0043E73C    test        dl,dl
>0043E73E    je          0043E74F
 0043E740    call        @AfterConstruction
 0043E745    pop         dword ptr fs:[0]
 0043E74C    add         esp,0C
 0043E74F    ret
*}
end;

//0043E750
destructor TPrivateHeap.Destroy();
begin
{*
 0043E750    push        ebx
 0043E751    push        esi
 0043E752    push        edi
 0043E753    call        @BeforeDestruction
 0043E758    mov         ebx,edx
 0043E75A    mov         edi,eax
 0043E75C    mov         esi,dword ptr [edi+4]
 0043E75F    test        esi,esi
>0043E761    je          0043E777
 0043E763    push        esi
 0043E764    call        kernel32.HeapDestroy
 0043E769    test        eax,eax
>0043E76B    jne         0043E772
 0043E76D    call        RaiseLastOSError
 0043E772    xor         eax,eax
 0043E774    mov         dword ptr [edi+4],eax
 0043E777    mov         dl,0FC
 0043E779    and         dl,bl
 0043E77B    mov         eax,edi
 0043E77D    call        TObject.Destroy
 0043E782    test        bl,bl
>0043E784    jle         0043E78D
 0043E786    mov         eax,edi
 0043E788    call        @ClassDestroy
 0043E78D    pop         edi
 0043E78E    pop         esi
 0043E78F    pop         ebx
 0043E790    ret
*}
end;

//0043E794
procedure TPrivateHeap.FreeMem(P:Pointer);
begin
{*
 0043E794    push        ebx
 0043E795    push        esi
 0043E796    mov         esi,edx
 0043E798    mov         ebx,eax
 0043E79A    push        esi
 0043E79B    push        0
 0043E79D    mov         eax,ebx
 0043E79F    call        TPrivateHeap.GetHandle
 0043E7A4    push        eax
 0043E7A5    call        kernel32.HeapFree
 0043E7AA    test        eax,eax
>0043E7AC    jne         0043E7B3
 0043E7AE    call        RaiseLastOSError
 0043E7B3    pop         esi
 0043E7B4    pop         ebx
 0043E7B5    ret
*}
end;

//0043E7B8
function TPrivateHeap.GetHandle:THandle;
begin
{*
 0043E7B8    push        ebx
 0043E7B9    push        esi
 0043E7BA    mov         ebx,eax
 0043E7BC    cmp         dword ptr [ebx+4],0
>0043E7C0    jne         0043E7DB
 0043E7C2    push        0
 0043E7C4    push        0
 0043E7C6    push        0
 0043E7C8    call        kernel32.HeapCreate
 0043E7CD    mov         esi,eax
 0043E7CF    mov         dword ptr [ebx+4],esi
 0043E7D2    test        esi,esi
>0043E7D4    jne         0043E7DB
 0043E7D6    call        RaiseLastOSError
 0043E7DB    mov         eax,dword ptr [ebx+4]
 0043E7DE    pop         esi
 0043E7DF    pop         ebx
 0043E7E0    ret
*}
end;

//0043E7E4
{*procedure TPrivateHeap.GetMem(var P:?; Size:Cardinal);
begin
 0043E7E4    push        ebx
 0043E7E5    push        esi
 0043E7E6    push        edi
 0043E7E7    push        ebp
 0043E7E8    push        ecx
 0043E7E9    mov         edi,ecx
 0043E7EB    mov         ebx,edx
 0043E7ED    mov         esi,eax
 0043E7EF    push        edi
 0043E7F0    push        0
 0043E7F2    mov         eax,esi
 0043E7F4    call        TPrivateHeap.GetHandle
 0043E7F9    push        eax
 0043E7FA    call        kernel32.HeapAlloc
 0043E7FF    mov         ebp,eax
 0043E801    mov         dword ptr [ebx],ebp
 0043E803    test        ebp,ebp
>0043E805    jne         0043E80C
 0043E807    call        RaiseLastOSError
 0043E80C    push        esp
 0043E80D    push        40
 0043E80F    push        edi
 0043E810    mov         eax,dword ptr [ebx]
 0043E812    push        eax
 0043E813    call        kernel32.VirtualProtect
 0043E818    test        eax,eax
>0043E81A    jne         0043E821
 0043E81C    call        RaiseLastOSError
 0043E821    pop         edx
 0043E822    pop         ebp
 0043E823    pop         edi
 0043E824    pop         esi
 0043E825    pop         ebx
 0043E826    ret
end;*}

//0043E828
function GetModuleListVersion:Integer;
begin
{*
 0043E828    mov         eax,[007C4C94];^gvar_0079E03C
 0043E82D    mov         eax,dword ptr [eax]
 0043E82F    xor         eax,dword ptr ds:[7C9F8C]
 0043E835    ret
*}
end;

//0043E838
procedure OnUnloadModule(HInstance:Windows.HINST);
begin
{*
 0043E838    mov         eax,1
 0043E83D    lock xadd   dword ptr ds:[7C9F8C],eax
 0043E845    add         eax,1
 0043E848    ret
*}
end;

//0043EA20
destructor TFinalizer.Destroy();
begin
{*
 0043EA20    push        ebx
 0043EA21    push        esi
 0043EA22    push        edi
 0043EA23    push        ebp
 0043EA24    call        @BeforeDestruction
 0043EA29    mov         ebx,edx
 0043EA2B    mov         edi,eax
 0043EA2D    mov         ebp,dword ptr [edi+10]
 0043EA30    dec         ebp
 0043EA31    test        ebp,ebp
>0043EA33    jl          0043EA47
 0043EA35    inc         ebp
 0043EA36    xor         esi,esi
 0043EA38    mov         eax,dword ptr [edi+0C]
 0043EA3B    mov         eax,dword ptr [eax+esi*4]
 0043EA3E    call        TObject.Free
 0043EA43    inc         esi
 0043EA44    dec         ebp
>0043EA45    jne         0043EA38
 0043EA47    mov         dl,0FC
 0043EA49    and         dl,bl
 0043EA4B    mov         eax,edi
 0043EA4D    call        TObject.Destroy
 0043EA52    test        bl,bl
>0043EA54    jle         0043EA5D
 0043EA56    mov         eax,edi
 0043EA58    call        @ClassDestroy
 0043EA5D    pop         ebp
 0043EA5E    pop         edi
 0043EA5F    pop         esi
 0043EA60    pop         ebx
 0043EA61    ret
*}
end;

//0043EA64
procedure TFinalizer.Add(Obj:TObject);
begin
{*
 0043EA64    push        ebx
 0043EA65    push        esi
 0043EA66    push        edi
 0043EA67    push        ecx
 0043EA68    mov         edi,edx
 0043EA6A    mov         ebx,eax
 0043EA6C    mov         eax,dword ptr [ebx+0C];TFinalizer.FItems:TArray<System.TObject>
 0043EA6F    mov         dword ptr [esp],eax
 0043EA72    mov         eax,dword ptr [esp]
 0043EA75    test        eax,eax
>0043EA77    je          0043EA7E
 0043EA79    sub         eax,4
 0043EA7C    mov         eax,dword ptr [eax]
 0043EA7E    mov         esi,eax
 0043EA80    test        esi,esi
>0043EA82    jne         0043EA9E
 0043EA84    push        4
 0043EA86    lea         eax,[ebx+0C];TFinalizer.FItems:TArray<System.TObject>
 0043EA89    mov         ecx,1
 0043EA8E    mov         edx,dword ptr ds:[47CEFC];TArray<System.TObject>
 0043EA94    call        @DynArraySetLength
 0043EA99    add         esp,4
>0043EA9C    jmp         0043EABE
 0043EA9E    cmp         esi,dword ptr [ebx+10];TFinalizer.FCount:Integer
>0043EAA1    jne         0043EABE
 0043EAA3    mov         eax,esi
 0043EAA5    add         eax,eax
 0043EAA7    push        eax
 0043EAA8    lea         eax,[ebx+0C];TFinalizer.FItems:TArray<System.TObject>
 0043EAAB    mov         ecx,1
 0043EAB0    mov         edx,dword ptr ds:[47CEFC];TArray<System.TObject>
 0043EAB6    call        @DynArraySetLength
 0043EABB    add         esp,4
 0043EABE    mov         eax,dword ptr [ebx+0C];TFinalizer.FItems:TArray<System.TObject>
 0043EAC1    mov         edx,dword ptr [ebx+10];TFinalizer.FCount:Integer
 0043EAC4    mov         dword ptr [eax+edx*4],edi
 0043EAC7    inc         dword ptr [ebx+10];TFinalizer.FCount:Integer
 0043EACA    pop         edx
 0043EACB    pop         edi
 0043EACC    pop         esi
 0043EACD    pop         ebx
 0043EACE    ret
*}
end;

//0043EAD0
function InsufficientRtti:Exception;
begin
{*
 0043EAD0    mov         ecx,dword ptr ds:[7C4260];^SResString175:TResStringRec
 0043EAD6    mov         dl,1
 0043EAD8    mov         eax,[00435A2C];EInsufficientRtti
 0043EADD    call        Exception.CreateRes
 0043EAE2    ret
*}
end;

//0043EAE4
procedure CheckCodeAddress(code:Pointer);
begin
{*
 0043EAE4    test        eax,eax
>0043EAE6    je          0043EAED
 0043EAE8    cmp         dword ptr [eax],0
>0043EAEB    jne         0043EAF7
 0043EAED    call        InsufficientRtti
 0043EAF2    call        @RaiseExcept
 0043EAF7    ret
*}
end;

//0043EB94
{*function sub_0043EB94(?:Pointer):?;
begin
 0043EB94    test        eax,eax
>0043EB96    je          0043EB9A
 0043EB98    mov         eax,dword ptr [eax]
 0043EB9A    ret
end;*}

//0043EB9C
function NopRefCount(inst:Pointer):Integer; stdcall;
begin
{*
 0043EB9C    push        ebp
 0043EB9D    mov         ebp,esp
 0043EB9F    or          eax,0FFFFFFFF
 0043EBA2    pop         ebp
 0043EBA3    ret         4
*}
end;

//0043EBA8
function NopQueryInterface(inst:Pointer; const IID:TGUID; var Obj:void ):HRESULT; stdcall;
begin
{*
 0043EBA8    push        ebp
 0043EBA9    mov         ebp,esp
 0043EBAB    mov         eax,80004002
 0043EBB0    pop         ebp
 0043EBB1    ret         0C
*}
end;

//0043EBB8
function IsManaged(TypeInfo:TypInfo.PTypeInfo):Boolean;
begin
{*
 0043EBB8    push        ebx
 0043EBB9    mov         ebx,eax
 0043EBBB    test        ebx,ebx
>0043EBBD    jne         0043EBC3
 0043EBBF    xor         eax,eax
 0043EBC1    pop         ebx
 0043EBC2    ret
 0043EBC3    movzx       eax,byte ptr [ebx]
 0043EBC6    add         eax,0FFFFFFF8
 0043EBC9    cmp         eax,0A
>0043EBCC    ja          0043EC2C
 0043EBCE    movzx       eax,byte ptr [eax+43EBDC]
 0043EBD5    jmp         dword ptr [eax*4+43EBE7]
 0043EBD5    db          1
 0043EBD5    db          0
 0043EBD5    db          1
 0043EBD5    db          1
 0043EBD5    db          1
 0043EBD5    db          3
 0043EBD5    db          2
 0043EBD5    db          1
 0043EBD5    db          0
 0043EBD5    db          1
 0043EBD5    db          1
 0043EBD5    dd          0043EC2C
 0043EBD5    dd          0043EBF7
 0043EBD5    dd          0043EBFB
 0043EBD5    dd          0043EC0B
 0043EBF7    mov         al,1
>0043EBF9    jmp         0043EC2E
 0043EBFB    mov         eax,ebx
 0043EBFD    call        GetTypeData
 0043EC02    cmp         dword ptr [eax+4],0
 0043EC06    setg        al
>0043EC09    jmp         0043EC2E
 0043EC0B    mov         eax,ebx
 0043EC0D    call        GetTypeData
 0043EC12    mov         ebx,dword ptr [eax+8]
 0043EC15    test        ebx,ebx
>0043EC17    je          0043EC24
 0043EC19    mov         eax,dword ptr [ebx]
 0043EC1B    call        IsManaged
 0043EC20    test        al,al
>0043EC22    jne         0043EC28
 0043EC24    xor         eax,eax
>0043EC26    jmp         0043EC2E
 0043EC28    mov         al,1
>0043EC2A    jmp         0043EC2E
 0043EC2C    xor         eax,eax
 0043EC2E    pop         ebx
 0043EC2F    ret
*}
end;

//0043EC30
function GetInlineSize(TypeInfo:TypInfo.PTypeInfo):Integer;
begin
{*
 0043EC30    push        ebx
 0043EC31    mov         ebx,eax
 0043EC33    test        ebx,ebx
>0043EC35    jne         0043EC3B
 0043EC37    xor         eax,eax
 0043EC39    pop         ebx
 0043EC3A    ret
 0043EC3B    movzx       eax,byte ptr [ebx]
 0043EC3E    cmp         eax,15
>0043EC41    ja          0043ED89
 0043EC47    jmp         dword ptr [eax*4+43EC4E]
 0043EC47    dd          0043ED89
 0043EC47    dd          0043ECA6
 0043EC47    dd          0043ECA6
 0043EC47    dd          0043ECA6
 0043EC47    dd          0043ECD7
 0043EC47    dd          0043ED4B
 0043EC47    dd          0043ECA6
 0043EC47    dd          0043ED28
 0043EC47    dd          0043ED36
 0043EC47    dd          0043ECA6
 0043EC47    dd          0043ED44
 0043EC47    dd          0043ED44
 0043EC47    dd          0043ED82
 0043EC47    dd          0043ED75
 0043EC47    dd          0043ED68
 0043EC47    dd          0043ED44
 0043EC47    dd          0043ED3D
 0043EC47    dd          0043ED44
 0043EC47    dd          0043ED44
 0043EC47    dd          0043ED2F
 0043EC47    dd          0043ED5A
 0043EC47    dd          0043ED61
 0043ECA6    mov         eax,ebx
 0043ECA8    call        GetTypeData
 0043ECAD    movzx       eax,byte ptr [eax]
 0043ECB0    sub         al,2
>0043ECB2    jb          0043ECBE
 0043ECB4    sub         al,2
>0043ECB6    jb          0043ECC5
 0043ECB8    sub         al,2
>0043ECBA    jb          0043ECCC
>0043ECBC    jmp         0043ECD3
 0043ECBE    mov         eax,1
 0043ECC3    pop         ebx
 0043ECC4    ret
 0043ECC5    mov         eax,2
 0043ECCA    pop         ebx
 0043ECCB    ret
 0043ECCC    mov         eax,4
 0043ECD1    pop         ebx
 0043ECD2    ret
 0043ECD3    xor         eax,eax
 0043ECD5    pop         ebx
 0043ECD6    ret
 0043ECD7    mov         eax,ebx
 0043ECD9    call        GetTypeData
 0043ECDE    movzx       eax,byte ptr [eax]
 0043ECE1    cmp         eax,4
>0043ECE4    ja          0043ED24
 0043ECE6    jmp         dword ptr [eax*4+43ECED]
 0043ECE6    dd          0043ED01
 0043ECE6    dd          0043ED08
 0043ECE6    dd          0043ED0F
 0043ECE6    dd          0043ED16
 0043ECE6    dd          0043ED1D
 0043ED01    mov         eax,4
 0043ED06    pop         ebx
 0043ED07    ret
 0043ED08    mov         eax,8
 0043ED0D    pop         ebx
 0043ED0E    ret
 0043ED0F    mov         eax,0A
 0043ED14    pop         ebx
 0043ED15    ret
 0043ED16    mov         eax,8
 0043ED1B    pop         ebx
 0043ED1C    ret
 0043ED1D    mov         eax,8
 0043ED22    pop         ebx
 0043ED23    ret
 0043ED24    xor         eax,eax
 0043ED26    pop         ebx
 0043ED27    ret
 0043ED28    mov         eax,4
 0043ED2D    pop         ebx
 0043ED2E    ret
 0043ED2F    mov         eax,4
 0043ED34    pop         ebx
 0043ED35    ret
 0043ED36    mov         eax,8
 0043ED3B    pop         ebx
 0043ED3C    ret
 0043ED3D    mov         eax,8
 0043ED42    pop         ebx
 0043ED43    ret
 0043ED44    mov         eax,0FFFFFFFC
 0043ED49    pop         ebx
 0043ED4A    ret
 0043ED4B    mov         eax,ebx
 0043ED4D    call        GetTypeData
 0043ED52    movzx       eax,byte ptr [eax]
 0043ED55    neg         eax
 0043ED57    inc         eax
 0043ED58    pop         ebx
 0043ED59    ret
 0043ED5A    mov         eax,4
 0043ED5F    pop         ebx
 0043ED60    ret
 0043ED61    mov         eax,4
 0043ED66    pop         ebx
 0043ED67    ret
 0043ED68    mov         eax,ebx
 0043ED6A    call        GetTypeData
 0043ED6F    mov         eax,dword ptr [eax]
 0043ED71    neg         eax
 0043ED73    pop         ebx
 0043ED74    ret
 0043ED75    mov         eax,ebx
 0043ED77    call        GetTypeData
 0043ED7C    mov         eax,dword ptr [eax]
 0043ED7E    neg         eax
 0043ED80    pop         ebx
 0043ED81    ret
 0043ED82    mov         eax,0FFFFFFF0
 0043ED87    pop         ebx
 0043ED88    ret
 0043ED89    xor         eax,eax
 0043ED8B    pop         ebx
 0043ED8C    ret
*}
end;

//0043ED90
function UseResultPointer(TypeInfo:TypInfo.PTypeInfo; IsConstructor:Boolean):Boolean;
begin
{*
 0043ED90    push        ebx
 0043ED91    mov         ebx,eax
 0043ED93    test        ebx,ebx
>0043ED95    jne         0043ED9B
 0043ED97    xor         eax,eax
 0043ED99    pop         ebx
 0043ED9A    ret
 0043ED9B    movzx       eax,byte ptr [ebx]
 0043ED9E    add         eax,0FFFFFFFB
 0043EDA1    cmp         eax,0D
>0043EDA4    ja          0043EE19
 0043EDA6    movzx       eax,byte ptr [eax+43EDB4]
 0043EDAD    jmp         dword ptr [eax*4+43EDC2]
 0043EDAD    db          1
 0043EDAD    db          0
 0043EDAD    db          0
 0043EDAD    db          1
 0043EDAD    db          0
 0043EDAD    db          1
 0043EDAD    db          1
 0043EDAD    db          1
 0043EDAD    db          3
 0043EDAD    db          2
 0043EDAD    db          1
 0043EDAD    db          0
 0043EDAD    db          1
 0043EDAD    db          1
 0043EDAD    dd          0043EE19
 0043EDAD    dd          0043EDD2
 0043EDAD    dd          0043EDD6
 0043EDAD    dd          0043EDFB
 0043EDD2    mov         al,1
 0043EDD4    pop         ebx
 0043EDD5    ret
 0043EDD6    mov         eax,ebx
 0043EDD8    call        GetTypeData
 0043EDDD    mov         eax,dword ptr [eax]
 0043EDDF    dec         eax
 0043EDE0    sub         eax,2
>0043EDE3    jb          0043EDEA
 0043EDE5    dec         eax
>0043EDE6    je          0043EDEE
>0043EDE8    jmp         0043EDF7
 0043EDEA    xor         eax,eax
>0043EDEC    jmp         0043EE1B
 0043EDEE    mov         eax,ebx
 0043EDF0    call        IsManaged
>0043EDF5    jmp         0043EE1B
 0043EDF7    mov         al,1
>0043EDF9    jmp         0043EE1B
 0043EDFB    mov         eax,ebx
 0043EDFD    call        GetTypeData
 0043EE02    mov         eax,dword ptr [eax]
 0043EE04    dec         eax
 0043EE05    sub         eax,2
>0043EE08    jb          0043EE13
 0043EE0A    sub         eax,1
>0043EE0D    je          0043EE13
 0043EE0F    xor         eax,eax
>0043EE11    jmp         0043EE15
 0043EE13    mov         al,1
 0043EE15    xor         al,1
>0043EE17    jmp         0043EE1B
 0043EE19    xor         eax,eax
 0043EE1B    pop         ebx
 0043EE1C    ret
*}
end;

//0043EE20
function PassByRef(TypeInfo:TypInfo.PTypeInfo; CC:TypInfo.TCallConv; IsConst:Boolean):Boolean;
begin
{*
 0043EE20    push        esi
 0043EE21    mov         esi,eax
 0043EE23    test        esi,esi
>0043EE25    jne         0043EE2B
 0043EE27    xor         eax,eax
 0043EE29    pop         esi
 0043EE2A    ret
 0043EE2B    movzx       eax,byte ptr [esi]
 0043EE2E    sub         al,5
>0043EE30    je          0043EE8C
 0043EE32    sub         al,7
>0043EE34    je          0043EE73
 0043EE36    dec         al
>0043EE38    je          0043EE40
 0043EE3A    dec         al
>0043EE3C    je          0043EE4F
>0043EE3E    jmp         0043EE9E
 0043EE40    mov         eax,esi
 0043EE42    call        GetTypeData
 0043EE47    cmp         dword ptr [eax],4
 0043EE4A    setg        al
>0043EE4D    jmp         0043EEA0
 0043EE4F    sub         dl,1
>0043EE52    je          0043EE5C
 0043EE54    add         dl,0FE
 0043EE57    sub         dl,2
>0043EE5A    jae         0043EE64
 0043EE5C    test        cl,cl
>0043EE5E    jne         0043EE64
 0043EE60    xor         eax,eax
>0043EE62    jmp         0043EEA0
 0043EE64    mov         eax,esi
 0043EE66    call        GetTypeData
 0043EE6B    cmp         dword ptr [eax],4
 0043EE6E    setg        al
>0043EE71    jmp         0043EEA0
 0043EE73    test        cl,cl
>0043EE75    jne         0043EE88
 0043EE77    sub         dl,1
>0043EE7A    je          0043EE84
 0043EE7C    add         dl,0FE
 0043EE7F    sub         dl,2
>0043EE82    jae         0043EE88
 0043EE84    xor         eax,eax
>0043EE86    jmp         0043EEA0
 0043EE88    mov         al,1
>0043EE8A    jmp         0043EEA0
 0043EE8C    mov         eax,esi
 0043EE8E    call        GetTypeData
 0043EE93    movzx       eax,byte ptr [eax]
 0043EE96    cmp         eax,4
 0043EE99    seta        al
>0043EE9C    jmp         0043EEA0
 0043EE9E    xor         eax,eax
 0043EEA0    pop         esi
 0043EEA1    ret
*}
end;

//0043EEA4
procedure PassArg(Par:TRttiParameter; const ArgSrc:TValue; var ArgDest:TValue; CC:TypInfo.TCallConv);
begin
{*
 0043EEA4    push        ebp
 0043EEA5    mov         ebp,esp
 0043EEA7    push        ecx
 0043EEA8    mov         ecx,0E
 0043EEAD    push        0
 0043EEAF    push        0
 0043EEB1    dec         ecx
>0043EEB2    jne         0043EEAD
 0043EEB4    push        ecx
 0043EEB5    xchg        ecx,dword ptr [ebp-4]
 0043EEB8    push        ebx
 0043EEB9    push        esi
 0043EEBA    push        edi
 0043EEBB    mov         edi,ecx
 0043EEBD    mov         esi,edx
 0043EEBF    mov         ebx,eax
 0043EEC1    xor         eax,eax
 0043EEC3    push        ebp
 0043EEC4    push        43F062
 0043EEC9    push        dword ptr fs:[eax]
 0043EECC    mov         dword ptr fs:[eax],esp
 0043EECF    mov         eax,ebx
 0043EED1    mov         edx,dword ptr [eax]
 0043EED3    call        dword ptr [edx+10]
 0043EED6    test        eax,eax
>0043EED8    jne         0043EEFE
 0043EEDA    mov         eax,esi
 0043EEDC    call        TValue.GetReferenceToRawData
 0043EEE1    lea         edx,[ebp-18]
 0043EEE4    call        TValue.From<System.Pointer>
 0043EEE9    lea         edx,[ebp-18]
 0043EEEC    mov         eax,edi
 0043EEEE    mov         ecx,dword ptr ds:[435E20];TValue
 0043EEF4    call        @CopyRecord
>0043EEF9    jmp         0043F041
 0043EEFE    mov         eax,ebx
 0043EF00    mov         edx,dword ptr [eax]
 0043EF02    call        dword ptr [edx+0C]
 0043EF05    and         al,byte ptr ds:[43F074]
 0043EF0B    movzx       edx,byte ptr ds:[43F078]
 0043EF12    cmp         dl,al
>0043EF14    je          0043EF6A
 0043EF16    mov         eax,ebx
 0043EF18    mov         edx,dword ptr [eax]
 0043EF1A    call        dword ptr [edx+10]
 0043EF1D    call        TRttiType.GetHandle
 0043EF22    push        eax
 0043EF23    mov         eax,esi
 0043EF25    call        TValue.GetTypeInfo
 0043EF2A    pop         edx
 0043EF2B    cmp         edx,eax
>0043EF2D    je          0043EF46
 0043EF2F    mov         ecx,dword ptr ds:[7C4BC4];^SResString178:TResStringRec
 0043EF35    mov         dl,1
 0043EF37    mov         eax,[00418C80];EInvalidCast
 0043EF3C    call        Exception.CreateRes
 0043EF41    call        @RaiseExcept
 0043EF46    mov         eax,esi
 0043EF48    call        TValue.GetReferenceToRawData
 0043EF4D    lea         edx,[ebp-30]
 0043EF50    call        TValue.From<System.Pointer>
 0043EF55    lea         edx,[ebp-30]
 0043EF58    mov         eax,edi
 0043EF5A    mov         ecx,dword ptr ds:[435E20];TValue
 0043EF60    call        @CopyRecord
>0043EF65    jmp         0043F041
 0043EF6A    mov         eax,ebx
 0043EF6C    mov         edx,dword ptr [eax]
 0043EF6E    call        dword ptr [edx+0C]
 0043EF71    test        al,2
>0043EF73    je          0043F019
 0043EF79    mov         eax,ebx
 0043EF7B    mov         edx,dword ptr [eax]
 0043EF7D    call        dword ptr [edx+10]
 0043EF80    call        TRttiType.GetHandle
 0043EF85    movzx       edx,byte ptr [ebp+8]
 0043EF89    mov         cl,1
 0043EF8B    call        PassByRef
 0043EF90    test        al,al
>0043EF92    je          0043F019
 0043EF98    mov         eax,ebx
 0043EF9A    mov         edx,dword ptr [eax]
 0043EF9C    call        dword ptr [edx+10]
 0043EF9F    call        TRttiType.GetHandle
 0043EFA4    cmp         eax,dword ptr ds:[435E20];TValue
>0043EFAA    jne         0043EFC8
 0043EFAC    lea         edx,[ebp-48]
 0043EFAF    mov         eax,esi
 0043EFB1    call        TValue.From<System.Rtti.TValue>
 0043EFB6    lea         edx,[ebp-48]
 0043EFB9    mov         eax,edi
 0043EFBB    mov         ecx,dword ptr ds:[435E20];TValue
 0043EFC1    call        @CopyRecord
>0043EFC6    jmp         0043F041
 0043EFC8    mov         eax,ebx
 0043EFCA    mov         edx,dword ptr [eax]
 0043EFCC    call        dword ptr [edx+10]
 0043EFCF    call        TRttiType.GetHandle
 0043EFD4    push        eax
 0043EFD5    mov         eax,esi
 0043EFD7    call        TValue.GetTypeInfo
 0043EFDC    pop         edx
 0043EFDD    cmp         edx,eax
>0043EFDF    je          0043EFF8
 0043EFE1    mov         ecx,dword ptr ds:[7C4BC4];^SResString178:TResStringRec
 0043EFE7    mov         dl,1
 0043EFE9    mov         eax,[00418C80];EInvalidCast
 0043EFEE    call        Exception.CreateRes
 0043EFF3    call        @RaiseExcept
 0043EFF8    mov         eax,esi
 0043EFFA    call        TValue.GetReferenceToRawData
 0043EFFF    lea         edx,[ebp-60]
 0043F002    call        TValue.From<System.Pointer>
 0043F007    lea         edx,[ebp-60]
 0043F00A    mov         eax,edi
 0043F00C    mov         ecx,dword ptr ds:[435E20];TValue
 0043F012    call        @CopyRecord
>0043F017    jmp         0043F041
 0043F019    mov         eax,ebx
 0043F01B    mov         edx,dword ptr [eax]
 0043F01D    call        dword ptr [edx+10]
 0043F020    call        TRttiType.GetHandle
 0043F025    mov         edx,eax
 0043F027    lea         ecx,[ebp-78]
 0043F02A    mov         eax,esi
 0043F02C    call        TValue.Cast
 0043F031    lea         edx,[ebp-78]
 0043F034    mov         eax,edi
 0043F036    mov         ecx,dword ptr ds:[435E20];TValue
 0043F03C    call        @CopyRecord
 0043F041    xor         eax,eax
 0043F043    pop         edx
 0043F044    pop         ecx
 0043F045    pop         ecx
 0043F046    mov         dword ptr fs:[eax],edx
 0043F049    push        43F069
 0043F04E    lea         eax,[ebp-78]
 0043F051    mov         edx,dword ptr ds:[435E20];TValue
 0043F057    mov         ecx,5
 0043F05C    call        @FinalizeArray
 0043F061    ret
>0043F062    jmp         @HandleFinally
>0043F067    jmp         0043F04E
 0043F069    pop         edi
 0043F06A    pop         esi
 0043F06B    pop         ebx
 0043F06C    mov         esp,ebp
 0043F06E    pop         ebp
 0043F06F    ret         4
*}
end;

//0043F07C
function AllocReg(var Regs:UInt32):UInt32;
begin
{*
 0043F07C    push        ebx
 0043F07D    cmp         dword ptr [eax],0
>0043F080    jne         0043F086
 0043F082    xor         ecx,ecx
>0043F084    jmp         0043F097
 0043F086    mov         edx,dword ptr [eax]
 0043F088    mov         ecx,dword ptr [eax]
 0043F08A    dec         ecx
 0043F08B    and         edx,ecx
 0043F08D    mov         ecx,dword ptr [eax]
 0043F08F    mov         ebx,edx
 0043F091    not         ebx
 0043F093    and         ecx,ebx
 0043F095    mov         dword ptr [eax],edx
 0043F097    mov         eax,ecx
 0043F099    pop         ebx
 0043F09A    ret
*}
end;

//0043F09C
function Align4(Value:Integer):Integer;
begin
{*
 0043F09C    add         eax,3
 0043F09F    and         eax,0FFFFFFFC
 0043F0A2    ret
*}
end;

//0043F460
constructor TValueDataImpl.Create(ATypeInfo:PTypeInfo; ACount:Integer);
begin
{*
 0043F460    push        ebp
 0043F461    mov         ebp,esp
 0043F463    push        ecx
 0043F464    push        ebx
 0043F465    push        esi
 0043F466    push        edi
 0043F467    test        dl,dl
>0043F469    je          0043F473
 0043F46B    add         esp,0FFFFFFF0
 0043F46E    call        @ClassCreate
 0043F473    mov         edi,ecx
 0043F475    mov         byte ptr [ebp-1],dl
 0043F478    mov         ebx,eax
 0043F47A    mov         esi,dword ptr [ebp+8]
 0043F47D    push        esi
 0043F47E    mov         ecx,dword ptr [ebp+0C]
 0043F481    xor         edx,edx
 0043F483    mov         eax,ebx
 0043F485    call        TValueDataImpl.CreateEmpty
 0043F48A    test        edi,edi
>0043F48C    je          0043F4B6
 0043F48E    mov         eax,esi
 0043F490    call        IsManaged
 0043F495    test        al,al
>0043F497    je          0043F4A9
 0043F499    push        1
 0043F49B    mov         eax,dword ptr [ebx+10]
 0043F49E    mov         ecx,esi
 0043F4A0    mov         edx,edi
 0043F4A2    call        CopyArray
>0043F4A7    jmp         0043F4B6
 0043F4A9    mov         edx,dword ptr [ebx+10]
 0043F4AC    mov         eax,edi
 0043F4AE    mov         ecx,dword ptr [ebp+0C]
 0043F4B1    call        Move
 0043F4B6    mov         eax,ebx
 0043F4B8    cmp         byte ptr [ebp-1],0
>0043F4BC    je          0043F4CD
 0043F4BE    call        @AfterConstruction
 0043F4C3    pop         dword ptr fs:[0]
 0043F4CA    add         esp,0C
 0043F4CD    mov         eax,ebx
 0043F4CF    pop         edi
 0043F4D0    pop         esi
 0043F4D1    pop         ebx
 0043F4D2    pop         ecx
 0043F4D3    pop         ebp
 0043F4D4    ret         8
*}
end;

//0043F4D8
constructor TValueDataImpl.CreateEmpty(ATypeInfo:PTypeInfo);
begin
{*
 0043F4D8    push        ebp
 0043F4D9    mov         ebp,esp
 0043F4DB    push        ebx
 0043F4DC    push        esi
 0043F4DD    push        edi
 0043F4DE    test        dl,dl
>0043F4E0    je          0043F4EA
 0043F4E2    add         esp,0FFFFFFF0
 0043F4E5    call        @ClassCreate
 0043F4EA    mov         esi,ecx
 0043F4EC    mov         ebx,edx
 0043F4EE    mov         edi,eax
 0043F4F0    mov         eax,dword ptr [ebp+8]
 0043F4F3    mov         dword ptr [edi+0C],eax
 0043F4F6    push        esi
 0043F4F7    lea         eax,[edi+10]
 0043F4FA    mov         ecx,1
 0043F4FF    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0043F505    call        @DynArraySetLength
 0043F50A    add         esp,4
 0043F50D    mov         eax,edi
 0043F50F    test        bl,bl
>0043F511    je          0043F522
 0043F513    call        @AfterConstruction
 0043F518    pop         dword ptr fs:[0]
 0043F51F    add         esp,0C
 0043F522    mov         eax,edi
 0043F524    pop         edi
 0043F525    pop         esi
 0043F526    pop         ebx
 0043F527    pop         ebp
 0043F528    ret         4
*}
end;

//0043F52C
constructor TValueDataImpl.CreateWithoutCopy(ATypeInfo:PTypeInfo; ACount:Integer);
begin
{*
 0043F52C    push        ebp
 0043F52D    mov         ebp,esp
 0043F52F    push        ecx
 0043F530    push        ebx
 0043F531    push        esi
 0043F532    push        edi
 0043F533    test        dl,dl
>0043F535    je          0043F53F
 0043F537    add         esp,0FFFFFFF0
 0043F53A    call        @ClassCreate
 0043F53F    mov         esi,ecx
 0043F541    mov         byte ptr [ebp-1],dl
 0043F544    mov         ebx,eax
 0043F546    mov         edi,dword ptr [ebp+0C]
 0043F549    mov         eax,dword ptr [ebp+8]
 0043F54C    push        eax
 0043F54D    mov         ecx,edi
 0043F54F    xor         edx,edx
 0043F551    mov         eax,ebx
 0043F553    call        TValueDataImpl.CreateEmpty
 0043F558    test        esi,esi
>0043F55A    je          0043F568
 0043F55C    mov         edx,dword ptr [ebx+10]
 0043F55F    mov         eax,esi
 0043F561    mov         ecx,edi
 0043F563    call        Move
 0043F568    mov         eax,ebx
 0043F56A    cmp         byte ptr [ebp-1],0
>0043F56E    je          0043F57F
 0043F570    call        @AfterConstruction
 0043F575    pop         dword ptr fs:[0]
 0043F57C    add         esp,0C
 0043F57F    mov         eax,ebx
 0043F581    pop         edi
 0043F582    pop         esi
 0043F583    pop         ebx
 0043F584    pop         ecx
 0043F585    pop         ebp
 0043F586    ret         8
*}
end;

//0043F58C
destructor TValueDataImpl.Destroy();
begin
{*
 0043F58C    push        ebx
 0043F58D    push        esi
 0043F58E    call        @BeforeDestruction
 0043F593    mov         ebx,edx
 0043F595    mov         esi,eax
 0043F597    mov         eax,dword ptr [esi+0C]
 0043F59A    call        IsManaged
 0043F59F    test        al,al
>0043F5A1    je          0043F5B3
 0043F5A3    mov         edx,dword ptr [esi+0C]
 0043F5A6    mov         eax,dword ptr [esi+10]
 0043F5A9    mov         ecx,1
 0043F5AE    call        FinalizeArray
 0043F5B3    mov         dl,0FC
 0043F5B5    and         dl,bl
 0043F5B7    mov         eax,esi
 0043F5B9    call        TObject.Destroy
 0043F5BE    test        bl,bl
>0043F5C0    jle         0043F5C9
 0043F5C2    mov         eax,esi
 0043F5C4    call        @ClassDestroy
 0043F5C9    pop         esi
 0043F5CA    pop         ebx
 0043F5CB    ret
*}
end;

//0043F5CC
function TValueDataImpl.GetDataSize:Integer;
begin
{*
 0043F5CC    push        ecx
 0043F5CD    mov         eax,dword ptr [eax+10];TValueDataImpl.FData:TArray<System.Byte>
 0043F5D0    mov         dword ptr [esp],eax
 0043F5D3    mov         eax,dword ptr [esp]
 0043F5D6    test        eax,eax
>0043F5D8    je          0043F5DF
 0043F5DA    sub         eax,4
 0043F5DD    mov         eax,dword ptr [eax]
 0043F5DF    pop         edx
 0043F5E0    ret
*}
end;

//0043F5E4
procedure TValueDataImpl.ExtractRawData(ABuffer:Pointer);
begin
{*
 0043F5E4    push        ebx
 0043F5E5    push        esi
 0043F5E6    push        ecx
 0043F5E7    mov         esi,edx
 0043F5E9    mov         ebx,eax
 0043F5EB    mov         eax,dword ptr [ebx+0C];TValueDataImpl.FTypeInfo:PTypeInfo
 0043F5EE    call        IsManaged
 0043F5F3    test        al,al
>0043F5F5    je          0043F608
 0043F5F7    push        1
 0043F5F9    mov         edx,dword ptr [ebx+10];TValueDataImpl.FData:TArray<System.Byte>
 0043F5FC    mov         ecx,dword ptr [ebx+0C];TValueDataImpl.FTypeInfo:PTypeInfo
 0043F5FF    mov         eax,esi
 0043F601    call        CopyArray
>0043F606    jmp         0043F625
 0043F608    mov         eax,dword ptr [ebx+10];TValueDataImpl.FData:TArray<System.Byte>
 0043F60B    mov         dword ptr [esp],eax
 0043F60E    mov         eax,dword ptr [esp]
 0043F611    test        eax,eax
>0043F613    je          0043F61A
 0043F615    sub         eax,4
 0043F618    mov         eax,dword ptr [eax]
 0043F61A    mov         edx,esi
 0043F61C    mov         ecx,dword ptr [ebx+10];TValueDataImpl.FData:TArray<System.Byte>
 0043F61F    xchg        eax,ecx
 0043F620    call        Move
 0043F625    pop         edx
 0043F626    pop         esi
 0043F627    pop         ebx
 0043F628    ret
*}
end;

//0043F62C
procedure TValueDataImpl.ExtractRawDataNoCopy(ABuffer:Pointer);
begin
{*
 0043F62C    push        ecx
 0043F62D    mov         ecx,dword ptr [eax+10];TValueDataImpl.FData:TArray<System.Byte>
 0043F630    mov         dword ptr [esp],ecx
 0043F633    mov         ecx,dword ptr [esp]
 0043F636    test        ecx,ecx
>0043F638    je          0043F63F
 0043F63A    sub         ecx,4
 0043F63D    mov         ecx,dword ptr [ecx]
 0043F63F    mov         eax,dword ptr [eax+10];TValueDataImpl.FData:TArray<System.Byte>
 0043F642    call        Move
 0043F647    pop         edx
 0043F648    ret
*}
end;

//0043F64C
function TValueDataImpl.GetReferenceToRawData:Pointer;
begin
{*
 0043F64C    mov         eax,dword ptr [eax+10];TValueDataImpl.FData:TArray<System.Byte>
 0043F64F    ret
*}
end;

//0043F650
constructor TValue.Create;
begin
{*
 0043F650    push        ebx
 0043F651    mov         ebx,eax
 0043F653    mov         dword ptr [ebx],edx
 0043F655    xor         eax,eax
 0043F657    mov         dword ptr [ebx+8],eax
 0043F65A    mov         dword ptr [ebx+0C],eax
 0043F65D    mov         word ptr [ebx+10],ax
 0043F661    lea         eax,[ebx+4]
 0043F664    call        @IntfClear
 0043F669    mov         eax,[0079FD8C];^gvar_0079FD88
 0043F66E    mov         dword ptr [ebx+4],eax
 0043F671    mov         eax,ebx
 0043F673    pop         ebx
 0043F674    ret
*}
end;

//0043F678
function TValue.GetIsEmpty:Boolean;
begin
{*
 0043F678    push        ebx
 0043F679    mov         ebx,eax
 0043F67B    mov         eax,dword ptr [ebx]
 0043F67D    test        eax,eax
>0043F67F    je          0043F687
 0043F681    cmp         dword ptr [ebx+4],0
>0043F685    jne         0043F68B
 0043F687    mov         al,1
 0043F689    pop         ebx
 0043F68A    ret
 0043F68B    movzx       eax,byte ptr [eax]
 0043F68E    sub         al,7
>0043F690    je          0043F6A0
 0043F692    dec         al
>0043F694    je          0043F6B9
 0043F696    sub         al,7
>0043F698    je          0043F6A9
 0043F69A    sub         al,5
>0043F69C    je          0043F6C2
>0043F69E    jmp         0043F6CB
 0043F6A0    cmp         dword ptr [ebx+8],0
 0043F6A4    sete        al
>0043F6A7    jmp         0043F6CD
 0043F6A9    mov         eax,dword ptr [ebx+4]
 0043F6AC    mov         edx,dword ptr [eax]
 0043F6AE    call        dword ptr [edx+18]
 0043F6B1    cmp         dword ptr [eax],0
 0043F6B4    sete        al
>0043F6B7    jmp         0043F6CD
 0043F6B9    cmp         dword ptr [ebx+8],0
 0043F6BD    sete        al
>0043F6C0    jmp         0043F6CD
 0043F6C2    cmp         dword ptr [ebx+8],0
 0043F6C6    sete        al
>0043F6C9    jmp         0043F6CD
 0043F6CB    xor         eax,eax
 0043F6CD    pop         ebx
 0043F6CE    ret
*}
end;

//0043F6D0
function TValue.GetTypeInfo:PTypeInfo;
begin
{*
 0043F6D0    mov         eax,dword ptr [eax]
 0043F6D2    ret
*}
end;

//0043F6D4
function TValue.GetTypeKind:TTypeKind;
begin
{*
 0043F6D4    mov         edx,dword ptr [eax]
 0043F6D6    test        edx,edx
>0043F6D8    je          0043F6E0
 0043F6DA    cmp         dword ptr [eax+4],0
>0043F6DE    jne         0043F6E3
 0043F6E0    xor         eax,eax
 0043F6E2    ret
 0043F6E3    movzx       eax,byte ptr [edx]
 0043F6E6    ret
*}
end;

//0043F6E8
function TValue.GetTypeDataProp:PTypeData;
begin
{*
 0043F6E8    mov         edx,dword ptr [eax]
 0043F6EA    test        edx,edx
>0043F6EC    jne         0043F6F1
 0043F6EE    xor         eax,eax
 0043F6F0    ret
 0043F6F1    mov         eax,edx
 0043F6F3    call        GetTypeData
 0043F6F8    ret
*}
end;

//0043F6FC
function TValue.GetDataSize:Integer;
begin
{*
 0043F6FC    push        ebx
 0043F6FD    push        esi
 0043F6FE    mov         ebx,eax
 0043F700    mov         esi,dword ptr [ebx]
 0043F702    test        esi,esi
>0043F704    jne         0043F727
 0043F706    cmp         dword ptr [ebx+4],0
>0043F70A    je          0043F717
 0043F70C    mov         eax,dword ptr [ebx+4]
 0043F70F    cmp         eax,dword ptr ds:[79FD8C];^gvar_0079FD88
>0043F715    jne         0043F71C
 0043F717    xor         eax,eax
 0043F719    pop         esi
 0043F71A    pop         ebx
 0043F71B    ret
 0043F71C    mov         eax,dword ptr [ebx+4]
 0043F71F    mov         edx,dword ptr [eax]
 0043F721    call        dword ptr [edx+0C]
 0043F724    pop         esi
 0043F725    pop         ebx
 0043F726    ret
 0043F727    cmp         dword ptr [ebx+4],0
>0043F72B    jne         0043F732
 0043F72D    xor         eax,eax
 0043F72F    pop         esi
 0043F730    pop         ebx
 0043F731    ret
 0043F732    movzx       eax,byte ptr [esi]
 0043F735    cmp         eax,14
>0043F738    ja          0043F838
 0043F73E    movzx       eax,byte ptr [eax+43F74C]
 0043F745    jmp         dword ptr [eax*4+43F761]
 0043F745    db          0
 0043F745    db          1
 0043F745    db          1
 0043F745    db          1
 0043F745    db          2
 0043F745    db          4
 0043F745    db          1
 0043F745    db          3
 0043F745    db          5
 0043F745    db          1
 0043F745    db          3
 0043F745    db          3
 0043F745    db          7
 0043F745    db          4
 0043F745    db          4
 0043F745    db          3
 0043F745    db          6
 0043F745    db          3
 0043F745    db          3
 0043F745    db          3
 0043F745    db          3
 0043F745    dd          0043F838
 0043F745    dd          0043F781
 0043F745    dd          0043F7B6
 0043F745    dd          0043F80D
 0043F745    dd          0043F815
 0043F745    dd          0043F820
 0043F745    dd          0043F828
 0043F745    dd          0043F830
 0043F781    mov         eax,esi
 0043F783    call        GetTypeData
 0043F788    movzx       eax,byte ptr [eax]
 0043F78B    sub         al,2
>0043F78D    jb          0043F799
 0043F78F    sub         al,2
>0043F791    jb          0043F7A1
 0043F793    sub         al,2
>0043F795    jb          0043F7A9
>0043F797    jmp         0043F7B1
 0043F799    mov         eax,1
 0043F79E    pop         esi
 0043F79F    pop         ebx
 0043F7A0    ret
 0043F7A1    mov         eax,2
 0043F7A6    pop         esi
 0043F7A7    pop         ebx
 0043F7A8    ret
 0043F7A9    mov         eax,4
 0043F7AE    pop         esi
 0043F7AF    pop         ebx
 0043F7B0    ret
 0043F7B1    xor         eax,eax
 0043F7B3    pop         esi
 0043F7B4    pop         ebx
 0043F7B5    ret
 0043F7B6    mov         eax,esi
 0043F7B8    call        GetTypeData
 0043F7BD    movzx       eax,byte ptr [eax]
 0043F7C0    cmp         eax,4
>0043F7C3    ja          0043F808
 0043F7C5    jmp         dword ptr [eax*4+43F7CC]
 0043F7C5    dd          0043F7E0
 0043F7C5    dd          0043F7E8
 0043F7C5    dd          0043F7F0
 0043F7C5    dd          0043F7F8
 0043F7C5    dd          0043F800
 0043F7E0    mov         eax,4
 0043F7E5    pop         esi
 0043F7E6    pop         ebx
 0043F7E7    ret
 0043F7E8    mov         eax,8
 0043F7ED    pop         esi
 0043F7EE    pop         ebx
 0043F7EF    ret
 0043F7F0    mov         eax,0A
 0043F7F5    pop         esi
 0043F7F6    pop         ebx
 0043F7F7    ret
 0043F7F8    mov         eax,8
 0043F7FD    pop         esi
 0043F7FE    pop         ebx
 0043F7FF    ret
 0043F800    mov         eax,8
 0043F805    pop         esi
 0043F806    pop         ebx
 0043F807    ret
 0043F808    xor         eax,eax
 0043F80A    pop         esi
 0043F80B    pop         ebx
 0043F80C    ret
 0043F80D    mov         eax,4
 0043F812    pop         esi
 0043F813    pop         ebx
 0043F814    ret
 0043F815    mov         eax,dword ptr [ebx+4]
 0043F818    mov         edx,dword ptr [eax]
 0043F81A    call        dword ptr [edx+0C]
 0043F81D    pop         esi
 0043F81E    pop         ebx
 0043F81F    ret
 0043F820    mov         eax,8
 0043F825    pop         esi
 0043F826    pop         ebx
 0043F827    ret
 0043F828    mov         eax,8
 0043F82D    pop         esi
 0043F82E    pop         ebx
 0043F82F    ret
 0043F830    mov         eax,10
 0043F835    pop         esi
 0043F836    pop         ebx
 0043F837    ret
 0043F838    xor         eax,eax
 0043F83A    pop         esi
 0043F83B    pop         ebx
 0043F83C    ret
*}
end;

//0043F840
function GetValueStackSize(const AValue:TValue):Integer;
begin
{*
 0043F840    push        ebx
 0043F841    mov         ebx,eax
 0043F843    mov         eax,ebx
 0043F845    call        TValue.GetDataSize
 0043F84A    call        Align4
 0043F84F    pop         ebx
 0043F850    ret
*}
end;

//0043F854
function TValue.GetEmpty:TValue;
begin
{*
 0043F854    push        ebx
 0043F855    mov         ebx,eax
 0043F857    xor         edx,edx
 0043F859    mov         eax,ebx
 0043F85B    call        TValue.Create
 0043F860    pop         ebx
 0043F861    ret
*}
end;

//0043F8A4
function TValue.&op_Implicit:TValue;
begin
{*
 0043F8A4    push        ebx
 0043F8A5    push        esi
 0043F8A6    mov         ebx,edx
 0043F8A8    mov         esi,eax
 0043F8AA    mov         edx,dword ptr ds:[40109C];Integer
 0043F8B0    mov         eax,ebx
 0043F8B2    call        TValue.Create
 0043F8B7    mov         dword ptr [ebx+8],esi
 0043F8BA    pop         esi
 0043F8BB    pop         ebx
 0043F8BC    ret
*}
end;

//0043F8C0
function TValue.&op_Implicit:TValue;
begin
{*
 0043F8C0    push        ebp
 0043F8C1    mov         ebp,esp
 0043F8C3    push        ebx
 0043F8C4    mov         ebx,eax
 0043F8C6    mov         edx,dword ptr ds:[40118C];Single
 0043F8CC    mov         eax,ebx
 0043F8CE    call        TValue.Create
 0043F8D3    mov         eax,dword ptr [ebp+8]
 0043F8D6    mov         dword ptr [ebx+8],eax
 0043F8D9    pop         ebx
 0043F8DA    pop         ebp
 0043F8DB    ret         4
*}
end;

//0043F8E0
function TValue.&op_Implicit:TValue;
begin
{*
 0043F8E0    push        ebp
 0043F8E1    mov         ebp,esp
 0043F8E3    push        ebx
 0043F8E4    mov         ebx,eax
 0043F8E6    mov         edx,dword ptr ds:[4011B0];Double
 0043F8EC    mov         eax,ebx
 0043F8EE    call        TValue.Create
 0043F8F3    mov         eax,dword ptr [ebp+8]
 0043F8F6    mov         dword ptr [ebx+8],eax
 0043F8F9    mov         eax,dword ptr [ebp+0C]
 0043F8FC    mov         dword ptr [ebx+0C],eax
 0043F8FF    pop         ebx
 0043F900    pop         ebp
 0043F901    ret         8
*}
end;

//0043F904
function TValue.&op_Implicit:TValue;
begin
{*
 0043F904    push        ebp
 0043F905    mov         ebp,esp
 0043F907    push        ebx
 0043F908    mov         ebx,eax
 0043F90A    mov         edx,dword ptr ds:[4011D0];Currency
 0043F910    mov         eax,ebx
 0043F912    call        TValue.Create
 0043F917    mov         eax,dword ptr [ebp+8]
 0043F91A    mov         dword ptr [ebx+8],eax
 0043F91D    mov         eax,dword ptr [ebp+0C]
 0043F920    mov         dword ptr [ebx+0C],eax
 0043F923    pop         ebx
 0043F924    pop         ebp
 0043F925    ret         8
*}
end;

//0043F928
function TValue.&op_Implicit:TValue;
begin
{*
 0043F928    push        ebp
 0043F929    mov         ebp,esp
 0043F92B    push        ebx
 0043F92C    mov         ebx,eax
 0043F92E    mov         edx,dword ptr ds:[401114];Int64
 0043F934    mov         eax,ebx
 0043F936    call        TValue.Create
 0043F93B    mov         eax,dword ptr [ebp+8]
 0043F93E    mov         dword ptr [ebx+8],eax
 0043F941    mov         eax,dword ptr [ebp+0C]
 0043F944    mov         dword ptr [ebx+0C],eax
 0043F947    pop         ebx
 0043F948    pop         ebp
 0043F949    ret         8
*}
end;

//0043F94C
function TValue.&op_Implicit:TValue;
begin
{*
 0043F94C    push        ebp
 0043F94D    mov         ebp,esp
 0043F94F    push        ebx
 0043F950    mov         ebx,eax
 0043F952    mov         edx,dword ptr ds:[401134];UInt64
 0043F958    mov         eax,ebx
 0043F95A    call        TValue.Create
 0043F95F    mov         eax,dword ptr [ebp+8]
 0043F962    mov         dword ptr [ebx+8],eax
 0043F965    mov         eax,dword ptr [ebp+0C]
 0043F968    mov         dword ptr [ebx+0C],eax
 0043F96B    pop         ebx
 0043F96C    pop         ebp
 0043F96D    ret         8
*}
end;

//0043F970
procedure sub_0043F970(?:TRttiType; ?:Byte);
begin
{*
 0043F970    push        ebx
 0043F971    push        esi
 0043F972    push        ecx
 0043F973    mov         esi,edx
 0043F975    mov         dword ptr [esp],eax
 0043F978    cmp         dword ptr [esp],0
>0043F97C    jne         0043F987
 0043F97E    mov         eax,esi
 0043F980    call        TValue.GetEmpty
>0043F985    jmp         0043F9B9
 0043F987    mov         eax,dword ptr [esp]
 0043F98A    mov         eax,dword ptr [eax]
 0043F98C    add         eax,0FFFFFFB8
 0043F98F    mov         ebx,dword ptr [eax]
 0043F991    test        ebx,ebx
>0043F993    je          0043F9AF
 0043F995    mov         eax,esi
 0043F997    mov         edx,dword ptr ds:[435E20];TValue
 0043F99D    call        @FinalizeRecord
 0043F9A2    mov         ecx,eax
 0043F9A4    mov         eax,esp
 0043F9A6    mov         edx,ebx
 0043F9A8    call        TValue.Make
>0043F9AD    jmp         0043F9B9
 0043F9AF    mov         edx,esi
 0043F9B1    mov         eax,dword ptr [esp]
 0043F9B4    call        00457834
 0043F9B9    pop         edx
 0043F9BA    pop         esi
 0043F9BB    pop         ebx
 0043F9BC    ret
*}
end;

//0043F9C0
function TValue.&op_Implicit:TValue;
begin
{*
 0043F9C0    push        ebx
 0043F9C1    push        esi
 0043F9C2    mov         ebx,edx
 0043F9C4    mov         esi,eax
 0043F9C6    test        esi,esi
>0043F9C8    jne         0043F9D4
 0043F9CA    mov         eax,ebx
 0043F9CC    call        TValue.GetEmpty
 0043F9D1    pop         esi
 0043F9D2    pop         ebx
 0043F9D3    ret
 0043F9D4    mov         edx,dword ptr ds:[40132C];TClass
 0043F9DA    mov         eax,ebx
 0043F9DC    call        TValue.Create
 0043F9E1    mov         dword ptr [ebx+8],esi
 0043F9E4    pop         esi
 0043F9E5    pop         ebx
 0043F9E6    ret
*}
end;

//0043F9E8
function TValue.&op_Implicit:TValue;
begin
{*
 0043F9E8    push        ebx
 0043F9E9    push        esi
 0043F9EA    mov         esi,edx
 0043F9EC    mov         ebx,eax
 0043F9EE    mov         eax,esi
 0043F9F0    mov         edx,dword ptr ds:[401000];Boolean
 0043F9F6    call        TValue.Create
 0043F9FB    mov         byte ptr [esi+8],bl
 0043F9FE    pop         esi
 0043F9FF    pop         ebx
 0043FA00    ret
*}
end;

//0043FA04
function TValue.IsObject:Boolean;
begin
{*
 0043FA04    push        ebx
 0043FA05    mov         ebx,eax
 0043FA07    mov         eax,ebx
 0043FA09    call        TValue.GetIsEmpty
 0043FA0E    test        al,al
>0043FA10    jne         0043FA1D
 0043FA12    mov         eax,dword ptr [ebx]
 0043FA14    cmp         byte ptr [eax],7
>0043FA17    je          0043FA1D
 0043FA19    xor         eax,eax
 0043FA1B    pop         ebx
 0043FA1C    ret
 0043FA1D    mov         al,1
 0043FA1F    pop         ebx
 0043FA20    ret
*}
end;

//0043FA24
{*function sub_0043FA24(?:Byte):?;
begin
 0043FA24    push        ebx
 0043FA25    mov         ebx,eax
 0043FA27    mov         eax,ebx
 0043FA29    call        TValue.IsObject
 0043FA2E    test        al,al
>0043FA30    jne         0043FA49
 0043FA32    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0043FA38    mov         dl,1
 0043FA3A    mov         eax,[00418C80];EInvalidCast
 0043FA3F    call        Exception.CreateRes;EInvalidCast.Create
 0043FA44    call        @RaiseExcept
 0043FA49    mov         eax,ebx
 0043FA4B    call        TValue.GetIsEmpty
 0043FA50    test        al,al
>0043FA52    je          0043FA58
 0043FA54    xor         eax,eax
 0043FA56    pop         ebx
 0043FA57    ret
 0043FA58    mov         eax,dword ptr [ebx+8]
 0043FA5B    pop         ebx
 0043FA5C    ret
end;*}

//0043FA60
function GetDynArrayElType(ATypeInfo:TypInfo.PTypeInfo):PTypeInfo;
begin
{*
 0043FA60    push        ebx
 0043FA61    mov         ebx,eax
 0043FA63    mov         eax,ebx
 0043FA65    call        GetTypeData
 0043FA6A    call        TTypeData.DynArrElType
 0043FA6F    test        eax,eax
>0043FA71    jne         0043FA77
 0043FA73    xor         eax,eax
 0043FA75    pop         ebx
 0043FA76    ret
 0043FA77    mov         eax,dword ptr [eax]
 0043FA79    pop         ebx
 0043FA7A    ret
*}
end;

//0043FA7C
{*function sub_0043FA7C:?;
begin
 0043FA7C    call        00457910
 0043FA81    ret
end;*}

//0043FA84
function TValue.IsOrdinal:Boolean;
begin
{*
 0043FA84    push        ebx
 0043FA85    mov         ebx,eax
 0043FA87    mov         eax,ebx
 0043FA89    call        TValue.GetIsEmpty
 0043FA8E    test        al,al
>0043FA90    jne         0043FAB8
 0043FA92    mov         eax,ebx
 0043FA94    call        TValue.GetTypeInfo
 0043FA99    test        eax,eax
>0043FA9B    je          0043FAB4
 0043FA9D    mov         eax,ebx
 0043FA9F    call        TValue.GetTypeInfo
 0043FAA4    movzx       eax,byte ptr [eax]
 0043FAA7    dec         eax
 0043FAA8    sub         al,3
>0043FAAA    jb          0043FAB8
 0043FAAC    sub         al,5
>0043FAAE    je          0043FAB8
 0043FAB0    sub         al,7
>0043FAB2    je          0043FAB8
 0043FAB4    xor         eax,eax
 0043FAB6    pop         ebx
 0043FAB7    ret
 0043FAB8    mov         al,1
 0043FABA    pop         ebx
 0043FABB    ret
*}
end;

//0043FABC
function TValue.AsOrdinal:Int64;
begin
{*
 0043FABC    push        ebx
 0043FABD    add         esp,0FFFFFFF8
 0043FAC0    mov         ebx,eax
 0043FAC2    mov         edx,esp
 0043FAC4    mov         eax,ebx
 0043FAC6    call        TValue.TryAsOrdinal
 0043FACB    test        al,al
>0043FACD    jne         0043FAE6
 0043FACF    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0043FAD5    mov         dl,1
 0043FAD7    mov         eax,[00418C80];EInvalidCast
 0043FADC    call        Exception.CreateRes
 0043FAE1    call        @RaiseExcept
 0043FAE6    mov         eax,dword ptr [esp]
 0043FAE9    mov         edx,dword ptr [esp+4]
 0043FAED    pop         ecx
 0043FAEE    pop         edx
 0043FAEF    pop         ebx
 0043FAF0    ret
*}
end;

//0043FAF4
function TValue.TryAsOrdinal(var AResult:Int64):Boolean;
begin
{*
 0043FAF4    push        ebx
 0043FAF5    push        esi
 0043FAF6    push        edi
 0043FAF7    mov         edi,edx
 0043FAF9    mov         esi,eax
 0043FAFB    mov         eax,esi
 0043FAFD    call        TValue.IsOrdinal
 0043FB02    mov         ebx,eax
 0043FB04    test        bl,bl
>0043FB06    je          0043FBD3
 0043FB0C    mov         dword ptr [edi],0
 0043FB12    mov         dword ptr [edi+4],0
 0043FB19    mov         eax,esi
 0043FB1B    call        TValue.GetIsEmpty
 0043FB20    test        al,al
>0043FB22    jne         0043FBD3
 0043FB28    mov         eax,esi
 0043FB2A    call        TValue.GetTypeInfo
 0043FB2F    movzx       eax,byte ptr [eax]
 0043FB32    dec         eax
 0043FB33    sub         al,3
>0043FB35    jb          0043FB4C
 0043FB37    sub         al,2
>0043FB39    je          0043FB4C
 0043FB3B    sub         al,3
>0043FB3D    je          0043FB4C
 0043FB3F    sub         al,7
>0043FB41    je          0043FBC8
>0043FB47    jmp         0043FBD3
 0043FB4C    mov         eax,esi
 0043FB4E    call        TValue.GetTypeInfo
 0043FB53    call        GetTypeData
 0043FB58    movzx       eax,byte ptr [eax]
 0043FB5B    cmp         eax,5
>0043FB5E    ja          0043FBD3
 0043FB60    jmp         dword ptr [eax*4+43FB67]
 0043FB60    dd          0043FB7F
 0043FB60    dd          0043FB8B
 0043FB60    dd          0043FB98
 0043FB60    dd          0043FBA4
 0043FB60    dd          0043FBB1
 0043FB60    dd          0043FBBC
 0043FB7F    movsx       eax,byte ptr [esi+8]
 0043FB83    cdq
 0043FB84    mov         dword ptr [edi],eax
 0043FB86    mov         dword ptr [edi+4],edx
>0043FB89    jmp         0043FBD3
 0043FB8B    movzx       eax,byte ptr [esi+8]
 0043FB8F    xor         edx,edx
 0043FB91    mov         dword ptr [edi],eax
 0043FB93    mov         dword ptr [edi+4],edx
>0043FB96    jmp         0043FBD3
 0043FB98    movsx       eax,word ptr [esi+8]
 0043FB9C    cdq
 0043FB9D    mov         dword ptr [edi],eax
 0043FB9F    mov         dword ptr [edi+4],edx
>0043FBA2    jmp         0043FBD3
 0043FBA4    movzx       eax,word ptr [esi+8]
 0043FBA8    xor         edx,edx
 0043FBAA    mov         dword ptr [edi],eax
 0043FBAC    mov         dword ptr [edi+4],edx
>0043FBAF    jmp         0043FBD3
 0043FBB1    mov         eax,dword ptr [esi+8]
 0043FBB4    cdq
 0043FBB5    mov         dword ptr [edi],eax
 0043FBB7    mov         dword ptr [edi+4],edx
>0043FBBA    jmp         0043FBD3
 0043FBBC    mov         eax,dword ptr [esi+8]
 0043FBBF    xor         edx,edx
 0043FBC1    mov         dword ptr [edi],eax
 0043FBC3    mov         dword ptr [edi+4],edx
>0043FBC6    jmp         0043FBD3
 0043FBC8    mov         eax,dword ptr [esi+8]
 0043FBCB    mov         dword ptr [edi],eax
 0043FBCD    mov         eax,dword ptr [esi+0C]
 0043FBD0    mov         dword ptr [edi+4],eax
 0043FBD3    mov         eax,ebx
 0043FBD5    pop         edi
 0043FBD6    pop         esi
 0043FBD7    pop         ebx
 0043FBD8    ret
*}
end;

//0043FBDC
function TValue.Cast:TValue;
begin
{*
 0043FBDC    push        ebx
 0043FBDD    push        esi
 0043FBDE    push        edi
 0043FBDF    mov         edi,ecx
 0043FBE1    mov         esi,edx
 0043FBE3    mov         ebx,eax
 0043FBE5    mov         edx,dword ptr ds:[435E20];TValue
 0043FBEB    mov         eax,edi
 0043FBED    call        @FinalizeRecord
 0043FBF2    mov         ecx,eax
 0043FBF4    mov         eax,ebx
 0043FBF6    mov         edx,esi
 0043FBF8    call        TValue.TryCast
 0043FBFD    test        al,al
>0043FBFF    jne         0043FC18
 0043FC01    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0043FC07    mov         dl,1
 0043FC09    mov         eax,[00418C80];EInvalidCast
 0043FC0E    call        Exception.CreateRes
 0043FC13    call        @RaiseExcept
 0043FC18    pop         edi
 0043FC19    pop         esi
 0043FC1A    pop         ebx
 0043FC1B    ret
*}
end;

//0043FC1C
function TValue.AsInteger:Integer;
begin
{*
 0043FC1C    push        ebx
 0043FC1D    push        esi
 0043FC1E    mov         ebx,eax
 0043FC20    mov         eax,ebx
 0043FC22    call        TValue.GetIsEmpty
 0043FC27    test        al,al
>0043FC29    jne         0043FC72
 0043FC2B    mov         esi,dword ptr [ebx]
 0043FC2D    cmp         esi,dword ptr ds:[40109C];Integer
>0043FC33    jne         0043FC3B
 0043FC35    mov         eax,dword ptr [ebx+8]
 0043FC38    pop         esi
 0043FC39    pop         ebx
 0043FC3A    ret
 0043FC3B    cmp         byte ptr [esi],1
>0043FC3E    jne         0043FC72
 0043FC40    mov         eax,esi
 0043FC42    call        GetTypeData
 0043FC47    movzx       eax,byte ptr [eax]
 0043FC4A    sub         al,1
>0043FC4C    jb          0043FC58
 0043FC4E    dec         al
>0043FC50    je          0043FC5F
 0043FC52    sub         al,2
>0043FC54    je          0043FC66
>0043FC56    jmp         0043FC6C
 0043FC58    movsx       eax,byte ptr [ebx+8]
 0043FC5C    pop         esi
 0043FC5D    pop         ebx
 0043FC5E    ret
 0043FC5F    movsx       eax,word ptr [ebx+8]
 0043FC63    pop         esi
 0043FC64    pop         ebx
 0043FC65    ret
 0043FC66    mov         eax,dword ptr [ebx+8]
 0043FC69    pop         esi
 0043FC6A    pop         ebx
 0043FC6B    ret
 0043FC6C    mov         eax,dword ptr [ebx+8]
 0043FC6F    pop         esi
 0043FC70    pop         ebx
 0043FC71    ret
 0043FC72    mov         eax,ebx
 0043FC74    call        TValue.AsType<System.Integer>
 0043FC79    pop         esi
 0043FC7A    pop         ebx
 0043FC7B    ret
*}
end;

//0043FC7C
function TValue.AsBoolean:Boolean;
begin
{*
 0043FC7C    push        ebx
 0043FC7D    mov         ebx,eax
 0043FC7F    mov         eax,ebx
 0043FC81    call        TValue.GetIsEmpty
 0043FC86    test        al,al
>0043FC88    jne         0043FC9D
 0043FC8A    mov         eax,dword ptr [ebx]
 0043FC8C    cmp         eax,dword ptr ds:[401000];Boolean
>0043FC92    jne         0043FC9D
 0043FC94    cmp         byte ptr [ebx+8],0
 0043FC98    setne       al
 0043FC9B    pop         ebx
 0043FC9C    ret
 0043FC9D    mov         eax,ebx
 0043FC9F    call        TValue.AsType<System.Boolean>
 0043FCA4    pop         ebx
 0043FCA5    ret
*}
end;

//0043FCA8
function TValue.AsExtended:Extended;
begin
{*
 0043FCA8    push        ebx
 0043FCA9    push        esi
 0043FCAA    add         esp,0FFFFFFF4
 0043FCAD    mov         ebx,eax
 0043FCAF    mov         eax,ebx
 0043FCB1    call        TValue.GetIsEmpty
 0043FCB6    test        al,al
>0043FCB8    jne         0043FD21
 0043FCBA    mov         esi,dword ptr [ebx]
 0043FCBC    cmp         esi,dword ptr ds:[40119C];Extended
>0043FCC2    jne         0043FCDC
 0043FCC4    mov         eax,dword ptr [ebx+8]
 0043FCC7    mov         dword ptr [esp],eax
 0043FCCA    mov         eax,dword ptr [ebx+0C]
 0043FCCD    mov         dword ptr [esp+4],eax
 0043FCD1    mov         ax,word ptr [ebx+10]
 0043FCD5    mov         word ptr [esp+8],ax
>0043FCDA    jmp         0043FD2C
 0043FCDC    cmp         byte ptr [esi],4
>0043FCDF    jne         0043FD21
 0043FCE1    mov         eax,esi
 0043FCE3    call        GetTypeData
 0043FCE8    movzx       eax,byte ptr [eax]
 0043FCEB    sub         al,1
>0043FCED    jb          0043FCF7
>0043FCEF    je          0043FD00
 0043FCF1    dec         al
>0043FCF3    je          0043FD09
>0043FCF5    jmp         0043FD21
 0043FCF7    fld         dword ptr [ebx+8]
 0043FCFA    fstp        tbyte ptr [esp]
 0043FCFD    wait
>0043FCFE    jmp         0043FD2C
 0043FD00    fld         qword ptr [ebx+8]
 0043FD03    fstp        tbyte ptr [esp]
 0043FD06    wait
>0043FD07    jmp         0043FD2C
 0043FD09    mov         eax,dword ptr [ebx+8]
 0043FD0C    mov         dword ptr [esp],eax
 0043FD0F    mov         eax,dword ptr [ebx+0C]
 0043FD12    mov         dword ptr [esp+4],eax
 0043FD16    mov         ax,word ptr [ebx+10]
 0043FD1A    mov         word ptr [esp+8],ax
>0043FD1F    jmp         0043FD2C
 0043FD21    mov         eax,ebx
 0043FD23    call        TValue.AsType<System.Extended>
 0043FD28    fstp        tbyte ptr [esp]
 0043FD2B    wait
 0043FD2C    fld         tbyte ptr [esp]
 0043FD2F    add         esp,0C
 0043FD32    pop         esi
 0043FD33    pop         ebx
 0043FD34    ret
*}
end;

//0043FD38
function TValue.AsInt64:Int64;
begin
{*
 0043FD38    push        ebx
 0043FD39    add         esp,0FFFFFFF8
 0043FD3C    mov         ebx,eax
 0043FD3E    mov         eax,ebx
 0043FD40    call        TValue.GetIsEmpty
 0043FD45    test        al,al
>0043FD47    jne         0043FD8F
 0043FD49    mov         eax,dword ptr [ebx]
 0043FD4B    cmp         eax,dword ptr ds:[401114];Int64
>0043FD51    jne         0043FD62
 0043FD53    mov         eax,dword ptr [ebx+8]
 0043FD56    mov         dword ptr [esp],eax
 0043FD59    mov         eax,dword ptr [ebx+0C]
 0043FD5C    mov         dword ptr [esp+4],eax
>0043FD60    jmp         0043FD9D
 0043FD62    cmp         eax,dword ptr ds:[401134];UInt64
>0043FD68    jne         0043FD79
 0043FD6A    mov         eax,dword ptr [ebx+8]
 0043FD6D    mov         dword ptr [esp],eax
 0043FD70    mov         eax,dword ptr [ebx+0C]
 0043FD73    mov         dword ptr [esp+4],eax
>0043FD77    jmp         0043FD9D
 0043FD79    cmp         byte ptr [eax],1
>0043FD7C    jne         0043FD8F
 0043FD7E    mov         eax,ebx
 0043FD80    call        TValue.AsInteger
 0043FD85    cdq
 0043FD86    mov         dword ptr [esp],eax
 0043FD89    mov         dword ptr [esp+4],edx
>0043FD8D    jmp         0043FD9D
 0043FD8F    mov         eax,ebx
 0043FD91    call        TValue.AsType<System.Int64>
 0043FD96    mov         dword ptr [esp],eax
 0043FD99    mov         dword ptr [esp+4],edx
 0043FD9D    mov         eax,dword ptr [esp]
 0043FDA0    mov         edx,dword ptr [esp+4]
 0043FDA4    pop         ecx
 0043FDA5    pop         edx
 0043FDA6    pop         ebx
 0043FDA7    ret
*}
end;

//0043FDA8
function TValue.AsInterface:IInterface;
begin
{*
 0043FDA8    push        ebx
 0043FDA9    push        esi
 0043FDAA    mov         esi,edx
 0043FDAC    mov         ebx,eax
 0043FDAE    mov         eax,ebx
 0043FDB0    call        TValue.GetIsEmpty
 0043FDB5    test        al,al
>0043FDB7    jne         0043FDCD
 0043FDB9    mov         eax,dword ptr [ebx]
 0043FDBB    cmp         byte ptr [eax],0F
>0043FDBE    jne         0043FDCD
 0043FDC0    mov         edx,esi
 0043FDC2    mov         eax,dword ptr [ebx+4]
 0043FDC5    mov         ecx,dword ptr [eax]
 0043FDC7    call        dword ptr [ecx+10]
 0043FDCA    pop         esi
 0043FDCB    pop         ebx
 0043FDCC    ret
 0043FDCD    mov         edx,esi
 0043FDCF    mov         eax,ebx
 0043FDD1    call        TValue.AsType<System.IInterface>
 0043FDD6    pop         esi
 0043FDD7    pop         ebx
 0043FDD8    ret
*}
end;

//0043FDDC
function TValue.AsString:UnicodeString;
begin
{*
 0043FDDC    push        ebx
 0043FDDD    push        esi
 0043FDDE    mov         esi,edx
 0043FDE0    mov         ebx,eax
 0043FDE2    mov         eax,ebx
 0043FDE4    call        TValue.GetIsEmpty
 0043FDE9    test        al,al
>0043FDEB    jne         0043FE50
 0043FDED    mov         eax,dword ptr [ebx]
 0043FDEF    movzx       eax,byte ptr [eax]
 0043FDF2    sub         al,5
>0043FDF4    je          0043FE04
 0043FDF6    sub         al,5
>0043FDF8    je          0043FE17
 0043FDFA    dec         al
>0043FDFC    je          0043FE2A
 0043FDFE    sub         al,7
>0043FE00    je          0043FE3D
>0043FE02    jmp         0043FE50
 0043FE04    mov         eax,ebx
 0043FE06    call        TValue.GetReferenceToRawData
 0043FE0B    mov         edx,eax
 0043FE0D    mov         eax,esi
 0043FE0F    call        @UStrFromString
 0043FE14    pop         esi
 0043FE15    pop         ebx
 0043FE16    ret
 0043FE17    mov         eax,ebx
 0043FE19    call        TValue.GetReferenceToRawData
 0043FE1E    mov         edx,dword ptr [eax]
 0043FE20    mov         eax,esi
 0043FE22    call        @UStrFromLStr
 0043FE27    pop         esi
 0043FE28    pop         ebx
 0043FE29    ret
 0043FE2A    mov         eax,ebx
 0043FE2C    call        TValue.GetReferenceToRawData
 0043FE31    mov         edx,dword ptr [eax]
 0043FE33    mov         eax,esi
 0043FE35    call        @UStrFromWStr
 0043FE3A    pop         esi
 0043FE3B    pop         ebx
 0043FE3C    ret
 0043FE3D    mov         eax,ebx
 0043FE3F    call        TValue.GetReferenceToRawData
 0043FE44    mov         edx,dword ptr [eax]
 0043FE46    mov         eax,esi
 0043FE48    call        @UStrAsg
 0043FE4D    pop         esi
 0043FE4E    pop         ebx
 0043FE4F    ret
 0043FE50    mov         edx,esi
 0043FE52    mov         eax,ebx
 0043FE54    call        TValue.AsType<System.string>
 0043FE59    pop         esi
 0043FE5A    pop         ebx
 0043FE5B    ret
*}
end;

//0043FE5C
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator.DoGetCurrent:TPair<System.Pointer,System.Rtti.TRttiObject>;
begin
{*
 0043FE5C    push        ebx
 0043FE5D    push        esi
 0043FE5E    mov         esi,edx
 0043FE60    mov         ebx,eax
 0043FE62    mov         edx,esi
 0043FE64    mov         eax,ebx
 0043FE66    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator.GetCurrent
 0043FE6B    pop         esi
 0043FE6C    pop         ebx
 0043FE6D    ret
*}
end;

//0043FE70
function GetClassInfo(AClass:TClass):PTypeInfo;
begin
{*
 0043FE70    push        ebp
 0043FE71    mov         ebp,esp
 0043FE73    test        eax,eax
>0043FE75    jne         0043FE7F
 0043FE77    mov         eax,dword ptr [ebp+8]
 0043FE7A    mov         eax,dword ptr [eax-4]
 0043FE7D    pop         ebp
 0043FE7E    ret
 0043FE7F    add         eax,0FFFFFFB8
 0043FE82    mov         eax,dword ptr [eax]
 0043FE84    pop         ebp
 0043FE85    ret
*}
end;

//0043FE88
procedure TValue.Make(ATypeInfo:TypInfo.PTypeInfo; var Result:TValue);
begin
{*
 0043FE88    push        ebp
 0043FE89    mov         ebp,esp
 0043FE8B    push        ecx
 0043FE8C    push        ebx
 0043FE8D    push        esi
 0043FE8E    push        edi
 0043FE8F    mov         esi,ecx
 0043FE91    mov         dword ptr [ebp-4],edx
 0043FE94    mov         edi,eax
 0043FE96    mov         eax,esi
 0043FE98    mov         edx,dword ptr ds:[435E20];TValue
 0043FE9E    call        @AddRefRecord
 0043FEA3    mov         eax,dword ptr [ebp-4]
 0043FEA6    mov         dword ptr [esi],eax
 0043FEA8    lea         eax,[esi+4]
 0043FEAB    mov         edx,dword ptr ds:[79FD8C];^gvar_0079FD88
 0043FEB1    call        @IntfCopy
 0043FEB6    mov         eax,dword ptr [ebp-4]
 0043FEB9    call        GetInlineSize
 0043FEBE    mov         ebx,eax
 0043FEC0    test        ebx,ebx
>0043FEC2    je          0043FF34
 0043FEC4    test        ebx,ebx
>0043FEC6    jle         0043FF0E
 0043FEC8    xor         eax,eax
 0043FECA    mov         dword ptr [esi+8],eax
 0043FECD    mov         dword ptr [esi+0C],eax
 0043FED0    mov         word ptr [esi+10],ax
 0043FED4    test        edi,edi
>0043FED6    je          0043FEE4
 0043FED8    lea         edx,[esi+8]
 0043FEDB    mov         eax,edi
 0043FEDD    mov         ecx,ebx
 0043FEDF    call        Move
 0043FEE4    cmp         dword ptr [ebp-4],0
>0043FEE8    je          0043FF34
 0043FEEA    mov         eax,dword ptr [ebp-4]
 0043FEED    movzx       eax,byte ptr [eax]
 0043FEF0    sub         al,7
>0043FEF2    jne         0043FF34
 0043FEF4    cmp         dword ptr [esi+8],0
>0043FEF8    je          0043FF34
 0043FEFA    mov         eax,dword ptr [esi+8]
 0043FEFD    mov         eax,dword ptr [eax]
 0043FEFF    mov         ebx,eax
 0043FF01    push        ebp
 0043FF02    mov         eax,ebx
 0043FF04    call        GetClassInfo
 0043FF09    pop         ecx
 0043FF0A    mov         dword ptr [esi],eax
>0043FF0C    jmp         0043FF34
 0043FF0E    neg         ebx
 0043FF10    push        ebx
 0043FF11    mov         eax,dword ptr [ebp-4]
 0043FF14    push        eax
 0043FF15    mov         ecx,edi
 0043FF17    mov         dl,1
 0043FF19    mov         eax,[0043F124];TValueDataImpl
 0043FF1E    call        TValueDataImpl.Create
 0043FF23    mov         edx,eax
 0043FF25    test        edx,edx
>0043FF27    je          0043FF2C
 0043FF29    sub         edx,0FFFFFFEC
 0043FF2C    lea         eax,[esi+4]
 0043FF2F    call        @IntfCopy
 0043FF34    pop         edi
 0043FF35    pop         esi
 0043FF36    pop         ebx
 0043FF37    pop         ecx
 0043FF38    pop         ebp
 0043FF39    ret
*}
end;

//0043FF3C
{*procedure sub_0043FF3C(?:?; ?:?; ?:?);
begin
 0043FF3C    push        ebp
 0043FF3D    mov         ebp,esp
 0043FF3F    push        ecx
 0043FF40    push        ebx
 0043FF41    push        esi
 0043FF42    mov         ebx,ecx
 0043FF44    mov         esi,edx
 0043FF46    mov         dword ptr [ebp-4],eax
 0043FF49    mov         eax,ebx
 0043FF4B    mov         edx,dword ptr ds:[435E20];TValue
 0043FF51    call        @AddRefRecord
 0043FF56    mov         dword ptr [ebx],esi
 0043FF58    lea         eax,[ebx+4]
 0043FF5B    mov         edx,dword ptr ds:[79FD8C];^gvar_0079FD88
 0043FF61    call        @IntfCopy
 0043FF66    mov         eax,esi
 0043FF68    call        GetInlineSize
 0043FF6D    test        eax,eax
>0043FF6F    jle         0043FF79
 0043FF71    mov         eax,dword ptr [ebp-4]
 0043FF74    mov         dword ptr [ebx+8],eax
>0043FF77    jmp         0043FF9C
 0043FF79    push        4
 0043FF7B    push        esi
 0043FF7C    lea         ecx,[ebp-4]
 0043FF7F    mov         dl,1
 0043FF81    mov         eax,[0043F124];TValueDataImpl
 0043FF86    call        TValueDataImpl.Create;TValueDataImpl.Create
 0043FF8B    mov         edx,eax
 0043FF8D    test        edx,edx
>0043FF8F    je          0043FF94
 0043FF91    sub         edx,0FFFFFFEC
 0043FF94    lea         eax,[ebx+4]
 0043FF97    call        @IntfCopy
 0043FF9C    pop         esi
 0043FF9D    pop         ebx
 0043FF9E    pop         ecx
 0043FF9F    pop         ebp
 0043FFA0    ret
end;*}

//0043FFA4
{*procedure sub_0043FFA4(?:?; ?:?; ?:?);
begin
 0043FFA4    push        ebp
 0043FFA5    mov         ebp,esp
 0043FFA7    push        ecx
 0043FFA8    push        ebx
 0043FFA9    push        esi
 0043FFAA    push        edi
 0043FFAB    mov         ebx,ecx
 0043FFAD    mov         dword ptr [ebp-4],edx
 0043FFB0    mov         edi,eax
 0043FFB2    mov         eax,ebx
 0043FFB4    mov         edx,dword ptr ds:[435E20];TValue
 0043FFBA    call        @AddRefRecord
 0043FFBF    mov         eax,dword ptr [ebp-4]
 0043FFC2    call        IsManaged
 0043FFC7    test        al,al
>0043FFC9    jne         0043FFE6
 0043FFCB    mov         eax,ebx
 0043FFCD    mov         edx,dword ptr ds:[435E20];TValue
 0043FFD3    call        @FinalizeRecord
 0043FFD8    mov         ecx,eax
 0043FFDA    mov         edx,dword ptr [ebp-4]
 0043FFDD    mov         eax,edi
 0043FFDF    call        TValue.Make
>0043FFE4    jmp         0044001B
 0043FFE6    mov         eax,dword ptr [ebp-4]
 0043FFE9    mov         dword ptr [ebx],eax
 0043FFEB    mov         eax,dword ptr [ebp-4]
 0043FFEE    call        GetInlineSize
 0043FFF3    mov         esi,eax
 0043FFF5    neg         esi
 0043FFF7    push        esi
 0043FFF8    mov         eax,dword ptr [ebp-4]
 0043FFFB    push        eax
 0043FFFC    mov         ecx,edi
 0043FFFE    mov         dl,1
 00440000    mov         eax,[0043F124];TValueDataImpl
 00440005    call        TValueDataImpl.CreateWithoutCopy;TValueDataImpl.Create
 0044000A    mov         edx,eax
 0044000C    test        edx,edx
>0044000E    je          00440013
 00440010    sub         edx,0FFFFFFEC
 00440013    lea         eax,[ebx+4]
 00440016    call        @IntfCopy
 0044001B    pop         edi
 0044001C    pop         esi
 0044001D    pop         ebx
 0044001E    pop         ecx
 0044001F    pop         ebp
 00440020    ret
end;*}

//00440024
procedure TValue.ExtractRawData(ABuffer:Pointer);
begin
{*
 00440024    push        ebx
 00440025    push        esi
 00440026    mov         esi,edx
 00440028    mov         ebx,eax
 0044002A    mov         eax,dword ptr [ebx]
 0044002C    call        GetInlineSize
 00440031    test        eax,eax
>00440033    jne         0044004C
 00440035    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0044003B    mov         dl,1
 0044003D    mov         eax,[00418C80];EInvalidCast
 00440042    call        Exception.CreateRes
 00440047    call        @RaiseExcept
 0044004C    test        eax,eax
>0044004E    jle         0044005E
 00440050    mov         edx,esi
 00440052    lea         ecx,[ebx+8]
 00440055    xchg        eax,ecx
 00440056    call        Move
 0044005B    pop         esi
 0044005C    pop         ebx
 0044005D    ret
 0044005E    mov         eax,dword ptr [ebx+4]
 00440061    mov         edx,esi
 00440063    mov         ecx,dword ptr [eax]
 00440065    call        dword ptr [ecx+10]
 00440068    pop         esi
 00440069    pop         ebx
 0044006A    ret
*}
end;

//0044006C
procedure TValue.ExtractRawDataNoCopy(ABuffer:Pointer);
begin
{*
 0044006C    push        ebx
 0044006D    push        esi
 0044006E    mov         esi,edx
 00440070    mov         ebx,eax
 00440072    mov         eax,dword ptr [ebx]
 00440074    call        GetInlineSize
 00440079    test        eax,eax
>0044007B    jne         00440094
 0044007D    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00440083    mov         dl,1
 00440085    mov         eax,[00418C80];EInvalidCast
 0044008A    call        Exception.CreateRes
 0044008F    call        @RaiseExcept
 00440094    test        eax,eax
>00440096    jle         004400A6
 00440098    mov         edx,esi
 0044009A    lea         ecx,[ebx+8]
 0044009D    xchg        eax,ecx
 0044009E    call        Move
 004400A3    pop         esi
 004400A4    pop         ebx
 004400A5    ret
 004400A6    mov         eax,dword ptr [ebx+4]
 004400A9    mov         edx,esi
 004400AB    mov         ecx,dword ptr [eax]
 004400AD    call        dword ptr [ecx+14]
 004400B0    pop         esi
 004400B1    pop         ebx
 004400B2    ret
*}
end;

//004400B4
function TValue.GetReferenceToRawData:Pointer;
begin
{*
 004400B4    push        ebx
 004400B5    mov         ebx,eax
 004400B7    mov         eax,dword ptr [ebx]
 004400B9    call        GetInlineSize
 004400BE    test        eax,eax
>004400C0    jne         004400D9
 004400C2    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 004400C8    mov         dl,1
 004400CA    mov         eax,[00418C80];EInvalidCast
 004400CF    call        Exception.CreateRes
 004400D4    call        @RaiseExcept
 004400D9    test        eax,eax
>004400DB    jle         004400E2
 004400DD    lea         eax,[ebx+8]
 004400E0    pop         ebx
 004400E1    ret
 004400E2    mov         eax,dword ptr [ebx+4]
 004400E5    mov         edx,dword ptr [eax]
 004400E7    call        dword ptr [edx+18]
 004400EA    pop         ebx
 004400EB    ret
*}
end;

//00440804
function GetEnumBaseType(ATypeInfo:TypInfo.PTypeInfo):PTypeInfo;
begin
{*
 00440804    push        ebx
 00440805    push        esi
 00440806    test        eax,eax
>00440808    je          0044080F
 0044080A    cmp         byte ptr [eax],3
>0044080D    je          00440813
 0044080F    xor         esi,esi
>00440811    jmp         00440830
 00440813    mov         esi,eax
 00440815    mov         eax,esi
 00440817    call        GetTypeData
 0044081C    mov         ebx,dword ptr [eax+9]
 0044081F    test        ebx,ebx
>00440821    je          00440830
 00440823    cmp         dword ptr [ebx],0
>00440826    je          00440830
 00440828    cmp         esi,dword ptr [ebx]
>0044082A    je          00440830
 0044082C    mov         esi,dword ptr [ebx]
>0044082E    jmp         00440815
 00440830    mov         eax,esi
 00440832    pop         esi
 00440833    pop         ebx
 00440834    ret
*}
end;

//00440838
function IsBoolType(ATypeInfo:TypInfo.PTypeInfo):Boolean;
begin
{*
 00440838    push        ebp
 00440839    mov         ebp,esp
 0044083B    add         esp,0FFFFFFF8
 0044083E    push        ebx
 0044083F    push        esi
 00440840    xor         edx,edx
 00440842    mov         dword ptr [ebp-8],edx
 00440845    mov         esi,eax
 00440847    xor         eax,eax
 00440849    push        ebp
 0044084A    push        4408DF
 0044084F    push        dword ptr fs:[eax]
 00440852    mov         dword ptr fs:[eax],esp
 00440855    mov         eax,esi
 00440857    call        GetEnumBaseType
 0044085C    mov         esi,eax
 0044085E    cmp         esi,dword ptr ds:[401000];Boolean
>00440864    je          00440882
 00440866    cmp         esi,dword ptr ds:[401228];ByteBool
>0044086C    je          00440882
 0044086E    cmp         esi,dword ptr ds:[401258];WordBool
>00440874    je          00440882
 00440876    cmp         esi,dword ptr ds:[401288];LongBool
>0044087C    je          00440882
 0044087E    xor         ebx,ebx
>00440880    jmp         00440884
 00440882    mov         bl,1
 00440884    test        bl,bl
>00440886    jne         004408C9
 00440888    test        esi,esi
>0044088A    je          004408C9
 0044088C    cmp         byte ptr [esi],3
>0044088F    jne         004408C9
 00440891    mov         eax,esi
 00440893    call        GetTypeData
 00440898    cmp         dword ptr [eax+1],0
>0044089C    jne         004408C9
 0044089E    cmp         dword ptr [eax+5],1
>004408A2    jne         004408C9
 004408A4    mov         eax,esi
 004408A6    call        TTypeInfo.NameFld
 004408AB    mov         dword ptr [ebp-4],eax
 004408AE    lea         eax,[ebp-4]
 004408B1    lea         edx,[ebp-8]
 004408B4    call        TTypeInfoFieldAccessor.ToString
 004408B9    mov         eax,dword ptr [ebp-8]
 004408BC    mov         edx,4408FC;'bool'
 004408C1    call        @UStrEqual
 004408C6    sete        bl
 004408C9    xor         eax,eax
 004408CB    pop         edx
 004408CC    pop         ecx
 004408CD    pop         ecx
 004408CE    mov         dword ptr fs:[eax],edx
 004408D1    push        4408E6
 004408D6    lea         eax,[ebp-8]
 004408D9    call        @UStrClr
 004408DE    ret
>004408DF    jmp         @HandleFinally
>004408E4    jmp         004408D6
 004408E6    mov         eax,ebx
 004408E8    pop         esi
 004408E9    pop         ebx
 004408EA    pop         ecx
 004408EB    pop         ecx
 004408EC    pop         ebp
 004408ED    ret
*}
end;

//00442230
function TValue.TryCast(ATypeInfo:TypInfo.PTypeInfo; var AResult:TValue):Boolean;
begin
{*
 00442230    push        ebp
 00442231    mov         ebp,esp
 00442233    push        ecx
 00442234    mov         ecx,6
 00442239    push        0
 0044223B    push        0
 0044223D    dec         ecx
>0044223E    jne         00442239
 00442240    xchg        ecx,dword ptr [ebp-4]
 00442243    push        ebx
 00442244    push        esi
 00442245    push        edi
 00442246    mov         dword ptr [ebp-4],ecx
 00442249    mov         ebx,edx
 0044224B    mov         esi,eax
 0044224D    mov         eax,dword ptr [ebp-4]
 00442250    mov         edx,dword ptr ds:[435E20];TValue
 00442256    call        @AddRefRecord
 0044225B    xor         eax,eax
 0044225D    push        ebp
 0044225E    push        442361
 00442263    push        dword ptr fs:[eax]
 00442266    mov         dword ptr fs:[eax],esp
 00442269    mov         eax,esi
 0044226B    call        TValue.GetIsEmpty
 00442270    test        al,al
>00442272    je          004422CC
 00442274    lea         eax,[ebp-1C]
 00442277    call        TValue.GetEmpty
 0044227C    lea         edx,[ebp-1C]
 0044227F    mov         eax,dword ptr [ebp-4]
 00442282    mov         ecx,dword ptr ds:[435E20];TValue
 00442288    call        @CopyRecord
 0044228D    test        ebx,ebx
>0044228F    je          004422C8
 00442291    mov         eax,ebx
 00442293    call        GetInlineSize
 00442298    mov         esi,eax
 0044229A    test        esi,esi
>0044229C    jge         004422C3
 0044229E    push        ebx
 0044229F    mov         ecx,esi
 004422A1    neg         ecx
 004422A3    mov         dl,1
 004422A5    mov         eax,[0043F124];TValueDataImpl
 004422AA    call        TValueDataImpl.CreateEmpty
 004422AF    mov         edx,eax
 004422B1    test        edx,edx
>004422B3    je          004422B8
 004422B5    sub         edx,0FFFFFFEC
 004422B8    mov         eax,dword ptr [ebp-4]
 004422BB    add         eax,4
 004422BE    call        @IntfCopy
 004422C3    mov         eax,dword ptr [ebp-4]
 004422C6    mov         dword ptr [eax],ebx
 004422C8    mov         bl,1
>004422CA    jmp         00442340
 004422CC    cmp         ebx,dword ptr [esi]
>004422CE    jne         004422E4
 004422D0    mov         eax,dword ptr [ebp-4]
 004422D3    mov         edx,esi
 004422D5    mov         ecx,dword ptr ds:[435E20];TValue
 004422DB    call        @CopyRecord
 004422E0    mov         bl,1
>004422E2    jmp         00442340
 004422E4    test        ebx,ebx
>004422E6    jne         004422EC
 004422E8    xor         ebx,ebx
>004422EA    jmp         00442340
 004422EC    cmp         ebx,dword ptr ds:[435E20];TValue
>004422F2    jne         00442313
 004422F4    lea         edx,[ebp-34]
 004422F7    mov         eax,esi
 004422F9    call        TValue.From<System.Rtti.TValue>
 004422FE    lea         edx,[ebp-34]
 00442301    mov         eax,dword ptr [ebp-4]
 00442304    mov         ecx,dword ptr ds:[435E20];TValue
 0044230A    call        @CopyRecord
 0044230F    mov         bl,1
>00442311    jmp         00442340
 00442313    mov         eax,dword ptr [ebp-4]
 00442316    mov         edx,dword ptr ds:[435E20];TValue
 0044231C    call        @FinalizeRecord
 00442321    mov         ecx,eax
 00442323    movzx       eax,byte ptr [ebx]
 00442326    mov         edx,dword ptr [esi]
 00442328    movzx       edx,byte ptr [edx]
 0044232B    imul        edx,edx,0B
 0044232E    lea         edx,[edx*8+79FD90]
 00442335    mov         edi,dword ptr [edx+eax*4]
 00442338    mov         eax,esi
 0044233A    mov         edx,ebx
 0044233C    call        edi
 0044233E    mov         ebx,eax
 00442340    xor         eax,eax
 00442342    pop         edx
 00442343    pop         ecx
 00442344    pop         ecx
 00442345    mov         dword ptr fs:[eax],edx
 00442348    push        442368
 0044234D    lea         eax,[ebp-34]
 00442350    mov         edx,dword ptr ds:[435E20];TValue
 00442356    mov         ecx,2
 0044235B    call        @FinalizeArray
 00442360    ret
>00442361    jmp         @HandleFinally
>00442366    jmp         0044234D
 00442368    mov         eax,ebx
 0044236A    pop         edi
 0044236B    pop         esi
 0044236C    pop         ebx
 0044236D    mov         esp,ebp
 0044236F    pop         ebp
 00442370    ret
*}
end;

//00442374
procedure PeekData(var P:Windows.PByte; var Data:void ; Len:Integer);
begin
{*
 00442374    mov         eax,dword ptr [eax]
 00442376    call        Move
 0044237B    ret
*}
end;

//0044237C
procedure ReadData(var P:Windows.PByte; var Data:void ; Len:Integer);
begin
{*
 0044237C    push        ebx
 0044237D    push        esi
 0044237E    mov         esi,ecx
 00442380    mov         ebx,eax
 00442382    mov         eax,ebx
 00442384    mov         ecx,esi
 00442386    call        PeekData
 0044238B    add         dword ptr [ebx],esi
 0044238D    pop         esi
 0044238E    pop         ebx
 0044238F    ret
*}
end;

//00442390
function ReadI32(var P:Windows.PByte):LongInt;
begin
{*
 00442390    push        ecx
 00442391    mov         edx,esp
 00442393    mov         ecx,4
 00442398    call        ReadData
 0044239D    mov         eax,dword ptr [esp]
 004423A0    pop         edx
 004423A1    ret
*}
end;

//004423A4
function ReadPointer(var P:Windows.PByte):Pointer;
begin
{*
 004423A4    push        ecx
 004423A5    mov         edx,esp
 004423A7    mov         ecx,4
 004423AC    call        ReadData
 004423B1    mov         eax,dword ptr [esp]
 004423B4    pop         edx
 004423B5    ret
*}
end;

//004423B8
function ReadI16(var P:Windows.PByte):SmallInt;
begin
{*
 004423B8    push        ecx
 004423B9    mov         edx,esp
 004423BB    mov         ecx,2
 004423C0    call        ReadData
 004423C5    movzx       eax,word ptr [esp]
 004423C9    pop         edx
 004423CA    ret
*}
end;

//004423CC
function ReadI8(var P:Windows.PByte):ShortInt;
begin
{*
 004423CC    push        ecx
 004423CD    mov         edx,esp
 004423CF    mov         ecx,1
 004423D4    call        ReadData
 004423D9    movzx       eax,byte ptr [esp]
 004423DD    pop         edx
 004423DE    ret
*}
end;

//0044240C
function _UTF8ToString(P:Pointer):UnicodeString;
begin
{*
 0044240C    push        ebp
 0044240D    mov         ebp,esp
 0044240F    push        0
 00442411    push        ebx
 00442412    push        esi
 00442413    push        edi
 00442414    mov         edi,edx
 00442416    mov         esi,eax
 00442418    xor         eax,eax
 0044241A    push        ebp
 0044241B    push        442492
 00442420    push        dword ptr fs:[eax]
 00442423    mov         dword ptr fs:[eax],esp
 00442426    mov         eax,edi
 00442428    call        @UStrClr
 0044242D    movzx       ebx,byte ptr [esi]
 00442430    test        bl,bl
>00442432    je          00442476
 00442434    movzx       eax,bl
 00442437    inc         eax
 00442438    push        eax
 00442439    lea         eax,[ebp-4]
 0044243C    mov         ecx,1
 00442441    mov         edx,dword ptr ds:[4423E0];:45
 00442447    call        @DynArraySetLength
 0044244C    add         esp,4
 0044244F    movzx       ecx,bl
 00442452    inc         ecx
 00442453    mov         edx,dword ptr [ebp-4]
 00442456    mov         eax,esi
 00442458    call        Move
 0044245D    mov         ebx,dword ptr [ebp-4]
 00442460    test        ebx,ebx
>00442462    je          00442469
 00442464    sub         ebx,4
 00442467    mov         ebx,dword ptr [ebx]
 00442469    mov         ecx,edi
 0044246B    mov         edx,ebx
 0044246D    dec         edx
 0044246E    mov         eax,dword ptr [ebp-4]
 00442471    call        UTF8ToString
 00442476    xor         eax,eax
 00442478    pop         edx
 00442479    pop         ecx
 0044247A    pop         ecx
 0044247B    mov         dword ptr fs:[eax],edx
 0044247E    push        442499
 00442483    lea         eax,[ebp-4]
 00442486    mov         edx,dword ptr ds:[4423E0];:45
 0044248C    call        @DynArrayClear
 00442491    ret
>00442492    jmp         @HandleFinally
>00442497    jmp         00442483
 00442499    pop         edi
 0044249A    pop         esi
 0044249B    pop         ebx
 0044249C    pop         ecx
 0044249D    pop         ebp
 0044249E    ret
*}
end;

//004424A0
function ReadShortString(var P:Windows.PByte):UnicodeString;
begin
{*
 004424A0    push        ebx
 004424A1    push        esi
 004424A2    mov         esi,edx
 004424A4    mov         ebx,eax
 004424A6    mov         edx,esi
 004424A8    mov         eax,dword ptr [ebx]
 004424AA    call        _UTF8ToString
 004424AF    mov         eax,ebx
 004424B1    call        ReadI8
 004424B6    movzx       eax,al
 004424B9    add         dword ptr [ebx],eax
 004424BB    pop         esi
 004424BC    pop         ebx
 004424BD    ret
*}
end;

//004424C0
function PeekI16(var P:Windows.PByte):SmallInt;
begin
{*
 004424C0    push        ecx
 004424C1    mov         edx,esp
 004424C3    mov         ecx,2
 004424C8    call        PeekData
 004424CD    movzx       eax,word ptr [esp]
 004424D1    pop         edx
 004424D2    ret
*}
end;

//004424D4
function _SkipShortString(P:Pointer):PByte;
begin
{*
 004424D4    mov         edx,eax
 004424D6    movzx       ecx,byte ptr [edx]
 004424D9    add         ecx,edx
 004424DB    inc         ecx
 004424DC    mov         eax,ecx
 004424DE    ret
*}
end;

//004424E0
function GetBitField(Value:Integer; Shift:Integer; Bits:Integer):Integer;
begin
{*
 004424E0    push        ebx
 004424E1    mov         ebx,ecx
 004424E3    mov         ecx,edx
 004424E5    shr         eax,cl
 004424E7    mov         ecx,ebx
 004424E9    mov         edx,1
 004424EE    shl         edx,cl
 004424F0    dec         edx
 004424F1    and         eax,edx
 004424F3    pop         ebx
 004424F4    ret
*}
end;

//004424F8
function GetRttiClass(ATypeInfo:TypInfo.PTypeInfo):TRttiClass;
begin
{*
 004424F8    movzx       eax,byte ptr [eax]
 004424FB    mov         eax,dword ptr [eax*4+7A0520]
 00442502    ret
*}
end;

//00445D68
constructor TRttiPool.Create();
begin
{*
 00445D68    push        ebx
 00445D69    push        esi
 00445D6A    test        dl,dl
>00445D6C    je          00445D76
 00445D6E    add         esp,0FFFFFFF0
 00445D71    call        @ClassCreate
 00445D76    mov         ebx,edx
 00445D78    mov         esi,eax
 00445D7A    mov         dl,1
 00445D7C    mov         eax,[004426B4];TOrphanPackage
 00445D81    call        TOrphanPackage.Create
 00445D86    mov         dword ptr [esi+8],eax
 00445D89    mov         eax,esi
 00445D8B    test        bl,bl
>00445D8D    je          00445D9E
 00445D8F    call        @AfterConstruction
 00445D94    pop         dword ptr fs:[0]
 00445D9B    add         esp,0C
 00445D9E    mov         eax,esi
 00445DA0    pop         esi
 00445DA1    pop         ebx
 00445DA2    ret
*}
end;

//00445DA4
destructor TRttiPool.Destroy();
begin
{*
 00445DA4    push        ebx
 00445DA5    push        esi
 00445DA6    push        edi
 00445DA7    push        ebp
 00445DA8    push        ecx
 00445DA9    call        @BeforeDestruction
 00445DAE    mov         ebx,edx
 00445DB0    mov         esi,eax
 00445DB2    mov         eax,dword ptr [esi+4];TRttiPool.FLatestPackageList:TArray<System.Rtti.TRttiPackage>
 00445DB5    mov         dword ptr [esp],eax
 00445DB8    mov         eax,dword ptr [esp]
 00445DBB    test        eax,eax
>00445DBD    je          00445DC4
 00445DBF    sub         eax,4
 00445DC2    mov         eax,dword ptr [eax]
 00445DC4    mov         ebp,eax
 00445DC6    dec         ebp
 00445DC7    test        ebp,ebp
>00445DC9    jl          00445DDD
 00445DCB    inc         ebp
 00445DCC    xor         edi,edi
 00445DCE    mov         eax,dword ptr [esi+4];TRttiPool.FLatestPackageList:TArray<System.Rtti.TRttiPackage>
 00445DD1    mov         eax,dword ptr [eax+edi*4]
 00445DD4    call        TObject.Free
 00445DD9    inc         edi
 00445DDA    dec         ebp
>00445DDB    jne         00445DCE
 00445DDD    mov         eax,dword ptr [esi+8];TRttiPool.FOrphanPackage:TRttiPackage
 00445DE0    call        TObject.Free
 00445DE5    mov         dl,0FC
 00445DE7    and         dl,bl
 00445DE9    mov         eax,esi
 00445DEB    call        TObject.Destroy
 00445DF0    test        bl,bl
>00445DF2    jle         00445DFB
 00445DF4    mov         eax,esi
 00445DF6    call        @ClassDestroy
 00445DFB    pop         edx
 00445DFC    pop         ebp
 00445DFD    pop         edi
 00445DFE    pop         esi
 00445DFF    pop         ebx
 00445E00    ret
*}
end;

//0044621C
{*procedure sub_0044621C(?:?; ?:?);
begin
 0044621C    push        ebp
 0044621D    mov         ebp,esp
 0044621F    add         esp,0FFFFFFF4
 00446222    push        ebx
 00446223    push        esi
 00446224    push        edi
 00446225    mov         edi,eax
 00446227    xor         eax,eax
 00446229    mov         dword ptr [ebp-8],eax
 0044622C    mov         eax,dword ptr [ebp+8]
 0044622F    mov         esi,dword ptr [eax-4]
 00446232    dec         esi
 00446233    test        esi,esi
>00446235    jl          00446265
 00446237    inc         esi
 00446238    xor         ebx,ebx
 0044623A    mov         eax,dword ptr [ebp+8]
 0044623D    mov         eax,dword ptr [eax-8]
 00446240    mov         eax,dword ptr [eax]
 00446242    cmp         dword ptr [eax+ebx*4],0
>00446246    je          00446261
 00446248    mov         eax,dword ptr [ebp+8]
 0044624B    mov         eax,dword ptr [eax-8]
 0044624E    mov         eax,dword ptr [eax]
 00446250    mov         eax,dword ptr [eax+ebx*4]
 00446253    call        TRttiPackage.GetHandle
 00446258    cmp         eax,dword ptr [edi+4]
>0044625B    je          00446318
 00446261    inc         ebx
 00446262    dec         esi
>00446263    jne         0044623A
 00446265    mov         eax,dword ptr [ebp+8]
 00446268    mov         eax,dword ptr [eax+8]
 0044626B    mov         eax,dword ptr [eax-4]
 0044626E    mov         eax,dword ptr [eax+4]
 00446271    mov         dword ptr [ebp-0C],eax
 00446274    mov         eax,dword ptr [ebp-0C]
 00446277    test        eax,eax
>00446279    je          00446280
 0044627B    sub         eax,4
 0044627E    mov         eax,dword ptr [eax]
 00446280    mov         esi,eax
 00446282    dec         esi
 00446283    test        esi,esi
>00446285    jl          004462DE
 00446287    inc         esi
 00446288    xor         ebx,ebx
 0044628A    mov         eax,dword ptr [ebp+8]
 0044628D    mov         eax,dword ptr [eax+8]
 00446290    mov         eax,dword ptr [eax-4]
 00446293    mov         eax,dword ptr [eax+4]
 00446296    cmp         dword ptr [eax+ebx*4],0
>0044629A    je          004462DA
 0044629C    mov         eax,dword ptr [ebp+8]
 0044629F    mov         eax,dword ptr [eax+8]
 004462A2    mov         eax,dword ptr [eax-4]
 004462A5    mov         eax,dword ptr [eax+4]
 004462A8    mov         eax,dword ptr [eax+ebx*4]
 004462AB    call        TRttiPackage.GetHandle
 004462B0    cmp         eax,dword ptr [edi+4]
>004462B3    jne         004462DA
 004462B5    mov         eax,dword ptr [ebp+8]
 004462B8    mov         eax,dword ptr [eax+8]
 004462BB    mov         eax,dword ptr [eax-4]
 004462BE    mov         eax,dword ptr [eax+4]
 004462C1    mov         eax,dword ptr [eax+ebx*4]
 004462C4    mov         dword ptr [ebp-8],eax
 004462C7    mov         eax,dword ptr [ebp+8]
 004462CA    mov         eax,dword ptr [eax+8]
 004462CD    mov         eax,dword ptr [eax-4]
 004462D0    mov         eax,dword ptr [eax+4]
 004462D3    xor         edx,edx
 004462D5    mov         dword ptr [eax+ebx*4],edx
>004462D8    jmp         004462DE
 004462DA    inc         ebx
 004462DB    dec         esi
>004462DC    jne         0044628A
 004462DE    cmp         dword ptr [ebp-8],0
>004462E2    jne         004462FE
 004462E4    mov         dword ptr [ebp-4],edi
 004462E7    push        0
 004462E9    lea         eax,[ebp-4]
 004462EC    push        eax
 004462ED    xor         ecx,ecx
 004462EF    mov         dl,1
 004462F1    mov         eax,[00442504];TRealPackage
 004462F6    call        TRealPackage.Create;TRealPackage.Create
 004462FB    mov         dword ptr [ebp-8],eax
 004462FE    mov         eax,dword ptr [ebp+8]
 00446301    mov         eax,dword ptr [eax-4]
 00446304    mov         edx,dword ptr [ebp+8]
 00446307    mov         edx,dword ptr [edx-8]
 0044630A    mov         edx,dword ptr [edx]
 0044630C    mov         ecx,dword ptr [ebp-8]
 0044630F    mov         dword ptr [edx+eax*4],ecx
 00446312    mov         eax,dword ptr [ebp+8]
 00446315    inc         dword ptr [eax-4]
 00446318    pop         edi
 00446319    pop         esi
 0044631A    pop         ebx
 0044631B    mov         esp,ebp
 0044631D    pop         ebp
 0044631E    ret
end;*}

//00446320
function DoUpdate$1048$ActRec.$0$1$Body(const L:TRttiPackage; const R:TRttiPackage):Integer;
begin
{*
 00446320    push        esi
 00446321    mov         esi,dword ptr [ecx+20]
 00446324    mov         eax,dword ptr [edx+20]
 00446327    cmp         esi,eax
>00446329    jbe         00446330
 0044632B    or          eax,0FFFFFFFF
 0044632E    pop         esi
 0044632F    ret
 00446330    cmp         esi,eax
>00446332    jae         0044633B
 00446334    mov         eax,1
>00446339    jmp         0044633D
 0044633B    xor         eax,eax
 0044633D    pop         esi
 0044633E    ret
*}
end;

//00446340
function DoUpdate:TArray<System.Rtti.TRttiPackage>System.TArray`1<TRttiPackage>;
begin
{*
 00446340    push        ebp
 00446341    mov         ebp,esp
 00446343    add         esp,0FFFFFFE8
 00446346    push        ebx
 00446347    push        esi
 00446348    push        edi
 00446349    xor         edx,edx
 0044634B    mov         dword ptr [ebp-18],edx
 0044634E    mov         dword ptr [ebp-0C],edx
 00446351    mov         dword ptr [ebp-8],eax
 00446354    xor         eax,eax
 00446356    push        ebp
 00446357    push        44654A
 0044635C    push        dword ptr fs:[eax]
 0044635F    mov         dword ptr fs:[eax],esp
 00446362    mov         dl,1
 00446364    mov         eax,[00446170];DoUpdate$162$ActRec
 00446369    call        TObject.Create
 0044636E    mov         dword ptr [ebp-10],eax
 00446371    lea         eax,[ebp-0C]
 00446374    mov         edx,dword ptr [ebp-10]
 00446377    test        edx,edx
>00446379    je          0044637E
 0044637B    sub         edx,0FFFFFFF8
 0044637E    call        @IntfCopy
 00446383    call        TMonitor.CheckMonitorSupport
 00446388    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 0044638D    call        TMonitor.GetMonitor
 00446392    or          edx,0FFFFFFFF
 00446395    call        TMonitor.Enter
 0044639A    xor         edx,edx
 0044639C    push        ebp
 0044639D    push        446525
 004463A2    push        dword ptr fs:[edx]
 004463A5    mov         dword ptr fs:[edx],esp
 004463A8    mov         ebx,dword ptr ds:[7C4C94];^gvar_0079E03C
 004463AE    mov         ebx,dword ptr [ebx]
 004463B0    call        GetModuleListVersion
 004463B5    mov         edi,eax
 004463B7    mov         eax,dword ptr [ebp+8]
 004463BA    mov         eax,dword ptr [eax-4]
 004463BD    cmp         edi,dword ptr [eax+0C]
>004463C0    jne         004463E3
 004463C2    mov         eax,dword ptr [ebp-8]
 004463C5    mov         edx,dword ptr [ebp+8]
 004463C8    mov         edx,dword ptr [edx-4]
 004463CB    mov         edx,dword ptr [edx+4]
 004463CE    mov         ecx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 004463D4    call        @DynArrayAsg
 004463D9    call        @TryFinallyExit
>004463DE    jmp         0044652C
 004463E3    xor         eax,eax
 004463E5    mov         dword ptr [ebp-4],eax
 004463E8    test        ebx,ebx
>004463EA    je          0044640D
 004463EC    cmp         dword ptr [ebx+14],0
>004463F0    jne         00446404
 004463F2    push        446558
 004463F7    mov         eax,dword ptr [ebx+4]
 004463FA    push        eax
 004463FB    call        GetProcAddress
 00446400    test        eax,eax
>00446402    je          00446407
 00446404    inc         dword ptr [ebp-4]
 00446407    mov         ebx,dword ptr [ebx]
 00446409    test        ebx,ebx
>0044640B    jne         004463EC
 0044640D    mov         eax,dword ptr [ebp-4]
 00446410    push        eax
 00446411    mov         eax,dword ptr [ebp-8]
 00446414    mov         ecx,1
 00446419    mov         edx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 0044641F    call        @DynArraySetLength
 00446424    add         esp,4
 00446427    xor         eax,eax
 00446429    mov         dword ptr [ebp-4],eax
 0044642C    mov         ebx,dword ptr ds:[7C4C94];^gvar_0079E03C
 00446432    mov         ebx,dword ptr [ebx]
 00446434    test        ebx,ebx
>00446436    je          0044645F
 00446438    cmp         dword ptr [ebx+14],0
>0044643C    jne         00446450
 0044643E    push        446558
 00446443    mov         eax,dword ptr [ebx+4]
 00446446    push        eax
 00446447    call        GetProcAddress
 0044644C    test        eax,eax
>0044644E    je          00446459
 00446450    push        ebp
 00446451    mov         eax,ebx
 00446453    call        0044621C
 00446458    pop         ecx
 00446459    mov         ebx,dword ptr [ebx]
 0044645B    test        ebx,ebx
>0044645D    jne         00446438
 0044645F    mov         eax,dword ptr [ebp+8]
 00446462    mov         eax,dword ptr [eax-4]
 00446465    mov         eax,dword ptr [eax+4]
 00446468    mov         dword ptr [ebp-14],eax
 0044646B    mov         eax,dword ptr [ebp-14]
 0044646E    test        eax,eax
>00446470    je          00446477
 00446472    sub         eax,4
 00446475    mov         eax,dword ptr [eax]
 00446477    mov         ebx,eax
 00446479    dec         ebx
 0044647A    test        ebx,ebx
>0044647C    jl          00446496
 0044647E    inc         ebx
 0044647F    xor         esi,esi
 00446481    mov         eax,dword ptr [ebp+8]
 00446484    mov         eax,dword ptr [eax-4]
 00446487    mov         eax,dword ptr [eax+4]
 0044648A    mov         eax,dword ptr [eax+esi*4]
 0044648D    call        TObject.Free
 00446492    inc         esi
 00446493    dec         ebx
>00446494    jne         00446481
 00446496    mov         eax,dword ptr [ebp-4]
 00446499    push        eax
 0044649A    mov         eax,dword ptr [ebp-8]
 0044649D    mov         ecx,1
 004464A2    mov         edx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 004464A8    call        @DynArraySetLength
 004464AD    add         esp,4
 004464B0    cmp         dword ptr [ebp-4],0
>004464B4    jle         004464EB
 004464B6    mov         ebx,dword ptr [ebp-8]
 004464B9    mov         ebx,dword ptr [ebx]
 004464BB    test        ebx,ebx
>004464BD    je          004464C4
 004464BF    sub         ebx,4
 004464C2    mov         ebx,dword ptr [ebx]
 004464C4    lea         ecx,[ebp-18]
 004464C7    mov         edx,dword ptr [ebp-10]
 004464CA    test        edx,edx
>004464CC    je          004464D1
 004464CE    sub         edx,0FFFFFFF4
 004464D1    mov         eax,[00445F64];TComparer<System.Rtti.TRttiPackage>
 004464D6    call        TComparer<System.Rtti.TRttiPackage>.Construct
 004464DB    mov         ecx,dword ptr [ebp-18]
 004464DE    mov         edx,ebx
 004464E0    dec         edx
 004464E1    mov         eax,dword ptr [ebp-8]
 004464E4    mov         eax,dword ptr [eax]
 004464E6    call        004595DC
 004464EB    mov         eax,dword ptr [ebp+8]
 004464EE    mov         eax,dword ptr [eax-4]
 004464F1    add         eax,4
 004464F4    mov         edx,dword ptr [ebp-8]
 004464F7    mov         edx,dword ptr [edx]
 004464F9    mov         ecx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 004464FF    call        @DynArrayAsg
 00446504    mov         eax,dword ptr [ebp+8]
 00446507    mov         eax,dword ptr [eax-4]
 0044650A    mov         dword ptr [eax+0C],edi
 0044650D    xor         eax,eax
 0044650F    pop         edx
 00446510    pop         ecx
 00446511    pop         ecx
 00446512    mov         dword ptr fs:[eax],edx
 00446515    push        44652C
 0044651A    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 0044651F    call        TMonitor.Exit
 00446524    ret
>00446525    jmp         @HandleFinally
>0044652A    jmp         0044651A
 0044652C    xor         eax,eax
 0044652E    pop         edx
 0044652F    pop         ecx
 00446530    pop         ecx
 00446531    mov         dword ptr fs:[eax],edx
 00446534    push        446551
 00446539    lea         eax,[ebp-18]
 0044653C    call        @IntfClear
 00446541    lea         eax,[ebp-0C]
 00446544    call        @IntfClear
 00446549    ret
>0044654A    jmp         @HandleFinally
>0044654F    jmp         00446539
 00446551    pop         edi
 00446552    pop         esi
 00446553    pop         ebx
 00446554    mov         esp,ebp
 00446556    pop         ebp
 00446557    ret
*}
end;

//00446584
function TRttiPool.GetPackageList:TArray<System.Rtti.TRttiPackage>;
begin
{*
 00446584    push        ebp
 00446585    mov         ebp,esp
 00446587    add         esp,0FFFFFFF8
 0044658A    push        ebx
 0044658B    xor         ecx,ecx
 0044658D    mov         dword ptr [ebp-8],ecx
 00446590    mov         ebx,edx
 00446592    mov         dword ptr [ebp-4],eax
 00446595    xor         eax,eax
 00446597    push        ebp
 00446598    push        4465F9
 0044659D    push        dword ptr fs:[eax]
 004465A0    mov         dword ptr fs:[eax],esp
 004465A3    mov         eax,ebx
 004465A5    mov         edx,dword ptr [ebp-4]
 004465A8    mov         edx,dword ptr [edx+4]
 004465AB    mov         ecx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 004465B1    call        @DynArrayAsg
 004465B6    call        GetModuleListVersion
 004465BB    mov         edx,dword ptr [ebp-4]
 004465BE    cmp         eax,dword ptr [edx+0C]
>004465C1    je          004465DD
 004465C3    push        ebp
 004465C4    lea         eax,[ebp-8]
 004465C7    call        DoUpdate
 004465CC    pop         ecx
 004465CD    mov         edx,dword ptr [ebp-8]
 004465D0    mov         eax,ebx
 004465D2    mov         ecx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 004465D8    call        @DynArrayAsg
 004465DD    xor         eax,eax
 004465DF    pop         edx
 004465E0    pop         ecx
 004465E1    pop         ecx
 004465E2    mov         dword ptr fs:[eax],edx
 004465E5    push        446600
 004465EA    lea         eax,[ebp-8]
 004465ED    mov         edx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 004465F3    call        @DynArrayClear
 004465F8    ret
>004465F9    jmp         @HandleFinally
>004465FE    jmp         004465EA
 00446600    pop         ebx
 00446601    pop         ecx
 00446602    pop         ecx
 00446603    pop         ebp
 00446604    ret
*}
end;

//00446608
function TRttiPool.GetPackageFor(AHandle:Pointer):TRttiPackage;
begin
{*
 00446608    push        ebp
 00446609    mov         ebp,esp
 0044660B    add         esp,0FFFFFFF8
 0044660E    push        ebx
 0044660F    push        esi
 00446610    xor         ecx,ecx
 00446612    mov         dword ptr [ebp-4],ecx
 00446615    mov         esi,edx
 00446617    mov         dword ptr [ebp-8],eax
 0044661A    xor         eax,eax
 0044661C    push        ebp
 0044661D    push        4466A3
 00446622    push        dword ptr fs:[eax]
 00446625    mov         dword ptr fs:[eax],esp
 00446628    lea         edx,[ebp-4]
 0044662B    mov         eax,dword ptr [ebp-8]
 0044662E    call        TRttiPool.GetPackageList
 00446633    xor         eax,eax
 00446635    mov         edx,dword ptr [ebp-4]
 00446638    test        edx,edx
>0044663A    je          00446641
 0044663C    sub         edx,4
 0044663F    mov         edx,dword ptr [edx]
 00446641    mov         ecx,edx
>00446643    jmp         00446662
 00446645    lea         edx,[ecx+eax]
 00446648    sar         edx,1
>0044664A    jns         0044664F
 0044664C    adc         edx,0
 0044664F    mov         ebx,dword ptr [ebp-4]
 00446652    mov         ebx,dword ptr [ebx+edx*4]
 00446655    mov         ebx,dword ptr [ebx+20]
 00446658    cmp         ebx,esi
>0044665A    ja          00446660
 0044665C    mov         eax,edx
>0044665E    jmp         00446662
 00446660    mov         ecx,edx
 00446662    mov         edx,ecx
 00446664    sub         edx,eax
 00446666    dec         edx
>00446667    jg          00446645
 00446669    mov         edx,dword ptr [ebp-4]
 0044666C    test        edx,edx
>0044666E    je          00446675
 00446670    sub         edx,4
 00446673    mov         edx,dword ptr [edx]
 00446675    cmp         edx,eax
>00446677    jle         00446681
 00446679    mov         edx,dword ptr [ebp-4]
 0044667C    mov         ebx,dword ptr [edx+eax*4]
>0044667F    jmp         00446687
 00446681    mov         eax,dword ptr [ebp-8]
 00446684    mov         ebx,dword ptr [eax+8]
 00446687    xor         eax,eax
 00446689    pop         edx
 0044668A    pop         ecx
 0044668B    pop         ecx
 0044668C    mov         dword ptr fs:[eax],edx
 0044668F    push        4466AA
 00446694    lea         eax,[ebp-4]
 00446697    mov         edx,dword ptr ds:[43E4B8];TArray<System.Rtti.TRttiPackage>
 0044669D    call        @DynArrayClear
 004466A2    ret
>004466A3    jmp         @HandleFinally
>004466A8    jmp         00446694
 004466AA    mov         eax,ebx
 004466AC    pop         esi
 004466AD    pop         ebx
 004466AE    pop         ecx
 004466AF    pop         ecx
 004466B0    pop         ebp
 004466B1    ret
*}
end;

//004466B4
function TRttiPool.ReadObject(ARttiClass:TRttiClass; AParent:TRttiObject; var P:Windows.PByte):TRttiObject;
begin
{*
 004466B4    push        ebp
 004466B5    mov         ebp,esp
 004466B7    push        ecx
 004466B8    push        ebx
 004466B9    push        esi
 004466BA    push        edi
 004466BB    mov         dword ptr [ebp-4],ecx
 004466BE    mov         edi,edx
 004466C0    mov         ebx,eax
 004466C2    mov         esi,dword ptr [ebp+8]
 004466C5    push        esi
 004466C6    mov         edx,dword ptr [esi]
 004466C8    mov         eax,ebx
 004466CA    call        TRttiPool.GetPackageFor
 004466CF    mov         ecx,dword ptr [ebp-4]
 004466D2    mov         edx,edi
 004466D4    call        TRttiPackage.ReadObject
 004466D9    pop         edi
 004466DA    pop         esi
 004466DB    pop         ebx
 004466DC    pop         ecx
 004466DD    pop         ebp
 004466DE    ret         4
*}
end;

//004466E4
function TRttiPool.ReadObjectPointer(ARttiClass:TRttiClass; AParent:TRttiObject; P:Pointer):TRttiObject;
begin
{*
 004466E4    push        ebp
 004466E5    mov         ebp,esp
 004466E7    push        ecx
 004466E8    push        ebx
 004466E9    mov         ebx,dword ptr [ebp+8]
 004466EC    mov         dword ptr [ebp-4],ebx
 004466EF    lea         ebx,[ebp-4]
 004466F2    push        ebx
 004466F3    call        TRttiPool.ReadObject
 004466F8    pop         ebx
 004466F9    pop         ecx
 004466FA    pop         ebp
 004466FB    ret         4
*}
end;

//00446700
function TRttiPool.GetType(ATypeInfo:Pointer):TRttiType;
begin
{*
 00446700    push        ebx
 00446701    push        esi
 00446702    mov         esi,edx
 00446704    mov         ebx,eax
 00446706    test        esi,esi
>00446708    jne         0044670F
 0044670A    xor         eax,eax
 0044670C    pop         esi
 0044670D    pop         ebx
 0044670E    ret
 0044670F    push        esi
 00446710    xor         ecx,ecx
 00446712    mov         edx,dword ptr ds:[4368BC];TRttiType
 00446718    mov         eax,ebx
 0044671A    call        TRttiPool.ReadObjectPointer
 0044671F    pop         esi
 00446720    pop         ebx
 00446721    ret
*}
end;

//00446724
function TRttiPool.GetType(AClass:TClass):TRttiType;
begin
{*
 00446724    mov         ecx,edx
 00446726    add         ecx,0FFFFFFB8
 00446729    mov         ecx,dword ptr [ecx]
 0044672B    test        ecx,ecx
>0044672D    je          00446737
 0044672F    mov         edx,ecx
 00446731    call        TRttiPool.GetType
 00446736    ret
 00446737    xor         eax,eax
 00446739    ret
*}
end;

//0044673C
function TRttiPool.TypeOrNil(Value:TypInfo.PPTypeInfo):TRttiType;
begin
{*
 0044673C    test        edx,edx
>0044673E    jne         00446743
 00446740    xor         eax,eax
 00446742    ret
 00446743    mov         edx,dword ptr [edx]
 00446745    call        TRttiPool.GetType
 0044674A    ret
*}
end;

//00446844
constructor sub_00446844;
begin
{*
 00446844    push        ebp
 00446845    mov         ebp,esp
 00446847    add         esp,0FFFFFFF8
 0044684A    test        dl,dl
>0044684C    je          00446856
 0044684E    add         esp,0FFFFFFF0
 00446851    call        @ClassCreate
 00446856    mov         byte ptr [ebp-5],dl
 00446859    mov         dword ptr [ebp-4],eax
 0044685C    call        TMonitor.CheckMonitorSupport
 00446861    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 00446866    call        TMonitor.GetMonitor
 0044686B    or          edx,0FFFFFFFF
 0044686E    call        TMonitor.Enter
 00446873    xor         eax,eax
 00446875    push        ebp
 00446876    push        4468C5
 0044687B    push        dword ptr fs:[eax]
 0044687E    mov         dword ptr fs:[eax],esp
 00446881    cmp         dword ptr ds:[7C9F94],0;gvar_007C9F94:TRttiPool
>00446888    jne         004468A7
 0044688A    mov         dl,1
 0044688C    mov         eax,[00442858];TRttiPool
 00446891    call        TRttiPool.Create;TRttiPool.Create
 00446896    mov         [007C9F94],eax;gvar_007C9F94:TRttiPool
 0044689B    mov         dword ptr ds:[7C9F98],1;gvar_007C9F98
>004468A5    jmp         004468AD
 004468A7    inc         dword ptr ds:[7C9F98];gvar_007C9F98
 004468AD    xor         eax,eax
 004468AF    pop         edx
 004468B0    pop         ecx
 004468B1    pop         ecx
 004468B2    mov         dword ptr fs:[eax],edx
 004468B5    push        4468CC
 004468BA    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 004468BF    call        TMonitor.Exit
 004468C4    ret
>004468C5    jmp         @HandleFinally
>004468CA    jmp         004468BA
 004468CC    mov         eax,dword ptr [ebp-4]
 004468CF    cmp         byte ptr [ebp-5],0
>004468D3    je          004468E4
 004468D5    call        @AfterConstruction
 004468DA    pop         dword ptr fs:[0]
 004468E1    add         esp,0C
 004468E4    mov         eax,dword ptr [ebp-4]
 004468E7    pop         ecx
 004468E8    pop         ecx
 004468E9    pop         ebp
 004468EA    ret
*}
end;

//004468EC
destructor TPoolToken.Destroy();
begin
{*
 004468EC    push        ebp
 004468ED    mov         ebp,esp
 004468EF    add         esp,0FFFFFFF8
 004468F2    call        @BeforeDestruction
 004468F7    mov         byte ptr [ebp-5],dl
 004468FA    mov         dword ptr [ebp-4],eax
 004468FD    call        TMonitor.CheckMonitorSupport
 00446902    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 00446907    call        TMonitor.GetMonitor
 0044690C    or          edx,0FFFFFFFF
 0044690F    call        TMonitor.Enter
 00446914    xor         eax,eax
 00446916    push        ebp
 00446917    push        44695A
 0044691C    push        dword ptr fs:[eax]
 0044691F    mov         dword ptr fs:[eax],esp
 00446922    dec         dword ptr ds:[7C9F98];gvar_007C9F98
 00446928    cmp         dword ptr ds:[7C9F98],0;gvar_007C9F98
>0044692F    jne         00446942
 00446931    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00446936    call        TObject.Free
 0044693B    xor         eax,eax
 0044693D    mov         [007C9F94],eax;gvar_007C9F94:TRttiPool
 00446942    xor         eax,eax
 00446944    pop         edx
 00446945    pop         ecx
 00446946    pop         ecx
 00446947    mov         dword ptr fs:[eax],edx
 0044694A    push        446961
 0044694F    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 00446954    call        TMonitor.Exit
 00446959    ret
>0044695A    jmp         @HandleFinally
>0044695F    jmp         0044694F
 00446961    movzx       edx,byte ptr [ebp-5]
 00446965    and         dl,0FC
 00446968    mov         eax,dword ptr [ebp-4]
 0044696B    call        TObject.Destroy
 00446970    cmp         byte ptr [ebp-5],0
>00446974    jle         0044697E
 00446976    mov         eax,dword ptr [ebp-4]
 00446979    call        @ClassDestroy
 0044697E    pop         ecx
 0044697F    pop         ecx
 00446980    pop         ebp
 00446981    ret
*}
end;

//00446984
procedure DoCreate;
begin
{*
 00446984    push        ebp
 00446985    mov         ebp,esp
 00446987    push        0
 00446989    xor         eax,eax
 0044698B    push        ebp
 0044698C    push        446A00
 00446991    push        dword ptr fs:[eax]
 00446994    mov         dword ptr fs:[eax],esp
 00446997    lea         eax,[ebp-4]
 0044699A    mov         edx,dword ptr ds:[7C9F7C];gvar_007C9F7C:IInterface
 004469A0    call        @IntfCopy
 004469A5    cmp         dword ptr [ebp-4],0
>004469A9    jne         004469C8
 004469AB    mov         dl,1
 004469AD    mov         eax,[0044674C];TPoolToken
 004469B2    call        00446844
 004469B7    mov         edx,eax
 004469B9    test        edx,edx
>004469BB    je          004469C0
 004469BD    sub         edx,0FFFFFFF8
 004469C0    lea         eax,[ebp-4]
 004469C3    call        @IntfCopy
 004469C8    mov         eax,dword ptr [ebp+8]
 004469CB    mov         eax,dword ptr [eax-8]
 004469CE    mov         edx,dword ptr [ebp+8]
 004469D1    mov         edx,dword ptr [edx-4]
 004469D4    mov         ecx,dword ptr [ebp-4]
 004469D7    lock cmpxchgdword ptr [edx],ecx
 004469DB    mov         edx,dword ptr [ebp+8]
 004469DE    cmp         eax,dword ptr [edx-8]
>004469E1    jne         004469EA
 004469E3    lea         eax,[ebp-4]
 004469E6    xor         edx,edx
 004469E8    mov         dword ptr [eax],edx
 004469EA    xor         eax,eax
 004469EC    pop         edx
 004469ED    pop         ecx
 004469EE    pop         ecx
 004469EF    mov         dword ptr fs:[eax],edx
 004469F2    push        446A07
 004469F7    lea         eax,[ebp-4]
 004469FA    call        @IntfClear
 004469FF    ret
>00446A00    jmp         @HandleFinally
>00446A05    jmp         004469F7
 00446A07    pop         ecx
 00446A08    pop         ebp
 00446A09    ret
*}
end;

//00446A0C
procedure EnsurePoolToken(TokenRef:PInterface);
begin
{*
 00446A0C    push        ebp
 00446A0D    mov         ebp,esp
 00446A0F    add         esp,0FFFFFFF8
 00446A12    mov         dword ptr [ebp-4],eax
 00446A15    mov         eax,dword ptr [ebp-4]
 00446A18    mov         eax,dword ptr [eax]
 00446A1A    mov         dword ptr [ebp-8],eax
 00446A1D    cmp         dword ptr [ebp-8],0
>00446A21    jne         00446A2A
 00446A23    push        ebp
 00446A24    call        DoCreate
 00446A29    pop         ecx
 00446A2A    pop         ecx
 00446A2B    pop         ecx
 00446A2C    pop         ebp
 00446A2D    ret
*}
end;

//00446A30
{*procedure sub_00446A30(?:?; ?:?);
begin
 00446A30    push        ebp
 00446A31    mov         ebp,esp
 00446A33    push        ebx
 00446A34    push        esi
 00446A35    mov         esi,eax
 00446A37    mov         eax,dword ptr [ebp+8]
 00446A3A    add         eax,0FFFFFFFC
 00446A3D    call        ReadI16
 00446A42    movzx       ebx,ax
 00446A45    push        0FDE9
 00446A4A    mov         eax,dword ptr [ebp+8]
 00446A4D    mov         edx,dword ptr [eax-4]
 00446A50    mov         eax,esi
 00446A52    mov         ecx,ebx
 00446A54    call        @LStrFromPCharLen
 00446A59    mov         eax,dword ptr [ebp+8]
 00446A5C    add         dword ptr [eax-4],ebx
 00446A5F    add         ebx,2
 00446A62    mov         eax,dword ptr [ebp+8]
 00446A65    sub         dword ptr [eax-8],ebx
 00446A68    pop         esi
 00446A69    pop         ebx
 00446A6A    pop         ebp
 00446A6B    ret
end;*}

//00446A6C
{*procedure sub_00446A6C(?:?; ?:?);
begin
 00446A6C    push        ebp
 00446A6D    mov         ebp,esp
 00446A6F    push        ebx
 00446A70    mov         ebx,eax
 00446A72    mov         eax,dword ptr [ebp+8]
 00446A75    add         eax,0FFFFFFFC
 00446A78    call        ReadI8
 00446A7D    mov         byte ptr [ebx],al
 00446A7F    movzx       ecx,byte ptr [ebx]
 00446A82    lea         edx,[ebx+1]
 00446A85    mov         eax,dword ptr [ebp+8]
 00446A88    mov         eax,dword ptr [eax-4]
 00446A8B    call        Move
 00446A90    movzx       eax,byte ptr [ebx]
 00446A93    mov         edx,dword ptr [ebp+8]
 00446A96    add         dword ptr [edx-4],eax
 00446A99    movzx       eax,byte ptr [ebx]
 00446A9C    inc         eax
 00446A9D    mov         edx,dword ptr [ebp+8]
 00446AA0    sub         dword ptr [edx-8],eax
 00446AA3    pop         ebx
 00446AA4    pop         ebp
 00446AA5    ret
end;*}

//00446AA8
{*procedure sub_00446AA8(?:TRttiInstanceType; ?:?; ?:SmallInt; ?:?; ?:?);
begin
 00446AA8    push        ebp
 00446AA9    mov         ebp,esp
 00446AAB    push        ecx
 00446AAC    mov         ecx,3D
 00446AB1    push        0
 00446AB3    push        0
 00446AB5    dec         ecx
>00446AB6    jne         00446AB1
 00446AB8    xchg        ecx,dword ptr [ebp-4]
 00446ABB    push        ebx
 00446ABC    push        esi
 00446ABD    push        edi
 00446ABE    mov         dword ptr [ebp-8],ecx
 00446AC1    mov         dword ptr [ebp-4],edx
 00446AC4    mov         esi,dword ptr [ebp+0C]
 00446AC7    lea         eax,[ebp-20]
 00446ACA    mov         edx,dword ptr ds:[435E20];TValue
 00446AD0    call        @AddRefRecord
 00446AD5    lea         eax,[ebp-38]
 00446AD8    mov         edx,dword ptr ds:[435E20];TValue
 00446ADE    call        @AddRefRecord
 00446AE3    lea         eax,[ebp-50]
 00446AE6    mov         edx,dword ptr ds:[435E20];TValue
 00446AEC    call        @AddRefRecord
 00446AF1    lea         eax,[ebp-68]
 00446AF4    mov         edx,dword ptr ds:[435E20];TValue
 00446AFA    call        @AddRefRecord
 00446AFF    xor         eax,eax
 00446B01    push        ebp
 00446B02    push        446E71
 00446B07    push        dword ptr fs:[eax]
 00446B0A    mov         dword ptr fs:[eax],esp
 00446B0D    mov         edi,esi
 00446B0F    mov         ebx,edi
 00446B11    test        ebx,ebx
>00446B13    je          00446B1A
 00446B15    sub         ebx,4
 00446B18    mov         ebx,dword ptr [ebx]
 00446B1A    push        ebx
 00446B1B    mov         eax,dword ptr [ebp+8]
 00446B1E    mov         ecx,1
 00446B23    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00446B29    call        @DynArraySetLength
 00446B2E    add         esp,4
 00446B31    mov         eax,edi
 00446B33    test        eax,eax
>00446B35    je          00446B3C
 00446B37    sub         eax,4
 00446B3A    mov         eax,dword ptr [eax]
 00446B3C    mov         edi,eax
 00446B3E    dec         edi
 00446B3F    test        edi,edi
>00446B41    jl          00446E1E
 00446B47    inc         edi
 00446B48    xor         ebx,ebx
 00446B4A    mov         eax,dword ptr [esi+ebx*4]
 00446B4D    mov         edx,dword ptr [eax]
 00446B4F    call        dword ptr [edx+10]
 00446B52    call        TRttiType.GetTypeKind
 00446B57    and         eax,7F
 00446B5A    add         eax,0FFFFFFFB
 00446B5D    cmp         eax,0F
>00446B60    ja          00446DCB
 00446B66    movzx       eax,byte ptr [eax+446B74]
 00446B6D    jmp         dword ptr [eax*4+446B84]
 00446B6D    db          5
 00446B6D    db          0
 00446B6D    db          3
 00446B6D    db          0
 00446B6D    db          0
 00446B6D    db          4
 00446B6D    db          4
 00446B6D    db          0
 00446B6D    db          0
 00446B6D    db          0
 00446B6D    db          0
 00446B6D    db          0
 00446B6D    db          0
 00446B6D    db          4
 00446B6D    db          2
 00446B6D    db          1
 00446B6D    dd          00446DCB
 00446B6D    dd          00446B9C
 00446B6D    dd          00446C57
 00446B6D    dd          00446CB9
 00446B6D    dd          00446D1C
 00446B6D    dd          00446D75
 00446B9C    mov         eax,dword ptr [ebp-4]
 00446B9F    mov         eax,dword ptr [eax]
 00446BA1    mov         dword ptr [ebp-70],eax
 00446BA4    cmp         dword ptr [ebp-70],0
>00446BA8    jne         00446BD3
 00446BAA    lea         eax,[ebp-88]
 00446BB0    call        TValue.GetEmpty
 00446BB5    lea         edx,[ebp-88]
 00446BBB    lea         eax,[ebx+ebx*2]
 00446BBE    mov         ecx,dword ptr [ebp+8]
 00446BC1    mov         ecx,dword ptr [ecx]
 00446BC3    lea         eax,[ecx+eax*8]
 00446BC6    mov         ecx,dword ptr ds:[435E20];TValue
 00446BCC    call        @CopyRecord
>00446BD1    jmp         00446C4A
 00446BD3    mov         eax,dword ptr [esi+ebx*4]
 00446BD6    mov         edx,dword ptr [eax]
 00446BD8    call        dword ptr [edx+10]
 00446BDB    call        TRttiType.GetHandle
 00446BE0    cmp         eax,dword ptr ds:[46701C];PTypeInfo
>00446BE6    jne         00446C1B
 00446BE8    mov         eax,dword ptr [esi+ebx*4]
 00446BEB    mov         edx,dword ptr [eax]
 00446BED    call        dword ptr [edx+10]
 00446BF0    call        TRttiType.GetHandle
 00446BF5    push        eax
 00446BF6    lea         eax,[ebx+ebx*2]
 00446BF9    mov         edx,dword ptr [ebp+8]
 00446BFC    mov         edx,dword ptr [edx]
 00446BFE    lea         eax,[edx+eax*8]
 00446C01    mov         edx,dword ptr ds:[435E20];TValue
 00446C07    call        @FinalizeRecord
 00446C0C    mov         ecx,eax
 00446C0E    mov         eax,dword ptr [ebp-70]
 00446C11    mov         eax,dword ptr [eax]
 00446C13    pop         edx
 00446C14    call        0043FF3C
>00446C19    jmp         00446C4A
 00446C1B    mov         eax,dword ptr [esi+ebx*4]
 00446C1E    mov         edx,dword ptr [eax]
 00446C20    call        dword ptr [edx+10]
 00446C23    call        TRttiType.GetHandle
 00446C28    push        eax
 00446C29    lea         eax,[ebx+ebx*2]
 00446C2C    mov         edx,dword ptr [ebp+8]
 00446C2F    mov         edx,dword ptr [edx]
 00446C31    lea         eax,[edx+eax*8]
 00446C34    mov         edx,dword ptr ds:[435E20];TValue
 00446C3A    call        @FinalizeRecord
 00446C3F    mov         ecx,eax
 00446C41    lea         eax,[ebp-70]
 00446C44    pop         edx
 00446C45    call        TValue.Make
 00446C4A    sub         dword ptr [ebp-8],4
 00446C4E    add         dword ptr [ebp-4],4
>00446C52    jmp         00446E16
 00446C57    mov         eax,dword ptr [ebp-4]
 00446C5A    mov         eax,dword ptr [eax]
 00446C5C    mov         dword ptr [ebp-70],eax
 00446C5F    mov         eax,dword ptr [esi+ebx*4]
 00446C62    mov         edx,dword ptr [eax]
 00446C64    call        dword ptr [edx+10]
 00446C67    call        TRttiType.GetHandle
 00446C6C    push        eax
 00446C6D    mov         eax,dword ptr [ebp-70]
 00446C70    mov         eax,dword ptr [eax]
 00446C72    call        GetTypeData
 00446C77    mov         eax,dword ptr [eax]
 00446C79    lea         edx,[ebp-20]
 00446C7C    call        TValue.&op_Implicit
 00446C81    lea         eax,[ebp-20]
 00446C84    lea         ecx,[ebp-0A0]
 00446C8A    pop         edx
 00446C8B    call        TValue.Cast
 00446C90    lea         edx,[ebp-0A0]
 00446C96    lea         eax,[ebx+ebx*2]
 00446C99    mov         ecx,dword ptr [ebp+8]
 00446C9C    mov         ecx,dword ptr [ecx]
 00446C9E    lea         eax,[ecx+eax*8]
 00446CA1    mov         ecx,dword ptr ds:[435E20];TValue
 00446CA7    call        @CopyRecord
 00446CAC    sub         dword ptr [ebp-8],4
 00446CB0    add         dword ptr [ebp-4],4
>00446CB4    jmp         00446E16
 00446CB9    mov         eax,dword ptr [ebp-4]
 00446CBC    mov         eax,dword ptr [eax]
 00446CBE    mov         dword ptr [ebp-70],eax
 00446CC1    mov         eax,dword ptr [esi+ebx*4]
 00446CC4    mov         edx,dword ptr [eax]
 00446CC6    call        dword ptr [edx+10]
 00446CC9    call        TRttiType.GetHandle
 00446CCE    push        eax
 00446CCF    mov         edx,dword ptr [ebp-70]
 00446CD2    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00446CD7    call        TRttiPool.TypeOrNil
 00446CDC    lea         edx,[ebp-38]
 00446CDF    call        0043F970
 00446CE4    lea         eax,[ebp-38]
 00446CE7    lea         ecx,[ebp-0B8]
 00446CED    pop         edx
 00446CEE    call        TValue.Cast
 00446CF3    lea         edx,[ebp-0B8]
 00446CF9    lea         eax,[ebx+ebx*2]
 00446CFC    mov         ecx,dword ptr [ebp+8]
 00446CFF    mov         ecx,dword ptr [ecx]
 00446D01    lea         eax,[ecx+eax*8]
 00446D04    mov         ecx,dword ptr ds:[435E20];TValue
 00446D0A    call        @CopyRecord
 00446D0F    sub         dword ptr [ebp-8],4
 00446D13    add         dword ptr [ebp-4],4
>00446D17    jmp         00446E16
 00446D1C    mov         eax,dword ptr [esi+ebx*4]
 00446D1F    mov         edx,dword ptr [eax]
 00446D21    call        dword ptr [edx+10]
 00446D24    call        TRttiType.GetHandle
 00446D29    push        eax
 00446D2A    push        ebp
 00446D2B    lea         eax,[ebp-0D4]
 00446D31    call        00446A30
 00446D36    pop         ecx
 00446D37    mov         eax,dword ptr [ebp-0D4]
 00446D3D    lea         edx,[ebp-50]
 00446D40    call        00459620
 00446D45    lea         eax,[ebp-50]
 00446D48    lea         ecx,[ebp-0D0]
 00446D4E    pop         edx
 00446D4F    call        TValue.Cast
 00446D54    lea         edx,[ebp-0D0]
 00446D5A    lea         eax,[ebx+ebx*2]
 00446D5D    mov         ecx,dword ptr [ebp+8]
 00446D60    mov         ecx,dword ptr [ecx]
 00446D62    lea         eax,[ecx+eax*8]
 00446D65    mov         ecx,dword ptr ds:[435E20];TValue
 00446D6B    call        @CopyRecord
>00446D70    jmp         00446E16
 00446D75    mov         eax,dword ptr [esi+ebx*4]
 00446D78    mov         edx,dword ptr [eax]
 00446D7A    call        dword ptr [edx+10]
 00446D7D    call        TRttiType.GetHandle
 00446D82    push        eax
 00446D83    push        ebp
 00446D84    lea         eax,[ebp-1EC]
 00446D8A    call        00446A6C
 00446D8F    pop         ecx
 00446D90    lea         eax,[ebp-1EC]
 00446D96    lea         edx,[ebp-68]
 00446D99    call        00457C28
 00446D9E    lea         eax,[ebp-68]
 00446DA1    lea         ecx,[ebp-0EC]
 00446DA7    pop         edx
 00446DA8    call        TValue.Cast
 00446DAD    lea         edx,[ebp-0EC]
 00446DB3    lea         eax,[ebx+ebx*2]
 00446DB6    mov         ecx,dword ptr [ebp+8]
 00446DB9    mov         ecx,dword ptr [ecx]
 00446DBB    lea         eax,[ecx+eax*8]
 00446DBE    mov         ecx,dword ptr ds:[435E20];TValue
 00446DC4    call        @CopyRecord
>00446DC9    jmp         00446E16
 00446DCB    mov         eax,dword ptr [esi+ebx*4]
 00446DCE    mov         edx,dword ptr [eax]
 00446DD0    call        dword ptr [edx+10]
 00446DD3    mov         edx,dword ptr [eax]
 00446DD5    call        dword ptr [edx+18]
 00446DD8    mov         dword ptr [ebp-6C],eax
 00446DDB    mov         eax,dword ptr [ebp-6C]
 00446DDE    sub         dword ptr [ebp-8],eax
 00446DE1    mov         eax,dword ptr [esi+ebx*4]
 00446DE4    mov         edx,dword ptr [eax]
 00446DE6    call        dword ptr [edx+10]
 00446DE9    call        TRttiType.GetHandle
 00446DEE    push        eax
 00446DEF    lea         eax,[ebx+ebx*2]
 00446DF2    mov         edx,dword ptr [ebp+8]
 00446DF5    mov         edx,dword ptr [edx]
 00446DF7    lea         eax,[edx+eax*8]
 00446DFA    mov         edx,dword ptr ds:[435E20];TValue
 00446E00    call        @FinalizeRecord
 00446E05    mov         ecx,eax
 00446E07    mov         eax,dword ptr [ebp-4]
 00446E0A    pop         edx
 00446E0B    call        TValue.Make
 00446E10    mov         eax,dword ptr [ebp-6C]
 00446E13    add         dword ptr [ebp-4],eax
 00446E16    inc         ebx
 00446E17    dec         edi
>00446E18    jne         00446B4A
 00446E1E    xor         eax,eax
 00446E20    pop         edx
 00446E21    pop         ecx
 00446E22    pop         ecx
 00446E23    mov         dword ptr fs:[eax],edx
 00446E26    push        446E78
 00446E2B    lea         eax,[ebp-0EC]
 00446E31    mov         edx,dword ptr ds:[435E20];TValue
 00446E37    call        @FinalizeRecord
 00446E3C    lea         eax,[ebp-0D4]
 00446E42    call        @LStrClr
 00446E47    lea         eax,[ebp-0D0]
 00446E4D    mov         edx,dword ptr ds:[435E20];TValue
 00446E53    mov         ecx,4
 00446E58    call        @FinalizeArray
 00446E5D    lea         eax,[ebp-68]
 00446E60    mov         edx,dword ptr ds:[435E20];TValue
 00446E66    mov         ecx,4
 00446E6B    call        @FinalizeArray
 00446E70    ret
>00446E71    jmp         @HandleFinally
>00446E76    jmp         00446E2B
 00446E78    pop         edi
 00446E79    pop         esi
 00446E7A    pop         ebx
 00446E7B    mov         esp,ebp
 00446E7D    pop         ebp
 00446E7E    ret         8
end;*}

//00446E84
{*function sub_00446E84(?:TRttiInstanceType; ?:Pointer):?;
begin
 00446E84    push        ebp
 00446E85    mov         ebp,esp
 00446E87    add         esp,0FFFFFFEC
 00446E8A    push        ebx
 00446E8B    push        esi
 00446E8C    push        edi
 00446E8D    xor         ecx,ecx
 00446E8F    mov         dword ptr [ebp-4],ecx
 00446E92    mov         dword ptr [ebp-8],ecx
 00446E95    mov         dword ptr [ebp-10],edx
 00446E98    mov         dword ptr [ebp-0C],eax
 00446E9B    xor         eax,eax
 00446E9D    push        ebp
 00446E9E    push        446F58
 00446EA3    push        dword ptr fs:[eax]
 00446EA6    mov         dword ptr fs:[eax],esp
 00446EA9    lea         edx,[ebp-4]
 00446EAC    mov         eax,dword ptr [ebp-0C]
 00446EAF    mov         ecx,dword ptr [eax]
 00446EB1    call        dword ptr [ecx+20]
 00446EB4    xor         ebx,ebx
>00446EB6    jmp         00446ECF
 00446EB8    mov         eax,dword ptr [ebp-4]
 00446EBB    mov         esi,dword ptr [eax+ebx*4]
 00446EBE    mov         eax,esi
 00446EC0    mov         edx,dword ptr [eax]
 00446EC2    call        dword ptr [edx+28]
 00446EC5    cmp         eax,dword ptr [ebp-10]
>00446EC8    jne         00446ECE
 00446ECA    mov         edi,esi
>00446ECC    jmp         00446F37
 00446ECE    inc         ebx
 00446ECF    mov         eax,dword ptr [ebp-4]
 00446ED2    call        0040ABA8
 00446ED7    cmp         ebx,eax
>00446ED9    jl          00446EB8
 00446EDB    lea         eax,[ebp-4]
 00446EDE    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00446EE4    call        @DynArrayClear
 00446EE9    mov         eax,dword ptr [ebp-10]
 00446EEC    inc         eax
 00446EED    inc         eax
 00446EEE    mov         eax,dword ptr [eax]
 00446EF0    mov         eax,dword ptr [eax]
 00446EF2    mov         dword ptr [ebp-14],eax
 00446EF5    lea         edx,[ebp-8]
 00446EF8    mov         eax,dword ptr [ebp-0C]
 00446EFB    mov         ecx,dword ptr [eax]
 00446EFD    call        dword ptr [ecx+20]
 00446F00    xor         ebx,ebx
>00446F02    jmp         00446F1B
 00446F04    mov         eax,dword ptr [ebp-8]
 00446F07    mov         esi,dword ptr [eax+ebx*4]
 00446F0A    mov         eax,esi
 00446F0C    mov         edx,dword ptr [eax]
 00446F0E    call        dword ptr [edx+28]
 00446F11    cmp         eax,dword ptr [ebp-14]
>00446F14    jne         00446F1A
 00446F16    mov         edi,esi
>00446F18    jmp         00446F37
 00446F1A    inc         ebx
 00446F1B    mov         eax,dword ptr [ebp-8]
 00446F1E    call        0040ABA8
 00446F23    cmp         ebx,eax
>00446F25    jl          00446F04
 00446F27    lea         eax,[ebp-8]
 00446F2A    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00446F30    call        @DynArrayClear
 00446F35    xor         edi,edi
 00446F37    xor         eax,eax
 00446F39    pop         edx
 00446F3A    pop         ecx
 00446F3B    pop         ecx
 00446F3C    mov         dword ptr fs:[eax],edx
 00446F3F    push        446F5F
 00446F44    lea         eax,[ebp-8]
 00446F47    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00446F4D    mov         ecx,2
 00446F52    call        @FinalizeArray
 00446F57    ret
>00446F58    jmp         @HandleFinally
>00446F5D    jmp         00446F44
 00446F5F    mov         eax,edi
 00446F61    pop         edi
 00446F62    pop         esi
 00446F63    pop         ebx
 00446F64    mov         esp,ebp
 00446F66    pop         ebp
 00446F67    ret
end;*}

//00446F68
{*function sub_00446F68(?:PByte; ?:?):?;
begin
 00446F68    push        ebp
 00446F69    mov         ebp,esp
 00446F6B    add         esp,0FFFFFFC8
 00446F6E    push        ebx
 00446F6F    push        esi
 00446F70    push        edi
 00446F71    xor         edx,edx
 00446F73    mov         dword ptr [ebp-34],edx
 00446F76    mov         dword ptr [ebp-38],edx
 00446F79    mov         ebx,eax
 00446F7B    lea         eax,[ebp-18]
 00446F7E    mov         edx,dword ptr ds:[435E20];TValue
 00446F84    call        @AddRefRecord
 00446F89    xor         eax,eax
 00446F8B    push        ebp
 00446F8C    push        447093
 00446F91    push        dword ptr fs:[eax]
 00446F94    mov         dword ptr fs:[eax],esp
 00446F97    mov         eax,ebx
 00446F99    call        ReadPointer
 00446F9E    call        0043EB94
 00446FA3    mov         edx,eax
 00446FA5    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00446FAA    call        TRttiPool.GetType
 00446FAF    mov         edx,dword ptr ds:[438E84];TRttiInstanceType
 00446FB5    call        @AsClass
 00446FBA    mov         esi,eax
 00446FBC    mov         eax,ebx
 00446FBE    call        ReadPointer
 00446FC3    mov         dword ptr [ebp-20],eax
 00446FC6    mov         eax,ebx
 00446FC8    call        ReadI16
 00446FCD    mov         edi,eax
 00446FCF    mov         eax,dword ptr [ebx]
 00446FD1    mov         dword ptr [ebp-1C],eax
 00446FD4    movzx       eax,di
 00446FD7    add         dword ptr [ebx],eax
 00446FD9    mov         edx,dword ptr [ebp-20]
 00446FDC    mov         eax,esi
 00446FDE    call        00446E84
 00446FE3    mov         ebx,eax
 00446FE5    test        ebx,ebx
>00446FE7    jne         00446FED
 00446FE9    xor         ebx,ebx
>00446FEB    jmp         0044705B
 00446FED    mov         eax,esi
 00446FEF    call        TRttiInstanceType.GetMetaclassType
 00446FF4    mov         dword ptr [ebp-30],eax
 00446FF7    mov         eax,dword ptr [ebp+8]
 00446FFA    push        eax
 00446FFB    lea         edx,[ebp-38]
 00446FFE    mov         eax,ebx
 00447000    mov         ecx,dword ptr [eax]
 00447002    call        dword ptr [ecx+38]
 00447005    mov         eax,dword ptr [ebp-38]
 00447008    push        eax
 00447009    lea         eax,[ebp-34]
 0044700C    push        eax
 0044700D    movzx       ecx,di
 00447010    mov         edx,dword ptr [ebp-1C]
 00447013    mov         eax,esi
 00447015    call        00446AA8
 0044701A    pop         ecx
 0044701B    mov         eax,dword ptr [ebp-34]
 0044701E    mov         dword ptr [ebp-24],eax
 00447021    mov         dword ptr [ebp-28],eax
 00447024    mov         eax,dword ptr [ebp-28]
 00447027    mov         dword ptr [ebp-2C],eax
 0044702A    cmp         dword ptr [ebp-2C],0
>0044702E    je          0044703B
 00447030    mov         eax,dword ptr [ebp-2C]
 00447033    sub         eax,4
 00447036    mov         eax,dword ptr [eax]
 00447038    mov         dword ptr [ebp-2C],eax
 0044703B    mov         eax,dword ptr [ebp-2C]
 0044703E    dec         eax
 0044703F    push        eax
 00447040    lea         eax,[ebp-18]
 00447043    push        eax
 00447044    mov         ecx,dword ptr [ebp-24]
 00447047    mov         edx,dword ptr [ebp-30]
 0044704A    mov         eax,ebx
 0044704C    call        TRttiMethod.Invoke
 00447051    lea         eax,[ebp-18]
 00447054    call        0045964C
 00447059    mov         ebx,eax
 0044705B    xor         eax,eax
 0044705D    pop         edx
 0044705E    pop         ecx
 0044705F    pop         ecx
 00447060    mov         dword ptr fs:[eax],edx
 00447063    push        44709A
 00447068    lea         eax,[ebp-38]
 0044706B    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00447071    call        @DynArrayClear
 00447076    lea         eax,[ebp-34]
 00447079    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044707F    call        @DynArrayClear
 00447084    lea         eax,[ebp-18]
 00447087    mov         edx,dword ptr ds:[435E20];TValue
 0044708D    call        @FinalizeRecord
 00447092    ret
>00447093    jmp         @HandleFinally
>00447098    jmp         00447068
 0044709A    mov         eax,ebx
 0044709C    pop         edi
 0044709D    pop         esi
 0044709E    pop         ebx
 0044709F    mov         esp,ebp
 004470A1    pop         ebp
 004470A2    ret
end;*}

//004470A4
{*procedure sub_004470A4(?:?; ?:?);
begin
 004470A4    push        ebp
 004470A5    mov         ebp,esp
 004470A7    add         esp,0FFFFFFF0
 004470AA    push        ebx
 004470AB    push        esi
 004470AC    push        edi
 004470AD    mov         dword ptr [ebp-8],edx
 004470B0    mov         dword ptr [ebp-4],eax
 004470B3    lea         eax,[ebp-4]
 004470B6    call        ReadI16
 004470BB    movzx       eax,ax
 004470BE    sub         eax,2
 004470C1    test        eax,eax
>004470C3    jne         004470D5
 004470C5    mov         eax,dword ptr [ebp-8]
 004470C8    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 004470CE    call        @DynArrayClear
>004470D3    jmp         00447151
 004470D5    mov         esi,dword ptr [ebp-4]
 004470D8    add         esi,eax
 004470DA    mov         dl,1
 004470DC    mov         eax,[00447844];TList<System.TCustomAttribute>
 004470E1    call        004597F8
 004470E6    mov         dword ptr [ebp-0C],eax
 004470E9    xor         eax,eax
 004470EB    push        ebp
 004470EC    push        44714A
 004470F1    push        dword ptr fs:[eax]
 004470F4    mov         dword ptr fs:[eax],esp
 004470F7    cmp         esi,dword ptr [ebp-4]
>004470FA    jbe         00447124
 004470FC    push        ebp
 004470FD    lea         eax,[ebp-4]
 00447100    call        00446F68
 00447105    pop         ecx
 00447106    mov         ebx,eax
 00447108    test        ebx,ebx
>0044710A    je          0044711F
 0044710C    mov         dword ptr [ebp-10],ebx
 0044710F    lea         edx,[ebp-10]
 00447112    mov         eax,dword ptr [ebp-0C]
 00447115    add         eax,8;TList<System.TCustomAttribute>.FCount:Integer
 00447118    call        0043489C
 0044711D    mov         edi,eax
 0044711F    cmp         esi,dword ptr [ebp-4]
>00447122    ja          004470FC
 00447124    mov         ecx,dword ptr [ebp-8]
 00447127    mov         edx,dword ptr [ebp-0C]
 0044712A    mov         eax,[0043EAF8];TListHelper
 0044712F    call        00459A68
 00447134    xor         eax,eax
 00447136    pop         edx
 00447137    pop         ecx
 00447138    pop         ecx
 00447139    mov         dword ptr fs:[eax],edx
 0044713C    push        447151
 00447141    mov         eax,dword ptr [ebp-0C]
 00447144    call        TObject.Free
 00447149    ret
>0044714A    jmp         @HandleFinally
>0044714F    jmp         00447141
 00447151    pop         edi
 00447152    pop         esi
 00447153    pop         ebx
 00447154    mov         esp,ebp
 00447156    pop         ebp
 00447157    ret
end;*}

//0044866C
{*procedure sub_0044866C(?:?; ?:?);
begin
 0044866C    push        ebp
 0044866D    mov         ebp,esp
 0044866F    push        0
 00448671    push        0
 00448673    push        0
 00448675    push        ebx
 00448676    push        esi
 00448677    push        edi
 00448678    mov         dword ptr [ebp-8],edx
 0044867B    mov         esi,eax
 0044867D    xor         eax,eax
 0044867F    push        ebp
 00448680    push        4487F9
 00448685    push        dword ptr fs:[eax]
 00448688    mov         dword ptr fs:[eax],esp
 0044868B    cmp         dword ptr [esi+14],0
>0044868F    jne         004486A7
 00448691    mov         ecx,dword ptr [ebp-8]
 00448694    mov         eax,dword ptr [esi+10]
 00448697    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 0044869D    call        @DynArrayCopy
>004486A2    jmp         004487CF
 004486A7    call        TMonitor.CheckMonitorSupport
 004486AC    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 004486B1    call        TMonitor.GetMonitor
 004486B6    or          edx,0FFFFFFFF
 004486B9    call        TMonitor.Enter
 004486BE    xor         eax,eax
 004486C0    push        ebp
 004486C1    push        4487C8
 004486C6    push        dword ptr fs:[eax]
 004486C9    mov         dword ptr fs:[eax],esp
 004486CC    cmp         dword ptr [esi+14],0
>004486D0    jne         004486ED
 004486D2    mov         ecx,dword ptr [ebp-8]
 004486D5    mov         eax,dword ptr [esi+10]
 004486D8    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 004486DE    call        @DynArrayCopy
 004486E3    call        @TryFinallyExit
>004486E8    jmp         004487CF
 004486ED    mov         eax,dword ptr [esi+14]
 004486F0    cmp         word ptr [eax],2
>004486F4    jne         00448721
 004486F6    lea         eax,[esi+10]
 004486F9    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 004486FF    call        @DynArrayClear
 00448704    xor         eax,eax
 00448706    mov         dword ptr [esi+14],eax
 00448709    mov         eax,dword ptr [ebp-8]
 0044870C    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00448712    call        @DynArrayClear
 00448717    call        @TryFinallyExit
>0044871C    jmp         004487CF
 00448721    mov         dl,1
 00448723    mov         eax,[0043E8E0];TFinalizer
 00448728    call        TObject.Create;TFinalizer.Create
 0044872D    mov         edx,eax
 0044872F    test        edx,edx
>00448731    je          00448736
 00448733    sub         edx,0FFFFFFEC
 00448736    lea         eax,[esi+0C]
 00448739    call        @IntfCopy
 0044873E    lea         edx,[ebp-0C]
 00448741    mov         eax,dword ptr [esi+14]
 00448744    call        004470A4
 00448749    mov         edx,dword ptr [ebp-0C]
 0044874C    lea         eax,[esi+10]
 0044874F    mov         ecx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00448755    call        @DynArrayAsg
 0044875A    lea         eax,[ebp-4]
 0044875D    mov         edx,dword ptr [esi+10]
 00448760    mov         ecx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00448766    call        @DynArrayAsg
 0044876B    xor         ebx,ebx
>0044876D    jmp         00448780
 0044876F    mov         eax,dword ptr [ebp-4]
 00448772    mov         edi,dword ptr [eax+ebx*4]
 00448775    mov         eax,dword ptr [esi+0C]
 00448778    mov         edx,edi
 0044877A    mov         ecx,dword ptr [eax]
 0044877C    call        dword ptr [ecx+0C]
 0044877F    inc         ebx
 00448780    mov         eax,dword ptr [ebp-4]
 00448783    call        0040ABA8
 00448788    cmp         ebx,eax
>0044878A    jl          0044876F
 0044878C    lea         eax,[ebp-4]
 0044878F    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00448795    call        @DynArrayClear
 0044879A    xor         eax,eax
 0044879C    mov         dword ptr [esi+14],eax
 0044879F    mov         ecx,dword ptr [ebp-8]
 004487A2    mov         eax,dword ptr [esi+10]
 004487A5    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 004487AB    call        @DynArrayCopy
 004487B0    xor         eax,eax
 004487B2    pop         edx
 004487B3    pop         ecx
 004487B4    pop         ecx
 004487B5    mov         dword ptr fs:[eax],edx
 004487B8    push        4487CF
 004487BD    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 004487C2    call        TMonitor.Exit
 004487C7    ret
>004487C8    jmp         @HandleFinally
>004487CD    jmp         004487BD
 004487CF    xor         eax,eax
 004487D1    pop         edx
 004487D2    pop         ecx
 004487D3    pop         ecx
 004487D4    mov         dword ptr fs:[eax],edx
 004487D7    push        448800
 004487DC    lea         eax,[ebp-0C]
 004487DF    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 004487E5    call        @DynArrayClear
 004487EA    lea         eax,[ebp-4]
 004487ED    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 004487F3    call        @DynArrayClear
 004487F8    ret
>004487F9    jmp         @HandleFinally
>004487FE    jmp         004487DC
 00448800    pop         edi
 00448801    pop         esi
 00448802    pop         ebx
 00448803    mov         esp,ebp
 00448805    pop         ebp
 00448806    ret
end;*}

//00448808
function MakeClosure(data:Windows.PByte):TFunc<System.TArray<System.TCustomAttribute>>System.SysUtils.TFunc`1<TArray<System.TCustomAttribute>System.TArray`1<System.TCustomAttribute>>;
begin
{*
 00448808    push        ebp
 00448809    mov         ebp,esp
 0044880B    add         esp,0FFFFFFF8
 0044880E    push        ebx
 0044880F    push        esi
 00448810    push        edi
 00448811    xor         ecx,ecx
 00448813    mov         dword ptr [ebp-8],ecx
 00448816    mov         edi,edx
 00448818    mov         esi,eax
 0044881A    xor         eax,eax
 0044881C    push        ebp
 0044881D    push        448870
 00448822    push        dword ptr fs:[eax]
 00448825    mov         dword ptr fs:[eax],esp
 00448828    mov         dl,1
 0044882A    mov         eax,[00448560];MakeClosure$185$ActRec
 0044882F    call        TObject.Create
 00448834    mov         ebx,eax
 00448836    lea         eax,[ebp-8]
 00448839    mov         edx,ebx
 0044883B    test        edx,edx
>0044883D    je          00448842
 0044883F    sub         edx,0FFFFFFF8
 00448842    call        @IntfCopy
 00448847    mov         dword ptr [ebx+14],esi
 0044884A    mov         eax,edi
 0044884C    mov         edx,ebx
 0044884E    test        edx,edx
>00448850    je          00448855
 00448852    sub         edx,0FFFFFFE8
 00448855    call        @IntfCopy
 0044885A    xor         eax,eax
 0044885C    pop         edx
 0044885D    pop         ecx
 0044885E    pop         ecx
 0044885F    mov         dword ptr fs:[eax],edx
 00448862    push        448877
 00448867    lea         eax,[ebp-8]
 0044886A    call        @IntfClear
 0044886F    ret
>00448870    jmp         @HandleFinally
>00448875    jmp         00448867
 00448877    pop         edi
 00448878    pop         esi
 00448879    pop         ebx
 0044887A    pop         ecx
 0044887B    pop         ecx
 0044887C    pop         ebp
 0044887D    ret
*}
end;

//00448880
function LazyLoadAttributes(var P:Windows.PByte):TFunc<System.TArray<System.TCustomAttribute>>System.SysUtils.TFunc`1<TArray<System.TCustomAttribute>System.TArray`1<System.TCustomAttribute>>;
begin
{*
 00448880    push        ebx
 00448881    push        esi
 00448882    mov         esi,edx
 00448884    mov         ebx,dword ptr [eax]
 00448886    movzx       edx,word ptr [ebx]
 00448889    add         dword ptr [eax],edx
 0044888B    cmp         edx,2
>0044888E    jne         0044889A
 00448890    mov         eax,esi
 00448892    call        @IntfClear
 00448897    pop         esi
 00448898    pop         ebx
 00448899    ret
 0044889A    mov         edx,esi
 0044889C    mov         eax,ebx
 0044889E    call        MakeClosure
 004488A3    pop         esi
 004488A4    pop         ebx
 004488A5    ret
*}
end;

//004488A8
function TRttiContext.Create:TRttiContext;
begin
{*
 004488A8    call        EnsurePoolToken
 004488AD    ret
*}
end;

//004488B0
procedure TRttiContext.Free;
begin
{*
 004488B0    push        ebx
 004488B1    mov         ebx,eax
 004488B3    mov         eax,ebx
 004488B5    call        @IntfClear
 004488BA    pop         ebx
 004488BB    ret
*}
end;

//004488BC
function TRttiContext.GetType(AClass:TClass):TRttiType;
begin
{*
 004488BC    push        ebx
 004488BD    mov         ebx,edx
 004488BF    call        EnsurePoolToken
 004488C4    mov         edx,ebx
 004488C6    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 004488CB    call        TRttiPool.GetType
 004488D0    pop         ebx
 004488D1    ret
*}
end;

//004488D4
{*procedure sub_004488D4(?:?);
begin
 004488D4    push        ebp
 004488D5    mov         ebp,esp
 004488D7    push        ecx
 004488D8    or          eax,0FFFFFFFF
 004488DB    lock xadd   dword ptr ds:[7C9F78],eax
 004488E3    add         eax,0FFFFFFFF
 004488E6    test        eax,eax
>004488E8    jne         0044890C
 004488EA    mov         eax,[007C9F7C];gvar_007C9F7C:IInterface
 004488EF    mov         dword ptr [ebp-4],eax
 004488F2    xor         edx,edx
 004488F4    mov         eax,dword ptr [ebp-4]
 004488F7    lock cmpxchgdword ptr ds:[7C9F7C],edx;gvar_007C9F7C:IInterface
 004488FF    cmp         eax,dword ptr [ebp-4]
>00448902    jne         0044890C
 00448904    lea         eax,[ebp-4]
 00448907    call        @IntfClear
 0044890C    pop         ecx
 0044890D    pop         ebp
 0044890E    ret
end;*}

//00448910
procedure sub_00448910;
begin
{*
 00448910    mov         eax,7C9F7C;gvar_007C9F7C:IInterface
 00448915    call        EnsurePoolToken
 0044891A    mov         eax,1
 0044891F    lock xadd   dword ptr ds:[7C9F78],eax
 00448927    add         eax,1
 0044892A    ret
*}
end;

//0044892C
destructor TRttiPackage.Destroy();
begin
{*
 0044892C    push        ebx
 0044892D    push        esi
 0044892E    push        ecx
 0044892F    call        @BeforeDestruction
 00448934    mov         ebx,edx
 00448936    mov         esi,eax
 00448938    mov         eax,dword ptr [esi+18]
 0044893B    call        TObject.Free
 00448940    lea         eax,[esi+1C]
 00448943    mov         dword ptr [esp],eax
 00448946    mov         eax,dword ptr [esp]
 00448949    mov         eax,dword ptr [eax]
 0044894B    mov         edx,dword ptr [esp]
 0044894E    xor         ecx,ecx
 00448950    mov         dword ptr [edx],ecx
 00448952    call        TObject.Free
 00448957    mov         dl,0FC
 00448959    and         dl,bl
 0044895B    mov         eax,esi
 0044895D    call        TRttiObject.Destroy
 00448962    test        bl,bl
>00448964    jle         0044896D
 00448966    mov         eax,esi
 00448968    call        @ClassDestroy
 0044896D    pop         edx
 0044896E    pop         esi
 0044896F    pop         ebx
 00448970    ret
*}
end;

//00448974
function TRttiPackage.GetHandle:HINST;
begin
{*
 00448974    mov         eax,dword ptr [eax+4]
 00448977    ret
*}
end;

//00448978
function TRttiPackage.GetNameFromType(AType:TRttiType):UnicodeString;
begin
{*
 00448978    push        ebx
 00448979    mov         ebx,ecx
 0044897B    mov         eax,ebx
 0044897D    call        @UStrClr
 00448982    pop         ebx
 00448983    ret
*}
end;

//00448984
function TRttiPackage.ReadObject(ARttiClass:TRttiClass; AParent:TRttiObject; var P:PByte):TRttiObject;
begin
{*
 00448984    push        ebp
 00448985    mov         ebp,esp
 00448987    add         esp,0FFFFFFF0
 0044898A    push        ebx
 0044898B    push        esi
 0044898C    push        edi
 0044898D    mov         dword ptr [ebp-8],ecx
 00448990    mov         esi,edx
 00448992    mov         dword ptr [ebp-4],eax
 00448995    mov         ebx,dword ptr [ebp+8]
 00448998    mov         eax,dword ptr [ebp-4]
 0044899B    mov         eax,dword ptr [eax+18]
 0044899E    mov         dword ptr [ebp-10],eax
 004489A1    call        TMonitor.CheckMonitorSupport
 004489A6    mov         eax,dword ptr [ebp-10]
 004489A9    call        TMonitor.GetMonitor
 004489AE    or          edx,0FFFFFFFF
 004489B1    call        TMonitor.Enter
 004489B6    xor         eax,eax
 004489B8    push        ebp
 004489B9    push        448A2E
 004489BE    push        dword ptr fs:[eax]
 004489C1    mov         dword ptr fs:[eax],esp
 004489C4    lea         ecx,[ebp-0C]
 004489C7    mov         edx,dword ptr [ebx]
 004489C9    mov         eax,dword ptr [ebp-4]
 004489CC    mov         eax,dword ptr [eax+1C]
 004489CF    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TryGetValue
 004489D4    test        al,al
>004489D6    je          004489E7
 004489D8    mov         eax,dword ptr [ebp-0C]
 004489DB    mov         eax,dword ptr [eax+8]
 004489DE    add         dword ptr [ebx],eax
 004489E0    call        @TryFinallyExit
>004489E5    jmp         00448A35
 004489E7    cmp         esi,dword ptr ds:[4368BC];TRttiType
>004489ED    jne         004489F8
 004489EF    mov         eax,dword ptr [ebx]
 004489F1    call        GetRttiClass
 004489F6    mov         esi,eax
 004489F8    mov         edi,dword ptr [ebx]
 004489FA    mov         eax,dword ptr [ebp-8]
 004489FD    push        eax
 004489FE    push        ebx
 004489FF    mov         ecx,dword ptr [ebp-4]
 00448A02    mov         dl,1
 00448A04    mov         eax,esi
 00448A06    call        dword ptr [eax]
 00448A08    mov         dword ptr [ebp-0C],eax
 00448A0B    mov         eax,dword ptr [ebx]
 00448A0D    sub         eax,edi
 00448A0F    mov         edx,dword ptr [ebp-0C]
 00448A12    mov         dword ptr [edx+8],eax
 00448A15    xor         eax,eax
 00448A17    pop         edx
 00448A18    pop         ecx
 00448A19    pop         ecx
 00448A1A    mov         dword ptr fs:[eax],edx
 00448A1D    push        448A35
 00448A22    mov         eax,dword ptr [ebp-4]
 00448A25    mov         eax,dword ptr [eax+18]
 00448A28    call        TMonitor.Exit
 00448A2D    ret
>00448A2E    jmp         @HandleFinally
>00448A33    jmp         00448A22
 00448A35    mov         eax,dword ptr [ebp-0C]
 00448A38    pop         edi
 00448A39    pop         esi
 00448A3A    pop         ebx
 00448A3B    mov         esp,ebp
 00448A3D    pop         ebp
 00448A3E    ret         4
*}
end;

//00448A44
function TRttiPackage.ReadObjectPointer(ARttiClass:TRttiClass; AParent:TRttiObject; P:Pointer):TRttiObject;
begin
{*
 00448A44    push        ebp
 00448A45    mov         ebp,esp
 00448A47    push        ecx
 00448A48    push        ebx
 00448A49    mov         ebx,dword ptr [ebp+8]
 00448A4C    mov         dword ptr [ebp-4],ebx
 00448A4F    lea         ebx,[ebp-4]
 00448A52    push        ebx
 00448A53    call        TRttiPackage.ReadObject
 00448A58    pop         ebx
 00448A59    pop         ecx
 00448A5A    pop         ebp
 00448A5B    ret         4
*}
end;

//00448A60
constructor TRttiObject.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00448A60    push        ebp
 00448A61    mov         ebp,esp
 00448A63    push        ecx
 00448A64    push        ebx
 00448A65    test        dl,dl
>00448A67    je          00448A71
 00448A69    add         esp,0FFFFFFF0
 00448A6C    call        @ClassCreate
 00448A71    mov         byte ptr [ebp-1],dl
 00448A74    mov         ebx,eax
 00448A76    mov         eax,dword ptr [ebp+8]
 00448A79    mov         edx,dword ptr [ebp+0C]
 00448A7C    mov         dword ptr [ebx+10],edx
 00448A7F    mov         edx,dword ptr [eax]
 00448A81    mov         dword ptr [ebx+4],edx
 00448A84    mov         dword ptr [ebx+0C],ecx
 00448A87    test        ecx,ecx
>00448A89    je          00448A97
 00448A8B    mov         edx,dword ptr [eax]
 00448A8D    mov         eax,dword ptr [ecx+1C]
 00448A90    mov         ecx,ebx
 00448A92    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.Add
 00448A97    mov         eax,ebx
 00448A99    cmp         byte ptr [ebp-1],0
>00448A9D    je          00448AAE
 00448A9F    call        @AfterConstruction
 00448AA4    pop         dword ptr fs:[0]
 00448AAB    add         esp,0C
 00448AAE    mov         eax,ebx
 00448AB0    pop         ebx
 00448AB1    pop         ecx
 00448AB2    pop         ebp
 00448AB3    ret         8
*}
end;

//00448AB8
destructor TRttiObject.Destroy();
begin
{*
 00448AB8    push        ebp
 00448AB9    mov         ebp,esp
 00448ABB    add         esp,0FFFFFFEC
 00448ABE    call        @BeforeDestruction
 00448AC3    mov         byte ptr [ebp-5],dl
 00448AC6    mov         dword ptr [ebp-4],eax
 00448AC9    mov         eax,dword ptr [ebp-4]
 00448ACC    mov         eax,dword ptr [eax+0C]
 00448ACF    test        eax,eax
>00448AD1    je          00448B3C
 00448AD3    cmp         dword ptr [eax+1C],0
>00448AD7    je          00448B3C
 00448AD9    mov         eax,dword ptr [eax+18]
 00448ADC    mov         dword ptr [ebp-0C],eax
 00448ADF    call        TMonitor.CheckMonitorSupport
 00448AE4    mov         eax,dword ptr [ebp-0C]
 00448AE7    call        TMonitor.GetMonitor
 00448AEC    or          edx,0FFFFFFFF
 00448AEF    call        TMonitor.Enter
 00448AF4    xor         eax,eax
 00448AF6    push        ebp
 00448AF7    push        448B35
 00448AFC    push        dword ptr fs:[eax]
 00448AFF    mov         dword ptr fs:[eax],esp
 00448B02    lea         ecx,[ebp-14]
 00448B05    mov         eax,dword ptr [ebp-4]
 00448B08    mov         edx,dword ptr [eax+4]
 00448B0B    mov         eax,dword ptr [ebp-4]
 00448B0E    mov         eax,dword ptr [eax+0C]
 00448B11    mov         eax,dword ptr [eax+1C]
 00448B14    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.ExtractPair
 00448B19    xor         eax,eax
 00448B1B    pop         edx
 00448B1C    pop         ecx
 00448B1D    pop         ecx
 00448B1E    mov         dword ptr fs:[eax],edx
 00448B21    push        448B3C
 00448B26    mov         eax,dword ptr [ebp-4]
 00448B29    mov         eax,dword ptr [eax+0C]
 00448B2C    mov         eax,dword ptr [eax+18]
 00448B2F    call        TMonitor.Exit
 00448B34    ret
>00448B35    jmp         @HandleFinally
>00448B3A    jmp         00448B26
 00448B3C    movzx       edx,byte ptr [ebp-5]
 00448B40    and         dl,0FC
 00448B43    mov         eax,dword ptr [ebp-4]
 00448B46    call        TObject.Destroy
 00448B4B    cmp         byte ptr [ebp-5],0
>00448B4F    jle         00448B59
 00448B51    mov         eax,dword ptr [ebp-4]
 00448B54    call        @ClassDestroy
 00448B59    mov         esp,ebp
 00448B5B    pop         ebp
 00448B5C    ret
*}
end;

//00448B60
function TRttiObject.GetAttributes:TArray<System.TCustomAttribute>;
begin
{*
 00448B60    push        ebx
 00448B61    push        esi
 00448B62    mov         esi,edx
 00448B64    mov         ebx,eax
 00448B66    cmp         dword ptr [ebx+14],0
>00448B6A    jne         00448B7C
 00448B6C    mov         eax,esi
 00448B6E    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00448B74    call        @DynArrayClear
 00448B79    pop         esi
 00448B7A    pop         ebx
 00448B7B    ret
 00448B7C    mov         edx,esi
 00448B7E    mov         eax,dword ptr [ebx+14]
 00448B81    mov         ecx,dword ptr [eax]
 00448B83    call        dword ptr [ecx+0C]
 00448B86    pop         esi
 00448B87    pop         ebx
 00448B88    ret
*}
end;

//00448B8C
constructor TRttiType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00448B8C    push        ebp
 00448B8D    mov         ebp,esp
 00448B8F    add         esp,0FFFFFFF8
 00448B92    push        ebx
 00448B93    push        esi
 00448B94    xor         ebx,ebx
 00448B96    mov         dword ptr [ebp-8],ebx
 00448B99    test        dl,dl
>00448B9B    je          00448BA5
 00448B9D    add         esp,0FFFFFFF0
 00448BA0    call        @ClassCreate
 00448BA5    mov         byte ptr [ebp-1],dl
 00448BA8    mov         ebx,eax
 00448BAA    mov         esi,dword ptr [ebp+8]
 00448BAD    xor         eax,eax
 00448BAF    push        ebp
 00448BB0    push        448C08
 00448BB5    push        dword ptr fs:[eax]
 00448BB8    mov         dword ptr fs:[eax],esp
 00448BBB    mov         eax,dword ptr [ebp+0C]
 00448BBE    push        eax
 00448BBF    push        esi
 00448BC0    xor         edx,edx
 00448BC2    mov         eax,ebx
 00448BC4    call        TRttiObject.Create
 00448BC9    mov         eax,ebx
 00448BCB    call        TRttiType.GetTypeKind
 00448BD0    cmp         al,0C
>00448BD2    jne         00448BF2
 00448BD4    mov         eax,ebx
 00448BD6    call        TRttiType.GetTypeData
 00448BDB    mov         dword ptr [esi],eax
 00448BDD    lea         edx,[ebp-8]
 00448BE0    mov         eax,esi
 00448BE2    call        LazyLoadAttributes
 00448BE7    mov         edx,dword ptr [ebp-8]
 00448BEA    lea         eax,[ebx+14]
 00448BED    call        @IntfCopy
 00448BF2    xor         eax,eax
 00448BF4    pop         edx
 00448BF5    pop         ecx
 00448BF6    pop         ecx
 00448BF7    mov         dword ptr fs:[eax],edx
 00448BFA    push        448C0F
 00448BFF    lea         eax,[ebp-8]
 00448C02    call        @IntfClear
 00448C07    ret
>00448C08    jmp         @HandleFinally
>00448C0D    jmp         00448BFF
 00448C0F    mov         eax,ebx
 00448C11    cmp         byte ptr [ebp-1],0
>00448C15    je          00448C26
 00448C17    call        @AfterConstruction
 00448C1C    pop         dword ptr fs:[0]
 00448C23    add         esp,0C
 00448C26    mov         eax,ebx
 00448C28    pop         esi
 00448C29    pop         ebx
 00448C2A    pop         ecx
 00448C2B    pop         ecx
 00448C2C    pop         ebp
 00448C2D    ret         8
*}
end;

//00448C30
function TRttiType.GetAsInstance:TRttiInstanceType;
begin
{*
 00448C30    push        ebx
 00448C31    mov         ebx,eax
 00448C33    mov         eax,ebx
 00448C35    mov         edx,dword ptr ds:[438E84];TRttiInstanceType
 00448C3B    call        @AsClass
 00448C40    pop         ebx
 00448C41    ret
*}
end;

//00448C44
function TRttiType.GetAsOrdinal:TRttiOrdinalType;
begin
{*
 00448C44    push        ebx
 00448C45    mov         ebx,eax
 00448C47    mov         eax,ebx
 00448C49    mov         edx,dword ptr ds:[439534];TRttiOrdinalType
 00448C4F    call        @AsClass
 00448C54    pop         ebx
 00448C55    ret
*}
end;

//00448C58
function TRttiType.GetAsRecord:TRttiRecordType;
begin
{*
 00448C58    push        ebx
 00448C59    mov         ebx,eax
 00448C5B    mov         eax,ebx
 00448C5D    mov         edx,dword ptr ds:[437550];TRttiRecordType
 00448C63    call        @AsClass
 00448C68    pop         ebx
 00448C69    ret
*}
end;

//00448C6C
function TRttiType.GetAsSet:TRttiSetType;
begin
{*
 00448C6C    push        ebx
 00448C6D    mov         ebx,eax
 00448C6F    mov         eax,ebx
 00448C71    mov         edx,dword ptr ds:[43A078];TRttiSetType
 00448C77    call        @AsClass
 00448C7C    pop         ebx
 00448C7D    ret
*}
end;

//00448C80
function TRttiType.GetField(AName:string):TRttiField;
begin
{*
 00448C80    push        ebp
 00448C81    mov         ebp,esp
 00448C83    add         esp,0FFFFFFE8
 00448C86    push        ebx
 00448C87    push        esi
 00448C88    push        edi
 00448C89    xor         ecx,ecx
 00448C8B    mov         dword ptr [ebp-14],ecx
 00448C8E    mov         dword ptr [ebp-4],ecx
 00448C91    mov         esi,edx
 00448C93    mov         ebx,eax
 00448C95    xor         eax,eax
 00448C97    push        ebp
 00448C98    push        448D45
 00448C9D    push        dword ptr fs:[eax]
 00448CA0    mov         dword ptr fs:[eax],esp
 00448CA3    lea         edx,[ebp-4]
 00448CA6    mov         eax,ebx
 00448CA8    mov         ecx,dword ptr [eax]
 00448CAA    call        dword ptr [ecx+24];TRttiType.GetFields
 00448CAD    xor         edi,edi
>00448CAF    jmp         00448D02
 00448CB1    mov         eax,dword ptr [ebp-4]
 00448CB4    mov         eax,dword ptr [eax+edi*4]
 00448CB7    mov         dword ptr [ebp-0C],eax
 00448CBA    lea         edx,[ebp-14]
 00448CBD    mov         eax,dword ptr [ebp-0C]
 00448CC0    mov         ecx,dword ptr [eax]
 00448CC2    call        dword ptr [ecx+8]
 00448CC5    mov         ebx,dword ptr [ebp-14]
 00448CC8    cmp         ebx,esi
>00448CCA    jne         00448CD2
 00448CCC    mov         byte ptr [ebp-0D],1
>00448CD0    jmp         00448CF3
 00448CD2    test        ebx,ebx
>00448CD4    je          00448CDA
 00448CD6    test        esi,esi
>00448CD8    jne         00448CE0
 00448CDA    mov         byte ptr [ebp-0D],0
>00448CDE    jmp         00448CF3
 00448CE0    mov         edx,esi
 00448CE2    mov         dword ptr [ebp-18],ebx
 00448CE5    mov         eax,dword ptr [ebp-18]
 00448CE8    call        CompareText
 00448CED    test        eax,eax
 00448CEF    sete        byte ptr [ebp-0D]
 00448CF3    cmp         byte ptr [ebp-0D],0
>00448CF7    je          00448D01
 00448CF9    mov         eax,dword ptr [ebp-0C]
 00448CFC    mov         dword ptr [ebp-8],eax
>00448CFF    jmp         00448D21
 00448D01    inc         edi
 00448D02    mov         eax,dword ptr [ebp-4]
 00448D05    call        0040ABA8
 00448D0A    cmp         edi,eax
>00448D0C    jl          00448CB1
 00448D0E    lea         eax,[ebp-4]
 00448D11    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00448D17    call        @DynArrayClear
 00448D1C    xor         eax,eax
 00448D1E    mov         dword ptr [ebp-8],eax
 00448D21    xor         eax,eax
 00448D23    pop         edx
 00448D24    pop         ecx
 00448D25    pop         ecx
 00448D26    mov         dword ptr fs:[eax],edx
 00448D29    push        448D4C
 00448D2E    lea         eax,[ebp-14]
 00448D31    call        @UStrClr
 00448D36    lea         eax,[ebp-4]
 00448D39    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00448D3F    call        @DynArrayClear
 00448D44    ret
>00448D45    jmp         @HandleFinally
>00448D4A    jmp         00448D2E
 00448D4C    mov         eax,dword ptr [ebp-8]
 00448D4F    pop         edi
 00448D50    pop         esi
 00448D51    pop         ebx
 00448D52    mov         esp,ebp
 00448D54    pop         ebp
 00448D55    ret
*}
end;

//00448D58
{*procedure TRttiType.GetFields(?:?);
begin
 00448D58    push        ebp
 00448D59    mov         ebp,esp
 00448D5B    push        0
 00448D5D    push        0
 00448D5F    push        0
 00448D61    push        ebx
 00448D62    push        esi
 00448D63    push        edi
 00448D64    mov         dword ptr [ebp-8],edx
 00448D67    mov         edi,eax
 00448D69    xor         eax,eax
 00448D6B    push        ebp
 00448D6C    push        448E1C
 00448D71    push        dword ptr fs:[eax]
 00448D74    mov         dword ptr fs:[eax],esp
 00448D77    mov         ebx,edi
 00448D79    xor         esi,esi
 00448D7B    test        ebx,ebx
>00448D7D    je          00448D8D
 00448D7F    inc         esi
 00448D80    mov         eax,ebx
 00448D82    mov         edx,dword ptr [eax]
 00448D84    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 00448D87    mov         ebx,eax
 00448D89    test        ebx,ebx
>00448D8B    jne         00448D7F
 00448D8D    push        esi
 00448D8E    lea         eax,[ebp-4]
 00448D91    mov         ecx,1
 00448D96    mov         edx,dword ptr ds:[4496F0];TArray<System.TArray<System.Rtti.TRttiField>>
 00448D9C    call        @DynArraySetLength
 00448DA1    add         esp,4
 00448DA4    mov         ebx,edi
 00448DA6    xor         esi,esi
 00448DA8    test        ebx,ebx
>00448DAA    je          00448DD8
 00448DAC    lea         edx,[ebp-0C]
 00448DAF    mov         eax,ebx
 00448DB1    mov         ecx,dword ptr [eax]
 00448DB3    call        dword ptr [ecx+4C];TRttiType.GetDeclaredMethods
 00448DB6    mov         edx,dword ptr [ebp-0C]
 00448DB9    mov         eax,dword ptr [ebp-4]
 00448DBC    lea         eax,[eax+esi*4]
 00448DBF    mov         ecx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00448DC5    call        @DynArrayAsg
 00448DCA    inc         esi
 00448DCB    mov         eax,ebx
 00448DCD    mov         edx,dword ptr [eax]
 00448DCF    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 00448DD2    mov         ebx,eax
 00448DD4    test        ebx,ebx
>00448DD6    jne         00448DAC
 00448DD8    mov         ebx,dword ptr [ebp-4]
 00448DDB    test        ebx,ebx
>00448DDD    je          00448DE4
 00448DDF    sub         ebx,4
 00448DE2    mov         ebx,dword ptr [ebx]
 00448DE4    mov         ecx,dword ptr [ebp-8]
 00448DE7    mov         edx,ebx
 00448DE9    dec         edx
 00448DEA    mov         eax,dword ptr [ebp-4]
 00448DED    call        00459AB8
 00448DF2    xor         eax,eax
 00448DF4    pop         edx
 00448DF5    pop         ecx
 00448DF6    pop         ecx
 00448DF7    mov         dword ptr fs:[eax],edx
 00448DFA    push        448E23
 00448DFF    lea         eax,[ebp-0C]
 00448E02    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00448E08    call        @DynArrayClear
 00448E0D    lea         eax,[ebp-4]
 00448E10    mov         edx,dword ptr ds:[4496F0];TArray<System.TArray<System.Rtti.TRttiField>>
 00448E16    call        @DynArrayClear
 00448E1B    ret
>00448E1C    jmp         @HandleFinally
>00448E21    jmp         00448DFF
 00448E23    pop         edi
 00448E24    pop         esi
 00448E25    pop         ebx
 00448E26    mov         esp,ebp
 00448E28    pop         ebp
 00448E29    ret
end;*}

//00448E2C
function TRttiType.GetHandle:PTypeInfo;
begin
{*
 00448E2C    mov         eax,dword ptr [eax+4]
 00448E2F    ret
*}
end;

//00448E30
{*procedure TRttiType.GetIndexedProperties(?:?);
begin
 00448E30    push        ebp
 00448E31    mov         ebp,esp
 00448E33    push        0
 00448E35    push        0
 00448E37    push        0
 00448E39    push        ebx
 00448E3A    push        esi
 00448E3B    push        edi
 00448E3C    mov         dword ptr [ebp-8],edx
 00448E3F    mov         edi,eax
 00448E41    xor         eax,eax
 00448E43    push        ebp
 00448E44    push        448EF4
 00448E49    push        dword ptr fs:[eax]
 00448E4C    mov         dword ptr fs:[eax],esp
 00448E4F    mov         ebx,edi
 00448E51    xor         esi,esi
 00448E53    test        ebx,ebx
>00448E55    je          00448E65
 00448E57    inc         esi
 00448E58    mov         eax,ebx
 00448E5A    mov         edx,dword ptr [eax]
 00448E5C    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 00448E5F    mov         ebx,eax
 00448E61    test        ebx,ebx
>00448E63    jne         00448E57
 00448E65    push        esi
 00448E66    lea         eax,[ebp-4]
 00448E69    mov         ecx,1
 00448E6E    mov         edx,dword ptr ds:[449740];TArray<System.TArray<System.Rtti.TRttiIndexedProperty>>
 00448E74    call        @DynArraySetLength
 00448E79    add         esp,4
 00448E7C    mov         ebx,edi
 00448E7E    xor         esi,esi
 00448E80    test        ebx,ebx
>00448E82    je          00448EB0
 00448E84    lea         edx,[ebp-0C]
 00448E87    mov         eax,ebx
 00448E89    mov         ecx,dword ptr [eax]
 00448E8B    call        dword ptr [ecx+50];TRttiType.GetDeclaredProperties
 00448E8E    mov         edx,dword ptr [ebp-0C]
 00448E91    mov         eax,dword ptr [ebp-4]
 00448E94    lea         eax,[eax+esi*4]
 00448E97    mov         ecx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 00448E9D    call        @DynArrayAsg
 00448EA2    inc         esi
 00448EA3    mov         eax,ebx
 00448EA5    mov         edx,dword ptr [eax]
 00448EA7    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 00448EAA    mov         ebx,eax
 00448EAC    test        ebx,ebx
>00448EAE    jne         00448E84
 00448EB0    mov         ebx,dword ptr [ebp-4]
 00448EB3    test        ebx,ebx
>00448EB5    je          00448EBC
 00448EB7    sub         ebx,4
 00448EBA    mov         ebx,dword ptr [ebx]
 00448EBC    mov         ecx,dword ptr [ebp-8]
 00448EBF    mov         edx,ebx
 00448EC1    dec         edx
 00448EC2    mov         eax,dword ptr [ebp-4]
 00448EC5    call        00459B50
 00448ECA    xor         eax,eax
 00448ECC    pop         edx
 00448ECD    pop         ecx
 00448ECE    pop         ecx
 00448ECF    mov         dword ptr fs:[eax],edx
 00448ED2    push        448EFB
 00448ED7    lea         eax,[ebp-0C]
 00448EDA    mov         edx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 00448EE0    call        @DynArrayClear
 00448EE5    lea         eax,[ebp-4]
 00448EE8    mov         edx,dword ptr ds:[449740];TArray<System.TArray<System.Rtti.TRttiIndexedProperty>>
 00448EEE    call        @DynArrayClear
 00448EF3    ret
>00448EF4    jmp         @HandleFinally
>00448EF9    jmp         00448ED7
 00448EFB    pop         edi
 00448EFC    pop         esi
 00448EFD    pop         ebx
 00448EFE    mov         esp,ebp
 00448F00    pop         ebp
 00448F01    ret
end;*}

//00448F04
function TRttiType.GetIndexedProperty(AName:string):TRttiIndexedProperty;
begin
{*
 00448F04    push        ebp
 00448F05    mov         ebp,esp
 00448F07    add         esp,0FFFFFFE8
 00448F0A    push        ebx
 00448F0B    push        esi
 00448F0C    push        edi
 00448F0D    xor         ecx,ecx
 00448F0F    mov         dword ptr [ebp-14],ecx
 00448F12    mov         dword ptr [ebp-4],ecx
 00448F15    mov         esi,edx
 00448F17    mov         ebx,eax
 00448F19    xor         eax,eax
 00448F1B    push        ebp
 00448F1C    push        448FC9
 00448F21    push        dword ptr fs:[eax]
 00448F24    mov         dword ptr fs:[eax],esp
 00448F27    lea         edx,[ebp-4]
 00448F2A    mov         eax,ebx
 00448F2C    mov         ecx,dword ptr [eax]
 00448F2E    call        dword ptr [ecx+2C];TRttiType.GetIndexedProperties
 00448F31    xor         edi,edi
>00448F33    jmp         00448F86
 00448F35    mov         eax,dword ptr [ebp-4]
 00448F38    mov         eax,dword ptr [eax+edi*4]
 00448F3B    mov         dword ptr [ebp-0C],eax
 00448F3E    lea         edx,[ebp-14]
 00448F41    mov         eax,dword ptr [ebp-0C]
 00448F44    mov         ecx,dword ptr [eax]
 00448F46    call        dword ptr [ecx+8]
 00448F49    mov         ebx,dword ptr [ebp-14]
 00448F4C    cmp         ebx,esi
>00448F4E    jne         00448F56
 00448F50    mov         byte ptr [ebp-0D],1
>00448F54    jmp         00448F77
 00448F56    test        ebx,ebx
>00448F58    je          00448F5E
 00448F5A    test        esi,esi
>00448F5C    jne         00448F64
 00448F5E    mov         byte ptr [ebp-0D],0
>00448F62    jmp         00448F77
 00448F64    mov         edx,esi
 00448F66    mov         dword ptr [ebp-18],ebx
 00448F69    mov         eax,dword ptr [ebp-18]
 00448F6C    call        CompareText
 00448F71    test        eax,eax
 00448F73    sete        byte ptr [ebp-0D]
 00448F77    cmp         byte ptr [ebp-0D],0
>00448F7B    je          00448F85
 00448F7D    mov         eax,dword ptr [ebp-0C]
 00448F80    mov         dword ptr [ebp-8],eax
>00448F83    jmp         00448FA5
 00448F85    inc         edi
 00448F86    mov         eax,dword ptr [ebp-4]
 00448F89    call        0040ABA8
 00448F8E    cmp         edi,eax
>00448F90    jl          00448F35
 00448F92    lea         eax,[ebp-4]
 00448F95    mov         edx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 00448F9B    call        @DynArrayClear
 00448FA0    xor         eax,eax
 00448FA2    mov         dword ptr [ebp-8],eax
 00448FA5    xor         eax,eax
 00448FA7    pop         edx
 00448FA8    pop         ecx
 00448FA9    pop         ecx
 00448FAA    mov         dword ptr fs:[eax],edx
 00448FAD    push        448FD0
 00448FB2    lea         eax,[ebp-14]
 00448FB5    call        @UStrClr
 00448FBA    lea         eax,[ebp-4]
 00448FBD    mov         edx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 00448FC3    call        @DynArrayClear
 00448FC8    ret
>00448FC9    jmp         @HandleFinally
>00448FCE    jmp         00448FB2
 00448FD0    mov         eax,dword ptr [ebp-8]
 00448FD3    pop         edi
 00448FD4    pop         esi
 00448FD5    pop         ebx
 00448FD6    mov         esp,ebp
 00448FD8    pop         ebp
 00448FD9    ret
*}
end;

//00448FDC
function TRttiType.GetIsInstance:Boolean;
begin
{*
 00448FDC    push        ebx
 00448FDD    mov         ebx,eax
 00448FDF    mov         eax,ebx
 00448FE1    mov         edx,dword ptr ds:[438E84];TRttiInstanceType
 00448FE7    call        @IsClass
 00448FEC    pop         ebx
 00448FED    ret
*}
end;

//00448FF0
function TRttiType.GetIsManaged:Boolean;
begin
{*
 00448FF0    push        ebx
 00448FF1    mov         ebx,eax
 00448FF3    mov         eax,ebx
 00448FF5    call        TRttiType.GetHandle
 00448FFA    call        IsManaged
 00448FFF    pop         ebx
 00449000    ret
*}
end;

//00449004
function TRttiType.GetIsOrdinal:Boolean;
begin
{*
 00449004    push        ebx
 00449005    mov         ebx,eax
 00449007    mov         eax,ebx
 00449009    mov         edx,dword ptr ds:[439534];TRttiOrdinalType
 0044900F    call        @IsClass
 00449014    pop         ebx
 00449015    ret
*}
end;

//00449018
function TRttiType.GetIsRecord:Boolean;
begin
{*
 00449018    push        ebx
 00449019    mov         ebx,eax
 0044901B    mov         eax,ebx
 0044901D    mov         edx,dword ptr ds:[437550];TRttiRecordType
 00449023    call        @IsClass
 00449028    pop         ebx
 00449029    ret
*}
end;

//0044902C
function TRttiType.GetIsSet:Boolean;
begin
{*
 0044902C    push        ebx
 0044902D    mov         ebx,eax
 0044902F    mov         eax,ebx
 00449031    mov         edx,dword ptr ds:[43A078];TRttiSetType
 00449037    call        @IsClass
 0044903C    pop         ebx
 0044903D    ret
*}
end;

//00449040
{*function sub_00449040:?;
begin
 00449040    xor         eax,eax
 00449042    ret
end;*}

//00449044
{*function sub_00449044:?;
begin
 00449044    xor         eax,eax
 00449046    ret
end;*}

//00449048
{*function sub_00449048:?;
begin
 00449048    xor         eax,eax
 0044904A    ret
end;*}

//0044904C
function TRttiType.GetMethod(AName:string):TRttiMethod;
begin
{*
 0044904C    push        ebp
 0044904D    mov         ebp,esp
 0044904F    add         esp,0FFFFFFE8
 00449052    push        ebx
 00449053    push        esi
 00449054    push        edi
 00449055    xor         ecx,ecx
 00449057    mov         dword ptr [ebp-14],ecx
 0044905A    mov         dword ptr [ebp-4],ecx
 0044905D    mov         esi,edx
 0044905F    mov         ebx,eax
 00449061    xor         eax,eax
 00449063    push        ebp
 00449064    push        449111
 00449069    push        dword ptr fs:[eax]
 0044906C    mov         dword ptr fs:[eax],esp
 0044906F    lea         edx,[ebp-4]
 00449072    mov         eax,ebx
 00449074    mov         ecx,dword ptr [eax]
 00449076    call        dword ptr [ecx+20];TRttiType.GetMethods
 00449079    xor         edi,edi
>0044907B    jmp         004490CE
 0044907D    mov         eax,dword ptr [ebp-4]
 00449080    mov         eax,dword ptr [eax+edi*4]
 00449083    mov         dword ptr [ebp-0C],eax
 00449086    lea         edx,[ebp-14]
 00449089    mov         eax,dword ptr [ebp-0C]
 0044908C    mov         ecx,dword ptr [eax]
 0044908E    call        dword ptr [ecx+8]
 00449091    mov         ebx,dword ptr [ebp-14]
 00449094    cmp         ebx,esi
>00449096    jne         0044909E
 00449098    mov         byte ptr [ebp-0D],1
>0044909C    jmp         004490BF
 0044909E    test        ebx,ebx
>004490A0    je          004490A6
 004490A2    test        esi,esi
>004490A4    jne         004490AC
 004490A6    mov         byte ptr [ebp-0D],0
>004490AA    jmp         004490BF
 004490AC    mov         edx,esi
 004490AE    mov         dword ptr [ebp-18],ebx
 004490B1    mov         eax,dword ptr [ebp-18]
 004490B4    call        CompareText
 004490B9    test        eax,eax
 004490BB    sete        byte ptr [ebp-0D]
 004490BF    cmp         byte ptr [ebp-0D],0
>004490C3    je          004490CD
 004490C5    mov         eax,dword ptr [ebp-0C]
 004490C8    mov         dword ptr [ebp-8],eax
>004490CB    jmp         004490ED
 004490CD    inc         edi
 004490CE    mov         eax,dword ptr [ebp-4]
 004490D1    call        0040ABA8
 004490D6    cmp         edi,eax
>004490D8    jl          0044907D
 004490DA    lea         eax,[ebp-4]
 004490DD    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 004490E3    call        @DynArrayClear
 004490E8    xor         eax,eax
 004490EA    mov         dword ptr [ebp-8],eax
 004490ED    xor         eax,eax
 004490EF    pop         edx
 004490F0    pop         ecx
 004490F1    pop         ecx
 004490F2    mov         dword ptr fs:[eax],edx
 004490F5    push        449118
 004490FA    lea         eax,[ebp-14]
 004490FD    call        @UStrClr
 00449102    lea         eax,[ebp-4]
 00449105    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044910B    call        @DynArrayClear
 00449110    ret
>00449111    jmp         @HandleFinally
>00449116    jmp         004490FA
 00449118    mov         eax,dword ptr [ebp-8]
 0044911B    pop         edi
 0044911C    pop         esi
 0044911D    pop         ebx
 0044911E    mov         esp,ebp
 00449120    pop         ebp
 00449121    ret
*}
end;

//00449124
{*procedure TRttiType.GetMethods(AName:string; ?:?);
begin
 00449124    push        ebp
 00449125    mov         ebp,esp
 00449127    add         esp,0FFFFFFD8
 0044912A    push        ebx
 0044912B    push        esi
 0044912C    push        edi
 0044912D    xor         ebx,ebx
 0044912F    mov         dword ptr [ebp-28],ebx
 00449132    mov         dword ptr [ebp-20],ebx
 00449135    mov         dword ptr [ebp-4],ebx
 00449138    mov         dword ptr [ebp-8],ebx
 0044913B    mov         dword ptr [ebp-0C],ebx
 0044913E    mov         dword ptr [ebp-10],ecx
 00449141    mov         ebx,edx
 00449143    mov         esi,eax
 00449145    xor         eax,eax
 00449147    push        ebp
 00449148    push        4492CF
 0044914D    push        dword ptr fs:[eax]
 00449150    mov         dword ptr fs:[eax],esp
 00449153    lea         edx,[ebp-4]
 00449156    mov         eax,esi
 00449158    mov         ecx,dword ptr [eax]
 0044915A    call        dword ptr [ecx+20];TRttiType.GetMethods
 0044915D    xor         eax,eax
 0044915F    mov         dword ptr [ebp-18],eax
 00449162    lea         eax,[ebp-8]
 00449165    mov         edx,dword ptr [ebp-4]
 00449168    mov         ecx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044916E    call        @DynArrayAsg
 00449173    xor         esi,esi
>00449175    jmp         004491C3
 00449177    mov         eax,dword ptr [ebp-8]
 0044917A    mov         eax,dword ptr [eax+esi*4]
 0044917D    mov         dword ptr [ebp-14],eax
 00449180    lea         edx,[ebp-20]
 00449183    mov         eax,dword ptr [ebp-14]
 00449186    mov         ecx,dword ptr [eax]
 00449188    call        dword ptr [ecx+8]
 0044918B    mov         edi,dword ptr [ebp-20]
 0044918E    cmp         edi,ebx
>00449190    jne         00449198
 00449192    mov         byte ptr [ebp-19],1
>00449196    jmp         004491B9
 00449198    test        edi,edi
>0044919A    je          004491A0
 0044919C    test        ebx,ebx
>0044919E    jne         004491A6
 004491A0    mov         byte ptr [ebp-19],0
>004491A4    jmp         004491B9
 004491A6    mov         edx,ebx
 004491A8    mov         dword ptr [ebp-24],edi
 004491AB    mov         eax,dword ptr [ebp-24]
 004491AE    call        CompareText
 004491B3    test        eax,eax
 004491B5    sete        byte ptr [ebp-19]
 004491B9    cmp         byte ptr [ebp-19],0
>004491BD    je          004491C2
 004491BF    inc         dword ptr [ebp-18]
 004491C2    inc         esi
 004491C3    mov         eax,dword ptr [ebp-8]
 004491C6    call        0040ABA8
 004491CB    cmp         esi,eax
>004491CD    jl          00449177
 004491CF    lea         eax,[ebp-8]
 004491D2    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 004491D8    call        @DynArrayClear
 004491DD    cmp         dword ptr [ebp-18],0
>004491E1    jne         004491F6
 004491E3    mov         eax,dword ptr [ebp-10]
 004491E6    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 004491EC    call        @DynArrayClear
>004491F1    jmp         0044929E
 004491F6    mov         eax,dword ptr [ebp-18]
 004491F9    push        eax
 004491FA    mov         eax,dword ptr [ebp-10]
 004491FD    mov         ecx,1
 00449202    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00449208    call        @DynArraySetLength
 0044920D    add         esp,4
 00449210    xor         eax,eax
 00449212    mov         dword ptr [ebp-18],eax
 00449215    lea         eax,[ebp-0C]
 00449218    mov         edx,dword ptr [ebp-4]
 0044921B    mov         ecx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00449221    call        @DynArrayAsg
 00449226    xor         esi,esi
>00449228    jmp         00449284
 0044922A    mov         eax,dword ptr [ebp-0C]
 0044922D    mov         eax,dword ptr [eax+esi*4]
 00449230    mov         dword ptr [ebp-14],eax
 00449233    lea         edx,[ebp-28]
 00449236    mov         eax,dword ptr [ebp-14]
 00449239    mov         ecx,dword ptr [eax]
 0044923B    call        dword ptr [ecx+8]
 0044923E    mov         edi,dword ptr [ebp-28]
 00449241    cmp         edi,ebx
>00449243    jne         0044924B
 00449245    mov         byte ptr [ebp-1A],1
>00449249    jmp         0044926C
 0044924B    test        edi,edi
>0044924D    je          00449253
 0044924F    test        ebx,ebx
>00449251    jne         00449259
 00449253    mov         byte ptr [ebp-1A],0
>00449257    jmp         0044926C
 00449259    mov         edx,ebx
 0044925B    mov         dword ptr [ebp-24],edi
 0044925E    mov         eax,dword ptr [ebp-24]
 00449261    call        CompareText
 00449266    test        eax,eax
 00449268    sete        byte ptr [ebp-1A]
 0044926C    cmp         byte ptr [ebp-1A],0
>00449270    je          00449283
 00449272    mov         eax,dword ptr [ebp-10]
 00449275    mov         eax,dword ptr [eax]
 00449277    mov         edx,dword ptr [ebp-18]
 0044927A    mov         ecx,dword ptr [ebp-14]
 0044927D    mov         dword ptr [eax+edx*4],ecx
 00449280    inc         dword ptr [ebp-18]
 00449283    inc         esi
 00449284    mov         eax,dword ptr [ebp-0C]
 00449287    call        0040ABA8
 0044928C    cmp         esi,eax
>0044928E    jl          0044922A
 00449290    lea         eax,[ebp-0C]
 00449293    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00449299    call        @DynArrayClear
 0044929E    xor         eax,eax
 004492A0    pop         edx
 004492A1    pop         ecx
 004492A2    pop         ecx
 004492A3    mov         dword ptr fs:[eax],edx
 004492A6    push        4492D6
 004492AB    lea         eax,[ebp-28]
 004492AE    call        @UStrClr
 004492B3    lea         eax,[ebp-20]
 004492B6    call        @UStrClr
 004492BB    lea         eax,[ebp-0C]
 004492BE    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 004492C4    mov         ecx,3
 004492C9    call        @FinalizeArray
 004492CE    ret
>004492CF    jmp         @HandleFinally
>004492D4    jmp         004492AB
 004492D6    pop         edi
 004492D7    pop         esi
 004492D8    pop         ebx
 004492D9    mov         esp,ebp
 004492DB    pop         ebp
 004492DC    ret
end;*}

//004492E0
{*procedure TRttiType.GetMethods(?:?);
begin
 004492E0    push        ebp
 004492E1    mov         ebp,esp
 004492E3    push        0
 004492E5    push        0
 004492E7    push        0
 004492E9    push        ebx
 004492EA    push        esi
 004492EB    push        edi
 004492EC    mov         dword ptr [ebp-8],edx
 004492EF    mov         edi,eax
 004492F1    xor         eax,eax
 004492F3    push        ebp
 004492F4    push        4493A4
 004492F9    push        dword ptr fs:[eax]
 004492FC    mov         dword ptr fs:[eax],esp
 004492FF    mov         ebx,edi
 00449301    xor         esi,esi
 00449303    test        ebx,ebx
>00449305    je          00449315
 00449307    inc         esi
 00449308    mov         eax,ebx
 0044930A    mov         edx,dword ptr [eax]
 0044930C    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 0044930F    mov         ebx,eax
 00449311    test        ebx,ebx
>00449313    jne         00449307
 00449315    push        esi
 00449316    lea         eax,[ebp-4]
 00449319    mov         ecx,1
 0044931E    mov         edx,dword ptr ds:[44979C];TArray<System.TArray<System.Rtti.TRttiMethod>>
 00449324    call        @DynArraySetLength
 00449329    add         esp,4
 0044932C    mov         ebx,edi
 0044932E    xor         esi,esi
 00449330    test        ebx,ebx
>00449332    je          00449360
 00449334    lea         edx,[ebp-0C]
 00449337    mov         eax,ebx
 00449339    mov         ecx,dword ptr [eax]
 0044933B    call        dword ptr [ecx+44];TRttiType.GetDeclaredFields
 0044933E    mov         edx,dword ptr [ebp-0C]
 00449341    mov         eax,dword ptr [ebp-4]
 00449344    lea         eax,[eax+esi*4]
 00449347    mov         ecx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044934D    call        @DynArrayAsg
 00449352    inc         esi
 00449353    mov         eax,ebx
 00449355    mov         edx,dword ptr [eax]
 00449357    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 0044935A    mov         ebx,eax
 0044935C    test        ebx,ebx
>0044935E    jne         00449334
 00449360    mov         ebx,dword ptr [ebp-4]
 00449363    test        ebx,ebx
>00449365    je          0044936C
 00449367    sub         ebx,4
 0044936A    mov         ebx,dword ptr [ebx]
 0044936C    mov         ecx,dword ptr [ebp-8]
 0044936F    mov         edx,ebx
 00449371    dec         edx
 00449372    mov         eax,dword ptr [ebp-4]
 00449375    call        TArrayHelper.Concat<System.Rtti.TRttiMethod>
 0044937A    xor         eax,eax
 0044937C    pop         edx
 0044937D    pop         ecx
 0044937E    pop         ecx
 0044937F    mov         dword ptr fs:[eax],edx
 00449382    push        4493AB
 00449387    lea         eax,[ebp-0C]
 0044938A    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00449390    call        @DynArrayClear
 00449395    lea         eax,[ebp-4]
 00449398    mov         edx,dword ptr ds:[44979C];TArray<System.TArray<System.Rtti.TRttiMethod>>
 0044939E    call        @DynArrayClear
 004493A3    ret
>004493A4    jmp         @HandleFinally
>004493A9    jmp         00449387
 004493AB    pop         edi
 004493AC    pop         esi
 004493AD    pop         ebx
 004493AE    mov         esp,ebp
 004493B0    pop         ebp
 004493B1    ret
end;*}

//004493B4
function TRttiType.GetName:UnicodeString;
begin
{*
 004493B4    push        ebx
 004493B5    push        esi
 004493B6    push        ecx
 004493B7    mov         esi,edx
 004493B9    mov         ebx,eax
 004493BB    mov         eax,ebx
 004493BD    call        TRttiType.GetHandle
 004493C2    call        TTypeInfo.NameFld
 004493C7    mov         dword ptr [esp],eax
 004493CA    mov         eax,esp
 004493CC    mov         edx,esi
 004493CE    call        TTypeInfoFieldAccessor.ToString
 004493D3    pop         edx
 004493D4    pop         esi
 004493D5    pop         ebx
 004493D6    ret
*}
end;

//004493D8
{*procedure TRttiType.GetProperties(?:?);
begin
 004493D8    push        ebp
 004493D9    mov         ebp,esp
 004493DB    push        0
 004493DD    push        0
 004493DF    push        0
 004493E1    push        ebx
 004493E2    push        esi
 004493E3    push        edi
 004493E4    mov         dword ptr [ebp-8],edx
 004493E7    mov         edi,eax
 004493E9    xor         eax,eax
 004493EB    push        ebp
 004493EC    push        44949C
 004493F1    push        dword ptr fs:[eax]
 004493F4    mov         dword ptr fs:[eax],esp
 004493F7    mov         ebx,edi
 004493F9    xor         esi,esi
 004493FB    test        ebx,ebx
>004493FD    je          0044940D
 004493FF    inc         esi
 00449400    mov         eax,ebx
 00449402    mov         edx,dword ptr [eax]
 00449404    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 00449407    mov         ebx,eax
 00449409    test        ebx,ebx
>0044940B    jne         004493FF
 0044940D    push        esi
 0044940E    lea         eax,[ebp-4]
 00449411    mov         ecx,1
 00449416    mov         edx,dword ptr ds:[4497F0];TArray<System.TArray<System.Rtti.TRttiProperty>>
 0044941C    call        @DynArraySetLength
 00449421    add         esp,4
 00449424    mov         ebx,edi
 00449426    xor         esi,esi
 00449428    test        ebx,ebx
>0044942A    je          00449458
 0044942C    lea         edx,[ebp-0C]
 0044942F    mov         eax,ebx
 00449431    mov         ecx,dword ptr [eax]
 00449433    call        dword ptr [ecx+48];TRttiType.GetDeclaredIndexedProperties
 00449436    mov         edx,dword ptr [ebp-0C]
 00449439    mov         eax,dword ptr [ebp-4]
 0044943C    lea         eax,[eax+esi*4]
 0044943F    mov         ecx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00449445    call        @DynArrayAsg
 0044944A    inc         esi
 0044944B    mov         eax,ebx
 0044944D    mov         edx,dword ptr [eax]
 0044944F    call        dword ptr [edx+1C];TRttiType.sub_0044969C
 00449452    mov         ebx,eax
 00449454    test        ebx,ebx
>00449456    jne         0044942C
 00449458    mov         ebx,dword ptr [ebp-4]
 0044945B    test        ebx,ebx
>0044945D    je          00449464
 0044945F    sub         ebx,4
 00449462    mov         ebx,dword ptr [ebx]
 00449464    mov         ecx,dword ptr [ebp-8]
 00449467    mov         edx,ebx
 00449469    dec         edx
 0044946A    mov         eax,dword ptr [ebp-4]
 0044946D    call        00459C80
 00449472    xor         eax,eax
 00449474    pop         edx
 00449475    pop         ecx
 00449476    pop         ecx
 00449477    mov         dword ptr fs:[eax],edx
 0044947A    push        4494A3
 0044947F    lea         eax,[ebp-0C]
 00449482    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00449488    call        @DynArrayClear
 0044948D    lea         eax,[ebp-4]
 00449490    mov         edx,dword ptr ds:[4497F0];TArray<System.TArray<System.Rtti.TRttiProperty>>
 00449496    call        @DynArrayClear
 0044949B    ret
>0044949C    jmp         @HandleFinally
>004494A1    jmp         0044947F
 004494A3    pop         edi
 004494A4    pop         esi
 004494A5    pop         ebx
 004494A6    mov         esp,ebp
 004494A8    pop         ebp
 004494A9    ret
end;*}

//004494AC
function TRttiType.GetProperty(AName:string):TRttiProperty;
begin
{*
 004494AC    push        ebp
 004494AD    mov         ebp,esp
 004494AF    add         esp,0FFFFFFE8
 004494B2    push        ebx
 004494B3    push        esi
 004494B4    push        edi
 004494B5    xor         ecx,ecx
 004494B7    mov         dword ptr [ebp-14],ecx
 004494BA    mov         dword ptr [ebp-4],ecx
 004494BD    mov         esi,edx
 004494BF    mov         ebx,eax
 004494C1    xor         eax,eax
 004494C3    push        ebp
 004494C4    push        449571
 004494C9    push        dword ptr fs:[eax]
 004494CC    mov         dword ptr fs:[eax],esp
 004494CF    lea         edx,[ebp-4]
 004494D2    mov         eax,ebx
 004494D4    mov         ecx,dword ptr [eax]
 004494D6    call        dword ptr [ecx+28];TRttiType.GetProperties
 004494D9    xor         edi,edi
>004494DB    jmp         0044952E
 004494DD    mov         eax,dword ptr [ebp-4]
 004494E0    mov         eax,dword ptr [eax+edi*4]
 004494E3    mov         dword ptr [ebp-0C],eax
 004494E6    lea         edx,[ebp-14]
 004494E9    mov         eax,dword ptr [ebp-0C]
 004494EC    mov         ecx,dword ptr [eax]
 004494EE    call        dword ptr [ecx+8]
 004494F1    mov         ebx,dword ptr [ebp-14]
 004494F4    cmp         ebx,esi
>004494F6    jne         004494FE
 004494F8    mov         byte ptr [ebp-0D],1
>004494FC    jmp         0044951F
 004494FE    test        ebx,ebx
>00449500    je          00449506
 00449502    test        esi,esi
>00449504    jne         0044950C
 00449506    mov         byte ptr [ebp-0D],0
>0044950A    jmp         0044951F
 0044950C    mov         edx,esi
 0044950E    mov         dword ptr [ebp-18],ebx
 00449511    mov         eax,dword ptr [ebp-18]
 00449514    call        CompareText
 00449519    test        eax,eax
 0044951B    sete        byte ptr [ebp-0D]
 0044951F    cmp         byte ptr [ebp-0D],0
>00449523    je          0044952D
 00449525    mov         eax,dword ptr [ebp-0C]
 00449528    mov         dword ptr [ebp-8],eax
>0044952B    jmp         0044954D
 0044952D    inc         edi
 0044952E    mov         eax,dword ptr [ebp-4]
 00449531    call        0040ABA8
 00449536    cmp         edi,eax
>00449538    jl          004494DD
 0044953A    lea         eax,[ebp-4]
 0044953D    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00449543    call        @DynArrayClear
 00449548    xor         eax,eax
 0044954A    mov         dword ptr [ebp-8],eax
 0044954D    xor         eax,eax
 0044954F    pop         edx
 00449550    pop         ecx
 00449551    pop         ecx
 00449552    mov         dword ptr fs:[eax],edx
 00449555    push        449578
 0044955A    lea         eax,[ebp-14]
 0044955D    call        @UStrClr
 00449562    lea         eax,[ebp-4]
 00449565    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044956B    call        @DynArrayClear
 00449570    ret
>00449571    jmp         @HandleFinally
>00449576    jmp         0044955A
 00449578    mov         eax,dword ptr [ebp-8]
 0044957B    pop         edi
 0044957C    pop         esi
 0044957D    pop         ebx
 0044957E    mov         esp,ebp
 00449580    pop         ebp
 00449581    ret
*}
end;

//00449584
function TRttiType.GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;
begin
{*
 00449584    push        ebx
 00449585    mov         ebx,edx
 00449587    mov         eax,ebx
 00449589    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044958F    call        @DynArrayClear
 00449594    pop         ebx
 00449595    ret
*}
end;

//00449598
function TRttiType.GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>;
begin
{*
 00449598    push        ebx
 00449599    mov         ebx,edx
 0044959B    mov         eax,ebx
 0044959D    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 004495A3    call        @DynArrayClear
 004495A8    pop         ebx
 004495A9    ret
*}
end;

//004495AC
function TRttiType.GetDeclaredFields:TArray<System.Rtti.TRttiField>;
begin
{*
 004495AC    push        ebx
 004495AD    mov         ebx,edx
 004495AF    mov         eax,ebx
 004495B1    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 004495B7    call        @DynArrayClear
 004495BC    pop         ebx
 004495BD    ret
*}
end;

//004495C0
function TRttiType.GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>;
begin
{*
 004495C0    push        ebx
 004495C1    mov         ebx,edx
 004495C3    mov         eax,ebx
 004495C5    mov         edx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 004495CB    call        @DynArrayClear
 004495D0    pop         ebx
 004495D1    ret
*}
end;

//004495D4
function TRttiType.GetTypeData:PTypeData;
begin
{*
 004495D4    push        ebx
 004495D5    mov         ebx,eax
 004495D7    mov         eax,ebx
 004495D9    call        TRttiType.GetHandle
 004495DE    call        GetTypeData
 004495E3    pop         ebx
 004495E4    ret
*}
end;

//004495E8
function TRttiType.GetTypeKind:TTypeKind;
begin
{*
 004495E8    push        ebx
 004495E9    mov         ebx,eax
 004495EB    mov         eax,ebx
 004495ED    call        TRttiType.GetHandle
 004495F2    movzx       eax,byte ptr [eax]
 004495F5    pop         ebx
 004495F6    ret
*}
end;

//004495F8
{*function sub_004495F8:?;
begin
 004495F8    mov         eax,4
 004495FD    ret
end;*}

//00449600
function TRttiType.ToString:string;
begin
{*
 00449600    push        ebx
 00449601    push        esi
 00449602    mov         esi,edx
 00449604    mov         ebx,eax
 00449606    mov         edx,esi
 00449608    mov         eax,ebx
 0044960A    mov         ecx,dword ptr [eax]
 0044960C    call        dword ptr [ecx+8]
 0044960F    pop         esi
 00449610    pop         ebx
 00449611    ret
*}
end;

//00449614
function TRttiType.GetQualifiedName:UnicodeString;
begin
{*
 00449614    push        ebp
 00449615    mov         ebp,esp
 00449617    add         esp,0FFFFFFF4
 0044961A    push        ebx
 0044961B    push        esi
 0044961C    push        edi
 0044961D    xor         ecx,ecx
 0044961F    mov         dword ptr [ebp-0C],ecx
 00449622    mov         esi,edx
 00449624    mov         ebx,eax
 00449626    xor         eax,eax
 00449628    push        ebp
 00449629    push        44968C
 0044962E    push        dword ptr fs:[eax]
 00449631    mov         dword ptr fs:[eax],esp
 00449634    mov         ecx,esi
 00449636    mov         edx,ebx
 00449638    mov         eax,dword ptr [ebx+0C]
 0044963B    mov         edi,dword ptr [eax]
 0044963D    call        dword ptr [edi+0C]
 00449640    cmp         dword ptr [esi],0
>00449643    jne         00449676
 00449645    lea         edx,[ebp-0C]
 00449648    mov         eax,ebx
 0044964A    mov         ecx,dword ptr [eax]
 0044964C    call        dword ptr [ecx+8]
 0044964F    mov         eax,dword ptr [ebp-0C]
 00449652    mov         dword ptr [ebp-8],eax
 00449655    mov         byte ptr [ebp-4],11
 00449659    lea         eax,[ebp-8]
 0044965C    push        eax
 0044965D    push        0
 0044965F    mov         ecx,dword ptr ds:[7C488C];^SResString177:TResStringRec
 00449665    mov         dl,1
 00449667    mov         eax,[00435B88];ENonPublicType
 0044966C    call        Exception.CreateResFmt
 00449671    call        @RaiseExcept
 00449676    xor         eax,eax
 00449678    pop         edx
 00449679    pop         ecx
 0044967A    pop         ecx
 0044967B    mov         dword ptr fs:[eax],edx
 0044967E    push        449693
 00449683    lea         eax,[ebp-0C]
 00449686    call        @UStrClr
 0044968B    ret
>0044968C    jmp         @HandleFinally
>00449691    jmp         00449683
 00449693    pop         edi
 00449694    pop         esi
 00449695    pop         ebx
 00449696    mov         esp,ebp
 00449698    pop         ebp
 00449699    ret
*}
end;

//0044969C
{*function sub_0044969C:?;
begin
 0044969C    xor         eax,eax
 0044969E    ret
end;*}

//004496A0
function TRttiType.GetIsPublicType:Boolean;
begin
{*
 004496A0    push        ebp
 004496A1    mov         ebp,esp
 004496A3    push        0
 004496A5    push        ebx
 004496A6    mov         ebx,eax
 004496A8    xor         eax,eax
 004496AA    push        ebp
 004496AB    push        4496E2
 004496B0    push        dword ptr fs:[eax]
 004496B3    mov         dword ptr fs:[eax],esp
 004496B6    lea         ecx,[ebp-4]
 004496B9    mov         edx,ebx
 004496BB    mov         eax,dword ptr [ebx+0C]
 004496BE    mov         ebx,dword ptr [eax]
 004496C0    call        dword ptr [ebx+0C]
 004496C3    cmp         dword ptr [ebp-4],0
 004496C7    setne       al
 004496CA    mov         ebx,eax
 004496CC    xor         eax,eax
 004496CE    pop         edx
 004496CF    pop         ecx
 004496D0    pop         ecx
 004496D1    mov         dword ptr fs:[eax],edx
 004496D4    push        4496E9
 004496D9    lea         eax,[ebp-4]
 004496DC    call        @UStrClr
 004496E1    ret
>004496E2    jmp         @HandleFinally
>004496E7    jmp         004496D9
 004496E9    mov         eax,ebx
 004496EB    pop         ebx
 004496EC    pop         ecx
 004496ED    pop         ebp
 004496EE    ret
*}
end;

//00449B7C
constructor TRttiInstanceMethodClassic.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00449B7C    push        ebp
 00449B7D    mov         ebp,esp
 00449B7F    add         esp,0FFFFFFE0
 00449B82    push        ebx
 00449B83    push        esi
 00449B84    push        edi
 00449B85    xor         ebx,ebx
 00449B87    mov         dword ptr [ebp-20],ebx
 00449B8A    test        dl,dl
>00449B8C    je          00449B96
 00449B8E    add         esp,0FFFFFFF0
 00449B91    call        @ClassCreate
 00449B96    mov         dword ptr [ebp-8],ecx
 00449B99    mov         byte ptr [ebp-1],dl
 00449B9C    mov         ebx,eax
 00449B9E    mov         esi,dword ptr [ebp+8]
 00449BA1    xor         eax,eax
 00449BA3    push        ebp
 00449BA4    push        449CF2
 00449BA9    push        dword ptr fs:[eax]
 00449BAC    mov         dword ptr fs:[eax],esp
 00449BAF    mov         eax,dword ptr [ebp+0C]
 00449BB2    push        eax
 00449BB3    push        esi
 00449BB4    mov         ecx,dword ptr [ebp-8]
 00449BB7    xor         edx,edx
 00449BB9    mov         eax,ebx
 00449BBB    call        TRttiObject.Create
 00449BC0    mov         eax,ebx
 00449BC2    call        TProcParam.GetHandle
 00449BC7    movzx       edi,word ptr [eax]
 00449BCA    add         edi,dword ptr [esi]
 00449BCC    mov         eax,ebx
 00449BCE    call        TProcParam.GetHandle
 00449BD3    call        TVmtMethodEntry.Tail
 00449BD8    mov         dword ptr [esi],eax
 00449BDA    cmp         edi,dword ptr [esi]
>00449BDC    je          00449CDC
 00449BE2    mov         edi,dword ptr [esi]
 00449BE4    mov         dword ptr [ebx+1C],edi;TRttiInstanceMethodClassic.FTail:PVmtMethodEntryTail
 00449BE7    mov         eax,dword ptr [edi+2]
 00449BEA    call        0043EB94
 00449BEF    mov         dword ptr [ebx+20],eax;TRttiInstanceMethodClassic.FReturnType:PTypeInfo
 00449BF2    mov         eax,dword ptr [ebx+1C];TRttiInstanceMethodClassic.FTail:PVmtMethodEntryTail
 00449BF5    movzx       eax,byte ptr [eax+8]
 00449BF9    push        eax
 00449BFA    lea         eax,[ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParameter>
 00449BFD    mov         ecx,1
 00449C02    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00449C08    call        @DynArraySetLength
 00449C0D    add         esp,4
 00449C10    mov         eax,dword ptr [ebx+1C];TRttiInstanceMethodClassic.FTail:PVmtMethodEntryTail
 00449C13    add         eax,8
 00449C16    inc         eax
 00449C17    mov         dword ptr [esi],eax
 00449C19    mov         eax,dword ptr [ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449C1C    mov         dword ptr [ebp-10],eax
 00449C1F    mov         eax,dword ptr [ebp-10]
 00449C22    test        eax,eax
>00449C24    je          00449C2B
 00449C26    sub         eax,4
 00449C29    mov         eax,dword ptr [eax]
 00449C2B    mov         edi,eax
 00449C2D    dec         edi
 00449C2E    test        edi,edi
>00449C30    jl          00449C65
 00449C32    inc         edi
 00449C33    mov         dword ptr [ebp-0C],0
 00449C3A    push        esi
 00449C3B    mov         ecx,ebx
 00449C3D    mov         edx,dword ptr ds:[449A24];TRttiInstMethParameter
 00449C43    mov         eax,dword ptr [ebp-8]
 00449C46    call        TRttiPackage.ReadObject
 00449C4B    mov         edx,dword ptr ds:[449A24];TRttiInstMethParameter
 00449C51    call        @AsClass
 00449C56    mov         edx,dword ptr [ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449C59    mov         ecx,dword ptr [ebp-0C]
 00449C5C    mov         dword ptr [edx+ecx*4],eax
 00449C5F    inc         dword ptr [ebp-0C]
 00449C62    dec         edi
>00449C63    jne         00449C3A
 00449C65    mov         eax,dword ptr [ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449C68    mov         dword ptr [ebp-14],eax
 00449C6B    mov         eax,dword ptr [ebp-14]
 00449C6E    test        eax,eax
>00449C70    je          00449C77
 00449C72    sub         eax,4
 00449C75    mov         eax,dword ptr [eax]
 00449C77    test        eax,eax
>00449C79    jle         00449CC7
 00449C7B    mov         eax,dword ptr [ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449C7E    mov         dword ptr [ebp-18],eax
 00449C81    mov         edi,dword ptr [ebp-18]
 00449C84    test        edi,edi
>00449C86    je          00449C8D
 00449C88    sub         edi,4
 00449C8B    mov         edi,dword ptr [edi]
 00449C8D    mov         eax,dword ptr [ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449C90    mov         eax,dword ptr [eax+edi*4-4]
 00449C94    mov         edx,dword ptr [eax]
 00449C96    call        dword ptr [edx+0C]
 00449C99    test        al,40
>00449C9B    je          00449CC7
 00449C9D    mov         eax,dword ptr [ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449CA0    mov         dword ptr [ebp-1C],eax
 00449CA3    mov         edi,dword ptr [ebp-1C]
 00449CA6    test        edi,edi
>00449CA8    je          00449CAF
 00449CAA    sub         edi,4
 00449CAD    mov         edi,dword ptr [edi]
 00449CAF    dec         edi
 00449CB0    push        edi
 00449CB1    lea         eax,[ebx+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParameter>
 00449CB4    mov         ecx,1
 00449CB9    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00449CBF    call        @DynArraySetLength
 00449CC4    add         esp,4
 00449CC7    lea         edx,[ebp-20]
 00449CCA    mov         eax,esi
 00449CCC    call        LazyLoadAttributes
 00449CD1    mov         edx,dword ptr [ebp-20]
 00449CD4    lea         eax,[ebx+14];TRttiInstanceMethodClassic.FAttributeGetter:TFunc<System.TArray<System.TCus...
 00449CD7    call        @IntfCopy
 00449CDC    xor         eax,eax
 00449CDE    pop         edx
 00449CDF    pop         ecx
 00449CE0    pop         ecx
 00449CE1    mov         dword ptr fs:[eax],edx
 00449CE4    push        449CF9
 00449CE9    lea         eax,[ebp-20]
 00449CEC    call        @IntfClear
 00449CF1    ret
>00449CF2    jmp         @HandleFinally
>00449CF7    jmp         00449CE9
 00449CF9    mov         eax,ebx
 00449CFB    cmp         byte ptr [ebp-1],0
>00449CFF    je          00449D10
 00449D01    call        @AfterConstruction
 00449D06    pop         dword ptr fs:[0]
 00449D0D    add         esp,0C
 00449D10    mov         eax,ebx
 00449D12    pop         edi
 00449D13    pop         esi
 00449D14    pop         ebx
 00449D15    mov         esp,ebp
 00449D17    pop         ebp
 00449D18    ret         8
*}
end;

//00449D1C
{*procedure TRttiInstanceMethodClassic.GetParameters(?:?);
begin
 00449D1C    push        ebx
 00449D1D    push        esi
 00449D1E    push        edi
 00449D1F    push        ecx
 00449D20    mov         edi,edx
 00449D22    mov         esi,eax
 00449D24    mov         eax,dword ptr [esi+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449D27    mov         dword ptr [esp],eax
 00449D2A    mov         ebx,dword ptr [esp]
 00449D2D    test        ebx,ebx
>00449D2F    je          00449D36
 00449D31    sub         ebx,4
 00449D34    mov         ebx,dword ptr [ebx]
 00449D36    dec         ebx
 00449D37    push        ebx
 00449D38    push        edi
 00449D39    mov         ecx,1
 00449D3E    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00449D44    mov         eax,dword ptr [esi+24];TRttiInstanceMethodClassic.FParams:TArray<System.Rtti.TRttiParame...
 00449D47    call        @DynArrayCopyRange
 00449D4C    pop         edx
 00449D4D    pop         edi
 00449D4E    pop         esi
 00449D4F    pop         ebx
 00449D50    ret
end;*}

//00449D54
{*procedure sub_00449D54(?:?; ?:?; ?:?);
begin
 00449D54    push        ebp
 00449D55    mov         ebp,esp
 00449D57    add         esp,0FFFFFF70
 00449D5D    push        ebx
 00449D5E    push        esi
 00449D5F    push        edi
 00449D60    xor         ebx,ebx
 00449D62    mov         dword ptr [ebp-4],ebx
 00449D65    mov         dword ptr [ebp-8],ebx
 00449D68    mov         esi,edx
 00449D6A    lea         edi,[ebp-20]
 00449D6D    push        ecx
 00449D6E    mov         ecx,6
 00449D73    rep movs    dword ptr [edi],dword ptr [esi]
 00449D75    pop         ecx
 00449D76    mov         dword ptr [ebp-88],ecx
 00449D7C    mov         dword ptr [ebp-84],eax
 00449D82    lea         eax,[ebp-20]
 00449D85    mov         edx,dword ptr ds:[435E20];TValue
 00449D8B    call        @InitializeRecord
 00449D90    lea         eax,[ebp-38]
 00449D93    mov         edx,dword ptr ds:[435E20];TValue
 00449D99    call        @AddRefRecord
 00449D9E    lea         eax,[ebp-50]
 00449DA1    mov         edx,dword ptr ds:[435E20];TValue
 00449DA7    call        @AddRefRecord
 00449DAC    lea         eax,[ebp-68]
 00449DAF    mov         edx,dword ptr ds:[435E20];TValue
 00449DB5    call        @AddRefRecord
 00449DBA    lea         eax,[ebp-80]
 00449DBD    mov         edx,dword ptr ds:[435E20];TValue
 00449DC3    call        @AddRefRecord
 00449DC8    xor         eax,eax
 00449DCA    push        ebp
 00449DCB    push        44A1FC
 00449DD0    push        dword ptr fs:[eax]
 00449DD3    mov         dword ptr fs:[eax],esp
 00449DD6    lea         edx,[ebp-8]
 00449DD9    mov         eax,dword ptr [ebp-84]
 00449DDF    mov         ecx,dword ptr [eax]
 00449DE1    call        dword ptr [ecx+38];TRttiInstanceMethodClassic.GetParameters
 00449DE4    mov         ebx,dword ptr [ebp+0C]
 00449DE7    inc         ebx
 00449DE8    mov         eax,dword ptr [ebp-8]
 00449DEB    test        eax,eax
>00449DED    je          00449DF4
 00449DEF    sub         eax,4
 00449DF2    mov         eax,dword ptr [eax]
 00449DF4    cmp         eax,ebx
>00449DF6    je          00449E0F
 00449DF8    mov         ecx,dword ptr ds:[7C42A4];^SResString176:TResStringRec
 00449DFE    mov         dl,1
 00449E00    mov         eax,[00435ADC];EInvocationError
 00449E05    call        Exception.CreateRes;EInvocationError.Create
 00449E0A    call        @RaiseExcept
 00449E0F    mov         eax,dword ptr [ebp-84]
 00449E15    call        TRttiMethod.GetIsConstructor
 00449E1A    test        al,al
>00449E1C    je          00449E1F
 00449E1E    inc         ebx
 00449E1F    mov         eax,dword ptr [ebp-84]
 00449E25    mov         edx,dword ptr [eax]
 00449E27    call        dword ptr [edx+30];TRttiInstanceMethodClassic.sub_00453C68
 00449E2A    test        al,al
>00449E2C    jne         00449E2F
 00449E2E    inc         ebx
 00449E2F    push        ebx
 00449E30    lea         eax,[ebp-4]
 00449E33    mov         ecx,1
 00449E38    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00449E3E    call        @DynArraySetLength
 00449E43    add         esp,4
 00449E46    xor         eax,eax
 00449E48    mov         dword ptr [ebp-8C],eax
 00449E4E    xor         eax,eax
 00449E50    mov         dword ptr [ebp-90],eax
 00449E56    mov         eax,dword ptr [ebp-84]
 00449E5C    mov         edx,dword ptr [eax]
 00449E5E    call        dword ptr [edx+30];TRttiInstanceMethodClassic.sub_00453C68
 00449E61    test        al,al
>00449E63    jne         00449F86
 00449E69    mov         eax,dword ptr [ebp-84]
 00449E6F    mov         edx,dword ptr [eax]
 00449E71    call        dword ptr [edx+2C];TRttiMethod.GetIsClassMethod
 00449E74    test        al,al
>00449E76    je          00449EFE
 00449E7C    lea         eax,[ebp-20]
 00449E7F    call        0043FA7C
 00449E84    mov         dword ptr [ebp-90],eax
 00449E8A    mov         eax,dword ptr [ebp-84]
 00449E90    mov         edx,dword ptr [eax]
 00449E92    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 00449E95    mov         ebx,eax
 00449E97    lea         edx,[ebp-38]
 00449E9A    mov         eax,dword ptr [ebp-90]
 00449EA0    call        TValue.&op_Implicit
 00449EA5    xor         eax,eax
 00449EA7    push        ebp
 00449EA8    push        449EF7
 00449EAD    push        dword ptr fs:[eax]
 00449EB0    mov         dword ptr fs:[eax],esp
 00449EB3    cmp         bl,2
>00449EB6    je          00449EDB
 00449EB8    mov         eax,dword ptr [ebp-8C]
 00449EBE    lea         eax,[eax+eax*2]
 00449EC1    mov         edx,dword ptr [ebp-4]
 00449EC4    lea         eax,[edx+eax*8]
 00449EC7    lea         edx,[ebp-38]
 00449ECA    mov         ecx,dword ptr ds:[435E20];TValue
 00449ED0    call        @CopyRecord
 00449ED5    inc         dword ptr [ebp-8C]
 00449EDB    xor         eax,eax
 00449EDD    pop         edx
 00449EDE    pop         ecx
 00449EDF    pop         ecx
 00449EE0    mov         dword ptr fs:[eax],edx
 00449EE3    push        449F86
 00449EE8    lea         eax,[ebp-38]
 00449EEB    mov         edx,dword ptr ds:[435E20];TValue
 00449EF1    call        @FinalizeRecord
 00449EF6    ret
>00449EF7    jmp         @HandleFinally
>00449EFC    jmp         00449EE8
 00449EFE    lea         eax,[ebp-20]
 00449F01    call        0043FA24
 00449F06    mov         eax,dword ptr [eax]
 00449F08    mov         edx,eax
 00449F0A    mov         dword ptr [ebp-90],edx
 00449F10    mov         eax,dword ptr [ebp-84]
 00449F16    mov         edx,dword ptr [eax]
 00449F18    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 00449F1B    mov         ebx,eax
 00449F1D    lea         eax,[ebp-20]
 00449F20    call        0043FA24
 00449F25    lea         edx,[ebp-50]
 00449F28    call        0043F970
 00449F2D    xor         eax,eax
 00449F2F    push        ebp
 00449F30    push        449F7F
 00449F35    push        dword ptr fs:[eax]
 00449F38    mov         dword ptr fs:[eax],esp
 00449F3B    cmp         bl,2
>00449F3E    je          00449F63
 00449F40    mov         eax,dword ptr [ebp-8C]
 00449F46    lea         eax,[eax+eax*2]
 00449F49    mov         edx,dword ptr [ebp-4]
 00449F4C    lea         eax,[edx+eax*8]
 00449F4F    lea         edx,[ebp-50]
 00449F52    mov         ecx,dword ptr ds:[435E20];TValue
 00449F58    call        @CopyRecord
 00449F5D    inc         dword ptr [ebp-8C]
 00449F63    xor         eax,eax
 00449F65    pop         edx
 00449F66    pop         ecx
 00449F67    pop         ecx
 00449F68    mov         dword ptr fs:[eax],edx
 00449F6B    push        449F86
 00449F70    lea         eax,[ebp-50]
 00449F73    mov         edx,dword ptr ds:[435E20];TValue
 00449F79    call        @FinalizeRecord
 00449F7E    ret
>00449F7F    jmp         @HandleFinally
>00449F84    jmp         00449F70
 00449F86    mov         esi,dword ptr [ebp+0C]
 00449F89    inc         esi
 00449F8A    dec         esi
 00449F8B    test        esi,esi
>00449F8D    jl          00449FCD
 00449F8F    inc         esi
 00449F90    xor         edi,edi
 00449F92    mov         ebx,dword ptr [ebp-88]
 00449F98    mov         eax,dword ptr [ebp-84]
 00449F9E    mov         edx,dword ptr [eax]
 00449FA0    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 00449FA3    push        eax
 00449FA4    mov         eax,dword ptr [ebp-8C]
 00449FAA    lea         eax,[eax+eax*2]
 00449FAD    mov         edx,dword ptr [ebp-4]
 00449FB0    lea         ecx,[edx+eax*8]
 00449FB3    mov         eax,dword ptr [ebp-8]
 00449FB6    mov         eax,dword ptr [eax+edi*4]
 00449FB9    mov         edx,ebx
 00449FBB    call        PassArg
 00449FC0    inc         dword ptr [ebp-8C]
 00449FC6    inc         edi
 00449FC7    add         ebx,18
 00449FCA    dec         esi
>00449FCB    jne         00449F98
 00449FCD    mov         eax,dword ptr [ebp-84]
 00449FD3    mov         edx,dword ptr [eax]
 00449FD5    call        dword ptr [edx+30];TRttiInstanceMethodClassic.sub_00453C68
 00449FD8    test        al,al
>00449FDA    jne         0044A0CD
 00449FE0    mov         eax,dword ptr [ebp-84]
 00449FE6    mov         edx,dword ptr [eax]
 00449FE8    call        dword ptr [edx+2C];TRttiMethod.GetIsClassMethod
 00449FEB    test        al,al
>00449FED    je          0044A05D
 00449FEF    mov         eax,dword ptr [ebp-84]
 00449FF5    mov         edx,dword ptr [eax]
 00449FF7    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 00449FFA    mov         ebx,eax
 00449FFC    lea         edx,[ebp-68]
 00449FFF    mov         eax,dword ptr [ebp-90]
 0044A005    call        TValue.&op_Implicit
 0044A00A    xor         eax,eax
 0044A00C    push        ebp
 0044A00D    push        44A056
 0044A012    push        dword ptr fs:[eax]
 0044A015    mov         dword ptr fs:[eax],esp
 0044A018    cmp         bl,2
>0044A01B    jne         0044A03A
 0044A01D    mov         eax,dword ptr [ebp-8C]
 0044A023    lea         eax,[eax+eax*2]
 0044A026    mov         edx,dword ptr [ebp-4]
 0044A029    lea         eax,[edx+eax*8]
 0044A02C    lea         edx,[ebp-68]
 0044A02F    mov         ecx,dword ptr ds:[435E20];TValue
 0044A035    call        @CopyRecord
 0044A03A    xor         eax,eax
 0044A03C    pop         edx
 0044A03D    pop         ecx
 0044A03E    pop         ecx
 0044A03F    mov         dword ptr fs:[eax],edx
 0044A042    push        44A0CD
 0044A047    lea         eax,[ebp-68]
 0044A04A    mov         edx,dword ptr ds:[435E20];TValue
 0044A050    call        @FinalizeRecord
 0044A055    ret
>0044A056    jmp         @HandleFinally
>0044A05B    jmp         0044A047
 0044A05D    mov         eax,dword ptr [ebp-84]
 0044A063    mov         edx,dword ptr [eax]
 0044A065    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 0044A068    mov         ebx,eax
 0044A06A    lea         eax,[ebp-20]
 0044A06D    call        0043FA24
 0044A072    lea         edx,[ebp-80]
 0044A075    call        0043F970
 0044A07A    xor         eax,eax
 0044A07C    push        ebp
 0044A07D    push        44A0C6
 0044A082    push        dword ptr fs:[eax]
 0044A085    mov         dword ptr fs:[eax],esp
 0044A088    cmp         bl,2
>0044A08B    jne         0044A0AA
 0044A08D    mov         eax,dword ptr [ebp-8C]
 0044A093    lea         eax,[eax+eax*2]
 0044A096    mov         edx,dword ptr [ebp-4]
 0044A099    lea         eax,[edx+eax*8]
 0044A09C    lea         edx,[ebp-80]
 0044A09F    mov         ecx,dword ptr ds:[435E20];TValue
 0044A0A5    call        @CopyRecord
 0044A0AA    xor         eax,eax
 0044A0AC    pop         edx
 0044A0AD    pop         ecx
 0044A0AE    pop         ecx
 0044A0AF    mov         dword ptr fs:[eax],edx
 0044A0B2    push        44A0CD
 0044A0B7    lea         eax,[ebp-80]
 0044A0BA    mov         edx,dword ptr ds:[435E20];TValue
 0044A0C0    call        @FinalizeRecord
 0044A0C5    ret
>0044A0C6    jmp         @HandleFinally
>0044A0CB    jmp         0044A0B7
 0044A0CD    mov         eax,dword ptr [ebp-84]
 0044A0D3    mov         edx,dword ptr [eax]
 0044A0D5    call        dword ptr [edx+1C];TRttiInstanceMethodClassic.sub_00453BF4
 0044A0D8    dec         al
>0044A0DA    jne         0044A0F5
 0044A0DC    mov         eax,dword ptr [ebp-84]
 0044A0E2    mov         edx,dword ptr [eax]
 0044A0E4    call        dword ptr [edx+24];TRttiInstanceMethodClassic.sub_00453C6C
 0044A0E7    movsx       eax,ax
 0044A0EA    mov         edx,dword ptr [ebp-90]
 0044A0F0    mov         ebx,dword ptr [edx+eax*4]
>0044A0F3    jmp         0044A102
 0044A0F5    mov         eax,dword ptr [ebp-84]
 0044A0FB    mov         edx,dword ptr [eax]
 0044A0FD    call        dword ptr [edx+28];TRttiInstanceMethodClassic.sub_0044A2BC
 0044A100    mov         ebx,eax
 0044A102    mov         eax,ebx
 0044A104    call        CheckCodeAddress
 0044A109    mov         eax,dword ptr [ebp-84]
 0044A10F    mov         edx,dword ptr [eax]
 0044A111    call        dword ptr [edx+18];TRttiInstanceMethodClassic.GetReturnType
 0044A114    test        eax,eax
>0044A116    je          0044A154
 0044A118    mov         eax,dword ptr [ebp-84]
 0044A11E    mov         edx,dword ptr [eax]
 0044A120    call        dword ptr [edx+18];TRttiInstanceMethodClassic.GetReturnType
 0044A123    call        TRttiType.GetHandle
 0044A128    push        eax
 0044A129    mov         eax,dword ptr [ebp-84]
 0044A12F    mov         edx,dword ptr [eax]
 0044A131    call        dword ptr [edx+30];TRttiInstanceMethodClassic.sub_00453C68
 0044A134    push        eax
 0044A135    push        0
 0044A137    mov         eax,dword ptr [ebp+8]
 0044A13A    push        eax
 0044A13B    mov         eax,dword ptr [ebp-84]
 0044A141    mov         edx,dword ptr [eax]
 0044A143    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 0044A146    mov         ecx,eax
 0044A148    mov         edx,dword ptr [ebp-4]
 0044A14B    mov         eax,ebx
 0044A14D    call        Invoke
>0044A152    jmp         0044A1BF
 0044A154    mov         eax,dword ptr [ebp-84]
 0044A15A    call        TRttiMethod.GetIsConstructor
 0044A15F    test        al,al
>0044A161    je          0044A19E
 0044A163    mov         eax,dword ptr [ebp-8]
 0044A166    mov         eax,dword ptr [eax]
 0044A168    mov         edx,dword ptr [eax]
 0044A16A    call        dword ptr [edx+10]
 0044A16D    call        TRttiType.GetHandle
 0044A172    push        eax
 0044A173    mov         eax,dword ptr [ebp-84]
 0044A179    mov         edx,dword ptr [eax]
 0044A17B    call        dword ptr [edx+30];TRttiInstanceMethodClassic.sub_00453C68
 0044A17E    push        eax
 0044A17F    push        1
 0044A181    mov         eax,dword ptr [ebp+8]
 0044A184    push        eax
 0044A185    mov         eax,dword ptr [ebp-84]
 0044A18B    mov         edx,dword ptr [eax]
 0044A18D    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 0044A190    mov         ecx,eax
 0044A192    mov         edx,dword ptr [ebp-4]
 0044A195    mov         eax,ebx
 0044A197    call        Invoke
>0044A19C    jmp         0044A1BF
 0044A19E    push        0
 0044A1A0    push        0
 0044A1A2    push        0
 0044A1A4    mov         eax,dword ptr [ebp+8]
 0044A1A7    push        eax
 0044A1A8    mov         eax,dword ptr [ebp-84]
 0044A1AE    mov         edx,dword ptr [eax]
 0044A1B0    call        dword ptr [edx+14];TRttiInstanceMethodClassic.GetCallingConvention
 0044A1B3    mov         ecx,eax
 0044A1B5    mov         edx,dword ptr [ebp-4]
 0044A1B8    mov         eax,ebx
 0044A1BA    call        Invoke
 0044A1BF    xor         eax,eax
 0044A1C1    pop         edx
 0044A1C2    pop         ecx
 0044A1C3    pop         ecx
 0044A1C4    mov         dword ptr fs:[eax],edx
 0044A1C7    push        44A203
 0044A1CC    lea         eax,[ebp-80]
 0044A1CF    mov         edx,dword ptr ds:[435E20];TValue
 0044A1D5    mov         ecx,5
 0044A1DA    call        @FinalizeArray
 0044A1DF    lea         eax,[ebp-8]
 0044A1E2    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 0044A1E8    call        @DynArrayClear
 0044A1ED    lea         eax,[ebp-4]
 0044A1F0    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044A1F6    call        @DynArrayClear
 0044A1FB    ret
>0044A1FC    jmp         @HandleFinally
>0044A201    jmp         0044A1CC
 0044A203    pop         edi
 0044A204    pop         esi
 0044A205    pop         ebx
 0044A206    mov         esp,ebp
 0044A208    pop         ebp
 0044A209    ret         8
end;*}

//0044A20C
procedure TRttiInstanceMethodClassic.CheckExtended;
begin
{*
 0044A20C    push        ebx
 0044A20D    mov         ebx,eax
 0044A20F    mov         eax,ebx
 0044A211    mov         edx,dword ptr [eax]
 0044A213    call        dword ptr [edx+20]
 0044A216    test        al,al
>0044A218    jne         0044A224
 0044A21A    call        InsufficientRtti
 0044A21F    call        @RaiseExcept
 0044A224    pop         ebx
 0044A225    ret
*}
end;

//0044A228
function TRttiInstanceMethodClassic.GetMethodKind:TMethodKind;
begin
{*
 0044A228    push        ebx
 0044A229    mov         ebx,eax
 0044A22B    mov         eax,ebx
 0044A22D    mov         edx,dword ptr [eax]
 0044A22F    call        dword ptr [edx+20]
 0044A232    test        al,al
>0044A234    jne         0044A23A
 0044A236    xor         eax,eax
 0044A238    pop         ebx
 0044A239    ret
 0044A23A    mov         eax,ebx
 0044A23C    mov         edx,dword ptr [eax]
 0044A23E    call        dword ptr [edx+18]
 0044A241    test        eax,eax
>0044A243    jne         0044A249
 0044A245    xor         eax,eax
>0044A247    jmp         0044A24B
 0044A249    mov         al,1
 0044A24B    pop         ebx
 0044A24C    ret
*}
end;

//0044A250
function TRttiInstanceMethodClassic.GetCallingConvention:TCallConv;
begin
{*
 0044A250    push        ebx
 0044A251    mov         ebx,eax
 0044A253    mov         eax,ebx
 0044A255    call        TRttiInstanceMethodClassic.GetTailHandle
 0044A25A    movzx       eax,byte ptr [eax+1]
 0044A25E    pop         ebx
 0044A25F    ret
*}
end;

//0044A260
function TRttiInstanceMethodClassic.GetReturnType:TRttiType;
begin
{*
 0044A260    push        ebx
 0044A261    mov         ebx,eax
 0044A263    mov         eax,ebx
 0044A265    call        TRttiInstanceMethodClassic.CheckExtended
 0044A26A    mov         edx,dword ptr [ebx+20]
 0044A26D    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 0044A272    call        TRttiPool.GetType
 0044A277    pop         ebx
 0044A278    ret
*}
end;

//0044A27C
function TRttiInstanceMethodClassic.GetHasExtendedInfo:Boolean;
begin
{*
 0044A27C    cmp         dword ptr [eax+1C],0
 0044A280    setne       al
 0044A283    ret
*}
end;

//0044A284
function TProcParam.GetName:UnicodeString;
begin
{*
 0044A284    push        ebx
 0044A285    push        esi
 0044A286    push        ecx
 0044A287    mov         esi,edx
 0044A289    mov         ebx,eax
 0044A28B    mov         eax,ebx
 0044A28D    call        TProcParam.GetHandle
 0044A292    call        TProcedureParam.NameFld
 0044A297    mov         dword ptr [esp],eax
 0044A29A    mov         eax,esp
 0044A29C    mov         edx,esi
 0044A29E    call        TTypeInfoFieldAccessor.ToString
 0044A2A3    pop         edx
 0044A2A4    pop         esi
 0044A2A5    pop         ebx
 0044A2A6    ret
*}
end;

//0044A2A8
function TProcParam.GetHandle:PProcedureParam;
begin
{*
 0044A2A8    mov         eax,dword ptr [eax+4]
 0044A2AB    ret
*}
end;

//0044A2AC
function TRttiInstanceMethodClassic.GetTailHandle:PVmtMethodEntryTail;
begin
{*
 0044A2AC    push        ebx
 0044A2AD    mov         ebx,eax
 0044A2AF    mov         eax,ebx
 0044A2B1    call        TRttiInstanceMethodClassic.CheckExtended
 0044A2B6    mov         eax,dword ptr [ebx+1C]
 0044A2B9    pop         ebx
 0044A2BA    ret
*}
end;

//0044A2BC
{*function sub_0044A2BC:?;
begin
 0044A2BC    push        ebx
 0044A2BD    mov         ebx,eax
 0044A2BF    mov         eax,ebx
 0044A2C1    call        TProcParam.GetHandle
 0044A2C6    mov         eax,dword ptr [eax+2]
 0044A2C9    test        eax,eax
>0044A2CB    je          0044A2D4
 0044A2CD    cmp         dword ptr [eax],0
>0044A2D0    jne         0044A2D4
 0044A2D2    xor         eax,eax
 0044A2D4    pop         ebx
 0044A2D5    ret
end;*}

//0044A490
constructor TRttiInstanceMethodEx.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 0044A490    push        ebp
 0044A491    mov         ebp,esp
 0044A493    push        ecx
 0044A494    push        ebx
 0044A495    push        esi
 0044A496    push        edi
 0044A497    test        dl,dl
>0044A499    je          0044A4A3
 0044A49B    add         esp,0FFFFFFF0
 0044A49E    call        @ClassCreate
 0044A4A3    mov         esi,ecx
 0044A4A5    mov         byte ptr [ebp-1],dl
 0044A4A8    mov         ebx,eax
 0044A4AA    mov         edi,dword ptr [ebp+8]
 0044A4AD    mov         eax,dword ptr [ebp+0C]
 0044A4B0    push        eax
 0044A4B1    push        edi
 0044A4B2    mov         ecx,esi
 0044A4B4    xor         edx,edx
 0044A4B6    mov         eax,ebx
 0044A4B8    call        TRttiObject.Create
 0044A4BD    mov         eax,ebx
 0044A4BF    call        TRttiInstanceMethodEx.GetHandle
 0044A4C4    mov         eax,dword ptr [eax]
 0044A4C6    push        eax
 0044A4C7    mov         eax,ebx
 0044A4C9    call        TRttiMember.GetParent
 0044A4CE    mov         ecx,eax
 0044A4D0    mov         edx,dword ptr ds:[449844];TRttiInstanceMethodClassic
 0044A4D6    mov         eax,esi
 0044A4D8    call        TRttiPackage.ReadObjectPointer
 0044A4DD    mov         edx,dword ptr ds:[449844];TRttiInstanceMethodClassic
 0044A4E3    call        @AsClass
 0044A4E8    mov         dword ptr [ebx+1C],eax
 0044A4EB    add         dword ptr [edi],8
 0044A4EE    mov         eax,ebx
 0044A4F0    cmp         byte ptr [ebp-1],0
>0044A4F4    je          0044A505
 0044A4F6    call        @AfterConstruction
 0044A4FB    pop         dword ptr fs:[0]
 0044A502    add         esp,0C
 0044A505    mov         eax,ebx
 0044A507    pop         edi
 0044A508    pop         esi
 0044A509    pop         ebx
 0044A50A    pop         ecx
 0044A50B    pop         ebp
 0044A50C    ret         8
*}
end;

//0044A510
function TRttiInstanceMethodEx.GetVisibility:TMemberVisibility;
begin
{*
 0044A510    push        ebx
 0044A511    mov         ebx,eax
 0044A513    mov         eax,ebx
 0044A515    call        TRttiInstanceMethodEx.GetHandle
 0044A51A    movzx       eax,word ptr [eax+4]
 0044A51E    mov         ecx,2
 0044A523    mov         edx,5
 0044A528    call        GetBitField
 0044A52D    pop         ebx
 0044A52E    ret
*}
end;

//0044A530
function TRttiInstanceMethodEx.GetMethodKind:TMethodKind;
begin
{*
 0044A530    push        ebx
 0044A531    push        esi
 0044A532    mov         esi,eax
 0044A534    xor         ebx,ebx
 0044A536    mov         eax,esi
 0044A538    call        TRttiInstanceMethodEx.GetHandle
 0044A53D    test        byte ptr [eax+4],4
>0044A541    je          0044A572
 0044A543    mov         eax,esi
 0044A545    call        TRttiInstanceMethodEx.GetHandle
 0044A54A    movzx       eax,word ptr [eax+4]
 0044A54E    mov         ecx,2
 0044A553    xor         edx,edx
 0044A555    call        GetBitField
 0044A55A    sub         al,1
>0044A55C    jb          0044A566
>0044A55E    je          0044A56A
 0044A560    dec         al
>0044A562    je          0044A56E
>0044A564    jmp         0044A5B2
 0044A566    mov         bl,2
>0044A568    jmp         0044A5B2
 0044A56A    mov         bl,3
>0044A56C    jmp         0044A5B2
 0044A56E    mov         bl,8
>0044A570    jmp         0044A5B2
 0044A572    mov         eax,esi
 0044A574    call        TRttiInstanceMethodEx.GetHandle
 0044A579    test        byte ptr [eax+4],2
>0044A57D    je          0044A58C
 0044A57F    mov         eax,esi
 0044A581    call        TRttiInstanceMethodEx.GetHandle
 0044A586    test        byte ptr [eax+4],1
>0044A58A    je          0044A5A0
 0044A58C    mov         eax,dword ptr [esi+1C]
 0044A58F    mov         edx,dword ptr [eax]
 0044A591    call        dword ptr [edx+18]
 0044A594    test        eax,eax
>0044A596    jne         0044A59C
 0044A598    mov         bl,4
>0044A59A    jmp         0044A5B2
 0044A59C    mov         bl,5
>0044A59E    jmp         0044A5B2
 0044A5A0    mov         eax,dword ptr [esi+1C]
 0044A5A3    mov         edx,dword ptr [eax]
 0044A5A5    call        dword ptr [edx+18]
 0044A5A8    test        eax,eax
>0044A5AA    jne         0044A5B0
 0044A5AC    xor         ebx,ebx
>0044A5AE    jmp         0044A5B2
 0044A5B0    mov         bl,1
 0044A5B2    mov         eax,ebx
 0044A5B4    pop         esi
 0044A5B5    pop         ebx
 0044A5B6    ret
*}
end;

//0044A5B8
function TRttiInstanceMethodEx.GetCallingConvention:TCallConv;
begin
{*
 0044A5B8    push        ebx
 0044A5B9    mov         ebx,eax
 0044A5BB    mov         eax,dword ptr [ebx+1C]
 0044A5BE    mov         edx,dword ptr [eax]
 0044A5C0    call        dword ptr [edx+14]
 0044A5C3    pop         ebx
 0044A5C4    ret
*}
end;

//0044A5C8
function TRttiInstanceMethodEx.GetAttributes:TArray<System.TCustomAttribute>;
begin
{*
 0044A5C8    push        ebx
 0044A5C9    push        esi
 0044A5CA    mov         esi,edx
 0044A5CC    mov         ebx,eax
 0044A5CE    mov         edx,esi
 0044A5D0    mov         eax,dword ptr [ebx+1C]
 0044A5D3    mov         ecx,dword ptr [eax]
 0044A5D5    call        dword ptr [ecx+4]
 0044A5D8    pop         esi
 0044A5D9    pop         ebx
 0044A5DA    ret
*}
end;

//0044A5DC
function TRttiInstanceMethodEx.GetReturnType:TRttiType;
begin
{*
 0044A5DC    mov         eax,dword ptr [eax+1C]
 0044A5DF    mov         edx,dword ptr [eax]
 0044A5E1    call        dword ptr [edx+18]
 0044A5E4    ret
*}
end;

//0044A5E8
function TRttiInstanceMethodEx.GetHasExtendedInfo:Boolean;
begin
{*
 0044A5E8    mov         eax,dword ptr [eax+1C]
 0044A5EB    mov         edx,dword ptr [eax]
 0044A5ED    call        dword ptr [edx+20]
 0044A5F0    ret
*}
end;

//0044A5F4
function TRttiInstanceMethodEx.GetVirtualIndex:SmallInt;
begin
{*
 0044A5F4    push        ebx
 0044A5F5    mov         ebx,eax
 0044A5F7    mov         eax,ebx
 0044A5F9    call        TRttiInstanceMethodEx.GetHandle
 0044A5FE    movzx       eax,word ptr [eax+6]
 0044A602    pop         ebx
 0044A603    ret
*}
end;

//0044A604
function TRttiInstanceMethodEx.GetDispatchKind:TDispatchKind;
begin
{*
 0044A604    push        ebx
 0044A605    mov         ebx,eax
 0044A607    mov         eax,ebx
 0044A609    call        TRttiInstanceMethodEx.GetHandle
 0044A60E    movzx       eax,word ptr [eax+4]
 0044A612    mov         ecx,2
 0044A617    mov         edx,3
 0044A61C    call        GetBitField
 0044A621    pop         ebx
 0044A622    ret
*}
end;

//0044A624
function TRttiInstanceMethodEx.GetIsClassMethod:Boolean;
begin
{*
 0044A624    push        ebx
 0044A625    mov         ebx,eax
 0044A627    mov         eax,ebx
 0044A629    mov         edx,dword ptr [eax]
 0044A62B    call        dword ptr [edx+30]
 0044A62E    test        al,al
>0044A630    jne         0044A643
 0044A632    mov         eax,ebx
 0044A634    call        TRttiInstanceMethodEx.GetHandle
 0044A639    test        byte ptr [eax+4],1
>0044A63D    jne         0044A643
 0044A63F    xor         eax,eax
 0044A641    pop         ebx
 0044A642    ret
 0044A643    mov         al,1
 0044A645    pop         ebx
 0044A646    ret
*}
end;

//0044A648
function TRttiInstanceMethodEx.GetIsStatic:Boolean;
begin
{*
 0044A648    push        ebx
 0044A649    mov         ebx,eax
 0044A64B    mov         eax,ebx
 0044A64D    call        TRttiInstanceMethodEx.GetHandle
 0044A652    test        byte ptr [eax+4],4
>0044A656    je          0044A676
 0044A658    mov         eax,ebx
 0044A65A    call        TRttiInstanceMethodEx.GetHandle
 0044A65F    movzx       eax,word ptr [eax+4]
 0044A663    mov         ecx,2
 0044A668    xor         edx,edx
 0044A66A    call        GetBitField
 0044A66F    cmp         al,2
 0044A671    sete        al
 0044A674    pop         ebx
 0044A675    ret
 0044A676    mov         eax,ebx
 0044A678    call        TRttiInstanceMethodEx.GetHandle
 0044A67D    test        byte ptr [eax+4],2
 0044A681    sete        al
 0044A684    pop         ebx
 0044A685    ret
*}
end;

//0044A688
function TRttiInstanceMethodEx.GetCodeAddress:Pointer;
begin
{*
 0044A688    mov         eax,dword ptr [eax+1C]
 0044A68B    mov         edx,dword ptr [eax]
 0044A68D    call        dword ptr [edx+28]
 0044A690    ret
*}
end;

//0044A694
function TRttiInstanceMethodEx.GetName:UnicodeString;
begin
{*
 0044A694    push        ebx
 0044A695    push        esi
 0044A696    mov         esi,edx
 0044A698    mov         ebx,eax
 0044A69A    mov         edx,esi
 0044A69C    mov         eax,dword ptr [ebx+1C]
 0044A69F    mov         ecx,dword ptr [eax]
 0044A6A1    call        dword ptr [ecx+8]
 0044A6A4    pop         esi
 0044A6A5    pop         ebx
 0044A6A6    ret
*}
end;

//0044A6A8
function TRttiInstanceMethodEx.GetHandle:PVmtMethodExEntry;
begin
{*
 0044A6A8    mov         eax,dword ptr [eax+4]
 0044A6AB    ret
*}
end;

//0044A6AC
{*procedure sub_0044A6AC(?:?; ?:?; ?:?; ?:?);
begin
 0044A6AC    push        ebp
 0044A6AD    mov         ebp,esp
 0044A6AF    push        ecx
 0044A6B0    mov         ecx,19
 0044A6B5    push        0
 0044A6B7    push        0
 0044A6B9    dec         ecx
>0044A6BA    jne         0044A6B5
 0044A6BC    xchg        ecx,dword ptr [ebp-4]
 0044A6BF    push        ebx
 0044A6C0    push        esi
 0044A6C1    push        edi
 0044A6C2    mov         esi,edx
 0044A6C4    lea         edi,[ebp-20]
 0044A6C7    push        ecx
 0044A6C8    mov         ecx,6
 0044A6CD    rep movs    dword ptr [edi],dword ptr [esi]
 0044A6CF    pop         ecx
 0044A6D0    mov         dword ptr [ebp-88],ecx
 0044A6D6    mov         dword ptr [ebp-84],eax
 0044A6DC    lea         eax,[ebp-20]
 0044A6DF    mov         edx,dword ptr ds:[435E20];TValue
 0044A6E5    call        @InitializeRecord
 0044A6EA    lea         eax,[ebp-38]
 0044A6ED    mov         edx,dword ptr ds:[435E20];TValue
 0044A6F3    call        @AddRefRecord
 0044A6F8    lea         eax,[ebp-50]
 0044A6FB    mov         edx,dword ptr ds:[435E20];TValue
 0044A701    call        @AddRefRecord
 0044A706    lea         eax,[ebp-68]
 0044A709    mov         edx,dword ptr ds:[435E20];TValue
 0044A70F    call        @AddRefRecord
 0044A714    lea         eax,[ebp-80]
 0044A717    mov         edx,dword ptr ds:[435E20];TValue
 0044A71D    call        @AddRefRecord
 0044A722    xor         eax,eax
 0044A724    push        ebp
 0044A725    push        44AE0A
 0044A72A    push        dword ptr fs:[eax]
 0044A72D    mov         dword ptr fs:[eax],esp
 0044A730    lea         edx,[ebp-8]
 0044A733    mov         eax,dword ptr [ebp-84]
 0044A739    mov         ecx,dword ptr [eax]
 0044A73B    call        dword ptr [ecx+38];TRttiInstanceMethodEx.GetParameters
 0044A73E    mov         eax,dword ptr [ebp-8]
 0044A741    test        eax,eax
>0044A743    je          0044A74A
 0044A745    sub         eax,4
 0044A748    mov         eax,dword ptr [eax]
 0044A74A    mov         edx,dword ptr [ebp+0C]
 0044A74D    inc         edx
 0044A74E    cmp         eax,edx
>0044A750    je          0044A769
 0044A752    mov         ecx,dword ptr ds:[7C42A4];^SResString176:TResStringRec
 0044A758    mov         dl,1
 0044A75A    mov         eax,[00435ADC];EInvocationError
 0044A75F    call        Exception.CreateRes;EInvocationError.Create
 0044A764    call        @RaiseExcept
 0044A769    mov         ebx,edx
 0044A76B    mov         eax,dword ptr [ebp-84]
 0044A771    call        TRttiMethod.GetIsConstructor
 0044A776    test        al,al
>0044A778    jne         0044A789
 0044A77A    mov         eax,dword ptr [ebp-84]
 0044A780    call        TRttiMethod.GetIsDestructor
 0044A785    test        al,al
>0044A787    je          0044A78A
 0044A789    inc         ebx
 0044A78A    mov         eax,dword ptr [ebp-84]
 0044A790    mov         edx,dword ptr [eax]
 0044A792    call        dword ptr [edx+30];TRttiInstanceMethodEx.GetIsStatic
 0044A795    test        al,al
>0044A797    jne         0044A79A
 0044A799    inc         ebx
 0044A79A    push        ebx
 0044A79B    lea         eax,[ebp-4]
 0044A79E    mov         ecx,1
 0044A7A3    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044A7A9    call        @DynArraySetLength
 0044A7AE    add         esp,4
 0044A7B1    xor         eax,eax
 0044A7B3    mov         dword ptr [ebp-90],eax
 0044A7B9    xor         eax,eax
 0044A7BB    mov         dword ptr [ebp-94],eax
 0044A7C1    mov         byte ptr [ebp-99],1
 0044A7C8    xor         eax,eax
 0044A7CA    mov         dword ptr [ebp-98],eax
 0044A7D0    mov         eax,dword ptr [ebp-84]
 0044A7D6    mov         edx,dword ptr [eax]
 0044A7D8    call        dword ptr [edx+30];TRttiInstanceMethodEx.GetIsStatic
 0044A7DB    test        al,al
>0044A7DD    jne         0044AAE6
 0044A7E3    mov         eax,dword ptr [ebp-84]
 0044A7E9    call        TRttiMethod.GetIsConstructor
 0044A7EE    test        al,al
>0044A7F0    je          0044A97C
 0044A7F6    lea         edx,[ebp-94]
 0044A7FC    lea         eax,[ebp-20]
 0044A7FF    call        00459D18
 0044A804    mov         byte ptr [ebp-99],al
 0044A80A    cmp         byte ptr [ebp-99],0
>0044A811    je          0044A81D
 0044A813    xor         eax,eax
 0044A815    mov         dword ptr [ebp-98],eax
>0044A81B    jmp         0044A84E
 0044A81D    lea         eax,[ebp-20]
 0044A820    call        0043FA24
 0044A825    mov         dword ptr [ebp-98],eax
 0044A82B    cmp         dword ptr [ebp-98],0
>0044A832    je          0044A846
 0044A834    mov         edx,dword ptr [ebp-98]
 0044A83A    mov         edx,dword ptr [edx]
 0044A83C    mov         eax,edx
 0044A83E    mov         dword ptr [ebp-94],eax
>0044A844    jmp         0044A84E
 0044A846    xor         eax,eax
 0044A848    mov         dword ptr [ebp-94],eax
 0044A84E    cmp         byte ptr [ebp-99],0
>0044A855    je          0044A8CB
 0044A857    mov         eax,dword ptr [ebp-84]
 0044A85D    mov         edx,dword ptr [eax]
 0044A85F    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044A862    mov         ebx,eax
 0044A864    lea         edx,[ebp-38]
 0044A867    mov         eax,dword ptr [ebp-94]
 0044A86D    call        TValue.&op_Implicit
 0044A872    xor         eax,eax
 0044A874    push        ebp
 0044A875    push        44A8C4
 0044A87A    push        dword ptr fs:[eax]
 0044A87D    mov         dword ptr fs:[eax],esp
 0044A880    cmp         bl,2
>0044A883    je          0044A8A8
 0044A885    mov         eax,dword ptr [ebp-90]
 0044A88B    lea         eax,[eax+eax*2]
 0044A88E    mov         edx,dword ptr [ebp-4]
 0044A891    lea         eax,[edx+eax*8]
 0044A894    lea         edx,[ebp-38]
 0044A897    mov         ecx,dword ptr ds:[435E20];TValue
 0044A89D    call        @CopyRecord
 0044A8A2    inc         dword ptr [ebp-90]
 0044A8A8    xor         eax,eax
 0044A8AA    pop         edx
 0044A8AB    pop         ecx
 0044A8AC    pop         ecx
 0044A8AD    mov         dword ptr fs:[eax],edx
 0044A8B0    push        44A93F
 0044A8B5    lea         eax,[ebp-38]
 0044A8B8    mov         edx,dword ptr ds:[435E20];TValue
 0044A8BE    call        @FinalizeRecord
 0044A8C3    ret
>0044A8C4    jmp         @HandleFinally
>0044A8C9    jmp         0044A8B5
 0044A8CB    mov         eax,dword ptr [ebp-84]
 0044A8D1    mov         edx,dword ptr [eax]
 0044A8D3    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044A8D6    mov         ebx,eax
 0044A8D8    lea         edx,[ebp-50]
 0044A8DB    mov         eax,dword ptr [ebp-98]
 0044A8E1    call        0043F970
 0044A8E6    xor         eax,eax
 0044A8E8    push        ebp
 0044A8E9    push        44A938
 0044A8EE    push        dword ptr fs:[eax]
 0044A8F1    mov         dword ptr fs:[eax],esp
 0044A8F4    cmp         bl,2
>0044A8F7    je          0044A91C
 0044A8F9    mov         eax,dword ptr [ebp-90]
 0044A8FF    lea         eax,[eax+eax*2]
 0044A902    mov         edx,dword ptr [ebp-4]
 0044A905    lea         eax,[edx+eax*8]
 0044A908    lea         edx,[ebp-50]
 0044A90B    mov         ecx,dword ptr ds:[435E20];TValue
 0044A911    call        @CopyRecord
 0044A916    inc         dword ptr [ebp-90]
 0044A91C    xor         eax,eax
 0044A91E    pop         edx
 0044A91F    pop         ecx
 0044A920    pop         ecx
 0044A921    mov         dword ptr fs:[eax],edx
 0044A924    push        44A93F
 0044A929    lea         eax,[ebp-50]
 0044A92C    mov         edx,dword ptr ds:[435E20];TValue
 0044A932    call        @FinalizeRecord
 0044A937    ret
>0044A938    jmp         @HandleFinally
>0044A93D    jmp         0044A929
 0044A93F    lea         edx,[ebp-0B4]
 0044A945    movzx       eax,byte ptr [ebp-99]
 0044A94C    call        TValue.&op_Implicit
 0044A951    lea         edx,[ebp-0B4]
 0044A957    mov         eax,dword ptr [ebp-90]
 0044A95D    lea         eax,[eax+eax*2]
 0044A960    mov         ecx,dword ptr [ebp-4]
 0044A963    lea         eax,[ecx+eax*8]
 0044A966    mov         ecx,dword ptr ds:[435E20];TValue
 0044A96C    call        @CopyRecord
 0044A971    inc         dword ptr [ebp-90]
>0044A977    jmp         0044AAA5
 0044A97C    mov         eax,dword ptr [ebp-84]
 0044A982    call        TRttiMethod.GetIsDestructor
 0044A987    test        al,al
>0044A989    je          0044AA0A
 0044A98B    lea         eax,[ebp-20]
 0044A98E    call        0043FA24
 0044A993    mov         eax,dword ptr [eax]
 0044A995    mov         edx,eax
 0044A997    mov         dword ptr [ebp-94],edx
 0044A99D    mov         eax,dword ptr [ebp-84]
 0044A9A3    mov         edx,dword ptr [eax]
 0044A9A5    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044A9A8    mov         ebx,eax
 0044A9AA    cmp         bl,2
>0044A9AD    je          0044A9D2
 0044A9AF    mov         eax,dword ptr [ebp-90]
 0044A9B5    lea         eax,[eax+eax*2]
 0044A9B8    mov         edx,dword ptr [ebp-4]
 0044A9BB    lea         eax,[edx+eax*8]
 0044A9BE    lea         edx,[ebp-20]
 0044A9C1    mov         ecx,dword ptr ds:[435E20];TValue
 0044A9C7    call        @CopyRecord
 0044A9CC    inc         dword ptr [ebp-90]
 0044A9D2    lea         edx,[ebp-0CC]
 0044A9D8    mov         al,1
 0044A9DA    call        TValue.&op_Implicit
 0044A9DF    lea         edx,[ebp-0CC]
 0044A9E5    mov         eax,dword ptr [ebp-90]
 0044A9EB    lea         eax,[eax+eax*2]
 0044A9EE    mov         ecx,dword ptr [ebp-4]
 0044A9F1    lea         eax,[ecx+eax*8]
 0044A9F4    mov         ecx,dword ptr ds:[435E20];TValue
 0044A9FA    call        @CopyRecord
 0044A9FF    inc         dword ptr [ebp-90]
>0044AA05    jmp         0044AAA5
 0044AA0A    mov         eax,dword ptr [ebp-84]
 0044AA10    mov         edx,dword ptr [eax]
 0044AA12    call        dword ptr [edx+2C];TRttiInstanceMethodEx.GetIsClassMethod
 0044AA15    test        al,al
>0044AA17    je          0044AA5E
 0044AA19    lea         eax,[ebp-20]
 0044AA1C    call        0043FA7C
 0044AA21    mov         dword ptr [ebp-94],eax
 0044AA27    mov         eax,dword ptr [ebp-84]
 0044AA2D    mov         edx,dword ptr [eax]
 0044AA2F    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044AA32    mov         ebx,eax
 0044AA34    cmp         bl,2
>0044AA37    je          0044AAA5
 0044AA39    mov         eax,dword ptr [ebp-90]
 0044AA3F    lea         eax,[eax+eax*2]
 0044AA42    mov         edx,dword ptr [ebp-4]
 0044AA45    lea         eax,[edx+eax*8]
 0044AA48    lea         edx,[ebp-20]
 0044AA4B    mov         ecx,dword ptr ds:[435E20];TValue
 0044AA51    call        @CopyRecord
 0044AA56    inc         dword ptr [ebp-90]
>0044AA5C    jmp         0044AAA5
 0044AA5E    lea         eax,[ebp-20]
 0044AA61    call        0043FA24
 0044AA66    mov         eax,dword ptr [eax]
 0044AA68    mov         edx,eax
 0044AA6A    mov         dword ptr [ebp-94],edx
 0044AA70    mov         eax,dword ptr [ebp-84]
 0044AA76    mov         edx,dword ptr [eax]
 0044AA78    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044AA7B    mov         ebx,eax
 0044AA7D    cmp         bl,2
>0044AA80    je          0044AAA5
 0044AA82    mov         eax,dword ptr [ebp-90]
 0044AA88    lea         eax,[eax+eax*2]
 0044AA8B    mov         edx,dword ptr [ebp-4]
 0044AA8E    lea         eax,[edx+eax*8]
 0044AA91    lea         edx,[ebp-20]
 0044AA94    mov         ecx,dword ptr ds:[435E20];TValue
 0044AA9A    call        @CopyRecord
 0044AA9F    inc         dword ptr [ebp-90]
 0044AAA5    cmp         dword ptr [ebp-94],0
>0044AAAC    je          0044AAE6
 0044AAAE    mov         eax,dword ptr [ebp-84]
 0044AAB4    call        TRttiMember.GetParent
 0044AAB9    call        TRttiInstanceType.GetMetaclassType
 0044AABE    mov         edx,eax
 0044AAC0    mov         eax,dword ptr [ebp-94]
 0044AAC6    call        TObject.InheritsFrom
 0044AACB    test        al,al
>0044AACD    jne         0044AAE6
 0044AACF    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0044AAD5    mov         dl,1
 0044AAD7    mov         eax,[00418C80];EInvalidCast
 0044AADC    call        Exception.CreateRes;EInvalidCast.Create
 0044AAE1    call        @RaiseExcept
 0044AAE6    mov         esi,dword ptr [ebp+0C]
 0044AAE9    inc         esi
 0044AAEA    dec         esi
 0044AAEB    test        esi,esi
>0044AAED    jl          0044AB2D
 0044AAEF    inc         esi
 0044AAF0    xor         edi,edi
 0044AAF2    mov         ebx,dword ptr [ebp-88]
 0044AAF8    mov         eax,dword ptr [ebp-84]
 0044AAFE    mov         edx,dword ptr [eax]
 0044AB00    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044AB03    push        eax
 0044AB04    mov         eax,dword ptr [ebp-90]
 0044AB0A    lea         eax,[eax+eax*2]
 0044AB0D    mov         edx,dword ptr [ebp-4]
 0044AB10    lea         ecx,[edx+eax*8]
 0044AB13    mov         eax,dword ptr [ebp-8]
 0044AB16    mov         eax,dword ptr [eax+edi*4]
 0044AB19    mov         edx,ebx
 0044AB1B    call        PassArg
 0044AB20    inc         dword ptr [ebp-90]
 0044AB26    inc         edi
 0044AB27    add         ebx,18
 0044AB2A    dec         esi
>0044AB2B    jne         0044AAF8
 0044AB2D    mov         eax,dword ptr [ebp-84]
 0044AB33    mov         edx,dword ptr [eax]
 0044AB35    call        dword ptr [edx+30];TRttiInstanceMethodEx.GetIsStatic
 0044AB38    test        al,al
>0044AB3A    je          0044AB4F
 0044AB3C    mov         eax,dword ptr [ebp-84]
 0044AB42    mov         edx,dword ptr [eax]
 0044AB44    call        dword ptr [edx+28];TRttiInstanceMethodEx.GetCodeAddress
 0044AB47    mov         dword ptr [ebp-8C],eax
>0044AB4D    jmp         0044ABB4
 0044AB4F    mov         eax,dword ptr [ebp-84]
 0044AB55    mov         edx,dword ptr [eax]
 0044AB57    call        dword ptr [edx+1C];TRttiInstanceMethodEx.GetDispatchKind
 0044AB5A    dec         al
>0044AB5C    je          0044AB64
 0044AB5E    dec         al
>0044AB60    je          0044AB83
>0044AB62    jmp         0044ABA3
 0044AB64    mov         eax,dword ptr [ebp-84]
 0044AB6A    mov         edx,dword ptr [eax]
 0044AB6C    call        dword ptr [edx+24];TRttiInstanceMethodEx.GetVirtualIndex
 0044AB6F    movsx       eax,ax
 0044AB72    mov         edx,dword ptr [ebp-94]
 0044AB78    mov         eax,dword ptr [edx+eax*4]
 0044AB7B    mov         dword ptr [ebp-8C],eax
>0044AB81    jmp         0044ABB4
 0044AB83    mov         eax,dword ptr [ebp-84]
 0044AB89    mov         edx,dword ptr [eax]
 0044AB8B    call        dword ptr [edx+24];TRttiInstanceMethodEx.GetVirtualIndex
 0044AB8E    mov         edx,eax
 0044AB90    mov         eax,dword ptr [ebp-94]
 0044AB96    call        GetDynaMethod
 0044AB9B    mov         dword ptr [ebp-8C],eax
>0044ABA1    jmp         0044ABB4
 0044ABA3    mov         eax,dword ptr [ebp-84]
 0044ABA9    mov         edx,dword ptr [eax]
 0044ABAB    call        dword ptr [edx+28];TRttiInstanceMethodEx.GetCodeAddress
 0044ABAE    mov         dword ptr [ebp-8C],eax
 0044ABB4    mov         eax,dword ptr [ebp-8C]
 0044ABBA    call        CheckCodeAddress
 0044ABBF    mov         eax,dword ptr [ebp-84]
 0044ABC5    mov         edx,dword ptr [eax]
 0044ABC7    call        dword ptr [edx+30];TRttiInstanceMethodEx.GetIsStatic
 0044ABCA    test        al,al
>0044ABCC    jne         0044ACF9
 0044ABD2    mov         eax,dword ptr [ebp-84]
 0044ABD8    call        TRttiMethod.GetIsConstructor
 0044ABDD    test        al,al
>0044ABDF    je          0044ACCA
 0044ABE5    cmp         byte ptr [ebp-99],0
>0044ABEC    je          0044AC5C
 0044ABEE    mov         eax,dword ptr [ebp-84]
 0044ABF4    mov         edx,dword ptr [eax]
 0044ABF6    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044ABF9    mov         ebx,eax
 0044ABFB    lea         edx,[ebp-68]
 0044ABFE    mov         eax,dword ptr [ebp-94]
 0044AC04    call        TValue.&op_Implicit
 0044AC09    xor         eax,eax
 0044AC0B    push        ebp
 0044AC0C    push        44AC55
 0044AC11    push        dword ptr fs:[eax]
 0044AC14    mov         dword ptr fs:[eax],esp
 0044AC17    cmp         bl,2
>0044AC1A    jne         0044AC39
 0044AC1C    mov         eax,dword ptr [ebp-90]
 0044AC22    lea         eax,[eax+eax*2]
 0044AC25    mov         edx,dword ptr [ebp-4]
 0044AC28    lea         eax,[edx+eax*8]
 0044AC2B    lea         edx,[ebp-68]
 0044AC2E    mov         ecx,dword ptr ds:[435E20];TValue
 0044AC34    call        @CopyRecord
 0044AC39    xor         eax,eax
 0044AC3B    pop         edx
 0044AC3C    pop         ecx
 0044AC3D    pop         ecx
 0044AC3E    mov         dword ptr fs:[eax],edx
 0044AC41    push        44ACF9
 0044AC46    lea         eax,[ebp-68]
 0044AC49    mov         edx,dword ptr ds:[435E20];TValue
 0044AC4F    call        @FinalizeRecord
 0044AC54    ret
>0044AC55    jmp         @HandleFinally
>0044AC5A    jmp         0044AC46
 0044AC5C    mov         eax,dword ptr [ebp-84]
 0044AC62    mov         edx,dword ptr [eax]
 0044AC64    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044AC67    mov         ebx,eax
 0044AC69    lea         edx,[ebp-80]
 0044AC6C    mov         eax,dword ptr [ebp-98]
 0044AC72    call        0043F970
 0044AC77    xor         eax,eax
 0044AC79    push        ebp
 0044AC7A    push        44ACC3
 0044AC7F    push        dword ptr fs:[eax]
 0044AC82    mov         dword ptr fs:[eax],esp
 0044AC85    cmp         bl,2
>0044AC88    jne         0044ACA7
 0044AC8A    mov         eax,dword ptr [ebp-90]
 0044AC90    lea         eax,[eax+eax*2]
 0044AC93    mov         edx,dword ptr [ebp-4]
 0044AC96    lea         eax,[edx+eax*8]
 0044AC99    lea         edx,[ebp-80]
 0044AC9C    mov         ecx,dword ptr ds:[435E20];TValue
 0044ACA2    call        @CopyRecord
 0044ACA7    xor         eax,eax
 0044ACA9    pop         edx
 0044ACAA    pop         ecx
 0044ACAB    pop         ecx
 0044ACAC    mov         dword ptr fs:[eax],edx
 0044ACAF    push        44ACF9
 0044ACB4    lea         eax,[ebp-80]
 0044ACB7    mov         edx,dword ptr ds:[435E20];TValue
 0044ACBD    call        @FinalizeRecord
 0044ACC2    ret
>0044ACC3    jmp         @HandleFinally
>0044ACC8    jmp         0044ACB4
 0044ACCA    mov         eax,dword ptr [ebp-84]
 0044ACD0    mov         edx,dword ptr [eax]
 0044ACD2    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044ACD5    mov         ebx,eax
 0044ACD7    cmp         bl,2
>0044ACDA    jne         0044ACF9
 0044ACDC    mov         eax,dword ptr [ebp-90]
 0044ACE2    lea         eax,[eax+eax*2]
 0044ACE5    mov         edx,dword ptr [ebp-4]
 0044ACE8    lea         eax,[edx+eax*8]
 0044ACEB    lea         edx,[ebp-20]
 0044ACEE    mov         ecx,dword ptr ds:[435E20];TValue
 0044ACF4    call        @CopyRecord
 0044ACF9    mov         eax,dword ptr [ebp-84]
 0044ACFF    mov         edx,dword ptr [eax]
 0044AD01    call        dword ptr [edx+18];TRttiInstanceMethodEx.GetReturnType
 0044AD04    test        eax,eax
>0044AD06    je          0044AD48
 0044AD08    mov         eax,dword ptr [ebp-84]
 0044AD0E    mov         edx,dword ptr [eax]
 0044AD10    call        dword ptr [edx+18];TRttiInstanceMethodEx.GetReturnType
 0044AD13    call        TRttiType.GetHandle
 0044AD18    push        eax
 0044AD19    mov         eax,dword ptr [ebp-84]
 0044AD1F    mov         edx,dword ptr [eax]
 0044AD21    call        dword ptr [edx+30];TRttiInstanceMethodEx.GetIsStatic
 0044AD24    push        eax
 0044AD25    push        0
 0044AD27    mov         eax,dword ptr [ebp+8]
 0044AD2A    push        eax
 0044AD2B    mov         eax,dword ptr [ebp-84]
 0044AD31    mov         edx,dword ptr [eax]
 0044AD33    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044AD36    mov         ecx,eax
 0044AD38    mov         edx,dword ptr [ebp-4]
 0044AD3B    mov         eax,dword ptr [ebp-8C]
 0044AD41    call        Invoke
>0044AD46    jmp         0044ADB7
 0044AD48    mov         eax,dword ptr [ebp-84]
 0044AD4E    call        TRttiMethod.GetIsConstructor
 0044AD53    test        al,al
>0044AD55    je          0044AD92
 0044AD57    mov         eax,dword ptr [ebp-94]
 0044AD5D    add         eax,0FFFFFFB8
 0044AD60    mov         eax,dword ptr [eax]
 0044AD62    push        eax
 0044AD63    mov         eax,dword ptr [ebp-84]
 0044AD69    mov         edx,dword ptr [eax]
 0044AD6B    call        dword ptr [edx+30];TRttiInstanceMethodEx.GetIsStatic
 0044AD6E    push        eax
 0044AD6F    push        1
 0044AD71    mov         eax,dword ptr [ebp+8]
 0044AD74    push        eax
 0044AD75    mov         eax,dword ptr [ebp-84]
 0044AD7B    mov         edx,dword ptr [eax]
 0044AD7D    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044AD80    mov         ecx,eax
 0044AD82    mov         edx,dword ptr [ebp-4]
 0044AD85    mov         eax,dword ptr [ebp-8C]
 0044AD8B    call        Invoke
>0044AD90    jmp         0044ADB7
 0044AD92    push        0
 0044AD94    push        0
 0044AD96    push        0
 0044AD98    mov         eax,dword ptr [ebp+8]
 0044AD9B    push        eax
 0044AD9C    mov         eax,dword ptr [ebp-84]
 0044ADA2    mov         edx,dword ptr [eax]
 0044ADA4    call        dword ptr [edx+14];TRttiInstanceMethodEx.GetCallingConvention
 0044ADA7    mov         ecx,eax
 0044ADA9    mov         edx,dword ptr [ebp-4]
 0044ADAC    mov         eax,dword ptr [ebp-8C]
 0044ADB2    call        Invoke
 0044ADB7    xor         eax,eax
 0044ADB9    pop         edx
 0044ADBA    pop         ecx
 0044ADBB    pop         ecx
 0044ADBC    mov         dword ptr fs:[eax],edx
 0044ADBF    push        44AE11
 0044ADC4    lea         eax,[ebp-0CC]
 0044ADCA    mov         edx,dword ptr ds:[435E20];TValue
 0044ADD0    mov         ecx,2
 0044ADD5    call        @FinalizeArray
 0044ADDA    lea         eax,[ebp-80]
 0044ADDD    mov         edx,dword ptr ds:[435E20];TValue
 0044ADE3    mov         ecx,5
 0044ADE8    call        @FinalizeArray
 0044ADED    lea         eax,[ebp-8]
 0044ADF0    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 0044ADF6    call        @DynArrayClear
 0044ADFB    lea         eax,[ebp-4]
 0044ADFE    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044AE04    call        @DynArrayClear
 0044AE09    ret
>0044AE0A    jmp         @HandleFinally
>0044AE0F    jmp         0044ADC4
 0044AE11    pop         edi
 0044AE12    pop         esi
 0044AE13    pop         ebx
 0044AE14    mov         esp,ebp
 0044AE16    pop         ebp
 0044AE17    ret         8
end;*}

//0044AE1C
function TRttiInstanceMethodEx.GetParameters:TArray<System.Rtti.TRttiParameter>;
begin
{*
 0044AE1C    push        ebx
 0044AE1D    push        esi
 0044AE1E    mov         esi,edx
 0044AE20    mov         ebx,eax
 0044AE22    mov         eax,ebx
 0044AE24    mov         edx,dword ptr [eax]
 0044AE26    call        dword ptr [edx+30]
 0044AE29    test        al,al
>0044AE2B    je          0044AE43
 0044AE2D    mov         ecx,esi
 0044AE2F    mov         eax,dword ptr [ebx+1C]
 0044AE32    mov         eax,dword ptr [eax+24]
 0044AE35    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 0044AE3B    call        @DynArrayCopy
 0044AE40    pop         esi
 0044AE41    pop         ebx
 0044AE42    ret
 0044AE43    mov         edx,esi
 0044AE45    mov         eax,dword ptr [ebx+1C]
 0044AE48    mov         ecx,dword ptr [eax]
 0044AE4A    call        dword ptr [ecx+38]
 0044AE4D    pop         esi
 0044AE4E    pop         ebx
 0044AE4F    ret
*}
end;

//0044B294
constructor TRttiInstanceType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 0044B294    push        ebp
 0044B295    mov         ebp,esp
 0044B297    push        ecx
 0044B298    push        ebx
 0044B299    test        dl,dl
>0044B29B    je          0044B2A5
 0044B29D    add         esp,0FFFFFFF0
 0044B2A0    call        @ClassCreate
 0044B2A5    mov         byte ptr [ebp-1],dl
 0044B2A8    mov         ebx,eax
 0044B2AA    mov         eax,dword ptr [ebp+0C]
 0044B2AD    push        eax
 0044B2AE    mov         eax,dword ptr [ebp+8]
 0044B2B1    push        eax
 0044B2B2    xor         edx,edx
 0044B2B4    mov         eax,ebx
 0044B2B6    call        TRttiType.Create
 0044B2BB    mov         eax,ebx
 0044B2BD    call        TRttiInstanceType.GetMetaclassType
 0044B2C2    add         eax,0FFFFFFBC
 0044B2C5    mov         eax,dword ptr [eax]
 0044B2C7    test        eax,eax
>0044B2C9    je          0044B2D1
 0044B2CB    mov         eax,dword ptr [eax+2]
 0044B2CE    mov         dword ptr [ebx+28],eax
 0044B2D1    mov         eax,ebx
 0044B2D3    cmp         byte ptr [ebp-1],0
>0044B2D7    je          0044B2E8
 0044B2D9    call        @AfterConstruction
 0044B2DE    pop         dword ptr fs:[0]
 0044B2E5    add         esp,0C
 0044B2E8    mov         eax,ebx
 0044B2EA    pop         ebx
 0044B2EB    pop         ecx
 0044B2EC    pop         ebp
 0044B2ED    ret         8
*}
end;

//0044B2F0
function TRttiInstanceType.GetAttributes:TArray<System.TCustomAttribute>;
begin
{*
 0044B2F0    push        ebx
 0044B2F1    push        esi
 0044B2F2    mov         esi,edx
 0044B2F4    mov         ebx,eax
 0044B2F6    cmp         byte ptr [ebx+2C],0
>0044B2FA    jne         0044B303
 0044B2FC    mov         eax,ebx
 0044B2FE    call        TRttiInstanceType.ReadPropData
 0044B303    mov         edx,esi
 0044B305    mov         eax,ebx
 0044B307    call        TRttiObject.GetAttributes
 0044B30C    pop         esi
 0044B30D    pop         ebx
 0044B30E    ret
*}
end;

//0044B310
procedure sub_0044B310;
begin
{*
 0044B310    call        TRttiInstanceType.GetBaseTyped
 0044B315    ret
*}
end;

//0044B318
function TRttiInstanceType.GetBaseTyped:TRttiInstanceType;
begin
{*
 0044B318    push        ebx
 0044B319    mov         ebx,eax
 0044B31B    mov         eax,ebx
 0044B31D    call        TRttiType.GetTypeData
 0044B322    mov         edx,dword ptr [eax+4]
 0044B325    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 0044B32A    call        TRttiPool.TypeOrNil
 0044B32F    mov         edx,dword ptr ds:[438E84];TRttiInstanceType
 0044B335    call        @AsClass
 0044B33A    pop         ebx
 0044B33B    ret
*}
end;

//0044B33C
function TRttiInstanceType.GetMetaclassType:TClass;
begin
{*
 0044B33C    push        ebx
 0044B33D    mov         ebx,eax
 0044B33F    mov         eax,ebx
 0044B341    call        TRttiType.GetTypeData
 0044B346    mov         eax,dword ptr [eax]
 0044B348    pop         ebx
 0044B349    ret
*}
end;

//0044B34C
{*procedure sub_0044B34C(?:?; ?:?);
begin
 0044B34C    push        ebp
 0044B34D    mov         ebp,esp
 0044B34F    push        ebx
 0044B350    push        esi
 0044B351    push        edi
 0044B352    mov         edi,eax
 0044B354    mov         eax,dword ptr [ebp+8]
 0044B357    cmp         dword ptr [eax-4],0
>0044B35B    jne         0044B36C
 0044B35D    mov         eax,edi
 0044B35F    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B365    call        @DynArrayClear
>0044B36A    jmp         0044B3DA
 0044B36C    mov         eax,dword ptr [ebp+8]
 0044B36F    add         eax,0FFFFFFFC
 0044B372    call        ReadI16
 0044B377    movzx       eax,ax
 0044B37A    push        eax
 0044B37B    mov         eax,edi
 0044B37D    mov         ecx,1
 0044B382    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B388    call        @DynArraySetLength
 0044B38D    add         esp,4
 0044B390    mov         eax,dword ptr [edi]
 0044B392    test        eax,eax
>0044B394    je          0044B39B
 0044B396    sub         eax,4
 0044B399    mov         eax,dword ptr [eax]
 0044B39B    mov         ebx,eax
 0044B39D    dec         ebx
 0044B39E    test        ebx,ebx
>0044B3A0    jl          0044B3DA
 0044B3A2    inc         ebx
 0044B3A3    xor         esi,esi
 0044B3A5    mov         eax,dword ptr [ebp+8]
 0044B3A8    add         eax,0FFFFFFFC
 0044B3AB    push        eax
 0044B3AC    mov         eax,dword ptr [ebp+8]
 0044B3AF    mov         ecx,dword ptr [eax-8]
 0044B3B2    mov         eax,dword ptr [ebp+8]
 0044B3B5    mov         eax,dword ptr [eax-8]
 0044B3B8    mov         eax,dword ptr [eax+0C]
 0044B3BB    mov         edx,dword ptr ds:[44AE50];TRttiInstancePropertyClassic
 0044B3C1    call        TRttiPackage.ReadObject
 0044B3C6    mov         edx,dword ptr ds:[43775C];TRttiProperty
 0044B3CC    call        @AsClass
 0044B3D1    mov         edx,dword ptr [edi]
 0044B3D3    mov         dword ptr [edx+esi*4],eax
 0044B3D6    inc         esi
 0044B3D7    dec         ebx
>0044B3D8    jne         0044B3A5
 0044B3DA    pop         edi
 0044B3DB    pop         esi
 0044B3DC    pop         ebx
 0044B3DD    pop         ebp
 0044B3DE    ret
end;*}

//0044B3E0
{*procedure sub_0044B3E0(?:?; ?:?);
begin
 0044B3E0    push        ebp
 0044B3E1    mov         ebp,esp
 0044B3E3    push        ebx
 0044B3E4    push        esi
 0044B3E5    push        edi
 0044B3E6    mov         edi,eax
 0044B3E8    mov         eax,dword ptr [ebp+8]
 0044B3EB    cmp         dword ptr [eax-4],0
>0044B3EF    jne         0044B400
 0044B3F1    mov         eax,edi
 0044B3F3    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B3F9    call        @DynArrayClear
>0044B3FE    jmp         0044B46E
 0044B400    mov         eax,dword ptr [ebp+8]
 0044B403    add         eax,0FFFFFFFC
 0044B406    call        ReadI16
 0044B40B    movzx       eax,ax
 0044B40E    push        eax
 0044B40F    mov         eax,edi
 0044B411    mov         ecx,1
 0044B416    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B41C    call        @DynArraySetLength
 0044B421    add         esp,4
 0044B424    mov         eax,dword ptr [edi]
 0044B426    test        eax,eax
>0044B428    je          0044B42F
 0044B42A    sub         eax,4
 0044B42D    mov         eax,dword ptr [eax]
 0044B42F    mov         ebx,eax
 0044B431    dec         ebx
 0044B432    test        ebx,ebx
>0044B434    jl          0044B46E
 0044B436    inc         ebx
 0044B437    xor         esi,esi
 0044B439    mov         eax,dword ptr [ebp+8]
 0044B43C    add         eax,0FFFFFFFC
 0044B43F    push        eax
 0044B440    mov         eax,dword ptr [ebp+8]
 0044B443    mov         ecx,dword ptr [eax-8]
 0044B446    mov         eax,dword ptr [ebp+8]
 0044B449    mov         eax,dword ptr [eax-8]
 0044B44C    mov         eax,dword ptr [eax+0C]
 0044B44F    mov         edx,dword ptr ds:[44AF68];TRttiInstancePropertyEx
 0044B455    call        TRttiPackage.ReadObject
 0044B45A    mov         edx,dword ptr ds:[43775C];TRttiProperty
 0044B460    call        @AsClass
 0044B465    mov         edx,dword ptr [edi]
 0044B467    mov         dword ptr [edx+esi*4],eax
 0044B46A    inc         esi
 0044B46B    dec         ebx
>0044B46C    jne         0044B439
 0044B46E    pop         edi
 0044B46F    pop         esi
 0044B470    pop         ebx
 0044B471    pop         ebp
 0044B472    ret
end;*}

//0044B474
{*function sub_0044B474(?:?; ?:?):?;
begin
 0044B474    push        ebp
 0044B475    mov         ebp,esp
 0044B477    push        ecx
 0044B478    push        ebx
 0044B479    push        esi
 0044B47A    push        edi
 0044B47B    mov         dword ptr [ebp-4],eax
 0044B47E    mov         eax,dword ptr [ebp+8]
 0044B481    mov         eax,dword ptr [eax-4]
 0044B484    mov         edi,dword ptr [eax+8]
 0044B487    dec         edi
 0044B488    test        edi,edi
>0044B48A    jl          0044B4CA
 0044B48C    inc         edi
 0044B48D    xor         ebx,ebx
 0044B48F    mov         eax,dword ptr [ebp+8]
 0044B492    mov         esi,dword ptr [eax-4]
 0044B495    lea         eax,[esi+8]
 0044B498    mov         edx,ebx
 0044B49A    call        00434534
 0044B49F    mov         eax,dword ptr [esi+20]
 0044B4A2    mov         esi,dword ptr [eax+ebx*4]
 0044B4A5    mov         eax,esi
 0044B4A7    mov         edx,dword ptr ds:[44AF68];TRttiInstancePropertyEx
 0044B4AD    call        @IsClass
 0044B4B2    test        al,al
>0044B4B4    je          0044B4C6
 0044B4B6    mov         eax,esi
 0044B4B8    mov         edx,dword ptr [eax]
 0044B4BA    call        dword ptr [edx+30]
 0044B4BD    cmp         eax,dword ptr [ebp-4]
>0044B4C0    jne         0044B4C6
 0044B4C2    mov         al,1
>0044B4C4    jmp         0044B4CC
 0044B4C6    inc         ebx
 0044B4C7    dec         edi
>0044B4C8    jne         0044B48F
 0044B4CA    xor         eax,eax
 0044B4CC    pop         edi
 0044B4CD    pop         esi
 0044B4CE    pop         ebx
 0044B4CF    pop         ecx
 0044B4D0    pop         ebp
 0044B4D1    ret
end;*}

//0044B4D4
{*procedure sub_0044B4D4(?:?; ?:?; ?:?);
begin
 0044B4D4    push        ebp
 0044B4D5    mov         ebp,esp
 0044B4D7    add         esp,0FFFFFFF4
 0044B4DA    push        ebx
 0044B4DB    push        esi
 0044B4DC    push        edi
 0044B4DD    mov         dword ptr [ebp-8],ecx
 0044B4E0    mov         ebx,edx
 0044B4E2    mov         edi,eax
 0044B4E4    mov         dl,1
 0044B4E6    mov         eax,[0044CFE8];TList<System.Rtti.TRttiProperty>
 0044B4EB    call        00459F14
 0044B4F0    mov         dword ptr [ebp-4],eax
 0044B4F3    xor         edx,edx
 0044B4F5    push        ebp
 0044B4F6    push        44B57F
 0044B4FB    push        dword ptr fs:[edx]
 0044B4FE    mov         dword ptr fs:[edx],esp
 0044B501    mov         eax,ebx
 0044B503    test        eax,eax
>0044B505    je          0044B50C
 0044B507    sub         eax,4
 0044B50A    mov         eax,dword ptr [eax]
 0044B50C    mov         ecx,eax
 0044B50E    dec         ecx
 0044B50F    mov         edx,ebx
 0044B511    mov         eax,dword ptr [ebp-4]
 0044B514    call        TList<System.Rtti.TRttiProperty>.AddRange
 0044B519    mov         eax,edi
 0044B51B    test        eax,eax
>0044B51D    je          0044B524
 0044B51F    sub         eax,4
 0044B522    mov         eax,dword ptr [eax]
 0044B524    mov         esi,eax
 0044B526    dec         esi
 0044B527    test        esi,esi
>0044B529    jl          0044B559
 0044B52B    inc         esi
 0044B52C    xor         ebx,ebx
 0044B52E    push        ebp
 0044B52F    mov         eax,dword ptr [edi+ebx*4]
 0044B532    mov         edx,dword ptr [eax]
 0044B534    call        dword ptr [edx+30]
 0044B537    call        0044B474
 0044B53C    pop         ecx
 0044B53D    test        al,al
>0044B53F    jne         0044B555
 0044B541    mov         eax,dword ptr [edi+ebx*4]
 0044B544    mov         dword ptr [ebp-0C],eax
 0044B547    lea         edx,[ebp-0C]
 0044B54A    mov         eax,dword ptr [ebp-4]
 0044B54D    add         eax,8;TList<System.Rtti.TRttiProperty>.FCount:Integer
 0044B550    call        0043489C
 0044B555    inc         ebx
 0044B556    dec         esi
>0044B557    jne         0044B52E
 0044B559    mov         ecx,dword ptr [ebp-8]
 0044B55C    mov         edx,dword ptr [ebp-4]
 0044B55F    mov         eax,[0043EAF8];TListHelper
 0044B564    call        0045A1B4
 0044B569    xor         eax,eax
 0044B56B    pop         edx
 0044B56C    pop         ecx
 0044B56D    pop         ecx
 0044B56E    mov         dword ptr fs:[eax],edx
 0044B571    push        44B586
 0044B576    mov         eax,dword ptr [ebp-4]
 0044B579    call        TObject.Free
 0044B57E    ret
>0044B57F    jmp         @HandleFinally
>0044B584    jmp         0044B576
 0044B586    pop         edi
 0044B587    pop         esi
 0044B588    pop         ebx
 0044B589    mov         esp,ebp
 0044B58B    pop         ebp
 0044B58C    ret
end;*}

//0044B590
{*procedure sub_0044B590(?:?; ?:?);
begin
 0044B590    push        ebp
 0044B591    mov         ebp,esp
 0044B593    push        ebx
 0044B594    push        esi
 0044B595    push        edi
 0044B596    mov         edi,eax
 0044B598    mov         eax,dword ptr [ebp+8]
 0044B59B    add         eax,0FFFFFFFC
 0044B59E    call        ReadI16
 0044B5A3    movzx       eax,ax
 0044B5A6    push        eax
 0044B5A7    mov         eax,edi
 0044B5A9    mov         ecx,1
 0044B5AE    mov         edx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 0044B5B4    call        @DynArraySetLength
 0044B5B9    add         esp,4
 0044B5BC    mov         eax,dword ptr [edi]
 0044B5BE    test        eax,eax
>0044B5C0    je          0044B5C7
 0044B5C2    sub         eax,4
 0044B5C5    mov         eax,dword ptr [eax]
 0044B5C7    mov         ebx,eax
 0044B5C9    dec         ebx
 0044B5CA    test        ebx,ebx
>0044B5CC    jl          0044B606
 0044B5CE    inc         ebx
 0044B5CF    xor         esi,esi
 0044B5D1    mov         eax,dword ptr [ebp+8]
 0044B5D4    add         eax,0FFFFFFFC
 0044B5D7    push        eax
 0044B5D8    mov         eax,dword ptr [ebp+8]
 0044B5DB    mov         ecx,dword ptr [eax-8]
 0044B5DE    mov         eax,dword ptr [ebp+8]
 0044B5E1    mov         eax,dword ptr [eax-8]
 0044B5E4    mov         eax,dword ptr [eax+0C]
 0044B5E7    mov         edx,dword ptr ds:[438B68];TRttiIndexedProperty
 0044B5ED    call        TRttiPackage.ReadObject
 0044B5F2    mov         edx,dword ptr ds:[438B68];TRttiIndexedProperty
 0044B5F8    call        @AsClass
 0044B5FD    mov         edx,dword ptr [edi]
 0044B5FF    mov         dword ptr [edx+esi*4],eax
 0044B602    inc         esi
 0044B603    dec         ebx
>0044B604    jne         0044B5D1
 0044B606    pop         edi
 0044B607    pop         esi
 0044B608    pop         ebx
 0044B609    pop         ebp
 0044B60A    ret
end;*}

//0044B60C
procedure TRttiInstanceType.ReadPropData;
begin
{*
 0044B60C    push        ebp
 0044B60D    mov         ebp,esp
 0044B60F    mov         ecx,5
 0044B614    push        0
 0044B616    push        0
 0044B618    dec         ecx
>0044B619    jne         0044B614
 0044B61B    mov         dword ptr [ebp-8],eax
 0044B61E    xor         eax,eax
 0044B620    push        ebp
 0044B621    push        44B77D
 0044B626    push        dword ptr fs:[eax]
 0044B629    mov         dword ptr fs:[eax],esp
 0044B62C    mov         eax,dword ptr [ebp-8]
 0044B62F    cmp         byte ptr [eax+2C],0
>0044B633    jne         0044B733
 0044B639    mov         eax,dword ptr [ebp-8]
 0044B63C    call        TRttiType.GetTypeData
 0044B641    call        TTypeData.PropData
 0044B646    mov         dword ptr [ebp-4],eax
 0044B649    mov         eax,dword ptr [ebp-8]
 0044B64C    mov         eax,dword ptr [eax+0C]
 0044B64F    mov         eax,dword ptr [eax+18]
 0044B652    mov         dword ptr [ebp-14],eax
 0044B655    call        TMonitor.CheckMonitorSupport
 0044B65A    mov         eax,dword ptr [ebp-14]
 0044B65D    call        TMonitor.GetMonitor
 0044B662    or          edx,0FFFFFFFF
 0044B665    call        TMonitor.Enter
 0044B66A    xor         eax,eax
 0044B66C    push        ebp
 0044B66D    push        44B72C
 0044B672    push        dword ptr fs:[eax]
 0044B675    mov         dword ptr fs:[eax],esp
 0044B678    push        ebp
 0044B679    lea         eax,[ebp-18]
 0044B67C    call        0044B34C
 0044B681    pop         ecx
 0044B682    mov         edx,dword ptr [ebp-18]
 0044B685    lea         eax,[ebp-0C]
 0044B688    mov         ecx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B68E    call        @DynArrayAsg
 0044B693    push        ebp
 0044B694    lea         eax,[ebp-1C]
 0044B697    call        0044B3E0
 0044B69C    pop         ecx
 0044B69D    mov         edx,dword ptr [ebp-1C]
 0044B6A0    lea         eax,[ebp-10]
 0044B6A3    mov         ecx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B6A9    call        @DynArrayAsg
 0044B6AE    push        ebp
 0044B6AF    lea         ecx,[ebp-20]
 0044B6B2    mov         edx,dword ptr [ebp-10]
 0044B6B5    mov         eax,dword ptr [ebp-0C]
 0044B6B8    call        0044B4D4
 0044B6BD    pop         ecx
 0044B6BE    mov         edx,dword ptr [ebp-20]
 0044B6C1    mov         eax,dword ptr [ebp-8]
 0044B6C4    add         eax,18
 0044B6C7    mov         ecx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B6CD    call        @DynArrayAsg
 0044B6D2    lea         edx,[ebp-24]
 0044B6D5    lea         eax,[ebp-4]
 0044B6D8    call        LazyLoadAttributes
 0044B6DD    mov         edx,dword ptr [ebp-24]
 0044B6E0    mov         eax,dword ptr [ebp-8]
 0044B6E3    add         eax,14
 0044B6E6    call        @IntfCopy
 0044B6EB    push        ebp
 0044B6EC    lea         eax,[ebp-28]
 0044B6EF    call        0044B590
 0044B6F4    pop         ecx
 0044B6F5    mov         edx,dword ptr [ebp-28]
 0044B6F8    mov         eax,dword ptr [ebp-8]
 0044B6FB    add         eax,24
 0044B6FE    mov         ecx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 0044B704    call        @DynArrayAsg
 0044B709    mov         eax,dword ptr [ebp-8]
 0044B70C    mov         byte ptr [eax+2C],1
 0044B710    xor         eax,eax
 0044B712    pop         edx
 0044B713    pop         ecx
 0044B714    pop         ecx
 0044B715    mov         dword ptr fs:[eax],edx
 0044B718    push        44B733
 0044B71D    mov         eax,dword ptr [ebp-8]
 0044B720    mov         eax,dword ptr [eax+0C]
 0044B723    mov         eax,dword ptr [eax+18]
 0044B726    call        TMonitor.Exit
 0044B72B    ret
>0044B72C    jmp         @HandleFinally
>0044B731    jmp         0044B71D
 0044B733    xor         eax,eax
 0044B735    pop         edx
 0044B736    pop         ecx
 0044B737    pop         ecx
 0044B738    mov         dword ptr fs:[eax],edx
 0044B73B    push        44B784
 0044B740    lea         eax,[ebp-28]
 0044B743    mov         edx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 0044B749    call        @DynArrayClear
 0044B74E    lea         eax,[ebp-24]
 0044B751    call        @IntfClear
 0044B756    lea         eax,[ebp-20]
 0044B759    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B75F    mov         ecx,3
 0044B764    call        @FinalizeArray
 0044B769    lea         eax,[ebp-10]
 0044B76C    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B772    mov         ecx,2
 0044B777    call        @FinalizeArray
 0044B77C    ret
>0044B77D    jmp         @HandleFinally
>0044B782    jmp         0044B740
 0044B784    mov         esp,ebp
 0044B786    pop         ebp
 0044B787    ret
*}
end;

//0044B788
function TRttiInstanceType.GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>;
begin
{*
 0044B788    push        ebx
 0044B789    push        esi
 0044B78A    mov         esi,edx
 0044B78C    mov         ebx,eax
 0044B78E    cmp         byte ptr [ebx+2C],0
>0044B792    jne         0044B79B
 0044B794    mov         eax,ebx
 0044B796    call        TRttiInstanceType.ReadPropData
 0044B79B    mov         ecx,esi
 0044B79D    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0044B7A3    mov         eax,dword ptr [ebx+18]
 0044B7A6    call        @DynArrayCopy
 0044B7AB    pop         esi
 0044B7AC    pop         ebx
 0044B7AD    ret
*}
end;

//0044B7B0
function TRttiInstanceType.GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;
begin
{*
 0044B7B0    push        ebx
 0044B7B1    push        esi
 0044B7B2    mov         esi,edx
 0044B7B4    mov         ebx,eax
 0044B7B6    cmp         byte ptr [ebx+2D],0
>0044B7BA    jne         0044B7C3
 0044B7BC    mov         eax,ebx
 0044B7BE    call        TRttiInstanceType.ReadMethData
 0044B7C3    mov         ecx,esi
 0044B7C5    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044B7CB    mov         eax,dword ptr [ebx+1C]
 0044B7CE    call        @DynArrayCopy
 0044B7D3    pop         esi
 0044B7D4    pop         ebx
 0044B7D5    ret
*}
end;

//0044B7D8
{*procedure sub_0044B7D8(?:?; ?:?);
begin
 0044B7D8    push        ebp
 0044B7D9    mov         ebp,esp
 0044B7DB    push        ecx
 0044B7DC    push        ebx
 0044B7DD    push        esi
 0044B7DE    push        edi
 0044B7DF    mov         dword ptr [ebp-4],eax
 0044B7E2    mov         eax,dword ptr [ebp+8]
 0044B7E5    cmp         dword ptr [eax-4],0
>0044B7E9    jne         0044B7FE
 0044B7EB    mov         eax,dword ptr [ebp-4]
 0044B7EE    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044B7F4    call        @DynArrayClear
>0044B7F9    jmp         0044B88F
 0044B7FE    mov         eax,dword ptr [ebp+8]
 0044B801    add         eax,0FFFFFFFC
 0044B804    call        ReadI16
 0044B809    movzx       eax,ax
 0044B80C    push        eax
 0044B80D    mov         eax,dword ptr [ebp-4]
 0044B810    mov         ecx,1
 0044B815    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044B81B    call        @DynArraySetLength
 0044B820    add         esp,4
 0044B823    mov         eax,dword ptr [ebp-4]
 0044B826    mov         eax,dword ptr [eax]
 0044B828    test        eax,eax
>0044B82A    je          0044B831
 0044B82C    sub         eax,4
 0044B82F    mov         eax,dword ptr [eax]
 0044B831    mov         ebx,eax
 0044B833    dec         ebx
 0044B834    test        ebx,ebx
>0044B836    jl          0044B88F
 0044B838    inc         ebx
 0044B839    xor         esi,esi
 0044B83B    mov         eax,dword ptr [ebp+8]
 0044B83E    add         eax,0FFFFFFFC
 0044B841    call        PeekI16
 0044B846    movzx       eax,ax
 0044B849    mov         edx,dword ptr [ebp+8]
 0044B84C    mov         edi,dword ptr [edx-4]
 0044B84F    add         edi,eax
 0044B851    mov         eax,dword ptr [ebp+8]
 0044B854    add         eax,0FFFFFFFC
 0044B857    push        eax
 0044B858    mov         eax,dword ptr [ebp+8]
 0044B85B    mov         ecx,dword ptr [eax-8]
 0044B85E    mov         eax,dword ptr [ebp+8]
 0044B861    mov         eax,dword ptr [eax-8]
 0044B864    mov         eax,dword ptr [eax+0C]
 0044B867    mov         edx,dword ptr ds:[449844];TRttiInstanceMethodClassic
 0044B86D    call        TRttiPackage.ReadObject
 0044B872    mov         edx,dword ptr ds:[449844];TRttiInstanceMethodClassic
 0044B878    call        @AsClass
 0044B87D    mov         edx,dword ptr [ebp-4]
 0044B880    mov         edx,dword ptr [edx]
 0044B882    mov         dword ptr [edx+esi*4],eax
 0044B885    mov         eax,dword ptr [ebp+8]
 0044B888    mov         dword ptr [eax-4],edi
 0044B88B    inc         esi
 0044B88C    dec         ebx
>0044B88D    jne         0044B83B
 0044B88F    pop         edi
 0044B890    pop         esi
 0044B891    pop         ebx
 0044B892    pop         ecx
 0044B893    pop         ebp
 0044B894    ret
end;*}

//0044B898
{*procedure sub_0044B898(?:?; ?:?);
begin
 0044B898    push        ebp
 0044B899    mov         ebp,esp
 0044B89B    push        ebx
 0044B89C    push        esi
 0044B89D    push        edi
 0044B89E    mov         edi,eax
 0044B8A0    mov         eax,dword ptr [ebp+8]
 0044B8A3    cmp         dword ptr [eax-4],0
>0044B8A7    jne         0044B8B8
 0044B8A9    mov         eax,edi
 0044B8AB    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044B8B1    call        @DynArrayClear
>0044B8B6    jmp         0044B926
 0044B8B8    mov         eax,dword ptr [ebp+8]
 0044B8BB    add         eax,0FFFFFFFC
 0044B8BE    call        ReadI16
 0044B8C3    movzx       eax,ax
 0044B8C6    push        eax
 0044B8C7    mov         eax,edi
 0044B8C9    mov         ecx,1
 0044B8CE    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044B8D4    call        @DynArraySetLength
 0044B8D9    add         esp,4
 0044B8DC    mov         eax,dword ptr [edi]
 0044B8DE    test        eax,eax
>0044B8E0    je          0044B8E7
 0044B8E2    sub         eax,4
 0044B8E5    mov         eax,dword ptr [eax]
 0044B8E7    mov         ebx,eax
 0044B8E9    dec         ebx
 0044B8EA    test        ebx,ebx
>0044B8EC    jl          0044B926
 0044B8EE    inc         ebx
 0044B8EF    xor         esi,esi
 0044B8F1    mov         eax,dword ptr [ebp+8]
 0044B8F4    add         eax,0FFFFFFFC
 0044B8F7    push        eax
 0044B8F8    mov         eax,dword ptr [ebp+8]
 0044B8FB    mov         ecx,dword ptr [eax-8]
 0044B8FE    mov         eax,dword ptr [ebp+8]
 0044B901    mov         eax,dword ptr [eax-8]
 0044B904    mov         eax,dword ptr [eax+0C]
 0044B907    mov         edx,dword ptr ds:[44A2D8];TRttiInstanceMethodEx
 0044B90D    call        TRttiPackage.ReadObject
 0044B912    mov         edx,dword ptr ds:[44A2D8];TRttiInstanceMethodEx
 0044B918    call        @AsClass
 0044B91D    mov         edx,dword ptr [edi]
 0044B91F    mov         dword ptr [edx+esi*4],eax
 0044B922    inc         esi
 0044B923    dec         ebx
>0044B924    jne         0044B8F1
 0044B926    pop         edi
 0044B927    pop         esi
 0044B928    pop         ebx
 0044B929    pop         ebp
 0044B92A    ret
end;*}

//0044B92C
{*function sub_0044B92C(?:?; ?:?):?;
begin
 0044B92C    push        ebp
 0044B92D    mov         ebp,esp
 0044B92F    push        ecx
 0044B930    push        ebx
 0044B931    push        esi
 0044B932    push        edi
 0044B933    mov         dword ptr [ebp-4],eax
 0044B936    mov         eax,dword ptr [ebp+8]
 0044B939    mov         eax,dword ptr [eax-4]
 0044B93C    mov         edi,dword ptr [eax+8]
 0044B93F    dec         edi
 0044B940    test        edi,edi
>0044B942    jl          0044B983
 0044B944    inc         edi
 0044B945    xor         ebx,ebx
 0044B947    mov         eax,dword ptr [ebp+8]
 0044B94A    mov         esi,dword ptr [eax-4]
 0044B94D    lea         eax,[esi+8]
 0044B950    mov         edx,ebx
 0044B952    call        00434534
 0044B957    mov         eax,dword ptr [esi+20]
 0044B95A    mov         esi,dword ptr [eax+ebx*4]
 0044B95D    mov         eax,esi
 0044B95F    mov         edx,dword ptr ds:[44A2D8];TRttiInstanceMethodEx
 0044B965    call        @IsClass
 0044B96A    test        al,al
>0044B96C    je          0044B97F
 0044B96E    mov         eax,dword ptr [esi+1C]
 0044B971    mov         edx,dword ptr [eax]
 0044B973    call        dword ptr [edx+28]
 0044B976    cmp         eax,dword ptr [ebp-4]
>0044B979    jne         0044B97F
 0044B97B    mov         al,1
>0044B97D    jmp         0044B985
 0044B97F    inc         ebx
 0044B980    dec         edi
>0044B981    jne         0044B947
 0044B983    xor         eax,eax
 0044B985    pop         edi
 0044B986    pop         esi
 0044B987    pop         ebx
 0044B988    pop         ecx
 0044B989    pop         ebp
 0044B98A    ret
end;*}

//0044B98C
{*procedure sub_0044B98C(?:?; ?:?; ?:?);
begin
 0044B98C    push        ebp
 0044B98D    mov         ebp,esp
 0044B98F    add         esp,0FFFFFFF4
 0044B992    push        ebx
 0044B993    push        esi
 0044B994    push        edi
 0044B995    mov         dword ptr [ebp-8],ecx
 0044B998    mov         ebx,edx
 0044B99A    mov         edi,eax
 0044B99C    mov         dl,1
 0044B99E    mov         eax,[0044E350];TList<System.Rtti.TRttiMethod>
 0044B9A3    call        0045A37C
 0044B9A8    mov         dword ptr [ebp-4],eax
 0044B9AB    xor         edx,edx
 0044B9AD    push        ebp
 0044B9AE    push        44BA37
 0044B9B3    push        dword ptr fs:[edx]
 0044B9B6    mov         dword ptr fs:[edx],esp
 0044B9B9    mov         eax,ebx
 0044B9BB    test        eax,eax
>0044B9BD    je          0044B9C4
 0044B9BF    sub         eax,4
 0044B9C2    mov         eax,dword ptr [eax]
 0044B9C4    mov         ecx,eax
 0044B9C6    dec         ecx
 0044B9C7    mov         edx,ebx
 0044B9C9    mov         eax,dword ptr [ebp-4]
 0044B9CC    call        TList<System.Rtti.TRttiMethod>.AddRange
 0044B9D1    mov         eax,edi
 0044B9D3    test        eax,eax
>0044B9D5    je          0044B9DC
 0044B9D7    sub         eax,4
 0044B9DA    mov         eax,dword ptr [eax]
 0044B9DC    mov         esi,eax
 0044B9DE    dec         esi
 0044B9DF    test        esi,esi
>0044B9E1    jl          0044BA11
 0044B9E3    inc         esi
 0044B9E4    xor         ebx,ebx
 0044B9E6    push        ebp
 0044B9E7    mov         eax,dword ptr [edi+ebx*4]
 0044B9EA    mov         edx,dword ptr [eax]
 0044B9EC    call        dword ptr [edx+28]
 0044B9EF    call        0044B92C
 0044B9F4    pop         ecx
 0044B9F5    test        al,al
>0044B9F7    jne         0044BA0D
 0044B9F9    mov         eax,dword ptr [edi+ebx*4]
 0044B9FC    mov         dword ptr [ebp-0C],eax
 0044B9FF    lea         edx,[ebp-0C]
 0044BA02    mov         eax,dword ptr [ebp-4]
 0044BA05    add         eax,8;TList<System.Rtti.TRttiMethod>.FCount:Integer
 0044BA08    call        0043489C
 0044BA0D    inc         ebx
 0044BA0E    dec         esi
>0044BA0F    jne         0044B9E6
 0044BA11    mov         ecx,dword ptr [ebp-8]
 0044BA14    mov         edx,dword ptr [ebp-4]
 0044BA17    mov         eax,[0043EAF8];TListHelper
 0044BA1C    call        0045A61C
 0044BA21    xor         eax,eax
 0044BA23    pop         edx
 0044BA24    pop         ecx
 0044BA25    pop         ecx
 0044BA26    mov         dword ptr fs:[eax],edx
 0044BA29    push        44BA3E
 0044BA2E    mov         eax,dword ptr [ebp-4]
 0044BA31    call        TObject.Free
 0044BA36    ret
>0044BA37    jmp         @HandleFinally
>0044BA3C    jmp         0044BA2E
 0044BA3E    pop         edi
 0044BA3F    pop         esi
 0044BA40    pop         ebx
 0044BA41    mov         esp,ebp
 0044BA43    pop         ebp
 0044BA44    ret
end;*}

//0044BA48
procedure TRttiInstanceType.ReadMethData;
begin
{*
 0044BA48    push        ebp
 0044BA49    mov         ebp,esp
 0044BA4B    xor         ecx,ecx
 0044BA4D    push        ecx
 0044BA4E    push        ecx
 0044BA4F    push        ecx
 0044BA50    push        ecx
 0044BA51    push        ecx
 0044BA52    push        ecx
 0044BA53    push        ecx
 0044BA54    push        ecx
 0044BA55    mov         dword ptr [ebp-8],eax
 0044BA58    xor         eax,eax
 0044BA5A    push        ebp
 0044BA5B    push        44BB89
 0044BA60    push        dword ptr fs:[eax]
 0044BA63    mov         dword ptr fs:[eax],esp
 0044BA66    mov         eax,dword ptr [ebp-8]
 0044BA69    cmp         byte ptr [eax+2D],0
>0044BA6D    jne         0044BB55
 0044BA73    mov         eax,dword ptr [ebp-8]
 0044BA76    mov         eax,dword ptr [eax+0C]
 0044BA79    mov         eax,dword ptr [eax+18]
 0044BA7C    mov         dword ptr [ebp-14],eax
 0044BA7F    call        TMonitor.CheckMonitorSupport
 0044BA84    mov         eax,dword ptr [ebp-14]
 0044BA87    call        TMonitor.GetMonitor
 0044BA8C    or          edx,0FFFFFFFF
 0044BA8F    call        TMonitor.Enter
 0044BA94    xor         eax,eax
 0044BA96    push        ebp
 0044BA97    push        44BB4E
 0044BA9C    push        dword ptr fs:[eax]
 0044BA9F    mov         dword ptr fs:[eax],esp
 0044BAA2    mov         eax,dword ptr [ebp-8]
 0044BAA5    call        TRttiInstanceType.GetMetaclassType
 0044BAAA    add         eax,0FFFFFFC0
 0044BAAD    mov         eax,dword ptr [eax]
 0044BAAF    mov         dword ptr [ebp-4],eax
 0044BAB2    cmp         dword ptr [ebp-4],0
>0044BAB6    jne         0044BAC2
 0044BAB8    call        @TryFinallyExit
>0044BABD    jmp         0044BB55
 0044BAC2    push        ebp
 0044BAC3    lea         eax,[ebp-18]
 0044BAC6    call        0044B7D8
 0044BACB    pop         ecx
 0044BACC    mov         edx,dword ptr [ebp-18]
 0044BACF    lea         eax,[ebp-0C]
 0044BAD2    mov         ecx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044BAD8    call        @DynArrayAsg
 0044BADD    push        ebp
 0044BADE    lea         eax,[ebp-1C]
 0044BAE1    call        0044B898
 0044BAE6    pop         ecx
 0044BAE7    mov         edx,dword ptr [ebp-1C]
 0044BAEA    lea         eax,[ebp-10]
 0044BAED    mov         ecx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044BAF3    call        @DynArrayAsg
 0044BAF8    lea         eax,[ebp-4]
 0044BAFB    call        ReadI16
 0044BB00    mov         edx,dword ptr [ebp-8]
 0044BB03    mov         word ptr [edx+20],ax
 0044BB07    push        ebp
 0044BB08    lea         ecx,[ebp-20]
 0044BB0B    mov         edx,dword ptr [ebp-10]
 0044BB0E    mov         eax,dword ptr [ebp-0C]
 0044BB11    call        0044B98C
 0044BB16    pop         ecx
 0044BB17    mov         edx,dword ptr [ebp-20]
 0044BB1A    mov         eax,dword ptr [ebp-8]
 0044BB1D    add         eax,1C
 0044BB20    mov         ecx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044BB26    call        @DynArrayAsg
 0044BB2B    mov         eax,dword ptr [ebp-8]
 0044BB2E    mov         byte ptr [eax+2D],1
 0044BB32    xor         eax,eax
 0044BB34    pop         edx
 0044BB35    pop         ecx
 0044BB36    pop         ecx
 0044BB37    mov         dword ptr fs:[eax],edx
 0044BB3A    push        44BB55
 0044BB3F    mov         eax,dword ptr [ebp-8]
 0044BB42    mov         eax,dword ptr [eax+0C]
 0044BB45    mov         eax,dword ptr [eax+18]
 0044BB48    call        TMonitor.Exit
 0044BB4D    ret
>0044BB4E    jmp         @HandleFinally
>0044BB53    jmp         0044BB3F
 0044BB55    xor         eax,eax
 0044BB57    pop         edx
 0044BB58    pop         ecx
 0044BB59    pop         ecx
 0044BB5A    mov         dword ptr fs:[eax],edx
 0044BB5D    push        44BB90
 0044BB62    lea         eax,[ebp-20]
 0044BB65    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044BB6B    mov         ecx,3
 0044BB70    call        @FinalizeArray
 0044BB75    lea         eax,[ebp-10]
 0044BB78    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0044BB7E    mov         ecx,2
 0044BB83    call        @FinalizeArray
 0044BB88    ret
>0044BB89    jmp         @HandleFinally
>0044BB8E    jmp         0044BB62
 0044BB90    mov         esp,ebp
 0044BB92    pop         ebp
 0044BB93    ret
*}
end;

//0044BB94
function ReadClassicFields:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>;
begin
{*
 0044BB94    push        ebp
 0044BB95    mov         ebp,esp
 0044BB97    push        ebx
 0044BB98    push        esi
 0044BB99    push        edi
 0044BB9A    mov         edi,eax
 0044BB9C    mov         eax,dword ptr [ebp+8]
 0044BB9F    mov         ebx,dword ptr [eax-4]
 0044BBA2    movzx       eax,word ptr [ebx]
 0044BBA5    push        eax
 0044BBA6    mov         eax,edi
 0044BBA8    mov         ecx,1
 0044BBAD    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0044BBB3    call        @DynArraySetLength
 0044BBB8    add         esp,4
 0044BBBB    mov         eax,dword ptr [ebp+8]
 0044BBBE    add         dword ptr [eax-4],6
 0044BBC2    mov         eax,dword ptr [edi]
 0044BBC4    test        eax,eax
>0044BBC6    je          0044BBCD
 0044BBC8    sub         eax,4
 0044BBCB    mov         eax,dword ptr [eax]
 0044BBCD    mov         ebx,eax
 0044BBCF    dec         ebx
 0044BBD0    test        ebx,ebx
>0044BBD2    jl          0044BC0C
 0044BBD4    inc         ebx
 0044BBD5    xor         esi,esi
 0044BBD7    mov         eax,dword ptr [ebp+8]
 0044BBDA    add         eax,0FFFFFFFC
 0044BBDD    push        eax
 0044BBDE    mov         eax,dword ptr [ebp+8]
 0044BBE1    mov         ecx,dword ptr [eax-8]
 0044BBE4    mov         eax,dword ptr [ebp+8]
 0044BBE7    mov         eax,dword ptr [eax-8]
 0044BBEA    mov         eax,dword ptr [eax+0C]
 0044BBED    mov         edx,dword ptr ds:[44B078];TRttiInstanceFieldClassic
 0044BBF3    call        TRttiPackage.ReadObject
 0044BBF8    mov         edx,dword ptr ds:[437260];TRttiField
 0044BBFE    call        @AsClass
 0044BC03    mov         edx,dword ptr [edi]
 0044BC05    mov         dword ptr [edx+esi*4],eax
 0044BC08    inc         esi
 0044BC09    dec         ebx
>0044BC0A    jne         0044BBD7
 0044BC0C    pop         edi
 0044BC0D    pop         esi
 0044BC0E    pop         ebx
 0044BC0F    pop         ebp
 0044BC10    ret
*}
end;

//0044BC14
function ReadExtendedFields:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>;
begin
{*
 0044BC14    push        ebp
 0044BC15    mov         ebp,esp
 0044BC17    push        ebx
 0044BC18    push        esi
 0044BC19    push        edi
 0044BC1A    mov         edi,eax
 0044BC1C    mov         eax,dword ptr [ebp+8]
 0044BC1F    add         eax,0FFFFFFFC
 0044BC22    call        ReadI16
 0044BC27    movzx       eax,ax
 0044BC2A    push        eax
 0044BC2B    mov         eax,edi
 0044BC2D    mov         ecx,1
 0044BC32    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0044BC38    call        @DynArraySetLength
 0044BC3D    add         esp,4
 0044BC40    mov         eax,dword ptr [edi]
 0044BC42    test        eax,eax
>0044BC44    je          0044BC4B
 0044BC46    sub         eax,4
 0044BC49    mov         eax,dword ptr [eax]
 0044BC4B    mov         ebx,eax
 0044BC4D    dec         ebx
 0044BC4E    test        ebx,ebx
>0044BC50    jl          0044BC8A
 0044BC52    inc         ebx
 0044BC53    xor         esi,esi
 0044BC55    mov         eax,dword ptr [ebp+8]
 0044BC58    add         eax,0FFFFFFFC
 0044BC5B    push        eax
 0044BC5C    mov         eax,dword ptr [ebp+8]
 0044BC5F    mov         ecx,dword ptr [eax-8]
 0044BC62    mov         eax,dword ptr [ebp+8]
 0044BC65    mov         eax,dword ptr [eax-8]
 0044BC68    mov         eax,dword ptr [eax+0C]
 0044BC6B    mov         edx,dword ptr ds:[44B1A0];TRttiInstanceFieldEx
 0044BC71    call        TRttiPackage.ReadObject
 0044BC76    mov         edx,dword ptr ds:[437260];TRttiField
 0044BC7C    call        @AsClass
 0044BC81    mov         edx,dword ptr [edi]
 0044BC83    mov         dword ptr [edx+esi*4],eax
 0044BC86    inc         esi
 0044BC87    dec         ebx
>0044BC88    jne         0044BC55
 0044BC8A    pop         edi
 0044BC8B    pop         esi
 0044BC8C    pop         ebx
 0044BC8D    pop         ebp
 0044BC8E    ret
*}
end;

//0044BC90
{*function sub_0044BC90(?:?; ?:?):?;
begin
 0044BC90    push        ebp
 0044BC91    mov         ebp,esp
 0044BC93    push        ecx
 0044BC94    push        ebx
 0044BC95    push        esi
 0044BC96    push        edi
 0044BC97    mov         dword ptr [ebp-4],eax
 0044BC9A    mov         eax,dword ptr [ebp+8]
 0044BC9D    mov         eax,dword ptr [eax-4]
 0044BCA0    mov         edi,dword ptr [eax+8]
 0044BCA3    dec         edi
 0044BCA4    test        edi,edi
>0044BCA6    jl          0044BCE6
 0044BCA8    inc         edi
 0044BCA9    xor         ebx,ebx
 0044BCAB    mov         eax,dword ptr [ebp+8]
 0044BCAE    mov         esi,dword ptr [eax-4]
 0044BCB1    lea         eax,[esi+8]
 0044BCB4    mov         edx,ebx
 0044BCB6    call        00434534
 0044BCBB    mov         eax,dword ptr [esi+20]
 0044BCBE    mov         esi,dword ptr [eax+ebx*4]
 0044BCC1    mov         eax,esi
 0044BCC3    mov         edx,dword ptr ds:[44B1A0];TRttiInstanceFieldEx
 0044BCC9    call        @IsClass
 0044BCCE    test        al,al
>0044BCD0    je          0044BCE2
 0044BCD2    mov         eax,esi
 0044BCD4    mov         edx,dword ptr [eax]
 0044BCD6    call        dword ptr [edx+14]
 0044BCD9    cmp         eax,dword ptr [ebp-4]
>0044BCDC    jne         0044BCE2
 0044BCDE    mov         al,1
>0044BCE0    jmp         0044BCE8
 0044BCE2    inc         ebx
 0044BCE3    dec         edi
>0044BCE4    jne         0044BCAB
 0044BCE6    xor         eax,eax
 0044BCE8    pop         edi
 0044BCE9    pop         esi
 0044BCEA    pop         ebx
 0044BCEB    pop         ecx
 0044BCEC    pop         ebp
 0044BCED    ret
end;*}

//0044BCF0
function SubtractClassic(const AClassic:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>; const AExtended:TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>):TArray<System.Rtti.TRttiField>System.TArray`1<TRttiField>;
begin
{*
 0044BCF0    push        ebp
 0044BCF1    mov         ebp,esp
 0044BCF3    add         esp,0FFFFFFF4
 0044BCF6    push        ebx
 0044BCF7    push        esi
 0044BCF8    push        edi
 0044BCF9    mov         dword ptr [ebp-8],ecx
 0044BCFC    mov         ebx,edx
 0044BCFE    mov         edi,eax
 0044BD00    mov         dl,1
 0044BD02    mov         eax,[0044F6A8];TList<System.Rtti.TRttiField>
 0044BD07    call        0045A7E4
 0044BD0C    mov         dword ptr [ebp-4],eax
 0044BD0F    xor         edx,edx
 0044BD11    push        ebp
 0044BD12    push        44BD9B
 0044BD17    push        dword ptr fs:[edx]
 0044BD1A    mov         dword ptr fs:[edx],esp
 0044BD1D    mov         eax,ebx
 0044BD1F    test        eax,eax
>0044BD21    je          0044BD28
 0044BD23    sub         eax,4
 0044BD26    mov         eax,dword ptr [eax]
 0044BD28    mov         ecx,eax
 0044BD2A    dec         ecx
 0044BD2B    mov         edx,ebx
 0044BD2D    mov         eax,dword ptr [ebp-4]
 0044BD30    call        TList<System.Rtti.TRttiField>.AddRange
 0044BD35    mov         eax,edi
 0044BD37    test        eax,eax
>0044BD39    je          0044BD40
 0044BD3B    sub         eax,4
 0044BD3E    mov         eax,dword ptr [eax]
 0044BD40    mov         esi,eax
 0044BD42    dec         esi
 0044BD43    test        esi,esi
>0044BD45    jl          0044BD75
 0044BD47    inc         esi
 0044BD48    xor         ebx,ebx
 0044BD4A    push        ebp
 0044BD4B    mov         eax,dword ptr [edi+ebx*4]
 0044BD4E    mov         edx,dword ptr [eax]
 0044BD50    call        dword ptr [edx+14]
 0044BD53    call        0044BC90
 0044BD58    pop         ecx
 0044BD59    test        al,al
>0044BD5B    jne         0044BD71
 0044BD5D    mov         eax,dword ptr [edi+ebx*4]
 0044BD60    mov         dword ptr [ebp-0C],eax
 0044BD63    lea         edx,[ebp-0C]
 0044BD66    mov         eax,dword ptr [ebp-4]
 0044BD69    add         eax,8
 0044BD6C    call        0043489C
 0044BD71    inc         ebx
 0044BD72    dec         esi
>0044BD73    jne         0044BD4A
 0044BD75    mov         ecx,dword ptr [ebp-8]
 0044BD78    mov         edx,dword ptr [ebp-4]
 0044BD7B    mov         eax,[0043EAF8];TListHelper
 0044BD80    call        0045AA84
 0044BD85    xor         eax,eax
 0044BD87    pop         edx
 0044BD88    pop         ecx
 0044BD89    pop         ecx
 0044BD8A    mov         dword ptr fs:[eax],edx
 0044BD8D    push        44BDA2
 0044BD92    mov         eax,dword ptr [ebp-4]
 0044BD95    call        TObject.Free
 0044BD9A    ret
>0044BD9B    jmp         @HandleFinally
>0044BDA0    jmp         0044BD92
 0044BDA2    pop         edi
 0044BDA3    pop         esi
 0044BDA4    pop         ebx
 0044BDA5    mov         esp,ebp
 0044BDA7    pop         ebp
 0044BDA8    ret
*}
end;

//0044BDAC
function TRttiInstanceType.GetDeclaredFields:TArray<System.Rtti.TRttiField>;
begin
{*
 0044BDAC    push        ebp
 0044BDAD    mov         ebp,esp
 0044BDAF    xor         ecx,ecx
 0044BDB1    push        ecx
 0044BDB2    push        ecx
 0044BDB3    push        ecx
 0044BDB4    push        ecx
 0044BDB5    push        ecx
 0044BDB6    push        ecx
 0044BDB7    push        ecx
 0044BDB8    push        ebx
 0044BDB9    mov         ebx,edx
 0044BDBB    mov         dword ptr [ebp-8],eax
 0044BDBE    xor         eax,eax
 0044BDC0    push        ebp
 0044BDC1    push        44BE68
 0044BDC6    push        dword ptr fs:[eax]
 0044BDC9    mov         dword ptr fs:[eax],esp
 0044BDCC    mov         eax,dword ptr [ebp-8]
 0044BDCF    call        TRttiInstanceType.GetMetaclassType
 0044BDD4    add         eax,0FFFFFFBC
 0044BDD7    mov         eax,dword ptr [eax]
 0044BDD9    mov         dword ptr [ebp-4],eax
 0044BDDC    cmp         dword ptr [ebp-4],0
>0044BDE0    jne         0044BDF1
 0044BDE2    mov         eax,ebx
 0044BDE4    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0044BDEA    call        @DynArrayClear
>0044BDEF    jmp         0044BE47
 0044BDF1    push        ebp
 0044BDF2    lea         eax,[ebp-14]
 0044BDF5    call        ReadClassicFields
 0044BDFA    pop         ecx
 0044BDFB    mov         edx,dword ptr [ebp-14]
 0044BDFE    lea         eax,[ebp-0C]
 0044BE01    mov         ecx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0044BE07    call        @DynArrayAsg
 0044BE0C    push        ebp
 0044BE0D    lea         eax,[ebp-18]
 0044BE10    call        ReadExtendedFields
 0044BE15    pop         ecx
 0044BE16    mov         edx,dword ptr [ebp-18]
 0044BE19    lea         eax,[ebp-10]
 0044BE1C    mov         ecx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0044BE22    call        @DynArrayAsg
 0044BE27    push        ebp
 0044BE28    lea         ecx,[ebp-1C]
 0044BE2B    mov         edx,dword ptr [ebp-10]
 0044BE2E    mov         eax,dword ptr [ebp-0C]
 0044BE31    call        SubtractClassic
 0044BE36    pop         ecx
 0044BE37    mov         edx,dword ptr [ebp-1C]
 0044BE3A    mov         eax,ebx
 0044BE3C    mov         ecx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0044BE42    call        @DynArrayAsg
 0044BE47    xor         eax,eax
 0044BE49    pop         edx
 0044BE4A    pop         ecx
 0044BE4B    pop         ecx
 0044BE4C    mov         dword ptr fs:[eax],edx
 0044BE4F    push        44BE6F
 0044BE54    lea         eax,[ebp-1C]
 0044BE57    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0044BE5D    mov         ecx,5
 0044BE62    call        @FinalizeArray
 0044BE67    ret
>0044BE68    jmp         @HandleFinally
>0044BE6D    jmp         0044BE54
 0044BE6F    pop         ebx
 0044BE70    mov         esp,ebp
 0044BE72    pop         ebp
 0044BE73    ret
*}
end;

//0044BE74
function TRttiInstanceType.GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>;
begin
{*
 0044BE74    push        ebx
 0044BE75    push        esi
 0044BE76    mov         esi,edx
 0044BE78    mov         ebx,eax
 0044BE7A    cmp         byte ptr [ebx+2C],0
>0044BE7E    jne         0044BE87
 0044BE80    mov         eax,ebx
 0044BE82    call        TRttiInstanceType.ReadPropData
 0044BE87    mov         eax,esi
 0044BE89    mov         edx,dword ptr [ebx+24]
 0044BE8C    mov         ecx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 0044BE92    call        @DynArrayAsg
 0044BE97    pop         esi
 0044BE98    pop         ebx
 0044BE99    ret
*}
end;

//0044BE9C
function TRttiDynamicArrayType.GetDeclaringUnitName:UnicodeString;
begin
{*
 0044BE9C    push        ebx
 0044BE9D    push        esi
 0044BE9E    push        ecx
 0044BE9F    mov         esi,edx
 0044BEA1    mov         ebx,eax
 0044BEA3    mov         eax,ebx
 0044BEA5    call        TRttiType.GetTypeData
 0044BEAA    call        TTypeData.DynUnitNameFld
 0044BEAF    mov         dword ptr [esp],eax
 0044BEB2    mov         eax,esp
 0044BEB4    mov         edx,esi
 0044BEB6    call        TTypeInfoFieldAccessor.ToString
 0044BEBB    pop         edx
 0044BEBC    pop         esi
 0044BEBD    pop         ebx
 0044BEBE    ret
*}
end;

//0044BEC0
function TRttiInstanceType.GetVmtSize:Integer;
begin
{*
 0044BEC0    push        ebx
 0044BEC1    mov         ebx,eax
 0044BEC3    cmp         byte ptr [ebx+2D],0
>0044BEC7    jne         0044BED0
 0044BEC9    mov         eax,ebx
 0044BECB    call        TRttiInstanceType.ReadMethData
 0044BED0    movzx       eax,word ptr [ebx+20]
 0044BED4    add         eax,eax
 0044BED6    add         eax,eax
 0044BED8    sub         eax,0FFFFFFA8
 0044BEDB    pop         ebx
 0044BEDC    ret
*}
end;

//0044BEE0
function TRttiInstanceProperty.GetDefault:Integer;
begin
{*
 0044BEE0    push        ebx
 0044BEE1    mov         ebx,eax
 0044BEE3    mov         eax,ebx
 0044BEE5    mov         edx,dword ptr [eax]
 0044BEE7    call        dword ptr [edx+30]
 0044BEEA    mov         eax,dword ptr [eax+14]
 0044BEED    pop         ebx
 0044BEEE    ret
*}
end;

//0044BEF0
function TRttiInstanceProperty.GetIndex:Integer;
begin
{*
 0044BEF0    push        ebx
 0044BEF1    mov         ebx,eax
 0044BEF3    mov         eax,ebx
 0044BEF5    mov         edx,dword ptr [eax]
 0044BEF7    call        dword ptr [edx+30]
 0044BEFA    mov         eax,dword ptr [eax+10]
 0044BEFD    pop         ebx
 0044BEFE    ret
*}
end;

//0044BF00
function TRttiInstanceProperty.GetName:UnicodeString;
begin
{*
 0044BF00    push        ebx
 0044BF01    push        esi
 0044BF02    push        ecx
 0044BF03    mov         esi,edx
 0044BF05    mov         ebx,eax
 0044BF07    mov         eax,ebx
 0044BF09    mov         edx,dword ptr [eax]
 0044BF0B    call        dword ptr [edx+30]
 0044BF0E    call        TPropInfo.NameFld
 0044BF13    mov         dword ptr [esp],eax
 0044BF16    mov         eax,esp
 0044BF18    mov         edx,esi
 0044BF1A    call        TTypeInfoFieldAccessor.ToString
 0044BF1F    pop         edx
 0044BF20    pop         esi
 0044BF21    pop         ebx
 0044BF22    ret
*}
end;

//0044BF24
function TRttiInstanceProperty.GetNameIndex:SmallInt;
begin
{*
 0044BF24    push        ebx
 0044BF25    mov         ebx,eax
 0044BF27    mov         eax,ebx
 0044BF29    mov         edx,dword ptr [eax]
 0044BF2B    call        dword ptr [edx+30]
 0044BF2E    movzx       eax,word ptr [eax+18]
 0044BF32    pop         ebx
 0044BF33    ret
*}
end;

//0044BF34
function TRttiInstanceProperty.GetPropertyType:TRttiType;
begin
{*
 0044BF34    push        ebx
 0044BF35    mov         ebx,eax
 0044BF37    mov         eax,ebx
 0044BF39    mov         edx,dword ptr [eax]
 0044BF3B    call        dword ptr [edx+30]
 0044BF3E    mov         edx,dword ptr [eax]
 0044BF40    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 0044BF45    call        TRttiPool.TypeOrNil
 0044BF4A    pop         ebx
 0044BF4B    ret
*}
end;

//0044BF4C
function TRttiInstanceProperty.GetIsReadable:Boolean;
begin
{*
 0044BF4C    push        ebx
 0044BF4D    mov         ebx,eax
 0044BF4F    mov         eax,ebx
 0044BF51    mov         edx,dword ptr [eax]
 0044BF53    call        dword ptr [edx+30]
 0044BF56    cmp         dword ptr [eax+4],0
 0044BF5A    setne       al
 0044BF5D    pop         ebx
 0044BF5E    ret
*}
end;

//0044BF60
function TRttiInstanceProperty.GetIsWritable:Boolean;
begin
{*
 0044BF60    push        ebx
 0044BF61    mov         ebx,eax
 0044BF63    mov         eax,ebx
 0044BF65    mov         edx,dword ptr [eax]
 0044BF67    call        dword ptr [edx+30]
 0044BF6A    cmp         dword ptr [eax+8],0
 0044BF6E    setne       al
 0044BF71    pop         ebx
 0044BF72    ret
*}
end;

//0044BF74
function TRttiInstanceProperty.DoGetValue(Instance:Pointer):TValue;
begin
{*
 0044BF74    push        ebp
 0044BF75    mov         ebp,esp
 0044BF77    push        ecx
 0044BF78    mov         ecx,9
 0044BF7D    push        0
 0044BF7F    push        0
 0044BF81    dec         ecx
>0044BF82    jne         0044BF7D
 0044BF84    push        ecx
 0044BF85    xchg        ecx,dword ptr [ebp-4]
 0044BF88    push        ebx
 0044BF89    push        esi
 0044BF8A    push        edi
 0044BF8B    mov         dword ptr [ebp-8],ecx
 0044BF8E    mov         edi,edx
 0044BF90    mov         ebx,eax
 0044BF92    xor         eax,eax
 0044BF94    push        ebp
 0044BF95    push        44C10A
 0044BF9A    push        dword ptr fs:[eax]
 0044BF9D    mov         dword ptr fs:[eax],esp
 0044BFA0    mov         eax,ebx
 0044BFA2    mov         edx,dword ptr [eax]
 0044BFA4    call        dword ptr [edx+30]
 0044BFA7    mov         esi,dword ptr [eax+4]
 0044BFAA    mov         eax,esi
 0044BFAC    and         eax,0FF000000
 0044BFB1    cmp         eax,0FF000000
>0044BFB6    jne         0044BFE9
 0044BFB8    mov         eax,ebx
 0044BFBA    mov         edx,dword ptr [eax]
 0044BFBC    call        dword ptr [edx+10]
 0044BFBF    call        TRttiType.GetHandle
 0044BFC4    push        eax
 0044BFC5    mov         eax,dword ptr [ebp-8]
 0044BFC8    mov         edx,dword ptr ds:[435E20];TValue
 0044BFCE    call        @FinalizeRecord
 0044BFD3    mov         ecx,eax
 0044BFD5    mov         eax,esi
 0044BFD7    and         eax,0FFFFFF
 0044BFDC    add         eax,edi
 0044BFDE    pop         edx
 0044BFDF    call        TValue.Make
>0044BFE4    jmp         0044C0DB
 0044BFE9    cmp         eax,0FE000000
>0044BFEE    jne         0044BFF9
 0044BFF0    mov         eax,dword ptr [edi]
 0044BFF2    movsx       edx,si
 0044BFF5    add         eax,edx
 0044BFF7    mov         esi,dword ptr [eax]
 0044BFF9    mov         eax,esi
 0044BFFB    call        CheckCodeAddress
 0044C000    mov         eax,ebx
 0044C002    mov         edx,dword ptr [eax]
 0044C004    call        dword ptr [edx+28]
 0044C007    cmp         eax,80000000
>0044C00C    jne         0044C064
 0044C00E    push        1
 0044C010    lea         eax,[ebp-4]
 0044C013    mov         ecx,1
 0044C018    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044C01E    call        @DynArraySetLength
 0044C023    add         esp,4
 0044C026    lea         edx,[ebp-20]
 0044C029    mov         eax,edi
 0044C02B    call        0043F970
 0044C030    lea         edx,[ebp-20]
 0044C033    mov         eax,dword ptr [ebp-4]
 0044C036    mov         ecx,dword ptr ds:[435E20];TValue
 0044C03C    call        @CopyRecord
 0044C041    mov         eax,ebx
 0044C043    mov         edx,dword ptr [eax]
 0044C045    call        dword ptr [edx+10]
 0044C048    call        TRttiType.GetHandle
 0044C04D    push        eax
 0044C04E    push        0
 0044C050    push        0
 0044C052    mov         eax,dword ptr [ebp-8]
 0044C055    push        eax
 0044C056    xor         ecx,ecx
 0044C058    mov         edx,dword ptr [ebp-4]
 0044C05B    mov         eax,esi
 0044C05D    call        Invoke
>0044C062    jmp         0044C0DB
 0044C064    push        2
 0044C066    lea         eax,[ebp-4]
 0044C069    mov         ecx,1
 0044C06E    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044C074    call        @DynArraySetLength
 0044C079    add         esp,4
 0044C07C    lea         edx,[ebp-38]
 0044C07F    mov         eax,edi
 0044C081    call        0043F970
 0044C086    lea         edx,[ebp-38]
 0044C089    mov         eax,dword ptr [ebp-4]
 0044C08C    mov         ecx,dword ptr ds:[435E20];TValue
 0044C092    call        @CopyRecord
 0044C097    mov         eax,ebx
 0044C099    mov         edx,dword ptr [eax]
 0044C09B    call        dword ptr [edx+28]
 0044C09E    lea         edx,[ebp-50]
 0044C0A1    call        TValue.&op_Implicit
 0044C0A6    lea         edx,[ebp-50]
 0044C0A9    mov         eax,dword ptr [ebp-4]
 0044C0AC    add         eax,18
 0044C0AF    mov         ecx,dword ptr ds:[435E20];TValue
 0044C0B5    call        @CopyRecord
 0044C0BA    mov         eax,ebx
 0044C0BC    mov         edx,dword ptr [eax]
 0044C0BE    call        dword ptr [edx+10]
 0044C0C1    call        TRttiType.GetHandle
 0044C0C6    push        eax
 0044C0C7    push        0
 0044C0C9    push        0
 0044C0CB    mov         eax,dword ptr [ebp-8]
 0044C0CE    push        eax
 0044C0CF    xor         ecx,ecx
 0044C0D1    mov         edx,dword ptr [ebp-4]
 0044C0D4    mov         eax,esi
 0044C0D6    call        Invoke
 0044C0DB    xor         eax,eax
 0044C0DD    pop         edx
 0044C0DE    pop         ecx
 0044C0DF    pop         ecx
 0044C0E0    mov         dword ptr fs:[eax],edx
 0044C0E3    push        44C111
 0044C0E8    lea         eax,[ebp-50]
 0044C0EB    mov         edx,dword ptr ds:[435E20];TValue
 0044C0F1    mov         ecx,3
 0044C0F6    call        @FinalizeArray
 0044C0FB    lea         eax,[ebp-4]
 0044C0FE    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044C104    call        @DynArrayClear
 0044C109    ret
>0044C10A    jmp         @HandleFinally
>0044C10F    jmp         0044C0E8
 0044C111    pop         edi
 0044C112    pop         esi
 0044C113    pop         ebx
 0044C114    mov         esp,ebp
 0044C116    pop         ebp
 0044C117    ret
*}
end;

//0044C118
{*procedure sub_0044C118(?:?; ?:?);
begin
 0044C118    push        ebp
 0044C119    mov         ebp,esp
 0044C11B    push        ecx
 0044C11C    mov         ecx,19
 0044C121    push        0
 0044C123    push        0
 0044C125    dec         ecx
>0044C126    jne         0044C121
 0044C128    xchg        ecx,dword ptr [ebp-4]
 0044C12B    push        ebx
 0044C12C    push        esi
 0044C12D    push        edi
 0044C12E    mov         dword ptr [ebp-24],ecx
 0044C131    mov         edi,edx
 0044C133    mov         ebx,eax
 0044C135    lea         eax,[ebp-20]
 0044C138    mov         edx,dword ptr ds:[435E20];TValue
 0044C13E    call        @AddRefRecord
 0044C143    xor         eax,eax
 0044C145    push        ebp
 0044C146    push        44C327
 0044C14B    push        dword ptr fs:[eax]
 0044C14E    mov         dword ptr fs:[eax],esp
 0044C151    mov         eax,ebx
 0044C153    mov         edx,dword ptr [eax]
 0044C155    call        dword ptr [edx+30];TRttiInstanceProperty.GetPropInfo
 0044C158    mov         esi,dword ptr [eax+8]
 0044C15B    mov         eax,esi
 0044C15D    and         eax,0FF000000
 0044C162    cmp         eax,0FF000000
>0044C167    jne         0044C199
 0044C169    mov         eax,ebx
 0044C16B    mov         edx,dword ptr [eax]
 0044C16D    call        dword ptr [edx+10];TRttiInstanceProperty.GetPropertyType
 0044C170    call        TRttiType.GetHandle
 0044C175    mov         edx,eax
 0044C177    lea         ecx,[ebp-20]
 0044C17A    mov         eax,dword ptr [ebp-24]
 0044C17D    call        TValue.Cast
 0044C182    lea         eax,[ebp-20]
 0044C185    mov         edx,esi
 0044C187    and         edx,0FFFFFF
 0044C18D    add         edx,edi
 0044C18F    call        TValue.ExtractRawData
>0044C194    jmp         0044C2E7
 0044C199    cmp         eax,0FE000000
>0044C19E    jne         0044C1A9
 0044C1A0    mov         eax,dword ptr [edi]
 0044C1A2    movsx       edx,si
 0044C1A5    add         eax,edx
 0044C1A7    mov         esi,dword ptr [eax]
 0044C1A9    mov         eax,esi
 0044C1AB    call        CheckCodeAddress
 0044C1B0    mov         eax,ebx
 0044C1B2    mov         edx,dword ptr [eax]
 0044C1B4    call        dword ptr [edx+28];TRttiInstanceProperty.GetIndex
 0044C1B7    cmp         eax,80000000
>0044C1BC    jne         0044C239
 0044C1BE    push        2
 0044C1C0    lea         eax,[ebp-4]
 0044C1C3    mov         ecx,1
 0044C1C8    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044C1CE    call        @DynArraySetLength
 0044C1D3    add         esp,4
 0044C1D6    lea         edx,[ebp-3C]
 0044C1D9    mov         eax,edi
 0044C1DB    call        0043F970
 0044C1E0    lea         edx,[ebp-3C]
 0044C1E3    mov         eax,dword ptr [ebp-4]
 0044C1E6    mov         ecx,dword ptr ds:[435E20];TValue
 0044C1EC    call        @CopyRecord
 0044C1F1    mov         eax,ebx
 0044C1F3    mov         edx,dword ptr [eax]
 0044C1F5    call        dword ptr [edx+10];TRttiInstanceProperty.GetPropertyType
 0044C1F8    call        TRttiType.GetHandle
 0044C1FD    mov         edx,eax
 0044C1FF    lea         ecx,[ebp-54]
 0044C202    mov         eax,dword ptr [ebp-24]
 0044C205    call        TValue.Cast
 0044C20A    lea         edx,[ebp-54]
 0044C20D    mov         eax,dword ptr [ebp-4]
 0044C210    add         eax,18
 0044C213    mov         ecx,dword ptr ds:[435E20];TValue
 0044C219    call        @CopyRecord
 0044C21E    push        0
 0044C220    push        0
 0044C222    push        0
 0044C224    lea         eax,[ebp-6C]
 0044C227    push        eax
 0044C228    xor         ecx,ecx
 0044C22A    mov         edx,dword ptr [ebp-4]
 0044C22D    mov         eax,esi
 0044C22F    call        Invoke
>0044C234    jmp         0044C2E7
 0044C239    push        3
 0044C23B    lea         eax,[ebp-4]
 0044C23E    mov         ecx,1
 0044C243    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044C249    call        @DynArraySetLength
 0044C24E    add         esp,4
 0044C251    lea         edx,[ebp-84]
 0044C257    mov         eax,edi
 0044C259    call        0043F970
 0044C25E    lea         edx,[ebp-84]
 0044C264    mov         eax,dword ptr [ebp-4]
 0044C267    mov         ecx,dword ptr ds:[435E20];TValue
 0044C26D    call        @CopyRecord
 0044C272    mov         eax,ebx
 0044C274    mov         edx,dword ptr [eax]
 0044C276    call        dword ptr [edx+28];TRttiInstanceProperty.GetIndex
 0044C279    lea         edx,[ebp-9C]
 0044C27F    call        TValue.&op_Implicit
 0044C284    lea         edx,[ebp-9C]
 0044C28A    mov         eax,dword ptr [ebp-4]
 0044C28D    add         eax,18
 0044C290    mov         ecx,dword ptr ds:[435E20];TValue
 0044C296    call        @CopyRecord
 0044C29B    mov         eax,ebx
 0044C29D    mov         edx,dword ptr [eax]
 0044C29F    call        dword ptr [edx+10];TRttiInstanceProperty.GetPropertyType
 0044C2A2    call        TRttiType.GetHandle
 0044C2A7    mov         edx,eax
 0044C2A9    lea         ecx,[ebp-0B4]
 0044C2AF    mov         eax,dword ptr [ebp-24]
 0044C2B2    call        TValue.Cast
 0044C2B7    lea         edx,[ebp-0B4]
 0044C2BD    mov         eax,dword ptr [ebp-4]
 0044C2C0    add         eax,30
 0044C2C3    mov         ecx,dword ptr ds:[435E20];TValue
 0044C2C9    call        @CopyRecord
 0044C2CE    push        0
 0044C2D0    push        0
 0044C2D2    push        0
 0044C2D4    lea         eax,[ebp-0CC]
 0044C2DA    push        eax
 0044C2DB    xor         ecx,ecx
 0044C2DD    mov         edx,dword ptr [ebp-4]
 0044C2E0    mov         eax,esi
 0044C2E2    call        Invoke
 0044C2E7    xor         eax,eax
 0044C2E9    pop         edx
 0044C2EA    pop         ecx
 0044C2EB    pop         ecx
 0044C2EC    mov         dword ptr fs:[eax],edx
 0044C2EF    push        44C32E
 0044C2F4    lea         eax,[ebp-0CC]
 0044C2FA    mov         edx,dword ptr ds:[435E20];TValue
 0044C300    mov         ecx,7
 0044C305    call        @FinalizeArray
 0044C30A    lea         eax,[ebp-20]
 0044C30D    mov         edx,dword ptr ds:[435E20];TValue
 0044C313    call        @FinalizeRecord
 0044C318    lea         eax,[ebp-4]
 0044C31B    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0044C321    call        @DynArrayClear
 0044C326    ret
>0044C327    jmp         @HandleFinally
>0044C32C    jmp         0044C2F4
 0044C32E    pop         edi
 0044C32F    pop         esi
 0044C330    pop         ebx
 0044C331    mov         esp,ebp
 0044C333    pop         ebp
 0044C334    ret
end;*}

//0044C338
function TRttiInstanceProperty.ToString:string;
begin
{*
 0044C338    push        ebp
 0044C339    mov         ebp,esp
 0044C33B    push        0
 0044C33D    push        0
 0044C33F    push        ebx
 0044C340    push        esi
 0044C341    mov         esi,edx
 0044C343    mov         ebx,eax
 0044C345    xor         eax,eax
 0044C347    push        ebp
 0044C348    push        44C3A3
 0044C34D    push        dword ptr fs:[eax]
 0044C350    mov         dword ptr fs:[eax],esp
 0044C353    push        44C3BC;'property '
 0044C358    lea         edx,[ebp-4]
 0044C35B    mov         eax,ebx
 0044C35D    mov         ecx,dword ptr [eax]
 0044C35F    call        dword ptr [ecx+8]
 0044C362    push        dword ptr [ebp-4]
 0044C365    push        44C3DC;': '
 0044C36A    mov         eax,ebx
 0044C36C    mov         edx,dword ptr [eax]
 0044C36E    call        dword ptr [edx+10]
 0044C371    lea         edx,[ebp-8]
 0044C374    mov         ecx,dword ptr [eax]
 0044C376    call        dword ptr [ecx+8]
 0044C379    push        dword ptr [ebp-8]
 0044C37C    mov         eax,esi
 0044C37E    mov         edx,4
 0044C383    call        @UStrCatN
 0044C388    xor         eax,eax
 0044C38A    pop         edx
 0044C38B    pop         ecx
 0044C38C    pop         ecx
 0044C38D    mov         dword ptr fs:[eax],edx
 0044C390    push        44C3AA
 0044C395    lea         eax,[ebp-8]
 0044C398    mov         edx,2
 0044C39D    call        @UStrArrayClr
 0044C3A2    ret
>0044C3A3    jmp         @HandleFinally
>0044C3A8    jmp         0044C395
 0044C3AA    pop         esi
 0044C3AB    pop         ebx
 0044C3AC    pop         ecx
 0044C3AD    pop         ecx
 0044C3AE    pop         ebp
 0044C3AF    ret
*}
end;

//0044C3E4
constructor TRttiInstanceFieldClassic.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 0044C3E4    push        ebp
 0044C3E5    mov         ebp,esp
 0044C3E7    push        ecx
 0044C3E8    push        ebx
 0044C3E9    push        esi
 0044C3EA    test        dl,dl
>0044C3EC    je          0044C3F6
 0044C3EE    add         esp,0FFFFFFF0
 0044C3F1    call        @ClassCreate
 0044C3F6    mov         byte ptr [ebp-1],dl
 0044C3F9    mov         ebx,eax
 0044C3FB    mov         esi,dword ptr [ebp+8]
 0044C3FE    mov         eax,dword ptr [ebp+0C]
 0044C401    push        eax
 0044C402    push        esi
 0044C403    xor         edx,edx
 0044C405    mov         eax,ebx
 0044C407    call        TRttiObject.Create
 0044C40C    mov         eax,ebx
 0044C40E    call        TRttiInstanceFieldClassic.GetHandle
 0044C413    call        TVmtFieldEntry.AttrData
 0044C418    mov         dword ptr [esi],eax
 0044C41A    mov         eax,ebx
 0044C41C    cmp         byte ptr [ebp-1],0
>0044C420    je          0044C431
 0044C422    call        @AfterConstruction
 0044C427    pop         dword ptr fs:[0]
 0044C42E    add         esp,0C
 0044C431    mov         eax,ebx
 0044C433    pop         esi
 0044C434    pop         ebx
 0044C435    pop         ecx
 0044C436    pop         ebp
 0044C437    ret         8
*}
end;

//0044C43C
function TRttiInstanceFieldClassic.GetHandle:PVmtFieldEntry;
begin
{*
 0044C43C    mov         eax,dword ptr [eax+4]
 0044C43F    ret
*}
end;

//0044C440
procedure TRttiInstancePropertyClassic.GetPropInfo;
begin
{*
 0044C440    call        TRttiInstanceFieldClassic.GetHandle
 0044C445    ret
*}
end;

//0044C448
constructor TRttiInstancePropertyEx.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 0044C448    push        ebp
 0044C449    mov         ebp,esp
 0044C44B    add         esp,0FFFFFFF8
 0044C44E    push        ebx
 0044C44F    push        esi
 0044C450    xor         ebx,ebx
 0044C452    mov         dword ptr [ebp-8],ebx
 0044C455    test        dl,dl
>0044C457    je          0044C461
 0044C459    add         esp,0FFFFFFF0
 0044C45C    call        @ClassCreate
 0044C461    mov         byte ptr [ebp-1],dl
 0044C464    mov         ebx,eax
 0044C466    mov         esi,dword ptr [ebp+8]
 0044C469    xor         eax,eax
 0044C46B    push        ebp
 0044C46C    push        44C4BC
 0044C471    push        dword ptr fs:[eax]
 0044C474    mov         dword ptr fs:[eax],esp
 0044C477    mov         eax,dword ptr [ebp+0C]
 0044C47A    push        eax
 0044C47B    push        esi
 0044C47C    xor         edx,edx
 0044C47E    mov         eax,ebx
 0044C480    call        TRttiObject.Create
 0044C485    mov         eax,ebx
 0044C487    call        TRttiInstancePropertyEx.GetHandle
 0044C48C    add         eax,5
 0044C48F    mov         dword ptr [esi],eax
 0044C491    lea         edx,[ebp-8]
 0044C494    mov         eax,esi
 0044C496    call        LazyLoadAttributes
 0044C49B    mov         edx,dword ptr [ebp-8]
 0044C49E    lea         eax,[ebx+14]
 0044C4A1    call        @IntfCopy
 0044C4A6    xor         eax,eax
 0044C4A8    pop         edx
 0044C4A9    pop         ecx
 0044C4AA    pop         ecx
 0044C4AB    mov         dword ptr fs:[eax],edx
 0044C4AE    push        44C4C3
 0044C4B3    lea         eax,[ebp-8]
 0044C4B6    call        @IntfClear
 0044C4BB    ret
>0044C4BC    jmp         @HandleFinally
>0044C4C1    jmp         0044C4B3
 0044C4C3    mov         eax,ebx
 0044C4C5    cmp         byte ptr [ebp-1],0
>0044C4C9    je          0044C4DA
 0044C4CB    call        @AfterConstruction
 0044C4D0    pop         dword ptr fs:[0]
 0044C4D7    add         esp,0C
 0044C4DA    mov         eax,ebx
 0044C4DC    pop         esi
 0044C4DD    pop         ebx
 0044C4DE    pop         ecx
 0044C4DF    pop         ecx
 0044C4E0    pop         ebp
 0044C4E1    ret         8
*}
end;

//0044C4E4
function TRttiInstancePropertyEx.GetPropInfo:PPropInfo;
begin
{*
 0044C4E4    push        ebx
 0044C4E5    mov         ebx,eax
 0044C4E7    mov         eax,ebx
 0044C4E9    call        TRttiInstancePropertyEx.GetHandle
 0044C4EE    mov         eax,dword ptr [eax+1]
 0044C4F1    pop         ebx
 0044C4F2    ret
*}
end;

//0044C4F4
function TRttiInstancePropertyEx.GetHandle:PPropInfoEx;
begin
{*
 0044C4F4    mov         eax,dword ptr [eax+4]
 0044C4F7    ret
*}
end;

//0044C4F8
function TRttiInstancePropertyEx.GetVisibility:TMemberVisibility;
begin
{*
 0044C4F8    push        ebx
 0044C4F9    mov         ebx,eax
 0044C4FB    mov         eax,ebx
 0044C4FD    call        TRttiInstancePropertyEx.GetHandle
 0044C502    movzx       eax,byte ptr [eax]
 0044C505    mov         ecx,2
 0044C50A    xor         edx,edx
 0044C50C    call        GetBitField
 0044C511    pop         ebx
 0044C512    ret
*}
end;

//0044C514
constructor TRttiOrdinalType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 0044C514    push        ebp
 0044C515    mov         ebp,esp
 0044C517    add         esp,0FFFFFFF8
 0044C51A    push        ebx
 0044C51B    push        esi
 0044C51C    xor         ebx,ebx
 0044C51E    mov         dword ptr [ebp-8],ebx
 0044C521    test        dl,dl
>0044C523    je          0044C52D
 0044C525    add         esp,0FFFFFFF0
 0044C528    call        @ClassCreate
 0044C52D    mov         byte ptr [ebp-1],dl
 0044C530    mov         ebx,eax
 0044C532    mov         esi,dword ptr [ebp+8]
 0044C535    xor         eax,eax
 0044C537    push        ebp
 0044C538    push        44C58B
 0044C53D    push        dword ptr fs:[eax]
 0044C540    mov         dword ptr fs:[eax],esp
 0044C543    mov         eax,dword ptr [ebp+0C]
 0044C546    push        eax
 0044C547    push        esi
 0044C548    xor         edx,edx
 0044C54A    mov         eax,ebx
 0044C54C    call        TRttiType.Create
 0044C551    mov         eax,ebx
 0044C553    call        TRttiType.GetTypeData
 0044C558    add         eax,5
 0044C55B    add         eax,4
 0044C55E    mov         dword ptr [esi],eax
 0044C560    lea         edx,[ebp-8]
 0044C563    mov         eax,esi
 0044C565    call        LazyLoadAttributes
 0044C56A    mov         edx,dword ptr [ebp-8]
 0044C56D    lea         eax,[ebx+14]
 0044C570    call        @IntfCopy
 0044C575    xor         eax,eax
 0044C577    pop         edx
 0044C578    pop         ecx
 0044C579    pop         ecx
 0044C57A    mov         dword ptr fs:[eax],edx
 0044C57D    push        44C592
 0044C582    lea         eax,[ebp-8]
 0044C585    call        @IntfClear
 0044C58A    ret
>0044C58B    jmp         @HandleFinally
>0044C590    jmp         0044C582
 0044C592    mov         eax,ebx
 0044C594    cmp         byte ptr [ebp-1],0
>0044C598    je          0044C5A9
 0044C59A    call        @AfterConstruction
 0044C59F    pop         dword ptr fs:[0]
 0044C5A6    add         esp,0C
 0044C5A9    mov         eax,ebx
 0044C5AB    pop         esi
 0044C5AC    pop         ebx
 0044C5AD    pop         ecx
 0044C5AE    pop         ecx
 0044C5AF    pop         ebp
 0044C5B0    ret         8
*}
end;

//0044C5B4
function TRttiOrdinalType.GetMaxValue:LongInt;
begin
{*
 0044C5B4    push        ebx
 0044C5B5    mov         ebx,eax
 0044C5B7    mov         eax,ebx
 0044C5B9    call        TRttiType.GetTypeData
 0044C5BE    mov         eax,dword ptr [eax+5]
 0044C5C1    pop         ebx
 0044C5C2    ret
*}
end;

//0044C5C4
function TRttiOrdinalType.GetMinValue:LongInt;
begin
{*
 0044C5C4    push        ebx
 0044C5C5    mov         ebx,eax
 0044C5C7    mov         eax,ebx
 0044C5C9    call        TRttiType.GetTypeData
 0044C5CE    mov         eax,dword ptr [eax+1]
 0044C5D1    pop         ebx
 0044C5D2    ret
*}
end;

//0044C5D4
function TRttiFloatType.GetFloatType:TFloatType;
begin
{*
 0044C5D4    push        ebx
 0044C5D5    mov         ebx,eax
 0044C5D7    mov         eax,ebx
 0044C5D9    call        TRttiType.GetTypeData
 0044C5DE    movzx       eax,byte ptr [eax]
 0044C5E1    pop         ebx
 0044C5E2    ret
*}
end;

//0044C5E4
function TRttiFloatType.GetTypeSize:Integer;
begin
{*
 0044C5E4    push        ebx
 0044C5E5    mov         ebx,eax
 0044C5E7    mov         eax,ebx
 0044C5E9    call        TRttiFloatType.GetFloatType
 0044C5EE    and         eax,7F
 0044C5F1    mov         eax,dword ptr [eax*4+7A0578]
 0044C5F8    pop         ebx
 0044C5F9    ret
*}
end;

//0044C5FC
constructor TRttiInt64Type.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 0044C5FC    push        ebp
 0044C5FD    mov         ebp,esp
 0044C5FF    add         esp,0FFFFFFF8
 0044C602    push        ebx
 0044C603    push        esi
 0044C604    xor         ebx,ebx
 0044C606    mov         dword ptr [ebp-8],ebx
 0044C609    test        dl,dl
>0044C60B    je          0044C615
 0044C60D    add         esp,0FFFFFFF0
 0044C610    call        @ClassCreate
 0044C615    mov         byte ptr [ebp-1],dl
 0044C618    mov         ebx,eax
 0044C61A    mov         esi,dword ptr [ebp+8]
 0044C61D    xor         eax,eax
 0044C61F    push        ebp
 0044C620    push        44C670
 0044C625    push        dword ptr fs:[eax]
 0044C628    mov         dword ptr fs:[eax],esp
 0044C62B    mov         eax,dword ptr [ebp+0C]
 0044C62E    push        eax
 0044C62F    push        esi
 0044C630    xor         edx,edx
 0044C632    mov         eax,ebx
 0044C634    call        TRttiType.Create
 0044C639    mov         eax,ebx
 0044C63B    call        TRttiType.GetTypeData
 0044C640    add         eax,10
 0044C643    mov         dword ptr [esi],eax
 0044C645    lea         edx,[ebp-8]
 0044C648    mov         eax,esi
 0044C64A    call        LazyLoadAttributes
 0044C64F    mov         edx,dword ptr [ebp-8]
 0044C652    lea         eax,[ebx+14]
 0044C655    call        @IntfCopy
 0044C65A    xor         eax,eax
 0044C65C    pop         edx
 0044C65D    pop         ecx
 0044C65E    pop         ecx
 0044C65F    mov         dword ptr fs:[eax],edx
 0044C662    push        44C677
 0044C667    lea         eax,[ebp-8]
 0044C66A    call        @IntfClear
 0044C66F    ret
>0044C670    jmp         @HandleFinally
>0044C675    jmp         0044C667
 0044C677    mov         eax,ebx
 0044C679    cmp         byte ptr [ebp-1],0
>0044C67D    je          0044C68E
 0044C67F    call        @AfterConstruction
 0044C684    pop         dword ptr fs:[0]
 0044C68B    add         esp,0C
 0044C68E    mov         eax,ebx
 0044C690    pop         esi
 0044C691    pop         ebx
 0044C692    pop         ecx
 0044C693    pop         ecx
 0044C694    pop         ebp
 0044C695    ret         8
*}
end;

//0044C698
{*function sub_0044C698:?;
begin
 0044C698    mov         eax,8
 0044C69D    ret
end;*}

//0044C6A0
function TRttiInt64Type.GetMaxValue:Int64;
begin
{*
 0044C6A0    push        ebx
 0044C6A1    add         esp,0FFFFFFF8
 0044C6A4    mov         ebx,eax
 0044C6A6    mov         eax,ebx
 0044C6A8    call        TRttiType.GetTypeData
 0044C6AD    mov         edx,dword ptr [eax+8]
 0044C6B0    mov         dword ptr [esp],edx
 0044C6B3    mov         edx,dword ptr [eax+0C]
 0044C6B6    mov         dword ptr [esp+4],edx
 0044C6BA    mov         eax,dword ptr [esp]
 0044C6BD    mov         edx,dword ptr [esp+4]
 0044C6C1    pop         ecx
 0044C6C2    pop         edx
 0044C6C3    pop         ebx
 0044C6C4    ret
*}
end;

//0044C6C8
function TRttiInt64Type.GetMinValue:Int64;
begin
{*
 0044C6C8    push        ebx
 0044C6C9    add         esp,0FFFFFFF8
 0044C6CC    mov         ebx,eax
 0044C6CE    mov         eax,ebx
 0044C6D0    call        TRttiType.GetTypeData
 0044C6D5    mov         edx,dword ptr [eax]
 0044C6D7    mov         dword ptr [esp],edx
 0044C6DA    mov         edx,dword ptr [eax+4]
 0044C6DD    mov         dword ptr [esp+4],edx
 0044C6E1    mov         eax,dword ptr [esp]
 0044C6E4    mov         edx,dword ptr [esp+4]
 0044C6E8    pop         ecx
 0044C6E9    pop         edx
 0044C6EA    pop         ebx
 0044C6EB    ret
*}
end;

//0044C6EC
constructor TRttiClassRefType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 0044C6EC    push        ebp
 0044C6ED    mov         ebp,esp
 0044C6EF    add         esp,0FFFFFFF8
 0044C6F2    push        ebx
 0044C6F3    push        esi
 0044C6F4    xor         ebx,ebx
 0044C6F6    mov         dword ptr [ebp-8],ebx
 0044C6F9    test        dl,dl
>0044C6FB    je          0044C705
 0044C6FD    add         esp,0FFFFFFF0
 0044C700    call        @ClassCreate
 0044C705    mov         byte ptr [ebp-1],dl
 0044C708    mov         ebx,eax
 0044C70A    mov         esi,dword ptr [ebp+8]
 0044C70D    xor         eax,eax
 0044C70F    push        ebp
 0044C710    push        44C760
 0044C715    push        dword ptr fs:[eax]
 0044C718    mov         dword ptr fs:[eax],esp
 0044C71B    mov         eax,dword ptr [ebp+0C]
 0044C71E    push        eax
 0044C71F    push        esi
 0044C720    xor         edx,edx
 0044C722    mov         eax,ebx
 0044C724    call        TRttiType.Create
 0044C729    mov         eax,ebx
 0044C72B    call        TRttiType.GetTypeData
 0044C730    add         eax,4
 0044C733    mov         dword ptr [esi],eax
 0044C735    lea         edx,[ebp-8]
 0044C738    mov         eax,esi
 0044C73A    call        LazyLoadAttributes
 0044C73F    mov         edx,dword ptr [ebp-8]
 0044C742    lea         eax,[ebx+14]
 0044C745    call        @IntfCopy
 0044C74A    xor         eax,eax
 0044C74C    pop         edx
 0044C74D    pop         ecx
 0044C74E    pop         ecx
 0044C74F    mov         dword ptr fs:[eax],edx
 0044C752    push        44C767
 0044C757    lea         eax,[ebp-8]
 0044C75A    call        @IntfClear
 0044C75F    ret
>0044C760    jmp         @HandleFinally
>0044C765    jmp         0044C757
 0044C767    mov         eax,ebx
 0044C769    cmp         byte ptr [ebp-1],0
>0044C76D    je          0044C77E
 0044C76F    call        @AfterConstruction
 0044C774    pop         dword ptr fs:[0]
 0044C77B    add         esp,0C
 0044C77E    mov         eax,ebx
 0044C780    pop         esi
 0044C781    pop         ebx
 0044C782    pop         ecx
 0044C783    pop         ecx
 0044C784    pop         ebp
 0044C785    ret         8
*}
end;

//0044C788
function TRttiClassRefType.GetInstanceType:TRttiInstanceType;
begin
{*
 0044C788    push        ebx
 0044C789    mov         ebx,eax
 0044C78B    mov         eax,ebx
 0044C78D    call        TRttiType.GetTypeData
 0044C792    mov         edx,dword ptr [eax]
 0044C794    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 0044C799    call        TRttiPool.TypeOrNil
 0044C79E    mov         edx,dword ptr ds:[438E84];TRttiInstanceType
 0044C7A4    call        @AsClass
 0044C7A9    pop         ebx
 0044C7AA    ret
*}
end;

//0044C7AC
function TRttiClassRefType.GetMetaclassType:TClass;
begin
{*
 0044C7AC    push        ebx
 0044C7AD    mov         ebx,eax
 0044C7AF    mov         eax,ebx
 0044C7B1    call        TRttiType.GetTypeData
 0044C7B6    mov         ebx,dword ptr [eax]
 0044C7B8    test        ebx,ebx
>0044C7BA    je          0044C7C1
 0044C7BC    cmp         dword ptr [ebx],0
>0044C7BF    jne         0044C7C5
 0044C7C1    xor         eax,eax
 0044C7C3    pop         ebx
 0044C7C4    ret
 0044C7C5    mov         eax,dword ptr [ebx]
 0044C7C7    call        GetTypeData
 0044C7CC    mov         eax,dword ptr [eax]
 0044C7CE    pop         ebx
 0044C7CF    ret
*}
end;

//0044C7D0
function SkipEnumNameList(P:Windows.PByte; ACount:Integer):PByte;
begin
{*
 0044C7D0    push        ebx
 0044C7D1    push        esi
 0044C7D2    mov         esi,edx
 0044C7D4    mov         ebx,eax
 0044C7D6    test        esi,esi
>0044C7D8    jle         0044C7E8
 0044C7DA    mov         eax,ebx
 0044C7DC    call        _SkipShortString
 0044C7E1    mov         ebx,eax
 0044C7E3    dec         esi
 0044C7E4    test        esi,esi
>0044C7E6    jg          0044C7DA
 0044C7E8    mov         eax,ebx
 0044C7EA    pop         esi
 0044C7EB    pop         ebx
 0044C7EC    ret
*}
end;

//0044C7F0
constructor TRttiEnumerationType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 0044C7F0    push        ebp
 0044C7F1    mov         ebp,esp
 0044C7F3    add         esp,0FFFFFFF8
 0044C7F6    push        ebx
 0044C7F7    push        esi
 0044C7F8    push        edi
 0044C7F9    xor         ebx,ebx
 0044C7FB    mov         dword ptr [ebp-8],ebx
 0044C7FE    test        dl,dl
>0044C800    je          0044C80A
 0044C802    add         esp,0FFFFFFF0
 0044C805    call        @ClassCreate
 0044C80A    mov         byte ptr [ebp-1],dl
 0044C80D    mov         ebx,eax
 0044C80F    mov         esi,dword ptr [ebp+8]
 0044C812    xor         eax,eax
 0044C814    push        ebp
 0044C815    push        44C8A1
 0044C81A    push        dword ptr fs:[eax]
 0044C81D    mov         dword ptr fs:[eax],esp
 0044C820    mov         eax,dword ptr [ebp+0C]
 0044C823    push        eax
 0044C824    push        esi
 0044C825    xor         edx,edx
 0044C827    mov         eax,ebx
 0044C829    call        TRttiOrdinalType.Create
 0044C82E    mov         eax,ebx
 0044C830    call        TRttiType.GetTypeData
 0044C835    add         eax,0D
 0044C838    mov         dword ptr [esi],eax
 0044C83A    mov         eax,ebx
 0044C83C    call        TRttiType.GetTypeData
 0044C841    mov         eax,dword ptr [eax+9]
 0044C844    mov         edi,dword ptr [eax]
 0044C846    mov         eax,ebx
 0044C848    call        TRttiType.GetHandle
 0044C84D    cmp         edi,eax
>0044C84F    jne         0044C86D
 0044C851    mov         eax,ebx
 0044C853    mov         edx,dword ptr [eax]
 0044C855    call        dword ptr [edx+54];TRttiEnumerationType.GetMaxValue
 0044C858    push        eax
 0044C859    mov         eax,ebx
 0044C85B    mov         edx,dword ptr [eax]
 0044C85D    call        dword ptr [edx+58];TRttiEnumerationType.GetMinValue
 0044C860    pop         edx
 0044C861    sub         edx,eax
 0044C863    inc         edx
 0044C864    mov         eax,dword ptr [esi]
 0044C866    call        SkipEnumNameList
 0044C86B    mov         dword ptr [esi],eax
 0044C86D    mov         eax,dword ptr [esi]
 0044C86F    call        _SkipShortString
 0044C874    mov         dword ptr [esi],eax
 0044C876    lea         edx,[ebp-8]
 0044C879    mov         eax,esi
 0044C87B    call        LazyLoadAttributes
 0044C880    mov         edx,dword ptr [ebp-8]
 0044C883    lea         eax,[ebx+14];TRttiEnumerationType.FAttributeGetter:TFunc<System.TArray<System.TCustomAtt...
 0044C886    call        @IntfCopy
 0044C88B    xor         eax,eax
 0044C88D    pop         edx
 0044C88E    pop         ecx
 0044C88F    pop         ecx
 0044C890    mov         dword ptr fs:[eax],edx
 0044C893    push        44C8A8
 0044C898    lea         eax,[ebp-8]
 0044C89B    call        @IntfClear
 0044C8A0    ret
>0044C8A1    jmp         @HandleFinally
>0044C8A6    jmp         0044C898
 0044C8A8    mov         eax,ebx
 0044C8AA    cmp         byte ptr [ebp-1],0
>0044C8AE    je          0044C8BF
 0044C8B0    call        @AfterConstruction
 0044C8B5    pop         dword ptr fs:[0]
 0044C8BC    add         esp,0C
 0044C8BF    mov         eax,ebx
 0044C8C1    pop         edi
 0044C8C2    pop         esi
 0044C8C3    pop         ebx
 0044C8C4    pop         ecx
 0044C8C5    pop         ecx
 0044C8C6    pop         ebp
 0044C8C7    ret         8
*}
end;

//0044C8CC
function TRttiEnumerationType.GetUnderlyingType:TRttiType;
begin
{*
 0044C8CC    push        ebx
 0044C8CD    mov         ebx,eax
 0044C8CF    mov         eax,ebx
 0044C8D1    call        TRttiType.GetTypeData
 0044C8D6    mov         edx,dword ptr [eax+9]
 0044C8D9    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 0044C8DE    call        TRttiPool.TypeOrNil
 0044C8E3    pop         ebx
 0044C8E4    ret
*}
end;

//0044C8E8
function TRttiEnumerationType.GetMaxValue:LongInt;
begin
{*
 0044C8E8    push        ebx
 0044C8E9    push        esi
 0044C8EA    mov         ebx,eax
 0044C8EC    mov         eax,ebx
 0044C8EE    call        TRttiType.GetTypeData
 0044C8F3    mov         esi,dword ptr [eax+5]
 0044C8F6    mov         eax,ebx
 0044C8F8    call        TRttiType.GetTypeData
 0044C8FD    cmp         dword ptr [eax+1],0
>0044C901    jge         0044C908
 0044C903    mov         esi,1
 0044C908    mov         eax,esi
 0044C90A    pop         esi
 0044C90B    pop         ebx
 0044C90C    ret
*}
end;

//0044C910
function TRttiEnumerationType.GetMinValue:LongInt;
begin
{*
 0044C910    push        ebx
 0044C911    mov         ebx,eax
 0044C913    mov         eax,ebx
 0044C915    call        TRttiType.GetTypeData
 0044C91A    mov         eax,dword ptr [eax+1]
 0044C91D    test        eax,eax
>0044C91F    jge         0044C923
 0044C921    xor         eax,eax
 0044C923    pop         ebx
 0044C924    ret
*}
end;

//004505E0
constructor TProcSig.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 004505E0    push        ebp
 004505E1    mov         ebp,esp
 004505E3    add         esp,0FFFFFFF8
 004505E6    push        ebx
 004505E7    push        esi
 004505E8    push        edi
 004505E9    test        dl,dl
>004505EB    je          004505F5
 004505ED    add         esp,0FFFFFFF0
 004505F0    call        @ClassCreate
 004505F5    mov         dword ptr [ebp-8],ecx
 004505F8    mov         byte ptr [ebp-1],dl
 004505FB    mov         edi,eax
 004505FD    mov         ebx,dword ptr [ebp+8]
 00450600    mov         eax,dword ptr [ebp+0C]
 00450603    push        eax
 00450604    push        ebx
 00450605    mov         ecx,dword ptr [ebp-8]
 00450608    xor         edx,edx
 0045060A    mov         eax,edi
 0045060C    call        TRttiObject.Create
 00450611    mov         eax,edi
 00450613    call        TProcSig.HasInfo
 00450618    test        al,al
>0045061A    jne         00450629
 0045061C    mov         eax,edi
 0045061E    call        TProcSig.GetHandle
 00450623    mov         dword ptr [ebx],eax
 00450625    inc         dword ptr [ebx]
>00450627    jmp         00450659
 00450629    mov         eax,edi
 0045062B    call        TProcSig.GetHandle
 00450630    add         eax,6
 00450633    mov         dword ptr [ebx],eax
 00450635    inc         dword ptr [ebx]
 00450637    mov         eax,edi
 00450639    call        TProcSig.GetHandle
 0045063E    movzx       esi,byte ptr [eax+6]
 00450642    test        esi,esi
>00450644    jle         00450659
 00450646    mov         eax,dword ptr [ebx]
 00450648    call        TProcedureParam.AttrData
 0045064D    mov         dword ptr [ebx],eax
 0045064F    mov         eax,dword ptr [ebx]
 00450651    movzx       eax,word ptr [eax]
 00450654    add         dword ptr [ebx],eax
 00450656    dec         esi
>00450657    jne         00450646
 00450659    mov         eax,edi
 0045065B    cmp         byte ptr [ebp-1],0
>0045065F    je          00450670
 00450661    call        @AfterConstruction
 00450666    pop         dword ptr fs:[0]
 0045066D    add         esp,0C
 00450670    mov         eax,edi
 00450672    pop         edi
 00450673    pop         esi
 00450674    pop         ebx
 00450675    pop         ecx
 00450676    pop         ecx
 00450677    pop         ebp
 00450678    ret         8
*}
end;

//0045067C
function TProcSig.HasInfo:Boolean;
begin
{*
 0045067C    push        ebx
 0045067D    mov         ebx,eax
 0045067F    mov         eax,ebx
 00450681    call        TProcSig.GetHandle
 00450686    cmp         byte ptr [eax],0FF
 00450689    setne       al
 0045068C    pop         ebx
 0045068D    ret
*}
end;

//00450690
function TProcSig.ToString:string;
begin
{*
 00450690    push        ebp
 00450691    mov         ebp,esp
 00450693    xor         ecx,ecx
 00450695    push        ecx
 00450696    push        ecx
 00450697    push        ecx
 00450698    push        ecx
 00450699    push        ecx
 0045069A    push        ebx
 0045069B    push        esi
 0045069C    mov         ebx,edx
 0045069E    mov         dword ptr [ebp-8],eax
 004506A1    xor         eax,eax
 004506A3    push        ebp
 004506A4    push        4507B8
 004506A9    push        dword ptr fs:[eax]
 004506AC    mov         dword ptr fs:[eax],esp
 004506AF    mov         eax,dword ptr [ebp-8]
 004506B2    call        TProcSig.HasInfo
 004506B7    test        al,al
>004506B9    jne         004506C7
 004506BB    mov         eax,ebx
 004506BD    call        @UStrClr
>004506C2    jmp         0045078F
 004506C7    mov         eax,ebx
 004506C9    call        @UStrClr
 004506CE    lea         edx,[ebp-4]
 004506D1    mov         eax,dword ptr [ebp-8]
 004506D4    call        TProcSig.GetParams
 004506D9    mov         esi,dword ptr [ebp-4]
 004506DC    mov         eax,esi;{@DynArrayLength}
 004506DE    test        eax,eax
>004506E0    je          004506E7
 004506E2    sub         eax,4
 004506E5    mov         eax,dword ptr [eax]
 004506E7    test        eax,eax
>004506E9    jle         00450754
 004506EB    mov         eax,ebx
 004506ED    mov         edx,4507D4;'('
 004506F2    call        @UStrAsg
 004506F7    mov         eax,esi
 004506F9    test        eax,eax
>004506FB    je          00450702
 004506FD    sub         eax,4
 00450700    mov         eax,dword ptr [eax]
 00450702    dec         eax
 00450703    test        eax,eax
>00450705    jl          00450748
 00450707    inc         eax
 00450708    mov         dword ptr [ebp-0C],eax
 0045070B    xor         esi,esi
 0045070D    mov         eax,dword ptr [ebp-4]
 00450710    mov         eax,dword ptr [eax+esi*4]
 00450713    lea         edx,[ebp-10]
 00450716    mov         ecx,dword ptr [eax];{@UStrCat}
 00450718    call        dword ptr [ecx-24]
 0045071B    mov         edx,dword ptr [ebp-10]
 0045071E    mov         eax,ebx;{@DynArrayLength}
 00450720    call        @UStrCat
 00450725    mov         eax,dword ptr [ebp-4]
 00450728    test        eax,eax
>0045072A    je          00450731
 0045072C    sub         eax,4
 0045072F    mov         eax,dword ptr [eax];{@UStrCat}
 00450731    dec         eax
 00450732    cmp         esi,eax
>00450734    jge         00450742
 00450736    mov         eax,ebx
 00450738    mov         edx,4507E4;'; '
 0045073D    call        @UStrCat
 00450742    inc         esi
 00450743    dec         dword ptr [ebp-0C]
>00450746    jne         0045070D
 00450748    mov         eax,ebx
 0045074A    mov         edx,4507F8;')'
 0045074F    call        @UStrCat
 00450754    mov         eax,dword ptr [ebp-8];{TRttiPool.TypeOrNil}
 00450757    call        TProcSig.GetHandle
 0045075C    mov         edx,dword ptr [eax+2]
 0045075F    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00450764    call        TRttiPool.TypeOrNil
 00450769    mov         esi,eax
 0045076B    test        esi,esi
>0045076D    je          0045078F
 0045076F    push        dword ptr [ebx]
 00450771    push        450808;': '
 00450776    lea         edx,[ebp-14]
 00450779    mov         eax,esi
 0045077B    mov         ecx,dword ptr [eax]
 0045077D    call        dword ptr [ecx-24]
 00450780    push        dword ptr [ebp-14]
 00450783    mov         eax,ebx
 00450785    mov         edx,3
 0045078A    call        @UStrCatN
 0045078F    xor         eax,eax
 00450791    pop         edx
 00450792    pop         ecx
 00450793    pop         ecx
 00450794    mov         dword ptr fs:[eax],edx;{@UStrArrayClr}
 00450797    push        4507BF
 0045079C    lea         eax,[ebp-14];{TArray<System.Rtti.TRttiParameter>}
 0045079F    mov         edx,2;{@DynArrayClear}
 004507A4    call        @UStrArrayClr
 004507A9    lea         eax,[ebp-4]
 004507AC    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 004507B2    call        @DynArrayClear
 004507B7    ret
>004507B8    jmp         @HandleFinally
>004507BD    jmp         0045079C
 004507BF    pop         esi
 004507C0    pop         ebx
 004507C1    mov         esp,ebp
 004507C3    pop         ebp
 004507C4    ret
*}
end;

//00450810
function TProcSig.GetHandle:PProcedureSignature;
begin
{*
 00450810    mov         eax,dword ptr [eax+4]
 00450813    ret
*}
end;

//00450814
function TProcSig.GetReturnType:TRttiType;
begin
{*
 00450814    push        ebx
 00450815    mov         ebx,eax
 00450817    mov         eax,ebx
 00450819    call        TProcSig.HasInfo
 0045081E    test        al,al
>00450820    jne         00450826
 00450822    xor         eax,eax
 00450824    pop         ebx
 00450825    ret
 00450826    mov         eax,ebx
 00450828    call        TProcSig.GetHandle
 0045082D    mov         edx,dword ptr [eax+2]
 00450830    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00450835    call        TRttiPool.TypeOrNil
 0045083A    pop         ebx
 0045083B    ret
*}
end;

//0045083C
function TProcSig.GetParams:TArray<System.Rtti.TRttiParameter>;
begin
{*
 0045083C    push        ebx
 0045083D    push        esi
 0045083E    push        edi
 0045083F    push        ebp
 00450840    push        ecx
 00450841    mov         ebp,edx
 00450843    mov         ebx,eax
 00450845    mov         eax,ebx
 00450847    call        TProcSig.HasInfo
 0045084C    test        al,al
>0045084E    jne         0045085F
 00450850    mov         eax,ebp
 00450852    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00450858    call        @DynArrayClear
>0045085D    jmp         004508C9
 0045085F    mov         eax,ebx
 00450861    call        TProcSig.GetHandle
 00450866    movzx       eax,byte ptr [eax+6]
 0045086A    push        eax
 0045086B    mov         eax,ebp
 0045086D    mov         ecx,1
 00450872    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00450878    call        @DynArraySetLength
 0045087D    add         esp,4
 00450880    mov         eax,ebx
 00450882    call        TProcSig.GetHandle
 00450887    add         eax,6
 0045088A    mov         dword ptr [esp],eax
 0045088D    inc         dword ptr [esp]
 00450890    mov         eax,ebx
 00450892    call        TProcSig.GetHandle
 00450897    movzx       esi,byte ptr [eax+6]
 0045089B    dec         esi
 0045089C    test        esi,esi
>0045089E    jl          004508C9
 004508A0    inc         esi
 004508A1    xor         edi,edi
 004508A3    push        esp
 004508A4    mov         ecx,ebx
 004508A6    mov         edx,dword ptr ds:[450508];TProcParam
 004508AC    mov         eax,dword ptr [ebx+0C]
 004508AF    call        TRttiPackage.ReadObject
 004508B4    mov         edx,dword ptr ds:[437B34];TRttiParameter
 004508BA    call        @AsClass
 004508BF    mov         edx,dword ptr [ebp]
 004508C2    mov         dword ptr [edx+edi*4],eax
 004508C5    inc         edi
 004508C6    dec         esi
>004508C7    jne         004508A3
 004508C9    pop         edx
 004508CA    pop         ebp
 004508CB    pop         edi
 004508CC    pop         esi
 004508CD    pop         ebx
 004508CE    ret
*}
end;

//004508D0
constructor TProcParam.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 004508D0    push        ebp
 004508D1    mov         ebp,esp
 004508D3    add         esp,0FFFFFFF8
 004508D6    push        ebx
 004508D7    push        esi
 004508D8    xor         ebx,ebx
 004508DA    mov         dword ptr [ebp-8],ebx
 004508DD    test        dl,dl
>004508DF    je          004508E9
 004508E1    add         esp,0FFFFFFF0
 004508E4    call        @ClassCreate
 004508E9    mov         byte ptr [ebp-1],dl
 004508EC    mov         ebx,eax
 004508EE    mov         esi,dword ptr [ebp+8]
 004508F1    xor         eax,eax
 004508F3    push        ebp
 004508F4    push        450946
 004508F9    push        dword ptr fs:[eax]
 004508FC    mov         dword ptr fs:[eax],esp
 004508FF    mov         eax,dword ptr [ebp+0C]
 00450902    push        eax
 00450903    push        esi
 00450904    xor         edx,edx
 00450906    mov         eax,ebx
 00450908    call        TRttiObject.Create
 0045090D    mov         eax,ebx
 0045090F    call        TRttiIndexedProperty.GetHandle
 00450914    call        TProcedureParam.AttrData
 00450919    mov         dword ptr [esi],eax
 0045091B    lea         edx,[ebp-8]
 0045091E    mov         eax,esi
 00450920    call        LazyLoadAttributes
 00450925    mov         edx,dword ptr [ebp-8]
 00450928    lea         eax,[ebx+14]
 0045092B    call        @IntfCopy
 00450930    xor         eax,eax
 00450932    pop         edx
 00450933    pop         ecx
 00450934    pop         ecx
 00450935    mov         dword ptr fs:[eax],edx
 00450938    push        45094D
 0045093D    lea         eax,[ebp-8]
 00450940    call        @IntfClear
 00450945    ret
>00450946    jmp         @HandleFinally
>0045094B    jmp         0045093D
 0045094D    mov         eax,ebx
 0045094F    cmp         byte ptr [ebp-1],0
>00450953    je          00450964
 00450955    call        @AfterConstruction
 0045095A    pop         dword ptr fs:[0]
 00450961    add         esp,0C
 00450964    mov         eax,ebx
 00450966    pop         esi
 00450967    pop         ebx
 00450968    pop         ecx
 00450969    pop         ecx
 0045096A    pop         ebp
 0045096B    ret         8
*}
end;

//00450970
function TRttiIndexedProperty.GetHandle:PArrayPropInfo;
begin
{*
 00450970    mov         eax,dword ptr [eax+4]
 00450973    ret
*}
end;

//00450974
function TProcParam.GetFlags:TParamFlags;
begin
{*
 00450974    push        ebx
 00450975    push        esi
 00450976    mov         esi,eax
 00450978    mov         eax,esi
 0045097A    call        TRttiIndexedProperty.GetHandle
 0045097F    movzx       ebx,byte ptr [eax]
 00450982    mov         eax,ebx
 00450984    pop         esi
 00450985    pop         ebx
 00450986    ret
*}
end;

//00450988
function TProcParam.GetParamType:TRttiType;
begin
{*
 00450988    push        ebx
 00450989    mov         ebx,eax
 0045098B    mov         eax,ebx
 0045098D    call        TRttiIndexedProperty.GetHandle
 00450992    mov         edx,dword ptr [eax+1]
 00450995    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 0045099A    call        TRttiPool.TypeOrNil
 0045099F    pop         ebx
 004509A0    ret
*}
end;

//004509A4
function TRttiIndexedProperty.GetName:UnicodeString;
begin
{*
 004509A4    push        ebx
 004509A5    push        esi
 004509A6    push        ecx
 004509A7    mov         esi,edx
 004509A9    mov         ebx,eax
 004509AB    mov         eax,ebx
 004509AD    call        TRttiIndexedProperty.GetHandle
 004509B2    call        TArrayPropInfo.NameFld
 004509B7    mov         dword ptr [esp],eax
 004509BA    mov         eax,esp
 004509BC    mov         edx,esi
 004509BE    call        TTypeInfoFieldAccessor.ToString
 004509C3    pop         edx
 004509C4    pop         esi
 004509C5    pop         ebx
 004509C6    ret
*}
end;

//004509C8
constructor TRttiManagedField.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 004509C8    push        ebp
 004509C9    mov         ebp,esp
 004509CB    push        ecx
 004509CC    push        ebx
 004509CD    push        esi
 004509CE    test        dl,dl
>004509D0    je          004509DA
 004509D2    add         esp,0FFFFFFF0
 004509D5    call        @ClassCreate
 004509DA    mov         byte ptr [ebp-1],dl
 004509DD    mov         ebx,eax
 004509DF    mov         esi,dword ptr [ebp+8]
 004509E2    mov         eax,dword ptr [ebp+0C]
 004509E5    push        eax
 004509E6    push        esi
 004509E7    xor         edx,edx
 004509E9    mov         eax,ebx
 004509EB    call        TRttiObject.Create
 004509F0    add         dword ptr [esi],8
 004509F3    mov         eax,ebx
 004509F5    cmp         byte ptr [ebp-1],0
>004509F9    je          00450A0A
 004509FB    call        @AfterConstruction
 00450A00    pop         dword ptr fs:[0]
 00450A07    add         esp,0C
 00450A0A    mov         eax,ebx
 00450A0C    pop         esi
 00450A0D    pop         ebx
 00450A0E    pop         ecx
 00450A0F    pop         ebp
 00450A10    ret         8
*}
end;

//00450A1C
function TRttiManagedField.GetFieldType:TRttiType;
begin
{*
 00450A1C    mov         eax,dword ptr [eax+4]
 00450A1F    mov         edx,dword ptr [eax]
 00450A21    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00450A26    call        TRttiPool.TypeOrNil
 00450A2B    ret
*}
end;

//00450B18
constructor TRttiIndexedProperty.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00450B18    push        ebp
 00450B19    mov         ebp,esp
 00450B1B    add         esp,0FFFFFFF8
 00450B1E    push        ebx
 00450B1F    push        esi
 00450B20    xor         ebx,ebx
 00450B22    mov         dword ptr [ebp-8],ebx
 00450B25    test        dl,dl
>00450B27    je          00450B31
 00450B29    add         esp,0FFFFFFF0
 00450B2C    call        @ClassCreate
 00450B31    mov         byte ptr [ebp-1],dl
 00450B34    mov         ebx,eax
 00450B36    mov         esi,dword ptr [ebp+8]
 00450B39    xor         eax,eax
 00450B3B    push        ebp
 00450B3C    push        450B8E
 00450B41    push        dword ptr fs:[eax]
 00450B44    mov         dword ptr fs:[eax],esp
 00450B47    mov         eax,dword ptr [ebp+0C]
 00450B4A    push        eax
 00450B4B    push        esi
 00450B4C    xor         edx,edx
 00450B4E    mov         eax,ebx
 00450B50    call        TRttiObject.Create
 00450B55    mov         eax,ebx
 00450B57    call        TRttiRecordField.GetHandle
 00450B5C    call        TArrayPropInfo.AttrData
 00450B61    mov         dword ptr [esi],eax
 00450B63    lea         edx,[ebp-8]
 00450B66    mov         eax,esi
 00450B68    call        LazyLoadAttributes
 00450B6D    mov         edx,dword ptr [ebp-8]
 00450B70    lea         eax,[ebx+14]
 00450B73    call        @IntfCopy
 00450B78    xor         eax,eax
 00450B7A    pop         edx
 00450B7B    pop         ecx
 00450B7C    pop         ecx
 00450B7D    mov         dword ptr fs:[eax],edx
 00450B80    push        450B95
 00450B85    lea         eax,[ebp-8]
 00450B88    call        @IntfClear
 00450B8D    ret
>00450B8E    jmp         @HandleFinally
>00450B93    jmp         00450B85
 00450B95    mov         eax,ebx
 00450B97    cmp         byte ptr [ebp-1],0
>00450B9B    je          00450BAC
 00450B9D    call        @AfterConstruction
 00450BA2    pop         dword ptr fs:[0]
 00450BA9    add         esp,0C
 00450BAC    mov         eax,ebx
 00450BAE    pop         esi
 00450BAF    pop         ebx
 00450BB0    pop         ecx
 00450BB1    pop         ecx
 00450BB2    pop         ebp
 00450BB3    ret         8
*}
end;

//00450BB8
function TRttiRecordField.GetVisibility:TMemberVisibility;
begin
{*
 00450BB8    push        ebx
 00450BB9    mov         ebx,eax
 00450BBB    mov         eax,ebx
 00450BBD    call        TRttiRecordField.GetHandle
 00450BC2    movzx       eax,byte ptr [eax+8]
 00450BC6    mov         ecx,2
 00450BCB    xor         edx,edx
 00450BCD    call        GetBitField
 00450BD2    pop         ebx
 00450BD3    ret
*}
end;

//00450BD4
function TRttiRecordField.GetHandle:PRecordTypeField;
begin
{*
 00450BD4    mov         eax,dword ptr [eax+4]
 00450BD7    ret
*}
end;

//00450BD8
function TRttiRecordField.GetFieldType:TRttiType;
begin
{*
 00450BD8    push        ebx
 00450BD9    mov         ebx,eax
 00450BDB    mov         eax,ebx
 00450BDD    call        TRttiRecordField.GetHandle
 00450BE2    mov         edx,dword ptr [eax]
 00450BE4    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00450BE9    call        TRttiPool.TypeOrNil
 00450BEE    pop         ebx
 00450BEF    ret
*}
end;

//00450BF0
function TRttiRecordField.GetOffset:Integer;
begin
{*
 00450BF0    push        ebx
 00450BF1    mov         ebx,eax
 00450BF3    mov         eax,ebx
 00450BF5    call        TRttiRecordField.GetHandle
 00450BFA    mov         eax,dword ptr [eax+4]
 00450BFD    pop         ebx
 00450BFE    ret
*}
end;

//00450C00
function TRttiRecordField.GetName:UnicodeString;
begin
{*
 00450C00    push        ebx
 00450C01    push        esi
 00450C02    push        ecx
 00450C03    mov         esi,edx
 00450C05    mov         ebx,eax
 00450C07    mov         eax,ebx
 00450C09    call        TRttiRecordField.GetHandle
 00450C0E    call        TRecordTypeField.NameFld
 00450C13    mov         dword ptr [esp],eax
 00450C16    mov         eax,esp
 00450C18    mov         edx,esi
 00450C1A    call        TTypeInfoFieldAccessor.ToString
 00450C1F    pop         edx
 00450C20    pop         esi
 00450C21    pop         ebx
 00450C22    ret
*}
end;

//00450D88
constructor TRttiRecordMethod.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 00450D88    push        ebp
 00450D89    mov         ebp,esp
 00450D8B    add         esp,0FFFFFFF8
 00450D8E    push        ebx
 00450D8F    push        esi
 00450D90    xor         ebx,ebx
 00450D92    mov         dword ptr [ebp-8],ebx
 00450D95    test        dl,dl
>00450D97    je          00450DA1
 00450D99    add         esp,0FFFFFFF0
 00450D9C    call        @ClassCreate
 00450DA1    mov         byte ptr [ebp-1],dl
 00450DA4    mov         ebx,eax
 00450DA6    mov         esi,dword ptr [ebp+8]
 00450DA9    xor         eax,eax
 00450DAB    push        ebp
 00450DAC    push        450E1B
 00450DB1    push        dword ptr fs:[eax]
 00450DB4    mov         dword ptr fs:[eax],esp
 00450DB7    mov         eax,dword ptr [ebp+0C]
 00450DBA    push        eax
 00450DBB    push        esi
 00450DBC    xor         edx,edx
 00450DBE    mov         eax,ebx
 00450DC0    call        TRttiObject.Create
 00450DC5    mov         eax,dword ptr [esi]
 00450DC7    add         eax,5
 00450DCA    call        _SkipShortString
 00450DCF    mov         dword ptr [esi],eax
 00450DD1    push        esi
 00450DD2    mov         eax,dword ptr [ebx+0C]
 00450DD5    mov         ecx,ebx
 00450DD7    mov         edx,dword ptr ds:[450368];TProcSig
 00450DDD    call        TRttiPackage.ReadObject
 00450DE2    mov         edx,dword ptr ds:[450368];TProcSig
 00450DE8    call        @AsClass
 00450DED    mov         dword ptr [ebx+1C],eax
 00450DF0    lea         edx,[ebp-8]
 00450DF3    mov         eax,esi
 00450DF5    call        LazyLoadAttributes
 00450DFA    mov         edx,dword ptr [ebp-8]
 00450DFD    lea         eax,[ebx+14]
 00450E00    call        @IntfCopy
 00450E05    xor         eax,eax
 00450E07    pop         edx
 00450E08    pop         ecx
 00450E09    pop         ecx
 00450E0A    mov         dword ptr fs:[eax],edx
 00450E0D    push        450E22
 00450E12    lea         eax,[ebp-8]
 00450E15    call        @IntfClear
 00450E1A    ret
>00450E1B    jmp         @HandleFinally
>00450E20    jmp         00450E12
 00450E22    mov         eax,ebx
 00450E24    cmp         byte ptr [ebp-1],0
>00450E28    je          00450E39
 00450E2A    call        @AfterConstruction
 00450E2F    pop         dword ptr fs:[0]
 00450E36    add         esp,0C
 00450E39    mov         eax,ebx
 00450E3B    pop         esi
 00450E3C    pop         ebx
 00450E3D    pop         ecx
 00450E3E    pop         ecx
 00450E3F    pop         ebp
 00450E40    ret         8
*}
end;

//00450E44
function TRttiRecordMethod.GetCallingConvention:TCallConv;
begin
{*
 00450E44    push        ebx
 00450E45    mov         ebx,eax
 00450E47    mov         eax,dword ptr [ebx+1C]
 00450E4A    call        TProcSig.GetHandle
 00450E4F    movzx       eax,byte ptr [eax+1]
 00450E53    pop         ebx
 00450E54    ret
*}
end;

//00450E58
function TRttiRecordMethod.GetReturnType:TRttiType;
begin
{*
 00450E58    mov         eax,dword ptr [eax+1C]
 00450E5B    call        TProcSig.GetReturnType
 00450E60    ret
*}
end;

//00450E64
{*function sub_00450E64:?;
begin
 00450E64    xor         eax,eax
 00450E66    ret
end;*}

//00450E68
function TRttiRecordMethod.GetHasExtendedInfo:Boolean;
begin
{*
 00450E68    mov         eax,dword ptr [eax+1C]
 00450E6B    call        TProcSig.HasInfo
 00450E70    ret
*}
end;

//00450E74
{*function sub_00450E74:?;
begin
 00450E74    mov         eax,dword ptr [eax+4];TRttiRecordMethod.FHandle:Pointer
 00450E77    mov         eax,dword ptr [eax+1]
 00450E7A    ret
end;*}

//00450E7C
function TRttiRecordMethod.GetIsClassMethod:Boolean;
begin
{*
 00450E7C    push        ebx
 00450E7D    mov         ebx,eax
 00450E7F    mov         eax,ebx
 00450E81    mov         edx,dword ptr [eax]
 00450E83    call        dword ptr [edx+10]
 00450E86    add         al,0FC
 00450E88    sub         al,2
>00450E8A    jb          00450E94
 00450E8C    sub         al,2
>00450E8E    je          00450E94
 00450E90    xor         eax,eax
 00450E92    pop         ebx
 00450E93    ret
 00450E94    mov         al,1
 00450E96    pop         ebx
 00450E97    ret
*}
end;

//00450E98
function TRttiRecordMethod.GetIsStatic:Boolean;
begin
{*
 00450E98    push        ebx
 00450E99    mov         ebx,eax
 00450E9B    mov         eax,ebx
 00450E9D    mov         edx,dword ptr [eax]
 00450E9F    call        dword ptr [edx+10]
 00450EA2    sub         al,2
 00450EA4    setb        al
 00450EA7    xor         al,1
 00450EA9    pop         ebx
 00450EAA    ret
*}
end;

//00450EAC
{*procedure sub_00450EAC(?:?; ?:?; ?:?);
begin
 00450EAC    push        ebp
 00450EAD    mov         ebp,esp
 00450EAF    add         esp,0FFFFFFBC
 00450EB2    push        ebx
 00450EB3    push        esi
 00450EB4    push        edi
 00450EB5    xor         ebx,ebx
 00450EB7    mov         dword ptr [ebp-4],ebx
 00450EBA    mov         dword ptr [ebp-8],ebx
 00450EBD    mov         esi,edx
 00450EBF    lea         edi,[ebp-20]
 00450EC2    push        ecx
 00450EC3    mov         ecx,6
 00450EC8    rep movs    dword ptr [edi],dword ptr [esi]
 00450ECA    pop         ecx
 00450ECB    mov         dword ptr [ebp-3C],ecx
 00450ECE    mov         esi,eax
 00450ED0    mov         edi,dword ptr [ebp+0C]
 00450ED3    lea         eax,[ebp-20]
 00450ED6    mov         edx,dword ptr ds:[435E20];TValue
 00450EDC    call        @InitializeRecord
 00450EE1    lea         eax,[ebp-38]
 00450EE4    mov         edx,dword ptr ds:[435E20];TValue
 00450EEA    call        @AddRefRecord
 00450EEF    xor         eax,eax
 00450EF1    push        ebp
 00450EF2    push        451128
 00450EF7    push        dword ptr fs:[eax]
 00450EFA    mov         dword ptr fs:[eax],esp
 00450EFD    lea         eax,[ebp-20]
 00450F00    call        TValue.GetTypeKind
 00450F05    cmp         al,14
>00450F07    jne         00450F61
 00450F09    lea         eax,[ebp-20]
 00450F0C    call        TValue.GetTypeDataProp
 00450F11    cmp         dword ptr [eax],0
>00450F14    je          00450F32
 00450F16    lea         eax,[ebp-20]
 00450F19    call        TValue.GetTypeDataProp
 00450F1E    mov         eax,dword ptr [eax]
 00450F20    mov         ebx,dword ptr [eax]
 00450F22    mov         eax,esi
 00450F24    call        TRttiMember.GetParent
 00450F29    call        TRttiType.GetHandle
 00450F2E    cmp         ebx,eax
>00450F30    je          00450F4E
 00450F32    lea         eax,[ebp-20]
 00450F35    call        TValue.GetTypeDataProp
 00450F3A    cmp         dword ptr [eax],0
>00450F3D    je          00450F4E
 00450F3F    lea         eax,[ebp-20]
 00450F42    call        TValue.GetTypeDataProp
 00450F47    mov         eax,dword ptr [eax]
 00450F49    cmp         dword ptr [eax],0
>00450F4C    jne         00450F61
 00450F4E    lea         eax,[ebp-38]
 00450F51    lea         edx,[ebp-20]
 00450F54    mov         ecx,dword ptr ds:[435E20];TValue
 00450F5A    call        @CopyRecord
>00450F5F    jmp         00450FA2
 00450F61    lea         eax,[ebp-20]
 00450F64    call        TValue.GetTypeInfo
 00450F69    mov         ebx,eax
 00450F6B    mov         eax,esi
 00450F6D    call        TRttiMember.GetParent
 00450F72    call        TRttiType.GetHandle
 00450F77    cmp         ebx,eax
>00450F79    je          00450F92
 00450F7B    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00450F81    mov         dl,1
 00450F83    mov         eax,[00418C80];EInvalidCast
 00450F88    call        Exception.CreateRes;EInvalidCast.Create
 00450F8D    call        @RaiseExcept
 00450F92    lea         eax,[ebp-20]
 00450F95    call        TValue.GetReferenceToRawData
 00450F9A    lea         edx,[ebp-38]
 00450F9D    call        TValue.From<System.Pointer>
 00450FA2    lea         edx,[ebp-8]
 00450FA5    mov         eax,esi
 00450FA7    mov         ecx,dword ptr [eax]
 00450FA9    call        dword ptr [ecx+38];TRttiRecordMethod.GetParameters
 00450FAC    mov         eax,dword ptr [ebp-8]
 00450FAF    test        eax,eax
>00450FB1    je          00450FB8
 00450FB3    sub         eax,4
 00450FB6    mov         eax,dword ptr [eax]
 00450FB8    lea         edx,[edi+1]
 00450FBB    cmp         eax,edx
>00450FBD    je          00450FD6
 00450FBF    mov         ecx,dword ptr ds:[7C42A4];^SResString176:TResStringRec
 00450FC5    mov         dl,1
 00450FC7    mov         eax,[00435ADC];EInvocationError
 00450FCC    call        Exception.CreateRes;EInvocationError.Create
 00450FD1    call        @RaiseExcept
 00450FD6    mov         ebx,edx
 00450FD8    inc         ebx
 00450FD9    push        ebx
 00450FDA    lea         eax,[ebp-4]
 00450FDD    mov         ecx,1
 00450FE2    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00450FE8    call        @DynArraySetLength
 00450FED    add         esp,4
 00450FF0    xor         eax,eax
 00450FF2    mov         dword ptr [ebp-44],eax
 00450FF5    mov         eax,esi
 00450FF7    mov         edx,dword ptr [eax]
 00450FF9    call        dword ptr [edx+14];TRttiRecordMethod.GetCallingConvention
 00450FFC    mov         ebx,eax
 00450FFE    cmp         bl,2
>00451001    je          00451020
 00451003    mov         eax,dword ptr [ebp-44]
 00451006    lea         eax,[eax+eax*2]
 00451009    mov         edx,dword ptr [ebp-4]
 0045100C    lea         eax,[edx+eax*8]
 0045100F    lea         edx,[ebp-38]
 00451012    mov         ecx,dword ptr ds:[435E20];TValue
 00451018    call        @CopyRecord
 0045101D    inc         dword ptr [ebp-44]
 00451020    inc         edi
 00451021    dec         edi
 00451022    test        edi,edi
>00451024    jl          00451061
 00451026    inc         edi
 00451027    mov         dword ptr [ebp-40],0
 0045102E    mov         ebx,dword ptr [ebp-3C]
 00451031    mov         eax,esi
 00451033    mov         edx,dword ptr [eax]
 00451035    call        dword ptr [edx+14];TRttiRecordMethod.GetCallingConvention
 00451038    push        eax
 00451039    mov         eax,dword ptr [ebp-44]
 0045103C    lea         eax,[eax+eax*2]
 0045103F    mov         edx,dword ptr [ebp-4]
 00451042    lea         ecx,[edx+eax*8]
 00451045    mov         eax,dword ptr [ebp-8]
 00451048    mov         edx,dword ptr [ebp-40]
 0045104B    mov         eax,dword ptr [eax+edx*4]
 0045104E    mov         edx,ebx
 00451050    call        PassArg
 00451055    inc         dword ptr [ebp-44]
 00451058    inc         dword ptr [ebp-40]
 0045105B    add         ebx,18
 0045105E    dec         edi
>0045105F    jne         00451031
 00451061    mov         eax,esi
 00451063    mov         edx,dword ptr [eax]
 00451065    call        dword ptr [edx+14];TRttiRecordMethod.GetCallingConvention
 00451068    mov         ebx,eax
 0045106A    cmp         bl,2
>0045106D    jne         00451089
 0045106F    mov         eax,dword ptr [ebp-44]
 00451072    lea         eax,[eax+eax*2]
 00451075    mov         edx,dword ptr [ebp-4]
 00451078    lea         eax,[edx+eax*8]
 0045107B    lea         edx,[ebp-38]
 0045107E    mov         ecx,dword ptr ds:[435E20];TValue
 00451084    call        @CopyRecord
 00451089    mov         eax,esi
 0045108B    mov         edx,dword ptr [eax]
 0045108D    call        dword ptr [edx+18];TRttiRecordMethod.GetReturnType
 00451090    test        eax,eax
>00451092    je          004510C9
 00451094    mov         eax,esi
 00451096    mov         edx,dword ptr [eax]
 00451098    call        dword ptr [edx+18];TRttiRecordMethod.GetReturnType
 0045109B    call        TRttiType.GetHandle
 004510A0    push        eax
 004510A1    mov         eax,esi
 004510A3    mov         edx,dword ptr [eax]
 004510A5    call        dword ptr [edx+30];TRttiRecordMethod.GetIsStatic
 004510A8    push        eax
 004510A9    push        0
 004510AB    mov         eax,dword ptr [ebp+8]
 004510AE    push        eax
 004510AF    mov         eax,esi
 004510B1    mov         edx,dword ptr [eax]
 004510B3    call        dword ptr [edx+14];TRttiRecordMethod.GetCallingConvention
 004510B6    push        eax
 004510B7    mov         eax,esi
 004510B9    mov         edx,dword ptr [eax]
 004510BB    call        dword ptr [edx+28];TRttiRecordMethod.sub_00450E74
 004510BE    mov         edx,dword ptr [ebp-4]
 004510C1    pop         ecx
 004510C2    call        Invoke
>004510C7    jmp         004510EB
 004510C9    push        0
 004510CB    push        0
 004510CD    push        0
 004510CF    mov         eax,dword ptr [ebp+8]
 004510D2    push        eax
 004510D3    mov         eax,esi
 004510D5    mov         edx,dword ptr [eax]
 004510D7    call        dword ptr [edx+14];TRttiRecordMethod.GetCallingConvention
 004510DA    push        eax
 004510DB    mov         eax,esi
 004510DD    mov         edx,dword ptr [eax]
 004510DF    call        dword ptr [edx+28];TRttiRecordMethod.sub_00450E74
 004510E2    mov         edx,dword ptr [ebp-4]
 004510E5    pop         ecx
 004510E6    call        Invoke
 004510EB    xor         eax,eax
 004510ED    pop         edx
 004510EE    pop         ecx
 004510EF    pop         ecx
 004510F0    mov         dword ptr fs:[eax],edx
 004510F3    push        45112F
 004510F8    lea         eax,[ebp-38]
 004510FB    mov         edx,dword ptr ds:[435E20];TValue
 00451101    mov         ecx,2
 00451106    call        @FinalizeArray
 0045110B    lea         eax,[ebp-8]
 0045110E    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00451114    call        @DynArrayClear
 00451119    lea         eax,[ebp-4]
 0045111C    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00451122    call        @DynArrayClear
 00451127    ret
>00451128    jmp         @HandleFinally
>0045112D    jmp         004510F8
 0045112F    pop         edi
 00451130    pop         esi
 00451131    pop         ebx
 00451132    mov         esp,ebp
 00451134    pop         ebp
 00451135    ret         8
end;*}

//00451138
function TRttiRecordMethod.GetParameters:TArray<System.Rtti.TRttiParameter>;
begin
{*
 00451138    push        ebx
 00451139    push        esi
 0045113A    mov         esi,edx
 0045113C    mov         ebx,eax
 0045113E    mov         edx,esi
 00451140    mov         eax,dword ptr [ebx+1C]
 00451143    call        TProcSig.GetParams
 00451148    pop         esi
 00451149    pop         ebx
 0045114A    ret
*}
end;

//0045114C
function TRttiRecordMethod.GetMethodKind:TMethodKind;
begin
{*
 0045114C    push        ebx
 0045114D    mov         ebx,eax
 0045114F    mov         eax,dword ptr [ebx+4]
 00451152    movzx       eax,byte ptr [eax]
 00451155    mov         ecx,2
 0045115A    xor         edx,edx
 0045115C    call        GetBitField
 00451161    sub         al,1
>00451163    jb          00451171
>00451165    je          00451187
 00451167    dec         al
>00451169    je          0045119D
 0045116B    dec         al
>0045116D    je          004511A1
>0045116F    jmp         004511A5
 00451171    mov         eax,dword ptr [ebx+1C]
 00451174    call        TProcSig.GetHandle
 00451179    cmp         dword ptr [eax+2],0
>0045117D    jne         00451183
 0045117F    xor         eax,eax
>00451181    jmp         004511A7
 00451183    mov         al,1
 00451185    pop         ebx
 00451186    ret
 00451187    mov         eax,dword ptr [ebx+1C]
 0045118A    call        TProcSig.GetHandle
 0045118F    cmp         dword ptr [eax+2],0
>00451193    jne         00451199
 00451195    mov         al,4
>00451197    jmp         004511A7
 00451199    mov         al,5
 0045119B    pop         ebx
 0045119C    ret
 0045119D    mov         al,2
 0045119F    pop         ebx
 004511A0    ret
 004511A1    mov         al,8
 004511A3    pop         ebx
 004511A4    ret
 004511A5    xor         eax,eax
 004511A7    pop         ebx
 004511A8    ret
*}
end;

//004511AC
function TRttiRecordMethod.GetName:UnicodeString;
begin
{*
 004511AC    push        ebx
 004511AD    push        esi
 004511AE    mov         esi,edx
 004511B0    mov         ebx,eax
 004511B2    mov         edx,esi
 004511B4    mov         eax,dword ptr [ebx+4]
 004511B7    add         eax,5
 004511BA    call        _UTF8ToString
 004511BF    pop         esi
 004511C0    pop         ebx
 004511C1    ret
*}
end;

//00451278
{*procedure TRttiRecordType.GetDeclaredFields(?:?);
begin
 00451278    push        ebp
 00451279    mov         ebp,esp
 0045127B    add         esp,0FFFFFFF0
 0045127E    push        ebx
 0045127F    push        esi
 00451280    push        edi
 00451281    xor         ecx,ecx
 00451283    mov         dword ptr [ebp-10],ecx
 00451286    mov         edi,edx
 00451288    mov         dword ptr [ebp-4],eax
 0045128B    xor         eax,eax
 0045128D    push        ebp
 0045128E    push        4513BE
 00451293    push        dword ptr fs:[eax]
 00451296    mov         dword ptr fs:[eax],esp
 00451299    mov         eax,dword ptr [ebp-4]
 0045129C    call        TRttiType.GetTypeData
 004512A1    add         eax,4
 004512A4    mov         dword ptr [ebp-8],eax
 004512A7    lea         eax,[ebp-8]
 004512AA    call        ReadI32
 004512AF    mov         ebx,eax
 004512B1    mov         eax,ebx
 004512B3    add         eax,eax
 004512B5    add         eax,eax
 004512B7    add         eax,eax
 004512B9    add         dword ptr [ebp-8],eax
 004512BC    lea         eax,[ebp-8]
 004512BF    call        ReadI8
 004512C4    movzx       eax,al
 004512C7    add         eax,eax
 004512C9    add         eax,eax
 004512CB    add         dword ptr [ebp-8],eax
 004512CE    lea         eax,[ebp-8]
 004512D1    call        ReadI32
 004512D6    mov         ebx,eax
 004512D8    push        ebx
 004512D9    mov         eax,edi
 004512DB    mov         ecx,1
 004512E0    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 004512E6    call        @DynArraySetLength
 004512EB    add         esp,4
 004512EE    dec         ebx
 004512EF    test        ebx,ebx
>004512F1    jl          00451322
 004512F3    inc         ebx
 004512F4    xor         esi,esi
 004512F6    lea         eax,[ebp-8]
 004512F9    push        eax
 004512FA    mov         eax,dword ptr [ebp-4]
 004512FD    mov         eax,dword ptr [eax+0C];TRttiRecordType.FPackage:TRttiPackage
 00451300    mov         ecx,dword ptr [ebp-4]
 00451303    mov         edx,dword ptr ds:[450A2C];TRttiRecordField
 00451309    call        TRttiPackage.ReadObject
 0045130E    mov         edx,dword ptr ds:[450A2C];TRttiRecordField
 00451314    call        @AsClass
 00451319    mov         edx,dword ptr [edi]
 0045131B    mov         dword ptr [edx+esi*4],eax
 0045131E    inc         esi
 0045131F    dec         ebx
>00451320    jne         004512F6
 00451322    mov         eax,dword ptr [ebp-4]
 00451325    cmp         dword ptr [eax+14],0;TRttiRecordType.FAttributeGetter:TFunc<System.TArray<System.TCustom...
>00451329    jne         00451396
 0045132B    mov         eax,dword ptr [ebp-4]
 0045132E    mov         eax,dword ptr [eax+0C];TRttiRecordType.FPackage:TRttiPackage
 00451331    mov         eax,dword ptr [eax+18];TRttiPackage.FLock:TObject
 00451334    mov         dword ptr [ebp-0C],eax
 00451337    call        TMonitor.CheckMonitorSupport
 0045133C    mov         eax,dword ptr [ebp-0C]
 0045133F    call        TMonitor.GetMonitor
 00451344    or          edx,0FFFFFFFF
 00451347    call        TMonitor.Enter
 0045134C    xor         eax,eax
 0045134E    push        ebp
 0045134F    push        45138F
 00451354    push        dword ptr fs:[eax]
 00451357    mov         dword ptr fs:[eax],esp
 0045135A    lea         edx,[ebp-10]
 0045135D    lea         eax,[ebp-8]
 00451360    call        LazyLoadAttributes
 00451365    mov         edx,dword ptr [ebp-10]
 00451368    mov         eax,dword ptr [ebp-4]
 0045136B    add         eax,14;TRttiRecordType.FAttributeGetter:TFunc<System.TArray<System.TCustomAttribute>>
 0045136E    call        @IntfCopy
 00451373    xor         eax,eax
 00451375    pop         edx
 00451376    pop         ecx
 00451377    pop         ecx
 00451378    mov         dword ptr fs:[eax],edx
 0045137B    push        45139F
 00451380    mov         eax,dword ptr [ebp-4]
 00451383    mov         eax,dword ptr [eax+0C];TRttiRecordType.FPackage:TRttiPackage
 00451386    mov         eax,dword ptr [eax+18];TRttiPackage.FLock:TObject
 00451389    call        TMonitor.Exit
 0045138E    ret
>0045138F    jmp         @HandleFinally
>00451394    jmp         00451380
 00451396    mov         eax,dword ptr [ebp-8]
 00451399    movzx       eax,word ptr [eax]
 0045139C    add         dword ptr [ebp-8],eax
 0045139F    mov         eax,dword ptr [ebp-4]
 004513A2    mov         edx,dword ptr [ebp-8]
 004513A5    mov         dword ptr [eax+18],edx;TRttiRecordType.....FMethOfs:PByte
 004513A8    xor         eax,eax
 004513AA    pop         edx
 004513AB    pop         ecx
 004513AC    pop         ecx
 004513AD    mov         dword ptr fs:[eax],edx
 004513B0    push        4513C5
 004513B5    lea         eax,[ebp-10]
 004513B8    call        @IntfClear
 004513BD    ret
>004513BE    jmp         @HandleFinally
>004513C3    jmp         004513B5
 004513C5    pop         edi
 004513C6    pop         esi
 004513C7    pop         ebx
 004513C8    mov         esp,ebp
 004513CA    pop         ebp
 004513CB    ret
end;*}

//004513CC
{*procedure TRttiRecordType.GetDeclaredMethods(?:?);
begin
 004513CC    push        ebp
 004513CD    mov         ebp,esp
 004513CF    add         esp,0FFFFFFF4
 004513D2    push        ebx
 004513D3    push        esi
 004513D4    push        edi
 004513D5    xor         ecx,ecx
 004513D7    mov         dword ptr [ebp-0C],ecx
 004513DA    mov         dword ptr [ebp-4],edx
 004513DD    mov         ebx,eax
 004513DF    xor         eax,eax
 004513E1    push        ebp
 004513E2    push        45147A
 004513E7    push        dword ptr fs:[eax]
 004513EA    mov         dword ptr fs:[eax],esp
 004513ED    mov         eax,dword ptr [ebx+18];TRttiRecordType......FMethOfs:PByte
 004513F0    mov         dword ptr [ebp-8],eax
 004513F3    cmp         dword ptr [ebp-8],0
>004513F7    jne         00451409
 004513F9    lea         edx,[ebp-0C]
 004513FC    mov         eax,ebx
 004513FE    mov         ecx,dword ptr [eax]
 00451400    call        dword ptr [ecx+24];TRttiType.GetFields
 00451403    mov         eax,dword ptr [ebx+18];TRttiRecordType.......FMethOfs:PByte
 00451406    mov         dword ptr [ebp-8],eax
 00451409    lea         eax,[ebp-8]
 0045140C    call        ReadI16
 00451411    movzx       esi,ax
 00451414    push        esi
 00451415    mov         eax,dword ptr [ebp-4]
 00451418    mov         ecx,1
 0045141D    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00451423    call        @DynArraySetLength
 00451428    add         esp,4
 0045142B    dec         esi
 0045142C    test        esi,esi
>0045142E    jl          0045145E
 00451430    inc         esi
 00451431    xor         edi,edi
 00451433    lea         eax,[ebp-8]
 00451436    push        eax
 00451437    mov         ecx,ebx
 00451439    mov         edx,dword ptr ds:[450C24];TRttiRecordMethod
 0045143F    mov         eax,dword ptr [ebx+0C];TRttiRecordType.FPackage:TRttiPackage
 00451442    call        TRttiPackage.ReadObject
 00451447    mov         edx,dword ptr ds:[438660];TRttiMethod
 0045144D    call        @AsClass
 00451452    mov         edx,dword ptr [ebp-4]
 00451455    mov         edx,dword ptr [edx]
 00451457    mov         dword ptr [edx+edi*4],eax
 0045145A    inc         edi
 0045145B    dec         esi
>0045145C    jne         00451433
 0045145E    xor         eax,eax
 00451460    pop         edx
 00451461    pop         ecx
 00451462    pop         ecx
 00451463    mov         dword ptr fs:[eax],edx
 00451466    push        451481
 0045146B    lea         eax,[ebp-0C]
 0045146E    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00451474    call        @DynArrayClear
 00451479    ret
>0045147A    jmp         @HandleFinally
>0045147F    jmp         0045146B
 00451481    pop         edi
 00451482    pop         esi
 00451483    pop         ebx
 00451484    mov         esp,ebp
 00451486    pop         ebp
 00451487    ret
end;*}

//00451488
{*procedure TRttiRecordType.GetAttributes(?:?);
begin
 00451488    push        ebp
 00451489    mov         ebp,esp
 0045148B    push        0
 0045148D    push        ebx
 0045148E    push        esi
 0045148F    mov         esi,edx
 00451491    mov         ebx,eax
 00451493    xor         eax,eax
 00451495    push        ebp
 00451496    push        4514D6
 0045149B    push        dword ptr fs:[eax]
 0045149E    mov         dword ptr fs:[eax],esp
 004514A1    cmp         dword ptr [ebx+14],0;TRttiRecordType.FAttributeGetter:TFunc<System.TArray<System.TCustom...
>004514A5    jne         004514B1
 004514A7    lea         edx,[ebp-4]
 004514AA    mov         eax,ebx
 004514AC    mov         ecx,dword ptr [eax]
 004514AE    call        dword ptr [ecx+24];TRttiType.GetFields
 004514B1    mov         edx,esi
 004514B3    mov         eax,ebx
 004514B5    call        TRttiObject.GetAttributes
 004514BA    xor         eax,eax
 004514BC    pop         edx
 004514BD    pop         ecx
 004514BE    pop         ecx
 004514BF    mov         dword ptr fs:[eax],edx
 004514C2    push        4514DD
 004514C7    lea         eax,[ebp-4]
 004514CA    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 004514D0    call        @DynArrayClear
 004514D5    ret
>004514D6    jmp         @HandleFinally
>004514DB    jmp         004514C7
 004514DD    pop         esi
 004514DE    pop         ebx
 004514DF    pop         ecx
 004514E0    pop         ebp
 004514E1    ret
end;*}

//004514E4
function TRttiArrayType.GetTypeSize:Integer;
begin
{*
 004514E4    push        ebx
 004514E5    mov         ebx,eax
 004514E7    mov         eax,ebx
 004514E9    call        TRttiType.GetTypeData
 004514EE    mov         eax,dword ptr [eax]
 004514F0    pop         ebx
 004514F1    ret
*}
end;

//004514F4
constructor TRttiArrayType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 004514F4    push        ebp
 004514F5    mov         ebp,esp
 004514F7    add         esp,0FFFFFFF8
 004514FA    push        ebx
 004514FB    push        esi
 004514FC    xor         ebx,ebx
 004514FE    mov         dword ptr [ebp-8],ebx
 00451501    test        dl,dl
>00451503    je          0045150D
 00451505    add         esp,0FFFFFFF0
 00451508    call        @ClassCreate
 0045150D    mov         byte ptr [ebp-1],dl
 00451510    mov         ebx,eax
 00451512    mov         esi,dword ptr [ebp+8]
 00451515    xor         eax,eax
 00451517    push        ebp
 00451518    push        451575
 0045151D    push        dword ptr fs:[eax]
 00451520    mov         dword ptr fs:[eax],esp
 00451523    mov         eax,dword ptr [ebp+0C]
 00451526    push        eax
 00451527    push        esi
 00451528    xor         edx,edx
 0045152A    mov         eax,ebx
 0045152C    call        TRttiType.Create
 00451531    mov         eax,ebx
 00451533    call        TRttiType.GetTypeData
 00451538    add         eax,0D
 0045153B    mov         dword ptr [esi],eax
 0045153D    mov         eax,ebx
 0045153F    call        TRttiArrayType.GetDimensionCount
 00451544    add         eax,eax
 00451546    add         eax,eax
 00451548    add         dword ptr [esi],eax
 0045154A    lea         edx,[ebp-8]
 0045154D    mov         eax,esi
 0045154F    call        LazyLoadAttributes
 00451554    mov         edx,dword ptr [ebp-8]
 00451557    lea         eax,[ebx+14]
 0045155A    call        @IntfCopy
 0045155F    xor         eax,eax
 00451561    pop         edx
 00451562    pop         ecx
 00451563    pop         ecx
 00451564    mov         dword ptr fs:[eax],edx
 00451567    push        45157C
 0045156C    lea         eax,[ebp-8]
 0045156F    call        @IntfClear
 00451574    ret
>00451575    jmp         @HandleFinally
>0045157A    jmp         0045156C
 0045157C    mov         eax,ebx
 0045157E    cmp         byte ptr [ebp-1],0
>00451582    je          00451593
 00451584    call        @AfterConstruction
 00451589    pop         dword ptr fs:[0]
 00451590    add         esp,0C
 00451593    mov         eax,ebx
 00451595    pop         esi
 00451596    pop         ebx
 00451597    pop         ecx
 00451598    pop         ecx
 00451599    pop         ebp
 0045159A    ret         8
*}
end;

//004515A0
function TRttiDynamicArrayType.GetElementSize:LongInt;
begin
{*
 004515A0    push        ebx
 004515A1    mov         ebx,eax
 004515A3    mov         eax,ebx
 004515A5    call        TRttiType.GetTypeData
 004515AA    mov         eax,dword ptr [eax]
 004515AC    pop         ebx
 004515AD    ret
*}
end;

//004515B0
function TRttiArrayType.GetTotalElementCount:Integer;
begin
{*
 004515B0    push        ebx
 004515B1    mov         ebx,eax
 004515B3    mov         eax,ebx
 004515B5    call        TRttiType.GetTypeData
 004515BA    mov         eax,dword ptr [eax+4]
 004515BD    pop         ebx
 004515BE    ret
*}
end;

//004515C0
function TRttiArrayType.GetElementType:TRttiType;
begin
{*
 004515C0    push        ebx
 004515C1    mov         ebx,eax
 004515C3    mov         eax,ebx
 004515C5    call        TRttiType.GetTypeData
 004515CA    mov         edx,dword ptr [eax+8]
 004515CD    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 004515D2    call        TRttiPool.TypeOrNil
 004515D7    pop         ebx
 004515D8    ret
*}
end;

//004515DC
function TRttiArrayType.GetDimensionCount:Integer;
begin
{*
 004515DC    push        ebx
 004515DD    mov         ebx,eax
 004515DF    mov         eax,ebx
 004515E1    call        TRttiType.GetTypeData
 004515E6    movzx       eax,byte ptr [eax+0C]
 004515EA    pop         ebx
 004515EB    ret
*}
end;

//004515EC
constructor TRttiDynamicArrayType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 004515EC    push        ebp
 004515ED    mov         ebp,esp
 004515EF    add         esp,0FFFFFFF8
 004515F2    push        ebx
 004515F3    push        esi
 004515F4    xor         ebx,ebx
 004515F6    mov         dword ptr [ebp-8],ebx
 004515F9    test        dl,dl
>004515FB    je          00451605
 004515FD    add         esp,0FFFFFFF0
 00451600    call        @ClassCreate
 00451605    mov         byte ptr [ebp-1],dl
 00451608    mov         ebx,eax
 0045160A    mov         esi,dword ptr [ebp+8]
 0045160D    xor         eax,eax
 0045160F    push        ebp
 00451610    push        451662
 00451615    push        dword ptr fs:[eax]
 00451618    mov         dword ptr fs:[eax],esp
 0045161B    mov         eax,dword ptr [ebp+0C]
 0045161E    push        eax
 0045161F    push        esi
 00451620    xor         edx,edx
 00451622    mov         eax,ebx
 00451624    call        TRttiType.Create
 00451629    mov         eax,ebx
 0045162B    call        TRttiType.GetTypeData
 00451630    call        TTypeData.DynArrAttrData
 00451635    mov         dword ptr [esi],eax
 00451637    lea         edx,[ebp-8]
 0045163A    mov         eax,esi
 0045163C    call        LazyLoadAttributes
 00451641    mov         edx,dword ptr [ebp-8]
 00451644    lea         eax,[ebx+14]
 00451647    call        @IntfCopy
 0045164C    xor         eax,eax
 0045164E    pop         edx
 0045164F    pop         ecx
 00451650    pop         ecx
 00451651    mov         dword ptr fs:[eax],edx
 00451654    push        451669
 00451659    lea         eax,[ebp-8]
 0045165C    call        @IntfClear
 00451661    ret
>00451662    jmp         @HandleFinally
>00451667    jmp         00451659
 00451669    mov         eax,ebx
 0045166B    cmp         byte ptr [ebp-1],0
>0045166F    je          00451680
 00451671    call        @AfterConstruction
 00451676    pop         dword ptr fs:[0]
 0045167D    add         esp,0C
 00451680    mov         eax,ebx
 00451682    pop         esi
 00451683    pop         ebx
 00451684    pop         ecx
 00451685    pop         ecx
 00451686    pop         ebp
 00451687    ret         8
*}
end;

//0045168C
function TRttiInstanceType.GetDeclaringUnitName:UnicodeString;
begin
{*
 0045168C    push        ebx
 0045168D    push        esi
 0045168E    push        ecx
 0045168F    mov         esi,edx
 00451691    mov         ebx,eax
 00451693    mov         eax,ebx
 00451695    call        TRttiType.GetTypeData
 0045169A    call        TTypeData.UnitNameFld
 0045169F    mov         dword ptr [esp],eax
 004516A2    mov         eax,esp
 004516A4    mov         edx,esi
 004516A6    call        TTypeInfoFieldAccessor.ToString
 004516AB    pop         edx
 004516AC    pop         esi
 004516AD    pop         ebx
 004516AE    ret
*}
end;

//004516B0
function TRttiRecordType.GetTypeSize:Integer;
begin
{*
 004516B0    push        ebx
 004516B1    mov         ebx,eax
 004516B3    mov         eax,ebx
 004516B5    call        TRttiType.GetTypeData
 004516BA    mov         eax,dword ptr [eax]
 004516BC    pop         ebx
 004516BD    ret
*}
end;

//004516C0
function TRttiDynamicArrayType.GetElementType:TRttiType;
begin
{*
 004516C0    push        ebx
 004516C1    mov         ebx,eax
 004516C3    mov         eax,ebx
 004516C5    call        TRttiType.GetHandle
 004516CA    call        GetDynArrayElType
 004516CF    mov         edx,eax
 004516D1    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 004516D6    call        TRttiPool.GetType
 004516DB    pop         ebx
 004516DC    ret
*}
end;

//004516E0
function TRttiDynamicArrayType.GetOleAutoVarType:TVarType;
begin
{*
 004516E0    push        ebx
 004516E1    mov         ebx,eax
 004516E3    mov         eax,ebx
 004516E5    call        TRttiType.GetTypeData
 004516EA    movzx       eax,word ptr [eax+8]
 004516EE    pop         ebx
 004516EF    ret
*}
end;

//004516F0
function TRttiPointerType.GetReferredType:TRttiType;
begin
{*
 004516F0    push        ebx
 004516F1    mov         ebx,eax
 004516F3    mov         eax,ebx
 004516F5    call        TRttiType.GetTypeData
 004516FA    mov         edx,dword ptr [eax]
 004516FC    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00451701    call        TRttiPool.TypeOrNil
 00451706    pop         ebx
 00451707    ret
*}
end;

//00451708
{*procedure TRttiPointerType.GetAttributes(?:?);
begin
 00451708    push        ebp
 00451709    mov         ebp,esp
 0045170B    add         esp,0FFFFFFEC
 0045170E    xor         ecx,ecx
 00451710    mov         dword ptr [ebp-14],ecx
 00451713    mov         dword ptr [ebp-8],edx
 00451716    mov         dword ptr [ebp-4],eax
 00451719    xor         eax,eax
 0045171B    push        ebp
 0045171C    push        4517D7
 00451721    push        dword ptr fs:[eax]
 00451724    mov         dword ptr fs:[eax],esp
 00451727    mov         eax,dword ptr [ebp-4]
 0045172A    cmp         dword ptr [eax+14],0;TRttiPointerType.FAttributeGetter:TFunc<System.TArray<System.TCusto...
>0045172E    jne         004517B6
 00451734    mov         eax,dword ptr [ebp-4]
 00451737    mov         eax,dword ptr [eax+0C];TRttiPointerType.FPackage:TRttiPackage
 0045173A    mov         eax,dword ptr [eax+18];TRttiPackage.FLock:TObject
 0045173D    mov         dword ptr [ebp-10],eax
 00451740    call        TMonitor.CheckMonitorSupport
 00451745    mov         eax,dword ptr [ebp-10]
 00451748    call        TMonitor.GetMonitor
 0045174D    or          edx,0FFFFFFFF
 00451750    call        TMonitor.Enter
 00451755    xor         eax,eax
 00451757    push        ebp
 00451758    push        4517AF
 0045175D    push        dword ptr fs:[eax]
 00451760    mov         dword ptr fs:[eax],esp
 00451763    mov         eax,dword ptr [ebp-4]
 00451766    cmp         dword ptr [eax+14],0;TRttiPointerType.FAttributeGetter:TFunc<System.TArray<System.TCusto...
>0045176A    jne         00451793
 0045176C    mov         eax,dword ptr [ebp-4]
 0045176F    call        TRttiType.GetTypeData
 00451774    add         eax,4
 00451777    mov         dword ptr [ebp-0C],eax
 0045177A    lea         edx,[ebp-14]
 0045177D    lea         eax,[ebp-0C]
 00451780    call        LazyLoadAttributes
 00451785    mov         edx,dword ptr [ebp-14]
 00451788    mov         eax,dword ptr [ebp-4]
 0045178B    add         eax,14;TRttiPointerType.FAttributeGetter:TFunc<System.TArray<System.TCustomAttribute>>
 0045178E    call        @IntfCopy
 00451793    xor         eax,eax
 00451795    pop         edx
 00451796    pop         ecx
 00451797    pop         ecx
 00451798    mov         dword ptr fs:[eax],edx
 0045179B    push        4517B6
 004517A0    mov         eax,dword ptr [ebp-4]
 004517A3    mov         eax,dword ptr [eax+0C];TRttiPointerType.FPackage:TRttiPackage
 004517A6    mov         eax,dword ptr [eax+18];TRttiPackage.FLock:TObject
 004517A9    call        TMonitor.Exit
 004517AE    ret
>004517AF    jmp         @HandleFinally
>004517B4    jmp         004517A0
 004517B6    mov         edx,dword ptr [ebp-8]
 004517B9    mov         eax,dword ptr [ebp-4]
 004517BC    call        TRttiObject.GetAttributes
 004517C1    xor         eax,eax
 004517C3    pop         edx
 004517C4    pop         ecx
 004517C5    pop         ecx
 004517C6    mov         dword ptr fs:[eax],edx
 004517C9    push        4517DE
 004517CE    lea         eax,[ebp-14]
 004517D1    call        @IntfClear
 004517D6    ret
>004517D7    jmp         @HandleFinally
>004517DC    jmp         004517CE
 004517DE    mov         esp,ebp
 004517E0    pop         ebp
 004517E1    ret
end;*}

//004517E4
function TRttiInvokableType.GetReturnType:TRttiType;
begin
{*
 004517E4    cmp         dword ptr [eax+18],0
>004517E8    jne         004517ED
 004517EA    xor         eax,eax
 004517EC    ret
 004517ED    mov         eax,dword ptr [eax+18]
 004517F0    call        TProcSig.GetReturnType
 004517F5    ret
*}
end;

//004517F8
function TRttiInvokableType.GetCallingConvention:TCallConv;
begin
{*
 004517F8    push        ebx
 004517F9    mov         ebx,eax
 004517FB    cmp         dword ptr [ebx+18],0
>004517FF    jne         00451805
 00451801    xor         eax,eax
 00451803    pop         ebx
 00451804    ret
 00451805    mov         eax,dword ptr [ebx+18]
 00451808    call        TProcSig.GetHandle
 0045180D    movzx       eax,byte ptr [eax+1]
 00451811    pop         ebx
 00451812    ret
*}
end;

//00451814
function TRttiInvokableType.GetParameters:TArray<System.Rtti.TRttiParameter>;
begin
{*
 00451814    push        ebx
 00451815    push        esi
 00451816    mov         esi,edx
 00451818    mov         ebx,eax
 0045181A    cmp         dword ptr [ebx+18],0
>0045181E    jne         00451830
 00451820    mov         eax,esi
 00451822    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00451828    call        @DynArrayClear
 0045182D    pop         esi
 0045182E    pop         ebx
 0045182F    ret
 00451830    mov         edx,esi
 00451832    mov         eax,dword ptr [ebx+18]
 00451835    call        TProcSig.GetParams
 0045183A    pop         esi
 0045183B    pop         ebx
 0045183C    ret
*}
end;

//00451840
function TRttiInvokableType.ToString:string;
begin
{*
 00451840    push        ebp
 00451841    mov         ebp,esp
 00451843    push        0
 00451845    push        0
 00451847    push        0
 00451849    push        ebx
 0045184A    push        esi
 0045184B    mov         esi,edx
 0045184D    mov         ebx,eax
 0045184F    xor         eax,eax
 00451851    push        ebp
 00451852    push        4518E2
 00451857    push        dword ptr fs:[eax]
 0045185A    mov         dword ptr fs:[eax],esp
 0045185D    cmp         dword ptr [ebx+18],0
>00451861    jne         0045186D
 00451863    lea         eax,[ebp-4]
 00451866    call        @UStrClr
>0045186B    jmp         00451878
 0045186D    lea         edx,[ebp-4]
 00451870    mov         eax,dword ptr [ebx+18]
 00451873    mov         ecx,dword ptr [eax]
 00451875    call        dword ptr [ecx-24]
 00451878    mov         eax,ebx
 0045187A    call        TRttiInvokableType.GetReturnType
 0045187F    test        eax,eax
>00451881    jne         004518A6
 00451883    lea         edx,[ebp-8]
 00451886    mov         eax,ebx
 00451888    mov         ecx,dword ptr [eax]
 0045188A    call        dword ptr [ecx+8]
 0045188D    push        dword ptr [ebp-8]
 00451890    push        4518FC;' = procedure'
 00451895    push        dword ptr [ebp-4]
 00451898    mov         eax,esi
 0045189A    mov         edx,3
 0045189F    call        @UStrCatN
>004518A4    jmp         004518C7
 004518A6    lea         edx,[ebp-0C]
 004518A9    mov         eax,ebx
 004518AB    mov         ecx,dword ptr [eax]
 004518AD    call        dword ptr [ecx+8]
 004518B0    push        dword ptr [ebp-0C]
 004518B3    push        451924;' = function'
 004518B8    push        dword ptr [ebp-4]
 004518BB    mov         eax,esi
 004518BD    mov         edx,3
 004518C2    call        @UStrCatN
 004518C7    xor         eax,eax
 004518C9    pop         edx
 004518CA    pop         ecx
 004518CB    pop         ecx
 004518CC    mov         dword ptr fs:[eax],edx
 004518CF    push        4518E9
 004518D4    lea         eax,[ebp-0C]
 004518D7    mov         edx,3
 004518DC    call        @UStrArrayClr
 004518E1    ret
>004518E2    jmp         @HandleFinally
>004518E7    jmp         004518D4
 004518E9    pop         esi
 004518EA    pop         ebx
 004518EB    mov         esp,ebp
 004518ED    pop         ebp
 004518EE    ret
*}
end;

//0045193C
constructor TRttiMethodType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 0045193C    push        ebp
 0045193D    mov         ebp,esp
 0045193F    add         esp,0FFFFFFF4
 00451942    push        ebx
 00451943    push        esi
 00451944    push        edi
 00451945    xor         ebx,ebx
 00451947    mov         dword ptr [ebp-0C],ebx
 0045194A    test        dl,dl
>0045194C    je          00451956
 0045194E    add         esp,0FFFFFFF0
 00451951    call        @ClassCreate
 00451956    mov         dword ptr [ebp-8],ecx
 00451959    mov         byte ptr [ebp-1],dl
 0045195C    mov         edi,eax
 0045195E    mov         ebx,dword ptr [ebp+8]
 00451961    xor         eax,eax
 00451963    push        ebp
 00451964    push        451A24
 00451969    push        dword ptr fs:[eax]
 0045196C    mov         dword ptr fs:[eax],esp
 0045196F    mov         eax,dword ptr [ebp+0C]
 00451972    push        eax
 00451973    push        ebx
 00451974    mov         ecx,dword ptr [ebp-8]
 00451977    xor         edx,edx
 00451979    mov         eax,edi
 0045197B    call        TRttiType.Create
 00451980    mov         eax,edi
 00451982    call        TRttiType.GetTypeData
 00451987    inc         eax
 00451988    mov         dword ptr [ebx],eax
 0045198A    mov         eax,ebx
 0045198C    call        ReadI8
 00451991    movzx       esi,al
 00451994    test        esi,esi
>00451996    jle         004519B1
 00451998    inc         dword ptr [ebx]
 0045199A    mov         eax,dword ptr [ebx]
 0045199C    call        _SkipShortString
 004519A1    mov         dword ptr [ebx],eax
 004519A3    mov         eax,dword ptr [ebx]
 004519A5    call        _SkipShortString
 004519AA    mov         dword ptr [ebx],eax
 004519AC    dec         esi
 004519AD    test        esi,esi
>004519AF    jg          00451998
 004519B1    mov         eax,edi
 004519B3    call        TRttiMethodType.GetMethodKind
 004519B8    cmp         al,1
>004519BA    jne         004519C8
 004519BC    mov         eax,dword ptr [ebx]
 004519BE    call        _SkipShortString
 004519C3    mov         dword ptr [ebx],eax
 004519C5    add         dword ptr [ebx],4
 004519C8    mov         eax,edi
 004519CA    call        TRttiType.GetTypeData
 004519CF    movzx       eax,byte ptr [eax+1]
 004519D3    add         eax,eax
 004519D5    add         eax,eax
 004519D7    inc         eax
 004519D8    add         dword ptr [ebx],eax
 004519DA    mov         eax,dword ptr [ebx]
 004519DC    mov         esi,dword ptr [eax]
 004519DE    test        esi,esi
>004519E0    je          004519F6
 004519E2    push        esi
 004519E3    mov         eax,dword ptr [edi+0C];TRttiMethodType.FPackage:TRttiPackage
 004519E6    mov         ecx,edi
 004519E8    mov         edx,dword ptr ds:[450368];TProcSig
 004519EE    call        TRttiPackage.ReadObjectPointer
 004519F3    mov         dword ptr [edi+18],eax;TRttiMethodType...FProcSig:Pointer
 004519F6    add         dword ptr [ebx],4
 004519F9    lea         edx,[ebp-0C]
 004519FC    mov         eax,ebx
 004519FE    call        LazyLoadAttributes
 00451A03    mov         edx,dword ptr [ebp-0C]
 00451A06    lea         eax,[edi+14];TRttiMethodType.FAttributeGetter:TFunc<System.TArray<System.TCustomAttribut...
 00451A09    call        @IntfCopy
 00451A0E    xor         eax,eax
 00451A10    pop         edx
 00451A11    pop         ecx
 00451A12    pop         ecx
 00451A13    mov         dword ptr fs:[eax],edx
 00451A16    push        451A2B
 00451A1B    lea         eax,[ebp-0C]
 00451A1E    call        @IntfClear
 00451A23    ret
>00451A24    jmp         @HandleFinally
>00451A29    jmp         00451A1B
 00451A2B    mov         eax,edi
 00451A2D    cmp         byte ptr [ebp-1],0
>00451A31    je          00451A42
 00451A33    call        @AfterConstruction
 00451A38    pop         dword ptr fs:[0]
 00451A3F    add         esp,0C
 00451A42    mov         eax,edi
 00451A44    pop         edi
 00451A45    pop         esi
 00451A46    pop         ebx
 00451A47    mov         esp,ebp
 00451A49    pop         ebp
 00451A4A    ret         8
*}
end;

//00451A50
{*procedure TRttiMethodType.Invoke(Callable:TValue; Args:TValue; ?:?; ?:?);
begin
 00451A50    push        ebp
 00451A51    mov         ebp,esp
 00451A53    add         esp,0FFFFFF9C
 00451A56    push        ebx
 00451A57    push        esi
 00451A58    push        edi
 00451A59    xor         ebx,ebx
 00451A5B    mov         dword ptr [ebp-4],ebx
 00451A5E    mov         dword ptr [ebp-8],ebx
 00451A61    mov         dword ptr [ebp-58],ecx
 00451A64    mov         ebx,edx
 00451A66    mov         dword ptr [ebp-54],eax
 00451A69    lea         eax,[ebp-20]
 00451A6C    mov         edx,dword ptr ds:[435E20];TValue
 00451A72    call        @AddRefRecord
 00451A77    lea         eax,[ebp-38]
 00451A7A    mov         edx,dword ptr ds:[435E20];TValue
 00451A80    call        @AddRefRecord
 00451A85    lea         eax,[ebp-50]
 00451A88    mov         edx,dword ptr ds:[435E20];TValue
 00451A8E    call        @AddRefRecord
 00451A93    xor         eax,eax
 00451A95    push        ebp
 00451A96    push        451CC0
 00451A9B    push        dword ptr fs:[eax]
 00451A9E    mov         dword ptr fs:[eax],esp
 00451AA1    lea         edx,[ebp-60]
 00451AA4    mov         eax,ebx
 00451AA6    call        0045AF0C
 00451AAB    test        al,al
>00451AAD    jne         00451ACE
 00451AAF    mov         eax,dword ptr [ebp-54]
 00451AB2    call        TRttiType.GetHandle
 00451AB7    mov         edx,eax
 00451AB9    lea         ecx,[ebp-20]
 00451ABC    mov         eax,ebx
 00451ABE    call        TValue.Cast
 00451AC3    lea         eax,[ebp-20]
 00451AC6    lea         edx,[ebp-60]
 00451AC9    call        TValue.ExtractRawData
 00451ACE    lea         edx,[ebp-8]
 00451AD1    mov         eax,dword ptr [ebp-54]
 00451AD4    call        TRttiInvokableType.GetParameters
 00451AD9    mov         eax,dword ptr [ebp-8]
 00451ADC    test        eax,eax
>00451ADE    je          00451AE5
 00451AE0    sub         eax,4
 00451AE3    mov         eax,dword ptr [eax]
 00451AE5    mov         edx,dword ptr [ebp+0C]
 00451AE8    inc         edx
 00451AE9    cmp         eax,edx
>00451AEB    je          00451B04
 00451AED    mov         ecx,dword ptr ds:[7C42A4];^SResString176:TResStringRec
 00451AF3    mov         dl,1
 00451AF5    mov         eax,[00435ADC];EInvocationError
 00451AFA    call        Exception.CreateRes;EInvocationError.Create
 00451AFF    call        @RaiseExcept
 00451B04    mov         ebx,edx
 00451B06    inc         ebx
 00451B07    push        ebx
 00451B08    lea         eax,[ebp-4]
 00451B0B    mov         ecx,1
 00451B10    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00451B16    call        @DynArraySetLength
 00451B1B    add         esp,4
 00451B1E    xor         eax,eax
 00451B20    mov         dword ptr [ebp-64],eax
 00451B23    mov         eax,dword ptr [ebp-54]
 00451B26    call        TRttiInvokableType.GetCallingConvention
 00451B2B    mov         ebx,eax
 00451B2D    lea         edx,[ebp-38]
 00451B30    mov         eax,dword ptr [ebp-5C]
 00451B33    call        TValue.&op_Implicit
 00451B38    xor         eax,eax
 00451B3A    push        ebp
 00451B3B    push        451B84
 00451B40    push        dword ptr fs:[eax]
 00451B43    mov         dword ptr fs:[eax],esp
 00451B46    cmp         bl,2
>00451B49    je          00451B68
 00451B4B    mov         eax,dword ptr [ebp-64]
 00451B4E    lea         eax,[eax+eax*2]
 00451B51    mov         edx,dword ptr [ebp-4]
 00451B54    lea         eax,[edx+eax*8]
 00451B57    lea         edx,[ebp-38]
 00451B5A    mov         ecx,dword ptr ds:[435E20];TValue
 00451B60    call        @CopyRecord
 00451B65    inc         dword ptr [ebp-64]
 00451B68    xor         eax,eax
 00451B6A    pop         edx
 00451B6B    pop         ecx
 00451B6C    pop         ecx
 00451B6D    mov         dword ptr fs:[eax],edx
 00451B70    push        451B8B
 00451B75    lea         eax,[ebp-38]
 00451B78    mov         edx,dword ptr ds:[435E20];TValue
 00451B7E    call        @FinalizeRecord
 00451B83    ret
>00451B84    jmp         @HandleFinally
>00451B89    jmp         00451B75
 00451B8B    mov         esi,dword ptr [ebp+0C]
 00451B8E    inc         esi
 00451B8F    dec         esi
 00451B90    test        esi,esi
>00451B92    jl          00451BC6
 00451B94    inc         esi
 00451B95    xor         edi,edi
 00451B97    mov         ebx,dword ptr [ebp-58]
 00451B9A    mov         eax,dword ptr [ebp-54]
 00451B9D    call        TRttiInvokableType.GetCallingConvention
 00451BA2    push        eax
 00451BA3    mov         eax,dword ptr [ebp-64]
 00451BA6    lea         eax,[eax+eax*2]
 00451BA9    mov         edx,dword ptr [ebp-4]
 00451BAC    lea         ecx,[edx+eax*8]
 00451BAF    mov         eax,dword ptr [ebp-8]
 00451BB2    mov         eax,dword ptr [eax+edi*4]
 00451BB5    mov         edx,ebx
 00451BB7    call        PassArg
 00451BBC    inc         dword ptr [ebp-64]
 00451BBF    inc         edi
 00451BC0    add         ebx,18
 00451BC3    dec         esi
>00451BC4    jne         00451B9A
 00451BC6    mov         eax,dword ptr [ebp-54]
 00451BC9    call        TRttiInvokableType.GetCallingConvention
 00451BCE    mov         ebx,eax
 00451BD0    lea         edx,[ebp-50]
 00451BD3    mov         eax,dword ptr [ebp-5C]
 00451BD6    call        TValue.&op_Implicit
 00451BDB    xor         eax,eax
 00451BDD    push        ebp
 00451BDE    push        451C24
 00451BE3    push        dword ptr fs:[eax]
 00451BE6    mov         dword ptr fs:[eax],esp
 00451BE9    cmp         bl,2
>00451BEC    jne         00451C08
 00451BEE    mov         eax,dword ptr [ebp-64]
 00451BF1    lea         eax,[eax+eax*2]
 00451BF4    mov         edx,dword ptr [ebp-4]
 00451BF7    lea         eax,[edx+eax*8]
 00451BFA    lea         edx,[ebp-50]
 00451BFD    mov         ecx,dword ptr ds:[435E20];TValue
 00451C03    call        @CopyRecord
 00451C08    xor         eax,eax
 00451C0A    pop         edx
 00451C0B    pop         ecx
 00451C0C    pop         ecx
 00451C0D    mov         dword ptr fs:[eax],edx
 00451C10    push        451C2B
 00451C15    lea         eax,[ebp-50]
 00451C18    mov         edx,dword ptr ds:[435E20];TValue
 00451C1E    call        @FinalizeRecord
 00451C23    ret
>00451C24    jmp         @HandleFinally
>00451C29    jmp         00451C15
 00451C2B    mov         eax,dword ptr [ebp-54]
 00451C2E    call        TRttiInvokableType.GetReturnType
 00451C33    test        eax,eax
>00451C35    je          00451C64
 00451C37    mov         eax,dword ptr [ebp-54]
 00451C3A    call        TRttiInvokableType.GetReturnType
 00451C3F    call        TRttiType.GetHandle
 00451C44    push        eax
 00451C45    push        0
 00451C47    push        0
 00451C49    mov         eax,dword ptr [ebp+8]
 00451C4C    push        eax
 00451C4D    mov         eax,dword ptr [ebp-54]
 00451C50    call        TRttiInvokableType.GetCallingConvention
 00451C55    mov         ecx,eax
 00451C57    mov         edx,dword ptr [ebp-4]
 00451C5A    mov         eax,dword ptr [ebp-60]
 00451C5D    call        Invoke
>00451C62    jmp         00451C83
 00451C64    push        0
 00451C66    push        0
 00451C68    push        0
 00451C6A    mov         eax,dword ptr [ebp+8]
 00451C6D    push        eax
 00451C6E    mov         eax,dword ptr [ebp-54]
 00451C71    call        TRttiInvokableType.GetCallingConvention
 00451C76    mov         ecx,eax
 00451C78    mov         edx,dword ptr [ebp-4]
 00451C7B    mov         eax,dword ptr [ebp-60]
 00451C7E    call        Invoke
 00451C83    xor         eax,eax
 00451C85    pop         edx
 00451C86    pop         ecx
 00451C87    pop         ecx
 00451C88    mov         dword ptr fs:[eax],edx
 00451C8B    push        451CC7
 00451C90    lea         eax,[ebp-50]
 00451C93    mov         edx,dword ptr ds:[435E20];TValue
 00451C99    mov         ecx,3
 00451C9E    call        @FinalizeArray
 00451CA3    lea         eax,[ebp-8]
 00451CA6    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00451CAC    call        @DynArrayClear
 00451CB1    lea         eax,[ebp-4]
 00451CB4    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00451CBA    call        @DynArrayClear
 00451CBF    ret
>00451CC0    jmp         @HandleFinally
>00451CC5    jmp         00451C90
 00451CC7    pop         edi
 00451CC8    pop         esi
 00451CC9    pop         ebx
 00451CCA    mov         esp,ebp
 00451CCC    pop         ebp
 00451CCD    ret         8
end;*}

//00451CD0
function TRttiMethodType.ToString:string;
begin
{*
 00451CD0    push        ebp
 00451CD1    mov         ebp,esp
 00451CD3    push        0
 00451CD5    push        ebx
 00451CD6    push        esi
 00451CD7    mov         esi,edx
 00451CD9    mov         ebx,eax
 00451CDB    xor         eax,eax
 00451CDD    push        ebp
 00451CDE    push        451D18
 00451CE3    push        dword ptr fs:[eax]
 00451CE6    mov         dword ptr fs:[eax],esp
 00451CE9    lea         edx,[ebp-4]
 00451CEC    mov         eax,ebx
 00451CEE    call        TRttiInvokableType.ToString
 00451CF3    mov         edx,dword ptr [ebp-4]
 00451CF6    mov         eax,esi
 00451CF8    mov         ecx,451D30;' of object'
 00451CFD    call        @UStrCat3
 00451D02    xor         eax,eax
 00451D04    pop         edx
 00451D05    pop         ecx
 00451D06    pop         ecx
 00451D07    mov         dword ptr fs:[eax],edx
 00451D0A    push        451D1F
 00451D0F    lea         eax,[ebp-4]
 00451D12    call        @UStrClr
 00451D17    ret
>00451D18    jmp         @HandleFinally
>00451D1D    jmp         00451D0F
 00451D1F    pop         esi
 00451D20    pop         ebx
 00451D21    pop         ecx
 00451D22    pop         ebp
 00451D23    ret
*}
end;

//00451D48
function TRttiMethodType.GetMethodKind:TMethodKind;
begin
{*
 00451D48    push        ebx
 00451D49    mov         ebx,eax
 00451D4B    mov         eax,ebx
 00451D4D    call        TRttiType.GetTypeData
 00451D52    movzx       eax,byte ptr [eax]
 00451D55    pop         ebx
 00451D56    ret
*}
end;

//00451D58
constructor TRttiProcedureType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00451D58    push        ebp
 00451D59    mov         ebp,esp
 00451D5B    push        ebx
 00451D5C    push        esi
 00451D5D    test        dl,dl
>00451D5F    je          00451D69
 00451D61    add         esp,0FFFFFFF0
 00451D64    call        @ClassCreate
 00451D69    mov         ebx,edx
 00451D6B    mov         esi,eax
 00451D6D    mov         eax,dword ptr [ebp+0C]
 00451D70    push        eax
 00451D71    mov         eax,dword ptr [ebp+8]
 00451D74    push        eax
 00451D75    xor         edx,edx
 00451D77    mov         eax,esi
 00451D79    call        TRttiType.Create
 00451D7E    mov         eax,esi
 00451D80    call        TRttiType.GetTypeData
 00451D85    cmp         dword ptr [eax],0
>00451D88    je          00451DA7
 00451D8A    mov         eax,esi
 00451D8C    call        TRttiType.GetTypeData
 00451D91    mov         eax,dword ptr [eax]
 00451D93    push        eax
 00451D94    mov         eax,dword ptr [esi+0C]
 00451D97    mov         ecx,esi
 00451D99    mov         edx,dword ptr ds:[450368];TProcSig
 00451D9F    call        TRttiPackage.ReadObjectPointer
 00451DA4    mov         dword ptr [esi+18],eax
 00451DA7    mov         eax,esi
 00451DA9    test        bl,bl
>00451DAB    je          00451DBC
 00451DAD    call        @AfterConstruction
 00451DB2    pop         dword ptr fs:[0]
 00451DB9    add         esp,0C
 00451DBC    mov         eax,esi
 00451DBE    pop         esi
 00451DBF    pop         ebx
 00451DC0    pop         ebp
 00451DC1    ret         8
*}
end;

//00451DC4
{*procedure TRttiProcedureType.Invoke(Callable:TValue; Args:TValue; ?:?; ?:?);
begin
 00451DC4    push        ebp
 00451DC5    mov         ebp,esp
 00451DC7    push        ecx
 00451DC8    mov         ecx,0E
 00451DCD    push        0
 00451DCF    push        0
 00451DD1    dec         ecx
>00451DD2    jne         00451DCD
 00451DD4    xchg        ecx,dword ptr [ebp-4]
 00451DD7    push        ebx
 00451DD8    push        esi
 00451DD9    push        edi
 00451DDA    mov         dword ptr [ebp-28],ecx
 00451DDD    mov         esi,edx
 00451DDF    mov         dword ptr [ebp-24],eax
 00451DE2    mov         ebx,dword ptr [ebp+0C]
 00451DE5    lea         eax,[ebp-20]
 00451DE8    mov         edx,dword ptr ds:[435E20];TValue
 00451DEE    call        @AddRefRecord
 00451DF3    xor         eax,eax
 00451DF5    push        ebp
 00451DF6    push        452010
 00451DFB    push        dword ptr fs:[eax]
 00451DFE    mov         dword ptr fs:[eax],esp
 00451E01    mov         eax,dword ptr [ebp-24]
 00451E04    call        TRttiType.GetHandle
 00451E09    mov         edx,eax
 00451E0B    lea         ecx,[ebp-20]
 00451E0E    mov         eax,esi
 00451E10    call        TValue.Cast
 00451E15    lea         eax,[ebp-20]
 00451E18    lea         edx,[ebp-2C]
 00451E1B    call        TValue.ExtractRawData
 00451E20    lea         edx,[ebp-8]
 00451E23    mov         eax,dword ptr [ebp-24]
 00451E26    call        TRttiInvokableType.GetParameters
 00451E2B    mov         eax,dword ptr [ebp-8]
 00451E2E    test        eax,eax
>00451E30    je          00451E37
 00451E32    sub         eax,4
 00451E35    mov         eax,dword ptr [eax]
 00451E37    lea         esi,[ebx+1]
 00451E3A    cmp         eax,esi
>00451E3C    je          00451E55
 00451E3E    mov         ecx,dword ptr ds:[7C42A4];^SResString176:TResStringRec
 00451E44    mov         dl,1
 00451E46    mov         eax,[00435ADC];EInvocationError
 00451E4B    call        Exception.CreateRes;EInvocationError.Create
 00451E50    call        @RaiseExcept
 00451E55    push        esi
 00451E56    lea         eax,[ebp-4]
 00451E59    mov         ecx,1
 00451E5E    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00451E64    call        @DynArraySetLength
 00451E69    add         esp,4
 00451E6C    mov         edi,esi
 00451E6E    dec         edi
 00451E6F    test        edi,edi
>00451E71    jl          00451F6D
 00451E77    inc         edi
 00451E78    xor         esi,esi
 00451E7A    mov         ebx,dword ptr [ebp-28]
 00451E7D    mov         eax,dword ptr [ebp-8]
 00451E80    mov         eax,dword ptr [eax+esi*4]
 00451E83    mov         edx,dword ptr [eax]
 00451E85    call        dword ptr [edx+10]
 00451E88    test        eax,eax
>00451E8A    jne         00451EB7
 00451E8C    mov         eax,ebx
 00451E8E    call        TValue.GetReferenceToRawData
 00451E93    lea         edx,[ebp-44]
 00451E96    call        TValue.From<System.Pointer>
 00451E9B    lea         edx,[ebp-44]
 00451E9E    lea         eax,[esi+esi*2]
 00451EA1    mov         ecx,dword ptr [ebp-4]
 00451EA4    lea         eax,[ecx+eax*8]
 00451EA7    mov         ecx,dword ptr ds:[435E20];TValue
 00451EAD    call        @CopyRecord
>00451EB2    jmp         00451F62
 00451EB7    mov         eax,dword ptr [ebp-8]
 00451EBA    mov         eax,dword ptr [eax+esi*4]
 00451EBD    mov         edx,dword ptr [eax]
 00451EBF    call        dword ptr [edx+0C]
 00451EC2    and         al,byte ptr ds:[452020];0x21 gvar_00452020
 00451EC8    movzx       edx,byte ptr ds:[452024];0x0 gvar_00452024
 00451ECF    cmp         dl,al
>00451ED1    je          00451F2F
 00451ED3    mov         eax,dword ptr [ebp-8]
 00451ED6    mov         eax,dword ptr [eax+esi*4]
 00451ED9    mov         edx,dword ptr [eax]
 00451EDB    call        dword ptr [edx+10]
 00451EDE    call        TRttiType.GetHandle
 00451EE3    push        eax
 00451EE4    mov         eax,ebx
 00451EE6    call        TValue.GetTypeInfo
 00451EEB    pop         edx
 00451EEC    cmp         edx,eax
>00451EEE    je          00451F07
 00451EF0    mov         ecx,dword ptr ds:[7C4BC4];^SResString178:TResStringRec
 00451EF6    mov         dl,1
 00451EF8    mov         eax,[00418C80];EInvalidCast
 00451EFD    call        Exception.CreateRes;EInvalidCast.Create
 00451F02    call        @RaiseExcept
 00451F07    mov         eax,ebx
 00451F09    call        TValue.GetReferenceToRawData
 00451F0E    lea         edx,[ebp-5C]
 00451F11    call        TValue.From<System.Pointer>
 00451F16    lea         edx,[ebp-5C]
 00451F19    lea         eax,[esi+esi*2]
 00451F1C    mov         ecx,dword ptr [ebp-4]
 00451F1F    lea         eax,[ecx+eax*8]
 00451F22    mov         ecx,dword ptr ds:[435E20];TValue
 00451F28    call        @CopyRecord
>00451F2D    jmp         00451F62
 00451F2F    mov         eax,dword ptr [ebp-8]
 00451F32    mov         eax,dword ptr [eax+esi*4]
 00451F35    mov         edx,dword ptr [eax]
 00451F37    call        dword ptr [edx+10]
 00451F3A    call        TRttiType.GetHandle
 00451F3F    mov         edx,eax
 00451F41    lea         ecx,[ebp-74]
 00451F44    mov         eax,ebx
 00451F46    call        TValue.Cast
 00451F4B    lea         edx,[ebp-74]
 00451F4E    lea         eax,[esi+esi*2]
 00451F51    mov         ecx,dword ptr [ebp-4]
 00451F54    lea         eax,[ecx+eax*8]
 00451F57    mov         ecx,dword ptr ds:[435E20];TValue
 00451F5D    call        @CopyRecord
 00451F62    inc         esi
 00451F63    add         ebx,18
 00451F66    dec         edi
>00451F67    jne         00451E7D
 00451F6D    mov         eax,dword ptr [ebp-24]
 00451F70    call        TRttiInvokableType.GetReturnType
 00451F75    test        eax,eax
>00451F77    je          00451FA6
 00451F79    mov         eax,dword ptr [ebp-24]
 00451F7C    call        TRttiInvokableType.GetReturnType
 00451F81    call        TRttiType.GetHandle
 00451F86    push        eax
 00451F87    push        0
 00451F89    push        0
 00451F8B    mov         eax,dword ptr [ebp+8]
 00451F8E    push        eax
 00451F8F    mov         eax,dword ptr [ebp-24]
 00451F92    call        TRttiInvokableType.GetCallingConvention
 00451F97    mov         ecx,eax
 00451F99    mov         edx,dword ptr [ebp-4]
 00451F9C    mov         eax,dword ptr [ebp-2C]
 00451F9F    call        Invoke
>00451FA4    jmp         00451FC5
 00451FA6    push        0
 00451FA8    push        0
 00451FAA    push        0
 00451FAC    mov         eax,dword ptr [ebp+8]
 00451FAF    push        eax
 00451FB0    mov         eax,dword ptr [ebp-24]
 00451FB3    call        TRttiInvokableType.GetCallingConvention
 00451FB8    mov         ecx,eax
 00451FBA    mov         edx,dword ptr [ebp-4]
 00451FBD    mov         eax,dword ptr [ebp-2C]
 00451FC0    call        Invoke
 00451FC5    xor         eax,eax
 00451FC7    pop         edx
 00451FC8    pop         ecx
 00451FC9    pop         ecx
 00451FCA    mov         dword ptr fs:[eax],edx
 00451FCD    push        452017
 00451FD2    lea         eax,[ebp-74]
 00451FD5    mov         edx,dword ptr ds:[435E20];TValue
 00451FDB    mov         ecx,3
 00451FE0    call        @FinalizeArray
 00451FE5    lea         eax,[ebp-20]
 00451FE8    mov         edx,dword ptr ds:[435E20];TValue
 00451FEE    call        @FinalizeRecord
 00451FF3    lea         eax,[ebp-8]
 00451FF6    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00451FFC    call        @DynArrayClear
 00452001    lea         eax,[ebp-4]
 00452004    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0045200A    call        @DynArrayClear
 0045200F    ret
>00452010    jmp         @HandleFinally
>00452015    jmp         00451FD2
 00452017    pop         edi
 00452018    pop         esi
 00452019    pop         ebx
 0045201A    mov         esp,ebp
 0045201C    pop         ebp
 0045201D    ret         8
end;*}

//00452028
{*procedure TRttiProcedureType.GetAttributes(?:?);
begin
 00452028    push        ebp
 00452029    mov         ebp,esp
 0045202B    add         esp,0FFFFFFEC
 0045202E    xor         ecx,ecx
 00452030    mov         dword ptr [ebp-14],ecx
 00452033    mov         dword ptr [ebp-8],edx
 00452036    mov         dword ptr [ebp-4],eax
 00452039    xor         eax,eax
 0045203B    push        ebp
 0045203C    push        4520F7
 00452041    push        dword ptr fs:[eax]
 00452044    mov         dword ptr fs:[eax],esp
 00452047    mov         eax,dword ptr [ebp-4]
 0045204A    cmp         dword ptr [eax+14],0;TRttiProcedureType.FAttributeGetter:TFunc<System.TArray<System.TCus...
>0045204E    jne         004520D6
 00452054    mov         eax,dword ptr [ebp-4]
 00452057    mov         eax,dword ptr [eax+0C];TRttiProcedureType.FPackage:TRttiPackage
 0045205A    mov         eax,dword ptr [eax+18];TRttiPackage.FLock:TObject
 0045205D    mov         dword ptr [ebp-10],eax
 00452060    call        TMonitor.CheckMonitorSupport
 00452065    mov         eax,dword ptr [ebp-10]
 00452068    call        TMonitor.GetMonitor
 0045206D    or          edx,0FFFFFFFF
 00452070    call        TMonitor.Enter
 00452075    xor         eax,eax
 00452077    push        ebp
 00452078    push        4520CF
 0045207D    push        dword ptr fs:[eax]
 00452080    mov         dword ptr fs:[eax],esp
 00452083    mov         eax,dword ptr [ebp-4]
 00452086    cmp         dword ptr [eax+14],0;TRttiProcedureType.FAttributeGetter:TFunc<System.TArray<System.TCus...
>0045208A    jne         004520B3
 0045208C    mov         eax,dword ptr [ebp-4]
 0045208F    call        TRttiType.GetTypeData
 00452094    add         eax,4
 00452097    mov         dword ptr [ebp-0C],eax
 0045209A    lea         edx,[ebp-14]
 0045209D    lea         eax,[ebp-0C]
 004520A0    call        LazyLoadAttributes
 004520A5    mov         edx,dword ptr [ebp-14]
 004520A8    mov         eax,dword ptr [ebp-4]
 004520AB    add         eax,14;TRttiProcedureType.FAttributeGetter:TFunc<System.TArray<System.TCustomAttribute>>
 004520AE    call        @IntfCopy
 004520B3    xor         eax,eax
 004520B5    pop         edx
 004520B6    pop         ecx
 004520B7    pop         ecx
 004520B8    mov         dword ptr fs:[eax],edx
 004520BB    push        4520D6
 004520C0    mov         eax,dword ptr [ebp-4]
 004520C3    mov         eax,dword ptr [eax+0C];TRttiProcedureType.FPackage:TRttiPackage
 004520C6    mov         eax,dword ptr [eax+18];TRttiPackage.FLock:TObject
 004520C9    call        TMonitor.Exit
 004520CE    ret
>004520CF    jmp         @HandleFinally
>004520D4    jmp         004520C0
 004520D6    mov         edx,dword ptr [ebp-8]
 004520D9    mov         eax,dword ptr [ebp-4]
 004520DC    call        TRttiObject.GetAttributes
 004520E1    xor         eax,eax
 004520E3    pop         edx
 004520E4    pop         ecx
 004520E5    pop         ecx
 004520E6    mov         dword ptr fs:[eax],edx
 004520E9    push        4520FE
 004520EE    lea         eax,[ebp-14]
 004520F1    call        @IntfClear
 004520F6    ret
>004520F7    jmp         @HandleFinally
>004520FC    jmp         004520EE
 004520FE    mov         esp,ebp
 00452100    pop         ebp
 00452101    ret
end;*}

//00452104
function TRttiAnsiStringType.GetCodePage:Word;
begin
{*
 00452104    push        ebx
 00452105    mov         ebx,eax
 00452107    mov         eax,ebx
 00452109    call        TRttiType.GetTypeData
 0045210E    movzx       eax,word ptr [eax]
 00452111    pop         ebx
 00452112    ret
*}
end;

//00452114
constructor TRttiStringType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00452114    push        ebp
 00452115    mov         ebp,esp
 00452117    add         esp,0FFFFFFF8
 0045211A    push        ebx
 0045211B    push        esi
 0045211C    xor         ebx,ebx
 0045211E    mov         dword ptr [ebp-8],ebx
 00452121    test        dl,dl
>00452123    je          0045212D
 00452125    add         esp,0FFFFFFF0
 00452128    call        @ClassCreate
 0045212D    mov         byte ptr [ebp-1],dl
 00452130    mov         ebx,eax
 00452132    mov         esi,dword ptr [ebp+8]
 00452135    xor         eax,eax
 00452137    push        ebp
 00452138    push        4521B8
 0045213D    push        dword ptr fs:[eax]
 00452140    mov         dword ptr fs:[eax],esp
 00452143    mov         eax,dword ptr [ebp+0C]
 00452146    push        eax
 00452147    push        esi
 00452148    xor         edx,edx
 0045214A    mov         eax,ebx
 0045214C    call        TRttiType.Create
 00452151    mov         eax,ebx
 00452153    call        TRttiType.GetTypeKind
 00452158    sub         al,5
>0045215A    je          00452178
 0045215C    sub         al,5
>0045215E    je          0045216A
 00452160    dec         al
>00452162    je          00452184
 00452164    sub         al,7
>00452166    je          00452184
>00452168    jmp         0045218D
 0045216A    mov         eax,ebx
 0045216C    call        TRttiType.GetTypeData
 00452171    add         eax,2
 00452174    mov         dword ptr [esi],eax
>00452176    jmp         0045218D
 00452178    mov         eax,ebx
 0045217A    call        TRttiType.GetTypeData
 0045217F    inc         eax
 00452180    mov         dword ptr [esi],eax
>00452182    jmp         0045218D
 00452184    mov         eax,ebx
 00452186    call        TRttiType.GetTypeData
 0045218B    mov         dword ptr [esi],eax
 0045218D    lea         edx,[ebp-8]
 00452190    mov         eax,esi
 00452192    call        LazyLoadAttributes
 00452197    mov         edx,dword ptr [ebp-8]
 0045219A    lea         eax,[ebx+14]
 0045219D    call        @IntfCopy
 004521A2    xor         eax,eax
 004521A4    pop         edx
 004521A5    pop         ecx
 004521A6    pop         ecx
 004521A7    mov         dword ptr fs:[eax],edx
 004521AA    push        4521BF
 004521AF    lea         eax,[ebp-8]
 004521B2    call        @IntfClear
 004521B7    ret
>004521B8    jmp         @HandleFinally
>004521BD    jmp         004521AF
 004521BF    mov         eax,ebx
 004521C1    cmp         byte ptr [ebp-1],0
>004521C5    je          004521D6
 004521C7    call        @AfterConstruction
 004521CC    pop         dword ptr fs:[0]
 004521D3    add         esp,0C
 004521D6    mov         eax,ebx
 004521D8    pop         esi
 004521D9    pop         ebx
 004521DA    pop         ecx
 004521DB    pop         ecx
 004521DC    pop         ebp
 004521DD    ret         8
*}
end;

//004521E0
function TRttiStringType.GetStringKind:TRttiStringKind;
begin
{*
 004521E0    call        TRttiType.GetTypeKind
 004521E5    sub         al,5
>004521E7    je          004521FD
 004521E9    sub         al,5
>004521EB    je          004521F7
 004521ED    dec         al
>004521EF    je          004521FA
 004521F1    sub         al,7
>004521F3    je          00452200
>004521F5    jmp         00452203
 004521F7    mov         al,1
 004521F9    ret
 004521FA    mov         al,2
 004521FC    ret
 004521FD    xor         eax,eax
 004521FF    ret
 00452200    mov         al,3
 00452202    ret
 00452203    mov         al,1
 00452205    ret
*}
end;

//00452208
function TRttiStringType.GetTypeSize:Integer;
begin
{*
 00452208    push        ebx
 00452209    mov         ebx,eax
 0045220B    mov         eax,ebx
 0045220D    call        TRttiType.GetTypeKind
 00452212    cmp         al,5
>00452214    jne         00452223
 00452216    mov         eax,ebx
 00452218    call        TRttiType.GetTypeData
 0045221D    movzx       eax,byte ptr [eax]
 00452220    inc         eax
 00452221    pop         ebx
 00452222    ret
 00452223    mov         eax,4
 00452228    pop         ebx
 00452229    ret
*}
end;

//0045222C
constructor TRttiFloatType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 0045222C    push        ebp
 0045222D    mov         ebp,esp
 0045222F    add         esp,0FFFFFFF8
 00452232    push        ebx
 00452233    push        esi
 00452234    xor         ebx,ebx
 00452236    mov         dword ptr [ebp-8],ebx
 00452239    test        dl,dl
>0045223B    je          00452245
 0045223D    add         esp,0FFFFFFF0
 00452240    call        @ClassCreate
 00452245    mov         byte ptr [ebp-1],dl
 00452248    mov         ebx,eax
 0045224A    mov         esi,dword ptr [ebp+8]
 0045224D    xor         eax,eax
 0045224F    push        ebp
 00452250    push        45229E
 00452255    push        dword ptr fs:[eax]
 00452258    mov         dword ptr fs:[eax],esp
 0045225B    mov         eax,dword ptr [ebp+0C]
 0045225E    push        eax
 0045225F    push        esi
 00452260    xor         edx,edx
 00452262    mov         eax,ebx
 00452264    call        TRttiType.Create
 00452269    mov         eax,ebx
 0045226B    call        TRttiType.GetTypeData
 00452270    inc         eax
 00452271    mov         dword ptr [esi],eax
 00452273    lea         edx,[ebp-8]
 00452276    mov         eax,esi
 00452278    call        LazyLoadAttributes
 0045227D    mov         edx,dword ptr [ebp-8]
 00452280    lea         eax,[ebx+14]
 00452283    call        @IntfCopy
 00452288    xor         eax,eax
 0045228A    pop         edx
 0045228B    pop         ecx
 0045228C    pop         ecx
 0045228D    mov         dword ptr fs:[eax],edx
 00452290    push        4522A5
 00452295    lea         eax,[ebp-8]
 00452298    call        @IntfClear
 0045229D    ret
>0045229E    jmp         @HandleFinally
>004522A3    jmp         00452295
 004522A5    mov         eax,ebx
 004522A7    cmp         byte ptr [ebp-1],0
>004522AB    je          004522BC
 004522AD    call        @AfterConstruction
 004522B2    pop         dword ptr fs:[0]
 004522B9    add         esp,0C
 004522BC    mov         eax,ebx
 004522BE    pop         esi
 004522BF    pop         ebx
 004522C0    pop         ecx
 004522C1    pop         ecx
 004522C2    pop         ebp
 004522C3    ret         8
*}
end;

//004522C8
function TRttiOrdinalType.GetOrdType:TOrdType;
begin
{*
 004522C8    push        ebx
 004522C9    mov         ebx,eax
 004522CB    mov         eax,ebx
 004522CD    call        TRttiType.GetTypeData
 004522D2    movzx       eax,byte ptr [eax]
 004522D5    pop         ebx
 004522D6    ret
*}
end;

//004522D8
function TRttiOrdinalType.GetTypeSize:Integer;
begin
{*
 004522D8    push        ebx
 004522D9    mov         ebx,eax
 004522DB    mov         eax,ebx
 004522DD    call        TRttiOrdinalType.GetOrdType
 004522E2    and         eax,7F
 004522E5    mov         eax,dword ptr [eax*4+7A0590]
 004522EC    pop         ebx
 004522ED    ret
*}
end;

//004522F0
{*procedure sub_004522F0(?:?; ?:?);
begin
 004522F0    push        ebp
 004522F1    mov         ebp,esp
 004522F3    push        ecx
 004522F4    push        ebx
 004522F5    mov         dword ptr [ebp-4],eax
 004522F8    mov         eax,[007C4B84];^SafeCallErrorProc:TSafeCallErrorProc
 004522FD    cmp         dword ptr [eax],0
>00452300    je          00452312
 00452302    mov         edx,dword ptr [ebp+4]
 00452305    mov         ebx,dword ptr ds:[7C4B84];^SafeCallErrorProc:TSafeCallErrorProc
 0045230B    mov         ebx,dword ptr [ebx]
 0045230D    mov         eax,dword ptr [ebp-4]
 00452310    call        ebx
 00452312    mov         al,18
 00452314    call        Error
 00452319    pop         ebx
 0045231A    pop         ecx
 0045231B    pop         ebp
 0045231C    ret
end;*}

//004536DC
{*procedure sub_004536DC(?:?; ?:?);
begin
 004536DC    push        ebp
 004536DD    mov         ebp,esp
 004536DF    push        eax
 004536E0    push        ebx
 004536E1    mov         ebx,edx
 004536E3    mov         ecx,dword ptr [ebx+28]
 004536E6    test        ecx,ecx
>004536E8    jne         004536ED
 004536EA    nop
>004536EB    jmp         00453711
 004536ED    mov         eax,ecx
>004536EF    jmp         004536F8
 004536F1    mov         dword ptr [esp],0
 004536F8    sub         esp,1000
 004536FE    sub         eax,1000
>00453703    jns         004536F1
 00453705    sub         esp,eax
 00453707    mov         eax,dword ptr [ebx+24]
 0045370A    mov         edx,esp
 0045370C    call        Move
 00453711    mov         eax,dword ptr [ebx]
 00453713    mov         edx,dword ptr [ebx+4]
 00453716    mov         ecx,dword ptr [ebx+8]
 00453719    call        dword ptr [ebp-4]
 0045371C    mov         dword ptr [ebx],eax
 0045371E    mov         dword ptr [ebx+4],edx
 00453721    movsx       eax,byte ptr [ebx+21]
 00453725    inc         eax
>00453726    jne         0045372B
 00453728    nop
>00453729    jmp         00453746
 0045372B    dec         eax
>0045372C    je          00453739
 0045372E    dec         eax
>0045372F    je          0045373E
 00453731    dec         eax
>00453732    je          00453743
 00453734    fistp       qword ptr [ebx+10]
>00453737    jmp         00453746
 00453739    fstp        dword ptr [ebx+10]
>0045373C    jmp         00453746
 0045373E    fstp        qword ptr [ebx+10]
>00453741    jmp         00453746
 00453743    fstp        tbyte ptr [ebx+10]
 00453746    mov         al,byte ptr [ebx+20]
 00453749    test        al,al
>0045374B    jne         00453750
 0045374D    nop
>0045374E    jmp         0045375C
 00453750    dec         al
 00453752    mov         eax,dword ptr [ebx+28]
>00453755    je          0045375A
 00453757    sub         eax,4
 0045375A    add         esp,eax
 0045375C    pop         ebx
 0045375D    pop         eax
 0045375E    pop         ebp
 0045375F    ret
end;*}

//00453760
{*function sub_00453760(?:?; ?:?):?;
begin
 00453760    push        ebp
 00453761    mov         ebp,esp
 00453763    add         esp,0FFFFFFF8
 00453766    push        ebx
 00453767    push        esi
 00453768    push        edi
 00453769    mov         byte ptr [ebp-1],al
 0045376C    mov         edi,4
 00453771    mov         eax,dword ptr [ebp+8]
 00453774    mov         eax,dword ptr [eax-3C]
 00453777    mov         dword ptr [ebp-8],eax
 0045377A    mov         eax,dword ptr [ebp-8]
 0045377D    test        eax,eax
>0045377F    je          00453786
 00453781    sub         eax,4
 00453784    mov         eax,dword ptr [eax]
 00453786    mov         esi,eax
 00453788    dec         esi
 00453789    test        esi,esi
>0045378B    jl          004537D1
 0045378D    inc         esi
 0045378E    xor         ebx,ebx
 00453790    lea         eax,[ebx+ebx*2]
 00453793    mov         edx,dword ptr [ebp+8]
 00453796    mov         edx,dword ptr [edx-3C]
 00453799    lea         eax,[edx+eax*8]
 0045379C    call        TValue.GetTypeInfo
 004537A1    movzx       edx,byte ptr [ebp-1]
 004537A5    xor         ecx,ecx
 004537A7    call        PassByRef
 004537AC    test        al,al
>004537AE    je          004537B5
 004537B0    add         edi,4
>004537B3    jmp         004537CD
 004537B5    lea         eax,[ebx+ebx*2]
 004537B8    mov         edx,dword ptr [ebp+8]
 004537BB    mov         edx,dword ptr [edx-3C]
 004537BE    lea         eax,[edx+eax*8]
 004537C1    call        TValue.GetDataSize
 004537C6    call        Align4
 004537CB    add         edi,eax
 004537CD    inc         ebx
 004537CE    dec         esi
>004537CF    jne         00453790
 004537D1    mov         eax,edi
 004537D3    pop         edi
 004537D4    pop         esi
 004537D5    pop         ebx
 004537D6    pop         ecx
 004537D7    pop         ecx
 004537D8    pop         ebp
 004537D9    ret
end;*}

//004537DC
procedure PutArg(const Arg:TValue);
begin
{*
 004537DC    push        ebp
 004537DD    mov         ebp,esp
 004537DF    push        ebx
 004537E0    push        esi
 004537E1    push        edi
 004537E2    mov         ebx,eax
 004537E4    mov         eax,ebx
 004537E6    call        TValue.GetDataSize
 004537EB    mov         esi,eax
 004537ED    mov         eax,ebx
 004537EF    call        GetValueStackSize
 004537F4    mov         edi,eax
 004537F6    dec         esi
 004537F7    sub         esi,2
>004537FA    jb          00453801
 004537FC    sub         esi,1
>004537FF    jne         00453855
 00453801    mov         eax,ebx
 00453803    call        TValue.GetTypeKind
 00453808    cmp         al,4
>0045380A    je          00453855
 0045380C    mov         eax,dword ptr [ebp+8]
 0045380F    add         eax,0FFFFFFFC
 00453812    call        AllocReg
 00453817    test        eax,eax
>00453819    je          00453855
 0045381B    dec         eax
>0045381C    je          00453828
 0045381E    dec         eax
>0045381F    je          00453837
 00453821    sub         eax,2
>00453824    je          00453846
>00453826    jmp         00453868
 00453828    mov         eax,dword ptr [ebp+8]
 0045382B    lea         edx,[eax-38]
 0045382E    mov         eax,ebx
 00453830    call        TValue.ExtractRawDataNoCopy
>00453835    jmp         00453868
 00453837    mov         eax,dword ptr [ebp+8]
 0045383A    lea         edx,[eax-34]
 0045383D    mov         eax,ebx
 0045383F    call        TValue.ExtractRawDataNoCopy
>00453844    jmp         00453868
 00453846    mov         eax,dword ptr [ebp+8]
 00453849    lea         edx,[eax-30]
 0045384C    mov         eax,ebx
 0045384E    call        TValue.ExtractRawDataNoCopy
>00453853    jmp         00453868
 00453855    mov         eax,dword ptr [ebp+8]
 00453858    sub         dword ptr [eax-40],edi
 0045385B    mov         eax,dword ptr [ebp+8]
 0045385E    mov         edx,dword ptr [eax-40]
 00453861    mov         eax,ebx
 00453863    call        TValue.ExtractRawDataNoCopy
 00453868    pop         edi
 00453869    pop         esi
 0045386A    pop         ebx
 0045386B    pop         ebp
 0045386C    ret
*}
end;

//00453870
procedure PutRefArg(const Loc:Pointer);
begin
{*
 00453870    push        ebp
 00453871    mov         ebp,esp
 00453873    push        ebx
 00453874    mov         ebx,eax
 00453876    mov         eax,dword ptr [ebp+8]
 00453879    add         eax,0FFFFFFFC
 0045387C    call        AllocReg
 00453881    test        eax,eax
>00453883    je          004538AB
 00453885    dec         eax
>00453886    je          00453892
 00453888    dec         eax
>00453889    je          0045389A
 0045388B    sub         eax,2
>0045388E    je          004538A2
>00453890    jmp         004538BA
 00453892    mov         eax,dword ptr [ebp+8]
 00453895    mov         dword ptr [eax-38],ebx
>00453898    jmp         004538BA
 0045389A    mov         eax,dword ptr [ebp+8]
 0045389D    mov         dword ptr [eax-34],ebx
>004538A0    jmp         004538BA
 004538A2    mov         eax,dword ptr [ebp+8]
 004538A5    mov         dword ptr [eax-30],ebx
 004538A8    pop         ebx
 004538A9    pop         ebp
 004538AA    ret
 004538AB    mov         eax,dword ptr [ebp+8]
 004538AE    sub         dword ptr [eax-40],4
 004538B2    mov         eax,dword ptr [ebp+8]
 004538B5    mov         eax,dword ptr [eax-40]
 004538B8    mov         dword ptr [eax],ebx
 004538BA    pop         ebx
 004538BB    pop         ebp
 004538BC    ret
*}
end;

//004538C0
function Invoke(CodeAddress:Pointer; const Args:TArray<System.Rtti.TValue>System.TArray`1<TValue>; CallingConvention:TypInfo.TCallConv; AResultType:TypInfo.PTypeInfo; IsStatic:Boolean; IsConstructor:Boolean):TValue;
begin
{*
 004538C0    push        ebp
 004538C1    mov         ebp,esp
 004538C3    add         esp,0FFFFFFB0
 004538C6    push        ebx
 004538C7    push        esi
 004538C8    push        edi
 004538C9    xor         ebx,ebx
 004538CB    mov         dword ptr [ebp-44],ebx
 004538CE    mov         ebx,ecx
 004538D0    mov         dword ptr [ebp-3C],edx
 004538D3    mov         dword ptr [ebp-48],eax
 004538D6    mov         edi,dword ptr [ebp+14]
 004538D9    xor         eax,eax
 004538DB    push        ebp
 004538DC    push        453BAF
 004538E1    push        dword ptr fs:[eax]
 004538E4    mov         dword ptr fs:[eax],esp
 004538E7    lea         eax,[ebp-38]
 004538EA    xor         ecx,ecx
 004538EC    mov         edx,30
 004538F1    call        @FillChar
 004538F6    push        ebp
 004538F7    mov         eax,ebx
 004538F9    call        00453760
 004538FE    pop         ecx
 004538FF    push        eax
 00453900    lea         eax,[ebp-44]
 00453903    mov         ecx,1
 00453908    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0045390E    call        @DynArraySetLength
 00453913    add         esp,4
 00453916    mov         eax,dword ptr [ebp-44]
 00453919    test        eax,eax
>0045391B    je          00453922
 0045391D    sub         eax,4
 00453920    mov         eax,dword ptr [eax]
 00453922    mov         edx,dword ptr [ebp-44]
 00453925    lea         eax,[edx+eax]
 00453928    mov         dword ptr [ebp-40],eax
 0045392B    test        bl,bl
>0045392D    jne         00453938
 0045392F    mov         dword ptr [ebp-4],7
>00453936    jmp         0045393D
 00453938    xor         eax,eax
 0045393A    mov         dword ptr [ebp-4],eax
 0045393D    cmp         bl,4
>00453940    jne         0045396E
 00453942    test        edi,edi
>00453944    je          0045396E
 00453946    mov         eax,dword ptr [ebp+8]
 00453949    mov         edx,dword ptr ds:[435E20];TValue
 0045394F    call        @FinalizeRecord
 00453954    mov         ecx,eax
 00453956    mov         edx,edi
 00453958    xor         eax,eax
 0045395A    call        TValue.Make
 0045395F    push        ebp
 00453960    mov         eax,dword ptr [ebp+8]
 00453963    call        TValue.GetReferenceToRawData
 00453968    call        PutRefArg
 0045396D    pop         ecx
 0045396E    mov         eax,dword ptr [ebp-3C]
 00453971    test        eax,eax
>00453973    je          0045397A
 00453975    sub         eax,4
 00453978    mov         eax,dword ptr [eax]
 0045397A    mov         dword ptr [ebp-4C],eax
 0045397D    cmp         bl,2
>00453980    jne         0045398B
 00453982    cmp         byte ptr [ebp+10],0
>00453986    jne         0045398B
 00453988    dec         dword ptr [ebp-4C]
 0045398B    mov         eax,ebx
 0045398D    sub         al,1
>0045398F    je          00453997
 00453991    add         al,0FE
 00453993    sub         al,2
>00453995    jae         004539EE
 00453997    mov         esi,dword ptr [ebp-4C]
 0045399A    dec         esi
 0045399B    cmp         esi,0
>0045399E    jl          00453A44
 004539A4    lea         eax,[esi+esi*2]
 004539A7    mov         edx,dword ptr [ebp-3C]
 004539AA    lea         eax,[edx+eax*8]
 004539AD    call        TValue.GetTypeInfo
 004539B2    mov         edx,ebx
 004539B4    xor         ecx,ecx
 004539B6    call        PassByRef
 004539BB    test        al,al
>004539BD    je          004539D6
 004539BF    push        ebp
 004539C0    lea         eax,[esi+esi*2]
 004539C3    mov         edx,dword ptr [ebp-3C]
 004539C6    lea         eax,[edx+eax*8]
 004539C9    call        TValue.GetReferenceToRawData
 004539CE    call        PutRefArg
 004539D3    pop         ecx
>004539D4    jmp         004539E6
 004539D6    push        ebp
 004539D7    lea         eax,[esi+esi*2]
 004539DA    mov         edx,dword ptr [ebp-3C]
 004539DD    lea         eax,[edx+eax*8]
 004539E0    call        PutArg
 004539E5    pop         ecx
 004539E6    dec         esi
 004539E7    cmp         esi,0FFFFFFFF
>004539EA    jne         004539A4
>004539EC    jmp         00453A44
 004539EE    mov         eax,dword ptr [ebp-4C]
 004539F1    dec         eax
 004539F2    test        eax,eax
>004539F4    jl          00453A44
 004539F6    inc         eax
 004539F7    mov         dword ptr [ebp-50],eax
 004539FA    xor         esi,esi
 004539FC    lea         eax,[esi+esi*2]
 004539FF    mov         edx,dword ptr [ebp-3C]
 00453A02    lea         eax,[edx+eax*8]
 00453A05    call        TValue.GetTypeInfo
 00453A0A    mov         edx,ebx
 00453A0C    xor         ecx,ecx
 00453A0E    call        PassByRef
 00453A13    test        al,al
>00453A15    je          00453A2E
 00453A17    push        ebp
 00453A18    lea         eax,[esi+esi*2]
 00453A1B    mov         edx,dword ptr [ebp-3C]
 00453A1E    lea         eax,[edx+eax*8]
 00453A21    call        TValue.GetReferenceToRawData
 00453A26    call        PutRefArg
 00453A2B    pop         ecx
>00453A2C    jmp         00453A3E
 00453A2E    push        ebp
 00453A2F    lea         eax,[esi+esi*2]
 00453A32    mov         edx,dword ptr [ebp-3C]
 00453A35    lea         eax,[edx+eax*8]
 00453A38    call        PutArg
 00453A3D    pop         ecx
 00453A3E    inc         esi
 00453A3F    dec         dword ptr [ebp-50]
>00453A42    jne         004539FC
 00453A44    cmp         bl,4
>00453A47    je          00453A82
 00453A49    mov         ecx,ebx
 00453A4B    movzx       edx,byte ptr [ebp+0C]
 00453A4F    mov         eax,edi
 00453A51    call        UseResultPointer
 00453A56    test        al,al
>00453A58    je          00453A82
 00453A5A    mov         eax,dword ptr [ebp+8]
 00453A5D    mov         edx,dword ptr ds:[435E20];TValue
 00453A63    call        @FinalizeRecord
 00453A68    mov         ecx,eax
 00453A6A    mov         edx,edi
 00453A6C    xor         eax,eax
 00453A6E    call        TValue.Make
 00453A73    push        ebp
 00453A74    mov         eax,dword ptr [ebp+8]
 00453A77    call        TValue.GetReferenceToRawData
 00453A7C    call        PutRefArg
 00453A81    pop         ecx
 00453A82    cmp         bl,2
>00453A85    jne         00453ACC
 00453A87    cmp         byte ptr [ebp+10],0
>00453A8B    jne         00453ACC
 00453A8D    mov         esi,dword ptr [ebp-4C]
 00453A90    lea         esi,[esi+esi*2]
 00453A93    mov         eax,dword ptr [ebp-3C]
 00453A96    lea         eax,[eax+esi*8]
 00453A99    call        TValue.GetTypeInfo
 00453A9E    mov         edx,ebx
 00453AA0    xor         ecx,ecx
 00453AA2    call        PassByRef
 00453AA7    test        al,al
>00453AA9    je          00453ABF
 00453AAB    push        ebp
 00453AAC    mov         eax,dword ptr [ebp-3C]
 00453AAF    lea         eax,[eax+esi*8]
 00453AB2    call        TValue.GetReferenceToRawData
 00453AB7    call        PutRefArg
 00453ABC    pop         ecx
>00453ABD    jmp         00453ACC
 00453ABF    push        ebp
 00453AC0    mov         eax,dword ptr [ebp-3C]
 00453AC3    lea         eax,[eax+esi*8]
 00453AC6    call        PutArg
 00453ACB    pop         ecx
 00453ACC    cmp         bl,1
>00453ACF    jne         00453AD7
 00453AD1    mov         byte ptr [ebp-18],1
>00453AD5    jmp         00453ADB
 00453AD7    mov         byte ptr [ebp-18],0
 00453ADB    mov         eax,dword ptr [ebp-40]
 00453ADE    mov         dword ptr [ebp-14],eax
 00453AE1    mov         eax,dword ptr [ebp-44]
 00453AE4    test        eax,eax
>00453AE6    je          00453AED
 00453AE8    sub         eax,4
 00453AEB    mov         eax,dword ptr [eax]
 00453AED    mov         edx,dword ptr [ebp-44]
 00453AF0    lea         eax,[edx+eax]
 00453AF3    sub         eax,dword ptr [ebp-40]
 00453AF6    mov         dword ptr [ebp-10],eax
 00453AF9    test        edi,edi
>00453AFB    je          00453B02
 00453AFD    cmp         byte ptr [edi],4
>00453B00    je          00453B08
 00453B02    mov         byte ptr [ebp-17],0FF
>00453B06    jmp         00453B15
 00453B08    mov         eax,edi
 00453B0A    call        GetTypeData
 00453B0F    movzx       eax,byte ptr [eax]
 00453B12    mov         byte ptr [ebp-17],al
 00453B15    lea         edx,[ebp-38]
 00453B18    mov         eax,dword ptr [ebp-48]
 00453B1B    call        004536DC
 00453B20    cmp         bl,4
>00453B23    jne         00453B33
 00453B25    cmp         dword ptr [ebp-38],0
>00453B29    jge         00453B33
 00453B2B    mov         eax,dword ptr [ebp-38]
 00453B2E    call        004522F0
 00453B33    test        edi,edi
>00453B35    jne         00453B41
 00453B37    mov         eax,dword ptr [ebp+8]
 00453B3A    call        TValue.GetEmpty
>00453B3F    jmp         00453B93
 00453B41    cmp         bl,4
>00453B44    je          00453B93
 00453B46    mov         ecx,ebx
 00453B48    movzx       edx,byte ptr [ebp+0C]
 00453B4C    mov         eax,edi
 00453B4E    call        UseResultPointer
 00453B53    test        al,al
>00453B55    jne         00453B93
 00453B57    cmp         byte ptr [ebp-17],0FF
>00453B5B    je          00453B79
 00453B5D    mov         eax,dword ptr [ebp+8]
 00453B60    mov         edx,dword ptr ds:[435E20];TValue
 00453B66    call        @FinalizeRecord
 00453B6B    mov         ecx,eax
 00453B6D    lea         eax,[ebp-28]
 00453B70    mov         edx,edi
 00453B72    call        0043FFA4
>00453B77    jmp         00453B93
 00453B79    mov         eax,dword ptr [ebp+8]
 00453B7C    mov         edx,dword ptr ds:[435E20];TValue
 00453B82    call        @FinalizeRecord
 00453B87    mov         ecx,eax
 00453B89    lea         eax,[ebp-38]
 00453B8C    mov         edx,edi
 00453B8E    call        TValue.Make
 00453B93    xor         eax,eax
 00453B95    pop         edx
 00453B96    pop         ecx
 00453B97    pop         ecx
 00453B98    mov         dword ptr fs:[eax],edx
 00453B9B    push        453BB6
 00453BA0    lea         eax,[ebp-44]
 00453BA3    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00453BA9    call        @DynArrayClear
 00453BAE    ret
>00453BAF    jmp         @HandleFinally
>00453BB4    jmp         00453BA0
 00453BB6    pop         edi
 00453BB7    pop         esi
 00453BB8    pop         ebx
 00453BB9    mov         esp,ebp
 00453BBB    pop         ebp
 00453BBC    ret         10
*}
end;

//00453BC0
destructor TRttiMethod.Destroy();
begin
{*
 00453BC0    push        ebx
 00453BC1    push        esi
 00453BC2    call        @BeforeDestruction
 00453BC7    mov         ebx,edx
 00453BC9    mov         esi,eax
 00453BCB    mov         eax,dword ptr [esi+18]
 00453BCE    test        eax,eax
>00453BD0    je          00453BD7
 00453BD2    call        TObject.Free
 00453BD7    mov         dl,0FC
 00453BD9    and         dl,bl
 00453BDB    mov         eax,esi
 00453BDD    call        TRttiObject.Destroy
 00453BE2    test        bl,bl
>00453BE4    jle         00453BED
 00453BE6    mov         eax,esi
 00453BE8    call        @ClassDestroy
 00453BED    pop         esi
 00453BEE    pop         ebx
 00453BEF    ret
*}
end;

//00453BF0
{*function sub_00453BF0:?;
begin
 00453BF0    xor         eax,eax
 00453BF2    ret
end;*}

//00453BF4
{*function sub_00453BF4:?;
begin
 00453BF4    xor         eax,eax
 00453BF6    ret
end;*}

//00453BF8
{*function sub_00453BF8:?;
begin
 00453BF8    xor         eax,eax
 00453BFA    ret
end;*}

//00453BFC
function TRttiMethod.GetIsClassMethod:Boolean;
begin
{*
 00453BFC    push        ebx
 00453BFD    mov         ebx,eax
 00453BFF    mov         eax,ebx
 00453C01    mov         edx,dword ptr [eax]
 00453C03    call        dword ptr [edx+20]
 00453C06    test        al,al
>00453C08    je          00453C17
 00453C0A    mov         eax,ebx
 00453C0C    mov         edx,dword ptr [eax]
 00453C0E    call        dword ptr [edx+10]
 00453C11    add         al,0FE
 00453C13    sub         al,4
>00453C15    jb          00453C1B
 00453C17    xor         eax,eax
 00453C19    pop         ebx
 00453C1A    ret
 00453C1B    mov         al,1
 00453C1D    pop         ebx
 00453C1E    ret
*}
end;

//00453C20
function TRttiMethod.GetIsConstructor:Boolean;
begin
{*
 00453C20    push        ebx
 00453C21    mov         ebx,eax
 00453C23    mov         eax,ebx
 00453C25    mov         edx,dword ptr [eax]
 00453C27    call        dword ptr [edx+20]
 00453C2A    test        al,al
>00453C2C    je          00453C39
 00453C2E    mov         eax,ebx
 00453C30    mov         edx,dword ptr [eax]
 00453C32    call        dword ptr [edx+10]
 00453C35    cmp         al,2
>00453C37    je          00453C3D
 00453C39    xor         eax,eax
 00453C3B    pop         ebx
 00453C3C    ret
 00453C3D    mov         al,1
 00453C3F    pop         ebx
 00453C40    ret
*}
end;

//00453C44
function TRttiMethod.GetIsDestructor:Boolean;
begin
{*
 00453C44    push        ebx
 00453C45    mov         ebx,eax
 00453C47    mov         eax,ebx
 00453C49    mov         edx,dword ptr [eax]
 00453C4B    call        dword ptr [edx+20]
 00453C4E    test        al,al
>00453C50    je          00453C5D
 00453C52    mov         eax,ebx
 00453C54    mov         edx,dword ptr [eax]
 00453C56    call        dword ptr [edx+10]
 00453C59    cmp         al,3
>00453C5B    je          00453C61
 00453C5D    xor         eax,eax
 00453C5F    pop         ebx
 00453C60    ret
 00453C61    mov         al,1
 00453C63    pop         ebx
 00453C64    ret
*}
end;

//00453C68
{*function sub_00453C68:?;
begin
 00453C68    xor         eax,eax
 00453C6A    ret
end;*}

//00453C6C
{*function sub_00453C6C:?;
begin
 00453C6C    xor         eax,eax
 00453C6E    ret
end;*}

//00453C70
function TRttiMethod.Invoke(Instance:TObject; Args:TValue):TValue;
begin
{*
 00453C70    push        ebp
 00453C71    mov         ebp,esp
 00453C73    push        0
 00453C75    push        0
 00453C77    push        0
 00453C79    push        0
 00453C7B    push        0
 00453C7D    push        0
 00453C7F    push        0
 00453C81    push        ebx
 00453C82    push        esi
 00453C83    mov         dword ptr [ebp-4],ecx
 00453C86    mov         esi,edx
 00453C88    mov         ebx,eax
 00453C8A    xor         eax,eax
 00453C8C    push        ebp
 00453C8D    push        453CD3
 00453C92    push        dword ptr fs:[eax]
 00453C95    mov         dword ptr fs:[eax],esp
 00453C98    mov         eax,dword ptr [ebp+0C]
 00453C9B    push        eax
 00453C9C    mov         eax,dword ptr [ebp+8]
 00453C9F    push        eax
 00453CA0    lea         edx,[ebp-1C]
 00453CA3    mov         eax,esi
 00453CA5    call        0043F970
 00453CAA    lea         edx,[ebp-1C]
 00453CAD    mov         ecx,dword ptr [ebp-4]
 00453CB0    mov         eax,ebx
 00453CB2    mov         ebx,dword ptr [eax]
 00453CB4    call        dword ptr [ebx+34]
 00453CB7    xor         eax,eax
 00453CB9    pop         edx
 00453CBA    pop         ecx
 00453CBB    pop         ecx
 00453CBC    mov         dword ptr fs:[eax],edx
 00453CBF    push        453CDA
 00453CC4    lea         eax,[ebp-1C]
 00453CC7    mov         edx,dword ptr ds:[435E20];TValue
 00453CCD    call        @FinalizeRecord
 00453CD2    ret
>00453CD3    jmp         @HandleFinally
>00453CD8    jmp         00453CC4
 00453CDA    pop         esi
 00453CDB    pop         ebx
 00453CDC    mov         esp,ebp
 00453CDE    pop         ebp
 00453CDF    ret         8
*}
end;

//00453CE4
function TRttiMethod.Invoke(Instance:TClass; Args:TValue):TValue;
begin
{*
 00453CE4    push        ebp
 00453CE5    mov         ebp,esp
 00453CE7    push        0
 00453CE9    push        0
 00453CEB    push        0
 00453CED    push        0
 00453CEF    push        0
 00453CF1    push        0
 00453CF3    push        0
 00453CF5    push        ebx
 00453CF6    push        esi
 00453CF7    mov         dword ptr [ebp-4],ecx
 00453CFA    mov         esi,edx
 00453CFC    mov         ebx,eax
 00453CFE    xor         eax,eax
 00453D00    push        ebp
 00453D01    push        453D47
 00453D06    push        dword ptr fs:[eax]
 00453D09    mov         dword ptr fs:[eax],esp
 00453D0C    mov         eax,dword ptr [ebp+0C]
 00453D0F    push        eax
 00453D10    mov         eax,dword ptr [ebp+8]
 00453D13    push        eax
 00453D14    lea         edx,[ebp-1C]
 00453D17    mov         eax,esi
 00453D19    call        TValue.&op_Implicit
 00453D1E    lea         edx,[ebp-1C]
 00453D21    mov         ecx,dword ptr [ebp-4]
 00453D24    mov         eax,ebx
 00453D26    mov         ebx,dword ptr [eax]
 00453D28    call        dword ptr [ebx+34]
 00453D2B    xor         eax,eax
 00453D2D    pop         edx
 00453D2E    pop         ecx
 00453D2F    pop         ecx
 00453D30    mov         dword ptr fs:[eax],edx
 00453D33    push        453D4E
 00453D38    lea         eax,[ebp-1C]
 00453D3B    mov         edx,dword ptr ds:[435E20];TValue
 00453D41    call        @FinalizeRecord
 00453D46    ret
>00453D47    jmp         @HandleFinally
>00453D4C    jmp         00453D38
 00453D4E    pop         esi
 00453D4F    pop         ebx
 00453D50    mov         esp,ebp
 00453D52    pop         ebp
 00453D53    ret         8
*}
end;

//00453D9C
function TRttiMethod.ToString:string;
begin
{*
 00453D9C    push        ebp
 00453D9D    mov         ebp,esp
 00453D9F    mov         ecx,4
 00453DA4    push        0
 00453DA6    push        0
 00453DA8    dec         ecx
>00453DA9    jne         00453DA4
 00453DAB    push        ecx
 00453DAC    push        ebx
 00453DAD    push        esi
 00453DAE    push        edi
 00453DAF    mov         ebx,edx
 00453DB1    mov         dword ptr [ebp-8],eax
 00453DB4    xor         eax,eax
 00453DB6    push        ebp
 00453DB7    push        453FB0
 00453DBC    push        dword ptr fs:[eax]
 00453DBF    mov         dword ptr fs:[eax],esp
 00453DC2    mov         eax,ebx
 00453DC4    call        @UStrClr
 00453DC9    mov         eax,dword ptr [ebp-8]
 00453DCC    mov         edx,dword ptr [eax]
 00453DCE    call        dword ptr [edx+20]
 00453DD1    test        al,al
>00453DD3    jne         00453DF4
 00453DD5    lea         edx,[ebp-0C]
 00453DD8    mov         eax,dword ptr [ebp-8]
 00453DDB    mov         ecx,dword ptr [eax]
 00453DDD    call        dword ptr [ecx+8]
 00453DE0    mov         ecx,dword ptr [ebp-0C]
 00453DE3    mov         eax,ebx
 00453DE5    mov         edx,453FCC;'(basic) procedure '
 00453DEA    call        @UStrCat3
>00453DEF    jmp         00453F87
 00453DF4    mov         eax,dword ptr [ebp-8]
 00453DF7    mov         edx,dword ptr [eax]
 00453DF9    call        dword ptr [edx+2C]
 00453DFC    test        al,al
>00453DFE    je          00453E0C
 00453E00    mov         eax,ebx
 00453E02    mov         edx,454000;'class '
 00453E07    call        @UStrCat
 00453E0C    mov         eax,dword ptr [ebp-8]
 00453E0F    call        TRttiMethod.GetIsConstructor
 00453E14    test        al,al
>00453E16    je          00453E3E
 00453E18    push        dword ptr [ebx]
 00453E1A    push        45401C;'constructor '
 00453E1F    lea         edx,[ebp-10]
 00453E22    mov         eax,dword ptr [ebp-8]
 00453E25    mov         ecx,dword ptr [eax]
 00453E27    call        dword ptr [ecx+8]
 00453E2A    push        dword ptr [ebp-10]
 00453E2D    mov         eax,ebx
 00453E2F    mov         edx,3
 00453E34    call        @UStrCatN
>00453E39    jmp         00453ECF
 00453E3E    mov         eax,dword ptr [ebp-8]
 00453E41    call        TRttiMethod.GetIsDestructor
 00453E46    test        al,al
>00453E48    je          00453E6D
 00453E4A    push        dword ptr [ebx]
 00453E4C    push        454044;'destructor '
 00453E51    lea         edx,[ebp-14]
 00453E54    mov         eax,dword ptr [ebp-8]
 00453E57    mov         ecx,dword ptr [eax]
 00453E59    call        dword ptr [ecx+8]
 00453E5C    push        dword ptr [ebp-14]
 00453E5F    mov         eax,ebx
 00453E61    mov         edx,3
 00453E66    call        @UStrCatN
>00453E6B    jmp         00453ECF
 00453E6D    mov         eax,dword ptr [ebp-8]
 00453E70    mov         edx,dword ptr [eax]
 00453E72    call        dword ptr [edx+10]
 00453E75    cmp         al,8
>00453E77    jne         00453E9C
 00453E79    push        dword ptr [ebx]
 00453E7B    push        454068;'operator '
 00453E80    lea         edx,[ebp-18]
 00453E83    mov         eax,dword ptr [ebp-8]
 00453E86    mov         ecx,dword ptr [eax]
 00453E88    call        dword ptr [ecx+8]
 00453E8B    push        dword ptr [ebp-18]
 00453E8E    mov         eax,ebx
 00453E90    mov         edx,3
 00453E95    call        @UStrCatN
>00453E9A    jmp         00453ECF
 00453E9C    push        dword ptr [ebx]
 00453E9E    mov         eax,dword ptr [ebp-8]
 00453EA1    mov         edx,dword ptr [eax]
 00453EA3    call        dword ptr [edx+18]
 00453EA6    test        eax,eax
 00453EA8    sete        al
 00453EAB    and         eax,7F
 00453EAE    push        dword ptr [eax*4+7A05A4];^'function '
 00453EB5    lea         edx,[ebp-1C]
 00453EB8    mov         eax,dword ptr [ebp-8]
 00453EBB    mov         ecx,dword ptr [eax]
 00453EBD    call        dword ptr [ecx+8]
 00453EC0    push        dword ptr [ebp-1C]
 00453EC3    mov         eax,ebx
 00453EC5    mov         edx,3
 00453ECA    call        @UStrCatN
 00453ECF    lea         edx,[ebp-4]
 00453ED2    mov         eax,dword ptr [ebp-8]
 00453ED5    mov         ecx,dword ptr [eax]
 00453ED7    call        dword ptr [ecx+38]
 00453EDA    mov         esi,dword ptr [ebp-4]
 00453EDD    mov         eax,esi;{@DynArrayLength}
 00453EDF    test        eax,eax
>00453EE1    je          00453EE8
 00453EE3    sub         eax,4
 00453EE6    mov         eax,dword ptr [eax]
 00453EE8    test        eax,eax
>00453EEA    jle         00453EF8
 00453EEC    mov         eax,ebx
 00453EEE    mov         edx,454088;'('
 00453EF3    call        @UStrCat
 00453EF8    mov         eax,esi
 00453EFA    test        eax,eax
>00453EFC    je          00453F03
 00453EFE    sub         eax,4
 00453F01    mov         eax,dword ptr [eax]
 00453F03    mov         edi,eax
 00453F05    dec         edi
 00453F06    test        edi,edi
>00453F08    jl          00453F39
 00453F0A    inc         edi
 00453F0B    xor         esi,esi
 00453F0D    test        esi,esi
>00453F0F    jle         00453F1D
 00453F11    mov         eax,ebx
 00453F13    mov         edx,454098;'; '
 00453F18    call        @UStrCat
 00453F1D    lea         edx,[ebp-20]
 00453F20    mov         eax,dword ptr [ebp-4]
 00453F23    mov         eax,dword ptr [eax+esi*4]
 00453F26    mov         ecx,dword ptr [eax]
 00453F28    call        dword ptr [ecx-24]
 00453F2B    mov         edx,dword ptr [ebp-20]
 00453F2E    mov         eax,ebx
 00453F30    call        @UStrCat
 00453F35    inc         esi
 00453F36    dec         edi
>00453F37    jne         00453F0D
 00453F39    mov         eax,dword ptr [ebp-4]
 00453F3C    test        eax,eax
>00453F3E    je          00453F45
 00453F40    sub         eax,4
 00453F43    mov         eax,dword ptr [eax];{@UStrCat}
 00453F45    test        eax,eax
>00453F47    jle         00453F55
 00453F49    mov         eax,ebx
 00453F4B    mov         edx,4540AC;')'
 00453F50    call        @UStrCat
 00453F55    mov         eax,dword ptr [ebp-8]
 00453F58    mov         edx,dword ptr [eax]
 00453F5A    call        dword ptr [edx+18]
 00453F5D    test        eax,eax
>00453F5F    je          00453F87
 00453F61    push        dword ptr [ebx]
 00453F63    push        4540BC;': '
 00453F68    mov         eax,dword ptr [ebp-8]
 00453F6B    mov         edx,dword ptr [eax]
 00453F6D    call        dword ptr [edx+18]
 00453F70    lea         edx,[ebp-24]
 00453F73    mov         ecx,dword ptr [eax]
 00453F75    call        dword ptr [ecx+8]
 00453F78    push        dword ptr [ebp-24]
 00453F7B    mov         eax,ebx
 00453F7D    mov         edx,3
 00453F82    call        @UStrCatN
 00453F87    xor         eax,eax
 00453F89    pop         edx
 00453F8A    pop         ecx
 00453F8B    pop         ecx
 00453F8C    mov         dword ptr fs:[eax],edx
 00453F8F    push        453FB7
 00453F94    lea         eax,[ebp-24]
 00453F97    mov         edx,7;{TArray<System.Rtti.TRttiParameter>}
 00453F9C    call        @UStrArrayClr
 00453FA1    lea         eax,[ebp-4]
 00453FA4    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00453FAA    call        @DynArrayClear
 00453FAF    ret
>00453FB0    jmp         @HandleFinally
>00453FB5    jmp         00453F94
 00453FB7    pop         edi
 00453FB8    pop         esi
 00453FB9    pop         ebx
 00453FBA    mov         esp,ebp
 00453FBC    pop         ebp
 00453FBD    ret
*}
end;

//004540C4
function TRttiParameter.ToString:string;
begin
{*
 004540C4    push        ebp
 004540C5    mov         ebp,esp
 004540C7    push        0
 004540C9    push        0
 004540CB    push        ebx
 004540CC    push        esi
 004540CD    mov         esi,edx
 004540CF    mov         ebx,eax
 004540D1    xor         eax,eax
 004540D3    push        ebp
 004540D4    push        454190
 004540D9    push        dword ptr fs:[eax]
 004540DC    mov         dword ptr fs:[eax],esp
 004540DF    mov         eax,ebx
 004540E1    mov         edx,dword ptr [eax]
 004540E3    call        dword ptr [edx+0C]
 004540E6    test        al,20
>004540E8    je          004540F8
 004540EA    mov         eax,esi
 004540EC    mov         edx,4541AC;'out '
 004540F1    call        @UStrAsg
>004540F6    jmp         00454131
 004540F8    mov         eax,ebx
 004540FA    mov         edx,dword ptr [eax]
 004540FC    call        dword ptr [edx+0C]
 004540FF    test        al,2
>00454101    je          00454111
 00454103    mov         eax,esi
 00454105    mov         edx,4541C4;'const '
 0045410A    call        @UStrAsg
>0045410F    jmp         00454131
 00454111    mov         eax,ebx
 00454113    mov         edx,dword ptr [eax]
 00454115    call        dword ptr [edx+0C]
 00454118    test        al,1
>0045411A    je          0045412A
 0045411C    mov         eax,esi
 0045411E    mov         edx,4541E0;'var '
 00454123    call        @UStrAsg
>00454128    jmp         00454131
 0045412A    mov         eax,esi
 0045412C    call        @UStrClr
 00454131    lea         edx,[ebp-4]
 00454134    mov         eax,ebx
 00454136    mov         ecx,dword ptr [eax]
 00454138    call        dword ptr [ecx+8]
 0045413B    mov         edx,dword ptr [ebp-4]
 0045413E    mov         eax,esi
 00454140    call        @UStrCat
 00454145    mov         eax,ebx
 00454147    mov         edx,dword ptr [eax]
 00454149    call        dword ptr [edx+10]
 0045414C    test        eax,eax
>0045414E    je          00454175
 00454150    push        dword ptr [esi]
 00454152    push        4541F8;': '
 00454157    mov         eax,ebx
 00454159    mov         edx,dword ptr [eax]
 0045415B    call        dword ptr [edx+10]
 0045415E    lea         edx,[ebp-8]
 00454161    mov         ecx,dword ptr [eax]
 00454163    call        dword ptr [ecx-24]
 00454166    push        dword ptr [ebp-8]
 00454169    mov         eax,esi
 0045416B    mov         edx,3
 00454170    call        @UStrCatN
 00454175    xor         eax,eax
 00454177    pop         edx
 00454178    pop         ecx
 00454179    pop         ecx
 0045417A    mov         dword ptr fs:[eax],edx
 0045417D    push        454197
 00454182    lea         eax,[ebp-8]
 00454185    mov         edx,2
 0045418A    call        @UStrArrayClr
 0045418F    ret
>00454190    jmp         @HandleFinally
>00454195    jmp         00454182
 00454197    pop         esi
 00454198    pop         ebx
 00454199    pop         ecx
 0045419A    pop         ecx
 0045419B    pop         ebp
 0045419C    ret
*}
end;

//00454200
constructor TRttiInstMethParameter.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00454200    push        ebp
 00454201    mov         ebp,esp
 00454203    push        0
 00454205    push        0
 00454207    push        0
 00454209    push        ebx
 0045420A    push        esi
 0045420B    test        dl,dl
>0045420D    je          00454217
 0045420F    add         esp,0FFFFFFF0
 00454212    call        @ClassCreate
 00454217    mov         byte ptr [ebp-1],dl
 0045421A    mov         ebx,eax
 0045421C    mov         esi,dword ptr [ebp+8]
 0045421F    xor         eax,eax
 00454221    push        ebp
 00454222    push        4542A7
 00454227    push        dword ptr fs:[eax]
 0045422A    mov         dword ptr fs:[eax],esp
 0045422D    mov         eax,dword ptr [ebp+0C]
 00454230    push        eax
 00454231    push        esi
 00454232    xor         edx,edx
 00454234    mov         eax,ebx
 00454236    call        TRttiObject.Create
 0045423B    mov         eax,esi
 0045423D    call        ReadI8
 00454242    mov         byte ptr [ebx+1C],al;TRttiInstMethParameter.FFlags:TParamFlags
 00454245    mov         eax,esi
 00454247    call        ReadPointer
 0045424C    call        0043EB94
 00454251    mov         dword ptr [ebx+20],eax;TRttiInstMethParameter.FParamType:PTypeInfo
 00454254    mov         eax,esi
 00454256    call        ReadI16
 0045425B    mov         word ptr [ebx+24],ax;TRttiInstMethParameter.FLocation:SmallInt
 0045425F    lea         edx,[ebp-8]
 00454262    mov         eax,esi
 00454264    call        ReadShortString
 00454269    mov         edx,dword ptr [ebp-8]
 0045426C    lea         eax,[ebx+18];TRttiInstMethParameter.FName:string
 0045426F    call        @UStrAsg
 00454274    lea         edx,[ebp-0C]
 00454277    mov         eax,esi
 00454279    call        LazyLoadAttributes
 0045427E    mov         edx,dword ptr [ebp-0C]
 00454281    lea         eax,[ebx+14];TRttiInstMethParameter.FAttributeGetter:TFunc<System.TArray<System.TCustomA...
 00454284    call        @IntfCopy
 00454289    xor         eax,eax
 0045428B    pop         edx
 0045428C    pop         ecx
 0045428D    pop         ecx
 0045428E    mov         dword ptr fs:[eax],edx
 00454291    push        4542AE
 00454296    lea         eax,[ebp-0C]
 00454299    call        @IntfClear
 0045429E    lea         eax,[ebp-8]
 004542A1    call        @UStrClr
 004542A6    ret
>004542A7    jmp         @HandleFinally
>004542AC    jmp         00454296
 004542AE    mov         eax,ebx
 004542B0    cmp         byte ptr [ebp-1],0
>004542B4    je          004542C5
 004542B6    call        @AfterConstruction
 004542BB    pop         dword ptr fs:[0]
 004542C2    add         esp,0C
 004542C5    mov         eax,ebx
 004542C7    pop         esi
 004542C8    pop         ebx
 004542C9    mov         esp,ebp
 004542CB    pop         ebp
 004542CC    ret         8
*}
end;

//004542D0
function TRttiInstMethParameter.GetName:UnicodeString;
begin
{*
 004542D0    push        ebx
 004542D1    push        esi
 004542D2    mov         esi,edx
 004542D4    mov         ebx,eax
 004542D6    mov         eax,esi
 004542D8    mov         edx,dword ptr [ebx+18]
 004542DB    call        @UStrAsg
 004542E0    pop         esi
 004542E1    pop         ebx
 004542E2    ret
*}
end;

//004542E4
{*function TRttiInstMethParameter.GetFlags:?;
begin
 004542E4    movzx       edx,byte ptr [eax+1C];TRttiInstMethParameter.FFlags:TParamFlags
 004542E8    mov         eax,edx
 004542EA    ret
end;*}

//004542EC
function TRttiInstMethParameter.GetParamType:TRttiType;
begin
{*
 004542EC    mov         edx,dword ptr [eax+20]
 004542EF    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 004542F4    call        TRttiPool.GetType
 004542F9    ret
*}
end;

//004542FC
function TRttiMember.GetParent:TRttiType;
begin
{*
 004542FC    mov         eax,dword ptr [eax+10]
 004542FF    ret
*}
end;

//00454300
{*function sub_00454300:?;
begin
 00454300    mov         al,2
 00454302    ret
end;*}

//00454304
{*function sub_00454304:?;
begin
 00454304    xor         eax,eax
 00454306    ret
end;*}

//00454308
{*function sub_00454308:?;
begin
 00454308    mov         eax,80000000
 0045430D    ret
end;*}

//00454310
{*procedure TRttiField.GetValue(Instance:Pointer; ?:?);
begin
 00454310    push        ebx
 00454311    push        esi
 00454312    push        edi
 00454313    push        ebp
 00454314    mov         ebp,ecx
 00454316    mov         edi,edx
 00454318    mov         ebx,eax
 0045431A    mov         eax,ebx
 0045431C    mov         edx,dword ptr [eax]
 0045431E    call        dword ptr [edx+10];TRttiField.sub_00454304
 00454321    mov         esi,eax
 00454323    test        esi,esi
>00454325    jne         00454331
 00454327    call        InsufficientRtti
 0045432C    call        @RaiseExcept
 00454331    mov         eax,ebx
 00454333    mov         edx,dword ptr [eax]
 00454335    call        dword ptr [edx+14];TRttiField.sub_00454308
 00454338    add         eax,edi
 0045433A    push        eax
 0045433B    mov         eax,esi
 0045433D    call        TRttiType.GetHandle
 00454342    push        eax
 00454343    mov         eax,ebp
 00454345    mov         edx,dword ptr ds:[435E20];TValue
 0045434B    call        @FinalizeRecord
 00454350    mov         ecx,eax
 00454352    pop         edx
 00454353    pop         eax
 00454354    call        TValue.Make
 00454359    pop         ebp
 0045435A    pop         edi
 0045435B    pop         esi
 0045435C    pop         ebx
 0045435D    ret
end;*}

//00454360
procedure TRttiField.SetValue(Instance:Pointer; AValue:TValue);
begin
{*
 00454360    push        ebp
 00454361    mov         ebp,esp
 00454363    add         esp,0FFFFFFE4
 00454366    push        ebx
 00454367    push        esi
 00454368    push        edi
 00454369    mov         dword ptr [ebp-1C],ecx
 0045436C    mov         edi,edx
 0045436E    mov         ebx,eax
 00454370    lea         eax,[ebp-18]
 00454373    mov         edx,dword ptr ds:[435E20];TValue
 00454379    call        @AddRefRecord
 0045437E    xor         eax,eax
 00454380    push        ebp
 00454381    push        4543E8
 00454386    push        dword ptr fs:[eax]
 00454389    mov         dword ptr fs:[eax],esp
 0045438C    mov         eax,ebx
 0045438E    mov         edx,dword ptr [eax]
 00454390    call        dword ptr [edx+10];TRttiField.sub_00454304
 00454393    mov         esi,eax
 00454395    test        esi,esi
>00454397    jne         004543A3
 00454399    call        InsufficientRtti
 0045439E    call        @RaiseExcept
 004543A3    mov         eax,esi
 004543A5    call        TRttiType.GetHandle
 004543AA    mov         edx,eax
 004543AC    lea         ecx,[ebp-18]
 004543AF    mov         eax,dword ptr [ebp-1C]
 004543B2    call        TValue.Cast
 004543B7    lea         eax,[ebp-18]
 004543BA    push        eax
 004543BB    mov         eax,ebx
 004543BD    mov         edx,dword ptr [eax]
 004543BF    call        dword ptr [edx+14];TRttiField.sub_00454308
 004543C2    mov         edx,eax
 004543C4    add         edx,edi
 004543C6    pop         eax
 004543C7    call        TValue.ExtractRawData
 004543CC    xor         eax,eax
 004543CE    pop         edx
 004543CF    pop         ecx
 004543D0    pop         ecx
 004543D1    mov         dword ptr fs:[eax],edx
 004543D4    push        4543EF
 004543D9    lea         eax,[ebp-18]
 004543DC    mov         edx,dword ptr ds:[435E20];TValue
 004543E2    call        @FinalizeRecord
 004543E7    ret
>004543E8    jmp         @HandleFinally
>004543ED    jmp         004543D9
 004543EF    pop         edi
 004543F0    pop         esi
 004543F1    pop         ebx
 004543F2    mov         esp,ebp
 004543F4    pop         ebp
 004543F5    ret
*}
end;

//004543F8
function TRttiField.ToString:string;
begin
{*
 004543F8    push        ebp
 004543F9    mov         ebp,esp
 004543FB    xor         ecx,ecx
 004543FD    push        ecx
 004543FE    push        ecx
 004543FF    push        ecx
 00454400    push        ecx
 00454401    push        ecx
 00454402    push        ebx
 00454403    push        esi
 00454404    push        edi
 00454405    mov         edi,edx
 00454407    mov         ebx,eax
 00454409    xor         eax,eax
 0045440B    push        ebp
 0045440C    push        4544BD
 00454411    push        dword ptr fs:[eax]
 00454414    mov         dword ptr fs:[eax],esp
 00454417    mov         eax,ebx
 00454419    mov         edx,dword ptr [eax]
 0045441B    call        dword ptr [edx+10]
 0045441E    mov         esi,eax
 00454420    test        esi,esi
>00454422    jne         0045445B
 00454424    lea         edx,[ebp-4]
 00454427    mov         eax,ebx
 00454429    mov         ecx,dword ptr [eax]
 0045442B    call        dword ptr [ecx+8]
 0045442E    push        dword ptr [ebp-4]
 00454431    push        4544D8;' @ '
 00454436    mov         eax,ebx
 00454438    mov         edx,dword ptr [eax]
 0045443A    call        dword ptr [edx+14]
 0045443D    lea         ecx,[ebp-8]
 00454440    mov         edx,2
 00454445    call        IntToHex
 0045444A    push        dword ptr [ebp-8]
 0045444D    mov         eax,edi
 0045444F    mov         edx,3
 00454454    call        @UStrCatN
>00454459    jmp         004544A2
 0045445B    lea         edx,[ebp-0C]
 0045445E    mov         eax,ebx
 00454460    mov         ecx,dword ptr [eax]
 00454462    call        dword ptr [ecx+8]
 00454465    push        dword ptr [ebp-0C]
 00454468    push        4544EC;': '
 0045446D    lea         edx,[ebp-10]
 00454470    mov         eax,esi
 00454472    mov         ecx,dword ptr [eax]
 00454474    call        dword ptr [ecx+8]
 00454477    push        dword ptr [ebp-10]
 0045447A    push        4544D8;' @ '
 0045447F    mov         eax,ebx
 00454481    mov         edx,dword ptr [eax]
 00454483    call        dword ptr [edx+14]
 00454486    lea         ecx,[ebp-14]
 00454489    mov         edx,2
 0045448E    call        IntToHex
 00454493    push        dword ptr [ebp-14]
 00454496    mov         eax,edi
 00454498    mov         edx,5
 0045449D    call        @UStrCatN
 004544A2    xor         eax,eax
 004544A4    pop         edx
 004544A5    pop         ecx
 004544A6    pop         ecx
 004544A7    mov         dword ptr fs:[eax],edx
 004544AA    push        4544C4
 004544AF    lea         eax,[ebp-14]
 004544B2    mov         edx,5
 004544B7    call        @UStrArrayClr
 004544BC    ret
>004544BD    jmp         @HandleFinally
>004544C2    jmp         004544AF
 004544C4    pop         edi
 004544C5    pop         esi
 004544C6    pop         ebx
 004544C7    mov         esp,ebp
 004544C9    pop         ebp
 004544CA    ret
*}
end;

//004544F4
constructor TRttiInstancePropertyClassic.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 004544F4    push        ebp
 004544F5    mov         ebp,esp
 004544F7    push        ecx
 004544F8    push        ebx
 004544F9    push        esi
 004544FA    test        dl,dl
>004544FC    je          00454506
 004544FE    add         esp,0FFFFFFF0
 00454501    call        @ClassCreate
 00454506    mov         byte ptr [ebp-1],dl
 00454509    mov         ebx,eax
 0045450B    mov         esi,dword ptr [ebp+8]
 0045450E    mov         eax,dword ptr [ebp+0C]
 00454511    push        eax
 00454512    push        esi
 00454513    xor         edx,edx
 00454515    mov         eax,ebx
 00454517    call        TRttiObject.Create
 0045451C    mov         eax,ebx
 0045451E    call        TRttiInstancePropertyClassic.GetHandle
 00454523    call        TPropInfo.Tail
 00454528    mov         dword ptr [esi],eax
 0045452A    mov         eax,ebx
 0045452C    cmp         byte ptr [ebp-1],0
>00454530    je          00454541
 00454532    call        @AfterConstruction
 00454537    pop         dword ptr fs:[0]
 0045453E    add         esp,0C
 00454541    mov         eax,ebx
 00454543    pop         esi
 00454544    pop         ebx
 00454545    pop         ecx
 00454546    pop         ebp
 00454547    ret         8
*}
end;

//0045454C
{*procedure TRttiInstanceFieldClassic.GetName(?:?);
begin
 0045454C    push        ebx
 0045454D    push        esi
 0045454E    push        ecx
 0045454F    mov         esi,edx
 00454551    mov         ebx,eax
 00454553    mov         eax,ebx
 00454555    call        TRttiInstancePropertyClassic.GetHandle
 0045455A    call        00467FEC
 0045455F    mov         dword ptr [esp],eax
 00454562    mov         eax,esp
 00454564    mov         edx,esi
 00454566    call        TTypeInfoFieldAccessor.ToString
 0045456B    pop         edx
 0045456C    pop         esi
 0045456D    pop         ebx
 0045456E    ret
end;*}

//00454570
function TRttiInstancePropertyClassic.GetHandle:PPropInfo;
begin
{*
 00454570    mov         eax,dword ptr [eax+4]
 00454573    ret
*}
end;

//00454574
procedure sub_00454574;
begin
{*
 00454574    push        ebx
 00454575    push        esi
 00454576    mov         ebx,eax
 00454578    mov         eax,ebx
 0045457A    call        TRttiInstancePropertyClassic.GetHandle
 0045457F    movzx       esi,word ptr [eax+4]
 00454583    mov         eax,ebx
 00454585    call        TRttiInstanceFieldClassic.GetParent
 0045458A    mov         eax,dword ptr [eax+28];TRttiInstanceType.FClassTab:PVmtFieldClassTab
 0045458D    mov         eax,dword ptr [eax+esi*4+2]
 00454591    mov         edx,dword ptr [eax]
 00454593    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00454598    call        TRttiPool.GetType
 0045459D    pop         esi
 0045459E    pop         ebx
 0045459F    ret
*}
end;

//004545A0
{*function sub_004545A0:?;
begin
 004545A0    push        ebx
 004545A1    mov         ebx,eax
 004545A3    mov         eax,ebx
 004545A5    call        TRttiInstancePropertyClassic.GetHandle
 004545AA    mov         eax,dword ptr [eax]
 004545AC    pop         ebx
 004545AD    ret
end;*}

//004545B0
function TRttiInstanceFieldClassic.GetParent:TRttiInstanceType;
begin
{*
 004545B0    push        ebx
 004545B1    mov         ebx,eax
 004545B3    mov         eax,ebx
 004545B5    call        TRttiMember.GetParent
 004545BA    pop         ebx
 004545BB    ret
*}
end;

//004545BC
constructor TRttiInstanceFieldEx.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 004545BC    push        ebp
 004545BD    mov         ebp,esp
 004545BF    add         esp,0FFFFFFF8
 004545C2    push        ebx
 004545C3    push        esi
 004545C4    xor         ebx,ebx
 004545C6    mov         dword ptr [ebp-8],ebx
 004545C9    test        dl,dl
>004545CB    je          004545D5
 004545CD    add         esp,0FFFFFFF0
 004545D0    call        @ClassCreate
 004545D5    mov         byte ptr [ebp-1],dl
 004545D8    mov         ebx,eax
 004545DA    mov         esi,dword ptr [ebp+8]
 004545DD    xor         eax,eax
 004545DF    push        ebp
 004545E0    push        454632
 004545E5    push        dword ptr fs:[eax]
 004545E8    mov         dword ptr fs:[eax],esp
 004545EB    mov         eax,dword ptr [ebp+0C]
 004545EE    push        eax
 004545EF    push        esi
 004545F0    xor         edx,edx
 004545F2    mov         eax,ebx
 004545F4    call        TRttiObject.Create
 004545F9    mov         eax,ebx
 004545FB    call        TRttiInstanceFieldEx.GetHandle
 00454600    call        TFieldExEntry.AttrData
 00454605    mov         dword ptr [esi],eax
 00454607    lea         edx,[ebp-8]
 0045460A    mov         eax,esi
 0045460C    call        LazyLoadAttributes
 00454611    mov         edx,dword ptr [ebp-8]
 00454614    lea         eax,[ebx+14]
 00454617    call        @IntfCopy
 0045461C    xor         eax,eax
 0045461E    pop         edx
 0045461F    pop         ecx
 00454620    pop         ecx
 00454621    mov         dword ptr fs:[eax],edx
 00454624    push        454639
 00454629    lea         eax,[ebp-8]
 0045462C    call        @IntfClear
 00454631    ret
>00454632    jmp         @HandleFinally
>00454637    jmp         00454629
 00454639    mov         eax,ebx
 0045463B    cmp         byte ptr [ebp-1],0
>0045463F    je          00454650
 00454641    call        @AfterConstruction
 00454646    pop         dword ptr fs:[0]
 0045464D    add         esp,0C
 00454650    mov         eax,ebx
 00454652    pop         esi
 00454653    pop         ebx
 00454654    pop         ecx
 00454655    pop         ecx
 00454656    pop         ebp
 00454657    ret         8
*}
end;

//0045465C
function TRttiInstanceFieldEx.GetName:UnicodeString;
begin
{*
 0045465C    push        ebx
 0045465D    push        esi
 0045465E    push        ecx
 0045465F    mov         esi,edx
 00454661    mov         ebx,eax
 00454663    mov         eax,ebx
 00454665    call        TRttiInstanceFieldEx.GetHandle
 0045466A    call        TFieldExEntry.NameFld
 0045466F    mov         dword ptr [esp],eax
 00454672    mov         eax,esp
 00454674    mov         edx,esi
 00454676    call        TTypeInfoFieldAccessor.ToString
 0045467B    pop         edx
 0045467C    pop         esi
 0045467D    pop         ebx
 0045467E    ret
*}
end;

//00454680
function TRttiInstanceFieldEx.GetHandle:PFieldExEntry;
begin
{*
 00454680    mov         eax,dword ptr [eax+4]
 00454683    ret
*}
end;

//00454684
function TRttiInstanceFieldEx.GetOffset:Integer;
begin
{*
 00454684    push        ebx
 00454685    mov         ebx,eax
 00454687    mov         eax,ebx
 00454689    call        TRttiInstanceFieldEx.GetHandle
 0045468E    mov         eax,dword ptr [eax+5]
 00454691    pop         ebx
 00454692    ret
*}
end;

//00454694
function TRttiInstanceFieldEx.GetFieldType:TRttiType;
begin
{*
 00454694    push        ebx
 00454695    mov         ebx,eax
 00454697    mov         eax,ebx
 00454699    call        TRttiInstanceFieldEx.GetHandle
 0045469E    mov         edx,dword ptr [eax+1]
 004546A1    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 004546A6    call        TRttiPool.TypeOrNil
 004546AB    pop         ebx
 004546AC    ret
*}
end;

//004546B0
function TRttiInstanceFieldEx.GetVisibility:TMemberVisibility;
begin
{*
 004546B0    push        ebx
 004546B1    mov         ebx,eax
 004546B3    mov         eax,ebx
 004546B5    call        TRttiInstanceFieldEx.GetHandle
 004546BA    movzx       eax,byte ptr [eax]
 004546BD    mov         ecx,2
 004546C2    xor         edx,edx
 004546C4    call        GetBitField
 004546C9    pop         ebx
 004546CA    ret
*}
end;

//004546CC
constructor TRttiSetType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 004546CC    push        ebp
 004546CD    mov         ebp,esp
 004546CF    add         esp,0FFFFFFF8
 004546D2    push        ebx
 004546D3    push        esi
 004546D4    xor         ebx,ebx
 004546D6    mov         dword ptr [ebp-8],ebx
 004546D9    test        dl,dl
>004546DB    je          004546E5
 004546DD    add         esp,0FFFFFFF0
 004546E0    call        @ClassCreate
 004546E5    mov         byte ptr [ebp-1],dl
 004546E8    mov         ebx,eax
 004546EA    mov         esi,dword ptr [ebp+8]
 004546ED    xor         eax,eax
 004546EF    push        ebp
 004546F0    push        454741
 004546F5    push        dword ptr fs:[eax]
 004546F8    mov         dword ptr fs:[eax],esp
 004546FB    mov         eax,dword ptr [ebp+0C]
 004546FE    push        eax
 004546FF    push        esi
 00454700    xor         edx,edx
 00454702    mov         eax,ebx
 00454704    call        TRttiType.Create
 00454709    mov         eax,ebx
 0045470B    call        TRttiType.GetTypeData
 00454710    inc         eax
 00454711    add         eax,4
 00454714    mov         dword ptr [esi],eax
 00454716    lea         edx,[ebp-8]
 00454719    mov         eax,esi
 0045471B    call        LazyLoadAttributes
 00454720    mov         edx,dword ptr [ebp-8]
 00454723    lea         eax,[ebx+14]
 00454726    call        @IntfCopy
 0045472B    xor         eax,eax
 0045472D    pop         edx
 0045472E    pop         ecx
 0045472F    pop         ecx
 00454730    mov         dword ptr fs:[eax],edx
 00454733    push        454748
 00454738    lea         eax,[ebp-8]
 0045473B    call        @IntfClear
 00454740    ret
>00454741    jmp         @HandleFinally
>00454746    jmp         00454738
 00454748    mov         eax,ebx
 0045474A    cmp         byte ptr [ebp-1],0
>0045474E    je          0045475F
 00454750    call        @AfterConstruction
 00454755    pop         dword ptr fs:[0]
 0045475C    add         esp,0C
 0045475F    mov         eax,ebx
 00454761    pop         esi
 00454762    pop         ebx
 00454763    pop         ecx
 00454764    pop         ecx
 00454765    pop         ebp
 00454766    ret         8
*}
end;

//0045476C
function TRttiSetType.GetElementType:TRttiType;
begin
{*
 0045476C    push        ebx
 0045476D    mov         ebx,eax
 0045476F    mov         eax,ebx
 00454771    call        TRttiType.GetTypeData
 00454776    mov         edx,dword ptr [eax+1]
 00454779    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 0045477E    call        TRttiPool.TypeOrNil
 00454783    pop         ebx
 00454784    ret
*}
end;

//00454788
function TRttiSetType.GetTypeSize:Integer;
begin
{*
 00454788    push        ebx
 00454789    mov         ebx,eax
 0045478B    mov         eax,ebx
 0045478D    call        TRttiType.GetTypeData
 00454792    movzx       eax,byte ptr [eax]
 00454795    mov         eax,dword ptr [eax*4+7A05AC]
 0045479C    pop         ebx
 0045479D    ret
*}
end;

//00454A9C
procedure GetMethods(var P:Windows.PByte);
begin
{*
 00454A9C    push        ebp
 00454A9D    mov         ebp,esp
 00454A9F    push        ecx
 00454AA0    push        ebx
 00454AA1    push        esi
 00454AA2    push        edi
 00454AA3    mov         dword ptr [ebp-4],eax
 00454AA6    mov         eax,dword ptr [ebp+8]
 00454AA9    mov         eax,dword ptr [eax-4]
 00454AAC    call        TRttiInterfaceType.GetBaseTyped
 00454AB1    test        eax,eax
>00454AB3    je          00454AC5
 00454AB5    mov         eax,dword ptr [ebp+8]
 00454AB8    mov         eax,dword ptr [eax-4]
 00454ABB    call        TRttiInterfaceType.GetBaseTyped
 00454AC0    mov         esi,dword ptr [eax+1C]
>00454AC3    jmp         00454AC7
 00454AC5    xor         esi,esi
 00454AC7    mov         eax,dword ptr [ebp-4]
 00454ACA    call        ReadI16
 00454ACF    movzx       ebx,ax
 00454AD2    lea         eax,[ebx+esi]
 00454AD5    mov         edx,dword ptr [ebp+8]
 00454AD8    mov         edx,dword ptr [edx-4]
 00454ADB    mov         dword ptr [edx+1C],eax
 00454ADE    mov         eax,dword ptr [ebp-4]
 00454AE1    call        ReadI16
 00454AE6    movzx       eax,ax
 00454AE9    cmp         eax,0FFFF
>00454AEE    je          00454B60
 00454AF0    push        ebx
 00454AF1    mov         eax,dword ptr [ebp+8]
 00454AF4    mov         eax,dword ptr [eax-4]
 00454AF7    add         eax,18
 00454AFA    mov         ecx,1
 00454AFF    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00454B05    call        @DynArraySetLength
 00454B0A    add         esp,4
 00454B0D    mov         edi,ebx
 00454B0F    dec         edi
 00454B10    test        edi,edi
>00454B12    jl          00454B60
 00454B14    inc         edi
 00454B15    xor         ebx,ebx
 00454B17    mov         eax,dword ptr [ebp-4]
 00454B1A    push        eax
 00454B1B    mov         eax,dword ptr [ebp+8]
 00454B1E    mov         ecx,dword ptr [eax-4]
 00454B21    mov         eax,dword ptr [ebp+8]
 00454B24    mov         eax,dword ptr [eax-4]
 00454B27    mov         eax,dword ptr [eax+0C]
 00454B2A    mov         edx,dword ptr ds:[4548B8];TRttiIntfMethod
 00454B30    call        TRttiPackage.ReadObject
 00454B35    mov         edx,dword ptr ds:[4548B8];TRttiIntfMethod
 00454B3B    call        @AsClass
 00454B40    mov         edx,dword ptr [ebp+8]
 00454B43    mov         edx,dword ptr [edx-4]
 00454B46    mov         edx,dword ptr [edx+18]
 00454B49    mov         dword ptr [edx+ebx*4],eax
 00454B4C    mov         eax,dword ptr [ebp+8]
 00454B4F    mov         eax,dword ptr [eax-4]
 00454B52    mov         eax,dword ptr [eax+18]
 00454B55    mov         eax,dword ptr [eax+ebx*4]
 00454B58    mov         dword ptr [eax+28],esi
 00454B5B    inc         esi
 00454B5C    inc         ebx
 00454B5D    dec         edi
>00454B5E    jne         00454B17
 00454B60    pop         edi
 00454B61    pop         esi
 00454B62    pop         ebx
 00454B63    pop         ecx
 00454B64    pop         ebp
 00454B65    ret
*}
end;

//00454B68
constructor TRttiInterfaceType.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00454B68    push        ebp
 00454B69    mov         ebp,esp
 00454B6B    push        0
 00454B6D    push        0
 00454B6F    push        0
 00454B71    push        ebx
 00454B72    push        esi
 00454B73    test        dl,dl
>00454B75    je          00454B7F
 00454B77    add         esp,0FFFFFFF0
 00454B7A    call        @ClassCreate
 00454B7F    mov         ebx,edx
 00454B81    mov         dword ptr [ebp-4],eax
 00454B84    mov         esi,dword ptr [ebp+8]
 00454B87    xor         eax,eax
 00454B89    push        ebp
 00454B8A    push        454BFA
 00454B8F    push        dword ptr fs:[eax]
 00454B92    mov         dword ptr fs:[eax],esp
 00454B95    mov         eax,dword ptr [ebp+0C]
 00454B98    push        eax
 00454B99    push        esi
 00454B9A    xor         edx,edx
 00454B9C    mov         eax,dword ptr [ebp-4]
 00454B9F    call        TRttiType.Create
 00454BA4    mov         eax,dword ptr [ebp-4]
 00454BA7    call        TRttiType.GetTypeData
 00454BAC    add         eax,15
 00454BAF    mov         dword ptr [esi],eax
 00454BB1    lea         edx,[ebp-8]
 00454BB4    mov         eax,esi
 00454BB6    call        ReadShortString
 00454BBB    push        ebp
 00454BBC    mov         eax,esi
 00454BBE    call        GetMethods
 00454BC3    pop         ecx
 00454BC4    lea         edx,[ebp-0C]
 00454BC7    mov         eax,esi
 00454BC9    call        LazyLoadAttributes
 00454BCE    mov         edx,dword ptr [ebp-0C]
 00454BD1    mov         eax,dword ptr [ebp-4]
 00454BD4    add         eax,14
 00454BD7    call        @IntfCopy
 00454BDC    xor         eax,eax
 00454BDE    pop         edx
 00454BDF    pop         ecx
 00454BE0    pop         ecx
 00454BE1    mov         dword ptr fs:[eax],edx
 00454BE4    push        454C01
 00454BE9    lea         eax,[ebp-0C]
 00454BEC    call        @IntfClear
 00454BF1    lea         eax,[ebp-8]
 00454BF4    call        @UStrClr
 00454BF9    ret
>00454BFA    jmp         @HandleFinally
>00454BFF    jmp         00454BE9
 00454C01    mov         eax,dword ptr [ebp-4]
 00454C04    test        bl,bl
>00454C06    je          00454C17
 00454C08    call        @AfterConstruction
 00454C0D    pop         dword ptr fs:[0]
 00454C14    add         esp,0C
 00454C17    mov         eax,dword ptr [ebp-4]
 00454C1A    pop         esi
 00454C1B    pop         ebx
 00454C1C    mov         esp,ebp
 00454C1E    pop         ebp
 00454C1F    ret         8
*}
end;

//00454C24
function TRttiInterfaceType.GetIntfFlags:TIntfFlags;
begin
{*
 00454C24    push        ebx
 00454C25    push        esi
 00454C26    mov         esi,eax
 00454C28    mov         eax,esi
 00454C2A    call        TRttiType.GetTypeData
 00454C2F    movzx       ebx,byte ptr [eax+4]
 00454C33    mov         eax,ebx
 00454C35    pop         esi
 00454C36    pop         ebx
 00454C37    ret
*}
end;

//00454C38
function TRttiInterfaceType.GetDeclaringUnitName:UnicodeString;
begin
{*
 00454C38    push        ebx
 00454C39    push        esi
 00454C3A    push        ecx
 00454C3B    mov         esi,edx
 00454C3D    mov         ebx,eax
 00454C3F    mov         eax,ebx
 00454C41    call        TRttiType.GetTypeData
 00454C46    call        TTypeData.IntfUnitFld
 00454C4B    mov         dword ptr [esp],eax
 00454C4E    mov         eax,esp
 00454C50    mov         edx,esi
 00454C52    call        TTypeInfoFieldAccessor.ToString
 00454C57    pop         edx
 00454C58    pop         esi
 00454C59    pop         ebx
 00454C5A    ret
*}
end;

//00454C5C
procedure sub_00454C5C;
begin
{*
 00454C5C    call        TRttiInterfaceType.GetBaseTyped
 00454C61    ret
*}
end;

//00454C64
function TRttiInterfaceType.GetBaseTyped:TRttiInterfaceType;
begin
{*
 00454C64    push        ebx
 00454C65    mov         ebx,eax
 00454C67    mov         eax,ebx
 00454C69    call        TRttiType.GetTypeData
 00454C6E    mov         edx,dword ptr [eax]
 00454C70    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00454C75    call        TRttiPool.TypeOrNil
 00454C7A    mov         edx,dword ptr ds:[4392F8];TRttiInterfaceType
 00454C80    call        @AsClass
 00454C85    pop         ebx
 00454C86    ret
*}
end;

//00454C88
function TRttiInterfaceType.GetGUID:TGUID;
begin
{*
 00454C88    push        ebx
 00454C89    push        esi
 00454C8A    push        edi
 00454C8B    mov         esi,edx
 00454C8D    mov         ebx,eax
 00454C8F    mov         eax,ebx
 00454C91    call        TRttiType.GetTypeData
 00454C96    mov         edi,esi
 00454C98    lea         esi,[eax+5]
 00454C9B    movs        dword ptr [edi],dword ptr [esi]
 00454C9C    movs        dword ptr [edi],dword ptr [esi]
 00454C9D    movs        dword ptr [edi],dword ptr [esi]
 00454C9E    movs        dword ptr [edi],dword ptr [esi]
 00454C9F    pop         edi
 00454CA0    pop         esi
 00454CA1    pop         ebx
 00454CA2    ret
*}
end;

//00454CA4
function TRttiInterfaceType.GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;
begin
{*
 00454CA4    push        ebx
 00454CA5    push        esi
 00454CA6    push        ecx
 00454CA7    mov         esi,edx
 00454CA9    mov         ebx,eax
 00454CAB    mov         ecx,esi
 00454CAD    mov         eax,dword ptr [ebx+18]
 00454CB0    mov         dword ptr [esp],eax
 00454CB3    mov         eax,esp
 00454CB5    xor         edx,edx
 00454CB7    call        TArrayHelper.Concat<System.Rtti.TRttiMethod>
 00454CBC    pop         edx
 00454CBD    pop         esi
 00454CBE    pop         ebx
 00454CBF    ret
*}
end;

//00454CC0
constructor TRttiIntfMethParameter.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00454CC0    push        ebp
 00454CC1    mov         ebp,esp
 00454CC3    push        0
 00454CC5    push        0
 00454CC7    push        0
 00454CC9    push        0
 00454CCB    push        ebx
 00454CCC    push        esi
 00454CCD    test        dl,dl
>00454CCF    je          00454CD9
 00454CD1    add         esp,0FFFFFFF0
 00454CD4    call        @ClassCreate
 00454CD9    mov         byte ptr [ebp-1],dl
 00454CDC    mov         ebx,eax
 00454CDE    mov         esi,dword ptr [ebp+8]
 00454CE1    xor         eax,eax
 00454CE3    push        ebp
 00454CE4    push        454D68
 00454CE9    push        dword ptr fs:[eax]
 00454CEC    mov         dword ptr fs:[eax],esp
 00454CEF    mov         eax,dword ptr [ebp+0C]
 00454CF2    push        eax
 00454CF3    push        esi
 00454CF4    xor         edx,edx
 00454CF6    mov         eax,ebx
 00454CF8    call        TRttiObject.Create
 00454CFD    mov         eax,esi
 00454CFF    call        ReadI8
 00454D04    mov         byte ptr [ebx+1C],al;TRttiIntfMethParameter.FFlags:TParamFlags
 00454D07    lea         edx,[ebp-8]
 00454D0A    mov         eax,esi
 00454D0C    call        ReadShortString
 00454D11    mov         edx,dword ptr [ebp-8]
 00454D14    lea         eax,[ebx+18];TRttiIntfMethParameter.FName:string
 00454D17    call        @UStrAsg
 00454D1C    lea         edx,[ebp-0C]
 00454D1F    mov         eax,esi
 00454D21    call        ReadShortString
 00454D26    mov         eax,esi
 00454D28    call        ReadPointer
 00454D2D    mov         dword ptr [ebx+20],eax;TRttiIntfMethParameter.FParamType:PPTypeInfo
 00454D30    lea         edx,[ebp-10]
 00454D33    mov         eax,esi
 00454D35    call        LazyLoadAttributes
 00454D3A    mov         edx,dword ptr [ebp-10]
 00454D3D    lea         eax,[ebx+14];TRttiIntfMethParameter.FAttributeGetter:TFunc<System.TArray<System.TCustomA...
 00454D40    call        @IntfCopy
 00454D45    xor         eax,eax
 00454D47    pop         edx
 00454D48    pop         ecx
 00454D49    pop         ecx
 00454D4A    mov         dword ptr fs:[eax],edx
 00454D4D    push        454D6F
 00454D52    lea         eax,[ebp-10]
 00454D55    call        @IntfClear
 00454D5A    lea         eax,[ebp-0C]
 00454D5D    mov         edx,2
 00454D62    call        @UStrArrayClr
 00454D67    ret
>00454D68    jmp         @HandleFinally
>00454D6D    jmp         00454D52
 00454D6F    mov         eax,ebx
 00454D71    cmp         byte ptr [ebp-1],0
>00454D75    je          00454D86
 00454D77    call        @AfterConstruction
 00454D7C    pop         dword ptr fs:[0]
 00454D83    add         esp,0C
 00454D86    mov         eax,ebx
 00454D88    pop         esi
 00454D89    pop         ebx
 00454D8A    mov         esp,ebp
 00454D8C    pop         ebp
 00454D8D    ret         8
*}
end;

//00454D90
function TRttiIntfMethParameter.GetName:UnicodeString;
begin
{*
 00454D90    push        ebx
 00454D91    push        esi
 00454D92    mov         esi,edx
 00454D94    mov         ebx,eax
 00454D96    mov         eax,esi
 00454D98    mov         edx,dword ptr [ebx+18]
 00454D9B    call        @UStrAsg
 00454DA0    pop         esi
 00454DA1    pop         ebx
 00454DA2    ret
*}
end;

//00454DA4
{*function TRttiIntfMethParameter.GetFlags:?;
begin
 00454DA4    movzx       edx,byte ptr [eax+1C];TRttiIntfMethParameter.FFlags:TParamFlags
 00454DA8    mov         eax,edx
 00454DAA    ret
end;*}

//00454DAC
function TRttiIntfMethParameter.GetParamType:TRttiType;
begin
{*
 00454DAC    mov         edx,dword ptr [eax+20]
 00454DAF    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00454DB4    call        TRttiPool.TypeOrNil
 00454DB9    ret
*}
end;

//00454DBC
constructor TRttiIntfMethod.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00454DBC    push        ebp
 00454DBD    mov         ebp,esp
 00454DBF    add         esp,0FFFFFFF0
 00454DC2    push        ebx
 00454DC3    push        esi
 00454DC4    push        edi
 00454DC5    xor         ebx,ebx
 00454DC7    mov         dword ptr [ebp-10],ebx
 00454DCA    test        dl,dl
>00454DCC    je          00454DD6
 00454DCE    add         esp,0FFFFFFF0
 00454DD1    call        @ClassCreate
 00454DD6    mov         byte ptr [ebp-1],dl
 00454DD9    mov         ebx,eax
 00454DDB    mov         esi,dword ptr [ebp+8]
 00454DDE    xor         eax,eax
 00454DE0    push        ebp
 00454DE1    push        454EE2
 00454DE6    push        dword ptr fs:[eax]
 00454DE9    mov         dword ptr fs:[eax],esp
 00454DEC    mov         eax,dword ptr [ebp+0C]
 00454DEF    push        eax
 00454DF0    push        esi
 00454DF1    xor         edx,edx
 00454DF3    mov         eax,ebx
 00454DF5    call        TRttiObject.Create
 00454DFA    mov         eax,ebx
 00454DFC    call        00454F0C
 00454E01    call        TIntfMethodEntry.Tail
 00454E06    mov         edi,eax
 00454E08    mov         dword ptr [ebx+1C],edi;TRttiIntfMethod.FTail:PIntfMethodEntryTail
 00454E0B    mov         dword ptr [esi],edi
 00454E0D    add         dword ptr [esi],3
 00454E10    movzx       eax,byte ptr [edi+2]
 00454E14    dec         eax
 00454E15    push        eax
 00454E16    lea         eax,[ebx+20];TRttiIntfMethod.FParameters:TArray<System.Rtti.TRttiParameter>
 00454E19    mov         ecx,1
 00454E1E    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00454E24    call        @DynArraySetLength
 00454E29    add         esp,4
 00454E2C    push        esi
 00454E2D    mov         eax,dword ptr [ebx+0C];TRttiIntfMethod.FPackage:TRttiPackage
 00454E30    mov         ecx,ebx
 00454E32    mov         edx,dword ptr ds:[4547A0];TRttiIntfMethParameter
 00454E38    call        TRttiPackage.ReadObject
 00454E3D    mov         eax,dword ptr [ebx+20];TRttiIntfMethod.FParameters:TArray<System.Rtti.TRttiParameter>
 00454E40    mov         dword ptr [ebp-0C],eax
 00454E43    mov         eax,dword ptr [ebp-0C]
 00454E46    test        eax,eax
>00454E48    je          00454E4F
 00454E4A    sub         eax,4
 00454E4D    mov         eax,dword ptr [eax]
 00454E4F    mov         edi,eax
 00454E51    dec         edi
 00454E52    test        edi,edi
>00454E54    jl          00454E89
 00454E56    inc         edi
 00454E57    mov         dword ptr [ebp-8],0
 00454E5E    push        esi
 00454E5F    mov         eax,dword ptr [ebx+0C];TRttiIntfMethod.FPackage:TRttiPackage
 00454E62    mov         ecx,ebx
 00454E64    mov         edx,dword ptr ds:[4547A0];TRttiIntfMethParameter
 00454E6A    call        TRttiPackage.ReadObject
 00454E6F    mov         edx,dword ptr ds:[437B34];TRttiParameter
 00454E75    call        @AsClass
 00454E7A    mov         edx,dword ptr [ebx+20];TRttiIntfMethod.FParameters:TArray<System.Rtti.TRttiParameter>
 00454E7D    mov         ecx,dword ptr [ebp-8]
 00454E80    mov         dword ptr [edx+ecx*4],eax
 00454E83    inc         dword ptr [ebp-8]
 00454E86    dec         edi
>00454E87    jne         00454E5E
 00454E89    mov         eax,ebx
 00454E8B    mov         edx,dword ptr [eax]
 00454E8D    call        dword ptr [edx+10];TRttiIntfMethod.GetMethodKind
 00454E90    cmp         al,1
>00454E92    jne         00454EB7
 00454E94    mov         eax,dword ptr [esi]
 00454E96    cmp         byte ptr [eax],0
>00454E99    jne         00454E9F
 00454E9B    inc         dword ptr [esi]
>00454E9D    jmp         00454EB7
 00454E9F    mov         eax,dword ptr [esi]
 00454EA1    call        _SkipShortString
 00454EA6    mov         dword ptr [esi],eax
 00454EA8    mov         eax,esi
 00454EAA    call        ReadPointer
 00454EAF    call        0043EB94
 00454EB4    mov         dword ptr [ebx+24],eax;TRttiIntfMethod.FReturnType:PTypeInfo
 00454EB7    lea         edx,[ebp-10]
 00454EBA    mov         eax,esi
 00454EBC    call        LazyLoadAttributes
 00454EC1    mov         edx,dword ptr [ebp-10]
 00454EC4    lea         eax,[ebx+14];TRttiIntfMethod.FAttributeGetter:TFunc<System.TArray<System.TCustomAttribut...
 00454EC7    call        @IntfCopy
 00454ECC    xor         eax,eax
 00454ECE    pop         edx
 00454ECF    pop         ecx
 00454ED0    pop         ecx
 00454ED1    mov         dword ptr fs:[eax],edx
 00454ED4    push        454EE9
 00454ED9    lea         eax,[ebp-10]
 00454EDC    call        @IntfClear
 00454EE1    ret
>00454EE2    jmp         @HandleFinally
>00454EE7    jmp         00454ED9
 00454EE9    mov         eax,ebx
 00454EEB    cmp         byte ptr [ebp-1],0
>00454EEF    je          00454F00
 00454EF1    call        @AfterConstruction
 00454EF6    pop         dword ptr fs:[0]
 00454EFD    add         esp,0C
 00454F00    mov         eax,ebx
 00454F02    pop         edi
 00454F03    pop         esi
 00454F04    pop         ebx
 00454F05    mov         esp,ebp
 00454F07    pop         ebp
 00454F08    ret         8
*}
end;

//00454F0C
{*function sub_00454F0C(?:TRttiIntfMethod):?;
begin
 00454F0C    mov         eax,dword ptr [eax+4];TRttiIntfMethod.FHandle:Pointer
 00454F0F    ret
end;*}

//00454F14
function TRttiInstanceFieldClassic.GetName:UnicodeString;
begin
{*
 00454F14    push        ebx
 00454F15    push        esi
 00454F16    push        ecx
 00454F17    mov         esi,edx
 00454F19    mov         ebx,eax
 00454F1B    mov         eax,ebx
 00454F1D    call        00454F0C
 00454F22    call        TVmtFieldEntry.NameFld
 00454F27    mov         dword ptr [esp],eax
 00454F2A    mov         eax,esp
 00454F2C    mov         edx,esi
 00454F2E    call        TTypeInfoFieldAccessor.ToString
 00454F33    pop         edx
 00454F34    pop         esi
 00454F35    pop         ebx
 00454F36    ret
*}
end;

//00454F38
function TRttiIntfMethod.GetMethodKind:TMethodKind;
begin
{*
 00454F38    mov         eax,dword ptr [eax+1C]
 00454F3B    cmp         byte ptr [eax],0
>00454F3E    jne         00454F43
 00454F40    xor         eax,eax
 00454F42    ret
 00454F43    mov         al,1
 00454F45    ret
*}
end;

//00454F48
function TRttiIntfMethod.GetCallingConvention:TCallConv;
begin
{*
 00454F48    mov         eax,dword ptr [eax+1C]
 00454F4B    movzx       eax,byte ptr [eax+1]
 00454F4F    ret
*}
end;

//00454F50
function TRttiIntfMethod.GetReturnType:TRttiType;
begin
{*
 00454F50    mov         edx,dword ptr [eax+24]
 00454F53    mov         eax,[007C9F94];gvar_007C9F94:TRttiPool
 00454F58    call        TRttiPool.GetType
 00454F5D    ret
*}
end;

//00454F60
{*function sub_00454F60:?;
begin
 00454F60    mov         al,1
 00454F62    ret
end;*}

//00454F64
{*function sub_00454F64:?;
begin
 00454F64    movzx       eax,word ptr [eax+28];TRttiIntfMethod.FVirtualIndex:Integer
 00454F68    ret
end;*}

//00454F6C
{*function sub_00454F6C:?;
begin
 00454F6C    mov         al,4
 00454F6E    ret
end;*}

//00454F70
{*procedure sub_00454F70(?:?; ?:?; ?:?);
begin
 00454F70    push        ebp
 00454F71    mov         ebp,esp
 00454F73    add         esp,0FFFFFFCC
 00454F76    push        ebx
 00454F77    push        esi
 00454F78    push        edi
 00454F79    xor         ebx,ebx
 00454F7B    mov         dword ptr [ebp-34],ebx
 00454F7E    mov         dword ptr [ebp-4],ebx
 00454F81    mov         dword ptr [ebp-8],ebx
 00454F84    mov         esi,edx
 00454F86    lea         edi,[ebp-20]
 00454F89    push        ecx
 00454F8A    mov         ecx,6
 00454F8F    rep movs    dword ptr [edi],dword ptr [esi]
 00454F91    pop         ecx
 00454F92    mov         dword ptr [ebp-24],ecx
 00454F95    mov         esi,eax
 00454F97    mov         edi,dword ptr [ebp+0C]
 00454F9A    lea         eax,[ebp-20]
 00454F9D    mov         edx,dword ptr ds:[435E20];TValue
 00454FA3    call        @InitializeRecord
 00454FA8    xor         eax,eax
 00454FAA    push        ebp
 00454FAB    push        455152
 00454FB0    push        dword ptr fs:[eax]
 00454FB3    mov         dword ptr fs:[eax],esp
 00454FB6    lea         edx,[ebp-8]
 00454FB9    mov         eax,esi
 00454FBB    mov         ecx,dword ptr [eax]
 00454FBD    call        dword ptr [ecx+38];TRttiIntfMethod.GetParameters
 00454FC0    mov         eax,dword ptr [ebp-8]
 00454FC3    test        eax,eax
>00454FC5    je          00454FCC
 00454FC7    sub         eax,4
 00454FCA    mov         eax,dword ptr [eax]
 00454FCC    lea         edx,[edi+1]
 00454FCF    cmp         eax,edx
>00454FD1    je          00454FEA
 00454FD3    mov         ecx,dword ptr ds:[7C42A4];^SResString176:TResStringRec
 00454FD9    mov         dl,1
 00454FDB    mov         eax,[00435ADC];EInvocationError
 00454FE0    call        Exception.CreateRes;EInvocationError.Create
 00454FE5    call        @RaiseExcept
 00454FEA    mov         ebx,edx
 00454FEC    inc         ebx
 00454FED    push        ebx
 00454FEE    lea         eax,[ebp-4]
 00454FF1    mov         ecx,1
 00454FF6    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00454FFC    call        @DynArraySetLength
 00455001    add         esp,4
 00455004    xor         eax,eax
 00455006    mov         dword ptr [ebp-2C],eax
 00455009    lea         edx,[ebp-34]
 0045500C    lea         eax,[ebp-20]
 0045500F    call        TValue.AsInterface
 00455014    mov         eax,dword ptr [ebp-34]
 00455017    mov         dword ptr [ebp-30],eax
 0045501A    mov         eax,esi
 0045501C    mov         edx,dword ptr [eax]
 0045501E    call        dword ptr [edx+14];TRttiIntfMethod.GetCallingConvention
 00455021    mov         ebx,eax
 00455023    cmp         bl,2
>00455026    je          00455045
 00455028    mov         eax,dword ptr [ebp-2C]
 0045502B    lea         eax,[eax+eax*2]
 0045502E    mov         edx,dword ptr [ebp-4]
 00455031    lea         eax,[edx+eax*8]
 00455034    lea         edx,[ebp-20]
 00455037    mov         ecx,dword ptr ds:[435E20];TValue
 0045503D    call        @CopyRecord
 00455042    inc         dword ptr [ebp-2C]
 00455045    inc         edi
 00455046    dec         edi
 00455047    test        edi,edi
>00455049    jl          00455086
 0045504B    inc         edi
 0045504C    mov         dword ptr [ebp-28],0
 00455053    mov         ebx,dword ptr [ebp-24]
 00455056    mov         eax,esi
 00455058    mov         edx,dword ptr [eax]
 0045505A    call        dword ptr [edx+14];TRttiIntfMethod.GetCallingConvention
 0045505D    push        eax
 0045505E    mov         eax,dword ptr [ebp-2C]
 00455061    lea         eax,[eax+eax*2]
 00455064    mov         edx,dword ptr [ebp-4]
 00455067    lea         ecx,[edx+eax*8]
 0045506A    mov         eax,dword ptr [ebp-8]
 0045506D    mov         edx,dword ptr [ebp-28]
 00455070    mov         eax,dword ptr [eax+edx*4]
 00455073    mov         edx,ebx
 00455075    call        PassArg
 0045507A    inc         dword ptr [ebp-2C]
 0045507D    inc         dword ptr [ebp-28]
 00455080    add         ebx,18
 00455083    dec         edi
>00455084    jne         00455056
 00455086    mov         eax,dword ptr [ebp-30]
 00455089    mov         eax,dword ptr [eax]
 0045508B    mov         edx,dword ptr [esi+28];TRttiIntfMethod.FVirtualIndex:Integer
 0045508E    mov         edi,dword ptr [eax+edx*4]
 00455091    mov         eax,edi
 00455093    call        CheckCodeAddress
 00455098    mov         eax,esi
 0045509A    mov         edx,dword ptr [eax]
 0045509C    call        dword ptr [edx+14];TRttiIntfMethod.GetCallingConvention
 0045509F    mov         ebx,eax
 004550A1    cmp         bl,2
>004550A4    jne         004550C0
 004550A6    mov         eax,dword ptr [ebp-2C]
 004550A9    lea         eax,[eax+eax*2]
 004550AC    mov         edx,dword ptr [ebp-4]
 004550AF    lea         eax,[edx+eax*8]
 004550B2    lea         edx,[ebp-20]
 004550B5    mov         ecx,dword ptr ds:[435E20];TValue
 004550BB    call        @CopyRecord
 004550C0    mov         eax,esi
 004550C2    mov         edx,dword ptr [eax]
 004550C4    call        dword ptr [edx+18];TRttiIntfMethod.GetReturnType
 004550C7    test        eax,eax
>004550C9    je          004550F5
 004550CB    mov         eax,esi
 004550CD    mov         edx,dword ptr [eax]
 004550CF    call        dword ptr [edx+18];TRttiIntfMethod.GetReturnType
 004550D2    call        TRttiType.GetHandle
 004550D7    push        eax
 004550D8    push        0
 004550DA    push        0
 004550DC    mov         eax,dword ptr [ebp+8]
 004550DF    push        eax
 004550E0    mov         eax,esi
 004550E2    mov         edx,dword ptr [eax]
 004550E4    call        dword ptr [edx+14];TRttiIntfMethod.GetCallingConvention
 004550E7    mov         ecx,eax
 004550E9    mov         edx,dword ptr [ebp-4]
 004550EC    mov         eax,edi
 004550EE    call        Invoke
>004550F3    jmp         00455112
 004550F5    push        0
 004550F7    push        0
 004550F9    push        0
 004550FB    mov         eax,dword ptr [ebp+8]
 004550FE    push        eax
 004550FF    mov         eax,esi
 00455101    mov         edx,dword ptr [eax]
 00455103    call        dword ptr [edx+14];TRttiIntfMethod.GetCallingConvention
 00455106    mov         ecx,eax
 00455108    mov         edx,dword ptr [ebp-4]
 0045510B    mov         eax,edi
 0045510D    call        Invoke
 00455112    xor         eax,eax
 00455114    pop         edx
 00455115    pop         ecx
 00455116    pop         ecx
 00455117    mov         dword ptr fs:[eax],edx
 0045511A    push        455159
 0045511F    lea         eax,[ebp-34]
 00455122    call        @IntfClear
 00455127    lea         eax,[ebp-20]
 0045512A    mov         edx,dword ptr ds:[435E20];TValue
 00455130    call        @FinalizeRecord
 00455135    lea         eax,[ebp-8]
 00455138    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 0045513E    call        @DynArrayClear
 00455143    lea         eax,[ebp-4]
 00455146    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0045514C    call        @DynArrayClear
 00455151    ret
>00455152    jmp         @HandleFinally
>00455157    jmp         0045511F
 00455159    pop         edi
 0045515A    pop         esi
 0045515B    pop         ebx
 0045515C    mov         esp,ebp
 0045515E    pop         ebp
 0045515F    ret         8
end;*}

//00455164
function TRttiIntfMethod.GetParameters:TArray<System.Rtti.TRttiParameter>;
begin
{*
 00455164    push        ebx
 00455165    push        esi
 00455166    push        ecx
 00455167    mov         esi,edx
 00455169    mov         ebx,eax
 0045516B    mov         ecx,esi
 0045516D    mov         eax,dword ptr [ebx+20]
 00455170    mov         dword ptr [esp],eax
 00455173    mov         eax,esp
 00455175    xor         edx,edx
 00455177    call        TArrayHelper.Concat<System.Rtti.TRttiParameter>
 0045517C    pop         edx
 0045517D    pop         esi
 0045517E    pop         ebx
 0045517F    ret
*}
end;

//00455180
constructor TOrphanPackage.Create();
begin
{*
 00455180    push        ebx
 00455181    push        esi
 00455182    test        dl,dl
>00455184    je          0045518E
 00455186    add         esp,0FFFFFFF0
 00455189    call        @ClassCreate
 0045518E    mov         ebx,edx
 00455190    mov         esi,eax
 00455192    xor         eax,eax
 00455194    mov         dword ptr [esi+0C],eax
 00455197    xor         eax,eax
 00455199    mov         dword ptr [esi+10],eax
 0045519C    mov         dword ptr [esi+4],0FFFFFFFF
 004551A3    mov         dl,1
 004551A5    mov         eax,[00401728];TObject
 004551AA    call        TObject.Create
 004551AF    mov         dword ptr [esi+18],eax
 004551B2    push        0
 004551B4    movzx       ecx,byte ptr ds:[4551E4]
 004551BB    mov         dl,1
 004551BD    mov         eax,[00455B34];TObjectDictionary<System.Pointer,System.Rtti.TRttiObject>
 004551C2    call        TObjectDictionary<System.Pointer,System.Rtti.TRttiObject>.Create
 004551C7    mov         dword ptr [esi+1C],eax
 004551CA    mov         eax,esi
 004551CC    test        bl,bl
>004551CE    je          004551DF
 004551D0    call        @AfterConstruction
 004551D5    pop         dword ptr fs:[0]
 004551DC    add         esp,0C
 004551DF    mov         eax,esi
 004551E1    pop         esi
 004551E2    pop         ebx
 004551E3    ret
*}
end;

//004551E8
function TOrphanPackage.FindType(AQualifiedName:string):TRttiType;
begin
{*
 004551E8    xor         eax,eax
 004551EA    ret
*}
end;

//004551EC
function TOrphanPackage.GetName:string;
begin
{*
 004551EC    push        ebx
 004551ED    mov         ebx,edx
 004551EF    mov         eax,ebx
 004551F1    mov         edx,45520C;'(orphan package)'
 004551F6    call        @UStrAsg
 004551FB    pop         ebx
 004551FC    ret
*}
end;

//00455230
{*procedure TOrphanPackage.GetTypes(?:?);
begin
 00455230    push        ebx
 00455231    mov         ebx,edx
 00455233    mov         eax,ebx
 00455235    mov         edx,dword ptr ds:[43E478];TArray<System.Rtti.TRttiType>
 0045523B    call        @DynArrayClear
 00455240    pop         ebx
 00455241    ret
end;*}

//00455244
constructor TRealPackage.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte);
begin
{*
 00455244    push        ebp
 00455245    mov         ebp,esp
 00455247    push        ecx
 00455248    push        ebx
 00455249    push        esi
 0045524A    push        edi
 0045524B    test        dl,dl
>0045524D    je          00455257
 0045524F    add         esp,0FFFFFFF0
 00455252    call        @ClassCreate
 00455257    mov         byte ptr [ebp-1],dl
 0045525A    mov         ebx,eax
 0045525C    mov         eax,dword ptr [ebp+8]
 0045525F    mov         esi,dword ptr [eax]
 00455261    mov         edx,dword ptr [esi+4];TRttiObject.FHandle:Pointer
 00455264    mov         dword ptr [eax],edx
 00455266    mov         edx,dword ptr [ebp+0C]
 00455269    push        edx
 0045526A    push        eax
 0045526B    xor         edx,edx
 0045526D    mov         eax,ebx
 0045526F    call        TRttiObject.Create
 00455274    mov         dl,1
 00455276    mov         eax,[00401728];TObject
 0045527B    call        TObject.Create;TObject.Create
 00455280    mov         dword ptr [ebx+18],eax;TRealPackage.FLock:TObject
 00455283    mov         eax,dword ptr [esi+14];TRttiObject.FAttributeGetter:TFunc<System.TArray<System.TCustomAt...
 00455286    mov         dword ptr [ebx+24],eax;TRealPackage.FTypeInfo:PPackageTypeInfo
 00455289    test        eax,eax
>0045528B    jne         004552A5
 0045528D    push        4552E4;'@GetPackageInfoTable'
 00455292    mov         eax,dword ptr [esi+4];TRttiObject.FHandle:Pointer
 00455295    push        eax
 00455296    call        GetProcAddress
 0045529B    mov         edi,eax
 0045529D    call        edi
 0045529F    add         eax,8
 004552A2    mov         dword ptr [ebx+24],eax;TRealPackage.FTypeInfo:PPackageTypeInfo
 004552A5    mov         eax,dword ptr [esi+4];TRttiObject.FHandle:Pointer
 004552A8    mov         dword ptr [ebx+20],eax;TRealPackage.FBaseAddress:Pointer
 004552AB    push        0
 004552AD    movzx       ecx,byte ptr ds:[455310];0x2 gvar_00455310
 004552B4    mov         dl,1
 004552B6    mov         eax,[00455B34];TObjectDictionary<System.Pointer,System.Rtti.TRttiObject>
 004552BB    call        TObjectDictionary<System.Pointer,System.Rtti.TRttiObject>.Create
 004552C0    mov         dword ptr [ebx+1C],eax;TRealPackage.FHandleToObject:TDictionary<System.Pointer,System.Rt...
 004552C3    mov         eax,ebx
 004552C5    cmp         byte ptr [ebp-1],0
>004552C9    je          004552DA
 004552CB    call        @AfterConstruction
 004552D0    pop         dword ptr fs:[0]
 004552D7    add         esp,0C
 004552DA    mov         eax,ebx
 004552DC    pop         edi
 004552DD    pop         esi
 004552DE    pop         ebx
 004552DF    pop         ecx
 004552E0    pop         ebp
 004552E1    ret         8
*}
end;

//00455314
destructor TRealPackage.Destroy();
begin
{*
 00455314    push        ebx
 00455315    push        esi
 00455316    call        @BeforeDestruction
 0045531B    mov         ebx,edx
 0045531D    mov         esi,eax
 0045531F    mov         eax,dword ptr [esi+2C]
 00455322    call        TObject.Free
 00455327    mov         eax,dword ptr [esi+28]
 0045532A    call        TObject.Free
 0045532F    mov         dl,0FC
 00455331    and         dl,bl
 00455333    mov         eax,esi
 00455335    call        TRttiPackage.Destroy
 0045533A    test        bl,bl
>0045533C    jle         00455345
 0045533E    mov         eax,esi
 00455340    call        @ClassDestroy
 00455345    pop         esi
 00455346    pop         ebx
 00455347    ret
*}
end;

//00455348
function TRealPackage.FindType(AQualifiedName:string):TRttiType;
begin
{*
 00455348    push        ebp
 00455349    mov         ebp,esp
 0045534B    add         esp,0FFFFFFF0
 0045534E    push        ebx
 0045534F    mov         ebx,edx
 00455351    mov         dword ptr [ebp-4],eax
 00455354    mov         eax,dword ptr [ebp-4]
 00455357    call        TRealPackage.MakeTypeLookupTable
 0045535C    lea         ecx,[ebp-8]
 0045535F    mov         eax,dword ptr [ebp-4]
 00455362    mov         eax,dword ptr [eax+2C];TRealPackage.FNameToType:TDictionary<System.string,System.TypInfo...
 00455365    mov         edx,ebx
 00455367    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.TryGetValue
 0045536C    test        al,al
>0045536E    jne         00455377
 00455370    xor         ebx,ebx
>00455372    jmp         00455410
 00455377    mov         eax,dword ptr [ebp-4]
 0045537A    mov         eax,dword ptr [eax+18];TRealPackage.FLock:TObject
 0045537D    mov         dword ptr [ebp-10],eax
 00455380    call        TMonitor.CheckMonitorSupport
 00455385    mov         eax,dword ptr [ebp-10]
 00455388    call        TMonitor.GetMonitor
 0045538D    or          edx,0FFFFFFFF
 00455390    call        TMonitor.Enter
 00455395    xor         eax,eax
 00455397    push        ebp
 00455398    push        4553E8
 0045539D    push        dword ptr fs:[eax]
 004553A0    mov         dword ptr fs:[eax],esp
 004553A3    lea         ecx,[ebp-0C]
 004553A6    mov         eax,dword ptr [ebp-4]
 004553A9    mov         eax,dword ptr [eax+1C];TRealPackage.FHandleToObject:TDictionary<System.Pointer,System.Rt...
 004553AC    mov         edx,dword ptr [ebp-8]
 004553AF    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TryGetValue
 004553B4    test        al,al
>004553B6    je          004553CF
 004553B8    mov         eax,dword ptr [ebp-0C]
 004553BB    mov         edx,dword ptr ds:[4368BC];TRttiType
 004553C1    call        @AsClass
 004553C6    mov         ebx,eax
 004553C8    call        @TryFinallyExit
>004553CD    jmp         00455410
 004553CF    xor         eax,eax
 004553D1    pop         edx
 004553D2    pop         ecx
 004553D3    pop         ecx
 004553D4    mov         dword ptr fs:[eax],edx
 004553D7    push        4553EF
 004553DC    mov         eax,dword ptr [ebp-4]
 004553DF    mov         eax,dword ptr [eax+18];TRealPackage.FLock:TObject
 004553E2    call        TMonitor.Exit
 004553E7    ret
>004553E8    jmp         @HandleFinally
>004553ED    jmp         004553DC
 004553EF    mov         eax,dword ptr [ebp-8]
 004553F2    push        eax
 004553F3    xor         ecx,ecx
 004553F5    mov         edx,dword ptr ds:[4368BC];TRttiType
 004553FB    mov         eax,dword ptr [ebp-4]
 004553FE    call        TRttiPackage.ReadObjectPointer
 00455403    mov         edx,dword ptr ds:[4368BC];TRttiType
 00455409    call        @AsClass
 0045540E    mov         ebx,eax
 00455410    mov         eax,ebx
 00455412    pop         ebx
 00455413    mov         esp,ebp
 00455415    pop         ebp
 00455416    ret
*}
end;

//00455418
function TRealPackage.GetName:UnicodeString;
begin
{*
 00455418    push        ebx
 00455419    push        esi
 0045541A    mov         esi,edx
 0045541C    mov         ebx,eax
 0045541E    mov         eax,ebx
 00455420    call        TRttiPackage.GetHandle
 00455425    mov         edx,esi
 00455427    call        GetModuleName
 0045542C    pop         esi
 0045542D    pop         ebx
 0045542E    ret
*}
end;

//00455430
function GetType(ATypeInfo:Pointer):TRttiType;
begin
{*
 00455430    push        ebp
 00455431    mov         ebp,esp
 00455433    push        ebx
 00455434    mov         ebx,eax
 00455436    test        ebx,ebx
>00455438    jne         0045543F
 0045543A    xor         eax,eax
 0045543C    pop         ebx
 0045543D    pop         ebp
 0045543E    ret
 0045543F    push        ebx
 00455440    mov         eax,dword ptr [ebp+8]
 00455443    mov         eax,dword ptr [eax-4]
 00455446    xor         ecx,ecx
 00455448    mov         edx,dword ptr ds:[4368BC];TRttiType
 0045544E    call        TRttiPackage.ReadObjectPointer
 00455453    pop         ebx
 00455454    pop         ebp
 00455455    ret
*}
end;

//00455458
function TRealPackage.GetTypes:TArray<System.Rtti.TRttiType>;
begin
{*
 00455458    push        ebp
 00455459    mov         ebp,esp
 0045545B    add         esp,0FFFFFFF8
 0045545E    push        ebx
 0045545F    push        esi
 00455460    push        edi
 00455461    mov         dword ptr [ebp-8],edx
 00455464    mov         dword ptr [ebp-4],eax
 00455467    xor         edi,edi
 00455469    mov         eax,dword ptr [ebp-4]
 0045546C    mov         eax,dword ptr [eax+24]
 0045546F    mov         esi,dword ptr [eax]
 00455471    dec         esi
 00455472    test        esi,esi
>00455474    jl          004554AD
 00455476    inc         esi
 00455477    xor         ebx,ebx
 00455479    mov         eax,dword ptr [ebp-4]
 0045547C    mov         eax,dword ptr [eax+24]
 0045547F    mov         eax,dword ptr [eax+4]
 00455482    cmp         dword ptr [eax+ebx*4],0
>00455486    je          004554A9
 00455488    mov         eax,dword ptr [ebp-4]
 0045548B    mov         eax,dword ptr [eax+24]
 0045548E    mov         eax,dword ptr [eax+4]
 00455491    cmp         dword ptr [eax+ebx*4],1
>00455495    je          004554A9
 00455497    mov         eax,dword ptr [ebp-4]
 0045549A    mov         eax,dword ptr [eax+24]
 0045549D    mov         eax,dword ptr [eax+4]
 004554A0    mov         eax,dword ptr [eax+ebx*4]
 004554A3    cmp         dword ptr [eax],0
>004554A6    je          004554A9
 004554A8    inc         edi
 004554A9    inc         ebx
 004554AA    dec         esi
>004554AB    jne         00455479
 004554AD    push        edi
 004554AE    mov         eax,dword ptr [ebp-8]
 004554B1    mov         ecx,1
 004554B6    mov         edx,dword ptr ds:[43E478];TArray<System.Rtti.TRttiType>
 004554BC    call        @DynArraySetLength
 004554C1    add         esp,4
 004554C4    xor         edi,edi
 004554C6    mov         eax,dword ptr [ebp-4]
 004554C9    mov         eax,dword ptr [eax+24]
 004554CC    mov         esi,dword ptr [eax]
 004554CE    dec         esi
 004554CF    test        esi,esi
>004554D1    jl          00455527
 004554D3    inc         esi
 004554D4    xor         ebx,ebx
 004554D6    mov         eax,dword ptr [ebp-4]
 004554D9    mov         eax,dword ptr [eax+24]
 004554DC    mov         eax,dword ptr [eax+4]
 004554DF    cmp         dword ptr [eax+ebx*4],0
>004554E3    je          00455523
 004554E5    mov         eax,dword ptr [ebp-4]
 004554E8    mov         eax,dword ptr [eax+24]
 004554EB    mov         eax,dword ptr [eax+4]
 004554EE    cmp         dword ptr [eax+ebx*4],1
>004554F2    je          00455523
 004554F4    mov         eax,dword ptr [ebp-4]
 004554F7    mov         eax,dword ptr [eax+24]
 004554FA    mov         eax,dword ptr [eax+4]
 004554FD    mov         eax,dword ptr [eax+ebx*4]
 00455500    cmp         dword ptr [eax],0
>00455503    je          00455523
 00455505    push        ebp
 00455506    mov         eax,dword ptr [ebp-4]
 00455509    mov         eax,dword ptr [eax+24]
 0045550C    mov         eax,dword ptr [eax+4]
 0045550F    mov         eax,dword ptr [eax+ebx*4]
 00455512    mov         eax,dword ptr [eax]
 00455514    call        GetType
 00455519    pop         ecx
 0045551A    mov         edx,dword ptr [ebp-8]
 0045551D    mov         edx,dword ptr [edx]
 0045551F    mov         dword ptr [edx+edi*4],eax
 00455522    inc         edi
 00455523    inc         ebx
 00455524    dec         esi
>00455525    jne         004554D6
 00455527    pop         edi
 00455528    pop         esi
 00455529    pop         ebx
 0045552A    pop         ecx
 0045552B    pop         ecx
 0045552C    pop         ebp
 0045552D    ret
*}
end;

//00455530
function TRealPackage.GetNameFromType(AType:TRttiType):UnicodeString;
begin
{*
 00455530    push        ebx
 00455531    push        esi
 00455532    push        edi
 00455533    mov         edi,ecx
 00455535    mov         esi,edx
 00455537    mov         ebx,eax
 00455539    mov         eax,ebx
 0045553B    call        TRealPackage.MakeTypeLookupTable
 00455540    mov         eax,esi
 00455542    call        TRttiType.GetHandle
 00455547    push        eax
 00455548    mov         eax,edi
 0045554A    call        @UStrClr
 0045554F    mov         ecx,eax
 00455551    mov         eax,dword ptr [ebx+28]
 00455554    pop         edx
 00455555    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.TryGetValue
 0045555A    pop         edi
 0045555B    pop         esi
 0045555C    pop         ebx
 0045555D    ret
*}
end;

//00455560
function GetUnits:TArray<System.string>System.TArray`1<System.string>;
begin
{*
 00455560    push        ebp
 00455561    mov         ebp,esp
 00455563    add         esp,0FFFFFFF8
 00455566    push        ebx
 00455567    push        esi
 00455568    push        edi
 00455569    xor         edx,edx
 0045556B    mov         dword ptr [ebp-8],edx
 0045556E    mov         edi,eax
 00455570    xor         eax,eax
 00455572    push        ebp
 00455573    push        4555F5
 00455578    push        dword ptr fs:[eax]
 0045557B    mov         dword ptr fs:[eax],esp
 0045557E    mov         eax,dword ptr [ebp+8]
 00455581    mov         eax,dword ptr [eax-4]
 00455584    mov         eax,dword ptr [eax+24]
 00455587    mov         eax,dword ptr [eax+8]
 0045558A    push        eax
 0045558B    mov         eax,edi
 0045558D    mov         ecx,1
 00455592    mov         edx,dword ptr ds:[41B770];TArray<System.string>
 00455598    call        @DynArraySetLength
 0045559D    add         esp,4
 004555A0    mov         eax,dword ptr [ebp+8]
 004555A3    mov         eax,dword ptr [eax-4]
 004555A6    mov         eax,dword ptr [eax+24]
 004555A9    mov         eax,dword ptr [eax+0C]
 004555AC    mov         dword ptr [ebp-4],eax
 004555AF    mov         eax,dword ptr [ebp+8]
 004555B2    mov         eax,dword ptr [eax-4]
 004555B5    mov         eax,dword ptr [eax+24]
 004555B8    mov         ebx,dword ptr [eax+8]
 004555BB    dec         ebx
 004555BC    test        ebx,ebx
>004555BE    jl          004555DF
 004555C0    inc         ebx
 004555C1    xor         esi,esi
 004555C3    lea         edx,[ebp-8]
 004555C6    lea         eax,[ebp-4]
 004555C9    call        ReadShortString
 004555CE    mov         edx,dword ptr [ebp-8]
 004555D1    mov         eax,dword ptr [edi]
 004555D3    lea         eax,[eax+esi*4]
 004555D6    call        @UStrAsg
 004555DB    inc         esi
 004555DC    dec         ebx
>004555DD    jne         004555C3
 004555DF    xor         eax,eax
 004555E1    pop         edx
 004555E2    pop         ecx
 004555E3    pop         ecx
 004555E4    mov         dword ptr fs:[eax],edx
 004555E7    push        4555FC
 004555EC    lea         eax,[ebp-8]
 004555EF    call        @UStrClr
 004555F4    ret
>004555F5    jmp         @HandleFinally
>004555FA    jmp         004555EC
 004555FC    pop         edi
 004555FD    pop         esi
 004555FE    pop         ebx
 004555FF    pop         ecx
 00455600    pop         ecx
 00455601    pop         ebp
 00455602    ret
*}
end;

//00455604
procedure DoMake;
begin
{*
 00455604    push        ebp
 00455605    mov         ebp,esp
 00455607    add         esp,0FFFFFFE8
 0045560A    push        ebx
 0045560B    push        esi
 0045560C    push        edi
 0045560D    xor         eax,eax
 0045560F    mov         dword ptr [ebp-18],eax
 00455612    mov         dword ptr [ebp-4],eax
 00455615    mov         dword ptr [ebp-8],eax
 00455618    xor         eax,eax
 0045561A    push        ebp
 0045561B    push        4557C8
 00455620    push        dword ptr fs:[eax]
 00455623    mov         dword ptr fs:[eax],esp
 00455626    mov         eax,dword ptr [ebp+8]
 00455629    mov         eax,dword ptr [eax-4]
 0045562C    mov         eax,dword ptr [eax+18]
 0045562F    mov         dword ptr [ebp-14],eax
 00455632    call        TMonitor.CheckMonitorSupport
 00455637    mov         eax,dword ptr [ebp-14]
 0045563A    call        TMonitor.GetMonitor
 0045563F    or          edx,0FFFFFFFF
 00455642    call        TMonitor.Enter
 00455647    xor         eax,eax
 00455649    push        ebp
 0045564A    push        455795
 0045564F    push        dword ptr fs:[eax]
 00455652    mov         dword ptr fs:[eax],esp
 00455655    mov         eax,dword ptr [ebp+8]
 00455658    mov         eax,dword ptr [eax-4]
 0045565B    cmp         dword ptr [eax+2C],0
>0045565F    je          0045566B
 00455661    call        @TryFinallyExit
>00455666    jmp         0045579C
 0045566B    mov         eax,dword ptr [ebp+8]
 0045566E    push        eax
 0045566F    lea         eax,[ebp-4]
 00455672    call        GetUnits
 00455677    pop         ecx
 00455678    xor         eax,eax
 0045567A    mov         dword ptr [ebp-0C],eax
 0045567D    xor         ecx,ecx
 0045567F    mov         dl,1
 00455681    mov         eax,[004455BC];TDictionary<System.string,System.TypInfo.PTypeInfo>
 00455686    call        00458FA8
 0045568B    mov         edx,dword ptr [ebp+8]
 0045568E    mov         edx,dword ptr [edx-4]
 00455691    mov         dword ptr [edx+2C],eax
 00455694    xor         ecx,ecx
 00455696    mov         dl,1
 00455698    mov         eax,[00443E98];TDictionary<System.TypInfo.PTypeInfo,System.string>
 0045569D    call        004582A0
 004556A2    mov         edx,dword ptr [ebp+8]
 004556A5    mov         edx,dword ptr [edx-4]
 004556A8    mov         dword ptr [edx+28],eax
 004556AB    mov         eax,dword ptr [ebp+8]
 004556AE    mov         eax,dword ptr [eax-4]
 004556B1    mov         eax,dword ptr [eax+24]
 004556B4    mov         esi,dword ptr [eax]
 004556B6    dec         esi
 004556B7    test        esi,esi
>004556B9    jl          00455779
 004556BF    inc         esi
 004556C0    xor         edi,edi
 004556C2    mov         eax,dword ptr [ebp+8]
 004556C5    mov         eax,dword ptr [eax-4]
 004556C8    mov         eax,dword ptr [eax+24]
 004556CB    mov         eax,dword ptr [eax+4]
 004556CE    mov         ebx,dword ptr [eax+edi*4]
 004556D1    test        ebx,ebx
>004556D3    je          00455771
 004556D9    cmp         ebx,1
>004556DC    jne         004556E6
 004556DE    inc         dword ptr [ebp-0C]
>004556E1    jmp         00455771
 004556E6    cmp         dword ptr [ebx],0
>004556E9    je          00455771
 004556EF    mov         eax,dword ptr [ebp-4]
 004556F2    mov         edx,dword ptr [ebp-0C]
 004556F5    push        dword ptr [eax+edx*4]
 004556F8    push        4557E4;'.'
 004556FD    mov         eax,dword ptr [ebx]
 004556FF    call        TTypeInfo.NameFld
 00455704    mov         dword ptr [ebp-10],eax
 00455707    lea         eax,[ebp-10]
 0045570A    lea         edx,[ebp-18]
 0045570D    call        TTypeInfoFieldAccessor.ToString
 00455712    push        dword ptr [ebp-18]
 00455715    lea         eax,[ebp-8]
 00455718    mov         edx,3
 0045571D    call        @UStrCatN
 00455722    mov         eax,dword ptr [ebp+8]
 00455725    mov         eax,dword ptr [eax-4]
 00455728    mov         eax,dword ptr [eax+2C]
 0045572B    mov         edx,dword ptr [ebp-8]
 0045572E    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.ContainsKey
 00455733    test        al,al
>00455735    jne         0045574A
 00455737    mov         ecx,dword ptr [ebx]
 00455739    mov         eax,dword ptr [ebp+8]
 0045573C    mov         eax,dword ptr [eax-4]
 0045573F    mov         eax,dword ptr [eax+2C]
 00455742    mov         edx,dword ptr [ebp-8]
 00455745    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.Add
 0045574A    mov         edx,dword ptr [ebx]
 0045574C    mov         eax,dword ptr [ebp+8]
 0045574F    mov         eax,dword ptr [eax-4]
 00455752    mov         eax,dword ptr [eax+28]
 00455755    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.ContainsKey
 0045575A    test        al,al
>0045575C    jne         00455771
 0045575E    mov         edx,dword ptr [ebx]
 00455760    mov         eax,dword ptr [ebp+8]
 00455763    mov         eax,dword ptr [eax-4]
 00455766    mov         eax,dword ptr [eax+28]
 00455769    mov         ecx,dword ptr [ebp-8]
 0045576C    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.Add
 00455771    inc         edi
 00455772    dec         esi
>00455773    jne         004556C2
 00455779    xor         eax,eax
 0045577B    pop         edx
 0045577C    pop         ecx
 0045577D    pop         ecx
 0045577E    mov         dword ptr fs:[eax],edx
 00455781    push        45579C
 00455786    mov         eax,dword ptr [ebp+8]
 00455789    mov         eax,dword ptr [eax-4]
 0045578C    mov         eax,dword ptr [eax+18]
 0045578F    call        TMonitor.Exit
 00455794    ret
>00455795    jmp         @HandleFinally
>0045579A    jmp         00455786
 0045579C    xor         eax,eax
 0045579E    pop         edx
 0045579F    pop         ecx
 004557A0    pop         ecx
 004557A1    mov         dword ptr fs:[eax],edx
 004557A4    push        4557CF
 004557A9    lea         eax,[ebp-18]
 004557AC    call        @UStrClr
 004557B1    lea         eax,[ebp-8]
 004557B4    call        @UStrClr
 004557B9    lea         eax,[ebp-4]
 004557BC    mov         edx,dword ptr ds:[41B770];TArray<System.string>
 004557C2    call        @DynArrayClear
 004557C7    ret
>004557C8    jmp         @HandleFinally
>004557CD    jmp         004557A9
 004557CF    pop         edi
 004557D0    pop         esi
 004557D1    pop         ebx
 004557D2    mov         esp,ebp
 004557D4    pop         ebp
 004557D5    ret
*}
end;

//004557E8
procedure TRealPackage.MakeTypeLookupTable;
begin
{*
 004557E8    push        ebp
 004557E9    mov         ebp,esp
 004557EB    push        ecx
 004557EC    mov         dword ptr [ebp-4],eax
 004557EF    mov         eax,dword ptr [ebp-4]
 004557F2    cmp         dword ptr [eax+2C],0
>004557F6    jne         004557FF
 004557F8    push        ebp
 004557F9    call        DoMake
 004557FE    pop         ecx
 004557FF    pop         ecx
 00455800    pop         ebp
 00455801    ret
*}
end;

//00455804
destructor TMethodImplementation.TInvokeInfo.Destroy();
begin
{*
 00455804    push        ebx
 00455805    push        esi
 00455806    call        @BeforeDestruction
 0045580B    mov         ebx,edx
 0045580D    mov         esi,eax
 0045580F    mov         eax,dword ptr [esi+1C]
 00455812    call        TObject.Free
 00455817    mov         dl,0FC
 00455819    and         dl,bl
 0045581B    mov         eax,esi
 0045581D    call        TObject.Destroy
 00455822    test        bl,bl
>00455824    jle         0045582D
 00455826    mov         eax,esi
 00455828    call        @ClassDestroy
 0045582D    pop         esi
 0045582E    pop         ebx
 0045582F    ret
*}
end;

//00455830
procedure TMethodImplementation.TInvokeInfo.CheckNotSealed;
begin
{*
 00455830    ret
*}
end;

//00455834
{*procedure sub_00455834(?:?; ?:?; ?:?);
begin
 00455834    push        ebp
 00455835    mov         ebp,esp
 00455837    add         esp,0FFFFFFF4
 0045583A    push        ebx
 0045583B    push        esi
 0045583C    push        edi
 0045583D    xor         ebx,ebx
 0045583F    mov         dword ptr [ebp-4],ebx
 00455842    mov         dword ptr [ebp-0C],ecx
 00455845    mov         dword ptr [ebp-8],edx
 00455848    mov         ebx,eax
 0045584A    xor         eax,eax
 0045584C    push        ebp
 0045584D    push        4558E1
 00455852    push        dword ptr fs:[eax]
 00455855    mov         dword ptr fs:[eax],esp
 00455858    lea         edx,[ebp-4]
 0045585B    mov         eax,ebx
 0045585D    call        TMethodImplementation.TInvokeInfo.GetParamLocs
 00455862    mov         ebx,dword ptr [ebp-4]
 00455865    test        ebx,ebx
>00455867    je          0045586E
 00455869    sub         ebx,4
 0045586C    mov         ebx,dword ptr [ebx]
 0045586E    push        ebx
 0045586F    mov         eax,dword ptr [ebp-0C]
 00455872    mov         ecx,1
 00455877    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 0045587D    call        @DynArraySetLength
 00455882    add         esp,4
 00455885    mov         eax,dword ptr [ebp-4]
 00455888    test        eax,eax
>0045588A    je          00455891
 0045588C    sub         eax,4
 0045588F    mov         eax,dword ptr [eax]
 00455891    mov         esi,eax
 00455893    dec         esi
 00455894    test        esi,esi
>00455896    jl          004558C5
 00455898    inc         esi
 00455899    xor         ebx,ebx
 0045589B    lea         edi,[ebx+ebx*2]
 0045589E    mov         eax,dword ptr [ebp-0C]
 004558A1    mov         eax,dword ptr [eax]
 004558A3    lea         eax,[eax+edi*8]
 004558A6    mov         edx,dword ptr ds:[435E20];TValue
 004558AC    call        @FinalizeRecord
 004558B1    mov         ecx,eax
 004558B3    mov         eax,dword ptr [ebp-4]
 004558B6    lea         eax,[eax+edi*4]
 004558B9    mov         edx,dword ptr [ebp-8]
 004558BC    call        00455A04
 004558C1    inc         ebx
 004558C2    dec         esi
>004558C3    jne         0045589B
 004558C5    xor         eax,eax
 004558C7    pop         edx
 004558C8    pop         ecx
 004558C9    pop         ecx
 004558CA    mov         dword ptr fs:[eax],edx
 004558CD    push        4558E8
 004558D2    lea         eax,[ebp-4]
 004558D5    mov         edx,dword ptr ds:[43B024];TArray<System.Rtti.TMethodImplementation.TParamLoc>
 004558DB    call        @DynArrayClear
 004558E0    ret
>004558E1    jmp         @HandleFinally
>004558E6    jmp         004558D2
 004558E8    pop         edi
 004558E9    pop         esi
 004558EA    pop         ebx
 004558EB    mov         esp,ebp
 004558ED    pop         ebp
 004558EE    ret
end;*}

//004558F0
{*procedure sub_004558F0(?:?; ?:?; ?:?; ?:?);
begin
 004558F0    push        ebp
 004558F1    mov         ebp,esp
 004558F3    push        ecx
 004558F4    mov         ecx,4
 004558F9    push        0
 004558FB    push        0
 004558FD    dec         ecx
>004558FE    jne         004558F9
 00455900    push        ecx
 00455901    xchg        ecx,dword ptr [ebp-4]
 00455904    push        ebx
 00455905    push        esi
 00455906    mov         dword ptr [ebp-10],ecx
 00455909    mov         dword ptr [ebp-0C],edx
 0045590C    mov         dword ptr [ebp-8],eax
 0045590F    xor         eax,eax
 00455911    push        ebp
 00455912    push        4559C2
 00455917    push        dword ptr fs:[eax]
 0045591A    mov         dword ptr fs:[eax],esp
 0045591D    lea         edx,[ebp-4]
 00455920    mov         eax,dword ptr [ebp-8]
 00455923    call        TMethodImplementation.TInvokeInfo.GetParamLocs
 00455928    mov         eax,dword ptr [ebp-4]
 0045592B    test        eax,eax
>0045592D    je          00455934
 0045592F    sub         eax,4
 00455932    mov         eax,dword ptr [eax]
 00455934    mov         esi,eax
 00455936    dec         esi
 00455937    test        esi,esi
>00455939    jl          00455963
 0045593B    inc         esi
 0045593C    xor         ebx,ebx
 0045593E    lea         eax,[ebx+ebx*2]
 00455941    mov         edx,dword ptr [ebp-4]
 00455944    cmp         byte ptr [edx+eax*4+4],0
>00455949    je          0045595F
 0045594B    mov         edx,dword ptr [ebp-10]
 0045594E    lea         ecx,[edx+eax*8]
 00455951    mov         edx,dword ptr [ebp-4]
 00455954    lea         eax,[edx+eax*4]
 00455957    mov         edx,dword ptr [ebp-0C]
 0045595A    call        00455AA4
 0045595F    inc         ebx
 00455960    dec         esi
>00455961    jne         0045593E
 00455963    mov         eax,dword ptr [ebp-8]
 00455966    mov         ebx,dword ptr [eax+20]
 00455969    test        ebx,ebx
>0045596B    je          0045598B
 0045596D    lea         ecx,[ebp-28]
 00455970    mov         edx,ebx
 00455972    mov         eax,dword ptr [ebp+8]
 00455975    call        TValue.Cast
 0045597A    lea         ecx,[ebp-28]
 0045597D    mov         eax,dword ptr [ebp-8]
 00455980    add         eax,10
 00455983    mov         edx,dword ptr [ebp-0C]
 00455986    call        00455AA4
 0045598B    mov         eax,dword ptr [ebp-8]
 0045598E    movzx       eax,byte ptr [eax+5]
 00455992    mov         edx,dword ptr [ebp-0C]
 00455995    mov         byte ptr [edx+0A],al
 00455998    xor         eax,eax
 0045599A    pop         edx
 0045599B    pop         ecx
 0045599C    pop         ecx
 0045599D    mov         dword ptr fs:[eax],edx
 004559A0    push        4559C9
 004559A5    lea         eax,[ebp-28]
 004559A8    mov         edx,dword ptr ds:[435E20];TValue
 004559AE    call        @FinalizeRecord
 004559B3    lea         eax,[ebp-4]
 004559B6    mov         edx,dword ptr ds:[43B024];TArray<System.Rtti.TMethodImplementation.TParamLoc>
 004559BC    call        @DynArrayClear
 004559C1    ret
>004559C2    jmp         @HandleFinally
>004559C7    jmp         004559A5
 004559C9    pop         esi
 004559CA    pop         ebx
 004559CB    mov         esp,ebp
 004559CD    pop         ebp
 004559CE    ret         4
end;*}

//004559D4
function TMethodImplementation.TInvokeInfo.GetParamLocs:TArray<System.Rtti.TMethodImplementation.TParamLoc>;
begin
{*
 004559D4    push        ebx
 004559D5    push        esi
 004559D6    mov         esi,edx
 004559D8    mov         ebx,eax
 004559DA    mov         eax,esi
 004559DC    mov         edx,dword ptr [ebx+0C]
 004559DF    mov         ecx,dword ptr ds:[43B024];TArray<System.Rtti.TMethodImplementation.TParamLoc>
 004559E5    call        @DynArrayAsg
 004559EA    pop         esi
 004559EB    pop         ebx
 004559EC    ret
*}
end;

//004559F0
procedure TMethodImplementation.TInvokeInfo.SetReturnType(Value:TypInfo.PTypeInfo);
begin
{*
 004559F0    push        ebx
 004559F1    push        esi
 004559F2    mov         esi,edx
 004559F4    mov         ebx,eax
 004559F6    mov         eax,ebx
 004559F8    call        TMethodImplementation.TInvokeInfo.CheckNotSealed
 004559FD    mov         dword ptr [ebx+20],esi
 00455A00    pop         esi
 00455A01    pop         ebx
 00455A02    ret
*}
end;

//00455A04
{*procedure sub_00455A04(?:Integer; ?:?; ?:?);
begin
 00455A04    push        ebp
 00455A05    mov         ebp,esp
 00455A07    push        ecx
 00455A08    push        ebx
 00455A09    push        esi
 00455A0A    push        edi
 00455A0B    mov         esi,ecx
 00455A0D    mov         edi,edx
 00455A0F    mov         ebx,eax
 00455A11    mov         eax,esi
 00455A13    mov         edx,dword ptr ds:[435E20];TValue
 00455A19    call        @AddRefRecord
 00455A1E    mov         eax,ebx
 00455A20    mov         edx,edi
 00455A22    call        TMethodImplementation.TParamLoc.GetArgLoc
 00455A27    mov         dword ptr [ebp-4],eax
 00455A2A    mov         edi,dword ptr [ebx]
 00455A2C    test        edi,edi
>00455A2E    jne         00455A4F
 00455A30    mov         edx,dword ptr ds:[435E20];TValue
 00455A36    mov         eax,esi
 00455A38    call        @FinalizeRecord
 00455A3D    mov         ecx,eax
 00455A3F    lea         eax,[ebp-4]
 00455A42    mov         edx,dword ptr ds:[401100];Pointer
 00455A48    call        TValue.Make
>00455A4D    jmp         00455A68
 00455A4F    mov         eax,esi
 00455A51    mov         edx,dword ptr ds:[435E20];TValue
 00455A57    call        @FinalizeRecord
 00455A5C    mov         ecx,eax
 00455A5E    mov         edx,edi
 00455A60    mov         eax,dword ptr [ebp-4]
 00455A63    call        TValue.Make
 00455A68    pop         edi
 00455A69    pop         esi
 00455A6A    pop         ebx
 00455A6B    pop         ecx
 00455A6C    pop         ebp
 00455A6D    ret
end;*}

//00455A70
function TMethodImplementation.TParamLoc.GetArgLoc(AFrame:PInterceptFrame):Pointer;
begin
{*
 00455A70    push        ebx
 00455A71    mov         ecx,dword ptr [eax+8]
 00455A74    mov         ebx,ecx
 00455A76    sub         ebx,0FFFFFFFC
>00455A79    je          00455A98
 00455A7B    dec         ebx
>00455A7C    je          00455A8E
 00455A7E    dec         ebx
>00455A7F    je          00455A89
 00455A81    dec         ebx
>00455A82    jne         00455A93
 00455A84    add         edx,10
>00455A87    jmp         00455A98
 00455A89    add         edx,14
>00455A8C    jmp         00455A98
 00455A8E    add         edx,18
>00455A91    jmp         00455A98
 00455A93    add         edx,28
 00455A96    add         edx,ecx
 00455A98    cmp         byte ptr [eax+4],0
>00455A9C    je          00455AA0
 00455A9E    mov         edx,dword ptr [edx]
 00455AA0    mov         eax,edx
 00455AA2    pop         ebx
 00455AA3    ret
*}
end;

//00455AA4
{*procedure sub_00455AA4(?:Integer; ?:?; ?:Integer);
begin
 00455AA4    push        ebp
 00455AA5    mov         ebp,esp
 00455AA7    add         esp,0FFFFFFE8
 00455AAA    push        ebx
 00455AAB    push        esi
 00455AAC    push        edi
 00455AAD    mov         edi,ecx
 00455AAF    mov         esi,edx
 00455AB1    mov         ebx,eax
 00455AB3    lea         eax,[ebp-18]
 00455AB6    mov         edx,dword ptr ds:[435E20];TValue
 00455ABC    call        @AddRefRecord
 00455AC1    xor         eax,eax
 00455AC3    push        ebp
 00455AC4    push        455B25
 00455AC9    push        dword ptr fs:[eax]
 00455ACC    mov         dword ptr fs:[eax],esp
 00455ACF    cmp         dword ptr [ebx],0
>00455AD2    je          00455AF7
 00455AD4    lea         ecx,[ebp-18]
 00455AD7    mov         edx,dword ptr [ebx]
 00455AD9    mov         eax,edi
 00455ADB    call        TValue.Cast
 00455AE0    lea         eax,[ebp-18]
 00455AE3    push        eax
 00455AE4    mov         eax,ebx
 00455AE6    mov         edx,esi
 00455AE8    call        TMethodImplementation.TParamLoc.GetArgLoc
 00455AED    mov         edx,eax
 00455AEF    pop         eax
 00455AF0    call        TValue.ExtractRawData
>00455AF5    jmp         00455B09
 00455AF7    mov         eax,ebx
 00455AF9    mov         edx,esi
 00455AFB    call        TMethodImplementation.TParamLoc.GetArgLoc
 00455B00    mov         edx,eax
 00455B02    mov         eax,edi
 00455B04    call        TValue.ExtractRawData
 00455B09    xor         eax,eax
 00455B0B    pop         edx
 00455B0C    pop         ecx
 00455B0D    pop         ecx
 00455B0E    mov         dword ptr fs:[eax],edx
 00455B11    push        455B2C
 00455B16    lea         eax,[ebp-18]
 00455B19    mov         edx,dword ptr ds:[435E20];TValue
 00455B1F    call        @FinalizeRecord
 00455B24    ret
>00455B25    jmp         @HandleFinally
>00455B2A    jmp         00455B16
 00455B2C    pop         edi
 00455B2D    pop         esi
 00455B2E    pop         ebx
 00455B2F    mov         esp,ebp
 00455B31    pop         ebp
 00455B32    ret
end;*}

//00455D80
procedure FreeIntercept(AIntercept:PFirstStageIntercept);
begin
{*
 00455D80    push        ebx
 00455D81    mov         ebx,eax
 00455D83    call        CodeHeap
 00455D88    mov         edx,ebx
 00455D8A    call        TPrivateHeap.FreeMem
 00455D8F    pop         ebx
 00455D90    ret
*}
end;

//00455D94
destructor TMethodImplementation.Destroy();
begin
{*
 00455D94    push        ebx
 00455D95    push        esi
 00455D96    call        @BeforeDestruction
 00455D9B    mov         ebx,edx
 00455D9D    mov         esi,eax
 00455D9F    mov         eax,dword ptr [esi+4]
 00455DA2    test        eax,eax
>00455DA4    je          00455DAB
 00455DA6    call        FreeIntercept
 00455DAB    mov         dl,0FC
 00455DAD    and         dl,bl
 00455DAF    mov         eax,esi
 00455DB1    call        TObject.Destroy
 00455DB6    test        bl,bl
>00455DB8    jle         00455DC1
 00455DBA    mov         eax,esi
 00455DBC    call        @ClassDestroy
 00455DC1    pop         esi
 00455DC2    pop         ebx
 00455DC3    ret
*}
end;

//00455DD8
{*procedure sub_00455DD8(?:?; ?:?);
begin
 00455DD8    push        ebp
 00455DD9    mov         ebp,esp
 00455DDB    add         esp,0FFFFFFD8
 00455DDE    push        ebx
 00455DDF    xor         ecx,ecx
 00455DE1    mov         dword ptr [ebp-4],ecx
 00455DE4    mov         dword ptr [ebp-28],edx
 00455DE7    mov         dword ptr [ebp-24],eax
 00455DEA    lea         eax,[ebp-20]
 00455DED    mov         edx,dword ptr ds:[435E20];TValue
 00455DF3    call        @AddRefRecord
 00455DF8    xor         eax,eax
 00455DFA    push        ebp
 00455DFB    push        455EA5
 00455E00    push        dword ptr fs:[eax]
 00455E03    mov         dword ptr fs:[eax],esp
 00455E06    lea         ecx,[ebp-4]
 00455E09    mov         eax,dword ptr [ebp-24]
 00455E0C    mov         eax,dword ptr [eax+10]
 00455E0F    mov         edx,dword ptr [ebp-28]
 00455E12    call        00455834
 00455E17    xor         eax,eax
 00455E19    push        ebp
 00455E1A    push        455E74
 00455E1F    push        dword ptr fs:[eax]
 00455E22    mov         dword ptr fs:[eax],esp
 00455E25    mov         eax,dword ptr [ebp-24]
 00455E28    cmp         dword ptr [eax+0C],0
>00455E2C    je          00455E51
 00455E2E    mov         edx,dword ptr ds:[435E20];TValue
 00455E34    lea         eax,[ebp-20]
 00455E37    call        @FinalizeRecord
 00455E3C    push        eax
 00455E3D    mov         eax,dword ptr [ebp-24]
 00455E40    mov         edx,dword ptr [eax+8]
 00455E43    mov         eax,dword ptr [ebp-24]
 00455E46    mov         eax,dword ptr [eax+0C]
 00455E49    mov         ecx,dword ptr [ebp-4]
 00455E4C    mov         ebx,dword ptr [eax]
 00455E4E    call        dword ptr [ebx+0C]
 00455E51    xor         eax,eax
 00455E53    pop         edx
 00455E54    pop         ecx
 00455E55    pop         ecx
 00455E56    mov         dword ptr fs:[eax],edx
 00455E59    push        455E7B
 00455E5E    lea         eax,[ebp-20]
 00455E61    push        eax
 00455E62    mov         eax,dword ptr [ebp-24]
 00455E65    mov         eax,dword ptr [eax+10]
 00455E68    mov         ecx,dword ptr [ebp-4]
 00455E6B    mov         edx,dword ptr [ebp-28]
 00455E6E    call        004558F0
 00455E73    ret
>00455E74    jmp         @HandleFinally
>00455E79    jmp         00455E5E
 00455E7B    xor         eax,eax
 00455E7D    pop         edx
 00455E7E    pop         ecx
 00455E7F    pop         ecx
 00455E80    mov         dword ptr fs:[eax],edx
 00455E83    push        455EAC
 00455E88    lea         eax,[ebp-20]
 00455E8B    mov         edx,dword ptr ds:[435E20];TValue
 00455E91    call        @FinalizeRecord
 00455E96    lea         eax,[ebp-4]
 00455E99    mov         edx,dword ptr ds:[43ADE0];TArray<System.Rtti.TValue>
 00455E9F    call        @DynArrayClear
 00455EA4    ret
>00455EA5    jmp         @HandleFinally
>00455EAA    jmp         00455E88
 00455EAC    pop         ebx
 00455EAD    mov         esp,ebp
 00455EAF    pop         ebp
 00455EB0    ret
end;*}

//00455EB4
constructor TRttiRecordField.Create(APackage:TRttiPackage; AParent:TRttiObject; var P:Windows.PByte);
begin
{*
 00455EB4    push        ebp
 00455EB5    mov         ebp,esp
 00455EB7    add         esp,0FFFFFFF8
 00455EBA    push        ebx
 00455EBB    push        esi
 00455EBC    xor         ebx,ebx
 00455EBE    mov         dword ptr [ebp-8],ebx
 00455EC1    test        dl,dl
>00455EC3    je          00455ECD
 00455EC5    add         esp,0FFFFFFF0
 00455EC8    call        @ClassCreate
 00455ECD    mov         byte ptr [ebp-1],dl
 00455ED0    mov         ebx,eax
 00455ED2    mov         esi,dword ptr [ebp+8]
 00455ED5    xor         eax,eax
 00455ED7    push        ebp
 00455ED8    push        455F2A
 00455EDD    push        dword ptr fs:[eax]
 00455EE0    mov         dword ptr fs:[eax],esp
 00455EE3    mov         eax,dword ptr [ebp+0C]
 00455EE6    push        eax
 00455EE7    push        esi
 00455EE8    xor         edx,edx
 00455EEA    mov         eax,ebx
 00455EEC    call        TRttiObject.Create
 00455EF1    mov         eax,ebx
 00455EF3    call        TRttiInstanceMethodClassic.GetHandle
 00455EF8    call        TRecordTypeField.AttrData
 00455EFD    mov         dword ptr [esi],eax
 00455EFF    lea         edx,[ebp-8]
 00455F02    mov         eax,esi
 00455F04    call        LazyLoadAttributes
 00455F09    mov         edx,dword ptr [ebp-8]
 00455F0C    lea         eax,[ebx+14]
 00455F0F    call        @IntfCopy
 00455F14    xor         eax,eax
 00455F16    pop         edx
 00455F17    pop         ecx
 00455F18    pop         ecx
 00455F19    mov         dword ptr fs:[eax],edx
 00455F1C    push        455F31
 00455F21    lea         eax,[ebp-8]
 00455F24    call        @IntfClear
 00455F29    ret
>00455F2A    jmp         @HandleFinally
>00455F2F    jmp         00455F21
 00455F31    mov         eax,ebx
 00455F33    cmp         byte ptr [ebp-1],0
>00455F37    je          00455F48
 00455F39    call        @AfterConstruction
 00455F3E    pop         dword ptr fs:[0]
 00455F45    add         esp,0C
 00455F48    mov         eax,ebx
 00455F4A    pop         esi
 00455F4B    pop         ebx
 00455F4C    pop         ecx
 00455F4D    pop         ecx
 00455F4E    pop         ebp
 00455F4F    ret         8
*}
end;

//00455F54
procedure TRttiIndexedProperty.GetAccessors;
begin
{*
 00455F54    push        ebp
 00455F55    mov         ebp,esp
 00455F57    push        0
 00455F59    push        ebx
 00455F5A    push        esi
 00455F5B    push        edi
 00455F5C    mov         esi,eax
 00455F5E    xor         eax,eax
 00455F60    push        ebp
 00455F61    push        456038
 00455F66    push        dword ptr fs:[eax]
 00455F69    mov         dword ptr fs:[eax],esp
 00455F6C    mov         eax,esi
 00455F6E    call        TRttiInstanceMethodClassic.GetHandle
 00455F73    cmp         word ptr [eax+1],0FFFF
>00455F79    jne         00455F8E
 00455F7B    mov         eax,esi
 00455F7D    call        TRttiInstanceMethodClassic.GetHandle
 00455F82    cmp         word ptr [eax+3],0FFFF
>00455F88    je          0045601C
 00455F8E    mov         eax,esi
 00455F90    call        TRttiMember.GetParent
 00455F95    lea         edx,[ebp-4]
 00455F98    mov         ecx,dword ptr [eax]
 00455F9A    call        dword ptr [ecx+44]
 00455F9D    xor         ebx,ebx
 00455F9F    xor         edi,edi
>00455FA1    jmp         00455FCA
 00455FA3    mov         eax,dword ptr [ebp-4]
 00455FA6    mov         eax,dword ptr [eax+ebx*4]
 00455FA9    mov         edx,dword ptr ds:[44A2D8];TRttiInstanceMethodEx
 00455FAF    call        @IsClass
 00455FB4    test        al,al
>00455FB6    je          00455FC9
 00455FB8    cmp         edi,ebx
>00455FBA    je          00455FC8
 00455FBC    mov         eax,dword ptr [ebp-4]
 00455FBF    mov         edx,dword ptr [ebp-4]
 00455FC2    mov         edx,dword ptr [edx+ebx*4]
 00455FC5    mov         dword ptr [eax+edi*4],edx
 00455FC8    inc         edi
 00455FC9    inc         ebx
 00455FCA    mov         eax,dword ptr [ebp-4]
 00455FCD    call        0040ABA8
 00455FD2    cmp         ebx,eax
>00455FD4    jl          00455FA3
 00455FD6    mov         eax,esi
 00455FD8    call        TRttiInstanceMethodClassic.GetHandle
 00455FDD    cmp         word ptr [eax+1],0FFFF
>00455FE3    je          00455FF9
 00455FE5    mov         eax,esi
 00455FE7    call        TRttiInstanceMethodClassic.GetHandle
 00455FEC    movzx       eax,word ptr [eax+1]
 00455FF0    mov         edx,dword ptr [ebp-4]
 00455FF3    mov         eax,dword ptr [edx+eax*4]
 00455FF6    mov         dword ptr [esi+18],eax
 00455FF9    mov         eax,esi
 00455FFB    call        TRttiInstanceMethodClassic.GetHandle
 00456000    cmp         word ptr [eax+3],0FFFF
>00456006    je          0045601C
 00456008    mov         eax,esi
 0045600A    call        TRttiInstanceMethodClassic.GetHandle
 0045600F    movzx       eax,word ptr [eax+3]
 00456013    mov         edx,dword ptr [ebp-4]
 00456016    mov         eax,dword ptr [edx+eax*4]
 00456019    mov         dword ptr [esi+1C],eax
 0045601C    xor         eax,eax
 0045601E    pop         edx
 0045601F    pop         ecx
 00456020    pop         ecx
 00456021    mov         dword ptr fs:[eax],edx
 00456024    push        45603F
 00456029    lea         eax,[ebp-4]
 0045602C    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00456032    call        @DynArrayClear
 00456037    ret
>00456038    jmp         @HandleFinally
>0045603D    jmp         00456029
 0045603F    pop         edi
 00456040    pop         esi
 00456041    pop         ebx
 00456042    pop         ecx
 00456043    pop         ebp
 00456044    ret
*}
end;

//00456048
function TRttiIndexedProperty.GetReadMethod:TRttiMethod;
begin
{*
 00456048    push        ebx
 00456049    mov         ebx,eax
 0045604B    mov         eax,ebx
 0045604D    call        TRttiInstanceMethodClassic.GetHandle
 00456052    cmp         word ptr [eax+1],0FFFF
>00456058    jne         0045605E
 0045605A    xor         eax,eax
 0045605C    pop         ebx
 0045605D    ret
 0045605E    cmp         dword ptr [ebx+18],0
>00456062    jne         0045606B
 00456064    mov         eax,ebx
 00456066    call        TRttiIndexedProperty.GetAccessors
 0045606B    mov         eax,dword ptr [ebx+18]
 0045606E    pop         ebx
 0045606F    ret
*}
end;

//00456070
function TRttiIndexedProperty.GetWriteMethod:TRttiMethod;
begin
{*
 00456070    push        ebx
 00456071    mov         ebx,eax
 00456073    mov         eax,ebx
 00456075    call        TRttiInstanceMethodClassic.GetHandle
 0045607A    cmp         word ptr [eax+3],0FFFF
>00456080    jne         00456086
 00456082    xor         eax,eax
 00456084    pop         ebx
 00456085    ret
 00456086    cmp         dword ptr [ebx+1C],0
>0045608A    jne         00456093
 0045608C    mov         eax,ebx
 0045608E    call        TRttiIndexedProperty.GetAccessors
 00456093    mov         eax,dword ptr [ebx+1C]
 00456096    pop         ebx
 00456097    ret
*}
end;

//00456098
function TRttiInstanceMethodClassic.GetHandle:PVmtMethodEntry;
begin
{*
 00456098    mov         eax,dword ptr [eax+4]
 0045609B    ret
*}
end;

//0045609C
function TRttiIndexedProperty.GetIsDefault:Boolean;
begin
{*
 0045609C    push        ebx
 0045609D    mov         ebx,eax
 0045609F    mov         eax,ebx
 004560A1    call        TRttiInstanceMethodClassic.GetHandle
 004560A6    test        byte ptr [eax],1
 004560A9    setne       al
 004560AC    pop         ebx
 004560AD    ret
*}
end;

//004560B0
function TRttiIndexedProperty.GetIsReadable:Boolean;
begin
{*
 004560B0    push        ebx
 004560B1    mov         ebx,eax
 004560B3    mov         eax,ebx
 004560B5    call        TRttiInstanceMethodClassic.GetHandle
 004560BA    cmp         word ptr [eax+1],0FFFF
 004560C0    setne       al
 004560C3    pop         ebx
 004560C4    ret
*}
end;

//004560C8
function TRttiIndexedProperty.GetIsWritable:Boolean;
begin
{*
 004560C8    push        ebx
 004560C9    mov         ebx,eax
 004560CB    mov         eax,ebx
 004560CD    call        TRttiInstanceMethodClassic.GetHandle
 004560D2    cmp         word ptr [eax+3],0FFFF
 004560D8    setne       al
 004560DB    pop         ebx
 004560DC    ret
*}
end;

//004560E0
function TRttiInstanceMethodClassic.GetName:UnicodeString;
begin
{*
 004560E0    push        ebx
 004560E1    push        esi
 004560E2    push        ecx
 004560E3    mov         esi,edx
 004560E5    mov         ebx,eax
 004560E7    mov         eax,ebx
 004560E9    call        TRttiInstanceMethodClassic.GetHandle
 004560EE    call        TVmtMethodEntry.NameFld
 004560F3    mov         dword ptr [esp],eax
 004560F6    mov         eax,esp
 004560F8    mov         edx,esi
 004560FA    call        TTypeInfoFieldAccessor.ToString
 004560FF    pop         edx
 00456100    pop         esi
 00456101    pop         ebx
 00456102    ret
*}
end;

//0045618C
procedure sub_0045618C;
begin
{*
 0045618C    push        ebx
 0045618D    mov         ebx,eax
 0045618F    mov         eax,ebx
 00456191    call        TRttiInstanceMethodClassic.GetHandle
 00456196    movzx       eax,byte ptr [eax]
 00456199    mov         ecx,2
 0045619E    mov         edx,1
 004561A3    call        GetBitField
 004561A8    pop         ebx
 004561A9    ret
*}
end;

//004561AC
function TRttiIndexedProperty.ToString:string;
begin
{*
 004561AC    push        ebp
 004561AD    mov         ebp,esp
 004561AF    mov         ecx,4
 004561B4    push        0
 004561B6    push        0
 004561B8    dec         ecx
>004561B9    jne         004561B4
 004561BB    push        ecx
 004561BC    push        ebx
 004561BD    push        esi
 004561BE    push        edi
 004561BF    mov         ebx,edx
 004561C1    mov         esi,eax
 004561C3    xor         eax,eax
 004561C5    push        ebp
 004561C6    push        45638C
 004561CB    push        dword ptr fs:[eax]
 004561CE    mov         dword ptr fs:[eax],esp
 004561D1    push        4563A8;'property '
 004561D6    lea         edx,[ebp-0C]
 004561D9    mov         eax,esi
 004561DB    mov         ecx,dword ptr [eax]
 004561DD    call        dword ptr [ecx+8]
 004561E0    push        dword ptr [ebp-0C]
 004561E3    push        4563C8;'['
 004561E8    mov         eax,ebx
 004561EA    mov         edx,3
 004561EF    call        @UStrCatN
 004561F4    mov         eax,esi
 004561F6    call        TRttiIndexedProperty.GetReadMethod
 004561FB    mov         dword ptr [ebp-8],eax
 004561FE    cmp         dword ptr [ebp-8],0
>00456202    je          00456279
 00456204    lea         edx,[ebp-4]
 00456207    mov         eax,dword ptr [ebp-8]
 0045620A    mov         ecx,dword ptr [eax]
 0045620C    call        dword ptr [ecx+38]
 0045620F    mov         eax,dword ptr [ebp-4]
 00456212    test        eax,eax;{@DynArrayLength}
>00456214    je          0045621B
 00456216    sub         eax,4
 00456219    mov         eax,dword ptr [eax]
 0045621B    mov         esi,eax
 0045621D    sub         esi,2
 00456220    test        esi,esi
>00456222    jl          0045624F
 00456224    inc         esi
 00456225    xor         edi,edi
 00456227    push        dword ptr [ebx]
 00456229    mov         eax,dword ptr [ebp-4]
 0045622C    mov         eax,dword ptr [eax+edi*4]
 0045622F    lea         edx,[ebp-10]
 00456232    mov         ecx,dword ptr [eax]
 00456234    call        dword ptr [ecx-24]
 00456237    push        dword ptr [ebp-10]
 0045623A    push        4563D8;', '
 0045623F    mov         eax,ebx
 00456241    mov         edx,3;{@UStrCatN}
 00456246    call        @UStrCatN
 0045624B    inc         edi
 0045624C    dec         esi
>0045624D    jne         00456227
 0045624F    mov         esi,dword ptr [ebp-4]
 00456252    test        esi,esi
>00456254    je          0045625B
 00456256    sub         esi,4
 00456259    mov         esi,dword ptr [esi]
 0045625B    mov         eax,dword ptr [ebp-4]
 0045625E    mov         eax,dword ptr [eax+esi*4-4]
 00456262    lea         edx,[ebp-14]
 00456265    mov         ecx,dword ptr [eax]
 00456267    call        dword ptr [ecx-24]
 0045626A    mov         edx,dword ptr [ebp-14]
 0045626D    mov         eax,ebx
 0045626F    call        @UStrCat
>00456274    jmp         0045630A
 00456279    mov         eax,esi
 0045627B    call        TRttiIndexedProperty.GetWriteMethod
 00456280    mov         dword ptr [ebp-8],eax
 00456283    cmp         dword ptr [ebp-8],0
>00456287    jne         0045629A
 00456289    mov         eax,ebx
 0045628B    mov         edx,4563EC;']'
 00456290    call        @UStrCat
>00456295    jmp         00456363
 0045629A    lea         edx,[ebp-4]
 0045629D    mov         eax,dword ptr [ebp-8]
 004562A0    mov         ecx,dword ptr [eax];{@DynArrayLength}
 004562A2    call        dword ptr [ecx+38]
 004562A5    mov         eax,dword ptr [ebp-4]
 004562A8    test        eax,eax
>004562AA    je          004562B1
 004562AC    sub         eax,4
 004562AF    mov         eax,dword ptr [eax]
 004562B1    mov         esi,eax
 004562B3    sub         esi,3
 004562B6    test        esi,esi
>004562B8    jl          004562E5
 004562BA    inc         esi
 004562BB    xor         edi,edi
 004562BD    push        dword ptr [ebx]
 004562BF    mov         eax,dword ptr [ebp-4]
 004562C2    mov         eax,dword ptr [eax+edi*4]
 004562C5    lea         edx,[ebp-18]
 004562C8    mov         ecx,dword ptr [eax]
 004562CA    call        dword ptr [ecx-24]
 004562CD    push        dword ptr [ebp-18]
 004562D0    push        4563D8;', '
 004562D5    mov         eax,ebx
 004562D7    mov         edx,3
 004562DC    call        @UStrCatN
 004562E1    inc         edi
 004562E2    dec         esi
>004562E3    jne         004562BD
 004562E5    mov         esi,dword ptr [ebp-4]
 004562E8    test        esi,esi
>004562EA    je          004562F1
 004562EC    sub         esi,4
 004562EF    mov         esi,dword ptr [esi]
 004562F1    mov         eax,dword ptr [ebp-4]
 004562F4    mov         eax,dword ptr [eax+esi*4-8];{@UStrCat}
 004562F8    lea         edx,[ebp-1C]
 004562FB    mov         ecx,dword ptr [eax]
 004562FD    call        dword ptr [ecx-24]
 00456300    mov         edx,dword ptr [ebp-1C];{@UStrCat}
 00456303    mov         eax,ebx
 00456305    call        @UStrCat
 0045630A    mov         eax,ebx
 0045630C    mov         edx,4563FC;']: '
 00456311    call        @UStrCat
 00456316    mov         eax,dword ptr [ebp-8]
 00456319    mov         edx,dword ptr [eax]
 0045631B    call        dword ptr [edx+18]
 0045631E    test        eax,eax
>00456320    je          0045633E
 00456322    mov         eax,dword ptr [ebp-8]
 00456325    mov         edx,dword ptr [eax]
 00456327    call        dword ptr [edx+18]
 0045632A    lea         edx,[ebp-20]
 0045632D    mov         ecx,dword ptr [eax]
 0045632F    call        dword ptr [ecx-24]
 00456332    mov         edx,dword ptr [ebp-20]
 00456335    mov         eax,ebx
 00456337    call        @UStrCat
>0045633C    jmp         00456363
 0045633E    mov         esi,dword ptr [ebp-4]
 00456341    test        esi,esi
>00456343    je          0045634A
 00456345    sub         esi,4
 00456348    mov         esi,dword ptr [esi]
 0045634A    mov         eax,dword ptr [ebp-4];{@UStrCat}
 0045634D    mov         eax,dword ptr [eax+esi*4-4]
 00456351    lea         edx,[ebp-24]
 00456354    mov         ecx,dword ptr [eax]
 00456356    call        dword ptr [ecx-24]
 00456359    mov         edx,dword ptr [ebp-24]
 0045635C    mov         eax,ebx
 0045635E    call        @UStrCat
 00456363    xor         eax,eax
 00456365    pop         edx
 00456366    pop         ecx
 00456367    pop         ecx
 00456368    mov         dword ptr fs:[eax],edx
 0045636B    push        456393;{TArray<System.Rtti.TRttiParameter>}
 00456370    lea         eax,[ebp-24]
 00456373    mov         edx,7
 00456378    call        @UStrArrayClr
 0045637D    lea         eax,[ebp-4]
 00456380    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 00456386    call        @DynArrayClear
 0045638B    ret
>0045638C    jmp         @HandleFinally
>00456391    jmp         00456370
 00456393    pop         edi
 00456394    pop         esi
 00456395    pop         ebx
 00456396    mov         esp,ebp
 00456398    pop         ebp
 00456399    ret
*}
end;

Initialization
//0079C5E4
{*
 0079C5E4    push        ebp
 0079C5E5    mov         ebp,esp
 0079C5E7    xor         eax,eax
 0079C5E9    push        ebp
 0079C5EA    push        79C627
 0079C5EF    push        dword ptr fs:[eax]
 0079C5F2    mov         dword ptr fs:[eax],esp
 0079C5F5    sub         dword ptr ds:[7C9F84],1
>0079C5FC    jae         0079C619
 0079C5FE    mov         eax,43E838;OnUnloadModule
 0079C603    call        AddModuleUnloadProc
 0079C608    mov         dl,1
 0079C60A    mov         eax,[00401728];TObject
 0079C60F    call        TObject.Create;TObject.Create
 0079C614    mov         [007C9F9C],eax;gvar_007C9F9C:TObject
 0079C619    xor         eax,eax
 0079C61B    pop         edx
 0079C61C    pop         ecx
 0079C61D    pop         ecx
 0079C61E    mov         dword ptr fs:[eax],edx
 0079C621    push        79C62E
 0079C626    ret
>0079C627    jmp         @HandleFinally
>0079C62C    jmp         0079C626
 0079C62E    pop         ebp
 0079C62F    ret
*}
Finalization
//00456404
{*
 00456404    push        ebp
 00456405    mov         ebp,esp
 00456407    xor         eax,eax
 00456409    push        ebp
 0045640A    push        456453
 0045640F    push        dword ptr fs:[eax]
 00456412    mov         dword ptr fs:[eax],esp
 00456415    inc         dword ptr ds:[7C9F84]
>0045641B    jne         00456445
 0045641D    mov         eax,[007C9F9C];gvar_007C9F9C:TObject
 00456422    call        TObject.Free
 00456427    mov         eax,43E838;OnUnloadModule
 0045642C    call        RemoveModuleUnloadProc
 00456431    mov         eax,[007C9F88]
 00456436    call        TObject.Free
 0045643B    mov         eax,7C9F90
 00456440    call        @IntfClear
 00456445    xor         eax,eax
 00456447    pop         edx
 00456448    pop         ecx
 00456449    pop         ecx
 0045644A    mov         dword ptr fs:[eax],edx
 0045644D    push        45645A
 00456452    ret
>00456453    jmp         @HandleFinally
>00456458    jmp         00456452
 0045645A    pop         ebp
 0045645B    ret
*}
end.