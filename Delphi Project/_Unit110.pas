//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit110;

interface

uses
  SysUtils, Classes, Vcl.ExtCtrls, Vcl.StdActns, Vcl.ComCtrls, Vcl.StdCtrls, FXIniFiles, Vcl.Buttons, System.Generics.Collections;

type
  TFXControlsFrame = class(TFrame)
  published
    Panel1:TPanel;//f2B0
    Panel2:TPanel;//f2B4
    Splitter1:TSplitter;//f2B8
    Panel3:TPanel;//f2BC
    ListView1:TListView;//f2C0
    Label1:TLabel;//f2C4
    Label2:TLabel;//f2C8
    ListView2:TListView;//f2CC
    Label3:TLabel;//f2D0
    ListView3:TListView;//f2D4
    Label4:TLabel;//f2D8
    ListView4:TListView;//f2DC
    Label5:TLabel;//f2E0
    ListView5:TListView;//f2E4
    Label6:TLabel;//f2E8
    ListView6:TListView;//f2EC
    btnClose:TButton;//f2F0
    GroupBox1:TGroupBox;//f2F4
    RadioButton1:TRadioButton;//f2F8
    RadioButton2:TRadioButton;//f2FC
    RadioButton3:TRadioButton;//f300
    cbItemSelect:TComboBox;//f304
    GroupBox2:TGroupBox;//f308
    cbEventFilter:TComboBox;//f30C
    procedure ListView2DragDrop(Sender:TObject; Source:TObject; X:Integer; Y:Integer);//00730904
    procedure ListView2DragOver(Sender:TObject; Source:TObject; X:Integer; Y:Integer; State:UITypes.TDragState; var Accept:Boolean);//007308DC
    procedure ListView3DragOver(Sender:TObject; Source:TObject; X:Integer; Y:Integer; State:UITypes.TDragState; var Accept:Boolean);//00730A68
    procedure Show;//0072F404
    procedure ListView3DragDrop(Sender:TObject; Source:TObject; X:Integer; Y:Integer);//00730A88
    procedure ListView1DragDrop(Sender:TObject; Source:TObject; X:Integer; Y:Integer);//00730778
    procedure RadioButtonClick(Sender:TObject);//0073073C
    procedure cnInputSelectChange(Sender:TObject);//0072F424
    procedure cbItemSelectChange(Sender:TObject);//00730690
    procedure ListView1DragOver(Sender:TObject; Source:TObject; X:Integer; Y:Integer; State:UITypes.TDragState; var Accept:Boolean);//00730750
    procedure btnCloseClick(Sender:TObject);//00730734
  end;
  TFXADSummaryFrame = class(TFrame)
  published
    OKBtn:TBitBtn;//f2B0
    Panel1:TPanel;//f2B4
    ListView1:TListView;//f2B8
    Panel2:TPanel;//f2BC
    procedure Translate(IniFile:TFXIniFile);//00730FF0
    procedure Show;//00730FCC
    procedure OKBtnClick(Sender:TObject);//00733CA8
  public
    strLoop:string;//f2C0
    strFXSumDeviceType:string;//f2C4
    strFXSumCol:string;//f2C8
  end;
    procedure sub_0072F41C;//0072F41C
    procedure sub_0072F65C(?:TFXControlsFrame);//0072F65C
    procedure sub_0072FEE0(?:TFXControlsFrame);//0072FEE0
    procedure sub_007305BC(?:TFXControlsFrame);//007305BC
    procedure sub_0073237C;//0073237C
    procedure sub_00732380(?:TFXADSummaryFrame);//00732380

implementation

{$R *.DFM}

//0072F404
procedure TFXControlsFrame.Show;
begin
{*
 0072F404    push        ebx
 0072F405    mov         ebx,eax
 0072F407    mov         dl,1
 0072F409    mov         eax,ebx
 0072F40B    call        TControl.SetVisible
 0072F410    mov         eax,ebx
 0072F412    call        TControl.BringToFront
 0072F417    pop         ebx
 0072F418    ret
*}
end;

//0072F41C
procedure sub_0072F41C;
begin
{*
 0072F41C    xor         edx,edx
 0072F41E    call        TControl.SetVisible
 0072F423    ret
*}
end;

//0072F424
procedure TFXControlsFrame.cnInputSelectChange(Sender:TObject);
begin
{*
 0072F424    push        ebp
 0072F425    mov         ebp,esp
 0072F427    mov         ecx,5
 0072F42C    push        0
 0072F42E    push        0
 0072F430    dec         ecx
>0072F431    jne         0072F42C
 0072F433    push        ecx
 0072F434    push        ebx
 0072F435    push        esi
 0072F436    push        edi
 0072F437    xor         edx,edx
 0072F439    push        ebp
 0072F43A    push        72F5EA
 0072F43F    push        dword ptr fs:[edx]
 0072F442    mov         dword ptr fs:[edx],esp
 0072F445    mov         eax,dword ptr [eax+2C0];TFXControlsFrame.ListView1:TListView
 0072F44B    mov         dword ptr [ebp-8],eax
 0072F44E    mov         byte ptr [ebp-1],0
 0072F452    mov         byte ptr [ebp-2],0
 0072F456    mov         bl,1
 0072F458    movzx       eax,byte ptr [ebp-1]
 0072F45C    cmp         eax,7
>0072F45F    jbe         0072F466
 0072F461    call        @BoundErr
 0072F466    imul        eax,eax,43B3
>0072F46C    jno         0072F473
 0072F46E    call        @IntOver
 0072F473    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0072F479    mov         edx,dword ptr [edx]
 0072F47B    mov         edx,dword ptr [edx+14]
 0072F47E    lea         esi,[edx+eax*4]
 0072F481    movzx       eax,byte ptr [ebp-2]
 0072F485    cmp         eax,1
>0072F488    jbe         0072F48F
 0072F48A    call        @BoundErr
 0072F48F    imul        eax,eax,43B3
>0072F495    jno         0072F49C
 0072F497    call        @IntOver
 0072F49C    lea         eax,[esi+eax*2]
 0072F49F    movzx       edx,bl
 0072F4A2    dec         edx
 0072F4A3    cmp         edx,9E
>0072F4A9    jbe         0072F4B0
 0072F4AB    call        @BoundErr
 0072F4B0    inc         edx
 0072F4B1    imul        edx,edx,6D
>0072F4B4    jno         0072F4BB
 0072F4B6    call        @IntOver
 0072F4BB    lea         esi,[eax+edx*2-0D6]
 0072F4C2    cmp         byte ptr [esi+0A],1
>0072F4C6    jne         0072F5AB
 0072F4CC    mov         eax,dword ptr [ebp-8]
 0072F4CF    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0072F4D5    call        TListItems.Add
 0072F4DA    mov         edi,eax
 0072F4DC    lea         edx,[ebp-18]
 0072F4DF    movzx       eax,byte ptr [ebp-1]
 0072F4E3    call        IntToStr
 0072F4E8    mov         ecx,dword ptr [ebp-18]
 0072F4EB    lea         eax,[ebp-14]
 0072F4EE    mov         edx,72F604;'0'
 0072F4F3    call        @UStrCat3
 0072F4F8    mov         eax,dword ptr [ebp-14]
 0072F4FB    lea         ecx,[ebp-10]
 0072F4FE    mov         edx,2
 0072F503    call        00431F5C
 0072F508    push        dword ptr [ebp-10]
 0072F50B    push        72F614;'.'
 0072F510    movzx       eax,byte ptr [ebp-2]
 0072F514    mov         edx,64
 0072F519    mul         eax,edx
>0072F51B    jno         0072F522
 0072F51D    call        @IntOver
 0072F522    movzx       edx,bl
 0072F525    add         eax,edx
>0072F527    jno         0072F52E
 0072F529    call        @IntOver
 0072F52E    lea         edx,[ebp-24]
 0072F531    call        IntToStr
 0072F536    mov         ecx,dword ptr [ebp-24]
 0072F539    lea         eax,[ebp-20]
 0072F53C    mov         edx,72F624;'00'
 0072F541    call        @UStrCat3
 0072F546    mov         eax,dword ptr [ebp-20]
 0072F549    lea         ecx,[ebp-1C]
 0072F54C    mov         edx,3
 0072F551    call        00431F5C
 0072F556    push        dword ptr [ebp-1C]
 0072F559    lea         eax,[ebp-0C]
 0072F55C    mov         edx,3
 0072F561    call        @UStrCatN
 0072F566    mov         edx,dword ptr [ebp-0C]
 0072F569    mov         eax,edi
 0072F56B    call        TListItem.SetCaption
 0072F570    mov         eax,dword ptr [edi+8];TListItem.FSubItems:TStrings
 0072F573    mov         edx,72F638;'Ionisation sensor'
 0072F578    mov         ecx,dword ptr [eax]
 0072F57A    call        dword ptr [ecx+3C];TStrings.Add
 0072F57D    lea         edx,[ebp-28]
 0072F580    movzx       eax,word ptr [esi+6]
 0072F584    call        IntToStr
 0072F589    mov         edx,dword ptr [ebp-28]
 0072F58C    mov         eax,dword ptr [edi+8];TListItem.FSubItems:TStrings
 0072F58F    mov         ecx,dword ptr [eax]
 0072F591    call        dword ptr [ecx+3C];TStrings.Add
 0072F594    lea         edx,[ebp-2C]
 0072F597    movzx       eax,word ptr [esi+8]
 0072F59B    call        IntToStr
 0072F5A0    mov         edx,dword ptr [ebp-2C]
 0072F5A3    mov         eax,dword ptr [edi+8];TListItem.FSubItems:TStrings
 0072F5A6    mov         ecx,dword ptr [eax]
 0072F5A8    call        dword ptr [ecx+3C];TStrings.Add
 0072F5AB    inc         ebx
 0072F5AC    cmp         bl,64
>0072F5AF    jne         0072F458
 0072F5B5    inc         byte ptr [ebp-2]
 0072F5B8    cmp         byte ptr [ebp-2],2
>0072F5BC    jne         0072F456
 0072F5C2    inc         byte ptr [ebp-1]
 0072F5C5    cmp         byte ptr [ebp-1],8
>0072F5C9    jne         0072F452
 0072F5CF    xor         eax,eax
 0072F5D1    pop         edx
 0072F5D2    pop         ecx
 0072F5D3    pop         ecx
 0072F5D4    mov         dword ptr fs:[eax],edx
 0072F5D7    push        72F5F1
 0072F5DC    lea         eax,[ebp-2C]
 0072F5DF    mov         edx,9
 0072F5E4    call        @UStrArrayClr
 0072F5E9    ret
>0072F5EA    jmp         @HandleFinally
>0072F5EF    jmp         0072F5DC
 0072F5F1    pop         edi
 0072F5F2    pop         esi
 0072F5F3    pop         ebx
 0072F5F4    mov         esp,ebp
 0072F5F6    pop         ebp
 0072F5F7    ret
*}
end;

