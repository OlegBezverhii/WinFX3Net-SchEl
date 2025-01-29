//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit62;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//0053ADA8
    procedure CreateParams(var Params:TCreateParams);//0053AE78
    procedure CreateWnd;//0053AFA4
    procedure sub_0053B270;//0053B270
    procedure CMColorChanged(var Message:Messages.TMessage);//0053B5F0
    procedure CMCtl3DChanged;//0053B62C
    procedure CMFontChanged;//0053B648
    procedure CMSysColorChange;//0053B688
    procedure AlphaSort(ARecurse:Boolean);//0053B6A4
    function CustomSort(SortProc:PFNTVCOMPARE; Data:NativeInt; ARecurse:Boolean):Boolean;//0053B6B0
    procedure SetAutoExpand(Value:Boolean);//0053B76C
    procedure SetHotTrack(Value:Boolean);//0053B788
    procedure SetRowSelect(Value:Boolean);//0053B7A4
    procedure SetToolTips(Value:Boolean);//0053B7C0
    procedure SetSortType(Value:TSortType);//0053B7E0
    procedure SetBorderStyle(Value:TBorderStyle);//0053B81C
    procedure SetDragMode(Value:TDragMode);//0053B830
    procedure SetShowButtons(Value:Boolean);//0053B860
    procedure SetShowLines(Value:Boolean);//0053B87C
    procedure SetShowRoot(Value:Boolean);//0053B898
    procedure SetReadOnly(Value:Boolean);//0053B8B4
    procedure SetHideSelection(Value:Boolean);//0053B8D4
    function GetNodeAt(X:Integer; Y:Integer):TTreeNode;//0053B904
    procedure GetHitTestInfoAt(X:Integer; Y:Integer);//0053B948
    procedure SetItems(Value:TTreeNodes);//0053BA04
    procedure SetIndent(Value:Integer);//0053BA10
    //function GetIndent:?;//0053BA3C
    procedure FullExpand;//0053BA58
    procedure FullCollapse;//0053BA84
    procedure CMFontChanged(var Message:TMessage);//0053BAB0
    //function sub_0053BACC(?:TCustomTreeView):?;//0053BACC
    procedure sub_0053BAFC(?:TCustomTreeView; ?:TTreeNode);//0053BAFC
    //function sub_0053BB4C(?:TObject):?;//0053BB4C
    procedure sub_0053BB94(?:TCustomTreeView; ?:TTreeNode);//0053BB94
    procedure SetChangeDelay(Value:Integer);//0053BBB8
    //function GetChangeDelay:?;//0053BBC4
    //function sub_0053BBD0(?:TCustomTreeView):?;//0053BBD0
    //procedure sub_0053BC08(?:TCustomTreeView; ?:?);//0053BC08
    //function sub_0053BC3C(?:TCustomTreeView; ?:Byte):?;//0053BC3C
    //procedure sub_004E5F1C(?:?);//0053BC64
    //procedure sub_0053BCAC(?:?);//0053BCAC
    function GetDragImages:TDragImageList;//0053C82C
    //procedure sub_0053C84C(?:?);//0053C84C
    //procedure sub_004E7840(?:?);//0053C8DC
    //procedure sub_004E7880(?:?; ?:?);//0053C974
    procedure CMDrag(Message:TCMDrag);//0053C994
    //procedure sub_0053CA1C(?:TCustomTreeView; ?:?; ?:?; ?:?);//0053CA1C
    //procedure sub_0053CA78(?:?);//0053CA78
    //procedure sub_0053CA98(?:?);//0053CA98
    //procedure sub_0053CAB8(?:?);//0053CAB8
    //procedure sub_0053CAF4(?:?);//0053CAF4
    //procedure sub_0053CB54(?:?);//0053CB54
    //procedure sub_0053CB7C(?:?);//0053CB7C
    //procedure sub_0053CBA4(?:?);//0053CBA4
    //procedure sub_0053CBCC(?:?);//0053CBCC
    //procedure sub_0053CC00(?:?);//0053CC00
    //procedure sub_0053CC20(?:?);//0053CC20
    //procedure sub_0053CC4C(?:?);//0053CC4C
    //procedure sub_0053CC78(?:?);//0053CC78
    procedure sub_0053CD28;//0053CD28
    procedure sub_0053CD60;//0053CD60
    //function sub_0053CD70(?:TCustomTreeView; ?:HIMAGELIST; ?:?):?;//0053CD70
    //procedure sub_0053CDA0(?:?; ?:?);//0053CDA0
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0053CDFC
    procedure SetImages(Value:TCustomImageList);//0053CE3C
    procedure SetStateImages(Value:TCustomImageList);//0053CEA4
    //procedure WMContextMenu(?:?);//0053CF10
    //procedure WMCtlColorEdit(?:?);//0053CFD8
    //procedure WMLButtonDown(?:?);//0053D02C
    procedure WMNotify(Message:Messages.TWMNotify);//0053D148
    //function sub_0053D370(?:?; ?:?):?;//0053D370
    //function sub_0053D410(?:?; ?:?):?;//0053D410
    //function sub_0053D468(?:?; ?:?; ?:?; ?:?):?;//0053D468
    procedure ClearSelection(KeepPrimary:Boolean);//0053D4E4
    procedure sub_0053D51C(?:TCustomTreeView; ?:TTreeNode);//0053D51C
    //function sub_0053D580(?:TCustomTreeView):?;//0053D580
    procedure DoExit;//0053D59C
    procedure sub_004EE488;//0053D5B0
    //procedure sub_0053D5C4(?:TCustomTreeView; ?:TTreeNode; ?:?);//0053D5C4
    //function sub_0053D7AC(?:TCustomTreeView):?;//0053D7AC
    function GetSelection(Index:Integer):TTreeNode;//0053D7B8
    procedure sub_0053D7D0(?:TCustomTreeView);//0053D7D0
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?);//0053D81C
    procedure sub_0053D88C(?:TCustomTreeView; ?:Integer);//0053D88C
    //procedure sub_0053D8B4(?:TCustomTreeView; ?:Pointer; ?:?);//0053D8B4
    procedure Select(Node:TTreeNode; ShiftState:TShiftState);//0053D8DC
    //procedure sub_0053D904(?:TCustomTreeView; ?:?);//0053D904
    procedure SetMultiSelect(Value:Boolean);//0053D97C
    procedure SetMultiSelectStyle(Value:TMultiSelectStyle);//0053D9B0
    //procedure sub_0053D9D8(?:TCustomTreeView; ?:?; ?:?; ?:?);//0053D9D8
    procedure Subselect(Node:TTreeNode; Validate:Boolean);//0053DBB8
    procedure sub_0053DC54(?:TCustomTreeView);//0053DC54
    //procedure Select(Nodes:TTreeNode; ?:?);//0053DD00
    procedure Select(Nodes:TList);//0053DD78
    procedure Deselect(Node:TTreeNode);//0053DF04
    //function sub_0053DF28(?:TTreeNode; ?:?):Boolean;//0053DF28
    //function sub_0053DF58(?:TTreeNode; ?:?):?;//0053DF58
    function FindNextToSelect:TTreeNode;//0053DFC0
    function GetSelections(AList:TList):TTreeNode;//0053E04C

implementation

