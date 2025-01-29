//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit81;

interface

uses
  SysUtils, Classes;

    procedure CMVisibleChanged;//005C06F4
    procedure CreateParams(var Params:TCreateParams);//005C0710
    procedure SetBorderStyle(Value:TBorderStyle);//005C0760
    //procedure WMNCHitTest(?:?);//005C0774
    //procedure CMCtl3DChanged(?:?);//005C077C
    procedure sub_005C07A8;//005C07A8
    constructor Create(AOwner:TComponent);//005C07AC
    procedure CreateParams(var Params:TCreateParams);//005C08B4
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);//005C08DC
    procedure sub_005C0948;//005C0948
    //procedure sub_005C09A8(?:?);//005C09A8
    constructor Create(AOwner:TComponent);//005C0A2C

implementation

//005C06F4
procedure TScrollBox.CMVisibleChanged;
begin
{*
 005C06F4    push        ebx
 005C06F5    mov         ebx,eax
 005C06F7    mov         eax,ebx
 005C06F9    call        TWinControl.CMVisibleChanged
 005C06FE    cmp         byte ptr [ebx+69],0;TScrollBox.FVisible:Boolean
>005C0702    je          005C070B
 005C0704    mov         eax,ebx
 005C0706    call        TScrollingWinControl.UpdateScrollBars
 005C070B    pop         ebx
 005C070C    ret
*}
end;

//005C0710
procedure TScrollBox.CreateParams(var Params:TCreateParams);
begin
{*
 005C0710    push        ebx
 005C0711    push        esi
 005C0712    mov         esi,edx
 005C0714    mov         ebx,eax
 005C0716    mov         edx,esi
 005C0718    mov         eax,ebx
 005C071A    call        TScrollingWinControl.CreateParams
 005C071F    movzx       eax,byte ptr [ebx+2B0];TScrollBox.FBorderStyle:TBorderStyle
 005C0726    mov         eax,dword ptr [eax*4+7A1D0C]
 005C072D    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 005C0730    mov         eax,[007C4770];^gvar_007CA5E0
 005C0735    cmp         byte ptr [eax],0
>005C0738    je          005C075A
 005C073A    cmp         byte ptr [ebx+204],0;TScrollBox.FCtl3D:Boolean
>005C0741    je          005C075A
 005C0743    cmp         byte ptr [ebx+2B0],1;TScrollBox.FBorderStyle:TBorderStyle
>005C074A    jne         005C075A
 005C074C    and         dword ptr [esi+4],0FF7FFFFF;TCreateParams.Style:DWORD
 005C0753    or          dword ptr [esi+8],200;TCreateParams.ExStyle:DWORD
 005C075A    pop         esi
 005C075B    pop         ebx
 005C075C    ret
*}
end;

//005C0760
procedure TScrollBox.SetBorderStyle(Value:TBorderStyle);
begin
{*
 005C0760    cmp         dl,byte ptr [eax+2B0];TScrollBox.FBorderStyle:TBorderStyle
>005C0766    je          005C0773
 005C0768    mov         byte ptr [eax+2B0],dl;TScrollBox.FBorderStyle:TBorderStyle
 005C076E    call        TWinControl.RecreateWnd
 005C0773    ret
*}
end;

//005C0774
{*procedure TScrollBox.WMNCHitTest(?:?);
begin
 005C0774    mov         ecx,dword ptr [eax]
 005C0776    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 005C0779    ret
end;*}

//005C077C
{*procedure TScrollBox.CMCtl3DChanged(?:?);
begin
 005C077C    push        ebx
 005C077D    push        esi
 005C077E    mov         esi,edx
 005C0780    mov         ebx,eax
 005C0782    mov         eax,[007C4770];^gvar_007CA5E0
 005C0787    cmp         byte ptr [eax],0
>005C078A    je          005C079C
 005C078C    cmp         byte ptr [ebx+2B0],1;TScrollBox.FBorderStyle:TBorderStyle
>005C0793    jne         005C079C
 005C0795    mov         eax,ebx
 005C0797    call        TWinControl.RecreateWnd
 005C079C    mov         edx,esi
 005C079E    mov         eax,ebx
 005C07A0    call        TWinControl.CMCtl3DChanged
 005C07A5    pop         esi
 005C07A6    pop         ebx
 005C07A7    ret
end;*}