//0072F65C
procedure sub_0072F65C(?:TFXControlsFrame);
begin
{*
 0072F65C    push        ebp
 0072F65D    mov         ebp,esp
 0072F65F    mov         ecx,12
 0072F664    push        0
 0072F666    push        0
 0072F668    dec         ecx
>0072F669    jne         0072F664
 0072F66B    push        ecx
 0072F66C    push        ebx
 0072F66D    push        esi
 0072F66E    push        edi
 0072F66F    mov         dword ptr [ebp-8],eax
 0072F672    xor         eax,eax
 0072F674    push        ebp
 0072F675    push        72FE9E
 0072F67A    push        dword ptr fs:[eax]
 0072F67D    mov         dword ptr fs:[eax],esp
 0072F680    xor         eax,eax
 0072F682    mov         dword ptr [ebp-1C],eax
 0072F685    xor         eax,eax
 0072F687    mov         dword ptr [ebp-0C],eax
 0072F68A    xor         eax,eax
 0072F68C    mov         dword ptr [ebp-10],eax
 0072F68F    xor         esi,esi
 0072F691    xor         eax,eax
 0072F693    mov         dword ptr [ebp-14],eax
 0072F696    xor         eax,eax
 0072F698    mov         dword ptr [ebp-18],eax
 0072F69B    lea         eax,[ebp-4]
 0072F69E    call        @UStrClr
 0072F6A3    lea         edx,[ebp-28]
 0072F6A6    mov         eax,dword ptr [ebp-8]
 0072F6A9    mov         eax,dword ptr [eax+304]
 0072F6AF    call        TControl.GetText
 0072F6B4    mov         eax,dword ptr [ebp-28]
 0072F6B7    mov         edx,1
 0072F6BC    dec         edx
 0072F6BD    test        eax,eax
>0072F6BF    je          0072F6C6
 0072F6C1    cmp         edx,dword ptr [eax-4]
>0072F6C4    jb          0072F6CB
 0072F6C6    call        @BoundErr
 0072F6CB    inc         edx
 0072F6CC    movzx       eax,word ptr [eax+edx*2-2]
 0072F6D1    cmp         eax,4D
>0072F6D4    jg          0072F6F2
>0072F6D6    je          0072F7D0
 0072F6DC    add         eax,0FFFFFFD0
 0072F6DF    sub         eax,0A
>0072F6E2    jb          0072F709
 0072F6E4    sub         eax,0F
>0072F6E7    je          0072F7F8
>0072F6ED    jmp         0072F81E
 0072F6F2    sub         eax,69
>0072F6F5    je          0072F7F8
 0072F6FB    sub         eax,4
>0072F6FE    je          0072F7D0
>0072F704    jmp         0072F81E
 0072F709    lea         edx,[ebp-2C]
 0072F70C    mov         eax,dword ptr [ebp-8]
 0072F70F    mov         eax,dword ptr [eax+304]
 0072F715    call        TControl.GetText
 0072F71A    mov         eax,dword ptr [ebp-2C]
 0072F71D    test        eax,eax
>0072F71F    je          0072F726
 0072F721    sub         eax,4
 0072F724    mov         eax,dword ptr [eax]
 0072F726    cmp         eax,6
>0072F729    jne         0072FE46
 0072F72F    lea         edx,[ebp-34]
 0072F732    mov         eax,dword ptr [ebp-8]
 0072F735    mov         eax,dword ptr [eax+304]
 0072F73B    call        TControl.GetText
 0072F740    mov         eax,dword ptr [ebp-34]
 0072F743    lea         ecx,[ebp-30]
 0072F746    mov         edx,2
 0072F74B    call        00431F40
 0072F750    mov         eax,dword ptr [ebp-30]
 0072F753    call        StrToInt
 0072F758    mov         dword ptr [ebp-0C],eax
 0072F75B    lea         edx,[ebp-3C]
 0072F75E    mov         eax,dword ptr [ebp-8]
 0072F761    mov         eax,dword ptr [eax+304]
 0072F767    call        TControl.GetText
 0072F76C    mov         eax,dword ptr [ebp-3C]
 0072F76F    lea         ecx,[ebp-38]
 0072F772    mov         edx,3
 0072F777    call        00431F5C
 0072F77C    mov         eax,dword ptr [ebp-38]
 0072F77F    call        StrToInt
 0072F784    mov         esi,eax
 0072F786    sub         dword ptr [ebp-0C],1
>0072F78A    jno         0072F791
 0072F78C    call        @IntOver
 0072F791    mov         eax,esi
 0072F793    mov         ecx,64
 0072F798    cdq
 0072F799    idiv        eax,ecx
 0072F79B    mov         dword ptr [ebp-10],eax
 0072F79E    mov         ecx,64
 0072F7A3    mov         eax,esi
 0072F7A5    cdq
 0072F7A6    idiv        eax,ecx
 0072F7A8    mov         esi,edx
 0072F7AA    mov         eax,dword ptr [ebp-0C]
 0072F7AD    sub         eax,8
>0072F7B0    jae         0072FE46
 0072F7B6    mov         eax,dword ptr [ebp-10]
 0072F7B9    sub         eax,2
>0072F7BC    jae         0072FE46
 0072F7C2    mov         eax,esi
 0072F7C4    dec         eax
 0072F7C5    sub         eax,63
>0072F7C8    jae         0072FE46
>0072F7CE    jmp         0072F81E
 0072F7D0    lea         edx,[ebp-40]
 0072F7D3    mov         eax,dword ptr [ebp-8]
 0072F7D6    mov         eax,dword ptr [eax+304]
 0072F7DC    call        TControl.GetText
 0072F7E1    mov         eax,dword ptr [ebp-40]
 0072F7E4    test        eax,eax
>0072F7E6    je          0072F7ED
 0072F7E8    sub         eax,4
 0072F7EB    mov         eax,dword ptr [eax]
 0072F7ED    cmp         eax,4
>0072F7F0    jne         0072FE46
>0072F7F6    jmp         0072F81E
 0072F7F8    lea         edx,[ebp-44]
 0072F7FB    mov         eax,dword ptr [ebp-8]
 0072F7FE    mov         eax,dword ptr [eax+304]
 0072F804    call        TControl.GetText
 0072F809    mov         eax,dword ptr [ebp-44]
 0072F80C    test        eax,eax
>0072F80E    je          0072F815
 0072F810    sub         eax,4
 0072F813    mov         eax,dword ptr [eax]
 0072F815    cmp         eax,6
>0072F818    jne         0072FE46
 0072F81E    mov         eax,dword ptr [ebp-8]
 0072F821    mov         eax,dword ptr [eax+2C0]
 0072F827    mov         eax,dword ptr [eax+2BC]
 0072F82D    call        TListItems.BeginUpdate
 0072F832    mov         eax,dword ptr [ebp-8]
 0072F835    mov         eax,dword ptr [eax+2CC]
 0072F83B    mov         eax,dword ptr [eax+2BC]
 0072F841    call        TListItems.BeginUpdate
 0072F846    mov         eax,dword ptr [ebp-8]
 0072F849    mov         eax,dword ptr [eax+2D4]
 0072F84F    mov         eax,dword ptr [eax+2BC]
 0072F855    call        TListItems.BeginUpdate
 0072F85A    mov         eax,dword ptr [ebp-8]
 0072F85D    mov         eax,dword ptr [eax+2DC]
 0072F863    mov         eax,dword ptr [eax+2BC]
 0072F869    call        TListItems.BeginUpdate
 0072F86E    mov         eax,dword ptr [ebp-8]
 0072F871    mov         eax,dword ptr [eax+2E4]
 0072F877    mov         eax,dword ptr [eax+2BC]
 0072F87D    call        TListItems.BeginUpdate
 0072F882    mov         eax,dword ptr [ebp-8]
 0072F885    mov         eax,dword ptr [eax+2EC]
 0072F88B    mov         eax,dword ptr [eax+2BC]
 0072F891    call        TListItems.BeginUpdate
 0072F896    mov         eax,dword ptr [ebp-0C]
 0072F899    cmp         eax,7
>0072F89C    jbe         0072F8A3
 0072F89E    call        @BoundErr
 0072F8A3    imul        eax,eax,43B3
>0072F8A9    jno         0072F8B0
 0072F8AB    call        @IntOver
 0072F8B0    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0072F8B6    mov         edx,dword ptr [edx]
 0072F8B8    mov         edx,dword ptr [edx+14]
 0072F8BB    lea         eax,[edx+eax*4]
 0072F8BE    mov         edx,dword ptr [ebp-10]
 0072F8C1    cmp         edx,1
>0072F8C4    jbe         0072F8CB
 0072F8C6    call        @BoundErr
 0072F8CB    imul        edx,edx,43B3
>0072F8D1    jno         0072F8D8
 0072F8D3    call        @IntOver
 0072F8D8    lea         eax,[eax+edx*2]
 0072F8DB    dec         esi
 0072F8DC    cmp         esi,9E
>0072F8E2    jbe         0072F8E9
 0072F8E4    call        @BoundErr
 0072F8E9    inc         esi
 0072F8EA    imul        edx,esi,6D
>0072F8ED    jno         0072F8F4
 0072F8EF    call        @IntOver
 0072F8F4    lea         ebx,[eax+edx*2-0D6]
 0072F8FB    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0072F900    mov         eax,dword ptr [eax]
 0072F902    mov         edi,dword ptr [eax+18]
 0072F905    cmp         byte ptr [ebx+0A],0
>0072F909    je          0072FA94
 0072F90F    mov         eax,dword ptr [ebp-8]
 0072F912    mov         eax,dword ptr [eax+2C0]
 0072F918    mov         eax,dword ptr [eax+2BC]
 0072F91E    call        TListItems.Add
 0072F923    mov         dword ptr [ebp-1C],eax
 0072F926    lea         edx,[ebp-54]
 0072F929    mov         eax,dword ptr [ebp-0C]
 0072F92C    add         eax,1
>0072F92F    jno         0072F936
 0072F931    call        @IntOver
 0072F936    call        IntToStr
 0072F93B    mov         ecx,dword ptr [ebp-54]
 0072F93E    lea         eax,[ebp-50]
 0072F941    mov         edx,72FEB8;'0'
 0072F946    call        @UStrCat3
 0072F94B    mov         eax,dword ptr [ebp-50]
 0072F94E    lea         ecx,[ebp-4C]
 0072F951    mov         edx,2
 0072F956    call        00431F5C
 0072F95B    push        dword ptr [ebp-4C]
 0072F95E    push        72FEC8;'.'
 0072F963    lea         edx,[ebp-60]
 0072F966    imul        eax,dword ptr [ebp-10],64
>0072F96A    jno         0072F971
 0072F96C    call        @IntOver
 0072F971    add         eax,esi
>0072F973    jno         0072F97A
 0072F975    call        @IntOver
 0072F97A    call        IntToStr
 0072F97F    mov         ecx,dword ptr [ebp-60]
 0072F982    lea         eax,[ebp-5C]
 0072F985    mov         edx,72FED8;'00'
 0072F98A    call        @UStrCat3
 0072F98F    mov         eax,dword ptr [ebp-5C]
 0072F992    lea         ecx,[ebp-58]
 0072F995    mov         edx,3
 0072F99A    call        00431F5C
 0072F99F    push        dword ptr [ebp-58]
 0072F9A2    lea         eax,[ebp-48]
 0072F9A5    mov         edx,3
 0072F9AA    call        @UStrCatN
 0072F9AF    mov         edx,dword ptr [ebp-48]
 0072F9B2    mov         eax,dword ptr [ebp-1C]
 0072F9B5    call        TListItem.SetCaption
 0072F9BA    movzx       eax,byte ptr [ebx+0A]
 0072F9BE    cmp         eax,0F
>0072F9C1    jbe         0072F9C8
 0072F9C3    call        @BoundErr
 0072F9C8    mov         edx,dword ptr ds:[7C4E3C];^^'Not in use':array[16] of ?
 0072F9CE    mov         edx,dword ptr [edx+eax*4]
 0072F9D1    mov         eax,dword ptr [ebp-1C]
 0072F9D4    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 0072F9D7    mov         ecx,dword ptr [eax]
 0072F9D9    call        dword ptr [ecx+3C];TStrings.Add
 0072F9DC    lea         edx,[ebp-64]
 0072F9DF    movzx       eax,word ptr [ebx+6]
 0072F9E3    call        IntToStr
 0072F9E8    mov         edx,dword ptr [ebp-64]
 0072F9EB    mov         eax,dword ptr [ebp-1C]
 0072F9EE    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 0072F9F1    mov         ecx,dword ptr [eax]
 0072F9F3    call        dword ptr [ecx+3C];TStrings.Add
 0072F9F6    lea         edx,[ebp-68]
 0072F9F9    movzx       eax,word ptr [ebx+8]
 0072F9FD    call        IntToStr
 0072FA02    mov         edx,dword ptr [ebp-68]
 0072FA05    mov         eax,dword ptr [ebp-1C]
 0072FA08    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 0072FA0B    mov         ecx,dword ptr [eax]
 0072FA0D    call        dword ptr [ecx+3C];TStrings.Add
 0072FA10    lea         eax,[ebp-6C]
 0072FA13    mov         edx,dword ptr [ebp-0C]
 0072FA16    cmp         edx,7
>0072FA19    jbe         0072FA20
 0072FA1B    call        @BoundErr
 0072FA20    imul        edx,edx,9F0
>0072FA26    jno         0072FA2D
 0072FA28    call        @IntOver
 0072FA2D    lea         edx,[edi+edx*8]
 0072FA30    mov         ecx,dword ptr [ebp-10]
 0072FA33    cmp         ecx,1
>0072FA36    jbe         0072FA3D
 0072FA38    call        @BoundErr
 0072FA3D    imul        ecx,ecx,4F8
>0072FA43    jno         0072FA4A
 0072FA45    call        @IntOver
 0072FA4A    lea         edx,[edx+ecx*8]
 0072FA4D    push        edx
 0072FA4E    dec         esi
 0072FA4F    cmp         esi,9E
>0072FA55    jbe         0072FA5C
 0072FA57    call        @BoundErr
 0072FA5C    inc         esi
 0072FA5D    imul        edx,esi,8
>0072FA60    jno         0072FA67
 0072FA62    call        @IntOver
 0072FA67    pop         ecx
 0072FA68    lea         edx,[ecx+edx*8-3A]
 0072FA6C    call        @UStrFromString
 0072FA71    mov         edx,dword ptr [ebp-6C]
 0072FA74    mov         eax,dword ptr [ebp-1C]
 0072FA77    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 0072FA7A    mov         ecx,dword ptr [eax]
 0072FA7C    call        dword ptr [ecx+3C];TStrings.Add
 0072FA7F    movzx       eax,word ptr [ebx+6]
 0072FA83    mov         dword ptr [ebp-14],eax
 0072FA86    movzx       eax,word ptr [ebx+8]
 0072FA8A    mov         dword ptr [ebp-18],eax
 0072FA8D    movzx       eax,byte ptr [ebx+1C]
 0072FA91    mov         byte ptr [ebp-1D],al
 0072FA94    xor         eax,eax
 0072FA96    mov         dword ptr [ebp-0C],eax
 0072FA99    xor         eax,eax
 0072FA9B    mov         dword ptr [ebp-10],eax
 0072FA9E    mov         esi,1
 0072FAA3    mov         edx,dword ptr [ebp-0C]
 0072FAA6    cmp         edx,7
>0072FAA9    jbe         0072FAB0
 0072FAAB    call        @BoundErr
 0072FAB0    imul        edx,edx,43B3
>0072FAB6    jno         0072FABD
 0072FAB8    call        @IntOver
 0072FABD    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0072FAC2    mov         eax,dword ptr [eax]
 0072FAC4    mov         eax,dword ptr [eax+14]
 0072FAC7    lea         edx,[eax+edx*4]
 0072FACA    mov         ecx,dword ptr [ebp-10]
 0072FACD    cmp         ecx,1
>0072FAD0    jbe         0072FAD7
 0072FAD2    call        @BoundErr
 0072FAD7    imul        ecx,ecx,43B3
>0072FADD    jno         0072FAE4
 0072FADF    call        @IntOver
 0072FAE4    lea         edi,[edx+ecx*2]
 0072FAE7    dec         esi
 0072FAE8    cmp         esi,9E
>0072FAEE    jbe         0072FAF5
 0072FAF0    call        @BoundErr
 0072FAF5    inc         esi
 0072FAF6    imul        edx,esi,6D
>0072FAF9    jno         0072FB00
 0072FAFB    call        @IntOver
 0072FB00    lea         ebx,[edi+edx*2-0D6]
 0072FB07    mov         edi,eax
 0072FB09    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0072FB0E    mov         eax,dword ptr [eax]
 0072FB10    mov         eax,dword ptr [eax+18]
 0072FB13    mov         dword ptr [ebp-24],eax
 0072FB16    mov         eax,dword ptr [ebp-8]
 0072FB19    mov         eax,dword ptr [eax+30C]
 0072FB1F    mov         edx,dword ptr [eax]
 0072FB21    call        dword ptr [edx+108]
 0072FB27    cmp         al,7
>0072FB29    ja          0072FB35
 0072FB2B    and         eax,7F
 0072FB2E    movzx       edx,byte ptr [ebp-1D]
 0072FB32    bt          edx,eax
>0072FB35    jae         0072FDAA
 0072FB3B    mov         eax,dword ptr [ebp-8]
 0072FB3E    mov         eax,dword ptr [eax+30C]
 0072FB44    mov         edx,dword ptr [eax]
 0072FB46    call        dword ptr [edx+108]
 0072FB4C    cmp         al,7
>0072FB4E    ja          0072FB5A
 0072FB50    and         eax,7F
 0072FB53    movzx       edx,byte ptr [ebx+1D]
 0072FB57    bt          edx,eax
>0072FB5A    jae         0072FDAA
 0072FB60    lea         edx,[ebx+26]
 0072FB63    mov         eax,dword ptr [ebp-14]
 0072FB66    cmp         eax,0FFFF
>0072FB6B    jbe         0072FB72
 0072FB6D    call        @BoundErr
 0072FB72    call        006959BC
 0072FB77    test        al,al
>0072FB79    jne         0072FB96
 0072FB7B    lea         edx,[ebx+26]
 0072FB7E    mov         eax,dword ptr [ebp-18]
 0072FB81    cmp         eax,0FFFF
>0072FB86    jbe         0072FB8D
 0072FB88    call        @BoundErr
 0072FB8D    call        006959BC
 0072FB92    test        al,al
>0072FB94    je          0072FBAD
 0072FB96    mov         eax,dword ptr [ebp-8]
 0072FB99    mov         eax,dword ptr [eax+2DC]
 0072FB9F    mov         eax,dword ptr [eax+2BC]
 0072FBA5    call        TListItems.Add
 0072FBAA    mov         dword ptr [ebp-1C],eax
 0072FBAD    lea         eax,[ebx+26]
 0072FBB0    call        006959E8
 0072FBB5    test        al,al
>0072FBB7    je          0072FBD0
 0072FBB9    mov         eax,dword ptr [ebp-8]
 0072FBBC    mov         eax,dword ptr [eax+2E4]
 0072FBC2    mov         eax,dword ptr [eax+2BC]
 0072FBC8    call        TListItems.Add
 0072FBCD    mov         dword ptr [ebp-1C],eax
 0072FBD0    lea         eax,[ebx+26]
 0072FBD3    call        006959E8
 0072FBD8    test        al,al
>0072FBDA    jne         0072FC29
 0072FBDC    lea         edx,[ebx+26]
 0072FBDF    mov         eax,dword ptr [ebp-14]
 0072FBE2    cmp         eax,0FFFF
>0072FBE7    jbe         0072FBEE
 0072FBE9    call        @BoundErr
 0072FBEE    call        006959BC
 0072FBF3    test        al,al
>0072FBF5    jne         0072FC29
 0072FBF7    lea         edx,[ebx+26]
 0072FBFA    mov         eax,dword ptr [ebp-18]
 0072FBFD    cmp         eax,0FFFF
>0072FC02    jbe         0072FC09
 0072FC04    call        @BoundErr
 0072FC09    call        006959BC
 0072FC0E    test        al,al
>0072FC10    jne         0072FC29
 0072FC12    mov         eax,dword ptr [ebp-8]
 0072FC15    mov         eax,dword ptr [eax+2EC]
 0072FC1B    mov         eax,dword ptr [eax+2BC]
 0072FC21    call        TListItems.Add
 0072FC26    mov         dword ptr [ebp-1C],eax
 0072FC29    lea         edx,[ebp-7C]
 0072FC2C    mov         eax,dword ptr [ebp-0C]
 0072FC2F    add         eax,1
>0072FC32    jno         0072FC39
 0072FC34    call        @IntOver
 0072FC39    call        IntToStr
 0072FC3E    mov         ecx,dword ptr [ebp-7C]
 0072FC41    lea         eax,[ebp-78]
 0072FC44    mov         edx,72FEB8;'0'
 0072FC49    call        @UStrCat3
 0072FC4E    mov         eax,dword ptr [ebp-78]
 0072FC51    lea         ecx,[ebp-74]
 0072FC54    mov         edx,2
 0072FC59    call        00431F5C
 0072FC5E    push        dword ptr [ebp-74]
 0072FC61    push        72FEC8;'.'
 0072FC66    lea         edx,[ebp-88]
 0072FC6C    imul        eax,dword ptr [ebp-10],64
>0072FC70    jno         0072FC77
 0072FC72    call        @IntOver
 0072FC77    add         eax,esi
>0072FC79    jno         0072FC80
 0072FC7B    call        @IntOver
 0072FC80    call        IntToStr
 0072FC85    mov         ecx,dword ptr [ebp-88]
 0072FC8B    lea         eax,[ebp-84]
 0072FC91    mov         edx,72FED8;'00'
 0072FC96    call        @UStrCat3
 0072FC9B    mov         eax,dword ptr [ebp-84]
 0072FCA1    lea         ecx,[ebp-80]
 0072FCA4    mov         edx,3
 0072FCA9    call        00431F5C
 0072FCAE    push        dword ptr [ebp-80]
 0072FCB1    lea         eax,[ebp-70]
 0072FCB4    mov         edx,3
 0072FCB9    call        @UStrCatN
 0072FCBE    mov         edx,dword ptr [ebp-70]
 0072FCC1    mov         eax,dword ptr [ebp-1C]
 0072FCC4    call        TListItem.SetCaption
 0072FCC9    movzx       eax,byte ptr [ebx+0A]
 0072FCCD    mov         edx,100
 0072FCD2    mul         eax,edx
 0072FCD4    mov         edx,eax
>0072FCD6    jno         0072FCDD
 0072FCD8    call        @IntOver
 0072FCDD    movzx       eax,byte ptr [ebx+0B]
 0072FCE1    add         edx,eax
>0072FCE3    jno         0072FCEA
 0072FCE5    call        @IntOver
 0072FCEA    cmp         edx,0FFFF
>0072FCF0    jbe         0072FCF7
 0072FCF2    call        @BoundErr
 0072FCF7    lea         ecx,[ebp-8C]
 0072FCFD    mov         eax,edi
 0072FCFF    call        TFXPAD.SysIntToType
 0072FD04    mov         edx,dword ptr [ebp-8C]
 0072FD0A    mov         eax,dword ptr [ebp-1C]
 0072FD0D    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 0072FD10    mov         ecx,dword ptr [eax]
 0072FD12    call        dword ptr [ecx+3C];TStrings.Add
 0072FD15    lea         edx,[ebp-90]
 0072FD1B    lea         eax,[ebx+26]
 0072FD1E    call        006955F8
 0072FD23    mov         edx,dword ptr [ebp-90]
 0072FD29    mov         eax,dword ptr [ebp-1C]
 0072FD2C    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 0072FD2F    mov         ecx,dword ptr [eax]
 0072FD31    call        dword ptr [ecx+3C];TStrings.Add
 0072FD34    lea         eax,[ebp-94]
 0072FD3A    mov         edx,dword ptr [ebp-0C]
 0072FD3D    cmp         edx,7
>0072FD40    jbe         0072FD47
 0072FD42    call        @BoundErr
 0072FD47    imul        edx,edx,9F0
>0072FD4D    jno         0072FD54
 0072FD4F    call        @IntOver
 0072FD54    mov         ecx,dword ptr [ebp-24]
 0072FD57    lea         edi,[ecx+edx*8]
 0072FD5A    mov         edx,dword ptr [ebp-10]
 0072FD5D    cmp         edx,1
>0072FD60    jbe         0072FD67
 0072FD62    call        @BoundErr
 0072FD67    imul        edx,edx,4F8
>0072FD6D    jno         0072FD74
 0072FD6F    call        @IntOver
 0072FD74    lea         edx,[edi+edx*8]
 0072FD77    dec         esi
 0072FD78    cmp         esi,9E
>0072FD7E    jbe         0072FD85
 0072FD80    call        @BoundErr
 0072FD85    inc         esi
 0072FD86    imul        ecx,esi,8
>0072FD89    jno         0072FD90
 0072FD8B    call        @IntOver
 0072FD90    lea         edx,[edx+ecx*8-3A]
 0072FD94    call        @UStrFromString
 0072FD99    mov         edx,dword ptr [ebp-94]
 0072FD9F    mov         eax,dword ptr [ebp-1C]
 0072FDA2    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 0072FDA5    mov         ecx,dword ptr [eax]
 0072FDA7    call        dword ptr [ecx+3C];TStrings.Add
 0072FDAA    inc         esi
 0072FDAB    cmp         esi,64
>0072FDAE    jne         0072FAA3
 0072FDB4    inc         dword ptr [ebp-10]
 0072FDB7    cmp         dword ptr [ebp-10],2
>0072FDBB    jne         0072FA9E
 0072FDC1    inc         dword ptr [ebp-0C]
 0072FDC4    cmp         dword ptr [ebp-0C],8
>0072FDC8    jne         0072FA99
 0072FDCE    mov         eax,dword ptr [ebp-8]
 0072FDD1    mov         eax,dword ptr [eax+2C0]
 0072FDD7    mov         eax,dword ptr [eax+2BC]
 0072FDDD    call        TListItems.EndUpdate
 0072FDE2    mov         eax,dword ptr [ebp-8]
 0072FDE5    mov         eax,dword ptr [eax+2CC]
 0072FDEB    mov         eax,dword ptr [eax+2BC]
 0072FDF1    call        TListItems.EndUpdate
 0072FDF6    mov         eax,dword ptr [ebp-8]
 0072FDF9    mov         eax,dword ptr [eax+2D4]
 0072FDFF    mov         eax,dword ptr [eax+2BC]
 0072FE05    call        TListItems.EndUpdate
 0072FE0A    mov         eax,dword ptr [ebp-8]
 0072FE0D    mov         eax,dword ptr [eax+2DC]
 0072FE13    mov         eax,dword ptr [eax+2BC]
 0072FE19    call        TListItems.EndUpdate
 0072FE1E    mov         eax,dword ptr [ebp-8]
 0072FE21    mov         eax,dword ptr [eax+2E4]
 0072FE27    mov         eax,dword ptr [eax+2BC]
 0072FE2D    call        TListItems.EndUpdate
 0072FE32    mov         eax,dword ptr [ebp-8]
 0072FE35    mov         eax,dword ptr [eax+2EC]
 0072FE3B    mov         eax,dword ptr [eax+2BC]
 0072FE41    call        TListItems.EndUpdate
 0072FE46    xor         eax,eax
 0072FE48    pop         edx
 0072FE49    pop         ecx
 0072FE4A    pop         ecx
 0072FE4B    mov         dword ptr fs:[eax],edx
 0072FE4E    push        72FEA5
 0072FE53    lea         eax,[ebp-94]
 0072FE59    mov         edx,14
 0072FE5E    call        @UStrArrayClr
 0072FE63    lea         eax,[ebp-44]
 0072FE66    mov         edx,3
 0072FE6B    call        @UStrArrayClr
 0072FE70    lea         eax,[ebp-38]
 0072FE73    call        @UStrClr
 0072FE78    lea         eax,[ebp-34]
 0072FE7B    call        @UStrClr
 0072FE80    lea         eax,[ebp-30]
 0072FE83    call        @UStrClr
 0072FE88    lea         eax,[ebp-2C]
 0072FE8B    mov         edx,2
 0072FE90    call        @UStrArrayClr
 0072FE95    lea         eax,[ebp-4]
 0072FE98    call        @UStrClr
 0072FE9D    ret
>0072FE9E    jmp         @HandleFinally
>0072FEA3    jmp         0072FE53
 0072FEA5    pop         edi
 0072FEA6    pop         esi
 0072FEA7    pop         ebx
 0072FEA8    mov         esp,ebp
 0072FEAA    pop         ebp
 0072FEAB    ret
*}
end;