//0053ADA8
destructor TCustomTreeView.Destroy();
begin
{*
 0053ADA8    push        ebx
 0053ADA9    push        esi
 0053ADAA    push        edi
 0053ADAB    call        @BeforeDestruction
 0053ADB0    mov         ebx,edx
 0053ADB2    mov         edi,eax
 0053ADB4    mov         eax,dword ptr [edi+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053ADBA    call        TObject.Free
 0053ADBF    xor         eax,eax
 0053ADC1    mov         dword ptr [edi+2F8],eax;TCustomTreeView.FTreeNodes:TTreeNodes
 0053ADC7    mov         eax,dword ptr [edi+308];TCustomTreeView.FSaveIndexes:TList
 0053ADCD    call        TObject.Free
 0053ADD2    mov         eax,dword ptr [edi+304];TCustomTreeView.FSelections:TList
 0053ADD8    call        TObject.Free
 0053ADDD    mov         eax,dword ptr [edi+3C8];TCustomTreeView.FChangeTimer:TTimer
 0053ADE3    call        TObject.Free
 0053ADE8    mov         eax,dword ptr [edi+2DC];TCustomTreeView.FSaveItems:TStringList
 0053ADEE    call        TObject.Free
 0053ADF3    mov         eax,dword ptr [edi+2A8];TCustomTreeView.FDragImage:TDragImageList
 0053ADF9    call        TObject.Free
 0053ADFE    mov         eax,dword ptr [edi+2C8];TCustomTreeView.FMemStream:TMemoryStream
 0053AE04    call        TObject.Free
 0053AE09    mov         eax,dword ptr [edi+2A0];TCustomTreeView.FEditInstance:Pointer
 0053AE0F    call        FreeObjectInstance
 0053AE14    mov         eax,dword ptr [edi+2B8];TCustomTreeView.FImageChangeLink:TChangeLink
 0053AE1A    call        TObject.Free
 0053AE1F    mov         eax,dword ptr [edi+2F0];TCustomTreeView.FStateChangeLink:TChangeLink
 0053AE25    call        TObject.Free
 0053AE2A    mov         eax,dword ptr [edi+294];TCustomTreeView.FCanvas:TCanvas
 0053AE30    call        TObject.Free
 0053AE35    xor         eax,eax
 0053AE37    mov         dword ptr [edi+294],eax;TCustomTreeView.FCanvas:TCanvas
 0053AE3D    mov         esi,dword ptr [edi+320];TCustomTreeView.FEncoding:TEncoding
 0053AE43    test        esi,esi
>0053AE45    je          0053AE5D
 0053AE47    mov         eax,esi
 0053AE49    call        TEncoding.IsStandardEncoding
 0053AE4E    test        al,al
>0053AE50    jne         0053AE5D
 0053AE52    mov         eax,dword ptr [edi+320];TCustomTreeView.FEncoding:TEncoding
 0053AE58    call        TObject.Free
 0053AE5D    mov         dl,0FC
 0053AE5F    and         dl,bl
 0053AE61    mov         eax,edi
 0053AE63    call        TWinControl.Destroy
 0053AE68    test        bl,bl
>0053AE6A    jle         0053AE73
 0053AE6C    mov         eax,edi
 0053AE6E    call        @ClassDestroy
 0053AE73    pop         edi
 0053AE74    pop         esi
 0053AE75    pop         ebx
 0053AE76    ret
*}
end;

//0053AE78
procedure TCustomTreeView.CreateParams(var Params:TCreateParams);
begin
{*
 0053AE78    push        ebx
 0053AE79    push        esi
 0053AE7A    push        edi
 0053AE7B    mov         esi,edx
 0053AE7D    mov         ebx,eax
 0053AE7F    mov         eax,2
 0053AE84    call        InitCommonControl
 0053AE89    mov         edx,esi
 0053AE8B    mov         eax,ebx
 0053AE8D    call        TWinControl.CreateParams
 0053AE92    mov         ecx,53AF88;'S'
 0053AE97    mov         edx,esi
 0053AE99    mov         eax,ebx
 0053AE9B    call        TWinControl.CreateSubClass
 0053AEA0    mov         eax,ebx
 0053AEA2    call        TGroupBox.GetDragMode
 0053AEA7    and         eax,7F
 0053AEAA    mov         edi,dword ptr [eax*4+7A15B0]
 0053AEB1    mov         eax,dword ptr [esi+4];TCreateParams.Style:DWORD
 0053AEB4    movzx       edx,byte ptr [ebx+2E5];TCustomTreeView.FShowLines:Boolean
 0053AEBB    or          eax,dword ptr [edx*4+7A1588]
 0053AEC2    movzx       edx,byte ptr [ebx+291];TCustomTreeView.FBorderStyle:TBorderStyle
 0053AEC9    or          eax,dword ptr [edx*4+7A1580]
 0053AED0    movzx       edx,byte ptr [ebx+2E6];TCustomTreeView.FShowRoot:Boolean
 0053AED7    or          eax,dword ptr [edx*4+7A1590]
 0053AEDE    movzx       edx,byte ptr [ebx+2E4];TCustomTreeView.FShowButtons:Boolean
 0053AEE5    or          eax,dword ptr [edx*4+7A1598]
 0053AEEC    movzx       edx,byte ptr [ebx+2D2];TCustomTreeView.FReadOnly:Boolean
 0053AEF3    or          eax,dword ptr [edx*4+7A15A0]
 0053AEFA    movzx       edx,byte ptr [ebx+2B4];TCustomTreeView.FHideSelection:Boolean
 0053AF01    or          eax,dword ptr [edx*4+7A15A8]
 0053AF08    or          edi,eax
 0053AF0A    mov         eax,ebx
 0053AF0C    call        TControl.UseRightToLeftReading
 0053AF11    and         eax,7F
 0053AF14    or          edi,dword ptr [eax*4+7A15B8]
 0053AF1B    movzx       eax,byte ptr [ebx+2F4];TCustomTreeView.FToolTips:Boolean
 0053AF22    or          edi,dword ptr [eax*4+7A15C0]
 0053AF29    movzx       eax,byte ptr [ebx+290];TCustomTreeView.FAutoExpand:Boolean
 0053AF30    or          edi,dword ptr [eax*4+7A15C8]
 0053AF37    movzx       eax,byte ptr [ebx+2B5];TCustomTreeView.FHotTrack:Boolean
 0053AF3E    or          edi,dword ptr [eax*4+7A15D0]
 0053AF45    movzx       eax,byte ptr [ebx+2D3];TCustomTreeView.FRowSelect:Boolean
 0053AF4C    or          edi,dword ptr [eax*4+7A15D8]
 0053AF53    mov         dword ptr [esi+4],edi;TCreateParams.Style:DWORD
 0053AF56    cmp         byte ptr [ebx+204],0;TCustomTreeView.FCtl3D:Boolean
>0053AF5D    je          0053AF80
 0053AF5F    mov         eax,[007C4770];^gvar_007CA5E0
 0053AF64    cmp         byte ptr [eax],0
>0053AF67    je          0053AF80
 0053AF69    cmp         byte ptr [ebx+291],1;TCustomTreeView.FBorderStyle:TBorderStyle
>0053AF70    jne         0053AF80
 0053AF72    and         dword ptr [esi+4],0FF7FFFFF;TCreateParams.Style:DWORD
 0053AF79    or          dword ptr [esi+8],200;TCreateParams.ExStyle:DWORD
 0053AF80    and         dword ptr [esi+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 0053AF84    pop         edi
 0053AF85    pop         esi
 0053AF86    pop         ebx
 0053AF87    ret
*}
end;

//0053AFA4
procedure TCustomTreeView.CreateWnd;
begin
{*
 0053AFA4    push        ebp
 0053AFA5    mov         ebp,esp
 0053AFA7    add         esp,0FFFFFFF4
 0053AFAA    push        ebx
 0053AFAB    push        esi
 0053AFAC    mov         dword ptr [ebp-4],eax
 0053AFAF    mov         eax,dword ptr [ebp-4]
 0053AFB2    mov         byte ptr [eax+2E8],0;TCustomTreeView.FStateChanging:Boolean
 0053AFB9    mov         eax,dword ptr [ebp-4]
 0053AFBC    call        TWinControl.CreateWnd
 0053AFC1    mov         eax,dword ptr [ebp-4]
 0053AFC4    call        TWinControl.GetHandle
 0053AFC9    mov         ebx,eax
 0053AFCB    mov         eax,dword ptr [ebp-4]
 0053AFCE    mov         eax,dword ptr [eax+7C];TCustomTreeView.FColor:TColor
 0053AFD1    call        ColorToRGB
 0053AFD6    mov         esi,eax
 0053AFD8    push        esi
 0053AFD9    push        0
 0053AFDB    push        111D
 0053AFE0    push        ebx
 0053AFE1    call        user32.SendMessageW
 0053AFE6    mov         eax,dword ptr [ebp-4]
 0053AFE9    call        TWinControl.GetHandle
 0053AFEE    mov         ebx,eax
 0053AFF0    mov         eax,dword ptr [ebp-4]
 0053AFF3    mov         eax,dword ptr [eax+74];TCustomTreeView.FFont:TFont
 0053AFF6    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 0053AFF9    call        ColorToRGB
 0053AFFE    mov         esi,eax
 0053B000    push        esi
 0053B001    push        0
 0053B003    push        111E
 0053B008    push        ebx
 0053B009    call        user32.SendMessageW
 0053B00E    mov         eax,dword ptr [ebp-4]
 0053B011    cmp         dword ptr [eax+2C8],0;TCustomTreeView.FMemStream:TMemoryStream
>0053B018    je          0053B18E
 0053B01E    mov         eax,dword ptr [ebp-4]
 0053B021    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B027    call        TTreeNodes.BeginUpdate
 0053B02C    xor         edx,edx
 0053B02E    push        ebp
 0053B02F    push        53B187
 0053B034    push        dword ptr fs:[edx]
 0053B037    mov         dword ptr fs:[edx],esp
 0053B03A    mov         eax,dword ptr [ebp-4]
 0053B03D    mov         edx,dword ptr [eax+2C8];TCustomTreeView.FMemStream:TMemoryStream
 0053B043    mov         eax,dword ptr [ebp-4]
 0053B046    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B04C    call        0053A940
 0053B051    mov         eax,dword ptr [ebp-4]
 0053B054    mov         edx,dword ptr [eax+2C8];TCustomTreeView.FMemStream:TMemoryStream
 0053B05A    mov         eax,dword ptr [ebp-4]
 0053B05D    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B063    call        0053AABC
 0053B068    mov         eax,dword ptr [ebp-4]
 0053B06B    add         eax,2C8;TCustomTreeView.FMemStream:TMemoryStream
 0053B070    mov         dword ptr [ebp-8],eax
 0053B073    mov         eax,dword ptr [ebp-8]
 0053B076    mov         eax,dword ptr [eax]
 0053B078    mov         edx,dword ptr [ebp-8]
 0053B07B    xor         ecx,ecx
 0053B07D    mov         dword ptr [edx],ecx
 0053B07F    call        TObject.Free
 0053B084    mov         eax,dword ptr [ebp-4]
 0053B087    mov         edx,dword ptr [eax+2E0];TCustomTreeView.FSaveTopIndex:Integer
 0053B08D    mov         eax,dword ptr [ebp-4]
 0053B090    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B096    call        TTreeNodes.GetNodeFromIndex
 0053B09B    mov         edx,eax
 0053B09D    mov         eax,dword ptr [ebp-4]
 0053B0A0    call        0053BAFC
 0053B0A5    mov         eax,dword ptr [ebp-4]
 0053B0A8    xor         edx,edx
 0053B0AA    mov         dword ptr [eax+2E0],edx;TCustomTreeView.FSaveTopIndex:Integer
 0053B0B0    mov         eax,dword ptr [ebp-4]
 0053B0B3    mov         eax,dword ptr [eax+308];TCustomTreeView.FSaveIndexes:TList
 0053B0B9    test        eax,eax
>0053B0BB    je          0053B136
 0053B0BD    mov         ebx,dword ptr [eax+8];TList.FCount:Integer
 0053B0C0    dec         ebx
 0053B0C1    test        ebx,ebx
>0053B0C3    jl          0053B0FC
 0053B0C5    inc         ebx
 0053B0C6    xor         esi,esi
 0053B0C8    mov         eax,dword ptr [ebp-4]
 0053B0CB    mov         eax,dword ptr [eax+308];TCustomTreeView.FSaveIndexes:TList
 0053B0D1    mov         edx,esi
 0053B0D3    call        TList.Get
 0053B0D8    mov         edx,eax
 0053B0DA    mov         eax,dword ptr [ebp-4]
 0053B0DD    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B0E3    call        TTreeNodes.GetNodeFromIndex
 0053B0E8    mov         edx,eax
 0053B0EA    mov         eax,dword ptr [ebp-4]
 0053B0ED    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053B0F3    call        TList.Add
 0053B0F8    inc         esi
 0053B0F9    dec         ebx
>0053B0FA    jne         0053B0C8
 0053B0FC    mov         eax,dword ptr [ebp-4]
 0053B0FF    add         eax,308;TCustomTreeView.FSaveIndexes:TList
 0053B104    mov         dword ptr [ebp-0C],eax
 0053B107    mov         eax,dword ptr [ebp-0C]
 0053B10A    mov         eax,dword ptr [eax]
 0053B10C    mov         edx,dword ptr [ebp-0C]
 0053B10F    xor         ecx,ecx
 0053B111    mov         dword ptr [edx],ecx
 0053B113    call        TObject.Free
 0053B118    mov         eax,dword ptr [ebp-4]
 0053B11B    call        0053DC54
 0053B120    xor         edx,edx
 0053B122    mov         eax,dword ptr [ebp-4]
 0053B125    call        TCustomTreeView.GetSelection
 0053B12A    mov         edx,eax
 0053B12C    mov         eax,dword ptr [ebp-4]
 0053B12F    call        0053BB94
>0053B134    jmp         0053B15E
 0053B136    mov         eax,dword ptr [ebp-4]
 0053B139    mov         ebx,dword ptr [eax+2D4];TCustomTreeView.FSaveIndex:Integer
 0053B13F    cmp         ebx,0FFFFFFFF
>0053B142    je          0053B15E
 0053B144    mov         edx,ebx
 0053B146    mov         eax,dword ptr [ebp-4]
 0053B149    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B14F    call        TTreeNodes.GetNodeFromIndex
 0053B154    mov         edx,eax
 0053B156    mov         eax,dword ptr [ebp-4]
 0053B159    call        0053BB94
 0053B15E    mov         eax,dword ptr [ebp-4]
 0053B161    mov         dword ptr [eax+2D4],0FFFFFFFF;TCustomTreeView.FSaveIndex:Integer
 0053B16B    xor         eax,eax
 0053B16D    pop         edx
 0053B16E    pop         ecx
 0053B16F    pop         ecx
 0053B170    mov         dword ptr fs:[eax],edx
 0053B173    push        53B18E
 0053B178    mov         eax,dword ptr [ebp-4]
 0053B17B    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B181    call        TTreeNodes.EndUpdate
 0053B186    ret
>0053B187    jmp         @HandleFinally
>0053B18C    jmp         0053B178
 0053B18E    mov         eax,dword ptr [ebp-4]
 0053B191    mov         eax,dword ptr [eax+2D8];TCustomTreeView.FSaveIndent:Integer
 0053B197    cmp         eax,0FFFFFFFF
>0053B19A    je          0053B1A6
 0053B19C    mov         edx,eax
 0053B19E    mov         eax,dword ptr [ebp-4]
 0053B1A1    call        TTreeView.SetIndent
 0053B1A6    mov         eax,dword ptr [ebp-4]
 0053B1A9    mov         ebx,dword ptr [eax+2BC];TCustomTreeView.FImages:TCustomImageList
 0053B1AF    test        ebx,ebx
>0053B1B1    je          0053B1D8
 0053B1B3    mov         eax,ebx
 0053B1B5    call        TCustomImageList.HandleAllocated
 0053B1BA    test        al,al
>0053B1BC    je          0053B1D8
 0053B1BE    mov         eax,dword ptr [ebp-4]
 0053B1C1    mov         eax,dword ptr [eax+2BC];TCustomTreeView.FImages:TCustomImageList
 0053B1C7    call        TCustomImageList.GetHandle
 0053B1CC    mov         edx,eax
 0053B1CE    xor         ecx,ecx
 0053B1D0    mov         eax,dword ptr [ebp-4]
 0053B1D3    call        0053CD70
 0053B1D8    mov         eax,dword ptr [ebp-4]
 0053B1DB    mov         ebx,dword ptr [eax+2EC];TCustomTreeView.FStateImages:TCustomImageList
 0053B1E1    test        ebx,ebx
>0053B1E3    je          0053B20D
 0053B1E5    mov         eax,ebx
 0053B1E7    call        TCustomImageList.HandleAllocated
 0053B1EC    test        al,al
>0053B1EE    je          0053B20D
 0053B1F0    mov         eax,dword ptr [ebp-4]
 0053B1F3    mov         eax,dword ptr [eax+2EC];TCustomTreeView.FStateImages:TCustomImageList
 0053B1F9    call        TCustomImageList.GetHandle
 0053B1FE    mov         edx,eax
 0053B200    mov         ecx,2
 0053B205    mov         eax,dword ptr [ebp-4]
 0053B208    call        0053CD70
 0053B20D    call        StyleServices
 0053B212    mov         edx,dword ptr [eax]
 0053B214    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0053B217    test        al,al
>0053B219    je          0053B228
 0053B21B    mov         eax,[007C4364];^gvar_007C7DC0
 0053B220    cmp         dword ptr [eax],6
 0053B223    setge       al
>0053B226    jmp         0053B22A
 0053B228    xor         eax,eax
 0053B22A    test        al,al
>0053B22C    je          0053B255
 0053B22E    call        StyleServices
 0053B233    call        TCustomStyleServices.GetIsSystemStyle
 0053B238    test        al,al
>0053B23A    je          0053B255
 0053B23C    push        0
 0053B23E    push        53B25C
 0053B243    mov         eax,dword ptr [ebp-4]
 0053B246    call        TWinControl.GetHandle
 0053B24B    push        eax
 0053B24C    mov         eax,[007C4EF0];^gvar_007CA554:Pointer
 0053B251    mov         eax,dword ptr [eax]
 0053B253    call        eax
 0053B255    pop         esi
 0053B256    pop         ebx
 0053B257    mov         esp,ebp
 0053B259    pop         ebp
 0053B25A    ret
*}
end;

//0053B270
procedure sub_0053B270;
begin
{*
 0053B270    push        ebp
 0053B271    mov         ebp,esp
 0053B273    push        ecx
 0053B274    push        ebx
 0053B275    push        esi
 0053B276    mov         dword ptr [ebp-4],eax
 0053B279    mov         eax,dword ptr [ebp-4]
 0053B27C    mov         byte ptr [eax+2E8],1;TCustomTreeView.FStateChanging:Boolean
 0053B283    mov         eax,dword ptr [ebp-4]
 0053B286    xor         edx,edx
 0053B288    mov         dword ptr [eax+2CC],edx;TCustomTreeView.FRClickNode:TTreeNode
 0053B28E    mov         eax,dword ptr [ebp-4]
 0053B291    xor         edx,edx
 0053B293    mov         dword ptr [eax+30C],edx;TCustomTreeView.FShiftAnchor:TTreeNode
 0053B299    mov         eax,dword ptr [ebp-4]
 0053B29C    cmp         byte ptr [eax+31C],0;TCustomTreeView.FCreateWndRestores:Boolean
>0053B2A3    je          0053B43A
 0053B2A9    mov         eax,dword ptr [ebp-4]
 0053B2AC    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B2B2    call        0053A124
 0053B2B7    test        eax,eax
>0053B2B9    jle         0053B43A
 0053B2BF    mov         eax,dword ptr [ebp-4]
 0053B2C2    test        byte ptr [eax+65],20;TCustomTreeView.FAlign:TAlign
>0053B2C6    je          0053B43A
 0053B2CC    mov         dl,1
 0053B2CE    mov         eax,[00472CE4];TMemoryStream
 0053B2D3    call        TObject.Create;TMemoryStream.Create
 0053B2D8    mov         ebx,eax
 0053B2DA    mov         eax,dword ptr [ebp-4]
 0053B2DD    mov         dword ptr [eax+2C8],ebx;TCustomTreeView.FMemStream:TMemoryStream
 0053B2E3    mov         edx,ebx
 0053B2E5    mov         eax,dword ptr [ebp-4]
 0053B2E8    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B2EE    call        0053AA44
 0053B2F3    mov         eax,dword ptr [ebp-4]
 0053B2F6    mov         edx,dword ptr [eax+2C8];TCustomTreeView.FMemStream:TMemoryStream
 0053B2FC    mov         eax,dword ptr [ebp-4]
 0053B2FF    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B305    call        0053AB38
 0053B30A    push        0
 0053B30C    push        0
 0053B30E    mov         eax,dword ptr [ebp-4]
 0053B311    mov         eax,dword ptr [eax+2C8];TCustomTreeView.FMemStream:TMemoryStream
 0053B317    call        TStream.SetPosition
 0053B31C    mov         eax,dword ptr [ebp-4]
 0053B31F    xor         edx,edx
 0053B321    mov         dword ptr [eax+2E0],edx;TCustomTreeView.FSaveTopIndex:Integer
 0053B327    mov         eax,dword ptr [ebp-4]
 0053B32A    mov         dword ptr [eax+2D4],0FFFFFFFF;TCustomTreeView.FSaveIndex:Integer
 0053B334    mov         eax,dword ptr [ebp-4]
 0053B337    call        0053BACC
 0053B33C    mov         ebx,eax
 0053B33E    test        ebx,ebx
>0053B340    je          0053B352
 0053B342    mov         eax,ebx
 0053B344    call        0053943C
 0053B349    mov         edx,dword ptr [ebp-4]
 0053B34C    mov         dword ptr [edx+2E0],eax;TCustomTreeView.FSaveTopIndex:Integer
 0053B352    mov         eax,dword ptr [ebp-4]
 0053B355    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B35B    call        TTreeNodes.BeginUpdate
 0053B360    xor         eax,eax
 0053B362    push        ebp
 0053B363    push        53B433
 0053B368    push        dword ptr fs:[eax]
 0053B36B    mov         dword ptr fs:[eax],esp
 0053B36E    mov         eax,dword ptr [ebp-4]
 0053B371    cmp         byte ptr [eax+300],0;TCustomTreeView.FMultiSelect:Boolean
>0053B378    je          0053B3EB
 0053B37A    mov         eax,dword ptr [ebp-4]
 0053B37D    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053B383    cmp         dword ptr [eax+8],1;TList.FCount:Integer
>0053B387    jle         0053B3EB
 0053B389    mov         dl,1
 0053B38B    mov         eax,[0046C204];TList
 0053B390    call        TObject.Create;TList.Create
 0053B395    mov         edx,dword ptr [ebp-4]
 0053B398    mov         dword ptr [edx+308],eax;TCustomTreeView.FSaveIndexes:TList
 0053B39E    mov         eax,dword ptr [ebp-4]
 0053B3A1    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053B3A7    mov         ebx,dword ptr [eax+8];TList.FCount:Integer
 0053B3AA    dec         ebx
 0053B3AB    test        ebx,ebx
>0053B3AD    jl          0053B3DB
 0053B3AF    inc         ebx
 0053B3B0    xor         esi,esi
 0053B3B2    mov         eax,dword ptr [ebp-4]
 0053B3B5    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053B3BB    mov         edx,esi
 0053B3BD    call        TList.Get
 0053B3C2    call        0053943C
 0053B3C7    mov         edx,eax
 0053B3C9    mov         eax,dword ptr [ebp-4]
 0053B3CC    mov         eax,dword ptr [eax+308];TCustomTreeView.FSaveIndexes:TList
 0053B3D2    call        TList.Add
 0053B3D7    inc         esi
 0053B3D8    dec         ebx
>0053B3D9    jne         0053B3B2
 0053B3DB    mov         eax,dword ptr [ebp-4]
 0053B3DE    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053B3E4    mov         edx,dword ptr [eax]
 0053B3E6    call        dword ptr [edx+8];TList.Clear
>0053B3E9    jmp         0053B409
 0053B3EB    mov         eax,dword ptr [ebp-4]
 0053B3EE    call        0053BB4C
 0053B3F3    mov         ebx,eax
 0053B3F5    test        ebx,ebx
>0053B3F7    je          0053B409
 0053B3F9    mov         eax,ebx
 0053B3FB    call        0053943C
 0053B400    mov         edx,dword ptr [ebp-4]
 0053B403    mov         dword ptr [edx+2D4],eax;TCustomTreeView.FSaveIndex:Integer
 0053B409    mov         eax,dword ptr [ebp-4]
 0053B40C    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B412    call        TTreeNodes.Clear
 0053B417    xor         eax,eax
 0053B419    pop         edx
 0053B41A    pop         ecx
 0053B41B    pop         ecx
 0053B41C    mov         dword ptr fs:[eax],edx
 0053B41F    push        53B43A
 0053B424    mov         eax,dword ptr [ebp-4]
 0053B427    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B42D    call        TTreeNodes.EndUpdate
 0053B432    ret
>0053B433    jmp         @HandleFinally
>0053B438    jmp         0053B424
 0053B43A    mov         eax,dword ptr [ebp-4]
 0053B43D    call        TTreeView.GetIndent
 0053B442    mov         edx,dword ptr [ebp-4]
 0053B445    mov         dword ptr [edx+2D8],eax;TCustomTreeView.FSaveIndent:Integer
 0053B44B    mov         eax,dword ptr [ebp-4]
 0053B44E    call        004EC00C
 0053B453    pop         esi
 0053B454    pop         ebx
 0053B455    pop         ecx
 0053B456    pop         ebp
 0053B457    ret
*}
end;

//0053B5F0
procedure TCustomTreeView.CMColorChanged(var Message:Messages.TMessage);
begin
{*
 0053B5F0    push        ebx
 0053B5F1    push        esi
 0053B5F2    mov         ebx,eax
 0053B5F4    mov         eax,ebx
 0053B5F6    call        TWinControl.CMColorChanged
 0053B5FB    mov         eax,ebx
 0053B5FD    call        TWinControl.HandleAllocated
 0053B602    test        al,al
>0053B604    je          0053B627
 0053B606    mov         eax,ebx
 0053B608    call        TWinControl.GetHandle
 0053B60D    mov         esi,eax
 0053B60F    mov         eax,dword ptr [ebx+7C];TCustomTreeView.FColor:TColor
 0053B612    call        ColorToRGB
 0053B617    mov         ebx,eax
 0053B619    push        ebx
 0053B61A    push        0
 0053B61C    push        111D
 0053B621    push        esi
 0053B622    call        user32.SendMessageW
 0053B627    pop         esi
 0053B628    pop         ebx
 0053B629    ret
*}
end;

//0053B62C
procedure TCustomTreeView.CMCtl3DChanged;
begin
{*
 0053B62C    push        ebx
 0053B62D    mov         ebx,eax
 0053B62F    mov         eax,ebx
 0053B631    call        TWinControl.CMCtl3DChanged
 0053B636    cmp         byte ptr [ebx+291],1;TCustomTreeView.FBorderStyle:TBorderStyle
>0053B63D    jne         0053B646
 0053B63F    mov         eax,ebx
 0053B641    call        TWinControl.RecreateWnd
 0053B646    pop         ebx
 0053B647    ret
*}
end;

//0053B648
procedure TCustomTreeView.CMFontChanged;
begin
{*
 0053B648    push        ebx
 0053B649    push        esi
 0053B64A    mov         ebx,eax
 0053B64C    mov         eax,ebx
 0053B64E    call        TWinControl.CMFontChanged
 0053B653    mov         eax,ebx
 0053B655    call        TWinControl.HandleAllocated
 0053B65A    test        al,al
>0053B65C    je          0053B682
 0053B65E    mov         eax,ebx
 0053B660    call        TWinControl.GetHandle
 0053B665    mov         esi,eax
 0053B667    mov         eax,dword ptr [ebx+74];TCustomTreeView.FFont:TFont
 0053B66A    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 0053B66D    call        ColorToRGB
 0053B672    mov         ebx,eax
 0053B674    push        ebx
 0053B675    push        0
 0053B677    push        111E
 0053B67C    push        esi
 0053B67D    call        user32.SendMessageW
 0053B682    pop         esi
 0053B683    pop         ebx
 0053B684    ret
*}
end;

//0053B688
procedure TCustomTreeView.CMSysColorChange;
begin
{*
 0053B688    push        ebx
 0053B689    mov         ebx,eax
 0053B68B    mov         eax,ebx
 0053B68D    call        TWinControl.CMSysColorChange
 0053B692    test        byte ptr [ebx+1C],1;TCustomTreeView.FComponentState:TComponentState
>0053B696    jne         0053B69F
 0053B698    mov         eax,ebx
 0053B69A    call        TWinControl.RecreateWnd
 0053B69F    pop         ebx
 0053B6A0    ret
*}
end;

//0053B6A4
procedure TCustomTreeView.AlphaSort(ARecurse:Boolean);
begin
{*
 0053B6A4    push        edx
 0053B6A5    xor         ecx,ecx
 0053B6A7    xor         edx,edx
 0053B6A9    call        TCustomTreeView.CustomSort
 0053B6AE    ret
*}
end;

//0053B6B0
function TCustomTreeView.CustomSort(SortProc:PFNTVCOMPARE; Data:NativeInt; ARecurse:Boolean):Boolean;
begin
{*
 0053B6B0    push        ebp
 0053B6B1    mov         ebp,esp
 0053B6B3    add         esp,0FFFFFFEC
 0053B6B6    push        ebx
 0053B6B7    push        esi
 0053B6B8    push        edi
 0053B6B9    mov         dword ptr [ebp-8],ecx
 0053B6BC    mov         dword ptr [ebp-4],edx
 0053B6BF    mov         esi,eax
 0053B6C1    xor         ebx,ebx
 0053B6C3    mov         eax,esi
 0053B6C5    call        TWinControl.HandleAllocated
 0053B6CA    test        al,al
>0053B6CC    je          0053B75E
 0053B6D2    cmp         dword ptr [ebp-4],0
>0053B6D6    jne         0053B6E2
 0053B6D8    mov         eax,538778;sub_00538778
 0053B6DD    mov         dword ptr [ebp-10],eax
>0053B6E0    jmp         0053B6E8
 0053B6E2    mov         eax,dword ptr [ebp-4]
 0053B6E5    mov         dword ptr [ebp-10],eax
 0053B6E8    mov         dword ptr [ebp-14],0FFFF0000
 0053B6EF    mov         eax,dword ptr [ebp-8]
 0053B6F2    mov         dword ptr [ebp-0C],eax
 0053B6F5    mov         eax,esi
 0053B6F7    call        TWinControl.GetHandle
 0053B6FC    mov         ebx,eax
 0053B6FE    lea         eax,[ebp-14]
 0053B701    push        eax
 0053B702    push        0
 0053B704    push        1115
 0053B709    push        ebx
 0053B70A    call        user32.SendMessageW
 0053B70F    cmp         eax,1
 0053B712    sbb         ebx,ebx
 0053B714    inc         ebx
 0053B715    cmp         byte ptr [ebp+8],0
>0053B719    je          0053B753
 0053B71B    mov         eax,dword ptr [esi+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B721    call        TTreeNodes.GetFirstNode
 0053B726    mov         edi,eax
 0053B728    test        edi,edi
>0053B72A    je          0053B753
 0053B72C    mov         eax,edi
 0053B72E    call        00539138
 0053B733    test        al,al
>0053B735    je          0053B746
 0053B737    push        1
 0053B739    mov         ecx,dword ptr [ebp-8]
 0053B73C    mov         edx,dword ptr [ebp-4]
 0053B73F    mov         eax,edi
 0053B741    call        TTreeNode.CustomSort
 0053B746    mov         eax,edi
 0053B748    call        TTreeNode.getNextSibling
 0053B74D    mov         edi,eax
 0053B74F    test        edi,edi
>0053B751    jne         0053B72C
 0053B753    mov         eax,dword ptr [esi+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B759    call        0053AB94
 0053B75E    mov         eax,ebx
 0053B760    pop         edi
 0053B761    pop         esi
 0053B762    pop         ebx
 0053B763    mov         esp,ebp
 0053B765    pop         ebp
 0053B766    ret         4
*}
end;

//0053B76C
procedure TTreeView.SetAutoExpand(Value:Boolean);
begin
{*
 0053B76C    cmp         dl,byte ptr [eax+290];TTreeView.FAutoExpand:Boolean
>0053B772    je          0053B786
 0053B774    mov         byte ptr [eax+290],dl;TTreeView.FAutoExpand:Boolean
 0053B77A    mov         ecx,edx
 0053B77C    mov         edx,400
 0053B781    call        00533190
 0053B786    ret
*}
end;

//0053B788
procedure TTreeView.SetHotTrack(Value:Boolean);
begin
{*
 0053B788    cmp         dl,byte ptr [eax+2B5];TTreeView.FHotTrack:Boolean
>0053B78E    je          0053B7A2
 0053B790    mov         byte ptr [eax+2B5],dl;TTreeView.FHotTrack:Boolean
 0053B796    mov         ecx,edx
 0053B798    mov         edx,200
 0053B79D    call        00533190
 0053B7A2    ret
*}
end;

//0053B7A4
procedure TTreeView.SetRowSelect(Value:Boolean);
begin
{*
 0053B7A4    cmp         dl,byte ptr [eax+2D3];TTreeView.FRowSelect:Boolean
>0053B7AA    je          0053B7BE
 0053B7AC    mov         byte ptr [eax+2D3],dl;TTreeView.FRowSelect:Boolean
 0053B7B2    mov         ecx,edx
 0053B7B4    mov         edx,1000
 0053B7B9    call        00533190
 0053B7BE    ret
*}
end;

//0053B7C0
procedure TTreeView.SetToolTips(Value:Boolean);
begin
{*
 0053B7C0    cmp         dl,byte ptr [eax+2F4];TTreeView.FToolTips:Boolean
>0053B7C6    je          0053B7DD
 0053B7C8    mov         byte ptr [eax+2F4],dl;TTreeView.FToolTips:Boolean
 0053B7CE    mov         ecx,edx
 0053B7D0    xor         cl,1
 0053B7D3    mov         edx,80
 0053B7D8    call        00533190
 0053B7DD    ret
*}
end;

//0053B7E0
procedure TTreeView.SetSortType(Value:TSortType);
begin
{*
 0053B7E0    cmp         dl,byte ptr [eax+2E7];TTreeView.FSortType:TSortType
>0053B7E6    je          0053B81A
 0053B7E8    mov         byte ptr [eax+2E7],dl;TTreeView.FSortType:TSortType
 0053B7EE    movzx       edx,byte ptr [eax+2E7];TTreeView.FSortType:TSortType
 0053B7F5    mov         ecx,edx
 0053B7F7    sub         cl,1
>0053B7FA    je          0053B801
 0053B7FC    sub         cl,2
>0053B7FF    jne         0053B80B
 0053B801    cmp         word ptr [eax+362],0;TTreeView.?f362:word
>0053B809    jne         0053B813
 0053B80B    add         dl,0FE
 0053B80E    sub         dl,2
>0053B811    jae         0053B81A
 0053B813    mov         dl,1
 0053B815    call        TCustomTreeView.AlphaSort
 0053B81A    ret
*}
end;

//0053B81C
procedure TTreeView.SetBorderStyle(Value:TBorderStyle);
begin
{*
 0053B81C    cmp         dl,byte ptr [eax+291];TTreeView.FBorderStyle:TBorderStyle
>0053B822    je          0053B82F
 0053B824    mov         byte ptr [eax+291],dl;TTreeView.FBorderStyle:TBorderStyle
 0053B82A    call        TWinControl.RecreateWnd
 0053B82F    ret
*}
end;

//0053B830
procedure TTreeView.SetDragMode(Value:TDragMode);
begin
{*
 0053B830    push        ebx
 0053B831    push        esi
 0053B832    mov         ebx,edx
 0053B834    mov         esi,eax
 0053B836    mov         eax,esi
 0053B838    call        TGroupBox.GetDragMode
 0053B83D    cmp         bl,al
>0053B83F    je          0053B852
 0053B841    test        bl,bl
 0053B843    sete        cl
 0053B846    mov         edx,10
 0053B84B    mov         eax,esi
 0053B84D    call        00533190
 0053B852    mov         edx,ebx
 0053B854    mov         eax,esi
 0053B856    call        TGroupBox.SetDragMode
 0053B85B    pop         esi
 0053B85C    pop         ebx
 0053B85D    ret
*}
end;

//0053B860
procedure TTreeView.SetShowButtons(Value:Boolean);
begin
{*
 0053B860    cmp         dl,byte ptr [eax+2E4];TTreeView.FShowButtons:Boolean
>0053B866    je          0053B87A
 0053B868    mov         byte ptr [eax+2E4],dl;TTreeView.FShowButtons:Boolean
 0053B86E    mov         ecx,edx
 0053B870    mov         edx,1
 0053B875    call        00533190
 0053B87A    ret
*}
end;

//0053B87C
procedure TTreeView.SetShowLines(Value:Boolean);
begin
{*
 0053B87C    cmp         dl,byte ptr [eax+2E5];TTreeView.FShowLines:Boolean
>0053B882    je          0053B896
 0053B884    mov         byte ptr [eax+2E5],dl;TTreeView.FShowLines:Boolean
 0053B88A    mov         ecx,edx
 0053B88C    mov         edx,2
 0053B891    call        00533190
 0053B896    ret
*}
end;

//0053B898
procedure TTreeView.SetShowRoot(Value:Boolean);
begin
{*
 0053B898    cmp         dl,byte ptr [eax+2E6];TTreeView.FShowRoot:Boolean
>0053B89E    je          0053B8B2
 0053B8A0    mov         byte ptr [eax+2E6],dl;TTreeView.FShowRoot:Boolean
 0053B8A6    mov         ecx,edx
 0053B8A8    mov         edx,4
 0053B8AD    call        00533190
 0053B8B2    ret
*}
end;

//0053B8B4
procedure TTreeView.SetReadOnly(Value:Boolean);
begin
{*
 0053B8B4    cmp         dl,byte ptr [eax+2D2];TTreeView.FReadOnly:Boolean
>0053B8BA    je          0053B8D1
 0053B8BC    mov         byte ptr [eax+2D2],dl;TTreeView.FReadOnly:Boolean
 0053B8C2    mov         ecx,edx
 0053B8C4    xor         cl,1
 0053B8C7    mov         edx,8
 0053B8CC    call        00533190
 0053B8D1    ret
*}
end;

//0053B8D4
procedure TTreeView.SetHideSelection(Value:Boolean);
begin
{*
 0053B8D4    push        esi
 0053B8D5    mov         esi,eax
 0053B8D7    cmp         dl,byte ptr [esi+2B4];TTreeView.FHideSelection:Boolean
>0053B8DD    je          0053B900
 0053B8DF    mov         byte ptr [esi+2B4],dl;TTreeView.FHideSelection:Boolean
 0053B8E5    mov         ecx,edx
 0053B8E7    xor         cl,1
 0053B8EA    mov         eax,esi
 0053B8EC    mov         edx,20
 0053B8F1    call        00533190
 0053B8F6    mov         eax,esi
 0053B8F8    mov         edx,dword ptr [eax]
 0053B8FA    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0053B900    pop         esi
 0053B901    ret
*}
end;

//0053B904
function TCustomTreeView.GetNodeAt(X:Integer; Y:Integer):TTreeNode;
begin
{*
 0053B904    push        ebx
 0053B905    push        esi
 0053B906    add         esp,0FFFFFFF0
 0053B909    mov         ebx,eax
 0053B90B    mov         dword ptr [esp],edx
 0053B90E    mov         dword ptr [esp+4],ecx
 0053B912    mov         eax,ebx
 0053B914    call        TWinControl.GetHandle
 0053B919    mov         esi,eax
 0053B91B    mov         eax,esp
 0053B91D    push        eax
 0053B91E    push        0
 0053B920    push        1111
 0053B925    push        esi
 0053B926    call        user32.SendMessageW
 0053B92B    test        eax,eax
>0053B92D    je          0053B940
 0053B92F    mov         edx,dword ptr [esp+0C]
 0053B933    mov         eax,dword ptr [ebx+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053B939    call        TTreeNodes.GetNode
>0053B93E    jmp         0053B942
 0053B940    xor         eax,eax
 0053B942    add         esp,10
 0053B945    pop         esi
 0053B946    pop         ebx
 0053B947    ret
*}
end;

//0053B948
procedure TCustomTreeView.GetHitTestInfoAt(X:Integer; Y:Integer);
begin
{*
 0053B948    push        ebx
 0053B949    push        esi
 0053B94A    add         esp,0FFFFFFF0
 0053B94D    mov         ebx,ecx
 0053B94F    movzx       esi,word ptr ds:[53BA00];0x0 gvar_0053BA00
 0053B956    mov         dword ptr [esp],edx
 0053B959    mov         dword ptr [esp+4],ebx
 0053B95D    call        TWinControl.GetHandle
 0053B962    mov         ebx,eax
 0053B964    mov         eax,esp
 0053B966    push        eax
 0053B967    push        0
 0053B969    push        1111
 0053B96E    push        ebx
 0053B96F    call        user32.SendMessageW
 0053B974    mov         ebx,dword ptr [esp+8]
 0053B978    test        bh,1
>0053B97B    je          0053B981
 0053B97D    or          si,1
 0053B981    test        bh,2
>0053B984    je          0053B98A
 0053B986    or          si,2
 0053B98A    test        bl,1
>0053B98D    je          0053B993
 0053B98F    or          si,4
 0053B993    mov         eax,ebx
 0053B995    and         eax,46
 0053B998    cmp         eax,46
>0053B99B    jne         0053B9A3
 0053B99D    or          si,8
>0053B9A1    jmp         0053B9C8
 0053B9A3    test        eax,eax
>0053B9A5    je          0053B9AB
 0053B9A7    or          si,8
 0053B9AB    test        bl,2
>0053B9AE    je          0053B9B4
 0053B9B0    or          si,20
 0053B9B4    test        bl,4
>0053B9B7    je          0053B9BE
 0053B9B9    or          si,80
 0053B9BE    test        bl,40
>0053B9C1    je          0053B9C8
 0053B9C3    or          si,200
 0053B9C8    test        bl,10
>0053B9CB    je          0053B9D1
 0053B9CD    or          si,10
 0053B9D1    test        bl,8
>0053B9D4    je          0053B9DA
 0053B9D6    or          si,40
 0053B9DA    test        bl,20
>0053B9DD    je          0053B9E4
 0053B9DF    or          si,100
 0053B9E4    test        bh,8
>0053B9E7    je          0053B9EE
 0053B9E9    or          si,400
 0053B9EE    test        bh,4
>0053B9F1    je          0053B9F8
 0053B9F3    or          si,800
 0053B9F8    mov         eax,esi
 0053B9FA    add         esp,10
 0053B9FD    pop         esi
 0053B9FE    pop         ebx
 0053B9FF    ret
*}
end;

//0053BA04
procedure TTreeView.SetItems(Value:TTreeNodes);
begin
{*
 0053BA04    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0053BA0A    mov         ecx,dword ptr [eax]
 0053BA0C    call        dword ptr [ecx+8];TTreeNodes.Assign
 0053BA0F    ret
*}
end;

//0053BA10
procedure TTreeView.SetIndent(Value:Integer);
begin
{*
 0053BA10    push        ebx
 0053BA11    push        esi
 0053BA12    mov         esi,edx
 0053BA14    mov         ebx,eax
 0053BA16    mov         eax,ebx
 0053BA18    call        TTreeView.GetIndent
 0053BA1D    cmp         esi,eax
>0053BA1F    je          0053BA38
 0053BA21    mov         eax,ebx
 0053BA23    call        TWinControl.GetHandle
 0053BA28    mov         ebx,eax
 0053BA2A    push        0
 0053BA2C    push        esi
 0053BA2D    push        1107
 0053BA32    push        ebx
 0053BA33    call        user32.SendMessageW
 0053BA38    pop         esi
 0053BA39    pop         ebx
 0053BA3A    ret
*}
end;

//0053BA3C
{*function TTreeView.GetIndent:?;
begin
 0053BA3C    push        ebx
 0053BA3D    call        TWinControl.GetHandle
 0053BA42    mov         ebx,eax
 0053BA44    push        0
 0053BA46    push        0
 0053BA48    push        1106
 0053BA4D    push        ebx
 0053BA4E    call        user32.SendMessageW
 0053BA53    pop         ebx
 0053BA54    ret
end;*}

//0053BA58
procedure TCustomTreeView.FullExpand;
begin
{*
 0053BA58    push        ebx
 0053BA59    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053BA5F    call        TTreeNodes.GetFirstNode
 0053BA64    mov         ebx,eax
 0053BA66    test        ebx,ebx
>0053BA68    je          0053BA80
 0053BA6A    mov         dl,1
 0053BA6C    mov         eax,ebx
 0053BA6E    call        TTreeNode.Expand
 0053BA73    mov         eax,ebx
 0053BA75    call        TTreeNode.getNextSibling
 0053BA7A    mov         ebx,eax
 0053BA7C    test        ebx,ebx
>0053BA7E    jne         0053BA6A
 0053BA80    pop         ebx
 0053BA81    ret
*}
end;

//0053BA84
procedure TCustomTreeView.FullCollapse;
begin
{*
 0053BA84    push        ebx
 0053BA85    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053BA8B    call        TTreeNodes.GetFirstNode
 0053BA90    mov         ebx,eax
 0053BA92    test        ebx,ebx
>0053BA94    je          0053BAAC
 0053BA96    mov         dl,1
 0053BA98    mov         eax,ebx
 0053BA9A    call        TTreeNode.Collapse
 0053BA9F    mov         eax,ebx
 0053BAA1    call        TTreeNode.getNextSibling
 0053BAA6    mov         ebx,eax
 0053BAA8    test        ebx,ebx
>0053BAAA    jne         0053BA96
 0053BAAC    pop         ebx
 0053BAAD    ret
*}
end;

//0053BAB0
procedure TCustomTreeView.CMFontChanged(var Message:TMessage);
begin
{*
 0053BAB0    push        ebx
 0053BAB1    mov         ebx,eax
 0053BAB3    mov         eax,ebx
 0053BAB5    call        TWinControl.CMFontChanged
 0053BABA    test        byte ptr [ebx+1C],10;TCustomTreeView.FComponentState:TComponentState
>0053BABE    je          0053BAC7
 0053BAC0    mov         eax,ebx
 0053BAC2    call        TCustomTreeView.FullExpand
 0053BAC7    pop         ebx
 0053BAC8    ret
*}
end;

//0053BACC
{*function sub_0053BACC(?:TCustomTreeView):?;
begin
 0053BACC    push        ebx
 0053BACD    mov         ebx,eax
 0053BACF    mov         eax,ebx
 0053BAD1    call        TWinControl.HandleAllocated
 0053BAD6    test        al,al
>0053BAD8    je          0053BAF5
 0053BADA    mov         eax,ebx
 0053BADC    call        TWinControl.GetHandle
 0053BAE1    call        004CFEA0
 0053BAE6    mov         edx,eax
 0053BAE8    mov         eax,dword ptr [ebx+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053BAEE    call        TTreeNodes.GetNode
 0053BAF3    pop         ebx
 0053BAF4    ret
 0053BAF5    xor         eax,eax
 0053BAF7    pop         ebx
 0053BAF8    ret
end;*}

//0053BAFC
procedure sub_0053BAFC(?:TCustomTreeView; ?:TTreeNode);
begin
{*
 0053BAFC    push        ebx
 0053BAFD    push        esi
 0053BAFE    mov         esi,edx
 0053BB00    mov         ebx,eax
 0053BB02    mov         eax,ebx
 0053BB04    call        TWinControl.HandleAllocated
 0053BB09    test        al,al
>0053BB0B    je          0053BB20
 0053BB0D    test        esi,esi
>0053BB0F    je          0053BB20
 0053BB11    mov         eax,ebx
 0053BB13    call        TWinControl.GetHandle
 0053BB18    mov         edx,dword ptr [esi+10];TTreeNode.FItemId:HTREEITEM
 0053BB1B    call        004CFF50
 0053BB20    pop         esi
 0053BB21    pop         ebx
 0053BB22    ret
*}
end;

//0053BB4C
{*function sub_0053BB4C(?:TObject):?;
begin
 0053BB4C    push        ebx
 0053BB4D    mov         ebx,eax
 0053BB4F    mov         eax,ebx
 0053BB51    call        TWinControl.HandleAllocated
 0053BB56    test        al,al
>0053BB58    je          0053BB8F
 0053BB5A    cmp         byte ptr [ebx+2D0],0;TCustomTreeView.FRightClickSelect:Boolean
>0053BB61    je          0053BB74
 0053BB63    cmp         dword ptr [ebx+2CC],0;TCustomTreeView.FRClickNode:TTreeNode
>0053BB6A    je          0053BB74
 0053BB6C    mov         eax,dword ptr [ebx+2CC];TCustomTreeView.FRClickNode:TTreeNode
>0053BB72    jmp         0053BB91
 0053BB74    mov         eax,ebx
 0053BB76    call        TWinControl.GetHandle
 0053BB7B    call        004CFEE4
 0053BB80    mov         edx,eax
 0053BB82    mov         eax,dword ptr [ebx+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053BB88    call        TTreeNodes.GetNode
 0053BB8D    pop         ebx
 0053BB8E    ret
 0053BB8F    xor         eax,eax
 0053BB91    pop         ebx
 0053BB92    ret
end;*}

//0053BB94
procedure sub_0053BB94(?:TCustomTreeView; ?:TTreeNode);
begin
{*
 0053BB94    push        ebx
 0053BB95    mov         ebx,eax
 0053BB97    test        edx,edx
>0053BB99    je          0053BBA6
 0053BB9B    mov         eax,edx
 0053BB9D    mov         dl,1
 0053BB9F    call        00539014
 0053BBA4    pop         ebx
 0053BBA5    ret
 0053BBA6    mov         eax,ebx
 0053BBA8    call        TWinControl.GetHandle
 0053BBAD    xor         edx,edx
 0053BBAF    call        004CFF20
 0053BBB4    pop         ebx
 0053BBB5    ret
*}
end;

//0053BBB8
procedure TTreeView.SetChangeDelay(Value:Integer);
begin
{*
 0053BBB8    mov         eax,dword ptr [eax+3C8];TTreeView.FChangeTimer:TTimer
 0053BBBE    call        TTimer.SetInterval
 0053BBC3    ret
*}
end;

//0053BBC4
{*function TTreeView.GetChangeDelay:?;
begin
 0053BBC4    mov         eax,dword ptr [eax+3C8];TTreeView.FChangeTimer:TTimer
 0053BBCA    mov         eax,dword ptr [eax+40];TTimer.FInterval:Cardinal
 0053BBCD    ret
end;*}

//0053BBD0
{*function sub_0053BBD0(?:TCustomTreeView):?;
begin
 0053BBD0    push        ebx
 0053BBD1    mov         ebx,eax
 0053BBD3    mov         eax,ebx
 0053BBD5    call        TWinControl.HandleAllocated
 0053BBDA    test        al,al
>0053BBDC    je          0053BC03
 0053BBDE    mov         eax,ebx
 0053BBE0    call        TWinControl.GetHandle
 0053BBE5    call        004CFEF8
 0053BBEA    mov         edx,eax
 0053BBEC    mov         eax,dword ptr [ebx+2F8]
 0053BBF2    call        TTreeNodes.GetNode
 0053BBF7    test        eax,eax
>0053BBF9    jne         0053BC05
 0053BBFB    mov         eax,dword ptr [ebx+2C4]
 0053BC01    pop         ebx
 0053BC02    ret
 0053BC03    xor         eax,eax
 0053BC05    pop         ebx
 0053BC06    ret
end;*}

//0053BC08
{*procedure sub_0053BC08(?:TCustomTreeView; ?:?);
begin
 0053BC08    push        ebx
 0053BC09    push        esi
 0053BC0A    mov         esi,edx
 0053BC0C    mov         ebx,eax
 0053BC0E    mov         eax,ebx
 0053BC10    call        TWinControl.HandleAllocated
 0053BC15    test        al,al
>0053BC17    je          0053BC36
 0053BC19    test        esi,esi
>0053BC1B    je          0053BC28
 0053BC1D    mov         dl,1
 0053BC1F    mov         eax,esi
 0053BC21    call        005390F0
>0053BC26    jmp         0053BC36
 0053BC28    mov         eax,ebx
 0053BC2A    call        TWinControl.GetHandle
 0053BC2F    xor         edx,edx
 0053BC31    call        004CFF38
 0053BC36    pop         esi
 0053BC37    pop         ebx
 0053BC38    ret
end;*}

//0053BC3C
{*function sub_0053BC3C(?:TCustomTreeView; ?:Byte):?;
begin
 0053BC3C    push        esi
 0053BC3D    xor         ecx,ecx
 0053BC3F    mov         esi,dword ptr [eax+2F8]
 0053BC45    test        esi,esi
>0053BC47    je          0053BC60
 0053BC49    test        byte ptr [edx+8],4
>0053BC4D    je          0053BC54
 0053BC4F    mov         ecx,dword ptr [edx+24]
>0053BC52    jmp         0053BC60
 0053BC54    mov         edx,dword ptr [edx+4]
 0053BC57    mov         eax,esi
 0053BC59    call        TTreeNodes.GetNode
 0053BC5E    mov         ecx,eax
 0053BC60    mov         eax,ecx
 0053BC62    pop         esi
 0053BC63    ret
end;*}

//0053BC64
{*procedure TCustomTreeView.sub_004E5F1C(?:?);
begin
 0053BC64    push        ebx
 0053BC65    mov         ebx,eax
 0053BC67    mov         eax,edx
 0053BC69    sub         al,1
>0053BC6B    jb          0053BC71
>0053BC6D    je          0053BC86
>0053BC6F    jmp         0053BC9B
 0053BC71    mov         eax,dword ptr [ebx+0BC];TCustomTreeView.FTouchManager:TTouchManager
 0053BC77    movzx       edx,byte ptr ds:[53BCA4];0x12 gvar_0053BCA4
 0053BC7E    cmp         dl,byte ptr [eax+10];TTouchManager.FInteractiveGestures:TInteractiveGestures
 0053BC81    setne       al
 0053BC84    pop         ebx
 0053BC85    ret
 0053BC86    mov         eax,dword ptr [ebx+0BC];TCustomTreeView.FTouchManager:TTouchManager
 0053BC8C    movzx       edx,byte ptr ds:[53BCA8];0x1F gvar_0053BCA8
 0053BC93    cmp         dl,byte ptr [eax+11];TTouchManager.FInteractiveGestureOptions:TInteractiveGestureOptions
 0053BC96    setne       al
 0053BC99    pop         ebx
 0053BC9A    ret
 0053BC9B    mov         eax,ebx
 0053BC9D    call        TControl.sub_004E5F1C
 0053BCA2    pop         ebx
 0053BCA3    ret
end;*}

//0053BCAC
{*procedure TCustomTreeView.sub_0053BCAC(?:?);
begin
 0053BCAC    push        ebp
 0053BCAD    mov         ebp,esp
 0053BCAF    add         esp,0FFFFFF2C
 0053BCB5    push        ebx
 0053BCB6    push        esi
 0053BCB7    push        edi
 0053BCB8    xor         ecx,ecx
 0053BCBA    mov         dword ptr [ebp-0D4],ecx
 0053BCC0    mov         dword ptr [ebp-8],edx
 0053BCC3    mov         dword ptr [ebp-4],eax
 0053BCC6    xor         eax,eax
 0053BCC8    push        ebp
 0053BCC9    push        53C81D
 0053BCCE    push        dword ptr fs:[eax]
 0053BCD1    mov         dword ptr fs:[eax],esp
 0053BCD4    mov         eax,dword ptr [ebp-8]
 0053BCD7    mov         eax,dword ptr [eax+8]
 0053BCDA    mov         edx,dword ptr [eax+8]
 0053BCDD    cmp         edx,0FFFFFE66
>0053BCE3    jg          0053BD6B
>0053BCE9    je          0053C417
 0053BCEF    cmp         edx,0FFFFFE3A
>0053BCF5    jg          0053BD2B
>0053BCF7    je          0053C4C4
 0053BCFD    add         edx,1CC
 0053BD03    cmp         edx,5
>0053BD06    ja          0053C804
 0053BD0C    jmp         dword ptr [edx*4+53BD13]
 0053BD0C    dd          0053C4B0
 0053BD0C    dd          0053C417
 0053BD0C    dd          0053C616
 0053BD0C    dd          0053C804
 0053BD0C    dd          0053C3EE
 0053BD0C    dd          0053C539
 0053BD2B    cmp         edx,0FFFFFE3D
>0053BD31    jg          0053BD51
>0053BD33    je          0053C5C0
 0053BD39    sub         edx,0FFFFFE3B
>0053BD3F    je          0053C66D
 0053BD45    dec         edx
>0053BD46    je          0053C6AE
>0053BD4C    jmp         0053C804
 0053BD51    sub         edx,0FFFFFE3E
>0053BD57    je          0053C58E
 0053BD5D    sub         edx,27
>0053BD60    je          0053C4B0
>0053BD66    jmp         0053C804
 0053BD6B    cmp         edx,0FFFFFE6D
>0053BD71    jg          0053BDA7
>0053BD73    je          0053C6AE
 0053BD79    add         edx,199
 0053BD7F    cmp         edx,5
>0053BD82    ja          0053C804
 0053BD88    jmp         dword ptr [edx*4+53BD8F]
 0053BD88    dd          0053C616
 0053BD88    dd          0053C804
 0053BD88    dd          0053C3EE
 0053BD88    dd          0053C539
 0053BD88    dd          0053C4C4
 0053BD88    dd          0053C66D
 0053BDA7    sub         edx,0FFFFFE6E
>0053BDAD    je          0053C5C0
 0053BDB3    dec         edx
>0053BDB4    je          0053C58E
 0053BDBA    sub         edx,185
>0053BDC0    je          0053BDD0
 0053BDC2    sub         edx,7
>0053BDC5    je          0053C71C
>0053BDCB    jmp         0053C804
 0053BDD0    mov         edx,dword ptr [ebp-4]
 0053BDD3    mov         edx,dword ptr [edx+294];TCustomTreeView.FCanvas:TCanvas
 0053BDD9    test        edx,edx
>0053BDDB    je          0053C804
 0053BDE1    mov         dword ptr [ebp-20],eax
 0053BDE4    mov         eax,edx
 0053BDE6    call        TCustomCanvas.Lock
 0053BDEB    xor         eax,eax
 0053BDED    push        ebp
 0053BDEE    push        53C3E7
 0053BDF3    push        dword ptr fs:[eax]
 0053BDF6    mov         dword ptr fs:[eax],esp
 0053BDF9    mov         eax,dword ptr [ebp-8]
 0053BDFC    xor         edx,edx
 0053BDFE    mov         dword ptr [eax+0C],edx
 0053BE01    mov         eax,dword ptr [ebp-20]
 0053BE04    test        byte ptr [eax+0E],1
>0053BE08    jne         0053BFE0
 0053BE0E    lea         edx,[ebp-4C]
 0053BE11    mov         eax,dword ptr [ebp-4]
 0053BE14    mov         ecx,dword ptr [eax]
 0053BE16    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0053BE19    mov         eax,dword ptr [ebp-20]
 0053BE1C    mov         eax,dword ptr [eax+0C]
 0053BE1F    dec         eax
>0053BE20    je          0053BE3C
 0053BE22    dec         eax
>0053BE23    je          0053BF5C
 0053BE29    dec         eax
>0053BE2A    je          0053BF88
 0053BE30    dec         eax
>0053BE31    je          0053BFB4
>0053BE37    jmp         0053C3CB
 0053BE3C    xor         ecx,ecx
 0053BE3E    xor         edx,edx
 0053BE40    mov         eax,dword ptr [ebp-4]
 0053BE43    mov         ebx,dword ptr [eax]
 0053BE45    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BE4B    test        al,al
>0053BE4D    je          0053BEF2
 0053BE53    xor         eax,eax
 0053BE55    push        ebp
 0053BE56    push        53BED1
 0053BE5B    push        dword ptr fs:[eax]
 0053BE5E    mov         dword ptr fs:[eax],esp
 0053BE61    mov         eax,dword ptr [ebp-20]
 0053BE64    mov         edx,dword ptr [eax+10]
 0053BE67    mov         eax,dword ptr [ebp-4]
 0053BE6A    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053BE70    call        TCanvas.SetHandle
 0053BE75    mov         eax,dword ptr [ebp-4]
 0053BE78    mov         edx,dword ptr [eax+74];TCustomTreeView.FFont:TFont
 0053BE7B    mov         eax,dword ptr [ebp-4]
 0053BE7E    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053BE84    call        TCanvas.SetFont
 0053BE89    mov         eax,dword ptr [ebp-4]
 0053BE8C    mov         edx,dword ptr [eax+1D0];TCustomTreeView.FBrush:TBrush
 0053BE92    mov         eax,dword ptr [ebp-4]
 0053BE95    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053BE9B    call        TCanvas.SetBrush
 0053BEA0    lea         edx,[ebp-4C]
 0053BEA3    xor         ecx,ecx
 0053BEA5    mov         eax,dword ptr [ebp-4]
 0053BEA8    mov         ebx,dword ptr [eax]
 0053BEAA    call        dword ptr [ebx+110];TCustomTreeView.sub_0053D410
 0053BEB0    mov         byte ptr [ebp-11],al
 0053BEB3    xor         eax,eax
 0053BEB5    pop         edx
 0053BEB6    pop         ecx
 0053BEB7    pop         ecx
 0053BEB8    mov         dword ptr fs:[eax],edx
 0053BEBB    push        53BED8
 0053BEC0    mov         eax,dword ptr [ebp-4]
 0053BEC3    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053BEC9    xor         edx,edx
 0053BECB    call        TCanvas.SetHandle
 0053BED0    ret
>0053BED1    jmp         @HandleFinally
>0053BED6    jmp         0053BEC0
 0053BED8    cmp         byte ptr [ebp-11],0
>0053BEDC    jne         0053BEF2
 0053BEDE    mov         eax,dword ptr [ebp-8]
 0053BEE1    mov         dword ptr [eax+0C],4
 0053BEE8    call        @TryFinallyExit
>0053BEED    jmp         0053C804
 0053BEF2    xor         ecx,ecx
 0053BEF4    mov         dl,1
 0053BEF6    mov         eax,dword ptr [ebp-4]
 0053BEF9    mov         ebx,dword ptr [eax]
 0053BEFB    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BF01    test        al,al
>0053BF03    jne         0053BF18
 0053BF05    mov         cl,2
 0053BF07    mov         dl,1
 0053BF09    mov         eax,dword ptr [ebp-4]
 0053BF0C    mov         ebx,dword ptr [eax]
 0053BF0E    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BF14    test        al,al
>0053BF16    je          0053BF1F
 0053BF18    mov         eax,dword ptr [ebp-8]
 0053BF1B    or          dword ptr [eax+0C],20
 0053BF1F    mov         cl,1
 0053BF21    mov         dl,1
 0053BF23    mov         eax,dword ptr [ebp-4]
 0053BF26    mov         ebx,dword ptr [eax]
 0053BF28    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BF2E    test        al,al
>0053BF30    je          0053BF39
 0053BF32    mov         eax,dword ptr [ebp-8]
 0053BF35    or          dword ptr [eax+0C],10
 0053BF39    mov         cl,3
 0053BF3B    mov         dl,1
 0053BF3D    mov         eax,dword ptr [ebp-4]
 0053BF40    mov         ebx,dword ptr [eax]
 0053BF42    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BF48    test        al,al
>0053BF4A    je          0053C3CB
 0053BF50    mov         eax,dword ptr [ebp-8]
 0053BF53    or          dword ptr [eax+0C],40
>0053BF57    jmp         0053C3CB
 0053BF5C    mov         cl,1
 0053BF5E    xor         edx,edx
 0053BF60    mov         eax,dword ptr [ebp-4]
 0053BF63    mov         ebx,dword ptr [eax]
 0053BF65    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BF6B    test        al,al
>0053BF6D    je          0053C3CB
 0053BF73    lea         edx,[ebp-4C]
 0053BF76    mov         cl,1
 0053BF78    mov         eax,dword ptr [ebp-4]
 0053BF7B    mov         ebx,dword ptr [eax]
 0053BF7D    call        dword ptr [ebx+110];TCustomTreeView.sub_0053D410
>0053BF83    jmp         0053C3CB
 0053BF88    mov         cl,2
 0053BF8A    xor         edx,edx
 0053BF8C    mov         eax,dword ptr [ebp-4]
 0053BF8F    mov         ebx,dword ptr [eax]
 0053BF91    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BF97    test        al,al
>0053BF99    je          0053C3CB
 0053BF9F    lea         edx,[ebp-4C]
 0053BFA2    mov         cl,2
 0053BFA4    mov         eax,dword ptr [ebp-4]
 0053BFA7    mov         ebx,dword ptr [eax]
 0053BFA9    call        dword ptr [ebx+110];TCustomTreeView.sub_0053D410
>0053BFAF    jmp         0053C3CB
 0053BFB4    mov         cl,3
 0053BFB6    xor         edx,edx
 0053BFB8    mov         eax,dword ptr [ebp-4]
 0053BFBB    mov         ebx,dword ptr [eax]
 0053BFBD    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053BFC3    test        al,al
>0053BFC5    je          0053C3CB
 0053BFCB    lea         edx,[ebp-4C]
 0053BFCE    mov         cl,3
 0053BFD0    mov         eax,dword ptr [ebp-4]
 0053BFD3    mov         ebx,dword ptr [eax]
 0053BFD5    call        dword ptr [ebx+110];TCustomTreeView.sub_0053D410
>0053BFDB    jmp         0053C3CB
 0053BFE0    lea         eax,[ebp-74]
 0053BFE3    xor         ecx,ecx
 0053BFE5    mov         edx,28
 0053BFEA    call        @FillChar
 0053BFEF    mov         eax,dword ptr [ebp-20]
 0053BFF2    mov         eax,dword ptr [eax+24]
 0053BFF5    mov         dword ptr [ebp-70],eax
 0053BFF8    lea         edx,[ebp-74]
 0053BFFB    mov         eax,dword ptr [ebp-4]
 0053BFFE    call        0053BC3C
 0053C003    mov         ebx,eax
 0053C005    test        ebx,ebx
>0053C007    jne         0053C013
 0053C009    call        @TryFinallyExit
>0053C00E    jmp         0053C804
 0053C013    mov         eax,dword ptr [ebp-20]
 0053C016    mov         eax,dword ptr [eax+0C]
 0053C019    sub         eax,10001
>0053C01E    je          0053C03A
 0053C020    dec         eax
>0053C021    je          0053C273
 0053C027    dec         eax
>0053C028    je          0053C36F
 0053C02E    dec         eax
>0053C02F    je          0053C39E
>0053C035    jmp         0053C3CB
 0053C03A    xor         eax,eax
 0053C03C    push        ebp
 0053C03D    push        53C26C
 0053C042    push        dword ptr fs:[eax]
 0053C045    mov         dword ptr fs:[eax],esp
 0053C048    mov         eax,dword ptr [ebp-20]
 0053C04B    mov         edx,dword ptr [eax+10]
 0053C04E    mov         eax,dword ptr [ebp-4]
 0053C051    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C057    call        TCanvas.SetHandle
 0053C05C    mov         eax,dword ptr [ebp-4]
 0053C05F    mov         edx,dword ptr [eax+74];TCustomTreeView.FFont:TFont
 0053C062    mov         eax,dword ptr [ebp-4]
 0053C065    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C06B    call        TCanvas.SetFont
 0053C070    mov         eax,dword ptr [ebp-4]
 0053C073    mov         edx,dword ptr [eax+1D0];TCustomTreeView.FBrush:TBrush
 0053C079    mov         eax,dword ptr [ebp-4]
 0053C07C    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C082    call        TCanvas.SetBrush
 0053C087    mov         eax,dword ptr [ebp-20]
 0053C08A    test        byte ptr [eax+28],1
>0053C08E    je          0053C0BC
 0053C090    mov         eax,dword ptr [ebp-4]
 0053C093    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C099    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0053C09C    mov         edx,0FF00000E
 0053C0A1    call        TFont.SetColor
 0053C0A6    mov         eax,dword ptr [ebp-4]
 0053C0A9    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C0AF    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0053C0B2    mov         edx,0FF00000D
 0053C0B7    call        TBrush.SetColor
 0053C0BC    mov         eax,dword ptr [ebp-4]
 0053C0BF    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C0C5    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0053C0C8    mov         edx,dword ptr [ebp-4]
 0053C0CB    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomTreeView
 0053C0CE    mov         dword ptr [eax+8],53D368;TFont.FOnChange:TNotifyEvent
 0053C0D5    mov         eax,dword ptr [ebp-4]
 0053C0D8    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C0DE    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0053C0E1    mov         edx,dword ptr [ebp-4]
 0053C0E4    mov         dword ptr [eax+0C],edx;TBrush.?fC:TCustomTreeView
 0053C0E7    mov         dword ptr [eax+8],53D368;TBrush.FOnChange:TNotifyEvent
 0053C0EE    mov         eax,dword ptr [ebp-4]
 0053C0F1    mov         byte ptr [eax+298],0;TCustomTreeView.FCanvasChanged:Boolean
 0053C0F8    push        0
 0053C0FA    lea         eax,[ebp-12]
 0053C0FD    push        eax
 0053C0FE    mov         eax,dword ptr [ebp-20]
 0053C101    movzx       ecx,word ptr [eax+28]
 0053C105    mov         edx,ebx
 0053C107    mov         eax,dword ptr [ebp-4]
 0053C10A    mov         ebx,dword ptr [eax]
 0053C10C    call        dword ptr [ebx+114];TCustomTreeView.sub_0053D468
 0053C112    mov         byte ptr [ebp-11],al
 0053C115    cmp         byte ptr [ebp-12],0
>0053C119    jne         0053C125
 0053C11B    mov         eax,dword ptr [ebp-8]
 0053C11E    or          dword ptr [eax+0C],10000
 0053C125    cmp         byte ptr [ebp-11],0
>0053C129    jne         0053C137
 0053C12B    mov         eax,dword ptr [ebp-8]
 0053C12E    or          dword ptr [eax+0C],4
>0053C132    jmp         0053C234
 0053C137    mov         eax,dword ptr [ebp-4]
 0053C13A    cmp         byte ptr [eax+298],0;TCustomTreeView.FCanvasChanged:Boolean
>0053C141    je          0053C234
 0053C147    mov         eax,dword ptr [ebp-4]
 0053C14A    mov         byte ptr [eax+298],0;TCustomTreeView.FCanvasChanged:Boolean
 0053C151    mov         eax,dword ptr [ebp-4]
 0053C154    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C15A    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0053C15D    xor         edx,edx
 0053C15F    mov         dword ptr [eax+8],edx;TFont.FOnChange:TNotifyEvent
 0053C162    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomTreeView
 0053C165    mov         eax,dword ptr [ebp-4]
 0053C168    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C16E    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0053C171    xor         edx,edx
 0053C173    mov         dword ptr [eax+8],edx;TBrush.FOnChange:TNotifyEvent
 0053C176    mov         dword ptr [eax+0C],edx;TBrush.?fC:TCustomTreeView
 0053C179    mov         eax,dword ptr [ebp-8]
 0053C17C    mov         eax,dword ptr [eax+8]
 0053C17F    mov         dword ptr [ebp-1C],eax
 0053C182    mov         eax,dword ptr [ebp-1C]
 0053C185    mov         dword ptr [ebp-24],eax
 0053C188    mov         eax,dword ptr [ebp-4]
 0053C18B    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C191    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0053C194    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 0053C197    call        ColorToRGB
 0053C19C    mov         edx,dword ptr [ebp-24]
 0053C19F    mov         dword ptr [edx+30],eax
 0053C1A2    mov         eax,dword ptr [ebp-4]
 0053C1A5    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C1AB    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0053C1AE    mov         dword ptr [ebp-2C],eax
 0053C1B1    mov         eax,dword ptr [ebp-2C]
 0053C1B4    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 0053C1B7    mov         eax,dword ptr [eax+18]
 0053C1BA    call        ColorToRGB
 0053C1BF    mov         edx,dword ptr [ebp-24]
 0053C1C2    mov         dword ptr [edx+34],eax
 0053C1C5    lea         eax,[ebp-0D0]
 0053C1CB    push        eax
 0053C1CC    push        5C
 0053C1CE    mov         eax,dword ptr [ebp-4]
 0053C1D1    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C1D7    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0053C1DA    call        TFont.GetHandle
 0053C1DF    push        eax
 0053C1E0    call        gdi32.GetObjectW
 0053C1E5    test        eax,eax
>0053C1E7    je          0053C234
 0053C1E9    mov         eax,dword ptr [ebp-4]
 0053C1EC    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C1F2    xor         edx,edx
 0053C1F4    call        TCanvas.SetHandle
 0053C1F9    lea         eax,[ebp-0D0]
 0053C1FF    push        eax
 0053C200    call        gdi32.CreateFontIndirectW
 0053C205    mov         edx,dword ptr [ebp-4]
 0053C208    mov         dword ptr [edx+314],eax;TCustomTreeView.FOurFont:Integer
 0053C20E    mov         eax,dword ptr [ebp-4]
 0053C211    mov         eax,dword ptr [eax+314];TCustomTreeView.FOurFont:Integer
 0053C217    push        eax
 0053C218    mov         eax,dword ptr [ebp-20]
 0053C21B    mov         eax,dword ptr [eax+10]
 0053C21E    push        eax
 0053C21F    call        gdi32.SelectObject
 0053C224    mov         edx,dword ptr [ebp-4]
 0053C227    mov         dword ptr [edx+318],eax;TCustomTreeView.FStockFont:Integer
 0053C22D    mov         eax,dword ptr [ebp-8]
 0053C230    or          dword ptr [eax+0C],2
 0053C234    mov         cl,1
 0053C236    mov         dl,1
 0053C238    mov         eax,dword ptr [ebp-4]
 0053C23B    mov         ebx,dword ptr [eax]
 0053C23D    call        dword ptr [ebx+120];TCustomTreeView.sub_0053D370
 0053C243    test        al,al
>0053C245    je          0053C24E
 0053C247    mov         eax,dword ptr [ebp-8]
 0053C24A    or          dword ptr [eax+0C],10
 0053C24E    xor         eax,eax
 0053C250    pop         edx
 0053C251    pop         ecx
 0053C252    pop         ecx
 0053C253    mov         dword ptr fs:[eax],edx
 0053C256    push        53C3CB
 0053C25B    mov         eax,dword ptr [ebp-4]
 0053C25E    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C264    xor         edx,edx
 0053C266    call        TCanvas.SetHandle
 0053C26B    ret
>0053C26C    jmp         @HandleFinally
>0053C271    jmp         0053C25B
 0053C273    xor         eax,eax
 0053C275    push        ebp
 0053C276    push        53C30B
 0053C27B    push        dword ptr fs:[eax]
 0053C27E    mov         dword ptr fs:[eax],esp
 0053C281    mov         eax,dword ptr [ebp-20]
 0053C284    mov         edx,dword ptr [eax+10]
 0053C287    mov         eax,dword ptr [ebp-4]
 0053C28A    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C290    call        TCanvas.SetHandle
 0053C295    mov         eax,dword ptr [ebp-4]
 0053C298    mov         edx,dword ptr [eax+74];TCustomTreeView.FFont:TFont
 0053C29B    mov         eax,dword ptr [ebp-4]
 0053C29E    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C2A4    call        TCanvas.SetFont
 0053C2A9    mov         eax,dword ptr [ebp-4]
 0053C2AC    mov         edx,dword ptr [eax+1D0];TCustomTreeView.FBrush:TBrush
 0053C2B2    mov         eax,dword ptr [ebp-4]
 0053C2B5    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C2BB    call        TCanvas.SetBrush
 0053C2C0    mov         cl,1
 0053C2C2    mov         dl,1
 0053C2C4    mov         eax,dword ptr [ebp-4]
 0053C2C7    mov         esi,dword ptr [eax]
 0053C2C9    call        dword ptr [esi+120];TCustomTreeView.sub_0053D370
 0053C2CF    test        al,al
>0053C2D1    je          0053C2ED
 0053C2D3    push        1
 0053C2D5    lea         eax,[ebp-12]
 0053C2D8    push        eax
 0053C2D9    mov         eax,dword ptr [ebp-20]
 0053C2DC    movzx       ecx,word ptr [eax+28]
 0053C2E0    mov         edx,ebx
 0053C2E2    mov         eax,dword ptr [ebp-4]
 0053C2E5    mov         ebx,dword ptr [eax]
 0053C2E7    call        dword ptr [ebx+114];TCustomTreeView.sub_0053D468
 0053C2ED    xor         eax,eax
 0053C2EF    pop         edx
 0053C2F0    pop         ecx
 0053C2F1    pop         ecx
 0053C2F2    mov         dword ptr fs:[eax],edx
 0053C2F5    push        53C312
 0053C2FA    mov         eax,dword ptr [ebp-4]
 0053C2FD    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C303    xor         edx,edx
 0053C305    call        TCanvas.SetHandle
 0053C30A    ret
>0053C30B    jmp         @HandleFinally
>0053C310    jmp         0053C2FA
 0053C312    mov         eax,dword ptr [ebp-4]
 0053C315    cmp         dword ptr [eax+314],0;TCustomTreeView.FOurFont:Integer
>0053C31C    je          0053C3CB
 0053C322    mov         eax,dword ptr [ebp-4]
 0053C325    cmp         dword ptr [eax+318],0;TCustomTreeView.FStockFont:Integer
>0053C32C    je          0053C3CB
 0053C332    mov         eax,dword ptr [ebp-4]
 0053C335    mov         eax,dword ptr [eax+318];TCustomTreeView.FStockFont:Integer
 0053C33B    push        eax
 0053C33C    mov         eax,dword ptr [ebp-20]
 0053C33F    mov         eax,dword ptr [eax+10]
 0053C342    push        eax
 0053C343    call        gdi32.SelectObject
 0053C348    mov         eax,dword ptr [ebp-4]
 0053C34B    mov         eax,dword ptr [eax+314];TCustomTreeView.FOurFont:Integer
 0053C351    push        eax
 0053C352    call        gdi32.DeleteObject
 0053C357    mov         eax,dword ptr [ebp-4]
 0053C35A    xor         edx,edx
 0053C35C    mov         dword ptr [eax+314],edx;TCustomTreeView.FOurFont:Integer
 0053C362    mov         eax,dword ptr [ebp-4]
 0053C365    xor         edx,edx
 0053C367    mov         dword ptr [eax+318],edx;TCustomTreeView.FStockFont:Integer
>0053C36D    jmp         0053C3CB
 0053C36F    mov         cl,2
 0053C371    mov         dl,1
 0053C373    mov         eax,dword ptr [ebp-4]
 0053C376    mov         esi,dword ptr [eax]
 0053C378    call        dword ptr [esi+120];TCustomTreeView.sub_0053D370
 0053C37E    test        al,al
>0053C380    je          0053C3CB
 0053C382    push        2
 0053C384    lea         eax,[ebp-12]
 0053C387    push        eax
 0053C388    mov         eax,dword ptr [ebp-20]
 0053C38B    movzx       ecx,word ptr [eax+28]
 0053C38F    mov         edx,ebx
 0053C391    mov         eax,dword ptr [ebp-4]
 0053C394    mov         ebx,dword ptr [eax]
 0053C396    call        dword ptr [ebx+114];TCustomTreeView.sub_0053D468
>0053C39C    jmp         0053C3CB
 0053C39E    mov         cl,3
 0053C3A0    mov         dl,1
 0053C3A2    mov         eax,dword ptr [ebp-4]
 0053C3A5    mov         esi,dword ptr [eax]
 0053C3A7    call        dword ptr [esi+120];TCustomTreeView.sub_0053D370
 0053C3AD    test        al,al
>0053C3AF    je          0053C3CB
 0053C3B1    push        3
 0053C3B3    lea         eax,[ebp-12]
 0053C3B6    push        eax
 0053C3B7    mov         eax,dword ptr [ebp-20]
 0053C3BA    movzx       ecx,word ptr [eax+28]
 0053C3BE    mov         edx,ebx
 0053C3C0    mov         eax,dword ptr [ebp-4]
 0053C3C3    mov         ebx,dword ptr [eax]
 0053C3C5    call        dword ptr [ebx+114];TCustomTreeView.sub_0053D468
 0053C3CB    xor         eax,eax
 0053C3CD    pop         edx
 0053C3CE    pop         ecx
 0053C3CF    pop         ecx
 0053C3D0    mov         dword ptr fs:[eax],edx
 0053C3D3    push        53C804
 0053C3D8    mov         eax,dword ptr [ebp-4]
 0053C3DB    mov         eax,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 0053C3E1    call        TCustomCanvas.Unlock
 0053C3E6    ret
>0053C3E7    jmp         @HandleFinally
>0053C3EC    jmp         0053C3D8
 0053C3EE    mov         eax,dword ptr [ebp-4]
 0053C3F1    mov         byte ptr [eax+2A4],1;TCustomTreeView.FDragged:Boolean
 0053C3F8    mov         ebx,dword ptr [ebp-8]
 0053C3FB    mov         ebx,dword ptr [ebx+8]
 0053C3FE    lea         edx,[ebx+38]
 0053C401    mov         eax,dword ptr [ebp-4]
 0053C404    call        0053BC3C
 0053C409    mov         edx,dword ptr [ebp-4]
 0053C40C    mov         dword ptr [edx+2AC],eax;TCustomTreeView.FDragNode:TTreeNode
>0053C412    jmp         0053C804
 0053C417    mov         ebx,eax
 0053C419    mov         eax,dword ptr [ebp-4]
 0053C41C    call        TControl.Dragging
 0053C421    test        al,al
>0053C423    jne         0053C442
 0053C425    lea         edx,[ebx+0C]
 0053C428    mov         eax,dword ptr [ebp-4]
 0053C42B    call        0053BC3C
 0053C430    mov         edx,eax
 0053C432    mov         eax,dword ptr [ebp-4]
 0053C435    mov         si,0FFAD
 0053C439    call        @CallDynaInst;TCustomTreeView.sub_0053CC4C
 0053C43E    test        al,al
>0053C440    jne         0053C44C
 0053C442    mov         eax,dword ptr [ebp-8]
 0053C445    mov         dword ptr [eax+0C],1
 0053C44C    mov         eax,dword ptr [ebp-8]
 0053C44F    cmp         dword ptr [eax+0C],0
>0053C453    jne         0053C804
 0053C459    mov         eax,dword ptr [ebp-4]
 0053C45C    call        TWinControl.GetHandle
 0053C461    mov         ebx,eax
 0053C463    push        0
 0053C465    push        0
 0053C467    push        110F
 0053C46C    push        ebx
 0053C46D    call        user32.SendMessageW
 0053C472    mov         ecx,dword ptr [ebp-4]
 0053C475    mov         edx,eax
 0053C477    mov         dword ptr [ecx+2B0],edx
 0053C47D    mov         eax,edx
 0053C47F    push        0FC
 0053C481    push        eax
 0053C482    call        user32.GetWindowLongW
 0053C487    mov         edx,dword ptr [ebp-4]
 0053C48A    mov         dword ptr [edx+29C],eax;TCustomTreeView.FDefEditProc:Pointer
 0053C490    mov         eax,dword ptr [ebp-4]
 0053C493    mov         eax,dword ptr [eax+2B0];TCustomTreeView.FEditHandle:HWND
 0053C499    mov         edx,dword ptr [ebp-4]
 0053C49C    mov         edx,dword ptr [edx+2A0];TCustomTreeView.FEditInstance:Pointer
 0053C4A2    push        edx
 0053C4A3    push        0FC
 0053C4A5    push        eax
 0053C4A6    call        user32.SetWindowLongW
>0053C4AB    jmp         0053C804
 0053C4B0    lea         edx,[eax+0C]
 0053C4B3    mov         eax,dword ptr [ebp-4]
 0053C4B6    mov         si,0FFA5
 0053C4BA    call        @CallDynaInst;TCustomTreeView.sub_0053CC78
>0053C4BF    jmp         0053C804
 0053C4C4    mov         edx,dword ptr [ebp-4]
 0053C4C7    cmp         byte ptr [edx+2D1],0;TCustomTreeView.FManualNotify:Boolean
>0053C4CE    jne         0053C804
 0053C4D4    mov         edi,eax
 0053C4D6    lea         edx,[edi+38]
 0053C4D9    mov         eax,dword ptr [ebp-4]
 0053C4DC    call        0053BC3C
 0053C4E1    mov         ebx,eax
 0053C4E3    cmp         dword ptr [edi+0C],2
>0053C4E7    jne         0053C50A
 0053C4E9    mov         edx,ebx
 0053C4EB    mov         eax,dword ptr [ebp-4]
 0053C4EE    mov         si,0FFAA
 0053C4F2    call        @CallDynaInst;TCustomTreeView.sub_0053CBCC
 0053C4F7    test        al,al
>0053C4F9    jne         0053C50A
 0053C4FB    mov         eax,dword ptr [ebp-8]
 0053C4FE    mov         dword ptr [eax+0C],1
>0053C505    jmp         0053C804
 0053C50A    cmp         dword ptr [edi+0C],1
>0053C50E    jne         0053C804
 0053C514    mov         edx,ebx
 0053C516    mov         eax,dword ptr [ebp-4]
 0053C519    mov         si,0FFAB
 0053C51D    call        @CallDynaInst;TCustomTreeView.sub_0053CC20
 0053C522    test        al,al
>0053C524    jne         0053C804
 0053C52A    mov         eax,dword ptr [ebp-8]
 0053C52D    mov         dword ptr [eax+0C],1
>0053C534    jmp         0053C804
 0053C539    mov         edx,dword ptr [ebp-4]
 0053C53C    cmp         byte ptr [edx+2D1],0;TCustomTreeView.FManualNotify:Boolean
>0053C543    jne         0053C804
 0053C549    mov         esi,eax
 0053C54B    lea         edx,[esi+38]
 0053C54E    mov         eax,dword ptr [ebp-4]
 0053C551    call        0053BC3C
 0053C556    mov         ebx,eax
 0053C558    cmp         dword ptr [esi+0C],2
>0053C55C    jne         0053C571
 0053C55E    mov         edx,ebx
 0053C560    mov         eax,dword ptr [ebp-4]
 0053C563    mov         si,0FFA4
 0053C567    call        @CallDynaInst;TCustomTreeView.sub_0053CBA4
>0053C56C    jmp         0053C804
 0053C571    cmp         dword ptr [esi+0C],1
>0053C575    jne         0053C804
 0053C57B    mov         edx,ebx
 0053C57D    mov         eax,dword ptr [ebp-4]
 0053C580    mov         si,0FFA8
 0053C584    call        @CallDynaInst;TCustomTreeView.sub_0053CC00
>0053C589    jmp         0053C804
 0053C58E    mov         ebx,eax
 0053C590    lea         edx,[ebx+38]
 0053C593    mov         eax,dword ptr [ebp-4]
 0053C596    call        0053BC3C
 0053C59B    mov         edx,eax
 0053C59D    mov         eax,dword ptr [ebp-4]
 0053C5A0    mov         si,0FFAC
 0053C5A4    call        @CallDynaInst;TCustomTreeView.sub_0053CAB8
 0053C5A9    test        al,al
>0053C5AB    jne         0053C804
 0053C5B1    mov         eax,dword ptr [ebp-8]
 0053C5B4    mov         dword ptr [eax+0C],1
>0053C5BB    jmp         0053C804
 0053C5C0    mov         esi,eax
 0053C5C2    mov         eax,dword ptr [ebp-4]
 0053C5C5    mov         eax,dword ptr [eax+3C8];TCustomTreeView.FChangeTimer:TTimer
 0053C5CB    cmp         dword ptr [eax+40],0;TTimer.FInterval:Cardinal
>0053C5CF    jbe         0053C5F8
 0053C5D1    mov         ebx,eax
 0053C5D3    xor         edx,edx
 0053C5D5    mov         eax,ebx
 0053C5D7    call        TTimer.SetEnabled
 0053C5DC    lea         edx,[esi+38]
 0053C5DF    mov         eax,dword ptr [ebp-4]
 0053C5E2    call        0053BC3C
 0053C5E7    mov         dword ptr [ebx+0C],eax;TTimer.FTag:NativeInt
 0053C5EA    mov         dl,1
 0053C5EC    mov         eax,ebx
 0053C5EE    call        TTimer.SetEnabled
>0053C5F3    jmp         0053C804
 0053C5F8    lea         edx,[esi+38]
 0053C5FB    mov         eax,dword ptr [ebp-4]
 0053C5FE    call        0053BC3C
 0053C603    mov         edx,eax
 0053C605    mov         eax,dword ptr [ebp-4]
 0053C608    mov         si,0FFA9
 0053C60C    call        @CallDynaInst;TCustomTreeView.sub_0053CAF4
>0053C611    jmp         0053C804
 0053C616    lea         edx,[eax+10]
 0053C619    mov         eax,dword ptr [ebp-4]
 0053C61C    call        0053BC3C
 0053C621    mov         ebx,eax
 0053C623    test        ebx,ebx
>0053C625    je          0053C804
 0053C62B    xor         eax,eax
 0053C62D    mov         dword ptr [ebx+10],eax
 0053C630    mov         eax,dword ptr [ebp-4]
 0053C633    mov         eax,dword ptr [eax+3C8];TCustomTreeView.FChangeTimer:TTimer
 0053C639    xor         edx,edx
 0053C63B    call        TTimer.SetEnabled
 0053C640    mov         eax,dword ptr [ebp-4]
 0053C643    cmp         byte ptr [eax+2E8],0;TCustomTreeView.FStateChanging:Boolean
>0053C64A    je          0053C658
 0053C64C    mov         eax,ebx
 0053C64E    call        TTreeNode.Delete
>0053C653    jmp         0053C804
 0053C658    mov         eax,dword ptr [ebp-4]
 0053C65B    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053C661    mov         edx,ebx
 0053C663    call        TTreeNodes.Delete
>0053C668    jmp         0053C804
 0053C66D    mov         esi,eax
 0053C66F    lea         edx,[esi+0C]
 0053C672    mov         eax,dword ptr [ebp-4]
 0053C675    call        0053BC3C
 0053C67A    mov         ebx,eax
 0053C67C    test        ebx,ebx
>0053C67E    je          0053C804
 0053C684    test        byte ptr [esi+0C],1
>0053C688    je          0053C804
 0053C68E    lea         eax,[ebp-0D4]
 0053C694    mov         edx,dword ptr [esi+1C]
 0053C697    call        @UStrFromPWChar
 0053C69C    mov         edx,dword ptr [ebp-0D4]
 0053C6A2    mov         eax,ebx
 0053C6A4    call        00538A00
>0053C6A9    jmp         0053C804
 0053C6AE    mov         esi,eax
 0053C6B0    lea         edx,[esi+0C]
 0053C6B3    mov         eax,dword ptr [ebp-4]
 0053C6B6    call        0053BC3C
 0053C6BB    mov         ebx,eax
 0053C6BD    test        ebx,ebx
>0053C6BF    je          0053C804
 0053C6C5    test        byte ptr [esi+0C],1
>0053C6C9    je          0053C6E1
 0053C6CB    mov         eax,dword ptr [ebx+8]
 0053C6CE    call        @UStrToPWChar
 0053C6D3    mov         edx,eax
 0053C6D5    mov         ecx,dword ptr [esi+20]
 0053C6D8    dec         ecx
 0053C6D9    mov         eax,dword ptr [esi+1C]
 0053C6DC    call        StrLCopy
 0053C6E1    test        byte ptr [esi+0C],2
>0053C6E5    je          0053C6FA
 0053C6E7    mov         edx,ebx
 0053C6E9    mov         eax,dword ptr [ebp-4]
 0053C6EC    mov         ecx,dword ptr [eax]
 0053C6EE    call        dword ptr [ecx+118];TCustomTreeView.sub_0053CA78
 0053C6F4    mov         eax,dword ptr [ebx+14]
 0053C6F7    mov         dword ptr [esi+24],eax
 0053C6FA    test        byte ptr [esi+0C],20
>0053C6FE    je          0053C804
 0053C704    mov         edx,ebx
 0053C706    mov         eax,dword ptr [ebp-4]
 0053C709    mov         ecx,dword ptr [eax]
 0053C70B    call        dword ptr [ecx+11C];TCustomTreeView.sub_0053CA98
 0053C711    mov         eax,dword ptr [ebx+18]
 0053C714    mov         dword ptr [esi+28],eax
>0053C717    jmp         0053C804
 0053C71C    mov         eax,dword ptr [ebp-4]
 0053C71F    xor         edx,edx
 0053C721    mov         dword ptr [eax+2CC],edx;TCustomTreeView.FRClickNode:TTreeNode
 0053C727    lea         eax,[ebp-10]
 0053C72A    push        eax
 0053C72B    call        user32.GetCursorPos
 0053C730    mov         eax,dword ptr [ebp-4]
 0053C733    cmp         byte ptr [eax+2D0],0;TCustomTreeView.FRightClickSelect:Boolean
>0053C73A    je          0053C7CB
 0053C740    lea         ecx,[ebp-34]
 0053C743    lea         edx,[ebp-10]
 0053C746    mov         eax,dword ptr [ebp-4]
 0053C749    call        TControl.ScreenToClient
 0053C74E    movzx       eax,word ptr [ebp-34]
 0053C752    mov         word ptr [ebp-38],ax
 0053C756    movzx       eax,word ptr [ebp-30]
 0053C75A    mov         word ptr [ebp-36],ax
 0053C75E    mov         eax,dword ptr [ebp-38]
 0053C761    mov         dword ptr [ebp-28],eax
 0053C764    movsx       ecx,word ptr [ebp-26]
 0053C768    movsx       edx,word ptr [ebp-28]
 0053C76C    mov         eax,dword ptr [ebp-4]
 0053C76F    call        TCustomTreeView.GetNodeAt
 0053C774    mov         edx,dword ptr [ebp-4]
 0053C777    mov         dword ptr [edx+2CC],eax;TCustomTreeView.FRClickNode:TTreeNode
 0053C77D    movzx       eax,word ptr [ebp-10]
 0053C781    mov         word ptr [ebp-3C],ax
 0053C785    movzx       eax,word ptr [ebp-0C]
 0053C789    mov         word ptr [ebp-3A],ax
 0053C78D    mov         eax,dword ptr [ebp-3C]
 0053C790    mov         dword ptr [ebp-16],eax
 0053C793    mov         eax,dword ptr [ebp-4]
 0053C796    call        TWinControl.GetHandle
 0053C79B    movzx       edx,word ptr [ebp-14]
 0053C79F    movzx       ecx,word ptr [ebp-16]
 0053C7A3    movzx       ecx,cx
 0053C7A6    movzx       edx,dx
 0053C7A9    shl         edx,10
 0053C7AC    or          ecx,edx
 0053C7AE    push        ecx
 0053C7AF    mov         ecx,eax
 0053C7B1    mov         eax,dword ptr [ebp-4]
 0053C7B4    mov         edx,7B
 0053C7B9    call        TControl.Perform
 0053C7BE    mov         eax,dword ptr [ebp-4]
 0053C7C1    xor         edx,edx
 0053C7C3    mov         dword ptr [eax+2CC],edx;TCustomTreeView.FRClickNode:TTreeNode
>0053C7C9    jmp         0053C7FA
 0053C7CB    mov         eax,dword ptr [ebp-4]
 0053C7CE    call        TWinControl.GetHandle
 0053C7D3    mov         ebx,eax
 0053C7D5    mov         eax,dword ptr [ebp-4]
 0053C7D8    call        TWinControl.GetHandle
 0053C7DD    movzx       edx,word ptr [ebp-0C]
 0053C7E1    movzx       ecx,word ptr [ebp-10]
 0053C7E5    movzx       edx,dx
 0053C7E8    shl         edx,10
 0053C7EB    or          ecx,edx
 0053C7ED    push        ecx
 0053C7EE    push        eax
 0053C7EF    push        0BC7B
 0053C7F4    push        ebx
 0053C7F5    call        user32.PostMessageW
 0053C7FA    mov         eax,dword ptr [ebp-8]
 0053C7FD    mov         dword ptr [eax+0C],1
 0053C804    xor         eax,eax
 0053C806    pop         edx
 0053C807    pop         ecx
 0053C808    pop         ecx
 0053C809    mov         dword ptr fs:[eax],edx
 0053C80C    push        53C824
 0053C811    lea         eax,[ebp-0D4]
 0053C817    call        @UStrClr
 0053C81C    ret
>0053C81D    jmp         @HandleFinally
>0053C822    jmp         0053C811
 0053C824    pop         edi
 0053C825    pop         esi
 0053C826    pop         ebx
 0053C827    mov         esp,ebp
 0053C829    pop         ebp
 0053C82A    ret
end;*}

//0053C82C
function TCustomTreeView.GetDragImages:TDragImageList;
begin
{*
 0053C82C    push        ebx
 0053C82D    mov         ebx,eax
 0053C82F    mov         eax,dword ptr [ebx+2A8];TCustomTreeView.FDragImage:TDragImageList
 0053C835    mov         edx,dword ptr [eax]
 0053C837    call        dword ptr [edx+48];TDragImageList.sub_005A8A54
 0053C83A    test        eax,eax
>0053C83C    jle         0053C846
 0053C83E    mov         eax,dword ptr [ebx+2A8];TCustomTreeView.FDragImage:TDragImageList
 0053C844    pop         ebx
 0053C845    ret
 0053C846    xor         eax,eax
 0053C848    pop         ebx
 0053C849    ret
*}
end;

//0053C84C
{*procedure sub_0053C84C(?:?);
begin
 0053C84C    push        ebx
 0053C84D    push        esi
 0053C84E    push        edi
 0053C84F    mov         esi,edx
 0053C851    mov         ebx,eax
 0053C853    test        byte ptr [ebx+1C],10;TCustomTreeView.FComponentState:TComponentState
>0053C857    jne         0053C8AA
 0053C859    mov         edi,dword ptr [esi]
 0053C85B    cmp         edi,201
>0053C861    je          0053C86B
 0053C863    cmp         edi,203
>0053C869    jne         0053C8AA
 0053C86B    mov         eax,ebx
 0053C86D    call        TControl.Dragging
 0053C872    test        al,al
>0053C874    jne         0053C8AA
 0053C876    mov         eax,ebx
 0053C878    call        TGroupBox.GetDragMode
 0053C87D    cmp         al,1
>0053C87F    jne         0053C8AA
 0053C881    cmp         byte ptr [ebx+9B],0;TCustomTreeView.FDragKind:TDragKind
>0053C888    jne         0053C8AA
 0053C88A    mov         edx,esi
 0053C88C    mov         eax,ebx
 0053C88E    call        TWinControl.IsControlMouseMsg
 0053C893    test        al,al
>0053C895    jne         0053C8D3
 0053C897    mov         eax,[0053C8D8];0x1 gvar_0053C8D8
 0053C89C    or          dword ptr [ebx+64],eax;TCustomTreeView.FControlState:TControlState
 0053C89F    mov         edx,esi
 0053C8A1    mov         eax,ebx
 0053C8A3    mov         ecx,dword ptr [eax]
 0053C8A5    call        dword ptr [ecx-14];TObject.Dispatch
>0053C8A8    jmp         0053C8D3
 0053C8AA    cmp         dword ptr [esi],0BC7B
>0053C8B0    jne         0053C8CA
 0053C8B2    mov         eax,dword ptr [esi+8]
 0053C8B5    push        eax
 0053C8B6    mov         ecx,dword ptr [esi+4]
 0053C8B9    mov         edx,7B
 0053C8BE    mov         eax,ebx
 0053C8C0    call        TControl.Perform
 0053C8C5    mov         dword ptr [esi+0C],eax
>0053C8C8    jmp         0053C8D3
 0053C8CA    mov         edx,esi
 0053C8CC    mov         eax,ebx
 0053C8CE    call        004ECAFC
 0053C8D3    pop         edi
 0053C8D4    pop         esi
 0053C8D5    pop         ebx
 0053C8D6    ret
end;*}

//0053C8DC
{*procedure TCustomTreeView.sub_004E7840(?:?);
begin
 0053C8DC    push        ebx
 0053C8DD    push        esi
 0053C8DE    push        edi
 0053C8DF    add         esp,0FFFFFFF0
 0053C8E2    mov         ebx,eax
 0053C8E4    mov         eax,ebx
 0053C8E6    call        TControl.sub_004E7840
 0053C8EB    mov         esi,dword ptr [ebx+2AC];TCustomTreeView.FDragNode:TTreeNode
 0053C8F1    xor         eax,eax
 0053C8F3    mov         dword ptr [ebx+2C4],eax;TCustomTreeView.FLastDropTarget:TTreeNode
 0053C8F9    xor         eax,eax
 0053C8FB    mov         dword ptr [ebx+2AC],eax;TCustomTreeView.FDragNode:TTreeNode
 0053C901    test        esi,esi
>0053C903    jne         0053C929
 0053C905    push        esp
 0053C906    call        user32.GetCursorPos
 0053C90B    lea         ecx,[esp+8]
 0053C90F    mov         edx,esp
 0053C911    mov         eax,ebx
 0053C913    call        TControl.ScreenToClient
 0053C918    mov         ecx,dword ptr [esp+0C]
 0053C91C    mov         edx,dword ptr [esp+8]
 0053C920    mov         eax,ebx
 0053C922    call        TCustomTreeView.GetNodeAt
 0053C927    mov         esi,eax
 0053C929    test        esi,esi
>0053C92B    je          0053C96A
 0053C92D    mov         eax,ebx
 0053C92F    call        TWinControl.GetHandle
 0053C934    mov         edi,eax
 0053C936    mov         esi,dword ptr [esi+10];TTreeNode.FItemId:HTREEITEM
 0053C939    push        esi
 0053C93A    push        0
 0053C93C    push        1112
 0053C941    push        edi
 0053C942    call        user32.SendMessageW
 0053C947    test        eax,eax
>0053C949    je          0053C96A
 0053C94B    mov         ebx,dword ptr [ebx+2A8];TCustomTreeView.FDragImage:TDragImageList
 0053C951    mov         edx,eax
 0053C953    mov         eax,ebx
 0053C955    call        005A8660
 0053C95A    push        2
 0053C95C    mov         ecx,2
 0053C961    xor         edx,edx
 0053C963    mov         eax,ebx
 0053C965    call        TDragImageList.SetDragImage
 0053C96A    add         esp,10
 0053C96D    pop         edi
 0053C96E    pop         esi
 0053C96F    pop         ebx
 0053C970    ret
end;*}

//0053C974
{*procedure TCustomTreeView.sub_004E7880(?:?; ?:?);
begin
 0053C974    push        ebp
 0053C975    mov         ebp,esp
 0053C977    push        ebx
 0053C978    mov         ebx,eax
 0053C97A    mov         eax,dword ptr [ebp+8]
 0053C97D    push        eax
 0053C97E    mov         eax,ebx
 0053C980    call        TControl.sub_004E7880
 0053C985    xor         eax,eax
 0053C987    mov         dword ptr [ebx+2C4],eax;TCustomTreeView.FLastDropTarget:TTreeNode
 0053C98D    pop         ebx
 0053C98E    pop         ebp
 0053C98F    ret         4
end;*}

//0053C994
procedure TCustomTreeView.CMDrag(Message:TCMDrag);
begin
{*
 0053C994    push        ebx
 0053C995    push        esi
 0053C996    push        edi
 0053C997    add         esp,0FFFFFFF8
 0053C99A    mov         esi,edx
 0053C99C    mov         ebx,eax
 0053C99E    mov         edx,esi
 0053C9A0    mov         eax,ebx
 0053C9A2    call        TWinControl.CMDrag
 0053C9A7    mov         edi,dword ptr [esi+8]
 0053C9AA    movzx       eax,byte ptr [esi+4]
 0053C9AE    dec         al
>0053C9B0    je          0053C9E4
 0053C9B2    dec         al
>0053C9B4    je          0053C9BC
 0053C9B6    dec         al
>0053C9B8    je          0053CA0C
>0053C9BA    jmp         0053CA14
 0053C9BC    mov         ecx,esp
 0053C9BE    mov         edx,edi
 0053C9C0    mov         eax,ebx
 0053C9C2    call        TControl.ScreenToClient
 0053C9C7    mov         eax,dword ptr [esp+4]
 0053C9CB    push        eax
 0053C9CC    cmp         dword ptr [esi+0C],0
 0053C9D0    setne       al
 0053C9D3    push        eax
 0053C9D4    mov         edx,dword ptr [edi+8]
 0053C9D7    mov         ecx,dword ptr [esp+8]
 0053C9DB    mov         eax,ebx
 0053C9DD    call        0053CA1C
>0053C9E2    jmp         0053CA14
 0053C9E4    mov         eax,dword ptr [edi+8]
 0053C9E7    mov         edx,dword ptr [eax]
 0053C9E9    call        dword ptr [edx+18]
 0053C9EC    mov         eax,ebx
 0053C9EE    call        0053BBD0
 0053C9F3    mov         dword ptr [ebx+2C4],eax;TCustomTreeView.FLastDropTarget:TTreeNode
 0053C9F9    xor         edx,edx
 0053C9FB    mov         eax,ebx
 0053C9FD    call        0053BC08
 0053CA02    mov         eax,dword ptr [edi+8]
 0053CA05    mov         edx,dword ptr [eax]
 0053CA07    call        dword ptr [edx+20]
>0053CA0A    jmp         0053CA14
 0053CA0C    xor         eax,eax
 0053CA0E    mov         dword ptr [ebx+2C4],eax;TCustomTreeView.FLastDropTarget:TTreeNode
 0053CA14    pop         ecx
 0053CA15    pop         edx
 0053CA16    pop         edi
 0053CA17    pop         esi
 0053CA18    pop         ebx
 0053CA19    ret
*}
end;

//0053CA1C
{*procedure sub_0053CA1C(?:TCustomTreeView; ?:?; ?:?; ?:?);
begin
 0053CA1C    push        ebp
 0053CA1D    mov         ebp,esp
 0053CA1F    push        ecx
 0053CA20    push        ebx
 0053CA21    push        esi
 0053CA22    push        edi
 0053CA23    mov         dword ptr [ebp-4],ecx
 0053CA26    mov         edi,edx
 0053CA28    mov         ebx,eax
 0053CA2A    mov         ecx,dword ptr [ebp+0C]
 0053CA2D    mov         edx,dword ptr [ebp-4]
 0053CA30    mov         eax,ebx
 0053CA32    call        TCustomTreeView.GetNodeAt
 0053CA37    mov         esi,eax
 0053CA39    test        esi,esi
>0053CA3B    je          0053CA6F
 0053CA3D    mov         eax,ebx
 0053CA3F    call        0053BBD0
 0053CA44    cmp         esi,eax
>0053CA46    jne         0053CA50
 0053CA48    cmp         esi,dword ptr [ebx+2C4];TCustomTreeView.FLastDropTarget:TTreeNode
>0053CA4E    jne         0053CA6F
 0053CA50    xor         eax,eax
 0053CA52    mov         dword ptr [ebx+2C4],eax;TCustomTreeView.FLastDropTarget:TTreeNode
 0053CA58    mov         eax,edi
 0053CA5A    mov         edx,dword ptr [eax]
 0053CA5C    call        dword ptr [edx+18]
 0053CA5F    mov         dl,1
 0053CA61    mov         eax,esi
 0053CA63    call        005390F0
 0053CA68    mov         eax,edi
 0053CA6A    mov         edx,dword ptr [eax]
 0053CA6C    call        dword ptr [edx+20]
 0053CA6F    pop         edi
 0053CA70    pop         esi
 0053CA71    pop         ebx
 0053CA72    pop         ecx
 0053CA73    pop         ebp
 0053CA74    ret         8
end;*}

//0053CA78
{*procedure sub_0053CA78(?:?);
begin
 0053CA78    push        ebx
 0053CA79    cmp         word ptr [eax+3AA],0;TCustomTreeView.?f3AA:word
>0053CA81    je          0053CA95
 0053CA83    mov         ebx,eax
 0053CA85    mov         ecx,edx
 0053CA87    mov         edx,eax
 0053CA89    mov         eax,dword ptr [ebx+3AC];TCustomTreeView.?f3AC:dword
 0053CA8F    call        dword ptr [ebx+3A8];TCustomTreeView.FOnGetImageIndex
 0053CA95    pop         ebx
 0053CA96    ret
end;*}

//0053CA98
{*procedure sub_0053CA98(?:?);
begin
 0053CA98    push        ebx
 0053CA99    cmp         word ptr [eax+3B2],0;TCustomTreeView.?f3B2:word
>0053CAA1    je          0053CAB5
 0053CAA3    mov         ebx,eax
 0053CAA5    mov         ecx,edx
 0053CAA7    mov         edx,eax
 0053CAA9    mov         eax,dword ptr [ebx+3B4];TCustomTreeView.?f3B4:dword
 0053CAAF    call        dword ptr [ebx+3B0];TCustomTreeView.FOnGetSelectedIndex
 0053CAB5    pop         ebx
 0053CAB6    ret
end;*}

//0053CAB8
{*procedure TCustomTreeView.sub_0053CAB8(?:?);
begin
 0053CAB8    push        ebx
 0053CAB9    push        ecx
 0053CABA    mov         byte ptr [esp],1
 0053CABE    cmp         byte ptr [eax+31D],0;TCustomTreeView.FReading:Boolean
>0053CAC5    jne         0053CAEA
 0053CAC7    test        byte ptr [eax+65],20;TCustomTreeView.FAlign:TAlign
>0053CACB    jne         0053CAEA
 0053CACD    cmp         word ptr [eax+34A],0;TCustomTreeView.?f34A:word
>0053CAD5    je          0053CAEA
 0053CAD7    push        esp
 0053CAD8    mov         ebx,eax
 0053CADA    mov         ecx,edx
 0053CADC    mov         edx,eax
 0053CADE    mov         eax,dword ptr [ebx+34C];TCustomTreeView.?f34C:dword
 0053CAE4    call        dword ptr [ebx+348];TCustomTreeView.FOnChanging
 0053CAEA    movzx       eax,byte ptr [esp]
 0053CAEE    pop         edx
 0053CAEF    pop         ebx
 0053CAF0    ret
end;*}

//0053CAF4
{*procedure TCustomTreeView.sub_0053CAF4(?:?);
begin
 0053CAF4    push        ebx
 0053CAF5    push        esi
 0053CAF6    mov         esi,edx
 0053CAF8    mov         ebx,eax
 0053CAFA    mov         byte ptr [ebx+311],1;TCustomTreeView.FSelectChanged:Boolean
 0053CB01    xor         eax,eax
 0053CB03    call        KeyDataToShiftState
 0053CB08    or          ax,word ptr ds:[53CB50];0x8 gvar_0053CB50
 0053CB0F    push        eax
 0053CB10    mov         eax,ebx
 0053CB12    call        0053BB4C
 0053CB17    mov         edx,eax
 0053CB19    mov         eax,ebx
 0053CB1B    pop         ecx
 0053CB1C    call        0053D5C4
 0053CB21    cmp         byte ptr [ebx+31D],0;TCustomTreeView.FReading:Boolean
>0053CB28    jne         0053CB4A
 0053CB2A    test        byte ptr [ebx+65],20;TCustomTreeView.FAlign:TAlign
>0053CB2E    jne         0053CB4A
 0053CB30    cmp         word ptr [ebx+342],0;TCustomTreeView.?f342:word
>0053CB38    je          0053CB4A
 0053CB3A    mov         ecx,esi
 0053CB3C    mov         edx,ebx
 0053CB3E    mov         eax,dword ptr [ebx+344];TCustomTreeView.?f344:dword
 0053CB44    call        dword ptr [ebx+340];TCustomTreeView.FOnChange
 0053CB4A    pop         esi
 0053CB4B    pop         ebx
 0053CB4C    ret
end;*}

//0053CB54
{*procedure TCustomTreeView.sub_0053CB54(?:?);
begin
 0053CB54    push        ebx
 0053CB55    cmp         byte ptr [eax+31D],0;TCustomTreeView.FReading:Boolean
>0053CB5C    jne         0053CB7A
 0053CB5E    cmp         word ptr [eax+382],0;TCustomTreeView.?f382:word
>0053CB66    je          0053CB7A
 0053CB68    mov         ebx,eax
 0053CB6A    mov         ecx,edx
 0053CB6C    mov         edx,eax
 0053CB6E    mov         eax,dword ptr [ebx+384];TCustomTreeView.?f384:dword
 0053CB74    call        dword ptr [ebx+380];TCustomTreeView.FOnAddition
 0053CB7A    pop         ebx
 0053CB7B    ret
end;*}

//0053CB7C
{*procedure TCustomTreeView.sub_0053CB7C(?:?);
begin
 0053CB7C    push        ebx
 0053CB7D    cmp         byte ptr [eax+31D],0;TCustomTreeView.FReading:Boolean
>0053CB84    jne         0053CBA2
 0053CB86    cmp         word ptr [eax+37A],0;TCustomTreeView.?f37A:word
>0053CB8E    je          0053CBA2
 0053CB90    mov         ebx,eax
 0053CB92    mov         ecx,edx
 0053CB94    mov         edx,eax
 0053CB96    mov         eax,dword ptr [ebx+37C];TCustomTreeView.?f37C:dword
 0053CB9C    call        dword ptr [ebx+378];TCustomTreeView.FOnDeletion
 0053CBA2    pop         ebx
 0053CBA3    ret
end;*}

//0053CBA4
{*procedure TCustomTreeView.sub_0053CBA4(?:?);
begin
 0053CBA4    push        ebx
 0053CBA5    cmp         byte ptr [eax+31D],0;TCustomTreeView.FReading:Boolean
>0053CBAC    jne         0053CBCA
 0053CBAE    cmp         word ptr [eax+39A],0;TCustomTreeView.?f39A:word
>0053CBB6    je          0053CBCA
 0053CBB8    mov         ebx,eax
 0053CBBA    mov         ecx,edx
 0053CBBC    mov         edx,eax
 0053CBBE    mov         eax,dword ptr [ebx+39C];TCustomTreeView.?f39C:dword
 0053CBC4    call        dword ptr [ebx+398];TCustomTreeView.FOnExpanded
 0053CBCA    pop         ebx
 0053CBCB    ret
end;*}

//0053CBCC
{*procedure TCustomTreeView.sub_0053CBCC(?:?);
begin
 0053CBCC    push        ebx
 0053CBCD    push        ecx
 0053CBCE    mov         byte ptr [esp],1
 0053CBD2    cmp         byte ptr [eax+31D],0;TCustomTreeView.FReading:Boolean
>0053CBD9    jne         0053CBF8
 0053CBDB    cmp         word ptr [eax+3A2],0;TCustomTreeView.?f3A2:word
>0053CBE3    je          0053CBF8
 0053CBE5    push        esp
 0053CBE6    mov         ebx,eax
 0053CBE8    mov         ecx,edx
 0053CBEA    mov         edx,eax
 0053CBEC    mov         eax,dword ptr [ebx+3A4];TCustomTreeView.?f3A4:dword
 0053CBF2    call        dword ptr [ebx+3A0];TCustomTreeView.FOnExpanding
 0053CBF8    movzx       eax,byte ptr [esp]
 0053CBFC    pop         edx
 0053CBFD    pop         ebx
 0053CBFE    ret
end;*}

//0053CC00
{*procedure TCustomTreeView.sub_0053CC00(?:?);
begin
 0053CC00    push        ebx
 0053CC01    cmp         word ptr [eax+352],0;TCustomTreeView.?f352:word
>0053CC09    je          0053CC1D
 0053CC0B    mov         ebx,eax
 0053CC0D    mov         ecx,edx
 0053CC0F    mov         edx,eax
 0053CC11    mov         eax,dword ptr [ebx+354];TCustomTreeView.?f354:dword
 0053CC17    call        dword ptr [ebx+350];TCustomTreeView.FOnCollapsed
 0053CC1D    pop         ebx
 0053CC1E    ret
end;*}

//0053CC20
{*procedure TCustomTreeView.sub_0053CC20(?:?);
begin
 0053CC20    push        ebx
 0053CC21    push        ecx
 0053CC22    mov         byte ptr [esp],1
 0053CC26    cmp         word ptr [eax+35A],0;TCustomTreeView.?f35A:word
>0053CC2E    je          0053CC43
 0053CC30    push        esp
 0053CC31    mov         ebx,eax
 0053CC33    mov         ecx,edx
 0053CC35    mov         edx,eax
 0053CC37    mov         eax,dword ptr [ebx+35C];TCustomTreeView.?f35C:dword
 0053CC3D    call        dword ptr [ebx+358];TCustomTreeView.FOnCollapsing
 0053CC43    movzx       eax,byte ptr [esp]
 0053CC47    pop         edx
 0053CC48    pop         ebx
 0053CC49    ret
end;*}

//0053CC4C
{*procedure TCustomTreeView.sub_0053CC4C(?:?);
begin
 0053CC4C    push        ebx
 0053CC4D    push        ecx
 0053CC4E    mov         byte ptr [esp],1
 0053CC52    cmp         word ptr [eax+38A],0;TCustomTreeView.?f38A:word
>0053CC5A    je          0053CC6F
 0053CC5C    push        esp
 0053CC5D    mov         ebx,eax
 0053CC5F    mov         ecx,edx
 0053CC61    mov         edx,eax
 0053CC63    mov         eax,dword ptr [ebx+38C];TCustomTreeView.?f38C:dword
 0053CC69    call        dword ptr [ebx+388];TCustomTreeView.FOnEditing
 0053CC6F    movzx       eax,byte ptr [esp]
 0053CC73    pop         edx
 0053CC74    pop         ebx
 0053CC75    ret
end;*}

//0053CC78
{*procedure TCustomTreeView.sub_0053CC78(?:?);
begin
 0053CC78    push        ebp
 0053CC79    mov         ebp,esp
 0053CC7B    add         esp,0FFFFFFF8
 0053CC7E    push        ebx
 0053CC7F    push        esi
 0053CC80    push        edi
 0053CC81    xor         ecx,ecx
 0053CC83    mov         dword ptr [ebp-4],ecx
 0053CC86    mov         esi,edx
 0053CC88    mov         ebx,eax
 0053CC8A    xor         eax,eax
 0053CC8C    push        ebp
 0053CC8D    push        53CD18
 0053CC92    push        dword ptr fs:[eax]
 0053CC95    mov         dword ptr fs:[eax],esp
 0053CC98    mov         edx,esi
 0053CC9A    mov         eax,ebx
 0053CC9C    call        0053BC3C
 0053CCA1    mov         dword ptr [ebp-8],eax
 0053CCA4    mov         edi,dword ptr [esi+10]
 0053CCA7    test        edi,edi
>0053CCA9    je          0053CCE7
 0053CCAB    lea         eax,[ebp-4]
 0053CCAE    mov         edx,edi
 0053CCB0    call        @UStrFromPWChar
 0053CCB5    cmp         word ptr [ebx+392],0;TCustomTreeView.?f392:word
>0053CCBD    je          0053CCD4
 0053CCBF    lea         eax,[ebp-4]
 0053CCC2    push        eax
 0053CCC3    mov         ecx,dword ptr [ebp-8]
 0053CCC6    mov         edx,ebx
 0053CCC8    mov         eax,dword ptr [ebx+394];TCustomTreeView.?f394:dword
 0053CCCE    call        dword ptr [ebx+390];TCustomTreeView.FOnEdited
 0053CCD4    cmp         dword ptr [ebp-8],0
>0053CCD8    je          0053CD02
 0053CCDA    mov         edx,dword ptr [ebp-4]
 0053CCDD    mov         eax,dword ptr [ebp-8]
 0053CCE0    call        00538A00
>0053CCE5    jmp         0053CD02
 0053CCE7    cmp         word ptr [ebx+33A],0;TCustomTreeView.?f33A:word
>0053CCEF    je          0053CD02
 0053CCF1    mov         ecx,dword ptr [ebp-8]
 0053CCF4    mov         edx,ebx
 0053CCF6    mov         eax,dword ptr [ebx+33C];TCustomTreeView.?f33C:dword
 0053CCFC    call        dword ptr [ebx+338];TCustomTreeView.FOnCancelEdit
 0053CD02    xor         eax,eax
 0053CD04    pop         edx
 0053CD05    pop         ecx
 0053CD06    pop         ecx
 0053CD07    mov         dword ptr fs:[eax],edx
 0053CD0A    push        53CD1F
 0053CD0F    lea         eax,[ebp-4]
 0053CD12    call        @UStrClr
 0053CD17    ret
>0053CD18    jmp         @HandleFinally
>0053CD1D    jmp         0053CD0F
 0053CD1F    pop         edi
 0053CD20    pop         esi
 0053CD21    pop         ebx
 0053CD22    pop         ecx
 0053CD23    pop         ecx
 0053CD24    pop         ebp
 0053CD25    ret
end;*}

//0053CD28
procedure sub_0053CD28;
begin
{*
 0053CD28    push        ebx
 0053CD29    push        ecx
 0053CD2A    mov         ebx,eax
 0053CD2C    mov         eax,[00524178];TTreeNode
 0053CD31    mov         dword ptr [esp],eax
 0053CD34    cmp         word ptr [ebx+3C2],0;TCustomTreeView.?f3C2:word
>0053CD3C    je          0053CD4E
 0053CD3E    mov         ecx,esp
 0053CD40    mov         edx,ebx
 0053CD42    mov         eax,dword ptr [ebx+3C4];TCustomTreeView.?f3C4:dword
 0053CD48    call        dword ptr [ebx+3C0];TCustomTreeView.FOnCreateNodeClass
 0053CD4E    mov         ecx,dword ptr [ebx+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053CD54    mov         dl,1
 0053CD56    mov         eax,dword ptr [esp]
 0053CD59    call        dword ptr [eax+0C]
 0053CD5C    pop         edx
 0053CD5D    pop         ebx
 0053CD5E    ret
*}
end;

//0053CD60
procedure sub_0053CD60;
begin
{*
 0053CD60    mov         ecx,eax
 0053CD62    mov         dl,1
 0053CD64    mov         eax,[00525070];TTreeNodes
 0053CD69    call        TTreeNodes.Create;TTreeNodes.Create
 0053CD6E    ret
*}
end;

//0053CD70
{*function sub_0053CD70(?:TCustomTreeView; ?:HIMAGELIST; ?:?):?;
begin
 0053CD70    push        ebx
 0053CD71    push        esi
 0053CD72    push        edi
 0053CD73    mov         edi,ecx
 0053CD75    mov         esi,edx
 0053CD77    mov         ebx,eax
 0053CD79    mov         eax,ebx
 0053CD7B    call        TWinControl.HandleAllocated
 0053CD80    test        al,al
>0053CD82    je          0053CD9A
 0053CD84    mov         eax,ebx
 0053CD86    call        TWinControl.GetHandle
 0053CD8B    mov         ebx,eax
 0053CD8D    push        esi
 0053CD8E    push        edi
 0053CD8F    push        1109
 0053CD94    push        ebx
 0053CD95    call        user32.SendMessageW
 0053CD9A    pop         edi
 0053CD9B    pop         esi
 0053CD9C    pop         ebx
 0053CD9D    ret
end;*}

//0053CDA0
{*procedure sub_0053CDA0(?:?; ?:?);
begin
 0053CDA0    push        ebx
 0053CDA1    push        esi
 0053CDA2    push        edi
 0053CDA3    mov         esi,edx
 0053CDA5    mov         ebx,eax
 0053CDA7    mov         eax,ebx
 0053CDA9    call        TWinControl.HandleAllocated
 0053CDAE    test        al,al
>0053CDB0    je          0053CDF5
 0053CDB2    mov         edi,esi
 0053CDB4    mov         eax,edi
 0053CDB6    call        TCustomImageList.HandleAllocated
 0053CDBB    test        al,al
>0053CDBD    je          0053CDC8
 0053CDBF    mov         eax,edi
 0053CDC1    call        TCustomImageList.GetHandle
>0053CDC6    jmp         0053CDCA
 0053CDC8    xor         eax,eax
 0053CDCA    cmp         esi,dword ptr [ebx+2BC]
>0053CDD0    jne         0053CDDF
 0053CDD2    xor         ecx,ecx
 0053CDD4    mov         edx,eax
 0053CDD6    mov         eax,ebx
 0053CDD8    call        0053CD70
>0053CDDD    jmp         0053CDF5
 0053CDDF    cmp         esi,dword ptr [ebx+2EC]
>0053CDE5    jne         0053CDF5
 0053CDE7    mov         ecx,2
 0053CDEC    mov         edx,eax
 0053CDEE    mov         eax,ebx
 0053CDF0    call        0053CD70
 0053CDF5    pop         edi
 0053CDF6    pop         esi
 0053CDF7    pop         ebx
 0053CDF8    ret
end;*}

//0053CDFC
procedure TCustomTreeView.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0053CDFC    push        ebx
 0053CDFD    push        esi
 0053CDFE    push        edi
 0053CDFF    mov         ebx,ecx
 0053CE01    mov         esi,edx
 0053CE03    mov         edi,eax
 0053CE05    mov         ecx,ebx
 0053CE07    mov         edx,esi
 0053CE09    mov         eax,edi
 0053CE0B    call        TWinControl.Notification
 0053CE10    cmp         bl,1
>0053CE13    jne         0053CE37
 0053CE15    cmp         esi,dword ptr [edi+2BC];TCustomTreeView.FImages:TCustomImageList
>0053CE1B    jne         0053CE26
 0053CE1D    xor         edx,edx
 0053CE1F    mov         eax,edi
 0053CE21    call        TTreeView.SetImages
 0053CE26    cmp         esi,dword ptr [edi+2EC];TCustomTreeView.FStateImages:TCustomImageList
>0053CE2C    jne         0053CE37
 0053CE2E    xor         edx,edx
 0053CE30    mov         eax,edi
 0053CE32    call        TTreeView.SetStateImages
 0053CE37    pop         edi
 0053CE38    pop         esi
 0053CE39    pop         ebx
 0053CE3A    ret
*}
end;

//0053CE3C
procedure TTreeView.SetImages(Value:TCustomImageList);
begin
{*
 0053CE3C    push        ebx
 0053CE3D    push        esi
 0053CE3E    mov         esi,edx
 0053CE40    mov         ebx,eax
 0053CE42    mov         eax,dword ptr [ebx+2BC];TTreeView.FImages:TCustomImageList
 0053CE48    test        eax,eax
>0053CE4A    je          0053CE57
 0053CE4C    mov         edx,dword ptr [ebx+2B8];TTreeView.FImageChangeLink:TChangeLink
 0053CE52    call        TCustomImageList.UnRegisterChanges
 0053CE57    mov         eax,esi
 0053CE59    mov         dword ptr [ebx+2BC],eax;TTreeView.FImages:TCustomImageList
 0053CE5F    test        eax,eax
>0053CE61    je          0053CE94
 0053CE63    mov         edx,dword ptr [ebx+2B8];TTreeView.FImageChangeLink:TChangeLink
 0053CE69    call        TCustomImageList.RegisterChanges
 0053CE6E    mov         edx,ebx
 0053CE70    mov         eax,dword ptr [ebx+2BC];TTreeView.FImages:TCustomImageList
 0053CE76    call        TComponent.FreeNotification
 0053CE7B    mov         eax,dword ptr [ebx+2BC];TTreeView.FImages:TCustomImageList
 0053CE81    call        TCustomImageList.GetHandle
 0053CE86    mov         edx,eax
 0053CE88    xor         ecx,ecx
 0053CE8A    mov         eax,ebx
 0053CE8C    call        0053CD70
 0053CE91    pop         esi
 0053CE92    pop         ebx
 0053CE93    ret
 0053CE94    xor         ecx,ecx
 0053CE96    xor         edx,edx
 0053CE98    mov         eax,ebx
 0053CE9A    call        0053CD70
 0053CE9F    pop         esi
 0053CEA0    pop         ebx
 0053CEA1    ret
*}
end;

//0053CEA4
procedure TTreeView.SetStateImages(Value:TCustomImageList);
begin
{*
 0053CEA4    push        ebx
 0053CEA5    push        esi
 0053CEA6    mov         esi,edx
 0053CEA8    mov         ebx,eax
 0053CEAA    mov         eax,dword ptr [ebx+2EC];TTreeView.FStateImages:TCustomImageList
 0053CEB0    test        eax,eax
>0053CEB2    je          0053CEBF
 0053CEB4    mov         edx,dword ptr [ebx+2F0];TTreeView.FStateChangeLink:TChangeLink
 0053CEBA    call        TCustomImageList.UnRegisterChanges
 0053CEBF    mov         eax,esi
 0053CEC1    mov         dword ptr [ebx+2EC],eax;TTreeView.FStateImages:TCustomImageList
 0053CEC7    test        eax,eax
>0053CEC9    je          0053CEFF
 0053CECB    mov         edx,dword ptr [ebx+2F0];TTreeView.FStateChangeLink:TChangeLink
 0053CED1    call        TCustomImageList.RegisterChanges
 0053CED6    mov         edx,ebx
 0053CED8    mov         eax,dword ptr [ebx+2EC];TTreeView.FStateImages:TCustomImageList
 0053CEDE    call        TComponent.FreeNotification
 0053CEE3    mov         eax,dword ptr [ebx+2EC];TTreeView.FStateImages:TCustomImageList
 0053CEE9    call        TCustomImageList.GetHandle
 0053CEEE    mov         edx,eax
 0053CEF0    mov         ecx,2
 0053CEF5    mov         eax,ebx
 0053CEF7    call        0053CD70
 0053CEFC    pop         esi
 0053CEFD    pop         ebx
 0053CEFE    ret
 0053CEFF    mov         ecx,2
 0053CF04    xor         edx,edx
 0053CF06    mov         eax,ebx
 0053CF08    call        0053CD70
 0053CF0D    pop         esi
 0053CF0E    pop         ebx
 0053CF0F    ret
*}
end;

//0053CF10
{*procedure TCustomTreeView.WMContextMenu(?:?);
begin
 0053CF10    push        ebx
 0053CF11    push        esi
 0053CF12    add         esp,0FFFFFFCC
 0053CF15    mov         ebx,edx
 0053CF17    mov         esi,eax
 0053CF19    test        byte ptr [esi+1C],10;TCustomTreeView.FComponentState:TComponentState
>0053CF1D    jne         0053CF29
 0053CF1F    mov         eax,esi
 0053CF21    mov         edx,dword ptr [eax]
 0053CF23    call        dword ptr [edx+104];TWinControl.SetFocus
 0053CF29    mov         eax,dword ptr [ebx+8]
 0053CF2C    call        InvalidPoint
 0053CF31    test        al,al
>0053CF33    je          0053CF89
 0053CF35    mov         eax,esi
 0053CF37    call        0053BB4C
 0053CF3C    test        eax,eax
>0053CF3E    je          0053CF89
 0053CF40    mov         eax,esi
 0053CF42    call        0053BB4C
 0053CF47    lea         ecx,[esp+24]
 0053CF4B    mov         dl,1
 0053CF4D    call        TTreeNode.DisplayRect
 0053CF52    lea         eax,[esp+24]
 0053CF56    lea         edx,[esp+1C]
 0053CF5A    call        TRect.CenterPoint
 0053CF5F    lea         edx,[esp+1C]
 0053CF63    lea         ecx,[esp+8]
 0053CF67    mov         eax,esi
 0053CF69    call        TControl.ClientToScreen
 0053CF6E    movzx       eax,word ptr [esp+8]
 0053CF73    mov         word ptr [esp+10],ax
 0053CF78    movzx       eax,word ptr [esp+0C]
 0053CF7D    mov         word ptr [esp+12],ax
 0053CF82    mov         eax,dword ptr [esp+10]
 0053CF86    mov         dword ptr [ebx+8],eax
 0053CF89    mov         edx,ebx
 0053CF8B    mov         eax,esi
 0053CF8D    call        TWinControl.WMContextMenu
 0053CF92    test        byte ptr [esi+1C],8;TCustomTreeView.FComponentState:TComponentState
>0053CF96    jne         0053CFD2
 0053CF98    movsx       eax,word ptr [ebx+8]
 0053CF9C    movsx       edx,word ptr [ebx+0A]
 0053CFA0    mov         dword ptr [esp+14],eax
 0053CFA4    mov         dword ptr [esp+18],edx
 0053CFA8    mov         ecx,esp
 0053CFAA    lea         edx,[esp+14]
 0053CFAE    mov         eax,esi
 0053CFB0    call        TControl.ScreenToClient
 0053CFB5    mov         eax,dword ptr [esp]
 0053CFB8    push        eax
 0053CFB9    mov         eax,dword ptr [esp+8]
 0053CFBD    push        eax
 0053CFBE    call        KeyboardStateToShiftState
 0053CFC3    mov         ecx,eax
 0053CFC5    mov         dl,1
 0053CFC7    mov         eax,esi
 0053CFC9    mov         si,0FFD2
 0053CFCD    call        @CallDynaInst;TControl.sub_004E9010
 0053CFD2    add         esp,34
 0053CFD5    pop         esi
 0053CFD6    pop         ebx
 0053CFD7    ret
end;*}

//0053CFD8
{*procedure TCustomTreeView.WMCtlColorEdit(?:?);
begin
 0053CFD8    push        ebx
 0053CFD9    push        esi
 0053CFDA    mov         esi,edx
 0053CFDC    mov         ebx,eax
 0053CFDE    test        byte ptr [ebx+65],80;TCustomTreeView.FAlign:TAlign
>0053CFE2    je          0053D00C
 0053CFE4    cmp         byte ptr [ebx+2C0],0;TCustomTreeView.FInBufferedPrintClient:Boolean
>0053CFEB    jne         0053D00C
 0053CFED    mov         byte ptr [ebx+2C0],1;TCustomTreeView.FInBufferedPrintClient:Boolean
 0053CFF4    push        0
 0053CFF6    push        0
 0053CFF8    push        0B04D
 0053CFFD    mov         eax,dword ptr [ebx+2B0];TCustomTreeView.FEditHandle:HWND
 0053D003    push        eax
 0053D004    call        user32.PostMessageW
 0053D009    pop         esi
 0053D00A    pop         ebx
 0053D00B    ret
 0053D00C    mov         eax,dword ptr [esi+8]
 0053D00F    push        eax
 0053D010    mov         eax,dword ptr [esi+4]
 0053D013    push        eax
 0053D014    mov         eax,dword ptr [esi]
 0053D016    push        eax
 0053D017    mov         eax,ebx
 0053D019    call        TWinControl.GetHandle
 0053D01E    push        eax
 0053D01F    call        user32.DefWindowProcW
 0053D024    mov         dword ptr [esi+0C],eax
 0053D027    pop         esi
 0053D028    pop         ebx
 0053D029    ret
end;*}

//0053D02C
{*procedure TCustomTreeView.WMLButtonDown(?:?);
begin
 0053D02C    push        ebp
 0053D02D    mov         ebp,esp
 0053D02F    add         esp,0FFFFFFE4
 0053D032    push        ebx
 0053D033    mov         ebx,edx
 0053D035    mov         dword ptr [ebp-4],eax
 0053D038    mov         eax,dword ptr [ebp-4]
 0053D03B    mov         byte ptr [eax+2A4],0;TCustomTreeView.FDragged:Boolean
 0053D042    mov         eax,dword ptr [ebp-4]
 0053D045    xor         edx,edx
 0053D047    mov         dword ptr [eax+2AC],edx;TCustomTreeView.FDragNode:TTreeNode
 0053D04D    xor         edx,edx
 0053D04F    push        ebp
 0053D050    push        53D13C
 0053D055    push        dword ptr fs:[edx]
 0053D058    mov         dword ptr fs:[edx],esp
 0053D05B    mov         edx,ebx
 0053D05D    mov         eax,dword ptr [ebp-4]
 0053D060    call        TControl.WMLButtonDown
 0053D065    mov         eax,dword ptr [ebp-4]
 0053D068    call        TGroupBox.GetDragMode
 0053D06D    cmp         al,1
>0053D06F    jne         0053D123
 0053D075    mov         eax,dword ptr [ebp-4]
 0053D078    cmp         byte ptr [eax+9B],0;TCustomTreeView.FDragKind:TDragKind
>0053D07F    jne         0053D123
 0053D085    mov         eax,dword ptr [ebp-4]
 0053D088    mov         edx,dword ptr [eax]
 0053D08A    call        dword ptr [edx+104];TWinControl.SetFocus
 0053D090    mov         eax,dword ptr [ebp-4]
 0053D093    cmp         byte ptr [eax+2A4],0;TCustomTreeView.FDragged:Boolean
>0053D09A    jne         0053D0EE
 0053D09C    lea         eax,[ebp-0C]
 0053D09F    push        eax
 0053D0A0    call        user32.GetCursorPos
 0053D0A5    lea         ecx,[ebp-18]
 0053D0A8    lea         edx,[ebp-0C]
 0053D0AB    mov         eax,dword ptr [ebp-4]
 0053D0AE    call        TControl.ScreenToClient
 0053D0B3    movzx       eax,word ptr [ebp-18]
 0053D0B7    mov         word ptr [ebp-1C],ax
 0053D0BB    movzx       eax,word ptr [ebp-14]
 0053D0BF    mov         word ptr [ebp-1A],ax
 0053D0C3    mov         eax,dword ptr [ebp-1C]
 0053D0C6    mov         dword ptr [ebp-10],eax
 0053D0C9    movzx       eax,word ptr [ebp-0E]
 0053D0CD    movzx       edx,word ptr [ebp-10]
 0053D0D1    movzx       edx,dx
 0053D0D4    movzx       eax,ax
 0053D0D7    shl         eax,10
 0053D0DA    or          edx,eax
 0053D0DC    push        edx
 0053D0DD    xor         ecx,ecx
 0053D0DF    mov         edx,202
 0053D0E4    mov         eax,dword ptr [ebp-4]
 0053D0E7    call        TControl.Perform
>0053D0EC    jmp         0053D123
 0053D0EE    movsx       ecx,word ptr [ebx+0A]
 0053D0F2    movsx       edx,word ptr [ebx+8]
 0053D0F6    mov         eax,dword ptr [ebp-4]
 0053D0F9    call        TCustomTreeView.GetNodeAt
 0053D0FE    mov         ebx,eax
 0053D100    test        ebx,ebx
>0053D102    je          0053D123
 0053D104    mov         dl,1
 0053D106    mov         eax,ebx
 0053D108    call        00539180
 0053D10D    mov         dl,1
 0053D10F    mov         eax,ebx
 0053D111    call        00539014
 0053D116    or          ecx,0FFFFFFFF
 0053D119    xor         edx,edx
 0053D11B    mov         eax,dword ptr [ebp-4]
 0053D11E    call        TControl.BeginDrag
 0053D123    xor         eax,eax
 0053D125    pop         edx
 0053D126    pop         ecx
 0053D127    pop         ecx
 0053D128    mov         dword ptr fs:[eax],edx
 0053D12B    push        53D143
 0053D130    mov         eax,dword ptr [ebp-4]
 0053D133    xor         edx,edx
 0053D135    mov         dword ptr [eax+2AC],edx;TCustomTreeView.FDragNode:TTreeNode
 0053D13B    ret
>0053D13C    jmp         @HandleFinally
>0053D141    jmp         0053D130
 0053D143    pop         ebx
 0053D144    mov         esp,ebp
 0053D146    pop         ebp
 0053D147    ret
end;*}

//0053D148
procedure TCustomTreeView.WMNotify(Message:Messages.TWMNotify);
begin
{*
 0053D148    push        ebp
 0053D149    mov         ebp,esp
 0053D14B    add         esp,0FFFFFFD4
 0053D14E    push        ebx
 0053D14F    push        esi
 0053D150    push        edi
 0053D151    xor         ecx,ecx
 0053D153    mov         dword ptr [ebp-4],ecx
 0053D156    mov         esi,edx
 0053D158    mov         ebx,eax
 0053D15A    xor         eax,eax
 0053D15C    push        ebp
 0053D15D    push        53D359
 0053D162    push        dword ptr fs:[eax]
 0053D165    mov         dword ptr fs:[eax],esp
 0053D168    mov         eax,dword ptr [esi+8]
 0053D16B    mov         dword ptr [ebp-14],eax
 0053D16E    mov         eax,dword ptr [ebp-14]
 0053D171    cmp         dword ptr [eax+8],0FFFFFDEE
>0053D178    jne         0053D33A
 0053D17E    lea         eax,[ebp-10]
 0053D181    push        eax
 0053D182    call        user32.GetCursorPos
 0053D187    lea         ecx,[ebp-2C]
 0053D18A    lea         edx,[ebp-10]
 0053D18D    mov         eax,ebx
 0053D18F    call        TControl.ScreenToClient
 0053D194    mov         eax,dword ptr [ebp-2C]
 0053D197    mov         dword ptr [ebp-10],eax
 0053D19A    mov         eax,dword ptr [ebp-28]
 0053D19D    mov         dword ptr [ebp-0C],eax
 0053D1A0    mov         ecx,dword ptr [ebp-0C]
 0053D1A3    mov         edx,dword ptr [ebp-10]
 0053D1A6    mov         eax,ebx
 0053D1A8    call        TCustomTreeView.GetNodeAt
 0053D1AD    mov         dword ptr [ebp-8],eax
 0053D1B0    cmp         dword ptr [ebp-8],0
>0053D1B4    je          0053D343
 0053D1BA    mov         eax,dword ptr [ebp-8]
 0053D1BD    cmp         dword ptr [eax+8],0;TTreeNode.FText:string
>0053D1C1    je          0053D343
 0053D1C7    mov         eax,dword ptr [esi+8]
 0053D1CA    test        byte ptr [eax+0B4],1
>0053D1D1    je          0053D343
 0053D1D7    call        GetComCtlVersion
 0053D1DC    cmp         eax,40047
>0053D1E1    jl          0053D1FA
 0053D1E3    mov         eax,dword ptr [ebp-8]
 0053D1E6    mov         eax,dword ptr [eax+8];TTreeNode.FText:string
 0053D1E9    test        eax,eax
>0053D1EB    je          0053D1F2
 0053D1ED    sub         eax,4
 0053D1F0    mov         eax,dword ptr [eax]
 0053D1F2    cmp         eax,50
 0053D1F5    setl        al
>0053D1F8    jmp         0053D1FC
 0053D1FA    xor         eax,eax
 0053D1FC    test        al,al
>0053D1FE    je          0053D218
 0053D200    cmp         word ptr [ebx+3BA],0;TCustomTreeView.?f3BA:word
>0053D208    jne         0053D218
 0053D20A    mov         edx,esi
 0053D20C    mov         eax,ebx
 0053D20E    call        TWinControl.WMNotify
>0053D213    jmp         0053D343
 0053D218    lea         eax,[ebp-4]
 0053D21B    mov         edx,dword ptr [ebp-8]
 0053D21E    mov         edx,dword ptr [edx+8];TTreeNode.FText:string
 0053D221    call        @UStrLAsg
 0053D226    cmp         word ptr [ebx+3BA],0;TCustomTreeView.?f3BA:word
>0053D22E    je          0053D245
 0053D230    lea         eax,[ebp-4]
 0053D233    push        eax
 0053D234    mov         ecx,dword ptr [ebp-8]
 0053D237    mov         edx,ebx
 0053D239    mov         eax,dword ptr [ebx+3BC];TCustomTreeView.?f3BC:dword
 0053D23F    call        dword ptr [ebx+3B8];TCustomTreeView.FOnHint
 0053D245    lea         eax,[ebx+2FC];TCustomTreeView.FWideText:WideString
 0053D24B    mov         edx,dword ptr [ebp-4]
 0053D24E    call        @WStrFromUStr
 0053D253    mov         edi,50
 0053D258    mov         eax,dword ptr [ebx+2FC];TCustomTreeView.FWideText:WideString
 0053D25E    test        eax,eax
>0053D260    je          0053D269
 0053D262    sub         eax,4
 0053D265    mov         eax,dword ptr [eax]
 0053D267    shr         eax,1
 0053D269    cmp         edi,eax
>0053D26B    jg          0053D27B
 0053D26D    mov         edx,edi
 0053D26F    dec         edx
 0053D270    lea         eax,[ebx+2FC];TCustomTreeView.FWideText:WideString
 0053D276    call        @WStrSetLength
 0053D27B    mov         eax,dword ptr [ebx+2FC];TCustomTreeView.FWideText:WideString
 0053D281    call        @WStrToPWChar
 0053D286    mov         edx,dword ptr [esi+8]
 0053D289    mov         dword ptr [edx+0C],eax
 0053D28C    mov         edx,edi
 0053D28E    add         edx,edx
 0053D290    mov         eax,dword ptr [esi+8]
 0053D293    add         eax,10
 0053D296    xor         ecx,ecx
 0053D298    call        @FillChar
 0053D29D    mov         edx,dword ptr [ebx+2FC];TCustomTreeView.FWideText:WideString
 0053D2A3    mov         eax,edx
 0053D2A5    test        eax,eax
>0053D2A7    je          0053D2B0
 0053D2A9    sub         eax,4
 0053D2AC    mov         eax,dword ptr [eax]
 0053D2AE    shr         eax,1
 0053D2B0    mov         ecx,eax
 0053D2B2    add         ecx,ecx
 0053D2B4    mov         eax,edx
 0053D2B6    mov         edx,dword ptr [esi+8]
 0053D2B9    add         edx,10
 0053D2BC    call        Move
 0053D2C1    mov         eax,dword ptr [esi+8]
 0053D2C4    xor         edx,edx
 0053D2C6    mov         dword ptr [eax+0B0],edx
 0053D2CC    lea         ecx,[ebp-24]
 0053D2CF    mov         dl,1
 0053D2D1    mov         eax,dword ptr [ebp-8]
 0053D2D4    call        TTreeNode.DisplayRect
 0053D2D9    cmp         dword ptr [ebp-24],0
>0053D2DD    jge         0053D2E4
 0053D2DF    xor         eax,eax
 0053D2E1    mov         dword ptr [ebp-24],eax
 0053D2E4    lea         ecx,[ebp-2C]
 0053D2E7    lea         edx,[ebp-24]
 0053D2EA    mov         eax,ebx
 0053D2EC    call        TControl.ClientToScreen
 0053D2F1    mov         eax,dword ptr [ebp-2C]
 0053D2F4    mov         dword ptr [ebp-24],eax
 0053D2F7    mov         eax,dword ptr [ebp-28]
 0053D2FA    mov         dword ptr [ebp-20],eax
 0053D2FD    lea         eax,[ebp-24]
 0053D300    push        eax
 0053D301    push        1
 0053D303    push        41F
 0053D308    mov         eax,dword ptr [ebp-14]
 0053D30B    mov         eax,dword ptr [eax]
 0053D30D    push        eax
 0053D30E    call        user32.SendMessageW
 0053D313    push        211
 0053D318    push        0
 0053D31A    push        0
 0053D31C    mov         eax,dword ptr [ebp-20]
 0053D31F    push        eax
 0053D320    mov         eax,dword ptr [ebp-24]
 0053D323    push        eax
 0053D324    push        0
 0053D326    mov         eax,dword ptr [ebp-14]
 0053D329    mov         eax,dword ptr [eax]
 0053D32B    push        eax
 0053D32C    call        user32.SetWindowPos
 0053D331    mov         dword ptr [esi+0C],1
>0053D338    jmp         0053D343
 0053D33A    mov         edx,esi
 0053D33C    mov         eax,ebx
 0053D33E    call        TWinControl.WMNotify
 0053D343    xor         eax,eax
 0053D345    pop         edx
 0053D346    pop         ecx
 0053D347    pop         ecx
 0053D348    mov         dword ptr fs:[eax],edx
 0053D34B    push        53D360
 0053D350    lea         eax,[ebp-4]
 0053D353    call        @UStrClr
 0053D358    ret
>0053D359    jmp         @HandleFinally
>0053D35E    jmp         0053D350
 0053D360    pop         edi
 0053D361    pop         esi
 0053D362    pop         ebx
 0053D363    mov         esp,ebp
 0053D365    pop         ebp
 0053D366    ret
*}
end;

//0053D370
{*function sub_0053D370(?:?; ?:?):?;
begin
 0053D370    test        cl,cl
>0053D372    jne         0053D3CC
 0053D374    cmp         dl,1
>0053D377    jne         0053D395
 0053D379    cmp         word ptr [eax+372],0;TCustomTreeView.?f372:word
>0053D381    jne         0053D391
 0053D383    cmp         word ptr [eax+332],0;TCustomTreeView.?f332:word
>0053D38B    jne         0053D391
 0053D38D    xor         eax,eax
>0053D38F    jmp         0053D40F
 0053D391    mov         al,1
>0053D393    jmp         0053D40F
 0053D395    test        dl,dl
>0053D397    jne         0053D3C9
 0053D399    cmp         word ptr [eax+36A],0;TCustomTreeView.?f36A:word
>0053D3A1    jne         0053D3C5
 0053D3A3    cmp         word ptr [eax+32A],0;TCustomTreeView.?f32A:word
>0053D3AB    jne         0053D3C5
 0053D3AD    cmp         word ptr [eax+372],0;TCustomTreeView.?f372:word
>0053D3B5    jne         0053D3C5
 0053D3B7    cmp         word ptr [eax+332],0;TCustomTreeView.?f332:word
>0053D3BF    jne         0053D3C5
 0053D3C1    xor         eax,eax
>0053D3C3    jmp         0053D40F
 0053D3C5    mov         al,1
>0053D3C7    jmp         0053D40F
 0053D3C9    xor         eax,eax
 0053D3CB    ret
 0053D3CC    cmp         dl,1
>0053D3CF    jne         0053D3ED
 0053D3D1    cmp         word ptr [eax+372],0;TCustomTreeView.?f372:word
>0053D3D9    jne         0053D3E9
 0053D3DB    cmp         word ptr [eax+332],0;TCustomTreeView.?f332:word
>0053D3E3    jne         0053D3E9
 0053D3E5    xor         eax,eax
>0053D3E7    jmp         0053D40F
 0053D3E9    mov         al,1
>0053D3EB    jmp         0053D40F
 0053D3ED    test        dl,dl
>0053D3EF    jne         0053D40D
 0053D3F1    cmp         word ptr [eax+32A],0;TCustomTreeView.?f32A:word
>0053D3F9    jne         0053D409
 0053D3FB    cmp         word ptr [eax+332],0;TCustomTreeView.?f332:word
>0053D403    jne         0053D409
 0053D405    xor         eax,eax
>0053D407    jmp         0053D40F
 0053D409    mov         al,1
>0053D40B    jmp         0053D40F
 0053D40D    xor         eax,eax
 0053D40F    ret
end;*}

//0053D410
{*function sub_0053D410(?:?; ?:?):?;
begin
 0053D410    push        ebx
 0053D411    push        esi
 0053D412    push        edi
 0053D413    push        ecx
 0053D414    mov         ebx,ecx
 0053D416    mov         edi,edx
 0053D418    mov         esi,eax
 0053D41A    mov         byte ptr [esp],1
 0053D41E    test        bl,bl
>0053D420    jne         0053D43D
 0053D422    cmp         word ptr [esi+36A],0;TCustomTreeView.?f36A:word
>0053D42A    je          0053D43D
 0053D42C    push        esp
 0053D42D    mov         ecx,edi
 0053D42F    mov         edx,esi
 0053D431    mov         eax,dword ptr [esi+36C];TCustomTreeView.?f36C:dword
 0053D437    call        dword ptr [esi+368];TCustomTreeView.FOnCustomDraw
 0053D43D    cmp         word ptr [esi+32A],0;TCustomTreeView.?f32A:word
>0053D445    je          0053D45D
 0053D447    push        ebx
 0053D448    lea         eax,[esp+4]
 0053D44C    push        eax
 0053D44D    mov         ecx,edi
 0053D44F    mov         edx,esi
 0053D451    mov         eax,dword ptr [esi+32C];TCustomTreeView.?f32C:dword
 0053D457    call        dword ptr [esi+328];TCustomTreeView.FOnAdvancedCustomDraw
 0053D45D    movzx       eax,byte ptr [esp]
 0053D461    pop         edx
 0053D462    pop         edi
 0053D463    pop         esi
 0053D464    pop         ebx
 0053D465    ret
end;*}

//0053D468
{*function sub_0053D468(?:?; ?:?; ?:?; ?:?):?;
begin
 0053D468    push        ebp
 0053D469    mov         ebp,esp
 0053D46B    add         esp,0FFFFFFF8
 0053D46E    push        ebx
 0053D46F    push        esi
 0053D470    mov         word ptr [ebp-6],cx
 0053D474    mov         dword ptr [ebp-4],edx
 0053D477    mov         esi,eax
 0053D479    mov         ebx,dword ptr [ebp+0C]
 0053D47C    mov         byte ptr [ebp-7],1
 0053D480    mov         eax,dword ptr [ebp+8]
 0053D483    mov         byte ptr [eax],1
 0053D486    test        bl,bl
>0053D488    jne         0053D4AE
 0053D48A    cmp         word ptr [esi+372],0;TCustomTreeView.?f372:word
>0053D492    je          0053D4AE
 0053D494    movzx       eax,word ptr [ebp-6]
 0053D498    push        eax
 0053D499    lea         eax,[ebp-7]
 0053D49C    push        eax
 0053D49D    mov         ecx,dword ptr [ebp-4]
 0053D4A0    mov         edx,esi
 0053D4A2    mov         eax,dword ptr [esi+374];TCustomTreeView.?f374:dword
 0053D4A8    call        dword ptr [esi+370];TCustomTreeView.FOnCustomDrawItem
 0053D4AE    cmp         word ptr [esi+332],0;TCustomTreeView.?f332:word
>0053D4B6    je          0053D4D7
 0053D4B8    movzx       eax,word ptr [ebp-6]
 0053D4BC    push        eax
 0053D4BD    push        ebx
 0053D4BE    mov         eax,dword ptr [ebp+8]
 0053D4C1    push        eax
 0053D4C2    lea         eax,[ebp-7]
 0053D4C5    push        eax
 0053D4C6    mov         ecx,dword ptr [ebp-4]
 0053D4C9    mov         edx,esi
 0053D4CB    mov         eax,dword ptr [esi+334];TCustomTreeView.?f334:dword
 0053D4D1    call        dword ptr [esi+330];TCustomTreeView.FOnAdvancedCustomDrawItem
 0053D4D7    movzx       eax,byte ptr [ebp-7]
 0053D4DB    pop         esi
 0053D4DC    pop         ebx
 0053D4DD    pop         ecx
 0053D4DE    pop         ecx
 0053D4DF    pop         ebp
 0053D4E0    ret         8
end;*}

//0053D4E4
procedure TCustomTreeView.ClearSelection(KeepPrimary:Boolean);
begin
{*
 0053D4E4    push        ebx
 0053D4E5    push        esi
 0053D4E6    push        edi
 0053D4E7    mov         ebx,edx
 0053D4E9    mov         esi,eax
 0053D4EB    mov         eax,dword ptr [esi+304];TCustomTreeView.FSelections:TList
 0053D4F1    mov         edi,dword ptr [eax+8];TList.FCount:Integer
 0053D4F4    dec         edi
 0053D4F5    cmp         edi,1
>0053D4F8    jl          0053D508
 0053D4FA    mov         edx,edi
 0053D4FC    mov         eax,esi
 0053D4FE    call        0053D88C
 0053D503    dec         edi
 0053D504    test        edi,edi
>0053D506    jne         0053D4FA
 0053D508    test        bl,bl
>0053D50A    jne         0053D515
 0053D50C    xor         edx,edx
 0053D50E    mov         eax,esi
 0053D510    call        0053BB94
 0053D515    pop         edi
 0053D516    pop         esi
 0053D517    pop         ebx
 0053D518    ret
*}
end;

//0053D51C
procedure sub_0053D51C(?:TCustomTreeView; ?:TTreeNode);
begin
{*
 0053D51C    push        ebx
 0053D51D    push        esi
 0053D51E    mov         esi,edx
 0053D520    mov         ebx,eax
 0053D522    test        byte ptr [ebx+301],1
>0053D529    je          0053D574
 0053D52B    mov         eax,ebx
 0053D52D    call        0053BB4C
 0053D532    cmp         esi,eax
>0053D534    je          0053D549
 0053D536    test        esi,esi
>0053D538    je          0053D540
 0053D53A    cmp         byte ptr [esi+24],0
>0053D53E    jne         0053D549
 0053D540    mov         edx,esi
 0053D542    mov         eax,ebx
 0053D544    call        0053BB94
 0053D549    mov         edx,esi
 0053D54B    mov         eax,dword ptr [ebx+304]
 0053D551    call        TList.IndexOf
 0053D556    cmp         eax,0FFFFFFFF
>0053D559    je          0053D566
 0053D55B    mov         edx,eax
 0053D55D    mov         eax,ebx
 0053D55F    call        0053D88C
>0053D564    jmp         0053D57D
 0053D566    xor         ecx,ecx
 0053D568    mov         edx,esi
 0053D56A    mov         eax,ebx
 0053D56C    call        0053D8B4
 0053D571    pop         esi
 0053D572    pop         ebx
 0053D573    ret
 0053D574    mov         edx,esi
 0053D576    mov         eax,ebx
 0053D578    call        0053D904
 0053D57D    pop         esi
 0053D57E    pop         ebx
 0053D57F    ret
*}
end;

//0053D580
{*function sub_0053D580(?:TCustomTreeView):?;
begin
 0053D580    push        esi
 0053D581    mov         esi,eax
 0053D583    test        byte ptr [esi+301],1
 0053D58A    setne       al
 0053D58D    xor         al,1
 0053D58F    push        eax
 0053D590    mov         eax,esi
 0053D592    call        0053D9D8
 0053D597    pop         esi
 0053D598    ret
end;*}

//0053D59C
procedure TCustomTreeView.DoExit;
begin
{*
 0053D59C    push        ebx
 0053D59D    mov         ebx,eax
 0053D59F    mov         eax,ebx
 0053D5A1    call        0053D7D0
 0053D5A6    mov         eax,ebx
 0053D5A8    call        TWinControl.DoExit
 0053D5AD    pop         ebx
 0053D5AE    ret
*}
end;

//0053D5B0
procedure TCustomTreeView.sub_004EE488;
begin
{*
 0053D5B0    push        ebx
 0053D5B1    mov         ebx,eax
 0053D5B3    mov         eax,ebx
 0053D5B5    call        TWinControl.sub_004EE488
 0053D5BA    mov         eax,ebx
 0053D5BC    call        0053D7D0
 0053D5C1    pop         ebx
 0053D5C2    ret
*}
end;

//0053D5C4
{*procedure sub_0053D5C4(?:TCustomTreeView; ?:TTreeNode; ?:?);
begin
 0053D5C4    push        ebp
 0053D5C5    mov         ebp,esp
 0053D5C7    add         esp,0FFFFFFF8
 0053D5CA    push        ebx
 0053D5CB    push        esi
 0053D5CC    mov         word ptr [ebp-6],cx
 0053D5D0    mov         esi,edx
 0053D5D2    mov         dword ptr [ebp-4],eax
 0053D5D5    mov         eax,dword ptr [ebp-4]
 0053D5D8    cmp         byte ptr [eax+310],0;TCustomTreeView.FSelecting:Boolean
>0053D5DF    jne         0053D7A6
 0053D5E5    test        byte ptr [ebp-6],8
>0053D5E9    je          0053D7A6
 0053D5EF    xor         edx,edx
 0053D5F1    push        ebp
 0053D5F2    push        53D79F
 0053D5F7    push        dword ptr fs:[edx]
 0053D5FA    mov         dword ptr fs:[edx],esp
 0053D5FD    mov         eax,dword ptr [ebp-4]
 0053D600    mov         byte ptr [eax+310],1;TCustomTreeView.FSelecting:Boolean
 0053D607    test        byte ptr [ebp-6],1
>0053D60B    jne         0053D618
 0053D60D    mov         eax,dword ptr [ebp-4]
 0053D610    xor         edx,edx
 0053D612    mov         dword ptr [eax+30C],edx;TCustomTreeView.FShiftAnchor:TTreeNode
 0053D618    mov         eax,dword ptr [ebp-4]
 0053D61B    cmp         byte ptr [eax+300],0;TCustomTreeView.FMultiSelect:Boolean
>0053D622    je          0053D775
 0053D628    test        esi,esi
>0053D62A    je          0053D775
 0053D630    test        byte ptr [ebp-6],1
>0053D634    je          0053D710
 0053D63A    mov         eax,dword ptr [ebp-4]
 0053D63D    cmp         dword ptr [eax+30C],0;TCustomTreeView.FShiftAnchor:TTreeNode
>0053D644    jne         0053D668
 0053D646    mov         eax,dword ptr [ebp-4]
 0053D649    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053D64F    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0053D653    jle         0053D668
 0053D655    xor         edx,edx
 0053D657    mov         eax,dword ptr [ebp-4]
 0053D65A    call        TCustomTreeView.GetSelection
 0053D65F    mov         edx,dword ptr [ebp-4]
 0053D662    mov         dword ptr [edx+30C],eax;TCustomTreeView.FShiftAnchor:TTreeNode
 0053D668    mov         eax,dword ptr [ebp-4]
 0053D66B    cmp         dword ptr [eax+30C],0;TCustomTreeView.FShiftAnchor:TTreeNode
>0053D672    jne         0053D6BF
 0053D674    mov         eax,dword ptr [ebp-4]
 0053D677    mov         eax,dword ptr [eax+2F8];TCustomTreeView.FTreeNodes:TTreeNodes
 0053D67D    call        TTreeNodes.GetFirstNode
 0053D682    mov         ebx,eax
 0053D684    mov         eax,ebx
 0053D686    call        0053992C
 0053D68B    test        al,al
>0053D68D    jne         0053D698
 0053D68F    mov         eax,ebx
 0053D691    call        TTreeNode.GetNextVisible
 0053D696    mov         ebx,eax
 0053D698    test        ebx,ebx
>0053D69A    je          0053D6BF
 0053D69C    mov         eax,ebx
 0053D69E    call        005391A0
 0053D6A3    test        al,al
>0053D6A5    je          0053D6B2
 0053D6A7    mov         eax,dword ptr [ebp-4]
 0053D6AA    mov         dword ptr [eax+30C],ebx;TCustomTreeView.FShiftAnchor:TTreeNode
>0053D6B0    jmp         0053D6BF
 0053D6B2    mov         eax,ebx
 0053D6B4    call        TTreeNode.GetNextVisible
 0053D6B9    mov         ebx,eax
 0053D6BB    test        ebx,ebx
>0053D6BD    jne         0053D69C
 0053D6BF    mov         eax,dword ptr [ebp-4]
 0053D6C2    cmp         dword ptr [eax+30C],0;TCustomTreeView.FShiftAnchor:TTreeNode
>0053D6C9    je          0053D6E6
 0053D6CB    mov         eax,esi
 0053D6CD    call        0053943C
 0053D6D2    mov         ebx,eax
 0053D6D4    mov         eax,dword ptr [ebp-4]
 0053D6D7    mov         eax,dword ptr [eax+30C];TCustomTreeView.FShiftAnchor:TTreeNode
 0053D6DD    call        0053943C
 0053D6E2    cmp         ebx,eax
>0053D6E4    jl          0053D6EA
 0053D6E6    xor         eax,eax
>0053D6E8    jmp         0053D6EC
 0053D6EA    mov         al,1
 0053D6EC    test        byte ptr [ebp-6],4
>0053D6F0    je          0053D700
 0053D6F2    mov         ecx,eax
 0053D6F4    mov         edx,esi
 0053D6F6    mov         eax,dword ptr [ebp-4]
 0053D6F9    call        0053D580
>0053D6FE    jmp         0053D77F
 0053D700    push        1
 0053D702    mov         ecx,eax
 0053D704    mov         edx,esi
 0053D706    mov         eax,dword ptr [ebp-4]
 0053D709    call        0053D9D8
>0053D70E    jmp         0053D77F
 0053D710    test        byte ptr [ebp-6],4
>0053D714    je          0053D722
 0053D716    mov         edx,esi
 0053D718    mov         eax,dword ptr [ebp-4]
 0053D71B    call        0053D51C
>0053D720    jmp         0053D77F
 0053D722    mov         eax,dword ptr [ebp-4]
 0053D725    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053D72B    mov         edx,esi
 0053D72D    call        TList.IndexOf
 0053D732    inc         eax
>0053D733    je          0053D769
 0053D735    mov         eax,dword ptr [ebp-4]
 0053D738    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053D73E    xor         edx,edx
 0053D740    call        TList.Get
 0053D745    cmp         esi,eax
>0053D747    je          0053D77F
 0053D749    mov         eax,dword ptr [ebp-4]
 0053D74C    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053D752    mov         edx,esi
 0053D754    xor         ecx,ecx
 0053D756    call        TList.RemoveItem
 0053D75B    xor         ecx,ecx
 0053D75D    mov         edx,esi
 0053D75F    mov         eax,dword ptr [ebp-4]
 0053D762    call        0053D8B4
>0053D767    jmp         0053D77F
 0053D769    mov         edx,esi
 0053D76B    mov         eax,dword ptr [ebp-4]
 0053D76E    call        0053D904
>0053D773    jmp         0053D77F
 0053D775    mov         edx,esi
 0053D777    mov         eax,dword ptr [ebp-4]
 0053D77A    call        0053D904
 0053D77F    mov         eax,dword ptr [ebp-4]
 0053D782    call        0053DC54
 0053D787    xor         eax,eax
 0053D789    pop         edx
 0053D78A    pop         ecx
 0053D78B    pop         ecx
 0053D78C    mov         dword ptr fs:[eax],edx
 0053D78F    push        53D7A6
 0053D794    mov         eax,dword ptr [ebp-4]
 0053D797    mov         byte ptr [eax+310],0;TCustomTreeView.FSelecting:Boolean
 0053D79E    ret
>0053D79F    jmp         @HandleFinally
>0053D7A4    jmp         0053D794
 0053D7A6    pop         esi
 0053D7A7    pop         ebx
 0053D7A8    pop         ecx
 0053D7A9    pop         ecx
 0053D7AA    pop         ebp
 0053D7AB    ret
end;*}

//0053D7AC
{*function sub_0053D7AC(?:TCustomTreeView):?;
begin
 0053D7AC    mov         eax,dword ptr [eax+304]
 0053D7B2    mov         eax,dword ptr [eax+8]
 0053D7B5    ret
end;*}

//0053D7B8
function TCustomTreeView.GetSelection(Index:Integer):TTreeNode;
begin
{*
 0053D7B8    push        ebx
 0053D7B9    push        esi
 0053D7BA    mov         esi,edx
 0053D7BC    mov         ebx,eax
 0053D7BE    mov         edx,esi
 0053D7C0    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053D7C6    call        TList.Get
 0053D7CB    pop         esi
 0053D7CC    pop         ebx
 0053D7CD    ret
*}
end;

//0053D7D0
procedure sub_0053D7D0(?:TCustomTreeView);
begin
{*
 0053D7D0    push        ebx
 0053D7D1    push        esi
 0053D7D2    push        edi
 0053D7D3    add         esp,0FFFFFFF0
 0053D7D6    mov         ebx,eax
 0053D7D8    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053D7DE    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 0053D7E1    dec         esi
 0053D7E2    test        esi,esi
>0053D7E4    jl          0053D813
 0053D7E6    inc         esi
 0053D7E7    xor         edi,edi
 0053D7E9    mov         edx,edi
 0053D7EB    mov         eax,ebx
 0053D7ED    call        TCustomTreeView.GetSelection
 0053D7F2    mov         ecx,esp
 0053D7F4    xor         edx,edx
 0053D7F6    call        TTreeNode.DisplayRect
 0053D7FB    push        0
 0053D7FD    lea         eax,[esp+4]
 0053D801    push        eax
 0053D802    mov         eax,ebx
 0053D804    call        TWinControl.GetHandle
 0053D809    push        eax
 0053D80A    call        user32.InvalidateRect
 0053D80F    inc         edi
 0053D810    dec         esi
>0053D811    jne         0053D7E9
 0053D813    add         esp,10
 0053D816    pop         edi
 0053D817    pop         esi
 0053D818    pop         ebx
 0053D819    ret
*}
end;

//0053D81C
{*procedure TCustomTreeView.sub_004E8C70(?:?; ?:?; ?:?; ?:?);
begin
 0053D81C    push        ebp
 0053D81D    mov         ebp,esp
 0053D81F    push        ecx
 0053D820    push        ebx
 0053D821    push        esi
 0053D822    push        edi
 0053D823    mov         word ptr [ebp-2],cx
 0053D827    mov         ebx,edx
 0053D829    mov         esi,eax
 0053D82B    mov         edi,dword ptr [ebp+0C]
 0053D82E    test        bl,bl
>0053D830    jne         0053D871
 0053D832    cmp         byte ptr [esi+311],0;TCustomTreeView.FSelectChanged:Boolean
>0053D839    je          0053D844
 0053D83B    mov         byte ptr [esi+311],0;TCustomTreeView.FSelectChanged:Boolean
>0053D842    jmp         0053D871
 0053D844    mov         ecx,dword ptr [ebp+8]
 0053D847    mov         edx,edi
 0053D849    mov         eax,esi
 0053D84B    call        TCustomTreeView.GetHitTestInfoAt
 0053D850    test        al,8
>0053D852    je          0053D86A
 0053D854    mov         eax,esi
 0053D856    call        0053BB4C
 0053D85B    mov         edx,eax
 0053D85D    movzx       ecx,word ptr [ebp-2]
 0053D861    mov         eax,esi
 0053D863    call        0053D5C4
>0053D868    jmp         0053D871
 0053D86A    mov         eax,esi
 0053D86C    call        0053DC54
 0053D871    push        edi
 0053D872    mov         eax,dword ptr [ebp+8]
 0053D875    push        eax
 0053D876    movzx       ecx,word ptr [ebp-2]
 0053D87A    mov         edx,ebx
 0053D87C    mov         eax,esi
 0053D87E    call        TControl.sub_004E8C70
 0053D883    pop         edi
 0053D884    pop         esi
 0053D885    pop         ebx
 0053D886    pop         ecx
 0053D887    pop         ebp
 0053D888    ret         8
end;*}

//0053D88C
procedure sub_0053D88C(?:TCustomTreeView; ?:Integer);
begin
{*
 0053D88C    push        ebx
 0053D88D    push        esi
 0053D88E    mov         esi,edx
 0053D890    mov         ebx,eax
 0053D892    mov         edx,esi
 0053D894    mov         eax,ebx
 0053D896    call        TCustomTreeView.GetSelection
 0053D89B    xor         edx,edx
 0053D89D    call        005390B4
 0053D8A2    mov         edx,esi
 0053D8A4    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053D8AA    call        TList.Delete
 0053D8AF    pop         esi
 0053D8B0    pop         ebx
 0053D8B1    ret
*}
end;

//0053D8B4
{*procedure sub_0053D8B4(?:TCustomTreeView; ?:Pointer; ?:?);
begin
 0053D8B4    push        ebx
 0053D8B5    mov         ebx,edx
 0053D8B7    test        ebx,ebx
>0053D8B9    je          0053D8D9
 0053D8BB    cmp         byte ptr [ebx+24],0
>0053D8BF    jne         0053D8D9
 0053D8C1    mov         edx,ecx
 0053D8C3    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053D8C9    mov         ecx,ebx
 0053D8CB    call        TList.Insert
 0053D8D0    mov         dl,1
 0053D8D2    mov         eax,ebx
 0053D8D4    call        005390B4
 0053D8D9    pop         ebx
 0053D8DA    ret
end;*}

//0053D8DC
procedure TCustomTreeView.Select(Node:TTreeNode; ShiftState:TShiftState);
begin
{*
 0053D8DC    push        ebx
 0053D8DD    push        esi
 0053D8DE    push        ecx
 0053D8DF    mov         word ptr [esp],cx
 0053D8E3    mov         esi,edx
 0053D8E5    mov         ebx,eax
 0053D8E7    movzx       ecx,word ptr ds:[53D900];0x8 gvar_0053D900
 0053D8EE    or          cx,word ptr [esp]
 0053D8F2    mov         edx,esi
 0053D8F4    mov         eax,ebx
 0053D8F6    call        0053D5C4
 0053D8FB    pop         edx
 0053D8FC    pop         esi
 0053D8FD    pop         ebx
 0053D8FE    ret
*}
end;

//0053D904
{*procedure sub_0053D904(?:TCustomTreeView; ?:?);
begin
 0053D904    push        ebx
 0053D905    push        esi
 0053D906    push        edi
 0053D907    mov         edi,edx
 0053D909    mov         esi,eax
 0053D90B    mov         eax,dword ptr [esi+304];TCustomTreeView.FSelections:TList
 0053D911    mov         ebx,dword ptr [eax+8];TList.FCount:Integer
 0053D914    dec         ebx
 0053D915    cmp         ebx,0
>0053D918    jl          0053D936
 0053D91A    mov         edx,ebx
 0053D91C    mov         eax,esi
 0053D91E    call        TCustomTreeView.GetSelection
 0053D923    cmp         edi,eax
>0053D925    je          0053D930
 0053D927    mov         edx,ebx
 0053D929    mov         eax,esi
 0053D92B    call        0053D88C
 0053D930    dec         ebx
 0053D931    cmp         ebx,0FFFFFFFF
>0053D934    jne         0053D91A
 0053D936    mov         eax,esi
 0053D938    call        0053BB4C
 0053D93D    cmp         edi,eax
>0053D93F    je          0053D954
 0053D941    test        edi,edi
>0053D943    je          0053D94B
 0053D945    cmp         byte ptr [edi+24],0
>0053D949    jne         0053D954
 0053D94B    mov         edx,edi
 0053D94D    mov         eax,esi
 0053D94F    call        0053BB94
 0053D954    test        edi,edi
>0053D956    je          0053D975
 0053D958    cmp         byte ptr [edi+24],0
>0053D95C    jne         0053D975
 0053D95E    mov         eax,dword ptr [esi+304];TCustomTreeView.FSelections:TList
 0053D964    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0053D968    jne         0053D975
 0053D96A    xor         ecx,ecx
 0053D96C    mov         edx,edi
 0053D96E    mov         eax,esi
 0053D970    call        0053D8B4
 0053D975    pop         edi
 0053D976    pop         esi
 0053D977    pop         ebx
 0053D978    ret
end;*}

//0053D97C
procedure TTreeView.SetMultiSelect(Value:Boolean);
begin
{*
 0053D97C    push        ebx
 0053D97D    push        esi
 0053D97E    mov         ebx,edx
 0053D980    mov         esi,eax
 0053D982    cmp         bl,byte ptr [esi+300];TTreeView.FMultiSelect:Boolean
>0053D988    je          0053D9AB
 0053D98A    test        bl,bl
>0053D98C    jne         0053D99E
 0053D98E    mov         eax,esi
 0053D990    call        0053BB4C
 0053D995    mov         edx,eax
 0053D997    mov         eax,esi
 0053D999    call        0053D904
 0053D99E    mov         byte ptr [esi+300],bl;TTreeView.FMultiSelect:Boolean
 0053D9A4    mov         eax,esi
 0053D9A6    call        0053DC54
 0053D9AB    pop         esi
 0053D9AC    pop         ebx
 0053D9AD    ret
*}
end;

//0053D9B0
procedure TTreeView.SetMultiSelectStyle(Value:TMultiSelectStyle);
begin
{*
 0053D9B0    push        ebx
 0053D9B1    push        ecx
 0053D9B2    mov         byte ptr [esp],dl
 0053D9B5    mov         ebx,eax
 0053D9B7    movzx       eax,byte ptr [ebx+301];TTreeView.FMultiSelectStyle:TMultiSelectStyle
 0053D9BE    cmp         al,byte ptr [esp]
>0053D9C1    je          0053D9D4
 0053D9C3    movzx       eax,byte ptr [esp]
 0053D9C7    mov         byte ptr [ebx+301],al;TTreeView.FMultiSelectStyle:TMultiSelectStyle
 0053D9CD    mov         eax,ebx
 0053D9CF    call        0053DC54
 0053D9D4    pop         edx
 0053D9D5    pop         ebx
 0053D9D6    ret
*}
end;

//0053D9D8
{*procedure sub_0053D9D8(?:TCustomTreeView; ?:?; ?:?; ?:?);
begin
 0053D9D8    push        ebp
 0053D9D9    mov         ebp,esp
 0053D9DB    add         esp,0FFFFFFF0
 0053D9DE    push        ebx
 0053D9DF    push        esi
 0053D9E0    push        edi
 0053D9E1    mov         byte ptr [ebp-5],cl
 0053D9E4    mov         dword ptr [ebp-4],edx
 0053D9E7    mov         ebx,eax
 0053D9E9    cmp         dword ptr [ebp-4],0
>0053D9ED    je          0053DBA4
 0053D9F3    mov         eax,dword ptr [ebp-4]
 0053D9F6    cmp         byte ptr [eax+24],0
>0053D9FA    jne         0053DBA4
 0053DA00    test        byte ptr [ebx+301],2;TCustomTreeView.FMultiSelectStyle:TMultiSelectStyle
>0053DA07    je          0053DBA4
 0053DA0D    mov         dl,1
 0053DA0F    mov         eax,[0046C204];TList
 0053DA14    call        TObject.Create;TList.Create
 0053DA19    mov         dword ptr [ebp-0C],eax
 0053DA1C    mov         dl,1
 0053DA1E    mov         eax,[0046C204];TList
 0053DA23    call        TObject.Create;TList.Create
 0053DA28    mov         dword ptr [ebp-10],eax
 0053DA2B    xor         eax,eax
 0053DA2D    push        ebp
 0053DA2E    push        53DB9D
 0053DA33    push        dword ptr fs:[eax]
 0053DA36    mov         dword ptr fs:[eax],esp
 0053DA39    mov         esi,dword ptr [ebx+30C];TCustomTreeView.FShiftAnchor:TTreeNode
 0053DA3F    cmp         esi,dword ptr [ebp-4]
>0053DA42    je          0053DAA9
 0053DA44    test        esi,esi
>0053DA46    je          0053DAA9
 0053DA48    mov         edx,esi
 0053DA4A    mov         eax,dword ptr [ebp-0C]
 0053DA4D    call        TList.Add
 0053DA52    cmp         byte ptr [ebp-5],0
>0053DA56    je          0053DA77
 0053DA58    test        byte ptr [ebx+301],4;TCustomTreeView.FMultiSelectStyle:TMultiSelectStyle
>0053DA5F    je          0053DA6C
 0053DA61    mov         eax,esi
 0053DA63    call        TTreeNode.GetPrevVisible
 0053DA68    mov         esi,eax
>0053DA6A    jmp         0053DA94
 0053DA6C    mov         eax,esi
 0053DA6E    call        TTreeNode.GetPrev
 0053DA73    mov         esi,eax
>0053DA75    jmp         0053DA94
 0053DA77    test        byte ptr [ebx+301],4;TCustomTreeView.FMultiSelectStyle:TMultiSelectStyle
>0053DA7E    je          0053DA8B
 0053DA80    mov         eax,esi
 0053DA82    call        TTreeNode.GetNextVisible
 0053DA87    mov         esi,eax
>0053DA89    jmp         0053DA94
 0053DA8B    mov         eax,esi
 0053DA8D    call        TTreeNode.GetNext
 0053DA92    mov         esi,eax
 0053DA94    cmp         esi,dword ptr [ebp-4]
>0053DA97    jne         0053DAA5
 0053DA99    mov         edx,esi
 0053DA9B    mov         eax,dword ptr [ebp-0C]
 0053DA9E    call        TList.Add
>0053DAA3    jmp         0053DAA9
 0053DAA5    test        esi,esi
>0053DAA7    jne         0053DA48
 0053DAA9    cmp         byte ptr [ebp+8],0
>0053DAAD    je          0053DB04
 0053DAAF    mov         eax,dword ptr [ebp-0C]
 0053DAB2    push        eax
 0053DAB3    mov         edx,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DAB9    mov         cl,4
 0053DABB    mov         eax,dword ptr [ebp-10]
 0053DABE    call        TList.Assign
 0053DAC3    mov         eax,dword ptr [ebp-10]
 0053DAC6    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0053DACA    jle         0053DB04
 0053DACC    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DAD2    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 0053DAD5    dec         esi
 0053DAD6    cmp         esi,0
>0053DAD9    jl          0053DB04
 0053DADB    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DAE1    mov         edx,esi
 0053DAE3    call        TList.Get
 0053DAE8    mov         edx,eax
 0053DAEA    mov         eax,dword ptr [ebp-10]
 0053DAED    call        TList.IndexOf
 0053DAF2    inc         eax
>0053DAF3    je          0053DAFE
 0053DAF5    mov         edx,esi
 0053DAF7    mov         eax,ebx
 0053DAF9    call        0053D88C
 0053DAFE    dec         esi
 0053DAFF    cmp         esi,0FFFFFFFF
>0053DB02    jne         0053DADB
 0053DB04    push        0
 0053DB06    mov         edx,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DB0C    mov         cl,4
 0053DB0E    mov         eax,dword ptr [ebp-0C]
 0053DB11    call        TList.Assign
 0053DB16    mov         eax,dword ptr [ebp-0C]
 0053DB19    mov         edi,dword ptr [eax+8];TList.FCount:Integer
 0053DB1C    dec         edi
 0053DB1D    test        edi,edi
>0053DB1F    jl          0053DB3D
 0053DB21    inc         edi
 0053DB22    xor         esi,esi
 0053DB24    mov         edx,esi
 0053DB26    mov         eax,dword ptr [ebp-0C]
 0053DB29    call        TList.Get
 0053DB2E    mov         edx,eax
 0053DB30    xor         ecx,ecx
 0053DB32    mov         eax,ebx
 0053DB34    call        0053D8B4
 0053DB39    inc         esi
 0053DB3A    dec         edi
>0053DB3B    jne         0053DB24
 0053DB3D    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DB43    mov         edx,dword ptr [ebp-4]
 0053DB46    call        TList.IndexOf
 0053DB4B    mov         esi,eax
 0053DB4D    test        esi,esi
>0053DB4F    jle         0053DB70
 0053DB51    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DB57    mov         edx,esi
 0053DB59    call        TList.Delete
 0053DB5E    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DB64    mov         ecx,dword ptr [ebp-4]
 0053DB67    xor         edx,edx
 0053DB69    call        TList.Insert
>0053DB6E    jmp         0053DB7F
 0053DB70    inc         esi
>0053DB71    jne         0053DB7F
 0053DB73    xor         ecx,ecx
 0053DB75    mov         edx,dword ptr [ebp-4]
 0053DB78    mov         eax,ebx
 0053DB7A    call        0053D8B4
 0053DB7F    xor         eax,eax
 0053DB81    pop         edx
 0053DB82    pop         ecx
 0053DB83    pop         ecx
 0053DB84    mov         dword ptr fs:[eax],edx
 0053DB87    push        53DBAE
 0053DB8C    mov         eax,dword ptr [ebp-10]
 0053DB8F    call        TObject.Free
 0053DB94    mov         eax,dword ptr [ebp-0C]
 0053DB97    call        TObject.Free
 0053DB9C    ret
>0053DB9D    jmp         @HandleFinally
>0053DBA2    jmp         0053DB8C
 0053DBA4    mov         edx,dword ptr [ebp-4]
 0053DBA7    mov         eax,ebx
 0053DBA9    call        0053D904
 0053DBAE    pop         edi
 0053DBAF    pop         esi
 0053DBB0    pop         ebx
 0053DBB1    mov         esp,ebp
 0053DBB3    pop         ebp
 0053DBB4    ret         4
end;*}

//0053DBB8
procedure TCustomTreeView.Subselect(Node:TTreeNode; Validate:Boolean);
begin
{*
 0053DBB8    push        ebp
 0053DBB9    mov         ebp,esp
 0053DBBB    push        0
 0053DBBD    push        ebx
 0053DBBE    push        esi
 0053DBBF    push        edi
 0053DBC0    mov         ebx,ecx
 0053DBC2    mov         esi,edx
 0053DBC4    mov         edi,eax
 0053DBC6    xor         eax,eax
 0053DBC8    push        ebp
 0053DBC9    push        53DC47
 0053DBCE    push        dword ptr fs:[eax]
 0053DBD1    mov         dword ptr fs:[eax],esp
 0053DBD4    cmp         byte ptr [edi+300],0;TCustomTreeView.FMultiSelect:Boolean
>0053DBDB    jne         0053DBFE
 0053DBDD    lea         edx,[ebp-4]
 0053DBE0    mov         eax,[007C4BF0];^SResString323:TResStringRec
 0053DBE5    call        LoadResString
 0053DBEA    mov         ecx,dword ptr [ebp-4]
 0053DBED    mov         dl,1
 0053DBEF    mov         eax,[005259F8];ETreeViewError
 0053DBF4    call        Exception.Create;ETreeViewError.Create
 0053DBF9    call        @RaiseExcept
 0053DBFE    test        esi,esi
>0053DC00    je          0053DC31
 0053DC02    cmp         byte ptr [esi+24],0;TTreeNode.FDeleting:Boolean
>0053DC06    jne         0053DC31
 0053DC08    mov         edx,esi
 0053DC0A    mov         eax,dword ptr [edi+304];TCustomTreeView.FSelections:TList
 0053DC10    call        TList.IndexOf
 0053DC15    inc         eax
>0053DC16    jne         0053DC26
 0053DC18    mov         ecx,1
 0053DC1D    mov         edx,esi
 0053DC1F    mov         eax,edi
 0053DC21    call        0053D8B4
 0053DC26    test        bl,bl
>0053DC28    je          0053DC31
 0053DC2A    mov         eax,edi
 0053DC2C    call        0053DC54
 0053DC31    xor         eax,eax
 0053DC33    pop         edx
 0053DC34    pop         ecx
 0053DC35    pop         ecx
 0053DC36    mov         dword ptr fs:[eax],edx
 0053DC39    push        53DC4E
 0053DC3E    lea         eax,[ebp-4]
 0053DC41    call        @UStrClr
 0053DC46    ret
>0053DC47    jmp         @HandleFinally
>0053DC4C    jmp         0053DC3E
 0053DC4E    pop         edi
 0053DC4F    pop         esi
 0053DC50    pop         ebx
 0053DC51    pop         ecx
 0053DC52    pop         ebp
 0053DC53    ret
*}
end;

//0053DC54
procedure sub_0053DC54(?:TCustomTreeView);
begin
{*
 0053DC54    push        ebx
 0053DC55    push        esi
 0053DC56    push        edi
 0053DC57    push        ebp
 0053DC58    mov         ebx,eax
 0053DC5A    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DC60    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0053DC64    jle         0053DCF8
 0053DC6A    xor         edx,edx
 0053DC6C    mov         eax,ebx
 0053DC6E    call        TCustomTreeView.GetSelection
 0053DC73    mov         ebp,eax
 0053DC75    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DC7B    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 0053DC7E    dec         esi
 0053DC7F    cmp         esi,0
>0053DC82    jl          0053DCF8
 0053DC84    mov         edx,esi
 0053DC86    mov         eax,ebx
 0053DC88    call        TCustomTreeView.GetSelection
 0053DC8D    mov         edi,eax
 0053DC8F    cmp         byte ptr [edi+24],0;TTreeNode.FDeleting:Boolean
>0053DC93    jne         0053DCD3
 0053DC95    test        esi,esi
>0053DC97    je          0053DCA2
 0053DC99    cmp         byte ptr [ebx+300],0;TCustomTreeView.FMultiSelect:Boolean
>0053DCA0    je          0053DCD3
 0053DCA2    test        byte ptr [ebx+301],4;TCustomTreeView.FMultiSelectStyle:TMultiSelectStyle
>0053DCA9    je          0053DCB6
 0053DCAB    mov         eax,edi
 0053DCAD    call        0053992C
 0053DCB2    test        al,al
>0053DCB4    je          0053DCD3
 0053DCB6    test        byte ptr [ebx+301],8;TCustomTreeView.FMultiSelectStyle:TMultiSelectStyle
>0053DCBD    je          0053DCDE
 0053DCBF    mov         eax,edi
 0053DCC1    call        005391E4
 0053DCC6    push        eax
 0053DCC7    mov         eax,ebp
 0053DCC9    call        005391E4
 0053DCCE    pop         edx
 0053DCCF    cmp         edx,eax
>0053DCD1    je          0053DCDE
 0053DCD3    mov         edx,esi
 0053DCD5    mov         eax,ebx
 0053DCD7    call        0053D88C
>0053DCDC    jmp         0053DCF2
 0053DCDE    mov         eax,edi
 0053DCE0    call        0053900C
 0053DCE5    test        al,al
>0053DCE7    jne         0053DCF2
 0053DCE9    mov         dl,1
 0053DCEB    mov         eax,edi
 0053DCED    call        005390B4
 0053DCF2    dec         esi
 0053DCF3    cmp         esi,0FFFFFFFF
>0053DCF6    jne         0053DC84
 0053DCF8    pop         ebp
 0053DCF9    pop         edi
 0053DCFA    pop         esi
 0053DCFB    pop         ebx
 0053DCFC    ret
*}
end;

//0053DD00
{*procedure TCustomTreeView.Select(Nodes:TTreeNode; ?:?);
begin
 0053DD00    push        ebp
 0053DD01    mov         ebp,esp
 0053DD03    push        ecx
 0053DD04    push        ebx
 0053DD05    push        esi
 0053DD06    push        edi
 0053DD07    mov         esi,ecx
 0053DD09    mov         ebx,edx
 0053DD0B    mov         edi,eax
 0053DD0D    mov         dl,1
 0053DD0F    mov         eax,[0046C204];TList
 0053DD14    call        TObject.Create;TList.Create
 0053DD19    mov         dword ptr [ebp-4],eax
 0053DD1C    xor         edx,edx
 0053DD1E    push        ebp
 0053DD1F    push        53DD6A
 0053DD24    push        dword ptr fs:[edx]
 0053DD27    mov         dword ptr fs:[edx],esp
 0053DD2A    test        esi,esi
>0053DD2C    jl          0053DD47
 0053DD2E    inc         esi
 0053DD2F    mov         eax,dword ptr [ebx]
 0053DD31    cmp         byte ptr [eax+24],0;TTreeNode.FDeleting:Boolean
>0053DD35    jne         0053DD41
 0053DD37    mov         edx,eax
 0053DD39    mov         eax,dword ptr [ebp-4]
 0053DD3C    call        TList.Add
 0053DD41    add         ebx,4;TTreeNode.FOwner:TTreeNodes
 0053DD44    dec         esi
>0053DD45    jne         0053DD2F
 0053DD47    mov         edx,dword ptr [ebp-4]
 0053DD4A    mov         eax,edi
 0053DD4C    mov         ecx,dword ptr [eax]
 0053DD4E    call        dword ptr [ecx+12C];TCustomTreeView.Select
 0053DD54    xor         eax,eax
 0053DD56    pop         edx
 0053DD57    pop         ecx
 0053DD58    pop         ecx
 0053DD59    mov         dword ptr fs:[eax],edx
 0053DD5C    push        53DD71
 0053DD61    mov         eax,dword ptr [ebp-4]
 0053DD64    call        TObject.Free
 0053DD69    ret
>0053DD6A    jmp         @HandleFinally
>0053DD6F    jmp         0053DD61
 0053DD71    pop         edi
 0053DD72    pop         esi
 0053DD73    pop         ebx
 0053DD74    pop         ecx
 0053DD75    pop         ebp
 0053DD76    ret
end;*}

//0053DD78
procedure TCustomTreeView.Select(Nodes:TList);
begin
{*
 0053DD78    push        ebp
 0053DD79    mov         ebp,esp
 0053DD7B    add         esp,0FFFFFFF4
 0053DD7E    push        ebx
 0053DD7F    push        esi
 0053DD80    push        edi
 0053DD81    mov         esi,edx
 0053DD83    mov         dword ptr [ebp-4],eax
 0053DD86    cmp         dword ptr [esi+8],0;TList.FCount:Integer
>0053DD8A    jne         0053DD9E
 0053DD8C    xor         edx,edx
 0053DD8E    mov         eax,dword ptr [ebp-4]
 0053DD91    mov         ecx,dword ptr [eax]
 0053DD93    call        dword ptr [ecx+138];TCustomTreeView.ClearSelection
>0053DD99    jmp         0053DEF4
 0053DD9E    mov         dl,1
 0053DDA0    mov         eax,[0046C204];TList
 0053DDA5    call        TObject.Create;TList.Create
 0053DDAA    mov         dword ptr [ebp-8],eax
 0053DDAD    mov         dl,1
 0053DDAF    mov         eax,[0046C204];TList
 0053DDB4    call        TObject.Create;TList.Create
 0053DDB9    mov         dword ptr [ebp-0C],eax
 0053DDBC    xor         eax,eax
 0053DDBE    push        ebp
 0053DDBF    push        53DEED
 0053DDC4    push        dword ptr fs:[eax]
 0053DDC7    mov         dword ptr fs:[eax],esp
 0053DDCA    mov         ebx,dword ptr [esi+8];TList.FCount:Integer
 0053DDCD    dec         ebx
 0053DDCE    cmp         ebx,0
>0053DDD1    jl          0053DDF1
 0053DDD3    mov         edx,ebx
 0053DDD5    mov         eax,esi
 0053DDD7    call        TList.Get
 0053DDDC    cmp         byte ptr [eax+24],0
>0053DDE0    je          0053DDEB
 0053DDE2    mov         edx,ebx
 0053DDE4    mov         eax,esi
 0053DDE6    call        TList.Delete
 0053DDEB    dec         ebx
 0053DDEC    cmp         ebx,0FFFFFFFF
>0053DDEF    jne         0053DDD3
 0053DDF1    cmp         dword ptr [esi+8],0;TList.FCount:Integer
>0053DDF5    jle         0053DE21
 0053DDF7    xor         edx,edx
 0053DDF9    mov         eax,esi
 0053DDFB    call        TList.Get
 0053DE00    mov         ebx,eax
 0053DE02    mov         eax,dword ptr [ebp-4]
 0053DE05    call        0053BB4C
 0053DE0A    cmp         ebx,eax
>0053DE0C    je          0053DE21
 0053DE0E    xor         edx,edx
 0053DE10    mov         eax,esi
 0053DE12    call        TList.Get
 0053DE17    mov         edx,eax
 0053DE19    mov         eax,dword ptr [ebp-4]
 0053DE1C    call        0053BB94
 0053DE21    push        esi
 0053DE22    mov         eax,dword ptr [ebp-4]
 0053DE25    mov         edx,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053DE2B    mov         cl,4
 0053DE2D    mov         eax,dword ptr [ebp-0C]
 0053DE30    call        TList.Assign
 0053DE35    mov         eax,dword ptr [ebp-0C]
 0053DE38    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0053DE3C    jle         0053DE7D
 0053DE3E    mov         eax,dword ptr [ebp-4]
 0053DE41    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053DE47    mov         ebx,dword ptr [eax+8];TList.FCount:Integer
 0053DE4A    dec         ebx
 0053DE4B    cmp         ebx,0
>0053DE4E    jl          0053DE7D
 0053DE50    mov         eax,dword ptr [ebp-4]
 0053DE53    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053DE59    mov         edx,ebx
 0053DE5B    call        TList.Get
 0053DE60    mov         edx,eax
 0053DE62    mov         eax,dword ptr [ebp-0C]
 0053DE65    call        TList.IndexOf
 0053DE6A    inc         eax
>0053DE6B    je          0053DE77
 0053DE6D    mov         edx,ebx
 0053DE6F    mov         eax,dword ptr [ebp-4]
 0053DE72    call        0053D88C
 0053DE77    dec         ebx
 0053DE78    cmp         ebx,0FFFFFFFF
>0053DE7B    jne         0053DE50
 0053DE7D    mov         eax,dword ptr [ebp-4]
 0053DE80    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053DE86    push        eax
 0053DE87    mov         cl,4
 0053DE89    mov         edx,esi
 0053DE8B    mov         eax,dword ptr [ebp-8]
 0053DE8E    call        TList.Assign
 0053DE93    mov         eax,dword ptr [ebp-8]
 0053DE96    mov         edi,dword ptr [eax+8];TList.FCount:Integer
 0053DE99    dec         edi
 0053DE9A    test        edi,edi
>0053DE9C    jl          0053DEBB
 0053DE9E    inc         edi
 0053DE9F    xor         ebx,ebx
 0053DEA1    mov         edx,ebx
 0053DEA3    mov         eax,dword ptr [ebp-8]
 0053DEA6    call        TList.Get
 0053DEAB    mov         edx,eax
 0053DEAD    xor         ecx,ecx
 0053DEAF    mov         eax,dword ptr [ebp-4]
 0053DEB2    call        0053D8B4
 0053DEB7    inc         ebx
 0053DEB8    dec         edi
>0053DEB9    jne         0053DEA1
 0053DEBB    push        0
 0053DEBD    mov         eax,dword ptr [ebp-4]
 0053DEC0    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 0053DEC6    xor         ecx,ecx
 0053DEC8    mov         edx,esi
 0053DECA    call        TList.Assign
 0053DECF    xor         eax,eax
 0053DED1    pop         edx
 0053DED2    pop         ecx
 0053DED3    pop         ecx
 0053DED4    mov         dword ptr fs:[eax],edx
 0053DED7    push        53DEF4
 0053DEDC    mov         eax,dword ptr [ebp-0C]
 0053DEDF    call        TObject.Free
 0053DEE4    mov         eax,dword ptr [ebp-8]
 0053DEE7    call        TObject.Free
 0053DEEC    ret
>0053DEED    jmp         @HandleFinally
>0053DEF2    jmp         0053DEDC
 0053DEF4    mov         eax,dword ptr [ebp-4]
 0053DEF7    call        0053DC54
 0053DEFC    pop         edi
 0053DEFD    pop         esi
 0053DEFE    pop         ebx
 0053DEFF    mov         esp,ebp
 0053DF01    pop         ebp
 0053DF02    ret
*}
end;

//0053DF04
procedure TCustomTreeView.Deselect(Node:TTreeNode);
begin
{*
 0053DF04    push        ebx
 0053DF05    push        esi
 0053DF06    mov         esi,edx
 0053DF08    mov         ebx,eax
 0053DF0A    mov         edx,esi
 0053DF0C    mov         eax,dword ptr [ebx+304];TCustomTreeView.FSelections:TList
 0053DF12    call        TList.IndexOf
 0053DF17    inc         eax
>0053DF18    je          0053DF23
 0053DF1A    mov         edx,esi
 0053DF1C    mov         eax,ebx
 0053DF1E    call        0053D51C
 0053DF23    pop         esi
 0053DF24    pop         ebx
 0053DF25    ret
*}
end;

//0053DF28
{*function sub_0053DF28(?:TTreeNode; ?:?):Boolean;
begin
 0053DF28    push        ebp
 0053DF29    mov         ebp,esp
 0053DF2B    push        ebx
 0053DF2C    mov         ebx,eax
 0053DF2E    test        ebx,ebx
>0053DF30    je          0053DF4F
 0053DF32    mov         eax,dword ptr [ebp+8]
 0053DF35    mov         eax,dword ptr [eax-4]
 0053DF38    mov         edx,ebx
 0053DF3A    call        TList.IndexOf
 0053DF3F    inc         eax
>0053DF40    jne         0053DF4F
 0053DF42    mov         eax,ebx
 0053DF44    call        005391E4
 0053DF49    mov         ebx,eax
 0053DF4B    test        ebx,ebx
>0053DF4D    jne         0053DF32
 0053DF4F    test        ebx,ebx
 0053DF51    setne       al
 0053DF54    pop         ebx
 0053DF55    pop         ebp
 0053DF56    ret
end;*}

//0053DF58
{*function sub_0053DF58(?:TTreeNode; ?:?):?;
begin
 0053DF58    push        ebp
 0053DF59    mov         ebp,esp
 0053DF5B    push        ebx
 0053DF5C    push        esi
 0053DF5D    mov         esi,eax
 0053DF5F    mov         eax,esi
 0053DF61    call        TTreeNode.getNextSibling
 0053DF66    mov         ebx,eax
 0053DF68    test        ebx,ebx
>0053DF6A    je          0053DF89
 0053DF6C    mov         eax,dword ptr [ebp+8]
 0053DF6F    push        eax
 0053DF70    mov         eax,ebx
 0053DF72    call        0053DF28
 0053DF77    pop         ecx
 0053DF78    test        al,al
>0053DF7A    je          0053DF89
 0053DF7C    mov         eax,ebx
 0053DF7E    call        TTreeNode.getNextSibling
 0053DF83    mov         ebx,eax
 0053DF85    test        ebx,ebx
>0053DF87    jne         0053DF6C
 0053DF89    test        ebx,ebx
>0053DF8B    jne         0053DFB7
 0053DF8D    mov         eax,esi
 0053DF8F    call        TTreeNode.getPrevSibling
 0053DF94    mov         ebx,eax
 0053DF96    test        ebx,ebx
>0053DF98    je          0053DFB7
 0053DF9A    mov         eax,dword ptr [ebp+8]
 0053DF9D    push        eax
 0053DF9E    mov         eax,ebx
 0053DFA0    call        0053DF28
 0053DFA5    pop         ecx
 0053DFA6    test        al,al
>0053DFA8    je          0053DFB7
 0053DFAA    mov         eax,ebx
 0053DFAC    call        TTreeNode.getPrevSibling
 0053DFB1    mov         ebx,eax
 0053DFB3    test        ebx,ebx
>0053DFB5    jne         0053DF9A
 0053DFB7    mov         eax,ebx
 0053DFB9    pop         esi
 0053DFBA    pop         ebx
 0053DFBB    pop         ebp
 0053DFBC    ret
end;*}

//0053DFC0
function TCustomTreeView.FindNextToSelect:TTreeNode;
begin
{*
 0053DFC0    push        ebp
 0053DFC1    mov         ebp,esp
 0053DFC3    add         esp,0FFFFFFF8
 0053DFC6    push        ebx
 0053DFC7    mov         ebx,eax
 0053DFC9    mov         dl,1
 0053DFCB    mov         eax,[0046C204];TList
 0053DFD0    call        TObject.Create;TList.Create
 0053DFD5    mov         dword ptr [ebp-4],eax
 0053DFD8    xor         eax,eax
 0053DFDA    push        ebp
 0053DFDB    push        53E03A
 0053DFE0    push        dword ptr fs:[eax]
 0053DFE3    mov         dword ptr fs:[eax],esp
 0053DFE6    mov         edx,dword ptr [ebp-4]
 0053DFE9    mov         eax,ebx
 0053DFEB    call        TCustomTreeView.GetSelections
 0053DFF0    mov         ebx,eax
 0053DFF2    mov         dword ptr [ebp-8],ebx
>0053DFF5    jmp         0053E015
 0053DFF7    push        ebp
 0053DFF8    mov         eax,ebx
 0053DFFA    call        0053DF58
 0053DFFF    pop         ecx
 0053E000    mov         dword ptr [ebp-8],eax
 0053E003    cmp         dword ptr [ebp-8],0
>0053E007    jne         0053E024
 0053E009    mov         eax,ebx
 0053E00B    call        005391E4
 0053E010    mov         ebx,eax
 0053E012    mov         dword ptr [ebp-8],ebx
 0053E015    test        ebx,ebx
>0053E017    je          0053E024
 0053E019    mov         eax,ebx
 0053E01B    call        0053900C
 0053E020    test        al,al
>0053E022    jne         0053DFF7
 0053E024    xor         eax,eax
 0053E026    pop         edx
 0053E027    pop         ecx
 0053E028    pop         ecx
 0053E029    mov         dword ptr fs:[eax],edx
 0053E02C    push        53E041
 0053E031    mov         eax,dword ptr [ebp-4]
 0053E034    call        TObject.Free
 0053E039    ret
>0053E03A    jmp         @HandleFinally
>0053E03F    jmp         0053E031
 0053E041    mov         eax,dword ptr [ebp-8]
 0053E044    pop         ebx
 0053E045    pop         ecx
 0053E046    pop         ecx
 0053E047    pop         ebp
 0053E048    ret
*}
end;

//0053E04C
function TCustomTreeView.GetSelections(AList:TList):TTreeNode;
begin
{*
 0053E04C    push        ebx
 0053E04D    push        esi
 0053E04E    push        edi
 0053E04F    push        ebp
 0053E050    mov         ebp,edx
 0053E052    mov         edi,eax
 0053E054    mov         eax,ebp
 0053E056    mov         edx,dword ptr [eax]
 0053E058    call        dword ptr [edx+8];TList.Clear
 0053E05B    mov         eax,edi
 0053E05D    call        0053D7AC
 0053E062    mov         ebx,eax
 0053E064    dec         ebx
 0053E065    test        ebx,ebx
>0053E067    jl          0053E082
 0053E069    inc         ebx
 0053E06A    xor         esi,esi
 0053E06C    mov         edx,esi
 0053E06E    mov         eax,edi
 0053E070    call        TCustomTreeView.GetSelection
 0053E075    mov         edx,eax
 0053E077    mov         eax,ebp
 0053E079    call        TList.Add
 0053E07E    inc         esi
 0053E07F    dec         ebx
>0053E080    jne         0053E06C
 0053E082    mov         eax,edi
 0053E084    call        0053BB4C
 0053E089    pop         ebp
 0053E08A    pop         edi
 0053E08B    pop         esi
 0053E08C    pop         ebx
 0053E08D    ret
*}
end;

Initialization
//0079D368
{*
 0079D368    sub         dword ptr ds:[7CA6A4],1
>0079D36F    jae         0079D387
 0079D371    mov         ecx,dword ptr ds:[5326F4];TTreeViewStyleHook
 0079D377    mov         edx,dword ptr ds:[5274E0];TTreeView
 0079D37D    mov         eax,[005738E0];TCustomStyleEngine
 0079D382    call        TCustomStyleEngine.RegisterStyleHook
 0079D387    ret
*}
Finalization
end.