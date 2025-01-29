//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit17;

interface

uses
  SysUtils, Classes, System.Generics.Defaults, System.Generics.Collections, System.TypInfo, System.Generics.Collections, System.Rtti, System.Generics.Defaults;

type
  TComparer<System.Rtti.TMethodImplementation.TParamLoc> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TMethodImplementation.TParamLoc>.Default(?:?);//0045B178
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.arrayofT = array of TPair<System.Pointer,System.Rtti.TRttiObject>;
//elSize = 8;
  TCollectionNotifyEvent<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>> = procedure(Sender:TObject; const Item:TPair<System.Pointer,System.Rtti.TRttiObject>; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.TEnumerator = class(TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>)
  published
    function Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.TEnumerator.MoveNext:Boolean;//0045B4AC
    constructor sub_0045B468(AList:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>);//0045B468
  public
    FList:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//0045B44C
    procedure v4; virtual;//v4//0045B460
  end;
  TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>> = class(TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>)
  published
    procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Add(Value:TPair<System.Pointer,System.Rtti.TRttiObject>);//0045B3D8
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Error(Msg:string; Data:NativeInt; ?:?);//0045B3A0
    procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator;//0045B400
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray(?:?);//0045B3EC
    constructor sub_0045B2A4(AComparer:IComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>);//0045B2A4
    constructor sub_0045B22C;//0045B22C
    destructor Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy();//0045B354
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//f10
    FArrayManager:TArrayManager<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//f18
    FItems:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//f28
    destructor Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy(); virtual;//0045B354
    procedure v0; virtual;//v0//0045B20C
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray(?:?); virtual;//v4//0045B3EC
    //procedure v8(?:?); virtual;//v8//0045B214
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045B3A0
  end;
  TList<System.Pointer>.arrayofT = array of Pointer;
//elSize = 4;
  TList<System.Pointer>.TEnumerator = class(TEnumerator<System.Pointer>)
  published
    function Pointer>.TEnumerator.MoveNext:Boolean;//0045B7CC
    constructor sub_0045B788(AList:TList<System.Pointer>);//0045B788
  public
    FList:TList<System.Pointer>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0045B778
    procedure v4; virtual;//v4//0045B780
  end;
  TList<System.Pointer> = class(TEnumerable<System.Pointer>)
  published
    procedure Pointer>.Add(Value:Pointer);//0045B728
    //procedure Pointer>.Error(Msg:string; Data:NativeInt; ?:?);//0045B6F0
    procedure Pointer>.GetEnumerator;//0045B74C
    //procedure Pointer>.ToArray(?:?);//0045B738
    constructor sub_0045B5F4(AComparer:IComparer<System.Pointer>);//0045B5F4
    constructor sub_0045B57C;//0045B57C
    destructor Pointer>.Destroy();//0045B6A4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Pointer>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Pointer>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Pointer>;//f10
    FArrayManager:TArrayManager<System.Pointer>;//f18
    FItems:TList<System.Pointer>.arrayofT;//f20
    FComparer:IComparer<System.Pointer>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Pointer>;//f28
    destructor Pointer>.Destroy(); virtual;//0045B6A4
    procedure v0; virtual;//v0//0045B55C
    //procedure Pointer>.ToArray(?:?); virtual;//v4//0045B738
    //procedure v8(?:?); virtual;//v8//0045B564
    //procedure Pointer>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045B6F0
  end;
  TList<System.Rtti.TRttiObject>.arrayofT = array of TRttiObject;
//elSize = 4;
  TList<System.Rtti.TRttiObject>.TEnumerator = class(TEnumerator<System.Rtti.TRttiObject>)
  published
    function Rtti.TRttiObject>.TEnumerator.MoveNext:Boolean;//0045BACC
    constructor sub_0045BA88(AList:TList<System.Rtti.TRttiObject>);//0045BA88
  public
    FList:TList<System.Rtti.TRttiObject>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0045BA78
    procedure v4; virtual;//v4//0045BA80
  end;
  TList<System.Rtti.TRttiObject> = class(TEnumerable<System.Rtti.TRttiObject>)
  published
    procedure Rtti.TRttiObject>.Add(Value:TRttiObject);//0045BA28
    //procedure Rtti.TRttiObject>.Error(Msg:string; Data:NativeInt; ?:?);//0045B9F0
    procedure Rtti.TRttiObject>.GetEnumerator;//0045BA4C
    //procedure Rtti.TRttiObject>.ToArray(?:?);//0045BA38
    constructor sub_0045B8F4(AComparer:IComparer<System.Rtti.TRttiObject>);//0045B8F4
    constructor sub_0045B87C;//0045B87C
    destructor Rtti.TRttiObject>.Destroy();//0045B9A4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Rtti.TRttiObject>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TRttiObject>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiObject>;//f10
    FArrayManager:TArrayManager<System.Rtti.TRttiObject>;//f18
    FItems:TList<System.Rtti.TRttiObject>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TRttiObject>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TRttiObject>;//f28
    destructor Rtti.TRttiObject>.Destroy(); virtual;//0045B9A4
    procedure v0; virtual;//v0//0045B85C
    //procedure Rtti.TRttiObject>.ToArray(?:?); virtual;//v4//0045BA38
    //procedure v8(?:?); virtual;//v8//0045B864
    //procedure Rtti.TRttiObject>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045B9F0
  end;
  TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.arrayofT = array of TPair<System.TypInfo.PTypeInfo,System.string>;
//elSize = 8;
  TCollectionNotifyEvent<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>> = procedure(Sender:TObject; const Item:TPair<System.TypInfo.PTypeInfo,System.string>; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.TEnumerator = class(TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>)
  published
    function Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.TEnumerator.MoveNext:Boolean;//0045C32C
    constructor sub_0045C2E8(AList:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>);//0045C2E8
  public
    FList:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//0045C2CC
    procedure v4; virtual;//v4//0045C2E0
  end;
  TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>> = class(TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>)
  published
    procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Add(Value:TPair<System.TypInfo.PTypeInfo,System.string>);//0045C20C
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Error(Msg:string; Data:NativeInt; ?:?);//0045C1D4
    procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator;//0045C234
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray(?:?);//0045C220
    constructor sub_0045C0D8(AComparer:IComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>);//0045C0D8
    constructor sub_0045C060;//0045C060
    destructor Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy();//0045C188
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//f10
    FArrayManager:TArrayManager<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//f18
    FItems:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//f28
    destructor Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy(); virtual;//0045C188
    procedure v0; virtual;//v0//0045C040
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray(?:?); virtual;//v4//0045C220
    //procedure v8(?:?); virtual;//v8//0045C048
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045C1D4
  end;
  TList<System.TypInfo.PTypeInfo>.arrayofT = array of PTypeInfo;
//elSize = 4;
  TList<System.TypInfo.PTypeInfo>.TEnumerator = class(TEnumerator<System.TypInfo.PTypeInfo>)
  published
    function TypInfo.PTypeInfo>.TEnumerator.MoveNext:Boolean;//0045C64C
    constructor sub_0045C608(AList:TList<System.TypInfo.PTypeInfo>);//0045C608
  public
    FList:TList<System.TypInfo.PTypeInfo>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0045C5F8
    procedure v4; virtual;//v4//0045C600
  end;
  TList<System.TypInfo.PTypeInfo> = class(TEnumerable<System.TypInfo.PTypeInfo>)
  published
    procedure TypInfo.PTypeInfo>.Add(Value:PTypeInfo);//0045C5A8
    //procedure TypInfo.PTypeInfo>.Error(Msg:string; Data:NativeInt; ?:?);//0045C570
    procedure TypInfo.PTypeInfo>.GetEnumerator;//0045C5CC
    //procedure TypInfo.PTypeInfo>.ToArray(?:?);//0045C5B8
    constructor sub_0045C474(AComparer:IComparer<System.TypInfo.PTypeInfo>);//0045C474
    constructor sub_0045C3FC;//0045C3FC
    destructor TypInfo.PTypeInfo>.Destroy();//0045C524
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.TypInfo.PTypeInfo>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.TypInfo.PTypeInfo>;//fC
    FOnNotify:TCollectionNotifyEvent<System.TypInfo.PTypeInfo>;//f10
    FArrayManager:TArrayManager<System.TypInfo.PTypeInfo>;//f18
    FItems:TList<System.TypInfo.PTypeInfo>.arrayofT;//f20
    FComparer:IComparer<System.TypInfo.PTypeInfo>;//f24
    FOnNotify:TCollectionNotifyEvent<System.TypInfo.PTypeInfo>;//f28
    destructor TypInfo.PTypeInfo>.Destroy(); virtual;//0045C524
    procedure v0; virtual;//v0//0045C3DC
    //procedure TypInfo.PTypeInfo>.ToArray(?:?); virtual;//v4//0045C5B8
    //procedure v8(?:?); virtual;//v8//0045C3E4
    //procedure TypInfo.PTypeInfo>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045C570
  end;
  TList<System.string>.arrayofT = array of string;
//elSize = 4
//varType equivalent: var;
  TList<System.string>.TEnumerator = class(TEnumerator<System.string>)
  published
    function string>.TEnumerator.MoveNext:Boolean;//0045C9AC
    constructor sub_0045C968(AList:TList<System.string>);//0045C968
  public
    FList:TList<System.string>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//0045C94C
    procedure v4; virtual;//v4//0045C960
  end;
  TList<System.string> = class(TEnumerable<System.string>)
  published
    procedure string>.Add(Value:string);//0045C8A8
    //procedure string>.Error(Msg:string; Data:NativeInt; ?:?);//0045C870
    procedure string>.GetEnumerator;//0045C8D8
    //procedure string>.ToArray(?:?);//0045C8C4
    constructor sub_0045C774(AComparer:IComparer<System.string>);//0045C774
    constructor sub_0045C6FC;//0045C6FC
    destructor string>.Destroy();//0045C824
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.string>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.string>;//fC
    FOnNotify:TCollectionNotifyEvent<System.string>;//f10
    FArrayManager:TArrayManager<System.string>;//f18
    FItems:TList<System.string>.arrayofT;//f20
    FComparer:IComparer<System.string>;//f24
    FOnNotify:TCollectionNotifyEvent<System.string>;//f28
    destructor string>.Destroy(); virtual;//0045C824
    procedure v0; virtual;//v0//0045C6DC
    //procedure string>.ToArray(?:?); virtual;//v4//0045C8C4
    //procedure v8(?:?); virtual;//v8//0045C6E4
    //procedure string>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045C870
  end;
  TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.arrayofT = array of TPair<System.string,System.TypInfo.PTypeInfo>;
//elSize = 8;
  TCollectionNotifyEvent<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>> = procedure(Sender:TObject; const Item:TPair<System.string,System.TypInfo.PTypeInfo>; Action:TCollectionNotification) of object;;
  TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.TEnumerator = class(TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>)
  published
    function Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.TEnumerator.MoveNext:Boolean;//0045CD2C
    constructor sub_0045CCE8(AList:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>);//0045CCE8
  public
    FList:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//0045CCCC
    procedure v4; virtual;//v4//0045CCE0
  end;
  TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>> = class(TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>)
  published
    procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Add(Value:TPair<System.string,System.TypInfo.PTypeInfo>);//0045CC0C
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Error(Msg:string; Data:NativeInt; ?:?);//0045CBD4
    procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator;//0045CC34
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray(?:?);//0045CC20
    constructor sub_0045CAD8(AComparer:IComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>);//0045CAD8
    constructor sub_0045CA60;//0045CA60
    destructor Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy();//0045CB88
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//f10
    FArrayManager:TArrayManager<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//f18
    FItems:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.arrayofT;//f20
    FComparer:IComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//f28
    destructor Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy(); virtual;//0045CB88
    procedure v0; virtual;//v0//0045CA40
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray(?:?); virtual;//v4//0045CC20
    //procedure v8(?:?); virtual;//v8//0045CA48
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0045CBD4
  end;
  TDelegatedComparer<System.Rtti.TRttiPackage> = class(TComparer<System.Rtti.TRttiPackage>)
  published
    procedure Rtti.TRttiPackage>.Compare(Left:TRttiPackage; Right:TRttiPackage);//0045CE54
    constructor sub_0045CE18(ACompare:TComparison<System.Rtti.TRttiPackage>);//0045CE18
  public
    FCompare:TComparison<System.Rtti.TRttiPackage>;//f10
    procedure Rtti.TRttiPackage>.Compare(Left:TRttiPackage; Right:TRttiPackage); virtual;//v0//0045CE54
  end;
  TComparer<System.TCustomAttribute> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TCustomAttribute>.Default(?:?);//0045CEE4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TRttiProperty> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiProperty>.Default(?:?);//0045CF38
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TRttiMethod> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiMethod>.Default(?:?);//0045CF58
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TRttiField> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiField>.Default(?:?);//0045CF78
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TRttiManagedField> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiManagedField>.Default(?:?);//0045CF98
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Default(?:?);//0045CFEC
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Pointer> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Pointer>.Default(?:?);//0045D00C
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TRttiObject> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TRttiObject>.Default(?:?);//0045D02C
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Default(?:?);//0045D250
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.TypInfo.PTypeInfo> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TypInfo.PTypeInfo>.Default(?:?);//0045D270
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.string> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure string>.Default(?:?);//0045D290
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Default(?:?);//0045D2B0
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TOrdType = (otSByte, otUByte, otSWord, otUWord, otSLong, otULong);
  TFloatType = (ftSingle, ftDouble, ftExtended, ftComp, ftCurr);
  TMemberVisibility = (mvPrivate, mvProtected, mvPublic, mvPublished);
  TMethodKind = (mkProcedure, mkFunction, mkConstructor, mkDestructor, mkClassProcedure, mkClassFunction, mkClassConstructor, mkClassDestructor, mkOperatorOverload, mkSafeProcedure, mkSafeFunction);
  TParamFlag = (pfVar, pfConst, pfArray, pfAddress, pfReference, pfOut, pfResult);
  TParamFlags = set of TParamFlag;
  TIntfFlag = (ifHasGuid, ifDispInterface, ifDispatch);
  TIntfFlags = set of TIntfFlag;
  TIntfFlagsBase = set of TIntfFlag;
  TTypeInfoFieldAccessor = TTypeInfoFieldAccessor = record//size=4
FData:PByte;//f0
end;
//Methods:
SetData(Data:PByte);//0079EC18
&op_Equality(Left:TTypeInfoFieldAccessor;Right:TTypeInfoFieldAccessor):Boolean;//0079EC18
UTF8Length:Integer;//0079EC18
ToString:string;//00467F44
ToShortUTF8String:ShortString;//0079EC18
ToByteArray:TArray<System.Byte>;//0079EC18
Tail:PByte;//0079EC18;
  TCallConv = (ccReg, ccCdecl, ccPascal, ccStdCall, ccSafeCall);
  TTypeInfo = TTypeInfo = record//size=101
Kind:TTypeKind;//f0
Name:TSymbolName;//f1
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//00467F94
TypeData:PTypeData;//0079EC18;
  TAttrData = TAttrData = record//size=2
Len:Word;//f0
end;;
  TFieldExEntry = TFieldExEntry = record//size=109
Flags:Byte;//f0
TypeRef:PPTypeInfo;//f1
Offset:Cardinal;//f5
Name:TSymbolName;//f9
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//00467FAC
AttrData:PAttrData;//00467FC4;
  TVmtFieldEntry = TVmtFieldEntry = record//size=106
FieldOffset:Cardinal;//f0
TypeIndex:Word;//f4
Name:TSymbolName;//f6
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//00467FEC
AttrData:PAttrData;//00468004;
  TVmtFieldClassTab = TVmtFieldClassTab = record//size=40002
Count:Word;//f0
ClassRef:?;//f2
end;;
  TVmtMethodEntry = TVmtMethodEntry = record//size=106
Len:Word;//f0
CodeAddress:Pointer;//f2
Name:TSymbolName;//f6
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//0046802C
Tail:PVmtMethodEntryTail;//00468044;
  TVmtMethodEntryTail = TVmtMethodEntryTail = record//size=9
Version:Byte;//f0
CC:TCallConv;//f1
ResultType:PPTypeInfo;//f2
ParOff:Word;//f6
ParamCount:Byte;//f8
end;;
  TVmtMethodExEntry = TVmtMethodExEntry = record//size=8
Entry:PVmtMethodEntry;//f0
Flags:Word;//f4
VirtualIndex:SmallInt;//f6
end;;
  TArrayPropInfo = TArrayPropInfo = record//size=105
Flags:Byte;//f0
ReadIndex:Word;//f1
WriteIndex:Word;//f3
Name:TSymbolName;//f5
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//0046806C
AttrData:PAttrData;//00468084;
  TManagedField = TManagedField = record//size=8
TypeRef:PPTypeInfo;//f0
FldOffset:NativeInt;//f4
end;;
  TProcedureParam = TProcedureParam = record//size=105
Flags:Byte;//f0
ParamType:PPTypeInfo;//f1
Name:TSymbolName;//f5
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//004680AC
AttrData:PAttrData;//004680C4;
  TProcedureSignature = TProcedureSignature = record//size=7
Flags:Byte;//f0
CC:TCallConv;//f1
ResultType:PPTypeInfo;//f2
ParamCount:Byte;//f6
end;;
  TIntfMethodTable = TIntfMethodTable = record//size=4
Count:Word;//f0
RttiCount:Word;//f2
end;;
  TIntfMethodEntry = TIntfMethodEntry = record//size=100
Name:TSymbolName;//f0
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//004680EC
Tail:PIntfMethodEntryTail;//004680F8;
  TIntfMethodEntryTail = TIntfMethodEntryTail = record//size=3
Kind:Byte;//f0
CC:TCallConv;//f1
ParamCount:Byte;//f2
end;;
  TArrayTypeData = TArrayTypeData = record//size=40D
Size:Integer;//f0
ElCount:Integer;//f4
ElType:PPTypeInfo;//f8
DimCount:Byte;//fC
Dims:?;//fD
end;;
  TRecordTypeField = TRecordTypeField = record//size=109
Field:TManagedField;//f0
Flags:Byte;//f8
Name:TSymbolName;//f9
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//00468120
AttrData:PAttrData;//00468138;
  TTypeData = TTypeData = record//size=40D
AttrData:TAttrData;//f0
CodePage:Word;//f0
OrdType:TOrdType;//f0
MinValue:Integer;//f1
MaxValue:Integer;//f5
BaseType:PPTypeInfo;//f9
NameList:TSymbolName;//fD
CompType:PPTypeInfo;//f1
FloatType:TFloatType;//f0
MaxLength:Byte;//f0
ClassType:TClass;//f0
ParentInfo:PPTypeInfo;//f4
PropCount:SmallInt;//f8
UnitName:TSymbolName;//fA
MethodKind:TMethodKind;//f0
ParamCount:Byte;//f1
ParamList:?;//f2
ProcSig:PProcedureSignature;//f0
ProcAttrData:TAttrData;//f4
IntfParent:PPTypeInfo;//f0
IntfFlags:TIntfFlagsBase;//f4
Guid:TGUID;//f5
IntfUnit:TSymbolName;//f15
MinInt64Value:Int64;//f0
MaxInt64Value:Int64;//f8
Int64AttrData:TAttrData;//f10
elSize:Integer;//f0
elType:PPTypeInfo;//f4
varType:Integer;//f8
elType2:PPTypeInfo;//fC
DynUnitName:TSymbolName;//f10
RecSize:Integer;//f0
ManagedFldCount:Integer;//f4
InstanceType:PPTypeInfo;//f0
ClassRefAttrData:TAttrData;//f4
RefType:PPTypeInfo;//f0
PtrAttrData:TAttrData;//f4
ArrayData:TArrayTypeData;//f0
end;
//Methods:
NameListFld:TTypeInfoFieldAccessor;//0079EC18
UnitNameFld:TTypeInfoFieldAccessor;//00468160
IntfUnitFld:TTypeInfoFieldAccessor;//00468178
DynUnitNameFld:TTypeInfoFieldAccessor;//00468190
PropData:PPropData;//004681A8
IntfMethods:PIntfMethodTable;//0079EC18
DynArrElType:PPTypeInfo;//004681D0
DynArrAttrData:PAttrData;//004681F8;
  :TPropData.:1 = :TPropData.:1 = record//size=0;
  TPropData = TPropData = record//size=2
PropCount:Word;//f0
PropList::TPropData.:1;//f2
end;;
  TPropInfo = TPropInfo = record//size=11A
PropType:PPTypeInfo;//f0
GetProc:Pointer;//f4
SetProc:Pointer;//f8
StoredProc:Pointer;//fC
Index:Integer;//f10
Default:Integer;//f14
NameIndex:SmallInt;//f18
Name:TSymbolName;//f1A
end;
//Methods:
NameFld:TTypeInfoFieldAccessor;//00468224
Tail:PPropInfo;//0046823C;
  TPropInfoEx = TPropInfoEx = record//size=7
Flags:Byte;//f0
Info:PPropInfo;//f1
AttrData:TAttrData;//f5
end;;
  :8 = array of Byte;
//elSize = 1
//varType equivalent: varByte;
  TElementAlias = TElementAlias = record//size=8
f0:string;//f0
end;
Name:string;//f0
Value:Integer;//f4
end;;
  TEnumAliasEntry = TEnumAliasEntry = record//size=8
f4:TArray<System.TypInfo.TElementAlias>;//f4
end;
TypeInfo:PTypeInfo;//f0
Aliases:TArray<System.TypInfo.TElementAlias>;//f4
end;;
  TArray<System.TypInfo.TElementAlias> = array of TElementAlias;
//elSize = 8;
  TArray<System.TypInfo.TEnumAliasEntry> = array of TEnumAliasEntry;
//elSize = 8;
  TPropSet<System.string> = class(TObject)
  published
    procedure string>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:string);//0046AA84
    function string>.GetProc(Instance:TObject; PropInfo:PPropInfo):string;//0046A9FC
  end;
  TPropSet<System.WideString> = class(TObject)
  published
    procedure WideString>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:WideString);//0046AB90
    function WideString>.GetProc(Instance:TObject; PropInfo:PPropInfo):WideString;//0046AB08
  end;
  TPropSet<System.Single> = class(TObject)
  published
    procedure Single>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Single);//0046AC98
    function Single>.GetProc(Instance:TObject; PropInfo:PPropInfo):Single;//0046AC14
  end;
  TPropSet<System.Double> = class(TObject)
  published
    procedure Double>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Double);//0046ADA0
    function Double>.GetProc(Instance:TObject; PropInfo:PPropInfo):Double;//0046AD14
  end;
  TPropSet<System.Extended> = class(TObject)
  published
    procedure Extended>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Extended);//0046AEBC
    function Extended>.GetProc(Instance:TObject; PropInfo:PPropInfo):Extended;//0046AE28
  end;
  TPropSet<System.Comp> = class(TObject)
  published
    procedure Comp>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Comp);//0046AFE4
    function Comp>.GetProc(Instance:TObject; PropInfo:PPropInfo):Comp;//0046AF58
  end;
  TPropSet<System.Currency> = class(TObject)
  published
    procedure Currency>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Currency);//0046B0F8
    function Currency>.GetProc(Instance:TObject; PropInfo:PPropInfo):Currency;//0046B06C
  end;
    destructor Rtti.TMethodImplementation.TParamLoc>.Destroy();//0045645C
    function Rtti.TMethodImplementation.TParamLoc>.GetEnumerator:TEnumerator<System.Rtti.TMethodImplementation.TParamLoc>;//00456480
    //procedure Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?);//00456488
    function Rtti.TMethodImplementation.TParamLoc>.MoveNext:Boolean;//00456544
    procedure sub_00456594(?:TList<System.Rtti.TMethodImplementation.TParamLoc>);//00456594
    //procedure sub_004565A0(?:?);//004565A0
    //procedure sub_004565B0(?:?);//004565B0
    procedure sub_004565C0;//004565C0
    //procedure sub_004565C8(?:?);//004565C8
    constructor sub_004565E0;//004565E0
    constructor sub_00456658(AComparer:IComparer<System.Rtti.TMethodImplementation.TParamLoc>);//00456658
    destructor Rtti.TMethodImplementation.TParamLoc>.Destroy();//00456708
    //procedure Rtti.TMethodImplementation.TParamLoc>.Error(Msg:string; Data:NativeInt; ?:?);//00456754
    procedure Rtti.TMethodImplementation.TParamLoc>.Add(Value:TMethodImplementation.TParamLoc);//0045678C
    //procedure Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?);//004567A0
    procedure Rtti.TMethodImplementation.TParamLoc>.GetEnumerator;//004567B4
    //procedure sub_004567C4(?:TList<System.Rtti.TMethodImplementation.TParamLoc>.TEnumerator; ?:?);//004567C4
    //procedure sub_00456814(?:?);//00456814
    procedure sub_00456828;//00456828
    constructor sub_00456830(AList:TList<System.Rtti.TMethodImplementation.TParamLoc>);//00456830
    function Rtti.TMethodImplementation.TParamLoc>.TEnumerator.MoveNext:Boolean;//00456874
    //procedure sub_00456894(?:?; ?:Pointer; ?:?);//00456894
    //procedure sub_0045689C(?:TDictionary<System; ?:?; ?:?);//0045689C
    destructor Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy();//00456938
    function Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;//0045695C
    //procedure Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray(?:?);//00456964
    function Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.MoveNext:Boolean;//00456A20
    procedure sub_00456A28(?:TDictionary<System.Pointer,System.Rtti.TRttiObject>; ?:Integer);//00456A28
    //procedure sub_00456A68(?:?; ?:?);//00456A68
    procedure Pointer,System.Rtti.TRttiObject>.Grow;//00456B98
    function Pointer,System.Rtti.TRttiObject>.GetBucketIndex(const Key:Pointer; HashCode:Integer):Integer;//00456BC0
    function Pointer,System.Rtti.TRttiObject>.Hash(const Key:Pointer):Integer;//00456C6C
    //procedure sub_00456C8C(?:?; ?:?; ?:?; ?:?);//00456C8C
    procedure Pointer,System.Rtti.TRttiObject>.DoAdd(HashCode:Integer; Index:Integer; const Key:Pointer; const Value:TRttiObject);//00456CD4
    //function sub_00456D24(?:TDictionary<System; ?:?):?;//00456D24
    procedure sub_00456E98;//00456E98
    //procedure sub_00456EA0(?:?);//00456EA0
    //procedure sub_00456EB8(?:?);//00456EB8
    constructor sub_00456ED0(ACapacity:Integer; AComparer:IEqualityComparer<System.Pointer>);//00456ED0
    destructor Pointer,System.Rtti.TRttiObject>.Destroy();//00456F88
    procedure Pointer,System.Rtti.TRttiObject>.Add(Key:Pointer; Value:TRttiObject);//00456FC4
    //procedure Pointer,System.Rtti.TRttiObject>.ExtractPair(Key:Pointer; ?:?);//00457028
    procedure Pointer,System.Rtti.TRttiObject>.Clear;//00457078
    function Pointer,System.Rtti.TRttiObject>.TryGetValue(Key:Pointer; Value:TRttiObject):Boolean;//00457144
    //procedure Pointer,System.Rtti.TRttiObject>.ToArray(?:?);//00457184
    procedure Pointer,System.Rtti.TRttiObject>.GetEnumerator;//004571DC
    //procedure sub_004571EC(?:TDictionary<System; ?:?; ?:?);//004571EC
    destructor Pointer>.Destroy();//00457278
    function Pointer>.GetEnumerator:TEnumerator<System.Pointer>;//0045729C
    //procedure Pointer>.ToArray(?:?);//004572A4
    function Pointer>.MoveNext:Boolean;//00457358
    procedure sub_00457368;//00457368
    constructor sub_00457370(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//00457370
    procedure Pointer,System.Rtti.TRttiObject>.TKeyCollection.GetEnumerator;//004573AC
    //procedure Pointer,System.Rtti.TRttiObject>.TKeyCollection.ToArray(?:?);//004573BC
    //function sub_004573D4(?:?):?;//004573D4
    procedure sub_004573E8;//004573E8
    procedure sub_004573F0;//004573F0
    constructor sub_004573F8(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//004573F8
    function Pointer,System.Rtti.TRttiObject>.TKeyEnumerator.MoveNext:Boolean;//0045743C
    //procedure sub_00457474(?:TDictionary<System; ?:?; ?:?);//00457474
    destructor Rtti.TRttiObject>.Destroy();//00457500
    function Rtti.TRttiObject>.GetEnumerator:TEnumerator<System.Rtti.TRttiObject>;//00457524
    //procedure Rtti.TRttiObject>.ToArray(?:?);//0045752C
    function Rtti.TRttiObject>.MoveNext:Boolean;//004575E0
    procedure sub_004575F0;//004575F0
    constructor sub_004575F8(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//004575F8
    procedure Pointer,System.Rtti.TRttiObject>.TValueCollection.GetEnumerator;//00457634
    //procedure Pointer,System.Rtti.TRttiObject>.TValueCollection.ToArray(?:?);//00457644
    //function sub_0045765C(?:?):?;//0045765C
    procedure sub_00457670;//00457670
    procedure sub_00457678;//00457678
    constructor sub_00457680(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//00457680
    function Pointer,System.Rtti.TRttiObject>.TValueEnumerator.MoveNext:Boolean;//004576C4
    //procedure sub_004576FC(?:TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator; ?:?);//004576FC
    //procedure sub_00457724(?:?);//00457724
    procedure sub_00457738;//00457738
    constructor sub_00457740(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);//00457740
    function Pointer,System.Rtti.TRttiObject>.TPairEnumerator.MoveNext:Boolean;//00457784
    //procedure sub_004577BC(?:?);//004577BC
    function From<System.Pointer>:TValue;//004577DC
    function From<System.Rtti.TValue>:TValue;//00457808
    //procedure sub_00457834(?:?; ?:?);//00457834
    //function sub_00457910(?:?):?;//00457910
    function AsType<System.Integer>:Integer;//00457944
    function AsType<System.Boolean>:Boolean;//00457978
    function AsType<System.Extended>:Extended;//004579B0
    function AsType<System.Int64>:Int64;//004579E8
    function AsType<System.IInterface>:IInterface;//00457A60
    function AsType<System.string>:string;//00457A9C
    function Pointer,System.Rtti.TRttiObject>.TPairEnumerator.GetCurrent:TPair<System.Pointer,System.Rtti.TRttiObject>;//00457AD8
    //procedure sub_00457C28(?:?; ?:Byte);//00457C28
    //procedure sub_00457D5C(?:TDictionary<System; ?:?; ?:?);//00457D5C
    destructor Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy();//00457E38
    function Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;//00457E5C
    //procedure Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray(?:?);//00457E64
    function Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.MoveNext:Boolean;//00457F5C
    procedure sub_00457F64(?:TDictionary<System.TypInfo.PTypeInfo,System.string>; ?:Integer);//00457F64
    //procedure sub_00457FA4(?:?; ?:?);//00457FA4
    procedure sub_004580D4(?:TDictionary<System);//004580D4
    function TypInfo.PTypeInfo,System.string>.GetBucketIndex(const Key:TypInfo.PTypeInfo; HashCode:Integer):Integer;//004580FC
    function TypInfo.PTypeInfo,System.string>.Hash(const Key:TypInfo.PTypeInfo):Integer;//004581A8
    //procedure sub_004581C8(?:?; ?:?; ?:?; ?:?);//004581C8
    //procedure sub_00458218(?:TDictionary<System; ?:Integer; ?:?; ?:?; ?:?);//00458218
    procedure sub_00458268;//00458268
    //procedure sub_00458270(?:?);//00458270
    //procedure sub_00458288(?:?);//00458288
    constructor sub_004582A0(ACapacity:Integer);//004582A0
    constructor sub_004582D8(ACapacity:Integer; AComparer:IEqualityComparer<System.TypInfo.PTypeInfo>);//004582D8
    destructor TypInfo.PTypeInfo,System.string>.Destroy();//00458390
    procedure TypInfo.PTypeInfo,System.string>.Add(Key:PTypeInfo; Value:string);//004583CC
    procedure TypInfo.PTypeInfo,System.string>.Clear;//00458430
    function TypInfo.PTypeInfo,System.string>.TryGetValue(Key:PTypeInfo; Value:string):Boolean;//004584FC
    function TypInfo.PTypeInfo,System.string>.ContainsKey(Key:PTypeInfo):Boolean;//00458558
    //procedure TypInfo.PTypeInfo,System.string>.ToArray(?:?);//0045857C
    procedure TypInfo.PTypeInfo,System.string>.GetEnumerator;//004585D4
    //procedure sub_004585E4(?:TDictionary<System; ?:?; ?:?);//004585E4
    destructor TypInfo.PTypeInfo>.Destroy();//00458670
    function TypInfo.PTypeInfo>.GetEnumerator:TEnumerator<System.TypInfo.PTypeInfo>;//00458694
    //procedure TypInfo.PTypeInfo>.ToArray(?:?);//0045869C
    function TypInfo.PTypeInfo>.MoveNext:Boolean;//00458750
    procedure sub_00458760;//00458760
    constructor sub_00458768(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//00458768
    procedure TypInfo.PTypeInfo,System.string>.TKeyCollection.GetEnumerator;//004587A4
    //procedure TypInfo.PTypeInfo,System.string>.TKeyCollection.ToArray(?:?);//004587B4
    //function sub_004587CC(?:?):?;//004587CC
    procedure sub_004587E0;//004587E0
    procedure sub_004587E8;//004587E8
    constructor sub_004587F0(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//004587F0
    function TypInfo.PTypeInfo,System.string>.TKeyEnumerator.MoveNext:Boolean;//00458834
    procedure sub_00458874;//00458874
    constructor sub_0045887C(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//0045887C
    procedure TypInfo.PTypeInfo,System.string>.TValueCollection.GetEnumerator;//004588B8
    //procedure TypInfo.PTypeInfo,System.string>.TValueCollection.ToArray(?:?);//004588C8
    //procedure sub_004588E0(?:TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueEnumerator; ?:?);//004588E0
    //procedure sub_00458900(?:?);//00458900
    procedure sub_00458914;//00458914
    constructor sub_0045891C(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//0045891C
    function TypInfo.PTypeInfo,System.string>.TValueEnumerator.MoveNext:Boolean;//00458960
    //procedure sub_00458998(?:TDictionary<System.TypInfo.PTypeInfo,System.string>.TPairEnumerator; ?:?);//00458998
    //procedure sub_004589CC(?:?);//004589CC
    procedure sub_004589E0;//004589E0
    constructor sub_004589E8(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);//004589E8
    function TypInfo.PTypeInfo,System.string>.TPairEnumerator.MoveNext:Boolean;//00458A2C
    //procedure sub_00458A64(?:TDictionary<System; ?:?; ?:?);//00458A64
    destructor Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy();//00458B40
    function Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;//00458B64
    //procedure Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray(?:?);//00458B6C
    function Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.MoveNext:Boolean;//00458C64
    procedure sub_00458C6C(?:TDictionary<System.string,System.TypInfo.PTypeInfo>; ?:Integer);//00458C6C
    //procedure sub_00458CAC(?:?; ?:?);//00458CAC
    procedure sub_00458DDC(?:TDictionary<System);//00458DDC
    //function sub_00458E04(?:TDictionary<System; ?:string; ?:?):?;//00458E04
    //function sub_00458EB0(?:TDictionary<System; ?:string):?;//00458EB0
    //procedure sub_00458ED0(?:?; ?:?; ?:?; ?:?);//00458ED0
    //procedure sub_00458F20(?:TDictionary<System; ?:?; ?:?; ?:?; ?:?);//00458F20
    procedure sub_00458F70;//00458F70
    //procedure sub_00458F78(?:?);//00458F78
    //procedure sub_00458F90(?:?);//00458F90
    constructor sub_00458FA8(ACapacity:Integer);//00458FA8
    constructor sub_00458FE0(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);//00458FE0
    destructor string,System.TypInfo.PTypeInfo>.Destroy();//00459098
    procedure string,System.TypInfo.PTypeInfo>.Add(Key:string; Value:PTypeInfo);//004590D4
    procedure string,System.TypInfo.PTypeInfo>.Clear;//00459138
    function string,System.TypInfo.PTypeInfo>.TryGetValue(Key:string; Value:PTypeInfo):Boolean;//00459204
    function string,System.TypInfo.PTypeInfo>.ContainsKey(Key:string):Boolean;//00459244
    //procedure string,System.TypInfo.PTypeInfo>.ToArray(?:?);//00459268
    procedure string,System.TypInfo.PTypeInfo>.GetEnumerator;//004592C0
    procedure sub_004592D8;//004592D8
    constructor sub_004592E0(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//004592E0
    procedure string,System.TypInfo.PTypeInfo>.TKeyCollection.GetEnumerator;//0045931C
    //procedure string,System.TypInfo.PTypeInfo>.TKeyCollection.ToArray(?:?);//0045932C
    //procedure sub_00459344(?:TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyEnumerator; ?:?);//00459344
    //procedure sub_00459364(?:?);//00459364
    procedure sub_00459378;//00459378
    constructor sub_00459380(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//00459380
    function string,System.TypInfo.PTypeInfo>.TKeyEnumerator.MoveNext:Boolean;//004593C4
    procedure sub_00459404;//00459404
    constructor sub_0045940C(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//0045940C
    procedure string,System.TypInfo.PTypeInfo>.TValueCollection.GetEnumerator;//00459448
    //procedure string,System.TypInfo.PTypeInfo>.TValueCollection.ToArray(?:?);//00459458
    //function sub_00459470(?:?):?;//00459470
    procedure sub_00459484;//00459484
    procedure sub_0045948C;//0045948C
    constructor sub_00459494(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//00459494
    function string,System.TypInfo.PTypeInfo>.TValueEnumerator.MoveNext:Boolean;//004594D8
    //procedure sub_00459510(?:TDictionary<System.string,System.TypInfo.PTypeInfo>.TPairEnumerator; ?:?);//00459510
    //procedure sub_00459544(?:?);//00459544
    procedure sub_00459558;//00459558
    constructor sub_00459560(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);//00459560
    function string,System.TypInfo.PTypeInfo>.TPairEnumerator.MoveNext:Boolean;//004595A4
    //procedure sub_004595DC(?:?; ?:?);//004595DC
    //procedure Rtti.TRttiPackage>.Construct(Comparison:TComparison<System.Rtti.TRttiPackage>; ?:?);//004595F8
    //procedure sub_00459620(?:?; ?:Byte);//00459620
    //function sub_0045964C(?:Byte):?;//0045964C
    destructor TCustomAttribute>.Destroy();//00459680
    function TCustomAttribute>.GetEnumerator:TEnumerator<System.TCustomAttribute>;//004596A4
    //procedure TCustomAttribute>.ToArray(?:?);//004596AC
    function TCustomAttribute>.MoveNext:Boolean;//00459760
    procedure sub_004597B0(?:TList<System.TCustomAttribute>);//004597B0
    //procedure sub_004597BC(?:?; ?:?);//004597BC
    //procedure sub_004597C8(?:?; ?:?; ?:?);//004597C8
    procedure sub_004597D8;//004597D8
    //procedure sub_004597E0(?:?);//004597E0
    constructor sub_004597F8;//004597F8
    constructor sub_00459870(AComparer:IComparer<System.TCustomAttribute>);//00459870
    destructor TCustomAttribute>.Destroy();//00459920
    //procedure TCustomAttribute>.Error(Msg:string; Data:NativeInt; ?:?);//0045996C
    procedure TCustomAttribute>.Add(Value:TCustomAttribute);//004599A4
    //procedure TCustomAttribute>.ToArray(?:?);//004599B4
    procedure TCustomAttribute>.GetEnumerator;//004599C8
    //function sub_004599D8(?:?):?;//004599D8
    procedure sub_004599F4;//004599F4
    procedure sub_004599FC;//004599FC
    constructor sub_00459A04(AList:TList<System.TCustomAttribute>);//00459A04
    function TCustomAttribute>.TEnumerator.MoveNext:Boolean;//00459A48
    //procedure sub_00459A68(?:TListHelper; ?:TList<System.TCustomAttribute>; ?:?);//00459A68
    //procedure sub_00459AB8(?:?; ?:?; ?:?);//00459AB8
    //procedure sub_00459B50(?:?; ?:?; ?:?);//00459B50
    function Concat<System.Rtti.TRttiMethod>(const _Dv_:$0..-$1):TArray<System.Rtti.TRttiMethod>;//00459BE8
    //procedure sub_00459C80(?:?; ?:?; ?:?);//00459C80
    //function sub_00459D18(?:Byte; ?:?):?;//00459D18
    destructor Rtti.TRttiProperty>.Destroy();//00459D9C
    function Rtti.TRttiProperty>.GetEnumerator:TEnumerator<System.Rtti.TRttiProperty>;//00459DC0
    //procedure Rtti.TRttiProperty>.ToArray(?:?);//00459DC8
    function Rtti.TRttiProperty>.MoveNext:Boolean;//00459E7C
    procedure sub_00459ECC(?:TList<System.Rtti.TRttiProperty>);//00459ECC
    //procedure sub_00459ED8(?:?; ?:?);//00459ED8
    //procedure sub_00459EE4(?:?; ?:?; ?:?);//00459EE4
    procedure sub_00459EF4;//00459EF4
    //procedure sub_00459EFC(?:?);//00459EFC
    constructor sub_00459F14;//00459F14
    constructor sub_00459F8C(AComparer:IComparer<System.Rtti.TRttiProperty>);//00459F8C
    destructor Rtti.TRttiProperty>.Destroy();//0045A03C
    //procedure Rtti.TRttiProperty>.Error(Msg:string; Data:NativeInt; ?:?);//0045A088
    procedure Rtti.TRttiProperty>.Add(Value:TRttiProperty);//0045A0C0
    procedure Rtti.TRttiProperty>.AddRange(Values:TRttiProperty);//0045A0D0
    //procedure Rtti.TRttiProperty>.InsertRange(Index:Integer; Values:TRttiProperty; ?:?);//0045A0E4
    //procedure Rtti.TRttiProperty>.ToArray(?:?);//0045A100
    procedure Rtti.TRttiProperty>.GetEnumerator;//0045A114
    //function sub_0045A124(?:?):?;//0045A124
    procedure sub_0045A140;//0045A140
    procedure sub_0045A148;//0045A148
    constructor sub_0045A150(AList:TList<System.Rtti.TRttiProperty>);//0045A150
    function Rtti.TRttiProperty>.TEnumerator.MoveNext:Boolean;//0045A194
    //procedure sub_0045A1B4(?:TListHelper; ?:TList<System.Rtti.TRttiProperty>; ?:?);//0045A1B4
    destructor Rtti.TRttiMethod>.Destroy();//0045A204
    function Rtti.TRttiMethod>.GetEnumerator:TEnumerator<System.Rtti.TRttiMethod>;//0045A228
    //procedure Rtti.TRttiMethod>.ToArray(?:?);//0045A230
    function Rtti.TRttiMethod>.MoveNext:Boolean;//0045A2E4
    procedure sub_0045A334(?:TList<System.Rtti.TRttiMethod>);//0045A334
    //procedure sub_0045A340(?:?; ?:?);//0045A340
    //procedure sub_0045A34C(?:?; ?:?; ?:?);//0045A34C
    procedure sub_0045A35C;//0045A35C
    //procedure sub_0045A364(?:?);//0045A364
    constructor sub_0045A37C;//0045A37C
    constructor sub_0045A3F4(AComparer:IComparer<System.Rtti.TRttiMethod>);//0045A3F4
    destructor Rtti.TRttiMethod>.Destroy();//0045A4A4
    //procedure Rtti.TRttiMethod>.Error(Msg:string; Data:NativeInt; ?:?);//0045A4F0
    procedure Rtti.TRttiMethod>.Add(Value:TRttiMethod);//0045A528
    procedure Rtti.TRttiMethod>.AddRange(Values:TRttiMethod);//0045A538
    //procedure Rtti.TRttiMethod>.InsertRange(Index:Integer; Values:TRttiMethod; ?:?);//0045A54C
    //procedure Rtti.TRttiMethod>.ToArray(?:?);//0045A568
    procedure Rtti.TRttiMethod>.GetEnumerator;//0045A57C
    //function sub_0045A58C(?:?):?;//0045A58C
    procedure sub_0045A5A8;//0045A5A8
    procedure sub_0045A5B0;//0045A5B0
    constructor sub_0045A5B8(AList:TList<System.Rtti.TRttiMethod>);//0045A5B8
    function Rtti.TRttiMethod>.TEnumerator.MoveNext:Boolean;//0045A5FC
    //procedure sub_0045A61C(?:TListHelper; ?:TList<System.Rtti.TRttiMethod>; ?:?);//0045A61C
    destructor Rtti.TRttiField>.Destroy();//0045A66C
    function Rtti.TRttiField>.GetEnumerator:TEnumerator<System.Rtti.TRttiField>;//0045A690
    //procedure Rtti.TRttiField>.ToArray(?:?);//0045A698
    function Rtti.TRttiField>.MoveNext:Boolean;//0045A74C
    procedure sub_0045A79C(?:TList<System.Rtti.TRttiField>);//0045A79C
    //procedure sub_0045A7A8(?:?; ?:?);//0045A7A8
    //procedure sub_0045A7B4(?:?; ?:?; ?:?);//0045A7B4
    procedure sub_0045A7C4;//0045A7C4
    //procedure sub_0045A7CC(?:?);//0045A7CC
    constructor sub_0045A7E4;//0045A7E4
    constructor sub_0045A85C(AComparer:IComparer<System.Rtti.TRttiField>);//0045A85C
    destructor Rtti.TRttiField>.Destroy();//0045A90C
    //procedure Rtti.TRttiField>.Error(Msg:string; Data:NativeInt; ?:?);//0045A958
    procedure Rtti.TRttiField>.Add(Value:TRttiField);//0045A990
    procedure Rtti.TRttiField>.AddRange(Values:TRttiField);//0045A9A0
    //procedure Rtti.TRttiField>.InsertRange(Index:Integer; Values:TRttiField; ?:?);//0045A9B4
    //procedure Rtti.TRttiField>.ToArray(?:?);//0045A9D0
    procedure Rtti.TRttiField>.GetEnumerator;//0045A9E4
    //function sub_0045A9F4(?:?):?;//0045A9F4
    procedure sub_0045AA10;//0045AA10
    procedure sub_0045AA18;//0045AA18
    constructor sub_0045AA20(AList:TList<System.Rtti.TRttiField>);//0045AA20
    function Rtti.TRttiField>.TEnumerator.MoveNext:Boolean;//0045AA64
    //procedure sub_0045AA84(?:?; ?:?; ?:?);//0045AA84
    destructor Rtti.TRttiManagedField>.Destroy();//0045AAD4
    function Rtti.TRttiManagedField>.GetEnumerator:TEnumerator<System.Rtti.TRttiManagedField>;//0045AAF8
    //procedure Rtti.TRttiManagedField>.ToArray(?:?);//0045AB00
    function Rtti.TRttiManagedField>.MoveNext:Boolean;//0045ABB4
    procedure sub_0045AC04(?:TList<System.Rtti.TRttiManagedField>);//0045AC04
    //procedure sub_0045AC10(?:?; ?:?);//0045AC10
    //procedure sub_0045AC1C(?:?; ?:?; ?:?);//0045AC1C
    procedure sub_0045AC2C;//0045AC2C
    //procedure sub_0045AC34(?:?);//0045AC34
    constructor sub_0045AC4C;//0045AC4C
    constructor sub_0045ACC4(AComparer:IComparer<System.Rtti.TRttiManagedField>);//0045ACC4
    destructor Rtti.TRttiManagedField>.Destroy();//0045AD74
    //procedure Rtti.TRttiManagedField>.Error(Msg:string; Data:NativeInt; ?:?);//0045ADC0
    procedure Rtti.TRttiManagedField>.Add(Value:TRttiManagedField);//0045ADF8
    //procedure Rtti.TRttiManagedField>.ToArray(?:?);//0045AE08
    procedure Rtti.TRttiManagedField>.GetEnumerator;//0045AE1C
    //function sub_0045AE2C(?:?):?;//0045AE2C
    procedure sub_0045AE48;//0045AE48
    procedure sub_0045AE50;//0045AE50
    constructor sub_0045AE58(AList:TList<System.Rtti.TRttiManagedField>);//0045AE58
    function Rtti.TRttiManagedField>.TEnumerator.MoveNext:Boolean;//0045AE9C
    //function sub_0045AF0C(?:TValue; ?:?):?;//0045AF0C
    function Concat<System.Rtti.TRttiParameter>(const _Dv_:$0..-$1):TArray<System.Rtti.TRttiParameter>;//0045AF90
    //procedure sub_0045B028(?:?; ?:?);//0045B028
    //procedure sub_0045B058(?:?; ?:?);//0045B058
    constructor Pointer,System.Rtti.TRttiObject>.Create(ACapacity:Integer);//0045B088
    constructor sub_0045B0D4(Ownerships:TDictionaryOwnerships; AComparer:IEqualityComparer<System.Pointer>; ACapacity:Integer);//0045B0D4
    procedure sub_0045B1E0(?:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>);//0045B1E0
    //procedure sub_0045B1EC(?:?);//0045B1EC
    //procedure sub_0045B1FC(?:?);//0045B1FC
    procedure sub_0045B20C;//0045B20C
    //procedure sub_0045B214(?:?);//0045B214
    //procedure sub_0045B410(?:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.TEnumerator; ?:?);//0045B410
    //procedure sub_0045B44C(?:?);//0045B44C
    procedure sub_0045B460;//0045B460
    //procedure sub_0045B4CC(?:?);//0045B4CC
    procedure sub_0045B534(?:TList<System.Pointer>);//0045B534
    //procedure sub_0045B540(?:?; ?:?);//0045B540
    //procedure sub_0045B54C(?:?; ?:?; ?:?);//0045B54C
    procedure sub_0045B55C;//0045B55C
    //procedure sub_0045B564(?:?);//0045B564
    //function sub_0045B75C(?:?):?;//0045B75C
    procedure sub_0045B778;//0045B778
    procedure sub_0045B780;//0045B780
    procedure sub_0045B834(?:TList<System.Rtti.TRttiObject>);//0045B834
    //procedure sub_0045B840(?:?; ?:?);//0045B840
    //procedure sub_0045B84C(?:?; ?:?; ?:?);//0045B84C
    procedure sub_0045B85C;//0045B85C
    //procedure sub_0045B864(?:?);//0045B864
    //function sub_0045BA5C(?:?):?;//0045BA5C
    procedure sub_0045BA78;//0045BA78
    procedure sub_0045BA80;//0045BA80
    function TryAsType<System.Integer>(var AResult:Integer):Boolean;//0045BAEC
    function TryAsType<System.Boolean>(var AResult:Boolean):Boolean;//0045BB70
    function TryAsType<System.Extended>(var AResult:Extended):Boolean;//0045BBF4
    function TryAsType<System.Int64>(var AResult:Int64):Boolean;//0045BC78
    function TryAsType<System.IInterface>(var AResult:IInterface):Boolean;//0045BD80
    function TryAsType<System.string>(var AResult:AnsiString):Boolean;//0045BE14
    //function sub_0045BEA8(?:?; ?:?):?;//0045BEA8
    procedure sub_0045C014(?:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>);//0045C014
    //procedure sub_0045C020(?:?);//0045C020
    //procedure sub_0045C030(?:?);//0045C030
    procedure sub_0045C040;//0045C040
    //procedure sub_0045C048(?:?);//0045C048
    //procedure sub_0045C244(?:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.TEnumerator; ?:?);//0045C244
    //procedure sub_0045C2CC(?:?);//0045C2CC
    procedure sub_0045C2E0;//0045C2E0
    //procedure sub_0045C34C(?:?);//0045C34C
    procedure sub_0045C3B4(?:TList<System.TypInfo.PTypeInfo>);//0045C3B4
    //procedure sub_0045C3C0(?:?; ?:?);//0045C3C0
    //procedure sub_0045C3CC(?:?; ?:?; ?:?);//0045C3CC
    procedure sub_0045C3DC;//0045C3DC
    //procedure sub_0045C3E4(?:?);//0045C3E4
    //function sub_0045C5DC(?:?):?;//0045C5DC
    procedure sub_0045C5F8;//0045C5F8
    procedure sub_0045C600;//0045C600
    procedure sub_0045C6B4(?:TList<System.string>);//0045C6B4
    //procedure sub_0045C6C0(?:?; ?:?);//0045C6C0
    //procedure sub_0045C6CC(?:?; ?:?; ?:?);//0045C6CC
    procedure sub_0045C6DC;//0045C6DC
    //procedure sub_0045C6E4(?:?);//0045C6E4
    //procedure sub_0045C8E8(?:TList<System.string>.TEnumerator; ?:?);//0045C8E8
    //procedure sub_0045C94C(?:?);//0045C94C
    procedure sub_0045C960;//0045C960
    procedure sub_0045CA14(?:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>);//0045CA14
    //procedure sub_0045CA20(?:?);//0045CA20
    //procedure sub_0045CA30(?:?);//0045CA30
    procedure sub_0045CA40;//0045CA40
    //procedure sub_0045CA48(?:?);//0045CA48
    //procedure sub_0045CC44(?:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.TEnumerator; ?:?);//0045CC44
    //procedure sub_0045CCCC(?:?);//0045CCCC
    procedure sub_0045CCE0;//0045CCE0
    //procedure sub_0045CD4C(?:?; ?:?; ?:?; ?:?; ?:?);//0045CD4C
    //function sub_0045CE60(?:?; ?:?):?;//0045CE60
    //procedure sub_0045CF04(?:Byte; ?:?);//0045CF04
    //procedure sub_0045CFB8(?:Byte; ?:?);//0045CFB8
    procedure Get<System.Integer>(var Result:Integer);//0045D04C
    procedure Get<System.Boolean>(var Result:Boolean);//0045D080
    procedure Get<System.Extended>(var Result:Extended);//0045D0B4
    procedure Get<System.Int64>(var Result:Int64);//0045D0E8
    procedure Get<System.IInterface>(var Result:IInterface);//0045D150
    procedure Get<System.string>(var Result:AnsiString);//0045D190
    //procedure sub_0045D1D0(?:Byte; ?:?);//0045D1D0
    //procedure sub_0045D2D0(?:Byte; ?:?);//0045D2D0
    function ToString:UnicodeString;//00467F44
    function NameFld:TTypeInfoFieldAccessor;//00467F94
    function NameFld:TTypeInfoFieldAccessor;//00467FAC
    function AttrData:PAttrData;//00467FC4
    //function sub_00467FEC(?:PPropInfo):?;//00467FEC
    function Tail:PPropInfo;//00468004
    function NameFld:TTypeInfoFieldAccessor;//0046802C
    function Tail:PVmtMethodEntryTail;//00468044
    function NameFld:TTypeInfoFieldAccessor;//0046806C
    function AttrData:PAttrData;//00468084
    function NameFld:TTypeInfoFieldAccessor;//004680AC
    function AttrData:PAttrData;//004680C4
    function NameFld:TTypeInfoFieldAccessor;//004680EC
    function Tail:PIntfMethodEntryTail;//004680F8
    function NameFld:TTypeInfoFieldAccessor;//00468120
    function AttrData:PAttrData;//00468138
    function DynUnitNameFld:TTypeInfoFieldAccessor;//00468160
    function IntfUnitFld:TTypeInfoFieldAccessor;//00468178
    function UnitNameFld:TTypeInfoFieldAccessor;//00468190
    function PropData:PPropData;//004681A8
    function DynArrElType:PPTypeInfo;//004681D0
    function DynArrAttrData:PAttrData;//004681F8
    function NameFld:TTypeInfoFieldAccessor;//00468224
    function AttrData:PAttrData;//0046823C
    function GetPropName(PropInfo:PPropInfo):UnicodeString;//00468264
    function GetTypeData(TypeInfo:PTypeInfo):PTypeData;//00468288
    //procedure sub_004682C4(?:?; ?:?);//004682C4
    function GetEnumName(TypeInfo:PTypeInfo; Value:Integer):UnicodeString;//00468358
    //function sub_004685AC(?:?):?;//004685AC
    //function sub_004685CC(?:?; ?:?):?;//004685CC
    //function sub_004686B8(?:?; ?:?):?;//004686B8
    function UTF8SameText(const Str1:ShortString; Str2:PAnsiChar):Boolean;//0046873C
    function _GetEnumNameValue(TypeInfo:PTypeInfo; const Name:UTF8String):Integer;//0046879C
    //function sub_00468814(?:?; ?:?):?;//00468814
    function GetEnumValue(TypeInfo:PTypeInfo; const Name:UnicodeString):Integer;//0046887C
    function _InternalGetPropInfo(TypeInfo:PTypeInfo; const PropName:UTF8String):PPropInfo;//00468924
    function InternalGetPropInfo(TypeInfo:PTypeInfo; const PropName:UnicodeString):PPropInfo;//004689D8
    function GetPropInfo(AClass:TClass; const PropName:UnicodeString; AKinds:TTypeKinds):PPropInfo;//00468A2C
    procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);//00468A34
    function IsStoredPropRTTI(Instance:TObject; PropInfo:PPropInfo):Boolean;//00468A88
    function HasCustomAttribute(const Instance:TObject; const PropInfo:TypInfo.PPropInfo):Boolean;//00468AB8
    //function sub_00468C30(?:?; ?:?):?;//00468C30
    //function sub_00468D4C(?:?; ?:?):?;//00468D4C
    //function sub_00468E2C(?:?; ?:?):?;//00468E2C
    function IsStoredPropCA(Instance:TObject; PropInfo:PPropInfo):Boolean;//00468EF8
    function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;//00469158
    function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):NativeInt;//0046918C
    procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:NativeInt);//00469200
    function GetSetElementName(TypeInfo:PTypeInfo; Value:Integer):UnicodeString;//0046925C
    function GetSetElementValue(TypeInfo:PTypeInfo; const Name:UnicodeString):Integer;//004692F0
    procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);//00469390
    procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);//004693D4
    procedure GetShortStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);//00469428
    procedure SetShortStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//00469458
    procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);//0046948C
    procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//004694CC
    procedure GetWideStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);//0046950C
    procedure SetWideStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//00469568
    procedure GetUnicodeStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);//004695C0
    procedure SetUnicodeStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//0046961C
    function GetStrProp(Instance:TObject; PropInfo:PPropInfo):UnicodeString;//00469674
    procedure SetRawByteStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:UnicodeString);//00469720
    procedure SetStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:UnicodeString);//0046982C
    function GetAnsiStrProp(Instance:TObject; PropInfo:PPropInfo):AnsiString;//004698F4
    procedure SetAnsiStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//00469940
    function GetWideStrProp(Instance:TObject; PropInfo:PPropInfo):WideString;//0046997C
    procedure SetWideStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:WideString);//00469A24
    procedure SetUnicodeStrProp(Instance:TObject; const PropName:UnicodeString; const Value:UnicodeString);//00469AC4
    function GetFloatProp(Instance:TObject; PropInfo:PPropInfo):Extended;//00469ACC
    //procedure sub_00469B8C(?:?; ?:?; ?:Extended; ?:?; ?:?);//00469B8C
    procedure AssignVariant(var Dest:Variant; const Source:Variant);//00469C64
    function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;//00469C78
    procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);//00469CB8
    function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;//0046A710
    procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);//0046A750
    function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;//0046A788
    procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);//0046A7B0
    function GetInterfaceProp(Instance:TObject; PropInfo:PPropInfo):IInterface;//0046A7EC
    procedure SetInterfaceProp(Instance:TObject; PropInfo:PPropInfo; const Value:IInterface);//0046A808

implementation

//0045645C
destructor TEnumerable<System.Rtti.TMethodImplementation.TParamLoc>.Destroy();
begin
{*
 0045645C    push        ebx
 0045645D    push        esi
 0045645E    call        @BeforeDestruction
 00456463    mov         ebx,edx
 00456465    mov         esi,eax
 00456467    mov         dl,0FC
 00456469    and         dl,bl
 0045646B    mov         eax,esi
 0045646D    call        TObject.Destroy
 00456472    test        bl,bl
>00456474    jle         0045647D
 00456476    mov         eax,esi
 00456478    call        @ClassDestroy
 0045647D    pop         esi
 0045647E    pop         ebx
 0045647F    ret
*}
end;

//00456480
function TEnumerable<System.Rtti.TMethodImplementation.TParamLoc>.GetEnumerator:TEnumerator<System.Rtti.TMethodImplementation.TParamLoc>;
begin
{*
 00456480    mov         edx,dword ptr [eax]
 00456482    call        dword ptr [edx]
 00456484    ret
*}
end;

//00456488
{*procedure TEnumerable<System.Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?);
begin
 00456488    push        ebp
 00456489    mov         ebp,esp
 0045648B    add         esp,0FFFFFFE8
 0045648E    push        ebx
 0045648F    push        esi
 00456490    mov         dword ptr [ebp-4],edx
 00456493    mov         ebx,eax
 00456495    lea         esi,[ebp-18]
 00456498    mov         dl,1
 0045649A    mov         eax,[0043B810];TList<System.Rtti.TMethodImplementation.TParamLoc>
 0045649F    call        004565E0
 004564A4    mov         dword ptr [ebp-8],eax
 004564A7    xor         eax,eax
 004564A9    push        ebp
 004564AA    push        456534
 004564AF    push        dword ptr fs:[eax]
 004564B2    mov         dword ptr fs:[eax],esp
 004564B5    mov         eax,ebx
 004564B7    call        TEnumerable<System.Rtti.TMethodImplementation.TParamLoc>.GetEnumerator
 004564BC    mov         dword ptr [ebp-0C],eax
 004564BF    xor         eax,eax
 004564C1    push        ebp
 004564C2    push        45650C
 004564C7    push        dword ptr fs:[eax]
 004564CA    mov         dword ptr fs:[eax],esp
>004564CD    jmp         004564E2
 004564CF    mov         edx,esi
 004564D1    mov         eax,dword ptr [ebp-0C]
 004564D4    mov         ecx,dword ptr [eax]
 004564D6    call        dword ptr [ecx]
 004564D8    mov         edx,esi
 004564DA    mov         eax,dword ptr [ebp-8]
 004564DD    call        TList<System.Rtti.TMethodImplementation.TParamLoc>.Add
 004564E2    mov         eax,dword ptr [ebp-0C]
 004564E5    call        TEnumerator<System.Rtti.TMethodImplementation.TParamLoc>.MoveNext
 004564EA    test        al,al
>004564EC    jne         004564CF
 004564EE    xor         eax,eax
 004564F0    pop         edx
 004564F1    pop         ecx
 004564F2    pop         ecx
 004564F3    mov         dword ptr fs:[eax],edx
 004564F6    push        456513
 004564FB    cmp         dword ptr [ebp-0C],0
>004564FF    je          0045650B
 00456501    mov         dl,1
 00456503    mov         eax,dword ptr [ebp-0C]
 00456506    mov         ecx,dword ptr [eax]
 00456508    call        dword ptr [ecx-4]
 0045650B    ret
>0045650C    jmp         @HandleFinally
>00456511    jmp         004564FB
 00456513    mov         edx,dword ptr [ebp-4]
 00456516    mov         eax,dword ptr [ebp-8]
 00456519    call        TList<System.Rtti.TMethodImplementation.TParamLoc>.ToArray
 0045651E    xor         eax,eax
 00456520    pop         edx
 00456521    pop         ecx
 00456522    pop         ecx
 00456523    mov         dword ptr fs:[eax],edx
 00456526    push        45653B
 0045652B    mov         eax,dword ptr [ebp-8]
 0045652E    call        TObject.Free
 00456533    ret
>00456534    jmp         @HandleFinally
>00456539    jmp         0045652B
 0045653B    pop         esi
 0045653C    pop         ebx
 0045653D    mov         esp,ebp
 0045653F    pop         ebp
 00456540    ret
end;*}

//00456544
function TEnumerator<System.Rtti.TMethodImplementation.TParamLoc>.MoveNext:Boolean;
begin
{*
 00456544    mov         edx,dword ptr [eax]
 00456546    call        dword ptr [edx+4]
 00456549    ret
*}
end;

//00456594
procedure sub_00456594(?:TList<System.Rtti.TMethodImplementation.TParamLoc>);
begin
{*
 00456594    add         eax,8
 00456597    call        00435920
 0045659C    ret
*}
end;

//004565A0
{*procedure sub_004565A0(?:?);
begin
 004565A0    push        ebx
 004565A1    push        esi
 004565A2    mov         esi,eax
 004565A4    mov         eax,esi
 004565A6    mov         ebx,dword ptr [eax]
 004565A8    call        dword ptr [ebx+8]
 004565AB    pop         esi
 004565AC    pop         ebx
 004565AD    ret
end;*}

//004565B0
{*procedure sub_004565B0(?:?);
begin
 004565B0    push        ebx
 004565B1    push        esi
 004565B2    mov         esi,eax
 004565B4    mov         eax,dword ptr [esi+24]
 004565B7    mov         ebx,dword ptr [eax]
 004565B9    call        dword ptr [ebx+0C]
 004565BC    pop         esi
 004565BD    pop         ebx
 004565BE    ret
end;*}

//004565C0
procedure sub_004565C0;
begin
{*
 004565C0    call        TList<System.Rtti.TMethodImplementation.TParamLoc>.GetEnumerator
 004565C5    ret
*}
end;

//004565C8
{*procedure sub_004565C8(?:?);
begin
 004565C8    push        esi
 004565C9    mov         esi,eax
 004565CB    cmp         word ptr [esi+2A],0
>004565D0    je          004565DD
 004565D2    push        ecx
 004565D3    mov         ecx,edx
 004565D5    mov         edx,esi
 004565D7    mov         eax,dword ptr [esi+2C]
 004565DA    call        dword ptr [esi+28]
 004565DD    pop         esi
 004565DE    ret
end;*}

//004565E0
constructor sub_004565E0;
begin
{*
 004565E0    push        ebp
 004565E1    mov         ebp,esp
 004565E3    push        0
 004565E5    push        ebx
 004565E6    push        esi
 004565E7    test        dl,dl
>004565E9    je          004565F3
 004565EB    add         esp,0FFFFFFF0
 004565EE    call        @ClassCreate
 004565F3    mov         ebx,edx
 004565F5    mov         esi,eax
 004565F7    xor         eax,eax
 004565F9    push        ebp
 004565FA    push        456634
 004565FF    push        dword ptr fs:[eax]
 00456602    mov         dword ptr fs:[eax],esp
 00456605    lea         edx,[ebp-4]
 00456608    mov         eax,[0045D3D8];TComparer<System.Rtti.TMethodImplementation.TParamLoc>
 0045660D    call        TComparer<System.Rtti.TMethodImplementation.TParamLoc>.Default
 00456612    mov         ecx,dword ptr [ebp-4]
 00456615    xor         edx,edx
 00456617    mov         eax,esi
 00456619    call        00456658
 0045661E    xor         eax,eax
 00456620    pop         edx
 00456621    pop         ecx
 00456622    pop         ecx
 00456623    mov         dword ptr fs:[eax],edx
 00456626    push        45663B
 0045662B    lea         eax,[ebp-4]
 0045662E    call        @IntfClear
 00456633    ret
>00456634    jmp         @HandleFinally
>00456639    jmp         0045662B
 0045663B    mov         eax,esi
 0045663D    test        bl,bl
>0045663F    je          00456650
 00456641    call        @AfterConstruction
 00456646    pop         dword ptr fs:[0]
 0045664D    add         esp,0C
 00456650    mov         eax,esi
 00456652    pop         esi
 00456653    pop         ebx
 00456654    pop         ecx
 00456655    pop         ebp
 00456656    ret
*}
end;

//00456658
constructor sub_00456658(AComparer:IComparer<System.Rtti.TMethodImplementation.TParamLoc>);
begin
{*
 00456658    push        ebp
 00456659    mov         ebp,esp
 0045665B    push        0
 0045665D    push        ebx
 0045665E    push        esi
 0045665F    push        edi
 00456660    test        dl,dl
>00456662    je          0045666C
 00456664    add         esp,0FFFFFFF0
 00456667    call        @ClassCreate
 0045666C    mov         esi,ecx
 0045666E    mov         ebx,edx
 00456670    mov         edi,eax
 00456672    xor         eax,eax
 00456674    push        ebp
 00456675    push        4566E3
 0045667A    push        dword ptr fs:[eax]
 0045667D    mov         dword ptr fs:[eax],esp
 00456680    xor         edx,edx
 00456682    mov         eax,edi
 00456684    call        TObject.Create
 00456689    mov         dword ptr [edi+14],edi;TList<System.Rtti.TMethodImplementation.TParamLoc>.FOnNotify:TCol...
 0045668C    mov         dword ptr [edi+10],4565A0;TList<System.Rtti.TMethodImplementation.TParamLoc>.FOnNotify:T...
 00456693    mov         dword ptr [edi+1C],edi
 00456696    mov         dword ptr [edi+18],4565B0;sub_004565B0
 0045669D    mov         eax,[0043B390];TList<System.Rtti.TMethodImplementation.TParamLoc>.arrayofT
 004566A2    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TMethodImplementation.TParamLoc>.FComparer:ICom...
 004566A5    lea         eax,[edi+24]
 004566A8    mov         edx,esi
 004566AA    call        @IntfCopy
 004566AF    cmp         dword ptr [edi+24],0
>004566B3    jne         004566CD
 004566B5    lea         edx,[ebp-4]
 004566B8    mov         eax,[0045D3D8];TComparer<System.Rtti.TMethodImplementation.TParamLoc>
 004566BD    call        TComparer<System.Rtti.TMethodImplementation.TParamLoc>.Default
 004566C2    mov         edx,dword ptr [ebp-4]
 004566C5    lea         eax,[edi+24]
 004566C8    call        @IntfCopy
 004566CD    xor         eax,eax
 004566CF    pop         edx
 004566D0    pop         ecx
 004566D1    pop         ecx
 004566D2    mov         dword ptr fs:[eax],edx
 004566D5    push        4566EA
 004566DA    lea         eax,[ebp-4]
 004566DD    call        @IntfClear
 004566E2    ret
>004566E3    jmp         @HandleFinally
>004566E8    jmp         004566DA
 004566EA    mov         eax,edi
 004566EC    test        bl,bl
>004566EE    je          004566FF
 004566F0    call        @AfterConstruction
 004566F5    pop         dword ptr fs:[0]
 004566FC    add         esp,0C
 004566FF    mov         eax,edi
 00456701    pop         edi
 00456702    pop         esi
 00456703    pop         ebx
 00456704    pop         ecx
 00456705    pop         ebp
 00456706    ret
*}
end;

//00456708
destructor TList<System.Rtti.TMethodImplementation.TParamLoc>.Destroy();
begin
{*
 00456708    push        ebx
 00456709    push        esi
 0045670A    call        @BeforeDestruction
 0045670F    mov         ebx,edx
 00456711    mov         esi,eax
 00456713    cmp         dword ptr [esi+8],0;TList<System.Rtti.TMethodImplementation.TParamLoc>.FCount:Integer
>00456717    jle         00456722
 00456719    xor         edx,edx
 0045671B    mov         eax,esi
 0045671D    call        00456594
 00456722    push        0
 00456724    lea         eax,[esi+20]
 00456727    mov         ecx,1
 0045672C    mov         edx,dword ptr ds:[43B390];TList<System.Rtti.TMethodImplementation.TParamLoc>.arrayofT
 00456732    call        @DynArraySetLength
 00456737    add         esp,4
 0045673A    mov         dl,0FC
 0045673C    and         dl,bl
 0045673E    mov         eax,esi
 00456740    call        TEnumerable<System.Rtti.TMethodImplementation.TParamLoc>.Destroy
 00456745    test        bl,bl
>00456747    jle         00456750
 00456749    mov         eax,esi
 0045674B    call        @ClassDestroy
 00456750    pop         esi
 00456751    pop         ebx
 00456752    ret
*}
end;

//00456754
{*procedure TList<System.Rtti.TMethodImplementation.TParamLoc>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 00456754    push        ebp
 00456755    mov         ebp,esp
 00456757    add         esp,0FFFFFFF0
 0045675A    mov         dword ptr [ebp-8],ecx
 0045675D    mov         dword ptr [ebp-4],edx
 00456760    push        dword ptr [ebp+4]
 00456763    mov         eax,dword ptr [ebp-8]
 00456766    mov         dword ptr [ebp-10],eax
 00456769    mov         byte ptr [ebp-0C],0
 0045676D    lea         eax,[ebp-10]
 00456770    push        eax
 00456771    push        0
 00456773    mov         ecx,dword ptr [ebp-4]
 00456776    mov         dl,1
 00456778    mov         eax,[004180BC];EListError
 0045677D    call        Exception.CreateFmt;EListError.Create
>00456782    jmp         @RaiseExcept
end;*}

//0045678C
procedure TList<System.Rtti.TMethodImplementation.TParamLoc>.Add(Value:TMethodImplementation.TParamLoc);
begin
{*
 0045678C    push        ecx
 0045678D    mov         dword ptr [esp],edx
 00456790    mov         edx,dword ptr [esp]
 00456793    add         eax,8
 00456796    call        004349D0
 0045679B    pop         edx
 0045679C    ret
*}
end;

//004567A0
{*procedure TList<System.Rtti.TMethodImplementation.TParamLoc>.ToArray(?:?);
begin
 004567A0    push        ecx
 004567A1    mov         dword ptr [esp],edx
 004567A4    mov         edx,dword ptr [esp]
 004567A7    add         eax,8
 004567AA    call        00435980
 004567AF    pop         edx
 004567B0    ret
end;*}

//004567B4
procedure TList<System.Rtti.TMethodImplementation.TParamLoc>.GetEnumerator;
begin
{*
 004567B4    mov         ecx,eax
 004567B6    mov         dl,1
 004567B8    mov         eax,[0043B634];TList<System.Rtti.TMethodImplementation.TParamLoc>.TEnumerator
 004567BD    call        00456830
 004567C2    ret
*}
end;

//004567C4
{*procedure sub_004567C4(?:TList<System.Rtti.TMethodImplementation.TParamLoc>.TEnumerator; ?:?);
begin
 004567C4    push        ebx
 004567C5    push        esi
 004567C6    push        edi
 004567C7    add         esp,0FFFFFFF4
 004567CA    mov         edi,edx
 004567CC    mov         ebx,dword ptr [eax+4]
 004567CF    mov         esi,dword ptr [eax+8]
 004567D2    lea         eax,[ebx+8]
 004567D5    mov         edx,esi
 004567D7    call        00434534
 004567DC    lea         eax,[esi+esi*2]
 004567DF    mov         edx,dword ptr [ebx+20]
 004567E2    mov         ecx,dword ptr [edx+eax*4]
 004567E5    mov         dword ptr [esp],ecx
 004567E8    mov         ecx,dword ptr [edx+eax*4+4]
 004567EC    mov         dword ptr [esp+4],ecx
 004567F0    mov         ecx,dword ptr [edx+eax*4+8]
 004567F4    mov         dword ptr [esp+8],ecx
 004567F8    mov         eax,dword ptr [esp]
 004567FB    mov         dword ptr [edi],eax
 004567FD    mov         eax,dword ptr [esp+4]
 00456801    mov         dword ptr [edi+4],eax
 00456804    mov         eax,dword ptr [esp+8]
 00456808    mov         dword ptr [edi+8],eax
 0045680B    add         esp,0C
 0045680E    pop         edi
 0045680F    pop         esi
 00456810    pop         ebx
 00456811    ret
end;*}

//00456814
{*procedure sub_00456814(?:?);
begin
 00456814    push        ebx
 00456815    push        esi
 00456816    mov         esi,edx
 00456818    mov         ebx,eax
 0045681A    mov         edx,esi
 0045681C    mov         eax,ebx
 0045681E    call        004567C4
 00456823    pop         esi
 00456824    pop         ebx
 00456825    ret
end;*}

//00456828
procedure sub_00456828;
begin
{*
 00456828    call        TList<System.Rtti.TMethodImplementation.TParamLoc>.TEnumerator.MoveNext
 0045682D    ret
*}
end;

//00456830
constructor sub_00456830(AList:TList<System.Rtti.TMethodImplementation.TParamLoc>);
begin
{*
 00456830    push        ebx
 00456831    push        esi
 00456832    push        edi
 00456833    test        dl,dl
>00456835    je          0045683F
 00456837    add         esp,0FFFFFFF0
 0045683A    call        @ClassCreate
 0045683F    mov         esi,ecx
 00456841    mov         ebx,edx
 00456843    mov         edi,eax
 00456845    xor         edx,edx
 00456847    mov         eax,edi
 00456849    call        TObject.Create
 0045684E    mov         dword ptr [edi+4],esi;TList<System.Rtti.TMethodImplementation.TParamLoc>.TEnumerator.FLi...
 00456851    mov         dword ptr [edi+8],0FFFFFFFF
 00456858    mov         eax,edi
 0045685A    test        bl,bl
>0045685C    je          0045686D
 0045685E    call        @AfterConstruction
 00456863    pop         dword ptr fs:[0]
 0045686A    add         esp,0C
 0045686D    mov         eax,edi
 0045686F    pop         edi
 00456870    pop         esi
 00456871    pop         ebx
 00456872    ret
*}
end;

//00456874
function TList<System.Rtti.TMethodImplementation.TParamLoc>.TEnumerator.MoveNext:Boolean;
begin
{*
 00456874    mov         edx,dword ptr [eax+4]
 00456877    mov         edx,dword ptr [edx+8]
 0045687A    cmp         edx,dword ptr [eax+8]
>0045687D    jg          00456882
 0045687F    xor         eax,eax
 00456881    ret
 00456882    inc         dword ptr [eax+8]
 00456885    mov         edx,dword ptr [eax+4]
 00456888    mov         edx,dword ptr [edx+8]
 0045688B    cmp         edx,dword ptr [eax+8]
 0045688E    setg        al
 00456891    ret
*}
end;

//00456894
{*procedure sub_00456894(?:?; ?:Pointer; ?:?);
begin
 00456894    mov         dword ptr [eax],edx
 00456896    mov         dword ptr [eax+4],ecx
 00456899    ret
end;*}

//0045689C
{*procedure sub_0045689C(?:TDictionary<System; ?:?; ?:?);
begin
 0045689C    push        ebp
 0045689D    mov         ebp,esp
 0045689F    add         esp,0FFFFFFF0
 004568A2    push        ebx
 004568A3    push        esi
 004568A4    push        edi
 004568A5    mov         dword ptr [ebp-4],ecx
 004568A8    mov         ebx,edx
 004568AA    mov         esi,eax
 004568AC    lea         edi,[ebp-0C]
 004568AF    push        ebx
 004568B0    mov         eax,dword ptr [ebp-4]
 004568B3    mov         ecx,1
 004568B8    mov         edx,dword ptr ds:[43C658];TArray<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObjec...
 004568BE    call        @DynArraySetLength
 004568C3    add         esp,4
 004568C6    xor         ebx,ebx
 004568C8    mov         eax,esi
 004568CA    call        TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator
 004568CF    mov         dword ptr [ebp-10],eax
 004568D2    xor         eax,eax
 004568D4    push        ebp
 004568D5    push        456927
 004568DA    push        dword ptr fs:[eax]
 004568DD    mov         dword ptr fs:[eax],esp
>004568E0    jmp         004568FD
 004568E2    mov         edx,edi
 004568E4    mov         eax,dword ptr [ebp-10]
 004568E7    mov         ecx,dword ptr [eax]
 004568E9    call        dword ptr [ecx]
 004568EB    mov         eax,dword ptr [ebp-4]
 004568EE    mov         eax,dword ptr [eax]
 004568F0    mov         edx,dword ptr [edi]
 004568F2    mov         dword ptr [eax+ebx*8],edx
 004568F5    mov         edx,dword ptr [edi+4]
 004568F8    mov         dword ptr [eax+ebx*8+4],edx
 004568FC    inc         ebx
 004568FD    mov         eax,dword ptr [ebp-10]
 00456900    call        TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.MoveNext
 00456905    test        al,al
>00456907    jne         004568E2
 00456909    xor         eax,eax
 0045690B    pop         edx
 0045690C    pop         ecx
 0045690D    pop         ecx
 0045690E    mov         dword ptr fs:[eax],edx
 00456911    push        45692E
 00456916    cmp         dword ptr [ebp-10],0
>0045691A    je          00456926
 0045691C    mov         dl,1
 0045691E    mov         eax,dword ptr [ebp-10]
 00456921    mov         ecx,dword ptr [eax]
 00456923    call        dword ptr [ecx-4]
 00456926    ret
>00456927    jmp         @HandleFinally
>0045692C    jmp         00456916
 0045692E    pop         edi
 0045692F    pop         esi
 00456930    pop         ebx
 00456931    mov         esp,ebp
 00456933    pop         ebp
 00456934    ret
end;*}

//00456938
destructor TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy();
begin
{*
 00456938    push        ebx
 00456939    push        esi
 0045693A    call        @BeforeDestruction
 0045693F    mov         ebx,edx
 00456941    mov         esi,eax
 00456943    mov         dl,0FC
 00456945    and         dl,bl
 00456947    mov         eax,esi
 00456949    call        TObject.Destroy
 0045694E    test        bl,bl
>00456950    jle         00456959
 00456952    mov         eax,esi
 00456954    call        @ClassDestroy
 00456959    pop         esi
 0045695A    pop         ebx
 0045695B    ret
*}
end;

//0045695C
function TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>;
begin
{*
 0045695C    mov         edx,dword ptr [eax]
 0045695E    call        dword ptr [edx]
 00456960    ret
*}
end;

//00456964
{*procedure TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray(?:?);
begin
 00456964    push        ebp
 00456965    mov         ebp,esp
 00456967    add         esp,0FFFFFFEC
 0045696A    push        ebx
 0045696B    push        esi
 0045696C    mov         dword ptr [ebp-4],edx
 0045696F    mov         ebx,eax
 00456971    lea         esi,[ebp-10]
 00456974    mov         dl,1
 00456976    mov         eax,[0045DAA4];TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>
 0045697B    call        0045B22C
 00456980    mov         dword ptr [ebp-8],eax
 00456983    xor         eax,eax
 00456985    push        ebp
 00456986    push        456A10
 0045698B    push        dword ptr fs:[eax]
 0045698E    mov         dword ptr fs:[eax],esp
 00456991    mov         eax,ebx
 00456993    call        TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator
 00456998    mov         dword ptr [ebp-14],eax
 0045699B    xor         eax,eax
 0045699D    push        ebp
 0045699E    push        4569E8
 004569A3    push        dword ptr fs:[eax]
 004569A6    mov         dword ptr fs:[eax],esp
>004569A9    jmp         004569BE
 004569AB    mov         edx,esi
 004569AD    mov         eax,dword ptr [ebp-14]
 004569B0    mov         ecx,dword ptr [eax]
 004569B2    call        dword ptr [ecx]
 004569B4    mov         edx,esi
 004569B6    mov         eax,dword ptr [ebp-8]
 004569B9    call        TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Add
 004569BE    mov         eax,dword ptr [ebp-14]
 004569C1    call        TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.MoveNext
 004569C6    test        al,al
>004569C8    jne         004569AB
 004569CA    xor         eax,eax
 004569CC    pop         edx
 004569CD    pop         ecx
 004569CE    pop         ecx
 004569CF    mov         dword ptr fs:[eax],edx
 004569D2    push        4569EF
 004569D7    cmp         dword ptr [ebp-14],0
>004569DB    je          004569E7
 004569DD    mov         dl,1
 004569DF    mov         eax,dword ptr [ebp-14]
 004569E2    mov         ecx,dword ptr [eax]
 004569E4    call        dword ptr [ecx-4]
 004569E7    ret
>004569E8    jmp         @HandleFinally
>004569ED    jmp         004569D7
 004569EF    mov         edx,dword ptr [ebp-4]
 004569F2    mov         eax,dword ptr [ebp-8]
 004569F5    call        TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray
 004569FA    xor         eax,eax
 004569FC    pop         edx
 004569FD    pop         ecx
 004569FE    pop         ecx
 004569FF    mov         dword ptr fs:[eax],edx
 00456A02    push        456A17
 00456A07    mov         eax,dword ptr [ebp-8]
 00456A0A    call        TObject.Free
 00456A0F    ret
>00456A10    jmp         @HandleFinally
>00456A15    jmp         00456A07
 00456A17    pop         esi
 00456A18    pop         ebx
 00456A19    mov         esp,ebp
 00456A1B    pop         ebp
 00456A1C    ret
end;*}

//00456A20
function TEnumerator<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.MoveNext:Boolean;
begin
{*
 00456A20    mov         edx,dword ptr [eax]
 00456A22    call        dword ptr [edx+4]
 00456A25    ret
*}
end;

//00456A28
procedure sub_00456A28(?:TDictionary<System.Pointer,System.Rtti.TRttiObject>; ?:Integer);
begin
{*
 00456A28    cmp         edx,dword ptr [eax+8]
>00456A2B    jge         00456A44
 00456A2D    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00456A33    mov         dl,1
 00456A35    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00456A3A    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00456A3F    call        @RaiseExcept
 00456A44    test        edx,edx
>00456A46    jne         00456A50
 00456A48    xor         edx,edx
 00456A4A    call        00456A68
 00456A4F    ret
 00456A50    mov         ecx,4
 00456A55    cmp         edx,ecx
>00456A57    jle         00456A5F
 00456A59    add         ecx,ecx
 00456A5B    cmp         edx,ecx
>00456A5D    jg          00456A59
 00456A5F    mov         edx,ecx
 00456A61    call        00456A68
 00456A66    ret
*}
end;

//00456A68
{*procedure sub_00456A68(?:?; ?:?);
begin
 00456A68    push        ebp
 00456A69    mov         ebp,esp
 00456A6B    add         esp,0FFFFFFF0
 00456A6E    push        ebx
 00456A6F    push        esi
 00456A70    push        edi
 00456A71    xor         ecx,ecx
 00456A73    mov         dword ptr [ebp-4],ecx
 00456A76    mov         dword ptr [ebp-8],ecx
 00456A79    mov         edi,edx
 00456A7B    mov         dword ptr [ebp-0C],eax
 00456A7E    xor         eax,eax
 00456A80    push        ebp
 00456A81    push        456B89
 00456A86    push        dword ptr fs:[eax]
 00456A89    mov         dword ptr fs:[eax],esp
 00456A8C    mov         eax,dword ptr [ebp-0C]
 00456A8F    mov         eax,dword ptr [eax+4]
 00456A92    mov         dword ptr [ebp-10],eax
 00456A95    mov         eax,dword ptr [ebp-10]
 00456A98    test        eax,eax
>00456A9A    je          00456AA1
 00456A9C    sub         eax,4
 00456A9F    mov         eax,dword ptr [eax]
 00456AA1    cmp         eax,edi
>00456AA3    je          00456B68
 00456AA9    test        edi,edi
>00456AAB    jge         00456AB2
 00456AAD    call        00423F00
 00456AB2    lea         eax,[ebp-4]
 00456AB5    mov         edx,dword ptr [ebp-0C]
 00456AB8    mov         edx,dword ptr [edx+4]
 00456ABB    mov         ecx,dword ptr ds:[43CA8C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray
 00456AC1    call        @DynArrayAsg
 00456AC6    push        edi
 00456AC7    lea         eax,[ebp-8]
 00456ACA    mov         ecx,1
 00456ACF    mov         edx,dword ptr ds:[43CA8C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray
 00456AD5    call        @DynArraySetLength
 00456ADA    add         esp,4
 00456ADD    mov         eax,dword ptr [ebp-8]
 00456AE0    test        eax,eax
>00456AE2    je          00456AE9
 00456AE4    sub         eax,4
 00456AE7    mov         eax,dword ptr [eax]
 00456AE9    mov         esi,eax
 00456AEB    dec         esi
 00456AEC    test        esi,esi
>00456AEE    jl          00456B04
 00456AF0    inc         esi
 00456AF1    xor         ebx,ebx
 00456AF3    lea         eax,[ebx+ebx*2]
 00456AF6    mov         edx,dword ptr [ebp-8]
 00456AF9    mov         dword ptr [edx+eax*4],0FFFFFFFF
 00456B00    inc         ebx
 00456B01    dec         esi
>00456B02    jne         00456AF3
 00456B04    mov         eax,dword ptr [ebp-0C]
 00456B07    add         eax,4
 00456B0A    mov         edx,dword ptr [ebp-8]
 00456B0D    mov         ecx,dword ptr ds:[43CA8C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray
 00456B13    call        @DynArrayAsg
 00456B18    mov         eax,edi
 00456B1A    shr         eax,1
 00456B1C    shr         edi,2
 00456B1F    add         eax,edi
 00456B21    mov         edx,dword ptr [ebp-0C]
 00456B24    mov         dword ptr [edx+10],eax
 00456B27    mov         eax,dword ptr [ebp-4]
 00456B2A    test        eax,eax
>00456B2C    je          00456B33
 00456B2E    sub         eax,4
 00456B31    mov         eax,dword ptr [eax]
 00456B33    mov         esi,eax
 00456B35    dec         esi
 00456B36    test        esi,esi
>00456B38    jl          00456B68
 00456B3A    inc         esi
 00456B3B    xor         ebx,ebx
 00456B3D    lea         eax,[ebx+ebx*2]
 00456B40    mov         edx,dword ptr [ebp-4]
 00456B43    mov         edx,dword ptr [edx+eax*4]
 00456B46    cmp         edx,0FFFFFFFF
>00456B49    je          00456B64
 00456B4B    mov         ecx,dword ptr [ebp-4]
 00456B4E    mov         ecx,dword ptr [ecx+eax*4+8]
 00456B52    push        ecx
 00456B53    mov         ecx,dword ptr [ebp-4]
 00456B56    mov         ecx,dword ptr [ecx+eax*4+4]
 00456B5A    push        ecx
 00456B5B    mov         eax,dword ptr [ebp-0C]
 00456B5E    pop         ecx
 00456B5F    call        00456C8C
 00456B64    inc         ebx
 00456B65    dec         esi
>00456B66    jne         00456B3D
 00456B68    xor         eax,eax
 00456B6A    pop         edx
 00456B6B    pop         ecx
 00456B6C    pop         ecx
 00456B6D    mov         dword ptr fs:[eax],edx
 00456B70    push        456B90
 00456B75    lea         eax,[ebp-8]
 00456B78    mov         edx,dword ptr ds:[43CA8C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray
 00456B7E    mov         ecx,2
 00456B83    call        @FinalizeArray
 00456B88    ret
>00456B89    jmp         @HandleFinally
>00456B8E    jmp         00456B75
 00456B90    pop         edi
 00456B91    pop         esi
 00456B92    pop         ebx
 00456B93    mov         esp,ebp
 00456B95    pop         ebp
 00456B96    ret
end;*}

//00456B98
procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.Grow;
begin
{*
 00456B98    push        ecx
 00456B99    mov         edx,dword ptr [eax+4]
 00456B9C    mov         dword ptr [esp],edx
 00456B9F    mov         edx,dword ptr [esp]
 00456BA2    test        edx,edx
>00456BA4    je          00456BAB
 00456BA6    sub         edx,4
 00456BA9    mov         edx,dword ptr [edx]
 00456BAB    add         edx,edx
 00456BAD    test        edx,edx
>00456BAF    jne         00456BB6
 00456BB1    mov         edx,4
 00456BB6    call        00456A68
 00456BBB    pop         edx
 00456BBC    ret
*}
end;

//00456BC0
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetBucketIndex(const Key:Pointer; HashCode:Integer):Integer;
begin
{*
 00456BC0    push        ebx
 00456BC1    push        esi
 00456BC2    push        edi
 00456BC3    add         esp,0FFFFFFE8
 00456BC6    mov         dword ptr [esp+4],ecx
 00456BCA    mov         dword ptr [esp],edx
 00456BCD    mov         esi,eax
 00456BCF    mov         eax,dword ptr [esi+4]
 00456BD2    mov         dword ptr [esp+0C],eax
 00456BD6    mov         eax,dword ptr [esp+0C]
 00456BDA    test        eax,eax
>00456BDC    je          00456BE3
 00456BDE    sub         eax,4
 00456BE1    mov         eax,dword ptr [eax]
 00456BE3    test        eax,eax
>00456BE5    jne         00456BEE
 00456BE7    mov         ebx,80000000
>00456BEC    jmp         00456C61
 00456BEE    mov         eax,dword ptr [esi+4]
 00456BF1    mov         dword ptr [esp+10],eax
 00456BF5    mov         eax,dword ptr [esp+10]
 00456BF9    test        eax,eax
>00456BFB    je          00456C02
 00456BFD    sub         eax,4
 00456C00    mov         eax,dword ptr [eax]
 00456C02    dec         eax
 00456C03    and         eax,dword ptr [esp+4]
 00456C07    mov         ebx,eax
 00456C09    lea         eax,[ebx+ebx*2]
 00456C0C    mov         edx,dword ptr [esi+4]
 00456C0F    mov         eax,dword ptr [edx+eax*4]
 00456C12    mov         dword ptr [esp+8],eax
 00456C16    cmp         dword ptr [esp+8],0FFFFFFFF
>00456C1B    jne         00456C21
 00456C1D    not         ebx
>00456C1F    jmp         00456C61
 00456C21    mov         eax,dword ptr [esp+8]
 00456C25    cmp         eax,dword ptr [esp+4]
>00456C29    jne         00456C44
 00456C2B    lea         eax,[ebx+ebx*2]
 00456C2E    mov         edx,dword ptr [esi+4]
 00456C31    mov         edx,dword ptr [edx+eax*4+4]
 00456C35    mov         ecx,dword ptr [esp]
 00456C38    mov         eax,dword ptr [esi+0C]
 00456C3B    mov         edi,dword ptr [eax]
 00456C3D    call        dword ptr [edi+0C]
 00456C40    test        al,al
>00456C42    jne         00456C61
 00456C44    inc         ebx
 00456C45    mov         eax,dword ptr [esi+4]
 00456C48    mov         dword ptr [esp+14],eax
 00456C4C    mov         edi,dword ptr [esp+14]
 00456C50    test        edi,edi
>00456C52    je          00456C59
 00456C54    sub         edi,4
 00456C57    mov         edi,dword ptr [edi]
 00456C59    cmp         edi,ebx
>00456C5B    jg          00456C09
 00456C5D    xor         ebx,ebx
>00456C5F    jmp         00456C09
 00456C61    mov         eax,ebx
 00456C63    add         esp,18
 00456C66    pop         edi
 00456C67    pop         esi
 00456C68    pop         ebx
 00456C69    ret
*}
end;

//00456C6C
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.Hash(const Key:Pointer):Integer;
begin
{*
 00456C6C    push        ebx
 00456C6D    push        esi
 00456C6E    mov         esi,edx
 00456C70    mov         ebx,eax
 00456C72    mov         edx,esi
 00456C74    mov         eax,dword ptr [ebx+0C]
 00456C77    mov         ecx,dword ptr [eax]
 00456C79    call        dword ptr [ecx+10]
 00456C7C    and         eax,7FFFFFFF
 00456C81    inc         eax
 00456C82    and         eax,7FFFFFFF
 00456C87    pop         esi
 00456C88    pop         ebx
 00456C89    ret
*}
end;

//00456C8C
{*procedure sub_00456C8C(?:?; ?:?; ?:?; ?:?);
begin
 00456C8C    push        ebp
 00456C8D    mov         ebp,esp
 00456C8F    add         esp,0FFFFFFF8
 00456C92    push        ebx
 00456C93    push        esi
 00456C94    mov         dword ptr [ebp-8],ecx
 00456C97    mov         dword ptr [ebp-4],edx
 00456C9A    mov         ebx,eax
 00456C9C    mov         ecx,dword ptr [ebp-4]
 00456C9F    mov         edx,dword ptr [ebp-8]
 00456CA2    mov         eax,ebx
 00456CA4    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetBucketIndex
 00456CA9    not         eax
 00456CAB    lea         edx,[eax+eax*2]
 00456CAE    mov         ecx,dword ptr [ebx+4]
 00456CB1    mov         esi,dword ptr [ebp-4]
 00456CB4    mov         dword ptr [ecx+edx*4],esi
 00456CB7    mov         ecx,dword ptr [ebx+4]
 00456CBA    mov         esi,dword ptr [ebp-8]
 00456CBD    mov         dword ptr [ecx+edx*4+4],esi
 00456CC1    mov         eax,dword ptr [ebx+4]
 00456CC4    mov         ecx,dword ptr [ebp+8]
 00456CC7    mov         dword ptr [eax+edx*4+8],ecx
 00456CCB    pop         esi
 00456CCC    pop         ebx
 00456CCD    pop         ecx
 00456CCE    pop         ecx
 00456CCF    pop         ebp
 00456CD0    ret         4
end;*}

//00456CD4
procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.DoAdd(HashCode:Integer; Index:Integer; const Key:Pointer; const Value:TRttiObject);
begin
{*
 00456CD4    push        ebp
 00456CD5    mov         ebp,esp
 00456CD7    push        ecx
 00456CD8    push        ebx
 00456CD9    push        esi
 00456CDA    push        edi
 00456CDB    mov         dword ptr [ebp-4],edx
 00456CDE    mov         ebx,eax
 00456CE0    mov         esi,dword ptr [ebp+0C]
 00456CE3    lea         eax,[ecx+ecx*2]
 00456CE6    mov         edx,dword ptr [ebx+4]
 00456CE9    mov         edi,dword ptr [ebp-4]
 00456CEC    mov         dword ptr [edx+eax*4],edi
 00456CEF    mov         edx,dword ptr [ebx+4]
 00456CF2    mov         dword ptr [edx+eax*4+4],esi
 00456CF6    mov         edx,dword ptr [ebx+4]
 00456CF9    mov         ecx,dword ptr [ebp+8]
 00456CFC    mov         dword ptr [edx+eax*4+8],ecx
 00456D00    inc         dword ptr [ebx+8]
 00456D03    xor         ecx,ecx
 00456D05    mov         edx,esi
 00456D07    mov         eax,ebx
 00456D09    mov         esi,dword ptr [eax]
 00456D0B    call        dword ptr [esi+8]
 00456D0E    xor         ecx,ecx
 00456D10    mov         edx,dword ptr [ebp+8]
 00456D13    mov         eax,ebx
 00456D15    mov         ebx,dword ptr [eax]
 00456D17    call        dword ptr [ebx+0C]
 00456D1A    pop         edi
 00456D1B    pop         esi
 00456D1C    pop         ebx
 00456D1D    pop         ecx
 00456D1E    pop         ebp
 00456D1F    ret         8
*}
end;

//00456D24
{*function sub_00456D24(?:TDictionary<System; ?:?):?;
begin
 00456D24    push        ebp
 00456D25    mov         ebp,esp
 00456D27    add         esp,0FFFFFFE0
 00456D2A    push        ebx
 00456D2B    push        esi
 00456D2C    push        edi
 00456D2D    mov         dword ptr [ebp-4],eax
 00456D30    mov         eax,dword ptr [ebp-4]
 00456D33    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetBucketIndex
 00456D38    test        eax,eax
>00456D3A    jge         00456D46
 00456D3C    xor         eax,eax
 00456D3E    mov         dword ptr [ebp-8],eax
>00456D41    jmp         00456E8B
 00456D46    lea         edx,[eax+eax*2]
 00456D49    mov         ecx,dword ptr [ebp-4]
 00456D4C    mov         ecx,dword ptr [ecx+4]
 00456D4F    mov         dword ptr [ecx+edx*4],0FFFFFFFF
 00456D56    mov         ecx,dword ptr [ebp-4]
 00456D59    mov         ecx,dword ptr [ecx+4]
 00456D5C    mov         ecx,dword ptr [ecx+edx*4+8]
 00456D60    mov         dword ptr [ebp-8],ecx
 00456D63    mov         ecx,dword ptr [ebp-4]
 00456D66    mov         ecx,dword ptr [ecx+4]
 00456D69    mov         edx,dword ptr [ecx+edx*4+4]
 00456D6D    mov         dword ptr [ebp-10],edx
 00456D70    mov         edx,eax
 00456D72    inc         eax
 00456D73    mov         ecx,dword ptr [ebp-4]
 00456D76    mov         ecx,dword ptr [ecx+4]
 00456D79    mov         dword ptr [ebp-14],ecx
 00456D7C    mov         ecx,dword ptr [ebp-14]
 00456D7F    mov         dword ptr [ebp-18],ecx
 00456D82    cmp         dword ptr [ebp-18],0
>00456D86    je          00456D93
 00456D88    mov         ecx,dword ptr [ebp-18]
 00456D8B    sub         ecx,4
 00456D8E    mov         ecx,dword ptr [ecx]
 00456D90    mov         dword ptr [ebp-18],ecx
 00456D93    cmp         eax,dword ptr [ebp-18]
>00456D96    jne         00456D9A
 00456D98    xor         eax,eax
 00456D9A    lea         ecx,[eax+eax*2]
 00456D9D    mov         ebx,dword ptr [ebp-4]
 00456DA0    mov         ebx,dword ptr [ebx+4]
 00456DA3    mov         ecx,dword ptr [ebx+ecx*4]
 00456DA6    mov         dword ptr [ebp-0C],ecx
 00456DA9    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00456DAD    je          00456E3F
 00456DB3    mov         ecx,dword ptr [ebp-4]
 00456DB6    mov         ecx,dword ptr [ecx+4]
 00456DB9    mov         dword ptr [ebp-1C],ecx
 00456DBC    mov         ecx,dword ptr [ebp-1C]
 00456DBF    mov         dword ptr [ebp-20],ecx
 00456DC2    cmp         dword ptr [ebp-20],0
>00456DC6    je          00456DD3
 00456DC8    mov         ecx,dword ptr [ebp-20]
 00456DCB    sub         ecx,4
 00456DCE    mov         ecx,dword ptr [ecx]
 00456DD0    mov         dword ptr [ebp-20],ecx
 00456DD3    mov         ebx,dword ptr [ebp-20]
 00456DD6    dec         ebx
 00456DD7    and         ebx,dword ptr [ebp-0C]
 00456DDA    cmp         ebx,edx
>00456DDC    jle         00456DE2
 00456DDE    cmp         eax,ebx
>00456DE0    jge         00456DF6
 00456DE2    cmp         edx,eax
>00456DE4    jle         00456DEA
 00456DE6    cmp         edx,ebx
>00456DE8    jl          00456DF6
 00456DEA    cmp         edx,eax
>00456DEC    jle         00456DF2
 00456DEE    cmp         eax,ebx
>00456DF0    jge         00456DF6
 00456DF2    xor         ecx,ecx
>00456DF4    jmp         00456DF8
 00456DF6    mov         cl,1
 00456DF8    test        cl,cl
>00456DFA    jne         00456D72
 00456E00    lea         edx,[edx+edx*2]
 00456E03    mov         ecx,dword ptr [ebp-4]
 00456E06    mov         ecx,dword ptr [ecx+4]
 00456E09    lea         ebx,[eax+eax*2]
 00456E0C    mov         esi,dword ptr [ebp-4]
 00456E0F    mov         esi,dword ptr [esi+4]
 00456E12    mov         edi,dword ptr [esi+ebx*4]
 00456E15    mov         dword ptr [ecx+edx*4],edi
 00456E18    mov         edi,dword ptr [esi+ebx*4+4]
 00456E1C    mov         dword ptr [ecx+edx*4+4],edi
 00456E20    mov         edi,dword ptr [esi+ebx*4+8]
 00456E24    mov         dword ptr [ecx+edx*4+8],edi
 00456E28    mov         edx,eax
 00456E2A    lea         ecx,[edx+edx*2]
 00456E2D    mov         ebx,dword ptr [ebp-4]
 00456E30    mov         ebx,dword ptr [ebx+4]
 00456E33    mov         dword ptr [ebx+ecx*4],0FFFFFFFF
>00456E3A    jmp         00456D72
 00456E3F    lea         eax,[edx+edx*2]
 00456E42    mov         ecx,dword ptr [ebp-4]
 00456E45    mov         ecx,dword ptr [ecx+4]
 00456E48    mov         dword ptr [ecx+eax*4],0FFFFFFFF
 00456E4F    mov         ecx,dword ptr [ebp-4]
 00456E52    mov         ecx,dword ptr [ecx+4]
 00456E55    xor         ebx,ebx
 00456E57    mov         dword ptr [ecx+eax*4+4],ebx
 00456E5B    mov         edx,dword ptr [ebp-4]
 00456E5E    mov         edx,dword ptr [edx+4]
 00456E61    xor         ecx,ecx
 00456E63    mov         dword ptr [edx+eax*4+8],ecx
 00456E67    mov         eax,dword ptr [ebp-4]
 00456E6A    dec         dword ptr [eax+8]
 00456E6D    movzx       ebx,byte ptr [ebp+8]
 00456E71    mov         ecx,ebx
 00456E73    mov         edx,dword ptr [ebp-10]
 00456E76    mov         eax,dword ptr [ebp-4]
 00456E79    mov         esi,dword ptr [eax]
 00456E7B    call        dword ptr [esi+8]
 00456E7E    mov         ecx,ebx
 00456E80    mov         edx,dword ptr [ebp-8]
 00456E83    mov         eax,dword ptr [ebp-4]
 00456E86    mov         ebx,dword ptr [eax]
 00456E88    call        dword ptr [ebx+0C]
 00456E8B    mov         eax,dword ptr [ebp-8]
 00456E8E    pop         edi
 00456E8F    pop         esi
 00456E90    pop         ebx
 00456E91    mov         esp,ebp
 00456E93    pop         ebp
 00456E94    ret         4
end;*}

//00456E98
procedure sub_00456E98;
begin
{*
 00456E98    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetEnumerator
 00456E9D    ret
*}
end;

//00456EA0
{*procedure sub_00456EA0(?:?);
begin
 00456EA0    push        ebx
 00456EA1    cmp         word ptr [eax+1A],0;TDictionary<System.Pointer,System.Rtti.TRttiObject>.FOnKeyNotify:TCo...
>00456EA6    je          00456EB5
 00456EA8    push        ecx
 00456EA9    mov         ebx,eax
 00456EAB    mov         ecx,edx
 00456EAD    mov         edx,eax
 00456EAF    mov         eax,dword ptr [ebx+1C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.FOnKeyNotify:...
 00456EB2    call        dword ptr [ebx+18];TDictionary<System.Pointer,System.Rtti.TRttiObject>.FOnKeyNotify
 00456EB5    pop         ebx
 00456EB6    ret
end;*}

//00456EB8
{*procedure sub_00456EB8(?:?);
begin
 00456EB8    push        ebx
 00456EB9    cmp         word ptr [eax+22],0;TDictionary<System.Pointer,System.Rtti.TRttiObject>.FOnValueNotify:T...
>00456EBE    je          00456ECD
 00456EC0    push        ecx
 00456EC1    mov         ebx,eax
 00456EC3    mov         ecx,edx
 00456EC5    mov         edx,eax
 00456EC7    mov         eax,dword ptr [ebx+24];TDictionary<System.Pointer,System.Rtti.TRttiObject>.FOnValueNotif...
 00456ECA    call        dword ptr [ebx+20];TDictionary<System.Pointer,System.Rtti.TRttiObject>.FOnValueNotify
 00456ECD    pop         ebx
 00456ECE    ret
end;*}

//00456ED0
constructor sub_00456ED0(ACapacity:Integer; AComparer:IEqualityComparer<System.Pointer>);
begin
{*
 00456ED0    push        ebp
 00456ED1    mov         ebp,esp
 00456ED3    push        0
 00456ED5    push        ebx
 00456ED6    push        esi
 00456ED7    push        edi
 00456ED8    test        dl,dl
>00456EDA    je          00456EE4
 00456EDC    add         esp,0FFFFFFF0
 00456EDF    call        @ClassCreate
 00456EE4    mov         esi,ecx
 00456EE6    mov         ebx,edx
 00456EE8    mov         edi,eax
 00456EEA    xor         eax,eax
 00456EEC    push        ebp
 00456EED    push        456F5F
 00456EF2    push        dword ptr fs:[eax]
 00456EF5    mov         dword ptr fs:[eax],esp
 00456EF8    xor         edx,edx
 00456EFA    mov         eax,edi
 00456EFC    call        TObject.Create
 00456F01    test        esi,esi
>00456F03    jge         00456F1C
 00456F05    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00456F0B    mov         dl,1
 00456F0D    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00456F12    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00456F17    call        @RaiseExcept
 00456F1C    lea         eax,[edi+0C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.FComparer:IEqualityComp...
 00456F1F    mov         edx,dword ptr [ebp+8]
 00456F22    call        @IntfCopy
 00456F27    cmp         dword ptr [edi+0C],0;TDictionary<System.Pointer,System.Rtti.TRttiObject>.FComparer:IEqua...
>00456F2B    jne         00456F40
 00456F2D    lea         eax,[ebp-4]
 00456F30    call        0045B4CC
 00456F35    mov         edx,dword ptr [ebp-4]
 00456F38    lea         eax,[edi+0C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.FComparer:IEqualityComp...
 00456F3B    call        @IntfCopy
 00456F40    mov         edx,esi
 00456F42    mov         eax,edi
 00456F44    call        00456A28
 00456F49    xor         eax,eax
 00456F4B    pop         edx
 00456F4C    pop         ecx
 00456F4D    pop         ecx
 00456F4E    mov         dword ptr fs:[eax],edx
 00456F51    push        456F66
 00456F56    lea         eax,[ebp-4]
 00456F59    call        @IntfClear
 00456F5E    ret
>00456F5F    jmp         @HandleFinally
>00456F64    jmp         00456F56
 00456F66    mov         eax,edi
 00456F68    test        bl,bl
>00456F6A    je          00456F7B
 00456F6C    call        @AfterConstruction
 00456F71    pop         dword ptr fs:[0]
 00456F78    add         esp,0C
 00456F7B    mov         eax,edi
 00456F7D    pop         edi
 00456F7E    pop         esi
 00456F7F    pop         ebx
 00456F80    pop         ecx
 00456F81    pop         ebp
 00456F82    ret         4
*}
end;

//00456F88
destructor TDictionary<System.Pointer,System.Rtti.TRttiObject>.Destroy();
begin
{*
 00456F88    push        ebx
 00456F89    push        esi
 00456F8A    call        @BeforeDestruction
 00456F8F    mov         ebx,edx
 00456F91    mov         esi,eax
 00456F93    mov         eax,esi
 00456F95    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.Clear
 00456F9A    mov         eax,dword ptr [esi+28];TDictionary<System.Pointer,System.Rtti.TRttiObject>.FKeyCollectio...
 00456F9D    call        TObject.Free
 00456FA2    mov         eax,dword ptr [esi+2C]
 00456FA5    call        TObject.Free
 00456FAA    mov         dl,0FC
 00456FAC    and         dl,bl
 00456FAE    mov         eax,esi
 00456FB0    call        TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy
 00456FB5    test        bl,bl
>00456FB7    jle         00456FC0
 00456FB9    mov         eax,esi
 00456FBB    call        @ClassDestroy
 00456FC0    pop         esi
 00456FC1    pop         ebx
 00456FC2    ret
*}
end;

//00456FC4
procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.Add(Key:Pointer; Value:TRttiObject);
begin
{*
 00456FC4    push        ebx
 00456FC5    push        esi
 00456FC6    push        edi
 00456FC7    push        ecx
 00456FC8    mov         dword ptr [esp],ecx
 00456FCB    mov         esi,edx
 00456FCD    mov         ebx,eax
 00456FCF    mov         eax,dword ptr [ebx+8]
 00456FD2    cmp         eax,dword ptr [ebx+10]
>00456FD5    jl          00456FDE
 00456FD7    mov         eax,ebx
 00456FD9    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.Grow
 00456FDE    mov         edx,esi
 00456FE0    mov         eax,ebx
 00456FE2    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.Hash
 00456FE7    mov         edi,eax
 00456FE9    mov         ecx,edi
 00456FEB    mov         edx,esi
 00456FED    mov         eax,ebx
 00456FEF    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetBucketIndex
 00456FF4    test        eax,eax
>00456FF6    jl          0045700F
 00456FF8    mov         ecx,dword ptr ds:[7C423C];^SResString174:TResStringRec
 00456FFE    mov         dl,1
 00457000    mov         eax,[004180BC];EListError
 00457005    call        Exception.CreateRes
 0045700A    call        @RaiseExcept
 0045700F    push        esi
 00457010    mov         edx,dword ptr [esp+4]
 00457014    push        edx
 00457015    mov         ecx,eax
 00457017    not         ecx
 00457019    mov         edx,edi
 0045701B    mov         eax,ebx
 0045701D    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.DoAdd
 00457022    pop         edx
 00457023    pop         edi
 00457024    pop         esi
 00457025    pop         ebx
 00457026    ret
*}
end;

//00457028
{*procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.ExtractPair(Key:Pointer; ?:?);
begin
 00457028    push        ebx
 00457029    push        esi
 0045702A    push        edi
 0045702B    push        ebp
 0045702C    mov         ebp,ecx
 0045702E    mov         ebx,edx
 00457030    mov         esi,eax
 00457032    mov         edx,ebx
 00457034    mov         eax,esi
 00457036    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.Hash
 0045703B    mov         edi,eax
 0045703D    mov         ecx,edi
 0045703F    mov         edx,ebx
 00457041    mov         eax,esi
 00457043    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetBucketIndex
 00457048    test        eax,eax
>0045704A    jge         00457059
 0045704C    xor         ecx,ecx
 0045704E    mov         edx,ebx
 00457050    mov         eax,ebp
 00457052    call        00456894
>00457057    jmp         00457071
 00457059    push        2
 0045705B    mov         ecx,edi
 0045705D    mov         edx,ebx
 0045705F    mov         eax,esi
 00457061    call        00456D24
 00457066    mov         ecx,eax
 00457068    mov         edx,ebx
 0045706A    mov         eax,ebp
 0045706C    call        00456894
 00457071    pop         ebp
 00457072    pop         edi
 00457073    pop         esi
 00457074    pop         ebx
 00457075    ret
end;*}

//00457078
procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.Clear;
begin
{*
 00457078    push        ebp
 00457079    mov         ebp,esp
 0045707B    add         esp,0FFFFFFF8
 0045707E    push        ebx
 0045707F    push        esi
 00457080    push        edi
 00457081    xor         edx,edx
 00457083    mov         dword ptr [ebp-4],edx
 00457086    mov         esi,eax
 00457088    xor         eax,eax
 0045708A    push        ebp
 0045708B    push        457133
 00457090    push        dword ptr fs:[eax]
 00457093    mov         dword ptr fs:[eax],esp
 00457096    lea         eax,[ebp-4]
 00457099    mov         edx,dword ptr [esi+4]
 0045709C    mov         ecx,dword ptr ds:[43CA8C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray
 004570A2    call        @DynArrayAsg
 004570A7    xor         eax,eax
 004570A9    mov         dword ptr [esi+8],eax
 004570AC    lea         eax,[esi+4]
 004570AF    mov         edx,dword ptr ds:[43CA8C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray
 004570B5    call        @DynArrayClear
 004570BA    xor         edx,edx
 004570BC    mov         eax,esi
 004570BE    call        00456A28
 004570C3    xor         eax,eax
 004570C5    mov         dword ptr [esi+10],eax
 004570C8    mov         eax,dword ptr [ebp-4]
 004570CB    test        eax,eax
>004570CD    je          004570D4
 004570CF    sub         eax,4
 004570D2    mov         eax,dword ptr [eax]
 004570D4    dec         eax
 004570D5    test        eax,eax
>004570D7    jl          00457117
 004570D9    inc         eax
 004570DA    mov         dword ptr [ebp-8],eax
 004570DD    xor         ebx,ebx
 004570DF    lea         eax,[ebx+ebx*2]
 004570E2    mov         edx,dword ptr [ebp-4]
 004570E5    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004570E9    je          00457111
 004570EB    lea         eax,[ebx+ebx*2]
 004570EE    mov         edx,dword ptr [ebp-4]
 004570F1    mov         edx,dword ptr [edx+eax*4+4]
 004570F5    mov         cl,1
 004570F7    mov         eax,esi
 004570F9    mov         edi,dword ptr [eax]
 004570FB    call        dword ptr [edi+8]
 004570FE    lea         eax,[ebx+ebx*2]
 00457101    mov         edx,dword ptr [ebp-4]
 00457104    mov         edx,dword ptr [edx+eax*4+8]
 00457108    mov         cl,1
 0045710A    mov         eax,esi
 0045710C    mov         edi,dword ptr [eax]
 0045710E    call        dword ptr [edi+0C]
 00457111    inc         ebx
 00457112    dec         dword ptr [ebp-8]
>00457115    jne         004570DF
 00457117    xor         eax,eax
 00457119    pop         edx
 0045711A    pop         ecx
 0045711B    pop         ecx
 0045711C    mov         dword ptr fs:[eax],edx
 0045711F    push        45713A
 00457124    lea         eax,[ebp-4]
 00457127    mov         edx,dword ptr ds:[43CA8C];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TItemArray
 0045712D    call        @DynArrayClear
 00457132    ret
>00457133    jmp         @HandleFinally
>00457138    jmp         00457124
 0045713A    pop         edi
 0045713B    pop         esi
 0045713C    pop         ebx
 0045713D    pop         ecx
 0045713E    pop         ecx
 0045713F    pop         ebp
 00457140    ret
*}
end;

//00457144
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.TryGetValue(Key:Pointer; Value:TRttiObject):Boolean;
begin
{*
 00457144    push        ebx
 00457145    push        esi
 00457146    push        edi
 00457147    mov         edi,ecx
 00457149    mov         esi,edx
 0045714B    mov         ebx,eax
 0045714D    mov         edx,esi
 0045714F    mov         eax,ebx
 00457151    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.Hash
 00457156    mov         ecx,eax
 00457158    mov         edx,esi
 0045715A    mov         eax,ebx
 0045715C    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetBucketIndex
 00457161    test        eax,eax
 00457163    setge       dl
 00457166    test        dl,dl
>00457168    je          00457178
 0045716A    lea         eax,[eax+eax*2]
 0045716D    mov         ecx,dword ptr [ebx+4]
 00457170    mov         eax,dword ptr [ecx+eax*4+8]
 00457174    mov         dword ptr [edi],eax
>00457176    jmp         0045717C
 00457178    xor         eax,eax
 0045717A    mov         dword ptr [edi],eax
 0045717C    mov         eax,edx
 0045717E    pop         edi
 0045717F    pop         esi
 00457180    pop         ebx
 00457181    ret
*}
end;

//00457184
{*procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.ToArray(?:?);
begin
 00457184    push        ebx
 00457185    push        esi
 00457186    mov         esi,edx
 00457188    mov         ebx,eax
 0045718A    mov         ecx,esi
 0045718C    mov         edx,dword ptr [ebx+8]
 0045718F    mov         eax,ebx
 00457191    call        0045689C
 00457196    pop         esi
 00457197    pop         ebx
 00457198    ret
end;*}

//004571DC
procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.GetEnumerator;
begin
{*
 004571DC    mov         ecx,eax
 004571DE    mov         dl,1
 004571E0    mov         eax,[0043DADC];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator
 004571E5    call        00457740
 004571EA    ret
*}
end;

//004571EC
{*procedure sub_004571EC(?:TDictionary<System; ?:?; ?:?);
begin
 004571EC    push        ebp
 004571ED    mov         ebp,esp
 004571EF    add         esp,0FFFFFFF8
 004571F2    push        ebx
 004571F3    push        esi
 004571F4    mov         dword ptr [ebp-4],ecx
 004571F7    mov         esi,edx
 004571F9    mov         ebx,eax
 004571FB    push        esi
 004571FC    mov         eax,dword ptr [ebp-4]
 004571FF    mov         ecx,1
 00457204    mov         edx,dword ptr ds:[43CCCC];TArray<System.Pointer>
 0045720A    call        @DynArraySetLength
 0045720F    add         esp,4
 00457212    xor         esi,esi
 00457214    mov         eax,ebx
 00457216    call        TEnumerable<System.Pointer>.GetEnumerator
 0045721B    mov         dword ptr [ebp-8],eax
 0045721E    xor         eax,eax
 00457220    push        ebp
 00457221    push        45726A
 00457226    push        dword ptr fs:[eax]
 00457229    mov         dword ptr fs:[eax],esp
>0045722C    jmp         00457240
 0045722E    mov         eax,dword ptr [ebp-8]
 00457231    mov         edx,dword ptr [eax]
 00457233    call        dword ptr [edx]
 00457235    mov         ebx,eax
 00457237    mov         eax,dword ptr [ebp-4]
 0045723A    mov         eax,dword ptr [eax]
 0045723C    mov         dword ptr [eax+esi*4],ebx
 0045723F    inc         esi
 00457240    mov         eax,dword ptr [ebp-8]
 00457243    call        TEnumerator<System.Pointer>.MoveNext
 00457248    test        al,al
>0045724A    jne         0045722E
 0045724C    xor         eax,eax
 0045724E    pop         edx
 0045724F    pop         ecx
 00457250    pop         ecx
 00457251    mov         dword ptr fs:[eax],edx
 00457254    push        457271
 00457259    cmp         dword ptr [ebp-8],0
>0045725D    je          00457269
 0045725F    mov         dl,1
 00457261    mov         eax,dword ptr [ebp-8]
 00457264    mov         ecx,dword ptr [eax]
 00457266    call        dword ptr [ecx-4]
 00457269    ret
>0045726A    jmp         @HandleFinally
>0045726F    jmp         00457259
 00457271    pop         esi
 00457272    pop         ebx
 00457273    pop         ecx
 00457274    pop         ecx
 00457275    pop         ebp
 00457276    ret
end;*}

//00457278
destructor TEnumerable<System.Pointer>.Destroy();
begin
{*
 00457278    push        ebx
 00457279    push        esi
 0045727A    call        @BeforeDestruction
 0045727F    mov         ebx,edx
 00457281    mov         esi,eax
 00457283    mov         dl,0FC
 00457285    and         dl,bl
 00457287    mov         eax,esi
 00457289    call        TObject.Destroy
 0045728E    test        bl,bl
>00457290    jle         00457299
 00457292    mov         eax,esi
 00457294    call        @ClassDestroy
 00457299    pop         esi
 0045729A    pop         ebx
 0045729B    ret
*}
end;

//0045729C
function TEnumerable<System.Pointer>.GetEnumerator:TEnumerator<System.Pointer>;
begin
{*
 0045729C    mov         edx,dword ptr [eax]
 0045729E    call        dword ptr [edx]
 004572A0    ret
*}
end;

//004572A4
{*procedure TEnumerable<System.Pointer>.ToArray(?:?);
begin
 004572A4    push        ebp
 004572A5    mov         ebp,esp
 004572A7    add         esp,0FFFFFFF4
 004572AA    push        ebx
 004572AB    mov         dword ptr [ebp-4],edx
 004572AE    mov         ebx,eax
 004572B0    mov         dl,1
 004572B2    mov         eax,[0045EAD0];TList<System.Pointer>
 004572B7    call        0045B57C
 004572BC    mov         dword ptr [ebp-8],eax
 004572BF    xor         eax,eax
 004572C1    push        ebp
 004572C2    push        45734C
 004572C7    push        dword ptr fs:[eax]
 004572CA    mov         dword ptr fs:[eax],esp
 004572CD    mov         eax,ebx
 004572CF    call        TEnumerable<System.Pointer>.GetEnumerator
 004572D4    mov         dword ptr [ebp-0C],eax
 004572D7    xor         eax,eax
 004572D9    push        ebp
 004572DA    push        457324
 004572DF    push        dword ptr fs:[eax]
 004572E2    mov         dword ptr fs:[eax],esp
>004572E5    jmp         004572FA
 004572E7    mov         eax,dword ptr [ebp-0C]
 004572EA    mov         edx,dword ptr [eax]
 004572EC    call        dword ptr [edx]
 004572EE    mov         ebx,eax
 004572F0    mov         edx,ebx
 004572F2    mov         eax,dword ptr [ebp-8]
 004572F5    call        TList<System.Pointer>.Add
 004572FA    mov         eax,dword ptr [ebp-0C]
 004572FD    call        TEnumerator<System.Pointer>.MoveNext
 00457302    test        al,al
>00457304    jne         004572E7
 00457306    xor         eax,eax
 00457308    pop         edx
 00457309    pop         ecx
 0045730A    pop         ecx
 0045730B    mov         dword ptr fs:[eax],edx
 0045730E    push        45732B
 00457313    cmp         dword ptr [ebp-0C],0
>00457317    je          00457323
 00457319    mov         dl,1
 0045731B    mov         eax,dword ptr [ebp-0C]
 0045731E    mov         ecx,dword ptr [eax]
 00457320    call        dword ptr [ecx-4]
 00457323    ret
>00457324    jmp         @HandleFinally
>00457329    jmp         00457313
 0045732B    mov         edx,dword ptr [ebp-4]
 0045732E    mov         eax,dword ptr [ebp-8]
 00457331    call        TList<System.Pointer>.ToArray
 00457336    xor         eax,eax
 00457338    pop         edx
 00457339    pop         ecx
 0045733A    pop         ecx
 0045733B    mov         dword ptr fs:[eax],edx
 0045733E    push        457353
 00457343    mov         eax,dword ptr [ebp-8]
 00457346    call        TObject.Free
 0045734B    ret
>0045734C    jmp         @HandleFinally
>00457351    jmp         00457343
 00457353    pop         ebx
 00457354    mov         esp,ebp
 00457356    pop         ebp
 00457357    ret
end;*}

//00457358
function TEnumerator<System.Pointer>.MoveNext:Boolean;
begin
{*
 00457358    mov         edx,dword ptr [eax]
 0045735A    call        dword ptr [edx+4]
 0045735D    ret
*}
end;

//00457368
procedure sub_00457368;
begin
{*
 00457368    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyCollection.GetEnumerator
 0045736D    ret
*}
end;

//00457370
constructor sub_00457370(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);
begin
{*
 00457370    push        ebx
 00457371    push        esi
 00457372    push        edi
 00457373    test        dl,dl
>00457375    je          0045737F
 00457377    add         esp,0FFFFFFF0
 0045737A    call        @ClassCreate
 0045737F    mov         esi,ecx
 00457381    mov         ebx,edx
 00457383    mov         edi,eax
 00457385    xor         edx,edx
 00457387    mov         eax,edi
 00457389    call        TObject.Create
 0045738E    mov         dword ptr [edi+4],esi
 00457391    mov         eax,edi
 00457393    test        bl,bl
>00457395    je          004573A6
 00457397    call        @AfterConstruction
 0045739C    pop         dword ptr fs:[0]
 004573A3    add         esp,0C
 004573A6    mov         eax,edi
 004573A8    pop         edi
 004573A9    pop         esi
 004573AA    pop         ebx
 004573AB    ret
*}
end;

//004573AC
procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyCollection.GetEnumerator;
begin
{*
 004573AC    mov         ecx,dword ptr [eax+4]
 004573AF    mov         dl,1
 004573B1    mov         eax,[0043CFA4];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyEnumerator
 004573B6    call        004573F8
 004573BB    ret
*}
end;

//004573BC
{*procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyCollection.ToArray(?:?);
begin
 004573BC    push        ebx
 004573BD    push        esi
 004573BE    mov         esi,edx
 004573C0    mov         ebx,eax
 004573C2    mov         ecx,esi
 004573C4    mov         eax,dword ptr [ebx+4]
 004573C7    mov         edx,dword ptr [eax+8]
 004573CA    mov         eax,ebx
 004573CC    call        004571EC
 004573D1    pop         esi
 004573D2    pop         ebx
 004573D3    ret
end;*}

//004573D4
{*function sub_004573D4(?:?):?;
begin
 004573D4    mov         edx,dword ptr [eax+8]
 004573D7    lea         edx,[edx+edx*2]
 004573DA    mov         eax,dword ptr [eax+4]
 004573DD    mov         eax,dword ptr [eax+4]
 004573E0    mov         eax,dword ptr [eax+edx*4+4]
 004573E4    ret
end;*}

//004573E8
procedure sub_004573E8;
begin
{*
 004573E8    call        004573D4
 004573ED    ret
*}
end;

//004573F0
procedure sub_004573F0;
begin
{*
 004573F0    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyEnumerator.MoveNext
 004573F5    ret
*}
end;

//004573F8
constructor sub_004573F8(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);
begin
{*
 004573F8    push        ebx
 004573F9    push        esi
 004573FA    push        edi
 004573FB    test        dl,dl
>004573FD    je          00457407
 004573FF    add         esp,0FFFFFFF0
 00457402    call        @ClassCreate
 00457407    mov         esi,ecx
 00457409    mov         ebx,edx
 0045740B    mov         edi,eax
 0045740D    xor         edx,edx
 0045740F    mov         eax,edi
 00457411    call        TObject.Create
 00457416    mov         dword ptr [edi+8],0FFFFFFFF
 0045741D    mov         dword ptr [edi+4],esi;TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyEnumerator...
 00457420    mov         eax,edi
 00457422    test        bl,bl
>00457424    je          00457435
 00457426    call        @AfterConstruction
 0045742B    pop         dword ptr fs:[0]
 00457432    add         esp,0C
 00457435    mov         eax,edi
 00457437    pop         edi
 00457438    pop         esi
 00457439    pop         ebx
 0045743A    ret
*}
end;

//0045743C
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.TKeyEnumerator.MoveNext:Boolean;
begin
{*
 0045743C    push        ebx
 0045743D    push        esi
 0045743E    mov         esi,eax
>00457440    jmp         0045745B
 00457442    inc         dword ptr [esi+8]
 00457445    mov         eax,dword ptr [esi+8]
 00457448    lea         eax,[eax+eax*2]
 0045744B    mov         edx,dword ptr [esi+4]
 0045744E    mov         edx,dword ptr [edx+4]
 00457451    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>00457455    je          0045745B
 00457457    mov         bl,1
>00457459    jmp         0045746E
 0045745B    mov         eax,dword ptr [esi+4]
 0045745E    mov         eax,dword ptr [eax+4]
 00457461    call        0040ABA8
 00457466    dec         eax
 00457467    cmp         eax,dword ptr [esi+8]
>0045746A    jg          00457442
 0045746C    xor         ebx,ebx
 0045746E    mov         eax,ebx
 00457470    pop         esi
 00457471    pop         ebx
 00457472    ret
*}
end;

//00457474
{*procedure sub_00457474(?:TDictionary<System; ?:?; ?:?);
begin
 00457474    push        ebp
 00457475    mov         ebp,esp
 00457477    add         esp,0FFFFFFF8
 0045747A    push        ebx
 0045747B    push        esi
 0045747C    mov         dword ptr [ebp-4],ecx
 0045747F    mov         esi,edx
 00457481    mov         ebx,eax
 00457483    push        esi
 00457484    mov         eax,dword ptr [ebp-4]
 00457487    mov         ecx,1
 0045748C    mov         edx,dword ptr ds:[43D3B8];TArray<System.Rtti.TRttiObject>
 00457492    call        @DynArraySetLength
 00457497    add         esp,4
 0045749A    xor         esi,esi
 0045749C    mov         eax,ebx
 0045749E    call        TEnumerable<System.Rtti.TRttiObject>.GetEnumerator
 004574A3    mov         dword ptr [ebp-8],eax
 004574A6    xor         eax,eax
 004574A8    push        ebp
 004574A9    push        4574F2
 004574AE    push        dword ptr fs:[eax]
 004574B1    mov         dword ptr fs:[eax],esp
>004574B4    jmp         004574C8
 004574B6    mov         eax,dword ptr [ebp-8]
 004574B9    mov         edx,dword ptr [eax]
 004574BB    call        dword ptr [edx]
 004574BD    mov         ebx,eax
 004574BF    mov         eax,dword ptr [ebp-4]
 004574C2    mov         eax,dword ptr [eax]
 004574C4    mov         dword ptr [eax+esi*4],ebx
 004574C7    inc         esi
 004574C8    mov         eax,dword ptr [ebp-8]
 004574CB    call        TEnumerator<System.Rtti.TRttiObject>.MoveNext
 004574D0    test        al,al
>004574D2    jne         004574B6
 004574D4    xor         eax,eax
 004574D6    pop         edx
 004574D7    pop         ecx
 004574D8    pop         ecx
 004574D9    mov         dword ptr fs:[eax],edx
 004574DC    push        4574F9
 004574E1    cmp         dword ptr [ebp-8],0
>004574E5    je          004574F1
 004574E7    mov         dl,1
 004574E9    mov         eax,dword ptr [ebp-8]
 004574EC    mov         ecx,dword ptr [eax]
 004574EE    call        dword ptr [ecx-4]
 004574F1    ret
>004574F2    jmp         @HandleFinally
>004574F7    jmp         004574E1
 004574F9    pop         esi
 004574FA    pop         ebx
 004574FB    pop         ecx
 004574FC    pop         ecx
 004574FD    pop         ebp
 004574FE    ret
end;*}

//00457500
destructor TEnumerable<System.Rtti.TRttiObject>.Destroy();
begin
{*
 00457500    push        ebx
 00457501    push        esi
 00457502    call        @BeforeDestruction
 00457507    mov         ebx,edx
 00457509    mov         esi,eax
 0045750B    mov         dl,0FC
 0045750D    and         dl,bl
 0045750F    mov         eax,esi
 00457511    call        TObject.Destroy
 00457516    test        bl,bl
>00457518    jle         00457521
 0045751A    mov         eax,esi
 0045751C    call        @ClassDestroy
 00457521    pop         esi
 00457522    pop         ebx
 00457523    ret
*}
end;

//00457524
function TEnumerable<System.Rtti.TRttiObject>.GetEnumerator:TEnumerator<System.Rtti.TRttiObject>;
begin
{*
 00457524    mov         edx,dword ptr [eax]
 00457526    call        dword ptr [edx]
 00457528    ret
*}
end;

//0045752C
{*procedure TEnumerable<System.Rtti.TRttiObject>.ToArray(?:?);
begin
 0045752C    push        ebp
 0045752D    mov         ebp,esp
 0045752F    add         esp,0FFFFFFF4
 00457532    push        ebx
 00457533    mov         dword ptr [ebp-4],edx
 00457536    mov         ebx,eax
 00457538    mov         dl,1
 0045753A    mov         eax,[0045FAA4];TList<System.Rtti.TRttiObject>
 0045753F    call        0045B87C
 00457544    mov         dword ptr [ebp-8],eax
 00457547    xor         eax,eax
 00457549    push        ebp
 0045754A    push        4575D4
 0045754F    push        dword ptr fs:[eax]
 00457552    mov         dword ptr fs:[eax],esp
 00457555    mov         eax,ebx
 00457557    call        TEnumerable<System.Rtti.TRttiObject>.GetEnumerator
 0045755C    mov         dword ptr [ebp-0C],eax
 0045755F    xor         eax,eax
 00457561    push        ebp
 00457562    push        4575AC
 00457567    push        dword ptr fs:[eax]
 0045756A    mov         dword ptr fs:[eax],esp
>0045756D    jmp         00457582
 0045756F    mov         eax,dword ptr [ebp-0C]
 00457572    mov         edx,dword ptr [eax]
 00457574    call        dword ptr [edx]
 00457576    mov         ebx,eax
 00457578    mov         edx,ebx
 0045757A    mov         eax,dword ptr [ebp-8]
 0045757D    call        TList<System.Rtti.TRttiObject>.Add
 00457582    mov         eax,dword ptr [ebp-0C]
 00457585    call        TEnumerator<System.Rtti.TRttiObject>.MoveNext
 0045758A    test        al,al
>0045758C    jne         0045756F
 0045758E    xor         eax,eax
 00457590    pop         edx
 00457591    pop         ecx
 00457592    pop         ecx
 00457593    mov         dword ptr fs:[eax],edx
 00457596    push        4575B3
 0045759B    cmp         dword ptr [ebp-0C],0
>0045759F    je          004575AB
 004575A1    mov         dl,1
 004575A3    mov         eax,dword ptr [ebp-0C]
 004575A6    mov         ecx,dword ptr [eax]
 004575A8    call        dword ptr [ecx-4]
 004575AB    ret
>004575AC    jmp         @HandleFinally
>004575B1    jmp         0045759B
 004575B3    mov         edx,dword ptr [ebp-4]
 004575B6    mov         eax,dword ptr [ebp-8]
 004575B9    call        TList<System.Rtti.TRttiObject>.ToArray
 004575BE    xor         eax,eax
 004575C0    pop         edx
 004575C1    pop         ecx
 004575C2    pop         ecx
 004575C3    mov         dword ptr fs:[eax],edx
 004575C6    push        4575DB
 004575CB    mov         eax,dword ptr [ebp-8]
 004575CE    call        TObject.Free
 004575D3    ret
>004575D4    jmp         @HandleFinally
>004575D9    jmp         004575CB
 004575DB    pop         ebx
 004575DC    mov         esp,ebp
 004575DE    pop         ebp
 004575DF    ret
end;*}

//004575E0
function TEnumerator<System.Rtti.TRttiObject>.MoveNext:Boolean;
begin
{*
 004575E0    mov         edx,dword ptr [eax]
 004575E2    call        dword ptr [edx+4]
 004575E5    ret
*}
end;

//004575F0
procedure sub_004575F0;
begin
{*
 004575F0    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueCollection.GetEnumerator
 004575F5    ret
*}
end;

//004575F8
constructor sub_004575F8(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);
begin
{*
 004575F8    push        ebx
 004575F9    push        esi
 004575FA    push        edi
 004575FB    test        dl,dl
>004575FD    je          00457607
 004575FF    add         esp,0FFFFFFF0
 00457602    call        @ClassCreate
 00457607    mov         esi,ecx
 00457609    mov         ebx,edx
 0045760B    mov         edi,eax
 0045760D    xor         edx,edx
 0045760F    mov         eax,edi
 00457611    call        TObject.Create
 00457616    mov         dword ptr [edi+4],esi
 00457619    mov         eax,edi
 0045761B    test        bl,bl
>0045761D    je          0045762E
 0045761F    call        @AfterConstruction
 00457624    pop         dword ptr fs:[0]
 0045762B    add         esp,0C
 0045762E    mov         eax,edi
 00457630    pop         edi
 00457631    pop         esi
 00457632    pop         ebx
 00457633    ret
*}
end;

//00457634
procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueCollection.GetEnumerator;
begin
{*
 00457634    mov         ecx,dword ptr [eax+4]
 00457637    mov         dl,1
 00457639    mov         eax,[0043D6C0];TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueEnumerator
 0045763E    call        00457680
 00457643    ret
*}
end;

//00457644
{*procedure TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueCollection.ToArray(?:?);
begin
 00457644    push        ebx
 00457645    push        esi
 00457646    mov         esi,edx
 00457648    mov         ebx,eax
 0045764A    mov         ecx,esi
 0045764C    mov         eax,dword ptr [ebx+4]
 0045764F    mov         edx,dword ptr [eax+8]
 00457652    mov         eax,ebx
 00457654    call        00457474
 00457659    pop         esi
 0045765A    pop         ebx
 0045765B    ret
end;*}

//0045765C
{*function sub_0045765C(?:?):?;
begin
 0045765C    mov         edx,dword ptr [eax+8]
 0045765F    lea         edx,[edx+edx*2]
 00457662    mov         eax,dword ptr [eax+4]
 00457665    mov         eax,dword ptr [eax+4]
 00457668    mov         eax,dword ptr [eax+edx*4+8]
 0045766C    ret
end;*}

//00457670
procedure sub_00457670;
begin
{*
 00457670    call        0045765C
 00457675    ret
*}
end;

//00457678
procedure sub_00457678;
begin
{*
 00457678    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueEnumerator.MoveNext
 0045767D    ret
*}
end;

//00457680
constructor sub_00457680(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);
begin
{*
 00457680    push        ebx
 00457681    push        esi
 00457682    push        edi
 00457683    test        dl,dl
>00457685    je          0045768F
 00457687    add         esp,0FFFFFFF0
 0045768A    call        @ClassCreate
 0045768F    mov         esi,ecx
 00457691    mov         ebx,edx
 00457693    mov         edi,eax
 00457695    xor         edx,edx
 00457697    mov         eax,edi
 00457699    call        TObject.Create
 0045769E    mov         dword ptr [edi+8],0FFFFFFFF
 004576A5    mov         dword ptr [edi+4],esi;TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueEnumerat...
 004576A8    mov         eax,edi
 004576AA    test        bl,bl
>004576AC    je          004576BD
 004576AE    call        @AfterConstruction
 004576B3    pop         dword ptr fs:[0]
 004576BA    add         esp,0C
 004576BD    mov         eax,edi
 004576BF    pop         edi
 004576C0    pop         esi
 004576C1    pop         ebx
 004576C2    ret
*}
end;

//004576C4
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.TValueEnumerator.MoveNext:Boolean;
begin
{*
 004576C4    push        ebx
 004576C5    push        esi
 004576C6    mov         esi,eax
>004576C8    jmp         004576E3
 004576CA    inc         dword ptr [esi+8]
 004576CD    mov         eax,dword ptr [esi+8]
 004576D0    lea         eax,[eax+eax*2]
 004576D3    mov         edx,dword ptr [esi+4]
 004576D6    mov         edx,dword ptr [edx+4]
 004576D9    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004576DD    je          004576E3
 004576DF    mov         bl,1
>004576E1    jmp         004576F6
 004576E3    mov         eax,dword ptr [esi+4]
 004576E6    mov         eax,dword ptr [eax+4]
 004576E9    call        0040ABA8
 004576EE    dec         eax
 004576EF    cmp         eax,dword ptr [esi+8]
>004576F2    jg          004576CA
 004576F4    xor         ebx,ebx
 004576F6    mov         eax,ebx
 004576F8    pop         esi
 004576F9    pop         ebx
 004576FA    ret
*}
end;

//004576FC
{*procedure sub_004576FC(?:TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator; ?:?);
begin
 004576FC    push        ebx
 004576FD    mov         ecx,dword ptr [eax+8]
 00457700    lea         ecx,[ecx+ecx*2]
 00457703    mov         ebx,dword ptr [eax+4]
 00457706    mov         ebx,dword ptr [ebx+4]
 00457709    mov         ecx,dword ptr [ebx+ecx*4+4]
 0045770D    mov         dword ptr [edx],ecx
 0045770F    mov         ecx,dword ptr [eax+8]
 00457712    lea         ecx,[ecx+ecx*2]
 00457715    mov         eax,dword ptr [eax+4]
 00457718    mov         eax,dword ptr [eax+4]
 0045771B    mov         eax,dword ptr [eax+ecx*4+8]
 0045771F    mov         dword ptr [edx+4],eax
 00457722    pop         ebx
 00457723    ret
end;*}

//00457724
{*procedure sub_00457724(?:?);
begin
 00457724    push        ebx
 00457725    push        esi
 00457726    mov         esi,edx
 00457728    mov         ebx,eax
 0045772A    mov         edx,esi
 0045772C    mov         eax,ebx
 0045772E    call        004576FC
 00457733    pop         esi
 00457734    pop         ebx
 00457735    ret
end;*}

//00457738
procedure sub_00457738;
begin
{*
 00457738    call        TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator.MoveNext
 0045773D    ret
*}
end;

//00457740
constructor sub_00457740(ADictionary:TDictionary<System.Pointer,System.Rtti.TRttiObject>);
begin
{*
 00457740    push        ebx
 00457741    push        esi
 00457742    push        edi
 00457743    test        dl,dl
>00457745    je          0045774F
 00457747    add         esp,0FFFFFFF0
 0045774A    call        @ClassCreate
 0045774F    mov         esi,ecx
 00457751    mov         ebx,edx
 00457753    mov         edi,eax
 00457755    xor         edx,edx
 00457757    mov         eax,edi
 00457759    call        TObject.Create
 0045775E    mov         dword ptr [edi+8],0FFFFFFFF
 00457765    mov         dword ptr [edi+4],esi;TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerato...
 00457768    mov         eax,edi
 0045776A    test        bl,bl
>0045776C    je          0045777D
 0045776E    call        @AfterConstruction
 00457773    pop         dword ptr fs:[0]
 0045777A    add         esp,0C
 0045777D    mov         eax,edi
 0045777F    pop         edi
 00457780    pop         esi
 00457781    pop         ebx
 00457782    ret
*}
end;

//00457784
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator.MoveNext:Boolean;
begin
{*
 00457784    push        ebx
 00457785    push        esi
 00457786    mov         esi,eax
>00457788    jmp         004577A3
 0045778A    inc         dword ptr [esi+8]
 0045778D    mov         eax,dword ptr [esi+8]
 00457790    lea         eax,[eax+eax*2]
 00457793    mov         edx,dword ptr [esi+4]
 00457796    mov         edx,dword ptr [edx+4]
 00457799    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>0045779D    je          004577A3
 0045779F    mov         bl,1
>004577A1    jmp         004577B6
 004577A3    mov         eax,dword ptr [esi+4]
 004577A6    mov         eax,dword ptr [eax+4]
 004577A9    call        0040ABA8
 004577AE    dec         eax
 004577AF    cmp         eax,dword ptr [esi+8]
>004577B2    jg          0045778A
 004577B4    xor         ebx,ebx
 004577B6    mov         eax,ebx
 004577B8    pop         esi
 004577B9    pop         ebx
 004577BA    ret
*}
end;

//004577BC
{*procedure sub_004577BC(?:?);
begin
 004577BC    push        ebx
 004577BD    mov         ebx,eax
 004577BF    mov         ecx,4
 004577C4    mov         edx,dword ptr ds:[4012B8];string
 004577CA    mov         al,1
 004577CC    call        _LookupVtableInfo
 004577D1    mov         edx,eax
 004577D3    mov         eax,ebx
 004577D5    call        @IntfCopy
 004577DA    pop         ebx
 004577DB    ret
end;*}

//004577DC
function TValue.From<System.Pointer>:TValue;
begin
{*
 004577DC    add         esp,0FFFFFFF8
 004577DF    mov         dword ptr [esp+4],edx
 004577E3    mov         dword ptr [esp],eax
 004577E6    mov         eax,dword ptr [esp+4]
 004577EA    mov         edx,dword ptr ds:[435E20];TValue
 004577F0    call        @FinalizeRecord
 004577F5    mov         ecx,eax
 004577F7    mov         eax,esp
 004577F9    mov         edx,dword ptr ds:[401100];Pointer
 004577FF    call        TValue.Make
 00457804    pop         ecx
 00457805    pop         edx
 00457806    ret
*}
end;

//00457808
function TValue.From<System.Rtti.TValue>:TValue;
begin
{*
 00457808    add         esp,0FFFFFFF8
 0045780B    mov         dword ptr [esp+4],edx
 0045780F    mov         dword ptr [esp],eax
 00457812    mov         eax,dword ptr [esp+4]
 00457816    mov         edx,dword ptr ds:[435E20];TValue
 0045781C    call        @FinalizeRecord
 00457821    mov         ecx,eax
 00457823    mov         eax,dword ptr [esp]
 00457826    mov         edx,dword ptr ds:[435E20];TValue
 0045782C    call        TValue.Make
 00457831    pop         ecx
 00457832    pop         edx
 00457833    ret
*}
end;

//00457834
{*procedure sub_00457834(?:?; ?:?);
begin
 00457834    add         esp,0FFFFFFF8
 00457837    mov         dword ptr [esp+4],edx
 0045783B    mov         dword ptr [esp],eax
 0045783E    mov         eax,dword ptr [esp+4]
 00457842    mov         edx,dword ptr ds:[435E20];TValue
 00457848    call        @FinalizeRecord
 0045784D    mov         ecx,eax
 0045784F    mov         eax,esp
 00457851    mov         edx,dword ptr ds:[401FA0];TObject
 00457857    call        TValue.Make
 0045785C    pop         ecx
 0045785D    pop         edx
 0045785E    ret
end;*}

//00457910
{*function sub_00457910(?:?):?;
begin
 00457910    add         esp,0FFFFFFF8
 00457913    mov         dword ptr [esp],eax
 00457916    lea         edx,[esp+4]
 0045791A    mov         eax,dword ptr [esp]
 0045791D    call        00459D18
 00457922    test        al,al
>00457924    jne         0045793D
 00457926    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0045792C    mov         dl,1
 0045792E    mov         eax,[00418C80];EInvalidCast
 00457933    call        Exception.CreateRes;EInvalidCast.Create
 00457938    call        @RaiseExcept
 0045793D    mov         eax,dword ptr [esp+4]
 00457941    pop         ecx
 00457942    pop         edx
 00457943    ret
end;*}

//00457944
function TValue.AsType<System.Integer>:Integer;
begin
{*
 00457944    add         esp,0FFFFFFF8
 00457947    mov         dword ptr [esp],eax
 0045794A    lea         edx,[esp+4]
 0045794E    mov         eax,dword ptr [esp]
 00457951    call        TValue.TryAsType<System.Integer>
 00457956    test        al,al
>00457958    jne         00457971
 0045795A    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00457960    mov         dl,1
 00457962    mov         eax,[00418C80];EInvalidCast
 00457967    call        Exception.CreateRes
 0045796C    call        @RaiseExcept
 00457971    mov         eax,dword ptr [esp+4]
 00457975    pop         ecx
 00457976    pop         edx
 00457977    ret
*}
end;

//00457978
function TValue.AsType<System.Boolean>:Boolean;
begin
{*
 00457978    add         esp,0FFFFFFF8
 0045797B    mov         dword ptr [esp],eax
 0045797E    lea         edx,[esp+4]
 00457982    mov         eax,dword ptr [esp]
 00457985    call        TValue.TryAsType<System.Boolean>
 0045798A    test        al,al
>0045798C    jne         004579A5
 0045798E    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00457994    mov         dl,1
 00457996    mov         eax,[00418C80];EInvalidCast
 0045799B    call        Exception.CreateRes
 004579A0    call        @RaiseExcept
 004579A5    movzx       eax,byte ptr [esp+4]
 004579AA    pop         ecx
 004579AB    pop         edx
 004579AC    ret
*}
end;

//004579B0
function TValue.AsType<System.Extended>:Extended;
begin
{*
 004579B0    add         esp,0FFFFFFE4
 004579B3    mov         dword ptr [esp],eax
 004579B6    lea         edx,[esp+10]
 004579BA    mov         eax,dword ptr [esp]
 004579BD    call        TValue.TryAsType<System.Extended>
 004579C2    test        al,al
>004579C4    jne         004579DD
 004579C6    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 004579CC    mov         dl,1
 004579CE    mov         eax,[00418C80];EInvalidCast
 004579D3    call        Exception.CreateRes
 004579D8    call        @RaiseExcept
 004579DD    fld         tbyte ptr [esp+10]
 004579E1    add         esp,1C
 004579E4    ret
*}
end;

//004579E8
function TValue.AsType<System.Int64>:Int64;
begin
{*
 004579E8    add         esp,0FFFFFFF0
 004579EB    mov         dword ptr [esp],eax
 004579EE    lea         edx,[esp+8]
 004579F2    mov         eax,dword ptr [esp]
 004579F5    call        TValue.TryAsType<System.Int64>
 004579FA    test        al,al
>004579FC    jne         00457A15
 004579FE    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00457A04    mov         dl,1
 00457A06    mov         eax,[00418C80];EInvalidCast
 00457A0B    call        Exception.CreateRes
 00457A10    call        @RaiseExcept
 00457A15    mov         eax,dword ptr [esp+8]
 00457A19    mov         edx,dword ptr [esp+0C]
 00457A1D    add         esp,10
 00457A20    ret
*}
end;

//00457A60
function TValue.AsType<System.IInterface>:IInterface;
begin
{*
 00457A60    add         esp,0FFFFFFF8
 00457A63    mov         dword ptr [esp+4],edx
 00457A67    mov         dword ptr [esp],eax
 00457A6A    mov         eax,dword ptr [esp+4]
 00457A6E    call        @IntfClear
 00457A73    mov         edx,eax
 00457A75    mov         eax,dword ptr [esp]
 00457A78    call        TValue.TryAsType<System.IInterface>
 00457A7D    test        al,al
>00457A7F    jne         00457A98
 00457A81    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00457A87    mov         dl,1
 00457A89    mov         eax,[00418C80];EInvalidCast
 00457A8E    call        Exception.CreateRes
 00457A93    call        @RaiseExcept
 00457A98    pop         ecx
 00457A99    pop         edx
 00457A9A    ret
*}
end;

//00457A9C
function TValue.AsType<System.string>:string;
begin
{*
 00457A9C    add         esp,0FFFFFFF8
 00457A9F    mov         dword ptr [esp+4],edx
 00457AA3    mov         dword ptr [esp],eax
 00457AA6    mov         eax,dword ptr [esp+4]
 00457AAA    call        @UStrClr
 00457AAF    mov         edx,eax
 00457AB1    mov         eax,dword ptr [esp]
 00457AB4    call        TValue.TryAsType<System.string>
 00457AB9    test        al,al
>00457ABB    jne         00457AD4
 00457ABD    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00457AC3    mov         dl,1
 00457AC5    mov         eax,[00418C80];EInvalidCast
 00457ACA    call        Exception.CreateRes
 00457ACF    call        @RaiseExcept
 00457AD4    pop         ecx
 00457AD5    pop         edx
 00457AD6    ret
*}
end;

//00457AD8
function TDictionary<System.Pointer,System.Rtti.TRttiObject>.TPairEnumerator.GetCurrent:TPair<System.Pointer,System.Rtti.TRttiObject>;
begin
{*
 00457AD8    add         esp,0FFFFFFF8
 00457ADB    mov         dword ptr [esp+4],edx
 00457ADF    mov         dword ptr [esp],eax
 00457AE2    mov         eax,dword ptr [esp+4]
 00457AE6    call        @VarClr
 00457AEB    mov         edx,eax
 00457AED    mov         eax,dword ptr [esp]
 00457AF0    call        0045BEA8
 00457AF5    test        al,al
>00457AF7    jne         00457B10
 00457AF9    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00457AFF    mov         dl,1
 00457B01    mov         eax,[00418C80];EInvalidCast
 00457B06    call        Exception.CreateRes
 00457B0B    call        @RaiseExcept
 00457B10    pop         ecx
 00457B11    pop         edx
 00457B12    ret
*}
end;

//00457C28
{*procedure sub_00457C28(?:?; ?:Byte);
begin
 00457C28    add         esp,0FFFFFFF8
 00457C2B    mov         dword ptr [esp+4],edx
 00457C2F    mov         dword ptr [esp],eax
 00457C32    mov         eax,dword ptr [esp+4]
 00457C36    mov         edx,dword ptr ds:[435E20];TValue
 00457C3C    call        @FinalizeRecord
 00457C41    mov         ecx,eax
 00457C43    mov         eax,dword ptr [esp]
 00457C46    mov         edx,dword ptr ds:[4011E4];ShortString
 00457C4C    call        TValue.Make
 00457C51    pop         ecx
 00457C52    pop         edx
 00457C53    ret
end;*}

//00457D5C
{*procedure sub_00457D5C(?:TDictionary<System; ?:?; ?:?);
begin
 00457D5C    push        ebp
 00457D5D    mov         ebp,esp
 00457D5F    add         esp,0FFFFFFF0
 00457D62    push        ebx
 00457D63    push        esi
 00457D64    mov         dword ptr [ebp-0C],ecx
 00457D67    mov         ebx,edx
 00457D69    mov         esi,eax
 00457D6B    lea         eax,[ebp-8]
 00457D6E    mov         edx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 00457D74    call        @AddRefRecord
 00457D79    xor         eax,eax
 00457D7B    push        ebp
 00457D7C    push        457E28
 00457D81    push        dword ptr fs:[eax]
 00457D84    mov         dword ptr fs:[eax],esp
 00457D87    push        ebx
 00457D88    mov         eax,dword ptr [ebp-0C]
 00457D8B    mov         ecx,1
 00457D90    mov         edx,dword ptr ds:[442B94];TArray<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.strin...
 00457D96    call        @DynArraySetLength
 00457D9B    add         esp,4
 00457D9E    xor         ebx,ebx
 00457DA0    mov         eax,esi
 00457DA2    call        TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator
 00457DA7    mov         dword ptr [ebp-10],eax
 00457DAA    xor         eax,eax
 00457DAC    push        ebp
 00457DAD    push        457E05
 00457DB2    push        dword ptr fs:[eax]
 00457DB5    mov         dword ptr fs:[eax],esp
>00457DB8    jmp         00457DDB
 00457DBA    lea         edx,[ebp-8]
 00457DBD    mov         eax,dword ptr [ebp-10]
 00457DC0    mov         ecx,dword ptr [eax]
 00457DC2    call        dword ptr [ecx]
 00457DC4    mov         eax,dword ptr [ebp-0C]
 00457DC7    mov         eax,dword ptr [eax]
 00457DC9    lea         eax,[eax+ebx*8]
 00457DCC    lea         edx,[ebp-8]
 00457DCF    mov         ecx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 00457DD5    call        @CopyRecord
 00457DDA    inc         ebx
 00457DDB    mov         eax,dword ptr [ebp-10]
 00457DDE    call        TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.MoveNext
 00457DE3    test        al,al
>00457DE5    jne         00457DBA
 00457DE7    xor         eax,eax
 00457DE9    pop         edx
 00457DEA    pop         ecx
 00457DEB    pop         ecx
 00457DEC    mov         dword ptr fs:[eax],edx
 00457DEF    push        457E0C
 00457DF4    cmp         dword ptr [ebp-10],0
>00457DF8    je          00457E04
 00457DFA    mov         dl,1
 00457DFC    mov         eax,dword ptr [ebp-10]
 00457DFF    mov         ecx,dword ptr [eax]
 00457E01    call        dword ptr [ecx-4]
 00457E04    ret
>00457E05    jmp         @HandleFinally
>00457E0A    jmp         00457DF4
 00457E0C    xor         eax,eax
 00457E0E    pop         edx
 00457E0F    pop         ecx
 00457E10    pop         ecx
 00457E11    mov         dword ptr fs:[eax],edx
 00457E14    push        457E2F
 00457E19    lea         eax,[ebp-8]
 00457E1C    mov         edx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 00457E22    call        @FinalizeRecord
 00457E27    ret
>00457E28    jmp         @HandleFinally
>00457E2D    jmp         00457E19
 00457E2F    pop         esi
 00457E30    pop         ebx
 00457E31    mov         esp,ebp
 00457E33    pop         ebp
 00457E34    ret
end;*}

//00457E38
destructor TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy();
begin
{*
 00457E38    push        ebx
 00457E39    push        esi
 00457E3A    call        @BeforeDestruction
 00457E3F    mov         ebx,edx
 00457E41    mov         esi,eax
 00457E43    mov         dl,0FC
 00457E45    and         dl,bl
 00457E47    mov         eax,esi
 00457E49    call        TObject.Destroy
 00457E4E    test        bl,bl
>00457E50    jle         00457E59
 00457E52    mov         eax,esi
 00457E54    call        @ClassDestroy
 00457E59    pop         esi
 00457E5A    pop         ebx
 00457E5B    ret
*}
end;

//00457E5C
function TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>;
begin
{*
 00457E5C    mov         edx,dword ptr [eax]
 00457E5E    call        dword ptr [edx]
 00457E60    ret
*}
end;

//00457E64
{*procedure TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray(?:?);
begin
 00457E64    push        ebp
 00457E65    mov         ebp,esp
 00457E67    add         esp,0FFFFFFEC
 00457E6A    push        ebx
 00457E6B    mov         dword ptr [ebp-0C],edx
 00457E6E    mov         ebx,eax
 00457E70    lea         eax,[ebp-8]
 00457E73    mov         edx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 00457E79    call        @AddRefRecord
 00457E7E    xor         eax,eax
 00457E80    push        ebp
 00457E81    push        457F4D
 00457E86    push        dword ptr fs:[eax]
 00457E89    mov         dword ptr fs:[eax],esp
 00457E8C    mov         dl,1
 00457E8E    mov         eax,[00460C58];TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>
 00457E93    call        0045C060
 00457E98    mov         dword ptr [ebp-10],eax
 00457E9B    xor         eax,eax
 00457E9D    push        ebp
 00457E9E    push        457F2A
 00457EA3    push        dword ptr fs:[eax]
 00457EA6    mov         dword ptr fs:[eax],esp
 00457EA9    mov         eax,ebx
 00457EAB    call        TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator
 00457EB0    mov         dword ptr [ebp-14],eax
 00457EB3    xor         eax,eax
 00457EB5    push        ebp
 00457EB6    push        457F02
 00457EBB    push        dword ptr fs:[eax]
 00457EBE    mov         dword ptr fs:[eax],esp
>00457EC1    jmp         00457ED8
 00457EC3    lea         edx,[ebp-8]
 00457EC6    mov         eax,dword ptr [ebp-14]
 00457EC9    mov         ecx,dword ptr [eax]
 00457ECB    call        dword ptr [ecx]
 00457ECD    lea         edx,[ebp-8]
 00457ED0    mov         eax,dword ptr [ebp-10]
 00457ED3    call        TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Add
 00457ED8    mov         eax,dword ptr [ebp-14]
 00457EDB    call        TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.MoveNext
 00457EE0    test        al,al
>00457EE2    jne         00457EC3
 00457EE4    xor         eax,eax
 00457EE6    pop         edx
 00457EE7    pop         ecx
 00457EE8    pop         ecx
 00457EE9    mov         dword ptr fs:[eax],edx
 00457EEC    push        457F09
 00457EF1    cmp         dword ptr [ebp-14],0
>00457EF5    je          00457F01
 00457EF7    mov         dl,1
 00457EF9    mov         eax,dword ptr [ebp-14]
 00457EFC    mov         ecx,dword ptr [eax]
 00457EFE    call        dword ptr [ecx-4]
 00457F01    ret
>00457F02    jmp         @HandleFinally
>00457F07    jmp         00457EF1
 00457F09    mov         edx,dword ptr [ebp-0C]
 00457F0C    mov         eax,dword ptr [ebp-10]
 00457F0F    call        TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray
 00457F14    xor         eax,eax
 00457F16    pop         edx
 00457F17    pop         ecx
 00457F18    pop         ecx
 00457F19    mov         dword ptr fs:[eax],edx
 00457F1C    push        457F31
 00457F21    mov         eax,dword ptr [ebp-10]
 00457F24    call        TObject.Free
 00457F29    ret
>00457F2A    jmp         @HandleFinally
>00457F2F    jmp         00457F21
 00457F31    xor         eax,eax
 00457F33    pop         edx
 00457F34    pop         ecx
 00457F35    pop         ecx
 00457F36    mov         dword ptr fs:[eax],edx
 00457F39    push        457F54
 00457F3E    lea         eax,[ebp-8]
 00457F41    mov         edx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 00457F47    call        @FinalizeRecord
 00457F4C    ret
>00457F4D    jmp         @HandleFinally
>00457F52    jmp         00457F3E
 00457F54    pop         ebx
 00457F55    mov         esp,ebp
 00457F57    pop         ebp
 00457F58    ret
end;*}

//00457F5C
function TEnumerator<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.MoveNext:Boolean;
begin
{*
 00457F5C    mov         edx,dword ptr [eax]
 00457F5E    call        dword ptr [edx+4]
 00457F61    ret
*}
end;

//00457F64
procedure sub_00457F64(?:TDictionary<System.TypInfo.PTypeInfo,System.string>; ?:Integer);
begin
{*
 00457F64    cmp         edx,dword ptr [eax+8]
>00457F67    jge         00457F80
 00457F69    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00457F6F    mov         dl,1
 00457F71    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00457F76    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00457F7B    call        @RaiseExcept
 00457F80    test        edx,edx
>00457F82    jne         00457F8C
 00457F84    xor         edx,edx
 00457F86    call        00457FA4
 00457F8B    ret
 00457F8C    mov         ecx,4
 00457F91    cmp         edx,ecx
>00457F93    jle         00457F9B
 00457F95    add         ecx,ecx
 00457F97    cmp         edx,ecx
>00457F99    jg          00457F95
 00457F9B    mov         edx,ecx
 00457F9D    call        00457FA4
 00457FA2    ret
*}
end;

//00457FA4
{*procedure sub_00457FA4(?:?; ?:?);
begin
 00457FA4    push        ebp
 00457FA5    mov         ebp,esp
 00457FA7    add         esp,0FFFFFFF0
 00457FAA    push        ebx
 00457FAB    push        esi
 00457FAC    push        edi
 00457FAD    xor         ecx,ecx
 00457FAF    mov         dword ptr [ebp-4],ecx
 00457FB2    mov         dword ptr [ebp-8],ecx
 00457FB5    mov         edi,edx
 00457FB7    mov         dword ptr [ebp-0C],eax
 00457FBA    xor         eax,eax
 00457FBC    push        ebp
 00457FBD    push        4580C5
 00457FC2    push        dword ptr fs:[eax]
 00457FC5    mov         dword ptr fs:[eax],esp
 00457FC8    mov         eax,dword ptr [ebp-0C]
 00457FCB    mov         eax,dword ptr [eax+4]
 00457FCE    mov         dword ptr [ebp-10],eax
 00457FD1    mov         eax,dword ptr [ebp-10]
 00457FD4    test        eax,eax
>00457FD6    je          00457FDD
 00457FD8    sub         eax,4
 00457FDB    mov         eax,dword ptr [eax]
 00457FDD    cmp         eax,edi
>00457FDF    je          004580A4
 00457FE5    test        edi,edi
>00457FE7    jge         00457FEE
 00457FE9    call        00423F00
 00457FEE    lea         eax,[ebp-4]
 00457FF1    mov         edx,dword ptr [ebp-0C]
 00457FF4    mov         edx,dword ptr [edx+4]
 00457FF7    mov         ecx,dword ptr ds:[442FD0];TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray
 00457FFD    call        @DynArrayAsg
 00458002    push        edi
 00458003    lea         eax,[ebp-8]
 00458006    mov         ecx,1
 0045800B    mov         edx,dword ptr ds:[442FD0];TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray
 00458011    call        @DynArraySetLength
 00458016    add         esp,4
 00458019    mov         eax,dword ptr [ebp-8]
 0045801C    test        eax,eax
>0045801E    je          00458025
 00458020    sub         eax,4
 00458023    mov         eax,dword ptr [eax]
 00458025    mov         esi,eax
 00458027    dec         esi
 00458028    test        esi,esi
>0045802A    jl          00458040
 0045802C    inc         esi
 0045802D    xor         ebx,ebx
 0045802F    lea         eax,[ebx+ebx*2]
 00458032    mov         edx,dword ptr [ebp-8]
 00458035    mov         dword ptr [edx+eax*4],0FFFFFFFF
 0045803C    inc         ebx
 0045803D    dec         esi
>0045803E    jne         0045802F
 00458040    mov         eax,dword ptr [ebp-0C]
 00458043    add         eax,4
 00458046    mov         edx,dword ptr [ebp-8]
 00458049    mov         ecx,dword ptr ds:[442FD0];TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray
 0045804F    call        @DynArrayAsg
 00458054    mov         eax,edi
 00458056    shr         eax,1
 00458058    shr         edi,2
 0045805B    add         eax,edi
 0045805D    mov         edx,dword ptr [ebp-0C]
 00458060    mov         dword ptr [edx+10],eax
 00458063    mov         eax,dword ptr [ebp-4]
 00458066    test        eax,eax
>00458068    je          0045806F
 0045806A    sub         eax,4
 0045806D    mov         eax,dword ptr [eax]
 0045806F    mov         esi,eax
 00458071    dec         esi
 00458072    test        esi,esi
>00458074    jl          004580A4
 00458076    inc         esi
 00458077    xor         ebx,ebx
 00458079    lea         eax,[ebx+ebx*2]
 0045807C    mov         edx,dword ptr [ebp-4]
 0045807F    mov         edx,dword ptr [edx+eax*4]
 00458082    cmp         edx,0FFFFFFFF
>00458085    je          004580A0
 00458087    mov         ecx,dword ptr [ebp-4]
 0045808A    mov         ecx,dword ptr [ecx+eax*4+8]
 0045808E    push        ecx
 0045808F    mov         ecx,dword ptr [ebp-4]
 00458092    mov         ecx,dword ptr [ecx+eax*4+4]
 00458096    push        ecx
 00458097    mov         eax,dword ptr [ebp-0C]
 0045809A    pop         ecx
 0045809B    call        004581C8
 004580A0    inc         ebx
 004580A1    dec         esi
>004580A2    jne         00458079
 004580A4    xor         eax,eax
 004580A6    pop         edx
 004580A7    pop         ecx
 004580A8    pop         ecx
 004580A9    mov         dword ptr fs:[eax],edx
 004580AC    push        4580CC
 004580B1    lea         eax,[ebp-8]
 004580B4    mov         edx,dword ptr ds:[442FD0];TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray
 004580BA    mov         ecx,2
 004580BF    call        @FinalizeArray
 004580C4    ret
>004580C5    jmp         @HandleFinally
>004580CA    jmp         004580B1
 004580CC    pop         edi
 004580CD    pop         esi
 004580CE    pop         ebx
 004580CF    mov         esp,ebp
 004580D1    pop         ebp
 004580D2    ret
end;*}

//004580D4
procedure sub_004580D4(?:TDictionary<System);
begin
{*
 004580D4    push        ecx
 004580D5    mov         edx,dword ptr [eax+4]
 004580D8    mov         dword ptr [esp],edx
 004580DB    mov         edx,dword ptr [esp]
 004580DE    test        edx,edx
>004580E0    je          004580E7
 004580E2    sub         edx,4
 004580E5    mov         edx,dword ptr [edx]
 004580E7    add         edx,edx
 004580E9    test        edx,edx
>004580EB    jne         004580F2
 004580ED    mov         edx,4
 004580F2    call        00457FA4
 004580F7    pop         edx
 004580F8    ret
*}
end;

//004580FC
function TDictionary<System.TypInfo.PTypeInfo,System.string>.GetBucketIndex(const Key:TypInfo.PTypeInfo; HashCode:Integer):Integer;
begin
{*
 004580FC    push        ebx
 004580FD    push        esi
 004580FE    push        edi
 004580FF    add         esp,0FFFFFFE8
 00458102    mov         dword ptr [esp+4],ecx
 00458106    mov         dword ptr [esp],edx
 00458109    mov         esi,eax
 0045810B    mov         eax,dword ptr [esi+4]
 0045810E    mov         dword ptr [esp+0C],eax
 00458112    mov         eax,dword ptr [esp+0C]
 00458116    test        eax,eax
>00458118    je          0045811F
 0045811A    sub         eax,4
 0045811D    mov         eax,dword ptr [eax]
 0045811F    test        eax,eax
>00458121    jne         0045812A
 00458123    mov         ebx,80000000
>00458128    jmp         0045819D
 0045812A    mov         eax,dword ptr [esi+4]
 0045812D    mov         dword ptr [esp+10],eax
 00458131    mov         eax,dword ptr [esp+10]
 00458135    test        eax,eax
>00458137    je          0045813E
 00458139    sub         eax,4
 0045813C    mov         eax,dword ptr [eax]
 0045813E    dec         eax
 0045813F    and         eax,dword ptr [esp+4]
 00458143    mov         ebx,eax
 00458145    lea         eax,[ebx+ebx*2]
 00458148    mov         edx,dword ptr [esi+4]
 0045814B    mov         eax,dword ptr [edx+eax*4]
 0045814E    mov         dword ptr [esp+8],eax
 00458152    cmp         dword ptr [esp+8],0FFFFFFFF
>00458157    jne         0045815D
 00458159    not         ebx
>0045815B    jmp         0045819D
 0045815D    mov         eax,dword ptr [esp+8]
 00458161    cmp         eax,dword ptr [esp+4]
>00458165    jne         00458180
 00458167    lea         eax,[ebx+ebx*2]
 0045816A    mov         edx,dword ptr [esi+4]
 0045816D    mov         edx,dword ptr [edx+eax*4+4]
 00458171    mov         ecx,dword ptr [esp]
 00458174    mov         eax,dword ptr [esi+0C]
 00458177    mov         edi,dword ptr [eax]
 00458179    call        dword ptr [edi+0C]
 0045817C    test        al,al
>0045817E    jne         0045819D
 00458180    inc         ebx
 00458181    mov         eax,dword ptr [esi+4]
 00458184    mov         dword ptr [esp+14],eax
 00458188    mov         edi,dword ptr [esp+14]
 0045818C    test        edi,edi
>0045818E    je          00458195
 00458190    sub         edi,4
 00458193    mov         edi,dword ptr [edi]
 00458195    cmp         edi,ebx
>00458197    jg          00458145
 00458199    xor         ebx,ebx
>0045819B    jmp         00458145
 0045819D    mov         eax,ebx
 0045819F    add         esp,18
 004581A2    pop         edi
 004581A3    pop         esi
 004581A4    pop         ebx
 004581A5    ret
*}
end;

//004581A8
function TDictionary<System.TypInfo.PTypeInfo,System.string>.Hash(const Key:TypInfo.PTypeInfo):Integer;
begin
{*
 004581A8    push        ebx
 004581A9    push        esi
 004581AA    mov         esi,edx
 004581AC    mov         ebx,eax
 004581AE    mov         edx,esi
 004581B0    mov         eax,dword ptr [ebx+0C]
 004581B3    mov         ecx,dword ptr [eax]
 004581B5    call        dword ptr [ecx+10]
 004581B8    and         eax,7FFFFFFF
 004581BD    inc         eax
 004581BE    and         eax,7FFFFFFF
 004581C3    pop         esi
 004581C4    pop         ebx
 004581C5    ret
*}
end;

//004581C8
{*procedure sub_004581C8(?:?; ?:?; ?:?; ?:?);
begin
 004581C8    push        ebp
 004581C9    mov         ebp,esp
 004581CB    add         esp,0FFFFFFF8
 004581CE    push        ebx
 004581CF    push        esi
 004581D0    push        edi
 004581D1    mov         dword ptr [ebp-8],ecx
 004581D4    mov         dword ptr [ebp-4],edx
 004581D7    mov         ebx,eax
 004581D9    mov         ecx,dword ptr [ebp-4]
 004581DC    mov         edx,dword ptr [ebp-8]
 004581DF    mov         eax,ebx
 004581E1    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.GetBucketIndex
 004581E6    mov         esi,eax
 004581E8    not         esi
 004581EA    lea         edi,[esi+esi*2]
 004581ED    mov         eax,dword ptr [ebx+4]
 004581F0    mov         edx,dword ptr [ebp-4]
 004581F3    mov         dword ptr [eax+edi*4],edx
 004581F6    mov         eax,dword ptr [ebx+4]
 004581F9    mov         edx,dword ptr [ebp-8]
 004581FC    mov         dword ptr [eax+edi*4+4],edx
 00458200    mov         eax,dword ptr [ebx+4]
 00458203    lea         eax,[eax+edi*4+8]
 00458207    mov         edx,dword ptr [ebp+8]
 0045820A    call        @UStrAsg
 0045820F    pop         edi
 00458210    pop         esi
 00458211    pop         ebx
 00458212    pop         ecx
 00458213    pop         ecx
 00458214    pop         ebp
 00458215    ret         4
end;*}

//00458218
{*procedure sub_00458218(?:TDictionary<System; ?:Integer; ?:?; ?:?; ?:?);
begin
 00458218    push        ebp
 00458219    mov         ebp,esp
 0045821B    push        ebx
 0045821C    push        esi
 0045821D    push        edi
 0045821E    mov         esi,ecx
 00458220    mov         ebx,eax
 00458222    lea         edi,[esi+esi*2]
 00458225    mov         eax,dword ptr [ebx+4]
 00458228    mov         dword ptr [eax+edi*4],edx
 0045822B    mov         eax,dword ptr [ebx+4]
 0045822E    mov         edx,dword ptr [ebp+0C]
 00458231    mov         dword ptr [eax+edi*4+4],edx
 00458235    mov         eax,dword ptr [ebx+4]
 00458238    lea         eax,[eax+edi*4+8]
 0045823C    mov         edx,dword ptr [ebp+8]
 0045823F    call        @UStrAsg
 00458244    inc         dword ptr [ebx+8]
 00458247    xor         ecx,ecx
 00458249    mov         edx,dword ptr [ebp+0C]
 0045824C    mov         eax,ebx
 0045824E    mov         esi,dword ptr [eax]
 00458250    call        dword ptr [esi+8]
 00458253    xor         ecx,ecx
 00458255    mov         edx,dword ptr [ebp+8]
 00458258    mov         eax,ebx
 0045825A    mov         ebx,dword ptr [eax]
 0045825C    call        dword ptr [ebx+0C]
 0045825F    pop         edi
 00458260    pop         esi
 00458261    pop         ebx
 00458262    pop         ebp
 00458263    ret         8
end;*}

//00458268
procedure sub_00458268;
begin
{*
 00458268    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.GetEnumerator
 0045826D    ret
*}
end;

//00458270
{*procedure sub_00458270(?:?);
begin
 00458270    push        ebx
 00458271    cmp         word ptr [eax+1A],0;TDictionary<System.TypInfo.PTypeInfo,System.string>.FOnKeyNotify:TCo...
>00458276    je          00458285
 00458278    push        ecx
 00458279    mov         ebx,eax
 0045827B    mov         ecx,edx
 0045827D    mov         edx,eax
 0045827F    mov         eax,dword ptr [ebx+1C];TDictionary<System.TypInfo.PTypeInfo,System.string>.FOnKeyNotify:...
 00458282    call        dword ptr [ebx+18];TDictionary<System.TypInfo.PTypeInfo,System.string>.FOnKeyNotify
 00458285    pop         ebx
 00458286    ret
end;*}

//00458288
{*procedure sub_00458288(?:?);
begin
 00458288    push        ebx
 00458289    cmp         word ptr [eax+22],0;TDictionary<System.TypInfo.PTypeInfo,System.string>.FOnValueNotify:T...
>0045828E    je          0045829D
 00458290    push        ecx
 00458291    mov         ebx,eax
 00458293    mov         ecx,edx
 00458295    mov         edx,eax
 00458297    mov         eax,dword ptr [ebx+24];TDictionary<System.TypInfo.PTypeInfo,System.string>.FOnValueNotif...
 0045829A    call        dword ptr [ebx+20];TDictionary<System.TypInfo.PTypeInfo,System.string>.FOnValueNotify
 0045829D    pop         ebx
 0045829E    ret
end;*}

//004582A0
constructor sub_004582A0(ACapacity:Integer);
begin
{*
 004582A0    push        ebx
 004582A1    push        esi
 004582A2    test        dl,dl
>004582A4    je          004582AE
 004582A6    add         esp,0FFFFFFF0
 004582A9    call        @ClassCreate
 004582AE    mov         ebx,edx
 004582B0    mov         esi,eax
 004582B2    push        0
 004582B4    xor         edx,edx
 004582B6    mov         eax,esi
 004582B8    call        004582D8
 004582BD    mov         eax,esi
 004582BF    test        bl,bl
>004582C1    je          004582D2
 004582C3    call        @AfterConstruction
 004582C8    pop         dword ptr fs:[0]
 004582CF    add         esp,0C
 004582D2    mov         eax,esi
 004582D4    pop         esi
 004582D5    pop         ebx
 004582D6    ret
*}
end;

//004582D8
constructor sub_004582D8(ACapacity:Integer; AComparer:IEqualityComparer<System.TypInfo.PTypeInfo>);
begin
{*
 004582D8    push        ebp
 004582D9    mov         ebp,esp
 004582DB    push        0
 004582DD    push        ebx
 004582DE    push        esi
 004582DF    push        edi
 004582E0    test        dl,dl
>004582E2    je          004582EC
 004582E4    add         esp,0FFFFFFF0
 004582E7    call        @ClassCreate
 004582EC    mov         esi,ecx
 004582EE    mov         ebx,edx
 004582F0    mov         edi,eax
 004582F2    xor         eax,eax
 004582F4    push        ebp
 004582F5    push        458367
 004582FA    push        dword ptr fs:[eax]
 004582FD    mov         dword ptr fs:[eax],esp
 00458300    xor         edx,edx
 00458302    mov         eax,edi
 00458304    call        TObject.Create
 00458309    test        esi,esi
>0045830B    jge         00458324
 0045830D    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00458313    mov         dl,1
 00458315    mov         eax,[00417CF0];EArgumentOutOfRangeException
 0045831A    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 0045831F    call        @RaiseExcept
 00458324    lea         eax,[edi+0C];TDictionary<System.TypInfo.PTypeInfo,System.string>.FComparer:IEqualityComp...
 00458327    mov         edx,dword ptr [ebp+8]
 0045832A    call        @IntfCopy
 0045832F    cmp         dword ptr [edi+0C],0;TDictionary<System.TypInfo.PTypeInfo,System.string>.FComparer:IEqua...
>00458333    jne         00458348
 00458335    lea         eax,[ebp-4]
 00458338    call        0045C34C
 0045833D    mov         edx,dword ptr [ebp-4]
 00458340    lea         eax,[edi+0C];TDictionary<System.TypInfo.PTypeInfo,System.string>.FComparer:IEqualityComp...
 00458343    call        @IntfCopy
 00458348    mov         edx,esi
 0045834A    mov         eax,edi
 0045834C    call        00457F64
 00458351    xor         eax,eax
 00458353    pop         edx
 00458354    pop         ecx
 00458355    pop         ecx
 00458356    mov         dword ptr fs:[eax],edx
 00458359    push        45836E
 0045835E    lea         eax,[ebp-4]
 00458361    call        @IntfClear
 00458366    ret
>00458367    jmp         @HandleFinally
>0045836C    jmp         0045835E
 0045836E    mov         eax,edi
 00458370    test        bl,bl
>00458372    je          00458383
 00458374    call        @AfterConstruction
 00458379    pop         dword ptr fs:[0]
 00458380    add         esp,0C
 00458383    mov         eax,edi
 00458385    pop         edi
 00458386    pop         esi
 00458387    pop         ebx
 00458388    pop         ecx
 00458389    pop         ebp
 0045838A    ret         4
*}
end;

//00458390
destructor TDictionary<System.TypInfo.PTypeInfo,System.string>.Destroy();
begin
{*
 00458390    push        ebx
 00458391    push        esi
 00458392    call        @BeforeDestruction
 00458397    mov         ebx,edx
 00458399    mov         esi,eax
 0045839B    mov         eax,esi
 0045839D    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.Clear
 004583A2    mov         eax,dword ptr [esi+28];TDictionary<System.TypInfo.PTypeInfo,System.string>.FKeyCollectio...
 004583A5    call        TObject.Free
 004583AA    mov         eax,dword ptr [esi+2C]
 004583AD    call        TObject.Free
 004583B2    mov         dl,0FC
 004583B4    and         dl,bl
 004583B6    mov         eax,esi
 004583B8    call        TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy
 004583BD    test        bl,bl
>004583BF    jle         004583C8
 004583C1    mov         eax,esi
 004583C3    call        @ClassDestroy
 004583C8    pop         esi
 004583C9    pop         ebx
 004583CA    ret
*}
end;

//004583CC
procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.Add(Key:PTypeInfo; Value:string);
begin
{*
 004583CC    push        ebx
 004583CD    push        esi
 004583CE    push        edi
 004583CF    push        ecx
 004583D0    mov         dword ptr [esp],ecx
 004583D3    mov         esi,edx
 004583D5    mov         ebx,eax
 004583D7    mov         eax,dword ptr [ebx+8]
 004583DA    cmp         eax,dword ptr [ebx+10]
>004583DD    jl          004583E6
 004583DF    mov         eax,ebx
 004583E1    call        004580D4
 004583E6    mov         edx,esi
 004583E8    mov         eax,ebx
 004583EA    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.Hash
 004583EF    mov         edi,eax
 004583F1    mov         ecx,edi
 004583F3    mov         edx,esi
 004583F5    mov         eax,ebx
 004583F7    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.GetBucketIndex
 004583FC    test        eax,eax
>004583FE    jl          00458417
 00458400    mov         ecx,dword ptr ds:[7C423C];^SResString174:TResStringRec
 00458406    mov         dl,1
 00458408    mov         eax,[004180BC];EListError
 0045840D    call        Exception.CreateRes;EListError.Create
 00458412    call        @RaiseExcept
 00458417    push        esi
 00458418    mov         edx,dword ptr [esp+4]
 0045841C    push        edx
 0045841D    mov         ecx,eax
 0045841F    not         ecx
 00458421    mov         edx,edi
 00458423    mov         eax,ebx
 00458425    call        00458218
 0045842A    pop         edx
 0045842B    pop         edi
 0045842C    pop         esi
 0045842D    pop         ebx
 0045842E    ret
*}
end;

//00458430
procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.Clear;
begin
{*
 00458430    push        ebp
 00458431    mov         ebp,esp
 00458433    add         esp,0FFFFFFF8
 00458436    push        ebx
 00458437    push        esi
 00458438    push        edi
 00458439    xor         edx,edx
 0045843B    mov         dword ptr [ebp-4],edx
 0045843E    mov         esi,eax
 00458440    xor         eax,eax
 00458442    push        ebp
 00458443    push        4584EB
 00458448    push        dword ptr fs:[eax]
 0045844B    mov         dword ptr fs:[eax],esp
 0045844E    lea         eax,[ebp-4]
 00458451    mov         edx,dword ptr [esi+4]
 00458454    mov         ecx,dword ptr ds:[442FD0];TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray
 0045845A    call        @DynArrayAsg
 0045845F    xor         eax,eax
 00458461    mov         dword ptr [esi+8],eax
 00458464    lea         eax,[esi+4]
 00458467    mov         edx,dword ptr ds:[442FD0];TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray
 0045846D    call        @DynArrayClear
 00458472    xor         edx,edx
 00458474    mov         eax,esi
 00458476    call        00457F64
 0045847B    xor         eax,eax
 0045847D    mov         dword ptr [esi+10],eax
 00458480    mov         eax,dword ptr [ebp-4]
 00458483    test        eax,eax
>00458485    je          0045848C
 00458487    sub         eax,4
 0045848A    mov         eax,dword ptr [eax]
 0045848C    dec         eax
 0045848D    test        eax,eax
>0045848F    jl          004584CF
 00458491    inc         eax
 00458492    mov         dword ptr [ebp-8],eax
 00458495    xor         ebx,ebx
 00458497    lea         eax,[ebx+ebx*2]
 0045849A    mov         edx,dword ptr [ebp-4]
 0045849D    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004584A1    je          004584C9
 004584A3    lea         eax,[ebx+ebx*2]
 004584A6    mov         edx,dword ptr [ebp-4]
 004584A9    mov         edx,dword ptr [edx+eax*4+4]
 004584AD    mov         cl,1
 004584AF    mov         eax,esi
 004584B1    mov         edi,dword ptr [eax]
 004584B3    call        dword ptr [edi+8]
 004584B6    lea         eax,[ebx+ebx*2]
 004584B9    mov         edx,dword ptr [ebp-4]
 004584BC    mov         edx,dword ptr [edx+eax*4+8]
 004584C0    mov         cl,1
 004584C2    mov         eax,esi
 004584C4    mov         edi,dword ptr [eax]
 004584C6    call        dword ptr [edi+0C]
 004584C9    inc         ebx
 004584CA    dec         dword ptr [ebp-8]
>004584CD    jne         00458497
 004584CF    xor         eax,eax
 004584D1    pop         edx
 004584D2    pop         ecx
 004584D3    pop         ecx
 004584D4    mov         dword ptr fs:[eax],edx
 004584D7    push        4584F2
 004584DC    lea         eax,[ebp-4]
 004584DF    mov         edx,dword ptr ds:[442FD0];TDictionary<System.TypInfo.PTypeInfo,System.string>.TItemArray
 004584E5    call        @DynArrayClear
 004584EA    ret
>004584EB    jmp         @HandleFinally
>004584F0    jmp         004584DC
 004584F2    pop         edi
 004584F3    pop         esi
 004584F4    pop         ebx
 004584F5    pop         ecx
 004584F6    pop         ecx
 004584F7    pop         ebp
 004584F8    ret
*}
end;

//004584FC
function TDictionary<System.TypInfo.PTypeInfo,System.string>.TryGetValue(Key:PTypeInfo; Value:string):Boolean;
begin
{*
 004584FC    push        ebp
 004584FD    mov         ebp,esp
 004584FF    push        ecx
 00458500    push        ebx
 00458501    push        esi
 00458502    push        edi
 00458503    mov         edi,ecx
 00458505    mov         esi,edx
 00458507    mov         ebx,eax
 00458509    test        edi,edi
>0045850B    je          00458511
 0045850D    xor         eax,eax
 0045850F    mov         dword ptr [edi],eax
 00458511    mov         edx,esi
 00458513    mov         eax,ebx
 00458515    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.Hash
 0045851A    mov         ecx,eax
 0045851C    mov         edx,esi
 0045851E    mov         eax,ebx
 00458520    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.GetBucketIndex
 00458525    mov         esi,eax
 00458527    test        esi,esi
 00458529    setge       byte ptr [ebp-1]
 0045852D    cmp         byte ptr [ebp-1],0
>00458531    je          00458546
 00458533    mov         eax,edi
 00458535    lea         edx,[esi+esi*2]
 00458538    mov         ecx,dword ptr [ebx+4]
 0045853B    mov         edx,dword ptr [ecx+edx*4+8]
 0045853F    call        @UStrAsg
>00458544    jmp         0045854D
 00458546    mov         eax,edi
 00458548    call        @UStrClr
 0045854D    movzx       eax,byte ptr [ebp-1]
 00458551    pop         edi
 00458552    pop         esi
 00458553    pop         ebx
 00458554    pop         ecx
 00458555    pop         ebp
 00458556    ret
*}
end;

//00458558
function TDictionary<System.TypInfo.PTypeInfo,System.string>.ContainsKey(Key:PTypeInfo):Boolean;
begin
{*
 00458558    push        ebx
 00458559    push        esi
 0045855A    mov         esi,edx
 0045855C    mov         ebx,eax
 0045855E    mov         edx,esi
 00458560    mov         eax,ebx
 00458562    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.Hash
 00458567    mov         ecx,eax
 00458569    mov         edx,esi
 0045856B    mov         eax,ebx
 0045856D    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.GetBucketIndex
 00458572    test        eax,eax
 00458574    setge       al
 00458577    pop         esi
 00458578    pop         ebx
 00458579    ret
*}
end;

//0045857C
{*procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.ToArray(?:?);
begin
 0045857C    push        ebx
 0045857D    push        esi
 0045857E    mov         esi,edx
 00458580    mov         ebx,eax
 00458582    mov         ecx,esi
 00458584    mov         edx,dword ptr [ebx+8]
 00458587    mov         eax,ebx
 00458589    call        00457D5C
 0045858E    pop         esi
 0045858F    pop         ebx
 00458590    ret
end;*}

//004585D4
procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.GetEnumerator;
begin
{*
 004585D4    mov         ecx,eax
 004585D6    mov         dl,1
 004585D8    mov         eax,[00443CA8];TDictionary<System.TypInfo.PTypeInfo,System.string>.TPairEnumerator
 004585DD    call        004589E8
 004585E2    ret
*}
end;

//004585E4
{*procedure sub_004585E4(?:TDictionary<System; ?:?; ?:?);
begin
 004585E4    push        ebp
 004585E5    mov         ebp,esp
 004585E7    add         esp,0FFFFFFF8
 004585EA    push        ebx
 004585EB    push        esi
 004585EC    mov         dword ptr [ebp-4],ecx
 004585EF    mov         esi,edx
 004585F1    mov         ebx,eax
 004585F3    push        esi
 004585F4    mov         eax,dword ptr [ebp-4]
 004585F7    mov         ecx,1
 004585FC    mov         edx,dword ptr ds:[44316C];TArray<System.TypInfo.PTypeInfo>
 00458602    call        @DynArraySetLength
 00458607    add         esp,4
 0045860A    xor         esi,esi
 0045860C    mov         eax,ebx
 0045860E    call        TEnumerable<System.TypInfo.PTypeInfo>.GetEnumerator
 00458613    mov         dword ptr [ebp-8],eax
 00458616    xor         eax,eax
 00458618    push        ebp
 00458619    push        458662
 0045861E    push        dword ptr fs:[eax]
 00458621    mov         dword ptr fs:[eax],esp
>00458624    jmp         00458638
 00458626    mov         eax,dword ptr [ebp-8]
 00458629    mov         edx,dword ptr [eax]
 0045862B    call        dword ptr [edx]
 0045862D    mov         ebx,eax
 0045862F    mov         eax,dword ptr [ebp-4]
 00458632    mov         eax,dword ptr [eax]
 00458634    mov         dword ptr [eax+esi*4],ebx
 00458637    inc         esi
 00458638    mov         eax,dword ptr [ebp-8]
 0045863B    call        TEnumerator<System.TypInfo.PTypeInfo>.MoveNext
 00458640    test        al,al
>00458642    jne         00458626
 00458644    xor         eax,eax
 00458646    pop         edx
 00458647    pop         ecx
 00458648    pop         ecx
 00458649    mov         dword ptr fs:[eax],edx
 0045864C    push        458669
 00458651    cmp         dword ptr [ebp-8],0
>00458655    je          00458661
 00458657    mov         dl,1
 00458659    mov         eax,dword ptr [ebp-8]
 0045865C    mov         ecx,dword ptr [eax]
 0045865E    call        dword ptr [ecx-4]
 00458661    ret
>00458662    jmp         @HandleFinally
>00458667    jmp         00458651
 00458669    pop         esi
 0045866A    pop         ebx
 0045866B    pop         ecx
 0045866C    pop         ecx
 0045866D    pop         ebp
 0045866E    ret
end;*}

//00458670
destructor TEnumerable<System.TypInfo.PTypeInfo>.Destroy();
begin
{*
 00458670    push        ebx
 00458671    push        esi
 00458672    call        @BeforeDestruction
 00458677    mov         ebx,edx
 00458679    mov         esi,eax
 0045867B    mov         dl,0FC
 0045867D    and         dl,bl
 0045867F    mov         eax,esi
 00458681    call        TObject.Destroy
 00458686    test        bl,bl
>00458688    jle         00458691
 0045868A    mov         eax,esi
 0045868C    call        @ClassDestroy
 00458691    pop         esi
 00458692    pop         ebx
 00458693    ret
*}
end;

//00458694
function TEnumerable<System.TypInfo.PTypeInfo>.GetEnumerator:TEnumerator<System.TypInfo.PTypeInfo>;
begin
{*
 00458694    mov         edx,dword ptr [eax]
 00458696    call        dword ptr [edx]
 00458698    ret
*}
end;

//0045869C
{*procedure TEnumerable<System.TypInfo.PTypeInfo>.ToArray(?:?);
begin
 0045869C    push        ebp
 0045869D    mov         ebp,esp
 0045869F    add         esp,0FFFFFFF4
 004586A2    push        ebx
 004586A3    mov         dword ptr [ebp-4],edx
 004586A6    mov         ebx,eax
 004586A8    mov         dl,1
 004586AA    mov         eax,[00461CC0];TList<System.TypInfo.PTypeInfo>
 004586AF    call        0045C3FC
 004586B4    mov         dword ptr [ebp-8],eax
 004586B7    xor         eax,eax
 004586B9    push        ebp
 004586BA    push        458744
 004586BF    push        dword ptr fs:[eax]
 004586C2    mov         dword ptr fs:[eax],esp
 004586C5    mov         eax,ebx
 004586C7    call        TEnumerable<System.TypInfo.PTypeInfo>.GetEnumerator
 004586CC    mov         dword ptr [ebp-0C],eax
 004586CF    xor         eax,eax
 004586D1    push        ebp
 004586D2    push        45871C
 004586D7    push        dword ptr fs:[eax]
 004586DA    mov         dword ptr fs:[eax],esp
>004586DD    jmp         004586F2
 004586DF    mov         eax,dword ptr [ebp-0C]
 004586E2    mov         edx,dword ptr [eax]
 004586E4    call        dword ptr [edx]
 004586E6    mov         ebx,eax
 004586E8    mov         edx,ebx
 004586EA    mov         eax,dword ptr [ebp-8]
 004586ED    call        TList<System.TypInfo.PTypeInfo>.Add
 004586F2    mov         eax,dword ptr [ebp-0C]
 004586F5    call        TEnumerator<System.TypInfo.PTypeInfo>.MoveNext
 004586FA    test        al,al
>004586FC    jne         004586DF
 004586FE    xor         eax,eax
 00458700    pop         edx
 00458701    pop         ecx
 00458702    pop         ecx
 00458703    mov         dword ptr fs:[eax],edx
 00458706    push        458723
 0045870B    cmp         dword ptr [ebp-0C],0
>0045870F    je          0045871B
 00458711    mov         dl,1
 00458713    mov         eax,dword ptr [ebp-0C]
 00458716    mov         ecx,dword ptr [eax]
 00458718    call        dword ptr [ecx-4]
 0045871B    ret
>0045871C    jmp         @HandleFinally
>00458721    jmp         0045870B
 00458723    mov         edx,dword ptr [ebp-4]
 00458726    mov         eax,dword ptr [ebp-8]
 00458729    call        TList<System.TypInfo.PTypeInfo>.ToArray
 0045872E    xor         eax,eax
 00458730    pop         edx
 00458731    pop         ecx
 00458732    pop         ecx
 00458733    mov         dword ptr fs:[eax],edx
 00458736    push        45874B
 0045873B    mov         eax,dword ptr [ebp-8]
 0045873E    call        TObject.Free
 00458743    ret
>00458744    jmp         @HandleFinally
>00458749    jmp         0045873B
 0045874B    pop         ebx
 0045874C    mov         esp,ebp
 0045874E    pop         ebp
 0045874F    ret
end;*}

//00458750
function TEnumerator<System.TypInfo.PTypeInfo>.MoveNext:Boolean;
begin
{*
 00458750    mov         edx,dword ptr [eax]
 00458752    call        dword ptr [edx+4]
 00458755    ret
*}
end;

//00458760
procedure sub_00458760;
begin
{*
 00458760    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyCollection.GetEnumerator
 00458765    ret
*}
end;

//00458768
constructor sub_00458768(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);
begin
{*
 00458768    push        ebx
 00458769    push        esi
 0045876A    push        edi
 0045876B    test        dl,dl
>0045876D    je          00458777
 0045876F    add         esp,0FFFFFFF0
 00458772    call        @ClassCreate
 00458777    mov         esi,ecx
 00458779    mov         ebx,edx
 0045877B    mov         edi,eax
 0045877D    xor         edx,edx
 0045877F    mov         eax,edi
 00458781    call        TObject.Create
 00458786    mov         dword ptr [edi+4],esi
 00458789    mov         eax,edi
 0045878B    test        bl,bl
>0045878D    je          0045879E
 0045878F    call        @AfterConstruction
 00458794    pop         dword ptr fs:[0]
 0045879B    add         esp,0C
 0045879E    mov         eax,edi
 004587A0    pop         edi
 004587A1    pop         esi
 004587A2    pop         ebx
 004587A3    ret
*}
end;

//004587A4
procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyCollection.GetEnumerator;
begin
{*
 004587A4    mov         ecx,dword ptr [eax+4]
 004587A7    mov         dl,1
 004587A9    mov         eax,[00443478];TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyEnumerator
 004587AE    call        004587F0
 004587B3    ret
*}
end;

//004587B4
{*procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyCollection.ToArray(?:?);
begin
 004587B4    push        ebx
 004587B5    push        esi
 004587B6    mov         esi,edx
 004587B8    mov         ebx,eax
 004587BA    mov         ecx,esi
 004587BC    mov         eax,dword ptr [ebx+4]
 004587BF    mov         edx,dword ptr [eax+8]
 004587C2    mov         eax,ebx
 004587C4    call        004585E4
 004587C9    pop         esi
 004587CA    pop         ebx
 004587CB    ret
end;*}

//004587CC
{*function sub_004587CC(?:?):?;
begin
 004587CC    mov         edx,dword ptr [eax+8]
 004587CF    lea         edx,[edx+edx*2]
 004587D2    mov         eax,dword ptr [eax+4]
 004587D5    mov         eax,dword ptr [eax+4]
 004587D8    mov         eax,dword ptr [eax+edx*4+4]
 004587DC    ret
end;*}

//004587E0
procedure sub_004587E0;
begin
{*
 004587E0    call        004587CC
 004587E5    ret
*}
end;

//004587E8
procedure sub_004587E8;
begin
{*
 004587E8    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyEnumerator.MoveNext
 004587ED    ret
*}
end;

//004587F0
constructor sub_004587F0(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);
begin
{*
 004587F0    push        ebx
 004587F1    push        esi
 004587F2    push        edi
 004587F3    test        dl,dl
>004587F5    je          004587FF
 004587F7    add         esp,0FFFFFFF0
 004587FA    call        @ClassCreate
 004587FF    mov         esi,ecx
 00458801    mov         ebx,edx
 00458803    mov         edi,eax
 00458805    xor         edx,edx
 00458807    mov         eax,edi
 00458809    call        TObject.Create
 0045880E    mov         dword ptr [edi+8],0FFFFFFFF
 00458815    mov         dword ptr [edi+4],esi;TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyEnumerator...
 00458818    mov         eax,edi
 0045881A    test        bl,bl
>0045881C    je          0045882D
 0045881E    call        @AfterConstruction
 00458823    pop         dword ptr fs:[0]
 0045882A    add         esp,0C
 0045882D    mov         eax,edi
 0045882F    pop         edi
 00458830    pop         esi
 00458831    pop         ebx
 00458832    ret
*}
end;

//00458834
function TDictionary<System.TypInfo.PTypeInfo,System.string>.TKeyEnumerator.MoveNext:Boolean;
begin
{*
 00458834    push        ebx
 00458835    push        esi
 00458836    mov         esi,eax
>00458838    jmp         00458853
 0045883A    inc         dword ptr [esi+8]
 0045883D    mov         eax,dword ptr [esi+8]
 00458840    lea         eax,[eax+eax*2]
 00458843    mov         edx,dword ptr [esi+4]
 00458846    mov         edx,dword ptr [edx+4]
 00458849    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>0045884D    je          00458853
 0045884F    mov         bl,1
>00458851    jmp         00458866
 00458853    mov         eax,dword ptr [esi+4]
 00458856    mov         eax,dword ptr [eax+4]
 00458859    call        0040ABA8
 0045885E    dec         eax
 0045885F    cmp         eax,dword ptr [esi+8]
>00458862    jg          0045883A
 00458864    xor         ebx,ebx
 00458866    mov         eax,ebx
 00458868    pop         esi
 00458869    pop         ebx
 0045886A    ret
*}
end;

//00458874
procedure sub_00458874;
begin
{*
 00458874    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueCollection.GetEnumerator
 00458879    ret
*}
end;

//0045887C
constructor sub_0045887C(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);
begin
{*
 0045887C    push        ebx
 0045887D    push        esi
 0045887E    push        edi
 0045887F    test        dl,dl
>00458881    je          0045888B
 00458883    add         esp,0FFFFFFF0
 00458886    call        @ClassCreate
 0045888B    mov         esi,ecx
 0045888D    mov         ebx,edx
 0045888F    mov         edi,eax
 00458891    xor         edx,edx
 00458893    mov         eax,edi
 00458895    call        TObject.Create
 0045889A    mov         dword ptr [edi+4],esi
 0045889D    mov         eax,edi
 0045889F    test        bl,bl
>004588A1    je          004588B2
 004588A3    call        @AfterConstruction
 004588A8    pop         dword ptr fs:[0]
 004588AF    add         esp,0C
 004588B2    mov         eax,edi
 004588B4    pop         edi
 004588B5    pop         esi
 004588B6    pop         ebx
 004588B7    ret
*}
end;

//004588B8
procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueCollection.GetEnumerator;
begin
{*
 004588B8    mov         ecx,dword ptr [eax+4]
 004588BB    mov         dl,1
 004588BD    mov         eax,[0044388C];TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueEnumerator
 004588C2    call        0045891C
 004588C7    ret
*}
end;

//004588C8
{*procedure TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueCollection.ToArray(?:?);
begin
 004588C8    push        ebx
 004588C9    push        esi
 004588CA    mov         esi,edx
 004588CC    mov         ebx,eax
 004588CE    mov         ecx,esi
 004588D0    mov         eax,dword ptr [ebx+4]
 004588D3    mov         edx,dword ptr [eax+8]
 004588D6    mov         eax,ebx
 004588D8    call        00590BC0
 004588DD    pop         esi
 004588DE    pop         ebx
 004588DF    ret
end;*}

//004588E0
{*procedure sub_004588E0(?:TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueEnumerator; ?:?);
begin
 004588E0    push        ebx
 004588E1    push        esi
 004588E2    mov         esi,edx
 004588E4    mov         ebx,eax
 004588E6    mov         eax,esi
 004588E8    mov         edx,dword ptr [ebx+8]
 004588EB    lea         edx,[edx+edx*2]
 004588EE    mov         ecx,dword ptr [ebx+4]
 004588F1    mov         ecx,dword ptr [ecx+4]
 004588F4    mov         edx,dword ptr [ecx+edx*4+8]
 004588F8    call        @UStrAsg
 004588FD    pop         esi
 004588FE    pop         ebx
 004588FF    ret
end;*}

//00458900
{*procedure sub_00458900(?:?);
begin
 00458900    push        ebx
 00458901    push        esi
 00458902    mov         esi,edx
 00458904    mov         ebx,eax
 00458906    mov         edx,esi
 00458908    mov         eax,ebx
 0045890A    call        004588E0
 0045890F    pop         esi
 00458910    pop         ebx
 00458911    ret
end;*}

//00458914
procedure sub_00458914;
begin
{*
 00458914    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueEnumerator.MoveNext
 00458919    ret
*}
end;

//0045891C
constructor sub_0045891C(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);
begin
{*
 0045891C    push        ebx
 0045891D    push        esi
 0045891E    push        edi
 0045891F    test        dl,dl
>00458921    je          0045892B
 00458923    add         esp,0FFFFFFF0
 00458926    call        @ClassCreate
 0045892B    mov         esi,ecx
 0045892D    mov         ebx,edx
 0045892F    mov         edi,eax
 00458931    xor         edx,edx
 00458933    mov         eax,edi
 00458935    call        TObject.Create
 0045893A    mov         dword ptr [edi+8],0FFFFFFFF
 00458941    mov         dword ptr [edi+4],esi;TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueEnumerat...
 00458944    mov         eax,edi
 00458946    test        bl,bl
>00458948    je          00458959
 0045894A    call        @AfterConstruction
 0045894F    pop         dword ptr fs:[0]
 00458956    add         esp,0C
 00458959    mov         eax,edi
 0045895B    pop         edi
 0045895C    pop         esi
 0045895D    pop         ebx
 0045895E    ret
*}
end;

//00458960
function TDictionary<System.TypInfo.PTypeInfo,System.string>.TValueEnumerator.MoveNext:Boolean;
begin
{*
 00458960    push        ebx
 00458961    push        esi
 00458962    mov         esi,eax
>00458964    jmp         0045897F
 00458966    inc         dword ptr [esi+8]
 00458969    mov         eax,dword ptr [esi+8]
 0045896C    lea         eax,[eax+eax*2]
 0045896F    mov         edx,dword ptr [esi+4]
 00458972    mov         edx,dword ptr [edx+4]
 00458975    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>00458979    je          0045897F
 0045897B    mov         bl,1
>0045897D    jmp         00458992
 0045897F    mov         eax,dword ptr [esi+4]
 00458982    mov         eax,dword ptr [eax+4]
 00458985    call        0040ABA8
 0045898A    dec         eax
 0045898B    cmp         eax,dword ptr [esi+8]
>0045898E    jg          00458966
 00458990    xor         ebx,ebx
 00458992    mov         eax,ebx
 00458994    pop         esi
 00458995    pop         ebx
 00458996    ret
*}
end;

//00458998
{*procedure sub_00458998(?:TDictionary<System.TypInfo.PTypeInfo,System.string>.TPairEnumerator; ?:?);
begin
 00458998    push        ebx
 00458999    push        esi
 0045899A    mov         esi,edx
 0045899C    mov         ebx,eax
 0045899E    mov         eax,dword ptr [ebx+8]
 004589A1    lea         eax,[eax+eax*2]
 004589A4    mov         edx,dword ptr [ebx+4]
 004589A7    mov         edx,dword ptr [edx+4]
 004589AA    mov         eax,dword ptr [edx+eax*4+4]
 004589AE    mov         dword ptr [esi],eax
 004589B0    lea         eax,[esi+4]
 004589B3    mov         edx,dword ptr [ebx+8]
 004589B6    lea         edx,[edx+edx*2]
 004589B9    mov         ecx,dword ptr [ebx+4]
 004589BC    mov         ecx,dword ptr [ecx+4]
 004589BF    mov         edx,dword ptr [ecx+edx*4+8]
 004589C3    call        @UStrAsg
 004589C8    pop         esi
 004589C9    pop         ebx
 004589CA    ret
end;*}

//004589CC
{*procedure sub_004589CC(?:?);
begin
 004589CC    push        ebx
 004589CD    push        esi
 004589CE    mov         esi,edx
 004589D0    mov         ebx,eax
 004589D2    mov         edx,esi
 004589D4    mov         eax,ebx
 004589D6    call        00458998
 004589DB    pop         esi
 004589DC    pop         ebx
 004589DD    ret
end;*}

//004589E0
procedure sub_004589E0;
begin
{*
 004589E0    call        TDictionary<System.TypInfo.PTypeInfo,System.string>.TPairEnumerator.MoveNext
 004589E5    ret
*}
end;

//004589E8
constructor sub_004589E8(ADictionary:TDictionary<System.TypInfo.PTypeInfo,System.string>);
begin
{*
 004589E8    push        ebx
 004589E9    push        esi
 004589EA    push        edi
 004589EB    test        dl,dl
>004589ED    je          004589F7
 004589EF    add         esp,0FFFFFFF0
 004589F2    call        @ClassCreate
 004589F7    mov         esi,ecx
 004589F9    mov         ebx,edx
 004589FB    mov         edi,eax
 004589FD    xor         edx,edx
 004589FF    mov         eax,edi
 00458A01    call        TObject.Create
 00458A06    mov         dword ptr [edi+8],0FFFFFFFF
 00458A0D    mov         dword ptr [edi+4],esi;TDictionary<System.TypInfo.PTypeInfo,System.string>.TPairEnumerato...
 00458A10    mov         eax,edi
 00458A12    test        bl,bl
>00458A14    je          00458A25
 00458A16    call        @AfterConstruction
 00458A1B    pop         dword ptr fs:[0]
 00458A22    add         esp,0C
 00458A25    mov         eax,edi
 00458A27    pop         edi
 00458A28    pop         esi
 00458A29    pop         ebx
 00458A2A    ret
*}
end;

//00458A2C
function TDictionary<System.TypInfo.PTypeInfo,System.string>.TPairEnumerator.MoveNext:Boolean;
begin
{*
 00458A2C    push        ebx
 00458A2D    push        esi
 00458A2E    mov         esi,eax
>00458A30    jmp         00458A4B
 00458A32    inc         dword ptr [esi+8]
 00458A35    mov         eax,dword ptr [esi+8]
 00458A38    lea         eax,[eax+eax*2]
 00458A3B    mov         edx,dword ptr [esi+4]
 00458A3E    mov         edx,dword ptr [edx+4]
 00458A41    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>00458A45    je          00458A4B
 00458A47    mov         bl,1
>00458A49    jmp         00458A5E
 00458A4B    mov         eax,dword ptr [esi+4]
 00458A4E    mov         eax,dword ptr [eax+4]
 00458A51    call        0040ABA8
 00458A56    dec         eax
 00458A57    cmp         eax,dword ptr [esi+8]
>00458A5A    jg          00458A32
 00458A5C    xor         ebx,ebx
 00458A5E    mov         eax,ebx
 00458A60    pop         esi
 00458A61    pop         ebx
 00458A62    ret
*}
end;

//00458A64
{*procedure sub_00458A64(?:TDictionary<System; ?:?; ?:?);
begin
 00458A64    push        ebp
 00458A65    mov         ebp,esp
 00458A67    add         esp,0FFFFFFF0
 00458A6A    push        ebx
 00458A6B    push        esi
 00458A6C    mov         dword ptr [ebp-0C],ecx
 00458A6F    mov         ebx,edx
 00458A71    mov         esi,eax
 00458A73    lea         eax,[ebp-8]
 00458A76    mov         edx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 00458A7C    call        @AddRefRecord
 00458A81    xor         eax,eax
 00458A83    push        ebp
 00458A84    push        458B30
 00458A89    push        dword ptr fs:[eax]
 00458A8C    mov         dword ptr fs:[eax],esp
 00458A8F    push        ebx
 00458A90    mov         eax,dword ptr [ebp-0C]
 00458A93    mov         ecx,1
 00458A98    mov         edx,dword ptr ds:[4446E8];TArray<System.Rtti.TPair<System.string,System.TypInfo.PTypeInf...
 00458A9E    call        @DynArraySetLength
 00458AA3    add         esp,4
 00458AA6    xor         ebx,ebx
 00458AA8    mov         eax,esi
 00458AAA    call        TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator
 00458AAF    mov         dword ptr [ebp-10],eax
 00458AB2    xor         eax,eax
 00458AB4    push        ebp
 00458AB5    push        458B0D
 00458ABA    push        dword ptr fs:[eax]
 00458ABD    mov         dword ptr fs:[eax],esp
>00458AC0    jmp         00458AE3
 00458AC2    lea         edx,[ebp-8]
 00458AC5    mov         eax,dword ptr [ebp-10]
 00458AC8    mov         ecx,dword ptr [eax]
 00458ACA    call        dword ptr [ecx]
 00458ACC    mov         eax,dword ptr [ebp-0C]
 00458ACF    mov         eax,dword ptr [eax]
 00458AD1    lea         eax,[eax+ebx*8]
 00458AD4    lea         edx,[ebp-8]
 00458AD7    mov         ecx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 00458ADD    call        @CopyRecord
 00458AE2    inc         ebx
 00458AE3    mov         eax,dword ptr [ebp-10]
 00458AE6    call        TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.MoveNext
 00458AEB    test        al,al
>00458AED    jne         00458AC2
 00458AEF    xor         eax,eax
 00458AF1    pop         edx
 00458AF2    pop         ecx
 00458AF3    pop         ecx
 00458AF4    mov         dword ptr fs:[eax],edx
 00458AF7    push        458B14
 00458AFC    cmp         dword ptr [ebp-10],0
>00458B00    je          00458B0C
 00458B02    mov         dl,1
 00458B04    mov         eax,dword ptr [ebp-10]
 00458B07    mov         ecx,dword ptr [eax]
 00458B09    call        dword ptr [ecx-4]
 00458B0C    ret
>00458B0D    jmp         @HandleFinally
>00458B12    jmp         00458AFC
 00458B14    xor         eax,eax
 00458B16    pop         edx
 00458B17    pop         ecx
 00458B18    pop         ecx
 00458B19    mov         dword ptr fs:[eax],edx
 00458B1C    push        458B37
 00458B21    lea         eax,[ebp-8]
 00458B24    mov         edx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 00458B2A    call        @FinalizeRecord
 00458B2F    ret
>00458B30    jmp         @HandleFinally
>00458B35    jmp         00458B21
 00458B37    pop         esi
 00458B38    pop         ebx
 00458B39    mov         esp,ebp
 00458B3B    pop         ebp
 00458B3C    ret
end;*}

//00458B40
destructor TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy();
begin
{*
 00458B40    push        ebx
 00458B41    push        esi
 00458B42    call        @BeforeDestruction
 00458B47    mov         ebx,edx
 00458B49    mov         esi,eax
 00458B4B    mov         dl,0FC
 00458B4D    and         dl,bl
 00458B4F    mov         eax,esi
 00458B51    call        TObject.Destroy
 00458B56    test        bl,bl
>00458B58    jle         00458B61
 00458B5A    mov         eax,esi
 00458B5C    call        @ClassDestroy
 00458B61    pop         esi
 00458B62    pop         ebx
 00458B63    ret
*}
end;

//00458B64
function TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator:TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>;
begin
{*
 00458B64    mov         edx,dword ptr [eax]
 00458B66    call        dword ptr [edx]
 00458B68    ret
*}
end;

//00458B6C
{*procedure TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray(?:?);
begin
 00458B6C    push        ebp
 00458B6D    mov         ebp,esp
 00458B6F    add         esp,0FFFFFFEC
 00458B72    push        ebx
 00458B73    mov         dword ptr [ebp-0C],edx
 00458B76    mov         ebx,eax
 00458B78    lea         eax,[ebp-8]
 00458B7B    mov         edx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 00458B81    call        @AddRefRecord
 00458B86    xor         eax,eax
 00458B88    push        ebp
 00458B89    push        458C55
 00458B8E    push        dword ptr fs:[eax]
 00458B91    mov         dword ptr fs:[eax],esp
 00458B94    mov         dl,1
 00458B96    mov         eax,[00463DB0];TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>
 00458B9B    call        0045CA60
 00458BA0    mov         dword ptr [ebp-10],eax
 00458BA3    xor         eax,eax
 00458BA5    push        ebp
 00458BA6    push        458C32
 00458BAB    push        dword ptr fs:[eax]
 00458BAE    mov         dword ptr fs:[eax],esp
 00458BB1    mov         eax,ebx
 00458BB3    call        TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator
 00458BB8    mov         dword ptr [ebp-14],eax
 00458BBB    xor         eax,eax
 00458BBD    push        ebp
 00458BBE    push        458C0A
 00458BC3    push        dword ptr fs:[eax]
 00458BC6    mov         dword ptr fs:[eax],esp
>00458BC9    jmp         00458BE0
 00458BCB    lea         edx,[ebp-8]
 00458BCE    mov         eax,dword ptr [ebp-14]
 00458BD1    mov         ecx,dword ptr [eax]
 00458BD3    call        dword ptr [ecx]
 00458BD5    lea         edx,[ebp-8]
 00458BD8    mov         eax,dword ptr [ebp-10]
 00458BDB    call        TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Add
 00458BE0    mov         eax,dword ptr [ebp-14]
 00458BE3    call        TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.MoveNext
 00458BE8    test        al,al
>00458BEA    jne         00458BCB
 00458BEC    xor         eax,eax
 00458BEE    pop         edx
 00458BEF    pop         ecx
 00458BF0    pop         ecx
 00458BF1    mov         dword ptr fs:[eax],edx
 00458BF4    push        458C11
 00458BF9    cmp         dword ptr [ebp-14],0
>00458BFD    je          00458C09
 00458BFF    mov         dl,1
 00458C01    mov         eax,dword ptr [ebp-14]
 00458C04    mov         ecx,dword ptr [eax]
 00458C06    call        dword ptr [ecx-4]
 00458C09    ret
>00458C0A    jmp         @HandleFinally
>00458C0F    jmp         00458BF9
 00458C11    mov         edx,dword ptr [ebp-0C]
 00458C14    mov         eax,dword ptr [ebp-10]
 00458C17    call        TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray
 00458C1C    xor         eax,eax
 00458C1E    pop         edx
 00458C1F    pop         ecx
 00458C20    pop         ecx
 00458C21    mov         dword ptr fs:[eax],edx
 00458C24    push        458C39
 00458C29    mov         eax,dword ptr [ebp-10]
 00458C2C    call        TObject.Free
 00458C31    ret
>00458C32    jmp         @HandleFinally
>00458C37    jmp         00458C29
 00458C39    xor         eax,eax
 00458C3B    pop         edx
 00458C3C    pop         ecx
 00458C3D    pop         ecx
 00458C3E    mov         dword ptr fs:[eax],edx
 00458C41    push        458C5C
 00458C46    lea         eax,[ebp-8]
 00458C49    mov         edx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 00458C4F    call        @FinalizeRecord
 00458C54    ret
>00458C55    jmp         @HandleFinally
>00458C5A    jmp         00458C46
 00458C5C    pop         ebx
 00458C5D    mov         esp,ebp
 00458C5F    pop         ebp
 00458C60    ret
end;*}

//00458C64
function TEnumerator<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.MoveNext:Boolean;
begin
{*
 00458C64    mov         edx,dword ptr [eax]
 00458C66    call        dword ptr [edx+4]
 00458C69    ret
*}
end;

//00458C6C
procedure sub_00458C6C(?:TDictionary<System.string,System.TypInfo.PTypeInfo>; ?:Integer);
begin
{*
 00458C6C    cmp         edx,dword ptr [eax+8]
>00458C6F    jge         00458C88
 00458C71    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00458C77    mov         dl,1
 00458C79    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00458C7E    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00458C83    call        @RaiseExcept
 00458C88    test        edx,edx
>00458C8A    jne         00458C94
 00458C8C    xor         edx,edx
 00458C8E    call        00458CAC
 00458C93    ret
 00458C94    mov         ecx,4
 00458C99    cmp         edx,ecx
>00458C9B    jle         00458CA3
 00458C9D    add         ecx,ecx
 00458C9F    cmp         edx,ecx
>00458CA1    jg          00458C9D
 00458CA3    mov         edx,ecx
 00458CA5    call        00458CAC
 00458CAA    ret
*}
end;

//00458CAC
{*procedure sub_00458CAC(?:?; ?:?);
begin
 00458CAC    push        ebp
 00458CAD    mov         ebp,esp
 00458CAF    add         esp,0FFFFFFF0
 00458CB2    push        ebx
 00458CB3    push        esi
 00458CB4    push        edi
 00458CB5    xor         ecx,ecx
 00458CB7    mov         dword ptr [ebp-4],ecx
 00458CBA    mov         dword ptr [ebp-8],ecx
 00458CBD    mov         edi,edx
 00458CBF    mov         dword ptr [ebp-0C],eax
 00458CC2    xor         eax,eax
 00458CC4    push        ebp
 00458CC5    push        458DCD
 00458CCA    push        dword ptr fs:[eax]
 00458CCD    mov         dword ptr fs:[eax],esp
 00458CD0    mov         eax,dword ptr [ebp-0C]
 00458CD3    mov         eax,dword ptr [eax+4]
 00458CD6    mov         dword ptr [ebp-10],eax
 00458CD9    mov         eax,dword ptr [ebp-10]
 00458CDC    test        eax,eax
>00458CDE    je          00458CE5
 00458CE0    sub         eax,4
 00458CE3    mov         eax,dword ptr [eax]
 00458CE5    cmp         eax,edi
>00458CE7    je          00458DAC
 00458CED    test        edi,edi
>00458CEF    jge         00458CF6
 00458CF1    call        00423F00
 00458CF6    lea         eax,[ebp-4]
 00458CF9    mov         edx,dword ptr [ebp-0C]
 00458CFC    mov         edx,dword ptr [edx+4]
 00458CFF    mov         ecx,dword ptr ds:[444B24];TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray
 00458D05    call        @DynArrayAsg
 00458D0A    push        edi
 00458D0B    lea         eax,[ebp-8]
 00458D0E    mov         ecx,1
 00458D13    mov         edx,dword ptr ds:[444B24];TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray
 00458D19    call        @DynArraySetLength
 00458D1E    add         esp,4
 00458D21    mov         eax,dword ptr [ebp-8]
 00458D24    test        eax,eax
>00458D26    je          00458D2D
 00458D28    sub         eax,4
 00458D2B    mov         eax,dword ptr [eax]
 00458D2D    mov         esi,eax
 00458D2F    dec         esi
 00458D30    test        esi,esi
>00458D32    jl          00458D48
 00458D34    inc         esi
 00458D35    xor         ebx,ebx
 00458D37    lea         eax,[ebx+ebx*2]
 00458D3A    mov         edx,dword ptr [ebp-8]
 00458D3D    mov         dword ptr [edx+eax*4],0FFFFFFFF
 00458D44    inc         ebx
 00458D45    dec         esi
>00458D46    jne         00458D37
 00458D48    mov         eax,dword ptr [ebp-0C]
 00458D4B    add         eax,4
 00458D4E    mov         edx,dword ptr [ebp-8]
 00458D51    mov         ecx,dword ptr ds:[444B24];TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray
 00458D57    call        @DynArrayAsg
 00458D5C    mov         eax,edi
 00458D5E    shr         eax,1
 00458D60    shr         edi,2
 00458D63    add         eax,edi
 00458D65    mov         edx,dword ptr [ebp-0C]
 00458D68    mov         dword ptr [edx+10],eax
 00458D6B    mov         eax,dword ptr [ebp-4]
 00458D6E    test        eax,eax
>00458D70    je          00458D77
 00458D72    sub         eax,4
 00458D75    mov         eax,dword ptr [eax]
 00458D77    mov         esi,eax
 00458D79    dec         esi
 00458D7A    test        esi,esi
>00458D7C    jl          00458DAC
 00458D7E    inc         esi
 00458D7F    xor         ebx,ebx
 00458D81    lea         eax,[ebx+ebx*2]
 00458D84    mov         edx,dword ptr [ebp-4]
 00458D87    mov         edx,dword ptr [edx+eax*4]
 00458D8A    cmp         edx,0FFFFFFFF
>00458D8D    je          00458DA8
 00458D8F    mov         ecx,dword ptr [ebp-4]
 00458D92    mov         ecx,dword ptr [ecx+eax*4+8]
 00458D96    push        ecx
 00458D97    mov         ecx,dword ptr [ebp-4]
 00458D9A    mov         ecx,dword ptr [ecx+eax*4+4]
 00458D9E    push        ecx
 00458D9F    mov         eax,dword ptr [ebp-0C]
 00458DA2    pop         ecx
 00458DA3    call        00458ED0
 00458DA8    inc         ebx
 00458DA9    dec         esi
>00458DAA    jne         00458D81
 00458DAC    xor         eax,eax
 00458DAE    pop         edx
 00458DAF    pop         ecx
 00458DB0    pop         ecx
 00458DB1    mov         dword ptr fs:[eax],edx
 00458DB4    push        458DD4
 00458DB9    lea         eax,[ebp-8]
 00458DBC    mov         edx,dword ptr ds:[444B24];TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray
 00458DC2    mov         ecx,2
 00458DC7    call        @FinalizeArray
 00458DCC    ret
>00458DCD    jmp         @HandleFinally
>00458DD2    jmp         00458DB9
 00458DD4    pop         edi
 00458DD5    pop         esi
 00458DD6    pop         ebx
 00458DD7    mov         esp,ebp
 00458DD9    pop         ebp
 00458DDA    ret
end;*}

//00458DDC
procedure sub_00458DDC(?:TDictionary<System);
begin
{*
 00458DDC    push        ecx
 00458DDD    mov         edx,dword ptr [eax+4]
 00458DE0    mov         dword ptr [esp],edx
 00458DE3    mov         edx,dword ptr [esp]
 00458DE6    test        edx,edx
>00458DE8    je          00458DEF
 00458DEA    sub         edx,4
 00458DED    mov         edx,dword ptr [edx]
 00458DEF    add         edx,edx
 00458DF1    test        edx,edx
>00458DF3    jne         00458DFA
 00458DF5    mov         edx,4
 00458DFA    call        00458CAC
 00458DFF    pop         edx
 00458E00    ret
*}
end;

//00458E04
{*function sub_00458E04(?:TDictionary<System; ?:string; ?:?):?;
begin
 00458E04    push        ebx
 00458E05    push        esi
 00458E06    push        edi
 00458E07    add         esp,0FFFFFFE8
 00458E0A    mov         dword ptr [esp+4],ecx
 00458E0E    mov         dword ptr [esp],edx
 00458E11    mov         esi,eax
 00458E13    mov         eax,dword ptr [esi+4]
 00458E16    mov         dword ptr [esp+0C],eax
 00458E1A    mov         eax,dword ptr [esp+0C]
 00458E1E    test        eax,eax
>00458E20    je          00458E27
 00458E22    sub         eax,4
 00458E25    mov         eax,dword ptr [eax]
 00458E27    test        eax,eax
>00458E29    jne         00458E32
 00458E2B    mov         ebx,80000000
>00458E30    jmp         00458EA5
 00458E32    mov         eax,dword ptr [esi+4]
 00458E35    mov         dword ptr [esp+10],eax
 00458E39    mov         eax,dword ptr [esp+10]
 00458E3D    test        eax,eax
>00458E3F    je          00458E46
 00458E41    sub         eax,4
 00458E44    mov         eax,dword ptr [eax]
 00458E46    dec         eax
 00458E47    and         eax,dword ptr [esp+4]
 00458E4B    mov         ebx,eax
 00458E4D    lea         eax,[ebx+ebx*2]
 00458E50    mov         edx,dword ptr [esi+4]
 00458E53    mov         eax,dword ptr [edx+eax*4]
 00458E56    mov         dword ptr [esp+8],eax
 00458E5A    cmp         dword ptr [esp+8],0FFFFFFFF
>00458E5F    jne         00458E65
 00458E61    not         ebx
>00458E63    jmp         00458EA5
 00458E65    mov         eax,dword ptr [esp+8]
 00458E69    cmp         eax,dword ptr [esp+4]
>00458E6D    jne         00458E88
 00458E6F    lea         eax,[ebx+ebx*2]
 00458E72    mov         edx,dword ptr [esi+4]
 00458E75    mov         edx,dword ptr [edx+eax*4+4]
 00458E79    mov         ecx,dword ptr [esp]
 00458E7C    mov         eax,dword ptr [esi+0C]
 00458E7F    mov         edi,dword ptr [eax]
 00458E81    call        dword ptr [edi+0C]
 00458E84    test        al,al
>00458E86    jne         00458EA5
 00458E88    inc         ebx
 00458E89    mov         eax,dword ptr [esi+4]
 00458E8C    mov         dword ptr [esp+14],eax
 00458E90    mov         edi,dword ptr [esp+14]
 00458E94    test        edi,edi
>00458E96    je          00458E9D
 00458E98    sub         edi,4
 00458E9B    mov         edi,dword ptr [edi]
 00458E9D    cmp         edi,ebx
>00458E9F    jg          00458E4D
 00458EA1    xor         ebx,ebx
>00458EA3    jmp         00458E4D
 00458EA5    mov         eax,ebx
 00458EA7    add         esp,18
 00458EAA    pop         edi
 00458EAB    pop         esi
 00458EAC    pop         ebx
 00458EAD    ret
end;*}

//00458EB0
{*function sub_00458EB0(?:TDictionary<System; ?:string):?;
begin
 00458EB0    push        ebx
 00458EB1    push        esi
 00458EB2    mov         esi,edx
 00458EB4    mov         ebx,eax
 00458EB6    mov         edx,esi
 00458EB8    mov         eax,dword ptr [ebx+0C]
 00458EBB    mov         ecx,dword ptr [eax]
 00458EBD    call        dword ptr [ecx+10]
 00458EC0    and         eax,7FFFFFFF
 00458EC5    inc         eax
 00458EC6    and         eax,7FFFFFFF
 00458ECB    pop         esi
 00458ECC    pop         ebx
 00458ECD    ret
end;*}

//00458ED0
{*procedure sub_00458ED0(?:?; ?:?; ?:?; ?:?);
begin
 00458ED0    push        ebp
 00458ED1    mov         ebp,esp
 00458ED3    add         esp,0FFFFFFF8
 00458ED6    push        ebx
 00458ED7    push        esi
 00458ED8    push        edi
 00458ED9    mov         dword ptr [ebp-8],ecx
 00458EDC    mov         dword ptr [ebp-4],edx
 00458EDF    mov         ebx,eax
 00458EE1    mov         ecx,dword ptr [ebp-4]
 00458EE4    mov         edx,dword ptr [ebp-8]
 00458EE7    mov         eax,ebx
 00458EE9    call        00458E04
 00458EEE    mov         esi,eax
 00458EF0    not         esi
 00458EF2    lea         edi,[esi+esi*2]
 00458EF5    mov         eax,dword ptr [ebx+4]
 00458EF8    mov         edx,dword ptr [ebp-4]
 00458EFB    mov         dword ptr [eax+edi*4],edx
 00458EFE    mov         eax,dword ptr [ebx+4]
 00458F01    lea         eax,[eax+edi*4+4]
 00458F05    mov         edx,dword ptr [ebp-8]
 00458F08    call        @UStrAsg
 00458F0D    mov         eax,dword ptr [ebx+4]
 00458F10    mov         edx,dword ptr [ebp+8]
 00458F13    mov         dword ptr [eax+edi*4+8],edx
 00458F17    pop         edi
 00458F18    pop         esi
 00458F19    pop         ebx
 00458F1A    pop         ecx
 00458F1B    pop         ecx
 00458F1C    pop         ebp
 00458F1D    ret         4
end;*}

//00458F20
{*procedure sub_00458F20(?:TDictionary<System; ?:?; ?:?; ?:?; ?:?);
begin
 00458F20    push        ebp
 00458F21    mov         ebp,esp
 00458F23    push        ebx
 00458F24    push        esi
 00458F25    push        edi
 00458F26    mov         esi,ecx
 00458F28    mov         ebx,eax
 00458F2A    lea         edi,[esi+esi*2]
 00458F2D    mov         eax,dword ptr [ebx+4]
 00458F30    mov         dword ptr [eax+edi*4],edx
 00458F33    mov         eax,dword ptr [ebx+4]
 00458F36    lea         eax,[eax+edi*4+4]
 00458F3A    mov         edx,dword ptr [ebp+0C]
 00458F3D    call        @UStrAsg
 00458F42    mov         eax,dword ptr [ebx+4]
 00458F45    mov         edx,dword ptr [ebp+8]
 00458F48    mov         dword ptr [eax+edi*4+8],edx
 00458F4C    inc         dword ptr [ebx+8]
 00458F4F    xor         ecx,ecx
 00458F51    mov         edx,dword ptr [ebp+0C]
 00458F54    mov         eax,ebx
 00458F56    mov         esi,dword ptr [eax]
 00458F58    call        dword ptr [esi+8]
 00458F5B    xor         ecx,ecx
 00458F5D    mov         edx,dword ptr [ebp+8]
 00458F60    mov         eax,ebx
 00458F62    mov         ebx,dword ptr [eax]
 00458F64    call        dword ptr [ebx+0C]
 00458F67    pop         edi
 00458F68    pop         esi
 00458F69    pop         ebx
 00458F6A    pop         ebp
 00458F6B    ret         8
end;*}

//00458F70
procedure sub_00458F70;
begin
{*
 00458F70    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.GetEnumerator
 00458F75    ret
*}
end;

//00458F78
{*procedure sub_00458F78(?:?);
begin
 00458F78    push        ebx
 00458F79    cmp         word ptr [eax+1A],0;TDictionary<System.string,System.TypInfo.PTypeInfo>.FOnKeyNotify:TCo...
>00458F7E    je          00458F8D
 00458F80    push        ecx
 00458F81    mov         ebx,eax
 00458F83    mov         ecx,edx
 00458F85    mov         edx,eax
 00458F87    mov         eax,dword ptr [ebx+1C];TDictionary<System.string,System.TypInfo.PTypeInfo>.FOnKeyNotify:...
 00458F8A    call        dword ptr [ebx+18];TDictionary<System.string,System.TypInfo.PTypeInfo>.FOnKeyNotify
 00458F8D    pop         ebx
 00458F8E    ret
end;*}

//00458F90
{*procedure sub_00458F90(?:?);
begin
 00458F90    push        ebx
 00458F91    cmp         word ptr [eax+22],0;TDictionary<System.string,System.TypInfo.PTypeInfo>.FOnValueNotify:T...
>00458F96    je          00458FA5
 00458F98    push        ecx
 00458F99    mov         ebx,eax
 00458F9B    mov         ecx,edx
 00458F9D    mov         edx,eax
 00458F9F    mov         eax,dword ptr [ebx+24];TDictionary<System.string,System.TypInfo.PTypeInfo>.FOnValueNotif...
 00458FA2    call        dword ptr [ebx+20];TDictionary<System.string,System.TypInfo.PTypeInfo>.FOnValueNotify
 00458FA5    pop         ebx
 00458FA6    ret
end;*}

//00458FA8
constructor sub_00458FA8(ACapacity:Integer);
begin
{*
 00458FA8    push        ebx
 00458FA9    push        esi
 00458FAA    test        dl,dl
>00458FAC    je          00458FB6
 00458FAE    add         esp,0FFFFFFF0
 00458FB1    call        @ClassCreate
 00458FB6    mov         ebx,edx
 00458FB8    mov         esi,eax
 00458FBA    push        0
 00458FBC    xor         edx,edx
 00458FBE    mov         eax,esi
 00458FC0    call        00458FE0
 00458FC5    mov         eax,esi
 00458FC7    test        bl,bl
>00458FC9    je          00458FDA
 00458FCB    call        @AfterConstruction
 00458FD0    pop         dword ptr fs:[0]
 00458FD7    add         esp,0C
 00458FDA    mov         eax,esi
 00458FDC    pop         esi
 00458FDD    pop         ebx
 00458FDE    ret
*}
end;

//00458FE0
constructor sub_00458FE0(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);
begin
{*
 00458FE0    push        ebp
 00458FE1    mov         ebp,esp
 00458FE3    push        0
 00458FE5    push        ebx
 00458FE6    push        esi
 00458FE7    push        edi
 00458FE8    test        dl,dl
>00458FEA    je          00458FF4
 00458FEC    add         esp,0FFFFFFF0
 00458FEF    call        @ClassCreate
 00458FF4    mov         esi,ecx
 00458FF6    mov         ebx,edx
 00458FF8    mov         edi,eax
 00458FFA    xor         eax,eax
 00458FFC    push        ebp
 00458FFD    push        45906F
 00459002    push        dword ptr fs:[eax]
 00459005    mov         dword ptr fs:[eax],esp
 00459008    xor         edx,edx
 0045900A    mov         eax,edi
 0045900C    call        TObject.Create
 00459011    test        esi,esi
>00459013    jge         0045902C
 00459015    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 0045901B    mov         dl,1
 0045901D    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00459022    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00459027    call        @RaiseExcept
 0045902C    lea         eax,[edi+0C];TDictionary<System.string,System.TypInfo.PTypeInfo>.FComparer:IEqualityComp...
 0045902F    mov         edx,dword ptr [ebp+8]
 00459032    call        @IntfCopy
 00459037    cmp         dword ptr [edi+0C],0;TDictionary<System.string,System.TypInfo.PTypeInfo>.FComparer:IEqua...
>0045903B    jne         00459050
 0045903D    lea         eax,[ebp-4]
 00459040    call        004577BC
 00459045    mov         edx,dword ptr [ebp-4]
 00459048    lea         eax,[edi+0C];TDictionary<System.string,System.TypInfo.PTypeInfo>.FComparer:IEqualityComp...
 0045904B    call        @IntfCopy
 00459050    mov         edx,esi
 00459052    mov         eax,edi
 00459054    call        00458C6C
 00459059    xor         eax,eax
 0045905B    pop         edx
 0045905C    pop         ecx
 0045905D    pop         ecx
 0045905E    mov         dword ptr fs:[eax],edx
 00459061    push        459076
 00459066    lea         eax,[ebp-4]
 00459069    call        @IntfClear
 0045906E    ret
>0045906F    jmp         @HandleFinally
>00459074    jmp         00459066
 00459076    mov         eax,edi
 00459078    test        bl,bl
>0045907A    je          0045908B
 0045907C    call        @AfterConstruction
 00459081    pop         dword ptr fs:[0]
 00459088    add         esp,0C
 0045908B    mov         eax,edi
 0045908D    pop         edi
 0045908E    pop         esi
 0045908F    pop         ebx
 00459090    pop         ecx
 00459091    pop         ebp
 00459092    ret         4
*}
end;

//00459098
destructor TDictionary<System.string,System.TypInfo.PTypeInfo>.Destroy();
begin
{*
 00459098    push        ebx
 00459099    push        esi
 0045909A    call        @BeforeDestruction
 0045909F    mov         ebx,edx
 004590A1    mov         esi,eax
 004590A3    mov         eax,esi
 004590A5    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.Clear
 004590AA    mov         eax,dword ptr [esi+28];TDictionary<System.string,System.TypInfo.PTypeInfo>.FKeyCollectio...
 004590AD    call        TObject.Free
 004590B2    mov         eax,dword ptr [esi+2C]
 004590B5    call        TObject.Free
 004590BA    mov         dl,0FC
 004590BC    and         dl,bl
 004590BE    mov         eax,esi
 004590C0    call        TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy
 004590C5    test        bl,bl
>004590C7    jle         004590D0
 004590C9    mov         eax,esi
 004590CB    call        @ClassDestroy
 004590D0    pop         esi
 004590D1    pop         ebx
 004590D2    ret
*}
end;

//004590D4
procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.Add(Key:string; Value:PTypeInfo);
begin
{*
 004590D4    push        ebx
 004590D5    push        esi
 004590D6    push        edi
 004590D7    push        ecx
 004590D8    mov         dword ptr [esp],ecx
 004590DB    mov         esi,edx
 004590DD    mov         ebx,eax
 004590DF    mov         eax,dword ptr [ebx+8]
 004590E2    cmp         eax,dword ptr [ebx+10]
>004590E5    jl          004590EE
 004590E7    mov         eax,ebx
 004590E9    call        00458DDC
 004590EE    mov         edx,esi
 004590F0    mov         eax,ebx
 004590F2    call        00458EB0
 004590F7    mov         edi,eax
 004590F9    mov         ecx,edi
 004590FB    mov         edx,esi
 004590FD    mov         eax,ebx
 004590FF    call        00458E04
 00459104    test        eax,eax
>00459106    jl          0045911F
 00459108    mov         ecx,dword ptr ds:[7C423C];^SResString174:TResStringRec
 0045910E    mov         dl,1
 00459110    mov         eax,[004180BC];EListError
 00459115    call        Exception.CreateRes;EListError.Create
 0045911A    call        @RaiseExcept
 0045911F    push        esi
 00459120    mov         edx,dword ptr [esp+4]
 00459124    push        edx
 00459125    mov         ecx,eax
 00459127    not         ecx
 00459129    mov         edx,edi
 0045912B    mov         eax,ebx
 0045912D    call        00458F20
 00459132    pop         edx
 00459133    pop         edi
 00459134    pop         esi
 00459135    pop         ebx
 00459136    ret
*}
end;

//00459138
procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.Clear;
begin
{*
 00459138    push        ebp
 00459139    mov         ebp,esp
 0045913B    add         esp,0FFFFFFF8
 0045913E    push        ebx
 0045913F    push        esi
 00459140    push        edi
 00459141    xor         edx,edx
 00459143    mov         dword ptr [ebp-4],edx
 00459146    mov         esi,eax
 00459148    xor         eax,eax
 0045914A    push        ebp
 0045914B    push        4591F3
 00459150    push        dword ptr fs:[eax]
 00459153    mov         dword ptr fs:[eax],esp
 00459156    lea         eax,[ebp-4]
 00459159    mov         edx,dword ptr [esi+4]
 0045915C    mov         ecx,dword ptr ds:[444B24];TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray
 00459162    call        @DynArrayAsg
 00459167    xor         eax,eax
 00459169    mov         dword ptr [esi+8],eax
 0045916C    lea         eax,[esi+4]
 0045916F    mov         edx,dword ptr ds:[444B24];TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray
 00459175    call        @DynArrayClear
 0045917A    xor         edx,edx
 0045917C    mov         eax,esi
 0045917E    call        00458C6C
 00459183    xor         eax,eax
 00459185    mov         dword ptr [esi+10],eax
 00459188    mov         eax,dword ptr [ebp-4]
 0045918B    test        eax,eax
>0045918D    je          00459194
 0045918F    sub         eax,4
 00459192    mov         eax,dword ptr [eax]
 00459194    dec         eax
 00459195    test        eax,eax
>00459197    jl          004591D7
 00459199    inc         eax
 0045919A    mov         dword ptr [ebp-8],eax
 0045919D    xor         ebx,ebx
 0045919F    lea         eax,[ebx+ebx*2]
 004591A2    mov         edx,dword ptr [ebp-4]
 004591A5    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004591A9    je          004591D1
 004591AB    lea         eax,[ebx+ebx*2]
 004591AE    mov         edx,dword ptr [ebp-4]
 004591B1    mov         edx,dword ptr [edx+eax*4+4]
 004591B5    mov         cl,1
 004591B7    mov         eax,esi
 004591B9    mov         edi,dword ptr [eax]
 004591BB    call        dword ptr [edi+8]
 004591BE    lea         eax,[ebx+ebx*2]
 004591C1    mov         edx,dword ptr [ebp-4]
 004591C4    mov         edx,dword ptr [edx+eax*4+8]
 004591C8    mov         cl,1
 004591CA    mov         eax,esi
 004591CC    mov         edi,dword ptr [eax]
 004591CE    call        dword ptr [edi+0C]
 004591D1    inc         ebx
 004591D2    dec         dword ptr [ebp-8]
>004591D5    jne         0045919F
 004591D7    xor         eax,eax
 004591D9    pop         edx
 004591DA    pop         ecx
 004591DB    pop         ecx
 004591DC    mov         dword ptr fs:[eax],edx
 004591DF    push        4591FA
 004591E4    lea         eax,[ebp-4]
 004591E7    mov         edx,dword ptr ds:[444B24];TDictionary<System.string,System.TypInfo.PTypeInfo>.TItemArray
 004591ED    call        @DynArrayClear
 004591F2    ret
>004591F3    jmp         @HandleFinally
>004591F8    jmp         004591E4
 004591FA    pop         edi
 004591FB    pop         esi
 004591FC    pop         ebx
 004591FD    pop         ecx
 004591FE    pop         ecx
 004591FF    pop         ebp
 00459200    ret
*}
end;

//00459204
function TDictionary<System.string,System.TypInfo.PTypeInfo>.TryGetValue(Key:string; Value:PTypeInfo):Boolean;
begin
{*
 00459204    push        ebx
 00459205    push        esi
 00459206    push        edi
 00459207    mov         edi,ecx
 00459209    mov         esi,edx
 0045920B    mov         ebx,eax
 0045920D    mov         edx,esi
 0045920F    mov         eax,ebx
 00459211    call        00458EB0
 00459216    mov         ecx,eax
 00459218    mov         edx,esi
 0045921A    mov         eax,ebx
 0045921C    call        00458E04
 00459221    test        eax,eax
 00459223    setge       dl
 00459226    test        dl,dl
>00459228    je          00459238
 0045922A    lea         eax,[eax+eax*2]
 0045922D    mov         ecx,dword ptr [ebx+4]
 00459230    mov         eax,dword ptr [ecx+eax*4+8]
 00459234    mov         dword ptr [edi],eax
>00459236    jmp         0045923C
 00459238    xor         eax,eax
 0045923A    mov         dword ptr [edi],eax
 0045923C    mov         eax,edx
 0045923E    pop         edi
 0045923F    pop         esi
 00459240    pop         ebx
 00459241    ret
*}
end;

//00459244
function TDictionary<System.string,System.TypInfo.PTypeInfo>.ContainsKey(Key:string):Boolean;
begin
{*
 00459244    push        ebx
 00459245    push        esi
 00459246    mov         esi,edx
 00459248    mov         ebx,eax
 0045924A    mov         edx,esi
 0045924C    mov         eax,ebx
 0045924E    call        00458EB0
 00459253    mov         ecx,eax
 00459255    mov         edx,esi
 00459257    mov         eax,ebx
 00459259    call        00458E04
 0045925E    test        eax,eax
 00459260    setge       al
 00459263    pop         esi
 00459264    pop         ebx
 00459265    ret
*}
end;

//00459268
{*procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.ToArray(?:?);
begin
 00459268    push        ebx
 00459269    push        esi
 0045926A    mov         esi,edx
 0045926C    mov         ebx,eax
 0045926E    mov         ecx,esi
 00459270    mov         edx,dword ptr [ebx+8]
 00459273    mov         eax,ebx
 00459275    call        00458A64
 0045927A    pop         esi
 0045927B    pop         ebx
 0045927C    ret
end;*}

//004592C0
procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.GetEnumerator;
begin
{*
 004592C0    mov         ecx,eax
 004592C2    mov         dl,1
 004592C4    mov         eax,[004453CC];TDictionary<System.string,System.TypInfo.PTypeInfo>.TPairEnumerator
 004592C9    call        00459560
 004592CE    ret
*}
end;

//004592D8
procedure sub_004592D8;
begin
{*
 004592D8    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyCollection.GetEnumerator
 004592DD    ret
*}
end;

//004592E0
constructor sub_004592E0(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);
begin
{*
 004592E0    push        ebx
 004592E1    push        esi
 004592E2    push        edi
 004592E3    test        dl,dl
>004592E5    je          004592EF
 004592E7    add         esp,0FFFFFFF0
 004592EA    call        @ClassCreate
 004592EF    mov         esi,ecx
 004592F1    mov         ebx,edx
 004592F3    mov         edi,eax
 004592F5    xor         edx,edx
 004592F7    mov         eax,edi
 004592F9    call        TObject.Create
 004592FE    mov         dword ptr [edi+4],esi
 00459301    mov         eax,edi
 00459303    test        bl,bl
>00459305    je          00459316
 00459307    call        @AfterConstruction
 0045930C    pop         dword ptr fs:[0]
 00459313    add         esp,0C
 00459316    mov         eax,edi
 00459318    pop         edi
 00459319    pop         esi
 0045931A    pop         ebx
 0045931B    ret
*}
end;

//0045931C
procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyCollection.GetEnumerator;
begin
{*
 0045931C    mov         ecx,dword ptr [eax+4]
 0045931F    mov         dl,1
 00459321    mov         eax,[00444B9C];TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyEnumerator
 00459326    call        00459380
 0045932B    ret
*}
end;

//0045932C
{*procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyCollection.ToArray(?:?);
begin
 0045932C    push        ebx
 0045932D    push        esi
 0045932E    mov         esi,edx
 00459330    mov         ebx,eax
 00459332    mov         ecx,esi
 00459334    mov         eax,dword ptr [ebx+4]
 00459337    mov         edx,dword ptr [eax+8]
 0045933A    mov         eax,ebx
 0045933C    call        00590BC0
 00459341    pop         esi
 00459342    pop         ebx
 00459343    ret
end;*}

//00459344
{*procedure sub_00459344(?:TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyEnumerator; ?:?);
begin
 00459344    push        ebx
 00459345    push        esi
 00459346    mov         esi,edx
 00459348    mov         ebx,eax
 0045934A    mov         eax,esi
 0045934C    mov         edx,dword ptr [ebx+8]
 0045934F    lea         edx,[edx+edx*2]
 00459352    mov         ecx,dword ptr [ebx+4]
 00459355    mov         ecx,dword ptr [ecx+4]
 00459358    mov         edx,dword ptr [ecx+edx*4+4]
 0045935C    call        @UStrAsg
 00459361    pop         esi
 00459362    pop         ebx
 00459363    ret
end;*}

//00459364
{*procedure sub_00459364(?:?);
begin
 00459364    push        ebx
 00459365    push        esi
 00459366    mov         esi,edx
 00459368    mov         ebx,eax
 0045936A    mov         edx,esi
 0045936C    mov         eax,ebx
 0045936E    call        00459344
 00459373    pop         esi
 00459374    pop         ebx
 00459375    ret
end;*}

//00459378
procedure sub_00459378;
begin
{*
 00459378    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyEnumerator.MoveNext
 0045937D    ret
*}
end;

//00459380
constructor sub_00459380(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);
begin
{*
 00459380    push        ebx
 00459381    push        esi
 00459382    push        edi
 00459383    test        dl,dl
>00459385    je          0045938F
 00459387    add         esp,0FFFFFFF0
 0045938A    call        @ClassCreate
 0045938F    mov         esi,ecx
 00459391    mov         ebx,edx
 00459393    mov         edi,eax
 00459395    xor         edx,edx
 00459397    mov         eax,edi
 00459399    call        TObject.Create
 0045939E    mov         dword ptr [edi+8],0FFFFFFFF
 004593A5    mov         dword ptr [edi+4],esi;TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyEnumerator...
 004593A8    mov         eax,edi
 004593AA    test        bl,bl
>004593AC    je          004593BD
 004593AE    call        @AfterConstruction
 004593B3    pop         dword ptr fs:[0]
 004593BA    add         esp,0C
 004593BD    mov         eax,edi
 004593BF    pop         edi
 004593C0    pop         esi
 004593C1    pop         ebx
 004593C2    ret
*}
end;

//004593C4
function TDictionary<System.string,System.TypInfo.PTypeInfo>.TKeyEnumerator.MoveNext:Boolean;
begin
{*
 004593C4    push        ebx
 004593C5    push        esi
 004593C6    mov         esi,eax
>004593C8    jmp         004593E3
 004593CA    inc         dword ptr [esi+8]
 004593CD    mov         eax,dword ptr [esi+8]
 004593D0    lea         eax,[eax+eax*2]
 004593D3    mov         edx,dword ptr [esi+4]
 004593D6    mov         edx,dword ptr [edx+4]
 004593D9    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004593DD    je          004593E3
 004593DF    mov         bl,1
>004593E1    jmp         004593F6
 004593E3    mov         eax,dword ptr [esi+4]
 004593E6    mov         eax,dword ptr [eax+4]
 004593E9    call        0040ABA8
 004593EE    dec         eax
 004593EF    cmp         eax,dword ptr [esi+8]
>004593F2    jg          004593CA
 004593F4    xor         ebx,ebx
 004593F6    mov         eax,ebx
 004593F8    pop         esi
 004593F9    pop         ebx
 004593FA    ret
*}
end;

//00459404
procedure sub_00459404;
begin
{*
 00459404    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueCollection.GetEnumerator
 00459409    ret
*}
end;

//0045940C
constructor sub_0045940C(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);
begin
{*
 0045940C    push        ebx
 0045940D    push        esi
 0045940E    push        edi
 0045940F    test        dl,dl
>00459411    je          0045941B
 00459413    add         esp,0FFFFFFF0
 00459416    call        @ClassCreate
 0045941B    mov         esi,ecx
 0045941D    mov         ebx,edx
 0045941F    mov         edi,eax
 00459421    xor         edx,edx
 00459423    mov         eax,edi
 00459425    call        TObject.Create
 0045942A    mov         dword ptr [edi+4],esi
 0045942D    mov         eax,edi
 0045942F    test        bl,bl
>00459431    je          00459442
 00459433    call        @AfterConstruction
 00459438    pop         dword ptr fs:[0]
 0045943F    add         esp,0C
 00459442    mov         eax,edi
 00459444    pop         edi
 00459445    pop         esi
 00459446    pop         ebx
 00459447    ret
*}
end;

//00459448
procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueCollection.GetEnumerator;
begin
{*
 00459448    mov         ecx,dword ptr [eax+4]
 0045944B    mov         dl,1
 0045944D    mov         eax,[00444FB0];TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueEnumerator
 00459452    call        00459494
 00459457    ret
*}
end;

//00459458
{*procedure TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueCollection.ToArray(?:?);
begin
 00459458    push        ebx
 00459459    push        esi
 0045945A    mov         esi,edx
 0045945C    mov         ebx,eax
 0045945E    mov         ecx,esi
 00459460    mov         eax,dword ptr [ebx+4]
 00459463    mov         edx,dword ptr [eax+8]
 00459466    mov         eax,ebx
 00459468    call        004585E4
 0045946D    pop         esi
 0045946E    pop         ebx
 0045946F    ret
end;*}

//00459470
{*function sub_00459470(?:?):?;
begin
 00459470    mov         edx,dword ptr [eax+8]
 00459473    lea         edx,[edx+edx*2]
 00459476    mov         eax,dword ptr [eax+4]
 00459479    mov         eax,dword ptr [eax+4]
 0045947C    mov         eax,dword ptr [eax+edx*4+8]
 00459480    ret
end;*}

//00459484
procedure sub_00459484;
begin
{*
 00459484    call        00459470
 00459489    ret
*}
end;

//0045948C
procedure sub_0045948C;
begin
{*
 0045948C    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueEnumerator.MoveNext
 00459491    ret
*}
end;

//00459494
constructor sub_00459494(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);
begin
{*
 00459494    push        ebx
 00459495    push        esi
 00459496    push        edi
 00459497    test        dl,dl
>00459499    je          004594A3
 0045949B    add         esp,0FFFFFFF0
 0045949E    call        @ClassCreate
 004594A3    mov         esi,ecx
 004594A5    mov         ebx,edx
 004594A7    mov         edi,eax
 004594A9    xor         edx,edx
 004594AB    mov         eax,edi
 004594AD    call        TObject.Create
 004594B2    mov         dword ptr [edi+8],0FFFFFFFF
 004594B9    mov         dword ptr [edi+4],esi;TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueEnumerat...
 004594BC    mov         eax,edi
 004594BE    test        bl,bl
>004594C0    je          004594D1
 004594C2    call        @AfterConstruction
 004594C7    pop         dword ptr fs:[0]
 004594CE    add         esp,0C
 004594D1    mov         eax,edi
 004594D3    pop         edi
 004594D4    pop         esi
 004594D5    pop         ebx
 004594D6    ret
*}
end;

//004594D8
function TDictionary<System.string,System.TypInfo.PTypeInfo>.TValueEnumerator.MoveNext:Boolean;
begin
{*
 004594D8    push        ebx
 004594D9    push        esi
 004594DA    mov         esi,eax
>004594DC    jmp         004594F7
 004594DE    inc         dword ptr [esi+8]
 004594E1    mov         eax,dword ptr [esi+8]
 004594E4    lea         eax,[eax+eax*2]
 004594E7    mov         edx,dword ptr [esi+4]
 004594EA    mov         edx,dword ptr [edx+4]
 004594ED    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004594F1    je          004594F7
 004594F3    mov         bl,1
>004594F5    jmp         0045950A
 004594F7    mov         eax,dword ptr [esi+4]
 004594FA    mov         eax,dword ptr [eax+4]
 004594FD    call        0040ABA8
 00459502    dec         eax
 00459503    cmp         eax,dword ptr [esi+8]
>00459506    jg          004594DE
 00459508    xor         ebx,ebx
 0045950A    mov         eax,ebx
 0045950C    pop         esi
 0045950D    pop         ebx
 0045950E    ret
*}
end;

//00459510
{*procedure sub_00459510(?:TDictionary<System.string,System.TypInfo.PTypeInfo>.TPairEnumerator; ?:?);
begin
 00459510    push        ebx
 00459511    push        esi
 00459512    mov         esi,edx
 00459514    mov         ebx,eax
 00459516    mov         eax,esi
 00459518    mov         edx,dword ptr [ebx+8]
 0045951B    lea         edx,[edx+edx*2]
 0045951E    mov         ecx,dword ptr [ebx+4]
 00459521    mov         ecx,dword ptr [ecx+4]
 00459524    mov         edx,dword ptr [ecx+edx*4+4]
 00459528    call        @UStrAsg
 0045952D    mov         eax,dword ptr [ebx+8]
 00459530    lea         eax,[eax+eax*2]
 00459533    mov         edx,dword ptr [ebx+4]
 00459536    mov         edx,dword ptr [edx+4]
 00459539    mov         eax,dword ptr [edx+eax*4+8]
 0045953D    mov         dword ptr [esi+4],eax
 00459540    pop         esi
 00459541    pop         ebx
 00459542    ret
end;*}

//00459544
{*procedure sub_00459544(?:?);
begin
 00459544    push        ebx
 00459545    push        esi
 00459546    mov         esi,edx
 00459548    mov         ebx,eax
 0045954A    mov         edx,esi
 0045954C    mov         eax,ebx
 0045954E    call        00459510
 00459553    pop         esi
 00459554    pop         ebx
 00459555    ret
end;*}

//00459558
procedure sub_00459558;
begin
{*
 00459558    call        TDictionary<System.string,System.TypInfo.PTypeInfo>.TPairEnumerator.MoveNext
 0045955D    ret
*}
end;

//00459560
constructor sub_00459560(ADictionary:TDictionary<System.string,System.TypInfo.PTypeInfo>);
begin
{*
 00459560    push        ebx
 00459561    push        esi
 00459562    push        edi
 00459563    test        dl,dl
>00459565    je          0045956F
 00459567    add         esp,0FFFFFFF0
 0045956A    call        @ClassCreate
 0045956F    mov         esi,ecx
 00459571    mov         ebx,edx
 00459573    mov         edi,eax
 00459575    xor         edx,edx
 00459577    mov         eax,edi
 00459579    call        TObject.Create
 0045957E    mov         dword ptr [edi+8],0FFFFFFFF
 00459585    mov         dword ptr [edi+4],esi;TDictionary<System.string,System.TypInfo.PTypeInfo>.TPairEnumerato...
 00459588    mov         eax,edi
 0045958A    test        bl,bl
>0045958C    je          0045959D
 0045958E    call        @AfterConstruction
 00459593    pop         dword ptr fs:[0]
 0045959A    add         esp,0C
 0045959D    mov         eax,edi
 0045959F    pop         edi
 004595A0    pop         esi
 004595A1    pop         ebx
 004595A2    ret
*}
end;

//004595A4
function TDictionary<System.string,System.TypInfo.PTypeInfo>.TPairEnumerator.MoveNext:Boolean;
begin
{*
 004595A4    push        ebx
 004595A5    push        esi
 004595A6    mov         esi,eax
>004595A8    jmp         004595C3
 004595AA    inc         dword ptr [esi+8]
 004595AD    mov         eax,dword ptr [esi+8]
 004595B0    lea         eax,[eax+eax*2]
 004595B3    mov         edx,dword ptr [esi+4]
 004595B6    mov         edx,dword ptr [edx+4]
 004595B9    cmp         dword ptr [edx+eax*4],0FFFFFFFF
>004595BD    je          004595C3
 004595BF    mov         bl,1
>004595C1    jmp         004595D6
 004595C3    mov         eax,dword ptr [esi+4]
 004595C6    mov         eax,dword ptr [eax+4]
 004595C9    call        0040ABA8
 004595CE    dec         eax
 004595CF    cmp         eax,dword ptr [esi+8]
>004595D2    jg          004595AA
 004595D4    xor         ebx,ebx
 004595D6    mov         eax,ebx
 004595D8    pop         esi
 004595D9    pop         ebx
 004595DA    ret
*}
end;

//004595DC
{*procedure sub_004595DC(?:?; ?:?);
begin
 004595DC    push        ebx
 004595DD    push        ecx
 004595DE    mov         dword ptr [esp],eax
 004595E1    push        0
 004595E3    mov         eax,edx
 004595E5    push        eax
 004595E6    mov         ebx,dword ptr [esp+8]
 004595EA    mov         edx,eax
 004595EC    mov         eax,ebx
 004595EE    call        0045CD4C
 004595F3    pop         edx
 004595F4    pop         ebx
 004595F5    ret
end;*}

//004595F8
{*procedure TComparer<System.Rtti.TRttiPackage>.Construct(Comparison:TComparison<System.Rtti.TRttiPackage>; ?:?);
begin
 004595F8    push        ebx
 004595F9    push        esi
 004595FA    mov         esi,ecx
 004595FC    mov         ebx,edx
 004595FE    mov         ecx,ebx
 00459600    mov         dl,1
 00459602    mov         eax,[00464AEC];TDelegatedComparer<System.Rtti.TRttiPackage>
 00459607    call        0045CE18
 0045960C    mov         edx,eax
 0045960E    test        edx,edx
>00459610    je          00459615
 00459612    sub         edx,0FFFFFFF4
 00459615    mov         eax,esi
 00459617    call        @IntfCopy
 0045961C    pop         esi
 0045961D    pop         ebx
 0045961E    ret
end;*}

//00459620
{*procedure sub_00459620(?:?; ?:Byte);
begin
 00459620    add         esp,0FFFFFFF8
 00459623    mov         dword ptr [esp+4],edx
 00459627    mov         dword ptr [esp],eax
 0045962A    mov         eax,dword ptr [esp+4]
 0045962E    mov         edx,dword ptr ds:[435E20];TValue
 00459634    call        @FinalizeRecord
 00459639    mov         ecx,eax
 0045963B    mov         eax,esp
 0045963D    mov         edx,dword ptr ds:[4025B0];UTF8String
 00459643    call        TValue.Make
 00459648    pop         ecx
 00459649    pop         edx
 0045964A    ret
end;*}

//0045964C
{*function sub_0045964C(?:Byte):?;
begin
 0045964C    add         esp,0FFFFFFF8
 0045964F    mov         dword ptr [esp],eax
 00459652    lea         edx,[esp+4]
 00459656    mov         eax,dword ptr [esp]
 00459659    call        0045CE60
 0045965E    test        al,al
>00459660    jne         00459679
 00459662    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 00459668    mov         dl,1
 0045966A    mov         eax,[00418C80];EInvalidCast
 0045966F    call        Exception.CreateRes;EInvalidCast.Create
 00459674    call        @RaiseExcept
 00459679    mov         eax,dword ptr [esp+4]
 0045967D    pop         ecx
 0045967E    pop         edx
 0045967F    ret
end;*}

//00459680
destructor TEnumerable<System.TCustomAttribute>.Destroy();
begin
{*
 00459680    push        ebx
 00459681    push        esi
 00459682    call        @BeforeDestruction
 00459687    mov         ebx,edx
 00459689    mov         esi,eax
 0045968B    mov         dl,0FC
 0045968D    and         dl,bl
 0045968F    mov         eax,esi
 00459691    call        TObject.Destroy
 00459696    test        bl,bl
>00459698    jle         004596A1
 0045969A    mov         eax,esi
 0045969C    call        @ClassDestroy
 004596A1    pop         esi
 004596A2    pop         ebx
 004596A3    ret
*}
end;

//004596A4
function TEnumerable<System.TCustomAttribute>.GetEnumerator:TEnumerator<System.TCustomAttribute>;
begin
{*
 004596A4    mov         edx,dword ptr [eax]
 004596A6    call        dword ptr [edx]
 004596A8    ret
*}
end;

//004596AC
{*procedure TEnumerable<System.TCustomAttribute>.ToArray(?:?);
begin
 004596AC    push        ebp
 004596AD    mov         ebp,esp
 004596AF    add         esp,0FFFFFFF4
 004596B2    push        ebx
 004596B3    mov         dword ptr [ebp-4],edx
 004596B6    mov         ebx,eax
 004596B8    mov         dl,1
 004596BA    mov         eax,[00447844];TList<System.TCustomAttribute>
 004596BF    call        004597F8
 004596C4    mov         dword ptr [ebp-8],eax
 004596C7    xor         eax,eax
 004596C9    push        ebp
 004596CA    push        459754
 004596CF    push        dword ptr fs:[eax]
 004596D2    mov         dword ptr fs:[eax],esp
 004596D5    mov         eax,ebx
 004596D7    call        TEnumerable<System.TCustomAttribute>.GetEnumerator
 004596DC    mov         dword ptr [ebp-0C],eax
 004596DF    xor         eax,eax
 004596E1    push        ebp
 004596E2    push        45972C
 004596E7    push        dword ptr fs:[eax]
 004596EA    mov         dword ptr fs:[eax],esp
>004596ED    jmp         00459702
 004596EF    mov         eax,dword ptr [ebp-0C]
 004596F2    mov         edx,dword ptr [eax]
 004596F4    call        dword ptr [edx]
 004596F6    mov         ebx,eax
 004596F8    mov         edx,ebx
 004596FA    mov         eax,dword ptr [ebp-8]
 004596FD    call        TList<System.TCustomAttribute>.Add
 00459702    mov         eax,dword ptr [ebp-0C]
 00459705    call        TEnumerator<System.TCustomAttribute>.MoveNext
 0045970A    test        al,al
>0045970C    jne         004596EF
 0045970E    xor         eax,eax
 00459710    pop         edx
 00459711    pop         ecx
 00459712    pop         ecx
 00459713    mov         dword ptr fs:[eax],edx
 00459716    push        459733
 0045971B    cmp         dword ptr [ebp-0C],0
>0045971F    je          0045972B
 00459721    mov         dl,1
 00459723    mov         eax,dword ptr [ebp-0C]
 00459726    mov         ecx,dword ptr [eax]
 00459728    call        dword ptr [ecx-4]
 0045972B    ret
>0045972C    jmp         @HandleFinally
>00459731    jmp         0045971B
 00459733    mov         edx,dword ptr [ebp-4]
 00459736    mov         eax,dword ptr [ebp-8]
 00459739    call        TList<System.TCustomAttribute>.ToArray
 0045973E    xor         eax,eax
 00459740    pop         edx
 00459741    pop         ecx
 00459742    pop         ecx
 00459743    mov         dword ptr fs:[eax],edx
 00459746    push        45975B
 0045974B    mov         eax,dword ptr [ebp-8]
 0045974E    call        TObject.Free
 00459753    ret
>00459754    jmp         @HandleFinally
>00459759    jmp         0045974B
 0045975B    pop         ebx
 0045975C    mov         esp,ebp
 0045975E    pop         ebp
 0045975F    ret
end;*}

//00459760
function TEnumerator<System.TCustomAttribute>.MoveNext:Boolean;
begin
{*
 00459760    mov         edx,dword ptr [eax]
 00459762    call        dword ptr [edx+4]
 00459765    ret
*}
end;

//004597B0
procedure sub_004597B0(?:TList<System.TCustomAttribute>);
begin
{*
 004597B0    add         eax,8
 004597B3    call        004357A0
 004597B8    ret
*}
end;

//004597BC
{*procedure sub_004597BC(?:?; ?:?);
begin
 004597BC    push        ebx
 004597BD    mov         edx,dword ptr [edx]
 004597BF    mov         ebx,dword ptr [eax]
 004597C1    call        dword ptr [ebx+8]
 004597C4    pop         ebx
 004597C5    ret
end;*}

//004597C8
{*procedure sub_004597C8(?:?; ?:?; ?:?);
begin
 004597C8    push        ebx
 004597C9    mov         edx,dword ptr [edx]
 004597CB    mov         ecx,dword ptr [ecx]
 004597CD    mov         eax,dword ptr [eax+24]
 004597D0    mov         ebx,dword ptr [eax]
 004597D2    call        dword ptr [ebx+0C]
 004597D5    pop         ebx
 004597D6    ret
end;*}

//004597D8
procedure sub_004597D8;
begin
{*
 004597D8    call        TList<System.TCustomAttribute>.GetEnumerator
 004597DD    ret
*}
end;

//004597E0
{*procedure sub_004597E0(?:?);
begin
 004597E0    push        ebx
 004597E1    cmp         word ptr [eax+2A],0
>004597E6    je          004597F5
 004597E8    push        ecx
 004597E9    mov         ebx,eax
 004597EB    mov         ecx,edx
 004597ED    mov         edx,eax
 004597EF    mov         eax,dword ptr [ebx+2C]
 004597F2    call        dword ptr [ebx+28]
 004597F5    pop         ebx
 004597F6    ret
end;*}

//004597F8
constructor sub_004597F8;
begin
{*
 004597F8    push        ebp
 004597F9    mov         ebp,esp
 004597FB    push        0
 004597FD    push        ebx
 004597FE    push        esi
 004597FF    test        dl,dl
>00459801    je          0045980B
 00459803    add         esp,0FFFFFFF0
 00459806    call        @ClassCreate
 0045980B    mov         ebx,edx
 0045980D    mov         esi,eax
 0045980F    xor         eax,eax
 00459811    push        ebp
 00459812    push        45984C
 00459817    push        dword ptr fs:[eax]
 0045981A    mov         dword ptr fs:[eax],esp
 0045981D    lea         edx,[ebp-4]
 00459820    mov         eax,[00464D58];TComparer<System.TCustomAttribute>
 00459825    call        TComparer<System.TCustomAttribute>.Default
 0045982A    mov         ecx,dword ptr [ebp-4]
 0045982D    xor         edx,edx
 0045982F    mov         eax,esi
 00459831    call        00459870
 00459836    xor         eax,eax
 00459838    pop         edx
 00459839    pop         ecx
 0045983A    pop         ecx
 0045983B    mov         dword ptr fs:[eax],edx
 0045983E    push        459853
 00459843    lea         eax,[ebp-4]
 00459846    call        @IntfClear
 0045984B    ret
>0045984C    jmp         @HandleFinally
>00459851    jmp         00459843
 00459853    mov         eax,esi
 00459855    test        bl,bl
>00459857    je          00459868
 00459859    call        @AfterConstruction
 0045985E    pop         dword ptr fs:[0]
 00459865    add         esp,0C
 00459868    mov         eax,esi
 0045986A    pop         esi
 0045986B    pop         ebx
 0045986C    pop         ecx
 0045986D    pop         ebp
 0045986E    ret
*}
end;

//00459870
constructor sub_00459870(AComparer:IComparer<System.TCustomAttribute>);
begin
{*
 00459870    push        ebp
 00459871    mov         ebp,esp
 00459873    push        0
 00459875    push        ebx
 00459876    push        esi
 00459877    push        edi
 00459878    test        dl,dl
>0045987A    je          00459884
 0045987C    add         esp,0FFFFFFF0
 0045987F    call        @ClassCreate
 00459884    mov         esi,ecx
 00459886    mov         ebx,edx
 00459888    mov         edi,eax
 0045988A    xor         eax,eax
 0045988C    push        ebp
 0045988D    push        4598FB
 00459892    push        dword ptr fs:[eax]
 00459895    mov         dword ptr fs:[eax],esp
 00459898    xor         edx,edx
 0045989A    mov         eax,edi
 0045989C    call        TObject.Create
 004598A1    mov         dword ptr [edi+14],edi;TList<System.TCustomAttribute>.FOnNotify:TCollectionNotifyEvent<S...
 004598A4    mov         dword ptr [edi+10],4597BC;TList<System.TCustomAttribute>.FOnNotify:TCollectionNotifyEven...
 004598AB    mov         dword ptr [edi+1C],edi
 004598AE    mov         dword ptr [edi+18],4597C8;sub_004597C8
 004598B5    mov         eax,[00447460];TList<System.TCustomAttribute>.arrayofT
 004598BA    mov         dword ptr [edi+0C],eax;TList<System.TCustomAttribute>.FComparer:IComparer<System.TCustom...
 004598BD    lea         eax,[edi+24]
 004598C0    mov         edx,esi
 004598C2    call        @IntfCopy
 004598C7    cmp         dword ptr [edi+24],0
>004598CB    jne         004598E5
 004598CD    lea         edx,[ebp-4]
 004598D0    mov         eax,[00464D58];TComparer<System.TCustomAttribute>
 004598D5    call        TComparer<System.TCustomAttribute>.Default
 004598DA    mov         edx,dword ptr [ebp-4]
 004598DD    lea         eax,[edi+24]
 004598E0    call        @IntfCopy
 004598E5    xor         eax,eax
 004598E7    pop         edx
 004598E8    pop         ecx
 004598E9    pop         ecx
 004598EA    mov         dword ptr fs:[eax],edx
 004598ED    push        459902
 004598F2    lea         eax,[ebp-4]
 004598F5    call        @IntfClear
 004598FA    ret
>004598FB    jmp         @HandleFinally
>00459900    jmp         004598F2
 00459902    mov         eax,edi
 00459904    test        bl,bl
>00459906    je          00459917
 00459908    call        @AfterConstruction
 0045990D    pop         dword ptr fs:[0]
 00459914    add         esp,0C
 00459917    mov         eax,edi
 00459919    pop         edi
 0045991A    pop         esi
 0045991B    pop         ebx
 0045991C    pop         ecx
 0045991D    pop         ebp
 0045991E    ret
*}
end;

//00459920
destructor TList<System.TCustomAttribute>.Destroy();
begin
{*
 00459920    push        ebx
 00459921    push        esi
 00459922    call        @BeforeDestruction
 00459927    mov         ebx,edx
 00459929    mov         esi,eax
 0045992B    cmp         dword ptr [esi+8],0;TList<System.TCustomAttribute>.FCount:Integer
>0045992F    jle         0045993A
 00459931    xor         edx,edx
 00459933    mov         eax,esi
 00459935    call        004597B0
 0045993A    push        0
 0045993C    lea         eax,[esi+20]
 0045993F    mov         ecx,1
 00459944    mov         edx,dword ptr ds:[447460];TList<System.TCustomAttribute>.arrayofT
 0045994A    call        @DynArraySetLength
 0045994F    add         esp,4
 00459952    mov         dl,0FC
 00459954    and         dl,bl
 00459956    mov         eax,esi
 00459958    call        TEnumerable<System.TCustomAttribute>.Destroy
 0045995D    test        bl,bl
>0045995F    jle         00459968
 00459961    mov         eax,esi
 00459963    call        @ClassDestroy
 00459968    pop         esi
 00459969    pop         ebx
 0045996A    ret
*}
end;

//0045996C
{*procedure TList<System.TCustomAttribute>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045996C    push        ebp
 0045996D    mov         ebp,esp
 0045996F    add         esp,0FFFFFFF0
 00459972    mov         dword ptr [ebp-8],ecx
 00459975    mov         dword ptr [ebp-4],edx
 00459978    push        dword ptr [ebp+4]
 0045997B    mov         eax,dword ptr [ebp-8]
 0045997E    mov         dword ptr [ebp-10],eax
 00459981    mov         byte ptr [ebp-0C],0
 00459985    lea         eax,[ebp-10]
 00459988    push        eax
 00459989    push        0
 0045998B    mov         ecx,dword ptr [ebp-4]
 0045998E    mov         dl,1
 00459990    mov         eax,[004180BC];EListError
 00459995    call        Exception.CreateFmt;EListError.Create
>0045999A    jmp         @RaiseExcept
end;*}

//004599A4
procedure TList<System.TCustomAttribute>.Add(Value:TCustomAttribute);
begin
{*
 004599A4    push        ecx
 004599A5    mov         dword ptr [esp],edx
 004599A8    mov         edx,esp
 004599AA    add         eax,8
 004599AD    call        0043489C
 004599B2    pop         edx
 004599B3    ret
*}
end;

//004599B4
{*procedure TList<System.TCustomAttribute>.ToArray(?:?);
begin
 004599B4    push        ecx
 004599B5    mov         dword ptr [esp],edx
 004599B8    mov         edx,dword ptr [esp]
 004599BB    add         eax,8
 004599BE    call        00435980
 004599C3    pop         edx
 004599C4    ret
end;*}

//004599C8
procedure TList<System.TCustomAttribute>.GetEnumerator;
begin
{*
 004599C8    mov         ecx,eax
 004599CA    mov         dl,1
 004599CC    mov         eax,[00447690];TList<System.TCustomAttribute>.TEnumerator
 004599D1    call        00459A04
 004599D6    ret
*}
end;

//004599D8
{*function sub_004599D8(?:?):?;
begin
 004599D8    push        ebx
 004599D9    push        esi
 004599DA    mov         ebx,dword ptr [eax+4]
 004599DD    mov         esi,dword ptr [eax+8]
 004599E0    lea         eax,[ebx+8]
 004599E3    mov         edx,esi
 004599E5    call        00434534
 004599EA    mov         eax,dword ptr [ebx+20]
 004599ED    mov         eax,dword ptr [eax+esi*4]
 004599F0    pop         esi
 004599F1    pop         ebx
 004599F2    ret
end;*}

//004599F4
procedure sub_004599F4;
begin
{*
 004599F4    call        004599D8
 004599F9    ret
*}
end;

//004599FC
procedure sub_004599FC;
begin
{*
 004599FC    call        TList<System.TCustomAttribute>.TEnumerator.MoveNext
 00459A01    ret
*}
end;

//00459A04
constructor sub_00459A04(AList:TList<System.TCustomAttribute>);
begin
{*
 00459A04    push        ebx
 00459A05    push        esi
 00459A06    push        edi
 00459A07    test        dl,dl
>00459A09    je          00459A13
 00459A0B    add         esp,0FFFFFFF0
 00459A0E    call        @ClassCreate
 00459A13    mov         esi,ecx
 00459A15    mov         ebx,edx
 00459A17    mov         edi,eax
 00459A19    xor         edx,edx
 00459A1B    mov         eax,edi
 00459A1D    call        TObject.Create
 00459A22    mov         dword ptr [edi+4],esi;TList<System.TCustomAttribute>.TEnumerator.FList:TList<System.TCus...
 00459A25    mov         dword ptr [edi+8],0FFFFFFFF
 00459A2C    mov         eax,edi
 00459A2E    test        bl,bl
>00459A30    je          00459A41
 00459A32    call        @AfterConstruction
 00459A37    pop         dword ptr fs:[0]
 00459A3E    add         esp,0C
 00459A41    mov         eax,edi
 00459A43    pop         edi
 00459A44    pop         esi
 00459A45    pop         ebx
 00459A46    ret
*}
end;

//00459A48
function TList<System.TCustomAttribute>.TEnumerator.MoveNext:Boolean;
begin
{*
 00459A48    mov         edx,dword ptr [eax+4]
 00459A4B    mov         edx,dword ptr [edx+8]
 00459A4E    cmp         edx,dword ptr [eax+8]
>00459A51    jg          00459A56
 00459A53    xor         eax,eax
 00459A55    ret
 00459A56    inc         dword ptr [eax+8]
 00459A59    mov         edx,dword ptr [eax+4]
 00459A5C    mov         edx,dword ptr [edx+8]
 00459A5F    cmp         edx,dword ptr [eax+8]
 00459A62    setg        al
 00459A65    ret
*}
end;

//00459A68
{*procedure sub_00459A68(?:TListHelper; ?:TList<System.TCustomAttribute>; ?:?);
begin
 00459A68    push        ebx
 00459A69    push        esi
 00459A6A    push        edi
 00459A6B    push        ecx
 00459A6C    mov         dword ptr [esp],ecx
 00459A6F    mov         esi,edx
 00459A71    mov         eax,dword ptr [esi+8];TList<System.TCustomAttribute>.FCount:Integer
 00459A74    push        eax
 00459A75    mov         eax,dword ptr [esp+4]
 00459A79    mov         ecx,1
 00459A7E    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00459A84    call        @DynArraySetLength
 00459A89    add         esp,4
 00459A8C    mov         edi,dword ptr [esi+8];TList<System.TCustomAttribute>.FCount:Integer
 00459A8F    dec         edi
 00459A90    test        edi,edi
>00459A92    jl          00459AB3
 00459A94    inc         edi
 00459A95    xor         ebx,ebx
 00459A97    lea         eax,[esi+8];TList<System.TCustomAttribute>.FCount:Integer
 00459A9A    mov         edx,ebx
 00459A9C    call        00434534
 00459AA1    mov         eax,dword ptr [esi+20]
 00459AA4    mov         eax,dword ptr [eax+ebx*4]
 00459AA7    mov         edx,dword ptr [esp]
 00459AAA    mov         edx,dword ptr [edx]
 00459AAC    mov         dword ptr [edx+ebx*4],eax
 00459AAF    inc         ebx
 00459AB0    dec         edi
>00459AB1    jne         00459A97
 00459AB3    pop         edx
 00459AB4    pop         edi
 00459AB5    pop         esi
 00459AB6    pop         ebx
 00459AB7    ret
end;*}

//00459AB8
{*procedure sub_00459AB8(?:?; ?:?; ?:?);
begin
 00459AB8    push        ebx
 00459AB9    push        esi
 00459ABA    push        edi
 00459ABB    push        ebp
 00459ABC    add         esp,0FFFFFFF4
 00459ABF    mov         dword ptr [esp],ecx
 00459AC2    mov         ebp,edx
 00459AC4    mov         edi,eax
 00459AC6    xor         ebx,ebx
 00459AC8    mov         esi,ebp
 00459ACA    test        esi,esi
>00459ACC    jl          00459AEC
 00459ACE    inc         esi
 00459ACF    mov         eax,edi
 00459AD1    mov         edx,dword ptr [eax]
 00459AD3    mov         dword ptr [esp+4],edx
 00459AD7    mov         edx,dword ptr [esp+4]
 00459ADB    test        edx,edx
>00459ADD    je          00459AE4
 00459ADF    sub         edx,4
 00459AE2    mov         edx,dword ptr [edx]
 00459AE4    add         ebx,edx
 00459AE6    add         eax,4
 00459AE9    dec         esi
>00459AEA    jne         00459AD1
 00459AEC    push        ebx
 00459AED    mov         eax,dword ptr [esp+4]
 00459AF1    mov         ecx,1
 00459AF6    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00459AFC    call        @DynArraySetLength
 00459B01    add         esp,4
 00459B04    xor         edx,edx
 00459B06    mov         esi,ebp
 00459B08    test        esi,esi
>00459B0A    jl          00459B46
 00459B0C    inc         esi
 00459B0D    mov         eax,edi
 00459B0F    mov         ecx,dword ptr [eax]
 00459B11    mov         dword ptr [esp+8],ecx
 00459B15    mov         ecx,dword ptr [esp+8]
 00459B19    test        ecx,ecx
>00459B1B    je          00459B22
 00459B1D    sub         ecx,4
 00459B20    mov         ecx,dword ptr [ecx]
 00459B22    mov         ebx,ecx
 00459B24    dec         ebx
 00459B25    test        ebx,ebx
>00459B27    jl          00459B40
 00459B29    inc         ebx
 00459B2A    xor         ecx,ecx
 00459B2C    mov         edi,dword ptr [eax]
 00459B2E    mov         edi,dword ptr [edi+ecx*4]
 00459B31    mov         ebp,dword ptr [esp]
 00459B34    mov         ebp,dword ptr [ebp]
 00459B37    mov         dword ptr [ebp+edx*4],edi
 00459B3B    inc         edx
 00459B3C    inc         ecx
 00459B3D    dec         ebx
>00459B3E    jne         00459B2C
 00459B40    add         eax,4
 00459B43    dec         esi
>00459B44    jne         00459B0F
 00459B46    add         esp,0C
 00459B49    pop         ebp
 00459B4A    pop         edi
 00459B4B    pop         esi
 00459B4C    pop         ebx
 00459B4D    ret
end;*}

//00459B50
{*procedure sub_00459B50(?:?; ?:?; ?:?);
begin
 00459B50    push        ebx
 00459B51    push        esi
 00459B52    push        edi
 00459B53    push        ebp
 00459B54    add         esp,0FFFFFFF4
 00459B57    mov         dword ptr [esp],ecx
 00459B5A    mov         ebp,edx
 00459B5C    mov         edi,eax
 00459B5E    xor         ebx,ebx
 00459B60    mov         esi,ebp
 00459B62    test        esi,esi
>00459B64    jl          00459B84
 00459B66    inc         esi
 00459B67    mov         eax,edi
 00459B69    mov         edx,dword ptr [eax]
 00459B6B    mov         dword ptr [esp+4],edx
 00459B6F    mov         edx,dword ptr [esp+4]
 00459B73    test        edx,edx
>00459B75    je          00459B7C
 00459B77    sub         edx,4
 00459B7A    mov         edx,dword ptr [edx]
 00459B7C    add         ebx,edx
 00459B7E    add         eax,4
 00459B81    dec         esi
>00459B82    jne         00459B69
 00459B84    push        ebx
 00459B85    mov         eax,dword ptr [esp+4]
 00459B89    mov         ecx,1
 00459B8E    mov         edx,dword ptr ds:[43AF90];TArray<System.Rtti.TRttiIndexedProperty>
 00459B94    call        @DynArraySetLength
 00459B99    add         esp,4
 00459B9C    xor         edx,edx
 00459B9E    mov         esi,ebp
 00459BA0    test        esi,esi
>00459BA2    jl          00459BDE
 00459BA4    inc         esi
 00459BA5    mov         eax,edi
 00459BA7    mov         ecx,dword ptr [eax]
 00459BA9    mov         dword ptr [esp+8],ecx
 00459BAD    mov         ecx,dword ptr [esp+8]
 00459BB1    test        ecx,ecx
>00459BB3    je          00459BBA
 00459BB5    sub         ecx,4
 00459BB8    mov         ecx,dword ptr [ecx]
 00459BBA    mov         ebx,ecx
 00459BBC    dec         ebx
 00459BBD    test        ebx,ebx
>00459BBF    jl          00459BD8
 00459BC1    inc         ebx
 00459BC2    xor         ecx,ecx
 00459BC4    mov         edi,dword ptr [eax]
 00459BC6    mov         edi,dword ptr [edi+ecx*4]
 00459BC9    mov         ebp,dword ptr [esp]
 00459BCC    mov         ebp,dword ptr [ebp]
 00459BCF    mov         dword ptr [ebp+edx*4],edi
 00459BD3    inc         edx
 00459BD4    inc         ecx
 00459BD5    dec         ebx
>00459BD6    jne         00459BC4
 00459BD8    add         eax,4
 00459BDB    dec         esi
>00459BDC    jne         00459BA7
 00459BDE    add         esp,0C
 00459BE1    pop         ebp
 00459BE2    pop         edi
 00459BE3    pop         esi
 00459BE4    pop         ebx
 00459BE5    ret
end;*}

//00459BE8
function TArrayHelper.Concat<System.Rtti.TRttiMethod>(const _Dv_:$0..-$1):TArray<System.Rtti.TRttiMethod>;
begin
{*
 00459BE8    push        ebx
 00459BE9    push        esi
 00459BEA    push        edi
 00459BEB    push        ebp
 00459BEC    add         esp,0FFFFFFF4
 00459BEF    mov         dword ptr [esp],ecx
 00459BF2    mov         ebp,edx
 00459BF4    mov         edi,eax
 00459BF6    xor         ebx,ebx
 00459BF8    mov         esi,ebp
 00459BFA    test        esi,esi
>00459BFC    jl          00459C1C
 00459BFE    inc         esi
 00459BFF    mov         eax,edi
 00459C01    mov         edx,dword ptr [eax]
 00459C03    mov         dword ptr [esp+4],edx
 00459C07    mov         edx,dword ptr [esp+4]
 00459C0B    test        edx,edx
>00459C0D    je          00459C14
 00459C0F    sub         edx,4
 00459C12    mov         edx,dword ptr [edx]
 00459C14    add         ebx,edx
 00459C16    add         eax,4
 00459C19    dec         esi
>00459C1A    jne         00459C01
 00459C1C    push        ebx
 00459C1D    mov         eax,dword ptr [esp+4]
 00459C21    mov         ecx,1
 00459C26    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00459C2C    call        @DynArraySetLength
 00459C31    add         esp,4
 00459C34    xor         edx,edx
 00459C36    mov         esi,ebp
 00459C38    test        esi,esi
>00459C3A    jl          00459C76
 00459C3C    inc         esi
 00459C3D    mov         eax,edi
 00459C3F    mov         ecx,dword ptr [eax]
 00459C41    mov         dword ptr [esp+8],ecx
 00459C45    mov         ecx,dword ptr [esp+8]
 00459C49    test        ecx,ecx
>00459C4B    je          00459C52
 00459C4D    sub         ecx,4
 00459C50    mov         ecx,dword ptr [ecx]
 00459C52    mov         ebx,ecx
 00459C54    dec         ebx
 00459C55    test        ebx,ebx
>00459C57    jl          00459C70
 00459C59    inc         ebx
 00459C5A    xor         ecx,ecx
 00459C5C    mov         edi,dword ptr [eax]
 00459C5E    mov         edi,dword ptr [edi+ecx*4]
 00459C61    mov         ebp,dword ptr [esp]
 00459C64    mov         ebp,dword ptr [ebp]
 00459C67    mov         dword ptr [ebp+edx*4],edi
 00459C6B    inc         edx
 00459C6C    inc         ecx
 00459C6D    dec         ebx
>00459C6E    jne         00459C5C
 00459C70    add         eax,4
 00459C73    dec         esi
>00459C74    jne         00459C3F
 00459C76    add         esp,0C
 00459C79    pop         ebp
 00459C7A    pop         edi
 00459C7B    pop         esi
 00459C7C    pop         ebx
 00459C7D    ret
*}
end;

//00459C80
{*procedure sub_00459C80(?:?; ?:?; ?:?);
begin
 00459C80    push        ebx
 00459C81    push        esi
 00459C82    push        edi
 00459C83    push        ebp
 00459C84    add         esp,0FFFFFFF4
 00459C87    mov         dword ptr [esp],ecx
 00459C8A    mov         ebp,edx
 00459C8C    mov         edi,eax
 00459C8E    xor         ebx,ebx
 00459C90    mov         esi,ebp
 00459C92    test        esi,esi
>00459C94    jl          00459CB4
 00459C96    inc         esi
 00459C97    mov         eax,edi
 00459C99    mov         edx,dword ptr [eax]
 00459C9B    mov         dword ptr [esp+4],edx
 00459C9F    mov         edx,dword ptr [esp+4]
 00459CA3    test        edx,edx
>00459CA5    je          00459CAC
 00459CA7    sub         edx,4
 00459CAA    mov         edx,dword ptr [edx]
 00459CAC    add         ebx,edx
 00459CAE    add         eax,4
 00459CB1    dec         esi
>00459CB2    jne         00459C99
 00459CB4    push        ebx
 00459CB5    mov         eax,dword ptr [esp+4]
 00459CB9    mov         ecx,1
 00459CBE    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00459CC4    call        @DynArraySetLength
 00459CC9    add         esp,4
 00459CCC    xor         edx,edx
 00459CCE    mov         esi,ebp
 00459CD0    test        esi,esi
>00459CD2    jl          00459D0E
 00459CD4    inc         esi
 00459CD5    mov         eax,edi
 00459CD7    mov         ecx,dword ptr [eax]
 00459CD9    mov         dword ptr [esp+8],ecx
 00459CDD    mov         ecx,dword ptr [esp+8]
 00459CE1    test        ecx,ecx
>00459CE3    je          00459CEA
 00459CE5    sub         ecx,4
 00459CE8    mov         ecx,dword ptr [ecx]
 00459CEA    mov         ebx,ecx
 00459CEC    dec         ebx
 00459CED    test        ebx,ebx
>00459CEF    jl          00459D08
 00459CF1    inc         ebx
 00459CF2    xor         ecx,ecx
 00459CF4    mov         edi,dword ptr [eax]
 00459CF6    mov         edi,dword ptr [edi+ecx*4]
 00459CF9    mov         ebp,dword ptr [esp]
 00459CFC    mov         ebp,dword ptr [ebp]
 00459CFF    mov         dword ptr [ebp+edx*4],edi
 00459D03    inc         edx
 00459D04    inc         ecx
 00459D05    dec         ebx
>00459D06    jne         00459CF4
 00459D08    add         eax,4
 00459D0B    dec         esi
>00459D0C    jne         00459CD7
 00459D0E    add         esp,0C
 00459D11    pop         ebp
 00459D12    pop         edi
 00459D13    pop         esi
 00459D14    pop         ebx
 00459D15    ret
end;*}

//00459D18
{*function sub_00459D18(?:Byte; ?:?):?;
begin
 00459D18    push        ebp
 00459D19    mov         ebp,esp
 00459D1B    add         esp,0FFFFFFE0
 00459D1E    push        ebx
 00459D1F    mov         dword ptr [ebp-20],edx
 00459D22    mov         dword ptr [ebp-1C],eax
 00459D25    lea         eax,[ebp-18]
 00459D28    mov         edx,dword ptr ds:[435E20];TValue
 00459D2E    call        @AddRefRecord
 00459D33    xor         eax,eax
 00459D35    push        ebp
 00459D36    push        459D8C
 00459D3B    push        dword ptr fs:[eax]
 00459D3E    mov         dword ptr fs:[eax],esp
 00459D41    lea         eax,[ebp-18]
 00459D44    mov         edx,dword ptr ds:[435E20];TValue
 00459D4A    call        @FinalizeRecord
 00459D4F    mov         ecx,eax
 00459D51    mov         eax,dword ptr [ebp-1C]
 00459D54    mov         edx,dword ptr ds:[40132C];TClass
 00459D5A    call        TValue.TryCast
 00459D5F    mov         ebx,eax
 00459D61    test        bl,bl
>00459D63    je          00459D70
 00459D65    mov         edx,dword ptr [ebp-20]
 00459D68    lea         eax,[ebp-18]
 00459D6B    call        0045CF04
 00459D70    xor         eax,eax
 00459D72    pop         edx
 00459D73    pop         ecx
 00459D74    pop         ecx
 00459D75    mov         dword ptr fs:[eax],edx
 00459D78    push        459D93
 00459D7D    lea         eax,[ebp-18]
 00459D80    mov         edx,dword ptr ds:[435E20];TValue
 00459D86    call        @FinalizeRecord
 00459D8B    ret
>00459D8C    jmp         @HandleFinally
>00459D91    jmp         00459D7D
 00459D93    mov         eax,ebx
 00459D95    pop         ebx
 00459D96    mov         esp,ebp
 00459D98    pop         ebp
 00459D99    ret
end;*}

//00459D9C
destructor TEnumerable<System.Rtti.TRttiProperty>.Destroy();
begin
{*
 00459D9C    push        ebx
 00459D9D    push        esi
 00459D9E    call        @BeforeDestruction
 00459DA3    mov         ebx,edx
 00459DA5    mov         esi,eax
 00459DA7    mov         dl,0FC
 00459DA9    and         dl,bl
 00459DAB    mov         eax,esi
 00459DAD    call        TObject.Destroy
 00459DB2    test        bl,bl
>00459DB4    jle         00459DBD
 00459DB6    mov         eax,esi
 00459DB8    call        @ClassDestroy
 00459DBD    pop         esi
 00459DBE    pop         ebx
 00459DBF    ret
*}
end;

//00459DC0
function TEnumerable<System.Rtti.TRttiProperty>.GetEnumerator:TEnumerator<System.Rtti.TRttiProperty>;
begin
{*
 00459DC0    mov         edx,dword ptr [eax]
 00459DC2    call        dword ptr [edx]
 00459DC4    ret
*}
end;

//00459DC8
{*procedure TEnumerable<System.Rtti.TRttiProperty>.ToArray(?:?);
begin
 00459DC8    push        ebp
 00459DC9    mov         ebp,esp
 00459DCB    add         esp,0FFFFFFF4
 00459DCE    push        ebx
 00459DCF    mov         dword ptr [ebp-4],edx
 00459DD2    mov         ebx,eax
 00459DD4    mov         dl,1
 00459DD6    mov         eax,[0044CFE8];TList<System.Rtti.TRttiProperty>
 00459DDB    call        00459F14
 00459DE0    mov         dword ptr [ebp-8],eax
 00459DE3    xor         eax,eax
 00459DE5    push        ebp
 00459DE6    push        459E70
 00459DEB    push        dword ptr fs:[eax]
 00459DEE    mov         dword ptr fs:[eax],esp
 00459DF1    mov         eax,ebx
 00459DF3    call        TEnumerable<System.Rtti.TRttiProperty>.GetEnumerator
 00459DF8    mov         dword ptr [ebp-0C],eax
 00459DFB    xor         eax,eax
 00459DFD    push        ebp
 00459DFE    push        459E48
 00459E03    push        dword ptr fs:[eax]
 00459E06    mov         dword ptr fs:[eax],esp
>00459E09    jmp         00459E1E
 00459E0B    mov         eax,dword ptr [ebp-0C]
 00459E0E    mov         edx,dword ptr [eax]
 00459E10    call        dword ptr [edx]
 00459E12    mov         ebx,eax
 00459E14    mov         edx,ebx
 00459E16    mov         eax,dword ptr [ebp-8]
 00459E19    call        TList<System.Rtti.TRttiProperty>.Add
 00459E1E    mov         eax,dword ptr [ebp-0C]
 00459E21    call        TEnumerator<System.Rtti.TRttiProperty>.MoveNext
 00459E26    test        al,al
>00459E28    jne         00459E0B
 00459E2A    xor         eax,eax
 00459E2C    pop         edx
 00459E2D    pop         ecx
 00459E2E    pop         ecx
 00459E2F    mov         dword ptr fs:[eax],edx
 00459E32    push        459E4F
 00459E37    cmp         dword ptr [ebp-0C],0
>00459E3B    je          00459E47
 00459E3D    mov         dl,1
 00459E3F    mov         eax,dword ptr [ebp-0C]
 00459E42    mov         ecx,dword ptr [eax]
 00459E44    call        dword ptr [ecx-4]
 00459E47    ret
>00459E48    jmp         @HandleFinally
>00459E4D    jmp         00459E37
 00459E4F    mov         edx,dword ptr [ebp-4]
 00459E52    mov         eax,dword ptr [ebp-8]
 00459E55    call        TList<System.Rtti.TRttiProperty>.ToArray
 00459E5A    xor         eax,eax
 00459E5C    pop         edx
 00459E5D    pop         ecx
 00459E5E    pop         ecx
 00459E5F    mov         dword ptr fs:[eax],edx
 00459E62    push        459E77
 00459E67    mov         eax,dword ptr [ebp-8]
 00459E6A    call        TObject.Free
 00459E6F    ret
>00459E70    jmp         @HandleFinally
>00459E75    jmp         00459E67
 00459E77    pop         ebx
 00459E78    mov         esp,ebp
 00459E7A    pop         ebp
 00459E7B    ret
end;*}

//00459E7C
function TEnumerator<System.Rtti.TRttiProperty>.MoveNext:Boolean;
begin
{*
 00459E7C    mov         edx,dword ptr [eax]
 00459E7E    call        dword ptr [edx+4]
 00459E81    ret
*}
end;

//00459ECC
procedure sub_00459ECC(?:TList<System.Rtti.TRttiProperty>);
begin
{*
 00459ECC    add         eax,8
 00459ECF    call        004357A0
 00459ED4    ret
*}
end;

//00459ED8
{*procedure sub_00459ED8(?:?; ?:?);
begin
 00459ED8    push        ebx
 00459ED9    mov         edx,dword ptr [edx]
 00459EDB    mov         ebx,dword ptr [eax]
 00459EDD    call        dword ptr [ebx+8]
 00459EE0    pop         ebx
 00459EE1    ret
end;*}

//00459EE4
{*procedure sub_00459EE4(?:?; ?:?; ?:?);
begin
 00459EE4    push        ebx
 00459EE5    mov         edx,dword ptr [edx]
 00459EE7    mov         ecx,dword ptr [ecx]
 00459EE9    mov         eax,dword ptr [eax+24]
 00459EEC    mov         ebx,dword ptr [eax]
 00459EEE    call        dword ptr [ebx+0C]
 00459EF1    pop         ebx
 00459EF2    ret
end;*}

//00459EF4
procedure sub_00459EF4;
begin
{*
 00459EF4    call        TList<System.Rtti.TRttiProperty>.GetEnumerator
 00459EF9    ret
*}
end;

//00459EFC
{*procedure sub_00459EFC(?:?);
begin
 00459EFC    push        ebx
 00459EFD    cmp         word ptr [eax+2A],0
>00459F02    je          00459F11
 00459F04    push        ecx
 00459F05    mov         ebx,eax
 00459F07    mov         ecx,edx
 00459F09    mov         edx,eax
 00459F0B    mov         eax,dword ptr [ebx+2C]
 00459F0E    call        dword ptr [ebx+28]
 00459F11    pop         ebx
 00459F12    ret
end;*}

//00459F14
constructor sub_00459F14;
begin
{*
 00459F14    push        ebp
 00459F15    mov         ebp,esp
 00459F17    push        0
 00459F19    push        ebx
 00459F1A    push        esi
 00459F1B    test        dl,dl
>00459F1D    je          00459F27
 00459F1F    add         esp,0FFFFFFF0
 00459F22    call        @ClassCreate
 00459F27    mov         ebx,edx
 00459F29    mov         esi,eax
 00459F2B    xor         eax,eax
 00459F2D    push        ebp
 00459F2E    push        459F68
 00459F33    push        dword ptr fs:[eax]
 00459F36    mov         dword ptr fs:[eax],esp
 00459F39    lea         edx,[ebp-4]
 00459F3C    mov         eax,[00464FC8];TComparer<System.Rtti.TRttiProperty>
 00459F41    call        TComparer<System.Rtti.TRttiProperty>.Default
 00459F46    mov         ecx,dword ptr [ebp-4]
 00459F49    xor         edx,edx
 00459F4B    mov         eax,esi
 00459F4D    call        00459F8C
 00459F52    xor         eax,eax
 00459F54    pop         edx
 00459F55    pop         ecx
 00459F56    pop         ecx
 00459F57    mov         dword ptr fs:[eax],edx
 00459F5A    push        459F6F
 00459F5F    lea         eax,[ebp-4]
 00459F62    call        @IntfClear
 00459F67    ret
>00459F68    jmp         @HandleFinally
>00459F6D    jmp         00459F5F
 00459F6F    mov         eax,esi
 00459F71    test        bl,bl
>00459F73    je          00459F84
 00459F75    call        @AfterConstruction
 00459F7A    pop         dword ptr fs:[0]
 00459F81    add         esp,0C
 00459F84    mov         eax,esi
 00459F86    pop         esi
 00459F87    pop         ebx
 00459F88    pop         ecx
 00459F89    pop         ebp
 00459F8A    ret
*}
end;

//00459F8C
constructor sub_00459F8C(AComparer:IComparer<System.Rtti.TRttiProperty>);
begin
{*
 00459F8C    push        ebp
 00459F8D    mov         ebp,esp
 00459F8F    push        0
 00459F91    push        ebx
 00459F92    push        esi
 00459F93    push        edi
 00459F94    test        dl,dl
>00459F96    je          00459FA0
 00459F98    add         esp,0FFFFFFF0
 00459F9B    call        @ClassCreate
 00459FA0    mov         esi,ecx
 00459FA2    mov         ebx,edx
 00459FA4    mov         edi,eax
 00459FA6    xor         eax,eax
 00459FA8    push        ebp
 00459FA9    push        45A017
 00459FAE    push        dword ptr fs:[eax]
 00459FB1    mov         dword ptr fs:[eax],esp
 00459FB4    xor         edx,edx
 00459FB6    mov         eax,edi
 00459FB8    call        TObject.Create
 00459FBD    mov         dword ptr [edi+14],edi;TList<System.Rtti.TRttiProperty>.FOnNotify:TCollectionNotifyEvent...
 00459FC0    mov         dword ptr [edi+10],459ED8;TList<System.Rtti.TRttiProperty>.FOnNotify:TCollectionNotifyEv...
 00459FC7    mov         dword ptr [edi+1C],edi
 00459FCA    mov         dword ptr [edi+18],459EE4;sub_00459EE4
 00459FD1    mov         eax,[0044CBF4];TList<System.Rtti.TRttiProperty>.arrayofT
 00459FD6    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TRttiProperty>.FComparer:IComparer<System.Rtti....
 00459FD9    lea         eax,[edi+24]
 00459FDC    mov         edx,esi
 00459FDE    call        @IntfCopy
 00459FE3    cmp         dword ptr [edi+24],0
>00459FE7    jne         0045A001
 00459FE9    lea         edx,[ebp-4]
 00459FEC    mov         eax,[00464FC8];TComparer<System.Rtti.TRttiProperty>
 00459FF1    call        TComparer<System.Rtti.TRttiProperty>.Default
 00459FF6    mov         edx,dword ptr [ebp-4]
 00459FF9    lea         eax,[edi+24]
 00459FFC    call        @IntfCopy
 0045A001    xor         eax,eax
 0045A003    pop         edx
 0045A004    pop         ecx
 0045A005    pop         ecx
 0045A006    mov         dword ptr fs:[eax],edx
 0045A009    push        45A01E
 0045A00E    lea         eax,[ebp-4]
 0045A011    call        @IntfClear
 0045A016    ret
>0045A017    jmp         @HandleFinally
>0045A01C    jmp         0045A00E
 0045A01E    mov         eax,edi
 0045A020    test        bl,bl
>0045A022    je          0045A033
 0045A024    call        @AfterConstruction
 0045A029    pop         dword ptr fs:[0]
 0045A030    add         esp,0C
 0045A033    mov         eax,edi
 0045A035    pop         edi
 0045A036    pop         esi
 0045A037    pop         ebx
 0045A038    pop         ecx
 0045A039    pop         ebp
 0045A03A    ret
*}
end;

//0045A03C
destructor TList<System.Rtti.TRttiProperty>.Destroy();
begin
{*
 0045A03C    push        ebx
 0045A03D    push        esi
 0045A03E    call        @BeforeDestruction
 0045A043    mov         ebx,edx
 0045A045    mov         esi,eax
 0045A047    cmp         dword ptr [esi+8],0;TList<System.Rtti.TRttiProperty>.FCount:Integer
>0045A04B    jle         0045A056
 0045A04D    xor         edx,edx
 0045A04F    mov         eax,esi
 0045A051    call        00459ECC
 0045A056    push        0
 0045A058    lea         eax,[esi+20]
 0045A05B    mov         ecx,1
 0045A060    mov         edx,dword ptr ds:[44CBF4];TList<System.Rtti.TRttiProperty>.arrayofT
 0045A066    call        @DynArraySetLength
 0045A06B    add         esp,4
 0045A06E    mov         dl,0FC
 0045A070    and         dl,bl
 0045A072    mov         eax,esi
 0045A074    call        TEnumerable<System.Rtti.TRttiProperty>.Destroy
 0045A079    test        bl,bl
>0045A07B    jle         0045A084
 0045A07D    mov         eax,esi
 0045A07F    call        @ClassDestroy
 0045A084    pop         esi
 0045A085    pop         ebx
 0045A086    ret
*}
end;

//0045A088
{*procedure TList<System.Rtti.TRttiProperty>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045A088    push        ebp
 0045A089    mov         ebp,esp
 0045A08B    add         esp,0FFFFFFF0
 0045A08E    mov         dword ptr [ebp-8],ecx
 0045A091    mov         dword ptr [ebp-4],edx
 0045A094    push        dword ptr [ebp+4]
 0045A097    mov         eax,dword ptr [ebp-8]
 0045A09A    mov         dword ptr [ebp-10],eax
 0045A09D    mov         byte ptr [ebp-0C],0
 0045A0A1    lea         eax,[ebp-10]
 0045A0A4    push        eax
 0045A0A5    push        0
 0045A0A7    mov         ecx,dword ptr [ebp-4]
 0045A0AA    mov         dl,1
 0045A0AC    mov         eax,[004180BC];EListError
 0045A0B1    call        Exception.CreateFmt;EListError.Create
>0045A0B6    jmp         @RaiseExcept
end;*}

//0045A0C0
procedure TList<System.Rtti.TRttiProperty>.Add(Value:TRttiProperty);
begin
{*
 0045A0C0    push        ecx
 0045A0C1    mov         dword ptr [esp],edx
 0045A0C4    mov         edx,esp
 0045A0C6    add         eax,8
 0045A0C9    call        0043489C
 0045A0CE    pop         edx
 0045A0CF    ret
*}
end;

//0045A0D0
procedure TList<System.Rtti.TRttiProperty>.AddRange(Values:TRttiProperty);
begin
{*
 0045A0D0    push        ecx
 0045A0D1    mov         dword ptr [esp],edx
 0045A0D4    push        ecx
 0045A0D5    mov         ecx,dword ptr [esp+4]
 0045A0D9    mov         edx,dword ptr [eax+8]
 0045A0DC    call        TList<System.Rtti.TRttiProperty>.InsertRange
 0045A0E1    pop         edx
 0045A0E2    ret
*}
end;

//0045A0E4
{*procedure TList<System.Rtti.TRttiProperty>.InsertRange(Index:Integer; Values:TRttiProperty; ?:?);
begin
 0045A0E4    push        ebp
 0045A0E5    mov         ebp,esp
 0045A0E7    push        ecx
 0045A0E8    mov         dword ptr [ebp-4],ecx
 0045A0EB    mov         ecx,dword ptr [ebp+8]
 0045A0EE    inc         ecx
 0045A0EF    push        ecx
 0045A0F0    mov         ecx,dword ptr [ebp-4]
 0045A0F3    add         eax,8
 0045A0F6    call        0043546C
 0045A0FB    pop         ecx
 0045A0FC    pop         ebp
 0045A0FD    ret         4
end;*}

//0045A100
{*procedure TList<System.Rtti.TRttiProperty>.ToArray(?:?);
begin
 0045A100    push        ecx
 0045A101    mov         dword ptr [esp],edx
 0045A104    mov         edx,dword ptr [esp]
 0045A107    add         eax,8
 0045A10A    call        00435980
 0045A10F    pop         edx
 0045A110    ret
end;*}

//0045A114
procedure TList<System.Rtti.TRttiProperty>.GetEnumerator;
begin
{*
 0045A114    mov         ecx,eax
 0045A116    mov         dl,1
 0045A118    mov         eax,[0044CE30];TList<System.Rtti.TRttiProperty>.TEnumerator
 0045A11D    call        0045A150
 0045A122    ret
*}
end;

//0045A124
{*function sub_0045A124(?:?):?;
begin
 0045A124    push        ebx
 0045A125    push        esi
 0045A126    mov         ebx,dword ptr [eax+4]
 0045A129    mov         esi,dword ptr [eax+8]
 0045A12C    lea         eax,[ebx+8]
 0045A12F    mov         edx,esi
 0045A131    call        00434534
 0045A136    mov         eax,dword ptr [ebx+20]
 0045A139    mov         eax,dword ptr [eax+esi*4]
 0045A13C    pop         esi
 0045A13D    pop         ebx
 0045A13E    ret
end;*}

//0045A140
procedure sub_0045A140;
begin
{*
 0045A140    call        0045A124
 0045A145    ret
*}
end;

//0045A148
procedure sub_0045A148;
begin
{*
 0045A148    call        TList<System.Rtti.TRttiProperty>.TEnumerator.MoveNext
 0045A14D    ret
*}
end;

//0045A150
constructor sub_0045A150(AList:TList<System.Rtti.TRttiProperty>);
begin
{*
 0045A150    push        ebx
 0045A151    push        esi
 0045A152    push        edi
 0045A153    test        dl,dl
>0045A155    je          0045A15F
 0045A157    add         esp,0FFFFFFF0
 0045A15A    call        @ClassCreate
 0045A15F    mov         esi,ecx
 0045A161    mov         ebx,edx
 0045A163    mov         edi,eax
 0045A165    xor         edx,edx
 0045A167    mov         eax,edi
 0045A169    call        TObject.Create
 0045A16E    mov         dword ptr [edi+4],esi;TList<System.Rtti.TRttiProperty>.TEnumerator.FList:TList<System.Rt...
 0045A171    mov         dword ptr [edi+8],0FFFFFFFF
 0045A178    mov         eax,edi
 0045A17A    test        bl,bl
>0045A17C    je          0045A18D
 0045A17E    call        @AfterConstruction
 0045A183    pop         dword ptr fs:[0]
 0045A18A    add         esp,0C
 0045A18D    mov         eax,edi
 0045A18F    pop         edi
 0045A190    pop         esi
 0045A191    pop         ebx
 0045A192    ret
*}
end;

//0045A194
function TList<System.Rtti.TRttiProperty>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045A194    mov         edx,dword ptr [eax+4]
 0045A197    mov         edx,dword ptr [edx+8]
 0045A19A    cmp         edx,dword ptr [eax+8]
>0045A19D    jg          0045A1A2
 0045A19F    xor         eax,eax
 0045A1A1    ret
 0045A1A2    inc         dword ptr [eax+8]
 0045A1A5    mov         edx,dword ptr [eax+4]
 0045A1A8    mov         edx,dword ptr [edx+8]
 0045A1AB    cmp         edx,dword ptr [eax+8]
 0045A1AE    setg        al
 0045A1B1    ret
*}
end;

//0045A1B4
{*procedure sub_0045A1B4(?:TListHelper; ?:TList<System.Rtti.TRttiProperty>; ?:?);
begin
 0045A1B4    push        ebx
 0045A1B5    push        esi
 0045A1B6    push        edi
 0045A1B7    push        ecx
 0045A1B8    mov         dword ptr [esp],ecx
 0045A1BB    mov         esi,edx
 0045A1BD    mov         eax,dword ptr [esi+8];TList<System.Rtti.TRttiProperty>.FCount:Integer
 0045A1C0    push        eax
 0045A1C1    mov         eax,dword ptr [esp+4]
 0045A1C5    mov         ecx,1
 0045A1CA    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 0045A1D0    call        @DynArraySetLength
 0045A1D5    add         esp,4
 0045A1D8    mov         edi,dword ptr [esi+8];TList<System.Rtti.TRttiProperty>.FCount:Integer
 0045A1DB    dec         edi
 0045A1DC    test        edi,edi
>0045A1DE    jl          0045A1FF
 0045A1E0    inc         edi
 0045A1E1    xor         ebx,ebx
 0045A1E3    lea         eax,[esi+8];TList<System.Rtti.TRttiProperty>.FCount:Integer
 0045A1E6    mov         edx,ebx
 0045A1E8    call        00434534
 0045A1ED    mov         eax,dword ptr [esi+20]
 0045A1F0    mov         eax,dword ptr [eax+ebx*4]
 0045A1F3    mov         edx,dword ptr [esp]
 0045A1F6    mov         edx,dword ptr [edx]
 0045A1F8    mov         dword ptr [edx+ebx*4],eax
 0045A1FB    inc         ebx
 0045A1FC    dec         edi
>0045A1FD    jne         0045A1E3
 0045A1FF    pop         edx
 0045A200    pop         edi
 0045A201    pop         esi
 0045A202    pop         ebx
 0045A203    ret
end;*}

//0045A204
destructor TEnumerable<System.Rtti.TRttiMethod>.Destroy();
begin
{*
 0045A204    push        ebx
 0045A205    push        esi
 0045A206    call        @BeforeDestruction
 0045A20B    mov         ebx,edx
 0045A20D    mov         esi,eax
 0045A20F    mov         dl,0FC
 0045A211    and         dl,bl
 0045A213    mov         eax,esi
 0045A215    call        TObject.Destroy
 0045A21A    test        bl,bl
>0045A21C    jle         0045A225
 0045A21E    mov         eax,esi
 0045A220    call        @ClassDestroy
 0045A225    pop         esi
 0045A226    pop         ebx
 0045A227    ret
*}
end;

//0045A228
function TEnumerable<System.Rtti.TRttiMethod>.GetEnumerator:TEnumerator<System.Rtti.TRttiMethod>;
begin
{*
 0045A228    mov         edx,dword ptr [eax]
 0045A22A    call        dword ptr [edx]
 0045A22C    ret
*}
end;

//0045A230
{*procedure TEnumerable<System.Rtti.TRttiMethod>.ToArray(?:?);
begin
 0045A230    push        ebp
 0045A231    mov         ebp,esp
 0045A233    add         esp,0FFFFFFF4
 0045A236    push        ebx
 0045A237    mov         dword ptr [ebp-4],edx
 0045A23A    mov         ebx,eax
 0045A23C    mov         dl,1
 0045A23E    mov         eax,[0044E350];TList<System.Rtti.TRttiMethod>
 0045A243    call        0045A37C
 0045A248    mov         dword ptr [ebp-8],eax
 0045A24B    xor         eax,eax
 0045A24D    push        ebp
 0045A24E    push        45A2D8
 0045A253    push        dword ptr fs:[eax]
 0045A256    mov         dword ptr fs:[eax],esp
 0045A259    mov         eax,ebx
 0045A25B    call        TEnumerable<System.Rtti.TRttiMethod>.GetEnumerator
 0045A260    mov         dword ptr [ebp-0C],eax
 0045A263    xor         eax,eax
 0045A265    push        ebp
 0045A266    push        45A2B0
 0045A26B    push        dword ptr fs:[eax]
 0045A26E    mov         dword ptr fs:[eax],esp
>0045A271    jmp         0045A286
 0045A273    mov         eax,dword ptr [ebp-0C]
 0045A276    mov         edx,dword ptr [eax]
 0045A278    call        dword ptr [edx]
 0045A27A    mov         ebx,eax
 0045A27C    mov         edx,ebx
 0045A27E    mov         eax,dword ptr [ebp-8]
 0045A281    call        TList<System.Rtti.TRttiMethod>.Add
 0045A286    mov         eax,dword ptr [ebp-0C]
 0045A289    call        TEnumerator<System.Rtti.TRttiMethod>.MoveNext
 0045A28E    test        al,al
>0045A290    jne         0045A273
 0045A292    xor         eax,eax
 0045A294    pop         edx
 0045A295    pop         ecx
 0045A296    pop         ecx
 0045A297    mov         dword ptr fs:[eax],edx
 0045A29A    push        45A2B7
 0045A29F    cmp         dword ptr [ebp-0C],0
>0045A2A3    je          0045A2AF
 0045A2A5    mov         dl,1
 0045A2A7    mov         eax,dword ptr [ebp-0C]
 0045A2AA    mov         ecx,dword ptr [eax]
 0045A2AC    call        dword ptr [ecx-4]
 0045A2AF    ret
>0045A2B0    jmp         @HandleFinally
>0045A2B5    jmp         0045A29F
 0045A2B7    mov         edx,dword ptr [ebp-4]
 0045A2BA    mov         eax,dword ptr [ebp-8]
 0045A2BD    call        TList<System.Rtti.TRttiMethod>.ToArray
 0045A2C2    xor         eax,eax
 0045A2C4    pop         edx
 0045A2C5    pop         ecx
 0045A2C6    pop         ecx
 0045A2C7    mov         dword ptr fs:[eax],edx
 0045A2CA    push        45A2DF
 0045A2CF    mov         eax,dword ptr [ebp-8]
 0045A2D2    call        TObject.Free
 0045A2D7    ret
>0045A2D8    jmp         @HandleFinally
>0045A2DD    jmp         0045A2CF
 0045A2DF    pop         ebx
 0045A2E0    mov         esp,ebp
 0045A2E2    pop         ebp
 0045A2E3    ret
end;*}

//0045A2E4
function TEnumerator<System.Rtti.TRttiMethod>.MoveNext:Boolean;
begin
{*
 0045A2E4    mov         edx,dword ptr [eax]
 0045A2E6    call        dword ptr [edx+4]
 0045A2E9    ret
*}
end;

//0045A334
procedure sub_0045A334(?:TList<System.Rtti.TRttiMethod>);
begin
{*
 0045A334    add         eax,8
 0045A337    call        004357A0
 0045A33C    ret
*}
end;

//0045A340
{*procedure sub_0045A340(?:?; ?:?);
begin
 0045A340    push        ebx
 0045A341    mov         edx,dword ptr [edx]
 0045A343    mov         ebx,dword ptr [eax]
 0045A345    call        dword ptr [ebx+8]
 0045A348    pop         ebx
 0045A349    ret
end;*}

//0045A34C
{*procedure sub_0045A34C(?:?; ?:?; ?:?);
begin
 0045A34C    push        ebx
 0045A34D    mov         edx,dword ptr [edx]
 0045A34F    mov         ecx,dword ptr [ecx]
 0045A351    mov         eax,dword ptr [eax+24]
 0045A354    mov         ebx,dword ptr [eax]
 0045A356    call        dword ptr [ebx+0C]
 0045A359    pop         ebx
 0045A35A    ret
end;*}

//0045A35C
procedure sub_0045A35C;
begin
{*
 0045A35C    call        TList<System.Rtti.TRttiMethod>.GetEnumerator
 0045A361    ret
*}
end;

//0045A364
{*procedure sub_0045A364(?:?);
begin
 0045A364    push        ebx
 0045A365    cmp         word ptr [eax+2A],0
>0045A36A    je          0045A379
 0045A36C    push        ecx
 0045A36D    mov         ebx,eax
 0045A36F    mov         ecx,edx
 0045A371    mov         edx,eax
 0045A373    mov         eax,dword ptr [ebx+2C]
 0045A376    call        dword ptr [ebx+28]
 0045A379    pop         ebx
 0045A37A    ret
end;*}

//0045A37C
constructor sub_0045A37C;
begin
{*
 0045A37C    push        ebp
 0045A37D    mov         ebp,esp
 0045A37F    push        0
 0045A381    push        ebx
 0045A382    push        esi
 0045A383    test        dl,dl
>0045A385    je          0045A38F
 0045A387    add         esp,0FFFFFFF0
 0045A38A    call        @ClassCreate
 0045A38F    mov         ebx,edx
 0045A391    mov         esi,eax
 0045A393    xor         eax,eax
 0045A395    push        ebp
 0045A396    push        45A3D0
 0045A39B    push        dword ptr fs:[eax]
 0045A39E    mov         dword ptr fs:[eax],esp
 0045A3A1    lea         edx,[ebp-4]
 0045A3A4    mov         eax,[00465240];TComparer<System.Rtti.TRttiMethod>
 0045A3A9    call        TComparer<System.Rtti.TRttiMethod>.Default
 0045A3AE    mov         ecx,dword ptr [ebp-4]
 0045A3B1    xor         edx,edx
 0045A3B3    mov         eax,esi
 0045A3B5    call        0045A3F4
 0045A3BA    xor         eax,eax
 0045A3BC    pop         edx
 0045A3BD    pop         ecx
 0045A3BE    pop         ecx
 0045A3BF    mov         dword ptr fs:[eax],edx
 0045A3C2    push        45A3D7
 0045A3C7    lea         eax,[ebp-4]
 0045A3CA    call        @IntfClear
 0045A3CF    ret
>0045A3D0    jmp         @HandleFinally
>0045A3D5    jmp         0045A3C7
 0045A3D7    mov         eax,esi
 0045A3D9    test        bl,bl
>0045A3DB    je          0045A3EC
 0045A3DD    call        @AfterConstruction
 0045A3E2    pop         dword ptr fs:[0]
 0045A3E9    add         esp,0C
 0045A3EC    mov         eax,esi
 0045A3EE    pop         esi
 0045A3EF    pop         ebx
 0045A3F0    pop         ecx
 0045A3F1    pop         ebp
 0045A3F2    ret
*}
end;

//0045A3F4
constructor sub_0045A3F4(AComparer:IComparer<System.Rtti.TRttiMethod>);
begin
{*
 0045A3F4    push        ebp
 0045A3F5    mov         ebp,esp
 0045A3F7    push        0
 0045A3F9    push        ebx
 0045A3FA    push        esi
 0045A3FB    push        edi
 0045A3FC    test        dl,dl
>0045A3FE    je          0045A408
 0045A400    add         esp,0FFFFFFF0
 0045A403    call        @ClassCreate
 0045A408    mov         esi,ecx
 0045A40A    mov         ebx,edx
 0045A40C    mov         edi,eax
 0045A40E    xor         eax,eax
 0045A410    push        ebp
 0045A411    push        45A47F
 0045A416    push        dword ptr fs:[eax]
 0045A419    mov         dword ptr fs:[eax],esp
 0045A41C    xor         edx,edx
 0045A41E    mov         eax,edi
 0045A420    call        TObject.Create
 0045A425    mov         dword ptr [edi+14],edi;TList<System.Rtti.TRttiMethod>.FOnNotify:TCollectionNotifyEvent<S...
 0045A428    mov         dword ptr [edi+10],45A340;TList<System.Rtti.TRttiMethod>.FOnNotify:TCollectionNotifyEven...
 0045A42F    mov         dword ptr [edi+1C],edi
 0045A432    mov         dword ptr [edi+18],45A34C;sub_0045A34C
 0045A439    mov         eax,[0044DF70];TList<System.Rtti.TRttiMethod>.arrayofT
 0045A43E    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TRttiMethod>.FComparer:IComparer<System.Rtti.TR...
 0045A441    lea         eax,[edi+24]
 0045A444    mov         edx,esi
 0045A446    call        @IntfCopy
 0045A44B    cmp         dword ptr [edi+24],0
>0045A44F    jne         0045A469
 0045A451    lea         edx,[ebp-4]
 0045A454    mov         eax,[00465240];TComparer<System.Rtti.TRttiMethod>
 0045A459    call        TComparer<System.Rtti.TRttiMethod>.Default
 0045A45E    mov         edx,dword ptr [ebp-4]
 0045A461    lea         eax,[edi+24]
 0045A464    call        @IntfCopy
 0045A469    xor         eax,eax
 0045A46B    pop         edx
 0045A46C    pop         ecx
 0045A46D    pop         ecx
 0045A46E    mov         dword ptr fs:[eax],edx
 0045A471    push        45A486
 0045A476    lea         eax,[ebp-4]
 0045A479    call        @IntfClear
 0045A47E    ret
>0045A47F    jmp         @HandleFinally
>0045A484    jmp         0045A476
 0045A486    mov         eax,edi
 0045A488    test        bl,bl
>0045A48A    je          0045A49B
 0045A48C    call        @AfterConstruction
 0045A491    pop         dword ptr fs:[0]
 0045A498    add         esp,0C
 0045A49B    mov         eax,edi
 0045A49D    pop         edi
 0045A49E    pop         esi
 0045A49F    pop         ebx
 0045A4A0    pop         ecx
 0045A4A1    pop         ebp
 0045A4A2    ret
*}
end;

//0045A4A4
destructor TList<System.Rtti.TRttiMethod>.Destroy();
begin
{*
 0045A4A4    push        ebx
 0045A4A5    push        esi
 0045A4A6    call        @BeforeDestruction
 0045A4AB    mov         ebx,edx
 0045A4AD    mov         esi,eax
 0045A4AF    cmp         dword ptr [esi+8],0;TList<System.Rtti.TRttiMethod>.FCount:Integer
>0045A4B3    jle         0045A4BE
 0045A4B5    xor         edx,edx
 0045A4B7    mov         eax,esi
 0045A4B9    call        0045A334
 0045A4BE    push        0
 0045A4C0    lea         eax,[esi+20]
 0045A4C3    mov         ecx,1
 0045A4C8    mov         edx,dword ptr ds:[44DF70];TList<System.Rtti.TRttiMethod>.arrayofT
 0045A4CE    call        @DynArraySetLength
 0045A4D3    add         esp,4
 0045A4D6    mov         dl,0FC
 0045A4D8    and         dl,bl
 0045A4DA    mov         eax,esi
 0045A4DC    call        TEnumerable<System.Rtti.TRttiMethod>.Destroy
 0045A4E1    test        bl,bl
>0045A4E3    jle         0045A4EC
 0045A4E5    mov         eax,esi
 0045A4E7    call        @ClassDestroy
 0045A4EC    pop         esi
 0045A4ED    pop         ebx
 0045A4EE    ret
*}
end;

//0045A4F0
{*procedure TList<System.Rtti.TRttiMethod>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045A4F0    push        ebp
 0045A4F1    mov         ebp,esp
 0045A4F3    add         esp,0FFFFFFF0
 0045A4F6    mov         dword ptr [ebp-8],ecx
 0045A4F9    mov         dword ptr [ebp-4],edx
 0045A4FC    push        dword ptr [ebp+4]
 0045A4FF    mov         eax,dword ptr [ebp-8]
 0045A502    mov         dword ptr [ebp-10],eax
 0045A505    mov         byte ptr [ebp-0C],0
 0045A509    lea         eax,[ebp-10]
 0045A50C    push        eax
 0045A50D    push        0
 0045A50F    mov         ecx,dword ptr [ebp-4]
 0045A512    mov         dl,1
 0045A514    mov         eax,[004180BC];EListError
 0045A519    call        Exception.CreateFmt;EListError.Create
>0045A51E    jmp         @RaiseExcept
end;*}

//0045A528
procedure TList<System.Rtti.TRttiMethod>.Add(Value:TRttiMethod);
begin
{*
 0045A528    push        ecx
 0045A529    mov         dword ptr [esp],edx
 0045A52C    mov         edx,esp
 0045A52E    add         eax,8
 0045A531    call        0043489C
 0045A536    pop         edx
 0045A537    ret
*}
end;

//0045A538
procedure TList<System.Rtti.TRttiMethod>.AddRange(Values:TRttiMethod);
begin
{*
 0045A538    push        ecx
 0045A539    mov         dword ptr [esp],edx
 0045A53C    push        ecx
 0045A53D    mov         ecx,dword ptr [esp+4]
 0045A541    mov         edx,dword ptr [eax+8]
 0045A544    call        TList<System.Rtti.TRttiMethod>.InsertRange
 0045A549    pop         edx
 0045A54A    ret
*}
end;

//0045A54C
{*procedure TList<System.Rtti.TRttiMethod>.InsertRange(Index:Integer; Values:TRttiMethod; ?:?);
begin
 0045A54C    push        ebp
 0045A54D    mov         ebp,esp
 0045A54F    push        ecx
 0045A550    mov         dword ptr [ebp-4],ecx
 0045A553    mov         ecx,dword ptr [ebp+8]
 0045A556    inc         ecx
 0045A557    push        ecx
 0045A558    mov         ecx,dword ptr [ebp-4]
 0045A55B    add         eax,8
 0045A55E    call        0043546C
 0045A563    pop         ecx
 0045A564    pop         ebp
 0045A565    ret         4
end;*}

//0045A568
{*procedure TList<System.Rtti.TRttiMethod>.ToArray(?:?);
begin
 0045A568    push        ecx
 0045A569    mov         dword ptr [esp],edx
 0045A56C    mov         edx,dword ptr [esp]
 0045A56F    add         eax,8
 0045A572    call        00435980
 0045A577    pop         edx
 0045A578    ret
end;*}

//0045A57C
procedure TList<System.Rtti.TRttiMethod>.GetEnumerator;
begin
{*
 0045A57C    mov         ecx,eax
 0045A57E    mov         dl,1
 0045A580    mov         eax,[0044E19C];TList<System.Rtti.TRttiMethod>.TEnumerator
 0045A585    call        0045A5B8
 0045A58A    ret
*}
end;

//0045A58C
{*function sub_0045A58C(?:?):?;
begin
 0045A58C    push        ebx
 0045A58D    push        esi
 0045A58E    mov         ebx,dword ptr [eax+4]
 0045A591    mov         esi,dword ptr [eax+8]
 0045A594    lea         eax,[ebx+8]
 0045A597    mov         edx,esi
 0045A599    call        00434534
 0045A59E    mov         eax,dword ptr [ebx+20]
 0045A5A1    mov         eax,dword ptr [eax+esi*4]
 0045A5A4    pop         esi
 0045A5A5    pop         ebx
 0045A5A6    ret
end;*}

//0045A5A8
procedure sub_0045A5A8;
begin
{*
 0045A5A8    call        0045A58C
 0045A5AD    ret
*}
end;

//0045A5B0
procedure sub_0045A5B0;
begin
{*
 0045A5B0    call        TList<System.Rtti.TRttiMethod>.TEnumerator.MoveNext
 0045A5B5    ret
*}
end;

//0045A5B8
constructor sub_0045A5B8(AList:TList<System.Rtti.TRttiMethod>);
begin
{*
 0045A5B8    push        ebx
 0045A5B9    push        esi
 0045A5BA    push        edi
 0045A5BB    test        dl,dl
>0045A5BD    je          0045A5C7
 0045A5BF    add         esp,0FFFFFFF0
 0045A5C2    call        @ClassCreate
 0045A5C7    mov         esi,ecx
 0045A5C9    mov         ebx,edx
 0045A5CB    mov         edi,eax
 0045A5CD    xor         edx,edx
 0045A5CF    mov         eax,edi
 0045A5D1    call        TObject.Create
 0045A5D6    mov         dword ptr [edi+4],esi;TList<System.Rtti.TRttiMethod>.TEnumerator.FList:TList<System.Rtti...
 0045A5D9    mov         dword ptr [edi+8],0FFFFFFFF
 0045A5E0    mov         eax,edi
 0045A5E2    test        bl,bl
>0045A5E4    je          0045A5F5
 0045A5E6    call        @AfterConstruction
 0045A5EB    pop         dword ptr fs:[0]
 0045A5F2    add         esp,0C
 0045A5F5    mov         eax,edi
 0045A5F7    pop         edi
 0045A5F8    pop         esi
 0045A5F9    pop         ebx
 0045A5FA    ret
*}
end;

//0045A5FC
function TList<System.Rtti.TRttiMethod>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045A5FC    mov         edx,dword ptr [eax+4]
 0045A5FF    mov         edx,dword ptr [edx+8]
 0045A602    cmp         edx,dword ptr [eax+8]
>0045A605    jg          0045A60A
 0045A607    xor         eax,eax
 0045A609    ret
 0045A60A    inc         dword ptr [eax+8]
 0045A60D    mov         edx,dword ptr [eax+4]
 0045A610    mov         edx,dword ptr [edx+8]
 0045A613    cmp         edx,dword ptr [eax+8]
 0045A616    setg        al
 0045A619    ret
*}
end;

//0045A61C
{*procedure sub_0045A61C(?:TListHelper; ?:TList<System.Rtti.TRttiMethod>; ?:?);
begin
 0045A61C    push        ebx
 0045A61D    push        esi
 0045A61E    push        edi
 0045A61F    push        ecx
 0045A620    mov         dword ptr [esp],ecx
 0045A623    mov         esi,edx
 0045A625    mov         eax,dword ptr [esi+8];TList<System.Rtti.TRttiMethod>.FCount:Integer
 0045A628    push        eax
 0045A629    mov         eax,dword ptr [esp+4]
 0045A62D    mov         ecx,1
 0045A632    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 0045A638    call        @DynArraySetLength
 0045A63D    add         esp,4
 0045A640    mov         edi,dword ptr [esi+8];TList<System.Rtti.TRttiMethod>.FCount:Integer
 0045A643    dec         edi
 0045A644    test        edi,edi
>0045A646    jl          0045A667
 0045A648    inc         edi
 0045A649    xor         ebx,ebx
 0045A64B    lea         eax,[esi+8];TList<System.Rtti.TRttiMethod>.FCount:Integer
 0045A64E    mov         edx,ebx
 0045A650    call        00434534
 0045A655    mov         eax,dword ptr [esi+20]
 0045A658    mov         eax,dword ptr [eax+ebx*4]
 0045A65B    mov         edx,dword ptr [esp]
 0045A65E    mov         edx,dword ptr [edx]
 0045A660    mov         dword ptr [edx+ebx*4],eax
 0045A663    inc         ebx
 0045A664    dec         edi
>0045A665    jne         0045A64B
 0045A667    pop         edx
 0045A668    pop         edi
 0045A669    pop         esi
 0045A66A    pop         ebx
 0045A66B    ret
end;*}

//0045A66C
destructor TEnumerable<System.Rtti.TRttiField>.Destroy();
begin
{*
 0045A66C    push        ebx
 0045A66D    push        esi
 0045A66E    call        @BeforeDestruction
 0045A673    mov         ebx,edx
 0045A675    mov         esi,eax
 0045A677    mov         dl,0FC
 0045A679    and         dl,bl
 0045A67B    mov         eax,esi
 0045A67D    call        TObject.Destroy
 0045A682    test        bl,bl
>0045A684    jle         0045A68D
 0045A686    mov         eax,esi
 0045A688    call        @ClassDestroy
 0045A68D    pop         esi
 0045A68E    pop         ebx
 0045A68F    ret
*}
end;

//0045A690
function TEnumerable<System.Rtti.TRttiField>.GetEnumerator:TEnumerator<System.Rtti.TRttiField>;
begin
{*
 0045A690    mov         edx,dword ptr [eax]
 0045A692    call        dword ptr [edx]
 0045A694    ret
*}
end;

//0045A698
{*procedure TEnumerable<System.Rtti.TRttiField>.ToArray(?:?);
begin
 0045A698    push        ebp
 0045A699    mov         ebp,esp
 0045A69B    add         esp,0FFFFFFF4
 0045A69E    push        ebx
 0045A69F    mov         dword ptr [ebp-4],edx
 0045A6A2    mov         ebx,eax
 0045A6A4    mov         dl,1
 0045A6A6    mov         eax,[0044F6A8];TList<System.Rtti.TRttiField>
 0045A6AB    call        0045A7E4
 0045A6B0    mov         dword ptr [ebp-8],eax
 0045A6B3    xor         eax,eax
 0045A6B5    push        ebp
 0045A6B6    push        45A740
 0045A6BB    push        dword ptr fs:[eax]
 0045A6BE    mov         dword ptr fs:[eax],esp
 0045A6C1    mov         eax,ebx
 0045A6C3    call        TEnumerable<System.Rtti.TRttiField>.GetEnumerator
 0045A6C8    mov         dword ptr [ebp-0C],eax
 0045A6CB    xor         eax,eax
 0045A6CD    push        ebp
 0045A6CE    push        45A718
 0045A6D3    push        dword ptr fs:[eax]
 0045A6D6    mov         dword ptr fs:[eax],esp
>0045A6D9    jmp         0045A6EE
 0045A6DB    mov         eax,dword ptr [ebp-0C]
 0045A6DE    mov         edx,dword ptr [eax]
 0045A6E0    call        dword ptr [edx]
 0045A6E2    mov         ebx,eax
 0045A6E4    mov         edx,ebx
 0045A6E6    mov         eax,dword ptr [ebp-8]
 0045A6E9    call        TList<System.Rtti.TRttiField>.Add
 0045A6EE    mov         eax,dword ptr [ebp-0C]
 0045A6F1    call        TEnumerator<System.Rtti.TRttiField>.MoveNext
 0045A6F6    test        al,al
>0045A6F8    jne         0045A6DB
 0045A6FA    xor         eax,eax
 0045A6FC    pop         edx
 0045A6FD    pop         ecx
 0045A6FE    pop         ecx
 0045A6FF    mov         dword ptr fs:[eax],edx
 0045A702    push        45A71F
 0045A707    cmp         dword ptr [ebp-0C],0
>0045A70B    je          0045A717
 0045A70D    mov         dl,1
 0045A70F    mov         eax,dword ptr [ebp-0C]
 0045A712    mov         ecx,dword ptr [eax]
 0045A714    call        dword ptr [ecx-4]
 0045A717    ret
>0045A718    jmp         @HandleFinally
>0045A71D    jmp         0045A707
 0045A71F    mov         edx,dword ptr [ebp-4]
 0045A722    mov         eax,dword ptr [ebp-8]
 0045A725    call        TList<System.Rtti.TRttiField>.ToArray
 0045A72A    xor         eax,eax
 0045A72C    pop         edx
 0045A72D    pop         ecx
 0045A72E    pop         ecx
 0045A72F    mov         dword ptr fs:[eax],edx
 0045A732    push        45A747
 0045A737    mov         eax,dword ptr [ebp-8]
 0045A73A    call        TObject.Free
 0045A73F    ret
>0045A740    jmp         @HandleFinally
>0045A745    jmp         0045A737
 0045A747    pop         ebx
 0045A748    mov         esp,ebp
 0045A74A    pop         ebp
 0045A74B    ret
end;*}

//0045A74C
function TEnumerator<System.Rtti.TRttiField>.MoveNext:Boolean;
begin
{*
 0045A74C    mov         edx,dword ptr [eax]
 0045A74E    call        dword ptr [edx+4]
 0045A751    ret
*}
end;

//0045A79C
procedure sub_0045A79C(?:TList<System.Rtti.TRttiField>);
begin
{*
 0045A79C    add         eax,8
 0045A79F    call        004357A0
 0045A7A4    ret
*}
end;

//0045A7A8
{*procedure sub_0045A7A8(?:?; ?:?);
begin
 0045A7A8    push        ebx
 0045A7A9    mov         edx,dword ptr [edx]
 0045A7AB    mov         ebx,dword ptr [eax]
 0045A7AD    call        dword ptr [ebx+8]
 0045A7B0    pop         ebx
 0045A7B1    ret
end;*}

//0045A7B4
{*procedure sub_0045A7B4(?:?; ?:?; ?:?);
begin
 0045A7B4    push        ebx
 0045A7B5    mov         edx,dword ptr [edx]
 0045A7B7    mov         ecx,dword ptr [ecx]
 0045A7B9    mov         eax,dword ptr [eax+24]
 0045A7BC    mov         ebx,dword ptr [eax]
 0045A7BE    call        dword ptr [ebx+0C]
 0045A7C1    pop         ebx
 0045A7C2    ret
end;*}

//0045A7C4
procedure sub_0045A7C4;
begin
{*
 0045A7C4    call        TList<System.Rtti.TRttiField>.GetEnumerator
 0045A7C9    ret
*}
end;

//0045A7CC
{*procedure sub_0045A7CC(?:?);
begin
 0045A7CC    push        ebx
 0045A7CD    cmp         word ptr [eax+2A],0
>0045A7D2    je          0045A7E1
 0045A7D4    push        ecx
 0045A7D5    mov         ebx,eax
 0045A7D7    mov         ecx,edx
 0045A7D9    mov         edx,eax
 0045A7DB    mov         eax,dword ptr [ebx+2C]
 0045A7DE    call        dword ptr [ebx+28]
 0045A7E1    pop         ebx
 0045A7E2    ret
end;*}

//0045A7E4
constructor sub_0045A7E4;
begin
{*
 0045A7E4    push        ebp
 0045A7E5    mov         ebp,esp
 0045A7E7    push        0
 0045A7E9    push        ebx
 0045A7EA    push        esi
 0045A7EB    test        dl,dl
>0045A7ED    je          0045A7F7
 0045A7EF    add         esp,0FFFFFFF0
 0045A7F2    call        @ClassCreate
 0045A7F7    mov         ebx,edx
 0045A7F9    mov         esi,eax
 0045A7FB    xor         eax,eax
 0045A7FD    push        ebp
 0045A7FE    push        45A838
 0045A803    push        dword ptr fs:[eax]
 0045A806    mov         dword ptr fs:[eax],esp
 0045A809    lea         edx,[ebp-4]
 0045A80C    mov         eax,[004654B0];TComparer<System.Rtti.TRttiField>
 0045A811    call        TComparer<System.Rtti.TRttiField>.Default
 0045A816    mov         ecx,dword ptr [ebp-4]
 0045A819    xor         edx,edx
 0045A81B    mov         eax,esi
 0045A81D    call        0045A85C
 0045A822    xor         eax,eax
 0045A824    pop         edx
 0045A825    pop         ecx
 0045A826    pop         ecx
 0045A827    mov         dword ptr fs:[eax],edx
 0045A82A    push        45A83F
 0045A82F    lea         eax,[ebp-4]
 0045A832    call        @IntfClear
 0045A837    ret
>0045A838    jmp         @HandleFinally
>0045A83D    jmp         0045A82F
 0045A83F    mov         eax,esi
 0045A841    test        bl,bl
>0045A843    je          0045A854
 0045A845    call        @AfterConstruction
 0045A84A    pop         dword ptr fs:[0]
 0045A851    add         esp,0C
 0045A854    mov         eax,esi
 0045A856    pop         esi
 0045A857    pop         ebx
 0045A858    pop         ecx
 0045A859    pop         ebp
 0045A85A    ret
*}
end;

//0045A85C
constructor sub_0045A85C(AComparer:IComparer<System.Rtti.TRttiField>);
begin
{*
 0045A85C    push        ebp
 0045A85D    mov         ebp,esp
 0045A85F    push        0
 0045A861    push        ebx
 0045A862    push        esi
 0045A863    push        edi
 0045A864    test        dl,dl
>0045A866    je          0045A870
 0045A868    add         esp,0FFFFFFF0
 0045A86B    call        @ClassCreate
 0045A870    mov         esi,ecx
 0045A872    mov         ebx,edx
 0045A874    mov         edi,eax
 0045A876    xor         eax,eax
 0045A878    push        ebp
 0045A879    push        45A8E7
 0045A87E    push        dword ptr fs:[eax]
 0045A881    mov         dword ptr fs:[eax],esp
 0045A884    xor         edx,edx
 0045A886    mov         eax,edi
 0045A888    call        TObject.Create
 0045A88D    mov         dword ptr [edi+14],edi;TList<System.Rtti.TRttiField>.FOnNotify:TCollectionNotifyEvent<Sy...
 0045A890    mov         dword ptr [edi+10],45A7A8;TList<System.Rtti.TRttiField>.FOnNotify:TCollectionNotifyEvent...
 0045A897    mov         dword ptr [edi+1C],edi
 0045A89A    mov         dword ptr [edi+18],45A7B4;sub_0045A7B4
 0045A8A1    mov         eax,[0044F2CC];TList<System.Rtti.TRttiField>.arrayofT
 0045A8A6    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TRttiField>.FComparer:IComparer<System.Rtti.TRt...
 0045A8A9    lea         eax,[edi+24]
 0045A8AC    mov         edx,esi
 0045A8AE    call        @IntfCopy
 0045A8B3    cmp         dword ptr [edi+24],0
>0045A8B7    jne         0045A8D1
 0045A8B9    lea         edx,[ebp-4]
 0045A8BC    mov         eax,[004654B0];TComparer<System.Rtti.TRttiField>
 0045A8C1    call        TComparer<System.Rtti.TRttiField>.Default
 0045A8C6    mov         edx,dword ptr [ebp-4]
 0045A8C9    lea         eax,[edi+24]
 0045A8CC    call        @IntfCopy
 0045A8D1    xor         eax,eax
 0045A8D3    pop         edx
 0045A8D4    pop         ecx
 0045A8D5    pop         ecx
 0045A8D6    mov         dword ptr fs:[eax],edx
 0045A8D9    push        45A8EE
 0045A8DE    lea         eax,[ebp-4]
 0045A8E1    call        @IntfClear
 0045A8E6    ret
>0045A8E7    jmp         @HandleFinally
>0045A8EC    jmp         0045A8DE
 0045A8EE    mov         eax,edi
 0045A8F0    test        bl,bl
>0045A8F2    je          0045A903
 0045A8F4    call        @AfterConstruction
 0045A8F9    pop         dword ptr fs:[0]
 0045A900    add         esp,0C
 0045A903    mov         eax,edi
 0045A905    pop         edi
 0045A906    pop         esi
 0045A907    pop         ebx
 0045A908    pop         ecx
 0045A909    pop         ebp
 0045A90A    ret
*}
end;

//0045A90C
destructor TList<System.Rtti.TRttiField>.Destroy();
begin
{*
 0045A90C    push        ebx
 0045A90D    push        esi
 0045A90E    call        @BeforeDestruction
 0045A913    mov         ebx,edx
 0045A915    mov         esi,eax
 0045A917    cmp         dword ptr [esi+8],0;TList<System.Rtti.TRttiField>.FCount:Integer
>0045A91B    jle         0045A926
 0045A91D    xor         edx,edx
 0045A91F    mov         eax,esi
 0045A921    call        0045A79C
 0045A926    push        0
 0045A928    lea         eax,[esi+20]
 0045A92B    mov         ecx,1
 0045A930    mov         edx,dword ptr ds:[44F2CC];TList<System.Rtti.TRttiField>.arrayofT
 0045A936    call        @DynArraySetLength
 0045A93B    add         esp,4
 0045A93E    mov         dl,0FC
 0045A940    and         dl,bl
 0045A942    mov         eax,esi
 0045A944    call        TEnumerable<System.Rtti.TRttiField>.Destroy
 0045A949    test        bl,bl
>0045A94B    jle         0045A954
 0045A94D    mov         eax,esi
 0045A94F    call        @ClassDestroy
 0045A954    pop         esi
 0045A955    pop         ebx
 0045A956    ret
*}
end;

//0045A958
{*procedure TList<System.Rtti.TRttiField>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045A958    push        ebp
 0045A959    mov         ebp,esp
 0045A95B    add         esp,0FFFFFFF0
 0045A95E    mov         dword ptr [ebp-8],ecx
 0045A961    mov         dword ptr [ebp-4],edx
 0045A964    push        dword ptr [ebp+4]
 0045A967    mov         eax,dword ptr [ebp-8]
 0045A96A    mov         dword ptr [ebp-10],eax
 0045A96D    mov         byte ptr [ebp-0C],0
 0045A971    lea         eax,[ebp-10]
 0045A974    push        eax
 0045A975    push        0
 0045A977    mov         ecx,dword ptr [ebp-4]
 0045A97A    mov         dl,1
 0045A97C    mov         eax,[004180BC];EListError
 0045A981    call        Exception.CreateFmt;EListError.Create
>0045A986    jmp         @RaiseExcept
end;*}

//0045A990
procedure TList<System.Rtti.TRttiField>.Add(Value:TRttiField);
begin
{*
 0045A990    push        ecx
 0045A991    mov         dword ptr [esp],edx
 0045A994    mov         edx,esp
 0045A996    add         eax,8
 0045A999    call        0043489C
 0045A99E    pop         edx
 0045A99F    ret
*}
end;

//0045A9A0
procedure TList<System.Rtti.TRttiField>.AddRange(Values:TRttiField);
begin
{*
 0045A9A0    push        ecx
 0045A9A1    mov         dword ptr [esp],edx
 0045A9A4    push        ecx
 0045A9A5    mov         ecx,dword ptr [esp+4]
 0045A9A9    mov         edx,dword ptr [eax+8]
 0045A9AC    call        TList<System.Rtti.TRttiField>.InsertRange
 0045A9B1    pop         edx
 0045A9B2    ret
*}
end;

//0045A9B4
{*procedure TList<System.Rtti.TRttiField>.InsertRange(Index:Integer; Values:TRttiField; ?:?);
begin
 0045A9B4    push        ebp
 0045A9B5    mov         ebp,esp
 0045A9B7    push        ecx
 0045A9B8    mov         dword ptr [ebp-4],ecx
 0045A9BB    mov         ecx,dword ptr [ebp+8]
 0045A9BE    inc         ecx
 0045A9BF    push        ecx
 0045A9C0    mov         ecx,dword ptr [ebp-4]
 0045A9C3    add         eax,8
 0045A9C6    call        0043546C
 0045A9CB    pop         ecx
 0045A9CC    pop         ebp
 0045A9CD    ret         4
end;*}

//0045A9D0
{*procedure TList<System.Rtti.TRttiField>.ToArray(?:?);
begin
 0045A9D0    push        ecx
 0045A9D1    mov         dword ptr [esp],edx
 0045A9D4    mov         edx,dword ptr [esp]
 0045A9D7    add         eax,8
 0045A9DA    call        00435980
 0045A9DF    pop         edx
 0045A9E0    ret
end;*}

//0045A9E4
procedure TList<System.Rtti.TRttiField>.GetEnumerator;
begin
{*
 0045A9E4    mov         ecx,eax
 0045A9E6    mov         dl,1
 0045A9E8    mov         eax,[0044F4F8];TList<System.Rtti.TRttiField>.TEnumerator
 0045A9ED    call        0045AA20
 0045A9F2    ret
*}
end;

//0045A9F4
{*function sub_0045A9F4(?:?):?;
begin
 0045A9F4    push        ebx
 0045A9F5    push        esi
 0045A9F6    mov         ebx,dword ptr [eax+4]
 0045A9F9    mov         esi,dword ptr [eax+8]
 0045A9FC    lea         eax,[ebx+8]
 0045A9FF    mov         edx,esi
 0045AA01    call        00434534
 0045AA06    mov         eax,dword ptr [ebx+20]
 0045AA09    mov         eax,dword ptr [eax+esi*4]
 0045AA0C    pop         esi
 0045AA0D    pop         ebx
 0045AA0E    ret
end;*}

//0045AA10
procedure sub_0045AA10;
begin
{*
 0045AA10    call        0045A9F4
 0045AA15    ret
*}
end;

//0045AA18
procedure sub_0045AA18;
begin
{*
 0045AA18    call        TList<System.Rtti.TRttiField>.TEnumerator.MoveNext
 0045AA1D    ret
*}
end;

//0045AA20
constructor sub_0045AA20(AList:TList<System.Rtti.TRttiField>);
begin
{*
 0045AA20    push        ebx
 0045AA21    push        esi
 0045AA22    push        edi
 0045AA23    test        dl,dl
>0045AA25    je          0045AA2F
 0045AA27    add         esp,0FFFFFFF0
 0045AA2A    call        @ClassCreate
 0045AA2F    mov         esi,ecx
 0045AA31    mov         ebx,edx
 0045AA33    mov         edi,eax
 0045AA35    xor         edx,edx
 0045AA37    mov         eax,edi
 0045AA39    call        TObject.Create
 0045AA3E    mov         dword ptr [edi+4],esi;TList<System.Rtti.TRttiField>.TEnumerator.FList:TList<System.Rtti....
 0045AA41    mov         dword ptr [edi+8],0FFFFFFFF
 0045AA48    mov         eax,edi
 0045AA4A    test        bl,bl
>0045AA4C    je          0045AA5D
 0045AA4E    call        @AfterConstruction
 0045AA53    pop         dword ptr fs:[0]
 0045AA5A    add         esp,0C
 0045AA5D    mov         eax,edi
 0045AA5F    pop         edi
 0045AA60    pop         esi
 0045AA61    pop         ebx
 0045AA62    ret
*}
end;

//0045AA64
function TList<System.Rtti.TRttiField>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045AA64    mov         edx,dword ptr [eax+4]
 0045AA67    mov         edx,dword ptr [edx+8]
 0045AA6A    cmp         edx,dword ptr [eax+8]
>0045AA6D    jg          0045AA72
 0045AA6F    xor         eax,eax
 0045AA71    ret
 0045AA72    inc         dword ptr [eax+8]
 0045AA75    mov         edx,dword ptr [eax+4]
 0045AA78    mov         edx,dword ptr [edx+8]
 0045AA7B    cmp         edx,dword ptr [eax+8]
 0045AA7E    setg        al
 0045AA81    ret
*}
end;

//0045AA84
{*procedure sub_0045AA84(?:?; ?:?; ?:?);
begin
 0045AA84    push        ebx
 0045AA85    push        esi
 0045AA86    push        edi
 0045AA87    push        ecx
 0045AA88    mov         dword ptr [esp],ecx
 0045AA8B    mov         esi,edx
 0045AA8D    mov         eax,dword ptr [esi+8]
 0045AA90    push        eax
 0045AA91    mov         eax,dword ptr [esp+4]
 0045AA95    mov         ecx,1
 0045AA9A    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 0045AAA0    call        @DynArraySetLength
 0045AAA5    add         esp,4
 0045AAA8    mov         edi,dword ptr [esi+8]
 0045AAAB    dec         edi
 0045AAAC    test        edi,edi
>0045AAAE    jl          0045AACF
 0045AAB0    inc         edi
 0045AAB1    xor         ebx,ebx
 0045AAB3    lea         eax,[esi+8]
 0045AAB6    mov         edx,ebx
 0045AAB8    call        00434534
 0045AABD    mov         eax,dword ptr [esi+20]
 0045AAC0    mov         eax,dword ptr [eax+ebx*4]
 0045AAC3    mov         edx,dword ptr [esp]
 0045AAC6    mov         edx,dword ptr [edx]
 0045AAC8    mov         dword ptr [edx+ebx*4],eax
 0045AACB    inc         ebx
 0045AACC    dec         edi
>0045AACD    jne         0045AAB3
 0045AACF    pop         edx
 0045AAD0    pop         edi
 0045AAD1    pop         esi
 0045AAD2    pop         ebx
 0045AAD3    ret
end;*}

//0045AAD4
destructor TEnumerable<System.Rtti.TRttiManagedField>.Destroy();
begin
{*
 0045AAD4    push        ebx
 0045AAD5    push        esi
 0045AAD6    call        @BeforeDestruction
 0045AADB    mov         ebx,edx
 0045AADD    mov         esi,eax
 0045AADF    mov         dl,0FC
 0045AAE1    and         dl,bl
 0045AAE3    mov         eax,esi
 0045AAE5    call        TObject.Destroy
 0045AAEA    test        bl,bl
>0045AAEC    jle         0045AAF5
 0045AAEE    mov         eax,esi
 0045AAF0    call        @ClassDestroy
 0045AAF5    pop         esi
 0045AAF6    pop         ebx
 0045AAF7    ret
*}
end;

//0045AAF8
function TEnumerable<System.Rtti.TRttiManagedField>.GetEnumerator:TEnumerator<System.Rtti.TRttiManagedField>;
begin
{*
 0045AAF8    mov         edx,dword ptr [eax]
 0045AAFA    call        dword ptr [edx]
 0045AAFC    ret
*}
end;

//0045AB00
{*procedure TEnumerable<System.Rtti.TRttiManagedField>.ToArray(?:?);
begin
 0045AB00    push        ebp
 0045AB01    mov         ebp,esp
 0045AB03    add         esp,0FFFFFFF4
 0045AB06    push        ebx
 0045AB07    mov         dword ptr [ebp-4],edx
 0045AB0A    mov         ebx,eax
 0045AB0C    mov         dl,1
 0045AB0E    mov         eax,[00452A10];TList<System.Rtti.TRttiManagedField>
 0045AB13    call        0045AC4C
 0045AB18    mov         dword ptr [ebp-8],eax
 0045AB1B    xor         eax,eax
 0045AB1D    push        ebp
 0045AB1E    push        45ABA8
 0045AB23    push        dword ptr fs:[eax]
 0045AB26    mov         dword ptr fs:[eax],esp
 0045AB29    mov         eax,ebx
 0045AB2B    call        TEnumerable<System.Rtti.TRttiManagedField>.GetEnumerator
 0045AB30    mov         dword ptr [ebp-0C],eax
 0045AB33    xor         eax,eax
 0045AB35    push        ebp
 0045AB36    push        45AB80
 0045AB3B    push        dword ptr fs:[eax]
 0045AB3E    mov         dword ptr fs:[eax],esp
>0045AB41    jmp         0045AB56
 0045AB43    mov         eax,dword ptr [ebp-0C]
 0045AB46    mov         edx,dword ptr [eax]
 0045AB48    call        dword ptr [edx]
 0045AB4A    mov         ebx,eax
 0045AB4C    mov         edx,ebx
 0045AB4E    mov         eax,dword ptr [ebp-8]
 0045AB51    call        TList<System.Rtti.TRttiManagedField>.Add
 0045AB56    mov         eax,dword ptr [ebp-0C]
 0045AB59    call        TEnumerator<System.Rtti.TRttiManagedField>.MoveNext
 0045AB5E    test        al,al
>0045AB60    jne         0045AB43
 0045AB62    xor         eax,eax
 0045AB64    pop         edx
 0045AB65    pop         ecx
 0045AB66    pop         ecx
 0045AB67    mov         dword ptr fs:[eax],edx
 0045AB6A    push        45AB87
 0045AB6F    cmp         dword ptr [ebp-0C],0
>0045AB73    je          0045AB7F
 0045AB75    mov         dl,1
 0045AB77    mov         eax,dword ptr [ebp-0C]
 0045AB7A    mov         ecx,dword ptr [eax]
 0045AB7C    call        dword ptr [ecx-4]
 0045AB7F    ret
>0045AB80    jmp         @HandleFinally
>0045AB85    jmp         0045AB6F
 0045AB87    mov         edx,dword ptr [ebp-4]
 0045AB8A    mov         eax,dword ptr [ebp-8]
 0045AB8D    call        TList<System.Rtti.TRttiManagedField>.ToArray
 0045AB92    xor         eax,eax
 0045AB94    pop         edx
 0045AB95    pop         ecx
 0045AB96    pop         ecx
 0045AB97    mov         dword ptr fs:[eax],edx
 0045AB9A    push        45ABAF
 0045AB9F    mov         eax,dword ptr [ebp-8]
 0045ABA2    call        TObject.Free
 0045ABA7    ret
>0045ABA8    jmp         @HandleFinally
>0045ABAD    jmp         0045AB9F
 0045ABAF    pop         ebx
 0045ABB0    mov         esp,ebp
 0045ABB2    pop         ebp
 0045ABB3    ret
end;*}

//0045ABB4
function TEnumerator<System.Rtti.TRttiManagedField>.MoveNext:Boolean;
begin
{*
 0045ABB4    mov         edx,dword ptr [eax]
 0045ABB6    call        dword ptr [edx+4]
 0045ABB9    ret
*}
end;

//0045AC04
procedure sub_0045AC04(?:TList<System.Rtti.TRttiManagedField>);
begin
{*
 0045AC04    add         eax,8
 0045AC07    call        004357A0
 0045AC0C    ret
*}
end;

//0045AC10
{*procedure sub_0045AC10(?:?; ?:?);
begin
 0045AC10    push        ebx
 0045AC11    mov         edx,dword ptr [edx]
 0045AC13    mov         ebx,dword ptr [eax]
 0045AC15    call        dword ptr [ebx+8]
 0045AC18    pop         ebx
 0045AC19    ret
end;*}

//0045AC1C
{*procedure sub_0045AC1C(?:?; ?:?; ?:?);
begin
 0045AC1C    push        ebx
 0045AC1D    mov         edx,dword ptr [edx]
 0045AC1F    mov         ecx,dword ptr [ecx]
 0045AC21    mov         eax,dword ptr [eax+24]
 0045AC24    mov         ebx,dword ptr [eax]
 0045AC26    call        dword ptr [ebx+0C]
 0045AC29    pop         ebx
 0045AC2A    ret
end;*}

//0045AC2C
procedure sub_0045AC2C;
begin
{*
 0045AC2C    call        TList<System.Rtti.TRttiManagedField>.GetEnumerator
 0045AC31    ret
*}
end;

//0045AC34
{*procedure sub_0045AC34(?:?);
begin
 0045AC34    push        ebx
 0045AC35    cmp         word ptr [eax+2A],0
>0045AC3A    je          0045AC49
 0045AC3C    push        ecx
 0045AC3D    mov         ebx,eax
 0045AC3F    mov         ecx,edx
 0045AC41    mov         edx,eax
 0045AC43    mov         eax,dword ptr [ebx+2C]
 0045AC46    call        dword ptr [ebx+28]
 0045AC49    pop         ebx
 0045AC4A    ret
end;*}

//0045AC4C
constructor sub_0045AC4C;
begin
{*
 0045AC4C    push        ebp
 0045AC4D    mov         ebp,esp
 0045AC4F    push        0
 0045AC51    push        ebx
 0045AC52    push        esi
 0045AC53    test        dl,dl
>0045AC55    je          0045AC5F
 0045AC57    add         esp,0FFFFFFF0
 0045AC5A    call        @ClassCreate
 0045AC5F    mov         ebx,edx
 0045AC61    mov         esi,eax
 0045AC63    xor         eax,eax
 0045AC65    push        ebp
 0045AC66    push        45ACA0
 0045AC6B    push        dword ptr fs:[eax]
 0045AC6E    mov         dword ptr fs:[eax],esp
 0045AC71    lea         edx,[ebp-4]
 0045AC74    mov         eax,[00465724];TComparer<System.Rtti.TRttiManagedField>
 0045AC79    call        TComparer<System.Rtti.TRttiManagedField>.Default
 0045AC7E    mov         ecx,dword ptr [ebp-4]
 0045AC81    xor         edx,edx
 0045AC83    mov         eax,esi
 0045AC85    call        0045ACC4
 0045AC8A    xor         eax,eax
 0045AC8C    pop         edx
 0045AC8D    pop         ecx
 0045AC8E    pop         ecx
 0045AC8F    mov         dword ptr fs:[eax],edx
 0045AC92    push        45ACA7
 0045AC97    lea         eax,[ebp-4]
 0045AC9A    call        @IntfClear
 0045AC9F    ret
>0045ACA0    jmp         @HandleFinally
>0045ACA5    jmp         0045AC97
 0045ACA7    mov         eax,esi
 0045ACA9    test        bl,bl
>0045ACAB    je          0045ACBC
 0045ACAD    call        @AfterConstruction
 0045ACB2    pop         dword ptr fs:[0]
 0045ACB9    add         esp,0C
 0045ACBC    mov         eax,esi
 0045ACBE    pop         esi
 0045ACBF    pop         ebx
 0045ACC0    pop         ecx
 0045ACC1    pop         ebp
 0045ACC2    ret
*}
end;

//0045ACC4
constructor sub_0045ACC4(AComparer:IComparer<System.Rtti.TRttiManagedField>);
begin
{*
 0045ACC4    push        ebp
 0045ACC5    mov         ebp,esp
 0045ACC7    push        0
 0045ACC9    push        ebx
 0045ACCA    push        esi
 0045ACCB    push        edi
 0045ACCC    test        dl,dl
>0045ACCE    je          0045ACD8
 0045ACD0    add         esp,0FFFFFFF0
 0045ACD3    call        @ClassCreate
 0045ACD8    mov         esi,ecx
 0045ACDA    mov         ebx,edx
 0045ACDC    mov         edi,eax
 0045ACDE    xor         eax,eax
 0045ACE0    push        ebp
 0045ACE1    push        45AD4F
 0045ACE6    push        dword ptr fs:[eax]
 0045ACE9    mov         dword ptr fs:[eax],esp
 0045ACEC    xor         edx,edx
 0045ACEE    mov         eax,edi
 0045ACF0    call        TObject.Create
 0045ACF5    mov         dword ptr [edi+14],edi;TList<System.Rtti.TRttiManagedField>.FOnNotify:TCollectionNotifyE...
 0045ACF8    mov         dword ptr [edi+10],45AC10;TList<System.Rtti.TRttiManagedField>.FOnNotify:TCollectionNoti...
 0045ACFF    mov         dword ptr [edi+1C],edi
 0045AD02    mov         dword ptr [edi+18],45AC1C;sub_0045AC1C
 0045AD09    mov         eax,[004525FC];TList<System.Rtti.TRttiManagedField>.arrayofT
 0045AD0E    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TRttiManagedField>.FComparer:IComparer<System.R...
 0045AD11    lea         eax,[edi+24]
 0045AD14    mov         edx,esi
 0045AD16    call        @IntfCopy
 0045AD1B    cmp         dword ptr [edi+24],0
>0045AD1F    jne         0045AD39
 0045AD21    lea         edx,[ebp-4]
 0045AD24    mov         eax,[00465724];TComparer<System.Rtti.TRttiManagedField>
 0045AD29    call        TComparer<System.Rtti.TRttiManagedField>.Default
 0045AD2E    mov         edx,dword ptr [ebp-4]
 0045AD31    lea         eax,[edi+24]
 0045AD34    call        @IntfCopy
 0045AD39    xor         eax,eax
 0045AD3B    pop         edx
 0045AD3C    pop         ecx
 0045AD3D    pop         ecx
 0045AD3E    mov         dword ptr fs:[eax],edx
 0045AD41    push        45AD56
 0045AD46    lea         eax,[ebp-4]
 0045AD49    call        @IntfClear
 0045AD4E    ret
>0045AD4F    jmp         @HandleFinally
>0045AD54    jmp         0045AD46
 0045AD56    mov         eax,edi
 0045AD58    test        bl,bl
>0045AD5A    je          0045AD6B
 0045AD5C    call        @AfterConstruction
 0045AD61    pop         dword ptr fs:[0]
 0045AD68    add         esp,0C
 0045AD6B    mov         eax,edi
 0045AD6D    pop         edi
 0045AD6E    pop         esi
 0045AD6F    pop         ebx
 0045AD70    pop         ecx
 0045AD71    pop         ebp
 0045AD72    ret
*}
end;

//0045AD74
destructor TList<System.Rtti.TRttiManagedField>.Destroy();
begin
{*
 0045AD74    push        ebx
 0045AD75    push        esi
 0045AD76    call        @BeforeDestruction
 0045AD7B    mov         ebx,edx
 0045AD7D    mov         esi,eax
 0045AD7F    cmp         dword ptr [esi+8],0;TList<System.Rtti.TRttiManagedField>.FCount:Integer
>0045AD83    jle         0045AD8E
 0045AD85    xor         edx,edx
 0045AD87    mov         eax,esi
 0045AD89    call        0045AC04
 0045AD8E    push        0
 0045AD90    lea         eax,[esi+20]
 0045AD93    mov         ecx,1
 0045AD98    mov         edx,dword ptr ds:[4525FC];TList<System.Rtti.TRttiManagedField>.arrayofT
 0045AD9E    call        @DynArraySetLength
 0045ADA3    add         esp,4
 0045ADA6    mov         dl,0FC
 0045ADA8    and         dl,bl
 0045ADAA    mov         eax,esi
 0045ADAC    call        TEnumerable<System.Rtti.TRttiManagedField>.Destroy
 0045ADB1    test        bl,bl
>0045ADB3    jle         0045ADBC
 0045ADB5    mov         eax,esi
 0045ADB7    call        @ClassDestroy
 0045ADBC    pop         esi
 0045ADBD    pop         ebx
 0045ADBE    ret
*}
end;

//0045ADC0
{*procedure TList<System.Rtti.TRttiManagedField>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045ADC0    push        ebp
 0045ADC1    mov         ebp,esp
 0045ADC3    add         esp,0FFFFFFF0
 0045ADC6    mov         dword ptr [ebp-8],ecx
 0045ADC9    mov         dword ptr [ebp-4],edx
 0045ADCC    push        dword ptr [ebp+4]
 0045ADCF    mov         eax,dword ptr [ebp-8]
 0045ADD2    mov         dword ptr [ebp-10],eax
 0045ADD5    mov         byte ptr [ebp-0C],0
 0045ADD9    lea         eax,[ebp-10]
 0045ADDC    push        eax
 0045ADDD    push        0
 0045ADDF    mov         ecx,dword ptr [ebp-4]
 0045ADE2    mov         dl,1
 0045ADE4    mov         eax,[004180BC];EListError
 0045ADE9    call        Exception.CreateFmt;EListError.Create
>0045ADEE    jmp         @RaiseExcept
end;*}

//0045ADF8
procedure TList<System.Rtti.TRttiManagedField>.Add(Value:TRttiManagedField);
begin
{*
 0045ADF8    push        ecx
 0045ADF9    mov         dword ptr [esp],edx
 0045ADFC    mov         edx,esp
 0045ADFE    add         eax,8
 0045AE01    call        0043489C
 0045AE06    pop         edx
 0045AE07    ret
*}
end;

//0045AE08
{*procedure TList<System.Rtti.TRttiManagedField>.ToArray(?:?);
begin
 0045AE08    push        ecx
 0045AE09    mov         dword ptr [esp],edx
 0045AE0C    mov         edx,dword ptr [esp]
 0045AE0F    add         eax,8
 0045AE12    call        00435980
 0045AE17    pop         edx
 0045AE18    ret
end;*}

//0045AE1C
procedure TList<System.Rtti.TRttiManagedField>.GetEnumerator;
begin
{*
 0045AE1C    mov         ecx,eax
 0045AE1E    mov         dl,1
 0045AE20    mov         eax,[00452850];TList<System.Rtti.TRttiManagedField>.TEnumerator
 0045AE25    call        0045AE58
 0045AE2A    ret
*}
end;

//0045AE2C
{*function sub_0045AE2C(?:?):?;
begin
 0045AE2C    push        ebx
 0045AE2D    push        esi
 0045AE2E    mov         ebx,dword ptr [eax+4]
 0045AE31    mov         esi,dword ptr [eax+8]
 0045AE34    lea         eax,[ebx+8]
 0045AE37    mov         edx,esi
 0045AE39    call        00434534
 0045AE3E    mov         eax,dword ptr [ebx+20]
 0045AE41    mov         eax,dword ptr [eax+esi*4]
 0045AE44    pop         esi
 0045AE45    pop         ebx
 0045AE46    ret
end;*}

//0045AE48
procedure sub_0045AE48;
begin
{*
 0045AE48    call        0045AE2C
 0045AE4D    ret
*}
end;

//0045AE50
procedure sub_0045AE50;
begin
{*
 0045AE50    call        TList<System.Rtti.TRttiManagedField>.TEnumerator.MoveNext
 0045AE55    ret
*}
end;

//0045AE58
constructor sub_0045AE58(AList:TList<System.Rtti.TRttiManagedField>);
begin
{*
 0045AE58    push        ebx
 0045AE59    push        esi
 0045AE5A    push        edi
 0045AE5B    test        dl,dl
>0045AE5D    je          0045AE67
 0045AE5F    add         esp,0FFFFFFF0
 0045AE62    call        @ClassCreate
 0045AE67    mov         esi,ecx
 0045AE69    mov         ebx,edx
 0045AE6B    mov         edi,eax
 0045AE6D    xor         edx,edx
 0045AE6F    mov         eax,edi
 0045AE71    call        TObject.Create
 0045AE76    mov         dword ptr [edi+4],esi;TList<System.Rtti.TRttiManagedField>.TEnumerator.FList:TList<Syste...
 0045AE79    mov         dword ptr [edi+8],0FFFFFFFF
 0045AE80    mov         eax,edi
 0045AE82    test        bl,bl
>0045AE84    je          0045AE95
 0045AE86    call        @AfterConstruction
 0045AE8B    pop         dword ptr fs:[0]
 0045AE92    add         esp,0C
 0045AE95    mov         eax,edi
 0045AE97    pop         edi
 0045AE98    pop         esi
 0045AE99    pop         ebx
 0045AE9A    ret
*}
end;

//0045AE9C
function TList<System.Rtti.TRttiManagedField>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045AE9C    mov         edx,dword ptr [eax+4]
 0045AE9F    mov         edx,dword ptr [edx+8]
 0045AEA2    cmp         edx,dword ptr [eax+8]
>0045AEA5    jg          0045AEAA
 0045AEA7    xor         eax,eax
 0045AEA9    ret
 0045AEAA    inc         dword ptr [eax+8]
 0045AEAD    mov         edx,dword ptr [eax+4]
 0045AEB0    mov         edx,dword ptr [edx+8]
 0045AEB3    cmp         edx,dword ptr [eax+8]
 0045AEB6    setg        al
 0045AEB9    ret
*}
end;

//0045AF0C
{*function sub_0045AF0C(?:TValue; ?:?):?;
begin
 0045AF0C    push        ebp
 0045AF0D    mov         ebp,esp
 0045AF0F    add         esp,0FFFFFFE0
 0045AF12    push        ebx
 0045AF13    mov         dword ptr [ebp-20],edx
 0045AF16    mov         dword ptr [ebp-1C],eax
 0045AF19    lea         eax,[ebp-18]
 0045AF1C    mov         edx,dword ptr ds:[435E20];TValue
 0045AF22    call        @AddRefRecord
 0045AF27    xor         eax,eax
 0045AF29    push        ebp
 0045AF2A    push        45AF80
 0045AF2F    push        dword ptr fs:[eax]
 0045AF32    mov         dword ptr fs:[eax],esp
 0045AF35    lea         eax,[ebp-18]
 0045AF38    mov         edx,dword ptr ds:[435E20];TValue
 0045AF3E    call        @FinalizeRecord
 0045AF43    mov         ecx,eax
 0045AF45    mov         eax,dword ptr [ebp-1C]
 0045AF48    mov         edx,dword ptr ds:[40159C];TMethod
 0045AF4E    call        TValue.TryCast
 0045AF53    mov         ebx,eax
 0045AF55    test        bl,bl
>0045AF57    je          0045AF64
 0045AF59    mov         edx,dword ptr [ebp-20]
 0045AF5C    lea         eax,[ebp-18]
 0045AF5F    call        0045CFB8
 0045AF64    xor         eax,eax
 0045AF66    pop         edx
 0045AF67    pop         ecx
 0045AF68    pop         ecx
 0045AF69    mov         dword ptr fs:[eax],edx
 0045AF6C    push        45AF87
 0045AF71    lea         eax,[ebp-18]
 0045AF74    mov         edx,dword ptr ds:[435E20];TValue
 0045AF7A    call        @FinalizeRecord
 0045AF7F    ret
>0045AF80    jmp         @HandleFinally
>0045AF85    jmp         0045AF71
 0045AF87    mov         eax,ebx
 0045AF89    pop         ebx
 0045AF8A    mov         esp,ebp
 0045AF8C    pop         ebp
 0045AF8D    ret
end;*}

//0045AF90
function TArrayHelper.Concat<System.Rtti.TRttiParameter>(const _Dv_:$0..-$1):TArray<System.Rtti.TRttiParameter>;
begin
{*
 0045AF90    push        ebx
 0045AF91    push        esi
 0045AF92    push        edi
 0045AF93    push        ebp
 0045AF94    add         esp,0FFFFFFF4
 0045AF97    mov         dword ptr [esp],ecx
 0045AF9A    mov         ebp,edx
 0045AF9C    mov         edi,eax
 0045AF9E    xor         ebx,ebx
 0045AFA0    mov         esi,ebp
 0045AFA2    test        esi,esi
>0045AFA4    jl          0045AFC4
 0045AFA6    inc         esi
 0045AFA7    mov         eax,edi
 0045AFA9    mov         edx,dword ptr [eax]
 0045AFAB    mov         dword ptr [esp+4],edx
 0045AFAF    mov         edx,dword ptr [esp+4]
 0045AFB3    test        edx,edx
>0045AFB5    je          0045AFBC
 0045AFB7    sub         edx,4
 0045AFBA    mov         edx,dword ptr [edx]
 0045AFBC    add         ebx,edx
 0045AFBE    add         eax,4
 0045AFC1    dec         esi
>0045AFC2    jne         0045AFA9
 0045AFC4    push        ebx
 0045AFC5    mov         eax,dword ptr [esp+4]
 0045AFC9    mov         ecx,1
 0045AFCE    mov         edx,dword ptr ds:[43C530];TArray<System.Rtti.TRttiParameter>
 0045AFD4    call        @DynArraySetLength
 0045AFD9    add         esp,4
 0045AFDC    xor         edx,edx
 0045AFDE    mov         esi,ebp
 0045AFE0    test        esi,esi
>0045AFE2    jl          0045B01E
 0045AFE4    inc         esi
 0045AFE5    mov         eax,edi
 0045AFE7    mov         ecx,dword ptr [eax]
 0045AFE9    mov         dword ptr [esp+8],ecx
 0045AFED    mov         ecx,dword ptr [esp+8]
 0045AFF1    test        ecx,ecx
>0045AFF3    je          0045AFFA
 0045AFF5    sub         ecx,4
 0045AFF8    mov         ecx,dword ptr [ecx]
 0045AFFA    mov         ebx,ecx
 0045AFFC    dec         ebx
 0045AFFD    test        ebx,ebx
>0045AFFF    jl          0045B018
 0045B001    inc         ebx
 0045B002    xor         ecx,ecx
 0045B004    mov         edi,dword ptr [eax]
 0045B006    mov         edi,dword ptr [edi+ecx*4]
 0045B009    mov         ebp,dword ptr [esp]
 0045B00C    mov         ebp,dword ptr [ebp]
 0045B00F    mov         dword ptr [ebp+edx*4],edi
 0045B013    inc         edx
 0045B014    inc         ecx
 0045B015    dec         ebx
>0045B016    jne         0045B004
 0045B018    add         eax,4
 0045B01B    dec         esi
>0045B01C    jne         0045AFE7
 0045B01E    add         esp,0C
 0045B021    pop         ebp
 0045B022    pop         edi
 0045B023    pop         esi
 0045B024    pop         ebx
 0045B025    ret
*}
end;

//0045B028
{*procedure sub_0045B028(?:?; ?:?);
begin
 0045B028    push        ebx
 0045B029    push        esi
 0045B02A    push        ecx
 0045B02B    mov         ebx,ecx
 0045B02D    mov         dword ptr [esp],edx
 0045B030    mov         esi,eax
 0045B032    mov         ecx,ebx
 0045B034    mov         edx,dword ptr [esp]
 0045B037    mov         eax,esi
 0045B039    call        00456EA0
 0045B03E    cmp         bl,1
>0045B041    jne         0045B052
 0045B043    test        byte ptr [esi+30],1
>0045B047    je          0045B052
 0045B049    mov         eax,esp
 0045B04B    mov         eax,dword ptr [eax]
 0045B04D    call        TObject.Free
 0045B052    pop         edx
 0045B053    pop         esi
 0045B054    pop         ebx
 0045B055    ret
end;*}

//0045B058
{*procedure sub_0045B058(?:?; ?:?);
begin
 0045B058    push        ebx
 0045B059    push        esi
 0045B05A    push        ecx
 0045B05B    mov         ebx,ecx
 0045B05D    mov         dword ptr [esp],edx
 0045B060    mov         esi,eax
 0045B062    mov         ecx,ebx
 0045B064    mov         edx,dword ptr [esp]
 0045B067    mov         eax,esi
 0045B069    call        00456EB8
 0045B06E    cmp         bl,1
>0045B071    jne         0045B082
 0045B073    test        byte ptr [esi+30],2
>0045B077    je          0045B082
 0045B079    mov         eax,esp
 0045B07B    mov         eax,dword ptr [eax]
 0045B07D    call        TObject.Free
 0045B082    pop         edx
 0045B083    pop         esi
 0045B084    pop         ebx
 0045B085    ret
end;*}

//0045B088
constructor TObjectDictionary<System.Pointer,System.Rtti.TRttiObject>.Create(ACapacity:Integer);
begin
{*
 0045B088    push        ebp
 0045B089    mov         ebp,esp
 0045B08B    push        ecx
 0045B08C    push        ebx
 0045B08D    push        esi
 0045B08E    test        dl,dl
>0045B090    je          0045B09A
 0045B092    add         esp,0FFFFFFF0
 0045B095    call        @ClassCreate
 0045B09A    mov         byte ptr [ebp-1],cl
 0045B09D    mov         ebx,edx
 0045B09F    mov         esi,eax
 0045B0A1    mov         eax,dword ptr [ebp+8]
 0045B0A4    push        eax
 0045B0A5    push        0
 0045B0A7    movzx       ecx,byte ptr [ebp-1]
 0045B0AB    xor         edx,edx
 0045B0AD    mov         eax,esi
 0045B0AF    call        0045B0D4
 0045B0B4    mov         eax,esi
 0045B0B6    test        bl,bl
>0045B0B8    je          0045B0C9
 0045B0BA    call        @AfterConstruction
 0045B0BF    pop         dword ptr fs:[0]
 0045B0C6    add         esp,0C
 0045B0C9    mov         eax,esi
 0045B0CB    pop         esi
 0045B0CC    pop         ebx
 0045B0CD    pop         ecx
 0045B0CE    pop         ebp
 0045B0CF    ret         4
*}
end;

//0045B0D4
constructor sub_0045B0D4(Ownerships:TDictionaryOwnerships; AComparer:IEqualityComparer<System.Pointer>; ACapacity:Integer);
begin
{*
 0045B0D4    push        ebp
 0045B0D5    mov         ebp,esp
 0045B0D7    push        ecx
 0045B0D8    push        ebx
 0045B0D9    push        esi
 0045B0DA    test        dl,dl
>0045B0DC    je          0045B0E6
 0045B0DE    add         esp,0FFFFFFF0
 0045B0E1    call        @ClassCreate
 0045B0E6    mov         byte ptr [ebp-1],cl
 0045B0E9    mov         ebx,edx
 0045B0EB    mov         esi,eax
 0045B0ED    mov         eax,dword ptr [ebp+8]
 0045B0F0    push        eax
 0045B0F1    mov         ecx,dword ptr [ebp+0C]
 0045B0F4    xor         edx,edx
 0045B0F6    mov         eax,esi
 0045B0F8    call        00456ED0
 0045B0FD    test        byte ptr [ebp-1],1
>0045B101    je          0045B128
 0045B103    mov         eax,[00401100];Pointer
 0045B108    test        eax,eax
>0045B10A    je          0045B111
 0045B10C    cmp         byte ptr [eax],7
>0045B10F    je          0045B128
 0045B111    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0045B117    mov         dl,1
 0045B119    mov         eax,[00418C80];EInvalidCast
 0045B11E    call        Exception.CreateRes;EInvalidCast.Create
 0045B123    call        @RaiseExcept
 0045B128    test        byte ptr [ebp-1],2
>0045B12C    je          0045B153
 0045B12E    mov         eax,[0043670C];TRttiObject
 0045B133    test        eax,eax
>0045B135    je          0045B13C
 0045B137    cmp         byte ptr [eax],7
>0045B13A    je          0045B153
 0045B13C    mov         ecx,dword ptr ds:[7C4E70];^SResString24:TResStringRec
 0045B142    mov         dl,1
 0045B144    mov         eax,[00418C80];EInvalidCast
 0045B149    call        Exception.CreateRes;EInvalidCast.Create
 0045B14E    call        @RaiseExcept
 0045B153    movzx       eax,byte ptr [ebp-1]
 0045B157    mov         byte ptr [esi+30],al
 0045B15A    mov         eax,esi
 0045B15C    test        bl,bl
>0045B15E    je          0045B16F
 0045B160    call        @AfterConstruction
 0045B165    pop         dword ptr fs:[0]
 0045B16C    add         esp,0C
 0045B16F    mov         eax,esi
 0045B171    pop         esi
 0045B172    pop         ebx
 0045B173    pop         ecx
 0045B174    pop         ebp
 0045B175    ret         8
*}
end;

//0045B178
{*procedure TComparer<System.Rtti.TMethodImplementation.TParamLoc>.Default(?:?);
begin
 0045B178    push        ebx
 0045B179    mov         ebx,edx
 0045B17B    mov         ecx,0C
 0045B180    mov         edx,dword ptr ds:[438060];TMethodImplementation.TParamLoc
 0045B186    xor         eax,eax
 0045B188    call        _LookupVtableInfo
 0045B18D    mov         edx,eax
 0045B18F    mov         eax,ebx
 0045B191    call        @IntfCopy
 0045B196    pop         ebx
 0045B197    ret
end;*}

//0045B1E0
procedure sub_0045B1E0(?:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>);
begin
{*
 0045B1E0    add         eax,8
 0045B1E3    call        00435800
 0045B1E8    ret
*}
end;

//0045B1EC
{*procedure sub_0045B1EC(?:?);
begin
 0045B1EC    push        ebx
 0045B1ED    push        esi
 0045B1EE    mov         esi,eax
 0045B1F0    mov         eax,esi
 0045B1F2    mov         ebx,dword ptr [eax]
 0045B1F4    call        dword ptr [ebx+8]
 0045B1F7    pop         esi
 0045B1F8    pop         ebx
 0045B1F9    ret
end;*}

//0045B1FC
{*procedure sub_0045B1FC(?:?);
begin
 0045B1FC    push        ebx
 0045B1FD    push        esi
 0045B1FE    mov         esi,eax
 0045B200    mov         eax,dword ptr [esi+24]
 0045B203    mov         ebx,dword ptr [eax]
 0045B205    call        dword ptr [ebx+0C]
 0045B208    pop         esi
 0045B209    pop         ebx
 0045B20A    ret
end;*}

//0045B20C
procedure sub_0045B20C;
begin
{*
 0045B20C    call        TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator
 0045B211    ret
*}
end;

//0045B214
{*procedure sub_0045B214(?:?);
begin
 0045B214    push        esi
 0045B215    mov         esi,eax
 0045B217    cmp         word ptr [esi+2A],0
>0045B21C    je          0045B229
 0045B21E    push        ecx
 0045B21F    mov         ecx,edx
 0045B221    mov         edx,esi
 0045B223    mov         eax,dword ptr [esi+2C]
 0045B226    call        dword ptr [esi+28]
 0045B229    pop         esi
 0045B22A    ret
end;*}

//0045B22C
constructor sub_0045B22C;
begin
{*
 0045B22C    push        ebp
 0045B22D    mov         ebp,esp
 0045B22F    push        0
 0045B231    push        ebx
 0045B232    push        esi
 0045B233    test        dl,dl
>0045B235    je          0045B23F
 0045B237    add         esp,0FFFFFFF0
 0045B23A    call        @ClassCreate
 0045B23F    mov         ebx,edx
 0045B241    mov         esi,eax
 0045B243    xor         eax,eax
 0045B245    push        ebp
 0045B246    push        45B280
 0045B24B    push        dword ptr fs:[eax]
 0045B24E    mov         dword ptr fs:[eax],esp
 0045B251    lea         edx,[ebp-4]
 0045B254    mov         eax,[004659C4];TComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>
 0045B259    call        TComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Default
 0045B25E    mov         ecx,dword ptr [ebp-4]
 0045B261    xor         edx,edx
 0045B263    mov         eax,esi
 0045B265    call        0045B2A4
 0045B26A    xor         eax,eax
 0045B26C    pop         edx
 0045B26D    pop         ecx
 0045B26E    pop         ecx
 0045B26F    mov         dword ptr fs:[eax],edx
 0045B272    push        45B287
 0045B277    lea         eax,[ebp-4]
 0045B27A    call        @IntfClear
 0045B27F    ret
>0045B280    jmp         @HandleFinally
>0045B285    jmp         0045B277
 0045B287    mov         eax,esi
 0045B289    test        bl,bl
>0045B28B    je          0045B29C
 0045B28D    call        @AfterConstruction
 0045B292    pop         dword ptr fs:[0]
 0045B299    add         esp,0C
 0045B29C    mov         eax,esi
 0045B29E    pop         esi
 0045B29F    pop         ebx
 0045B2A0    pop         ecx
 0045B2A1    pop         ebp
 0045B2A2    ret
*}
end;

//0045B2A4
constructor sub_0045B2A4(AComparer:IComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>);
begin
{*
 0045B2A4    push        ebp
 0045B2A5    mov         ebp,esp
 0045B2A7    push        0
 0045B2A9    push        ebx
 0045B2AA    push        esi
 0045B2AB    push        edi
 0045B2AC    test        dl,dl
>0045B2AE    je          0045B2B8
 0045B2B0    add         esp,0FFFFFFF0
 0045B2B3    call        @ClassCreate
 0045B2B8    mov         esi,ecx
 0045B2BA    mov         ebx,edx
 0045B2BC    mov         edi,eax
 0045B2BE    xor         eax,eax
 0045B2C0    push        ebp
 0045B2C1    push        45B32F
 0045B2C6    push        dword ptr fs:[eax]
 0045B2C9    mov         dword ptr fs:[eax],esp
 0045B2CC    xor         edx,edx
 0045B2CE    mov         eax,edi
 0045B2D0    call        TObject.Create
 0045B2D5    mov         dword ptr [edi+14],edi;TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>....
 0045B2D8    mov         dword ptr [edi+10],45B1EC;TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject...
 0045B2DF    mov         dword ptr [edi+1C],edi
 0045B2E2    mov         dword ptr [edi+18],45B1FC;sub_0045B1FC
 0045B2E9    mov         eax,[0045D5B0];TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.arrayofT
 0045B2EE    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>....
 0045B2F1    lea         eax,[edi+24]
 0045B2F4    mov         edx,esi
 0045B2F6    call        @IntfCopy
 0045B2FB    cmp         dword ptr [edi+24],0
>0045B2FF    jne         0045B319
 0045B301    lea         edx,[ebp-4]
 0045B304    mov         eax,[004659C4];TComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>
 0045B309    call        TComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Default
 0045B30E    mov         edx,dword ptr [ebp-4]
 0045B311    lea         eax,[edi+24]
 0045B314    call        @IntfCopy
 0045B319    xor         eax,eax
 0045B31B    pop         edx
 0045B31C    pop         ecx
 0045B31D    pop         ecx
 0045B31E    mov         dword ptr fs:[eax],edx
 0045B321    push        45B336
 0045B326    lea         eax,[ebp-4]
 0045B329    call        @IntfClear
 0045B32E    ret
>0045B32F    jmp         @HandleFinally
>0045B334    jmp         0045B326
 0045B336    mov         eax,edi
 0045B338    test        bl,bl
>0045B33A    je          0045B34B
 0045B33C    call        @AfterConstruction
 0045B341    pop         dword ptr fs:[0]
 0045B348    add         esp,0C
 0045B34B    mov         eax,edi
 0045B34D    pop         edi
 0045B34E    pop         esi
 0045B34F    pop         ebx
 0045B350    pop         ecx
 0045B351    pop         ebp
 0045B352    ret
*}
end;

//0045B354
destructor TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy();
begin
{*
 0045B354    push        ebx
 0045B355    push        esi
 0045B356    call        @BeforeDestruction
 0045B35B    mov         ebx,edx
 0045B35D    mov         esi,eax
 0045B35F    cmp         dword ptr [esi+8],0;TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.FCo...
>0045B363    jle         0045B36E
 0045B365    xor         edx,edx
 0045B367    mov         eax,esi
 0045B369    call        0045B1E0
 0045B36E    push        0
 0045B370    lea         eax,[esi+20]
 0045B373    mov         ecx,1
 0045B378    mov         edx,dword ptr ds:[45D5B0];TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject...
 0045B37E    call        @DynArraySetLength
 0045B383    add         esp,4
 0045B386    mov         dl,0FC
 0045B388    and         dl,bl
 0045B38A    mov         eax,esi
 0045B38C    call        TEnumerable<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Destroy
 0045B391    test        bl,bl
>0045B393    jle         0045B39C
 0045B395    mov         eax,esi
 0045B397    call        @ClassDestroy
 0045B39C    pop         esi
 0045B39D    pop         ebx
 0045B39E    ret
*}
end;

//0045B3A0
{*procedure TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045B3A0    push        ebp
 0045B3A1    mov         ebp,esp
 0045B3A3    add         esp,0FFFFFFF0
 0045B3A6    mov         dword ptr [ebp-8],ecx
 0045B3A9    mov         dword ptr [ebp-4],edx
 0045B3AC    push        dword ptr [ebp+4]
 0045B3AF    mov         eax,dword ptr [ebp-8]
 0045B3B2    mov         dword ptr [ebp-10],eax
 0045B3B5    mov         byte ptr [ebp-0C],0
 0045B3B9    lea         eax,[ebp-10]
 0045B3BC    push        eax
 0045B3BD    push        0
 0045B3BF    mov         ecx,dword ptr [ebp-4]
 0045B3C2    mov         dl,1
 0045B3C4    mov         eax,[004180BC];EListError
 0045B3C9    call        Exception.CreateFmt;EListError.Create
>0045B3CE    jmp         @RaiseExcept
end;*}

//0045B3D8
procedure TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Add(Value:TPair<System.Pointer,System.Rtti.TRttiObject>);
begin
{*
 0045B3D8    push        ecx
 0045B3D9    mov         dword ptr [esp],edx
 0045B3DC    mov         edx,dword ptr [esp]
 0045B3DF    add         eax,8
 0045B3E2    call        004348E0
 0045B3E7    pop         edx
 0045B3E8    ret
*}
end;

//0045B3EC
{*procedure TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.ToArray(?:?);
begin
 0045B3EC    push        ecx
 0045B3ED    mov         dword ptr [esp],edx
 0045B3F0    mov         edx,dword ptr [esp]
 0045B3F3    add         eax,8
 0045B3F6    call        00435980
 0045B3FB    pop         edx
 0045B3FC    ret
end;*}

//0045B400
procedure TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.GetEnumerator;
begin
{*
 0045B400    mov         ecx,eax
 0045B402    mov         dl,1
 0045B404    mov         eax,[0045D8AC];TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.TEnumera...
 0045B409    call        0045B468
 0045B40E    ret
*}
end;

//0045B410
{*procedure sub_0045B410(?:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.TEnumerator; ?:?);
begin
 0045B410    push        ebx
 0045B411    push        esi
 0045B412    push        edi
 0045B413    add         esp,0FFFFFFF8
 0045B416    mov         edi,edx
 0045B418    mov         ebx,dword ptr [eax+4]
 0045B41B    mov         esi,dword ptr [eax+8]
 0045B41E    lea         eax,[ebx+8]
 0045B421    mov         edx,esi
 0045B423    call        00434534
 0045B428    mov         eax,dword ptr [ebx+20]
 0045B42B    mov         edx,dword ptr [eax+esi*8]
 0045B42E    mov         dword ptr [esp],edx
 0045B431    mov         edx,dword ptr [eax+esi*8+4]
 0045B435    mov         dword ptr [esp+4],edx
 0045B439    mov         eax,dword ptr [esp]
 0045B43C    mov         dword ptr [edi],eax
 0045B43E    mov         eax,dword ptr [esp+4]
 0045B442    mov         dword ptr [edi+4],eax
 0045B445    pop         ecx
 0045B446    pop         edx
 0045B447    pop         edi
 0045B448    pop         esi
 0045B449    pop         ebx
 0045B44A    ret
end;*}

//0045B44C
{*procedure sub_0045B44C(?:?);
begin
 0045B44C    push        ebx
 0045B44D    push        esi
 0045B44E    mov         esi,edx
 0045B450    mov         ebx,eax
 0045B452    mov         edx,esi
 0045B454    mov         eax,ebx
 0045B456    call        0045B410
 0045B45B    pop         esi
 0045B45C    pop         ebx
 0045B45D    ret
end;*}

//0045B460
procedure sub_0045B460;
begin
{*
 0045B460    call        TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.TEnumerator.MoveNext
 0045B465    ret
*}
end;

//0045B468
constructor sub_0045B468(AList:TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>);
begin
{*
 0045B468    push        ebx
 0045B469    push        esi
 0045B46A    push        edi
 0045B46B    test        dl,dl
>0045B46D    je          0045B477
 0045B46F    add         esp,0FFFFFFF0
 0045B472    call        @ClassCreate
 0045B477    mov         esi,ecx
 0045B479    mov         ebx,edx
 0045B47B    mov         edi,eax
 0045B47D    xor         edx,edx
 0045B47F    mov         eax,edi
 0045B481    call        TObject.Create
 0045B486    mov         dword ptr [edi+4],esi;TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.T...
 0045B489    mov         dword ptr [edi+8],0FFFFFFFF
 0045B490    mov         eax,edi
 0045B492    test        bl,bl
>0045B494    je          0045B4A5
 0045B496    call        @AfterConstruction
 0045B49B    pop         dword ptr fs:[0]
 0045B4A2    add         esp,0C
 0045B4A5    mov         eax,edi
 0045B4A7    pop         edi
 0045B4A8    pop         esi
 0045B4A9    pop         ebx
 0045B4AA    ret
*}
end;

//0045B4AC
function TList<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045B4AC    mov         edx,dword ptr [eax+4]
 0045B4AF    mov         edx,dword ptr [edx+8]
 0045B4B2    cmp         edx,dword ptr [eax+8]
>0045B4B5    jg          0045B4BA
 0045B4B7    xor         eax,eax
 0045B4B9    ret
 0045B4BA    inc         dword ptr [eax+8]
 0045B4BD    mov         edx,dword ptr [eax+4]
 0045B4C0    mov         edx,dword ptr [edx+8]
 0045B4C3    cmp         edx,dword ptr [eax+8]
 0045B4C6    setg        al
 0045B4C9    ret
*}
end;

//0045B4CC
{*procedure sub_0045B4CC(?:?);
begin
 0045B4CC    push        ebx
 0045B4CD    mov         ebx,eax
 0045B4CF    mov         ecx,4
 0045B4D4    mov         edx,dword ptr ds:[401100];Pointer
 0045B4DA    mov         al,1
 0045B4DC    call        _LookupVtableInfo
 0045B4E1    mov         edx,eax
 0045B4E3    mov         eax,ebx
 0045B4E5    call        @IntfCopy
 0045B4EA    pop         ebx
 0045B4EB    ret
end;*}

//0045B534
procedure sub_0045B534(?:TList<System.Pointer>);
begin
{*
 0045B534    add         eax,8
 0045B537    call        004357A0
 0045B53C    ret
*}
end;

//0045B540
{*procedure sub_0045B540(?:?; ?:?);
begin
 0045B540    push        ebx
 0045B541    mov         edx,dword ptr [edx]
 0045B543    mov         ebx,dword ptr [eax]
 0045B545    call        dword ptr [ebx+8]
 0045B548    pop         ebx
 0045B549    ret
end;*}

//0045B54C
{*procedure sub_0045B54C(?:?; ?:?; ?:?);
begin
 0045B54C    push        ebx
 0045B54D    mov         edx,dword ptr [edx]
 0045B54F    mov         ecx,dword ptr [ecx]
 0045B551    mov         eax,dword ptr [eax+24]
 0045B554    mov         ebx,dword ptr [eax]
 0045B556    call        dword ptr [ebx+0C]
 0045B559    pop         ebx
 0045B55A    ret
end;*}

//0045B55C
procedure sub_0045B55C;
begin
{*
 0045B55C    call        TList<System.Pointer>.GetEnumerator
 0045B561    ret
*}
end;

//0045B564
{*procedure sub_0045B564(?:?);
begin
 0045B564    push        ebx
 0045B565    cmp         word ptr [eax+2A],0
>0045B56A    je          0045B579
 0045B56C    push        ecx
 0045B56D    mov         ebx,eax
 0045B56F    mov         ecx,edx
 0045B571    mov         edx,eax
 0045B573    mov         eax,dword ptr [ebx+2C]
 0045B576    call        dword ptr [ebx+28]
 0045B579    pop         ebx
 0045B57A    ret
end;*}

//0045B57C
constructor sub_0045B57C;
begin
{*
 0045B57C    push        ebp
 0045B57D    mov         ebp,esp
 0045B57F    push        0
 0045B581    push        ebx
 0045B582    push        esi
 0045B583    test        dl,dl
>0045B585    je          0045B58F
 0045B587    add         esp,0FFFFFFF0
 0045B58A    call        @ClassCreate
 0045B58F    mov         ebx,edx
 0045B591    mov         esi,eax
 0045B593    xor         eax,eax
 0045B595    push        ebp
 0045B596    push        45B5D0
 0045B59B    push        dword ptr fs:[eax]
 0045B59E    mov         dword ptr fs:[eax],esp
 0045B5A1    lea         edx,[ebp-4]
 0045B5A4    mov         eax,[00465C74];TComparer<System.Pointer>
 0045B5A9    call        TComparer<System.Pointer>.Default
 0045B5AE    mov         ecx,dword ptr [ebp-4]
 0045B5B1    xor         edx,edx
 0045B5B3    mov         eax,esi
 0045B5B5    call        0045B5F4
 0045B5BA    xor         eax,eax
 0045B5BC    pop         edx
 0045B5BD    pop         ecx
 0045B5BE    pop         ecx
 0045B5BF    mov         dword ptr fs:[eax],edx
 0045B5C2    push        45B5D7
 0045B5C7    lea         eax,[ebp-4]
 0045B5CA    call        @IntfClear
 0045B5CF    ret
>0045B5D0    jmp         @HandleFinally
>0045B5D5    jmp         0045B5C7
 0045B5D7    mov         eax,esi
 0045B5D9    test        bl,bl
>0045B5DB    je          0045B5EC
 0045B5DD    call        @AfterConstruction
 0045B5E2    pop         dword ptr fs:[0]
 0045B5E9    add         esp,0C
 0045B5EC    mov         eax,esi
 0045B5EE    pop         esi
 0045B5EF    pop         ebx
 0045B5F0    pop         ecx
 0045B5F1    pop         ebp
 0045B5F2    ret
*}
end;

//0045B5F4
constructor sub_0045B5F4(AComparer:IComparer<System.Pointer>);
begin
{*
 0045B5F4    push        ebp
 0045B5F5    mov         ebp,esp
 0045B5F7    push        0
 0045B5F9    push        ebx
 0045B5FA    push        esi
 0045B5FB    push        edi
 0045B5FC    test        dl,dl
>0045B5FE    je          0045B608
 0045B600    add         esp,0FFFFFFF0
 0045B603    call        @ClassCreate
 0045B608    mov         esi,ecx
 0045B60A    mov         ebx,edx
 0045B60C    mov         edi,eax
 0045B60E    xor         eax,eax
 0045B610    push        ebp
 0045B611    push        45B67F
 0045B616    push        dword ptr fs:[eax]
 0045B619    mov         dword ptr fs:[eax],esp
 0045B61C    xor         edx,edx
 0045B61E    mov         eax,edi
 0045B620    call        TObject.Create
 0045B625    mov         dword ptr [edi+14],edi;TList<System.Pointer>.FOnNotify:TCollectionNotifyEvent<System.Poi...
 0045B628    mov         dword ptr [edi+10],45B540;TList<System.Pointer>.FOnNotify:TCollectionNotifyEvent<System....
 0045B62F    mov         dword ptr [edi+1C],edi
 0045B632    mov         dword ptr [edi+18],45B54C;sub_0045B54C
 0045B639    mov         eax,[0045E7E0];TList<System.Pointer>.arrayofT
 0045B63E    mov         dword ptr [edi+0C],eax;TList<System.Pointer>.FComparer:IComparer<System.Pointer>
 0045B641    lea         eax,[edi+24]
 0045B644    mov         edx,esi
 0045B646    call        @IntfCopy
 0045B64B    cmp         dword ptr [edi+24],0
>0045B64F    jne         0045B669
 0045B651    lea         edx,[ebp-4]
 0045B654    mov         eax,[00465C74];TComparer<System.Pointer>
 0045B659    call        TComparer<System.Pointer>.Default
 0045B65E    mov         edx,dword ptr [ebp-4]
 0045B661    lea         eax,[edi+24]
 0045B664    call        @IntfCopy
 0045B669    xor         eax,eax
 0045B66B    pop         edx
 0045B66C    pop         ecx
 0045B66D    pop         ecx
 0045B66E    mov         dword ptr fs:[eax],edx
 0045B671    push        45B686
 0045B676    lea         eax,[ebp-4]
 0045B679    call        @IntfClear
 0045B67E    ret
>0045B67F    jmp         @HandleFinally
>0045B684    jmp         0045B676
 0045B686    mov         eax,edi
 0045B688    test        bl,bl
>0045B68A    je          0045B69B
 0045B68C    call        @AfterConstruction
 0045B691    pop         dword ptr fs:[0]
 0045B698    add         esp,0C
 0045B69B    mov         eax,edi
 0045B69D    pop         edi
 0045B69E    pop         esi
 0045B69F    pop         ebx
 0045B6A0    pop         ecx
 0045B6A1    pop         ebp
 0045B6A2    ret
*}
end;

//0045B6A4
destructor TList<System.Pointer>.Destroy();
begin
{*
 0045B6A4    push        ebx
 0045B6A5    push        esi
 0045B6A6    call        @BeforeDestruction
 0045B6AB    mov         ebx,edx
 0045B6AD    mov         esi,eax
 0045B6AF    cmp         dword ptr [esi+8],0;TList<System.Pointer>.FCount:Integer
>0045B6B3    jle         0045B6BE
 0045B6B5    xor         edx,edx
 0045B6B7    mov         eax,esi
 0045B6B9    call        0045B534
 0045B6BE    push        0
 0045B6C0    lea         eax,[esi+20]
 0045B6C3    mov         ecx,1
 0045B6C8    mov         edx,dword ptr ds:[45E7E0];TList<System.Pointer>.arrayofT
 0045B6CE    call        @DynArraySetLength
 0045B6D3    add         esp,4
 0045B6D6    mov         dl,0FC
 0045B6D8    and         dl,bl
 0045B6DA    mov         eax,esi
 0045B6DC    call        TEnumerable<System.Pointer>.Destroy
 0045B6E1    test        bl,bl
>0045B6E3    jle         0045B6EC
 0045B6E5    mov         eax,esi
 0045B6E7    call        @ClassDestroy
 0045B6EC    pop         esi
 0045B6ED    pop         ebx
 0045B6EE    ret
*}
end;

//0045B6F0
{*procedure TList<System.Pointer>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045B6F0    push        ebp
 0045B6F1    mov         ebp,esp
 0045B6F3    add         esp,0FFFFFFF0
 0045B6F6    mov         dword ptr [ebp-8],ecx
 0045B6F9    mov         dword ptr [ebp-4],edx
 0045B6FC    push        dword ptr [ebp+4]
 0045B6FF    mov         eax,dword ptr [ebp-8]
 0045B702    mov         dword ptr [ebp-10],eax
 0045B705    mov         byte ptr [ebp-0C],0
 0045B709    lea         eax,[ebp-10]
 0045B70C    push        eax
 0045B70D    push        0
 0045B70F    mov         ecx,dword ptr [ebp-4]
 0045B712    mov         dl,1
 0045B714    mov         eax,[004180BC];EListError
 0045B719    call        Exception.CreateFmt;EListError.Create
>0045B71E    jmp         @RaiseExcept
end;*}

//0045B728
procedure TList<System.Pointer>.Add(Value:Pointer);
begin
{*
 0045B728    push        ecx
 0045B729    mov         dword ptr [esp],edx
 0045B72C    mov         edx,esp
 0045B72E    add         eax,8
 0045B731    call        0043489C
 0045B736    pop         edx
 0045B737    ret
*}
end;

//0045B738
{*procedure TList<System.Pointer>.ToArray(?:?);
begin
 0045B738    push        ecx
 0045B739    mov         dword ptr [esp],edx
 0045B73C    mov         edx,dword ptr [esp]
 0045B73F    add         eax,8
 0045B742    call        00435980
 0045B747    pop         edx
 0045B748    ret
end;*}

//0045B74C
procedure TList<System.Pointer>.GetEnumerator;
begin
{*
 0045B74C    mov         ecx,eax
 0045B74E    mov         dl,1
 0045B750    mov         eax,[0045E930];TList<System.Pointer>.TEnumerator
 0045B755    call        0045B788
 0045B75A    ret
*}
end;

//0045B75C
{*function sub_0045B75C(?:?):?;
begin
 0045B75C    push        ebx
 0045B75D    push        esi
 0045B75E    mov         ebx,dword ptr [eax+4]
 0045B761    mov         esi,dword ptr [eax+8]
 0045B764    lea         eax,[ebx+8]
 0045B767    mov         edx,esi
 0045B769    call        00434534
 0045B76E    mov         eax,dword ptr [ebx+20]
 0045B771    mov         eax,dword ptr [eax+esi*4]
 0045B774    pop         esi
 0045B775    pop         ebx
 0045B776    ret
end;*}

//0045B778
procedure sub_0045B778;
begin
{*
 0045B778    call        0045B75C
 0045B77D    ret
*}
end;

//0045B780
procedure sub_0045B780;
begin
{*
 0045B780    call        TList<System.Pointer>.TEnumerator.MoveNext
 0045B785    ret
*}
end;

//0045B788
constructor sub_0045B788(AList:TList<System.Pointer>);
begin
{*
 0045B788    push        ebx
 0045B789    push        esi
 0045B78A    push        edi
 0045B78B    test        dl,dl
>0045B78D    je          0045B797
 0045B78F    add         esp,0FFFFFFF0
 0045B792    call        @ClassCreate
 0045B797    mov         esi,ecx
 0045B799    mov         ebx,edx
 0045B79B    mov         edi,eax
 0045B79D    xor         edx,edx
 0045B79F    mov         eax,edi
 0045B7A1    call        TObject.Create
 0045B7A6    mov         dword ptr [edi+4],esi;TList<System.Pointer>.TEnumerator.FList:TList<System.Pointer>
 0045B7A9    mov         dword ptr [edi+8],0FFFFFFFF
 0045B7B0    mov         eax,edi
 0045B7B2    test        bl,bl
>0045B7B4    je          0045B7C5
 0045B7B6    call        @AfterConstruction
 0045B7BB    pop         dword ptr fs:[0]
 0045B7C2    add         esp,0C
 0045B7C5    mov         eax,edi
 0045B7C7    pop         edi
 0045B7C8    pop         esi
 0045B7C9    pop         ebx
 0045B7CA    ret
*}
end;

//0045B7CC
function TList<System.Pointer>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045B7CC    mov         edx,dword ptr [eax+4]
 0045B7CF    mov         edx,dword ptr [edx+8]
 0045B7D2    cmp         edx,dword ptr [eax+8]
>0045B7D5    jg          0045B7DA
 0045B7D7    xor         eax,eax
 0045B7D9    ret
 0045B7DA    inc         dword ptr [eax+8]
 0045B7DD    mov         edx,dword ptr [eax+4]
 0045B7E0    mov         edx,dword ptr [edx+8]
 0045B7E3    cmp         edx,dword ptr [eax+8]
 0045B7E6    setg        al
 0045B7E9    ret
*}
end;

//0045B834
procedure sub_0045B834(?:TList<System.Rtti.TRttiObject>);
begin
{*
 0045B834    add         eax,8
 0045B837    call        004357A0
 0045B83C    ret
*}
end;

//0045B840
{*procedure sub_0045B840(?:?; ?:?);
begin
 0045B840    push        ebx
 0045B841    mov         edx,dword ptr [edx]
 0045B843    mov         ebx,dword ptr [eax]
 0045B845    call        dword ptr [ebx+8]
 0045B848    pop         ebx
 0045B849    ret
end;*}

//0045B84C
{*procedure sub_0045B84C(?:?; ?:?; ?:?);
begin
 0045B84C    push        ebx
 0045B84D    mov         edx,dword ptr [edx]
 0045B84F    mov         ecx,dword ptr [ecx]
 0045B851    mov         eax,dword ptr [eax+24]
 0045B854    mov         ebx,dword ptr [eax]
 0045B856    call        dword ptr [ebx+0C]
 0045B859    pop         ebx
 0045B85A    ret
end;*}

//0045B85C
procedure sub_0045B85C;
begin
{*
 0045B85C    call        TList<System.Rtti.TRttiObject>.GetEnumerator
 0045B861    ret
*}
end;

//0045B864
{*procedure sub_0045B864(?:?);
begin
 0045B864    push        ebx
 0045B865    cmp         word ptr [eax+2A],0
>0045B86A    je          0045B879
 0045B86C    push        ecx
 0045B86D    mov         ebx,eax
 0045B86F    mov         ecx,edx
 0045B871    mov         edx,eax
 0045B873    mov         eax,dword ptr [ebx+2C]
 0045B876    call        dword ptr [ebx+28]
 0045B879    pop         ebx
 0045B87A    ret
end;*}

//0045B87C
constructor sub_0045B87C;
begin
{*
 0045B87C    push        ebp
 0045B87D    mov         ebp,esp
 0045B87F    push        0
 0045B881    push        ebx
 0045B882    push        esi
 0045B883    test        dl,dl
>0045B885    je          0045B88F
 0045B887    add         esp,0FFFFFFF0
 0045B88A    call        @ClassCreate
 0045B88F    mov         ebx,edx
 0045B891    mov         esi,eax
 0045B893    xor         eax,eax
 0045B895    push        ebp
 0045B896    push        45B8D0
 0045B89B    push        dword ptr fs:[eax]
 0045B89E    mov         dword ptr fs:[eax],esp
 0045B8A1    lea         edx,[ebp-4]
 0045B8A4    mov         eax,[00465ED4];TComparer<System.Rtti.TRttiObject>
 0045B8A9    call        TComparer<System.Rtti.TRttiObject>.Default
 0045B8AE    mov         ecx,dword ptr [ebp-4]
 0045B8B1    xor         edx,edx
 0045B8B3    mov         eax,esi
 0045B8B5    call        0045B8F4
 0045B8BA    xor         eax,eax
 0045B8BC    pop         edx
 0045B8BD    pop         ecx
 0045B8BE    pop         ecx
 0045B8BF    mov         dword ptr fs:[eax],edx
 0045B8C2    push        45B8D7
 0045B8C7    lea         eax,[ebp-4]
 0045B8CA    call        @IntfClear
 0045B8CF    ret
>0045B8D0    jmp         @HandleFinally
>0045B8D5    jmp         0045B8C7
 0045B8D7    mov         eax,esi
 0045B8D9    test        bl,bl
>0045B8DB    je          0045B8EC
 0045B8DD    call        @AfterConstruction
 0045B8E2    pop         dword ptr fs:[0]
 0045B8E9    add         esp,0C
 0045B8EC    mov         eax,esi
 0045B8EE    pop         esi
 0045B8EF    pop         ebx
 0045B8F0    pop         ecx
 0045B8F1    pop         ebp
 0045B8F2    ret
*}
end;

//0045B8F4
constructor sub_0045B8F4(AComparer:IComparer<System.Rtti.TRttiObject>);
begin
{*
 0045B8F4    push        ebp
 0045B8F5    mov         ebp,esp
 0045B8F7    push        0
 0045B8F9    push        ebx
 0045B8FA    push        esi
 0045B8FB    push        edi
 0045B8FC    test        dl,dl
>0045B8FE    je          0045B908
 0045B900    add         esp,0FFFFFFF0
 0045B903    call        @ClassCreate
 0045B908    mov         esi,ecx
 0045B90A    mov         ebx,edx
 0045B90C    mov         edi,eax
 0045B90E    xor         eax,eax
 0045B910    push        ebp
 0045B911    push        45B97F
 0045B916    push        dword ptr fs:[eax]
 0045B919    mov         dword ptr fs:[eax],esp
 0045B91C    xor         edx,edx
 0045B91E    mov         eax,edi
 0045B920    call        TObject.Create
 0045B925    mov         dword ptr [edi+14],edi;TList<System.Rtti.TRttiObject>.FOnNotify:TCollectionNotifyEvent<S...
 0045B928    mov         dword ptr [edi+10],45B840;TList<System.Rtti.TRttiObject>.FOnNotify:TCollectionNotifyEven...
 0045B92F    mov         dword ptr [edi+1C],edi
 0045B932    mov         dword ptr [edi+18],45B84C;sub_0045B84C
 0045B939    mov         eax,[0045F780];TList<System.Rtti.TRttiObject>.arrayofT
 0045B93E    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TRttiObject>.FComparer:IComparer<System.Rtti.TR...
 0045B941    lea         eax,[edi+24]
 0045B944    mov         edx,esi
 0045B946    call        @IntfCopy
 0045B94B    cmp         dword ptr [edi+24],0
>0045B94F    jne         0045B969
 0045B951    lea         edx,[ebp-4]
 0045B954    mov         eax,[00465ED4];TComparer<System.Rtti.TRttiObject>
 0045B959    call        TComparer<System.Rtti.TRttiObject>.Default
 0045B95E    mov         edx,dword ptr [ebp-4]
 0045B961    lea         eax,[edi+24]
 0045B964    call        @IntfCopy
 0045B969    xor         eax,eax
 0045B96B    pop         edx
 0045B96C    pop         ecx
 0045B96D    pop         ecx
 0045B96E    mov         dword ptr fs:[eax],edx
 0045B971    push        45B986
 0045B976    lea         eax,[ebp-4]
 0045B979    call        @IntfClear
 0045B97E    ret
>0045B97F    jmp         @HandleFinally
>0045B984    jmp         0045B976
 0045B986    mov         eax,edi
 0045B988    test        bl,bl
>0045B98A    je          0045B99B
 0045B98C    call        @AfterConstruction
 0045B991    pop         dword ptr fs:[0]
 0045B998    add         esp,0C
 0045B99B    mov         eax,edi
 0045B99D    pop         edi
 0045B99E    pop         esi
 0045B99F    pop         ebx
 0045B9A0    pop         ecx
 0045B9A1    pop         ebp
 0045B9A2    ret
*}
end;

//0045B9A4
destructor TList<System.Rtti.TRttiObject>.Destroy();
begin
{*
 0045B9A4    push        ebx
 0045B9A5    push        esi
 0045B9A6    call        @BeforeDestruction
 0045B9AB    mov         ebx,edx
 0045B9AD    mov         esi,eax
 0045B9AF    cmp         dword ptr [esi+8],0;TList<System.Rtti.TRttiObject>.FCount:Integer
>0045B9B3    jle         0045B9BE
 0045B9B5    xor         edx,edx
 0045B9B7    mov         eax,esi
 0045B9B9    call        0045B834
 0045B9BE    push        0
 0045B9C0    lea         eax,[esi+20]
 0045B9C3    mov         ecx,1
 0045B9C8    mov         edx,dword ptr ds:[45F780];TList<System.Rtti.TRttiObject>.arrayofT
 0045B9CE    call        @DynArraySetLength
 0045B9D3    add         esp,4
 0045B9D6    mov         dl,0FC
 0045B9D8    and         dl,bl
 0045B9DA    mov         eax,esi
 0045B9DC    call        TEnumerable<System.Rtti.TRttiObject>.Destroy
 0045B9E1    test        bl,bl
>0045B9E3    jle         0045B9EC
 0045B9E5    mov         eax,esi
 0045B9E7    call        @ClassDestroy
 0045B9EC    pop         esi
 0045B9ED    pop         ebx
 0045B9EE    ret
*}
end;

//0045B9F0
{*procedure TList<System.Rtti.TRttiObject>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045B9F0    push        ebp
 0045B9F1    mov         ebp,esp
 0045B9F3    add         esp,0FFFFFFF0
 0045B9F6    mov         dword ptr [ebp-8],ecx
 0045B9F9    mov         dword ptr [ebp-4],edx
 0045B9FC    push        dword ptr [ebp+4]
 0045B9FF    mov         eax,dword ptr [ebp-8]
 0045BA02    mov         dword ptr [ebp-10],eax
 0045BA05    mov         byte ptr [ebp-0C],0
 0045BA09    lea         eax,[ebp-10]
 0045BA0C    push        eax
 0045BA0D    push        0
 0045BA0F    mov         ecx,dword ptr [ebp-4]
 0045BA12    mov         dl,1
 0045BA14    mov         eax,[004180BC];EListError
 0045BA19    call        Exception.CreateFmt;EListError.Create
>0045BA1E    jmp         @RaiseExcept
end;*}

//0045BA28
procedure TList<System.Rtti.TRttiObject>.Add(Value:TRttiObject);
begin
{*
 0045BA28    push        ecx
 0045BA29    mov         dword ptr [esp],edx
 0045BA2C    mov         edx,esp
 0045BA2E    add         eax,8
 0045BA31    call        0043489C
 0045BA36    pop         edx
 0045BA37    ret
*}
end;

//0045BA38
{*procedure TList<System.Rtti.TRttiObject>.ToArray(?:?);
begin
 0045BA38    push        ecx
 0045BA39    mov         dword ptr [esp],edx
 0045BA3C    mov         edx,dword ptr [esp]
 0045BA3F    add         eax,8
 0045BA42    call        00435980
 0045BA47    pop         edx
 0045BA48    ret
end;*}

//0045BA4C
procedure TList<System.Rtti.TRttiObject>.GetEnumerator;
begin
{*
 0045BA4C    mov         ecx,eax
 0045BA4E    mov         dl,1
 0045BA50    mov         eax,[0045F8F0];TList<System.Rtti.TRttiObject>.TEnumerator
 0045BA55    call        0045BA88
 0045BA5A    ret
*}
end;

//0045BA5C
{*function sub_0045BA5C(?:?):?;
begin
 0045BA5C    push        ebx
 0045BA5D    push        esi
 0045BA5E    mov         ebx,dword ptr [eax+4]
 0045BA61    mov         esi,dword ptr [eax+8]
 0045BA64    lea         eax,[ebx+8]
 0045BA67    mov         edx,esi
 0045BA69    call        00434534
 0045BA6E    mov         eax,dword ptr [ebx+20]
 0045BA71    mov         eax,dword ptr [eax+esi*4]
 0045BA74    pop         esi
 0045BA75    pop         ebx
 0045BA76    ret
end;*}

//0045BA78
procedure sub_0045BA78;
begin
{*
 0045BA78    call        0045BA5C
 0045BA7D    ret
*}
end;

//0045BA80
procedure sub_0045BA80;
begin
{*
 0045BA80    call        TList<System.Rtti.TRttiObject>.TEnumerator.MoveNext
 0045BA85    ret
*}
end;

//0045BA88
constructor sub_0045BA88(AList:TList<System.Rtti.TRttiObject>);
begin
{*
 0045BA88    push        ebx
 0045BA89    push        esi
 0045BA8A    push        edi
 0045BA8B    test        dl,dl
>0045BA8D    je          0045BA97
 0045BA8F    add         esp,0FFFFFFF0
 0045BA92    call        @ClassCreate
 0045BA97    mov         esi,ecx
 0045BA99    mov         ebx,edx
 0045BA9B    mov         edi,eax
 0045BA9D    xor         edx,edx
 0045BA9F    mov         eax,edi
 0045BAA1    call        TObject.Create
 0045BAA6    mov         dword ptr [edi+4],esi;TList<System.Rtti.TRttiObject>.TEnumerator.FList:TList<System.Rtti...
 0045BAA9    mov         dword ptr [edi+8],0FFFFFFFF
 0045BAB0    mov         eax,edi
 0045BAB2    test        bl,bl
>0045BAB4    je          0045BAC5
 0045BAB6    call        @AfterConstruction
 0045BABB    pop         dword ptr fs:[0]
 0045BAC2    add         esp,0C
 0045BAC5    mov         eax,edi
 0045BAC7    pop         edi
 0045BAC8    pop         esi
 0045BAC9    pop         ebx
 0045BACA    ret
*}
end;

//0045BACC
function TList<System.Rtti.TRttiObject>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045BACC    mov         edx,dword ptr [eax+4]
 0045BACF    mov         edx,dword ptr [edx+8]
 0045BAD2    cmp         edx,dword ptr [eax+8]
>0045BAD5    jg          0045BADA
 0045BAD7    xor         eax,eax
 0045BAD9    ret
 0045BADA    inc         dword ptr [eax+8]
 0045BADD    mov         edx,dword ptr [eax+4]
 0045BAE0    mov         edx,dword ptr [edx+8]
 0045BAE3    cmp         edx,dword ptr [eax+8]
 0045BAE6    setg        al
 0045BAE9    ret
*}
end;

//0045BAEC
function TValue.TryAsType<System.Integer>(var AResult:Integer):Boolean;
begin
{*
 0045BAEC    push        ebp
 0045BAED    mov         ebp,esp
 0045BAEF    add         esp,0FFFFFFE0
 0045BAF2    push        ebx
 0045BAF3    mov         dword ptr [ebp-20],edx
 0045BAF6    mov         dword ptr [ebp-1C],eax
 0045BAF9    lea         eax,[ebp-18]
 0045BAFC    mov         edx,dword ptr ds:[435E20];TValue
 0045BB02    call        @AddRefRecord
 0045BB07    xor         eax,eax
 0045BB09    push        ebp
 0045BB0A    push        45BB60
 0045BB0F    push        dword ptr fs:[eax]
 0045BB12    mov         dword ptr fs:[eax],esp
 0045BB15    lea         eax,[ebp-18]
 0045BB18    mov         edx,dword ptr ds:[435E20];TValue
 0045BB1E    call        @FinalizeRecord
 0045BB23    mov         ecx,eax
 0045BB25    mov         eax,dword ptr [ebp-1C]
 0045BB28    mov         edx,dword ptr ds:[40109C];Integer
 0045BB2E    call        TValue.TryCast
 0045BB33    mov         ebx,eax
 0045BB35    test        bl,bl
>0045BB37    je          0045BB44
 0045BB39    mov         edx,dword ptr [ebp-20]
 0045BB3C    lea         eax,[ebp-18]
 0045BB3F    call        TValue.Get<System.Integer>
 0045BB44    xor         eax,eax
 0045BB46    pop         edx
 0045BB47    pop         ecx
 0045BB48    pop         ecx
 0045BB49    mov         dword ptr fs:[eax],edx
 0045BB4C    push        45BB67
 0045BB51    lea         eax,[ebp-18]
 0045BB54    mov         edx,dword ptr ds:[435E20];TValue
 0045BB5A    call        @FinalizeRecord
 0045BB5F    ret
>0045BB60    jmp         @HandleFinally
>0045BB65    jmp         0045BB51
 0045BB67    mov         eax,ebx
 0045BB69    pop         ebx
 0045BB6A    mov         esp,ebp
 0045BB6C    pop         ebp
 0045BB6D    ret
*}
end;

//0045BB70
function TValue.TryAsType<System.Boolean>(var AResult:Boolean):Boolean;
begin
{*
 0045BB70    push        ebp
 0045BB71    mov         ebp,esp
 0045BB73    add         esp,0FFFFFFE0
 0045BB76    push        ebx
 0045BB77    mov         dword ptr [ebp-20],edx
 0045BB7A    mov         dword ptr [ebp-1C],eax
 0045BB7D    lea         eax,[ebp-18]
 0045BB80    mov         edx,dword ptr ds:[435E20];TValue
 0045BB86    call        @AddRefRecord
 0045BB8B    xor         eax,eax
 0045BB8D    push        ebp
 0045BB8E    push        45BBE4
 0045BB93    push        dword ptr fs:[eax]
 0045BB96    mov         dword ptr fs:[eax],esp
 0045BB99    lea         eax,[ebp-18]
 0045BB9C    mov         edx,dword ptr ds:[435E20];TValue
 0045BBA2    call        @FinalizeRecord
 0045BBA7    mov         ecx,eax
 0045BBA9    mov         eax,dword ptr [ebp-1C]
 0045BBAC    mov         edx,dword ptr ds:[401000];Boolean
 0045BBB2    call        TValue.TryCast
 0045BBB7    mov         ebx,eax
 0045BBB9    test        bl,bl
>0045BBBB    je          0045BBC8
 0045BBBD    mov         edx,dword ptr [ebp-20]
 0045BBC0    lea         eax,[ebp-18]
 0045BBC3    call        TValue.Get<System.Boolean>
 0045BBC8    xor         eax,eax
 0045BBCA    pop         edx
 0045BBCB    pop         ecx
 0045BBCC    pop         ecx
 0045BBCD    mov         dword ptr fs:[eax],edx
 0045BBD0    push        45BBEB
 0045BBD5    lea         eax,[ebp-18]
 0045BBD8    mov         edx,dword ptr ds:[435E20];TValue
 0045BBDE    call        @FinalizeRecord
 0045BBE3    ret
>0045BBE4    jmp         @HandleFinally
>0045BBE9    jmp         0045BBD5
 0045BBEB    mov         eax,ebx
 0045BBED    pop         ebx
 0045BBEE    mov         esp,ebp
 0045BBF0    pop         ebp
 0045BBF1    ret
*}
end;

//0045BBF4
function TValue.TryAsType<System.Extended>(var AResult:Extended):Boolean;
begin
{*
 0045BBF4    push        ebp
 0045BBF5    mov         ebp,esp
 0045BBF7    add         esp,0FFFFFFE0
 0045BBFA    push        ebx
 0045BBFB    mov         dword ptr [ebp-20],edx
 0045BBFE    mov         dword ptr [ebp-1C],eax
 0045BC01    lea         eax,[ebp-18]
 0045BC04    mov         edx,dword ptr ds:[435E20];TValue
 0045BC0A    call        @AddRefRecord
 0045BC0F    xor         eax,eax
 0045BC11    push        ebp
 0045BC12    push        45BC68
 0045BC17    push        dword ptr fs:[eax]
 0045BC1A    mov         dword ptr fs:[eax],esp
 0045BC1D    lea         eax,[ebp-18]
 0045BC20    mov         edx,dword ptr ds:[435E20];TValue
 0045BC26    call        @FinalizeRecord
 0045BC2B    mov         ecx,eax
 0045BC2D    mov         eax,dword ptr [ebp-1C]
 0045BC30    mov         edx,dword ptr ds:[40119C];Extended
 0045BC36    call        TValue.TryCast
 0045BC3B    mov         ebx,eax
 0045BC3D    test        bl,bl
>0045BC3F    je          0045BC4C
 0045BC41    mov         edx,dword ptr [ebp-20]
 0045BC44    lea         eax,[ebp-18]
 0045BC47    call        TValue.Get<System.Extended>
 0045BC4C    xor         eax,eax
 0045BC4E    pop         edx
 0045BC4F    pop         ecx
 0045BC50    pop         ecx
 0045BC51    mov         dword ptr fs:[eax],edx
 0045BC54    push        45BC6F
 0045BC59    lea         eax,[ebp-18]
 0045BC5C    mov         edx,dword ptr ds:[435E20];TValue
 0045BC62    call        @FinalizeRecord
 0045BC67    ret
>0045BC68    jmp         @HandleFinally
>0045BC6D    jmp         0045BC59
 0045BC6F    mov         eax,ebx
 0045BC71    pop         ebx
 0045BC72    mov         esp,ebp
 0045BC74    pop         ebp
 0045BC75    ret
*}
end;

//0045BC78
function TValue.TryAsType<System.Int64>(var AResult:Int64):Boolean;
begin
{*
 0045BC78    push        ebp
 0045BC79    mov         ebp,esp
 0045BC7B    add         esp,0FFFFFFE0
 0045BC7E    push        ebx
 0045BC7F    mov         dword ptr [ebp-20],edx
 0045BC82    mov         dword ptr [ebp-1C],eax
 0045BC85    lea         eax,[ebp-18]
 0045BC88    mov         edx,dword ptr ds:[435E20];TValue
 0045BC8E    call        @AddRefRecord
 0045BC93    xor         eax,eax
 0045BC95    push        ebp
 0045BC96    push        45BCEC
 0045BC9B    push        dword ptr fs:[eax]
 0045BC9E    mov         dword ptr fs:[eax],esp
 0045BCA1    lea         eax,[ebp-18]
 0045BCA4    mov         edx,dword ptr ds:[435E20];TValue
 0045BCAA    call        @FinalizeRecord
 0045BCAF    mov         ecx,eax
 0045BCB1    mov         eax,dword ptr [ebp-1C]
 0045BCB4    mov         edx,dword ptr ds:[401114];Int64
 0045BCBA    call        TValue.TryCast
 0045BCBF    mov         ebx,eax
 0045BCC1    test        bl,bl
>0045BCC3    je          0045BCD0
 0045BCC5    mov         edx,dword ptr [ebp-20]
 0045BCC8    lea         eax,[ebp-18]
 0045BCCB    call        TValue.Get<System.Int64>
 0045BCD0    xor         eax,eax
 0045BCD2    pop         edx
 0045BCD3    pop         ecx
 0045BCD4    pop         ecx
 0045BCD5    mov         dword ptr fs:[eax],edx
 0045BCD8    push        45BCF3
 0045BCDD    lea         eax,[ebp-18]
 0045BCE0    mov         edx,dword ptr ds:[435E20];TValue
 0045BCE6    call        @FinalizeRecord
 0045BCEB    ret
>0045BCEC    jmp         @HandleFinally
>0045BCF1    jmp         0045BCDD
 0045BCF3    mov         eax,ebx
 0045BCF5    pop         ebx
 0045BCF6    mov         esp,ebp
 0045BCF8    pop         ebp
 0045BCF9    ret
*}
end;

//0045BD80
function TValue.TryAsType<System.IInterface>(var AResult:IInterface):Boolean;
begin
{*
 0045BD80    push        ebp
 0045BD81    mov         ebp,esp
 0045BD83    add         esp,0FFFFFFE0
 0045BD86    push        ebx
 0045BD87    mov         dword ptr [ebp-20],edx
 0045BD8A    mov         dword ptr [ebp-1C],eax
 0045BD8D    mov         eax,dword ptr [ebp-20]
 0045BD90    test        eax,eax
>0045BD92    je          0045BD98
 0045BD94    xor         edx,edx
 0045BD96    mov         dword ptr [eax],edx
 0045BD98    lea         eax,[ebp-18]
 0045BD9B    mov         edx,dword ptr ds:[435E20];TValue
 0045BDA1    call        @AddRefRecord
 0045BDA6    xor         eax,eax
 0045BDA8    push        ebp
 0045BDA9    push        45BE06
 0045BDAE    push        dword ptr fs:[eax]
 0045BDB1    mov         dword ptr fs:[eax],esp
 0045BDB4    lea         eax,[ebp-18]
 0045BDB7    mov         edx,dword ptr ds:[435E20];TValue
 0045BDBD    call        @FinalizeRecord
 0045BDC2    mov         ecx,eax
 0045BDC4    mov         eax,dword ptr [ebp-1C]
 0045BDC7    mov         edx,dword ptr ds:[4022C8];IInterface
 0045BDCD    call        TValue.TryCast
 0045BDD2    mov         ebx,eax
 0045BDD4    test        bl,bl
>0045BDD6    je          0045BDEA
 0045BDD8    mov         eax,dword ptr [ebp-20]
 0045BDDB    call        @IntfClear
 0045BDE0    mov         edx,eax
 0045BDE2    lea         eax,[ebp-18]
 0045BDE5    call        TValue.Get<System.IInterface>
 0045BDEA    xor         eax,eax
 0045BDEC    pop         edx
 0045BDED    pop         ecx
 0045BDEE    pop         ecx
 0045BDEF    mov         dword ptr fs:[eax],edx
 0045BDF2    push        45BE0D
 0045BDF7    lea         eax,[ebp-18]
 0045BDFA    mov         edx,dword ptr ds:[435E20];TValue
 0045BE00    call        @FinalizeRecord
 0045BE05    ret
>0045BE06    jmp         @HandleFinally
>0045BE0B    jmp         0045BDF7
 0045BE0D    mov         eax,ebx
 0045BE0F    pop         ebx
 0045BE10    mov         esp,ebp
 0045BE12    pop         ebp
 0045BE13    ret
*}
end;

//0045BE14
function TValue.TryAsType<System.string>(var AResult:AnsiString):Boolean;
begin
{*
 0045BE14    push        ebp
 0045BE15    mov         ebp,esp
 0045BE17    add         esp,0FFFFFFE0
 0045BE1A    push        ebx
 0045BE1B    mov         dword ptr [ebp-20],edx
 0045BE1E    mov         dword ptr [ebp-1C],eax
 0045BE21    mov         eax,dword ptr [ebp-20]
 0045BE24    test        eax,eax
>0045BE26    je          0045BE2C
 0045BE28    xor         edx,edx
 0045BE2A    mov         dword ptr [eax],edx
 0045BE2C    lea         eax,[ebp-18]
 0045BE2F    mov         edx,dword ptr ds:[435E20];TValue
 0045BE35    call        @AddRefRecord
 0045BE3A    xor         eax,eax
 0045BE3C    push        ebp
 0045BE3D    push        45BE9A
 0045BE42    push        dword ptr fs:[eax]
 0045BE45    mov         dword ptr fs:[eax],esp
 0045BE48    lea         eax,[ebp-18]
 0045BE4B    mov         edx,dword ptr ds:[435E20];TValue
 0045BE51    call        @FinalizeRecord
 0045BE56    mov         ecx,eax
 0045BE58    mov         eax,dword ptr [ebp-1C]
 0045BE5B    mov         edx,dword ptr ds:[4012B8];string
 0045BE61    call        TValue.TryCast
 0045BE66    mov         ebx,eax
 0045BE68    test        bl,bl
>0045BE6A    je          0045BE7E
 0045BE6C    mov         eax,dword ptr [ebp-20]
 0045BE6F    call        @UStrClr
 0045BE74    mov         edx,eax
 0045BE76    lea         eax,[ebp-18]
 0045BE79    call        TValue.Get<System.string>
 0045BE7E    xor         eax,eax
 0045BE80    pop         edx
 0045BE81    pop         ecx
 0045BE82    pop         ecx
 0045BE83    mov         dword ptr fs:[eax],edx
 0045BE86    push        45BEA1
 0045BE8B    lea         eax,[ebp-18]
 0045BE8E    mov         edx,dword ptr ds:[435E20];TValue
 0045BE94    call        @FinalizeRecord
 0045BE99    ret
>0045BE9A    jmp         @HandleFinally
>0045BE9F    jmp         0045BE8B
 0045BEA1    mov         eax,ebx
 0045BEA3    pop         ebx
 0045BEA4    mov         esp,ebp
 0045BEA6    pop         ebp
 0045BEA7    ret
*}
end;

//0045BEA8
{*function sub_0045BEA8(?:?; ?:?):?;
begin
 0045BEA8    push        ebp
 0045BEA9    mov         ebp,esp
 0045BEAB    add         esp,0FFFFFFE0
 0045BEAE    push        ebx
 0045BEAF    mov         dword ptr [ebp-20],edx
 0045BEB2    mov         dword ptr [ebp-1C],eax
 0045BEB5    mov         eax,dword ptr [ebp-20]
 0045BEB8    mov         edx,dword ptr [ebp-20]
 0045BEBB    test        edx,edx
>0045BEBD    je          0045BECC
 0045BEBF    xor         ecx,ecx
 0045BEC1    mov         dword ptr [edx+0C],ecx
 0045BEC4    mov         dword ptr [edx+8],ecx
 0045BEC7    mov         dword ptr [edx+4],ecx
 0045BECA    mov         dword ptr [edx],ecx
 0045BECC    lea         eax,[ebp-18]
 0045BECF    mov         edx,dword ptr ds:[435E20];TValue
 0045BED5    call        @AddRefRecord
 0045BEDA    xor         eax,eax
 0045BEDC    push        ebp
 0045BEDD    push        45BF3A
 0045BEE2    push        dword ptr fs:[eax]
 0045BEE5    mov         dword ptr fs:[eax],esp
 0045BEE8    lea         eax,[ebp-18]
 0045BEEB    mov         edx,dword ptr ds:[435E20];TValue
 0045BEF1    call        @FinalizeRecord
 0045BEF6    mov         ecx,eax
 0045BEF8    mov         eax,dword ptr [ebp-1C]
 0045BEFB    mov         edx,dword ptr ds:[4012F0];Variant
 0045BF01    call        TValue.TryCast
 0045BF06    mov         ebx,eax
 0045BF08    test        bl,bl
>0045BF0A    je          0045BF1E
 0045BF0C    mov         eax,dword ptr [ebp-20]
 0045BF0F    call        @VarClr
 0045BF14    mov         edx,eax
 0045BF16    lea         eax,[ebp-18]
 0045BF19    call        0045D1D0
 0045BF1E    xor         eax,eax
 0045BF20    pop         edx
 0045BF21    pop         ecx
 0045BF22    pop         ecx
 0045BF23    mov         dword ptr fs:[eax],edx
 0045BF26    push        45BF41
 0045BF2B    lea         eax,[ebp-18]
 0045BF2E    mov         edx,dword ptr ds:[435E20];TValue
 0045BF34    call        @FinalizeRecord
 0045BF39    ret
>0045BF3A    jmp         @HandleFinally
>0045BF3F    jmp         0045BF2B
 0045BF41    mov         eax,ebx
 0045BF43    pop         ebx
 0045BF44    mov         esp,ebp
 0045BF46    pop         ebp
 0045BF47    ret
end;*}

//0045C014
procedure sub_0045C014(?:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>);
begin
{*
 0045C014    add         eax,8
 0045C017    call        00435860
 0045C01C    ret
*}
end;

//0045C020
{*procedure sub_0045C020(?:?);
begin
 0045C020    push        ebx
 0045C021    push        esi
 0045C022    mov         esi,eax
 0045C024    mov         eax,esi
 0045C026    mov         ebx,dword ptr [eax]
 0045C028    call        dword ptr [ebx+8]
 0045C02B    pop         esi
 0045C02C    pop         ebx
 0045C02D    ret
end;*}

//0045C030
{*procedure sub_0045C030(?:?);
begin
 0045C030    push        ebx
 0045C031    push        esi
 0045C032    mov         esi,eax
 0045C034    mov         eax,dword ptr [esi+24]
 0045C037    mov         ebx,dword ptr [eax]
 0045C039    call        dword ptr [ebx+0C]
 0045C03C    pop         esi
 0045C03D    pop         ebx
 0045C03E    ret
end;*}

//0045C040
procedure sub_0045C040;
begin
{*
 0045C040    call        TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator
 0045C045    ret
*}
end;

//0045C048
{*procedure sub_0045C048(?:?);
begin
 0045C048    push        esi
 0045C049    mov         esi,eax
 0045C04B    cmp         word ptr [esi+2A],0
>0045C050    je          0045C05D
 0045C052    push        ecx
 0045C053    mov         ecx,edx
 0045C055    mov         edx,esi
 0045C057    mov         eax,dword ptr [esi+2C]
 0045C05A    call        dword ptr [esi+28]
 0045C05D    pop         esi
 0045C05E    ret
end;*}

//0045C060
constructor sub_0045C060;
begin
{*
 0045C060    push        ebp
 0045C061    mov         ebp,esp
 0045C063    push        0
 0045C065    push        ebx
 0045C066    push        esi
 0045C067    test        dl,dl
>0045C069    je          0045C073
 0045C06B    add         esp,0FFFFFFF0
 0045C06E    call        @ClassCreate
 0045C073    mov         ebx,edx
 0045C075    mov         esi,eax
 0045C077    xor         eax,eax
 0045C079    push        ebp
 0045C07A    push        45C0B4
 0045C07F    push        dword ptr fs:[eax]
 0045C082    mov         dword ptr fs:[eax],esp
 0045C085    lea         edx,[ebp-4]
 0045C088    mov         eax,[00466164];TComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>
 0045C08D    call        TComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Default
 0045C092    mov         ecx,dword ptr [ebp-4]
 0045C095    xor         edx,edx
 0045C097    mov         eax,esi
 0045C099    call        0045C0D8
 0045C09E    xor         eax,eax
 0045C0A0    pop         edx
 0045C0A1    pop         ecx
 0045C0A2    pop         ecx
 0045C0A3    mov         dword ptr fs:[eax],edx
 0045C0A6    push        45C0BB
 0045C0AB    lea         eax,[ebp-4]
 0045C0AE    call        @IntfClear
 0045C0B3    ret
>0045C0B4    jmp         @HandleFinally
>0045C0B9    jmp         0045C0AB
 0045C0BB    mov         eax,esi
 0045C0BD    test        bl,bl
>0045C0BF    je          0045C0D0
 0045C0C1    call        @AfterConstruction
 0045C0C6    pop         dword ptr fs:[0]
 0045C0CD    add         esp,0C
 0045C0D0    mov         eax,esi
 0045C0D2    pop         esi
 0045C0D3    pop         ebx
 0045C0D4    pop         ecx
 0045C0D5    pop         ebp
 0045C0D6    ret
*}
end;

//0045C0D8
constructor sub_0045C0D8(AComparer:IComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>);
begin
{*
 0045C0D8    push        ebp
 0045C0D9    mov         ebp,esp
 0045C0DB    push        0
 0045C0DD    push        ebx
 0045C0DE    push        esi
 0045C0DF    push        edi
 0045C0E0    test        dl,dl
>0045C0E2    je          0045C0EC
 0045C0E4    add         esp,0FFFFFFF0
 0045C0E7    call        @ClassCreate
 0045C0EC    mov         esi,ecx
 0045C0EE    mov         ebx,edx
 0045C0F0    mov         edi,eax
 0045C0F2    xor         eax,eax
 0045C0F4    push        ebp
 0045C0F5    push        45C163
 0045C0FA    push        dword ptr fs:[eax]
 0045C0FD    mov         dword ptr fs:[eax],esp
 0045C100    xor         edx,edx
 0045C102    mov         eax,edi
 0045C104    call        TObject.Create
 0045C109    mov         dword ptr [edi+14],edi;TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>....
 0045C10C    mov         dword ptr [edi+10],45C020;TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string...
 0045C113    mov         dword ptr [edi+1C],edi
 0045C116    mov         dword ptr [edi+18],45C030;sub_0045C030
 0045C11D    mov         eax,[00460764];TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.arrayofT
 0045C122    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>....
 0045C125    lea         eax,[edi+24]
 0045C128    mov         edx,esi
 0045C12A    call        @IntfCopy
 0045C12F    cmp         dword ptr [edi+24],0
>0045C133    jne         0045C14D
 0045C135    lea         edx,[ebp-4]
 0045C138    mov         eax,[00466164];TComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>
 0045C13D    call        TComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Default
 0045C142    mov         edx,dword ptr [ebp-4]
 0045C145    lea         eax,[edi+24]
 0045C148    call        @IntfCopy
 0045C14D    xor         eax,eax
 0045C14F    pop         edx
 0045C150    pop         ecx
 0045C151    pop         ecx
 0045C152    mov         dword ptr fs:[eax],edx
 0045C155    push        45C16A
 0045C15A    lea         eax,[ebp-4]
 0045C15D    call        @IntfClear
 0045C162    ret
>0045C163    jmp         @HandleFinally
>0045C168    jmp         0045C15A
 0045C16A    mov         eax,edi
 0045C16C    test        bl,bl
>0045C16E    je          0045C17F
 0045C170    call        @AfterConstruction
 0045C175    pop         dword ptr fs:[0]
 0045C17C    add         esp,0C
 0045C17F    mov         eax,edi
 0045C181    pop         edi
 0045C182    pop         esi
 0045C183    pop         ebx
 0045C184    pop         ecx
 0045C185    pop         ebp
 0045C186    ret
*}
end;

//0045C188
destructor TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy();
begin
{*
 0045C188    push        ebx
 0045C189    push        esi
 0045C18A    call        @BeforeDestruction
 0045C18F    mov         ebx,edx
 0045C191    mov         esi,eax
 0045C193    cmp         dword ptr [esi+8],0;TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.FCo...
>0045C197    jle         0045C1A2
 0045C199    xor         edx,edx
 0045C19B    mov         eax,esi
 0045C19D    call        0045C014
 0045C1A2    push        0
 0045C1A4    lea         eax,[esi+20]
 0045C1A7    mov         ecx,1
 0045C1AC    mov         edx,dword ptr ds:[460764];TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string...
 0045C1B2    call        @DynArraySetLength
 0045C1B7    add         esp,4
 0045C1BA    mov         dl,0FC
 0045C1BC    and         dl,bl
 0045C1BE    mov         eax,esi
 0045C1C0    call        TEnumerable<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Destroy
 0045C1C5    test        bl,bl
>0045C1C7    jle         0045C1D0
 0045C1C9    mov         eax,esi
 0045C1CB    call        @ClassDestroy
 0045C1D0    pop         esi
 0045C1D1    pop         ebx
 0045C1D2    ret
*}
end;

//0045C1D4
{*procedure TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045C1D4    push        ebp
 0045C1D5    mov         ebp,esp
 0045C1D7    add         esp,0FFFFFFF0
 0045C1DA    mov         dword ptr [ebp-8],ecx
 0045C1DD    mov         dword ptr [ebp-4],edx
 0045C1E0    push        dword ptr [ebp+4]
 0045C1E3    mov         eax,dword ptr [ebp-8]
 0045C1E6    mov         dword ptr [ebp-10],eax
 0045C1E9    mov         byte ptr [ebp-0C],0
 0045C1ED    lea         eax,[ebp-10]
 0045C1F0    push        eax
 0045C1F1    push        0
 0045C1F3    mov         ecx,dword ptr [ebp-4]
 0045C1F6    mov         dl,1
 0045C1F8    mov         eax,[004180BC];EListError
 0045C1FD    call        Exception.CreateFmt;EListError.Create
>0045C202    jmp         @RaiseExcept
end;*}

//0045C20C
procedure TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Add(Value:TPair<System.TypInfo.PTypeInfo,System.string>);
begin
{*
 0045C20C    push        ecx
 0045C20D    mov         dword ptr [esp],edx
 0045C210    mov         edx,dword ptr [esp]
 0045C213    add         eax,8
 0045C216    call        0043492C
 0045C21B    pop         edx
 0045C21C    ret
*}
end;

//0045C220
{*procedure TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.ToArray(?:?);
begin
 0045C220    push        ecx
 0045C221    mov         dword ptr [esp],edx
 0045C224    mov         edx,dword ptr [esp]
 0045C227    add         eax,8
 0045C22A    call        004359D4
 0045C22F    pop         edx
 0045C230    ret
end;*}

//0045C234
procedure TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.GetEnumerator;
begin
{*
 0045C234    mov         ecx,eax
 0045C236    mov         dl,1
 0045C238    mov         eax,[00460A60];TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.TEnumera...
 0045C23D    call        0045C2E8
 0045C242    ret
*}
end;

//0045C244
{*procedure sub_0045C244(?:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.TEnumerator; ?:?);
begin
 0045C244    push        ebp
 0045C245    mov         ebp,esp
 0045C247    add         esp,0FFFFFFF8
 0045C24A    push        ebx
 0045C24B    push        esi
 0045C24C    push        edi
 0045C24D    mov         edi,edx
 0045C24F    mov         ebx,eax
 0045C251    lea         eax,[ebp-8]
 0045C254    mov         edx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 0045C25A    call        @AddRefRecord
 0045C25F    xor         eax,eax
 0045C261    push        ebp
 0045C262    push        45C2BD
 0045C267    push        dword ptr fs:[eax]
 0045C26A    mov         dword ptr fs:[eax],esp
 0045C26D    mov         esi,dword ptr [ebx+4]
 0045C270    mov         ebx,dword ptr [ebx+8]
 0045C273    lea         eax,[esi+8]
 0045C276    mov         edx,ebx
 0045C278    call        00434534
 0045C27D    lea         eax,[ebp-8]
 0045C280    mov         edx,dword ptr [esi+20]
 0045C283    lea         edx,[edx+ebx*8]
 0045C286    mov         ecx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 0045C28C    call        @CopyRecord
 0045C291    mov         eax,edi
 0045C293    lea         edx,[ebp-8]
 0045C296    mov         ecx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 0045C29C    call        @CopyRecord
 0045C2A1    xor         eax,eax
 0045C2A3    pop         edx
 0045C2A4    pop         ecx
 0045C2A5    pop         ecx
 0045C2A6    mov         dword ptr fs:[eax],edx
 0045C2A9    push        45C2C4
 0045C2AE    lea         eax,[ebp-8]
 0045C2B1    mov         edx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 0045C2B7    call        @FinalizeRecord
 0045C2BC    ret
>0045C2BD    jmp         @HandleFinally
>0045C2C2    jmp         0045C2AE
 0045C2C4    pop         edi
 0045C2C5    pop         esi
 0045C2C6    pop         ebx
 0045C2C7    pop         ecx
 0045C2C8    pop         ecx
 0045C2C9    pop         ebp
 0045C2CA    ret
end;*}

//0045C2CC
{*procedure sub_0045C2CC(?:?);
begin
 0045C2CC    push        ebx
 0045C2CD    push        esi
 0045C2CE    mov         esi,edx
 0045C2D0    mov         ebx,eax
 0045C2D2    mov         edx,esi
 0045C2D4    mov         eax,ebx
 0045C2D6    call        0045C244
 0045C2DB    pop         esi
 0045C2DC    pop         ebx
 0045C2DD    ret
end;*}

//0045C2E0
procedure sub_0045C2E0;
begin
{*
 0045C2E0    call        TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.TEnumerator.MoveNext
 0045C2E5    ret
*}
end;

//0045C2E8
constructor sub_0045C2E8(AList:TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>);
begin
{*
 0045C2E8    push        ebx
 0045C2E9    push        esi
 0045C2EA    push        edi
 0045C2EB    test        dl,dl
>0045C2ED    je          0045C2F7
 0045C2EF    add         esp,0FFFFFFF0
 0045C2F2    call        @ClassCreate
 0045C2F7    mov         esi,ecx
 0045C2F9    mov         ebx,edx
 0045C2FB    mov         edi,eax
 0045C2FD    xor         edx,edx
 0045C2FF    mov         eax,edi
 0045C301    call        TObject.Create
 0045C306    mov         dword ptr [edi+4],esi;TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.T...
 0045C309    mov         dword ptr [edi+8],0FFFFFFFF
 0045C310    mov         eax,edi
 0045C312    test        bl,bl
>0045C314    je          0045C325
 0045C316    call        @AfterConstruction
 0045C31B    pop         dword ptr fs:[0]
 0045C322    add         esp,0C
 0045C325    mov         eax,edi
 0045C327    pop         edi
 0045C328    pop         esi
 0045C329    pop         ebx
 0045C32A    ret
*}
end;

//0045C32C
function TList<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045C32C    mov         edx,dword ptr [eax+4]
 0045C32F    mov         edx,dword ptr [edx+8]
 0045C332    cmp         edx,dword ptr [eax+8]
>0045C335    jg          0045C33A
 0045C337    xor         eax,eax
 0045C339    ret
 0045C33A    inc         dword ptr [eax+8]
 0045C33D    mov         edx,dword ptr [eax+4]
 0045C340    mov         edx,dword ptr [edx+8]
 0045C343    cmp         edx,dword ptr [eax+8]
 0045C346    setg        al
 0045C349    ret
*}
end;

//0045C34C
{*procedure sub_0045C34C(?:?);
begin
 0045C34C    push        ebx
 0045C34D    mov         ebx,eax
 0045C34F    mov         ecx,4
 0045C354    mov         edx,dword ptr ds:[46701C];PTypeInfo
 0045C35A    mov         al,1
 0045C35C    call        _LookupVtableInfo
 0045C361    mov         edx,eax
 0045C363    mov         eax,ebx
 0045C365    call        @IntfCopy
 0045C36A    pop         ebx
 0045C36B    ret
end;*}

//0045C3B4
procedure sub_0045C3B4(?:TList<System.TypInfo.PTypeInfo>);
begin
{*
 0045C3B4    add         eax,8
 0045C3B7    call        004357A0
 0045C3BC    ret
*}
end;

//0045C3C0
{*procedure sub_0045C3C0(?:?; ?:?);
begin
 0045C3C0    push        ebx
 0045C3C1    mov         edx,dword ptr [edx]
 0045C3C3    mov         ebx,dword ptr [eax]
 0045C3C5    call        dword ptr [ebx+8]
 0045C3C8    pop         ebx
 0045C3C9    ret
end;*}

//0045C3CC
{*procedure sub_0045C3CC(?:?; ?:?; ?:?);
begin
 0045C3CC    push        ebx
 0045C3CD    mov         edx,dword ptr [edx]
 0045C3CF    mov         ecx,dword ptr [ecx]
 0045C3D1    mov         eax,dword ptr [eax+24]
 0045C3D4    mov         ebx,dword ptr [eax]
 0045C3D6    call        dword ptr [ebx+0C]
 0045C3D9    pop         ebx
 0045C3DA    ret
end;*}

//0045C3DC
procedure sub_0045C3DC;
begin
{*
 0045C3DC    call        TList<System.TypInfo.PTypeInfo>.GetEnumerator
 0045C3E1    ret
*}
end;

//0045C3E4
{*procedure sub_0045C3E4(?:?);
begin
 0045C3E4    push        ebx
 0045C3E5    cmp         word ptr [eax+2A],0
>0045C3EA    je          0045C3F9
 0045C3EC    push        ecx
 0045C3ED    mov         ebx,eax
 0045C3EF    mov         ecx,edx
 0045C3F1    mov         edx,eax
 0045C3F3    mov         eax,dword ptr [ebx+2C]
 0045C3F6    call        dword ptr [ebx+28]
 0045C3F9    pop         ebx
 0045C3FA    ret
end;*}

//0045C3FC
constructor sub_0045C3FC;
begin
{*
 0045C3FC    push        ebp
 0045C3FD    mov         ebp,esp
 0045C3FF    push        0
 0045C401    push        ebx
 0045C402    push        esi
 0045C403    test        dl,dl
>0045C405    je          0045C40F
 0045C407    add         esp,0FFFFFFF0
 0045C40A    call        @ClassCreate
 0045C40F    mov         ebx,edx
 0045C411    mov         esi,eax
 0045C413    xor         eax,eax
 0045C415    push        ebp
 0045C416    push        45C450
 0045C41B    push        dword ptr fs:[eax]
 0045C41E    mov         dword ptr fs:[eax],esp
 0045C421    lea         edx,[ebp-4]
 0045C424    mov         eax,[0046641C];TComparer<System.TypInfo.PTypeInfo>
 0045C429    call        TComparer<System.TypInfo.PTypeInfo>.Default
 0045C42E    mov         ecx,dword ptr [ebp-4]
 0045C431    xor         edx,edx
 0045C433    mov         eax,esi
 0045C435    call        0045C474
 0045C43A    xor         eax,eax
 0045C43C    pop         edx
 0045C43D    pop         ecx
 0045C43E    pop         ecx
 0045C43F    mov         dword ptr fs:[eax],edx
 0045C442    push        45C457
 0045C447    lea         eax,[ebp-4]
 0045C44A    call        @IntfClear
 0045C44F    ret
>0045C450    jmp         @HandleFinally
>0045C455    jmp         0045C447
 0045C457    mov         eax,esi
 0045C459    test        bl,bl
>0045C45B    je          0045C46C
 0045C45D    call        @AfterConstruction
 0045C462    pop         dword ptr fs:[0]
 0045C469    add         esp,0C
 0045C46C    mov         eax,esi
 0045C46E    pop         esi
 0045C46F    pop         ebx
 0045C470    pop         ecx
 0045C471    pop         ebp
 0045C472    ret
*}
end;

//0045C474
constructor sub_0045C474(AComparer:IComparer<System.TypInfo.PTypeInfo>);
begin
{*
 0045C474    push        ebp
 0045C475    mov         ebp,esp
 0045C477    push        0
 0045C479    push        ebx
 0045C47A    push        esi
 0045C47B    push        edi
 0045C47C    test        dl,dl
>0045C47E    je          0045C488
 0045C480    add         esp,0FFFFFFF0
 0045C483    call        @ClassCreate
 0045C488    mov         esi,ecx
 0045C48A    mov         ebx,edx
 0045C48C    mov         edi,eax
 0045C48E    xor         eax,eax
 0045C490    push        ebp
 0045C491    push        45C4FF
 0045C496    push        dword ptr fs:[eax]
 0045C499    mov         dword ptr fs:[eax],esp
 0045C49C    xor         edx,edx
 0045C49E    mov         eax,edi
 0045C4A0    call        TObject.Create
 0045C4A5    mov         dword ptr [edi+14],edi;TList<System.TypInfo.PTypeInfo>.FOnNotify:TCollectionNotifyEvent<...
 0045C4A8    mov         dword ptr [edi+10],45C3C0;TList<System.TypInfo.PTypeInfo>.FOnNotify:TCollectionNotifyEve...
 0045C4AF    mov         dword ptr [edi+1C],edi
 0045C4B2    mov         dword ptr [edi+18],45C3CC;sub_0045C3CC
 0045C4B9    mov         eax,[00461994];TList<System.TypInfo.PTypeInfo>.arrayofT
 0045C4BE    mov         dword ptr [edi+0C],eax;TList<System.TypInfo.PTypeInfo>.FComparer:IComparer<System.TypInf...
 0045C4C1    lea         eax,[edi+24]
 0045C4C4    mov         edx,esi
 0045C4C6    call        @IntfCopy
 0045C4CB    cmp         dword ptr [edi+24],0
>0045C4CF    jne         0045C4E9
 0045C4D1    lea         edx,[ebp-4]
 0045C4D4    mov         eax,[0046641C];TComparer<System.TypInfo.PTypeInfo>
 0045C4D9    call        TComparer<System.TypInfo.PTypeInfo>.Default
 0045C4DE    mov         edx,dword ptr [ebp-4]
 0045C4E1    lea         eax,[edi+24]
 0045C4E4    call        @IntfCopy
 0045C4E9    xor         eax,eax
 0045C4EB    pop         edx
 0045C4EC    pop         ecx
 0045C4ED    pop         ecx
 0045C4EE    mov         dword ptr fs:[eax],edx
 0045C4F1    push        45C506
 0045C4F6    lea         eax,[ebp-4]
 0045C4F9    call        @IntfClear
 0045C4FE    ret
>0045C4FF    jmp         @HandleFinally
>0045C504    jmp         0045C4F6
 0045C506    mov         eax,edi
 0045C508    test        bl,bl
>0045C50A    je          0045C51B
 0045C50C    call        @AfterConstruction
 0045C511    pop         dword ptr fs:[0]
 0045C518    add         esp,0C
 0045C51B    mov         eax,edi
 0045C51D    pop         edi
 0045C51E    pop         esi
 0045C51F    pop         ebx
 0045C520    pop         ecx
 0045C521    pop         ebp
 0045C522    ret
*}
end;

//0045C524
destructor TList<System.TypInfo.PTypeInfo>.Destroy();
begin
{*
 0045C524    push        ebx
 0045C525    push        esi
 0045C526    call        @BeforeDestruction
 0045C52B    mov         ebx,edx
 0045C52D    mov         esi,eax
 0045C52F    cmp         dword ptr [esi+8],0;TList<System.TypInfo.PTypeInfo>.FCount:Integer
>0045C533    jle         0045C53E
 0045C535    xor         edx,edx
 0045C537    mov         eax,esi
 0045C539    call        0045C3B4
 0045C53E    push        0
 0045C540    lea         eax,[esi+20]
 0045C543    mov         ecx,1
 0045C548    mov         edx,dword ptr ds:[461994];TList<System.TypInfo.PTypeInfo>.arrayofT
 0045C54E    call        @DynArraySetLength
 0045C553    add         esp,4
 0045C556    mov         dl,0FC
 0045C558    and         dl,bl
 0045C55A    mov         eax,esi
 0045C55C    call        TEnumerable<System.TypInfo.PTypeInfo>.Destroy
 0045C561    test        bl,bl
>0045C563    jle         0045C56C
 0045C565    mov         eax,esi
 0045C567    call        @ClassDestroy
 0045C56C    pop         esi
 0045C56D    pop         ebx
 0045C56E    ret
*}
end;

//0045C570
{*procedure TList<System.TypInfo.PTypeInfo>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045C570    push        ebp
 0045C571    mov         ebp,esp
 0045C573    add         esp,0FFFFFFF0
 0045C576    mov         dword ptr [ebp-8],ecx
 0045C579    mov         dword ptr [ebp-4],edx
 0045C57C    push        dword ptr [ebp+4]
 0045C57F    mov         eax,dword ptr [ebp-8]
 0045C582    mov         dword ptr [ebp-10],eax
 0045C585    mov         byte ptr [ebp-0C],0
 0045C589    lea         eax,[ebp-10]
 0045C58C    push        eax
 0045C58D    push        0
 0045C58F    mov         ecx,dword ptr [ebp-4]
 0045C592    mov         dl,1
 0045C594    mov         eax,[004180BC];EListError
 0045C599    call        Exception.CreateFmt;EListError.Create
>0045C59E    jmp         @RaiseExcept
end;*}

//0045C5A8
procedure TList<System.TypInfo.PTypeInfo>.Add(Value:PTypeInfo);
begin
{*
 0045C5A8    push        ecx
 0045C5A9    mov         dword ptr [esp],edx
 0045C5AC    mov         edx,esp
 0045C5AE    add         eax,8
 0045C5B1    call        0043489C
 0045C5B6    pop         edx
 0045C5B7    ret
*}
end;

//0045C5B8
{*procedure TList<System.TypInfo.PTypeInfo>.ToArray(?:?);
begin
 0045C5B8    push        ecx
 0045C5B9    mov         dword ptr [esp],edx
 0045C5BC    mov         edx,dword ptr [esp]
 0045C5BF    add         eax,8
 0045C5C2    call        00435980
 0045C5C7    pop         edx
 0045C5C8    ret
end;*}

//0045C5CC
procedure TList<System.TypInfo.PTypeInfo>.GetEnumerator;
begin
{*
 0045C5CC    mov         ecx,eax
 0045C5CE    mov         dl,1
 0045C5D0    mov         eax,[00461B0C];TList<System.TypInfo.PTypeInfo>.TEnumerator
 0045C5D5    call        0045C608
 0045C5DA    ret
*}
end;

//0045C5DC
{*function sub_0045C5DC(?:?):?;
begin
 0045C5DC    push        ebx
 0045C5DD    push        esi
 0045C5DE    mov         ebx,dword ptr [eax+4]
 0045C5E1    mov         esi,dword ptr [eax+8]
 0045C5E4    lea         eax,[ebx+8]
 0045C5E7    mov         edx,esi
 0045C5E9    call        00434534
 0045C5EE    mov         eax,dword ptr [ebx+20]
 0045C5F1    mov         eax,dword ptr [eax+esi*4]
 0045C5F4    pop         esi
 0045C5F5    pop         ebx
 0045C5F6    ret
end;*}

//0045C5F8
procedure sub_0045C5F8;
begin
{*
 0045C5F8    call        0045C5DC
 0045C5FD    ret
*}
end;

//0045C600
procedure sub_0045C600;
begin
{*
 0045C600    call        TList<System.TypInfo.PTypeInfo>.TEnumerator.MoveNext
 0045C605    ret
*}
end;

//0045C608
constructor sub_0045C608(AList:TList<System.TypInfo.PTypeInfo>);
begin
{*
 0045C608    push        ebx
 0045C609    push        esi
 0045C60A    push        edi
 0045C60B    test        dl,dl
>0045C60D    je          0045C617
 0045C60F    add         esp,0FFFFFFF0
 0045C612    call        @ClassCreate
 0045C617    mov         esi,ecx
 0045C619    mov         ebx,edx
 0045C61B    mov         edi,eax
 0045C61D    xor         edx,edx
 0045C61F    mov         eax,edi
 0045C621    call        TObject.Create
 0045C626    mov         dword ptr [edi+4],esi;TList<System.TypInfo.PTypeInfo>.TEnumerator.FList:TList<System.Typ...
 0045C629    mov         dword ptr [edi+8],0FFFFFFFF
 0045C630    mov         eax,edi
 0045C632    test        bl,bl
>0045C634    je          0045C645
 0045C636    call        @AfterConstruction
 0045C63B    pop         dword ptr fs:[0]
 0045C642    add         esp,0C
 0045C645    mov         eax,edi
 0045C647    pop         edi
 0045C648    pop         esi
 0045C649    pop         ebx
 0045C64A    ret
*}
end;

//0045C64C
function TList<System.TypInfo.PTypeInfo>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045C64C    mov         edx,dword ptr [eax+4]
 0045C64F    mov         edx,dword ptr [edx+8]
 0045C652    cmp         edx,dword ptr [eax+8]
>0045C655    jg          0045C65A
 0045C657    xor         eax,eax
 0045C659    ret
 0045C65A    inc         dword ptr [eax+8]
 0045C65D    mov         edx,dword ptr [eax+4]
 0045C660    mov         edx,dword ptr [edx+8]
 0045C663    cmp         edx,dword ptr [eax+8]
 0045C666    setg        al
 0045C669    ret
*}
end;

//0045C6B4
procedure sub_0045C6B4(?:TList<System.string>);
begin
{*
 0045C6B4    add         eax,8
 0045C6B7    call        004358C0
 0045C6BC    ret
*}
end;

//0045C6C0
{*procedure sub_0045C6C0(?:?; ?:?);
begin
 0045C6C0    push        ebx
 0045C6C1    mov         edx,dword ptr [edx]
 0045C6C3    mov         ebx,dword ptr [eax]
 0045C6C5    call        dword ptr [ebx+8]
 0045C6C8    pop         ebx
 0045C6C9    ret
end;*}

//0045C6CC
{*procedure sub_0045C6CC(?:?; ?:?; ?:?);
begin
 0045C6CC    push        ebx
 0045C6CD    mov         edx,dword ptr [edx]
 0045C6CF    mov         ecx,dword ptr [ecx]
 0045C6D1    mov         eax,dword ptr [eax+24]
 0045C6D4    mov         ebx,dword ptr [eax]
 0045C6D6    call        dword ptr [ebx+0C]
 0045C6D9    pop         ebx
 0045C6DA    ret
end;*}

//0045C6DC
procedure sub_0045C6DC;
begin
{*
 0045C6DC    call        TList<System.string>.GetEnumerator
 0045C6E1    ret
*}
end;

//0045C6E4
{*procedure sub_0045C6E4(?:?);
begin
 0045C6E4    push        ebx
 0045C6E5    cmp         word ptr [eax+2A],0
>0045C6EA    je          0045C6F9
 0045C6EC    push        ecx
 0045C6ED    mov         ebx,eax
 0045C6EF    mov         ecx,edx
 0045C6F1    mov         edx,eax
 0045C6F3    mov         eax,dword ptr [ebx+2C]
 0045C6F6    call        dword ptr [ebx+28]
 0045C6F9    pop         ebx
 0045C6FA    ret
end;*}

//0045C6FC
constructor sub_0045C6FC;
begin
{*
 0045C6FC    push        ebp
 0045C6FD    mov         ebp,esp
 0045C6FF    push        0
 0045C701    push        ebx
 0045C702    push        esi
 0045C703    test        dl,dl
>0045C705    je          0045C70F
 0045C707    add         esp,0FFFFFFF0
 0045C70A    call        @ClassCreate
 0045C70F    mov         ebx,edx
 0045C711    mov         esi,eax
 0045C713    xor         eax,eax
 0045C715    push        ebp
 0045C716    push        45C750
 0045C71B    push        dword ptr fs:[eax]
 0045C71E    mov         dword ptr fs:[eax],esp
 0045C721    lea         edx,[ebp-4]
 0045C724    mov         eax,[00466680];TComparer<System.string>
 0045C729    call        TComparer<System.string>.Default
 0045C72E    mov         ecx,dword ptr [ebp-4]
 0045C731    xor         edx,edx
 0045C733    mov         eax,esi
 0045C735    call        0045C774
 0045C73A    xor         eax,eax
 0045C73C    pop         edx
 0045C73D    pop         ecx
 0045C73E    pop         ecx
 0045C73F    mov         dword ptr fs:[eax],edx
 0045C742    push        45C757
 0045C747    lea         eax,[ebp-4]
 0045C74A    call        @IntfClear
 0045C74F    ret
>0045C750    jmp         @HandleFinally
>0045C755    jmp         0045C747
 0045C757    mov         eax,esi
 0045C759    test        bl,bl
>0045C75B    je          0045C76C
 0045C75D    call        @AfterConstruction
 0045C762    pop         dword ptr fs:[0]
 0045C769    add         esp,0C
 0045C76C    mov         eax,esi
 0045C76E    pop         esi
 0045C76F    pop         ebx
 0045C770    pop         ecx
 0045C771    pop         ebp
 0045C772    ret
*}
end;

//0045C774
constructor sub_0045C774(AComparer:IComparer<System.string>);
begin
{*
 0045C774    push        ebp
 0045C775    mov         ebp,esp
 0045C777    push        0
 0045C779    push        ebx
 0045C77A    push        esi
 0045C77B    push        edi
 0045C77C    test        dl,dl
>0045C77E    je          0045C788
 0045C780    add         esp,0FFFFFFF0
 0045C783    call        @ClassCreate
 0045C788    mov         esi,ecx
 0045C78A    mov         ebx,edx
 0045C78C    mov         edi,eax
 0045C78E    xor         eax,eax
 0045C790    push        ebp
 0045C791    push        45C7FF
 0045C796    push        dword ptr fs:[eax]
 0045C799    mov         dword ptr fs:[eax],esp
 0045C79C    xor         edx,edx
 0045C79E    mov         eax,edi
 0045C7A0    call        TObject.Create
 0045C7A5    mov         dword ptr [edi+14],edi;TList<System.string>.FOnNotify:TCollectionNotifyEvent<System.stri...
 0045C7A8    mov         dword ptr [edi+10],45C6C0;TList<System.string>.FOnNotify:TCollectionNotifyEvent<System.s...
 0045C7AF    mov         dword ptr [edi+1C],edi
 0045C7B2    mov         dword ptr [edi+18],45C6CC;sub_0045C6CC
 0045C7B9    mov         eax,[00462984];TList<System.string>.arrayofT
 0045C7BE    mov         dword ptr [edi+0C],eax;TList<System.string>.FComparer:IComparer<System.string>
 0045C7C1    lea         eax,[edi+24]
 0045C7C4    mov         edx,esi
 0045C7C6    call        @IntfCopy
 0045C7CB    cmp         dword ptr [edi+24],0
>0045C7CF    jne         0045C7E9
 0045C7D1    lea         edx,[ebp-4]
 0045C7D4    mov         eax,[00466680];TComparer<System.string>
 0045C7D9    call        TComparer<System.string>.Default
 0045C7DE    mov         edx,dword ptr [ebp-4]
 0045C7E1    lea         eax,[edi+24]
 0045C7E4    call        @IntfCopy
 0045C7E9    xor         eax,eax
 0045C7EB    pop         edx
 0045C7EC    pop         ecx
 0045C7ED    pop         ecx
 0045C7EE    mov         dword ptr fs:[eax],edx
 0045C7F1    push        45C806
 0045C7F6    lea         eax,[ebp-4]
 0045C7F9    call        @IntfClear
 0045C7FE    ret
>0045C7FF    jmp         @HandleFinally
>0045C804    jmp         0045C7F6
 0045C806    mov         eax,edi
 0045C808    test        bl,bl
>0045C80A    je          0045C81B
 0045C80C    call        @AfterConstruction
 0045C811    pop         dword ptr fs:[0]
 0045C818    add         esp,0C
 0045C81B    mov         eax,edi
 0045C81D    pop         edi
 0045C81E    pop         esi
 0045C81F    pop         ebx
 0045C820    pop         ecx
 0045C821    pop         ebp
 0045C822    ret
*}
end;

//0045C824
destructor TList<System.string>.Destroy();
begin
{*
 0045C824    push        ebx
 0045C825    push        esi
 0045C826    call        @BeforeDestruction
 0045C82B    mov         ebx,edx
 0045C82D    mov         esi,eax
 0045C82F    cmp         dword ptr [esi+8],0;TList<System.string>.FCount:Integer
>0045C833    jle         0045C83E
 0045C835    xor         edx,edx
 0045C837    mov         eax,esi
 0045C839    call        0045C6B4
 0045C83E    push        0
 0045C840    lea         eax,[esi+20]
 0045C843    mov         ecx,1
 0045C848    mov         edx,dword ptr ds:[462984];TList<System.string>.arrayofT
 0045C84E    call        @DynArraySetLength
 0045C853    add         esp,4
 0045C856    mov         dl,0FC
 0045C858    and         dl,bl
 0045C85A    mov         eax,esi
 0045C85C    call        TEnumerable<System.string>.Destroy
 0045C861    test        bl,bl
>0045C863    jle         0045C86C
 0045C865    mov         eax,esi
 0045C867    call        @ClassDestroy
 0045C86C    pop         esi
 0045C86D    pop         ebx
 0045C86E    ret
*}
end;

//0045C870
{*procedure TList<System.string>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045C870    push        ebp
 0045C871    mov         ebp,esp
 0045C873    add         esp,0FFFFFFF0
 0045C876    mov         dword ptr [ebp-8],ecx
 0045C879    mov         dword ptr [ebp-4],edx
 0045C87C    push        dword ptr [ebp+4]
 0045C87F    mov         eax,dword ptr [ebp-8]
 0045C882    mov         dword ptr [ebp-10],eax
 0045C885    mov         byte ptr [ebp-0C],0
 0045C889    lea         eax,[ebp-10]
 0045C88C    push        eax
 0045C88D    push        0
 0045C88F    mov         ecx,dword ptr [ebp-4]
 0045C892    mov         dl,1
 0045C894    mov         eax,[004180BC];EListError
 0045C899    call        Exception.CreateFmt;EListError.Create
>0045C89E    jmp         @RaiseExcept
end;*}

//0045C8A8
procedure TList<System.string>.Add(Value:string);
begin
{*
 0045C8A8    add         esp,0FFFFFFF8
 0045C8AB    mov         dword ptr [esp],edx
 0045C8AE    add         eax,8
 0045C8B1    mov         dword ptr [esp+4],eax
 0045C8B5    mov         edx,esp
 0045C8B7    mov         eax,dword ptr [esp+4]
 0045C8BB    call        00434614
 0045C8C0    pop         ecx
 0045C8C1    pop         edx
 0045C8C2    ret
*}
end;

//0045C8C4
{*procedure TList<System.string>.ToArray(?:?);
begin
 0045C8C4    push        ecx
 0045C8C5    mov         dword ptr [esp],edx
 0045C8C8    mov         edx,dword ptr [esp]
 0045C8CB    add         eax,8
 0045C8CE    call        004359D4
 0045C8D3    pop         edx
 0045C8D4    ret
end;*}

//0045C8D8
procedure TList<System.string>.GetEnumerator;
begin
{*
 0045C8D8    mov         ecx,eax
 0045C8DA    mov         dl,1
 0045C8DC    mov         eax,[00462A38];TList<System.string>.TEnumerator
 0045C8E1    call        0045C968
 0045C8E6    ret
*}
end;

//0045C8E8
{*procedure sub_0045C8E8(?:TList<System.string>.TEnumerator; ?:?);
begin
 0045C8E8    push        ebp
 0045C8E9    mov         ebp,esp
 0045C8EB    push        0
 0045C8ED    push        ebx
 0045C8EE    push        esi
 0045C8EF    push        edi
 0045C8F0    mov         edi,edx
 0045C8F2    xor         edx,edx
 0045C8F4    push        ebp
 0045C8F5    push        45C93E
 0045C8FA    push        dword ptr fs:[edx]
 0045C8FD    mov         dword ptr fs:[edx],esp
 0045C900    mov         ebx,dword ptr [eax+4]
 0045C903    mov         esi,dword ptr [eax+8]
 0045C906    lea         eax,[ebx+8]
 0045C909    mov         edx,esi
 0045C90B    call        00434534
 0045C910    lea         eax,[ebp-4]
 0045C913    mov         edx,dword ptr [ebx+20]
 0045C916    mov         edx,dword ptr [edx+esi*4]
 0045C919    call        @UStrLAsg
 0045C91E    mov         eax,edi
 0045C920    mov         edx,dword ptr [ebp-4]
 0045C923    call        @UStrAsg
 0045C928    xor         eax,eax
 0045C92A    pop         edx
 0045C92B    pop         ecx
 0045C92C    pop         ecx
 0045C92D    mov         dword ptr fs:[eax],edx
 0045C930    push        45C945
 0045C935    lea         eax,[ebp-4]
 0045C938    call        @UStrClr
 0045C93D    ret
>0045C93E    jmp         @HandleFinally
>0045C943    jmp         0045C935
 0045C945    pop         edi
 0045C946    pop         esi
 0045C947    pop         ebx
 0045C948    pop         ecx
 0045C949    pop         ebp
 0045C94A    ret
end;*}

//0045C94C
{*procedure sub_0045C94C(?:?);
begin
 0045C94C    push        ebx
 0045C94D    push        esi
 0045C94E    mov         esi,edx
 0045C950    mov         ebx,eax
 0045C952    mov         edx,esi
 0045C954    mov         eax,ebx
 0045C956    call        0045C8E8
 0045C95B    pop         esi
 0045C95C    pop         ebx
 0045C95D    ret
end;*}

//0045C960
procedure sub_0045C960;
begin
{*
 0045C960    call        TList<System.string>.TEnumerator.MoveNext
 0045C965    ret
*}
end;

//0045C968
constructor sub_0045C968(AList:TList<System.string>);
begin
{*
 0045C968    push        ebx
 0045C969    push        esi
 0045C96A    push        edi
 0045C96B    test        dl,dl
>0045C96D    je          0045C977
 0045C96F    add         esp,0FFFFFFF0
 0045C972    call        @ClassCreate
 0045C977    mov         esi,ecx
 0045C979    mov         ebx,edx
 0045C97B    mov         edi,eax
 0045C97D    xor         edx,edx
 0045C97F    mov         eax,edi
 0045C981    call        TObject.Create
 0045C986    mov         dword ptr [edi+4],esi;TList<System.string>.TEnumerator.FList:TList<System.string>
 0045C989    mov         dword ptr [edi+8],0FFFFFFFF
 0045C990    mov         eax,edi
 0045C992    test        bl,bl
>0045C994    je          0045C9A5
 0045C996    call        @AfterConstruction
 0045C99B    pop         dword ptr fs:[0]
 0045C9A2    add         esp,0C
 0045C9A5    mov         eax,edi
 0045C9A7    pop         edi
 0045C9A8    pop         esi
 0045C9A9    pop         ebx
 0045C9AA    ret
*}
end;

//0045C9AC
function TList<System.string>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045C9AC    mov         edx,dword ptr [eax+4]
 0045C9AF    mov         edx,dword ptr [edx+8]
 0045C9B2    cmp         edx,dword ptr [eax+8]
>0045C9B5    jg          0045C9BA
 0045C9B7    xor         eax,eax
 0045C9B9    ret
 0045C9BA    inc         dword ptr [eax+8]
 0045C9BD    mov         edx,dword ptr [eax+4]
 0045C9C0    mov         edx,dword ptr [edx+8]
 0045C9C3    cmp         edx,dword ptr [eax+8]
 0045C9C6    setg        al
 0045C9C9    ret
*}
end;

//0045CA14
procedure sub_0045CA14(?:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>);
begin
{*
 0045CA14    add         eax,8
 0045CA17    call        00435860
 0045CA1C    ret
*}
end;

//0045CA20
{*procedure sub_0045CA20(?:?);
begin
 0045CA20    push        ebx
 0045CA21    push        esi
 0045CA22    mov         esi,eax
 0045CA24    mov         eax,esi
 0045CA26    mov         ebx,dword ptr [eax]
 0045CA28    call        dword ptr [ebx+8]
 0045CA2B    pop         esi
 0045CA2C    pop         ebx
 0045CA2D    ret
end;*}

//0045CA30
{*procedure sub_0045CA30(?:?);
begin
 0045CA30    push        ebx
 0045CA31    push        esi
 0045CA32    mov         esi,eax
 0045CA34    mov         eax,dword ptr [esi+24]
 0045CA37    mov         ebx,dword ptr [eax]
 0045CA39    call        dword ptr [ebx+0C]
 0045CA3C    pop         esi
 0045CA3D    pop         ebx
 0045CA3E    ret
end;*}

//0045CA40
procedure sub_0045CA40;
begin
{*
 0045CA40    call        TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator
 0045CA45    ret
*}
end;

//0045CA48
{*procedure sub_0045CA48(?:?);
begin
 0045CA48    push        esi
 0045CA49    mov         esi,eax
 0045CA4B    cmp         word ptr [esi+2A],0
>0045CA50    je          0045CA5D
 0045CA52    push        ecx
 0045CA53    mov         ecx,edx
 0045CA55    mov         edx,esi
 0045CA57    mov         eax,dword ptr [esi+2C]
 0045CA5A    call        dword ptr [esi+28]
 0045CA5D    pop         esi
 0045CA5E    ret
end;*}

//0045CA60
constructor sub_0045CA60;
begin
{*
 0045CA60    push        ebp
 0045CA61    mov         ebp,esp
 0045CA63    push        0
 0045CA65    push        ebx
 0045CA66    push        esi
 0045CA67    test        dl,dl
>0045CA69    je          0045CA73
 0045CA6B    add         esp,0FFFFFFF0
 0045CA6E    call        @ClassCreate
 0045CA73    mov         ebx,edx
 0045CA75    mov         esi,eax
 0045CA77    xor         eax,eax
 0045CA79    push        ebp
 0045CA7A    push        45CAB4
 0045CA7F    push        dword ptr fs:[eax]
 0045CA82    mov         dword ptr fs:[eax],esp
 0045CA85    lea         edx,[ebp-4]
 0045CA88    mov         eax,[00466900];TComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>
 0045CA8D    call        TComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Default
 0045CA92    mov         ecx,dword ptr [ebp-4]
 0045CA95    xor         edx,edx
 0045CA97    mov         eax,esi
 0045CA99    call        0045CAD8
 0045CA9E    xor         eax,eax
 0045CAA0    pop         edx
 0045CAA1    pop         ecx
 0045CAA2    pop         ecx
 0045CAA3    mov         dword ptr fs:[eax],edx
 0045CAA6    push        45CABB
 0045CAAB    lea         eax,[ebp-4]
 0045CAAE    call        @IntfClear
 0045CAB3    ret
>0045CAB4    jmp         @HandleFinally
>0045CAB9    jmp         0045CAAB
 0045CABB    mov         eax,esi
 0045CABD    test        bl,bl
>0045CABF    je          0045CAD0
 0045CAC1    call        @AfterConstruction
 0045CAC6    pop         dword ptr fs:[0]
 0045CACD    add         esp,0C
 0045CAD0    mov         eax,esi
 0045CAD2    pop         esi
 0045CAD3    pop         ebx
 0045CAD4    pop         ecx
 0045CAD5    pop         ebp
 0045CAD6    ret
*}
end;

//0045CAD8
constructor sub_0045CAD8(AComparer:IComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>);
begin
{*
 0045CAD8    push        ebp
 0045CAD9    mov         ebp,esp
 0045CADB    push        0
 0045CADD    push        ebx
 0045CADE    push        esi
 0045CADF    push        edi
 0045CAE0    test        dl,dl
>0045CAE2    je          0045CAEC
 0045CAE4    add         esp,0FFFFFFF0
 0045CAE7    call        @ClassCreate
 0045CAEC    mov         esi,ecx
 0045CAEE    mov         ebx,edx
 0045CAF0    mov         edi,eax
 0045CAF2    xor         eax,eax
 0045CAF4    push        ebp
 0045CAF5    push        45CB63
 0045CAFA    push        dword ptr fs:[eax]
 0045CAFD    mov         dword ptr fs:[eax],esp
 0045CB00    xor         edx,edx
 0045CB02    mov         eax,edi
 0045CB04    call        TObject.Create
 0045CB09    mov         dword ptr [edi+14],edi;TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>....
 0045CB0C    mov         dword ptr [edi+10],45CA20;TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo...
 0045CB13    mov         dword ptr [edi+1C],edi
 0045CB16    mov         dword ptr [edi+18],45CA30;sub_0045CA30
 0045CB1D    mov         eax,[004638BC];TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.arrayofT
 0045CB22    mov         dword ptr [edi+0C],eax;TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>....
 0045CB25    lea         eax,[edi+24]
 0045CB28    mov         edx,esi
 0045CB2A    call        @IntfCopy
 0045CB2F    cmp         dword ptr [edi+24],0
>0045CB33    jne         0045CB4D
 0045CB35    lea         edx,[ebp-4]
 0045CB38    mov         eax,[00466900];TComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>
 0045CB3D    call        TComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Default
 0045CB42    mov         edx,dword ptr [ebp-4]
 0045CB45    lea         eax,[edi+24]
 0045CB48    call        @IntfCopy
 0045CB4D    xor         eax,eax
 0045CB4F    pop         edx
 0045CB50    pop         ecx
 0045CB51    pop         ecx
 0045CB52    mov         dword ptr fs:[eax],edx
 0045CB55    push        45CB6A
 0045CB5A    lea         eax,[ebp-4]
 0045CB5D    call        @IntfClear
 0045CB62    ret
>0045CB63    jmp         @HandleFinally
>0045CB68    jmp         0045CB5A
 0045CB6A    mov         eax,edi
 0045CB6C    test        bl,bl
>0045CB6E    je          0045CB7F
 0045CB70    call        @AfterConstruction
 0045CB75    pop         dword ptr fs:[0]
 0045CB7C    add         esp,0C
 0045CB7F    mov         eax,edi
 0045CB81    pop         edi
 0045CB82    pop         esi
 0045CB83    pop         ebx
 0045CB84    pop         ecx
 0045CB85    pop         ebp
 0045CB86    ret
*}
end;

//0045CB88
destructor TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy();
begin
{*
 0045CB88    push        ebx
 0045CB89    push        esi
 0045CB8A    call        @BeforeDestruction
 0045CB8F    mov         ebx,edx
 0045CB91    mov         esi,eax
 0045CB93    cmp         dword ptr [esi+8],0;TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.FCo...
>0045CB97    jle         0045CBA2
 0045CB99    xor         edx,edx
 0045CB9B    mov         eax,esi
 0045CB9D    call        0045CA14
 0045CBA2    push        0
 0045CBA4    lea         eax,[esi+20]
 0045CBA7    mov         ecx,1
 0045CBAC    mov         edx,dword ptr ds:[4638BC];TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo...
 0045CBB2    call        @DynArraySetLength
 0045CBB7    add         esp,4
 0045CBBA    mov         dl,0FC
 0045CBBC    and         dl,bl
 0045CBBE    mov         eax,esi
 0045CBC0    call        TEnumerable<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Destroy
 0045CBC5    test        bl,bl
>0045CBC7    jle         0045CBD0
 0045CBC9    mov         eax,esi
 0045CBCB    call        @ClassDestroy
 0045CBD0    pop         esi
 0045CBD1    pop         ebx
 0045CBD2    ret
*}
end;

//0045CBD4
{*procedure TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 0045CBD4    push        ebp
 0045CBD5    mov         ebp,esp
 0045CBD7    add         esp,0FFFFFFF0
 0045CBDA    mov         dword ptr [ebp-8],ecx
 0045CBDD    mov         dword ptr [ebp-4],edx
 0045CBE0    push        dword ptr [ebp+4]
 0045CBE3    mov         eax,dword ptr [ebp-8]
 0045CBE6    mov         dword ptr [ebp-10],eax
 0045CBE9    mov         byte ptr [ebp-0C],0
 0045CBED    lea         eax,[ebp-10]
 0045CBF0    push        eax
 0045CBF1    push        0
 0045CBF3    mov         ecx,dword ptr [ebp-4]
 0045CBF6    mov         dl,1
 0045CBF8    mov         eax,[004180BC];EListError
 0045CBFD    call        Exception.CreateFmt;EListError.Create
>0045CC02    jmp         @RaiseExcept
end;*}

//0045CC0C
procedure TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Add(Value:TPair<System.string,System.TypInfo.PTypeInfo>);
begin
{*
 0045CC0C    push        ecx
 0045CC0D    mov         dword ptr [esp],edx
 0045CC10    mov         edx,dword ptr [esp]
 0045CC13    add         eax,8
 0045CC16    call        0043492C
 0045CC1B    pop         edx
 0045CC1C    ret
*}
end;

//0045CC20
{*procedure TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.ToArray(?:?);
begin
 0045CC20    push        ecx
 0045CC21    mov         dword ptr [esp],edx
 0045CC24    mov         edx,dword ptr [esp]
 0045CC27    add         eax,8
 0045CC2A    call        004359D4
 0045CC2F    pop         edx
 0045CC30    ret
end;*}

//0045CC34
procedure TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.GetEnumerator;
begin
{*
 0045CC34    mov         ecx,eax
 0045CC36    mov         dl,1
 0045CC38    mov         eax,[00463BB8];TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.TEnumera...
 0045CC3D    call        0045CCE8
 0045CC42    ret
*}
end;

//0045CC44
{*procedure sub_0045CC44(?:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.TEnumerator; ?:?);
begin
 0045CC44    push        ebp
 0045CC45    mov         ebp,esp
 0045CC47    add         esp,0FFFFFFF8
 0045CC4A    push        ebx
 0045CC4B    push        esi
 0045CC4C    push        edi
 0045CC4D    mov         edi,edx
 0045CC4F    mov         ebx,eax
 0045CC51    lea         eax,[ebp-8]
 0045CC54    mov         edx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 0045CC5A    call        @AddRefRecord
 0045CC5F    xor         eax,eax
 0045CC61    push        ebp
 0045CC62    push        45CCBD
 0045CC67    push        dword ptr fs:[eax]
 0045CC6A    mov         dword ptr fs:[eax],esp
 0045CC6D    mov         esi,dword ptr [ebx+4]
 0045CC70    mov         ebx,dword ptr [ebx+8]
 0045CC73    lea         eax,[esi+8]
 0045CC76    mov         edx,ebx
 0045CC78    call        00434534
 0045CC7D    lea         eax,[ebp-8]
 0045CC80    mov         edx,dword ptr [esi+20]
 0045CC83    lea         edx,[edx+ebx*8]
 0045CC86    mov         ecx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 0045CC8C    call        @CopyRecord
 0045CC91    mov         eax,edi
 0045CC93    lea         edx,[ebp-8]
 0045CC96    mov         ecx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 0045CC9C    call        @CopyRecord
 0045CCA1    xor         eax,eax
 0045CCA3    pop         edx
 0045CCA4    pop         ecx
 0045CCA5    pop         ecx
 0045CCA6    mov         dword ptr fs:[eax],edx
 0045CCA9    push        45CCC4
 0045CCAE    lea         eax,[ebp-8]
 0045CCB1    mov         edx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 0045CCB7    call        @FinalizeRecord
 0045CCBC    ret
>0045CCBD    jmp         @HandleFinally
>0045CCC2    jmp         0045CCAE
 0045CCC4    pop         edi
 0045CCC5    pop         esi
 0045CCC6    pop         ebx
 0045CCC7    pop         ecx
 0045CCC8    pop         ecx
 0045CCC9    pop         ebp
 0045CCCA    ret
end;*}

//0045CCCC
{*procedure sub_0045CCCC(?:?);
begin
 0045CCCC    push        ebx
 0045CCCD    push        esi
 0045CCCE    mov         esi,edx
 0045CCD0    mov         ebx,eax
 0045CCD2    mov         edx,esi
 0045CCD4    mov         eax,ebx
 0045CCD6    call        0045CC44
 0045CCDB    pop         esi
 0045CCDC    pop         ebx
 0045CCDD    ret
end;*}

//0045CCE0
procedure sub_0045CCE0;
begin
{*
 0045CCE0    call        TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.TEnumerator.MoveNext
 0045CCE5    ret
*}
end;

//0045CCE8
constructor sub_0045CCE8(AList:TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>);
begin
{*
 0045CCE8    push        ebx
 0045CCE9    push        esi
 0045CCEA    push        edi
 0045CCEB    test        dl,dl
>0045CCED    je          0045CCF7
 0045CCEF    add         esp,0FFFFFFF0
 0045CCF2    call        @ClassCreate
 0045CCF7    mov         esi,ecx
 0045CCF9    mov         ebx,edx
 0045CCFB    mov         edi,eax
 0045CCFD    xor         edx,edx
 0045CCFF    mov         eax,edi
 0045CD01    call        TObject.Create
 0045CD06    mov         dword ptr [edi+4],esi;TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.T...
 0045CD09    mov         dword ptr [edi+8],0FFFFFFFF
 0045CD10    mov         eax,edi
 0045CD12    test        bl,bl
>0045CD14    je          0045CD25
 0045CD16    call        @AfterConstruction
 0045CD1B    pop         dword ptr fs:[0]
 0045CD22    add         esp,0C
 0045CD25    mov         eax,edi
 0045CD27    pop         edi
 0045CD28    pop         esi
 0045CD29    pop         ebx
 0045CD2A    ret
*}
end;

//0045CD2C
function TList<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.TEnumerator.MoveNext:Boolean;
begin
{*
 0045CD2C    mov         edx,dword ptr [eax+4]
 0045CD2F    mov         edx,dword ptr [edx+8]
 0045CD32    cmp         edx,dword ptr [eax+8]
>0045CD35    jg          0045CD3A
 0045CD37    xor         eax,eax
 0045CD39    ret
 0045CD3A    inc         dword ptr [eax+8]
 0045CD3D    mov         edx,dword ptr [eax+4]
 0045CD40    mov         edx,dword ptr [edx+8]
 0045CD43    cmp         edx,dword ptr [eax+8]
 0045CD46    setg        al
 0045CD49    ret
*}
end;

//0045CD4C
{*procedure sub_0045CD4C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0045CD4C    push        ebp
 0045CD4D    mov         ebp,esp
 0045CD4F    add         esp,0FFFFFFF0
 0045CD52    push        ebx
 0045CD53    push        esi
 0045CD54    push        edi
 0045CD55    mov         dword ptr [ebp-0C],ecx
 0045CD58    mov         dword ptr [ebp-8],edx
 0045CD5B    mov         dword ptr [ebp-4],eax
 0045CD5E    mov         eax,dword ptr [ebp-8]
 0045CD61    inc         eax
 0045CD62    test        eax,eax
>0045CD64    je          0045CE0C
 0045CD6A    mov         eax,dword ptr [ebp+8]
 0045CD6D    sub         eax,dword ptr [ebp+0C]
 0045CD70    test        eax,eax
>0045CD72    jle         0045CE0C
 0045CD78    mov         ebx,dword ptr [ebp+0C]
 0045CD7B    mov         esi,dword ptr [ebp+8]
 0045CD7E    mov         eax,dword ptr [ebp+8]
 0045CD81    sub         eax,dword ptr [ebp+0C]
 0045CD84    shr         eax,1
 0045CD86    add         eax,dword ptr [ebp+0C]
 0045CD89    mov         edx,dword ptr [ebp-4]
 0045CD8C    mov         eax,dword ptr [edx+eax*4]
 0045CD8F    mov         dword ptr [ebp-10],eax
>0045CD92    jmp         0045CD95
 0045CD94    inc         ebx
 0045CD95    mov         eax,dword ptr [ebp-4]
 0045CD98    mov         edx,dword ptr [eax+ebx*4]
 0045CD9B    mov         ecx,dword ptr [ebp-10]
 0045CD9E    mov         eax,dword ptr [ebp-0C]
 0045CDA1    mov         edi,dword ptr [eax]
 0045CDA3    call        dword ptr [edi+0C]
 0045CDA6    test        eax,eax
>0045CDA8    jl          0045CD94
>0045CDAA    jmp         0045CDAD
 0045CDAC    dec         esi
 0045CDAD    mov         eax,dword ptr [ebp-4]
 0045CDB0    mov         edx,dword ptr [eax+esi*4]
 0045CDB3    mov         ecx,dword ptr [ebp-10]
 0045CDB6    mov         eax,dword ptr [ebp-0C]
 0045CDB9    mov         edi,dword ptr [eax]
 0045CDBB    call        dword ptr [edi+0C]
 0045CDBE    test        eax,eax
>0045CDC0    jg          0045CDAC
 0045CDC2    cmp         esi,ebx
>0045CDC4    jl          0045CDE4
 0045CDC6    cmp         esi,ebx
>0045CDC8    je          0045CDE2
 0045CDCA    mov         eax,dword ptr [ebp-4]
 0045CDCD    mov         eax,dword ptr [eax+ebx*4]
 0045CDD0    mov         edx,dword ptr [ebp-4]
 0045CDD3    mov         edx,dword ptr [edx+esi*4]
 0045CDD6    mov         ecx,dword ptr [ebp-4]
 0045CDD9    mov         dword ptr [ecx+ebx*4],edx
 0045CDDC    mov         edx,dword ptr [ebp-4]
 0045CDDF    mov         dword ptr [edx+esi*4],eax
 0045CDE2    inc         ebx
 0045CDE3    dec         esi
 0045CDE4    cmp         esi,ebx
>0045CDE6    jge         0045CD95
 0045CDE8    cmp         esi,dword ptr [ebp+0C]
>0045CDEB    jle         0045CE00
 0045CDED    mov         eax,dword ptr [ebp+0C]
 0045CDF0    push        eax
 0045CDF1    push        esi
 0045CDF2    mov         eax,dword ptr [ebp-4]
 0045CDF5    mov         ecx,dword ptr [ebp-0C]
 0045CDF8    mov         edx,dword ptr [ebp-8]
 0045CDFB    call        0045CD4C
 0045CE00    mov         dword ptr [ebp+0C],ebx
 0045CE03    cmp         ebx,dword ptr [ebp+8]
>0045CE06    jl          0045CD78
 0045CE0C    pop         edi
 0045CE0D    pop         esi
 0045CE0E    pop         ebx
 0045CE0F    mov         esp,ebp
 0045CE11    pop         ebp
 0045CE12    ret         8
end;*}

//0045CE18
constructor sub_0045CE18(ACompare:TComparison<System.Rtti.TRttiPackage>);
begin
{*
 0045CE18    push        ebx
 0045CE19    push        esi
 0045CE1A    push        edi
 0045CE1B    test        dl,dl
>0045CE1D    je          0045CE27
 0045CE1F    add         esp,0FFFFFFF0
 0045CE22    call        @ClassCreate
 0045CE27    mov         esi,ecx
 0045CE29    mov         ebx,edx
 0045CE2B    mov         edi,eax
 0045CE2D    lea         eax,[edi+10]
 0045CE30    mov         edx,esi
 0045CE32    call        @IntfCopy
 0045CE37    mov         eax,edi
 0045CE39    test        bl,bl
>0045CE3B    je          0045CE4C
 0045CE3D    call        @AfterConstruction
 0045CE42    pop         dword ptr fs:[0]
 0045CE49    add         esp,0C
 0045CE4C    mov         eax,edi
 0045CE4E    pop         edi
 0045CE4F    pop         esi
 0045CE50    pop         ebx
 0045CE51    ret
*}
end;

//0045CE54
procedure TDelegatedComparer<System.Rtti.TRttiPackage>.Compare(Left:TRttiPackage; Right:TRttiPackage);
begin
{*
 0045CE54    push        ebx
 0045CE55    mov         eax,dword ptr [eax+10]
 0045CE58    mov         ebx,dword ptr [eax]
 0045CE5A    call        dword ptr [ebx+0C]
 0045CE5D    pop         ebx
 0045CE5E    ret
*}
end;

//0045CE60
{*function sub_0045CE60(?:?; ?:?):?;
begin
 0045CE60    push        ebp
 0045CE61    mov         ebp,esp
 0045CE63    add         esp,0FFFFFFE0
 0045CE66    push        ebx
 0045CE67    mov         dword ptr [ebp-20],edx
 0045CE6A    mov         dword ptr [ebp-1C],eax
 0045CE6D    lea         eax,[ebp-18]
 0045CE70    mov         edx,dword ptr ds:[435E20];TValue
 0045CE76    call        @AddRefRecord
 0045CE7B    xor         eax,eax
 0045CE7D    push        ebp
 0045CE7E    push        45CED4
 0045CE83    push        dword ptr fs:[eax]
 0045CE86    mov         dword ptr fs:[eax],esp
 0045CE89    lea         eax,[ebp-18]
 0045CE8C    mov         edx,dword ptr ds:[435E20];TValue
 0045CE92    call        @FinalizeRecord
 0045CE97    mov         ecx,eax
 0045CE99    mov         eax,dword ptr [ebp-1C]
 0045CE9C    mov         edx,dword ptr ds:[402038];TCustomAttribute
 0045CEA2    call        TValue.TryCast
 0045CEA7    mov         ebx,eax
 0045CEA9    test        bl,bl
>0045CEAB    je          0045CEB8
 0045CEAD    mov         edx,dword ptr [ebp-20]
 0045CEB0    lea         eax,[ebp-18]
 0045CEB3    call        0045D2D0
 0045CEB8    xor         eax,eax
 0045CEBA    pop         edx
 0045CEBB    pop         ecx
 0045CEBC    pop         ecx
 0045CEBD    mov         dword ptr fs:[eax],edx
 0045CEC0    push        45CEDB
 0045CEC5    lea         eax,[ebp-18]
 0045CEC8    mov         edx,dword ptr ds:[435E20];TValue
 0045CECE    call        @FinalizeRecord
 0045CED3    ret
>0045CED4    jmp         @HandleFinally
>0045CED9    jmp         0045CEC5
 0045CEDB    mov         eax,ebx
 0045CEDD    pop         ebx
 0045CEDE    mov         esp,ebp
 0045CEE0    pop         ebp
 0045CEE1    ret
end;*}

//0045CEE4
{*procedure TComparer<System.TCustomAttribute>.Default(?:?);
begin
 0045CEE4    push        ebx
 0045CEE5    mov         ebx,edx
 0045CEE7    mov         ecx,4
 0045CEEC    mov         edx,dword ptr ds:[402038];TCustomAttribute
 0045CEF2    xor         eax,eax
 0045CEF4    call        _LookupVtableInfo
 0045CEF9    mov         edx,eax
 0045CEFB    mov         eax,ebx
 0045CEFD    call        @IntfCopy
 0045CF02    pop         ebx
 0045CF03    ret
end;*}

//0045CF04
{*procedure sub_0045CF04(?:Byte; ?:?);
begin
 0045CF04    add         esp,0FFFFFFF8
 0045CF07    mov         dword ptr [esp+4],edx
 0045CF0B    mov         dword ptr [esp],eax
 0045CF0E    mov         eax,dword ptr [esp]
 0045CF11    cmp         dword ptr [eax],0
>0045CF14    jne         0045CF29
 0045CF16    mov         eax,dword ptr [esp+4]
 0045CF1A    xor         ecx,ecx
 0045CF1C    mov         edx,4
 0045CF21    call        @FillChar
 0045CF26    pop         ecx
 0045CF27    pop         edx
 0045CF28    ret
 0045CF29    mov         edx,dword ptr [esp+4]
 0045CF2D    mov         eax,dword ptr [esp]
 0045CF30    call        TValue.ExtractRawData
 0045CF35    pop         ecx
 0045CF36    pop         edx
 0045CF37    ret
end;*}

//0045CF38
{*procedure TComparer<System.Rtti.TRttiProperty>.Default(?:?);
begin
 0045CF38    push        ebx
 0045CF39    mov         ebx,edx
 0045CF3B    mov         ecx,4
 0045CF40    mov         edx,dword ptr ds:[43788C];TRttiProperty
 0045CF46    xor         eax,eax
 0045CF48    call        _LookupVtableInfo
 0045CF4D    mov         edx,eax
 0045CF4F    mov         eax,ebx
 0045CF51    call        @IntfCopy
 0045CF56    pop         ebx
 0045CF57    ret
end;*}

//0045CF58
{*procedure TComparer<System.Rtti.TRttiMethod>.Default(?:?);
begin
 0045CF58    push        ebx
 0045CF59    mov         ebx,edx
 0045CF5B    mov         ecx,4
 0045CF60    mov         edx,dword ptr ds:[43893C];TRttiMethod
 0045CF66    xor         eax,eax
 0045CF68    call        _LookupVtableInfo
 0045CF6D    mov         edx,eax
 0045CF6F    mov         eax,ebx
 0045CF71    call        @IntfCopy
 0045CF76    pop         ebx
 0045CF77    ret
end;*}

//0045CF78
{*procedure TComparer<System.Rtti.TRttiField>.Default(?:?);
begin
 0045CF78    push        ebx
 0045CF79    mov         ebx,edx
 0045CF7B    mov         ecx,4
 0045CF80    mov         edx,dword ptr ds:[4373C4];TRttiField
 0045CF86    xor         eax,eax
 0045CF88    call        _LookupVtableInfo
 0045CF8D    mov         edx,eax
 0045CF8F    mov         eax,ebx
 0045CF91    call        @IntfCopy
 0045CF96    pop         ebx
 0045CF97    ret
end;*}

//0045CF98
{*procedure TComparer<System.Rtti.TRttiManagedField>.Default(?:?);
begin
 0045CF98    push        ebx
 0045CF99    mov         ebx,edx
 0045CF9B    mov         ecx,4
 0045CFA0    mov         edx,dword ptr ds:[4374C0];TRttiManagedField
 0045CFA6    xor         eax,eax
 0045CFA8    call        _LookupVtableInfo
 0045CFAD    mov         edx,eax
 0045CFAF    mov         eax,ebx
 0045CFB1    call        @IntfCopy
 0045CFB6    pop         ebx
 0045CFB7    ret
end;*}

//0045CFB8
{*procedure sub_0045CFB8(?:Byte; ?:?);
begin
 0045CFB8    add         esp,0FFFFFFF8
 0045CFBB    mov         dword ptr [esp+4],edx
 0045CFBF    mov         dword ptr [esp],eax
 0045CFC2    mov         eax,dword ptr [esp]
 0045CFC5    cmp         dword ptr [eax],0
>0045CFC8    jne         0045CFDD
 0045CFCA    mov         eax,dword ptr [esp+4]
 0045CFCE    xor         ecx,ecx
 0045CFD0    mov         edx,8
 0045CFD5    call        @FillChar
 0045CFDA    pop         ecx
 0045CFDB    pop         edx
 0045CFDC    ret
 0045CFDD    mov         edx,dword ptr [esp+4]
 0045CFE1    mov         eax,dword ptr [esp]
 0045CFE4    call        TValue.ExtractRawData
 0045CFE9    pop         ecx
 0045CFEA    pop         edx
 0045CFEB    ret
end;*}

//0045CFEC
{*procedure TComparer<System.Rtti.TPair<System.Pointer,System.Rtti.TRttiObject>>.Default(?:?);
begin
 0045CFEC    push        ebx
 0045CFED    mov         ebx,edx
 0045CFEF    mov         ecx,8
 0045CFF4    mov         edx,dword ptr ds:[43C5C4];TPair<System.Pointer,System.Rtti.TRttiObject>
 0045CFFA    xor         eax,eax
 0045CFFC    call        _LookupVtableInfo
 0045D001    mov         edx,eax
 0045D003    mov         eax,ebx
 0045D005    call        @IntfCopy
 0045D00A    pop         ebx
 0045D00B    ret
end;*}

//0045D00C
{*procedure TComparer<System.Pointer>.Default(?:?);
begin
 0045D00C    push        ebx
 0045D00D    mov         ebx,edx
 0045D00F    mov         ecx,4
 0045D014    mov         edx,dword ptr ds:[401100];Pointer
 0045D01A    xor         eax,eax
 0045D01C    call        _LookupVtableInfo
 0045D021    mov         edx,eax
 0045D023    mov         eax,ebx
 0045D025    call        @IntfCopy
 0045D02A    pop         ebx
 0045D02B    ret
end;*}

//0045D02C
{*procedure TComparer<System.Rtti.TRttiObject>.Default(?:?);
begin
 0045D02C    push        ebx
 0045D02D    mov         ebx,edx
 0045D02F    mov         ecx,4
 0045D034    mov         edx,dword ptr ds:[43670C];TRttiObject
 0045D03A    xor         eax,eax
 0045D03C    call        _LookupVtableInfo
 0045D041    mov         edx,eax
 0045D043    mov         eax,ebx
 0045D045    call        @IntfCopy
 0045D04A    pop         ebx
 0045D04B    ret
end;*}

//0045D04C
procedure TValue.Get<System.Integer>(var Result:Integer);
begin
{*
 0045D04C    add         esp,0FFFFFFF8
 0045D04F    mov         dword ptr [esp+4],edx
 0045D053    mov         dword ptr [esp],eax
 0045D056    mov         eax,dword ptr [esp]
 0045D059    cmp         dword ptr [eax],0
>0045D05C    jne         0045D071
 0045D05E    mov         eax,dword ptr [esp+4]
 0045D062    xor         ecx,ecx
 0045D064    mov         edx,4
 0045D069    call        @FillChar
 0045D06E    pop         ecx
 0045D06F    pop         edx
 0045D070    ret
 0045D071    mov         edx,dword ptr [esp+4]
 0045D075    mov         eax,dword ptr [esp]
 0045D078    call        TValue.ExtractRawData
 0045D07D    pop         ecx
 0045D07E    pop         edx
 0045D07F    ret
*}
end;

//0045D080
procedure TValue.Get<System.Boolean>(var Result:Boolean);
begin
{*
 0045D080    add         esp,0FFFFFFF8
 0045D083    mov         dword ptr [esp+4],edx
 0045D087    mov         dword ptr [esp],eax
 0045D08A    mov         eax,dword ptr [esp]
 0045D08D    cmp         dword ptr [eax],0
>0045D090    jne         0045D0A5
 0045D092    mov         eax,dword ptr [esp+4]
 0045D096    xor         ecx,ecx
 0045D098    mov         edx,1
 0045D09D    call        @FillChar
 0045D0A2    pop         ecx
 0045D0A3    pop         edx
 0045D0A4    ret
 0045D0A5    mov         edx,dword ptr [esp+4]
 0045D0A9    mov         eax,dword ptr [esp]
 0045D0AC    call        TValue.ExtractRawData
 0045D0B1    pop         ecx
 0045D0B2    pop         edx
 0045D0B3    ret
*}
end;

//0045D0B4
procedure TValue.Get<System.Extended>(var Result:Extended);
begin
{*
 0045D0B4    add         esp,0FFFFFFF8
 0045D0B7    mov         dword ptr [esp+4],edx
 0045D0BB    mov         dword ptr [esp],eax
 0045D0BE    mov         eax,dword ptr [esp]
 0045D0C1    cmp         dword ptr [eax],0
>0045D0C4    jne         0045D0D9
 0045D0C6    mov         eax,dword ptr [esp+4]
 0045D0CA    xor         ecx,ecx
 0045D0CC    mov         edx,0A
 0045D0D1    call        @FillChar
 0045D0D6    pop         ecx
 0045D0D7    pop         edx
 0045D0D8    ret
 0045D0D9    mov         edx,dword ptr [esp+4]
 0045D0DD    mov         eax,dword ptr [esp]
 0045D0E0    call        TValue.ExtractRawData
 0045D0E5    pop         ecx
 0045D0E6    pop         edx
 0045D0E7    ret
*}
end;

//0045D0E8
procedure TValue.Get<System.Int64>(var Result:Int64);
begin
{*
 0045D0E8    add         esp,0FFFFFFF8
 0045D0EB    mov         dword ptr [esp+4],edx
 0045D0EF    mov         dword ptr [esp],eax
 0045D0F2    mov         eax,dword ptr [esp]
 0045D0F5    cmp         dword ptr [eax],0
>0045D0F8    jne         0045D10D
 0045D0FA    mov         eax,dword ptr [esp+4]
 0045D0FE    xor         ecx,ecx
 0045D100    mov         edx,8
 0045D105    call        @FillChar
 0045D10A    pop         ecx
 0045D10B    pop         edx
 0045D10C    ret
 0045D10D    mov         edx,dword ptr [esp+4]
 0045D111    mov         eax,dword ptr [esp]
 0045D114    call        TValue.ExtractRawData
 0045D119    pop         ecx
 0045D11A    pop         edx
 0045D11B    ret
*}
end;

//0045D150
procedure TValue.Get<System.IInterface>(var Result:IInterface);
begin
{*
 0045D150    push        ebp
 0045D151    mov         ebp,esp
 0045D153    add         esp,0FFFFFFF8
 0045D156    mov         dword ptr [ebp-8],edx
 0045D159    mov         dword ptr [ebp-4],eax
 0045D15C    mov         eax,dword ptr [ebp-8]
 0045D15F    test        eax,eax
>0045D161    je          0045D167
 0045D163    xor         edx,edx
 0045D165    mov         dword ptr [eax],edx
 0045D167    mov         eax,dword ptr [ebp-4]
 0045D16A    cmp         dword ptr [eax],0
>0045D16D    jne         0045D180
 0045D16F    mov         eax,dword ptr [ebp-8]
 0045D172    xor         ecx,ecx
 0045D174    mov         edx,4
 0045D179    call        @FillChar
>0045D17E    jmp         0045D18B
 0045D180    mov         edx,dword ptr [ebp-8]
 0045D183    mov         eax,dword ptr [ebp-4]
 0045D186    call        TValue.ExtractRawData
 0045D18B    pop         ecx
 0045D18C    pop         ecx
 0045D18D    pop         ebp
 0045D18E    ret
*}
end;

//0045D190
procedure TValue.Get<System.string>(var Result:AnsiString);
begin
{*
 0045D190    push        ebp
 0045D191    mov         ebp,esp
 0045D193    add         esp,0FFFFFFF8
 0045D196    mov         dword ptr [ebp-8],edx
 0045D199    mov         dword ptr [ebp-4],eax
 0045D19C    mov         eax,dword ptr [ebp-8]
 0045D19F    test        eax,eax
>0045D1A1    je          0045D1A7
 0045D1A3    xor         edx,edx
 0045D1A5    mov         dword ptr [eax],edx
 0045D1A7    mov         eax,dword ptr [ebp-4]
 0045D1AA    cmp         dword ptr [eax],0
>0045D1AD    jne         0045D1C0
 0045D1AF    mov         eax,dword ptr [ebp-8]
 0045D1B2    xor         ecx,ecx
 0045D1B4    mov         edx,4
 0045D1B9    call        @FillChar
>0045D1BE    jmp         0045D1CB
 0045D1C0    mov         edx,dword ptr [ebp-8]
 0045D1C3    mov         eax,dword ptr [ebp-4]
 0045D1C6    call        TValue.ExtractRawData
 0045D1CB    pop         ecx
 0045D1CC    pop         ecx
 0045D1CD    pop         ebp
 0045D1CE    ret
*}
end;

//0045D1D0
{*procedure sub_0045D1D0(?:Byte; ?:?);
begin
 0045D1D0    push        ebp
 0045D1D1    mov         ebp,esp
 0045D1D3    add         esp,0FFFFFFF8
 0045D1D6    mov         dword ptr [ebp-8],edx
 0045D1D9    mov         dword ptr [ebp-4],eax
 0045D1DC    mov         eax,dword ptr [ebp-8]
 0045D1DF    mov         edx,dword ptr [ebp-8]
 0045D1E2    test        edx,edx
>0045D1E4    je          0045D1F3
 0045D1E6    xor         ecx,ecx
 0045D1E8    mov         dword ptr [edx+0C],ecx
 0045D1EB    mov         dword ptr [edx+8],ecx
 0045D1EE    mov         dword ptr [edx+4],ecx
 0045D1F1    mov         dword ptr [edx],ecx
 0045D1F3    mov         eax,dword ptr [ebp-4]
 0045D1F6    cmp         dword ptr [eax],0
>0045D1F9    jne         0045D20C
 0045D1FB    mov         eax,dword ptr [ebp-8]
 0045D1FE    xor         ecx,ecx
 0045D200    mov         edx,10
 0045D205    call        @FillChar
>0045D20A    jmp         0045D217
 0045D20C    mov         edx,dword ptr [ebp-8]
 0045D20F    mov         eax,dword ptr [ebp-4]
 0045D212    call        TValue.ExtractRawData
 0045D217    pop         ecx
 0045D218    pop         ecx
 0045D219    pop         ebp
 0045D21A    ret
end;*}

//0045D250
{*procedure TComparer<System.Rtti.TPair<System.TypInfo.PTypeInfo,System.string>>.Default(?:?);
begin
 0045D250    push        ebx
 0045D251    mov         ebx,edx
 0045D253    mov         ecx,8
 0045D258    mov         edx,dword ptr ds:[442AF8];TPair<System.TypInfo.PTypeInfo,System.string>
 0045D25E    xor         eax,eax
 0045D260    call        _LookupVtableInfo
 0045D265    mov         edx,eax
 0045D267    mov         eax,ebx
 0045D269    call        @IntfCopy
 0045D26E    pop         ebx
 0045D26F    ret
end;*}

//0045D270
{*procedure TComparer<System.TypInfo.PTypeInfo>.Default(?:?);
begin
 0045D270    push        ebx
 0045D271    mov         ebx,edx
 0045D273    mov         ecx,4
 0045D278    mov         edx,dword ptr ds:[46701C];PTypeInfo
 0045D27E    xor         eax,eax
 0045D280    call        _LookupVtableInfo
 0045D285    mov         edx,eax
 0045D287    mov         eax,ebx
 0045D289    call        @IntfCopy
 0045D28E    pop         ebx
 0045D28F    ret
end;*}

//0045D290
{*procedure TComparer<System.string>.Default(?:?);
begin
 0045D290    push        ebx
 0045D291    mov         ebx,edx
 0045D293    mov         ecx,4
 0045D298    mov         edx,dword ptr ds:[4012B8];string
 0045D29E    xor         eax,eax
 0045D2A0    call        _LookupVtableInfo
 0045D2A5    mov         edx,eax
 0045D2A7    mov         eax,ebx
 0045D2A9    call        @IntfCopy
 0045D2AE    pop         ebx
 0045D2AF    ret
end;*}

//0045D2B0
{*procedure TComparer<System.Rtti.TPair<System.string,System.TypInfo.PTypeInfo>>.Default(?:?);
begin
 0045D2B0    push        ebx
 0045D2B1    mov         ebx,edx
 0045D2B3    mov         ecx,8
 0045D2B8    mov         edx,dword ptr ds:[44464C];TPair<System.string,System.TypInfo.PTypeInfo>
 0045D2BE    xor         eax,eax
 0045D2C0    call        _LookupVtableInfo
 0045D2C5    mov         edx,eax
 0045D2C7    mov         eax,ebx
 0045D2C9    call        @IntfCopy
 0045D2CE    pop         ebx
 0045D2CF    ret
end;*}

//0045D2D0
{*procedure sub_0045D2D0(?:Byte; ?:?);
begin
 0045D2D0    add         esp,0FFFFFFF8
 0045D2D3    mov         dword ptr [esp+4],edx
 0045D2D7    mov         dword ptr [esp],eax
 0045D2DA    mov         eax,dword ptr [esp]
 0045D2DD    cmp         dword ptr [eax],0
>0045D2E0    jne         0045D2F5
 0045D2E2    mov         eax,dword ptr [esp+4]
 0045D2E6    xor         ecx,ecx
 0045D2E8    mov         edx,4
 0045D2ED    call        @FillChar
 0045D2F2    pop         ecx
 0045D2F3    pop         edx
 0045D2F4    ret
 0045D2F5    mov         edx,dword ptr [esp+4]
 0045D2F9    mov         eax,dword ptr [esp]
 0045D2FC    call        TValue.ExtractRawData
 0045D301    pop         ecx
 0045D302    pop         edx
 0045D303    ret
end;*}

//00467F44
function TTypeInfoFieldAccessor.ToString:UnicodeString;
begin
{*
 00467F44    push        ebx
 00467F45    push        esi
 00467F46    push        edi
 00467F47    push        ebp
 00467F48    add         esp,0FFFFFC00
 00467F4E    mov         edi,edx
 00467F50    mov         ebp,eax
 00467F52    mov         esi,dword ptr [ebp]
 00467F55    movzx       ebx,byte ptr [esi]
 00467F58    test        bl,bl
>00467F5A    je          00467F7F
 00467F5C    movzx       eax,bl
 00467F5F    push        eax
 00467F60    mov         ecx,esi
 00467F62    inc         ecx
 00467F63    lea         eax,[esp+4]
 00467F67    mov         edx,200
 00467F6C    call        Utf8ToUnicode
 00467F71    mov         ecx,eax
 00467F73    dec         ecx
 00467F74    mov         edx,esp
 00467F76    mov         eax,edi
 00467F78    call        @UStrFromPWCharLen
>00467F7D    jmp         00467F86
 00467F7F    mov         eax,edi
 00467F81    call        @UStrClr
 00467F86    add         esp,400
 00467F8C    pop         ebp
 00467F8D    pop         edi
 00467F8E    pop         esi
 00467F8F    pop         ebx
 00467F90    ret
*}
end;

//00467F94
function TTypeInfo.NameFld:TTypeInfoFieldAccessor;
begin
{*
 00467F94    add         esp,0FFFFFFF8
 00467F97    inc         eax
 00467F98    mov         dword ptr [esp+4],eax
 00467F9C    mov         eax,dword ptr [esp+4]
 00467FA0    mov         dword ptr [esp],eax
 00467FA3    mov         eax,dword ptr [esp]
 00467FA6    pop         ecx
 00467FA7    pop         edx
 00467FA8    ret
*}
end;

//00467FAC
function TFieldExEntry.NameFld:TTypeInfoFieldAccessor;
begin
{*
 00467FAC    add         esp,0FFFFFFF8
 00467FAF    add         eax,9
 00467FB2    mov         dword ptr [esp+4],eax
 00467FB6    mov         eax,dword ptr [esp+4]
 00467FBA    mov         dword ptr [esp],eax
 00467FBD    mov         eax,dword ptr [esp]
 00467FC0    pop         ecx
 00467FC1    pop         edx
 00467FC2    ret
*}
end;

//00467FC4
function TFieldExEntry.AttrData:PAttrData;
begin
{*
 00467FC4    add         esp,0FFFFFFF4
 00467FC7    mov         dword ptr [esp],eax
 00467FCA    mov         eax,dword ptr [esp]
 00467FCD    add         eax,9
 00467FD0    mov         dword ptr [esp+8],eax
 00467FD4    mov         eax,dword ptr [esp+8]
 00467FD8    mov         dword ptr [esp+4],eax
 00467FDC    mov         eax,dword ptr [esp+4]
 00467FE0    movzx       edx,byte ptr [eax]
 00467FE3    add         edx,eax
 00467FE5    inc         edx
 00467FE6    mov         eax,edx
 00467FE8    add         esp,0C
 00467FEB    ret
*}
end;

//00467FEC
{*function sub_00467FEC(?:PPropInfo):?;
begin
 00467FEC    add         esp,0FFFFFFF8
 00467FEF    add         eax,6
 00467FF2    mov         dword ptr [esp+4],eax
 00467FF6    mov         eax,dword ptr [esp+4]
 00467FFA    mov         dword ptr [esp],eax
 00467FFD    mov         eax,dword ptr [esp]
 00468000    pop         ecx
 00468001    pop         edx
 00468002    ret
end;*}

//00468004
function TPropInfo.Tail:PPropInfo;
begin
{*
 00468004    add         esp,0FFFFFFF4
 00468007    mov         dword ptr [esp],eax
 0046800A    mov         eax,dword ptr [esp]
 0046800D    add         eax,6
 00468010    mov         dword ptr [esp+8],eax
 00468014    mov         eax,dword ptr [esp+8]
 00468018    mov         dword ptr [esp+4],eax
 0046801C    mov         eax,dword ptr [esp+4]
 00468020    movzx       edx,byte ptr [eax]
 00468023    add         edx,eax
 00468025    inc         edx
 00468026    mov         eax,edx
 00468028    add         esp,0C
 0046802B    ret
*}
end;

//0046802C
function TProcedureParam.NameFld:TTypeInfoFieldAccessor;
begin
{*
 0046802C    add         esp,0FFFFFFF8
 0046802F    add         eax,6
 00468032    mov         dword ptr [esp+4],eax
 00468036    mov         eax,dword ptr [esp+4]
 0046803A    mov         dword ptr [esp],eax
 0046803D    mov         eax,dword ptr [esp]
 00468040    pop         ecx
 00468041    pop         edx
 00468042    ret
*}
end;

//00468044
function TVmtMethodEntry.Tail:PVmtMethodEntryTail;
begin
{*
 00468044    add         esp,0FFFFFFF4
 00468047    mov         dword ptr [esp],eax
 0046804A    mov         eax,dword ptr [esp]
 0046804D    add         eax,6
 00468050    mov         dword ptr [esp+8],eax
 00468054    mov         eax,dword ptr [esp+8]
 00468058    mov         dword ptr [esp+4],eax
 0046805C    mov         eax,dword ptr [esp+4]
 00468060    movzx       edx,byte ptr [eax]
 00468063    add         edx,eax
 00468065    inc         edx
 00468066    mov         eax,edx
 00468068    add         esp,0C
 0046806B    ret
*}
end;

//0046806C
function TVmtMethodEntry.NameFld:TTypeInfoFieldAccessor;
begin
{*
 0046806C    add         esp,0FFFFFFF8
 0046806F    add         eax,5
 00468072    mov         dword ptr [esp+4],eax
 00468076    mov         eax,dword ptr [esp+4]
 0046807A    mov         dword ptr [esp],eax
 0046807D    mov         eax,dword ptr [esp]
 00468080    pop         ecx
 00468081    pop         edx
 00468082    ret
*}
end;

//00468084
function TRecordTypeField.AttrData:PAttrData;
begin
{*
 00468084    add         esp,0FFFFFFF4
 00468087    mov         dword ptr [esp],eax
 0046808A    mov         eax,dword ptr [esp]
 0046808D    add         eax,5
 00468090    mov         dword ptr [esp+8],eax
 00468094    mov         eax,dword ptr [esp+8]
 00468098    mov         dword ptr [esp+4],eax
 0046809C    mov         eax,dword ptr [esp+4]
 004680A0    movzx       edx,byte ptr [eax]
 004680A3    add         edx,eax
 004680A5    inc         edx
 004680A6    mov         eax,edx
 004680A8    add         esp,0C
 004680AB    ret
*}
end;

//004680AC
function TArrayPropInfo.NameFld:TTypeInfoFieldAccessor;
begin
{*
 004680AC    add         esp,0FFFFFFF8
 004680AF    add         eax,5
 004680B2    mov         dword ptr [esp+4],eax
 004680B6    mov         eax,dword ptr [esp+4]
 004680BA    mov         dword ptr [esp],eax
 004680BD    mov         eax,dword ptr [esp]
 004680C0    pop         ecx
 004680C1    pop         edx
 004680C2    ret
*}
end;

//004680C4
function TProcedureParam.AttrData:PAttrData;
begin
{*
 004680C4    add         esp,0FFFFFFF4
 004680C7    mov         dword ptr [esp],eax
 004680CA    mov         eax,dword ptr [esp]
 004680CD    add         eax,5
 004680D0    mov         dword ptr [esp+8],eax
 004680D4    mov         eax,dword ptr [esp+8]
 004680D8    mov         dword ptr [esp+4],eax
 004680DC    mov         eax,dword ptr [esp+4]
 004680E0    movzx       edx,byte ptr [eax]
 004680E3    add         edx,eax
 004680E5    inc         edx
 004680E6    mov         eax,edx
 004680E8    add         esp,0C
 004680EB    ret
*}
end;

//004680EC
function TVmtFieldEntry.NameFld:TTypeInfoFieldAccessor;
begin
{*
 004680EC    push        ecx
 004680ED    mov         dword ptr [esp],eax
 004680F0    mov         eax,dword ptr [esp]
 004680F3    pop         edx
 004680F4    ret
*}
end;

//004680F8
function TIntfMethodEntry.Tail:PIntfMethodEntryTail;
begin
{*
 004680F8    add         esp,0FFFFFFF4
 004680FB    mov         dword ptr [esp],eax
 004680FE    mov         eax,dword ptr [esp]
 00468101    mov         dword ptr [esp+8],eax
 00468105    mov         eax,dword ptr [esp+8]
 00468109    mov         dword ptr [esp+4],eax
 0046810D    mov         eax,dword ptr [esp+4]
 00468111    movzx       edx,byte ptr [eax]
 00468114    add         edx,eax
 00468116    inc         edx
 00468117    mov         eax,edx
 00468119    add         esp,0C
 0046811C    ret
*}
end;

//00468120
function TRecordTypeField.NameFld:TTypeInfoFieldAccessor;
begin
{*
 00468120    add         esp,0FFFFFFF8
 00468123    add         eax,9
 00468126    mov         dword ptr [esp+4],eax
 0046812A    mov         eax,dword ptr [esp+4]
 0046812E    mov         dword ptr [esp],eax
 00468131    mov         eax,dword ptr [esp]
 00468134    pop         ecx
 00468135    pop         edx
 00468136    ret
*}
end;

//00468138
function TArrayPropInfo.AttrData:PAttrData;
begin
{*
 00468138    add         esp,0FFFFFFF4
 0046813B    mov         dword ptr [esp],eax
 0046813E    mov         eax,dword ptr [esp]
 00468141    add         eax,9
 00468144    mov         dword ptr [esp+8],eax
 00468148    mov         eax,dword ptr [esp+8]
 0046814C    mov         dword ptr [esp+4],eax
 00468150    mov         eax,dword ptr [esp+4]
 00468154    movzx       edx,byte ptr [eax]
 00468157    add         edx,eax
 00468159    inc         edx
 0046815A    mov         eax,edx
 0046815C    add         esp,0C
 0046815F    ret
*}
end;

//00468160
function TTypeData.DynUnitNameFld:TTypeInfoFieldAccessor;
begin
{*
 00468160    add         esp,0FFFFFFF8
 00468163    add         eax,0A
 00468166    mov         dword ptr [esp+4],eax
 0046816A    mov         eax,dword ptr [esp+4]
 0046816E    mov         dword ptr [esp],eax
 00468171    mov         eax,dword ptr [esp]
 00468174    pop         ecx
 00468175    pop         edx
 00468176    ret
*}
end;

//00468178
function TTypeData.IntfUnitFld:TTypeInfoFieldAccessor;
begin
{*
 00468178    add         esp,0FFFFFFF8
 0046817B    add         eax,15
 0046817E    mov         dword ptr [esp+4],eax
 00468182    mov         eax,dword ptr [esp+4]
 00468186    mov         dword ptr [esp],eax
 00468189    mov         eax,dword ptr [esp]
 0046818C    pop         ecx
 0046818D    pop         edx
 0046818E    ret
*}
end;

//00468190
function TTypeData.UnitNameFld:TTypeInfoFieldAccessor;
begin
{*
 00468190    add         esp,0FFFFFFF8
 00468193    add         eax,10
 00468196    mov         dword ptr [esp+4],eax
 0046819A    mov         eax,dword ptr [esp+4]
 0046819E    mov         dword ptr [esp],eax
 004681A1    mov         eax,dword ptr [esp]
 004681A4    pop         ecx
 004681A5    pop         edx
 004681A6    ret
*}
end;

//004681A8
function TTypeData.PropData:PPropData;
begin
{*
 004681A8    add         esp,0FFFFFFF4
 004681AB    mov         dword ptr [esp],eax
 004681AE    mov         eax,dword ptr [esp]
 004681B1    add         eax,0A
 004681B4    mov         dword ptr [esp+8],eax
 004681B8    mov         eax,dword ptr [esp+8]
 004681BC    mov         dword ptr [esp+4],eax
 004681C0    mov         eax,dword ptr [esp+4]
 004681C4    movzx       edx,byte ptr [eax]
 004681C7    add         edx,eax
 004681C9    inc         edx
 004681CA    mov         eax,edx
 004681CC    add         esp,0C
 004681CF    ret
*}
end;

//004681D0
function TTypeData.DynArrElType:PPTypeInfo;
begin
{*
 004681D0    add         esp,0FFFFFFF4
 004681D3    mov         dword ptr [esp],eax
 004681D6    mov         eax,dword ptr [esp]
 004681D9    add         eax,10
 004681DC    mov         dword ptr [esp+8],eax
 004681E0    mov         eax,dword ptr [esp+8]
 004681E4    mov         dword ptr [esp+4],eax
 004681E8    mov         eax,dword ptr [esp+4]
 004681EC    movzx       edx,byte ptr [eax]
 004681EF    add         edx,eax
 004681F1    inc         edx
 004681F2    mov         eax,dword ptr [edx]
 004681F4    add         esp,0C
 004681F7    ret
*}
end;

//004681F8
function TTypeData.DynArrAttrData:PAttrData;
begin
{*
 004681F8    add         esp,0FFFFFFF4
 004681FB    mov         dword ptr [esp],eax
 004681FE    mov         eax,dword ptr [esp]
 00468201    add         eax,10
 00468204    mov         dword ptr [esp+8],eax
 00468208    mov         eax,dword ptr [esp+8]
 0046820C    mov         dword ptr [esp+4],eax
 00468210    mov         eax,dword ptr [esp+4]
 00468214    movzx       edx,byte ptr [eax]
 00468217    add         edx,eax
 00468219    inc         edx
 0046821A    add         edx,4
 0046821D    mov         eax,edx
 0046821F    add         esp,0C
 00468222    ret
*}
end;

//00468224
function TPropInfo.NameFld:TTypeInfoFieldAccessor;
begin
{*
 00468224    add         esp,0FFFFFFF8
 00468227    add         eax,1A
 0046822A    mov         dword ptr [esp+4],eax
 0046822E    mov         eax,dword ptr [esp+4]
 00468232    mov         dword ptr [esp],eax
 00468235    mov         eax,dword ptr [esp]
 00468238    pop         ecx
 00468239    pop         edx
 0046823A    ret
*}
end;

//0046823C
function TVmtFieldEntry.AttrData:PAttrData;
begin
{*
 0046823C    add         esp,0FFFFFFF4
 0046823F    mov         dword ptr [esp],eax
 00468242    mov         eax,dword ptr [esp]
 00468245    add         eax,1A
 00468248    mov         dword ptr [esp+8],eax
 0046824C    mov         eax,dword ptr [esp+8]
 00468250    mov         dword ptr [esp+4],eax
 00468254    mov         eax,dword ptr [esp+4]
 00468258    movzx       edx,byte ptr [eax]
 0046825B    add         edx,eax
 0046825D    inc         edx
 0046825E    mov         eax,edx
 00468260    add         esp,0C
 00468263    ret
*}
end;

//00468264
function GetPropName(PropInfo:PPropInfo):UnicodeString;
begin
{*
 00468264    push        ebx
 00468265    add         esp,0FFFFFFF8
 00468268    mov         ebx,edx
 0046826A    add         eax,1A
 0046826D    mov         dword ptr [esp+4],eax
 00468271    mov         eax,dword ptr [esp+4]
 00468275    mov         dword ptr [esp],eax
 00468278    mov         eax,esp
 0046827A    mov         edx,ebx
 0046827C    call        TTypeInfoFieldAccessor.ToString
 00468281    pop         ecx
 00468282    pop         edx
 00468283    pop         ebx
 00468284    ret
*}
end;

//00468288
function GetTypeData(TypeInfo:PTypeInfo):PTypeData;
begin
{*
 00468288    xor         edx,edx
 0046828A    mov         dl,byte ptr [eax+1]
 0046828D    lea         eax,[eax+edx+2]
 00468291    ret
*}
end;

//004682C4
{*procedure sub_004682C4(?:?; ?:?);
begin
 004682C4    push        ebp
 004682C5    mov         ebp,esp
 004682C7    push        0
 004682C9    push        ebx
 004682CA    push        esi
 004682CB    push        edi
 004682CC    mov         edi,edx
 004682CE    mov         esi,eax
 004682D0    xor         eax,eax
 004682D2    push        ebp
 004682D3    push        46834A
 004682D8    push        dword ptr fs:[eax]
 004682DB    mov         dword ptr fs:[eax],esp
 004682DE    mov         eax,edi
 004682E0    call        @UStrClr
 004682E5    movzx       ebx,byte ptr [esi]
 004682E8    test        bl,bl
>004682EA    je          0046832E
 004682EC    movzx       eax,bl
 004682EF    inc         eax
 004682F0    push        eax
 004682F1    lea         eax,[ebp-4]
 004682F4    mov         ecx,1
 004682F9    mov         edx,dword ptr ds:[468294];:8
 004682FF    call        @DynArraySetLength
 00468304    add         esp,4
 00468307    movzx       ecx,bl
 0046830A    inc         ecx
 0046830B    mov         edx,dword ptr [ebp-4]
 0046830E    mov         eax,esi
 00468310    call        Move
 00468315    mov         ebx,dword ptr [ebp-4]
 00468318    test        ebx,ebx
>0046831A    je          00468321
 0046831C    sub         ebx,4
 0046831F    mov         ebx,dword ptr [ebx]
 00468321    mov         ecx,edi
 00468323    mov         edx,ebx
 00468325    dec         edx
 00468326    mov         eax,dword ptr [ebp-4]
 00468329    call        UTF8ToString
 0046832E    xor         eax,eax
 00468330    pop         edx
 00468331    pop         ecx
 00468332    pop         ecx
 00468333    mov         dword ptr fs:[eax],edx
 00468336    push        468351
 0046833B    lea         eax,[ebp-4]
 0046833E    mov         edx,dword ptr ds:[468294];:8
 00468344    call        @DynArrayClear
 00468349    ret
>0046834A    jmp         @HandleFinally
>0046834F    jmp         0046833B
 00468351    pop         edi
 00468352    pop         esi
 00468353    pop         ebx
 00468354    pop         ecx
 00468355    pop         ebp
 00468356    ret
end;*}

//00468358
function GetEnumName(TypeInfo:PTypeInfo; Value:Integer):UnicodeString;
begin
{*
 00468358    push        ebp
 00468359    mov         ebp,esp
 0046835B    push        0
 0046835D    push        ebx
 0046835E    push        esi
 0046835F    push        edi
 00468360    mov         edi,ecx
 00468362    mov         esi,edx
 00468364    mov         ebx,eax
 00468366    xor         eax,eax
 00468368    push        ebp
 00468369    push        46844C
 0046836E    push        dword ptr fs:[eax]
 00468371    mov         dword ptr fs:[eax],esp
 00468374    cmp         byte ptr [ebx],1
>00468377    jne         00468387
 00468379    mov         edx,edi
 0046837B    mov         eax,esi
 0046837D    call        IntToStr
>00468382    jmp         00468436
 00468387    mov         eax,ebx
 00468389    call        GetTypeData
 0046838E    mov         eax,dword ptr [eax+9]
 00468391    mov         eax,dword ptr [eax]
 00468393    call        GetTypeData
 00468398    cmp         ebx,dword ptr ds:[401000];Boolean
>0046839E    je          004683A6
 004683A0    cmp         dword ptr [eax+1],0
>004683A4    jge         00468415
 004683A6    mov         eax,edi
 004683A8    test        esi,esi
 004683AA    setne       dl
 004683AD    and         edx,7F
 004683B0    mov         edx,dword ptr [edx*4+7A05C4];^'False'
 004683B7    call        @UStrAsg
 004683BC    mov         eax,[007C4D4C]
 004683C1    mov         eax,dword ptr [eax]
 004683C3    cmp         eax,468468;'0x'
>004683C8    jne         004683CE
 004683CA    mov         al,1
>004683CC    jmp         004683FB
 004683CE    mov         eax,[007C4D4C]
 004683D3    cmp         dword ptr [eax],0
>004683D6    je          004683E1
 004683D8    mov         eax,468468;'0x'
 004683DD    test        eax,eax
>004683DF    jne         004683E5
 004683E1    xor         eax,eax
>004683E3    jmp         004683FB
 004683E5    mov         eax,[007C4D4C]
 004683EA    mov         eax,dword ptr [eax]
 004683EC    mov         edx,468468;'0x'
 004683F1    call        CompareText
 004683F6    test        eax,eax
 004683F8    sete        al
 004683FB    test        al,al
>004683FD    je          00468436
 004683FF    lea         edx,[ebp-4]
 00468402    mov         eax,dword ptr [edi]
 00468404    call        LowerCase
 00468409    mov         edx,dword ptr [ebp-4]
 0046840C    mov         eax,edi
 0046840E    call        @UStrAsg
>00468413    jmp         00468436
 00468415    lea         ebx,[eax+0D]
 00468418    test        esi,esi
>0046841A    je          0046842D
 0046841C    mov         eax,ebx
 0046841E    mov         edx,eax
 00468420    movzx       eax,byte ptr [eax]
 00468423    add         edx,eax
 00468425    inc         edx
 00468426    mov         ebx,edx
 00468428    dec         esi
 00468429    test        esi,esi
>0046842B    jne         0046841C
 0046842D    mov         edx,edi
 0046842F    mov         eax,ebx
 00468431    call        004682C4
 00468436    xor         eax,eax
 00468438    pop         edx
 00468439    pop         ecx
 0046843A    pop         ecx
 0046843B    mov         dword ptr fs:[eax],edx
 0046843E    push        468453
 00468443    lea         eax,[ebp-4]
 00468446    call        @UStrClr
 0046844B    ret
>0046844C    jmp         @HandleFinally
>00468451    jmp         00468443
 00468453    pop         edi
 00468454    pop         esi
 00468455    pop         ebx
 00468456    pop         ecx
 00468457    pop         ebp
 00468458    ret
*}
end;

//004685AC
{*function sub_004685AC(?:?):?;
begin
 004685AC    push        ebx
 004685AD    push        esi
 004685AE    mov         dl,0B5
 004685B0    mov         ebx,eax
 004685B2    xor         eax,eax
 004685B4    mov         ecx,eax
 004685B6    mov         esi,ebx
 004685B8    shr         esi,cl
 004685BA    mov         ecx,esi
 004685BC    and         cl,0FF
 004685BF    xor         dl,cl
 004685C1    inc         eax
 004685C2    cmp         eax,4
>004685C5    jne         004685B4
 004685C7    mov         eax,edx
 004685C9    pop         esi
 004685CA    pop         ebx
 004685CB    ret
end;*}

//004685CC
{*function sub_004685CC(?:?; ?:?):?;
begin
 004685CC    push        ebx
 004685CD    push        esi
 004685CE    push        edi
 004685CF    push        ebp
 004685D0    add         esp,0FFFFFFF4
 004685D3    mov         byte ptr [esp],dl
 004685D6    mov         ebp,eax
 004685D8    xor         edi,edi
 004685DA    mov         eax,ebp
 004685DC    call        004685AC
 004685E1    mov         ebx,eax
 004685E3    xor         esi,esi
>004685E5    jmp         0046862D
 004685E7    movzx       eax,bl
 004685EA    mov         eax,dword ptr [eax*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 004685F1    cmp         ebp,dword ptr [eax+esi*8]
>004685F4    je          0046860C
 004685F6    cmp         byte ptr [esp],0
>004685FA    je          0046862C
 004685FC    movzx       eax,bl
 004685FF    mov         eax,dword ptr [eax*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 00468606    cmp         dword ptr [eax+esi*8],0
>0046860A    jne         0046862C
 0046860C    movzx       eax,bl
 0046860F    mov         eax,dword ptr [eax*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 00468616    lea         edi,[eax+esi*8]
 00468619    cmp         byte ptr [esp],0
>0046861D    je          004686AD
 00468623    cmp         dword ptr [edi],0
>00468626    jne         004686AD
 0046862C    inc         esi
 0046862D    movzx       eax,bl
 00468630    mov         eax,dword ptr [eax*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 00468637    call        0040ABA8
 0046863C    cmp         esi,eax
>0046863E    jl          004685E7
 00468640    cmp         byte ptr [esp],0
>00468644    je          004686AB
 00468646    test        edi,edi
>00468648    jne         004686A7
 0046864A    movzx       edi,bl
 0046864D    mov         eax,dword ptr [edi*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 00468654    mov         dword ptr [esp+4],eax
 00468658    mov         esi,dword ptr [esp+4]
 0046865C    test        esi,esi
>0046865E    je          00468665
 00468660    sub         esi,4
 00468663    mov         esi,dword ptr [esi]
 00468665    inc         esi
 00468666    push        esi
 00468667    lea         eax,[edi*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 0046866E    mov         ecx,1
 00468673    mov         edx,dword ptr ds:[468560];TArray<System.TypInfo.TEnumAliasEntry>
 00468679    call        @DynArraySetLength
 0046867E    add         esp,4
 00468681    mov         eax,dword ptr [edi*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 00468688    mov         dword ptr [esp+8],eax
 0046868C    mov         eax,dword ptr [esp+8]
 00468690    test        eax,eax
>00468692    je          00468699
 00468694    sub         eax,4
 00468697    mov         eax,dword ptr [eax]
 00468699    dec         eax
 0046869A    movzx       edx,bl
 0046869D    mov         edx,dword ptr [edx*4+7C9FA4];gvar_007C9FA4:array[256] of ?
 004686A4    lea         edi,[edx+eax*8]
 004686A7    mov         dword ptr [edi],ebp
>004686A9    jmp         004686AD
 004686AB    xor         edi,edi
 004686AD    mov         eax,edi
 004686AF    add         esp,0C
 004686B2    pop         ebp
 004686B3    pop         edi
 004686B4    pop         esi
 004686B5    pop         ebx
 004686B6    ret
end;*}

//004686B8
{*function sub_004686B8(?:?; ?:?):?;
begin
 004686B8    push        ebx
 004686B9    push        esi
 004686BA    push        edi
 004686BB    push        ebp
 004686BC    add         esp,0FFFFFFF4
 004686BF    mov         esi,edx
 004686C1    xor         edx,edx
 004686C3    call        004685CC
 004686C8    mov         edi,eax
 004686CA    test        edi,edi
>004686CC    je          0046872E
 004686CE    mov         eax,dword ptr [edi+4]
 004686D1    mov         dword ptr [esp+4],eax
 004686D5    mov         eax,dword ptr [esp+4]
 004686D9    test        eax,eax
>004686DB    je          004686E2
 004686DD    sub         eax,4
 004686E0    mov         eax,dword ptr [eax]
 004686E2    dec         eax
 004686E3    test        eax,eax
>004686E5    jl          0046872E
 004686E7    inc         eax
 004686E8    mov         dword ptr [esp],eax
 004686EB    xor         ebp,ebp
 004686ED    mov         eax,dword ptr [edi+4]
 004686F0    mov         ebx,dword ptr [eax+ebp*8]
 004686F3    cmp         ebx,esi
>004686F5    jne         004686FB
 004686F7    mov         al,1
>004686F9    jmp         0046871B
 004686FB    test        ebx,ebx
>004686FD    je          00468703
 004686FF    test        esi,esi
>00468701    jne         00468707
 00468703    xor         eax,eax
>00468705    jmp         0046871B
 00468707    mov         edx,esi
 00468709    mov         dword ptr [esp+8],ebx
 0046870D    mov         eax,dword ptr [esp+8]
 00468711    call        CompareText
 00468716    test        eax,eax
 00468718    sete        al
 0046871B    test        al,al
>0046871D    je          00468728
 0046871F    mov         eax,dword ptr [edi+4]
 00468722    mov         eax,dword ptr [eax+ebp*8+4]
>00468726    jmp         00468731
 00468728    inc         ebp
 00468729    dec         dword ptr [esp]
>0046872C    jne         004686ED
 0046872E    or          eax,0FFFFFFFF
 00468731    add         esp,0C
 00468734    pop         ebp
 00468735    pop         edi
 00468736    pop         esi
 00468737    pop         ebx
 00468738    ret
end;*}

//0046873C
function UTF8SameText(const Str1:ShortString; Str2:PAnsiChar):Boolean;
begin
{*
 0046873C    push        ebx
 0046873D    add         esp,0FFFFF800
 00468743    mov         ebx,edx
 00468745    movzx       edx,byte ptr [eax]
 00468748    push        edx
 00468749    lea         ecx,[eax+1]
 0046874C    lea         eax,[esp+4]
 00468750    mov         edx,200
 00468755    call        Utf8ToUnicode
 0046875A    push        0FF
 0046875C    lea         eax,[esp+404]
 00468763    mov         ecx,ebx
 00468765    mov         edx,200
 0046876A    call        Utf8ToUnicode
 0046876F    push        0FF
 00468771    lea         eax,[esp+404]
 00468778    push        eax
 00468779    push        0FF
 0046877B    lea         eax,[esp+0C]
 0046877F    push        eax
 00468780    push        1
 00468782    push        400
 00468787    call        kernel32.CompareStringW
 0046878C    sub         eax,2
 0046878F    test        eax,eax
 00468791    sete        al
 00468794    add         esp,800
 0046879A    pop         ebx
 0046879B    ret
*}
end;

//0046879C
function _GetEnumNameValue(TypeInfo:PTypeInfo; const Name:UTF8String):Integer;
begin
{*
 0046879C    push        ebx
 0046879D    push        esi
 0046879E    push        edi
 0046879F    push        0
 004687A1    test        edx,edx
>004687A3    je          0046880B
 004687A5    xor         ecx,ecx
 004687A7    mov         cl,byte ptr [eax+1]
 004687AA    mov         eax,dword ptr [eax+ecx+0B]
 004687AE    mov         eax,dword ptr [eax]
 004687B0    mov         cl,byte ptr [eax+1]
 004687B3    lea         esi,[eax+ecx+0F]
 004687B7    mov         edi,dword ptr [eax+ecx+7]
 004687BB    xor         eax,eax
 004687BD    movzx       ecx,byte ptr [esi]
 004687C0    cmp         ecx,dword ptr [edx-4]
>004687C3    jne         00468802
 004687C5    test        dword ptr [esp],1
>004687CC    jne         004687F0
 004687CE    mov         bl,byte ptr [ecx+edx-1]
 004687D2    test        bl,80
>004687D5    jne         004687E9
 004687D7    xor         bl,byte ptr [ecx+esi]
 004687DA    test        bl,80
>004687DD    jne         004687F0
 004687DF    test        bl,0DF
>004687E2    jne         004687FF
 004687E4    dec         ecx
>004687E5    jne         004687C5
>004687E7    jmp         0046880E
 004687E9    mov         dword ptr [esp],1
 004687F0    push        eax
 004687F1    push        edx
 004687F2    mov         eax,esi
 004687F4    call        UTF8SameText
 004687F9    test        al,al
 004687FB    pop         edx
 004687FC    pop         eax
>004687FD    jne         0046880E
 004687FF    movzx       ecx,byte ptr [esi]
 00468802    inc         eax
 00468803    lea         esi,[ecx+esi+1]
 00468807    cmp         eax,edi
>00468809    jle         004687BD
 0046880B    or          eax,0FFFFFFFF
 0046880E    pop         edi
 0046880F    pop         edi
 00468810    pop         esi
 00468811    pop         ebx
 00468812    ret
*}
end;

//00468814
{*function sub_00468814(?:?; ?:?):?;
begin
 00468814    push        ebp
 00468815    mov         ebp,esp
 00468817    push        0
 00468819    push        ebx
 0046881A    push        esi
 0046881B    push        edi
 0046881C    mov         edi,edx
 0046881E    mov         esi,eax
 00468820    xor         eax,eax
 00468822    push        ebp
 00468823    push        46886A
 00468828    push        dword ptr fs:[eax]
 0046882B    mov         dword ptr fs:[eax],esp
 0046882E    lea         edx,[ebp-4]
 00468831    mov         eax,edi
 00468833    call        UTF8Encode
 00468838    mov         edx,dword ptr [ebp-4]
 0046883B    mov         eax,esi
 0046883D    call        _GetEnumNameValue
 00468842    mov         ebx,eax
 00468844    cmp         ebx,0FFFFFFFF
>00468847    jne         00468854
 00468849    mov         edx,edi
 0046884B    mov         eax,esi
 0046884D    call        004686B8
 00468852    mov         ebx,eax
 00468854    xor         eax,eax
 00468856    pop         edx
 00468857    pop         ecx
 00468858    pop         ecx
 00468859    mov         dword ptr fs:[eax],edx
 0046885C    push        468871
 00468861    lea         eax,[ebp-4]
 00468864    call        @LStrClr
 00468869    ret
>0046886A    jmp         @HandleFinally
>0046886F    jmp         00468861
 00468871    mov         eax,ebx
 00468873    pop         edi
 00468874    pop         esi
 00468875    pop         ebx
 00468876    pop         ecx
 00468877    pop         ebp
 00468878    ret
end;*}

//0046887C
function GetEnumValue(TypeInfo:PTypeInfo; const Name:UnicodeString):Integer;
begin
{*
 0046887C    push        ebx
 0046887D    push        esi
 0046887E    push        ecx
 0046887F    mov         ebx,edx
 00468881    mov         esi,eax
 00468883    cmp         byte ptr [esi],1
>00468886    jne         00468894
 00468888    mov         eax,ebx
 0046888A    call        StrToInt
>0046888F    jmp         0046891F
 00468894    mov         eax,esi
 00468896    call        GetTypeData
 0046889B    cmp         dword ptr [eax+1],0
>0046889F    jge         00468916
 004688A1    cmp         ebx,dword ptr ds:[7A05C4];^'False'
>004688A7    jne         004688AD
 004688A9    mov         al,1
>004688AB    jmp         004688D0
 004688AD    test        ebx,ebx
>004688AF    je          004688BA
 004688B1    cmp         dword ptr ds:[7A05C4],0;^'False'
>004688B8    jne         004688BE
 004688BA    xor         eax,eax
>004688BC    jmp         004688D0
 004688BE    mov         edx,dword ptr ds:[7A05C4];^'False'
 004688C4    mov         eax,ebx
 004688C6    call        CompareText
 004688CB    test        eax,eax
 004688CD    sete        al
 004688D0    test        al,al
>004688D2    je          004688D8
 004688D4    xor         eax,eax
>004688D6    jmp         0046891F
 004688D8    mov         esi,dword ptr ds:[7A05C8];^'True'
 004688DE    cmp         ebx,esi
>004688E0    jne         004688E6
 004688E2    mov         al,1
>004688E4    jmp         00468904
 004688E6    test        ebx,ebx
>004688E8    je          004688EE
 004688EA    test        esi,esi
>004688EC    jne         004688F2
 004688EE    xor         eax,eax
>004688F0    jmp         00468904
 004688F2    mov         dword ptr [esp],esi
 004688F5    mov         edx,dword ptr [esp]
 004688F8    mov         eax,ebx
 004688FA    call        CompareText
 004688FF    test        eax,eax
 00468901    sete        al
 00468904    test        al,al
>00468906    je          0046890D
 00468908    or          eax,0FFFFFFFF
>0046890B    jmp         0046891F
 0046890D    mov         eax,ebx
 0046890F    call        StrToInt
>00468914    jmp         0046891F
 00468916    mov         edx,ebx
 00468918    mov         eax,esi
 0046891A    call        00468814
 0046891F    pop         edx
 00468920    pop         esi
 00468921    pop         ebx
 00468922    ret
*}
end;

//00468924
function _InternalGetPropInfo(TypeInfo:PTypeInfo; const PropName:UTF8String):PPropInfo;
begin
{*
 00468924    push        ebx
 00468925    push        esi
 00468926    push        edi
 00468927    push        0
 00468929    test        eax,eax
>0046892B    je          004689D1
 00468931    mov         ecx,edx
 00468933    or          edx,edx
>00468935    je          0046893C
 00468937    mov         cl,byte ptr [edx-4]
 0046893A    mov         ch,byte ptr [edx]
 0046893C    xor         ebx,ebx
 0046893E    mov         bl,byte ptr [eax+1]
 00468941    lea         esi,[eax+ebx+2]
 00468945    mov         bl,byte ptr [esi+0A]
 00468948    movzx       edi,word ptr [esi+ebx+0B]
 0046894D    test        edi,edi
>0046894F    je          00468982
 00468951    lea         eax,[esi+ebx+0D]
 00468955    test        dword ptr [esp],1
>0046895C    jne         004689BC
 0046895E    mov         bx,word ptr [eax+1A]
 00468962    test        bh,80
>00468965    jne         004689BC
 00468967    test        ch,80
>0046896A    jne         004689B5
 0046896C    and         ecx,0DFFF
 00468972    and         bh,0DF
 00468975    cmp         ebx,ecx
>00468977    je          00468997
 00468979    mov         bh,0
 0046897B    dec         edi
 0046897C    lea         eax,[eax+ebx+1B]
>00468980    jne         00468955
 00468982    mov         eax,dword ptr [esi+4]
 00468985    test        eax,eax
>00468987    je          004689D1
 00468989    mov         eax,dword ptr [eax]
>0046898B    jmp         0046893C
 0046898D    mov         ch,byte ptr [edx]
 0046898F    and         ch,0DF
 00468992    mov         bl,byte ptr [eax+1A]
>00468995    jmp         00468979
 00468997    mov         bh,0
 00468999    mov         ch,byte ptr [ebx+edx-1]
 0046899D    test        ch,80
>004689A0    jne         004689B5
 004689A2    xor         ch,byte ptr [eax+ebx+1A]
 004689A6    test        ch,80
>004689A9    jne         004689BC
 004689AB    test        ch,0DF
>004689AE    jne         0046898D
 004689B0    dec         ebx
>004689B1    jne         00468999
>004689B3    jmp         004689D1
 004689B5    mov         dword ptr [esp],1
 004689BC    mov         bh,0
 004689BE    push        eax
 004689BF    push        edx
 004689C0    lea         eax,[eax+1A]
 004689C3    call        UTF8SameText
 004689C8    pop         edx
 004689C9    mov         cl,byte ptr [edx-4]
 004689CC    test        al,al
 004689CE    pop         eax
>004689CF    je          0046898D
 004689D1    pop         edi
 004689D2    pop         edi
 004689D3    pop         esi
 004689D4    pop         ebx
 004689D5    ret
*}
end;

//004689D8
function InternalGetPropInfo(TypeInfo:PTypeInfo; const PropName:UnicodeString):PPropInfo;
begin
{*
 004689D8    push        ebp
 004689D9    mov         ebp,esp
 004689DB    push        0
 004689DD    push        ebx
 004689DE    push        esi
 004689DF    mov         esi,edx
 004689E1    mov         ebx,eax
 004689E3    xor         eax,eax
 004689E5    push        ebp
 004689E6    push        468A1D
 004689EB    push        dword ptr fs:[eax]
 004689EE    mov         dword ptr fs:[eax],esp
 004689F1    lea         edx,[ebp-4]
 004689F4    mov         eax,esi
 004689F6    call        UTF8Encode
 004689FB    mov         edx,dword ptr [ebp-4]
 004689FE    mov         eax,ebx
 00468A00    call        _InternalGetPropInfo
 00468A05    mov         ebx,eax
 00468A07    xor         eax,eax
 00468A09    pop         edx
 00468A0A    pop         ecx
 00468A0B    pop         ecx
 00468A0C    mov         dword ptr fs:[eax],edx
 00468A0F    push        468A24
 00468A14    lea         eax,[ebp-4]
 00468A17    call        @LStrClr
 00468A1C    ret
>00468A1D    jmp         @HandleFinally
>00468A22    jmp         00468A14
 00468A24    mov         eax,ebx
 00468A26    pop         esi
 00468A27    pop         ebx
 00468A28    pop         ecx
 00468A29    pop         ebp
 00468A2A    ret
*}
end;

//00468A2C
function GetPropInfo(AClass:TClass; const PropName:UnicodeString; AKinds:TTypeKinds):PPropInfo;
begin
{*
 00468A2C    call        InternalGetPropInfo
 00468A31    ret
*}
end;

//00468A34
procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);
begin
{*
 00468A34    push        ebx
 00468A35    push        esi
 00468A36    push        edi
 00468A37    xor         ecx,ecx
 00468A39    mov         esi,eax
 00468A3B    mov         cl,byte ptr [eax+1]
 00468A3E    mov         edi,edx
 00468A40    xor         eax,eax
 00468A42    movzx       ecx,word ptr [esi+ecx+0A]
 00468A47    rep stos    dword ptr [edi]
 00468A49    mov         cl,byte ptr [esi+1]
 00468A4C    lea         esi,[esi+ecx+2]
 00468A50    mov         cl,byte ptr [esi+0A]
 00468A53    movzx       eax,word ptr [esi+ecx+0B]
 00468A58    test        eax,eax
>00468A5A    je          00468A77
 00468A5C    lea         edi,[esi+ecx+0D]
 00468A60    movzx       ebx,word ptr [edi+18]
 00468A64    mov         cl,byte ptr [edi+1A]
 00468A67    cmp         dword ptr [edx+ebx*4],0
>00468A6B    jne         00468A70
 00468A6D    mov         dword ptr [edx+ebx*4],edi
 00468A70    lea         edi,[edi+ecx+1B]
 00468A74    dec         eax
>00468A75    jne         00468A60
 00468A77    mov         esi,dword ptr [esi+4]
 00468A7A    xor         ecx,ecx
 00468A7C    test        esi,esi
>00468A7E    je          00468A84
 00468A80    mov         esi,dword ptr [esi]
>00468A82    jmp         00468A49
 00468A84    pop         edi
 00468A85    pop         esi
 00468A86    pop         ebx
 00468A87    ret
*}
end;

//00468A88
function IsStoredPropRTTI(Instance:TObject; PropInfo:PPropInfo):Boolean;
begin
{*
 00468A88    mov         ecx,dword ptr [edx+0C]
 00468A8B    test        ecx,0FFFFFF00
>00468A91    je          00468AB2
 00468A93    cmp         byte ptr [edx+0F],0FE
 00468A97    mov         edx,dword ptr [edx+10]
>00468A9A    jb          00468AA6
>00468A9C    ja          00468AA9
 00468A9E    movsx       ecx,cx
 00468AA1    add         ecx,dword ptr [eax]
 00468AA3    call        dword ptr [ecx]
 00468AA5    ret
 00468AA6    call        ecx
 00468AA8    ret
 00468AA9    and         ecx,0FFFFFF
 00468AAF    mov         cl,byte ptr [ecx+eax]
 00468AB2    mov         al,cl
 00468AB4    ret
*}
end;

//00468AB8
function HasCustomAttribute(const Instance:TObject; const PropInfo:TypInfo.PPropInfo):Boolean;
begin
{*
 00468AB8    push        ebx
 00468AB9    push        esi
 00468ABA    push        edi
 00468ABB    push        ebp
 00468ABC    add         esp,0FFFFFFB4
 00468ABF    mov         dword ptr [esp],edx
 00468AC2    mov         eax,dword ptr [eax]
 00468AC4    add         eax,0FFFFFFB8
 00468AC7    mov         eax,dword ptr [eax]
 00468AC9    mov         dword ptr [esp+8],eax
 00468ACD    cmp         dword ptr [esp+8],0
>00468AD2    je          00468C1D
 00468AD8    mov         eax,dword ptr [esp+8]
 00468ADC    mov         dword ptr [esp+10],eax
 00468AE0    mov         eax,dword ptr [esp+10]
 00468AE4    inc         eax
 00468AE5    mov         dword ptr [esp+1C],eax
 00468AE9    mov         eax,dword ptr [esp+1C]
 00468AED    mov         dword ptr [esp+18],eax
 00468AF1    mov         eax,dword ptr [esp+18]
 00468AF5    mov         dword ptr [esp+14],eax
 00468AF9    mov         eax,dword ptr [esp+14]
 00468AFD    movzx       eax,byte ptr [eax]
 00468B00    add         eax,dword ptr [esp+14]
 00468B04    inc         eax
 00468B05    mov         dword ptr [esp+0C],eax
 00468B09    mov         eax,dword ptr [esp+0C]
 00468B0D    add         eax,0A
 00468B10    mov         dword ptr [esp+20],eax
 00468B14    mov         eax,dword ptr [esp+20]
 00468B18    movzx       ebx,byte ptr [eax]
 00468B1B    add         ebx,dword ptr [esp+20]
 00468B1F    inc         ebx
 00468B20    movzx       esi,word ptr [ebx]
 00468B23    add         ebx,2
 00468B26    test        si,si
>00468B29    jbe         00468B44
 00468B2B    lea         eax,[ebx+1A]
 00468B2E    mov         dword ptr [esp+24],eax
 00468B32    mov         eax,dword ptr [esp+24]
 00468B36    movzx       ebx,byte ptr [eax]
 00468B39    add         ebx,dword ptr [esp+24]
 00468B3D    inc         ebx
 00468B3E    dec         esi
 00468B3F    test        si,si
>00468B42    ja          00468B2B
 00468B44    movzx       esi,word ptr [ebx]
 00468B47    add         ebx,2
 00468B4A    test        si,si
>00468B4D    jbe         00468BFB
 00468B53    mov         eax,dword ptr [ebx+1]
 00468B56    mov         dword ptr [esp+28],eax
 00468B5A    mov         eax,dword ptr [esp+28]
 00468B5E    add         eax,1A
 00468B61    mov         dword ptr [esp+30],eax
 00468B65    mov         eax,dword ptr [esp+30]
 00468B69    mov         dword ptr [esp+2C],eax
 00468B6D    mov         eax,dword ptr [esp]
 00468B70    mov         dword ptr [esp+34],eax
 00468B74    mov         eax,dword ptr [esp+34]
 00468B78    add         eax,1A
 00468B7B    mov         dword ptr [esp+3C],eax
 00468B7F    mov         eax,dword ptr [esp+3C]
 00468B83    mov         dword ptr [esp+38],eax
 00468B87    lea         eax,[esp+2C]
 00468B8B    mov         dword ptr [esp+40],eax
 00468B8F    lea         eax,[esp+38]
 00468B93    mov         dword ptr [esp+44],eax
 00468B97    mov         eax,dword ptr [esp+40]
 00468B9B    mov         edi,dword ptr [eax]
 00468B9D    movzx       eax,byte ptr [edi]
 00468BA0    mov         edx,dword ptr [esp+44]
 00468BA4    mov         edx,dword ptr [edx]
 00468BA6    cmp         al,byte ptr [edx]
>00468BA8    jne         00468BBE
 00468BAA    movzx       ecx,byte ptr [edi]
 00468BAD    mov         eax,dword ptr [esp+44]
 00468BB1    mov         edx,dword ptr [eax]
 00468BB3    mov         eax,edi
 00468BB5    call        CompareMem
 00468BBA    test        al,al
>00468BBC    jne         00468BC2
 00468BBE    xor         eax,eax
>00468BC0    jmp         00468BC4
 00468BC2    mov         al,1
 00468BC4    mov         byte ptr [esp+48],al
 00468BC8    cmp         byte ptr [esp+48],0
>00468BCD    je          00468BE4
 00468BCF    lea         eax,[ebx+5]
 00468BD2    mov         ebx,eax
 00468BD4    movzx       ebp,word ptr [ebx]
 00468BD7    cmp         bp,2
>00468BDB    je          00468BEC
 00468BDD    mov         byte ptr [esp+4],1
>00468BE2    jmp         00468C22
 00468BE4    lea         eax,[ebx+5]
 00468BE7    mov         ebx,eax
 00468BE9    movzx       ebp,word ptr [ebx]
 00468BEC    movzx       eax,bp
 00468BEF    add         ebx,eax
 00468BF1    dec         esi
 00468BF2    test        si,si
>00468BF5    ja          00468B53
 00468BFB    mov         eax,dword ptr [esp+0C]
 00468BFF    cmp         dword ptr [eax+4],0
>00468C03    je          00468C1D
 00468C05    mov         eax,dword ptr [esp+0C]
 00468C09    mov         eax,dword ptr [eax+4]
 00468C0C    mov         eax,dword ptr [eax]
 00468C0E    mov         dword ptr [esp+8],eax
 00468C12    cmp         dword ptr [esp+8],0
>00468C17    jne         00468AD8
 00468C1D    mov         byte ptr [esp+4],0
 00468C22    movzx       eax,byte ptr [esp+4]
 00468C27    add         esp,4C
 00468C2A    pop         ebp
 00468C2B    pop         edi
 00468C2C    pop         esi
 00468C2D    pop         ebx
 00468C2E    ret
*}
end;

//00468C30
{*function sub_00468C30(?:?; ?:?):?;
begin
 00468C30    push        ebp
 00468C31    mov         ebp,esp
 00468C33    add         esp,0FFFFFFCC
 00468C36    push        ebx
 00468C37    push        esi
 00468C38    push        edi
 00468C39    xor         ecx,ecx
 00468C3B    mov         dword ptr [ebp-4],ecx
 00468C3E    mov         dword ptr [ebp-0C],edx
 00468C41    mov         dword ptr [ebp-8],eax
 00468C44    xor         eax,eax
 00468C46    push        ebp
 00468C47    push        468D3B
 00468C4C    push        dword ptr fs:[eax]
 00468C4F    mov         dword ptr fs:[eax],esp
>00468C52    jmp         00468D0E
 00468C57    lea         edx,[ebp-4]
 00468C5A    mov         eax,dword ptr [ebp-8]
 00468C5D    mov         eax,dword ptr [eax]
 00468C5F    mov         ecx,dword ptr [eax]
 00468C61    call        dword ptr [ecx+48]
 00468C64    xor         ebx,ebx
>00468C66    jmp         00468CE1
 00468C68    mov         eax,dword ptr [ebp-4]
 00468C6B    mov         esi,dword ptr [eax+ebx*4]
 00468C6E    mov         eax,esi
 00468C70    mov         edx,dword ptr [eax]
 00468C72    call        dword ptr [edx+30]
 00468C75    mov         dword ptr [ebp-14],eax
 00468C78    mov         eax,dword ptr [ebp-14]
 00468C7B    add         eax,1A
 00468C7E    mov         dword ptr [ebp-1C],eax
 00468C81    mov         eax,dword ptr [ebp-1C]
 00468C84    mov         dword ptr [ebp-18],eax
 00468C87    mov         eax,dword ptr [ebp-0C]
 00468C8A    mov         dword ptr [ebp-20],eax
 00468C8D    mov         eax,dword ptr [ebp-20]
 00468C90    add         eax,1A
 00468C93    mov         dword ptr [ebp-28],eax
 00468C96    mov         eax,dword ptr [ebp-28]
 00468C99    mov         dword ptr [ebp-24],eax
 00468C9C    lea         eax,[ebp-18]
 00468C9F    mov         dword ptr [ebp-2C],eax
 00468CA2    lea         eax,[ebp-24]
 00468CA5    mov         dword ptr [ebp-30],eax
 00468CA8    mov         eax,dword ptr [ebp-2C]
 00468CAB    mov         edi,dword ptr [eax]
 00468CAD    movzx       eax,byte ptr [edi]
 00468CB0    mov         edx,dword ptr [ebp-30]
 00468CB3    mov         edx,dword ptr [edx]
 00468CB5    cmp         al,byte ptr [edx]
>00468CB7    jne         00468CCC
 00468CB9    movzx       ecx,byte ptr [edi]
 00468CBC    mov         eax,dword ptr [ebp-30]
 00468CBF    mov         edx,dword ptr [eax]
 00468CC1    mov         eax,edi
 00468CC3    call        CompareMem
 00468CC8    test        al,al
>00468CCA    jne         00468CD0
 00468CCC    xor         eax,eax
>00468CCE    jmp         00468CD2
 00468CD0    mov         al,1
 00468CD2    mov         byte ptr [ebp-31],al
 00468CD5    cmp         byte ptr [ebp-31],0
>00468CD9    je          00468CE0
 00468CDB    mov         dword ptr [ebp-10],esi
>00468CDE    jmp         00468D1F
 00468CE0    inc         ebx
 00468CE1    mov         eax,dword ptr [ebp-4]
 00468CE4    call        0040ABA8
 00468CE9    cmp         ebx,eax
>00468CEB    jl          00468C68
 00468CF1    lea         eax,[ebp-4]
 00468CF4    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00468CFA    call        @DynArrayClear
 00468CFF    mov         eax,dword ptr [ebp-8]
 00468D02    mov         eax,dword ptr [eax]
 00468D04    mov         edx,dword ptr [eax]
 00468D06    call        dword ptr [edx+1C]
 00468D09    mov         edx,dword ptr [ebp-8]
 00468D0C    mov         dword ptr [edx],eax
 00468D0E    mov         eax,dword ptr [ebp-8]
 00468D11    cmp         dword ptr [eax],0
>00468D14    jne         00468C57
 00468D1A    xor         eax,eax
 00468D1C    mov         dword ptr [ebp-10],eax
 00468D1F    xor         eax,eax
 00468D21    pop         edx
 00468D22    pop         ecx
 00468D23    pop         ecx
 00468D24    mov         dword ptr fs:[eax],edx
 00468D27    push        468D42
 00468D2C    lea         eax,[ebp-4]
 00468D2F    mov         edx,dword ptr ds:[43AF4C];TArray<System.Rtti.TRttiProperty>
 00468D35    call        @DynArrayClear
 00468D3A    ret
>00468D3B    jmp         @HandleFinally
>00468D40    jmp         00468D2C
 00468D42    mov         eax,dword ptr [ebp-10]
 00468D45    pop         edi
 00468D46    pop         esi
 00468D47    pop         ebx
 00468D48    mov         esp,ebp
 00468D4A    pop         ebp
 00468D4B    ret
end;*}

//00468D4C
{*function sub_00468D4C(?:?; ?:?):?;
begin
 00468D4C    push        ebp
 00468D4D    mov         ebp,esp
 00468D4F    add         esp,0FFFFFFE0
 00468D52    push        ebx
 00468D53    push        esi
 00468D54    push        edi
 00468D55    xor         edx,edx
 00468D57    mov         dword ptr [ebp-20],edx
 00468D5A    mov         dword ptr [ebp-4],edx
 00468D5D    mov         dword ptr [ebp-8],eax
 00468D60    xor         eax,eax
 00468D62    push        ebp
 00468D63    push        468E19
 00468D68    push        dword ptr fs:[eax]
 00468D6B    mov         dword ptr fs:[eax],esp
 00468D6E    mov         eax,dword ptr [ebp+8]
 00468D71    mov         eax,dword ptr [eax-4]
 00468D74    mov         dword ptr [ebp-10],eax
 00468D77    cmp         dword ptr [ebp-10],0
>00468D7B    je          00468DF0
 00468D7D    lea         edx,[ebp-4]
 00468D80    mov         eax,dword ptr [ebp-10]
 00468D83    mov         ecx,dword ptr [eax]
 00468D85    call        dword ptr [ecx+4C]
 00468D88    xor         ebx,ebx
>00468D8A    jmp         00468DC5
 00468D8C    mov         eax,dword ptr [ebp-4]
 00468D8F    mov         esi,dword ptr [eax+ebx*4]
 00468D92    mov         edi,dword ptr [esi+4]
 00468D95    lea         eax,[edi+9]
 00468D98    mov         dword ptr [ebp-1C],eax
 00468D9B    mov         eax,dword ptr [ebp-1C]
 00468D9E    mov         dword ptr [ebp-18],eax
 00468DA1    mov         eax,dword ptr [ebp-18]
 00468DA4    mov         dword ptr [ebp-14],eax
 00468DA7    lea         eax,[ebp-14]
 00468DAA    lea         edx,[ebp-20]
 00468DAD    call        TTypeInfoFieldAccessor.ToString
 00468DB2    mov         eax,dword ptr [ebp-20]
 00468DB5    mov         edx,dword ptr [ebp-8]
 00468DB8    call        @UStrEqual
>00468DBD    jne         00468DC4
 00468DBF    mov         dword ptr [ebp-0C],esi
>00468DC2    jmp         00468DF5
 00468DC4    inc         ebx
 00468DC5    mov         eax,dword ptr [ebp-4]
 00468DC8    call        0040ABA8
 00468DCD    cmp         ebx,eax
>00468DCF    jl          00468D8C
 00468DD1    lea         eax,[ebp-4]
 00468DD4    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00468DDA    call        @DynArrayClear
 00468DDF    mov         eax,dword ptr [ebp-10]
 00468DE2    mov         edx,dword ptr [eax]
 00468DE4    call        dword ptr [edx+1C]
 00468DE7    mov         dword ptr [ebp-10],eax
 00468DEA    cmp         dword ptr [ebp-10],0
>00468DEE    jne         00468D7D
 00468DF0    xor         eax,eax
 00468DF2    mov         dword ptr [ebp-0C],eax
 00468DF5    xor         eax,eax
 00468DF7    pop         edx
 00468DF8    pop         ecx
 00468DF9    pop         ecx
 00468DFA    mov         dword ptr fs:[eax],edx
 00468DFD    push        468E20
 00468E02    lea         eax,[ebp-20]
 00468E05    call        @UStrClr
 00468E0A    lea         eax,[ebp-4]
 00468E0D    mov         edx,dword ptr ds:[43AF08];TArray<System.Rtti.TRttiField>
 00468E13    call        @DynArrayClear
 00468E18    ret
>00468E19    jmp         @HandleFinally
>00468E1E    jmp         00468E02
 00468E20    mov         eax,dword ptr [ebp-0C]
 00468E23    pop         edi
 00468E24    pop         esi
 00468E25    pop         ebx
 00468E26    mov         esp,ebp
 00468E28    pop         ebp
 00468E29    ret
end;*}

//00468E2C
{*function sub_00468E2C(?:?; ?:?):?;
begin
 00468E2C    push        ebp
 00468E2D    mov         ebp,esp
 00468E2F    xor         ecx,ecx
 00468E31    push        ecx
 00468E32    push        ecx
 00468E33    push        ecx
 00468E34    push        ecx
 00468E35    push        ebx
 00468E36    push        esi
 00468E37    push        edi
 00468E38    mov         ebx,eax
 00468E3A    xor         eax,eax
 00468E3C    push        ebp
 00468E3D    push        468EE5
 00468E42    push        dword ptr fs:[eax]
 00468E45    mov         dword ptr fs:[eax],esp
 00468E48    mov         eax,dword ptr [ebp+8]
 00468E4B    mov         edi,dword ptr [eax-4]
 00468E4E    lea         eax,[ebp-4]
 00468E51    mov         edx,ebx
 00468E53    call        @UStrLAsg
 00468E58    test        edi,edi
>00468E5A    je          00468EB4
 00468E5C    lea         edx,[ebp-8]
 00468E5F    mov         eax,edi
 00468E61    mov         ecx,dword ptr [eax]
 00468E63    call        dword ptr [ecx+44]
 00468E66    xor         ebx,ebx
>00468E68    jmp         00468E8D
 00468E6A    mov         eax,dword ptr [ebp-8]
 00468E6D    mov         esi,dword ptr [eax+ebx*4]
 00468E70    lea         edx,[ebp-10]
 00468E73    mov         eax,esi
 00468E75    mov         ecx,dword ptr [eax]
 00468E77    call        dword ptr [ecx+8]
 00468E7A    mov         eax,dword ptr [ebp-10]
 00468E7D    mov         edx,dword ptr [ebp-4]
 00468E80    call        @UStrEqual
>00468E85    jne         00468E8C
 00468E87    mov         dword ptr [ebp-0C],esi
>00468E8A    jmp         00468EB9
 00468E8C    inc         ebx
 00468E8D    mov         eax,dword ptr [ebp-8]
 00468E90    call        0040ABA8
 00468E95    cmp         ebx,eax
>00468E97    jl          00468E6A
 00468E99    lea         eax,[ebp-8]
 00468E9C    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00468EA2    call        @DynArrayClear
 00468EA7    mov         eax,edi
 00468EA9    mov         edx,dword ptr [eax]
 00468EAB    call        dword ptr [edx+1C]
 00468EAE    mov         edi,eax
 00468EB0    test        edi,edi
>00468EB2    jne         00468E5C
 00468EB4    xor         eax,eax
 00468EB6    mov         dword ptr [ebp-0C],eax
 00468EB9    xor         eax,eax
 00468EBB    pop         edx
 00468EBC    pop         ecx
 00468EBD    pop         ecx
 00468EBE    mov         dword ptr fs:[eax],edx
 00468EC1    push        468EEC
 00468EC6    lea         eax,[ebp-10]
 00468EC9    call        @UStrClr
 00468ECE    lea         eax,[ebp-8]
 00468ED1    mov         edx,dword ptr ds:[43AEC4];TArray<System.Rtti.TRttiMethod>
 00468ED7    call        @DynArrayClear
 00468EDC    lea         eax,[ebp-4]
 00468EDF    call        @UStrClr
 00468EE4    ret
>00468EE5    jmp         @HandleFinally
>00468EEA    jmp         00468EC6
 00468EEC    mov         eax,dword ptr [ebp-0C]
 00468EEF    pop         edi
 00468EF0    pop         esi
 00468EF1    pop         ebx
 00468EF2    mov         esp,ebp
 00468EF4    pop         ebp
 00468EF5    ret
end;*}

//00468EF8
function IsStoredPropCA(Instance:TObject; PropInfo:PPropInfo):Boolean;
begin
{*
 00468EF8    push        ebp
 00468EF9    mov         ebp,esp
 00468EFB    add         esp,0FFFFFF88
 00468EFE    push        ebx
 00468EFF    push        esi
 00468F00    xor         ecx,ecx
 00468F02    mov         dword ptr [ebp-78],ecx
 00468F05    mov         dword ptr [ebp-74],ecx
 00468F08    mov         dword ptr [ebp-70],ecx
 00468F0B    mov         dword ptr [ebp-6C],ecx
 00468F0E    mov         dword ptr [ebp-68],ecx
 00468F11    mov         dword ptr [ebp-64],ecx
 00468F14    mov         dword ptr [ebp-60],ecx
 00468F17    mov         dword ptr [ebp-0C],ecx
 00468F1A    mov         dword ptr [ebp-10],ecx
 00468F1D    mov         dword ptr [ebp-48],edx
 00468F20    mov         dword ptr [ebp-44],eax
 00468F23    lea         eax,[ebp-8]
 00468F26    mov         edx,dword ptr ds:[43AC94];TRttiContext
 00468F2C    call        @AddRefRecord
 00468F31    lea         eax,[ebp-28]
 00468F34    mov         edx,dword ptr ds:[435E20];TValue
 00468F3A    call        @AddRefRecord
 00468F3F    lea         eax,[ebp-40]
 00468F42    mov         edx,dword ptr ds:[435E20];TValue
 00468F48    call        @AddRefRecord
 00468F4D    xor         eax,eax
 00468F4F    push        ebp
 00468F50    push        469144
 00468F55    push        dword ptr fs:[eax]
 00468F58    mov         dword ptr fs:[eax],esp
 00468F5B    mov         byte ptr [ebp-49],1
 00468F5F    lea         eax,[ebp-60]
 00468F62    call        TRttiContext.Create
 00468F67    lea         edx,[ebp-60]
 00468F6A    lea         eax,[ebp-8]
 00468F6D    mov         ecx,dword ptr ds:[43AC94];TRttiContext
 00468F73    call        @CopyRecord
 00468F78    xor         eax,eax
 00468F7A    push        ebp
 00468F7B    push        4690DC
 00468F80    push        dword ptr fs:[eax]
 00468F83    mov         dword ptr fs:[eax],esp
 00468F86    mov         eax,dword ptr [ebp-44]
 00468F89    mov         ebx,dword ptr [eax]
 00468F8B    add         ebx,0FFFFFFB8
 00468F8E    mov         edx,dword ptr [ebx]
 00468F90    lea         eax,[ebp-8]
 00468F93    call        TRttiContext.GetType
 00468F98    mov         dword ptr [ebp-4],eax
 00468F9B    cmp         dword ptr [ebp-4],0
>00468F9F    je          004690C6
 00468FA5    lea         eax,[ebp-4]
 00468FA8    mov         edx,dword ptr [ebp-48]
 00468FAB    call        00468C30
 00468FB0    mov         dword ptr [ebp-5C],eax
 00468FB3    cmp         dword ptr [ebp-5C],0
>00468FB7    je          004690AB
 00468FBD    lea         edx,[ebp-10]
 00468FC0    mov         eax,dword ptr [ebp-5C]
 00468FC3    mov         ecx,dword ptr [eax]
 00468FC5    call        dword ptr [ecx+4]
 00468FC8    xor         ebx,ebx
>00468FCA    jmp         0046908D
 00468FCF    mov         eax,dword ptr [ebp-10]
 00468FD2    mov         esi,dword ptr [eax+ebx*4]
 00468FD5    mov         eax,esi
 00468FD7    mov         edx,dword ptr ds:[79EC18];TComparer<FXLicenseManagerFrm.TLicFile>.Compare:Integer
 00468FDD    call        @IsClass
 00468FE2    test        al,al
>00468FE4    je          0046908C
 00468FEA    mov         dword ptr [ebp-58],esi
 00468FED    mov         eax,dword ptr [ebp-58]
 00468FF0    cmp         dword ptr [eax+8],0
>00468FF4    je          0046907B
 00468FFA    lea         eax,[ebp-0C]
 00468FFD    mov         edx,dword ptr [ebp-58]
 00469000    mov         edx,dword ptr [edx+8]
 00469003    call        @UStrLAsg
 00469008    push        ebp
 00469009    mov         eax,dword ptr [ebp-0C]
 0046900C    call        00468D4C
 00469011    pop         ecx
 00469012    mov         dword ptr [ebp-50],eax
 00469015    cmp         dword ptr [ebp-50],0
>00469019    je          00469036
 0046901B    lea         ecx,[ebp-28]
 0046901E    mov         edx,dword ptr [ebp-44]
 00469021    mov         eax,dword ptr [ebp-50]
 00469024    mov         ebx,dword ptr [eax]
 00469026    call        dword ptr [ebx+18]
 00469029    lea         eax,[ebp-28]
 0046902C    call        TValue.AsBoolean
 00469031    mov         byte ptr [ebp-49],al
>00469034    jmp         00469085
 00469036    push        ebp
 00469037    mov         eax,dword ptr [ebp-0C]
 0046903A    call        00468E2C
 0046903F    pop         ecx
 00469040    mov         dword ptr [ebp-54],eax
 00469043    cmp         dword ptr [ebp-54],0
>00469047    je          00469085
 00469049    push        0FF
 0046904B    lea         eax,[ebp-78]
 0046904E    push        eax
 0046904F    lea         ecx,[ebp-78]
 00469052    mov         edx,dword ptr [ebp-44]
 00469055    mov         eax,dword ptr [ebp-54]
 00469058    call        TRttiMethod.Invoke
 0046905D    lea         edx,[ebp-78]
 00469060    lea         eax,[ebp-40]
 00469063    mov         ecx,dword ptr ds:[435E20];TValue
 00469069    call        @CopyRecord
 0046906E    lea         eax,[ebp-40]
 00469071    call        TValue.AsBoolean
 00469076    mov         byte ptr [ebp-49],al
>00469079    jmp         00469085
 0046907B    mov         eax,dword ptr [ebp-58]
 0046907E    movzx       eax,byte ptr [eax+4]
 00469082    mov         byte ptr [ebp-49],al
 00469085    call        @TryFinallyExit
>0046908A    jmp         004690E3
 0046908C    inc         ebx
 0046908D    mov         eax,dword ptr [ebp-10]
 00469090    call        0040ABA8
 00469095    cmp         ebx,eax
>00469097    jl          00468FCF
 0046909D    lea         eax,[ebp-10]
 004690A0    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 004690A6    call        @DynArrayClear
 004690AB    cmp         dword ptr [ebp-4],0
>004690AF    je          004690BC
 004690B1    mov         eax,dword ptr [ebp-4]
 004690B4    mov         edx,dword ptr [eax]
 004690B6    call        dword ptr [edx+1C]
 004690B9    mov         dword ptr [ebp-4],eax
 004690BC    cmp         dword ptr [ebp-4],0
>004690C0    jne         00468FA5
 004690C6    xor         eax,eax
 004690C8    pop         edx
 004690C9    pop         ecx
 004690CA    pop         ecx
 004690CB    mov         dword ptr fs:[eax],edx
 004690CE    push        4690E3
 004690D3    lea         eax,[ebp-8]
 004690D6    call        TRttiContext.Free
 004690DB    ret
>004690DC    jmp         @HandleFinally
>004690E1    jmp         004690D3
 004690E3    xor         eax,eax
 004690E5    pop         edx
 004690E6    pop         ecx
 004690E7    pop         ecx
 004690E8    mov         dword ptr fs:[eax],edx
 004690EB    push        46914B
 004690F0    lea         eax,[ebp-78]
 004690F3    mov         edx,dword ptr ds:[435E20];TValue
 004690F9    call        @FinalizeRecord
 004690FE    lea         eax,[ebp-60]
 00469101    mov         edx,dword ptr ds:[43AC94];TRttiContext
 00469107    call        @FinalizeRecord
 0046910C    lea         eax,[ebp-40]
 0046910F    mov         edx,dword ptr ds:[435E20];TValue
 00469115    mov         ecx,2
 0046911A    call        @FinalizeArray
 0046911F    lea         eax,[ebp-10]
 00469122    mov         edx,dword ptr ds:[43AE20];TArray<System.TCustomAttribute>
 00469128    call        @DynArrayClear
 0046912D    lea         eax,[ebp-0C]
 00469130    call        @UStrClr
 00469135    lea         eax,[ebp-8]
 00469138    mov         edx,dword ptr ds:[43AC94];TRttiContext
 0046913E    call        @FinalizeRecord
 00469143    ret
>00469144    jmp         @HandleFinally
>00469149    jmp         004690F0
 0046914B    movzx       eax,byte ptr [ebp-49]
 0046914F    pop         esi
 00469150    pop         ebx
 00469151    mov         esp,ebp
 00469153    pop         ebp
 00469154    ret
*}
end;

//00469158
function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;
begin
{*
 00469158    push        ebx
 00469159    push        esi
 0046915A    push        edi
 0046915B    mov         esi,edx
 0046915D    mov         edi,eax
 0046915F    mov         edx,esi
 00469161    mov         eax,edi
 00469163    call        IsStoredPropRTTI
 00469168    mov         ebx,eax
 0046916A    test        bl,bl
>0046916C    je          00469186
 0046916E    mov         edx,esi
 00469170    mov         eax,edi
 00469172    call        HasCustomAttribute
 00469177    test        al,al
>00469179    je          00469186
 0046917B    mov         edx,esi
 0046917D    mov         eax,edi
 0046917F    call        IsStoredPropCA
 00469184    mov         ebx,eax
 00469186    mov         eax,ebx
 00469188    pop         edi
 00469189    pop         esi
 0046918A    pop         ebx
 0046918B    ret
*}
end;

//0046918C
function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):NativeInt;
begin
{*
 0046918C    push        ebx
 0046918D    push        edi
 0046918E    mov         edi,dword ptr [edx]
 00469190    mov         edi,dword ptr [edi]
 00469192    mov         bl,4
 00469194    cmp         byte ptr [edi],7
>00469197    je          004691A2
 00469199    xor         ecx,ecx
 0046919B    mov         cl,byte ptr [edi+1]
 0046919E    mov         bl,byte ptr [edi+ecx+2]
 004691A2    mov         ecx,dword ptr [edx+4]
 004691A5    cmp         byte ptr [edx+7],0FE
 004691A9    mov         edx,dword ptr [edx+10]
>004691AC    jb          004691B9
>004691AE    ja          004691BD
 004691B0    movsx       ecx,cx
 004691B3    add         ecx,dword ptr [eax]
 004691B5    call        dword ptr [ecx]
>004691B7    jmp         004691D6
 004691B9    call        ecx
>004691BB    jmp         004691D6
 004691BD    and         ecx,0FFFFFF
 004691C3    add         ecx,eax
 004691C5    mov         al,byte ptr [ecx]
 004691C7    cmp         bl,2
>004691CA    jb          004691D6
 004691CC    mov         ax,word ptr [ecx]
 004691CF    cmp         bl,4
>004691D2    jb          004691D6
 004691D4    mov         eax,dword ptr [ecx]
 004691D6    cmp         bl,4
>004691D9    jae         004691FA
 004691DB    cmp         bl,2
>004691DE    jae         004691F0
 004691E0    cmp         bl,0
 004691E3    movsx       eax,al
>004691E6    je          004691FA
 004691E8    and         eax,0FF
 004691ED    pop         edi
 004691EE    pop         ebx
 004691EF    ret
 004691F0    movsx       eax,ax
>004691F3    je          004691FA
 004691F5    and         eax,0FFFF
 004691FA    pop         edi
 004691FB    pop         ebx
 004691FC    ret
*}
end;

//00469200
procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:NativeInt);
begin
{*
 00469200    push        ebx
 00469201    push        esi
 00469202    push        edi
 00469203    mov         edi,edx
 00469205    mov         esi,dword ptr [edi]
 00469207    mov         esi,dword ptr [esi]
 00469209    mov         bl,4
 0046920B    cmp         byte ptr [esi],7
>0046920E    je          00469219
 00469210    xor         ebx,ebx
 00469212    mov         bl,byte ptr [esi+1]
 00469215    mov         bl,byte ptr [esi+ebx+2]
 00469219    mov         edx,dword ptr [edi+10]
 0046921C    cmp         edx,80000000
>00469222    jne         00469226
 00469224    mov         edx,ecx
 00469226    mov         esi,dword ptr [edi+8]
 00469229    cmp         byte ptr [edi+0B],0FE
>0046922D    ja          0046923E
>0046922F    jb          0046923A
 00469231    movsx       esi,si
 00469234    add         esi,dword ptr [eax]
 00469236    call        dword ptr [esi]
>00469238    jmp         00469257
 0046923A    call        esi
>0046923C    jmp         00469257
 0046923E    and         esi,0FFFFFF
 00469244    add         eax,esi
 00469246    mov         byte ptr [eax],cl
 00469248    cmp         bl,2
>0046924B    jb          00469257
 0046924D    mov         word ptr [eax],cx
 00469250    cmp         bl,4
>00469253    jb          00469257
 00469255    mov         dword ptr [eax],ecx
 00469257    pop         edi
 00469258    pop         esi
 00469259    pop         ebx
 0046925A    ret
*}
end;

//0046925C
function GetSetElementName(TypeInfo:PTypeInfo; Value:Integer):UnicodeString;
begin
{*
 0046925C    push        ebp
 0046925D    mov         ebp,esp
 0046925F    push        0
 00469261    push        ebx
 00469262    push        esi
 00469263    push        edi
 00469264    mov         edi,ecx
 00469266    mov         esi,edx
 00469268    mov         ebx,eax
 0046926A    xor         eax,eax
 0046926C    push        ebp
 0046926D    push        4692D0
 00469272    push        dword ptr fs:[eax]
 00469275    mov         dword ptr fs:[eax],esp
 00469278    movzx       eax,byte ptr [ebx]
 0046927B    dec         al
>0046927D    je          00469289
 0046927F    dec         al
>00469281    je          00469294
 00469283    sub         al,7
>00469285    je          00469294
>00469287    jmp         004692AF
 00469289    mov         edx,edi
 0046928B    mov         eax,esi
 0046928D    call        IntToStr
>00469292    jmp         004692BA
 00469294    lea         edx,[ebp-4]
 00469297    mov         eax,esi
 00469299    call        IntToStr
 0046929E    mov         ecx,dword ptr [ebp-4]
 004692A1    mov         eax,edi
 004692A3    mov         edx,4692EC;'#'
 004692A8    call        @UStrCat3
>004692AD    jmp         004692BA
 004692AF    mov         ecx,edi
 004692B1    mov         edx,esi
 004692B3    mov         eax,ebx
 004692B5    call        GetEnumName
 004692BA    xor         eax,eax
 004692BC    pop         edx
 004692BD    pop         ecx
 004692BE    pop         ecx
 004692BF    mov         dword ptr fs:[eax],edx
 004692C2    push        4692D7
 004692C7    lea         eax,[ebp-4]
 004692CA    call        @UStrClr
 004692CF    ret
>004692D0    jmp         @HandleFinally
>004692D5    jmp         004692C7
 004692D7    pop         edi
 004692D8    pop         esi
 004692D9    pop         ebx
 004692DA    pop         ecx
 004692DB    pop         ebp
 004692DC    ret
*}
end;

//004692F0
function GetSetElementValue(TypeInfo:PTypeInfo; const Name:UnicodeString):Integer;
begin
{*
 004692F0    push        ebp
 004692F1    mov         ebp,esp
 004692F3    push        0
 004692F5    push        ebx
 004692F6    push        esi
 004692F7    push        edi
 004692F8    mov         edi,edx
 004692FA    mov         ebx,eax
 004692FC    xor         eax,eax
 004692FE    push        ebp
 004692FF    push        46937F
 00469304    push        dword ptr fs:[eax]
 00469307    mov         dword ptr fs:[eax],esp
 0046930A    mov         eax,ebx
 0046930C    call        GetTypeData
 00469311    mov         esi,dword ptr [eax+1]
 00469314    movzx       eax,byte ptr [ebx]
 00469317    dec         al
>00469319    je          00469325
 0046931B    dec         al
>0046931D    je          00469332
 0046931F    sub         al,7
>00469321    je          00469332
>00469323    jmp         0046935E
 00469325    mov         eax,edi
 00469327    call        StrToInt
 0046932C    mov         ebx,eax
 0046932E    sub         ebx,esi
>00469330    jmp         00469369
 00469332    mov         ebx,edi
 00469334    test        ebx,ebx
>00469336    je          0046933D
 00469338    sub         ebx,4
 0046933B    mov         ebx,dword ptr [ebx]
 0046933D    lea         eax,[ebp-4]
 00469340    push        eax
 00469341    mov         ecx,ebx
 00469343    dec         ecx
 00469344    mov         edx,2
 00469349    mov         eax,edi
 0046934B    call        @UStrCopy
 00469350    mov         eax,dword ptr [ebp-4]
 00469353    call        StrToInt
 00469358    mov         ebx,eax
 0046935A    sub         ebx,esi
>0046935C    jmp         00469369
 0046935E    mov         edx,edi
 00469360    mov         eax,ebx
 00469362    call        GetEnumValue
 00469367    mov         ebx,eax
 00469369    xor         eax,eax
 0046936B    pop         edx
 0046936C    pop         ecx
 0046936D    pop         ecx
 0046936E    mov         dword ptr fs:[eax],edx
 00469371    push        469386
 00469376    lea         eax,[ebp-4]
 00469379    call        @UStrClr
 0046937E    ret
>0046937F    jmp         @HandleFinally
>00469384    jmp         00469376
 00469386    mov         eax,ebx
 00469388    pop         edi
 00469389    pop         esi
 0046938A    pop         ebx
 0046938B    pop         ecx
 0046938C    pop         ebp
 0046938D    ret
*}
end;

//00469390
procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);
begin
{*
 00469390    push        ebp
 00469391    mov         ebp,esp
 00469393    push        esi
 00469394    push        edi
 00469395    mov         edi,edx
 00469397    mov         edx,dword ptr [edi+10]
 0046939A    cmp         edx,80000000
>004693A0    jne         004693A4
 004693A2    mov         edx,ecx
 004693A4    mov         esi,dword ptr [edi+4]
 004693A7    cmp         byte ptr [edi+7],0FE
>004693AB    ja          004693BC
>004693AD    jb          004693B8
 004693AF    movsx       esi,si
 004693B2    add         esi,dword ptr [eax]
 004693B4    call        dword ptr [esi]
>004693B6    jmp         004693CD
 004693B8    call        esi
>004693BA    jmp         004693CD
 004693BC    and         esi,0FFFFFF
 004693C2    mov         edx,eax
 004693C4    add         edx,esi
 004693C6    mov         eax,ecx
 004693C8    call        @PStrCpy
 004693CD    pop         edi
 004693CE    pop         esi
 004693CF    pop         ebp
 004693D0    ret         4
*}
end;

//004693D4
procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);
begin
{*
 004693D4    push        esi
 004693D5    push        edi
 004693D6    mov         esi,edx
 004693D8    mov         edx,dword ptr [esi+10]
 004693DB    cmp         edx,80000000
>004693E1    jne         004693E5
 004693E3    mov         edx,ecx
 004693E5    mov         edi,dword ptr [esi+8]
 004693E8    cmp         byte ptr [esi+0B],0FE
>004693EC    ja          004693FF
>004693EE    jb          004693FA
 004693F0    movsx       edi,di
 004693F3    add         edi,dword ptr [eax]
 004693F5    call        dword ptr [edi]
 004693F7    pop         edi
 004693F8    pop         esi
 004693F9    ret
 004693FA    call        edi
 004693FC    pop         edi
 004693FD    pop         esi
 004693FE    ret
 004693FF    and         edi,0FFFFFF
 00469405    add         edi,eax
 00469407    mov         eax,dword ptr [esi]
 00469409    mov         eax,dword ptr [eax]
 0046940B    mov         esi,ecx
 0046940D    xor         ecx,ecx
 0046940F    mov         cl,byte ptr [eax+1]
 00469412    mov         cl,byte ptr [eax+ecx+2]
 00469416    lods        byte ptr [esi]
 00469417    cmp         al,cl
>00469419    jb          0046941D
 0046941B    mov         al,cl
 0046941D    stos        byte ptr [edi]
 0046941E    mov         cl,al
 00469420    rep movs    byte ptr [edi],byte ptr [esi]
 00469422    pop         edi
 00469423    pop         esi
 00469424    ret
*}
end;

//00469428
procedure GetShortStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);
begin
{*
 00469428    push        ebx
 00469429    add         esp,0FFFFFF00
 0046942F    mov         ebx,ecx
 00469431    push        0FF
 00469436    lea         ecx,[esp+4]
 0046943A    call        GetShortStrProp
 0046943F    mov         eax,ebx
 00469441    mov         edx,esp
 00469443    mov         ecx,0
 00469448    call        @LStrFromString
 0046944D    add         esp,100
 00469453    pop         ebx
 00469454    ret
*}
end;

//00469458
procedure SetShortStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 00469458    push        ebx
 00469459    push        esi
 0046945A    push        edi
 0046945B    add         esp,0FFFFFF00
 00469461    mov         edi,ecx
 00469463    mov         esi,edx
 00469465    mov         ebx,eax
 00469467    mov         eax,esp
 00469469    mov         edx,edi
 0046946B    mov         ecx,0FF
 00469470    call        @LStrToString
 00469475    mov         ecx,esp
 00469477    mov         edx,esi
 00469479    mov         eax,ebx
 0046947B    call        SetShortStrProp
 00469480    add         esp,100
 00469486    pop         edi
 00469487    pop         esi
 00469488    pop         ebx
 00469489    ret
*}
end;

//0046948C
procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);
begin
{*
 0046948C    push        esi
 0046948D    push        edi
 0046948E    mov         edi,edx
 00469490    mov         edx,dword ptr [edi+10]
 00469493    cmp         edx,80000000
>00469499    jne         0046949D
 0046949B    mov         edx,ecx
 0046949D    mov         esi,dword ptr [edi+4]
 004694A0    cmp         byte ptr [edi+7],0FE
>004694A4    ja          004694B7
>004694A6    jb          004694B2
 004694A8    movsx       esi,si
 004694AB    add         esi,dword ptr [eax]
 004694AD    call        dword ptr [esi]
 004694AF    pop         edi
 004694B0    pop         esi
 004694B1    ret
 004694B2    call        esi
 004694B4    pop         edi
 004694B5    pop         esi
 004694B6    ret
 004694B7    and         esi,0FFFFFF
 004694BD    mov         edx,dword ptr [esi+eax]
 004694C0    mov         eax,ecx
 004694C2    call        @LStrAsg
 004694C7    pop         edi
 004694C8    pop         esi
 004694C9    ret
*}
end;

//004694CC
procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 004694CC    push        esi
 004694CD    push        edi
 004694CE    mov         esi,edx
 004694D0    mov         edx,dword ptr [esi+10]
 004694D3    cmp         edx,80000000
>004694D9    jne         004694DD
 004694DB    mov         edx,ecx
 004694DD    mov         edi,dword ptr [esi+8]
 004694E0    cmp         byte ptr [esi+0B],0FE
>004694E4    ja          004694F7
>004694E6    jb          004694F2
 004694E8    movsx       edi,di
 004694EB    add         edi,dword ptr [eax]
 004694ED    call        dword ptr [edi]
 004694EF    pop         edi
 004694F0    pop         esi
 004694F1    ret
 004694F2    call        edi
 004694F4    pop         edi
 004694F5    pop         esi
 004694F6    ret
 004694F7    and         edi,0FFFFFF
 004694FD    add         eax,edi
 004694FF    mov         edx,ecx
 00469501    call        @LStrAsg
 00469506    pop         edi
 00469507    pop         esi
 00469508    ret
*}
end;

//0046950C
procedure GetWideStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);
begin
{*
 0046950C    push        ebp
 0046950D    mov         ebp,esp
 0046950F    push        0
 00469511    push        ebx
 00469512    push        esi
 00469513    push        edi
 00469514    mov         edi,ecx
 00469516    mov         esi,edx
 00469518    mov         ebx,eax
 0046951A    xor         eax,eax
 0046951C    push        ebp
 0046951D    push        469559
 00469522    push        dword ptr fs:[eax]
 00469525    mov         dword ptr fs:[eax],esp
 00469528    lea         ecx,[ebp-4]
 0046952B    mov         edx,esi
 0046952D    mov         eax,ebx
 0046952F    call        GetWideStrProp
 00469534    mov         edx,dword ptr [ebp-4]
 00469537    mov         eax,edi
 00469539    mov         ecx,0
 0046953E    call        @LStrFromWStr
 00469543    xor         eax,eax
 00469545    pop         edx
 00469546    pop         ecx
 00469547    pop         ecx
 00469548    mov         dword ptr fs:[eax],edx
 0046954B    push        469560
 00469550    lea         eax,[ebp-4]
 00469553    call        @WStrClr
 00469558    ret
>00469559    jmp         @HandleFinally
>0046955E    jmp         00469550
 00469560    pop         edi
 00469561    pop         esi
 00469562    pop         ebx
 00469563    pop         ecx
 00469564    pop         ebp
 00469565    ret
*}
end;

//00469568
procedure SetWideStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 00469568    push        ebp
 00469569    mov         ebp,esp
 0046956B    push        0
 0046956D    push        ebx
 0046956E    push        esi
 0046956F    push        edi
 00469570    mov         edi,ecx
 00469572    mov         esi,edx
 00469574    mov         ebx,eax
 00469576    xor         eax,eax
 00469578    push        ebp
 00469579    push        4695B0
 0046957E    push        dword ptr fs:[eax]
 00469581    mov         dword ptr fs:[eax],esp
 00469584    lea         eax,[ebp-4]
 00469587    mov         edx,edi
 00469589    call        @WStrFromLStr
 0046958E    mov         ecx,dword ptr [ebp-4]
 00469591    mov         edx,esi
 00469593    mov         eax,ebx
 00469595    call        SetWideStrProp
 0046959A    xor         eax,eax
 0046959C    pop         edx
 0046959D    pop         ecx
 0046959E    pop         ecx
 0046959F    mov         dword ptr fs:[eax],edx
 004695A2    push        4695B7
 004695A7    lea         eax,[ebp-4]
 004695AA    call        @WStrClr
 004695AF    ret
>004695B0    jmp         @HandleFinally
>004695B5    jmp         004695A7
 004695B7    pop         edi
 004695B8    pop         esi
 004695B9    pop         ebx
 004695BA    pop         ecx
 004695BB    pop         ebp
 004695BC    ret
*}
end;

//004695C0
procedure GetUnicodeStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);
begin
{*
 004695C0    push        ebp
 004695C1    mov         ebp,esp
 004695C3    push        0
 004695C5    push        ebx
 004695C6    push        esi
 004695C7    push        edi
 004695C8    mov         edi,ecx
 004695CA    mov         esi,edx
 004695CC    mov         ebx,eax
 004695CE    xor         eax,eax
 004695D0    push        ebp
 004695D1    push        46960D
 004695D6    push        dword ptr fs:[eax]
 004695D9    mov         dword ptr fs:[eax],esp
 004695DC    lea         ecx,[ebp-4]
 004695DF    mov         edx,esi
 004695E1    mov         eax,ebx
 004695E3    call        GetStrProp
 004695E8    mov         edx,dword ptr [ebp-4]
 004695EB    mov         eax,edi
 004695ED    mov         ecx,0
 004695F2    call        @LStrFromUStr
 004695F7    xor         eax,eax
 004695F9    pop         edx
 004695FA    pop         ecx
 004695FB    pop         ecx
 004695FC    mov         dword ptr fs:[eax],edx
 004695FF    push        469614
 00469604    lea         eax,[ebp-4]
 00469607    call        @UStrClr
 0046960C    ret
>0046960D    jmp         @HandleFinally
>00469612    jmp         00469604
 00469614    pop         edi
 00469615    pop         esi
 00469616    pop         ebx
 00469617    pop         ecx
 00469618    pop         ebp
 00469619    ret
*}
end;

//0046961C
procedure SetUnicodeStrPropAsLongStr(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 0046961C    push        ebp
 0046961D    mov         ebp,esp
 0046961F    push        0
 00469621    push        ebx
 00469622    push        esi
 00469623    push        edi
 00469624    mov         edi,ecx
 00469626    mov         esi,edx
 00469628    mov         ebx,eax
 0046962A    xor         eax,eax
 0046962C    push        ebp
 0046962D    push        469664
 00469632    push        dword ptr fs:[eax]
 00469635    mov         dword ptr fs:[eax],esp
 00469638    lea         eax,[ebp-4]
 0046963B    mov         edx,edi
 0046963D    call        @UStrFromLStr
 00469642    mov         ecx,dword ptr [ebp-4]
 00469645    mov         edx,esi
 00469647    mov         eax,ebx
 00469649    call        SetUnicodeStrProp
 0046964E    xor         eax,eax
 00469650    pop         edx
 00469651    pop         ecx
 00469652    pop         ecx
 00469653    mov         dword ptr fs:[eax],edx
 00469656    push        46966B
 0046965B    lea         eax,[ebp-4]
 0046965E    call        @UStrClr
 00469663    ret
>00469664    jmp         @HandleFinally
>00469669    jmp         0046965B
 0046966B    pop         edi
 0046966C    pop         esi
 0046966D    pop         ebx
 0046966E    pop         ecx
 0046966F    pop         ebp
 00469670    ret
*}
end;

//00469674
function GetStrProp(Instance:TObject; PropInfo:PPropInfo):UnicodeString;
begin
{*
 00469674    push        ebp
 00469675    mov         ebp,esp
 00469677    push        0
 00469679    push        0
 0046967B    push        ebx
 0046967C    push        esi
 0046967D    push        edi
 0046967E    mov         esi,ecx
 00469680    mov         ebx,edx
 00469682    mov         edi,eax
 00469684    xor         eax,eax
 00469686    push        ebp
 00469687    push        469711
 0046968C    push        dword ptr fs:[eax]
 0046968F    mov         dword ptr fs:[eax],esp
 00469692    mov         eax,dword ptr [ebx]
 00469694    mov         eax,dword ptr [eax]
 00469696    movzx       eax,byte ptr [eax]
 00469699    sub         al,5
>0046969B    je          004696AB
 0046969D    sub         al,5
>0046969F    je          004696AB
 004696A1    dec         al
>004696A3    je          004696C3
 004696A5    sub         al,7
>004696A7    je          004696DB
>004696A9    jmp         004696EC
 004696AB    lea         ecx,[ebp-4]
 004696AE    mov         edx,ebx
 004696B0    mov         eax,edi
 004696B2    call        GetAnsiStrProp
 004696B7    mov         edx,dword ptr [ebp-4]
 004696BA    mov         eax,esi
 004696BC    call        @UStrFromLStr
>004696C1    jmp         004696F3
 004696C3    lea         ecx,[ebp-8]
 004696C6    mov         edx,ebx
 004696C8    mov         eax,edi
 004696CA    call        GetWideStrProp
 004696CF    mov         edx,dword ptr [ebp-8]
 004696D2    mov         eax,esi
 004696D4    call        @UStrFromWStr
>004696D9    jmp         004696F3
 004696DB    push        esi
 004696DC    mov         ecx,ebx
 004696DE    mov         edx,edi
 004696E0    mov         eax,[00469CF8];TPropSet<System.string>
 004696E5    call        TPropSet<System.string>.GetProc
>004696EA    jmp         004696F3
 004696EC    mov         eax,esi
 004696EE    call        @UStrClr
 004696F3    xor         eax,eax
 004696F5    pop         edx
 004696F6    pop         ecx
 004696F7    pop         ecx
 004696F8    mov         dword ptr fs:[eax],edx
 004696FB    push        469718
 00469700    lea         eax,[ebp-8]
 00469703    call        @WStrClr
 00469708    lea         eax,[ebp-4]
 0046970B    call        @LStrClr
 00469710    ret
>00469711    jmp         @HandleFinally
>00469716    jmp         00469700
 00469718    pop         edi
 00469719    pop         esi
 0046971A    pop         ebx
 0046971B    pop         ecx
 0046971C    pop         ecx
 0046971D    pop         ebp
 0046971E    ret
*}
end;

//00469720
procedure SetRawByteStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:UnicodeString);
begin
{*
 00469720    push        ebp
 00469721    mov         ebp,esp
 00469723    add         esp,0FFFFFFEC
 00469726    push        ebx
 00469727    push        esi
 00469728    push        edi
 00469729    xor         ebx,ebx
 0046972B    mov         dword ptr [ebp-14],ebx
 0046972E    mov         dword ptr [ebp-4],ebx
 00469731    mov         esi,ecx
 00469733    mov         dword ptr [ebp-0C],edx
 00469736    mov         dword ptr [ebp-8],eax
 00469739    xor         eax,eax
 0046973B    push        ebp
 0046973C    push        46981E
 00469741    push        dword ptr fs:[eax]
 00469744    mov         dword ptr fs:[eax],esp
 00469747    mov         eax,dword ptr [ebp-0C]
 0046974A    mov         eax,dword ptr [eax]
 0046974C    mov         eax,dword ptr [eax]
 0046974E    call        GetTypeData
 00469753    mov         ebx,eax
 00469755    cmp         word ptr [ebx],0
>00469759    je          004697E3
 0046975F    mov         edi,esi
 00469761    test        edi,edi
>00469763    je          0046976A
 00469765    sub         edi,4
 00469768    mov         edi,dword ptr [edi]
 0046976A    push        edi
 0046976B    push        0
 0046976D    push        0
 0046976F    push        0
 00469771    push        0
 00469773    mov         eax,esi
 00469775    call        @UStrToPWChar
 0046977A    mov         ecx,eax
 0046977C    movzx       eax,word ptr [ebx]
 0046977F    xor         edx,edx
 00469781    call        LocaleCharsFromUnicode
 00469786    mov         dword ptr [ebp-10],eax
 00469789    lea         eax,[ebp-4]
 0046978C    xor         ecx,ecx
 0046978E    mov         edx,dword ptr [ebp-10]
 00469791    call        @LStrSetLength
 00469796    mov         edi,esi
 00469798    test        edi,edi
>0046979A    je          004697A1
 0046979C    sub         edi,4
 0046979F    mov         edi,dword ptr [edi]
 004697A1    push        edi
 004697A2    mov         eax,dword ptr [ebp-4]
 004697A5    call        @LStrToPChar
 004697AA    push        eax
 004697AB    mov         eax,dword ptr [ebp-10]
 004697AE    push        eax
 004697AF    push        0
 004697B1    push        0
 004697B3    mov         eax,esi
 004697B5    call        @UStrToPWChar
 004697BA    mov         ecx,eax
 004697BC    movzx       eax,word ptr [ebx]
 004697BF    xor         edx,edx
 004697C1    call        LocaleCharsFromUnicode
 004697C6    lea         eax,[ebp-4]
 004697C9    xor         ecx,ecx
 004697CB    movzx       edx,word ptr [ebx]
 004697CE    call        SetCodePage
 004697D3    mov         ecx,dword ptr [ebp-4]
 004697D6    mov         edx,dword ptr [ebp-0C]
 004697D9    mov         eax,dword ptr [ebp-8]
 004697DC    call        SetAnsiStrProp
>004697E1    jmp         00469800
 004697E3    lea         eax,[ebp-14]
 004697E6    mov         edx,esi
 004697E8    mov         ecx,0
 004697ED    call        @LStrFromUStr
 004697F2    mov         ecx,dword ptr [ebp-14]
 004697F5    mov         edx,dword ptr [ebp-0C]
 004697F8    mov         eax,dword ptr [ebp-8]
 004697FB    call        SetAnsiStrProp
 00469800    xor         eax,eax
 00469802    pop         edx
 00469803    pop         ecx
 00469804    pop         ecx
 00469805    mov         dword ptr fs:[eax],edx
 00469808    push        469825
 0046980D    lea         eax,[ebp-14]
 00469810    call        @LStrClr
 00469815    lea         eax,[ebp-4]
 00469818    call        @LStrClr
 0046981D    ret
>0046981E    jmp         @HandleFinally
>00469823    jmp         0046980D
 00469825    pop         edi
 00469826    pop         esi
 00469827    pop         ebx
 00469828    mov         esp,ebp
 0046982A    pop         ebp
 0046982B    ret
*}
end;

//0046982C
procedure SetStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:UnicodeString);
begin
{*
 0046982C    push        ebp
 0046982D    mov         ebp,esp
 0046982F    add         esp,0FFFFFEFC
 00469835    push        ebx
 00469836    push        esi
 00469837    push        edi
 00469838    xor         ebx,ebx
 0046983A    mov         dword ptr [ebp-104],ebx
 00469840    mov         edi,ecx
 00469842    mov         ebx,edx
 00469844    mov         esi,eax
 00469846    xor         eax,eax
 00469848    push        ebp
 00469849    push        4698E3
 0046984E    push        dword ptr fs:[eax]
 00469851    mov         dword ptr fs:[eax],esp
 00469854    mov         eax,dword ptr [ebx]
 00469856    mov         eax,dword ptr [eax]
 00469858    movzx       eax,byte ptr [eax]
 0046985B    sub         al,5
>0046985D    je          0046986D
 0046985F    sub         al,5
>00469861    je          00469890
 00469863    dec         al
>00469865    je          0046989D
 00469867    sub         al,7
>00469869    je          004698BB
>0046986B    jmp         004698CA
 0046986D    lea         eax,[ebp-100]
 00469873    mov         edx,edi
 00469875    mov         ecx,0FF
 0046987A    call        @UStrToString
 0046987F    lea         ecx,[ebp-100]
 00469885    mov         edx,ebx
 00469887    mov         eax,esi
 00469889    call        SetShortStrProp
>0046988E    jmp         004698CA
 00469890    mov         ecx,edi
 00469892    mov         edx,ebx
 00469894    mov         eax,esi
 00469896    call        SetRawByteStrProp
>0046989B    jmp         004698CA
 0046989D    lea         eax,[ebp-104]
 004698A3    mov         edx,edi
 004698A5    call        @WStrFromUStr
 004698AA    mov         ecx,dword ptr [ebp-104]
 004698B0    mov         edx,ebx
 004698B2    mov         eax,esi
 004698B4    call        SetWideStrProp
>004698B9    jmp         004698CA
 004698BB    push        edi
 004698BC    mov         ecx,ebx
 004698BE    mov         edx,esi
 004698C0    mov         eax,[00469CF8];TPropSet<System.string>
 004698C5    call        TPropSet<System.string>.SetProc
 004698CA    xor         eax,eax
 004698CC    pop         edx
 004698CD    pop         ecx
 004698CE    pop         ecx
 004698CF    mov         dword ptr fs:[eax],edx
 004698D2    push        4698EA
 004698D7    lea         eax,[ebp-104]
 004698DD    call        @WStrClr
 004698E2    ret
>004698E3    jmp         @HandleFinally
>004698E8    jmp         004698D7
 004698EA    pop         edi
 004698EB    pop         esi
 004698EC    pop         ebx
 004698ED    mov         esp,ebp
 004698EF    pop         ebp
 004698F0    ret
*}
end;

//004698F4
function GetAnsiStrProp(Instance:TObject; PropInfo:PPropInfo):AnsiString;
begin
{*
 004698F4    push        ebx
 004698F5    mov         ebx,ecx
 004698F7    mov         ecx,dword ptr [edx]
 004698F9    mov         ecx,dword ptr [ecx]
 004698FB    movzx       ecx,byte ptr [ecx]
 004698FE    sub         cl,5
>00469901    je          00469913
 00469903    sub         cl,5
>00469906    je          0046991C
 00469908    dec         cl
>0046990A    je          00469925
 0046990C    sub         cl,7
>0046990F    je          0046992E
>00469911    jmp         00469937
 00469913    mov         ecx,ebx
 00469915    call        GetShortStrPropAsLongStr
 0046991A    pop         ebx
 0046991B    ret
 0046991C    mov         ecx,ebx
 0046991E    call        GetLongStrProp
 00469923    pop         ebx
 00469924    ret
 00469925    mov         ecx,ebx
 00469927    call        GetWideStrPropAsLongStr
 0046992C    pop         ebx
 0046992D    ret
 0046992E    mov         ecx,ebx
 00469930    call        GetUnicodeStrPropAsLongStr
 00469935    pop         ebx
 00469936    ret
 00469937    mov         eax,ebx
 00469939    call        @LStrClr
 0046993E    pop         ebx
 0046993F    ret
*}
end;

//00469940
procedure SetAnsiStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 00469940    push        ebx
 00469941    mov         ebx,dword ptr [edx]
 00469943    mov         ebx,dword ptr [ebx]
 00469945    movzx       ebx,byte ptr [ebx]
 00469948    sub         bl,5
>0046994B    je          0046995D
 0046994D    sub         bl,5
>00469950    je          00469964
 00469952    dec         bl
>00469954    je          0046996B
 00469956    sub         bl,7
>00469959    je          00469972
>0046995B    jmp         00469977
 0046995D    call        SetShortStrPropAsLongStr
 00469962    pop         ebx
 00469963    ret
 00469964    call        SetLongStrProp
 00469969    pop         ebx
 0046996A    ret
 0046996B    call        SetWideStrPropAsLongStr
 00469970    pop         ebx
 00469971    ret
 00469972    call        SetUnicodeStrPropAsLongStr
 00469977    pop         ebx
 00469978    ret
*}
end;

//0046997C
function GetWideStrProp(Instance:TObject; PropInfo:PPropInfo):WideString;
begin
{*
 0046997C    push        ebp
 0046997D    mov         ebp,esp
 0046997F    push        0
 00469981    push        0
 00469983    push        ebx
 00469984    push        esi
 00469985    push        edi
 00469986    mov         esi,ecx
 00469988    mov         ebx,edx
 0046998A    mov         edi,eax
 0046998C    xor         eax,eax
 0046998E    push        ebp
 0046998F    push        469A16
 00469994    push        dword ptr fs:[eax]
 00469997    mov         dword ptr fs:[eax],esp
 0046999A    mov         eax,dword ptr [ebx]
 0046999C    mov         eax,dword ptr [eax]
 0046999E    movzx       eax,byte ptr [eax]
 004699A1    sub         al,5
>004699A3    je          004699B3
 004699A5    sub         al,5
>004699A7    je          004699B3
 004699A9    dec         al
>004699AB    je          004699E3
 004699AD    sub         al,7
>004699AF    je          004699CB
>004699B1    jmp         004699F4
 004699B3    lea         ecx,[ebp-4]
 004699B6    mov         edx,ebx
 004699B8    mov         eax,edi
 004699BA    call        GetStrProp
 004699BF    mov         edx,dword ptr [ebp-4]
 004699C2    mov         eax,esi
 004699C4    call        @WStrFromUStr
>004699C9    jmp         004699FB
 004699CB    lea         ecx,[ebp-8]
 004699CE    mov         edx,ebx
 004699D0    mov         eax,edi
 004699D2    call        GetStrProp
 004699D7    mov         edx,dword ptr [ebp-8]
 004699DA    mov         eax,esi
 004699DC    call        @WStrFromUStr
>004699E1    jmp         004699FB
 004699E3    push        esi
 004699E4    mov         ecx,ebx
 004699E6    mov         edx,edi
 004699E8    mov         eax,[00469E70];TPropSet<System.WideString>
 004699ED    call        TPropSet<System.WideString>.GetProc
>004699F2    jmp         004699FB
 004699F4    mov         eax,esi
 004699F6    call        @WStrClr
 004699FB    xor         eax,eax
 004699FD    pop         edx
 004699FE    pop         ecx
 004699FF    pop         ecx
 00469A00    mov         dword ptr fs:[eax],edx
 00469A03    push        469A1D
 00469A08    lea         eax,[ebp-8]
 00469A0B    mov         edx,2
 00469A10    call        @UStrArrayClr
 00469A15    ret
>00469A16    jmp         @HandleFinally
>00469A1B    jmp         00469A08
 00469A1D    pop         edi
 00469A1E    pop         esi
 00469A1F    pop         ebx
 00469A20    pop         ecx
 00469A21    pop         ecx
 00469A22    pop         ebp
 00469A23    ret
*}
end;

//00469A24
procedure SetWideStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:WideString);
begin
{*
 00469A24    push        ebp
 00469A25    mov         ebp,esp
 00469A27    push        0
 00469A29    push        0
 00469A2B    push        ebx
 00469A2C    push        esi
 00469A2D    push        edi
 00469A2E    mov         edi,ecx
 00469A30    mov         ebx,edx
 00469A32    mov         esi,eax
 00469A34    xor         eax,eax
 00469A36    push        ebp
 00469A37    push        469AB5
 00469A3C    push        dword ptr fs:[eax]
 00469A3F    mov         dword ptr fs:[eax],esp
 00469A42    mov         eax,dword ptr [ebx]
 00469A44    mov         eax,dword ptr [eax]
 00469A46    movzx       eax,byte ptr [eax]
 00469A49    sub         al,5
>00469A4B    je          00469A5B
 00469A4D    sub         al,5
>00469A4F    je          00469A5B
 00469A51    dec         al
>00469A53    je          00469A8B
 00469A55    sub         al,7
>00469A57    je          00469A73
>00469A59    jmp         00469A9A
 00469A5B    lea         eax,[ebp-4]
 00469A5E    mov         edx,edi
 00469A60    call        @UStrFromWStr
 00469A65    mov         ecx,dword ptr [ebp-4]
 00469A68    mov         edx,ebx
 00469A6A    mov         eax,esi
 00469A6C    call        SetStrProp
>00469A71    jmp         00469A9A
 00469A73    lea         eax,[ebp-8]
 00469A76    mov         edx,edi
 00469A78    call        @UStrFromWStr
 00469A7D    mov         ecx,dword ptr [ebp-8]
 00469A80    mov         edx,ebx
 00469A82    mov         eax,esi
 00469A84    call        SetUnicodeStrProp
>00469A89    jmp         00469A9A
 00469A8B    push        edi
 00469A8C    mov         ecx,ebx
 00469A8E    mov         edx,esi
 00469A90    mov         eax,[00469E70];TPropSet<System.WideString>
 00469A95    call        TPropSet<System.WideString>.SetProc
 00469A9A    xor         eax,eax
 00469A9C    pop         edx
 00469A9D    pop         ecx
 00469A9E    pop         ecx
 00469A9F    mov         dword ptr fs:[eax],edx
 00469AA2    push        469ABC
 00469AA7    lea         eax,[ebp-8]
 00469AAA    mov         edx,2
 00469AAF    call        @UStrArrayClr
 00469AB4    ret
>00469AB5    jmp         @HandleFinally
>00469ABA    jmp         00469AA7
 00469ABC    pop         edi
 00469ABD    pop         esi
 00469ABE    pop         ebx
 00469ABF    pop         ecx
 00469AC0    pop         ecx
 00469AC1    pop         ebp
 00469AC2    ret
*}
end;

//00469AC4
procedure SetUnicodeStrProp(Instance:TObject; const PropName:UnicodeString; const Value:UnicodeString);
begin
{*
 00469AC4    call        SetStrProp
 00469AC9    ret
*}
end;

//00469ACC
function GetFloatProp(Instance:TObject; PropInfo:PPropInfo):Extended;
begin
{*
 00469ACC    push        ebx
 00469ACD    push        esi
 00469ACE    add         esp,0FFFFFFF4
 00469AD1    mov         ebx,edx
 00469AD3    mov         esi,eax
 00469AD5    mov         eax,dword ptr [ebx]
 00469AD7    mov         eax,dword ptr [eax]
 00469AD9    call        GetTypeData
 00469ADE    movzx       eax,byte ptr [eax]
 00469AE1    cmp         eax,4
>00469AE4    ja          00469B6F
 00469AEA    jmp         dword ptr [eax*4+469AF1]
 00469AEA    dd          00469B05
 00469AEA    dd          00469B19
 00469AEA    dd          00469B2D
 00469AEA    dd          00469B41
 00469AEA    dd          00469B55
 00469B05    mov         ecx,ebx
 00469B07    mov         edx,esi
 00469B09    mov         eax,[00469FF0];TPropSet<System.Single>
 00469B0E    call        TPropSet<System.Single>.GetProc
 00469B13    fstp        tbyte ptr [esp]
 00469B16    wait
>00469B17    jmp         00469B7D
 00469B19    mov         ecx,ebx
 00469B1B    mov         edx,esi
 00469B1D    mov         eax,[0046A15C];TPropSet<System.Double>
 00469B22    call        TPropSet<System.Double>.GetProc
 00469B27    fstp        tbyte ptr [esp]
 00469B2A    wait
>00469B2B    jmp         00469B7D
 00469B2D    mov         ecx,ebx
 00469B2F    mov         edx,esi
 00469B31    mov         eax,[0046A2C8];TPropSet<System.Extended>
 00469B36    call        TPropSet<System.Extended>.GetProc
 00469B3B    fstp        tbyte ptr [esp]
 00469B3E    wait
>00469B3F    jmp         00469B7D
 00469B41    mov         ecx,ebx
 00469B43    mov         edx,esi
 00469B45    mov         eax,[0046A438];TPropSet<System.Comp>
 00469B4A    call        TPropSet<System.Comp>.GetProc
 00469B4F    fstp        tbyte ptr [esp]
 00469B52    wait
>00469B53    jmp         00469B7D
 00469B55    mov         ecx,ebx
 00469B57    mov         edx,esi
 00469B59    mov         eax,[0046A5A0];TPropSet<System.Currency>
 00469B5E    call        TPropSet<System.Currency>.GetProc
 00469B63    fdiv        dword ptr ds:[469B88]
 00469B69    fstp        tbyte ptr [esp]
 00469B6C    wait
>00469B6D    jmp         00469B7D
 00469B6F    xor         eax,eax
 00469B71    mov         dword ptr [esp],eax
 00469B74    mov         dword ptr [esp+4],eax
 00469B78    mov         word ptr [esp+8],ax
 00469B7D    fld         tbyte ptr [esp]
 00469B80    add         esp,0C
 00469B83    pop         esi
 00469B84    pop         ebx
 00469B85    ret
*}
end;

//00469B8C
{*procedure sub_00469B8C(?:?; ?:?; ?:Extended; ?:?; ?:?);
begin
 00469B8C    push        ebp
 00469B8D    mov         ebp,esp
 00469B8F    add         esp,0FFFFFFF4
 00469B92    push        ebx
 00469B93    push        esi
 00469B94    mov         ebx,edx
 00469B96    mov         esi,eax
 00469B98    mov         eax,dword ptr [ebx]
 00469B9A    mov         eax,dword ptr [eax]
 00469B9C    call        GetTypeData
 00469BA1    movzx       eax,byte ptr [eax]
 00469BA4    cmp         eax,4
>00469BA7    ja          00469C55
 00469BAD    jmp         dword ptr [eax*4+469BB4]
 00469BAD    dd          00469BC8
 00469BAD    dd          00469BE2
 00469BAD    dd          00469BFF
 00469BAD    dd          00469C1A
 00469BAD    dd          00469C37
 00469BC8    fld         tbyte ptr [ebp+8]
 00469BCB    fstp        dword ptr [ebp-4]
 00469BCE    wait
 00469BCF    push        dword ptr [ebp-4]
 00469BD2    mov         ecx,ebx
 00469BD4    mov         edx,esi
 00469BD6    mov         eax,[00469FF0];TPropSet<System.Single>
 00469BDB    call        TPropSet<System.Single>.SetProc
>00469BE0    jmp         00469C55
 00469BE2    fld         tbyte ptr [ebp+8]
 00469BE5    fstp        qword ptr [ebp-0C]
 00469BE8    wait
 00469BE9    push        dword ptr [ebp-8]
 00469BEC    push        dword ptr [ebp-0C]
 00469BEF    mov         ecx,ebx
 00469BF1    mov         edx,esi
 00469BF3    mov         eax,[0046A15C];TPropSet<System.Double>
 00469BF8    call        TPropSet<System.Double>.SetProc
>00469BFD    jmp         00469C55
 00469BFF    movzx       eax,word ptr [ebp+10]
 00469C03    push        eax
 00469C04    push        dword ptr [ebp+0C]
 00469C07    push        dword ptr [ebp+8]
 00469C0A    mov         ecx,ebx
 00469C0C    mov         edx,esi
 00469C0E    mov         eax,[0046A2C8];TPropSet<System.Extended>
 00469C13    call        TPropSet<System.Extended>.SetProc
>00469C18    jmp         00469C55
 00469C1A    fld         tbyte ptr [ebp+8]
 00469C1D    fistp       qword ptr [ebp-0C]
 00469C20    wait
 00469C21    push        dword ptr [ebp-8]
 00469C24    push        dword ptr [ebp-0C]
 00469C27    mov         ecx,ebx
 00469C29    mov         edx,esi
 00469C2B    mov         eax,[0046A438];TPropSet<System.Comp>
 00469C30    call        TPropSet<System.Comp>.SetProc
>00469C35    jmp         00469C55
 00469C37    fld         tbyte ptr [ebp+8]
 00469C3A    fmul        dword ptr ds:[469C60];10000:Single
 00469C40    add         esp,0FFFFFFF8
 00469C43    fistp       qword ptr [esp]
 00469C46    wait
 00469C47    mov         ecx,ebx
 00469C49    mov         edx,esi
 00469C4B    mov         eax,[0046A5A0];TPropSet<System.Currency>
 00469C50    call        TPropSet<System.Currency>.SetProc
 00469C55    pop         esi
 00469C56    pop         ebx
 00469C57    mov         esp,ebp
 00469C59    pop         ebp
 00469C5A    ret         0C
end;*}

//00469C64
procedure AssignVariant(var Dest:Variant; const Source:Variant);
begin
{*
 00469C64    push        ebx
 00469C65    push        esi
 00469C66    mov         esi,edx
 00469C68    mov         ebx,eax
 00469C6A    mov         eax,ebx
 00469C6C    mov         edx,esi
 00469C6E    call        @VarCopy
 00469C73    pop         esi
 00469C74    pop         ebx
 00469C75    ret
*}
end;

//00469C78
function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;
begin
{*
 00469C78    push        esi
 00469C79    push        edi
 00469C7A    mov         edi,edx
 00469C7C    mov         edx,dword ptr [edi+10]
 00469C7F    cmp         edx,80000000
>00469C85    jne         00469C89
 00469C87    mov         edx,ecx
 00469C89    mov         esi,dword ptr [edi+4]
 00469C8C    cmp         byte ptr [edi+7],0FE
>00469C90    ja          00469CA3
>00469C92    jb          00469C9E
 00469C94    movsx       esi,si
 00469C97    add         esi,dword ptr [eax]
 00469C99    call        dword ptr [esi]
 00469C9B    pop         edi
 00469C9C    pop         esi
 00469C9D    ret
 00469C9E    call        esi
 00469CA0    pop         edi
 00469CA1    pop         esi
 00469CA2    ret
 00469CA3    and         esi,0FFFFFF
 00469CA9    lea         edx,[esi+eax]
 00469CAC    mov         eax,ecx
 00469CAE    call        AssignVariant
 00469CB3    pop         edi
 00469CB4    pop         esi
 00469CB5    ret
*}
end;

//00469CB8
procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);
begin
{*
 00469CB8    push        esi
 00469CB9    push        edi
 00469CBA    mov         esi,edx
 00469CBC    mov         edx,dword ptr [esi+10]
 00469CBF    cmp         edx,80000000
>00469CC5    jne         00469CC9
 00469CC7    mov         edx,ecx
 00469CC9    mov         edi,dword ptr [esi+8]
 00469CCC    cmp         byte ptr [esi+0B],0FE
>00469CD0    ja          00469CE3
>00469CD2    jb          00469CDE
 00469CD4    movsx       edi,di
 00469CD7    add         edi,dword ptr [eax]
 00469CD9    call        dword ptr [edi]
 00469CDB    pop         edi
 00469CDC    pop         esi
 00469CDD    ret
 00469CDE    call        edi
 00469CE0    pop         edi
 00469CE1    pop         esi
 00469CE2    ret
 00469CE3    and         edi,0FFFFFF
 00469CE9    add         eax,edi
 00469CEB    mov         edx,ecx
 00469CED    call        AssignVariant
 00469CF2    pop         edi
 00469CF3    pop         esi
 00469CF4    ret
*}
end;

//0046A710
function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;
begin
{*
 0046A710    push        ebx
 0046A711    push        esi
 0046A712    mov         esi,edx
 0046A714    mov         edx,dword ptr [esi+10]
 0046A717    cmp         edx,80000000
>0046A71D    jne         0046A721
 0046A71F    mov         edx,ecx
 0046A721    mov         ebx,dword ptr [esi+4]
 0046A724    cmp         byte ptr [esi+7],0FE
>0046A728    ja          0046A73B
>0046A72A    jb          0046A736
 0046A72C    movsx       ebx,bx
 0046A72F    add         ebx,dword ptr [eax]
 0046A731    call        dword ptr [ebx]
 0046A733    pop         esi
 0046A734    pop         ebx
 0046A735    ret
 0046A736    call        ebx
 0046A738    pop         esi
 0046A739    pop         ebx
 0046A73A    ret
 0046A73B    and         ebx,0FFFFFF
 0046A741    add         eax,ebx
 0046A743    mov         edx,dword ptr [eax]
 0046A745    mov         ebx,dword ptr [eax+4]
 0046A748    mov         dword ptr [ecx],edx
 0046A74A    mov         dword ptr [ecx+4],ebx
 0046A74D    pop         esi
 0046A74E    pop         ebx
 0046A74F    ret
*}
end;

//0046A750
procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);
begin
{*
 0046A750    push        ebx
 0046A751    mov         ebx,dword ptr [edx+8]
 0046A754    cmp         byte ptr [edx+0B],0FE
>0046A758    ja          0046A771
 0046A75A    mov         edx,dword ptr [edx+10]
 0046A75D    push        dword ptr [ecx+4]
 0046A760    push        dword ptr [ecx]
>0046A762    jb          0046A76D
 0046A764    movsx       ebx,bx
 0046A767    add         ebx,dword ptr [eax]
 0046A769    call        dword ptr [ebx]
 0046A76B    pop         ebx
 0046A76C    ret
 0046A76D    call        ebx
 0046A76F    pop         ebx
 0046A770    ret
 0046A771    and         ebx,0FFFFFF
 0046A777    add         eax,ebx
 0046A779    mov         edx,dword ptr [ecx]
 0046A77B    mov         ebx,dword ptr [ecx+4]
 0046A77E    mov         dword ptr [eax],edx
 0046A780    mov         dword ptr [eax+4],ebx
 0046A783    pop         ebx
 0046A784    ret
*}
end;

//0046A788
function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;
begin
{*
 0046A788    cmp         byte ptr [edx+7],0FE
 0046A78C    mov         ecx,dword ptr [edx+4]
 0046A78F    mov         edx,dword ptr [edx+10]
>0046A792    ja          0046A7A1
>0046A794    jb          0046A79E
 0046A796    movsx       ecx,cx
 0046A799    add         ecx,dword ptr [eax]
 0046A79B    call        dword ptr [ecx]
 0046A79D    ret
 0046A79E    call        ecx
 0046A7A0    ret
 0046A7A1    and         ecx,0FFFFFF
 0046A7A7    add         eax,ecx
 0046A7A9    mov         edx,dword ptr [eax+4]
 0046A7AC    mov         eax,dword ptr [eax]
 0046A7AE    ret
*}
end;

//0046A7B0
procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);
begin
{*
 0046A7B0    push        ebp
 0046A7B1    mov         ebp,esp
 0046A7B3    cmp         byte ptr [edx+0B],0FE
 0046A7B7    mov         ecx,dword ptr [edx+8]
>0046A7BA    ja          0046A7D4
 0046A7BC    mov         edx,dword ptr [edx+10]
 0046A7BF    push        dword ptr [ebp+0C]
 0046A7C2    push        dword ptr [ebp+8]
>0046A7C5    jb          0046A7D0
 0046A7C7    movsx       ecx,cx
 0046A7CA    add         ecx,dword ptr [eax]
 0046A7CC    call        dword ptr [ecx]
>0046A7CE    jmp         0046A7E7
 0046A7D0    call        ecx
>0046A7D2    jmp         0046A7E7
 0046A7D4    and         ecx,0FFFFFF
 0046A7DA    add         eax,ecx
 0046A7DC    mov         edx,dword ptr [ebp+8]
 0046A7DF    mov         ecx,dword ptr [ebp+0C]
 0046A7E2    mov         dword ptr [eax],edx
 0046A7E4    mov         dword ptr [eax+4],ecx
 0046A7E7    pop         ebp
 0046A7E8    ret         8
*}
end;

//0046A7EC
function GetInterfaceProp(Instance:TObject; PropInfo:PPropInfo):IInterface;
begin
{*
 0046A7EC    push        ebx
 0046A7ED    push        esi
 0046A7EE    push        edi
 0046A7EF    mov         edi,ecx
 0046A7F1    mov         esi,edx
 0046A7F3    mov         ebx,eax
 0046A7F5    push        edi
 0046A7F6    mov         ecx,esi
 0046A7F8    mov         edx,ebx
 0046A7FA    mov         eax,[0046A87C];TPropSet<System.IInterface>
 0046A7FF    call        TPropSet<System.IInterface>.GetProc
 0046A804    pop         edi
 0046A805    pop         esi
 0046A806    pop         ebx
 0046A807    ret
*}
end;

//0046A808
procedure SetInterfaceProp(Instance:TObject; PropInfo:PPropInfo; const Value:IInterface);
begin
{*
 0046A808    push        ecx
 0046A809    mov         ecx,dword ptr ds:[46A87C];TPropSet<System.IInterface>
 0046A80F    xchg        eax,ecx
 0046A810    xchg        ecx,edx
 0046A812    call        TPropSet<System.IInterface>.SetProc
 0046A817    ret
*}
end;

Initialization
Finalization
//0046A818
{*
 0046A818    push        ebp
 0046A819    mov         ebp,esp
 0046A81B    xor         eax,eax
 0046A81D    push        ebp
 0046A81E    push        46A873
 0046A823    push        dword ptr fs:[eax]
 0046A826    mov         dword ptr fs:[eax],esp
 0046A829    inc         dword ptr ds:[7C9FA0]
>0046A82F    jne         0046A865
 0046A831    mov         eax,7A05C4;^'False'
 0046A836    mov         ecx,2
 0046A83B    mov         edx,dword ptr ds:[4012B8];string
 0046A841    call        @FinalizeArray
 0046A846    mov         eax,7A05CC;^'.'
 0046A84B    call        @UStrClr
 0046A850    mov         eax,7C9FA4;gvar_007C9FA4:array[256] of ?
 0046A855    mov         ecx,100
 0046A85A    mov         edx,dword ptr ds:[468560];TArray<System.TypInfo.TEnumAliasEntry>
 0046A860    call        @FinalizeArray
 0046A865    xor         eax,eax
 0046A867    pop         edx
 0046A868    pop         ecx
 0046A869    pop         ecx
 0046A86A    mov         dword ptr fs:[eax],edx
 0046A86D    push        46A87A
 0046A872    ret
>0046A873    jmp         @HandleFinally
>0046A878    jmp         0046A872
 0046A87A    pop         ebp
 0046A87B    ret
*}
end.