//0072FEE0
procedure sub_0072FEE0(?:TFXControlsFrame);
begin
{*
 0072FEE0    push        ebp
 0072FEE1    mov         ebp,esp
 0072FEE3    mov         ecx,0B
 0072FEE8    push        0
 0072FEEA    push        0
 0072FEEC    dec         ecx
>0072FEED    jne         0072FEE8
 0072FEEF    push        ecx
 0072FEF0    push        ebx
 0072FEF1    push        esi
 0072FEF2    push        edi
 0072FEF3    mov         dword ptr [ebp-4],eax
 0072FEF6    xor         eax,eax
 0072FEF8    push        ebp
 0072FEF9    push        730579
 0072FEFE    push        dword ptr fs:[eax]
 0072FF01    mov         dword ptr fs:[eax],esp
 0072FF04    xor         esi,esi
 0072FF06    xor         eax,eax
 0072FF08    push        ebp
 0072FF09    push        72FF5B
 0072FF0E    push        dword ptr fs:[eax]
 0072FF11    mov         dword ptr fs:[eax],esp
 0072FF14    mov         eax,dword ptr [ebp-4]
 0072FF17    mov         ebx,dword ptr [eax+304]
 0072FF1D    mov         eax,ebx
 0072FF1F    mov         edx,dword ptr [eax]
 0072FF21    call        dword ptr [edx+108]
 0072FF27    mov         edx,eax
 0072FF29    lea         ecx,[ebp-10]
 0072FF2C    mov         eax,dword ptr [ebx+2CC]
 0072FF32    mov         ebx,dword ptr [eax]
 0072FF34    call        dword ptr [ebx+0C]
 0072FF37    mov         eax,dword ptr [ebp-10]
 0072FF3A    call        StrToInt
 0072FF3F    cmp         eax,0FF
>0072FF44    jbe         0072FF4B
 0072FF46    call        @BoundErr
 0072FF4B    mov         byte ptr [ebp-7],al
 0072FF4E    xor         eax,eax
 0072FF50    pop         edx
 0072FF51    pop         ecx
 0072FF52    pop         ecx
 0072FF53    mov         dword ptr fs:[eax],edx
>0072FF56    jmp         0072FFE1
>0072FF5B    jmp         @HandleOnException
 0072FF60    dd          1
 0072FF64    dd          00418D28;EConvertError
 0072FF68    dd          0072FF6C
 0072FF6C    mov         eax,dword ptr [ebp-4]
 0072FF6F    mov         eax,dword ptr [eax+2C0]
 0072FF75    mov         edx,dword ptr [eax]
 0072FF77    call        dword ptr [edx+114]
 0072FF7D    mov         eax,dword ptr [ebp-4]
 0072FF80    mov         eax,dword ptr [eax+2CC]
 0072FF86    mov         edx,dword ptr [eax]
 0072FF88    call        dword ptr [edx+114]
 0072FF8E    mov         eax,dword ptr [ebp-4]
 0072FF91    mov         eax,dword ptr [eax+2D4]
 0072FF97    mov         edx,dword ptr [eax]
 0072FF99    call        dword ptr [edx+114]
 0072FF9F    mov         eax,dword ptr [ebp-4]
 0072FFA2    mov         eax,dword ptr [eax+2DC]
 0072FFA8    mov         edx,dword ptr [eax]
 0072FFAA    call        dword ptr [edx+114]
 0072FFB0    mov         eax,dword ptr [ebp-4]
 0072FFB3    mov         eax,dword ptr [eax+2E4]
 0072FFB9    mov         edx,dword ptr [eax]
 0072FFBB    call        dword ptr [edx+114]
 0072FFC1    mov         eax,dword ptr [ebp-4]
 0072FFC4    mov         eax,dword ptr [eax+2EC]
 0072FFCA    mov         edx,dword ptr [eax]
 0072FFCC    call        dword ptr [edx+114]
 0072FFD2    call        @DoneExcept
>0072FFD7    jmp         0073055E
 0072FFDC    call        @DoneExcept
 0072FFE1    mov         eax,dword ptr [ebp-4]
 0072FFE4    mov         eax,dword ptr [eax+2C0]
 0072FFEA    mov         eax,dword ptr [eax+2BC]
 0072FFF0    call        TListItems.BeginUpdate
 0072FFF5    mov         eax,dword ptr [ebp-4]
 0072FFF8    mov         eax,dword ptr [eax+2CC]
 0072FFFE    mov         eax,dword ptr [eax+2BC]
 00730004    call        TListItems.BeginUpdate
 00730009    mov         eax,dword ptr [ebp-4]
 0073000C    mov         eax,dword ptr [eax+2D4]
 00730012    mov         eax,dword ptr [eax+2BC]
 00730018    call        TListItems.BeginUpdate
 0073001D    mov         eax,dword ptr [ebp-4]
 00730020    mov         eax,dword ptr [eax+2DC]
 00730026    mov         eax,dword ptr [eax+2BC]
 0073002C    call        TListItems.BeginUpdate
 00730031    mov         eax,dword ptr [ebp-4]
 00730034    mov         eax,dword ptr [eax+2E4]
 0073003A    mov         eax,dword ptr [eax+2BC]
 00730040    call        TListItems.BeginUpdate
 00730045    mov         eax,dword ptr [ebp-4]
 00730048    mov         eax,dword ptr [eax+2EC]
 0073004E    mov         eax,dword ptr [eax+2BC]
 00730054    call        TListItems.BeginUpdate
 00730059    mov         byte ptr [ebp-5],0
 0073005D    mov         byte ptr [ebp-6],0
 00730061    mov         bl,1
 00730063    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 00730068    mov         eax,dword ptr [eax]
 0073006A    mov         eax,dword ptr [eax+18]
 0073006D    mov         dword ptr [ebp-0C],eax
 00730070    movzx       eax,byte ptr [ebp-5]
 00730074    cmp         eax,7
>00730077    jbe         0073007E
 00730079    call        @BoundErr
 0073007E    imul        eax,eax,43B3
>00730084    jno         0073008B
 00730086    call        @IntOver
 0073008B    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 00730091    mov         edx,dword ptr [edx]
 00730093    mov         edx,dword ptr [edx+14]
 00730096    lea         edi,[edx+eax*4]
 00730099    movzx       eax,byte ptr [ebp-6]
 0073009D    cmp         eax,1
>007300A0    jbe         007300A7
 007300A2    call        @BoundErr
 007300A7    imul        eax,eax,43B3
>007300AD    jno         007300B4
 007300AF    call        @IntOver
 007300B4    lea         eax,[edi+eax*2]
 007300B7    movzx       edx,bl
 007300BA    dec         edx
 007300BB    cmp         edx,9E
>007300C1    jbe         007300C8
 007300C3    call        @BoundErr
 007300C8    inc         edx
 007300C9    imul        edx,edx,6D
>007300CC    jno         007300D3
 007300CE    call        @IntOver
 007300D3    lea         edi,[eax+edx*2-0D6]
 007300DA    cmp         byte ptr [edi+0A],0
>007300DE    je          007302D0
 007300E4    mov         eax,dword ptr [ebp-4]
 007300E7    mov         eax,dword ptr [eax+30C]
 007300ED    mov         edx,dword ptr [eax]
 007300EF    call        dword ptr [edx+108]
 007300F5    cmp         al,7
>007300F7    ja          00730103
 007300F9    and         eax,7F
 007300FC    movzx       edx,byte ptr [edi+1C]
 00730100    bt          edx,eax
>00730103    jae         007302D0
 00730109    movzx       eax,byte ptr [ebp-7]
 0073010D    cmp         ax,word ptr [edi+6]
>00730111    jne         0073012B
 00730113    mov         eax,dword ptr [ebp-4]
 00730116    mov         eax,dword ptr [eax+2C0]
 0073011C    mov         eax,dword ptr [eax+2BC]
 00730122    call        TListItems.Add
 00730127    mov         esi,eax
>00730129    jmp         0073016F
 0073012B    cmp         ax,word ptr [edi+8]
>0073012F    jne         00730149
 00730131    mov         eax,dword ptr [ebp-4]
 00730134    mov         eax,dword ptr [eax+2CC]
 0073013A    mov         eax,dword ptr [eax+2BC]
 00730140    call        TListItems.Add
 00730145    mov         esi,eax
>00730147    jmp         0073016F
 00730149    movzx       eax,byte ptr [ebp-7]
 0073014D    cmp         ax,word ptr [edi+6]
>00730151    je          0073016F
 00730153    cmp         ax,word ptr [edi+8]
>00730157    je          0073016F
 00730159    mov         eax,dword ptr [ebp-4]
 0073015C    mov         eax,dword ptr [eax+2D4]
 00730162    mov         eax,dword ptr [eax+2BC]
 00730168    call        TListItems.Add
 0073016D    mov         esi,eax
 0073016F    lea         edx,[ebp-20]
 00730172    movzx       eax,byte ptr [ebp-5]
 00730176    add         eax,1
>00730179    jno         00730180
 0073017B    call        @IntOver
 00730180    call        IntToStr
 00730185    mov         ecx,dword ptr [ebp-20]
 00730188    lea         eax,[ebp-1C]
 0073018B    mov         edx,730594;'0'
 00730190    call        @UStrCat3
 00730195    mov         eax,dword ptr [ebp-1C]
 00730198    lea         ecx,[ebp-18]
 0073019B    mov         edx,2
 007301A0    call        00431F5C
 007301A5    push        dword ptr [ebp-18]
 007301A8    push        7305A4;'.'
 007301AD    movzx       eax,byte ptr [ebp-6]
 007301B1    mov         edx,64
 007301B6    mul         eax,edx
>007301B8    jno         007301BF
 007301BA    call        @IntOver
 007301BF    movzx       edx,bl
 007301C2    add         eax,edx
>007301C4    jno         007301CB
 007301C6    call        @IntOver
 007301CB    lea         edx,[ebp-2C]
 007301CE    call        IntToStr
 007301D3    mov         ecx,dword ptr [ebp-2C]
 007301D6    lea         eax,[ebp-28]
 007301D9    mov         edx,7305B4;'00'
 007301DE    call        @UStrCat3
 007301E3    mov         eax,dword ptr [ebp-28]
 007301E6    lea         ecx,[ebp-24]
 007301E9    mov         edx,3
 007301EE    call        00431F5C
 007301F3    push        dword ptr [ebp-24]
 007301F6    lea         eax,[ebp-14]
 007301F9    mov         edx,3
 007301FE    call        @UStrCatN
 00730203    mov         edx,dword ptr [ebp-14]
 00730206    mov         eax,esi
 00730208    call        TListItem.SetCaption
 0073020D    movzx       eax,byte ptr [edi+0A]
 00730211    cmp         eax,0F
>00730214    jbe         0073021B
 00730216    call        @BoundErr
 0073021B    mov         edx,dword ptr ds:[7C4E3C];^^'Not in use':array[16] of ?
 00730221    mov         edx,dword ptr [edx+eax*4]
 00730224    mov         eax,dword ptr [esi+8]
 00730227    mov         ecx,dword ptr [eax]
 00730229    call        dword ptr [ecx+3C]
 0073022C    lea         edx,[ebp-30]
 0073022F    movzx       eax,word ptr [edi+6]
 00730233    call        IntToStr
 00730238    mov         edx,dword ptr [ebp-30]
 0073023B    mov         eax,dword ptr [esi+8]
 0073023E    mov         ecx,dword ptr [eax]
 00730240    call        dword ptr [ecx+3C]
 00730243    lea         edx,[ebp-34]
 00730246    movzx       eax,word ptr [edi+8]
 0073024A    call        IntToStr
 0073024F    mov         edx,dword ptr [ebp-34]
 00730252    mov         eax,dword ptr [esi+8]
 00730255    mov         ecx,dword ptr [eax]
 00730257    call        dword ptr [ecx+3C]
 0073025A    lea         eax,[ebp-38]
 0073025D    movzx       edx,byte ptr [ebp-5]
 00730261    cmp         edx,7
>00730264    jbe         0073026B
 00730266    call        @BoundErr
 0073026B    imul        edx,edx,9F0
>00730271    jno         00730278
 00730273    call        @IntOver
 00730278    mov         ecx,dword ptr [ebp-0C]
 0073027B    lea         edx,[ecx+edx*8]
 0073027E    push        edx
 0073027F    movzx       edx,byte ptr [ebp-6]
 00730283    cmp         edx,1
>00730286    jbe         0073028D
 00730288    call        @BoundErr
 0073028D    imul        edx,edx,4F8
>00730293    jno         0073029A
 00730295    call        @IntOver
 0073029A    pop         ecx
 0073029B    lea         edx,[ecx+edx*8]
 0073029E    push        edx
 0073029F    movzx       edx,bl
 007302A2    dec         edx
 007302A3    cmp         edx,9E
>007302A9    jbe         007302B0
 007302AB    call        @BoundErr
 007302B0    inc         edx
 007302B1    imul        edx,edx,8
>007302B4    jno         007302BB
 007302B6    call        @IntOver
 007302BB    pop         ecx
 007302BC    lea         edx,[ecx+edx*8-3A]
 007302C0    call        @UStrFromString
 007302C5    mov         edx,dword ptr [ebp-38]
 007302C8    mov         eax,dword ptr [esi+8]
 007302CB    mov         ecx,dword ptr [eax]
 007302CD    call        dword ptr [ecx+3C]
 007302D0    cmp         byte ptr [edi+0A],5
>007302D4    jne         007304C2
 007302DA    mov         eax,dword ptr [ebp-4]
 007302DD    mov         eax,dword ptr [eax+30C]
 007302E3    mov         edx,dword ptr [eax]
 007302E5    call        dword ptr [edx+108]
 007302EB    cmp         al,7
>007302ED    ja          007302F9
 007302EF    and         eax,7F
 007302F2    movzx       edx,byte ptr [edi+1D]
 007302F6    bt          edx,eax
>007302F9    jae         007304C2
 007302FF    lea         edx,[edi+26]
 00730302    movzx       eax,byte ptr [ebp-7]
 00730306    call        006959BC
 0073030B    test        al,al
>0073030D    je          00730325
 0073030F    mov         eax,dword ptr [ebp-4]
 00730312    mov         eax,dword ptr [eax+2DC]
 00730318    mov         eax,dword ptr [eax+2BC]
 0073031E    call        TListItems.Add
 00730323    mov         esi,eax
 00730325    lea         eax,[edi+26]
 00730328    call        006959E8
 0073032D    test        al,al
>0073032F    je          00730347
 00730331    mov         eax,dword ptr [ebp-4]
 00730334    mov         eax,dword ptr [eax+2E4]
 0073033A    mov         eax,dword ptr [eax+2BC]
 00730340    call        TListItems.Add
 00730345    mov         esi,eax
 00730347    lea         eax,[edi+26]
 0073034A    call        006959E8
 0073034F    test        al,al
>00730351    jne         00730379
 00730353    lea         edx,[edi+26]
 00730356    movzx       eax,byte ptr [ebp-7]
 0073035A    call        006959BC
 0073035F    test        al,al
>00730361    jne         00730379
 00730363    mov         eax,dword ptr [ebp-4]
 00730366    mov         eax,dword ptr [eax+2EC]
 0073036C    mov         eax,dword ptr [eax+2BC]
 00730372    call        TListItems.Add
 00730377    mov         esi,eax
 00730379    lea         edx,[ebp-48]
 0073037C    movzx       eax,byte ptr [ebp-5]
 00730380    add         eax,1
>00730383    jno         0073038A
 00730385    call        @IntOver
 0073038A    call        IntToStr
 0073038F    mov         ecx,dword ptr [ebp-48]
 00730392    lea         eax,[ebp-44]
 00730395    mov         edx,730594;'0'
 0073039A    call        @UStrCat3
 0073039F    mov         eax,dword ptr [ebp-44]
 007303A2    lea         ecx,[ebp-40]
 007303A5    mov         edx,2
 007303AA    call        00431F5C
 007303AF    push        dword ptr [ebp-40]
 007303B2    push        7305A4;'.'
 007303B7    movzx       eax,byte ptr [ebp-6]
 007303BB    mov         edx,64
 007303C0    mul         eax,edx
>007303C2    jno         007303C9
 007303C4    call        @IntOver
 007303C9    movzx       edx,bl
 007303CC    add         eax,edx
>007303CE    jno         007303D5
 007303D0    call        @IntOver
 007303D5    lea         edx,[ebp-54]
 007303D8    call        IntToStr
 007303DD    mov         ecx,dword ptr [ebp-54]
 007303E0    lea         eax,[ebp-50]
 007303E3    mov         edx,7305B4;'00'
 007303E8    call        @UStrCat3
 007303ED    mov         eax,dword ptr [ebp-50]
 007303F0    lea         ecx,[ebp-4C]
 007303F3    mov         edx,3
 007303F8    call        00431F5C
 007303FD    push        dword ptr [ebp-4C]
 00730400    lea         eax,[ebp-3C]
 00730403    mov         edx,3
 00730408    call        @UStrCatN
 0073040D    mov         edx,dword ptr [ebp-3C]
 00730410    mov         eax,esi
 00730412    call        TListItem.SetCaption
 00730417    movzx       eax,byte ptr [edi+0B]
 0073041B    cmp         eax,18
>0073041E    jbe         00730425
 00730420    call        @BoundErr
 00730425    mov         edx,dword ptr ds:[7C4924];^gvar_007C16B0:array[25] of ?
 0073042B    mov         edx,dword ptr [edx+eax*4]
 0073042E    mov         eax,dword ptr [esi+8]
 00730431    mov         ecx,dword ptr [eax]
 00730433    call        dword ptr [ecx+3C]
 00730436    lea         edx,[ebp-58]
 00730439    lea         eax,[edi+26]
 0073043C    call        006955F8
 00730441    mov         edx,dword ptr [ebp-58]
 00730444    mov         eax,dword ptr [esi+8]
 00730447    mov         ecx,dword ptr [eax]
 00730449    call        dword ptr [ecx+3C]
 0073044C    lea         eax,[ebp-5C]
 0073044F    movzx       edx,byte ptr [ebp-5]
 00730453    cmp         edx,7
>00730456    jbe         0073045D
 00730458    call        @BoundErr
 0073045D    imul        edx,edx,9F0
>00730463    jno         0073046A
 00730465    call        @IntOver
 0073046A    mov         ecx,dword ptr [ebp-0C]
 0073046D    lea         edx,[ecx+edx*8]
 00730470    push        edx
 00730471    movzx       edx,byte ptr [ebp-6]
 00730475    cmp         edx,1
>00730478    jbe         0073047F
 0073047A    call        @BoundErr
 0073047F    imul        edx,edx,4F8
>00730485    jno         0073048C
 00730487    call        @IntOver
 0073048C    pop         ecx
 0073048D    lea         edx,[ecx+edx*8]
 00730490    push        edx
 00730491    movzx       edx,bl
 00730494    dec         edx
 00730495    cmp         edx,9E
>0073049B    jbe         007304A2
 0073049D    call        @BoundErr
 007304A2    inc         edx
 007304A3    imul        edx,edx,8
>007304A6    jno         007304AD
 007304A8    call        @IntOver
 007304AD    pop         ecx
 007304AE    lea         edx,[ecx+edx*8-3A]
 007304B2    call        @UStrFromString
 007304B7    mov         edx,dword ptr [ebp-5C]
 007304BA    mov         eax,dword ptr [esi+8]
 007304BD    mov         ecx,dword ptr [eax]
 007304BF    call        dword ptr [ecx+3C]
 007304C2    inc         ebx
 007304C3    cmp         bl,64
>007304C6    jne         00730063
 007304CC    inc         byte ptr [ebp-6]
 007304CF    cmp         byte ptr [ebp-6],2
>007304D3    jne         00730061
 007304D9    inc         byte ptr [ebp-5]
 007304DC    cmp         byte ptr [ebp-5],8
>007304E0    jne         0073005D
 007304E6    mov         eax,dword ptr [ebp-4]
 007304E9    mov         eax,dword ptr [eax+2C0]
 007304EF    mov         eax,dword ptr [eax+2BC]
 007304F5    call        TListItems.EndUpdate
 007304FA    mov         eax,dword ptr [ebp-4]
 007304FD    mov         eax,dword ptr [eax+2CC]
 00730503    mov         eax,dword ptr [eax+2BC]
 00730509    call        TListItems.EndUpdate
 0073050E    mov         eax,dword ptr [ebp-4]
 00730511    mov         eax,dword ptr [eax+2D4]
 00730517    mov         eax,dword ptr [eax+2BC]
 0073051D    call        TListItems.EndUpdate
 00730522    mov         eax,dword ptr [ebp-4]
 00730525    mov         eax,dword ptr [eax+2DC]
 0073052B    mov         eax,dword ptr [eax+2BC]
 00730531    call        TListItems.EndUpdate
 00730536    mov         eax,dword ptr [ebp-4]
 00730539    mov         eax,dword ptr [eax+2E4]
 0073053F    mov         eax,dword ptr [eax+2BC]
 00730545    call        TListItems.EndUpdate
 0073054A    mov         eax,dword ptr [ebp-4]
 0073054D    mov         eax,dword ptr [eax+2EC]
 00730553    mov         eax,dword ptr [eax+2BC]
 00730559    call        TListItems.EndUpdate
 0073055E    xor         eax,eax
 00730560    pop         edx
 00730561    pop         ecx
 00730562    pop         ecx
 00730563    mov         dword ptr fs:[eax],edx
 00730566    push        730580
 0073056B    lea         eax,[ebp-5C]
 0073056E    mov         edx,14
 00730573    call        @UStrArrayClr
 00730578    ret
>00730579    jmp         @HandleFinally
>0073057E    jmp         0073056B
 00730580    pop         edi
 00730581    pop         esi
 00730582    pop         ebx
 00730583    mov         esp,ebp
 00730585    pop         ebp
 00730586    ret
*}
end;

//007305BC
procedure sub_007305BC(?:TFXControlsFrame);
begin
{*
 007305BC    push        ebx
 007305BD    mov         ebx,eax
 007305BF    mov         eax,dword ptr [ebx+2C0]
 007305C5    mov         eax,dword ptr [eax+2BC]
 007305CB    call        TListItems.BeginUpdate
 007305D0    mov         eax,dword ptr [ebx+2CC]
 007305D6    mov         eax,dword ptr [eax+2BC]
 007305DC    call        TListItems.BeginUpdate
 007305E1    mov         eax,dword ptr [ebx+2D4]
 007305E7    mov         eax,dword ptr [eax+2BC]
 007305ED    call        TListItems.BeginUpdate
 007305F2    mov         eax,dword ptr [ebx+2DC]
 007305F8    mov         eax,dword ptr [eax+2BC]
 007305FE    call        TListItems.BeginUpdate
 00730603    mov         eax,dword ptr [ebx+2E4]
 00730609    mov         eax,dword ptr [eax+2BC]
 0073060F    call        TListItems.BeginUpdate
 00730614    mov         eax,dword ptr [ebx+2EC]
 0073061A    mov         eax,dword ptr [eax+2BC]
 00730620    call        TListItems.BeginUpdate
 00730625    mov         eax,dword ptr [ebx+2C0]
 0073062B    mov         eax,dword ptr [eax+2BC]
 00730631    call        TListItems.EndUpdate
 00730636    mov         eax,dword ptr [ebx+2CC]
 0073063C    mov         eax,dword ptr [eax+2BC]
 00730642    call        TListItems.EndUpdate
 00730647    mov         eax,dword ptr [ebx+2D4]
 0073064D    mov         eax,dword ptr [eax+2BC]
 00730653    call        TListItems.EndUpdate
 00730658    mov         eax,dword ptr [ebx+2DC]
 0073065E    mov         eax,dword ptr [eax+2BC]
 00730664    call        TListItems.EndUpdate
 00730669    mov         eax,dword ptr [ebx+2E4]
 0073066F    mov         eax,dword ptr [eax+2BC]
 00730675    call        TListItems.EndUpdate
 0073067A    mov         eax,dword ptr [ebx+2EC]
 00730680    mov         eax,dword ptr [eax+2BC]
 00730686    call        TListItems.EndUpdate
 0073068B    pop         ebx
 0073068C    ret
*}
end;

//00730690
procedure TFXControlsFrame.cbItemSelectChange(Sender:TObject);
begin
{*
 00730690    push        ebx
 00730691    mov         ebx,eax
 00730693    mov         eax,dword ptr [ebx+2C0];TFXControlsFrame.ListView1:TListView
 00730699    mov         edx,dword ptr [eax]
 0073069B    call        dword ptr [edx+114];TCustomListView.Clear
 007306A1    mov         eax,dword ptr [ebx+2CC];TFXControlsFrame.ListView2:TListView
 007306A7    mov         edx,dword ptr [eax]
 007306A9    call        dword ptr [edx+114];TCustomListView.Clear
 007306AF    mov         eax,dword ptr [ebx+2D4];TFXControlsFrame.ListView3:TListView
 007306B5    mov         edx,dword ptr [eax]
 007306B7    call        dword ptr [edx+114];TCustomListView.Clear
 007306BD    mov         eax,dword ptr [ebx+2DC];TFXControlsFrame.ListView4:TListView
 007306C3    mov         edx,dword ptr [eax]
 007306C5    call        dword ptr [edx+114];TCustomListView.Clear
 007306CB    mov         eax,dword ptr [ebx+2E4];TFXControlsFrame.ListView5:TListView
 007306D1    mov         edx,dword ptr [eax]
 007306D3    call        dword ptr [edx+114];TCustomListView.Clear
 007306D9    mov         eax,dword ptr [ebx+2EC];TFXControlsFrame.ListView6:TListView
 007306DF    mov         edx,dword ptr [eax]
 007306E1    call        dword ptr [edx+114];TCustomListView.Clear
 007306E7    mov         eax,dword ptr [ebx+2F8];TFXControlsFrame.RadioButton1:TRadioButton
 007306ED    mov         edx,dword ptr [eax]
 007306EF    call        dword ptr [edx+108];TRadioButton.GetChecked
 007306F5    test        al,al
>007306F7    je          00730700
 007306F9    mov         eax,ebx
 007306FB    call        0072F65C
 00730700    mov         eax,dword ptr [ebx+2FC];TFXControlsFrame.RadioButton2:TRadioButton
 00730706    mov         edx,dword ptr [eax]
 00730708    call        dword ptr [edx+108];TRadioButton.GetChecked
 0073070E    test        al,al
>00730710    je          00730719
 00730712    mov         eax,ebx
 00730714    call        0072FEE0
 00730719    mov         eax,dword ptr [ebx+300];TFXControlsFrame.RadioButton3:TRadioButton
 0073071F    mov         edx,dword ptr [eax]
 00730721    call        dword ptr [edx+108];TRadioButton.GetChecked
 00730727    test        al,al
>00730729    je          00730732
 0073072B    mov         eax,ebx
 0073072D    call        007305BC
 00730732    pop         ebx
 00730733    ret
*}
end;

//00730734
procedure TFXControlsFrame.btnCloseClick(Sender:TObject);
begin
{*
 00730734    call        0072F41C
 00730739    ret
*}
end;

//0073073C
procedure TFXControlsFrame.RadioButtonClick(Sender:TObject);
begin
{*
 0073073C    xor         edx,edx
 0073073E    mov         eax,dword ptr [eax+304];TFXControlsFrame.cbItemSelect:TComboBox
 00730744    mov         ecx,dword ptr [eax]
 00730746    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 0073074C    ret
*}
end;

//00730750
procedure TFXControlsFrame.ListView1DragOver(Sender:TObject; Source:TObject; X:Integer; Y:Integer; State:UITypes.TDragState; var Accept:Boolean);
begin
{*
 00730750    push        ebp
 00730751    mov         ebp,esp
 00730753    push        ebx
 00730754    push        esi
 00730755    mov         esi,ecx
 00730757    mov         ebx,eax
 00730759    mov         eax,esi
 0073075B    mov         edx,dword ptr ds:[530DF4];TListView
 00730761    call        @AsClass
 00730766    cmp         eax,dword ptr [ebx+2D4];TFXControlsFrame.ListView3:TListView
 0073076C    mov         eax,dword ptr [ebp+8]
 0073076F    sete        byte ptr [eax]
 00730772    pop         esi
 00730773    pop         ebx
 00730774    pop         ebp
 00730775    ret         10
*}
end;

