//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit43;

interface

uses
  SysUtils, Classes;

    //procedure sub_004E980C(?:?; ?:?);//0050C0D0
    procedure Click;//0050C114
    //function sub_0050C13C(?:TColorRef):?;//0050C13C
    procedure sub_0050C15C;//0050C15C
    procedure sub_0050C2A4;//0050C2A4
    procedure UseRightToLeftAlignment;//0050C424
    //procedure sub_0050C428(?:?);//0050C428
    procedure SetCommandLinkHint(Value:string);//0050C4B4
    procedure SetDefault(Value:Boolean);//0050C4F4
    procedure SetDisabledImageIndex(Value:TImageIndex);//0050C52C
    procedure SetDropDownMenu(Value:TPopupMenu);//0050C55C
    procedure SetElevationRequired(Value:Boolean);//0050C578
    procedure sub_0050C5B0(?:TCustomButton);//0050C5B0
    procedure SetHotImageIndex(Value:TImageIndex);//0050C5F0
    procedure SetImageAlignment(Value:TImageAlignment);//0050C620
    procedure SetImageIndex(Value:TImageIndex);//0050C65C
    procedure sub_0050C6C4(?:TCustomButton; ?:HIMAGELIST);//0050C6C4
    procedure SetImageMargins(Value:TImageMargins);//0050C760
    procedure SetImages(Value:TCustomImageList);//0050C76C
    procedure SetPressedImageIndex(Value:TImageIndex);//0050C7BC
    procedure SetSelectedImageIndex(Value:TImageIndex);//0050C7EC
    procedure SetStyle(Value:TCustomButton.TButtonStyle);//0050C81C
    procedure SetStylusHotImageIndex(Value:TImageIndex);//0050C970
    procedure CreateParams(var Params:TCreateParams);//0050C9A0
    procedure CreateWnd;//0050CA38
    destructor Destroy();//0050CA78
    procedure sub_004E9934;//0050CB00
    procedure sub_0050CB08(?:TCustomButton);//0050CB08
    //procedure sub_0050CB44(?:?);//0050CB44
    //procedure sub_0050CB60(?:?);//0050CB60
    function IsStoredImageIndex(Value:TImageIndex):Boolean;//0050CB98
    procedure CMFontChanged(var Message:TMessage);//0050CBB8
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0050CBE8
    //procedure sub_0050CC30(?:?);//0050CC30
    //procedure CMDialogKey(?:?);//0050CC48
    //procedure CMDialogChar(?:?);//0050CCB8
    //procedure CMFocusChenged(?:?);//0050CD3C
    //procedure WMEraseBkgnd(?:?);//0050CD90
    //procedure sub_0050CDBC(?:?);//0050CDBC
    //procedure sub_0050CE24(?:?);//0050CE24
    constructor Create(AOwner:TComponent);//0050CEA0

implementation

//0050C0D0
{*procedure TCustomButton.sub_004E980C(?:?; ?:?);
begin
 0050C0D0    push        ebx
 0050C0D1    push        esi
 0050C0D2    push        edi
 0050C0D3    mov         ebx,ecx
 0050C0D5    mov         esi,edx
 0050C0D7    mov         edi,eax
 0050C0D9    mov         ecx,ebx
 0050C0DB    mov         edx,esi
 0050C0DD    mov         eax,edi
 0050C0DF    call        TButtonControl.sub_004E980C
 0050C0E4    mov         eax,esi
 0050C0E6    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 0050C0EC    call        @IsClass
 0050C0F1    test        al,al
>0050C0F3    je          0050C10F
 0050C0F5    test        bl,bl
>0050C0F7    je          0050C102
 0050C0F9    cmp         dword ptr [edi+2BC],0FFFFFFFF;TCustomButton.FImageIndex:TImageIndex
>0050C100    jne         0050C10F
 0050C102    mov         edx,dword ptr [esi+90]
 0050C108    mov         eax,edi
 0050C10A    call        TButton.SetImageIndex
 0050C10F    pop         edi
 0050C110    pop         esi
 0050C111    pop         ebx
 0050C112    ret
end;*}

//0050C114
procedure TCustomButton.Click;
begin
{*
 0050C114    push        ebx
 0050C115    mov         ebx,eax
 0050C117    mov         dl,1
 0050C119    mov         eax,ebx
 0050C11B    call        GetParentForm
 0050C120    test        eax,eax
>0050C122    je          0050C130
 0050C124    mov         edx,dword ptr [ebx+2CC];TCustomButton.FModalResult:TModalResult
 0050C12A    mov         dword ptr [eax+2DC],edx;TCustomForm.FModalResult:TModalResult
 0050C130    mov         eax,ebx
 0050C132    call        TControl.Click
 0050C137    pop         ebx
 0050C138    ret
*}
end;

//0050C13C
{*function sub_0050C13C(?:TColorRef):?;
begin
 0050C13C    mov         edx,eax
 0050C13E    sub         edx,0FF000000
>0050C144    je          0050C154
 0050C146    sub         edx,0FFFFFF
>0050C14C    jne         0050C159
 0050C14E    mov         eax,1FFFFFFF
 0050C153    ret
 0050C154    mov         eax,20000000
 0050C159    ret
end;*}

//0050C15C
procedure sub_0050C15C;
begin
{*
 0050C15C    push        ebx
 0050C15D    push        esi
 0050C15E    mov         ebx,eax
 0050C160    mov         edx,1
 0050C165    mov         eax,5
 0050C16A    call        CheckWin32Version
 0050C16F    test        al,al
>0050C171    je          0050C297
 0050C177    cmp         dword ptr [ebx+2C4],0;TCustomButton.FImages:TCustomImageList
>0050C17E    je          0050C297
 0050C184    mov         eax,ebx
 0050C186    call        TWinControl.HandleAllocated
 0050C18B    test        al,al
>0050C18D    je          0050C297
 0050C193    cmp         dword ptr [ebx+2C8],0;TCustomButton.FInternalImageList:TImageList
>0050C19A    jne         0050C1B0
 0050C19C    xor         ecx,ecx
 0050C19E    mov         dl,1
 0050C1A0    mov         eax,[004E0C8C];TImageList
 0050C1A5    call        TCustomImageList.Create;TImageList.Create
 0050C1AA    mov         dword ptr [ebx+2C8],eax;TCustomButton.FInternalImageList:TImageList
 0050C1B0    mov         esi,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C1B6    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C1BC    movzx       edx,byte ptr [eax+90];TCustomImageList.FColorDepth:TColorDepth
 0050C1C3    mov         eax,esi
 0050C1C5    call        TImageList.SetColorDepth
 0050C1CA    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C1D0    movzx       eax,byte ptr [eax+61];TCustomImageList.FMasked:Boolean
 0050C1D4    mov         byte ptr [esi+61],al;TImageList.FMasked:Boolean
 0050C1D7    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C1DD    movzx       eax,byte ptr [eax+63];TCustomImageList.FImageType:TImageType
 0050C1E1    mov         byte ptr [esi+63],al;TImageList.FImageType:TImageType
 0050C1E4    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C1EA    movzx       edx,byte ptr [eax+60];TCustomImageList.FDrawingStyle:TDrawingStyle
 0050C1EE    mov         eax,esi
 0050C1F0    call        TImageList.SetDrawingStyle
 0050C1F5    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C1FB    movzx       edx,byte ptr [eax+62];TCustomImageList.FShareImages:Boolean
 0050C1FF    mov         eax,esi
 0050C201    call        TImageList.SetShareImages
 0050C206    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C20C    mov         ecx,dword ptr [eax+50];TCustomImageList.FHeight:Integer
 0050C20F    mov         edx,dword ptr [eax+54];TCustomImageList.FWidth:Integer
 0050C212    mov         eax,esi
 0050C214    call        TCustomImageList.SetSize
 0050C219    mov         eax,esi
 0050C21B    call        TCustomImageList.HandleAllocated
 0050C220    test        al,al
>0050C222    jne         0050C22D
 0050C224    mov         eax,ebx
 0050C226    call        TWinControl.HandleNeeded
>0050C22B    jmp         0050C242
 0050C22D    mov         eax,dword ptr [esi+50];TImageList.FHeight:Integer
 0050C230    push        eax
 0050C231    mov         eax,dword ptr [esi+54];TImageList.FWidth:Integer
 0050C234    push        eax
 0050C235    mov         eax,esi
 0050C237    call        TCustomImageList.GetHandle
 0050C23C    push        eax
 0050C23D    call        comctl32.ImageList_SetIconSize
 0050C242    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C248    call        TCustomImageList.GetHandle
 0050C24D    push        eax
 0050C24E    call        comctl32.ImageList_GetBkColor
 0050C253    call        0050C13C
 0050C258    mov         edx,eax
 0050C25A    mov         eax,esi
 0050C25C    call        TImageList.SetBkColor
 0050C261    mov         eax,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C267    mov         eax,dword ptr [eax+68];TCustomImageList.FBlendColor:TColor
 0050C26A    mov         dword ptr [esi+68],eax;TImageList.FBlendColor:TColor
 0050C26D    mov         eax,ebx
 0050C26F    mov         edx,dword ptr [eax]
 0050C271    call        dword ptr [edx+118];TCustomButton.sub_0050C2A4
 0050C277    cmp         dword ptr [ebx+2BC],0FFFFFFFF;TCustomButton.FImageIndex:TImageIndex
>0050C27E    je          0050C2A0
 0050C280    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C286    call        TCustomImageList.GetHandle
 0050C28B    mov         edx,eax
 0050C28D    mov         eax,ebx
 0050C28F    call        0050C6C4
 0050C294    pop         esi
 0050C295    pop         ebx
 0050C296    ret
 0050C297    xor         edx,edx
 0050C299    mov         eax,ebx
 0050C29B    call        0050C6C4
 0050C2A0    pop         esi
 0050C2A1    pop         ebx
 0050C2A2    ret
*}
end;