//005C07A8
procedure sub_005C07A8;
begin
{*
 005C07A8    ret
*}
end;

//005C07AC
constructor TCustomFrame.Create(AOwner:TComponent);
begin
{*
 005C07AC    push        ebp
 005C07AD    mov         ebp,esp
 005C07AF    add         esp,0FFFFFFEC
 005C07B2    push        ebx
 005C07B3    xor         ebx,ebx
 005C07B5    mov         dword ptr [ebp-10],ebx
 005C07B8    mov         dword ptr [ebp-14],ebx
 005C07BB    test        dl,dl
>005C07BD    je          005C07C7
 005C07BF    add         esp,0FFFFFFF0
 005C07C2    call        @ClassCreate
 005C07C7    mov         byte ptr [ebp-1],dl
 005C07CA    mov         ebx,eax
 005C07CC    xor         eax,eax
 005C07CE    push        ebp
 005C07CF    push        5C0889
 005C07D4    push        dword ptr fs:[eax]
 005C07D7    mov         dword ptr fs:[eax],esp
 005C07DA    xor         edx,edx
 005C07DC    mov         eax,ebx
 005C07DE    call        TScrollingWinControl.Create
 005C07E3    mov         eax,[005C08B0];0x2C00AB gvar_005C08B0
 005C07E8    mov         dword ptr [ebx+60],eax;TCustomFrame.FControlStyle:TControlStyle
 005C07EB    mov         edx,dword ptr [ebx]
 005C07ED    mov         eax,edx
 005C07EF    cmp         eax,dword ptr ds:[5B5BA0];TFrame
>005C07F5    je          005C0802
 005C07F7    test        byte ptr [ebx+1D],4;TCustomFrame.?f1D:byte
 005C07FB    setne       al
 005C07FE    xor         al,1
>005C0800    jmp         005C0804
 005C0802    xor         eax,eax
 005C0804    test        al,al
>005C0806    je          005C0856
 005C0808    mov         edx,dword ptr ds:[5B5BA0];TFrame
 005C080E    mov         eax,ebx
 005C0810    call        0048D348
 005C0815    test        al,al
>005C0817    jne         005C086E
 005C0819    lea         edx,[ebp-10]
 005C081C    mov         eax,dword ptr [ebx]
 005C081E    call        TObject.ClassName
 005C0823    mov         eax,dword ptr [ebp-10]
 005C0826    mov         dword ptr [ebp-0C],eax
 005C0829    mov         byte ptr [ebp-8],11
 005C082D    lea         eax,[ebp-0C]
 005C0830    push        eax
 005C0831    push        0
 005C0833    lea         edx,[ebp-14]
 005C0836    mov         eax,[007C47C0];^SResString144:TResStringRec
 005C083B    call        LoadResString
 005C0840    mov         ecx,dword ptr [ebp-14]
 005C0843    mov         dl,1
 005C0845    mov         eax,[0046BB3C];EResNotFound
 005C084A    call        Exception.CreateFmt;EResNotFound.Create
 005C084F    call        @RaiseExcept
>005C0854    jmp         005C086E
 005C0856    mov         edx,140
 005C085B    mov         eax,ebx
 005C085D    call        TControl.SetWidth
 005C0862    mov         edx,0F0
 005C0867    mov         eax,ebx
 005C0869    call        TControl.SetHeight
 005C086E    xor         eax,eax
 005C0870    pop         edx
 005C0871    pop         ecx
 005C0872    pop         ecx
 005C0873    mov         dword ptr fs:[eax],edx
 005C0876    push        5C0890
 005C087B    lea         eax,[ebp-14]
 005C087E    mov         edx,2
 005C0883    call        @UStrArrayClr
 005C0888    ret
>005C0889    jmp         @HandleFinally
>005C088E    jmp         005C087B
 005C0890    mov         eax,ebx
 005C0892    cmp         byte ptr [ebp-1],0
>005C0896    je          005C08A7
 005C0898    call        @AfterConstruction
 005C089D    pop         dword ptr fs:[0]
 005C08A4    add         esp,0C
 005C08A7    mov         eax,ebx
 005C08A9    pop         ebx
 005C08AA    mov         esp,ebp
 005C08AC    pop         ebp
 005C08AD    ret
*}
end;