//00730778
procedure TFXControlsFrame.ListView1DragDrop(Sender:TObject; Source:TObject; X:Integer; Y:Integer);
begin
{*
 00730778    push        ebp
 00730779    mov         ebp,esp
 0073077B    push        0
 0073077D    push        0
 0073077F    push        0
 00730781    push        0
 00730783    push        0
 00730785    push        0
 00730787    push        0
 00730789    push        ebx
 0073078A    push        esi
 0073078B    push        edi
 0073078C    mov         ebx,ecx
 0073078E    mov         dword ptr [ebp-4],eax
 00730791    xor         eax,eax
 00730793    push        ebp
 00730794    push        7308C7
 00730799    push        dword ptr fs:[eax]
 0073079C    mov         dword ptr fs:[eax],esp
 0073079F    mov         eax,ebx
 007307A1    mov         edx,dword ptr ds:[530DF4];TListView
 007307A7    call        @AsClass
 007307AC    mov         dword ptr [ebp-8],eax
 007307AF    mov         eax,dword ptr [ebp-8]
 007307B2    call        005489C4
 007307B7    mov         ebx,eax
 007307B9    mov         eax,dword ptr [ebp-8]
 007307BC    mov         edx,dword ptr [eax]
 007307BE    call        dword ptr [edx+130];TListView.sub_00546C60
 007307C4    test        eax,eax
>007307C6    jle         007308A1
 007307CC    mov         dword ptr [ebp-0C],eax
 007307CF    push        0
 007307D1    push        1
 007307D3    push        0
 007307D5    mov         eax,dword ptr [ebp-4]
 007307D8    mov         eax,dword ptr [eax+2C0];TFXControlsFrame.ListView1:TListView
 007307DE    mov         ecx,dword ptr [ebx+20]
 007307E1    xor         edx,edx
 007307E3    call        TCustomListView.FindCaption
 007307E8    test        eax,eax
>007307EA    jne         00730882
 007307F0    mov         eax,dword ptr [ebp-4]
 007307F3    mov         eax,dword ptr [eax+2C0];TFXControlsFrame.ListView1:TListView
 007307F9    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007307FF    call        TListItems.Add
 00730804    mov         esi,eax
 00730806    mov         edx,dword ptr [ebx+20]
 00730809    mov         eax,esi
 0073080B    call        TListItem.SetCaption
 00730810    lea         ecx,[ebp-10]
 00730813    xor         edx,edx
 00730815    mov         eax,dword ptr [ebx+8]
 00730818    mov         edi,dword ptr [eax]
 0073081A    call        dword ptr [edi+0C]
 0073081D    mov         edx,dword ptr [ebp-10]
 00730820    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730823    mov         ecx,dword ptr [eax]
 00730825    call        dword ptr [ecx+3C];TStrings.Add
 00730828    mov         eax,dword ptr [ebp-4]
 0073082B    mov         eax,dword ptr [eax+304];TFXControlsFrame.cbItemSelect:TComboBox
 00730831    mov         edx,dword ptr [eax]
 00730833    call        dword ptr [edx+108];TComboBox.GetItemIndex
 00730839    lea         edx,[ebp-14]
 0073083C    call        IntToStr
 00730841    mov         edx,dword ptr [ebp-14]
 00730844    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730847    mov         ecx,dword ptr [eax]
 00730849    call        dword ptr [ecx+3C];TStrings.Add
 0073084C    lea         ecx,[ebp-18]
 0073084F    mov         edx,2
 00730854    mov         eax,dword ptr [ebx+8]
 00730857    mov         edi,dword ptr [eax]
 00730859    call        dword ptr [edi+0C]
 0073085C    mov         edx,dword ptr [ebp-18]
 0073085F    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730862    mov         ecx,dword ptr [eax]
 00730864    call        dword ptr [ecx+3C];TStrings.Add
 00730867    lea         ecx,[ebp-1C]
 0073086A    mov         edx,3
 0073086F    mov         eax,dword ptr [ebx+8]
 00730872    mov         edi,dword ptr [eax]
 00730874    call        dword ptr [edi+0C]
 00730877    mov         edx,dword ptr [ebp-1C]
 0073087A    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 0073087D    mov         ecx,dword ptr [eax]
 0073087F    call        dword ptr [ecx+3C];TStrings.Add
 00730882    movzx       eax,byte ptr ds:[7308D8];0x10 gvar_007308D8
 00730889    push        eax
 0073088A    mov         cl,4
 0073088C    mov         edx,ebx
 0073088E    mov         eax,dword ptr [ebp-8]
 00730891    call        TCustomListView.GetNextItem
 00730896    mov         ebx,eax
 00730898    dec         dword ptr [ebp-0C]
>0073089B    jne         007307CF
 007308A1    mov         eax,dword ptr [ebp-8]
 007308A4    mov         edx,dword ptr [eax]
 007308A6    call        dword ptr [edx+120];TCustomListView.DeleteSelected
 007308AC    xor         eax,eax
 007308AE    pop         edx
 007308AF    pop         ecx
 007308B0    pop         ecx
 007308B1    mov         dword ptr fs:[eax],edx
 007308B4    push        7308CE
 007308B9    lea         eax,[ebp-1C]
 007308BC    mov         edx,4
 007308C1    call        @UStrArrayClr
 007308C6    ret
>007308C7    jmp         @HandleFinally
>007308CC    jmp         007308B9
 007308CE    pop         edi
 007308CF    pop         esi
 007308D0    pop         ebx
 007308D1    mov         esp,ebp
 007308D3    pop         ebp
 007308D4    ret         8
*}
end;

//007308DC
procedure TFXControlsFrame.ListView2DragOver(Sender:TObject; Source:TObject; X:Integer; Y:Integer; State:UITypes.TDragState; var Accept:Boolean);
begin
{*
 007308DC    push        ebp
 007308DD    mov         ebp,esp
 007308DF    push        ebx
 007308E0    push        esi
 007308E1    mov         esi,ecx
 007308E3    mov         ebx,eax
 007308E5    mov         eax,esi
 007308E7    mov         edx,dword ptr ds:[530DF4];TListView
 007308ED    call        @AsClass
 007308F2    cmp         eax,dword ptr [ebx+2D4];TFXControlsFrame.ListView3:TListView
 007308F8    mov         eax,dword ptr [ebp+8]
 007308FB    sete        byte ptr [eax]
 007308FE    pop         esi
 007308FF    pop         ebx
 00730900    pop         ebp
 00730901    ret         10
*}
end;

//00730904
procedure TFXControlsFrame.ListView2DragDrop(Sender:TObject; Source:TObject; X:Integer; Y:Integer);
begin
{*
 00730904    push        ebp
 00730905    mov         ebp,esp
 00730907    push        0
 00730909    push        0
 0073090B    push        0
 0073090D    push        0
 0073090F    push        0
 00730911    push        0
 00730913    push        0
 00730915    push        ebx
 00730916    push        esi
 00730917    push        edi
 00730918    mov         ebx,ecx
 0073091A    mov         dword ptr [ebp-4],eax
 0073091D    xor         eax,eax
 0073091F    push        ebp
 00730920    push        730A53
 00730925    push        dword ptr fs:[eax]
 00730928    mov         dword ptr fs:[eax],esp
 0073092B    mov         eax,ebx
 0073092D    mov         edx,dword ptr ds:[530DF4];TListView
 00730933    call        @AsClass
 00730938    mov         dword ptr [ebp-8],eax
 0073093B    mov         eax,dword ptr [ebp-8]
 0073093E    call        005489C4
 00730943    mov         ebx,eax
 00730945    mov         eax,dword ptr [ebp-8]
 00730948    mov         edx,dword ptr [eax]
 0073094A    call        dword ptr [edx+130];TListView.sub_00546C60
 00730950    test        eax,eax
>00730952    jle         00730A2D
 00730958    mov         dword ptr [ebp-0C],eax
 0073095B    push        0
 0073095D    push        1
 0073095F    push        0
 00730961    mov         eax,dword ptr [ebp-4]
 00730964    mov         eax,dword ptr [eax+2CC];TFXControlsFrame.ListView2:TListView
 0073096A    mov         ecx,dword ptr [ebx+20]
 0073096D    xor         edx,edx
 0073096F    call        TCustomListView.FindCaption
 00730974    test        eax,eax
>00730976    jne         00730A0E
 0073097C    mov         eax,dword ptr [ebp-4]
 0073097F    mov         eax,dword ptr [eax+2CC];TFXControlsFrame.ListView2:TListView
 00730985    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073098B    call        TListItems.Add
 00730990    mov         esi,eax
 00730992    mov         edx,dword ptr [ebx+20]
 00730995    mov         eax,esi
 00730997    call        TListItem.SetCaption
 0073099C    lea         ecx,[ebp-10]
 0073099F    xor         edx,edx
 007309A1    mov         eax,dword ptr [ebx+8]
 007309A4    mov         edi,dword ptr [eax]
 007309A6    call        dword ptr [edi+0C]
 007309A9    mov         edx,dword ptr [ebp-10]
 007309AC    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 007309AF    mov         ecx,dword ptr [eax]
 007309B1    call        dword ptr [ecx+3C];TStrings.Add
 007309B4    lea         ecx,[ebp-14]
 007309B7    mov         edx,1
 007309BC    mov         eax,dword ptr [ebx+8]
 007309BF    mov         edi,dword ptr [eax]
 007309C1    call        dword ptr [edi+0C]
 007309C4    mov         edx,dword ptr [ebp-14]
 007309C7    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 007309CA    mov         ecx,dword ptr [eax]
 007309CC    call        dword ptr [ecx+3C];TStrings.Add
 007309CF    mov         eax,dword ptr [ebp-4]
 007309D2    mov         eax,dword ptr [eax+304];TFXControlsFrame.cbItemSelect:TComboBox
 007309D8    mov         edx,dword ptr [eax]
 007309DA    call        dword ptr [edx+108];TComboBox.GetItemIndex
 007309E0    lea         edx,[ebp-18]
 007309E3    call        IntToStr
 007309E8    mov         edx,dword ptr [ebp-18]
 007309EB    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 007309EE    mov         ecx,dword ptr [eax]
 007309F0    call        dword ptr [ecx+3C];TStrings.Add
 007309F3    lea         ecx,[ebp-1C]
 007309F6    mov         edx,3
 007309FB    mov         eax,dword ptr [ebx+8]
 007309FE    mov         edi,dword ptr [eax]
 00730A00    call        dword ptr [edi+0C]
 00730A03    mov         edx,dword ptr [ebp-1C]
 00730A06    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730A09    mov         ecx,dword ptr [eax]
 00730A0B    call        dword ptr [ecx+3C];TStrings.Add
 00730A0E    movzx       eax,byte ptr ds:[730A64];0x10 gvar_00730A64
 00730A15    push        eax
 00730A16    mov         cl,4
 00730A18    mov         edx,ebx
 00730A1A    mov         eax,dword ptr [ebp-8]
 00730A1D    call        TCustomListView.GetNextItem
 00730A22    mov         ebx,eax
 00730A24    dec         dword ptr [ebp-0C]
>00730A27    jne         0073095B
 00730A2D    mov         eax,dword ptr [ebp-8]
 00730A30    mov         edx,dword ptr [eax]
 00730A32    call        dword ptr [edx+120];TCustomListView.DeleteSelected
 00730A38    xor         eax,eax
 00730A3A    pop         edx
 00730A3B    pop         ecx
 00730A3C    pop         ecx
 00730A3D    mov         dword ptr fs:[eax],edx
 00730A40    push        730A5A
 00730A45    lea         eax,[ebp-1C]
 00730A48    mov         edx,4
 00730A4D    call        @UStrArrayClr
 00730A52    ret
>00730A53    jmp         @HandleFinally
>00730A58    jmp         00730A45
 00730A5A    pop         edi
 00730A5B    pop         esi
 00730A5C    pop         ebx
 00730A5D    mov         esp,ebp
 00730A5F    pop         ebp
 00730A60    ret         8
*}
end;

//00730A68
procedure TFXControlsFrame.ListView3DragOver(Sender:TObject; Source:TObject; X:Integer; Y:Integer; State:UITypes.TDragState; var Accept:Boolean);
begin
{*
 00730A68    push        ebp
 00730A69    mov         ebp,esp
 00730A6B    push        ebx
 00730A6C    mov         ebx,ecx
 00730A6E    mov         eax,ebx
 00730A70    mov         edx,dword ptr ds:[530DF4];TListView
 00730A76    call        @IsClass
 00730A7B    mov         edx,dword ptr [ebp+8]
 00730A7E    mov         byte ptr [edx],al
 00730A80    pop         ebx
 00730A81    pop         ebp
 00730A82    ret         10
*}
end;

//00730A88
procedure TFXControlsFrame.ListView3DragDrop(Sender:TObject; Source:TObject; X:Integer; Y:Integer);
begin
{*
 00730A88    push        ebp
 00730A89    mov         ebp,esp
 00730A8B    add         esp,0FFFFFFE0
 00730A8E    push        ebx
 00730A8F    push        esi
 00730A90    push        edi
 00730A91    xor         ebx,ebx
 00730A93    mov         dword ptr [ebp-20],ebx
 00730A96    mov         dword ptr [ebp-1C],ebx
 00730A99    mov         dword ptr [ebp-18],ebx
 00730A9C    mov         dword ptr [ebp-14],ebx
 00730A9F    mov         dword ptr [ebp-8],ecx
 00730AA2    mov         dword ptr [ebp-4],eax
 00730AA5    xor         eax,eax
 00730AA7    push        ebp
 00730AA8    push        730C0D
 00730AAD    push        dword ptr fs:[eax]
 00730AB0    mov         dword ptr fs:[eax],esp
 00730AB3    mov         eax,dword ptr [ebp-8]
 00730AB6    mov         edx,dword ptr ds:[530DF4];TListView
 00730ABC    call        @AsClass
 00730AC1    mov         dword ptr [ebp-0C],eax
 00730AC4    mov         eax,dword ptr [ebp-0C]
 00730AC7    call        005489C4
 00730ACC    mov         ebx,eax
 00730ACE    mov         eax,dword ptr [ebp-0C]
 00730AD1    mov         edx,dword ptr [eax]
 00730AD3    call        dword ptr [edx+130];TListView.sub_00546C60
 00730AD9    test        eax,eax
>00730ADB    jle         00730BE7
 00730AE1    mov         dword ptr [ebp-10],eax
 00730AE4    push        0
 00730AE6    push        1
 00730AE8    push        0
 00730AEA    mov         eax,dword ptr [ebp-4]
 00730AED    mov         eax,dword ptr [eax+2D4];TFXControlsFrame.ListView3:TListView
 00730AF3    mov         ecx,dword ptr [ebx+20]
 00730AF6    xor         edx,edx
 00730AF8    call        TCustomListView.FindCaption
 00730AFD    test        eax,eax
>00730AFF    jne         00730BC8
 00730B05    mov         eax,dword ptr [ebp-4]
 00730B08    mov         eax,dword ptr [eax+2D4];TFXControlsFrame.ListView3:TListView
 00730B0E    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00730B14    call        TListItems.Add
 00730B19    mov         esi,eax
 00730B1B    mov         edx,dword ptr [ebx+20]
 00730B1E    mov         eax,esi
 00730B20    call        TListItem.SetCaption
 00730B25    lea         ecx,[ebp-14]
 00730B28    xor         edx,edx
 00730B2A    mov         eax,dword ptr [ebx+8]
 00730B2D    mov         edi,dword ptr [eax]
 00730B2F    call        dword ptr [edi+0C]
 00730B32    mov         edx,dword ptr [ebp-14]
 00730B35    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730B38    mov         ecx,dword ptr [eax]
 00730B3A    call        dword ptr [ecx+3C];TStrings.Add
 00730B3D    mov         eax,dword ptr [ebp-4]
 00730B40    mov         eax,dword ptr [eax+2C0];TFXControlsFrame.ListView1:TListView
 00730B46    cmp         eax,dword ptr [ebp-8]
>00730B49    jne         00730B5A
 00730B4B    mov         edx,730C2C;'0'
 00730B50    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730B53    mov         ecx,dword ptr [eax]
 00730B55    call        dword ptr [ecx+3C];TStrings.Add
>00730B58    jmp         00730B75
 00730B5A    lea         ecx,[ebp-18]
 00730B5D    mov         edx,1
 00730B62    mov         eax,dword ptr [ebx+8]
 00730B65    mov         edi,dword ptr [eax]
 00730B67    call        dword ptr [edi+0C]
 00730B6A    mov         edx,dword ptr [ebp-18]
 00730B6D    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730B70    mov         ecx,dword ptr [eax]
 00730B72    call        dword ptr [ecx+3C];TStrings.Add
 00730B75    mov         eax,dword ptr [ebp-4]
 00730B78    mov         eax,dword ptr [eax+2CC];TFXControlsFrame.ListView2:TListView
 00730B7E    cmp         eax,dword ptr [ebp-8]
>00730B81    jne         00730B92
 00730B83    mov         edx,730C2C;'0'
 00730B88    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730B8B    mov         ecx,dword ptr [eax]
 00730B8D    call        dword ptr [ecx+3C];TStrings.Add
>00730B90    jmp         00730BAD
 00730B92    lea         ecx,[ebp-1C]
 00730B95    mov         edx,2
 00730B9A    mov         eax,dword ptr [ebx+8]
 00730B9D    mov         edi,dword ptr [eax]
 00730B9F    call        dword ptr [edi+0C]
 00730BA2    mov         edx,dword ptr [ebp-1C]
 00730BA5    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730BA8    mov         ecx,dword ptr [eax]
 00730BAA    call        dword ptr [ecx+3C];TStrings.Add
 00730BAD    lea         ecx,[ebp-20]
 00730BB0    mov         edx,3
 00730BB5    mov         eax,dword ptr [ebx+8]
 00730BB8    mov         edi,dword ptr [eax]
 00730BBA    call        dword ptr [edi+0C]
 00730BBD    mov         edx,dword ptr [ebp-20]
 00730BC0    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00730BC3    mov         ecx,dword ptr [eax]
 00730BC5    call        dword ptr [ecx+3C];TStrings.Add
 00730BC8    movzx       eax,byte ptr ds:[730C30];0x10 gvar_00730C30
 00730BCF    push        eax
 00730BD0    mov         cl,4
 00730BD2    mov         edx,ebx
 00730BD4    mov         eax,dword ptr [ebp-0C]
 00730BD7    call        TCustomListView.GetNextItem
 00730BDC    mov         ebx,eax
 00730BDE    dec         dword ptr [ebp-10]
>00730BE1    jne         00730AE4
 00730BE7    mov         eax,dword ptr [ebp-0C]
 00730BEA    mov         edx,dword ptr [eax]
 00730BEC    call        dword ptr [edx+120];TCustomListView.DeleteSelected
 00730BF2    xor         eax,eax
 00730BF4    pop         edx
 00730BF5    pop         ecx
 00730BF6    pop         ecx
 00730BF7    mov         dword ptr fs:[eax],edx
 00730BFA    push        730C14
 00730BFF    lea         eax,[ebp-20]
 00730C02    mov         edx,4
 00730C07    call        @UStrArrayClr
 00730C0C    ret
>00730C0D    jmp         @HandleFinally
>00730C12    jmp         00730BFF
 00730C14    pop         edi
 00730C15    pop         esi
 00730C16    pop         ebx
 00730C17    mov         esp,ebp
 00730C19    pop         ebp
 00730C1A    ret         8
*}
end;

//00730FCC
procedure TFXADSummaryFrame.Show;
begin
{*
 00730FCC    push        ebx
 00730FCD    mov         ebx,eax
 00730FCF    mov         eax,ebx
 00730FD1    call        0073237C
 00730FD6    mov         eax,ebx
 00730FD8    call        00732380
 00730FDD    mov         dl,1
 00730FDF    mov         eax,ebx
 00730FE1    call        TControl.SetVisible
 00730FE6    mov         eax,ebx
 00730FE8    call        TControl.BringToFront
 00730FED    pop         ebx
 00730FEE    ret
*}
end;

