//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.Rtti;

interface

uses
  SysUtils, Classes, System.Rtti, System.Generics.Collections, System.Rtti, System.Generics.Defaults, System;

type
  TCollectionNotification = (cnAdded, cnRemoved, cnExtracted);
  TListHelper.TInternalNotifyEvent = procedure(const Item:?; Action:TCollectionNotification) of object;;
  TListHelper.TInternalCompareEvent = function(const Left:?; const Right:?):Integer of object;;
  TListHelper = TListHelper = record//size=18
FCount:Integer;//f0
FTypeInfo:Pointer;//f4
FNotify:TListHelper.TInternalNotifyEvent;//f8
FCompare:TListHelper.TInternalCompareEvent;//f10
end;;
  :02 = (doOwnsKeys, doOwnsValues);
  TDictionaryOwnerships = set of :02;
  :TListHelper.:3 = array of Cardinal;
//elSize = 4
//varType equivalent: varInteger;
  :TListHelper.:4 = array of UInt64;
//elSize = 8
//varType equivalent: varInt64;
  EInsufficientRtti = class(Exception)
  end;
  EInvocationError = class(Exception)
  end;
  ENonPublicType = class(Exception)
  end;
  TValueData = TValueData = record//size=18
f4:IValueData;//f4
end;
FTypeInfo:PTypeInfo;//f0
FValueData:IValueData;//f4
FAsUByte:Byte;//f8
FAsUWord:Word;//f8
FAsULong:Cardinal;//f8
FAsObject:Pointer;//f8
FAsClass:TClass;//f8
FAsSByte:ShortInt;//f8
FAsSWord:SmallInt;//f8
FAsSLong:Integer;//f8
FAsSingle:Single;//f8
FAsDouble:Double;//f8
FAsExtended:Extended;//f8
FAsComp:Comp;//f8
FAsCurr:Currency;//f8
FAsUInt64:UInt64;//f8
FAsSInt64:Int64;//f8
FAsMethod:TMethod;//f8
FAsPointer:Pointer;//f8
end;;
  TValue = TValue = record//size=18
f0:TValueData;//f0
end;
FData:TValueData;//f0
end;
//Methods:
&op_Implicit(Value:string):TValue;//0043F864
&op_Implicit(Value:Integer):TValue;//0043F8A4
&op_Implicit(Value:Single):TValue;//0043F8C0
&op_Implicit(Value:Double):TValue;//0043F8E0
&op_Implicit(Value:Extended):TValue;//0079EC18
&op_Implicit(Value:Currency):TValue;//0043F904
&op_Implicit(Value:Int64):TValue;//0043F928
&op_Implicit(Value:UInt64):TValue;//0043F94C
&op_Implicit(Value:TObject):TValue;//0043F970
&op_Implicit(Value:TClass):TValue;//0043F9C0
&op_Implicit(Value:Boolean):TValue;//0043F9E8
&op_Implicit(VarRec:TVarRec):TValue;//0079EC18
FromVariant(Value:Variant):TValue;//0079EC18
FromOrdinal(ATypeInfo:PTypeInfo;AValue:Int64):TValue;//0079EC18
FromArray(ArrayTypeInfo:PTypeInfo;Values:TValue):TValue;//0079EC18
FromVarRec(VarRec:TVarRec):TValue;//0079EC18
IsObject:Boolean;//0043FA04
AsObject:TObject;//0043FA24
IsInstanceOf(AClass:TClass):Boolean;//0079EC18
IsClass:Boolean;//0079EC18
AsClass:TClass;//0043FA7C
IsOrdinal:Boolean;//0043FA84
AsOrdinal:Int64;//0043FABC
TryAsOrdinal(AResult:Int64):Boolean;//0043FAF4
IsType(ATypeInfo:PTypeInfo):Boolean;//0079EC18
Cast(ATypeInfo:PTypeInfo):TValue;//0043FBDC
TryCast(ATypeInfo:PTypeInfo;AResult:TValue):Boolean;//00442230
AsInteger:Integer;//0043FC1C
AsBoolean:Boolean;//0043FC7C
AsExtended:Extended;//0043FCA8
AsInt64:Int64;//0043FD38
AsUInt64:UInt64;//0079EC18
AsInterface:IInterface;//0043FDA8
AsString:string;//0043FDDC
AsVariant:Variant;//0043FE5C
AsCurrency:Currency;//0079EC18
IsArray:Boolean;//0079EC18
AsVarRec:TVarRec;//0079EC18
GetArrayLength:Integer;//0079EC18
GetArrayElement(Index:Integer):TValue;//0079EC18
SetArrayElement(Index:Integer;AValue:TValue);//0079EC18
Make(ABuffer:Pointer;ATypeInfo:PTypeInfo;Result:TValue);//0043FE88
Make(AValue:NativeInt;ATypeInfo:PTypeInfo;Result:TValue);//0043FF3C
MakeWithoutCopy(ABuffer:Pointer;ATypeInfo:PTypeInfo;Result:TValue);//0043FFA4
ExtractRawData(ABuffer:Pointer);//00440024
ExtractRawDataNoCopy(ABuffer:Pointer);//0044006C
GetReferenceToRawData:Pointer;//004400B4
GetReferenceToRawArrayElement(Index:Integer):Pointer;//0079EC18
ToString:string;//0079EC18;
  TRttiObject = class(TObject)
  published
    function GetAttributes:TArray<System.TCustomAttribute>;//00448B60
    destructor Destroy();//00448AB8
  public
    FHandle:Pointer;//f4
    FRttiDataSize:Integer;//f8
    FPackage:TRttiPackage;//fC
    FParent:TRttiObject;//f10
    FAttributeGetter:TFunc<System.TArray<System.TCustomAttribute>>;//f14
    destructor Destroy(); virtual;//00448AB8
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00448A60
    function GetAttributes:TArray<System.TCustomAttribute>; virtual;//v4//00448B60
  end;
  TRttiNamedObject = class(TRttiObject)
  public
    procedure GetName; virtual; abstract;//v8//00405554
  end;
  TRttiType = class(TRttiNamedObject)
  published
    function GetIndexedProperty(AName:string):TRttiIndexedProperty;//00448F04
    function GetProperty(AName:string):TRttiProperty;//004494AC
    function GetField(AName:string):TRttiField;//00448C80
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;//00449584
    function GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>;//004495C0
    function GetDeclaredFields:TArray<System.Rtti.TRttiField>;//004495AC
    function GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>;//00449598
    //procedure GetFields(?:?);//00448D58
    //procedure GetMethods(?:?);//004492E0
    function ToString:string;//00449600
    //procedure GetProperties(?:?);//004493D8
    //procedure GetMethods(AName:string; ?:?);//00449124
    function GetMethod(AName:string):TRttiMethod;//0044904C
    //procedure GetIndexedProperties(?:?);//00448E30
  public
    function ToString:string; virtual;//00449600
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00448B8C
    function GetName:UnicodeString; virtual;//v8//004493B4
    //function vC:?; virtual;//vC//00449040
    //function v10:?; virtual;//v10//00449044
    //function v14:?; virtual;//v14//00449048
    //function v18:?; virtual;//v18//004495F8
    //function v1C:?; virtual;//v1C//0044969C
    //procedure GetMethods(?:?); virtual;//v20//004492E0
    //procedure GetFields(?:?); virtual;//v24//00448D58
    //procedure GetProperties(?:?); virtual;//v28//004493D8
    //procedure GetIndexedProperties(?:?); virtual;//v2C//00448E30
    function GetMethod(AName:string):TRttiMethod; virtual;//v30//0044904C
    //procedure GetMethods(AName:string; ?:?); virtual;//v34//00449124
    function GetField(AName:string):TRttiField; virtual;//v38//00448C80
    function GetProperty(AName:string):TRttiProperty; virtual;//v3C//004494AC
    function GetIndexedProperty(AName:string):TRttiIndexedProperty; virtual;//v40//00448F04
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>; virtual;//v44//00449584
    function GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>; virtual;//v48//00449598
    function GetDeclaredFields:TArray<System.Rtti.TRttiField>; virtual;//v4C//004495AC
    function GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>; virtual;//v50//004495C0
  end;
  TRttiMember = class(TRttiNamedObject)
  public
    //function vC:?; virtual;//vC//00454300
  end;
  TRttiStructuredType = class(TRttiType)
  end;
  TRttiField = class(TRttiMember)
  published
    function ToString:string;//004543F8
    procedure SetValue(Instance:Pointer; AValue:TValue);//00454360
    //procedure GetValue(Instance:Pointer; ?:?);//00454310
  public
    function ToString:string; virtual;//004543F8
    //function v10:?; virtual;//v10//00454304
    //function v14:?; virtual;//v14//00454308
    //procedure GetValue(Instance:Pointer; ?:?); virtual;//v18//00454310
    procedure SetValue(Instance:Pointer; AValue:TValue); virtual;//v1C//00454360
  end;
  TRttiManagedField = class(TRttiObject)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//004509C8
  end;
  TRttiRecordType = class(TRttiStructuredType)
  published
    //procedure GetAttributes(?:?);//00451488
    //procedure GetDeclaredMethods(?:?);//004513CC
    //procedure GetDeclaredFields(?:?);//00451278
  public
    ...FMethOfs:PByte;//f18
    //procedure GetAttributes(?:?); virtual;//v4//00451488
    //procedure GetDeclaredMethods(?:?); virtual;//v44//004513CC
    //procedure GetDeclaredFields(?:?); virtual;//v4C//00451278
  end;
  TRttiProperty = class(TRttiMember)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  end;
  TRttiInstanceProperty = class(TRttiProperty)
  published
    function ToString:string;//0044C338
  public
    function ToString:string; virtual;//0044C338
    function GetName:UnicodeString; virtual;//v8//0044BF00
    function GetPropertyType:TRttiType; virtual;//v10//0044BF34
    function GetIsReadable:Boolean; virtual;//v14//0044BF4C
    function GetIsWritable:Boolean; virtual;//v18//0044BF60
    function DoGetValue(Instance:Pointer):TValue; virtual;//v1C//0044BF74
    //procedure v20(?:?; ?:?); virtual;//v20//0044C118
    function GetDefault:Integer; virtual;//v24//0044BEE0
    function GetIndex:Integer; virtual;//v28//0044BEF0
    function GetNameIndex:SmallInt; virtual;//v2C//0044BF24
  end;
  TRttiParameter = class(TRttiNamedObject)
  published
    function ToString:string;//004540C4
  public
    function ToString:string; virtual;//004540C4
  end;
  TDispatchKind = (dkStatic, dkVtable, dkDynamic, dkMessage, dkInterface);
  TMethodImplementation.TFloatReg = TMethodImplementation.TFloatReg = record//size=10
RegSingle:Single;//f0
RegDouble:Double;//f0
RegExtended:Extended;//f0
RegComp:Comp;//f0
RegCurr:Currency;//f0
Unused1:Pointer;//f0
Unused2:Pointer;//f4
Unused3:Word;//f8
Kind:TFloatType;//fA
end;;
  :TMethodImplementation.TInterceptFrame.:1 = :TMethodImplementation.TInterceptFrame.:1 = record//size=0;
  TMethodImplementation.TInterceptFrame = TMethodImplementation.TInterceptFrame = record//size=28
FP:TMethodImplementation.TFloatReg;//f0
RegEAX:Pointer;//f10
RegEDX:Pointer;//f14
RegECX:Pointer;//f18
Impl:TMethodImplementation;//f1C
PreviousFrame:Pointer;//f20
RetAddr:Pointer;//f24
Args::TMethodImplementation.TInterceptFrame.:1;//f28
end;;
  TMethodImplementation.TFirstStageIntercept = TMethodImplementation.TFirstStageIntercept = record//size=D
PushEBP_55:Byte;//f0
MovEBP_ESP_1_89:Byte;//f1
MovEBP_ESP_2_E5:Byte;//f2
Push_68:Byte;//f3
PushVal:Pointer;//f4
JmpRel_E9:Byte;//f8
RelTarget:Integer;//f9
end;;
  TMethodImplementation.TParamLoc = TMethodImplementation.TParamLoc = record//size=C