//005C08B4
procedure TCustomFrame.CreateParams(var Params:TCreateParams);
begin
{*
 005C08B4    push        ebx
 005C08B5    push        esi
 005C08B6    mov         esi,edx
 005C08B8    mov         ebx,eax
 005C08BA    mov         edx,esi
 005C08BC    mov         eax,ebx
 005C08BE    call        TScrollingWinControl.CreateParams
 005C08C3    cmp         dword ptr [ebx+40],0;TCustomFrame.FParent:TWinControl
>005C08C7    jne         005C08D7
 005C08C9    mov         eax,[007CA7C8];Application:TApplication
 005C08CE    mov         eax,dword ptr [eax+188]
 005C08D4    mov         dword ptr [esi+1C],eax;TCreateParams.WndParent:HWND
 005C08D7    pop         esi
 005C08D8    pop         ebx
 005C08D9    ret
*}
end;

//005C08DC
{*procedure TCustomFrame.GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);
begin
 005C08DC    push        ebp
 005C08DD    mov         ebp,esp
 005C08DF    add         esp,0FFFFFFF8
 005C08E2    push        ebx
 005C08E3    push        esi
 005C08E4    push        edi
 005C08E5    mov         esi,edx
 005C08E7    mov         ebx,eax
 005C08E9    push        dword ptr [ebp+0C]
 005C08EC    push        dword ptr [ebp+8]
 005C08EF    mov         edx,esi
 005C08F1    mov         eax,ebx
 005C08F3    call        TWinControl.GetChildren
 005C08F8    cmp         ebx,esi
>005C08FA    jne         005C093E
 005C08FC    mov         eax,ebx
 005C08FE    call        TComponent.GetComponentCount
 005C0903    dec         eax
 005C0904    test        eax,eax
>005C0906    jl          005C093E
 005C0908    inc         eax
 005C0909    mov         dword ptr [ebp-8],eax
 005C090C    mov         dword ptr [ebp-4],0
 005C0913    mov         edx,dword ptr [ebp-4]
 005C0916    mov         eax,ebx
 005C0918    call        TComponent.GetComponent
 005C091D    mov         edi,eax
 005C091F    mov         eax,edi
 005C0921    mov         si,0FFF0
 005C0925    call        @CallDynaInst;TComponent.sub_0049EC8C
 005C092A    test        al,al
>005C092C    jne         005C0936
 005C092E    mov         edx,edi
 005C0930    mov         eax,dword ptr [ebp+0C]
 005C0933    call        dword ptr [ebp+8]
 005C0936    inc         dword ptr [ebp-4]
 005C0939    dec         dword ptr [ebp-8]
>005C093C    jne         005C0913
 005C093E    pop         edi
 005C093F    pop         esi
 005C0940    pop         ebx
 005C0941    pop         ecx
 005C0942    pop         ecx
 005C0943    pop         ebp
 005C0944    ret         8
end;*}