//00730FF0
procedure TFXADSummaryFrame.Translate(IniFile:TFXIniFile);
begin
{*
 00730FF0    push        ebp
 00730FF1    mov         ebp,esp
 00730FF3    mov         ecx,17
 00730FF8    push        0
 00730FFA    push        0
 00730FFC    dec         ecx
>00730FFD    jne         00730FF8
 00730FFF    push        ebx
 00731000    push        esi
 00731001    push        edi
 00731002    mov         ebx,edx
 00731004    mov         dword ptr [ebp-4],eax
 00731007    mov         esi,902480;gvar_00902480:UnicodeString
 0073100C    xor         eax,eax
 0073100E    push        ebp
 0073100F    push        731739
 00731014    push        dword ptr fs:[eax]
 00731017    mov         dword ptr fs:[eax],esp
 0073101A    push        731754;'Device type'
 0073101F    lea         eax,[ebp-8]
 00731022    push        eax
 00731023    mov         ecx,731778;'sFXSumDeviceType'
 00731028    mov         edx,7317A8;'FXSumFrame'
 0073102D    mov         eax,ebx
 0073102F    mov         edi,dword ptr [eax]
 00731031    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731034    mov         edx,dword ptr [ebp-8]
 00731037    mov         eax,dword ptr [ebp-4]
 0073103A    add         eax,2C4;TFXADSummaryFrame.strFXSumDeviceType:string
 0073103F    call        @UStrAsg
 00731044    push        7317CC;'Loop '
 00731049    lea         eax,[ebp-0C]
 0073104C    push        eax
 0073104D    mov         ecx,7317E4;'sLoop'
 00731052    mov         edx,7317FC;'CommonTexts'
 00731057    mov         eax,ebx
 00731059    mov         edi,dword ptr [eax]
 0073105B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073105E    mov         edx,dword ptr [ebp-0C]
 00731061    mov         eax,dword ptr [ebp-4]
 00731064    add         eax,2C0;TFXADSummaryFrame.strLoop:string
 00731069    call        @UStrAsg
 0073106E    push        731820;'Sum'
 00731073    lea         eax,[ebp-10]
 00731076    push        eax
 00731077    mov         ecx,731834;'sFXSumCol'
 0073107C    mov         edx,7317A8;'FXSumFrame'
 00731081    mov         eax,ebx
 00731083    mov         edi,dword ptr [eax]
 00731085    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731088    mov         edx,dword ptr [ebp-10]
 0073108B    mov         eax,dword ptr [ebp-4]
 0073108E    add         eax,2C8;TFXADSummaryFrame.strFXSumCol:string
 00731093    call        @UStrAsg
 00731098    push        731854;'ALC devices'
 0073109D    lea         eax,[ebp-14]
 007310A0    push        eax
 007310A1    mov         ecx,731878;'sFXSumALCDevices'
 007310A6    mov         edx,7317A8;'FXSumFrame'
 007310AB    mov         eax,ebx
 007310AD    mov         edi,dword ptr [eax]
 007310AF    call        dword ptr [edi+4];TFXIniFile.ReadString
 007310B2    mov         edx,dword ptr [ebp-14]
 007310B5    mov         eax,esi
 007310B7    call        @UStrAsg
 007310BC    push        7318A8;'-  Ionisation'
 007310C1    lea         eax,[ebp-18]
 007310C4    push        eax
 007310C5    mov         ecx,7318D0;'sFXSumApoIon'
 007310CA    mov         edx,7317A8;'FXSumFrame'
 007310CF    mov         eax,ebx
 007310D1    mov         edi,dword ptr [eax]
 007310D3    call        dword ptr [edi+4];TFXIniFile.ReadString
 007310D6    mov         edx,dword ptr [ebp-18]
 007310D9    lea         eax,[esi+4]
 007310DC    call        @UStrAsg
 007310E1    push        7318F8;'-  Optical'
 007310E6    lea         eax,[ebp-1C]
 007310E9    push        eax
 007310EA    mov         ecx,73191C;'sFXSumApoOpt'
 007310EF    mov         edx,7317A8;'FXSumFrame'
 007310F4    mov         eax,ebx
 007310F6    mov         edi,dword ptr [eax]
 007310F8    call        dword ptr [edi+4];TFXIniFile.ReadString
 007310FB    mov         edx,dword ptr [ebp-1C]
 007310FE    lea         eax,[esi+8]
 00731101    call        @UStrAsg
 00731106    push        731944;'-  Thermal'
 0073110B    lea         eax,[ebp-20]
 0073110E    push        eax
 0073110F    mov         ecx,731968;'sFXSumApoHeat'
 00731114    mov         edx,7317A8;'FXSumFrame'
 00731119    mov         eax,ebx
 0073111B    mov         edi,dword ptr [eax]
 0073111D    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731120    mov         edx,dword ptr [ebp-20]
 00731123    lea         eax,[esi+0C]
 00731126    call        @UStrAsg
 0073112B    push        731990;'-  High temp.'
 00731130    lea         eax,[ebp-24]
 00731133    push        eax
 00731134    mov         ecx,7319B8;'sFXSumApoHighHeat'
 00731139    mov         edx,7317A8;'FXSumFrame'
 0073113E    mov         eax,ebx
 00731140    mov         edi,dword ptr [eax]
 00731142    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731145    mov         edx,dword ptr [ebp-24]
 00731148    lea         eax,[esi+10]
 0073114B    call        @UStrAsg
 00731150    push        7319E8;'-  Multicriteria'
 00731155    lea         eax,[ebp-28]
 00731158    push        eax
 00731159    mov         ecx,731A18;'sFXSumApoMulti'
 0073115E    mov         edx,7317A8;'FXSumFrame'
 00731163    mov         eax,ebx
 00731165    mov         edi,dword ptr [eax]
 00731167    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073116A    mov         edx,dword ptr [ebp-28]
 0073116D    lea         eax,[esi+14]
 00731170    call        @UStrAsg
 00731175    push        731A44;'-  Carbon monoxide'
 0073117A    lea         eax,[ebp-2C]
 0073117D    push        eax
 0073117E    mov         ecx,731A78;'sFXSumApoCO'
 00731183    mov         edx,7317A8;'FXSumFrame'
 00731188    mov         eax,ebx
 0073118A    mov         edi,dword ptr [eax]
 0073118C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073118F    mov         edx,dword ptr [ebp-2C]
 00731192    lea         eax,[esi+18]
 00731195    call        @UStrAsg
 0073119A    push        731A9C;'-  Beam sensor'
 0073119F    lea         eax,[ebp-30]
 007311A2    push        eax
 007311A3    mov         ecx,731AC8;'sFXSumApoBeam'
 007311A8    mov         edx,7317A8;'FXSumFrame'
 007311AD    mov         eax,ebx
 007311AF    mov         edi,dword ptr [eax]
 007311B1    call        dword ptr [edi+4];TFXIniFile.ReadString
 007311B4    mov         edx,dword ptr [ebp-30]
 007311B7    lea         eax,[esi+1C]
 007311BA    call        @UStrAsg
 007311BF    push        731AF0;'-  Flame sensor'
 007311C4    lea         eax,[ebp-34]
 007311C7    push        eax
 007311C8    mov         ecx,731B1C;'sFXSumApoFlame'
 007311CD    mov         edx,7317A8;'FXSumFrame'
 007311D2    mov         eax,ebx
 007311D4    mov         edi,dword ptr [eax]
 007311D6    call        dword ptr [edi+4];TFXIniFile.ReadString
 007311D9    mov         edx,dword ptr [ebp-34]
 007311DC    lea         eax,[esi+20]
 007311DF    call        @UStrAsg
 007311E4    push        731B48;'-  Any type'
 007311E9    lea         eax,[ebp-38]
 007311EC    push        eax
 007311ED    mov         ecx,731B6C;'sFXSumApoAnyType'
 007311F2    mov         edx,7317A8;'FXSumFrame'
 007311F7    mov         eax,ebx
 007311F9    mov         edi,dword ptr [eax]
 007311FB    call        dword ptr [edi+4];TFXIniFile.ReadString
 007311FE    mov         edx,dword ptr [ebp-38]
 00731201    lea         eax,[esi+24]
 00731204    call        @UStrAsg
 00731209    push        731B9C;'-  Conv. zone mod.'
 0073120E    lea         eax,[ebp-3C]
 00731211    push        eax
 00731212    mov         ecx,731BD0;'sFXSumApoConvZoneMod'
 00731217    mov         edx,7317A8;'FXSumFrame'
 0073121C    mov         eax,ebx
 0073121E    mov         edi,dword ptr [eax]
 00731220    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731223    mov         edx,dword ptr [ebp-3C]
 00731226    lea         eax,[esi+28]
 00731229    call        @UStrAsg
 0073122E    push        731C08;'-  Manual c.p./al.sw.'
 00731233    lea         eax,[ebp-40]
 00731236    push        eax
 00731237    mov         ecx,731C40;'sFXSumApoManualCP'
 0073123C    mov         edx,7317A8;'FXSumFrame'
 00731241    mov         eax,ebx
 00731243    mov         edi,dword ptr [eax]
 00731245    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731248    mov         edx,dword ptr [ebp-40]
 0073124B    lea         eax,[esi+2C]
 0073124E    call        @UStrAsg
 00731253    push        731C70;'-  Switch monitors'
 00731258    lea         eax,[ebp-44]
 0073125B    push        eax
 0073125C    mov         ecx,731CA4;'sFXSumApoMonitors'
 00731261    mov         edx,7317A8;'FXSumFrame'
 00731266    mov         eax,ebx
 00731268    mov         edi,dword ptr [eax]
 0073126A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073126D    mov         edx,dword ptr [ebp-44]
 00731270    lea         eax,[esi+30]
 00731273    call        @UStrAsg
 00731278    push        731CD4;'-  IO modules'
 0073127D    lea         eax,[ebp-48]
 00731280    push        eax
 00731281    mov         ecx,731CFC;'sFXSumApoIODevices'
 00731286    mov         edx,7317A8;'FXSumFrame'
 0073128B    mov         eax,ebx
 0073128D    mov         edi,dword ptr [eax]
 0073128F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731292    mov         edx,dword ptr [ebp-48]
 00731295    lea         eax,[esi+34]
 00731298    call        @UStrAsg
 0073129D    push        731D30;'-  Alarm devices'
 007312A2    lea         eax,[ebp-4C]
 007312A5    push        eax
 007312A6    mov         ecx,731D60;'sFXSumApoAlarmDevs'
 007312AB    mov         edx,7317A8;'FXSumFrame'
 007312B0    mov         eax,ebx
 007312B2    mov         edi,dword ptr [eax]
 007312B4    call        dword ptr [edi+4];TFXIniFile.ReadString
 007312B7    mov         edx,dword ptr [ebp-4C]
 007312BA    lea         eax,[esi+38]
 007312BD    call        @UStrAsg
 007312C2    push        731D94;'LC devices'
 007312C7    lea         eax,[ebp-50]
 007312CA    push        eax
 007312CB    mov         ecx,731DB8;'sFXSumLCDevices'
 007312D0    mov         edx,7317A8;'FXSumFrame'
 007312D5    mov         eax,ebx
 007312D7    mov         edi,dword ptr [eax]
 007312D9    call        dword ptr [edi+4];TFXIniFile.ReadString
 007312DC    mov         edx,dword ptr [ebp-50]
 007312DF    lea         eax,[esi+3C]
 007312E2    call        @UStrAsg
 007312E7    push        7318A8;'-  Ionisation'
 007312EC    lea         eax,[ebp-54]
 007312EF    push        eax
 007312F0    mov         ecx,731DE4;'sFXSumIon'
 007312F5    mov         edx,7317A8;'FXSumFrame'
 007312FA    mov         eax,ebx
 007312FC    mov         edi,dword ptr [eax]
 007312FE    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731301    mov         edx,dword ptr [ebp-54]
 00731304    lea         eax,[esi+40]
 00731307    call        @UStrAsg
 0073130C    push        7318F8;'-  Optical'
 00731311    lea         eax,[ebp-58]
 00731314    push        eax
 00731315    mov         ecx,731E04;'sFXSumOpt'
 0073131A    mov         edx,7317A8;'FXSumFrame'
 0073131F    mov         eax,ebx
 00731321    mov         edi,dword ptr [eax]
 00731323    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731326    mov         edx,dword ptr [ebp-58]
 00731329    lea         eax,[esi+44]
 0073132C    call        @UStrAsg
 00731331    push        731944;'-  Thermal'
 00731336    lea         eax,[ebp-5C]
 00731339    push        eax
 0073133A    mov         ecx,731E24;'sFXSumHeat'
 0073133F    mov         edx,7317A8;'FXSumFrame'
 00731344    mov         eax,ebx
 00731346    mov         edi,dword ptr [eax]
 00731348    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073134B    mov         edx,dword ptr [ebp-5C]
 0073134E    lea         eax,[esi+48]
 00731351    call        @UStrAsg
 00731356    push        731E48;'-  Omni'
 0073135B    lea         eax,[ebp-60]
 0073135E    push        eax
 0073135F    mov         ecx,731E64;'sFXSumOmni'
 00731364    mov         edx,7317A8;'FXSumFrame'
 00731369    mov         eax,ebx
 0073136B    mov         edi,dword ptr [eax]
 0073136D    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731370    mov         edx,dword ptr [ebp-60]
 00731373    lea         eax,[esi+4C]
 00731376    call        @UStrAsg
 0073137B    push        7319E8;'-  Multicriteria'
 00731380    lea         eax,[ebp-64]
 00731383    push        eax
 00731384    mov         ecx,731E88;'sFXSumMulti'
 00731389    mov         edx,7317A8;'FXSumFrame'
 0073138E    mov         eax,ebx
 00731390    mov         edi,dword ptr [eax]
 00731392    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731395    mov         edx,dword ptr [ebp-64]
 00731398    lea         eax,[esi+50]
 0073139B    call        @UStrAsg
 007313A0    push        731EAC;'-  Laser LZR-1'
 007313A5    lea         eax,[ebp-68]
 007313A8    push        eax
 007313A9    mov         ecx,731ED8;'sFXSumLaser1'
 007313AE    mov         edx,7317A8;'FXSumFrame'
 007313B3    mov         eax,ebx
 007313B5    mov         edi,dword ptr [eax]
 007313B7    call        dword ptr [edi+4];TFXIniFile.ReadString
 007313BA    mov         edx,dword ptr [ebp-68]
 007313BD    lea         eax,[esi+54]
 007313C0    call        @UStrAsg
 007313C5    push        731F00;'-  Laser 7251'
 007313CA    lea         eax,[ebp-6C]
 007313CD    push        eax
 007313CE    mov         ecx,731F28;'sFXSumLaser2'
 007313D3    mov         edx,7317A8;'FXSumFrame'
 007313D8    mov         eax,ebx
 007313DA    mov         edi,dword ptr [eax]
 007313DC    call        dword ptr [edi+4];TFXIniFile.ReadString
 007313DF    mov         edx,dword ptr [ebp-6C]
 007313E2    lea         eax,[esi+58]
 007313E5    call        @UStrAsg
 007313EA    push        731F50;'-  Monitor module'
 007313EF    lea         eax,[ebp-70]
 007313F2    push        eax
 007313F3    mov         ecx,731F80;'sFXSumMonitor'
 007313F8    mov         edx,7317A8;'FXSumFrame'
 007313FD    mov         eax,ebx
 007313FF    mov         edi,dword ptr [eax]
 00731401    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731404    mov         edx,dword ptr [ebp-70]
 00731407    lea         eax,[esi+5C]
 0073140A    call        @UStrAsg
 0073140F    push        731FA8;'-  Control module'
 00731414    lea         eax,[ebp-74]
 00731417    push        eax
 00731418    mov         ecx,731FD8;'sFXSumControl'
 0073141D    mov         edx,7317A8;'FXSumFrame'
 00731422    mov         eax,ebx
 00731424    mov         edi,dword ptr [eax]
 00731426    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731429    mov         edx,dword ptr [ebp-74]
 0073142C    lea         eax,[esi+60]
 0073142F    call        @UStrAsg
 00731434    push        732000;'-  Conv. Zone mod.'
 00731439    lea         eax,[ebp-78]
 0073143C    push        eax
 0073143D    mov         ecx,732034;'sFXSumZone'
 00731442    mov         edx,7317A8;'FXSumFrame'
 00731447    mov         eax,ebx
 00731449    mov         edi,dword ptr [eax]
 0073144B    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073144E    mov         edx,dword ptr [ebp-78]
 00731451    lea         eax,[esi+64]
 00731454    call        @UStrAsg
 00731459    push        731B48;'-  Any type'
 0073145E    lea         eax,[ebp-7C]
 00731461    push        eax
 00731462    mov         ecx,732058;'sFXSumAnyType'
 00731467    mov         edx,7317A8;'FXSumFrame'
 0073146C    mov         eax,ebx
 0073146E    mov         edi,dword ptr [eax]
 00731470    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731473    mov         edx,dword ptr [ebp-7C]
 00731476    lea         eax,[esi+68]
 00731479    call        @UStrAsg
 0073147E    push        732080;'SLC devices'
 00731483    lea         eax,[ebp-80]
 00731486    push        eax
 00731487    mov         ecx,7320A4;'sFXSumSLCDevices'
 0073148C    mov         edx,7317A8;'FXSumFrame'
 00731491    mov         eax,ebx
 00731493    mov         edi,dword ptr [eax]
 00731495    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731498    mov         edx,dword ptr [ebp-80]
 0073149B    lea         eax,[esi+6C]
 0073149E    call        @UStrAsg
 007314A3    push        7318A8;'-  Ionisation'
 007314A8    lea         eax,[ebp-84]
 007314AE    push        eax
 007314AF    mov         ecx,7320D4;'sFXSumSapIon'
 007314B4    mov         edx,7317A8;'FXSumFrame'
 007314B9    mov         eax,ebx
 007314BB    mov         edi,dword ptr [eax]
 007314BD    call        dword ptr [edi+4];TFXIniFile.ReadString
 007314C0    mov         edx,dword ptr [ebp-84]
 007314C6    lea         eax,[esi+70]
 007314C9    call        @UStrAsg
 007314CE    push        7318F8;'-  Optical'
 007314D3    lea         eax,[ebp-88]
 007314D9    push        eax
 007314DA    mov         ecx,7320FC;'sFXSumSapOpt'
 007314DF    mov         edx,7317A8;'FXSumFrame'
 007314E4    mov         eax,ebx
 007314E6    mov         edi,dword ptr [eax]
 007314E8    call        dword ptr [edi+4];TFXIniFile.ReadString
 007314EB    mov         edx,dword ptr [ebp-88]
 007314F1    lea         eax,[esi+74]
 007314F4    call        @UStrAsg
 007314F9    push        731944;'-  Thermal'
 007314FE    lea         eax,[ebp-8C]
 00731504    push        eax
 00731505    mov         ecx,732124;'sFXSumSapHeat'
 0073150A    mov         edx,7317A8;'FXSumFrame'
 0073150F    mov         eax,ebx
 00731511    mov         edi,dword ptr [eax]
 00731513    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731516    mov         edx,dword ptr [ebp-8C]
 0073151C    lea         eax,[esi+78]
 0073151F    call        @UStrAsg
 00731524    push        7319E8;'-  Multicriteria'
 00731529    lea         eax,[ebp-90]
 0073152F    push        eax
 00731530    mov         ecx,73214C;'sFXSumSapMulti'
 00731535    mov         edx,7317A8;'FXSumFrame'
 0073153A    mov         eax,ebx
 0073153C    mov         edi,dword ptr [eax]
 0073153E    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731541    mov         edx,dword ptr [ebp-90]
 00731547    lea         eax,[esi+7C]
 0073154A    call        @UStrAsg
 0073154F    push        731A9C;'-  Beam sensor'
 00731554    lea         eax,[ebp-94]
 0073155A    push        eax
 0073155B    mov         ecx,732178;'sFXSumSapBeam'
 00731560    mov         edx,7317A8;'FXSumFrame'
 00731565    mov         eax,ebx
 00731567    mov         edi,dword ptr [eax]
 00731569    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073156C    mov         edx,dword ptr [ebp-94]
 00731572    lea         eax,[esi+80]
 00731578    call        @UStrAsg
 0073157D    push        731F00;'-  Laser 7251'
 00731582    lea         eax,[ebp-98]
 00731588    push        eax
 00731589    mov         ecx,7321A0;'sFXSumSapLaser'
 0073158E    mov         edx,7317A8;'FXSumFrame'
 00731593    mov         eax,ebx
 00731595    mov         edi,dword ptr [eax]
 00731597    call        dword ptr [edi+4];TFXIniFile.ReadString
 0073159A    mov         edx,dword ptr [ebp-98]
 007315A0    lea         eax,[esi+84]
 007315A6    call        @UStrAsg
 007315AB    push        731B48;'-  Any type'
 007315B0    lea         eax,[ebp-9C]
 007315B6    push        eax
 007315B7    mov         ecx,7321CC;'sFXSumSapAnyType'
 007315BC    mov         edx,7317A8;'FXSumFrame'
 007315C1    mov         eax,ebx
 007315C3    mov         edi,dword ptr [eax]
 007315C5    call        dword ptr [edi+4];TFXIniFile.ReadString
 007315C8    mov         edx,dword ptr [ebp-9C]
 007315CE    lea         eax,[esi+88]
 007315D4    call        @UStrAsg
 007315D9    push        731C08;'-  Manual c.p./al.sw.'
 007315DE    lea         eax,[ebp-0A0]
 007315E4    push        eax
 007315E5    mov         ecx,7321FC;'sFXSumSapManualCP'
 007315EA    mov         edx,7317A8;'FXSumFrame'
 007315EF    mov         eax,ebx
 007315F1    mov         edi,dword ptr [eax]
 007315F3    call        dword ptr [edi+4];TFXIniFile.ReadString
 007315F6    mov         edx,dword ptr [ebp-0A0]
 007315FC    lea         eax,[esi+8C]
 00731602    call        @UStrAsg
 00731607    push        731CD4;'-  IO modules'
 0073160C    lea         eax,[ebp-0A4]
 00731612    push        eax
 00731613    mov         ecx,73222C;'sFXSumSapIODevices'
 00731618    mov         edx,7317A8;'FXSumFrame'
 0073161D    mov         eax,ebx
 0073161F    mov         edi,dword ptr [eax]
 00731621    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731624    mov         edx,dword ptr [ebp-0A4]
 0073162A    lea         eax,[esi+90]
 00731630    call        @UStrAsg
 00731635    push        731B9C;'-  Conv. zone mod.'
 0073163A    lea         eax,[ebp-0A8]
 00731640    push        eax
 00731641    mov         ecx,732260;'sFXSumSapConvZoneMod'
 00731646    mov         edx,7317A8;'FXSumFrame'
 0073164B    mov         eax,ebx
 0073164D    mov         edi,dword ptr [eax]
 0073164F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731652    mov         edx,dword ptr [ebp-0A8]
 00731658    lea         eax,[esi+94]
 0073165E    call        @UStrAsg
 00731663    push        731D30;'-  Alarm devices'
 00731668    lea         eax,[ebp-0AC]
 0073166E    push        eax
 0073166F    mov         ecx,732298;'sFXSumSapAlarmDevs'
 00731674    mov         edx,7317A8;'FXSumFrame'
 00731679    mov         eax,ebx
 0073167B    mov         edi,dword ptr [eax]
 0073167D    call        dword ptr [edi+4];TFXIniFile.ReadString
 00731680    mov         edx,dword ptr [ebp-0AC]
 00731686    lea         eax,[esi+98]
 0073168C    call        @UStrAsg
 00731691    push        7322CC;'CLC lines'
 00731696    lea         eax,[ebp-0B0]
 0073169C    push        eax
 0073169D    mov         ecx,7322EC;'sFXSumCLCLines'
 007316A2    mov         edx,7317A8;'FXSumFrame'
 007316A7    mov         eax,ebx
 007316A9    mov         edi,dword ptr [eax]
 007316AB    call        dword ptr [edi+4];TFXIniFile.ReadString
 007316AE    mov         edx,dword ptr [ebp-0B0]
 007316B4    lea         eax,[esi+9C]
 007316BA    call        @UStrAsg
 007316BF    push        732318;'-  Conv. line'
 007316C4    lea         eax,[ebp-0B4]
 007316CA    push        eax
 007316CB    mov         ecx,732340;'sFXSumCnvLine'
 007316D0    mov         edx,7317A8;'FXSumFrame'
 007316D5    mov         eax,ebx
 007316D7    mov         edi,dword ptr [eax]
 007316D9    call        dword ptr [edi+4];TFXIniFile.ReadString
 007316DC    mov         edx,dword ptr [ebp-0B4]
 007316E2    lea         eax,[esi+0A0]
 007316E8    call        @UStrAsg
 007316ED    push        731820;'Sum'
 007316F2    lea         eax,[ebp-0B8]
 007316F8    push        eax
 007316F9    mov         ecx,732368;'sFXSumRow'
 007316FE    mov         edx,7317A8;'FXSumFrame'
 00731703    mov         eax,ebx
 00731705    mov         ebx,dword ptr [eax]
 00731707    call        dword ptr [ebx+4];TFXIniFile.ReadString
 0073170A    mov         edx,dword ptr [ebp-0B8]
 00731710    lea         eax,[esi+0A4]
 00731716    call        @UStrAsg
 0073171B    xor         eax,eax
 0073171D    pop         edx
 0073171E    pop         ecx
 0073171F    pop         ecx
 00731720    mov         dword ptr fs:[eax],edx
 00731723    push        731740
 00731728    lea         eax,[ebp-0B8]
 0073172E    mov         edx,2D
 00731733    call        @UStrArrayClr
 00731738    ret
>00731739    jmp         @HandleFinally
>0073173E    jmp         00731728
 00731740    pop         edi
 00731741    pop         esi
 00731742    pop         ebx
 00731743    mov         esp,ebp
 00731745    pop         ebp
 00731746    ret
*}
end;

//0073237C
procedure sub_0073237C;
begin
{*
 0073237C    ret
*}
end;