//0050C2A4
procedure sub_0050C2A4;
begin
{*
 0050C2A4    push        ebx
 0050C2A5    mov         ebx,eax
 0050C2A7    mov         edx,1
 0050C2AC    mov         eax,5
 0050C2B1    call        CheckWin32Version
 0050C2B6    test        al,al
>0050C2B8    je          0050C420
 0050C2BE    cmp         dword ptr [ebx+2BC],0FFFFFFFF;TCustomButton.FImageIndex:TImageIndex
>0050C2C5    je          0050C420
 0050C2CB    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C2D1    call        TCustomImageList.Clear
 0050C2D6    mov         ecx,dword ptr [ebx+2BC];TCustomButton.FImageIndex:TImageIndex
 0050C2DC    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C2E2    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C2E8    call        TCustomImageList.AddImage
 0050C2ED    mov         eax,dword ptr [ebx+2B0];TCustomButton.FHotImageIndex:TImageIndex
 0050C2F3    cmp         eax,0FFFFFFFF
>0050C2F6    je          0050C30D
 0050C2F8    mov         ecx,eax
 0050C2FA    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C300    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C306    call        TCustomImageList.AddImage
>0050C30B    jmp         0050C324
 0050C30D    mov         ecx,dword ptr [ebx+2BC];TCustomButton.FImageIndex:TImageIndex
 0050C313    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C319    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C31F    call        TCustomImageList.AddImage
 0050C324    mov         eax,dword ptr [ebx+2D0];TCustomButton.FPressedImageIndex:TImageIndex
 0050C32A    cmp         eax,0FFFFFFFF
>0050C32D    je          0050C344
 0050C32F    mov         ecx,eax
 0050C331    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C337    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C33D    call        TCustomImageList.AddImage
>0050C342    jmp         0050C35B
 0050C344    mov         ecx,dword ptr [ebx+2BC];TCustomButton.FImageIndex:TImageIndex
 0050C34A    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C350    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C356    call        TCustomImageList.AddImage
 0050C35B    mov         eax,dword ptr [ebx+2A4];TCustomButton.FDisabledImageIndex:TImageIndex
 0050C361    cmp         eax,0FFFFFFFF
>0050C364    je          0050C37B
 0050C366    mov         ecx,eax
 0050C368    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C36E    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C374    call        TCustomImageList.AddImage
>0050C379    jmp         0050C392
 0050C37B    mov         ecx,dword ptr [ebx+2BC];TCustomButton.FImageIndex:TImageIndex
 0050C381    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C387    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C38D    call        TCustomImageList.AddImage
 0050C392    mov         eax,dword ptr [ebx+2D4];TCustomButton.FSelectedImageIndex:TImageIndex
 0050C398    cmp         eax,0FFFFFFFF
>0050C39B    je          0050C3B2
 0050C39D    mov         ecx,eax
 0050C39F    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C3A5    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C3AB    call        TCustomImageList.AddImage
>0050C3B0    jmp         0050C3C9
 0050C3B2    mov         ecx,dword ptr [ebx+2BC];TCustomButton.FImageIndex:TImageIndex
 0050C3B8    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C3BE    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C3C4    call        TCustomImageList.AddImage
 0050C3C9    mov         eax,dword ptr [ebx+2DC];TCustomButton.FStylusHotImageIndex:TImageIndex
 0050C3CF    cmp         eax,0FFFFFFFF
>0050C3D2    je          0050C3E9
 0050C3D4    mov         ecx,eax
 0050C3D6    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C3DC    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C3E2    call        TCustomImageList.AddImage
>0050C3E7    jmp         0050C420
 0050C3E9    mov         eax,dword ptr [ebx+2D4];TCustomButton.FSelectedImageIndex:TImageIndex
 0050C3EF    cmp         eax,0FFFFFFFF
>0050C3F2    je          0050C409
 0050C3F4    mov         ecx,eax
 0050C3F6    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C3FC    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C402    call        TCustomImageList.AddImage
>0050C407    jmp         0050C420
 0050C409    mov         ecx,dword ptr [ebx+2BC];TCustomButton.FImageIndex:TImageIndex
 0050C40F    mov         edx,dword ptr [ebx+2C4];TCustomButton.FImages:TCustomImageList
 0050C415    mov         eax,dword ptr [ebx+2C8];TCustomButton.FInternalImageList:TImageList
 0050C41B    call        TCustomImageList.AddImage
 0050C420    pop         ebx
 0050C421    ret
*}
end;

//0050C424
procedure TCustomButton.UseRightToLeftAlignment;
begin
{*
 0050C424    xor         eax,eax
 0050C426    ret
*}
end;

//0050C428
{*procedure sub_0050C428(?:?);
begin
 0050C428    push        ebx
 0050C429    push        esi
 0050C42A    push        edi
 0050C42B    mov         ebx,edx
 0050C42D    mov         edi,eax
 0050C42F    mov         eax,edi
 0050C431    call        TWinControl.HandleAllocated
 0050C436    test        al,al
>0050C438    je          0050C4AE
 0050C43A    mov         eax,[007C4590];^gvar_0079EDE0
 0050C43F    cmp         dword ptr [eax],6
>0050C442    jl          0050C479
 0050C444    movzx       eax,byte ptr [edi+2D8];TCustomButton.FStyle:TButtonStyle
 0050C44B    dec         al
>0050C44D    je          0050C455
 0050C44F    dec         al
>0050C451    je          0050C461
>0050C453    jmp         0050C46D
 0050C455    movzx       eax,bl
 0050C458    mov         esi,dword ptr [eax*4+7A13C4]
>0050C45F    jmp         0050C483
 0050C461    movzx       eax,bl
 0050C464    mov         esi,dword ptr [eax*4+7A13CC]
>0050C46B    jmp         0050C483
 0050C46D    movzx       eax,bl
 0050C470    mov         esi,dword ptr [eax*4+7A13BC]
>0050C477    jmp         0050C483
 0050C479    movzx       eax,bl
 0050C47C    mov         esi,dword ptr [eax*4+7A13BC]
 0050C483    mov         eax,edi
 0050C485    call        TWinControl.GetHandle
 0050C48A    push        0F0
 0050C48C    push        eax
 0050C48D    call        user32.GetWindowLongW
 0050C492    and         eax,0F
 0050C495    cmp         esi,eax
>0050C497    je          0050C4AE
 0050C499    push        1
 0050C49B    push        esi
 0050C49C    push        0F4
 0050C4A1    mov         eax,edi
 0050C4A3    call        TWinControl.GetHandle
 0050C4A8    push        eax
 0050C4A9    call        user32.SendMessageW
 0050C4AE    pop         edi
 0050C4AF    pop         esi
 0050C4B0    pop         ebx
 0050C4B1    ret
end;*}