FTypeInfo:PTypeInfo;//f0
FByRefParam:Boolean;//f4
FOffset:Integer;//f8
end;
//Methods:
Create(AType:PTypeInfo;AByRef:Boolean);//0079EC18
GetArgLoc(AFrame:TMethodImplementation.PInterceptFrame):Pointer;//00455A70
GetArg(AFrame:TMethodImplementation.PInterceptFrame;Value:TValue);//00455A04
SetArg(AFrame:TMethodImplementation.PInterceptFrame;Value:TValue);//00455AA4;
  TMethodImplementation.TInvokeInfo = class(TObject)
  published
    function TInvokeInfo.GetParamLocs:TArray<System.Rtti.TMethodImplementation.TParamLoc>;//004559D4
    destructor TInvokeInfo.Destroy();//00455804
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FCallerPopsStack:Boolean;//f4
    FResultFP:TFloatType;//f5
    FHasSelf:Boolean;//f6
    FStackSize:Integer;//f8
    FParams:TArray<System.Rtti.TMethodImplementation.TParamLoc>;//fC
    FResultLoc:TParamLoc;//f10
    FParamList:TList<System.Rtti.TMethodImplementation.TParamLoc>;//f1C
    FReturnType:PTypeInfo;//f20
    FCallConv:TCallConv;//f24
  end;
  TMethodImplementation = class(TObject)
  published
    destructor Destroy();//00455D94
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FStub:PFirstStageIntercept;//f4
    FUserData:Pointer;//f8
    FCallback:TMethodImplementationCallback;//fC
    FInvokeInfo:TInvokeInfo;//f10
  end;
  TRttiMethod = class(TRttiMember)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function ToString:string;//00453D9C
    function Invoke(Instance:TClass; Args:TValue):TValue;//00453CE4
    destructor Destroy();//00453BC0
    function Invoke(Instance:TObject; Args:TValue):TValue;//00453C70
  public
    FInvokeInfo:TInvokeInfo;//f18
    function ToString:string; virtual;//00453D9C
    destructor Destroy(); virtual;//00453BC0
    //function v1C:?; virtual;//v1C//00453BF4
    //function v20:?; virtual;//v20//00453BF8
    //function v24:?; virtual;//v24//00453C6C
    //function v28:?; virtual;//v28//00453BF0
    function GetIsClassMethod:Boolean; virtual;//v2C//00453BFC
    //function v30:?; virtual;//v30//00453C68
  end;
  TRttiIndexedProperty = class(TRttiMember)
  published
    function ToString:string;//004561AC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FReadMethod:TRttiMethod;//f18
    FWriteMethod:TRttiMethod;//f1C
    function ToString:string; virtual;//004561AC
    procedure vC; virtual;//vC//0045618C
  end;
  TRttiInstanceType = class(TRttiStructuredType)
  published
    function GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>;//0044BE74
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetAttributes:TArray<System.TCustomAttribute>;//0044B2F0
    function GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>;//0044B788
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;//0044B7B0
    function GetDeclaredFields:TArray<System.Rtti.TRttiField>;//0044BDAC
  public
    FProps:TArray<System.Rtti.TRttiProperty>;//f18
    FMeths:TArray<System.Rtti.TRttiMethod>;//f1C
    FVirtCount:Word;//f20
    FIndexedProps:TArray<System.Rtti.TRttiIndexedProperty>;//f24
    FClassTab:PVmtFieldClassTab;//f28
    FReadPropData:Boolean;//f2C
    FReadMethData:Boolean;//f2D
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//0044B294
    function GetAttributes:TArray<System.TCustomAttribute>; virtual;//v4//0044B2F0
    procedure v1C; virtual;//v1C//0044B310
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>; virtual;//v44//0044B7B0
    function GetDeclaredProperties:TArray<System.Rtti.TRttiProperty>; virtual;//v48//0044B788
    function GetDeclaredFields:TArray<System.Rtti.TRttiField>; virtual;//v4C//0044BDAC
    function GetDeclaredIndexedProperties:TArray<System.Rtti.TRttiIndexedProperty>; virtual;//v50//0044BE74
  end;
  TRttiInterfaceType = class(TRttiStructuredType)
  published
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>;//00454CA4
  public
    FMethods:TArray<System.Rtti.TRttiMethod>;//f18
    FTotalMethodCount:Integer;//f1C
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00454B68
    procedure v1C; virtual;//v1C//00454C5C
    function GetDeclaredMethods:TArray<System.Rtti.TRttiMethod>; virtual;//v44//00454CA4
  end;
  TRttiOrdinalType = class(TRttiType)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//0044C514
    function GetMaxValue:LongInt; virtual;//v54//0044C5B4
    function GetMinValue:LongInt; virtual;//v58//0044C5C4
  end;
  TRttiInt64Type = class(TRttiType)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//0044C5FC
    //function v18:?; virtual;//v18//0044C698
  end;
  TRttiInvokableType = class(TRttiType)
  published
    function ToString:string;//00451840
    function GetParameters:TArray<System.Rtti.TRttiParameter>;//00451814
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    .FProcSig:Pointer;//f18
    function ToString:string; virtual;//00451840
    procedure Invoke; virtual; abstract;//v54//00405554
  end;
  TRttiMethodType = class(TRttiInvokableType)
  published
    function ToString:string;//00451CD0
    //procedure Invoke(Callable:TValue; Args:TValue; ?:?; ?:?);//00451A50
  public
    function ToString:string; virtual;//00451CD0
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//0045193C
    //procedure Invoke(Callable:TValue; Args:TValue; ?:?; ?:?); virtual;//v54//00451A50
  end;
  TRttiProcedureType = class(TRttiInvokableType)
  published
    //procedure GetAttributes(?:?);//00452028
    //procedure Invoke(Callable:TValue; Args:TValue; ?:?; ?:?);//00451DC4
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00451D58
    //procedure GetAttributes(?:?); virtual;//v4//00452028
    //procedure Invoke(Callable:TValue; Args:TValue; ?:?; ?:?); virtual;//v54//00451DC4
  end;
  TRttiClassRefType = class(TRttiType)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//0044C6EC
  end;
  TRttiEnumerationType = class(TRttiOrdinalType)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//0044C7F0
    function GetMaxValue:LongInt; virtual;//v54//0044C8E8
    function GetMinValue:LongInt; virtual;//v58//0044C910
  end;
  TRttiSetType = class(TRttiType)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//004546CC
    function GetTypeSize:Integer; virtual;//v18//00454788
  end;
  TRttiStringKind = (skShortString, skAnsiString, skWideString, skUnicodeString);
  TRttiStringType = class(TRttiType)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//00452114
    function GetTypeSize:Integer; virtual;//v18//00452208
  end;
  TRttiAnsiStringType = class(TRttiStringType)
  end;
  TRttiFloatType = class(TRttiType)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//0045222C
  end;
  TRttiArrayType = class(TRttiType)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//004514F4
  end;
  TRttiDynamicArrayType = class(TRttiType)
  public
    constructor Create(APackage:TRttiPackage; AParent:TRttiObject; var P:PByte); virtual;//v0//004515EC
  end;
  TRttiPointerType = class(TRttiType)
  published
    //procedure GetAttributes(?:?);//00451708
  public
    //procedure GetAttributes(?:?); virtual;//v4//00451708
  end;
  TRttiPackage = class(TRttiNamedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    destructor Destroy();//0044892C
  public
    FLock:TObject;//f18
    FHandleToObject:TDictionary<System.Pointer,System.Rtti.TRttiObject>;//f1C
    FBaseAddress:Pointer;//f20
    destructor Destroy(); virtual;//0044892C
    function GetNameFromType(AType:TRttiType):UnicodeString; virtual;//vC//00448978
  end;
    function Compare(Left:string; Right:string):Integer;//00434114
    function Equals(Left:string; Right:string):Boolean;//004341CC
    function GetHashCode(Value:string):Integer;//00434268
    //function sub_00434530(?:?):?;//00434530
    procedure sub_00434534(?:Integer; ?:Integer);//00434534
    //procedure sub_0043455C(?:Integer; ?:?; ?:?);//0043455C
    //function sub_004345C8(?:?; ?:?):?;//004345C8
    //function sub_00434614(?:?; ?:?):?;//00434614
    procedure sub_00434660(?:Integer; ?:Integer; ?:Integer);//00434660
    //function sub_00434714(?:?; ?:TObject):?;//00434714
    //procedure sub_00434758(?:?; ?:?);//00434758
    //function sub_0043479C(?:?; ?:?):?;//0043479C
    //procedure sub_004347DC(?:?; ?:Integer; ?:?);//004347DC
    //function sub_00434878(?:?):?;//00434878
    //function sub_0043489C(?:Integer; ?:TPersistentClass):?;//0043489C
    //function sub_004348E0(?:?; ?:?):?;//004348E0
    //function sub_0043492C(?:?; ?:?):?;//0043492C
    procedure sub_00434988(?:Integer);//00434988
    //procedure sub_004349A0(?:?);//004349A0
    //procedure sub_004349B8(?:?);//004349B8
    //function sub_004349D0(?:?; ?:?):?;//004349D0
    //procedure sub_00434A74(?:?; ?:?; ?:?);//00434A74
    //procedure sub_00434C00(?:?; ?:?; ?:?);//00434C00
    //procedure sub_00434D48(?:?; ?:?; ?:?);//00434D48
    //procedure sub_00434F14(?:?; ?:?; ?:?);//00434F14
    //procedure sub_004350A0(?:?; ?:?; ?:?);//004350A0
    //procedure sub_00435200(?:Integer; ?:?; ?:?);//00435200
    //procedure sub_00435294(?:?; ?:Integer; ?:?);//00435294
    //procedure sub_00435370(?:?; ?:?);//00435370
    //procedure sub_004353B0(?:?; ?:?);//004353B0
    //procedure sub_004353E0(?:?; ?:?; ?:?);//004353E0
    //procedure sub_0043546C(?:?; ?:Integer; ?:TRttiMember; ?:?);//0043546C
    //procedure sub_00435528(?:?; ?:Integer; ?:TPoint; ?:?);//00435528
    //procedure sub_004355E8(?:Integer; ?:Integer; ?:?);//004355E8
    //procedure sub_00435688(?:?; ?:?);//00435688
    procedure sub_0043576C;//0043576C
    //procedure sub_00435774(?:?; ?:?);//00435774
    //procedure sub_004357A0(?:?; ?:?);//004357A0
    //procedure sub_00435800(?:?; ?:?);//00435800
    //procedure sub_00435860(?:?; ?:?);//00435860
    //procedure sub_004358C0(?:Integer; ?:?);//004358C0
    //procedure sub_00435920(?:?; ?:?);//00435920
    //procedure sub_00435980(?:?; ?:?);//00435980
    //procedure sub_004359D4(?:?; ?:?);//004359D4

implementation

//00434114
function TOrdinalIStringComparer.Compare(Left:string; Right:string):Integer;
begin
{*
 00434114    push        ebp
 00434115    mov         ebp,esp
 00434117    push        0
 00434119    push        0
 0043411B    push        ebx
 0043411C    push        esi
 0043411D    mov         esi,ecx
 0043411F    mov         ebx,edx
 00434121    xor         eax,eax
 00434123    push        ebp
 00434124    push        4341BD
 00434129    push        dword ptr fs:[eax]
 0043412C    mov         dword ptr fs:[eax],esp
 0043412F    lea         edx,[ebp-4]
 00434132    mov         eax,ebx
 00434134    call        AnsiLowerCase
 00434139    lea         edx,[ebp-8]
 0043413C    mov         eax,esi
 0043413E    call        AnsiLowerCase
 00434143    mov         eax,dword ptr [ebp-4]
 00434146    test        eax,eax
>00434148    je          0043414F
 0043414A    sub         eax,4
 0043414D    mov         eax,dword ptr [eax]
 0043414F    mov         ebx,eax
 00434151    mov         edx,dword ptr [ebp-8]
 00434154    mov         eax,edx
 00434156    test        eax,eax
>00434158    je          0043415F
 0043415A    sub         eax,4
 0043415D    mov         eax,dword ptr [eax]
 0043415F    mov         esi,ebx
 00434161    sub         esi,eax
 00434163    mov         eax,edx
 00434165    test        eax,eax
>00434167    je          0043416E
 00434169    sub         eax,4
 0043416C    mov         eax,dword ptr [eax]
 0043416E    cmp         ebx,eax
>00434170    jle         0043417F
 00434172    mov         eax,edx
 00434174    test        eax,eax
>00434176    je          0043417D
 00434178    sub         eax,4
 0043417B    mov         eax,dword ptr [eax]
 0043417D    mov         ebx,eax
 0043417F    mov         eax,dword ptr [ebp-8]
 00434182    call        @UStrToPWChar
 00434187    push        eax
 00434188    mov         eax,dword ptr [ebp-4]
 0043418B    call        @UStrToPWChar
 00434190    mov         ecx,ebx
 00434192    add         ecx,ecx
 00434194    pop         edx
 00434195    call        BinaryCompare
 0043419A    mov         ebx,eax
 0043419C    test        ebx,ebx
>0043419E    jne         004341A2
 004341A0    mov         ebx,esi
 004341A2    xor         eax,eax
 004341A4    pop         edx
 004341A5    pop         ecx
 004341A6    pop         ecx
 004341A7    mov         dword ptr fs:[eax],edx
 004341AA    push        4341C4
 004341AF    lea         eax,[ebp-8]
 004341B2    mov         edx,2
 004341B7    call        @UStrArrayClr
 004341BC    ret
>004341BD    jmp         @HandleFinally
>004341C2    jmp         004341AF
 004341C4    mov         eax,ebx
 004341C6    pop         esi
 004341C7    pop         ebx
 004341C8    pop         ecx
 004341C9    pop         ecx
 004341CA    pop         ebp
 004341CB    ret
*}
end;

//004341CC
function TOrdinalIStringComparer.Equals(Left:string; Right:string):Boolean;
begin
{*
 004341CC    push        ebp
 004341CD    mov         ebp,esp
 004341CF    push        0
 004341D1    push        0
 004341D3    push        ebx
 004341D4    push        esi
 004341D5    mov         esi,ecx
 004341D7    mov         ebx,edx
 004341D9    xor         eax,eax
 004341DB    push        ebp
 004341DC    push        434257
 004341E1    push        dword ptr fs:[eax]
 004341E4    mov         dword ptr fs:[eax],esp
 004341E7    lea         edx,[ebp-4]
 004341EA    mov         eax,ebx
 004341EC    call        AnsiLowerCase
 004341F1    lea         edx,[ebp-8]
 004341F4    mov         eax,esi
 004341F6    call        AnsiLowerCase
 004341FB    mov         eax,dword ptr [ebp-4]
 004341FE    test        eax,eax
>00434200    je          00434207
 00434202    sub         eax,4
 00434205    mov         eax,dword ptr [eax]
 00434207    mov         ebx,eax
 00434209    mov         eax,dword ptr [ebp-8]
 0043420C    test        eax,eax
>0043420E    je          00434215
 00434210    sub         eax,4
 00434213    mov         eax,dword ptr [eax]
 00434215    mov         edx,ebx
 00434217    sub         edx,eax
>00434219    jne         00434238
 0043421B    mov         eax,dword ptr [ebp-8]
 0043421E    call        @UStrToPWChar
 00434223    push        eax
 00434224    mov         eax,dword ptr [ebp-4]
 00434227    call        @UStrToPWChar
 0043422C    mov         ecx,ebx
 0043422E    add         ecx,ecx
 00434230    pop         edx
 00434231    call        CompareMem
>00434236    jmp         0043423A
 00434238    xor         eax,eax
 0043423A    mov         ebx,eax
 0043423C    xor         eax,eax
 0043423E    pop         edx
 0043423F    pop         ecx
 00434240    pop         ecx
 00434241    mov         dword ptr fs:[eax],edx
 00434244    push        43425E
 00434249    lea         eax,[ebp-8]
 0043424C    mov         edx,2
 00434251    call        @UStrArrayClr
 00434256    ret
>00434257    jmp         @HandleFinally
>0043425C    jmp         00434249
 0043425E    mov         eax,ebx
 00434260    pop         esi
 00434261    pop         ebx
 00434262    pop         ecx
 00434263    pop         ecx
 00434264    pop         ebp
 00434265    ret
*}
end;

//00434268
function TOrdinalIStringComparer.GetHashCode(Value:string):Integer;
begin
{*
 00434268    push        ebp
 00434269    mov         ebp,esp
 0043426B    push        0
 0043426D    push        ebx
 0043426E    mov         ebx,edx
 00434270    xor         eax,eax
 00434272    push        ebp
 00434273    push        4342BF
 00434278    push        dword ptr fs:[eax]
 0043427B    mov         dword ptr fs:[eax],esp
 0043427E    lea         edx,[ebp-4]
 00434281    mov         eax,ebx
 00434283    call        AnsiLowerCase
 00434288    mov         ebx,dword ptr [ebp-4]
 0043428B    test        ebx,ebx
>0043428D    je          00434294
 0043428F    sub         ebx,4
 00434292    mov         ebx,dword ptr [ebx]
 00434294    mov         eax,dword ptr [ebp-4]
 00434297    call        @UStrToPWChar
 0043429C    mov         edx,ebx
 0043429E    add         edx,edx
 004342A0    xor         ecx,ecx
 004342A2    call        BobJenkinsHash
 004342A7    mov         ebx,eax
 004342A9    xor         eax,eax
 004342AB    pop         edx
 004342AC    pop         ecx
 004342AD    pop         ecx
 004342AE    mov         dword ptr fs:[eax],edx
 004342B1    push        4342C6
 004342B6    lea         eax,[ebp-4]
 004342B9    call        @UStrClr
 004342BE    ret
>004342BF    jmp         @HandleFinally
>004342C4    jmp         004342B6
 004342C6    mov         eax,ebx
 004342C8    pop         ebx
 004342C9    pop         ecx
 004342CA    pop         ebp
 004342CB    ret
*}
end;

//00434530
{*function sub_00434530(?:?):?;
begin
 00434530    add         eax,18
 00434533    ret
end;*}

//00434534
procedure sub_00434534(?:Integer; ?:Integer);
begin
{*
 00434534    push        ecx
 00434535    mov         dword ptr [esp],eax
 00434538    test        edx,edx
>0043453A    jl          00434543
 0043453C    mov         eax,dword ptr [esp]
 0043453F    cmp         edx,dword ptr [eax]
>00434541    jl          0043455A
 00434543    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00434549    mov         dl,1
 0043454B    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00434550    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00434555    call        @RaiseExcept
 0043455A    pop         edx
 0043455B    ret
*}
end;

//0043455C
{*procedure sub_0043455C(?:Integer; ?:?; ?:?);
begin
 0043455C    push        ebx
 0043455D    push        esi
 0043455E    add         esp,0FFFFFFF8
 00434561    mov         ebx,edx
 00434563    mov         dword ptr [esp],eax
 00434566    test        ecx,ecx
>00434568    jl          00434571
 0043456A    mov         eax,dword ptr [esp]
 0043456D    cmp         ecx,dword ptr [eax]
>0043456F    jl          00434588
 00434571    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00434577    mov         dl,1
 00434579    mov         eax,[00417CF0];EArgumentOutOfRangeException
 0043457E    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00434583    call        @RaiseExcept
 00434588    mov         eax,dword ptr [esp]
 0043458B    add         eax,18
 0043458E    mov         eax,dword ptr [eax]
 00434590    mov         eax,dword ptr [eax+ecx*4]
 00434593    mov         dword ptr [esp+4],eax
 00434597    mov         eax,dword ptr [ebx]
 00434599    mov         edx,dword ptr [esp]
 0043459C    add         edx,18
 0043459F    mov         edx,dword ptr [edx]
 004345A1    mov         dword ptr [edx+ecx*4],eax
 004345A4    mov         esi,dword ptr [esp]
 004345A7    lea         edx,[esp+4]
 004345AB    mov         cl,1
 004345AD    mov         eax,dword ptr [esi+0C]
 004345B0    call        dword ptr [esi+8]
 004345B3    mov         esi,dword ptr [esp]
 004345B6    mov         edx,ebx
 004345B8    xor         ecx,ecx
 004345BA    mov         eax,dword ptr [esi+0C]
 004345BD    call        dword ptr [esi+8]
 004345C0    pop         ecx
 004345C1    pop         edx
 004345C2    pop         esi
 004345C3    pop         ebx
 004345C4    ret
end;*}

//004345C8
{*function sub_004345C8(?:?; ?:?):?;
begin
 004345C8    push        ebx
 004345C9    push        esi
 004345CA    push        edi
 004345CB    push        ecx
 004345CC    mov         ebx,edx
 004345CE    mov         dword ptr [esp],eax
 004345D1    mov         edx,dword ptr [esp]
 004345D4    mov         edx,dword ptr [edx]
 004345D6    inc         edx
 004345D7    mov         eax,dword ptr [esp]
 004345DA    call        004353B0
 004345DF    mov         esi,dword ptr [esp]
 004345E2    mov         esi,dword ptr [esi]
 004345E4    mov         edi,esi
 004345E6    mov         eax,dword ptr [esp]
 004345E9    add         eax,18
 004345EC    mov         eax,dword ptr [eax]
 004345EE    lea         eax,[eax+esi*4]
 004345F1    mov         edx,dword ptr [ebx]
 004345F3    call        @IntfCopy
 004345F8    mov         eax,dword ptr [esp]
 004345FB    inc         dword ptr [eax]
 004345FD    mov         esi,dword ptr [esp]
 00434600    mov         edx,ebx
 00434602    xor         ecx,ecx
 00434604    mov         eax,dword ptr [esi+0C]
 00434607    call        dword ptr [esi+8]
 0043460A    mov         eax,edi
 0043460C    pop         edx
 0043460D    pop         edi
 0043460E    pop         esi
 0043460F    pop         ebx
 00434610    ret
end;*}

//00434614
{*function sub_00434614(?:?; ?:?):?;
begin
 00434614    push        ebx
 00434615    push        esi
 00434616    push        edi
 00434617    push        ecx
 00434618    mov         ebx,edx
 0043461A    mov         dword ptr [esp],eax
 0043461D    mov         edx,dword ptr [esp]
 00434620    mov         edx,dword ptr [edx]
 00434622    inc         edx
 00434623    mov         eax,dword ptr [esp]
 00434626    call        004353B0
 0043462B    mov         esi,dword ptr [esp]
 0043462E    mov         esi,dword ptr [esi]
 00434630    mov         edi,esi
 00434632    mov         eax,dword ptr [esp]
 00434635    add         eax,18
 00434638    mov         eax,dword ptr [eax]
 0043463A    lea         eax,[eax+esi*4]
 0043463D    mov         edx,dword ptr [ebx]
 0043463F    call        @UStrAsg
 00434644    mov         eax,dword ptr [esp]
 00434647    inc         dword ptr [eax]
 00434649    mov         esi,dword ptr [esp]
 0043464C    mov         edx,ebx
 0043464E    xor         ecx,ecx
 00434650    mov         eax,dword ptr [esi+0C]
 00434653    call        dword ptr [esi+8]
 00434656    mov         eax,edi
 00434658    pop         edx
 00434659    pop         edi
 0043465A    pop         esi
 0043465B    pop         ebx
 0043465C    ret
end;*}

//00434660
procedure sub_00434660(?:Integer; ?:Integer; ?:Integer);
begin
{*
 00434660    push        ebp
 00434661    mov         ebp,esp
 00434663    add         esp,0FFFFFFF8
 00434666    push        ebx
 00434667    push        esi
 00434668    push        edi
 00434669    xor         ebx,ebx
 0043466B    mov         dword ptr [ebp-4],ebx
 0043466E    mov         esi,ecx
 00434670    mov         ebx,edx
 00434672    mov         dword ptr [ebp-8],eax
 00434675    xor         eax,eax
 00434677    push        ebp
 00434678    push        434705
 0043467D    push        dword ptr fs:[eax]
 00434680    mov         dword ptr fs:[eax],esp
 00434683    lea         eax,[ebp-4]
 00434686    call        @IntfClear
 0043468B    xor         eax,eax
 0043468D    push        ebp
 0043468E    push        4346E8
 00434693    push        dword ptr fs:[eax]
 00434696    mov         dword ptr fs:[eax],esp
 00434699    lea         eax,[ebp-4]
 0043469C    mov         edx,dword ptr [ebp-8]
 0043469F    add         edx,18
 004346A2    mov         edi,dword ptr [edx]
 004346A4    mov         edx,dword ptr [edi+ebx*4]
 004346A7    call        @IntfCopy
 004346AC    lea         eax,[edi+ebx*4]
 004346AF    mov         edx,dword ptr [ebp-8]
 004346B2    add         edx,18
 004346B5    mov         edx,dword ptr [edx]
 004346B7    mov         edx,dword ptr [edx+esi*4]
 004346BA    call        @IntfCopy
 004346BF    mov         eax,dword ptr [ebp-8]
 004346C2    add         eax,18
 004346C5    mov         eax,dword ptr [eax]
 004346C7    lea         eax,[eax+esi*4]
 004346CA    mov         edx,dword ptr [ebp-4]
 004346CD    call        @IntfCopy
 004346D2    xor         eax,eax
 004346D4    pop         edx
 004346D5    pop         ecx
 004346D6    pop         ecx
 004346D7    mov         dword ptr fs:[eax],edx
 004346DA    push        4346EF
 004346DF    lea         eax,[ebp-4]
 004346E2    call        @IntfClear
 004346E7    ret
>004346E8    jmp         @HandleFinally
>004346ED    jmp         004346DF
 004346EF    xor         eax,eax
 004346F1    pop         edx
 004346F2    pop         ecx
 004346F3    pop         ecx
 004346F4    mov         dword ptr fs:[eax],edx
 004346F7    push        43470C
 004346FC    lea         eax,[ebp-4]
 004346FF    call        @IntfClear
 00434704    ret
>00434705    jmp         @HandleFinally
>0043470A    jmp         004346FC
 0043470C    pop         edi
 0043470D    pop         esi
 0043470E    pop         ebx
 0043470F    pop         ecx
 00434710    pop         ecx
 00434711    pop         ebp
 00434712    ret
*}
end;

//00434714
{*function sub_00434714(?:?; ?:TObject):?;
begin
 00434714    push        ebx
 00434715    push        esi
 00434716    push        edi
 00434717    push        ebp
 00434718    push        ecx
 00434719    mov         edi,edx
 0043471B    mov         dword ptr [esp],eax
 0043471E    mov         esi,dword ptr [esp]
 00434721    mov         esi,dword ptr [esi]
 00434723    dec         esi
 00434724    test        esi,esi
>00434726    jl          0043474D
 00434728    inc         esi
 00434729    xor         ebx,ebx
 0043472B    mov         ebp,dword ptr [esp]
 0043472E    mov         ecx,edi
 00434730    mov         eax,dword ptr [esp]
 00434733    add         eax,18
 00434736    mov         eax,dword ptr [eax]
 00434738    lea         edx,[eax+ebx*4]
 0043473B    mov         eax,dword ptr [ebp+14]
 0043473E    call        dword ptr [ebp+10]
 00434741    test        eax,eax
>00434743    jne         00434749
 00434745    mov         eax,ebx
>00434747    jmp         00434750
 00434749    inc         ebx
 0043474A    dec         esi
>0043474B    jne         0043472B
 0043474D    or          eax,0FFFFFFFF
 00434750    pop         edx
 00434751    pop         ebp
 00434752    pop         edi
 00434753    pop         esi
 00434754    pop         ebx
 00434755    ret
end;*}

//00434758
{*procedure sub_00434758(?:?; ?:?);
begin
 00434758    push        ebx
 00434759    push        esi
 0043475A    push        edi
 0043475B    push        ebp
 0043475C    push        ecx
 0043475D    mov         edi,edx
 0043475F    mov         dword ptr [esp],eax
 00434762    mov         esi,dword ptr [esp]
 00434765    mov         esi,dword ptr [esi]
 00434767    dec         esi
 00434768    test        esi,esi
>0043476A    jl          00434791
 0043476C    inc         esi
 0043476D    xor         ebx,ebx
 0043476F    mov         ebp,dword ptr [esp]
 00434772    mov         ecx,edi
 00434774    mov         eax,dword ptr [esp]
 00434777    add         eax,18
 0043477A    mov         eax,dword ptr [eax]
 0043477C    lea         edx,[eax+ebx*4]
 0043477F    mov         eax,dword ptr [ebp+14]
 00434782    call        dword ptr [ebp+10]
 00434785    test        eax,eax
>00434787    jne         0043478D
 00434789    mov         eax,ebx
>0043478B    jmp         00434794
 0043478D    inc         ebx
 0043478E    dec         esi
>0043478F    jne         0043476F
 00434791    or          eax,0FFFFFFFF
 00434794    pop         edx
 00434795    pop         ebp
 00434796    pop         edi
 00434797    pop         esi
 00434798    pop         ebx
 00434799    ret
end;*}

//0043479C
{*function sub_0043479C(?:?; ?:?):?;
begin
 0043479C    push        ebx
 0043479D    push        esi
 0043479E    push        edi
 0043479F    push        ecx
 004347A0    mov         esi,edx
 004347A2    mov         dword ptr [esp],eax
 004347A5    mov         ebx,dword ptr [esp]
 004347A8    mov         ebx,dword ptr [ebx]
 004347AA    dec         ebx
 004347AB    cmp         ebx,0
>004347AE    jl          004347D4
 004347B0    mov         edi,dword ptr [esp]
 004347B3    mov         ecx,esi
 004347B5    mov         eax,dword ptr [esp]
 004347B8    add         eax,18
 004347BB    mov         eax,dword ptr [eax]
 004347BD    lea         edx,[eax+ebx*4]
 004347C0    mov         eax,dword ptr [edi+14]
 004347C3    call        dword ptr [edi+10]
 004347C6    test        eax,eax
>004347C8    jne         004347CE
 004347CA    mov         eax,ebx
>004347CC    jmp         004347D7
 004347CE    dec         ebx
 004347CF    cmp         ebx,0FFFFFFFF
>004347D2    jne         004347B0
 004347D4    or          eax,0FFFFFFFF
 004347D7    pop         edx
 004347D8    pop         edi
 004347D9    pop         esi
 004347DA    pop         ebx
 004347DB    ret
end;*}

//004347DC
{*procedure sub_004347DC(?:?; ?:Integer; ?:?);
begin
 004347DC    push        ebx
 004347DD    push        esi
 004347DE    push        ecx
 004347DF    mov         esi,ecx
 004347E1    mov         ebx,edx
 004347E3    mov         dword ptr [esp],eax
 004347E6    test        ebx,ebx
>004347E8    jl          004347F1
 004347EA    mov         eax,dword ptr [esp]
 004347ED    cmp         ebx,dword ptr [eax]
>004347EF    jle         00434808
 004347F1    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004347F7    mov         dl,1
 004347F9    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004347FE    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00434803    call        @RaiseExcept
 00434808    mov         edx,dword ptr [esp]
 0043480B    mov         edx,dword ptr [edx]
 0043480D    inc         edx
 0043480E    mov         eax,dword ptr [esp]
 00434811    call        004353B0
 00434816    mov         eax,dword ptr [esp]
 00434819    mov         eax,dword ptr [eax]
 0043481B    cmp         ebx,eax
>0043481D    je          00434843
 0043481F    sub         eax,ebx
 00434821    mov         ecx,eax
 00434823    add         ecx,ecx
 00434825    add         ecx,ecx
 00434827    mov         eax,dword ptr [esp]
 0043482A    add         eax,18
 0043482D    mov         eax,dword ptr [eax]
 0043482F    lea         edx,[eax+ebx*4+4]
 00434833    mov         eax,dword ptr [esp]
 00434836    add         eax,18
 00434839    mov         eax,dword ptr [eax]
 0043483B    lea         eax,[eax+ebx*4]
 0043483E    call        Move
 00434843    mov         eax,dword ptr [esp]
 00434846    add         eax,18
 00434849    mov         eax,dword ptr [eax]
 0043484B    xor         edx,edx
 0043484D    mov         dword ptr [eax+ebx*4],edx
 00434850    mov         eax,dword ptr [esp]
 00434853    add         eax,18
 00434856    mov         eax,dword ptr [eax]
 00434858    lea         eax,[eax+ebx*4]
 0043485B    mov         edx,dword ptr [esi]
 0043485D    call        @IntfCopy
 00434862    mov         eax,dword ptr [esp]
 00434865    inc         dword ptr [eax]
 00434867    mov         ebx,dword ptr [esp]
 0043486A    mov         edx,esi
 0043486C    xor         ecx,ecx
 0043486E    mov         eax,dword ptr [ebx+0C]
 00434871    call        dword ptr [ebx+8]
 00434874    pop         edx
 00434875    pop         esi
 00434876    pop         ebx
 00434877    ret
end;*}

//00434878
{*function sub_00434878(?:?):?;
begin
 00434878    push        ebx
 00434879    push        esi
 0043487A    mov         ebx,eax
 0043487C    mov         eax,ebx
 0043487E    call        00434714
 00434883    mov         esi,eax
 00434885    test        esi,esi
>00434887    jl          00434894
 00434889    mov         eax,ebx
 0043488B    mov         cl,1
 0043488D    mov         edx,esi
 0043488F    call        00435200
 00434894    mov         eax,esi
 00434896    pop         esi
 00434897    pop         ebx
 00434898    ret
end;*}

//0043489C
{*function sub_0043489C(?:Integer; ?:TPersistentClass):?;
begin
 0043489C    push        ebx
 0043489D    push        esi
 0043489E    push        edi
 0043489F    push        ecx
 004348A0    mov         ebx,edx
 004348A2    mov         dword ptr [esp],eax
 004348A5    mov         edx,dword ptr [esp]
 004348A8    mov         edx,dword ptr [edx]
 004348AA    inc         edx
 004348AB    mov         eax,dword ptr [esp]
 004348AE    call        004353B0
 004348B3    mov         eax,dword ptr [esp]
 004348B6    mov         eax,dword ptr [eax]
 004348B8    mov         esi,eax
 004348BA    mov         edx,dword ptr [esp]
 004348BD    add         edx,18
 004348C0    mov         edx,dword ptr [edx]
 004348C2    mov         ecx,dword ptr [ebx]
 004348C4    mov         dword ptr [edx+eax*4],ecx
 004348C7    mov         eax,dword ptr [esp]
 004348CA    inc         dword ptr [eax]
 004348CC    mov         edi,dword ptr [esp]
 004348CF    mov         edx,ebx
 004348D1    xor         ecx,ecx
 004348D3    mov         eax,dword ptr [edi+0C]
 004348D6    call        dword ptr [edi+8]
 004348D9    mov         eax,esi
 004348DB    pop         edx
 004348DC    pop         edi
 004348DD    pop         esi
 004348DE    pop         ebx
 004348DF    ret
end;*}

//004348E0
{*function sub_004348E0(?:?; ?:?):?;
begin
 004348E0    push        ebx
 004348E1    push        esi
 004348E2    push        edi
 004348E3    push        ecx
 004348E4    mov         ebx,edx
 004348E6    mov         dword ptr [esp],eax
 004348E9    mov         edx,dword ptr [esp]
 004348EC    mov         edx,dword ptr [edx]
 004348EE    inc         edx
 004348EF    mov         eax,dword ptr [esp]
 004348F2    call        004353B0
 004348F7    mov         eax,dword ptr [esp]
 004348FA    mov         eax,dword ptr [eax]
 004348FC    mov         esi,eax
 004348FE    mov         edx,dword ptr [esp]
 00434901    add         edx,18
 00434904    mov         edx,dword ptr [edx]
 00434906    mov         ecx,dword ptr [ebx]
 00434908    mov         dword ptr [edx+eax*8],ecx
 0043490B    mov         ecx,dword ptr [ebx+4]
 0043490E    mov         dword ptr [edx+eax*8+4],ecx
 00434912    mov         eax,dword ptr [esp]
 00434915    inc         dword ptr [eax]
 00434917    mov         edi,dword ptr [esp]
 0043491A    mov         edx,ebx
 0043491C    xor         ecx,ecx
 0043491E    mov         eax,dword ptr [edi+0C]
 00434921    call        dword ptr [edi+8]
 00434924    mov         eax,esi
 00434926    pop         edx
 00434927    pop         edi
 00434928    pop         esi
 00434929    pop         ebx
 0043492A    ret
end;*}

//0043492C
{*function sub_0043492C(?:?; ?:?):?;
begin
 0043492C    push        ebx
 0043492D    push        esi
 0043492E    push        edi
 0043492F    add         esp,0FFFFFFF8
 00434932    mov         ebx,edx
 00434934    mov         dword ptr [esp],eax
 00434937    mov         esi,dword ptr [esp]
 0043493A    mov         edx,dword ptr [esi]
 0043493C    inc         edx
 0043493D    mov         eax,esi
 0043493F    call        004353B0
 00434944    mov         edx,dword ptr [esi]
 00434946    mov         dword ptr [esp+4],edx
 0043494A    push        1
 0043494C    mov         eax,dword ptr [esi+4]
 0043494F    mov         edi,eax
 00434951    movzx       ecx,byte ptr [eax+1]
 00434955    add         edi,ecx
 00434957    mov         ecx,dword ptr [edi+6]
 0043495A    mov         ecx,dword ptr [ecx]
 0043495C    push        ecx
 0043495D    mov         eax,dword ptr [edi+2]
 00434960    imul        edx
 00434962    mov         edx,esi
 00434964    add         edx,18
 00434967    add         eax,dword ptr [edx]
 00434969    mov         edx,ebx
 0043496B    pop         ecx
 0043496C    call        CopyArray
 00434971    inc         dword ptr [esi]
 00434973    mov         edx,ebx
 00434975    xor         ecx,ecx
 00434977    mov         eax,dword ptr [esi+0C]
 0043497A    call        dword ptr [esi+8]
 0043497D    mov         eax,dword ptr [esp+4]
 00434981    pop         ecx
 00434982    pop         edx
 00434983    pop         edi
 00434984    pop         esi
 00434985    pop         ebx
 00434986    ret
end;*}

//00434988
procedure sub_00434988(?:Integer);
begin
{*
 00434988    push        ebx
 00434989    mov         ebx,eax
 0043498B    mov         eax,ebx
 0043498D    xor         edx,edx
 0043498F    call        004357A0
 00434994    mov         eax,ebx
 00434996    xor         edx,edx
 00434998    call        00435774
 0043499D    pop         ebx
 0043499E    ret
*}
end;

//004349A0
{*procedure sub_004349A0(?:?);
begin
 004349A0    push        ebx
 004349A1    mov         ebx,eax
 004349A3    mov         eax,ebx
 004349A5    xor         edx,edx
 004349A7    call        00435800
 004349AC    mov         eax,ebx
 004349AE    xor         edx,edx
 004349B0    call        00435774
 004349B5    pop         ebx
 004349B6    ret
end;*}

//004349B8
{*procedure sub_004349B8(?:?);
begin
 004349B8    push        ebx
 004349B9    mov         ebx,eax
 004349BB    mov         eax,ebx
 004349BD    xor         edx,edx
 004349BF    call        004358C0
 004349C4    mov         eax,ebx
 004349C6    xor         edx,edx
 004349C8    call        00435774
 004349CD    pop         ebx
 004349CE    ret
end;*}

//004349D0
{*function sub_004349D0(?:?; ?:?):?;
begin
 004349D0    push        ebx
 004349D1    push        esi
 004349D2    push        edi
 004349D3    add         esp,0FFFFFFF8
 004349D6    mov         ebx,edx
 004349D8    mov         dword ptr [esp],eax
 004349DB    mov         esi,dword ptr [esp]
 004349DE    mov         edx,dword ptr [esi]
 004349E0    inc         edx
 004349E1    mov         eax,esi
 004349E3    call        004353B0
 004349E8    mov         edx,dword ptr [esi]
 004349EA    mov         dword ptr [esp+4],edx
 004349EE    mov         eax,dword ptr [esi+4]
 004349F1    mov         ecx,eax
 004349F3    movzx       edi,byte ptr [eax+1]
 004349F7    add         ecx,edi
 004349F9    mov         edi,dword ptr [ecx+2]
 004349FC    push        edi
 004349FD    imul        edi,edx
 00434A00    mov         eax,esi
 00434A02    add         eax,18
 00434A05    mov         eax,dword ptr [eax]
 00434A07    add         eax,edi
 00434A09    mov         edx,eax
 00434A0B    mov         eax,ebx
 00434A0D    pop         ecx
 00434A0E    call        Move
 00434A13    inc         dword ptr [esi]
 00434A15    mov         edx,ebx
 00434A17    xor         ecx,ecx
 00434A19    mov         eax,dword ptr [esi+0C]
 00434A1C    call        dword ptr [esi+8]
 00434A1F    mov         eax,dword ptr [esp+4]
 00434A23    pop         ecx
 00434A24    pop         edx
 00434A25    pop         edi
 00434A26    pop         esi
 00434A27    pop         ebx
 00434A28    ret
end;*}

//00434A74
{*procedure sub_00434A74(?:?; ?:?; ?:?);
begin
 00434A74    push        ebp
 00434A75    mov         ebp,esp
 00434A77    add         esp,0FFFFFBF0
 00434A7D    push        ebx
 00434A7E    push        esi
 00434A7F    push        edi
 00434A80    xor         ebx,ebx
 00434A82    mov         dword ptr [ebp-4],ebx
 00434A85    mov         ebx,ecx
 00434A87    mov         esi,edx
 00434A89    mov         dword ptr [ebp-8],eax
 00434A8C    xor         eax,eax
 00434A8E    push        ebp
 00434A8F    push        434BAA
 00434A94    push        dword ptr fs:[eax]
 00434A97    mov         dword ptr fs:[eax],esp
 00434A9A    test        esi,esi
>00434A9C    jl          00434AB3
 00434A9E    test        ebx,ebx
>00434AA0    jl          00434AB3
 00434AA2    lea         eax,[ebx+esi]
 00434AA5    mov         edx,dword ptr [ebp-8]
 00434AA8    cmp         eax,dword ptr [edx]
>00434AAA    jg          00434AB3
 00434AAC    lea         eax,[ebx+esi]
 00434AAF    test        eax,eax
>00434AB1    jge         00434ACA
 00434AB3    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00434AB9    mov         dl,1
 00434ABB    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00434AC0    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00434AC5    call        @RaiseExcept
 00434ACA    test        ebx,ebx
 00434ACC    setg        al
 00434ACF    test        al,al
>00434AD1    je          00434B8E
 00434AD7    cmp         ebx,100
>00434ADD    jle         00434AFE
 00434ADF    push        ebx
 00434AE0    lea         eax,[ebp-4]
 00434AE3    mov         ecx,1
 00434AE8    mov         edx,dword ptr ds:[434A2C];:TListHelper.:3
 00434AEE    call        @DynArraySetLength
 00434AF3    add         esp,4
 00434AF6    mov         eax,dword ptr [ebp-4]
 00434AF9    mov         dword ptr [ebp-0C],eax
>00434AFC    jmp         00434B07
 00434AFE    lea         eax,[ebp-410]
 00434B04    mov         dword ptr [ebp-0C],eax
 00434B07    mov         eax,ebx
 00434B09    add         eax,eax
 00434B0B    add         eax,eax
 00434B0D    mov         dword ptr [ebp-10],eax
 00434B10    mov         edx,dword ptr [ebp-0C]
 00434B13    mov         eax,dword ptr [ebp-8]
 00434B16    add         eax,18
 00434B19    mov         eax,dword ptr [eax]
 00434B1B    lea         eax,[eax+esi*4]
 00434B1E    mov         ecx,dword ptr [ebp-10]
 00434B21    call        Move
 00434B26    mov         edi,dword ptr [ebp-8]
 00434B29    mov         edi,dword ptr [edi]
 00434B2B    lea         eax,[ebx+esi]
 00434B2E    sub         edi,eax
 00434B30    test        edi,edi
>00434B32    jle         00434B57
 00434B34    mov         edx,dword ptr [ebp-8]
 00434B37    add         edx,18
 00434B3A    mov         edx,dword ptr [edx]
 00434B3C    lea         eax,[edx+eax*4]
 00434B3F    mov         ecx,edi
 00434B41    add         ecx,ecx
 00434B43    add         ecx,ecx
 00434B45    mov         edx,dword ptr [ebp-8]
 00434B48    add         edx,18
 00434B4B    mov         edx,dword ptr [edx]
 00434B4D    lea         edx,[edx+esi*4]
 00434B50    call        Move
 00434B55    add         esi,edi
 00434B57    mov         eax,dword ptr [ebp-8]
 00434B5A    add         eax,18
 00434B5D    mov         eax,dword ptr [eax]
 00434B5F    lea         eax,[eax+esi*4]
 00434B62    xor         ecx,ecx
 00434B64    mov         edx,dword ptr [ebp-10]
 00434B67    call        @FillChar
 00434B6C    mov         eax,dword ptr [ebp-8]
 00434B6F    sub         dword ptr [eax],ebx
 00434B71    dec         ebx
 00434B72    test        ebx,ebx
>00434B74    jl          00434B8E
 00434B76    inc         ebx
 00434B77    xor         esi,esi
 00434B79    mov         eax,dword ptr [ebp-0C]
 00434B7C    lea         edx,[eax+esi*4]
 00434B7F    mov         edi,dword ptr [ebp-8]
 00434B82    mov         cl,1
 00434B84    mov         eax,dword ptr [edi+0C]
 00434B87    call        dword ptr [edi+8]
 00434B8A    inc         esi
 00434B8B    dec         ebx
>00434B8C    jne         00434B79
 00434B8E    xor         eax,eax
 00434B90    pop         edx
 00434B91    pop         ecx
 00434B92    pop         ecx
 00434B93    mov         dword ptr fs:[eax],edx
 00434B96    push        434BB1
 00434B9B    lea         eax,[ebp-4]
 00434B9E    mov         edx,dword ptr ds:[434A2C];:TListHelper.:3
 00434BA4    call        @DynArrayClear
 00434BA9    ret
>00434BAA    jmp         @HandleFinally
>00434BAF    jmp         00434B9B
 00434BB1    pop         edi
 00434BB2    pop         esi
 00434BB3    pop         ebx
 00434BB4    mov         esp,ebp
 00434BB6    pop         ebp
 00434BB7    ret
end;*}

//00434C00
{*procedure sub_00434C00(?:?; ?:?; ?:?);
begin
 00434C00    push        ebp
 00434C01    mov         ebp,esp
 00434C03    add         esp,0FFFFFBF0
 00434C09    push        ebx
 00434C0A    push        esi
 00434C0B    push        edi
 00434C0C    xor         ebx,ebx
 00434C0E    mov         dword ptr [ebp-4],ebx
 00434C11    mov         ebx,ecx
 00434C13    mov         esi,edx
 00434C15    mov         dword ptr [ebp-8],eax
 00434C18    xor         eax,eax
 00434C1A    push        ebp
 00434C1B    push        434D3A
 00434C20    push        dword ptr fs:[eax]
 00434C23    mov         dword ptr fs:[eax],esp
 00434C26    test        esi,esi
>00434C28    jl          00434C3F
 00434C2A    test        ebx,ebx
>00434C2C    jl          00434C3F
 00434C2E    lea         eax,[ebx+esi]
 00434C31    mov         edx,dword ptr [ebp-8]
 00434C34    cmp         eax,dword ptr [edx]
>00434C36    jg          00434C3F
 00434C38    lea         eax,[ebx+esi]
 00434C3B    test        eax,eax
>00434C3D    jge         00434C56
 00434C3F    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00434C45    mov         dl,1
 00434C47    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00434C4C    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00434C51    call        @RaiseExcept
 00434C56    test        ebx,ebx
 00434C58    setg        al
 00434C5B    test        al,al
>00434C5D    je          00434D1E
 00434C63    cmp         ebx,80
>00434C69    jle         00434C8A
 00434C6B    push        ebx
 00434C6C    lea         eax,[ebp-4]
 00434C6F    mov         ecx,1
 00434C74    mov         edx,dword ptr ds:[434BB8];:TListHelper.:4
 00434C7A    call        @DynArraySetLength
 00434C7F    add         esp,4
 00434C82    mov         eax,dword ptr [ebp-4]
 00434C85    mov         dword ptr [ebp-0C],eax
>00434C88    jmp         00434C93
 00434C8A    lea         eax,[ebp-410]
 00434C90    mov         dword ptr [ebp-0C],eax
 00434C93    mov         eax,ebx
 00434C95    add         eax,eax
 00434C97    add         eax,eax
 00434C99    add         eax,eax
 00434C9B    mov         dword ptr [ebp-10],eax
 00434C9E    mov         edx,dword ptr [ebp-0C]
 00434CA1    mov         eax,dword ptr [ebp-8]
 00434CA4    add         eax,18
 00434CA7    mov         eax,dword ptr [eax]
 00434CA9    lea         eax,[eax+esi*8]
 00434CAC    mov         ecx,dword ptr [ebp-10]
 00434CAF    call        Move
 00434CB4    mov         edi,dword ptr [ebp-8]
 00434CB7    mov         edi,dword ptr [edi]
 00434CB9    lea         eax,[ebx+esi]
 00434CBC    sub         edi,eax
 00434CBE    test        edi,edi
>00434CC0    jle         00434CE7
 00434CC2    mov         edx,dword ptr [ebp-8]
 00434CC5    add         edx,18
 00434CC8    mov         edx,dword ptr [edx]
 00434CCA    lea         eax,[edx+eax*8]
 00434CCD    mov         ecx,edi
 00434CCF    add         ecx,ecx
 00434CD1    add         ecx,ecx
 00434CD3    add         ecx,ecx
 00434CD5    mov         edx,dword ptr [ebp-8]
 00434CD8    add         edx,18
 00434CDB    mov         edx,dword ptr [edx]
 00434CDD    lea         edx,[edx+esi*8]
 00434CE0    call        Move
 00434CE5    add         esi,edi
 00434CE7    mov         eax,dword ptr [ebp-8]
 00434CEA    add         eax,18
 00434CED    mov         eax,dword ptr [eax]
 00434CEF    lea         eax,[eax+esi*8]
 00434CF2    xor         ecx,ecx
 00434CF4    mov         edx,dword ptr [ebp-10]
 00434CF7    call        @FillChar
 00434CFC    mov         eax,dword ptr [ebp-8]
 00434CFF    sub         dword ptr [eax],ebx
 00434D01    dec         ebx
 00434D02    test        ebx,ebx
>00434D04    jl          00434D1E
 00434D06    inc         ebx
 00434D07    xor         esi,esi
 00434D09    mov         eax,dword ptr [ebp-0C]
 00434D0C    lea         edx,[eax+esi*8]
 00434D0F    mov         edi,dword ptr [ebp-8]
 00434D12    mov         cl,1
 00434D14    mov         eax,dword ptr [edi+0C]
 00434D17    call        dword ptr [edi+8]
 00434D1A    inc         esi
 00434D1B    dec         ebx
>00434D1C    jne         00434D09
 00434D1E    xor         eax,eax
 00434D20    pop         edx
 00434D21    pop         ecx
 00434D22    pop         ecx
 00434D23    mov         dword ptr fs:[eax],edx
 00434D26    push        434D41
 00434D2B    lea         eax,[ebp-4]
 00434D2E    mov         edx,dword ptr ds:[434BB8];:TListHelper.:4
 00434D34    call        @DynArrayClear
 00434D39    ret
>00434D3A    jmp         @HandleFinally
>00434D3F    jmp         00434D2B
 00434D41    pop         edi
 00434D42    pop         esi
 00434D43    pop         ebx
 00434D44    mov         esp,ebp
 00434D46    pop         ebp
 00434D47    ret
end;*}

//00434D48
{*procedure sub_00434D48(?:?; ?:?; ?:?);
begin
 00434D48    push        ebp
 00434D49    mov         ebp,esp
 00434D4B    add         esp,0FFFFFBEC
 00434D51    push        ebx
 00434D52    push        esi
 00434D53    push        edi
 00434D54    mov         dword ptr [ebp-8],ecx
 00434D57    mov         esi,edx
 00434D59    mov         dword ptr [ebp-4],eax
 00434D5C    test        esi,esi
>00434D5E    jl          00434D7B
 00434D60    cmp         dword ptr [ebp-8],0
>00434D64    jl          00434D7B
 00434D66    mov         eax,esi
 00434D68    add         eax,dword ptr [ebp-8]
 00434D6B    mov         edx,dword ptr [ebp-4]
 00434D6E    cmp         eax,dword ptr [edx]
>00434D70    jg          00434D7B
 00434D72    mov         eax,esi
 00434D74    add         eax,dword ptr [ebp-8]
 00434D77    test        eax,eax
>00434D79    jge         00434D92
 00434D7B    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00434D81    mov         dl,1
 00434D83    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00434D88    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00434D8D    call        @RaiseExcept
 00434D92    cmp         dword ptr [ebp-8],0
 00434D96    setg        al
 00434D99    test        al,al
>00434D9B    je          00434F0C
 00434DA1    mov         eax,dword ptr [ebp-4]
 00434DA4    mov         eax,dword ptr [eax+4]
 00434DA7    mov         edx,eax
 00434DA9    movzx       eax,byte ptr [eax+1]
 00434DAD    add         edx,eax
 00434DAF    mov         ebx,dword ptr [edx+2]
 00434DB2    xor         eax,eax
 00434DB4    mov         dword ptr [ebp-0C],eax
 00434DB7    lea         eax,[ebp-414]
 00434DBD    mov         dword ptr [ebp-10],eax
 00434DC0    xor         edx,edx
 00434DC2    push        ebp
 00434DC3    push        434F05
 00434DC8    push        dword ptr fs:[edx]
 00434DCB    mov         dword ptr fs:[edx],esp
 00434DCE    mov         edi,dword ptr [ebp-8]
 00434DD1    imul        edi,ebx
 00434DD4    cmp         edi,400
>00434DDA    jle         00434DEC
 00434DDC    mov         eax,edi
 00434DDE    call        @GetMem
 00434DE3    mov         dword ptr [ebp-0C],eax
 00434DE6    mov         eax,dword ptr [ebp-0C]
 00434DE9    mov         dword ptr [ebp-10],eax
 00434DEC    mov         eax,esi
 00434DEE    imul        ebx
 00434DF0    mov         edx,dword ptr [ebp-4]
 00434DF3    add         edx,18
 00434DF6    mov         edx,dword ptr [edx]
 00434DF8    lea         eax,[edx+eax]
 00434DFB    mov         edx,dword ptr [ebp-10]
 00434DFE    mov         ecx,edi
 00434E00    call        Move
 00434E05    mov         eax,dword ptr [ebp-4]
 00434E08    mov         eax,dword ptr [eax]
 00434E0A    mov         edx,esi
 00434E0C    add         edx,dword ptr [ebp-8]
 00434E0F    sub         eax,edx
 00434E11    imul        ebx
 00434E13    test        eax,eax
>00434E15    jle         00434E62
 00434E17    mov         edx,esi
 00434E19    imul        edx,ebx
 00434E1C    mov         ecx,dword ptr [ebp-4]
 00434E1F    add         ecx,18
 00434E22    mov         ecx,dword ptr [ecx]
 00434E24    lea         edx,[ecx+edx]
 00434E27    push        edx
 00434E28    add         esi,dword ptr [ebp-8]
 00434E2B    imul        esi,ebx
 00434E2E    mov         edx,dword ptr [ebp-4]
 00434E31    add         edx,18
 00434E34    mov         edx,dword ptr [edx]
 00434E36    add         edx,esi
 00434E38    mov         ecx,eax
 00434E3A    mov         eax,edx
 00434E3C    pop         edx
 00434E3D    call        Move
 00434E42    mov         eax,dword ptr [ebp-4]
 00434E45    mov         eax,dword ptr [eax]
 00434E47    sub         eax,dword ptr [ebp-8]
 00434E4A    imul        ebx
 00434E4C    mov         edx,dword ptr [ebp-4]
 00434E4F    add         edx,18
 00434E52    mov         edx,dword ptr [edx]
 00434E54    lea         eax,[edx+eax]
 00434E57    xor         ecx,ecx
 00434E59    mov         edx,edi
 00434E5B    call        @FillChar
>00434E60    jmp         00434E78
 00434E62    imul        esi,ebx
 00434E65    mov         eax,dword ptr [ebp-4]
 00434E68    add         eax,18
 00434E6B    mov         eax,dword ptr [eax]
 00434E6D    add         eax,esi
 00434E6F    xor         ecx,ecx
 00434E71    mov         edx,edi
 00434E73    call        @FillChar
 00434E78    mov         eax,dword ptr [ebp-4]
 00434E7B    mov         edx,dword ptr [ebp-8]
 00434E7E    sub         dword ptr [eax],edx
 00434E80    mov         esi,dword ptr [ebp-8]
 00434E83    dec         esi
 00434E84    test        esi,esi
>00434E86    jl          00434EAB
 00434E88    inc         esi
 00434E89    mov         dword ptr [ebp-14],0
 00434E90    mov         eax,dword ptr [ebp-14]
 00434E93    imul        ebx
 00434E95    mov         edx,dword ptr [ebp-10]
 00434E98    add         edx,eax
 00434E9A    mov         edi,dword ptr [ebp-4]
 00434E9D    mov         cl,1
 00434E9F    mov         eax,dword ptr [edi+0C]
 00434EA2    call        dword ptr [edi+8]
 00434EA5    inc         dword ptr [ebp-14]
 00434EA8    dec         esi
>00434EA9    jne         00434E90
 00434EAB    xor         eax,eax
 00434EAD    pop         edx
 00434EAE    pop         ecx
 00434EAF    pop         ecx
 00434EB0    mov         dword ptr fs:[eax],edx
 00434EB3    push        434F0C
 00434EB8    cmp         dword ptr [ebp-0C],0
>00434EBC    je          00434EE6
 00434EBE    mov         eax,dword ptr [ebp-4]
 00434EC1    mov         eax,dword ptr [eax+4]
 00434EC4    mov         edx,eax
 00434EC6    movzx       eax,byte ptr [eax+1]
 00434ECA    add         edx,eax
 00434ECC    mov         eax,dword ptr [edx+6]
 00434ECF    mov         edx,dword ptr [eax]
 00434ED1    mov         ecx,dword ptr [ebp-8]
 00434ED4    mov         eax,dword ptr [ebp-0C]
 00434ED7    call        FinalizeArray
 00434EDC    mov         eax,dword ptr [ebp-0C]
 00434EDF    call        @FreeMem
>00434EE4    jmp         00434F04
 00434EE6    mov         eax,dword ptr [ebp-4]
 00434EE9    mov         eax,dword ptr [eax+4]
 00434EEC    mov         edx,eax
 00434EEE    movzx       eax,byte ptr [eax+1]
 00434EF2    add         edx,eax
 00434EF4    mov         eax,dword ptr [edx+6]
 00434EF7    mov         edx,dword ptr [eax]
 00434EF9    mov         ecx,dword ptr [ebp-8]
 00434EFC    mov         eax,dword ptr [ebp-10]
 00434EFF    call        FinalizeArray
 00434F04    ret
>00434F05    jmp         @HandleFinally
>00434F0A    jmp         00434EB8
 00434F0C    pop         edi
 00434F0D    pop         esi
 00434F0E    pop         ebx
 00434F0F    mov         esp,ebp
 00434F11    pop         ebp
 00434F12    ret
end;*}

//00434F14
{*procedure sub_00434F14(?:?; ?:?; ?:?);
begin
 00434F14    push        ebp
 00434F15    mov         ebp,esp
 00434F17    add         esp,0FFFFFBF0
 00434F1D    push        ebx
 00434F1E    push        esi
 00434F1F    push        edi
 00434F20    mov         ebx,ecx
 00434F22    mov         esi,edx
 00434F24    mov         dword ptr [ebp-4],eax
 00434F27    test        esi,esi
>00434F29    jl          00434F40
 00434F2B    test        ebx,ebx
>00434F2D    jl          00434F40
 00434F2F    lea         eax,[ebx+esi]
 00434F32    mov         edx,dword ptr [ebp-4]
 00434F35    cmp         eax,dword ptr [edx]
>00434F37    jg          00434F40
 00434F39    lea         eax,[ebx+esi]
 00434F3C    test        eax,eax
>00434F3E    jge         00434F57
 00434F40    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00434F46    mov         dl,1
 00434F48    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00434F4D    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00434F52    call        @RaiseExcept
 00434F57    test        ebx,ebx
 00434F59    setg        al
 00434F5C    test        al,al
>00434F5E    je          00435097
 00434F64    xor         eax,eax
 00434F66    mov         dword ptr [ebp-8],eax
 00434F69    lea         eax,[ebp-410]
 00434F6F    mov         dword ptr [ebp-0C],eax
 00434F72    xor         edx,edx
 00434F74    push        ebp
 00434F75    push        435090
 00434F7A    push        dword ptr fs:[edx]
 00434F7D    mov         dword ptr fs:[edx],esp
 00434F80    mov         dword ptr [ebp-10],ebx
 00434F83    cmp         dword ptr [ebp-10],100
>00434F8A    jle         00434FA9
 00434F8C    lea         eax,[ebp-10]
 00434F8F    push        eax
 00434F90    mov         edx,dword ptr [ebp-4]
 00434F93    mov         edx,dword ptr [edx+4]
 00434F96    lea         eax,[ebp-8]
 00434F99    mov         ecx,1
 00434F9E    call        DynArraySetLength
 00434FA3    mov         eax,dword ptr [ebp-8]
 00434FA6    mov         dword ptr [ebp-0C],eax
 00434FA9    mov         eax,dword ptr [ebp-4]
 00434FAC    add         eax,18
 00434FAF    mov         eax,dword ptr [eax]
 00434FB1    lea         eax,[eax+esi*4]
 00434FB4    mov         edi,ebx
 00434FB6    add         edi,edi
 00434FB8    add         edi,edi
 00434FBA    mov         ecx,edi
 00434FBC    mov         edx,dword ptr [ebp-0C]
 00434FBF    call        Move
 00434FC4    mov         eax,dword ptr [ebp-4]
 00434FC7    mov         eax,dword ptr [eax]
 00434FC9    lea         edx,[ebx+esi]
 00434FCC    sub         eax,edx
 00434FCE    test        eax,eax
>00434FD0    jle         00435017
 00434FD2    mov         edx,dword ptr [ebp-4]
 00434FD5    add         edx,18
 00434FD8    mov         edx,dword ptr [edx]
 00434FDA    lea         edx,[edx+esi*4]
 00434FDD    push        edx
 00434FDE    lea         edx,[ebx+esi]
 00434FE1    mov         ecx,dword ptr [ebp-4]
 00434FE4    add         ecx,18
 00434FE7    mov         ecx,dword ptr [ecx]
 00434FE9    lea         edx,[ecx+edx*4]
 00434FEC    mov         ecx,eax
 00434FEE    add         ecx,ecx
 00434FF0    add         ecx,ecx
 00434FF2    mov         eax,edx
 00434FF4    pop         edx
 00434FF5    call        Move
 00434FFA    mov         eax,dword ptr [ebp-4]
 00434FFD    mov         eax,dword ptr [eax]
 00434FFF    sub         eax,ebx
 00435001    mov         edx,dword ptr [ebp-4]
 00435004    add         edx,18
 00435007    mov         edx,dword ptr [edx]
 00435009    lea         eax,[edx+eax*4]
 0043500C    mov         edx,edi
 0043500E    xor         ecx,ecx
 00435010    call        @FillChar
>00435015    jmp         0043502B
 00435017    mov         eax,dword ptr [ebp-4]
 0043501A    add         eax,18
 0043501D    mov         eax,dword ptr [eax]
 0043501F    lea         eax,[eax+esi*4]
 00435022    mov         edx,edi
 00435024    xor         ecx,ecx
 00435026    call        @FillChar
 0043502B    mov         eax,dword ptr [ebp-4]
 0043502E    sub         dword ptr [eax],ebx
 00435030    dec         ebx
 00435031    test        ebx,ebx
>00435033    jl          0043504D
 00435035    inc         ebx
 00435036    xor         esi,esi
 00435038    mov         eax,dword ptr [ebp-0C]
 0043503B    lea         edx,[eax+esi*4]
 0043503E    mov         edi,dword ptr [ebp-4]
 00435041    mov         cl,1
 00435043    mov         eax,dword ptr [edi+0C]
 00435046    call        dword ptr [edi+8]
 00435049    inc         esi
 0043504A    dec         ebx
>0043504B    jne         00435038
 0043504D    xor         eax,eax
 0043504F    pop         edx
 00435050    pop         ecx
 00435051    pop         ecx
 00435052    mov         dword ptr fs:[eax],edx
 00435055    push        435097
 0043505A    cmp         dword ptr [ebp-8],0
>0043505E    jne         00435080
 00435060    mov         eax,dword ptr [ebp-4]
 00435063    mov         eax,dword ptr [eax+4]
 00435066    mov         edx,eax
 00435068    movzx       eax,byte ptr [eax+1]
 0043506C    add         edx,eax
 0043506E    mov         eax,dword ptr [edx+6]
 00435071    mov         edx,dword ptr [eax]
 00435073    mov         ecx,dword ptr [ebp-10]
 00435076    mov         eax,dword ptr [ebp-0C]
 00435079    call        FinalizeArray
>0043507E    jmp         0043508F
 00435080    mov         eax,dword ptr [ebp-4]
 00435083    mov         eax,dword ptr [eax+4]
 00435086    lea         edx,[ebp-8]
 00435089    xchg        eax,edx
 0043508A    call        @DynArrayClear
 0043508F    ret
>00435090    jmp         @HandleFinally
>00435095    jmp         0043505A
 00435097    pop         edi
 00435098    pop         esi
 00435099    pop         ebx
 0043509A    mov         esp,ebp
 0043509C    pop         ebp
 0043509D    ret
end;*}

//004350A0
{*procedure sub_004350A0(?:?; ?:?; ?:?);
begin
 004350A0    push        ebp
 004350A1    mov         ebp,esp
 004350A3    add         esp,0FFFFFBF0
 004350A9    push        ebx
 004350AA    push        esi
 004350AB    push        edi
 004350AC    mov         ebx,ecx
 004350AE    mov         esi,edx
 004350B0    mov         dword ptr [ebp-4],eax
 004350B3    test        esi,esi
>004350B5    jl          004350CC
 004350B7    test        ebx,ebx
>004350B9    jl          004350CC
 004350BB    lea         eax,[ebx+esi]
 004350BE    mov         edx,dword ptr [ebp-4]
 004350C1    cmp         eax,dword ptr [edx]
>004350C3    jg          004350CC
 004350C5    lea         eax,[ebx+esi]
 004350C8    test        eax,eax
>004350CA    jge         004350E3
 004350CC    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004350D2    mov         dl,1
 004350D4    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004350D9    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004350DE    call        @RaiseExcept
 004350E3    test        ebx,ebx
 004350E5    setg        al
 004350E8    test        al,al
>004350EA    je          004351F6
 004350F0    mov         eax,dword ptr [ebp-4]
 004350F3    mov         eax,dword ptr [eax+4]
 004350F6    mov         edx,eax
 004350F8    movzx       eax,byte ptr [eax+1]
 004350FC    add         edx,eax
 004350FE    mov         eax,dword ptr [edx+2]
 00435101    mov         dword ptr [ebp-10],eax
 00435104    xor         eax,eax
 00435106    mov         dword ptr [ebp-8],eax
 00435109    xor         edx,edx
 0043510B    push        ebp
 0043510C    push        4351EF
 00435111    push        dword ptr fs:[edx]
 00435114    mov         dword ptr fs:[edx],esp
 00435117    mov         edi,ebx
 00435119    imul        edi,dword ptr [ebp-10]
 0043511D    cmp         edi,400
>00435123    jle         00435137
 00435125    mov         eax,edi
 00435127    call        @GetMem
 0043512C    mov         dword ptr [ebp-8],eax
 0043512F    mov         eax,dword ptr [ebp-8]
 00435132    mov         dword ptr [ebp-0C],eax
>00435135    jmp         00435140
 00435137    lea         eax,[ebp-410]
 0043513D    mov         dword ptr [ebp-0C],eax
 00435140    mov         eax,esi
 00435142    imul        dword ptr [ebp-10]
 00435145    mov         edx,dword ptr [ebp-4]
 00435148    add         edx,18
 0043514B    mov         edx,dword ptr [edx]
 0043514D    lea         eax,[edx+eax]
 00435150    mov         edx,dword ptr [ebp-0C]
 00435153    mov         ecx,edi
 00435155    call        Move
 0043515A    mov         eax,dword ptr [ebp-4]
 0043515D    mov         eax,dword ptr [eax]
 0043515F    lea         edx,[ebx+esi]
 00435162    sub         eax,edx
 00435164    test        eax,eax
>00435166    jle         0043519C
 00435168    mov         edx,esi
 0043516A    imul        edx,dword ptr [ebp-10]
 0043516E    mov         ecx,dword ptr [ebp-4]
 00435171    add         ecx,18
 00435174    mov         ecx,dword ptr [ecx]
 00435176    lea         edx,[ecx+edx]
 00435179    push        edx
 0043517A    lea         edx,[ebx+esi]
 0043517D    imul        edx,dword ptr [ebp-10]
 00435181    mov         ecx,dword ptr [ebp-4]
 00435184    add         ecx,18
 00435187    mov         ecx,dword ptr [ecx]
 00435189    lea         edx,[ecx+edx]
 0043518C    mov         ecx,eax
 0043518E    imul        ecx,dword ptr [ebp-10]
 00435192    mov         eax,edx
 00435194    pop         edx
 00435195    call        Move
 0043519A    add         esi,ebx
 0043519C    imul        esi,dword ptr [ebp-10]
 004351A0    mov         eax,dword ptr [ebp-4]
 004351A3    add         eax,18
 004351A6    mov         eax,dword ptr [eax]
 004351A8    add         eax,esi
 004351AA    xor         ecx,ecx
 004351AC    mov         edx,edi
 004351AE    call        @FillChar
 004351B3    mov         eax,dword ptr [ebp-4]
 004351B6    sub         dword ptr [eax],ebx
 004351B8    dec         ebx
 004351B9    test        ebx,ebx
>004351BB    jl          004351D9
 004351BD    inc         ebx
 004351BE    xor         esi,esi
 004351C0    mov         eax,esi
 004351C2    imul        dword ptr [ebp-10]
 004351C5    mov         edx,dword ptr [ebp-0C]
 004351C8    add         edx,eax
 004351CA    mov         edi,dword ptr [ebp-4]
 004351CD    mov         cl,1
 004351CF    mov         eax,dword ptr [edi+0C]
 004351D2    call        dword ptr [edi+8]
 004351D5    inc         esi
 004351D6    dec         ebx
>004351D7    jne         004351C0
 004351D9    xor         eax,eax
 004351DB    pop         edx
 004351DC    pop         ecx
 004351DD    pop         ecx
 004351DE    mov         dword ptr fs:[eax],edx
 004351E1    push        4351F6
 004351E6    mov         eax,dword ptr [ebp-8]
 004351E9    call        @FreeMem
 004351EE    ret
>004351EF    jmp         @HandleFinally
>004351F4    jmp         004351E6
 004351F6    pop         edi
 004351F7    pop         esi
 004351F8    pop         ebx
 004351F9    mov         esp,ebp
 004351FB    pop         ebp
 004351FC    ret
end;*}

//00435200
{*procedure sub_00435200(?:Integer; ?:?; ?:?);
begin
 00435200    push        ebx
 00435201    push        esi
 00435202    add         esp,0FFFFFFF8
 00435205    mov         ebx,ecx
 00435207    mov         dword ptr [esp],eax
 0043520A    test        edx,edx
>0043520C    jl          00435215
 0043520E    mov         eax,dword ptr [esp]
 00435211    cmp         edx,dword ptr [eax]
>00435213    jl          0043522C
 00435215    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 0043521B    mov         dl,1
 0043521D    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435222    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00435227    call        @RaiseExcept
 0043522C    mov         eax,dword ptr [esp]
 0043522F    add         eax,18
 00435232    mov         eax,dword ptr [eax]
 00435234    mov         eax,dword ptr [eax+edx*4]
 00435237    mov         dword ptr [esp+4],eax
 0043523B    mov         eax,dword ptr [esp]
 0043523E    dec         dword ptr [eax]
 00435240    mov         eax,dword ptr [esp]
 00435243    mov         eax,dword ptr [eax]
 00435245    cmp         edx,eax
>00435247    je          0043526D
 00435249    sub         eax,edx
 0043524B    mov         ecx,eax
 0043524D    add         ecx,ecx
 0043524F    add         ecx,ecx
 00435251    mov         eax,dword ptr [esp]
 00435254    add         eax,18
 00435257    mov         eax,dword ptr [eax]
 00435259    lea         eax,[eax+edx*4+4]
 0043525D    mov         esi,dword ptr [esp]
 00435260    add         esi,18
 00435263    mov         esi,dword ptr [esi]
 00435265    lea         edx,[esi+edx*4]
 00435268    call        Move
 0043526D    mov         eax,dword ptr [esp]
 00435270    mov         eax,dword ptr [eax]
 00435272    mov         edx,dword ptr [esp]
 00435275    add         edx,18
 00435278    mov         edx,dword ptr [edx]
 0043527A    xor         ecx,ecx
 0043527C    mov         dword ptr [edx+eax*4],ecx
 0043527F    mov         ecx,ebx
 00435281    mov         ebx,dword ptr [esp]
 00435284    lea         edx,[esp+4]
 00435288    mov         eax,dword ptr [ebx+0C]
 0043528B    call        dword ptr [ebx+8]
 0043528E    pop         ecx
 0043528F    pop         edx
 00435290    pop         esi
 00435291    pop         ebx
 00435292    ret
end;*}

//00435294
{*procedure sub_00435294(?:?; ?:Integer; ?:?);
begin
 00435294    push        ebp
 00435295    mov         ebp,esp
 00435297    add         esp,0FFFFFFF8
 0043529A    push        ebx
 0043529B    push        esi
 0043529C    mov         ebx,ecx
 0043529E    mov         dword ptr [ebp-4],eax
 004352A1    test        edx,edx
>004352A3    jl          004352AC
 004352A5    mov         eax,dword ptr [ebp-4]
 004352A8    cmp         edx,dword ptr [eax]
>004352AA    jl          004352C3
 004352AC    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004352B2    mov         dl,1
 004352B4    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004352B9    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004352BE    call        @RaiseExcept
 004352C3    mov         eax,dword ptr [ebp-4]
 004352C6    add         eax,18
 004352C9    mov         eax,dword ptr [eax]
 004352CB    mov         eax,dword ptr [eax+edx*4]
 004352CE    mov         dword ptr [ebp-8],eax
 004352D1    xor         ecx,ecx
 004352D3    push        ebp
 004352D4    push        435360
 004352D9    push        dword ptr fs:[ecx]
 004352DC    mov         dword ptr fs:[ecx],esp
 004352DF    mov         eax,dword ptr [ebp-4]
 004352E2    dec         dword ptr [eax]
 004352E4    mov         eax,dword ptr [ebp-4]
 004352E7    mov         eax,dword ptr [eax]
 004352E9    cmp         edx,eax
>004352EB    je          00435312
 004352ED    mov         ecx,dword ptr [ebp-4]
 004352F0    add         ecx,18
 004352F3    mov         ecx,dword ptr [ecx]
 004352F5    lea         ecx,[ecx+edx*4+4]
 004352F9    mov         esi,dword ptr [ebp-4]
 004352FC    add         esi,18
 004352FF    mov         esi,dword ptr [esi]
 00435301    lea         esi,[esi+edx*4]
 00435304    sub         eax,edx
 00435306    add         eax,eax
 00435308    add         eax,eax
 0043530A    xchg        eax,ecx
 0043530B    mov         edx,esi
 0043530D    call        Move
 00435312    mov         eax,dword ptr [ebp-4]
 00435315    mov         eax,dword ptr [eax]
 00435317    mov         edx,dword ptr [ebp-4]
 0043531A    add         edx,18
 0043531D    mov         edx,dword ptr [edx]
 0043531F    xor         ecx,ecx
 00435321    mov         dword ptr [edx+eax*4],ecx
 00435324    mov         ecx,ebx
 00435326    mov         ebx,dword ptr [ebp-4]
 00435329    lea         edx,[ebp-8]
 0043532C    mov         eax,dword ptr [ebx+0C]
 0043532F    call        dword ptr [ebx+8]
 00435332    xor         eax,eax
 00435334    pop         edx
 00435335    pop         ecx
 00435336    pop         ecx
 00435337    mov         dword ptr fs:[eax],edx
 0043533A    push        435367
 0043533F    mov         eax,dword ptr [ebp-4]
 00435342    mov         eax,dword ptr [eax+4]
 00435345    mov         edx,eax
 00435347    movzx       eax,byte ptr [eax+1]
 0043534B    add         edx,eax
 0043534D    mov         eax,dword ptr [edx+6]
 00435350    mov         edx,dword ptr [eax]
 00435352    lea         eax,[ebp-8]
 00435355    mov         ecx,1
 0043535A    call        FinalizeArray
 0043535F    ret
>00435360    jmp         @HandleFinally
>00435365    jmp         0043533F
 00435367    pop         esi
 00435368    pop         ebx
 00435369    pop         ecx
 0043536A    pop         ecx
 0043536B    pop         ebp
 0043536C    ret
end;*}

//00435370
{*procedure sub_00435370(?:?; ?:?);
begin
 00435370    push        ebx
 00435371    push        esi
 00435372    push        ecx
 00435373    mov         esi,edx
 00435375    mov         dword ptr [esp],eax
 00435378    mov         eax,dword ptr [esp]
 0043537B    add         eax,18
 0043537E    mov         eax,dword ptr [eax]
 00435380    test        eax,eax
>00435382    je          00435389
 00435384    sub         eax,4
 00435387    mov         eax,dword ptr [eax]
 00435389    mov         ebx,eax
 0043538B    test        ebx,ebx
>0043538D    jne         00435393
 0043538F    mov         ebx,esi
>00435391    jmp         004353A2
 00435393    add         ebx,ebx
 00435395    test        ebx,ebx
>00435397    jge         0043539E
 00435399    call        00423F00
 0043539E    cmp         esi,ebx
>004353A0    jg          00435393
 004353A2    mov         eax,dword ptr [esp]
 004353A5    mov         edx,ebx
 004353A7    call        00435774
 004353AC    pop         edx
 004353AD    pop         esi
 004353AE    pop         ebx
 004353AF    ret
end;*}

//004353B0
{*procedure sub_004353B0(?:?; ?:?);
begin
 004353B0    push        ecx
 004353B1    mov         dword ptr [esp],eax
 004353B4    mov         eax,dword ptr [esp]
 004353B7    add         eax,18
 004353BA    mov         eax,dword ptr [eax]
 004353BC    test        eax,eax
>004353BE    je          004353C5
 004353C0    sub         eax,4
 004353C3    mov         eax,dword ptr [eax]
 004353C5    cmp         eax,edx
>004353C7    jge         004353D3
 004353C9    mov         eax,dword ptr [esp]
 004353CC    call        00435370
 004353D1    pop         edx
 004353D2    ret
 004353D3    test        edx,edx
>004353D5    jge         004353DC
 004353D7    call        00423F00
 004353DC    pop         edx
 004353DD    ret
end;*}

//004353E0
{*procedure sub_004353E0(?:?; ?:?; ?:?);
begin
 004353E0    push        ebx
 004353E1    push        esi
 004353E2    push        ecx
 004353E3    mov         esi,ecx
 004353E5    mov         ebx,edx
 004353E7    mov         dword ptr [esp],eax
 004353EA    test        ebx,ebx
>004353EC    jl          004353F5
 004353EE    mov         eax,dword ptr [esp]
 004353F1    cmp         ebx,dword ptr [eax]
>004353F3    jle         0043540C
 004353F5    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004353FB    mov         dl,1
 004353FD    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435402    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00435407    call        @RaiseExcept
 0043540C    mov         edx,dword ptr [esp]
 0043540F    mov         edx,dword ptr [edx]
 00435411    inc         edx
 00435412    mov         eax,dword ptr [esp]
 00435415    call        004353B0
 0043541A    mov         eax,dword ptr [esp]
 0043541D    mov         eax,dword ptr [eax]
 0043541F    cmp         ebx,eax
>00435421    je          00435447
 00435423    sub         eax,ebx
 00435425    mov         ecx,eax
 00435427    add         ecx,ecx
 00435429    add         ecx,ecx
 0043542B    mov         eax,dword ptr [esp]
 0043542E    add         eax,18
 00435431    mov         eax,dword ptr [eax]
 00435433    lea         edx,[eax+ebx*4+4]
 00435437    mov         eax,dword ptr [esp]
 0043543A    add         eax,18
 0043543D    mov         eax,dword ptr [eax]
 0043543F    lea         eax,[eax+ebx*4]
 00435442    call        Move
 00435447    mov         eax,dword ptr [esi]
 00435449    mov         edx,dword ptr [esp]
 0043544C    add         edx,18
 0043544F    mov         edx,dword ptr [edx]
 00435451    mov         dword ptr [edx+ebx*4],eax
 00435454    mov         eax,dword ptr [esp]
 00435457    inc         dword ptr [eax]
 00435459    mov         ebx,dword ptr [esp]
 0043545C    mov         edx,esi
 0043545E    xor         ecx,ecx
 00435460    mov         eax,dword ptr [ebx+0C]
 00435463    call        dword ptr [ebx+8]
 00435466    pop         edx
 00435467    pop         esi
 00435468    pop         ebx
 00435469    ret
end;*}

//0043546C
{*procedure sub_0043546C(?:?; ?:Integer; ?:TRttiMember; ?:?);
begin
 0043546C    push        ebp
 0043546D    mov         ebp,esp
 0043546F    add         esp,0FFFFFFF8
 00435472    push        ebx
 00435473    push        esi
 00435474    push        edi
 00435475    mov         dword ptr [ebp-8],ecx
 00435478    mov         ebx,edx
 0043547A    mov         dword ptr [ebp-4],eax
 0043547D    mov         esi,dword ptr [ebp+8]
 00435480    test        ebx,ebx
>00435482    jl          0043548B
 00435484    mov         eax,dword ptr [ebp-4]
 00435487    cmp         ebx,dword ptr [eax]
>00435489    jle         004354A2
 0043548B    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00435491    mov         dl,1
 00435493    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435498    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 0043549D    call        @RaiseExcept
 004354A2    mov         edx,dword ptr [ebp-4]
 004354A5    mov         edx,dword ptr [edx]
 004354A7    add         edx,esi
 004354A9    mov         eax,dword ptr [ebp-4]
 004354AC    call        004353B0
 004354B1    mov         eax,dword ptr [ebp-4]
 004354B4    mov         eax,dword ptr [eax]
 004354B6    cmp         ebx,eax
>004354B8    je          004354DF
 004354BA    lea         edx,[esi+ebx]
 004354BD    mov         ecx,dword ptr [ebp-4]
 004354C0    add         ecx,18
 004354C3    mov         ecx,dword ptr [ecx]
 004354C5    lea         edx,[ecx+edx*4]
 004354C8    mov         ecx,dword ptr [ebp-4]
 004354CB    add         ecx,18
 004354CE    mov         ecx,dword ptr [ecx]
 004354D0    lea         ecx,[ecx+ebx*4]
 004354D3    sub         eax,ebx
 004354D5    add         eax,eax
 004354D7    add         eax,eax
 004354D9    xchg        eax,ecx
 004354DA    call        Move
 004354DF    mov         eax,dword ptr [ebp-4]
 004354E2    add         eax,18
 004354E5    mov         eax,dword ptr [eax]
 004354E7    lea         edx,[eax+ebx*4]
 004354EA    mov         ecx,esi
 004354EC    add         ecx,ecx
 004354EE    add         ecx,ecx
 004354F0    mov         eax,dword ptr [ebp-8]
 004354F3    call        Move
 004354F8    mov         eax,dword ptr [ebp-4]
 004354FB    add         dword ptr [eax],esi
 004354FD    mov         ebx,esi
 004354FF    dec         ebx
 00435500    test        ebx,ebx
>00435502    jl          0043551C
 00435504    inc         ebx
 00435505    xor         esi,esi
 00435507    mov         edi,dword ptr [ebp-4]
 0043550A    mov         eax,dword ptr [ebp-8]
 0043550D    lea         edx,[eax+esi*4]
 00435510    xor         ecx,ecx
 00435512    mov         eax,dword ptr [edi+0C]
 00435515    call        dword ptr [edi+8]
 00435518    inc         esi
 00435519    dec         ebx
>0043551A    jne         00435507
 0043551C    pop         edi
 0043551D    pop         esi
 0043551E    pop         ebx
 0043551F    pop         ecx
 00435520    pop         ecx
 00435521    pop         ebp
 00435522    ret         4
end;*}

//00435528
{*procedure sub_00435528(?:?; ?:Integer; ?:TPoint; ?:?);
begin
 00435528    push        ebp
 00435529    mov         ebp,esp
 0043552B    add         esp,0FFFFFFF8
 0043552E    push        ebx
 0043552F    push        esi
 00435530    push        edi
 00435531    mov         dword ptr [ebp-8],ecx
 00435534    mov         ebx,edx
 00435536    mov         dword ptr [ebp-4],eax
 00435539    mov         esi,dword ptr [ebp+8]
 0043553C    test        ebx,ebx
>0043553E    jl          00435547
 00435540    mov         eax,dword ptr [ebp-4]
 00435543    cmp         ebx,dword ptr [eax]
>00435545    jle         0043555E
 00435547    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 0043554D    mov         dl,1
 0043554F    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435554    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00435559    call        @RaiseExcept
 0043555E    mov         edx,dword ptr [ebp-4]
 00435561    mov         edx,dword ptr [edx]
 00435563    add         edx,esi
 00435565    mov         eax,dword ptr [ebp-4]
 00435568    call        004353B0
 0043556D    mov         eax,dword ptr [ebp-4]
 00435570    mov         eax,dword ptr [eax]
 00435572    cmp         ebx,eax
>00435574    je          0043559D
 00435576    lea         edx,[esi+ebx]
 00435579    mov         ecx,dword ptr [ebp-4]
 0043557C    add         ecx,18
 0043557F    mov         ecx,dword ptr [ecx]
 00435581    lea         edx,[ecx+edx*8]
 00435584    mov         ecx,dword ptr [ebp-4]
 00435587    add         ecx,18
 0043558A    mov         ecx,dword ptr [ecx]
 0043558C    lea         ecx,[ecx+ebx*8]
 0043558F    sub         eax,ebx
 00435591    add         eax,eax
 00435593    add         eax,eax
 00435595    add         eax,eax
 00435597    xchg        eax,ecx
 00435598    call        Move
 0043559D    mov         eax,dword ptr [ebp-4]
 004355A0    add         eax,18
 004355A3    mov         eax,dword ptr [eax]
 004355A5    lea         edx,[eax+ebx*8]
 004355A8    mov         ecx,esi
 004355AA    add         ecx,ecx
 004355AC    add         ecx,ecx
 004355AE    add         ecx,ecx
 004355B0    mov         eax,dword ptr [ebp-8]
 004355B3    call        Move
 004355B8    mov         eax,dword ptr [ebp-4]
 004355BB    add         dword ptr [eax],esi
 004355BD    mov         ebx,esi
 004355BF    dec         ebx
 004355C0    test        ebx,ebx
>004355C2    jl          004355DC
 004355C4    inc         ebx
 004355C5    xor         esi,esi
 004355C7    mov         edi,dword ptr [ebp-4]
 004355CA    mov         eax,dword ptr [ebp-8]
 004355CD    lea         edx,[eax+esi*8]
 004355D0    xor         ecx,ecx
 004355D2    mov         eax,dword ptr [edi+0C]
 004355D5    call        dword ptr [edi+8]
 004355D8    inc         esi
 004355D9    dec         ebx
>004355DA    jne         004355C7
 004355DC    pop         edi
 004355DD    pop         esi
 004355DE    pop         ebx
 004355DF    pop         ecx
 004355E0    pop         ecx
 004355E1    pop         ebp
 004355E2    ret         4
end;*}

//004355E8
{*procedure sub_004355E8(?:Integer; ?:Integer; ?:?);
begin
 004355E8    push        ebx
 004355E9    push        esi
 004355EA    push        edi
 004355EB    push        ecx
 004355EC    mov         ebx,ecx
 004355EE    mov         dword ptr [esp],eax
 004355F1    cmp         ebx,edx
>004355F3    je          00435681
 004355F9    test        ebx,ebx
>004355FB    jl          00435604
 004355FD    mov         eax,dword ptr [esp]
 00435600    cmp         ebx,dword ptr [eax]
>00435602    jl          0043561B
 00435604    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 0043560A    mov         dl,1
 0043560C    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435611    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 00435616    call        @RaiseExcept
 0043561B    mov         eax,dword ptr [esp]
 0043561E    add         eax,18
 00435621    mov         eax,dword ptr [eax]
 00435623    mov         esi,dword ptr [eax+edx*4]
 00435626    cmp         ebx,edx
>00435628    jle         00435652
 0043562A    mov         eax,ebx
 0043562C    sub         eax,edx
 0043562E    mov         ecx,eax
 00435630    add         ecx,ecx
 00435632    add         ecx,ecx
 00435634    mov         eax,dword ptr [esp]
 00435637    add         eax,18
 0043563A    mov         eax,dword ptr [eax]
 0043563C    lea         eax,[eax+edx*4+4]
 00435640    mov         edi,dword ptr [esp]
 00435643    add         edi,18
 00435646    mov         edi,dword ptr [edi]
 00435648    lea         edx,[edi+edx*4]
 0043564B    call        Move
>00435650    jmp         00435676
 00435652    sub         edx,ebx
 00435654    mov         ecx,edx
 00435656    add         ecx,ecx
 00435658    add         ecx,ecx
 0043565A    mov         eax,dword ptr [esp]
 0043565D    add         eax,18
 00435660    mov         eax,dword ptr [eax]
 00435662    lea         eax,[eax+ebx*4]
 00435665    mov         edx,dword ptr [esp]
 00435668    add         edx,18
 0043566B    mov         edx,dword ptr [edx]
 0043566D    lea         edx,[edx+ebx*4+4]
 00435671    call        Move
 00435676    mov         eax,dword ptr [esp]
 00435679    add         eax,18
 0043567C    mov         eax,dword ptr [eax]
 0043567E    mov         dword ptr [eax+ebx*4],esi
 00435681    pop         edx
 00435682    pop         edi
 00435683    pop         esi
 00435684    pop         ebx
 00435685    ret
end;*}

//00435688
{*procedure sub_00435688(?:?; ?:?);
begin
 00435688    push        ebx
 00435689    push        esi
 0043568A    push        edi
 0043568B    push        ebp
 0043568C    add         esp,0FFFFFFF8
 0043568F    mov         ebp,edx
 00435691    mov         dword ptr [esp],eax
 00435694    mov         eax,dword ptr [esp]
 00435697    cmp         dword ptr [eax],0
>0043569A    je          00435764
 004356A0    mov         eax,dword ptr [esp]
 004356A3    mov         eax,dword ptr [eax+4]
 004356A6    mov         edx,eax
 004356A8    movzx       eax,byte ptr [eax+1]
 004356AC    add         edx,eax
 004356AE    mov         edi,dword ptr [edx+2]
 004356B1    xor         eax,eax
 004356B3    mov         dword ptr [esp+4],eax
 004356B7    xor         ebx,ebx
>004356B9    jmp         004356BC
 004356BB    inc         ebx
 004356BC    mov         eax,dword ptr [esp]
 004356BF    cmp         ebx,dword ptr [eax]
>004356C1    jge         004356E0
 004356C3    mov         eax,dword ptr [esp]
 004356C6    call        00434530
 004356CB    mov         eax,dword ptr [eax]
 004356CD    mov         edx,ebx
 004356CF    imul        edx,edi
 004356D2    lea         edx,[eax+edx]
 004356D5    mov         eax,ebp
 004356D7    mov         ecx,dword ptr [eax]
 004356D9    call        dword ptr [ecx+0C]
 004356DC    test        al,al
>004356DE    jne         004356BB
 004356E0    mov         eax,dword ptr [esp]
 004356E3    cmp         ebx,dword ptr [eax]
>004356E5    jge         00435750
 004356E7    mov         esi,ebx
>004356E9    jmp         004356EC
 004356EB    inc         esi
 004356EC    mov         eax,dword ptr [esp]
 004356EF    cmp         esi,dword ptr [eax]
>004356F1    jge         00435710
 004356F3    mov         eax,dword ptr [esp]
 004356F6    call        00434530
 004356FB    mov         eax,dword ptr [eax]
 004356FD    mov         edx,esi
 004356FF    imul        edx,edi
 00435702    lea         edx,[eax+edx]
 00435705    mov         eax,ebp
 00435707    mov         ecx,dword ptr [eax]
 00435709    call        dword ptr [ecx+0C]
 0043570C    test        al,al
>0043570E    je          004356EB
 00435710    dec         esi
 00435711    cmp         ebx,dword ptr [esp+4]
>00435715    jle         00435744
 00435717    mov         eax,dword ptr [esp+4]
 0043571B    imul        edi
 0043571D    mov         edx,dword ptr [esp]
 00435720    add         edx,18
 00435723    mov         edx,dword ptr [edx]
 00435725    add         edx,eax
 00435727    mov         eax,ebx
 00435729    imul        eax,edi
 0043572C    mov         ecx,dword ptr [esp]
 0043572F    add         ecx,18
 00435732    mov         ecx,dword ptr [ecx]
 00435734    lea         eax,[ecx+eax]
 00435737    mov         ecx,esi
 00435739    sub         ecx,ebx
 0043573B    inc         ecx
 0043573C    imul        ecx,edi
 0043573F    call        Move
 00435744    mov         eax,esi
 00435746    sub         eax,ebx
 00435748    inc         eax
 00435749    add         dword ptr [esp+4],eax
 0043574D    lea         ebx,[esi+1]
 00435750    mov         eax,dword ptr [esp]
 00435753    cmp         ebx,dword ptr [eax]
>00435755    jl          004356BC
 0043575B    mov         eax,dword ptr [esp]
 0043575E    mov         edx,dword ptr [esp+4]
 00435762    mov         dword ptr [eax],edx
 00435764    pop         ecx
 00435765    pop         edx
 00435766    pop         ebp
 00435767    pop         edi
 00435768    pop         esi
 00435769    pop         ebx
 0043576A    ret
end;*}

//0043576C
procedure sub_0043576C;
begin
{*
 0043576C    call        00435688
 00435771    ret
*}
end;

//00435774
{*procedure sub_00435774(?:?; ?:?);
begin
 00435774    add         esp,0FFFFFFF8
 00435777    mov         dword ptr [esp+4],edx
 0043577B    mov         dword ptr [esp],eax
 0043577E    lea         eax,[esp+4]
 00435782    push        eax
 00435783    mov         edx,dword ptr [esp+4]
 00435787    mov         edx,dword ptr [edx+4]
 0043578A    mov         eax,dword ptr [esp+4]
 0043578E    add         eax,18
 00435791    mov         ecx,1
 00435796    call        DynArraySetLength
 0043579B    pop         ecx
 0043579C    pop         edx
 0043579D    ret
end;*}

//004357A0
{*procedure sub_004357A0(?:?; ?:?);
begin
 004357A0    push        ebx
 004357A1    push        ecx
 004357A2    mov         ebx,edx
 004357A4    mov         dword ptr [esp],eax
 004357A7    test        ebx,ebx
>004357A9    jge         004357C2
 004357AB    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004357B1    mov         dl,1
 004357B3    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004357B8    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004357BD    call        @RaiseExcept
 004357C2    mov         eax,dword ptr [esp]
 004357C5    add         eax,18
 004357C8    mov         eax,dword ptr [eax]
 004357CA    test        eax,eax
>004357CC    je          004357D3
 004357CE    sub         eax,4
 004357D1    mov         eax,dword ptr [eax]
 004357D3    cmp         eax,ebx
>004357D5    jge         004357E1
 004357D7    mov         eax,dword ptr [esp]
 004357DA    mov         edx,ebx
 004357DC    call        00435774
 004357E1    mov         eax,dword ptr [esp]
 004357E4    mov         eax,dword ptr [eax]
 004357E6    cmp         ebx,eax
>004357E8    jge         004357F8
 004357EA    mov         ecx,eax
 004357EC    sub         ecx,ebx
 004357EE    mov         eax,dword ptr [esp]
 004357F1    mov         edx,ebx
 004357F3    call        00434A74
 004357F8    mov         eax,dword ptr [esp]
 004357FB    mov         dword ptr [eax],ebx
 004357FD    pop         edx
 004357FE    pop         ebx
 004357FF    ret
end;*}

//00435800
{*procedure sub_00435800(?:?; ?:?);
begin
 00435800    push        ebx
 00435801    push        ecx
 00435802    mov         ebx,edx
 00435804    mov         dword ptr [esp],eax
 00435807    test        ebx,ebx
>00435809    jge         00435822
 0043580B    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00435811    mov         dl,1
 00435813    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435818    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 0043581D    call        @RaiseExcept
 00435822    mov         eax,dword ptr [esp]
 00435825    add         eax,18
 00435828    mov         eax,dword ptr [eax]
 0043582A    test        eax,eax
>0043582C    je          00435833
 0043582E    sub         eax,4
 00435831    mov         eax,dword ptr [eax]
 00435833    cmp         eax,ebx
>00435835    jge         00435841
 00435837    mov         eax,dword ptr [esp]
 0043583A    mov         edx,ebx
 0043583C    call        00435774
 00435841    mov         eax,dword ptr [esp]
 00435844    mov         eax,dword ptr [eax]
 00435846    cmp         ebx,eax
>00435848    jge         00435858
 0043584A    mov         ecx,eax
 0043584C    sub         ecx,ebx
 0043584E    mov         eax,dword ptr [esp]
 00435851    mov         edx,ebx
 00435853    call        00434C00
 00435858    mov         eax,dword ptr [esp]
 0043585B    mov         dword ptr [eax],ebx
 0043585D    pop         edx
 0043585E    pop         ebx
 0043585F    ret
end;*}

//00435860
{*procedure sub_00435860(?:?; ?:?);
begin
 00435860    push        ebx
 00435861    push        ecx
 00435862    mov         ebx,edx
 00435864    mov         dword ptr [esp],eax
 00435867    test        ebx,ebx
>00435869    jge         00435882
 0043586B    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00435871    mov         dl,1
 00435873    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435878    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 0043587D    call        @RaiseExcept
 00435882    mov         eax,dword ptr [esp]
 00435885    add         eax,18
 00435888    mov         eax,dword ptr [eax]
 0043588A    test        eax,eax
>0043588C    je          00435893
 0043588E    sub         eax,4
 00435891    mov         eax,dword ptr [eax]
 00435893    cmp         eax,ebx
>00435895    jge         004358A1
 00435897    mov         eax,dword ptr [esp]
 0043589A    mov         edx,ebx
 0043589C    call        00435774
 004358A1    mov         eax,dword ptr [esp]
 004358A4    mov         eax,dword ptr [eax]
 004358A6    cmp         ebx,eax
>004358A8    jge         004358B8
 004358AA    mov         ecx,eax
 004358AC    sub         ecx,ebx
 004358AE    mov         eax,dword ptr [esp]
 004358B1    mov         edx,ebx
 004358B3    call        00434D48
 004358B8    mov         eax,dword ptr [esp]
 004358BB    mov         dword ptr [eax],ebx
 004358BD    pop         edx
 004358BE    pop         ebx
 004358BF    ret
end;*}

//004358C0
{*procedure sub_004358C0(?:Integer; ?:?);
begin
 004358C0    push        ebx
 004358C1    push        ecx
 004358C2    mov         ebx,edx
 004358C4    mov         dword ptr [esp],eax
 004358C7    test        ebx,ebx
>004358C9    jge         004358E2
 004358CB    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 004358D1    mov         dl,1
 004358D3    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004358D8    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004358DD    call        @RaiseExcept
 004358E2    mov         eax,dword ptr [esp]
 004358E5    add         eax,18
 004358E8    mov         eax,dword ptr [eax]
 004358EA    test        eax,eax
>004358EC    je          004358F3
 004358EE    sub         eax,4
 004358F1    mov         eax,dword ptr [eax]
 004358F3    cmp         eax,ebx
>004358F5    jge         00435901
 004358F7    mov         eax,dword ptr [esp]
 004358FA    mov         edx,ebx
 004358FC    call        00435774
 00435901    mov         eax,dword ptr [esp]
 00435904    mov         eax,dword ptr [eax]
 00435906    cmp         ebx,eax
>00435908    jge         00435918
 0043590A    mov         ecx,eax
 0043590C    sub         ecx,ebx
 0043590E    mov         eax,dword ptr [esp]
 00435911    mov         edx,ebx
 00435913    call        00434F14
 00435918    mov         eax,dword ptr [esp]
 0043591B    mov         dword ptr [eax],ebx
 0043591D    pop         edx
 0043591E    pop         ebx
 0043591F    ret
end;*}

//00435920
{*procedure sub_00435920(?:?; ?:?);
begin
 00435920    push        ebx
 00435921    push        ecx
 00435922    mov         ebx,edx
 00435924    mov         dword ptr [esp],eax
 00435927    test        ebx,ebx
>00435929    jge         00435942
 0043592B    mov         ecx,dword ptr ds:[7C4C2C];^SResString172:TResStringRec
 00435931    mov         dl,1
 00435933    mov         eax,[00417CF0];EArgumentOutOfRangeException
 00435938    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 0043593D    call        @RaiseExcept
 00435942    mov         eax,dword ptr [esp]
 00435945    add         eax,18
 00435948    mov         eax,dword ptr [eax]
 0043594A    test        eax,eax
>0043594C    je          00435953
 0043594E    sub         eax,4
 00435951    mov         eax,dword ptr [eax]
 00435953    cmp         eax,ebx
>00435955    jge         00435961
 00435957    mov         eax,dword ptr [esp]
 0043595A    mov         edx,ebx
 0043595C    call        00435774
 00435961    mov         eax,dword ptr [esp]
 00435964    mov         eax,dword ptr [eax]
 00435966    cmp         ebx,eax
>00435968    jge         00435978
 0043596A    mov         ecx,eax
 0043596C    sub         ecx,ebx
 0043596E    mov         eax,dword ptr [esp]
 00435971    mov         edx,ebx
 00435973    call        004350A0
 00435978    mov         eax,dword ptr [esp]
 0043597B    mov         dword ptr [eax],ebx
 0043597D    pop         edx
 0043597E    pop         ebx
 0043597F    ret
end;*}

//00435980
{*procedure sub_00435980(?:?; ?:?);
begin
 00435980    push        ebx
 00435981    add         esp,0FFFFFFF8
 00435984    mov         ebx,edx
 00435986    mov         dword ptr [esp],eax
 00435989    mov         eax,dword ptr [esp]
 0043598C    mov         eax,dword ptr [eax]
 0043598E    mov         dword ptr [esp+4],eax
 00435992    lea         eax,[esp+4]
 00435996    push        eax
 00435997    mov         edx,dword ptr [esp+4]
 0043599B    mov         edx,dword ptr [edx+4]
 0043599E    mov         eax,ebx
 004359A0    mov         ecx,1
 004359A5    call        DynArraySetLength
 004359AA    mov         eax,dword ptr [esp]
 004359AD    mov         eax,dword ptr [eax+4]
 004359B0    mov         edx,eax
 004359B2    movzx       eax,byte ptr [eax+1]
 004359B6    add         edx,eax
 004359B8    mov         ecx,dword ptr [edx+2]
 004359BB    imul        ecx,dword ptr [esp+4]
 004359C0    mov         edx,dword ptr [ebx]
 004359C2    mov         eax,dword ptr [esp]
 004359C5    add         eax,18
 004359C8    mov         eax,dword ptr [eax]
 004359CA    call        Move
 004359CF    pop         ecx
 004359D0    pop         edx
 004359D1    pop         ebx
 004359D2    ret
end;*}

//004359D4
{*procedure sub_004359D4(?:?; ?:?);
begin
 004359D4    push        ebx
 004359D5    add         esp,0FFFFFFF8
 004359D8    mov         ebx,edx
 004359DA    mov         dword ptr [esp],eax
 004359DD    mov         eax,dword ptr [esp]
 004359E0    mov         eax,dword ptr [eax]
 004359E2    mov         dword ptr [esp+4],eax
 004359E6    lea         eax,[esp+4]
 004359EA    push        eax
 004359EB    mov         edx,dword ptr [esp+4]
 004359EF    mov         edx,dword ptr [edx+4]
 004359F2    mov         eax,ebx
 004359F4    mov         ecx,1
 004359F9    call        DynArraySetLength
 004359FE    mov         edx,dword ptr [esp+4]
 00435A02    push        edx
 00435A03    mov         eax,dword ptr [esp+4]
 00435A07    mov         eax,dword ptr [eax+4]
 00435A0A    mov         edx,eax
 00435A0C    movzx       eax,byte ptr [eax+1]
 00435A10    add         edx,eax
 00435A12    mov         eax,dword ptr [edx+6]
 00435A15    mov         ecx,dword ptr [eax]
 00435A17    mov         eax,dword ptr [esp+4]
 00435A1B    add         eax,18
 00435A1E    mov         edx,dword ptr [eax]
 00435A20    mov         eax,dword ptr [ebx]
 00435A22    call        CopyArray
 00435A27    pop         ecx
 00435A28    pop         edx
 00435A29    pop         ebx
 00435A2A    ret
end;*}

end.