//005C0948
procedure sub_005C0948;
begin
{*
 005C0948    push        ebx
 005C0949    push        esi
 005C094A    mov         ebx,eax
 005C094C    test        byte ptr [ebx+1C],10;TCustomFrame.FComponentState:TComponentState
>005C0950    je          005C09A3
 005C0952    mov         eax,dword ptr [ebx+40];TCustomFrame.FParent:TWinControl
 005C0955    mov         edx,dword ptr ds:[5B865C];TForm
 005C095B    call        @IsClass
 005C0960    test        al,al
>005C0962    je          005C09A3
 005C0964    mov         esi,dword ptr [ebx+40];TCustomFrame.FParent:TWinControl
 005C0967    cmp         dword ptr [esi+2E0],0
>005C096E    je          005C09A3
 005C0970    mov         eax,dword ptr [esi+2E0]
 005C0976    mov         edx,dword ptr [eax]
 005C0978    call        dword ptr [edx+3C]
 005C097B    cmp         ebx,eax
>005C097D    jne         005C09A3
 005C097F    call        StyleServices
 005C0984    mov         edx,dword ptr [eax]
 005C0986    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005C0989    test        al,al
>005C098B    je          005C0998
 005C098D    mov         eax,ebx
 005C098F    call        TGroupBox.GetParentBackground
 005C0994    test        al,al
>005C0996    jne         005C09A3
 005C0998    mov         eax,dword ptr [esi+2E0]
 005C099E    mov         edx,dword ptr [eax]
 005C09A0    call        dword ptr [edx+2C]
 005C09A3    pop         esi
 005C09A4    pop         ebx
 005C09A5    ret
*}
end;

//005C09A8
{*procedure sub_005C09A8(?:?);
begin
 005C09A8    push        ebp
 005C09A9    mov         ebp,esp
 005C09AB    add         esp,0FFFFFFF8
 005C09AE    push        ebx
 005C09AF    mov         ebx,edx
 005C09B1    mov         dword ptr [ebp-4],eax
 005C09B4    mov         eax,dword ptr [ebp-4]
 005C09B7    call        TWinControl.HandleAllocated
 005C09BC    mov         byte ptr [ebp-5],al
 005C09BF    cmp         byte ptr [ebp-5],0
>005C09C3    je          005C09CF
 005C09C5    mov         dl,1
 005C09C7    mov         eax,dword ptr [ebp-4]
 005C09CA    call        004F2104
 005C09CF    xor         eax,eax
 005C09D1    push        ebp
 005C09D2    push        5C0A1F
 005C09D7    push        dword ptr fs:[eax]
 005C09DA    mov         dword ptr fs:[eax],esp
 005C09DD    mov         eax,dword ptr [ebp-4]
 005C09E0    cmp         dword ptr [eax+40],0;TCustomFrame.FParent:TWinControl
 005C09E4    sete        al
 005C09E7    and         al,byte ptr [ebp-5]
>005C09EA    je          005C09F7
 005C09EC    mov         eax,dword ptr [ebp-4]
 005C09EF    mov         edx,dword ptr [eax]
 005C09F1    call        dword ptr [edx+0D8];TCustomFrame.sub_004EC288
 005C09F7    mov         edx,ebx
 005C09F9    mov         eax,dword ptr [ebp-4]
 005C09FC    call        004F22F8
 005C0A01    xor         eax,eax
 005C0A03    pop         edx
 005C0A04    pop         ecx
 005C0A05    pop         ecx
 005C0A06    mov         dword ptr fs:[eax],edx
 005C0A09    push        5C0A26
 005C0A0E    cmp         byte ptr [ebp-5],0
>005C0A12    je          005C0A1E
 005C0A14    xor         edx,edx
 005C0A16    mov         eax,dword ptr [ebp-4]
 005C0A19    call        004F2104
 005C0A1E    ret
>005C0A1F    jmp         @HandleFinally
>005C0A24    jmp         005C0A0E
 005C0A26    pop         ebx
 005C0A27    pop         ecx
 005C0A28    pop         ecx
 005C0A29    pop         ebp
 005C0A2A    ret
end;*}