//0050C4B4
procedure TButton.SetCommandLinkHint(Value:string);
begin
{*
 0050C4B4    push        ebx
 0050C4B5    push        esi
 0050C4B6    mov         esi,edx
 0050C4B8    mov         ebx,eax
 0050C4BA    mov         eax,esi
 0050C4BC    mov         edx,dword ptr [ebx+29C];TButton.FCommandLinkHint:string
 0050C4C2    call        @UStrEqual
>0050C4C7    je          0050C4F1
 0050C4C9    lea         eax,[ebx+29C];TButton.FCommandLinkHint:string
 0050C4CF    mov         edx,esi
 0050C4D1    call        @UStrAsg
 0050C4D6    mov         eax,ebx
 0050C4D8    call        TWinControl.HandleAllocated
 0050C4DD    test        al,al
>0050C4DF    je          0050C4F1
 0050C4E1    cmp         byte ptr [ebx+2D8],1;TButton.FStyle:TButtonStyle
>0050C4E8    jne         0050C4F1
 0050C4EA    mov         eax,ebx
 0050C4EC    call        0050CB08
 0050C4F1    pop         esi
 0050C4F2    pop         ebx
 0050C4F3    ret
*}
end;

//0050C4F4
procedure TButton.SetDefault(Value:Boolean);
begin
{*
 0050C4F4    push        ebx
 0050C4F5    mov         ebx,eax
 0050C4F7    mov         byte ptr [ebx+2A0],dl;TButton.FDefault:Boolean
 0050C4FD    mov         eax,ebx
 0050C4FF    call        TWinControl.HandleAllocated
 0050C504    test        al,al
>0050C506    je          0050C528
 0050C508    mov         dl,1
 0050C50A    mov         eax,ebx
 0050C50C    call        GetParentForm
 0050C511    test        eax,eax
>0050C513    je          0050C528
 0050C515    mov         edx,dword ptr [eax+2B4];TCustomForm.FActiveControl:TWinControl
 0050C51B    push        edx
 0050C51C    xor         ecx,ecx
 0050C51E    mov         edx,0B007
 0050C523    call        TControl.Perform
 0050C528    pop         ebx
 0050C529    ret
*}
end;

//0050C52C
procedure TButton.SetDisabledImageIndex(Value:TImageIndex);
begin
{*
 0050C52C    push        esi
 0050C52D    mov         esi,eax
 0050C52F    cmp         edx,dword ptr [esi+2A4];TButton.FDisabledImageIndex:TImageIndex
>0050C535    je          0050C55A
 0050C537    mov         dword ptr [esi+2A4],edx;TButton.FDisabledImageIndex:TImageIndex
 0050C53D    cmp         dword ptr [esi+2C8],0;TButton.FInternalImageList:TImageList
>0050C544    je          0050C55A
 0050C546    mov         eax,esi
 0050C548    mov         edx,dword ptr [eax]
 0050C54A    call        dword ptr [edx+118];TButton.sub_0050C2A4
 0050C550    mov         eax,esi
 0050C552    mov         edx,dword ptr [eax]
 0050C554    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050C55A    pop         esi
 0050C55B    ret
*}
end;

//0050C55C
procedure TButton.SetDropDownMenu(Value:TPopupMenu);
begin
{*
 0050C55C    cmp         edx,dword ptr [eax+2A8];TButton.FDropDownMenu:TPopupMenu
>0050C562    je          0050C574
 0050C564    mov         dword ptr [eax+2A8],edx;TButton.FDropDownMenu:TPopupMenu
 0050C56A    test        edx,edx
>0050C56C    je          0050C574
 0050C56E    xchg        eax,edx
 0050C56F    call        TComponent.FreeNotification
 0050C574    ret
*}
end;

//0050C578
procedure TButton.SetElevationRequired(Value:Boolean);
begin
{*
 0050C578    push        esi
 0050C579    mov         esi,eax
 0050C57B    cmp         dl,byte ptr [esi+2AC];TButton.FElevationRequired:Boolean
>0050C581    je          0050C5AE
 0050C583    mov         byte ptr [esi+2AC],dl;TButton.FElevationRequired:Boolean
 0050C589    mov         eax,esi
 0050C58B    call        TWinControl.HandleAllocated
 0050C590    test        al,al
>0050C592    je          0050C5AE
 0050C594    mov         eax,esi
 0050C596    call        0050C5B0
 0050C59B    cmp         byte ptr [esi+2AC],0;TButton.FElevationRequired:Boolean
>0050C5A2    jne         0050C5AE
 0050C5A4    mov         eax,esi
 0050C5A6    mov         edx,dword ptr [eax]
 0050C5A8    call        dword ptr [edx+114];TButton.sub_0050C15C
 0050C5AE    pop         esi
 0050C5AF    ret
*}
end;

//0050C5B0
procedure sub_0050C5B0(?:TCustomButton);
begin
{*
 0050C5B0    push        ebx
 0050C5B1    mov         ebx,eax
 0050C5B3    xor         edx,edx
 0050C5B5    mov         eax,6
 0050C5BA    call        CheckWin32Version
 0050C5BF    test        al,al
>0050C5C1    je          0050C5ED
 0050C5C3    mov         eax,ebx
 0050C5C5    call        TWinControl.HandleAllocated
 0050C5CA    test        al,al
>0050C5CC    je          0050C5ED
 0050C5CE    mov         eax,ebx
 0050C5D0    call        TWinControl.GetHandle
 0050C5D5    cmp         byte ptr [ebx+2AC],1;TButton.FElevationRequired:Boolean
 0050C5DC    cmc
 0050C5DD    sbb         edx,edx
 0050C5DF    push        edx
 0050C5E0    push        0
 0050C5E2    push        160C
 0050C5E7    push        eax
 0050C5E8    call        user32.SendMessageW
 0050C5ED    pop         ebx
 0050C5EE    ret
*}
end;

//0050C5F0
procedure TButton.SetHotImageIndex(Value:TImageIndex);
begin
{*
 0050C5F0    push        esi
 0050C5F1    mov         esi,eax
 0050C5F3    cmp         edx,dword ptr [esi+2B0];TButton.FHotImageIndex:TImageIndex
>0050C5F9    je          0050C61E
 0050C5FB    mov         dword ptr [esi+2B0],edx;TButton.FHotImageIndex:TImageIndex
 0050C601    cmp         dword ptr [esi+2C8],0;TButton.FInternalImageList:TImageList
>0050C608    je          0050C61E
 0050C60A    mov         eax,esi
 0050C60C    mov         edx,dword ptr [eax]
 0050C60E    call        dword ptr [edx+118];TButton.sub_0050C2A4
 0050C614    mov         eax,esi
 0050C616    mov         edx,dword ptr [eax]
 0050C618    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050C61E    pop         esi
 0050C61F    ret
*}
end;

//0050C620
procedure TButton.SetImageAlignment(Value:TImageAlignment);
begin
{*
 0050C620    push        ebx
 0050C621    push        esi
 0050C622    mov         esi,eax
 0050C624    cmp         dl,byte ptr [esi+2B4];TButton.FImageAlignment:TImageAlignment
>0050C62A    je          0050C656
 0050C62C    mov         byte ptr [esi+2B4],dl;TButton.FImageAlignment:TImageAlignment
 0050C632    mov         ebx,dword ptr [esi+2C8];TButton.FInternalImageList:TImageList
 0050C638    test        ebx,ebx
>0050C63A    je          0050C64C
 0050C63C    mov         eax,ebx
 0050C63E    call        TCustomImageList.GetHandle
 0050C643    mov         edx,eax
 0050C645    mov         eax,esi
 0050C647    call        0050C6C4
 0050C64C    mov         eax,esi
 0050C64E    mov         edx,dword ptr [eax]
 0050C650    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050C656    pop         esi
 0050C657    pop         ebx
 0050C658    ret
*}
end;