//00732380
procedure sub_00732380(?:TFXADSummaryFrame);
begin
{*
 00732380    push        ebp
 00732381    mov         ebp,esp
 00732383    mov         ecx,0C9
 00732388    push        0
 0073238A    push        0
 0073238C    dec         ecx
>0073238D    jne         00732388
 0073238F    push        ecx
 00732390    push        ebx
 00732391    push        esi
 00732392    push        edi
 00732393    mov         dword ptr [ebp-4],eax
 00732396    xor         eax,eax
 00732398    push        ebp
 00732399    push        733C9A
 0073239E    push        dword ptr fs:[eax]
 007323A1    mov         dword ptr fs:[eax],esp
 007323A4    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007323A9    mov         eax,dword ptr [eax]
 007323AB    mov         eax,dword ptr [eax+0C]
 007323AE    mov         dword ptr [ebp-8],eax
 007323B1    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 007323B6    mov         eax,dword ptr [eax]
 007323B8    mov         eax,dword ptr [eax+14]
 007323BB    mov         dword ptr [ebp-0C],eax
 007323BE    lea         eax,[ebp-5FC]
 007323C4    xor         ecx,ecx
 007323C6    mov         edx,5C4
 007323CB    call        @FillChar
 007323D0    lea         eax,[ebp-61C]
 007323D6    xor         ecx,ecx
 007323D8    mov         edx,20
 007323DD    call        @FillChar
 007323E2    mov         eax,dword ptr [ebp-8]
 007323E5    call        006A344C
 007323EA    movzx       eax,al
 007323ED    sub         eax,1
>007323F0    jno         007323F7
 007323F2    call        @IntOver
 007323F7    test        eax,eax
>007323F9    jl          007335F2
 007323FF    inc         eax
 00732400    mov         dword ptr [ebp-10],eax
 00732403    xor         ebx,ebx
 00732405    mov         edx,ebx
 00732407    mov         eax,dword ptr [ebp-8]
 0073240A    call        TFXPPD.GetControllerLoopType
 0073240F    cmp         ebx,7
>00732412    jbe         00732419
 00732414    call        @BoundErr
 00732419    mov         dword ptr [ebp+ebx*4-61C],eax
 00732420    xor         edx,edx
 00732422    mov         eax,1
 00732427    mov         esi,ebx
 00732429    cmp         esi,7
>0073242C    jbe         00732433
 0073242E    call        @BoundErr
 00732433    mov         ecx,dword ptr [ebp+esi*4-61C]
 0073243A    cmp         ecx,6
>0073243D    ja          007335D2
 00732443    jmp         dword ptr [ecx*4+73244A]
 00732443    dd          007335D2
 00732443    dd          007328C7
 00732443    dd          00732C7D
 00732443    dd          00732466
 00732443    dd          00732D24
 00732443    dd          00732466
 00732443    dd          00732D24
 00732466    test        edx,edx
>00732468    jg          007335D2
 0073246E    imul        ecx,esi,43B3
>00732474    jno         0073247B
 00732476    call        @IntOver
 0073247B    mov         esi,dword ptr [ebp-0C]
 0073247E    lea         ecx,[esi+ecx*4]
 00732481    push        ecx
 00732482    cmp         edx,1
>00732485    jbe         0073248C
 00732487    call        @BoundErr
 0073248C    imul        ecx,edx,43B3
>00732492    jno         00732499
 00732494    call        @IntOver
 00732499    pop         esi
 0073249A    lea         ecx,[esi+ecx*2]
 0073249D    push        ecx
 0073249E    dec         eax
 0073249F    cmp         eax,9E
>007324A4    jbe         007324AB
 007324A6    call        @BoundErr
 007324AB    inc         eax
 007324AC    imul        ecx,eax,6D
>007324AF    jno         007324B6
 007324B1    call        @IntOver
 007324B6    pop         esi
 007324B7    movzx       ecx,byte ptr [esi+ecx*2-0CC]
 007324BF    cmp         ecx,1C
>007324C2    ja          007335D2
 007324C8    jmp         dword ptr [ecx*4+7324CF]
 007324C8    dd          007335D2
 007324C8    dd          00732543
 007324C8    dd          0073257F
 007324C8    dd          007325BB
 007324C8    dd          007325F7
 007324C8    dd          00732633
 007324C8    dd          0073266F
 007324C8    dd          007326AB
 007324C8    dd          007326E7
 007324C8    dd          00732723
 007324C8    dd          0073275F
 007324C8    dd          0073279B
 007324C8    dd          007327D7
 007324C8    dd          00732813
 007324C8    dd          00732813
 007324C8    dd          00732813
 007324C8    dd          0073284F
 007324C8    dd          0073284F
 007324C8    dd          0073284F
 007324C8    dd          0073284F
 007324C8    dd          0073288B
 007324C8    dd          0073288B
 007324C8    dd          0073288B
 007324C8    dd          0073288B
 007324C8    dd          00732723
 007324C8    dd          0073288B
 007324C8    dd          0073288B
 007324C8    dd          0073288B
 007324C8    dd          0073266F
 00732543    mov         ecx,1
 00732548    add         ecx,ebx
>0073254A    jno         00732551
 0073254C    call        @IntOver
 00732551    dec         ecx
 00732552    cmp         ecx,8
>00732555    jbe         0073255C
 00732557    call        @BoundErr
 0073255C    inc         ecx
 0073255D    imul        ecx,ecx,29
>00732560    jno         00732567
 00732562    call        @IntOver
 00732567    add         dword ptr [ebp+ecx*4-6A0],1
>0073256F    jno         007335D2
 00732575    call        @IntOver
>0073257A    jmp         007335D2
 0073257F    mov         ecx,1
 00732584    add         ecx,ebx
>00732586    jno         0073258D
 00732588    call        @IntOver
 0073258D    dec         ecx
 0073258E    cmp         ecx,8
>00732591    jbe         00732598
 00732593    call        @BoundErr
 00732598    inc         ecx
 00732599    imul        ecx,ecx,29
>0073259C    jno         007325A3
 0073259E    call        @IntOver
 007325A3    add         dword ptr [ebp+ecx*4-69C],1
>007325AB    jno         007335D2
 007325B1    call        @IntOver
>007325B6    jmp         007335D2
 007325BB    mov         ecx,1
 007325C0    add         ecx,ebx
>007325C2    jno         007325C9
 007325C4    call        @IntOver
 007325C9    dec         ecx
 007325CA    cmp         ecx,8
>007325CD    jbe         007325D4
 007325CF    call        @BoundErr
 007325D4    inc         ecx
 007325D5    imul        ecx,ecx,29
>007325D8    jno         007325DF
 007325DA    call        @IntOver
 007325DF    add         dword ptr [ebp+ecx*4-698],1
>007325E7    jno         007335D2
 007325ED    call        @IntOver
>007325F2    jmp         007335D2
 007325F7    mov         ecx,1
 007325FC    add         ecx,ebx
>007325FE    jno         00732605
 00732600    call        @IntOver
 00732605    dec         ecx
 00732606    cmp         ecx,8
>00732609    jbe         00732610
 0073260B    call        @BoundErr
 00732610    inc         ecx
 00732611    imul        ecx,ecx,29
>00732614    jno         0073261B
 00732616    call        @IntOver
 0073261B    add         dword ptr [ebp+ecx*4-694],1
>00732623    jno         007335D2
 00732629    call        @IntOver
>0073262E    jmp         007335D2
 00732633    mov         ecx,1
 00732638    add         ecx,ebx
>0073263A    jno         00732641
 0073263C    call        @IntOver
 00732641    dec         ecx
 00732642    cmp         ecx,8
>00732645    jbe         0073264C
 00732647    call        @BoundErr
 0073264C    inc         ecx
 0073264D    imul        ecx,ecx,29
>00732650    jno         00732657
 00732652    call        @IntOver
 00732657    add         dword ptr [ebp+ecx*4-690],1
>0073265F    jno         007335D2
 00732665    call        @IntOver
>0073266A    jmp         007335D2
 0073266F    mov         ecx,1
 00732674    add         ecx,ebx
>00732676    jno         0073267D
 00732678    call        @IntOver
 0073267D    dec         ecx
 0073267E    cmp         ecx,8
>00732681    jbe         00732688
 00732683    call        @BoundErr
 00732688    inc         ecx
 00732689    imul        ecx,ecx,29
>0073268C    jno         00732693
 0073268E    call        @IntOver
 00732693    add         dword ptr [ebp+ecx*4-68C],1
>0073269B    jno         007335D2
 007326A1    call        @IntOver
>007326A6    jmp         007335D2
 007326AB    mov         ecx,1
 007326B0    add         ecx,ebx
>007326B2    jno         007326B9
 007326B4    call        @IntOver
 007326B9    dec         ecx
 007326BA    cmp         ecx,8
>007326BD    jbe         007326C4
 007326BF    call        @BoundErr
 007326C4    inc         ecx
 007326C5    imul        ecx,ecx,29
>007326C8    jno         007326CF
 007326CA    call        @IntOver
 007326CF    add         dword ptr [ebp+ecx*4-688],1
>007326D7    jno         007335D2
 007326DD    call        @IntOver
>007326E2    jmp         007335D2
 007326E7    mov         ecx,1
 007326EC    add         ecx,ebx
>007326EE    jno         007326F5
 007326F0    call        @IntOver
 007326F5    dec         ecx
 007326F6    cmp         ecx,8
>007326F9    jbe         00732700
 007326FB    call        @BoundErr
 00732700    inc         ecx
 00732701    imul        ecx,ecx,29
>00732704    jno         0073270B
 00732706    call        @IntOver
 0073270B    add         dword ptr [ebp+ecx*4-684],1
>00732713    jno         007335D2
 00732719    call        @IntOver
>0073271E    jmp         007335D2
 00732723    mov         ecx,1
 00732728    add         ecx,ebx
>0073272A    jno         00732731
 0073272C    call        @IntOver
 00732731    dec         ecx
 00732732    cmp         ecx,8
>00732735    jbe         0073273C
 00732737    call        @BoundErr
 0073273C    inc         ecx
 0073273D    imul        ecx,ecx,29
>00732740    jno         00732747
 00732742    call        @IntOver
 00732747    add         dword ptr [ebp+ecx*4-680],1
>0073274F    jno         007335D2
 00732755    call        @IntOver
>0073275A    jmp         007335D2
 0073275F    mov         ecx,1
 00732764    add         ecx,ebx
>00732766    jno         0073276D
 00732768    call        @IntOver
 0073276D    dec         ecx
 0073276E    cmp         ecx,8
>00732771    jbe         00732778
 00732773    call        @BoundErr
 00732778    inc         ecx
 00732779    imul        ecx,ecx,29
>0073277C    jno         00732783
 0073277E    call        @IntOver
 00732783    add         dword ptr [ebp+ecx*4-67C],1
>0073278B    jno         007335D2
 00732791    call        @IntOver
>00732796    jmp         007335D2
 0073279B    mov         ecx,1
 007327A0    add         ecx,ebx
>007327A2    jno         007327A9
 007327A4    call        @IntOver
 007327A9    dec         ecx
 007327AA    cmp         ecx,8
>007327AD    jbe         007327B4
 007327AF    call        @BoundErr
 007327B4    inc         ecx
 007327B5    imul        ecx,ecx,29
>007327B8    jno         007327BF
 007327BA    call        @IntOver
 007327BF    add         dword ptr [ebp+ecx*4-678],1
>007327C7    jno         007335D2
 007327CD    call        @IntOver
>007327D2    jmp         007335D2
 007327D7    mov         ecx,1
 007327DC    add         ecx,ebx
>007327DE    jno         007327E5
 007327E0    call        @IntOver
 007327E5    dec         ecx
 007327E6    cmp         ecx,8
>007327E9    jbe         007327F0
 007327EB    call        @BoundErr
 007327F0    inc         ecx
 007327F1    imul        ecx,ecx,29
>007327F4    jno         007327FB
 007327F6    call        @IntOver
 007327FB    add         dword ptr [ebp+ecx*4-678],1
>00732803    jno         007335D2
 00732809    call        @IntOver
>0073280E    jmp         007335D2
 00732813    mov         ecx,1
 00732818    add         ecx,ebx
>0073281A    jno         00732821
 0073281C    call        @IntOver
 00732821    dec         ecx
 00732822    cmp         ecx,8
>00732825    jbe         0073282C
 00732827    call        @BoundErr
 0073282C    inc         ecx
 0073282D    imul        ecx,ecx,29
>00732830    jno         00732837
 00732832    call        @IntOver
 00732837    add         dword ptr [ebp+ecx*4-674],1
>0073283F    jno         007335D2
 00732845    call        @IntOver
>0073284A    jmp         007335D2
 0073284F    mov         ecx,1
 00732854    add         ecx,ebx
>00732856    jno         0073285D
 00732858    call        @IntOver
 0073285D    dec         ecx
 0073285E    cmp         ecx,8
>00732861    jbe         00732868
 00732863    call        @BoundErr
 00732868    inc         ecx
 00732869    imul        ecx,ecx,29
>0073286C    jno         00732873
 0073286E    call        @IntOver
 00732873    add         dword ptr [ebp+ecx*4-670],1
>0073287B    jno         007335D2
 00732881    call        @IntOver
>00732886    jmp         007335D2
 0073288B    mov         ecx,1
 00732890    add         ecx,ebx
>00732892    jno         00732899
 00732894    call        @IntOver
 00732899    dec         ecx
 0073289A    cmp         ecx,8
>0073289D    jbe         007328A4
 0073289F    call        @BoundErr
 007328A4    inc         ecx
 007328A5    imul        ecx,ecx,29
>007328A8    jno         007328AF
 007328AA    call        @IntOver
 007328AF    add         dword ptr [ebp+ecx*4-66C],1
>007328B7    jno         007335D2
 007328BD    call        @IntOver
>007328C2    jmp         007335D2
 007328C7    cmp         eax,63
>007328CA    jg          007335D2
 007328D0    imul        ecx,esi,43B3
>007328D6    jno         007328DD
 007328D8    call        @IntOver
 007328DD    mov         esi,dword ptr [ebp-0C]
 007328E0    lea         ecx,[esi+ecx*4]
 007328E3    push        ecx
 007328E4    cmp         edx,1
>007328E7    jbe         007328EE
 007328E9    call        @BoundErr
 007328EE    imul        ecx,edx,43B3
>007328F4    jno         007328FB
 007328F6    call        @IntOver
 007328FB    pop         esi
 007328FC    lea         ecx,[esi+ecx*2]
 007328FF    push        ecx
 00732900    dec         eax
 00732901    cmp         eax,9E
>00732906    jbe         0073290D
 00732908    call        @BoundErr
 0073290D    inc         eax
 0073290E    imul        ecx,eax,6D
>00732911    jno         00732918
 00732913    call        @IntOver
 00732918    pop         esi
 00732919    movzx       ecx,byte ptr [esi+ecx*2-0CC]
 00732921    cmp         ecx,0F
>00732924    ja          007335D2
 0073292A    jmp         dword ptr [ecx*4+732931]
 0073292A    dd          007335D2
 0073292A    dd          00732971
 0073292A    dd          007329AD
 0073292A    dd          007329E9
 0073292A    dd          00732B8D
 0073292A    dd          00732BC9
 0073292A    dd          00732C05
 0073292A    dd          00732C41
 0073292A    dd          00732A25
 0073292A    dd          00732B15
 0073292A    dd          00732B51
 0073292A    dd          00732A61
 0073292A    dd          00732C41
 0073292A    dd          00732A9D
 0073292A    dd          00732AD9
 0073292A    dd          007329AD
 00732971    mov         ecx,1
 00732976    add         ecx,ebx
>00732978    jno         0073297F
 0073297A    call        @IntOver
 0073297F    dec         ecx
 00732980    cmp         ecx,8
>00732983    jbe         0073298A
 00732985    call        @BoundErr
 0073298A    inc         ecx
 0073298B    imul        ecx,ecx,29
>0073298E    jno         00732995
 00732990    call        @IntOver
 00732995    add         dword ptr [ebp+ecx*4-664],1
>0073299D    jno         007335D2
 007329A3    call        @IntOver
>007329A8    jmp         007335D2
 007329AD    mov         ecx,1
 007329B2    add         ecx,ebx
>007329B4    jno         007329BB
 007329B6    call        @IntOver
 007329BB    dec         ecx
 007329BC    cmp         ecx,8
>007329BF    jbe         007329C6
 007329C1    call        @BoundErr
 007329C6    inc         ecx
 007329C7    imul        ecx,ecx,29
>007329CA    jno         007329D1
 007329CC    call        @IntOver
 007329D1    add         dword ptr [ebp+ecx*4-660],1
>007329D9    jno         007335D2
 007329DF    call        @IntOver
>007329E4    jmp         007335D2
 007329E9    mov         ecx,1
 007329EE    add         ecx,ebx
>007329F0    jno         007329F7
 007329F2    call        @IntOver
 007329F7    dec         ecx
 007329F8    cmp         ecx,8
>007329FB    jbe         00732A02
 007329FD    call        @BoundErr
 00732A02    inc         ecx
 00732A03    imul        ecx,ecx,29
>00732A06    jno         00732A0D
 00732A08    call        @IntOver
 00732A0D    add         dword ptr [ebp+ecx*4-65C],1
>00732A15    jno         007335D2
 00732A1B    call        @IntOver
>00732A20    jmp         007335D2
 00732A25    mov         ecx,1
 00732A2A    add         ecx,ebx
>00732A2C    jno         00732A33
 00732A2E    call        @IntOver
 00732A33    dec         ecx
 00732A34    cmp         ecx,8
>00732A37    jbe         00732A3E
 00732A39    call        @BoundErr
 00732A3E    inc         ecx
 00732A3F    imul        ecx,ecx,29
>00732A42    jno         00732A49
 00732A44    call        @IntOver
 00732A49    add         dword ptr [ebp+ecx*4-658],1
>00732A51    jno         007335D2
 00732A57    call        @IntOver
>00732A5C    jmp         007335D2
 00732A61    mov         ecx,1
 00732A66    add         ecx,ebx
>00732A68    jno         00732A6F
 00732A6A    call        @IntOver
 00732A6F    dec         ecx
 00732A70    cmp         ecx,8
>00732A73    jbe         00732A7A
 00732A75    call        @BoundErr
 00732A7A    inc         ecx
 00732A7B    imul        ecx,ecx,29
>00732A7E    jno         00732A85
 00732A80    call        @IntOver
 00732A85    add         dword ptr [ebp+ecx*4-654],1
>00732A8D    jno         007335D2
 00732A93    call        @IntOver
>00732A98    jmp         007335D2
 00732A9D    mov         ecx,1
 00732AA2    add         ecx,ebx
>00732AA4    jno         00732AAB
 00732AA6    call        @IntOver
 00732AAB    dec         ecx
 00732AAC    cmp         ecx,8
>00732AAF    jbe         00732AB6
 00732AB1    call        @BoundErr
 00732AB6    inc         ecx
 00732AB7    imul        ecx,ecx,29
>00732ABA    jno         00732AC1
 00732ABC    call        @IntOver
 00732AC1    add         dword ptr [ebp+ecx*4-654],1
>00732AC9    jno         007335D2
 00732ACF    call        @IntOver
>00732AD4    jmp         007335D2
 00732AD9    mov         ecx,1
 00732ADE    add         ecx,ebx
>00732AE0    jno         00732AE7
 00732AE2    call        @IntOver
 00732AE7    dec         ecx
 00732AE8    cmp         ecx,8
>00732AEB    jbe         00732AF2
 00732AED    call        @BoundErr
 00732AF2    inc         ecx
 00732AF3    imul        ecx,ecx,29
>00732AF6    jno         00732AFD
 00732AF8    call        @IntOver
 00732AFD    add         dword ptr [ebp+ecx*4-654],1
>00732B05    jno         007335D2
 00732B0B    call        @IntOver
>00732B10    jmp         007335D2
 00732B15    mov         ecx,1
 00732B1A    add         ecx,ebx
>00732B1C    jno         00732B23
 00732B1E    call        @IntOver
 00732B23    dec         ecx
 00732B24    cmp         ecx,8
>00732B27    jbe         00732B2E
 00732B29    call        @BoundErr
 00732B2E    inc         ecx
 00732B2F    imul        ecx,ecx,29
>00732B32    jno         00732B39
 00732B34    call        @IntOver
 00732B39    add         dword ptr [ebp+ecx*4-650],1
>00732B41    jno         007335D2
 00732B47    call        @IntOver
>00732B4C    jmp         007335D2
 00732B51    mov         ecx,1
 00732B56    add         ecx,ebx
>00732B58    jno         00732B5F
 00732B5A    call        @IntOver
 00732B5F    dec         ecx
 00732B60    cmp         ecx,8
>00732B63    jbe         00732B6A
 00732B65    call        @BoundErr
 00732B6A    inc         ecx
 00732B6B    imul        ecx,ecx,29
>00732B6E    jno         00732B75
 00732B70    call        @IntOver
 00732B75    add         dword ptr [ebp+ecx*4-64C],1
>00732B7D    jno         007335D2
 00732B83    call        @IntOver
>00732B88    jmp         007335D2
 00732B8D    mov         ecx,1
 00732B92    add         ecx,ebx
>00732B94    jno         00732B9B
 00732B96    call        @IntOver
 00732B9B    dec         ecx
 00732B9C    cmp         ecx,8
>00732B9F    jbe         00732BA6
 00732BA1    call        @BoundErr
 00732BA6    inc         ecx
 00732BA7    imul        ecx,ecx,29
>00732BAA    jno         00732BB1
 00732BAC    call        @IntOver
 00732BB1    add         dword ptr [ebp+ecx*4-648],1
>00732BB9    jno         007335D2
 00732BBF    call        @IntOver
>00732BC4    jmp         007335D2
 00732BC9    mov         ecx,1
 00732BCE    add         ecx,ebx
>00732BD0    jno         00732BD7
 00732BD2    call        @IntOver
 00732BD7    dec         ecx
 00732BD8    cmp         ecx,8
>00732BDB    jbe         00732BE2
 00732BDD    call        @BoundErr
 00732BE2    inc         ecx
 00732BE3    imul        ecx,ecx,29
>00732BE6    jno         00732BED
 00732BE8    call        @IntOver
 00732BED    add         dword ptr [ebp+ecx*4-644],1
>00732BF5    jno         007335D2
 00732BFB    call        @IntOver
>00732C00    jmp         007335D2
 00732C05    mov         ecx,1
 00732C0A    add         ecx,ebx
>00732C0C    jno         00732C13
 00732C0E    call        @IntOver
 00732C13    dec         ecx
 00732C14    cmp         ecx,8
>00732C17    jbe         00732C1E
 00732C19    call        @BoundErr
 00732C1E    inc         ecx
 00732C1F    imul        ecx,ecx,29
>00732C22    jno         00732C29
 00732C24    call        @IntOver
 00732C29    add         dword ptr [ebp+ecx*4-640],1
>00732C31    jno         007335D2
 00732C37    call        @IntOver
>00732C3C    jmp         007335D2
 00732C41    mov         ecx,1
 00732C46    add         ecx,ebx
>00732C48    jno         00732C4F
 00732C4A    call        @IntOver
 00732C4F    dec         ecx
 00732C50    cmp         ecx,8
>00732C53    jbe         00732C5A
 00732C55    call        @BoundErr
 00732C5A    inc         ecx
 00732C5B    imul        ecx,ecx,29
>00732C5E    jno         00732C65
 00732C60    call        @IntOver
 00732C65    add         dword ptr [ebp+ecx*4-63C],1
>00732C6D    jno         007335D2
 00732C73    call        @IntOver
>00732C78    jmp         007335D2
 00732C7D    cmp         eax,10
>00732C80    jg          007335D2
 00732C86    test        edx,edx
>00732C88    jg          007335D2
 00732C8E    imul        ecx,esi,43B3
>00732C94    jno         00732C9B
 00732C96    call        @IntOver
 00732C9B    mov         esi,dword ptr [ebp-0C]
 00732C9E    lea         ecx,[esi+ecx*4]
 00732CA1    push        ecx
 00732CA2    cmp         edx,1
>00732CA5    jbe         00732CAC
 00732CA7    call        @BoundErr
 00732CAC    imul        ecx,edx,43B3
>00732CB2    jno         00732CB9
 00732CB4    call        @IntOver
 00732CB9    pop         esi
 00732CBA    lea         ecx,[esi+ecx*2]
 00732CBD    push        ecx
 00732CBE    dec         eax
 00732CBF    cmp         eax,9E
>00732CC4    jbe         00732CCB
 00732CC6    call        @BoundErr
 00732CCB    inc         eax
 00732CCC    imul        ecx,eax,6D
>00732CCF    jno         00732CD6
 00732CD1    call        @IntOver
 00732CD6    pop         esi
 00732CD7    movzx       ecx,byte ptr [esi+ecx*2-0CB]
 00732CDF    sub         cl,1
>00732CE2    jb          007335D2
 00732CE8    mov         ecx,1
 00732CED    add         ecx,ebx
>00732CEF    jno         00732CF6
 00732CF1    call        @IntOver
 00732CF6    dec         ecx
 00732CF7    cmp         ecx,8
>00732CFA    jbe         00732D01
 00732CFC    call        @BoundErr
 00732D01    inc         ecx
 00732D02    imul        ecx,ecx,29
>00732D05    jno         00732D0C
 00732D07    call        @IntOver
 00732D0C    add         dword ptr [ebp+ecx*4-604],1
>00732D14    jno         007335D2
 00732D1A    call        @IntOver
>00732D1F    jmp         007335D2
 00732D24    cmp         eax,9F
>00732D29    jg          007335D2
 00732D2F    imul        ecx,esi,43B3
>00732D35    jno         00732D3C
 00732D37    call        @IntOver
 00732D3C    mov         esi,dword ptr [ebp-0C]
 00732D3F    lea         ecx,[esi+ecx*4]
 00732D42    push        ecx
 00732D43    cmp         edx,1
>00732D46    jbe         00732D4D
 00732D48    call        @BoundErr
 00732D4D    imul        ecx,edx,43B3
>00732D53    jno         00732D5A
 00732D55    call        @IntOver
 00732D5A    pop         esi
 00732D5B    lea         ecx,[esi+ecx*2]
 00732D5E    push        ecx
 00732D5F    dec         eax
 00732D60    cmp         eax,9E
>00732D65    jbe         00732D6C
 00732D67    call        @BoundErr
 00732D6C    inc         eax
 00732D6D    imul        ecx,eax,6D
>00732D70    jno         00732D77
 00732D72    call        @IntOver
 00732D77    pop         esi
 00732D78    movzx       ecx,byte ptr [esi+ecx*2-0CB]
 00732D80    sub         cl,1
>00732D83    jb          00733232
>00732D89    jne         007335D2
 00732D8F    cmp         ebx,7
>00732D92    jbe         00732D99
 00732D94    call        @BoundErr
 00732D99    imul        ecx,ebx,43B3
>00732D9F    jno         00732DA6
 00732DA1    call        @IntOver
 00732DA6    mov         esi,dword ptr [ebp-0C]
 00732DA9    lea         ecx,[esi+ecx*4]
 00732DAC    push        ecx
 00732DAD    cmp         edx,1
>00732DB0    jbe         00732DB7
 00732DB2    call        @BoundErr
 00732DB7    imul        ecx,edx,43B3
>00732DBD    jno         00732DC4
 00732DBF    call        @IntOver
 00732DC4    pop         esi
 00732DC5    lea         ecx,[esi+ecx*2]
 00732DC8    push        ecx
 00732DC9    dec         eax
 00732DCA    cmp         eax,9E
>00732DCF    jbe         00732DD6
 00732DD1    call        @BoundErr
 00732DD6    inc         eax
 00732DD7    imul        ecx,eax,6D
>00732DDA    jno         00732DE1
 00732DDC    call        @IntOver
 00732DE1    pop         esi
 00732DE2    movzx       ecx,byte ptr [esi+ecx*2-0CC]
 00732DEA    cmp         ecx,2C
>00732DED    ja          007335D2
 00732DF3    movzx       ecx,byte ptr [ecx+732E01]
 00732DFA    jmp         dword ptr [ecx*4+732E2E]
 00732DFA    db          0
 00732DFA    db          1
 00732DFA    db          2
 00732DFA    db          2
 00732DFA    db          3
 00732DFA    db          3
 00732DFA    db          3
 00732DFA    db          4
 00732DFA    db          4
 00732DFA    db          4
 00732DFA    db          5
 00732DFA    db          6
 00732DFA    db          6
 00732DFA    db          7
 00732DFA    db          0
 00732DFA    db          0
 00732DFA    db          8
 00732DFA    db          8
 00732DFA    db          9
 00732DFA    db          9
 00732DFA    db          9
 00732DFA    db          9
 00732DFA    db          9
 00732DFA    db          9
 00732DFA    db          10
 00732DFA    db          11
 00732DFA    db          11
 00732DFA    db          11
 00732DFA    db          12
 00732DFA    db          10
 00732DFA    db          9
 00732DFA    db          0
 00732DFA    db          13
 00732DFA    db          13
 00732DFA    db          14
 00732DFA    db          14
 00732DFA    db          15
 00732DFA    db          0
 00732DFA    db          0
 00732DFA    db          0
 00732DFA    db          16
 00732DFA    db          16
 00732DFA    db          16
 00732DFA    db          16
 00732DFA    db          16
 00732DFA    dd          007335D2
 00732DFA    dd          00732E72
 00732DFA    dd          00732EAE
 00732DFA    dd          00732EEA
 00732DFA    dd          00732F26
 00732DFA    dd          00732F62
 00732DFA    dd          00732F9E
 00732DFA    dd          00732FDA
 00732DFA    dd          00733016
 00732DFA    dd          00733052
 00732DFA    dd          0073308E
 00732DFA    dd          007330CA
 00732DFA    dd          00733106
 00732DFA    dd          00733142
 00732DFA    dd          0073317E
 00732DFA    dd          007331BA
 00732DFA    dd          007331F6
 00732E72    mov         ecx,1
 00732E77    add         ecx,ebx
>00732E79    jno         00732E80
 00732E7B    call        @IntOver
 00732E80    dec         ecx
 00732E81    cmp         ecx,8
>00732E84    jbe         00732E8B
 00732E86    call        @BoundErr
 00732E8B    inc         ecx
 00732E8C    imul        ecx,ecx,29
>00732E8F    jno         00732E96
 00732E91    call        @IntOver
 00732E96    add         dword ptr [ebp+ecx*4-634],1
>00732E9E    jno         007335D2
 00732EA4    call        @IntOver
>00732EA9    jmp         007335D2
 00732EAE    mov         ecx,1
 00732EB3    add         ecx,ebx
>00732EB5    jno         00732EBC
 00732EB7    call        @IntOver
 00732EBC    dec         ecx
 00732EBD    cmp         ecx,8
>00732EC0    jbe         00732EC7
 00732EC2    call        @BoundErr
 00732EC7    inc         ecx
 00732EC8    imul        ecx,ecx,29
>00732ECB    jno         00732ED2
 00732ECD    call        @IntOver
 00732ED2    add         dword ptr [ebp+ecx*4-630],1
>00732EDA    jno         007335D2
 00732EE0    call        @IntOver
>00732EE5    jmp         007335D2
 00732EEA    mov         ecx,1
 00732EEF    add         ecx,ebx
>00732EF1    jno         00732EF8
 00732EF3    call        @IntOver
 00732EF8    dec         ecx
 00732EF9    cmp         ecx,8
>00732EFC    jbe         00732F03
 00732EFE    call        @BoundErr
 00732F03    inc         ecx
 00732F04    imul        ecx,ecx,29
>00732F07    jno         00732F0E
 00732F09    call        @IntOver
 00732F0E    add         dword ptr [ebp+ecx*4-628],1
>00732F16    jno         007335D2
 00732F1C    call        @IntOver
>00732F21    jmp         007335D2
 00732F26    mov         ecx,1
 00732F2B    add         ecx,ebx
>00732F2D    jno         00732F34
 00732F2F    call        @IntOver
 00732F34    dec         ecx
 00732F35    cmp         ecx,8
>00732F38    jbe         00732F3F
 00732F3A    call        @BoundErr
 00732F3F    inc         ecx
 00732F40    imul        ecx,ecx,29
>00732F43    jno         00732F4A
 00732F45    call        @IntOver
 00732F4A    add         dword ptr [ebp+ecx*4-62C],1
>00732F52    jno         007335D2
 00732F58    call        @IntOver
>00732F5D    jmp         007335D2
 00732F62    mov         ecx,1
 00732F67    add         ecx,ebx
>00732F69    jno         00732F70
 00732F6B    call        @IntOver
 00732F70    dec         ecx
 00732F71    cmp         ecx,8
>00732F74    jbe         00732F7B
 00732F76    call        @BoundErr
 00732F7B    inc         ecx
 00732F7C    imul        ecx,ecx,29
>00732F7F    jno         00732F86
 00732F81    call        @IntOver
 00732F86    add         dword ptr [ebp+ecx*4-624],1
>00732F8E    jno         007335D2
 00732F94    call        @IntOver
>00732F99    jmp         007335D2
 00732F9E    mov         ecx,1
 00732FA3    add         ecx,ebx
>00732FA5    jno         00732FAC
 00732FA7    call        @IntOver
 00732FAC    dec         ecx
 00732FAD    cmp         ecx,8
>00732FB0    jbe         00732FB7
 00732FB2    call        @BoundErr
 00732FB7    inc         ecx
 00732FB8    imul        ecx,ecx,29
>00732FBB    jno         00732FC2
 00732FBD    call        @IntOver
 00732FC2    add         dword ptr [ebp+ecx*4-620],1
>00732FCA    jno         007335D2
 00732FD0    call        @IntOver
>00732FD5    jmp         007335D2
 00732FDA    mov         ecx,1
 00732FDF    add         ecx,ebx
>00732FE1    jno         00732FE8
 00732FE3    call        @IntOver
 00732FE8    dec         ecx
 00732FE9    cmp         ecx,8
>00732FEC    jbe         00732FF3
 00732FEE    call        @BoundErr
 00732FF3    inc         ecx
 00732FF4    imul        ecx,ecx,29
>00732FF7    jno         00732FFE
 00732FF9    call        @IntOver
 00732FFE    add         dword ptr [ebp+ecx*4-624],1
>00733006    jno         007335D2
 0073300C    call        @IntOver
>00733011    jmp         007335D2
 00733016    mov         ecx,1
 0073301B    add         ecx,ebx
>0073301D    jno         00733024
 0073301F    call        @IntOver
 00733024    dec         ecx
 00733025    cmp         ecx,8
>00733028    jbe         0073302F
 0073302A    call        @BoundErr
 0073302F    inc         ecx
 00733030    imul        ecx,ecx,29
>00733033    jno         0073303A
 00733035    call        @IntOver
 0073303A    add         dword ptr [ebp+ecx*4-618],1
>00733042    jno         007335D2
 00733048    call        @IntOver
>0073304D    jmp         007335D2
 00733052    mov         ecx,1
 00733057    add         ecx,ebx
>00733059    jno         00733060
 0073305B    call        @IntOver
 00733060    dec         ecx
 00733061    cmp         ecx,8
>00733064    jbe         0073306B
 00733066    call        @BoundErr
 0073306B    inc         ecx
 0073306C    imul        ecx,ecx,29
>0073306F    jno         00733076
 00733071    call        @IntOver
 00733076    add         dword ptr [ebp+ecx*4-614],1
>0073307E    jno         007335D2
 00733084    call        @IntOver
>00733089    jmp         007335D2
 0073308E    mov         ecx,1
 00733093    add         ecx,ebx
>00733095    jno         0073309C
 00733097    call        @IntOver
 0073309C    dec         ecx
 0073309D    cmp         ecx,8
>007330A0    jbe         007330A7
 007330A2    call        @BoundErr
 007330A7    inc         ecx
 007330A8    imul        ecx,ecx,29
>007330AB    jno         007330B2
 007330AD    call        @IntOver
 007330B2    add         dword ptr [ebp+ecx*4-610],1
>007330BA    jno         007335D2
 007330C0    call        @IntOver
>007330C5    jmp         007335D2
 007330CA    mov         ecx,1
 007330CF    add         ecx,ebx
>007330D1    jno         007330D8
 007330D3    call        @IntOver
 007330D8    dec         ecx
 007330D9    cmp         ecx,8
>007330DC    jbe         007330E3
 007330DE    call        @BoundErr
 007330E3    inc         ecx
 007330E4    imul        ecx,ecx,29
>007330E7    jno         007330EE
 007330E9    call        @IntOver
 007330EE    add         dword ptr [ebp+ecx*4-614],1
>007330F6    jno         007335D2
 007330FC    call        @IntOver
>00733101    jmp         007335D2
 00733106    mov         ecx,1
 0073310B    add         ecx,ebx
>0073310D    jno         00733114
 0073310F    call        @IntOver
 00733114    dec         ecx
 00733115    cmp         ecx,8
>00733118    jbe         0073311F
 0073311A    call        @BoundErr
 0073311F    inc         ecx
 00733120    imul        ecx,ecx,29
>00733123    jno         0073312A
 00733125    call        @IntOver
 0073312A    add         dword ptr [ebp+ecx*4-610],1
>00733132    jno         007335D2
 00733138    call        @IntOver
>0073313D    jmp         007335D2
 00733142    mov         ecx,1
 00733147    add         ecx,ebx
>00733149    jno         00733150
 0073314B    call        @IntOver
 00733150    dec         ecx
 00733151    cmp         ecx,8
>00733154    jbe         0073315B
 00733156    call        @BoundErr
 0073315B    inc         ecx
 0073315C    imul        ecx,ecx,29
>0073315F    jno         00733166
 00733161    call        @IntOver
 00733166    add         dword ptr [ebp+ecx*4-61C],1
>0073316E    jno         007335D2
 00733174    call        @IntOver
>00733179    jmp         007335D2
 0073317E    mov         ecx,1
 00733183    add         ecx,ebx
>00733185    jno         0073318C
 00733187    call        @IntOver
 0073318C    dec         ecx
 0073318D    cmp         ecx,8
>00733190    jbe         00733197
 00733192    call        @BoundErr
 00733197    inc         ecx
 00733198    imul        ecx,ecx,29
>0073319B    jno         007331A2
 0073319D    call        @IntOver
 007331A2    add         dword ptr [ebp+ecx*4-614],1
>007331AA    jno         007335D2
 007331B0    call        @IntOver
>007331B5    jmp         007335D2
 007331BA    mov         ecx,1
 007331BF    add         ecx,ebx
>007331C1    jno         007331C8
 007331C3    call        @IntOver
 007331C8    dec         ecx
 007331C9    cmp         ecx,8
>007331CC    jbe         007331D3
 007331CE    call        @BoundErr
 007331D3    inc         ecx
 007331D4    imul        ecx,ecx,29
>007331D7    jno         007331DE
 007331D9    call        @IntOver
 007331DE    add         dword ptr [ebp+ecx*4-610],1
>007331E6    jno         007335D2
 007331EC    call        @IntOver
>007331F1    jmp         007335D2
 007331F6    mov         ecx,1
 007331FB    add         ecx,ebx
>007331FD    jno         00733204
 007331FF    call        @IntOver
 00733204    dec         ecx
 00733205    cmp         ecx,8
>00733208    jbe         0073320F
 0073320A    call        @BoundErr
 0073320F    inc         ecx
 00733210    imul        ecx,ecx,29
>00733213    jno         0073321A
 00733215    call        @IntOver
 0073321A    add         dword ptr [ebp+ecx*4-60C],1
>00733222    jno         007335D2
 00733228    call        @IntOver
>0073322D    jmp         007335D2
 00733232    cmp         ebx,7
>00733235    jbe         0073323C
 00733237    call        @BoundErr
 0073323C    imul        ecx,ebx,43B3
>00733242    jno         00733249
 00733244    call        @IntOver
 00733249    mov         esi,dword ptr [ebp-0C]
 0073324C    lea         ecx,[esi+ecx*4]
 0073324F    push        ecx
 00733250    cmp         edx,1
>00733253    jbe         0073325A
 00733255    call        @BoundErr
 0073325A    imul        ecx,edx,43B3
>00733260    jno         00733267
 00733262    call        @IntOver
 00733267    pop         esi
 00733268    lea         ecx,[esi+ecx*2]
 0073326B    push        ecx
 0073326C    dec         eax
 0073326D    cmp         eax,9E
>00733272    jbe         00733279
 00733274    call        @BoundErr
 00733279    inc         eax
 0073327A    imul        ecx,eax,6D
>0073327D    jno         00733284
 0073327F    call        @IntOver
 00733284    pop         esi
 00733285    movzx       ecx,byte ptr [esi+ecx*2-0CC]
 0073328D    cmp         ecx,0F
>00733290    ja          007335D2
 00733296    jmp         dword ptr [ecx*4+73329D]
 00733296    dd          007335D2
 00733296    dd          007332DD
 00733296    dd          00733319
 00733296    dd          00733355
 00733296    dd          007334F9
 00733296    dd          00733535
 00733296    dd          0073356A
 00733296    dd          0073359F
 00733296    dd          00733391
 00733296    dd          00733481
 00733296    dd          007334BD
 00733296    dd          007333CD
 00733296    dd          0073359F
 00733296    dd          00733409
 00733296    dd          00733445
 00733296    dd          00733319
 007332DD    mov         ecx,1
 007332E2    add         ecx,ebx
>007332E4    jno         007332EB
 007332E6    call        @IntOver
 007332EB    dec         ecx
 007332EC    cmp         ecx,8
>007332EF    jbe         007332F6
 007332F1    call        @BoundErr
 007332F6    inc         ecx
 007332F7    imul        ecx,ecx,29
>007332FA    jno         00733301
 007332FC    call        @IntOver
 00733301    add         dword ptr [ebp+ecx*4-664],1
>00733309    jno         007335D2
 0073330F    call        @IntOver
>00733314    jmp         007335D2
 00733319    mov         ecx,1
 0073331E    add         ecx,ebx
>00733320    jno         00733327
 00733322    call        @IntOver
 00733327    dec         ecx
 00733328    cmp         ecx,8
>0073332B    jbe         00733332
 0073332D    call        @BoundErr
 00733332    inc         ecx
 00733333    imul        ecx,ecx,29
>00733336    jno         0073333D
 00733338    call        @IntOver
 0073333D    add         dword ptr [ebp+ecx*4-660],1
>00733345    jno         007335D2
 0073334B    call        @IntOver
>00733350    jmp         007335D2
 00733355    mov         ecx,1
 0073335A    add         ecx,ebx
>0073335C    jno         00733363
 0073335E    call        @IntOver
 00733363    dec         ecx
 00733364    cmp         ecx,8
>00733367    jbe         0073336E
 00733369    call        @BoundErr
 0073336E    inc         ecx
 0073336F    imul        ecx,ecx,29
>00733372    jno         00733379
 00733374    call        @IntOver
 00733379    add         dword ptr [ebp+ecx*4-65C],1
>00733381    jno         007335D2
 00733387    call        @IntOver
>0073338C    jmp         007335D2
 00733391    mov         ecx,1
 00733396    add         ecx,ebx
>00733398    jno         0073339F
 0073339A    call        @IntOver
 0073339F    dec         ecx
 007333A0    cmp         ecx,8
>007333A3    jbe         007333AA
 007333A5    call        @BoundErr
 007333AA    inc         ecx
 007333AB    imul        ecx,ecx,29
>007333AE    jno         007333B5
 007333B0    call        @IntOver
 007333B5    add         dword ptr [ebp+ecx*4-658],1
>007333BD    jno         007335D2
 007333C3    call        @IntOver
>007333C8    jmp         007335D2
 007333CD    mov         ecx,1
 007333D2    add         ecx,ebx
>007333D4    jno         007333DB
 007333D6    call        @IntOver
 007333DB    dec         ecx
 007333DC    cmp         ecx,8
>007333DF    jbe         007333E6
 007333E1    call        @BoundErr
 007333E6    inc         ecx
 007333E7    imul        ecx,ecx,29
>007333EA    jno         007333F1
 007333EC    call        @IntOver
 007333F1    add         dword ptr [ebp+ecx*4-654],1
>007333F9    jno         007335D2
 007333FF    call        @IntOver
>00733404    jmp         007335D2
 00733409    mov         ecx,1
 0073340E    add         ecx,ebx
>00733410    jno         00733417
 00733412    call        @IntOver
 00733417    dec         ecx
 00733418    cmp         ecx,8
>0073341B    jbe         00733422
 0073341D    call        @BoundErr
 00733422    inc         ecx
 00733423    imul        ecx,ecx,29
>00733426    jno         0073342D
 00733428    call        @IntOver
 0073342D    add         dword ptr [ebp+ecx*4-654],1
>00733435    jno         007335D2
 0073343B    call        @IntOver
>00733440    jmp         007335D2
 00733445    mov         ecx,1
 0073344A    add         ecx,ebx
>0073344C    jno         00733453
 0073344E    call        @IntOver
 00733453    dec         ecx
 00733454    cmp         ecx,8
>00733457    jbe         0073345E
 00733459    call        @BoundErr
 0073345E    inc         ecx
 0073345F    imul        ecx,ecx,29
>00733462    jno         00733469
 00733464    call        @IntOver
 00733469    add         dword ptr [ebp+ecx*4-654],1
>00733471    jno         007335D2
 00733477    call        @IntOver
>0073347C    jmp         007335D2
 00733481    mov         ecx,1
 00733486    add         ecx,ebx
>00733488    jno         0073348F
 0073348A    call        @IntOver
 0073348F    dec         ecx
 00733490    cmp         ecx,8
>00733493    jbe         0073349A
 00733495    call        @BoundErr
 0073349A    inc         ecx
 0073349B    imul        ecx,ecx,29
>0073349E    jno         007334A5
 007334A0    call        @IntOver
 007334A5    add         dword ptr [ebp+ecx*4-650],1
>007334AD    jno         007335D2
 007334B3    call        @IntOver
>007334B8    jmp         007335D2
 007334BD    mov         ecx,1
 007334C2    add         ecx,ebx
>007334C4    jno         007334CB
 007334C6    call        @IntOver
 007334CB    dec         ecx
 007334CC    cmp         ecx,8
>007334CF    jbe         007334D6
 007334D1    call        @BoundErr
 007334D6    inc         ecx
 007334D7    imul        ecx,ecx,29
>007334DA    jno         007334E1
 007334DC    call        @IntOver
 007334E1    add         dword ptr [ebp+ecx*4-64C],1
>007334E9    jno         007335D2
 007334EF    call        @IntOver
>007334F4    jmp         007335D2
 007334F9    mov         ecx,1
 007334FE    add         ecx,ebx
>00733500    jno         00733507
 00733502    call        @IntOver
 00733507    dec         ecx
 00733508    cmp         ecx,8
>0073350B    jbe         00733512
 0073350D    call        @BoundErr
 00733512    inc         ecx
 00733513    imul        ecx,ecx,29
>00733516    jno         0073351D
 00733518    call        @IntOver
 0073351D    add         dword ptr [ebp+ecx*4-648],1
>00733525    jno         007335D2
 0073352B    call        @IntOver
>00733530    jmp         007335D2
 00733535    mov         ecx,1
 0073353A    add         ecx,ebx
>0073353C    jno         00733543
 0073353E    call        @IntOver
 00733543    dec         ecx
 00733544    cmp         ecx,8
>00733547    jbe         0073354E
 00733549    call        @BoundErr
 0073354E    inc         ecx
 0073354F    imul        ecx,ecx,29
>00733552    jno         00733559
 00733554    call        @IntOver
 00733559    add         dword ptr [ebp+ecx*4-644],1
>00733561    jno         007335D2
 00733563    call        @IntOver
>00733568    jmp         007335D2
 0073356A    mov         ecx,1
 0073356F    add         ecx,ebx
>00733571    jno         00733578
 00733573    call        @IntOver
 00733578    dec         ecx
 00733579    cmp         ecx,8
>0073357C    jbe         00733583
 0073357E    call        @BoundErr
 00733583    inc         ecx
 00733584    imul        ecx,ecx,29
>00733587    jno         0073358E
 00733589    call        @IntOver
 0073358E    add         dword ptr [ebp+ecx*4-640],1
>00733596    jno         007335D2
 00733598    call        @IntOver
>0073359D    jmp         007335D2
 0073359F    mov         ecx,1
 007335A4    add         ecx,ebx
>007335A6    jno         007335AD
 007335A8    call        @IntOver
 007335AD    dec         ecx
 007335AE    cmp         ecx,8
>007335B1    jbe         007335B8
 007335B3    call        @BoundErr
 007335B8    inc         ecx
 007335B9    imul        ecx,ecx,29
>007335BC    jno         007335C3
 007335BE    call        @IntOver
 007335C3    add         dword ptr [ebp+ecx*4-63C],1
>007335CB    jno         007335D2
 007335CD    call        @IntOver
 007335D2    inc         eax
 007335D3    cmp         eax,0A0
>007335D8    jne         00732427
 007335DE    inc         edx
 007335DF    cmp         edx,2
>007335E2    jne         00732422
 007335E8    inc         ebx
 007335E9    dec         dword ptr [ebp-10]
>007335EC    jne         00732405
 007335F2    mov         edi,28
 007335F7    lea         esi,[ebp-5F8]
 007335FD    mov         eax,dword ptr [ebp-8]
 00733600    call        006A344C
 00733605    movzx       eax,al
 00733608    test        eax,eax
>0073360A    jle         0073366A
 0073360C    mov         dword ptr [ebp-10],eax
 0073360F    mov         ebx,1
 00733614    dec         ebx
 00733615    cmp         ebx,8
>00733618    jbe         0073361F
 0073361A    call        @BoundErr
 0073361F    inc         ebx
 00733620    imul        eax,ebx,29
>00733623    jno         0073362A
 00733625    call        @IntOver
 0073362A    mov         edx,dword ptr [esi+eax*4-0A8]
 00733631    add         dword ptr [ebp+eax*4-600],edx
>00733638    jno         0073363F
 0073363A    call        @IntOver
 0073363F    mov         edx,dword ptr [esi+eax*4-0A8]
 00733646    add         dword ptr [esi+51C],edx
>0073364C    jno         00733653
 0073364E    call        @IntOver
 00733653    mov         eax,dword ptr [esi+eax*4-0A8]
 0073365A    add         dword ptr [ebp-3C],eax
>0073365D    jno         00733664
 0073365F    call        @IntOver
 00733664    inc         ebx
 00733665    dec         dword ptr [ebp-10]
>00733668    jne         00733614
 0073366A    add         esi,4
 0073366D    dec         edi
>0073366E    jne         007335FD
 00733670    mov         eax,dword ptr [ebp-4]
 00733673    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733679    mov         edx,dword ptr [eax]
 0073367B    call        dword ptr [edx+114];TCustomListView.Clear
 00733681    mov         eax,dword ptr [ebp-4]
 00733684    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 0073368A    xor         edx,edx
 0073368C    call        TCustomListView.GetColumnFromIndex
 00733691    mov         edx,dword ptr [ebp-4]
 00733694    mov         edx,dword ptr [edx+2C4];TFXADSummaryFrame.strFXSumDeviceType:string
 0073369A    call        TListColumn.SetCaption
 0073369F    mov         ebx,1
 007336A4    mov         eax,ebx
 007336A6    sub         eax,1
>007336A9    jno         007336B0
 007336AB    call        @IntOver
 007336B0    cmp         eax,7
>007336B3    jbe         007336BA
 007336B5    call        @BoundErr
 007336BA    cmp         dword ptr [ebp+eax*4-61C],0
>007336C2    je          00733726
 007336C4    mov         eax,dword ptr [ebp-8]
 007336C7    call        006A3430
 007336CC    movzx       eax,al
 007336CF    add         eax,ebx
>007336D1    jno         007336D8
 007336D3    call        @IntOver
 007336D8    sub         eax,1
>007336DB    jno         007336E2
 007336DD    call        @IntOver
 007336E2    lea         edx,[ebp-624]
 007336E8    call        IntToStr
 007336ED    mov         ecx,dword ptr [ebp-624]
 007336F3    mov         eax,dword ptr [ebp-4]
 007336F6    mov         edx,dword ptr [eax+2C0];TFXADSummaryFrame.strLoop:string
 007336FC    lea         eax,[ebp-620]
 00733702    call        @UStrCat3
 00733707    mov         eax,dword ptr [ebp-620]
 0073370D    push        eax
 0073370E    mov         eax,dword ptr [ebp-4]
 00733711    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733717    mov         edx,ebx
 00733719    call        TCustomListView.GetColumnFromIndex
 0073371E    pop         edx
 0073371F    call        TListColumn.SetCaption
>00733724    jmp         0073373D
 00733726    mov         eax,dword ptr [ebp-4]
 00733729    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 0073372F    mov         edx,ebx
 00733731    call        TCustomListView.GetColumnFromIndex
 00733736    xor         edx,edx
 00733738    call        TListColumn.SetCaption
 0073373D    inc         ebx
 0073373E    cmp         ebx,9
>00733741    jne         007336A4
 00733747    mov         eax,dword ptr [ebp-4]
 0073374A    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733750    mov         edx,9
 00733755    call        TCustomListView.GetColumnFromIndex
 0073375A    mov         edx,dword ptr [ebp-4]
 0073375D    mov         edx,dword ptr [edx+2C8];TFXADSummaryFrame.strFXSumCol:string
 00733763    call        TListColumn.SetCaption
 00733768    xor         eax,eax
 0073376A    mov         edi,0E
 0073376F    lea         edx,[ebp-0DC]
 00733775    add         eax,dword ptr [edx]
>00733777    jno         0073377E
 00733779    call        @IntOver
 0073377E    add         edx,4
 00733781    dec         edi
>00733782    jne         00733775
 00733784    test        eax,eax
>00733786    jle         0073388D
 0073378C    mov         eax,dword ptr [ebp-4]
 0073378F    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733795    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0073379B    call        TListItems.Add
 007337A0    mov         esi,eax
 007337A2    mov         edx,dword ptr ds:[902480];gvar_00902480:UnicodeString
 007337A8    mov         eax,esi
 007337AA    call        TListItem.SetCaption
 007337AF    mov         edi,0E
 007337B4    lea         eax,[ebp-0DC]
 007337BA    mov         dword ptr [ebp-14],eax
 007337BD    mov         dword ptr [ebp-18],902484
 007337C4    mov         eax,dword ptr [ebp-14]
 007337C7    cmp         dword ptr [eax],0
>007337CA    jle         0073387E
 007337D0    mov         eax,dword ptr [ebp-4]
 007337D3    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 007337D9    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007337DF    call        TListItems.Add
 007337E4    mov         esi,eax
 007337E6    mov         eax,dword ptr [ebp-18]
 007337E9    mov         edx,dword ptr [eax]
 007337EB    mov         eax,esi
 007337ED    call        TListItem.SetCaption
 007337F2    mov         ebx,1
 007337F7    mov         eax,dword ptr [ebp-14]
 007337FA    add         eax,0FFFFFAE0
 007337FF    mov         dword ptr [ebp-1C],eax
 00733802    mov         eax,ebx
 00733804    sub         eax,1
>00733807    jno         0073380E
 00733809    call        @IntOver
 0073380E    cmp         eax,7
>00733811    jbe         00733818
 00733813    call        @BoundErr
 00733818    mov         eax,dword ptr [ebp+eax*4-61C]
 0073381F    cmp         eax,3
>00733822    je          00733829
 00733824    cmp         eax,5
>00733827    jne         00733849
 00733829    lea         edx,[ebp-628]
 0073382F    mov         eax,dword ptr [ebp-1C]
 00733832    mov         eax,dword ptr [eax]
 00733834    call        IntToStr
 00733839    mov         edx,dword ptr [ebp-628]
 0073383F    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733842    mov         ecx,dword ptr [eax]
 00733844    call        dword ptr [ecx+3C];TStrings.Add
>00733847    jmp         00733853
 00733849    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 0073384C    xor         edx,edx
 0073384E    mov         ecx,dword ptr [eax]
 00733850    call        dword ptr [ecx+3C];TStrings.Add
 00733853    inc         ebx
 00733854    add         dword ptr [ebp-1C],0A4
 0073385B    cmp         ebx,9
>0073385E    jne         00733802
 00733860    lea         edx,[ebp-62C]
 00733866    mov         eax,dword ptr [ebp-14]
 00733869    mov         eax,dword ptr [eax]
 0073386B    call        IntToStr
 00733870    mov         edx,dword ptr [ebp-62C]
 00733876    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733879    mov         ecx,dword ptr [eax]
 0073387B    call        dword ptr [ecx+3C];TStrings.Add
 0073387E    add         dword ptr [ebp-18],4
 00733882    add         dword ptr [ebp-14],4
 00733886    dec         edi
>00733887    jne         007337C4
 0073388D    xor         eax,eax
 0073388F    mov         edi,0B
 00733894    lea         edx,[ebp-0A0]
 0073389A    add         eax,dword ptr [edx]
>0073389C    jno         007338A3
 0073389E    call        @IntOver
 007338A3    add         edx,4
 007338A6    dec         edi
>007338A7    jne         0073389A
 007338A9    test        eax,eax
>007338AB    jle         007339B7
 007338B1    mov         eax,dword ptr [ebp-4]
 007338B4    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 007338BA    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007338C0    call        TListItems.Add
 007338C5    mov         esi,eax
 007338C7    mov         edx,dword ptr ds:[9024BC];gvar_009024BC
 007338CD    mov         eax,esi
 007338CF    call        TListItem.SetCaption
 007338D4    mov         edi,0B
 007338D9    lea         eax,[ebp-0A0]
 007338DF    mov         dword ptr [ebp-20],eax
 007338E2    mov         dword ptr [ebp-24],9024C0
 007338E9    mov         eax,dword ptr [ebp-20]
 007338EC    cmp         dword ptr [eax],0
>007338EF    jle         007339A8
 007338F5    mov         eax,dword ptr [ebp-4]
 007338F8    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 007338FE    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00733904    call        TListItems.Add
 00733909    mov         esi,eax
 0073390B    mov         eax,dword ptr [ebp-24]
 0073390E    mov         edx,dword ptr [eax]
 00733910    mov         eax,esi
 00733912    call        TListItem.SetCaption
 00733917    mov         ebx,1
 0073391C    mov         eax,dword ptr [ebp-20]
 0073391F    add         eax,0FFFFFAE0
 00733924    mov         dword ptr [ebp-28],eax
 00733927    mov         eax,ebx
 00733929    sub         eax,1
>0073392C    jno         00733933
 0073392E    call        @IntOver
 00733933    cmp         eax,7
>00733936    jbe         0073393D
 00733938    call        @BoundErr
 0073393D    mov         eax,dword ptr [ebp+eax*4-61C]
 00733944    cmp         eax,1
>00733947    je          00733953
 00733949    cmp         eax,4
>0073394C    je          00733953
 0073394E    cmp         eax,6
>00733951    jne         00733973
 00733953    lea         edx,[ebp-630]
 00733959    mov         eax,dword ptr [ebp-28]
 0073395C    mov         eax,dword ptr [eax]
 0073395E    call        IntToStr
 00733963    mov         edx,dword ptr [ebp-630]
 00733969    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 0073396C    mov         ecx,dword ptr [eax]
 0073396E    call        dword ptr [ecx+3C];TStrings.Add
>00733971    jmp         0073397D
 00733973    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733976    xor         edx,edx
 00733978    mov         ecx,dword ptr [eax]
 0073397A    call        dword ptr [ecx+3C];TStrings.Add
 0073397D    inc         ebx
 0073397E    add         dword ptr [ebp-28],0A4
 00733985    cmp         ebx,9
>00733988    jne         00733927
 0073398A    lea         edx,[ebp-634]
 00733990    mov         eax,dword ptr [ebp-20]
 00733993    mov         eax,dword ptr [eax]
 00733995    call        IntToStr
 0073399A    mov         edx,dword ptr [ebp-634]
 007339A0    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 007339A3    mov         ecx,dword ptr [eax]
 007339A5    call        dword ptr [ecx+3C];TStrings.Add
 007339A8    add         dword ptr [ebp-24],4
 007339AC    add         dword ptr [ebp-20],4
 007339B0    dec         edi
>007339B1    jne         007338E9
 007339B7    xor         eax,eax
 007339B9    mov         edi,0B
 007339BE    lea         edx,[ebp-70]
 007339C1    add         eax,dword ptr [edx]
>007339C3    jno         007339CA
 007339C5    call        @IntOver
 007339CA    add         edx,4
 007339CD    dec         edi
>007339CE    jne         007339C1
 007339D0    test        eax,eax
>007339D2    jle         00733AD6
 007339D8    mov         eax,dword ptr [ebp-4]
 007339DB    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 007339E1    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 007339E7    call        TListItems.Add
 007339EC    mov         esi,eax
 007339EE    mov         edx,dword ptr ds:[9024EC];gvar_009024EC
 007339F4    mov         eax,esi
 007339F6    call        TListItem.SetCaption
 007339FB    mov         edi,0B
 00733A00    lea         eax,[ebp-70]
 00733A03    mov         dword ptr [ebp-2C],eax
 00733A06    mov         dword ptr [ebp-30],9024F0
 00733A0D    mov         eax,dword ptr [ebp-2C]
 00733A10    cmp         dword ptr [eax],0
>00733A13    jle         00733AC7
 00733A19    mov         eax,dword ptr [ebp-4]
 00733A1C    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733A22    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00733A28    call        TListItems.Add
 00733A2D    mov         esi,eax
 00733A2F    mov         eax,dword ptr [ebp-30]
 00733A32    mov         edx,dword ptr [eax]
 00733A34    mov         eax,esi
 00733A36    call        TListItem.SetCaption
 00733A3B    mov         ebx,1
 00733A40    mov         eax,dword ptr [ebp-2C]
 00733A43    add         eax,0FFFFFAE0
 00733A48    mov         dword ptr [ebp-34],eax
 00733A4B    mov         eax,ebx
 00733A4D    sub         eax,1
>00733A50    jno         00733A57
 00733A52    call        @IntOver
 00733A57    cmp         eax,7
>00733A5A    jbe         00733A61
 00733A5C    call        @BoundErr
 00733A61    mov         eax,dword ptr [ebp+eax*4-61C]
 00733A68    cmp         eax,4
>00733A6B    je          00733A72
 00733A6D    cmp         eax,6
>00733A70    jne         00733A92
 00733A72    lea         edx,[ebp-638]
 00733A78    mov         eax,dword ptr [ebp-34]
 00733A7B    mov         eax,dword ptr [eax]
 00733A7D    call        IntToStr
 00733A82    mov         edx,dword ptr [ebp-638]
 00733A88    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733A8B    mov         ecx,dword ptr [eax]
 00733A8D    call        dword ptr [ecx+3C];TStrings.Add
>00733A90    jmp         00733A9C
 00733A92    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733A95    xor         edx,edx
 00733A97    mov         ecx,dword ptr [eax]
 00733A99    call        dword ptr [ecx+3C];TStrings.Add
 00733A9C    inc         ebx
 00733A9D    add         dword ptr [ebp-34],0A4
 00733AA4    cmp         ebx,9
>00733AA7    jne         00733A4B
 00733AA9    lea         edx,[ebp-63C]
 00733AAF    mov         eax,dword ptr [ebp-2C]
 00733AB2    mov         eax,dword ptr [eax]
 00733AB4    call        IntToStr
 00733AB9    mov         edx,dword ptr [ebp-63C]
 00733ABF    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733AC2    mov         ecx,dword ptr [eax]
 00733AC4    call        dword ptr [ecx+3C];TStrings.Add
 00733AC7    add         dword ptr [ebp-30],4
 00733ACB    add         dword ptr [ebp-2C],4
 00733ACF    dec         edi
>00733AD0    jne         00733A0D
 00733AD6    mov         eax,dword ptr [ebp-40]
 00733AD9    test        eax,eax
>00733ADB    jle         00733BD8
 00733AE1    mov         eax,dword ptr [ebp-4]
 00733AE4    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733AEA    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00733AF0    call        TListItems.Add
 00733AF5    mov         esi,eax
 00733AF7    mov         edx,dword ptr ds:[90251C];gvar_0090251C
 00733AFD    mov         eax,esi
 00733AFF    call        TListItem.SetCaption
 00733B04    mov         edi,1
 00733B09    lea         eax,[ebp-40]
 00733B0C    mov         dword ptr [ebp-30],eax
 00733B0F    mov         dword ptr [ebp-2C],902520
 00733B16    mov         eax,dword ptr [ebp-30]
 00733B19    cmp         dword ptr [eax],0
>00733B1C    jle         00733BC9
 00733B22    mov         eax,dword ptr [ebp-4]
 00733B25    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733B2B    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00733B31    call        TListItems.Add
 00733B36    mov         esi,eax
 00733B38    mov         eax,dword ptr [ebp-2C]
 00733B3B    mov         edx,dword ptr [eax]
 00733B3D    mov         eax,esi
 00733B3F    call        TListItem.SetCaption
 00733B44    mov         ebx,1
 00733B49    mov         eax,dword ptr [ebp-30]
 00733B4C    add         eax,0FFFFFAE0
 00733B51    mov         dword ptr [ebp-38],eax
 00733B54    mov         eax,ebx
 00733B56    sub         eax,1
>00733B59    jno         00733B60
 00733B5B    call        @IntOver
 00733B60    cmp         eax,7
>00733B63    jbe         00733B6A
 00733B65    call        @BoundErr
 00733B6A    cmp         dword ptr [ebp+eax*4-61C],2
>00733B72    jne         00733B94
 00733B74    lea         edx,[ebp-640]
 00733B7A    mov         eax,dword ptr [ebp-38]
 00733B7D    mov         eax,dword ptr [eax]
 00733B7F    call        IntToStr
 00733B84    mov         edx,dword ptr [ebp-640]
 00733B8A    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733B8D    mov         ecx,dword ptr [eax]
 00733B8F    call        dword ptr [ecx+3C];TStrings.Add
>00733B92    jmp         00733B9E
 00733B94    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733B97    xor         edx,edx
 00733B99    mov         ecx,dword ptr [eax]
 00733B9B    call        dword ptr [ecx+3C];TStrings.Add
 00733B9E    inc         ebx
 00733B9F    add         dword ptr [ebp-38],0A4
 00733BA6    cmp         ebx,9
>00733BA9    jne         00733B54
 00733BAB    lea         edx,[ebp-644]
 00733BB1    mov         eax,dword ptr [ebp-30]
 00733BB4    mov         eax,dword ptr [eax]
 00733BB6    call        IntToStr
 00733BBB    mov         edx,dword ptr [ebp-644]
 00733BC1    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733BC4    mov         ecx,dword ptr [eax]
 00733BC6    call        dword ptr [ecx+3C];TStrings.Add
 00733BC9    add         dword ptr [ebp-2C],4
 00733BCD    add         dword ptr [ebp-30],4
 00733BD1    dec         edi
>00733BD2    jne         00733B16
 00733BD8    mov         eax,dword ptr [ebp-4]
 00733BDB    mov         eax,dword ptr [eax+2B8];TFXADSummaryFrame.ListView1:TListView
 00733BE1    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 00733BE7    call        TListItems.Add
 00733BEC    mov         esi,eax
 00733BEE    mov         edx,dword ptr ds:[902524];gvar_00902524
 00733BF4    mov         eax,esi
 00733BF6    call        TListItem.SetCaption
 00733BFB    mov         ebx,1
 00733C00    lea         eax,[ebp-55C]
 00733C06    mov         dword ptr [ebp-2C],eax
 00733C09    mov         eax,ebx
 00733C0B    sub         eax,1
>00733C0E    jno         00733C15
 00733C10    call        @IntOver
 00733C15    cmp         eax,7
>00733C18    jbe         00733C1F
 00733C1A    call        @BoundErr
 00733C1F    cmp         dword ptr [ebp+eax*4-61C],0
>00733C27    je          00733C49
 00733C29    lea         edx,[ebp-648]
 00733C2F    mov         eax,dword ptr [ebp-2C]
 00733C32    mov         eax,dword ptr [eax]
 00733C34    call        IntToStr
 00733C39    mov         edx,dword ptr [ebp-648]
 00733C3F    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733C42    mov         ecx,dword ptr [eax]
 00733C44    call        dword ptr [ecx+3C];TStrings.Add
>00733C47    jmp         00733C53
 00733C49    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733C4C    xor         edx,edx
 00733C4E    mov         ecx,dword ptr [eax]
 00733C50    call        dword ptr [ecx+3C];TStrings.Add
 00733C53    inc         ebx
 00733C54    add         dword ptr [ebp-2C],0A4
 00733C5B    cmp         ebx,9
>00733C5E    jne         00733C09
 00733C60    lea         edx,[ebp-64C]
 00733C66    mov         eax,dword ptr [ebp-3C]
 00733C69    call        IntToStr
 00733C6E    mov         edx,dword ptr [ebp-64C]
 00733C74    mov         eax,dword ptr [esi+8];TListItem.FSubItems:TStrings
 00733C77    mov         ecx,dword ptr [eax]
 00733C79    call        dword ptr [ecx+3C];TStrings.Add
 00733C7C    xor         eax,eax
 00733C7E    pop         edx
 00733C7F    pop         ecx
 00733C80    pop         ecx
 00733C81    mov         dword ptr fs:[eax],edx
 00733C84    push        733CA1
 00733C89    lea         eax,[ebp-64C]
 00733C8F    mov         edx,0C
 00733C94    call        @UStrArrayClr
 00733C99    ret
>00733C9A    jmp         @HandleFinally
>00733C9F    jmp         00733C89
 00733CA1    pop         edi
 00733CA2    pop         esi
 00733CA3    pop         ebx
 00733CA4    mov         esp,ebp
 00733CA6    pop         ebp
 00733CA7    ret
*}
end;