//005C0A2C
constructor TCustomForm.Create(AOwner:TComponent);
begin
{*
 005C0A2C    push        ebp
 005C0A2D    mov         ebp,esp
 005C0A2F    add         esp,0FFFFFFE8
 005C0A32    push        ebx
 005C0A33    push        esi
 005C0A34    xor         ebx,ebx
 005C0A36    mov         dword ptr [ebp-14],ebx
 005C0A39    mov         dword ptr [ebp-18],ebx
 005C0A3C    test        dl,dl
>005C0A3E    je          005C0A48
 005C0A40    add         esp,0FFFFFFF0
 005C0A43    call        @ClassCreate
 005C0A48    mov         byte ptr [ebp-5],dl
 005C0A4B    mov         dword ptr [ebp-4],eax
 005C0A4E    xor         eax,eax
 005C0A50    push        ebp
 005C0A51    push        5C0BB7
 005C0A56    push        dword ptr fs:[eax]
 005C0A59    mov         dword ptr fs:[eax],esp
 005C0A5C    xor         edx,edx
 005C0A5E    mov         eax,dword ptr [ebp-4]
 005C0A61    call        TScrollingWinControl.Create
 005C0A66    mov         eax,[007C4E68];^gvar_007CA3B8:IInterface
 005C0A6B    mov         eax,dword ptr [eax]
 005C0A6D    mov         edx,dword ptr [eax]
 005C0A6F    call        dword ptr [edx+14]
 005C0A72    xor         edx,edx
 005C0A74    push        ebp
 005C0A75    push        5C0B89
 005C0A7A    push        dword ptr fs:[edx]
 005C0A7D    mov         dword ptr fs:[edx],esp
 005C0A80    mov         eax,[007CA7C8];Application:TApplication
 005C0A85    movzx       eax,byte ptr [eax+0E9]
 005C0A8C    mov         edx,dword ptr [ebp-4]
 005C0A8F    mov         byte ptr [edx+3A8],al;TCustomForm.FCreatingMainForm:Boolean
 005C0A95    test        al,al
>005C0A97    je          005C0AA5
 005C0A99    mov         eax,[007CA7C8];Application:TApplication
 005C0A9E    mov         byte ptr [eax+0E9],0
 005C0AA5    mov         eax,dword ptr [ebp-4]
 005C0AA8    mov         si,0FFA3
 005C0AAC    call        @CallDynaInst;TCustomForm.sub_005C0C3C
 005C0AB1    mov         edx,dword ptr [ebp-4]
 005C0AB4    mov         edx,dword ptr [edx]
 005C0AB6    mov         eax,edx
 005C0AB8    cmp         eax,dword ptr ds:[5B865C];TForm
>005C0ABE    je          005C0B6F
 005C0AC4    mov         eax,dword ptr [ebp-4]
 005C0AC7    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>005C0ACB    jne         005C0B6F
 005C0AD1    mov         eax,dword ptr [ebp-4]
 005C0AD4    or          byte ptr [eax+3BC],1;TCustomForm.FFormState:TFormState
 005C0ADB    xor         eax,eax
 005C0ADD    push        ebp
 005C0ADE    push        5C0B51
 005C0AE3    push        dword ptr fs:[eax]
 005C0AE6    mov         dword ptr fs:[eax],esp
 005C0AE9    mov         edx,dword ptr ds:[5B865C];TForm
 005C0AEF    mov         eax,dword ptr [ebp-4]
 005C0AF2    call        0048D348
 005C0AF7    test        al,al
>005C0AF9    jne         005C0B39
 005C0AFB    lea         edx,[ebp-14]
 005C0AFE    mov         eax,dword ptr [ebp-4]
 005C0B01    mov         eax,dword ptr [eax]
 005C0B03    call        TObject.ClassName
 005C0B08    mov         eax,dword ptr [ebp-14]
 005C0B0B    mov         dword ptr [ebp-10],eax
 005C0B0E    mov         byte ptr [ebp-0C],11
 005C0B12    lea         eax,[ebp-10]
 005C0B15    push        eax
 005C0B16    push        0
 005C0B18    lea         edx,[ebp-18]
 005C0B1B    mov         eax,[007C47C0];^SResString144:TResStringRec
 005C0B20    call        LoadResString
 005C0B25    mov         ecx,dword ptr [ebp-18]
 005C0B28    mov         dl,1
 005C0B2A    mov         eax,[0046BB3C];EResNotFound
 005C0B2F    call        Exception.CreateFmt;EResNotFound.Create
 005C0B34    call        @RaiseExcept
 005C0B39    xor         eax,eax
 005C0B3B    pop         edx
 005C0B3C    pop         ecx
 005C0B3D    pop         ecx
 005C0B3E    mov         dword ptr fs:[eax],edx
 005C0B41    push        5C0B58
 005C0B46    mov         eax,dword ptr [ebp-4]
 005C0B49    and         byte ptr [eax+3BC],0FE;TCustomForm.FFormState:TFormState
 005C0B50    ret
>005C0B51    jmp         @HandleFinally
>005C0B56    jmp         005C0B46
 005C0B58    mov         eax,dword ptr [ebp-4]
 005C0B5B    cmp         byte ptr [eax+3B1],0;TCustomForm.FOldCreateOrder:Boolean
>005C0B62    je          005C0B6F
 005C0B64    mov         eax,dword ptr [ebp-4]
 005C0B67    mov         edx,dword ptr [eax]
 005C0B69    call        dword ptr [edx+118];TCustomForm.sub_005C0FC4
 005C0B6F    xor         eax,eax
 005C0B71    pop         edx
 005C0B72    pop         ecx
 005C0B73    pop         ecx
 005C0B74    mov         dword ptr fs:[eax],edx
 005C0B77    push        5C0B90
 005C0B7C    mov         eax,[007C4E68];^gvar_007CA3B8:IInterface
 005C0B81    mov         eax,dword ptr [eax]
 005C0B83    mov         edx,dword ptr [eax]
 005C0B85    call        dword ptr [edx+18]
 005C0B88    ret
>005C0B89    jmp         @HandleFinally
>005C0B8E    jmp         005C0B7C
 005C0B90    mov         eax,dword ptr [ebp-4]
 005C0B93    mov         edx,dword ptr ds:[5C0BE0];0x400000 gvar_005C0BE0
 005C0B99    or          dword ptr [eax+60],edx;TCustomForm.FControlStyle:TControlStyle
 005C0B9C    xor         eax,eax
 005C0B9E    pop         edx
 005C0B9F    pop         ecx
 005C0BA0    pop         ecx
 005C0BA1    mov         dword ptr fs:[eax],edx
 005C0BA4    push        5C0BBE
 005C0BA9    lea         eax,[ebp-18]
 005C0BAC    mov         edx,2
 005C0BB1    call        @UStrArrayClr
 005C0BB6    ret
>005C0BB7    jmp         @HandleFinally
>005C0BBC    jmp         005C0BA9
 005C0BBE    mov         eax,dword ptr [ebp-4]
 005C0BC1    cmp         byte ptr [ebp-5],0
>005C0BC5    je          005C0BD6
 005C0BC7    call        @AfterConstruction
 005C0BCC    pop         dword ptr fs:[0]
 005C0BD3    add         esp,0C
 005C0BD6    mov         eax,dword ptr [ebp-4]
 005C0BD9    pop         esi
 005C0BDA    pop         ebx
 005C0BDB    mov         esp,ebp
 005C0BDD    pop         ebp
 005C0BDE    ret
*}
end;

Initialization
//0079D754
{*
 0079D754    sub         dword ptr ds:[7CA7C0],1
>0079D75B    jae         0079D773
 0079D75D    mov         ecx,dword ptr ds:[5BE298];TFormStyleHook
 0079D763    mov         edx,dword ptr ds:[5B7120];TCustomForm
 0079D769    mov         eax,[005738E0];TCustomStyleEngine
 0079D76E    call        TCustomStyleEngine.RegisterStyleHook
 0079D773    ret
*}
Finalization
end.