//0050C65C
procedure TButton.SetImageIndex(Value:TImageIndex);
begin
{*
 0050C65C    push        ebx
 0050C65D    push        esi
 0050C65E    mov         esi,eax
 0050C660    mov         eax,dword ptr [esi+2BC];TButton.FImageIndex:TImageIndex
 0050C666    cmp         edx,eax
>0050C668    je          0050C6BE
 0050C66A    mov         ebx,eax
 0050C66C    mov         eax,edx
 0050C66E    mov         dword ptr [esi+2BC],eax;TButton.FImageIndex:TImageIndex
 0050C674    mov         edx,dword ptr [esi+2C8];TButton.FInternalImageList:TImageList
 0050C67A    test        edx,edx
>0050C67C    je          0050C6BE
 0050C67E    inc         eax
>0050C67F    je          0050C6A4
 0050C681    mov         eax,esi
 0050C683    mov         edx,dword ptr [eax]
 0050C685    call        dword ptr [edx+118];TButton.sub_0050C2A4
 0050C68B    inc         ebx
>0050C68C    jne         0050C6B4
 0050C68E    mov         eax,dword ptr [esi+2C8];TButton.FInternalImageList:TImageList
 0050C694    call        TCustomImageList.GetHandle
 0050C699    mov         edx,eax
 0050C69B    mov         eax,esi
 0050C69D    call        0050C6C4
>0050C6A2    jmp         0050C6B4
 0050C6A4    mov         eax,edx
 0050C6A6    call        TCustomImageList.Clear
 0050C6AB    xor         edx,edx
 0050C6AD    mov         eax,esi
 0050C6AF    call        0050C6C4
 0050C6B4    mov         eax,esi
 0050C6B6    mov         edx,dword ptr [eax]
 0050C6B8    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050C6BE    pop         esi
 0050C6BF    pop         ebx
 0050C6C0    ret
*}
end;

//0050C6C4
procedure sub_0050C6C4(?:TCustomButton; ?:HIMAGELIST);
begin
{*
 0050C6C4    push        ebx
 0050C6C5    push        esi
 0050C6C6    push        edi
 0050C6C7    add         esp,0FFFFFFD8
 0050C6CA    mov         esi,edx
 0050C6CC    mov         ebx,eax
 0050C6CE    mov         eax,ebx
 0050C6D0    call        TWinControl.HandleAllocated
 0050C6D5    test        al,al
>0050C6D7    je          0050C758
 0050C6D9    mov         eax,[007C4590];^gvar_0079EDE0
 0050C6DE    cmp         dword ptr [eax],6
>0050C6E1    jl          0050C6EE
 0050C6E3    movzx       eax,byte ptr [ebx+2AC];TCustomButton.FElevationRequired:Boolean
 0050C6EA    xor         al,1
>0050C6EC    jmp         0050C6FD
 0050C6EE    mov         edx,1
 0050C6F3    mov         eax,5
 0050C6F8    call        CheckWin32Version
 0050C6FD    test        al,al
>0050C6FF    je          0050C758
 0050C701    mov         dword ptr [esp],esi
 0050C704    movzx       eax,byte ptr [ebx+2B4];TCustomButton.FImageAlignment:TImageAlignment
 0050C70B    mov         eax,dword ptr [eax*4+7A13D4]
 0050C712    mov         dword ptr [esp+14],eax
 0050C716    mov         esi,dword ptr [ebx+2C0];TCustomButton.FImageMargins:TImageMargins
 0050C71C    mov         eax,dword ptr [esi+8];TImageMargins.FBottom:Integer
 0050C71F    push        eax
 0050C720    lea         eax,[esp+1C]
 0050C724    push        eax
 0050C725    mov         ecx,dword ptr [esi+4];TImageMargins.FRight:Integer
 0050C728    mov         edx,dword ptr [esi+0C];TImageMargins.FTop:Integer
 0050C72B    mov         eax,dword ptr [esi+10];TImageMargins.FLeft:Integer
 0050C72E    call        Rect
 0050C733    lea         esi,[esp+18]
 0050C737    lea         edi,[esp+4]
 0050C73B    movs        dword ptr [edi],dword ptr [esi]
 0050C73C    movs        dword ptr [edi],dword ptr [esi]
 0050C73D    movs        dword ptr [edi],dword ptr [esi]
 0050C73E    movs        dword ptr [edi],dword ptr [esi]
 0050C73F    mov         eax,ebx
 0050C741    call        TWinControl.GetHandle
 0050C746    mov         ebx,eax
 0050C748    mov         eax,esp
 0050C74A    push        eax
 0050C74B    push        0
 0050C74D    push        1602
 0050C752    push        ebx
 0050C753    call        user32.SendMessageW
 0050C758    add         esp,28
 0050C75B    pop         edi
 0050C75C    pop         esi
 0050C75D    pop         ebx
 0050C75E    ret
*}
end;

//0050C760
procedure TButton.SetImageMargins(Value:TImageMargins);
begin
{*
 0050C760    mov         eax,dword ptr [eax+2C0];TButton.FImageMargins:TImageMargins
 0050C766    mov         ecx,dword ptr [eax]
 0050C768    call        dword ptr [ecx+8];TImageMargins.Assign
 0050C76B    ret
*}
end;

//0050C76C
procedure TButton.SetImages(Value:TCustomImageList);
begin
{*
 0050C76C    push        ebx
 0050C76D    push        esi
 0050C76E    mov         esi,edx
 0050C770    mov         ebx,eax
 0050C772    mov         eax,dword ptr [ebx+2C4];TButton.FImages:TCustomImageList
 0050C778    cmp         esi,eax
>0050C77A    je          0050C7B9
 0050C77C    test        eax,eax
>0050C77E    je          0050C78B
 0050C780    mov         edx,dword ptr [ebx+2B8];TButton.FImageChangeLink:TChangeLink
 0050C786    call        TCustomImageList.UnRegisterChanges
 0050C78B    mov         eax,esi
 0050C78D    mov         dword ptr [ebx+2C4],eax;TButton.FImages:TCustomImageList
 0050C793    test        eax,eax
>0050C795    je          0050C7AF
 0050C797    mov         edx,dword ptr [ebx+2B8];TButton.FImageChangeLink:TChangeLink
 0050C79D    call        TCustomImageList.RegisterChanges
 0050C7A2    mov         edx,ebx
 0050C7A4    mov         eax,dword ptr [ebx+2C4];TButton.FImages:TCustomImageList
 0050C7AA    call        TComponent.FreeNotification
 0050C7AF    mov         eax,ebx
 0050C7B1    mov         edx,dword ptr [eax]
 0050C7B3    call        dword ptr [edx+114];TButton.sub_0050C15C
 0050C7B9    pop         esi
 0050C7BA    pop         ebx
 0050C7BB    ret
*}
end;

//0050C7BC
procedure TButton.SetPressedImageIndex(Value:TImageIndex);
begin
{*
 0050C7BC    push        esi
 0050C7BD    mov         esi,eax
 0050C7BF    cmp         edx,dword ptr [esi+2D0];TButton.FPressedImageIndex:TImageIndex
>0050C7C5    je          0050C7EA
 0050C7C7    mov         dword ptr [esi+2D0],edx;TButton.FPressedImageIndex:TImageIndex
 0050C7CD    cmp         dword ptr [esi+2C8],0;TButton.FInternalImageList:TImageList
>0050C7D4    je          0050C7EA
 0050C7D6    mov         eax,esi
 0050C7D8    mov         edx,dword ptr [eax]
 0050C7DA    call        dword ptr [edx+118];TButton.sub_0050C2A4
 0050C7E0    mov         eax,esi
 0050C7E2    mov         edx,dword ptr [eax]
 0050C7E4    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050C7EA    pop         esi
 0050C7EB    ret
*}
end;

//0050C7EC
procedure TButton.SetSelectedImageIndex(Value:TImageIndex);
begin
{*
 0050C7EC    push        esi
 0050C7ED    mov         esi,eax
 0050C7EF    cmp         edx,dword ptr [esi+2D4];TButton.FSelectedImageIndex:TImageIndex
>0050C7F5    je          0050C81A
 0050C7F7    mov         dword ptr [esi+2D4],edx;TButton.FSelectedImageIndex:TImageIndex
 0050C7FD    cmp         dword ptr [esi+2C8],0;TButton.FInternalImageList:TImageList
>0050C804    je          0050C81A
 0050C806    mov         eax,esi
 0050C808    mov         edx,dword ptr [eax]
 0050C80A    call        dword ptr [edx+118];TButton.sub_0050C2A4
 0050C810    mov         eax,esi
 0050C812    mov         edx,dword ptr [eax]
 0050C814    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050C81A    pop         esi
 0050C81B    ret
*}
end;