//00733CA8
procedure TFXADSummaryFrame.OKBtnClick(Sender:TObject);
begin
{*
 00733CA8    call        TControl.Hide
 00733CAD    ret
*}
end;

Initialization
Finalization
//00733CB0
{*
 00733CB0    push        ebp
 00733CB1    mov         ebp,esp
 00733CB3    xor         eax,eax
 00733CB5    push        ebp
 00733CB6    push        733CEC
 00733CBB    push        dword ptr fs:[eax]
 00733CBE    mov         dword ptr fs:[eax],esp
 00733CC1    inc         dword ptr ds:[90247C]
>00733CC7    jne         00733CDE
 00733CC9    mov         eax,902480;gvar_00902480:UnicodeString
 00733CCE    mov         ecx,2A
 00733CD3    mov         edx,dword ptr ds:[4012B8];string
 00733CD9    call        @FinalizeArray
 00733CDE    xor         eax,eax
 00733CE0    pop         edx
 00733CE1    pop         ecx
 00733CE2    pop         ecx
 00733CE3    mov         dword ptr fs:[eax],edx
 00733CE6    push        733CF3
 00733CEB    ret
>00733CEC    jmp         @HandleFinally
>00733CF1    jmp         00733CEB
 00733CF3    pop         ebp
 00733CF4    ret
*}
end.