//0050C81C
procedure TButton.SetStyle(Value:TCustomButton.TButtonStyle);
begin
{*
 0050C81C    push        ebp
 0050C81D    mov         ebp,esp
 0050C81F    add         esp,0FFFFFFF8
 0050C822    push        ebx
 0050C823    push        esi
 0050C824    mov         ebx,edx
 0050C826    mov         dword ptr [ebp-4],eax
 0050C829    mov         eax,dword ptr [ebp-4]
 0050C82C    movzx       eax,byte ptr [eax+2D8];TButton.FStyle:TButtonStyle
 0050C833    cmp         bl,al
>0050C835    je          0050C966
 0050C83B    mov         edx,dword ptr [ebp-4]
 0050C83E    test        byte ptr [edx+1C],1;TButton.FComponentState:TComponentState
>0050C842    je          0050C852
 0050C844    mov         eax,dword ptr [ebp-4]
 0050C847    mov         byte ptr [eax+2D8],bl;TButton.FStyle:TButtonStyle
>0050C84D    jmp         0050C966
 0050C852    mov         edx,ebx
 0050C854    sub         dl,1
>0050C857    jb          0050C863
>0050C859    je          0050C8A8
 0050C85B    dec         dl
>0050C85D    jne         0050C966
 0050C863    cmp         al,1
>0050C865    jne         0050C892
 0050C867    mov         eax,dword ptr [ebp-4]
 0050C86A    mov         eax,dword ptr [eax+1AC];TButton.FExplicitWidth:Integer
 0050C870    push        eax
 0050C871    mov         eax,dword ptr [ebp-4]
 0050C874    mov         eax,dword ptr [eax+1B0];TButton.FExplicitHeight:Integer
 0050C87A    push        eax
 0050C87B    mov         eax,dword ptr [ebp-4]
 0050C87E    mov         ecx,dword ptr [eax+54];TButton.FTop:Integer
 0050C881    mov         eax,dword ptr [ebp-4]
 0050C884    mov         edx,dword ptr [eax+50];TButton.FLeft:Integer
 0050C887    mov         eax,dword ptr [ebp-4]
 0050C88A    mov         esi,dword ptr [eax]
 0050C88C    call        dword ptr [esi+0B0];TWinControl.SetBounds
 0050C892    mov         eax,dword ptr [ebp-4]
 0050C895    mov         byte ptr [eax+2D8],bl;TButton.FStyle:TButtonStyle
 0050C89B    mov         eax,dword ptr [ebp-4]
 0050C89E    call        TWinControl.RecreateWnd
>0050C8A3    jmp         0050C966
 0050C8A8    mov         eax,dword ptr [ebp-4]
 0050C8AB    test        byte ptr [eax+65],40;TButton.FAlign:TAlign
 0050C8AF    setne       al
 0050C8B2    mov         byte ptr [ebp-5],al
 0050C8B5    cmp         byte ptr [ebp-5],0
>0050C8B9    jne         0050C8C7
 0050C8BB    mov         eax,dword ptr [ebp-4]
 0050C8BE    mov         edx,dword ptr ds:[50C96C];0x4000 gvar_0050C96C
 0050C8C4    or          dword ptr [eax+64],edx;TButton.FControlState:TControlState
 0050C8C7    xor         eax,eax
 0050C8C9    push        ebp
 0050C8CA    push        50C95F
 0050C8CF    push        dword ptr fs:[eax]
 0050C8D2    mov         dword ptr fs:[eax],esp
 0050C8D5    mov         eax,dword ptr [ebp-4]
 0050C8D8    cmp         dword ptr [eax+29C],0;TButton.FCommandLinkHint:string
 0050C8DF    sete        al
 0050C8E2    and         eax,7F
 0050C8E5    mov         eax,dword ptr [eax*4+7A13E8]
 0050C8EC    mov         edx,dword ptr [ebp-4]
 0050C8EF    cmp         eax,dword ptr [edx+5C];TButton.FHeight:Integer
>0050C8F2    jle         0050C913
 0050C8F4    mov         eax,dword ptr [ebp-4]
 0050C8F7    cmp         dword ptr [eax+29C],0;TButton.FCommandLinkHint:string
 0050C8FE    sete        al
 0050C901    and         eax,7F
 0050C904    mov         edx,dword ptr [eax*4+7A13E8]
 0050C90B    mov         eax,dword ptr [ebp-4]
 0050C90E    call        TControl.SetHeight
 0050C913    mov         eax,dword ptr [ebp-4]
 0050C916    cmp         dword ptr [eax+58],0AF;TButton.FWidth:Integer
>0050C91D    jge         0050C92C
 0050C91F    mov         edx,0AF
 0050C924    mov         eax,dword ptr [ebp-4]
 0050C927    call        TControl.SetWidth
 0050C92C    mov         eax,dword ptr [ebp-4]
 0050C92F    mov         byte ptr [eax+2D8],bl;TButton.FStyle:TButtonStyle
 0050C935    mov         eax,dword ptr [ebp-4]
 0050C938    call        TWinControl.RecreateWnd
 0050C93D    xor         eax,eax
 0050C93F    pop         edx
 0050C940    pop         ecx
 0050C941    pop         ecx
 0050C942    mov         dword ptr fs:[eax],edx
 0050C945    push        50C966
 0050C94A    cmp         byte ptr [ebp-5],0
>0050C94E    jne         0050C95E
 0050C950    mov         eax,dword ptr [ebp-4]
 0050C953    mov         edx,dword ptr ds:[50C96C];0x4000 gvar_0050C96C
 0050C959    not         edx
 0050C95B    and         dword ptr [eax+64],edx;TButton.FControlState:TControlState
 0050C95E    ret
>0050C95F    jmp         @HandleFinally
>0050C964    jmp         0050C94A
 0050C966    pop         esi
 0050C967    pop         ebx
 0050C968    pop         ecx
 0050C969    pop         ecx
 0050C96A    pop         ebp
 0050C96B    ret
*}
end;

//0050C970
procedure TButton.SetStylusHotImageIndex(Value:TImageIndex);
begin
{*
 0050C970    push        esi
 0050C971    mov         esi,eax
 0050C973    cmp         edx,dword ptr [esi+2DC];TButton.FStylusHotImageIndex:TImageIndex
>0050C979    je          0050C99E
 0050C97B    mov         dword ptr [esi+2DC],edx;TButton.FStylusHotImageIndex:TImageIndex
 0050C981    cmp         dword ptr [esi+2C8],0;TButton.FInternalImageList:TImageList
>0050C988    je          0050C99E
 0050C98A    mov         eax,esi
 0050C98C    mov         edx,dword ptr [eax]
 0050C98E    call        dword ptr [edx+118];TButton.sub_0050C2A4
 0050C994    mov         eax,esi
 0050C996    mov         edx,dword ptr [eax]
 0050C998    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050C99E    pop         esi
 0050C99F    ret
*}
end;

//0050C9A0
procedure TCustomButton.CreateParams(var Params:TCreateParams);
begin
{*
 0050C9A0    push        ebx
 0050C9A1    push        esi
 0050C9A2    mov         esi,edx
 0050C9A4    mov         ebx,eax
 0050C9A6    mov         edx,esi
 0050C9A8    mov         eax,ebx
 0050C9AA    call        TButtonControl.CreateParams
 0050C9AF    mov         ecx,50CA28;'B'
 0050C9B4    mov         edx,esi
 0050C9B6    mov         eax,ebx
 0050C9B8    call        TWinControl.CreateSubClass
 0050C9BD    mov         eax,[007C4590];^gvar_0079EDE0
 0050C9C2    cmp         dword ptr [eax],6
>0050C9C5    jl          0050CA12
 0050C9C7    movzx       eax,byte ptr [ebx+2D8];TCustomButton.FStyle:TButtonStyle
 0050C9CE    dec         al
>0050C9D0    je          0050C9D8
 0050C9D2    dec         al
>0050C9D4    je          0050C9EB
>0050C9D6    jmp         0050C9FE
 0050C9D8    movzx       eax,byte ptr [ebx+2A0];TCustomButton.FDefault:Boolean
 0050C9DF    mov         eax,dword ptr [eax*4+7A13F8]
 0050C9E6    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
>0050C9E9    jmp         0050CA23
 0050C9EB    movzx       eax,byte ptr [ebx+2A0];TCustomButton.FDefault:Boolean
 0050C9F2    mov         eax,dword ptr [eax*4+7A1400]
 0050C9F9    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
>0050C9FC    jmp         0050CA23
 0050C9FE    movzx       eax,byte ptr [ebx+2A0];TCustomButton.FDefault:Boolean
 0050CA05    mov         eax,dword ptr [eax*4+7A13F0]
 0050CA0C    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 0050CA0F    pop         esi
 0050CA10    pop         ebx
 0050CA11    ret
 0050CA12    movzx       eax,byte ptr [ebx+2A0];TCustomButton.FDefault:Boolean
 0050CA19    mov         eax,dword ptr [eax*4+7A13F0]
 0050CA20    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 0050CA23    pop         esi
 0050CA24    pop         ebx
 0050CA25    ret
*}
end;

//0050CA38
procedure TCustomButton.CreateWnd;
begin
{*
 0050CA38    push        ebx
 0050CA39    mov         ebx,eax
 0050CA3B    mov         eax,ebx
 0050CA3D    call        TWinControl.CreateWnd
 0050CA42    movzx       eax,byte ptr [ebx+2A0];TCustomButton.FDefault:Boolean
 0050CA49    mov         byte ptr [ebx+298],al;TCustomButton.FActive:Boolean
 0050CA4F    test        byte ptr [ebx+1C],1;TCustomButton.FComponentState:TComponentState
>0050CA53    jne         0050CA76
 0050CA55    mov         eax,ebx
 0050CA57    call        0050C5B0
 0050CA5C    mov         eax,ebx
 0050CA5E    mov         edx,dword ptr [eax]
 0050CA60    call        dword ptr [edx+114];TCustomButton.sub_0050C15C
 0050CA66    cmp         byte ptr [ebx+2D8],1;TCustomButton.FStyle:TButtonStyle
>0050CA6D    jne         0050CA76
 0050CA6F    mov         eax,ebx
 0050CA71    call        0050CB08
 0050CA76    pop         ebx
 0050CA77    ret
*}
end;

//0050CA78
destructor TCustomButton.Destroy();
begin
{*
 0050CA78    push        ebx
 0050CA79    push        esi
 0050CA7A    add         esp,0FFFFFFF4
 0050CA7D    call        @BeforeDestruction
 0050CA82    mov         ebx,edx
 0050CA84    mov         esi,eax
 0050CA86    lea         eax,[esi+2B8];TCustomButton.FImageChangeLink:TChangeLink
 0050CA8C    mov         dword ptr [esp],eax
 0050CA8F    mov         eax,dword ptr [esp]
 0050CA92    mov         eax,dword ptr [eax]
 0050CA94    mov         edx,dword ptr [esp]
 0050CA97    xor         ecx,ecx
 0050CA99    mov         dword ptr [edx],ecx
 0050CA9B    call        TObject.Free
 0050CAA0    cmp         dword ptr [esi+2C8],0;TCustomButton.FInternalImageList:TImageList
>0050CAA7    je          0050CAC6
 0050CAA9    lea         eax,[esi+2C8];TCustomButton.FInternalImageList:TImageList
 0050CAAF    mov         dword ptr [esp+4],eax
 0050CAB3    mov         eax,dword ptr [esp+4]
 0050CAB7    mov         eax,dword ptr [eax]
 0050CAB9    mov         edx,dword ptr [esp+4]
 0050CABD    xor         ecx,ecx
 0050CABF    mov         dword ptr [edx],ecx
 0050CAC1    call        TObject.Free
 0050CAC6    lea         eax,[esi+2C0];TCustomButton.FImageMargins:TImageMargins
 0050CACC    mov         dword ptr [esp+8],eax
 0050CAD0    mov         eax,dword ptr [esp+8]
 0050CAD4    mov         eax,dword ptr [eax]
 0050CAD6    mov         edx,dword ptr [esp+8]
 0050CADA    xor         ecx,ecx
 0050CADC    mov         dword ptr [edx],ecx
 0050CADE    call        TObject.Free
 0050CAE3    mov         dl,0FC
 0050CAE5    and         dl,bl
 0050CAE7    mov         eax,esi
 0050CAE9    call        TWinControl.Destroy
 0050CAEE    test        bl,bl
>0050CAF0    jle         0050CAF9
 0050CAF2    mov         eax,esi
 0050CAF4    call        @ClassDestroy
 0050CAF9    add         esp,0C
 0050CAFC    pop         esi
 0050CAFD    pop         ebx
 0050CAFE    ret
*}
end;

//0050CB00
procedure TCustomButton.sub_004E9934;
begin
{*
 0050CB00    mov         eax,[004FE6B0];TPushButtonActionLink
 0050CB05    ret
*}
end;

//0050CB08
procedure sub_0050CB08(?:TCustomButton);
begin
{*
 0050CB08    push        ebx
 0050CB09    push        esi
 0050CB0A    push        ecx
 0050CB0B    mov         ebx,eax
 0050CB0D    mov         eax,[007C4590];^gvar_0079EDE0
 0050CB12    cmp         dword ptr [eax],6
>0050CB15    jl          0050CB3F
 0050CB17    mov         eax,ebx
 0050CB19    call        TWinControl.GetHandle
 0050CB1E    mov         esi,eax
 0050CB20    mov         ebx,dword ptr [ebx+29C];TCustomButton.FCommandLinkHint:string
 0050CB26    mov         dword ptr [esp],ebx
 0050CB29    mov         eax,dword ptr [esp]
 0050CB2C    call        @UStrToPWChar
 0050CB31    push        eax
 0050CB32    push        0
 0050CB34    push        1609
 0050CB39    push        esi
 0050CB3A    call        user32.SendMessageW
 0050CB3F    pop         edx
 0050CB40    pop         esi
 0050CB41    pop         ebx
 0050CB42    ret
*}
end;

//0050CB44
{*procedure sub_0050CB44(?:?);
begin
 0050CB44    push        ebx
 0050CB45    mov         ebx,eax
 0050CB47    mov         eax,ebx
 0050CB49    call        TWinControl.HandleAllocated
 0050CB4E    test        al,al
>0050CB50    je          0050CB5C
 0050CB52    mov         eax,ebx
 0050CB54    mov         edx,dword ptr [eax]
 0050CB56    call        dword ptr [edx+114]
 0050CB5C    pop         ebx
 0050CB5D    ret
end;*}

//0050CB60
{*procedure sub_0050CB60(?:?);
begin
 0050CB60    push        esi
 0050CB61    mov         esi,eax
 0050CB63    mov         eax,esi
 0050CB65    call        TWinControl.HandleAllocated
 0050CB6A    test        al,al
>0050CB6C    je          0050CB8B
 0050CB6E    cmp         dword ptr [esi+2C8],0
>0050CB75    je          0050CB8B
 0050CB77    mov         eax,dword ptr [esi+2C8]
 0050CB7D    call        TCustomImageList.GetHandle
 0050CB82    mov         edx,eax
 0050CB84    mov         eax,esi
 0050CB86    call        0050C6C4
 0050CB8B    mov         eax,esi
 0050CB8D    mov         edx,dword ptr [eax]
 0050CB8F    call        dword ptr [edx+0A8]
 0050CB95    pop         esi
 0050CB96    ret
end;*}

//0050CB98
function TButton.IsStoredImageIndex(Value:TImageIndex):Boolean;
begin
{*
 0050CB98    push        ebx
 0050CB99    push        esi
 0050CB9A    mov         ebx,eax
 0050CB9C    mov         esi,dword ptr [ebx+78];TButton.FActionLink:TControlActionLink
 0050CB9F    test        esi,esi
>0050CBA1    je          0050CBB3
 0050CBA3    mov         eax,esi
 0050CBA5    mov         edx,dword ptr [eax]
 0050CBA7    call        dword ptr [edx+40];TContainedActionLink.IsImageIndexLinked
 0050CBAA    test        al,al
>0050CBAC    je          0050CBB3
 0050CBAE    xor         eax,eax
 0050CBB0    pop         esi
 0050CBB1    pop         ebx
 0050CBB2    ret
 0050CBB3    mov         al,1
 0050CBB5    pop         esi
 0050CBB6    pop         ebx
 0050CBB7    ret
*}
end;

//0050CBB8
procedure TCustomButton.CMFontChanged(var Message:TMessage);
begin
{*
 0050CBB8    push        ebx
 0050CBB9    mov         ebx,eax
 0050CBBB    mov         eax,ebx
 0050CBBD    call        TWinControl.CMFontChanged
 0050CBC2    mov         eax,ebx
 0050CBC4    call        0050C5B0
 0050CBC9    mov         eax,ebx
 0050CBCB    mov         edx,dword ptr [eax]
 0050CBCD    call        dword ptr [edx+114];TCustomButton.sub_0050C15C
 0050CBD3    cmp         byte ptr [ebx+2D8],1;TCustomButton.FStyle:TButtonStyle
>0050CBDA    jne         0050CBE3
 0050CBDC    mov         eax,ebx
 0050CBDE    call        0050CB08
 0050CBE3    pop         ebx
 0050CBE4    ret
*}
end;

//0050CBE8
procedure TCustomButton.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0050CBE8    push        ebx
 0050CBE9    push        esi
 0050CBEA    push        edi
 0050CBEB    mov         ebx,ecx
 0050CBED    mov         esi,edx
 0050CBEF    mov         edi,eax
 0050CBF1    mov         ecx,ebx
 0050CBF3    mov         edx,esi
 0050CBF5    mov         eax,edi
 0050CBF7    call        TWinControl.Notification
 0050CBFC    cmp         bl,1
>0050CBFF    jne         0050CC2B
 0050CC01    cmp         esi,dword ptr [edi+2A8];TCustomButton.FDropDownMenu:TPopupMenu
>0050CC07    jne         0050CC11
 0050CC09    xor         eax,eax
 0050CC0B    mov         dword ptr [edi+2A8],eax;TCustomButton.FDropDownMenu:TPopupMenu
 0050CC11    cmp         esi,dword ptr [edi+2C4];TCustomButton.FImages:TCustomImageList
>0050CC17    jne         0050CC2B
 0050CC19    xor         eax,eax
 0050CC1B    mov         dword ptr [edi+2C4],eax;TCustomButton.FImages:TCustomImageList
 0050CC21    mov         eax,edi
 0050CC23    mov         edx,dword ptr [eax]
 0050CC25    call        dword ptr [edx+114];TCustomButton.sub_0050C15C
 0050CC2B    pop         edi
 0050CC2C    pop         esi
 0050CC2D    pop         ebx
 0050CC2E    ret
*}
end;

//0050CC30
{*procedure TCustomButton.sub_0050CC30(?:?);
begin
 0050CC30    push        esi
 0050CC31    mov         esi,eax
 0050CC33    cmp         word ptr [edx+6],0
>0050CC38    jne         0050CC45
 0050CC3A    mov         eax,esi
 0050CC3C    mov         si,0FFEB
 0050CC40    call        @CallDynaInst;TCustomButton.Click
 0050CC45    pop         esi
 0050CC46    ret
end;*}

//0050CC48
{*procedure TCustomButton.CMDialogKey(?:?);
begin
 0050CC48    push        ebx
 0050CC49    push        esi
 0050CC4A    push        edi
 0050CC4B    mov         edi,edx
 0050CC4D    mov         ebx,eax
 0050CC4F    cmp         word ptr [edi+4],0D
>0050CC54    jne         0050CC5F
 0050CC56    cmp         byte ptr [ebx+298],0;TCustomButton.FActive:Boolean
>0050CC5D    jne         0050CC6F
 0050CC5F    cmp         word ptr [edi+4],1B
>0050CC64    jne         0050CCA6
 0050CC66    cmp         byte ptr [ebx+299],0;TCustomButton.FCancel:Boolean
>0050CC6D    je          0050CCA6
 0050CC6F    mov         eax,dword ptr [edi+8]
 0050CC72    call        KeyDataToShiftState
 0050CC77    movzx       edx,word ptr ds:[50CCB4];0x0 gvar_0050CCB4
 0050CC7E    cmp         dx,ax
>0050CC81    jne         0050CCA6
 0050CC83    mov         eax,ebx
 0050CC85    mov         si,0FFB4
 0050CC89    call        @CallDynaInst;TWinControl.sub_004EFD3C
 0050CC8E    test        al,al
>0050CC90    je          0050CCA6
 0050CC92    mov         eax,ebx
 0050CC94    mov         si,0FFEB
 0050CC98    call        @CallDynaInst;TCustomButton.Click
 0050CC9D    mov         dword ptr [edi+0C],1
>0050CCA4    jmp         0050CCAF
 0050CCA6    mov         edx,edi
 0050CCA8    mov         eax,ebx
 0050CCAA    call        TWinControl.CMDialogKey
 0050CCAF    pop         edi
 0050CCB0    pop         esi
 0050CCB1    pop         ebx
 0050CCB2    ret
end;*}

//0050CCB8
{*procedure TCustomButton.CMDialogChar(?:?);
begin
 0050CCB8    push        ebp
 0050CCB9    mov         ebp,esp
 0050CCBB    push        0
 0050CCBD    push        ebx
 0050CCBE    push        esi
 0050CCBF    push        edi
 0050CCC0    mov         edi,edx
 0050CCC2    mov         ebx,eax
 0050CCC4    xor         eax,eax
 0050CCC6    push        ebp
 0050CCC7    push        50CD2E
 0050CCCC    push        dword ptr fs:[eax]
 0050CCCF    mov         dword ptr fs:[eax],esp
 0050CCD2    lea         edx,[ebp-4]
 0050CCD5    mov         eax,ebx
 0050CCD7    call        TControl.GetText
 0050CCDC    mov         edx,dword ptr [ebp-4]
 0050CCDF    movzx       eax,word ptr [edi+4]
 0050CCE3    call        IsAccel
 0050CCE8    test        al,al
>0050CCEA    je          0050CD0F
 0050CCEC    mov         eax,ebx
 0050CCEE    mov         si,0FFB4
 0050CCF2    call        @CallDynaInst;TWinControl.sub_004EFD3C
 0050CCF7    test        al,al
>0050CCF9    je          0050CD0F
 0050CCFB    mov         eax,ebx
 0050CCFD    mov         si,0FFEB
 0050CD01    call        @CallDynaInst;TCustomButton.Click
 0050CD06    mov         dword ptr [edi+0C],1
>0050CD0D    jmp         0050CD18
 0050CD0F    mov         edx,edi
 0050CD11    mov         eax,ebx
 0050CD13    call        TWinControl.CMDialogChar
 0050CD18    xor         eax,eax
 0050CD1A    pop         edx
 0050CD1B    pop         ecx
 0050CD1C    pop         ecx
 0050CD1D    mov         dword ptr fs:[eax],edx
 0050CD20    push        50CD35
 0050CD25    lea         eax,[ebp-4]
 0050CD28    call        @UStrClr
 0050CD2D    ret
>0050CD2E    jmp         @HandleFinally
>0050CD33    jmp         0050CD25
 0050CD35    pop         edi
 0050CD36    pop         esi
 0050CD37    pop         ebx
 0050CD38    pop         ecx
 0050CD39    pop         ebp
 0050CD3A    ret
end;*}

//0050CD3C
{*procedure TCustomButton.CMFocusChenged(?:?);
begin
 0050CD3C    push        ebx
 0050CD3D    push        esi
 0050CD3E    push        edi
 0050CD3F    mov         esi,edx
 0050CD41    mov         ebx,eax
 0050CD43    mov         edi,dword ptr [esi+8]
 0050CD46    mov         eax,edi
 0050CD48    mov         edx,dword ptr ds:[4FE868];TCustomButton
 0050CD4E    call        @IsClass
 0050CD53    test        al,al
>0050CD55    je          0050CD64
 0050CD57    cmp         ebx,edi
 0050CD59    sete        al
 0050CD5C    mov         byte ptr [ebx+298],al;TCustomButton.FActive:Boolean
>0050CD62    jmp         0050CD71
 0050CD64    movzx       eax,byte ptr [ebx+2A0];TCustomButton.FDefault:Boolean
 0050CD6B    mov         byte ptr [ebx+298],al;TCustomButton.FActive:Boolean
 0050CD71    movzx       edx,byte ptr [ebx+298];TCustomButton.FActive:Boolean
 0050CD78    mov         eax,ebx
 0050CD7A    mov         ecx,dword ptr [eax]
 0050CD7C    call        dword ptr [ecx+110];TCustomButton.sub_0050C428
 0050CD82    mov         edx,esi
 0050CD84    mov         eax,ebx
 0050CD86    call        TWinControl.CMFocusChenged
 0050CD8B    pop         edi
 0050CD8C    pop         esi
 0050CD8D    pop         ebx
 0050CD8E    ret
end;*}

//0050CD90
{*procedure TCustomButton.WMEraseBkgnd(?:?);
begin
 0050CD90    push        ebx
 0050CD91    push        esi
 0050CD92    mov         esi,edx
 0050CD94    mov         ebx,eax
 0050CD96    call        StyleServices
 0050CD9B    mov         edx,dword ptr [eax]
 0050CD9D    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0050CDA0    test        al,al
>0050CDA2    je          0050CDAE
 0050CDA4    mov         dword ptr [esi+0C],1
 0050CDAB    pop         esi
 0050CDAC    pop         ebx
 0050CDAD    ret
 0050CDAE    mov         edx,esi
 0050CDB0    mov         eax,ebx
 0050CDB2    mov         ecx,dword ptr [eax]
 0050CDB4    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050CDB7    pop         esi
 0050CDB8    pop         ebx
 0050CDB9    ret
end;*}

//0050CDBC
{*procedure TCustomButton.sub_0050CDBC(?:?);
begin
 0050CDBC    push        ebx
 0050CDBD    push        esi
 0050CDBE    push        edi
 0050CDBF    mov         edi,edx
 0050CDC1    mov         ebx,eax
 0050CDC3    call        StyleServices
 0050CDC8    mov         esi,eax
 0050CDCA    mov         eax,esi
 0050CDCC    mov         edx,dword ptr [eax]
 0050CDCE    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0050CDD1    test        al,al
>0050CDD3    je          0050CE16
 0050CDD5    mov         eax,dword ptr [ebx+40];TCustomButton.FParent:TWinControl
 0050CDD8    test        eax,eax
>0050CDDA    je          0050CDF1
 0050CDDC    cmp         byte ptr [eax+280],0;TWinControl.FDoubleBuffered:Boolean
>0050CDE3    je          0050CDF1
 0050CDE5    mov         edx,dword ptr [edi+4]
 0050CDE8    mov         eax,ebx
 0050CDEA    call        004E3750
>0050CDEF    jmp         0050CE0A
 0050CDF1    push        0
 0050CDF3    push        0
 0050CDF5    push        0
 0050CDF7    mov         eax,ebx
 0050CDF9    call        TWinControl.GetHandle
 0050CDFE    mov         edx,eax
 0050CE00    mov         ecx,dword ptr [edi+4]
 0050CE03    mov         eax,esi
 0050CE05    call        TCustomStyleServices.DrawParentBackground
 0050CE0A    push        5
 0050CE0C    call        gdi32.GetStockObject
 0050CE11    mov         dword ptr [edi+0C],eax
>0050CE14    jmp         0050CE1F
 0050CE16    mov         edx,edi
 0050CE18    mov         eax,ebx
 0050CE1A    mov         ecx,dword ptr [eax]
 0050CE1C    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050CE1F    pop         edi
 0050CE20    pop         esi
 0050CE21    pop         ebx
 0050CE22    ret
end;*}

//0050CE24
{*procedure TCustomButton.sub_0050CE24(?:?);
begin
 0050CE24    push        ebx
 0050CE25    push        esi
 0050CE26    push        edi
 0050CE27    add         esp,0FFFFFFE0
 0050CE2A    mov         esi,edx
 0050CE2C    mov         ebx,eax
 0050CE2E    mov         eax,dword ptr [esi+8]
 0050CE31    cmp         dword ptr [eax+8],0FFFFFB20
>0050CE38    jne         0050CE98
 0050CE3A    cmp         word ptr [ebx+2E2],0;TCustomButton.?f2E2:word
>0050CE42    je          0050CE52
 0050CE44    mov         edx,ebx
 0050CE46    mov         eax,dword ptr [ebx+2E4];TCustomButton.?f2E4:dword
 0050CE4C    call        dword ptr [ebx+2E0];TCustomButton.FOnDropDownClick
 0050CE52    cmp         dword ptr [ebx+2A8],0;TCustomButton.FDropDownMenu:TPopupMenu
>0050CE59    je          0050CE98
 0050CE5B    mov         eax,dword ptr [esi+8]
 0050CE5E    lea         esi,[eax+0C]
 0050CE61    lea         edi,[esp+10]
 0050CE65    movs        dword ptr [edi],dword ptr [esi]
 0050CE66    movs        dword ptr [edi],dword ptr [esi]
 0050CE67    movs        dword ptr [edi],dword ptr [esi]
 0050CE68    movs        dword ptr [edi],dword ptr [esi]
 0050CE69    mov         eax,dword ptr [esp+1C]
 0050CE6D    mov         edx,dword ptr [esp+10]
 0050CE71    mov         dword ptr [esp+8],edx
 0050CE75    mov         dword ptr [esp+0C],eax
 0050CE79    mov         ecx,esp
 0050CE7B    lea         edx,[esp+8]
 0050CE7F    mov         eax,ebx
 0050CE81    call        TControl.ClientToScreen
 0050CE86    mov         ecx,dword ptr [esp+4]
 0050CE8A    mov         edx,dword ptr [esp]
 0050CE8D    mov         eax,dword ptr [ebx+2A8];TCustomButton.FDropDownMenu:TPopupMenu
 0050CE93    mov         ebx,dword ptr [eax]
 0050CE95    call        dword ptr [ebx+54];TPopupMenu.Popup
 0050CE98    add         esp,20
 0050CE9B    pop         edi
 0050CE9C    pop         esi
 0050CE9D    pop         ebx
 0050CE9E    ret
end;*}

//0050CEA0
constructor TCustomCheckBox.Create(AOwner:TComponent);
begin
{*
 0050CEA0    push        ebx
 0050CEA1    push        esi
 0050CEA2    test        dl,dl
>0050CEA4    je          0050CEAE
 0050CEA6    add         esp,0FFFFFFF0
 0050CEA9    call        @ClassCreate
 0050CEAE    mov         ebx,edx
 0050CEB0    mov         esi,eax
 0050CEB2    xor         edx,edx
 0050CEB4    mov         eax,esi
 0050CEB6    call        TButtonControl.Create
 0050CEBB    mov         edx,61
 0050CEC0    mov         eax,esi
 0050CEC2    call        TControl.SetWidth
 0050CEC7    mov         edx,11
 0050CECC    mov         eax,esi
 0050CECE    call        TControl.SetHeight
 0050CED3    mov         dl,1
 0050CED5    mov         eax,esi
 0050CED7    call        TWinControl.SetTabStop
 0050CEDC    mov         eax,[0050CF08];0xA0 gvar_0050CF08
 0050CEE1    mov         dword ptr [esi+60],eax;TCustomCheckBox.FControlStyle:TControlStyle
 0050CEE4    mov         byte ptr [esi+298],1;TCustomCheckBox.FAlignment:TLeftRight
 0050CEEB    mov         eax,esi
 0050CEED    test        bl,bl
>0050CEEF    je          0050CF00
 0050CEF1    call        @AfterConstruction
 0050CEF6    pop         dword ptr fs:[0]
 0050CEFD    add         esp,0C
 0050CF00    mov         eax,esi
 0050CF02    pop         esi
 0050CF03    pop         ebx
 0050CF04    ret
*}
end;

Initialization
//0079D0C8
{*
 0079D0C8    sub         dword ptr ds:[7CA65C],1
>0079D0CF    jae         0079D0E7
 0079D0D1    mov         ecx,dword ptr ds:[50555C];TCheckBoxStyleHook
 0079D0D7    mov         edx,dword ptr ds:[4FFCDC];TCustomCheckBox
 0079D0DD    mov         eax,[005738E0];TCustomStyleEngine
 0079D0E2    call        TCustomStyleEngine.RegisterStyleHook
 0079D0E7    ret
*}
Finalization
end.