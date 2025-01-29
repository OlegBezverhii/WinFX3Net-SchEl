//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXCGroupsSelectDlg;

interface

uses
  SysUtils, Classes, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.StdCtrls;

type
  TCheckListBox = class(TCheckListBox)
  public
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//006D4698
  end;
  TFXCGroupsDlg = class(TForm)
  published
    rgMainSelection:TRadioGroup;//f3C0
    clbSelection:TCheckListBox;//f3C4
    Bevel1:TBevel;//f3C8
    btnOK:TButton;//f3CC
    btnCancel:TButton;//f3D0
    btnSelectAll:TButton;//f3D4
    btnClearAll:TButton;//f3D8
    rgRange:TRadioGroup;//f3DC
    procedure SetCheckMarks(s:string; AllowOnlyGeneralOrLocal:Boolean);//006D54B4
    procedure clbSelectionClickCheck(Sender:TObject);//006D5294
    //procedure GetCheckMarks(?:?);//006D5754
    function GetCheckMarks(var CGRec:TCGRec):Boolean;//006D5850
    procedure SetCheckMarks(CGRec:TCGRec; AllowOnlyGeneralOrLocal:Boolean);//006D5664
    procedure rgRangeClick(Sender:TObject);//006D5060
    procedure Translate(IniFile:TFXIniFile);//006D47A0
    procedure FormCreate(Sender:TObject);//006D46A8
    procedure rgMainSelectionClick(Sender:TObject);//006D4FDC
    procedure btnClearAllClick(Sender:TObject);//006D5304
    procedure btnSelectAllClick(Sender:TObject);//006D53DC
  public
    BoolArr:?;//f3E0
  end;
    //procedure WMMouseMove(?:?);//006D4698
    procedure sub_006D4E88(?:TFXCGroupsDlg);//006D4E88

implementation

{$R *.DFM}

//006D4698
{*procedure TCheckListBox.WMMouseMove(?:?);
begin
 006D4698    cmp         word ptr [edx+8],0FFFFFFF6
>006D469D    jl          006D46A4
 006D469F    call        TControl.WMMouseMove
 006D46A4    ret
end;*}

//006D46A8
procedure TFXCGroupsDlg.FormCreate(Sender:TObject);
begin
{*
 006D46A8    push        ebp
 006D46A9    mov         ebp,esp
 006D46AB    add         esp,0FFFFFFE8
 006D46AE    push        ebx
 006D46AF    xor         ecx,ecx
 006D46B1    mov         dword ptr [ebp-4],ecx
 006D46B4    mov         dword ptr [ebp-18],ecx
 006D46B7    mov         ebx,eax
 006D46B9    xor         eax,eax
 006D46BB    push        ebp
 006D46BC    push        6D473A
 006D46C1    push        dword ptr fs:[eax]
 006D46C4    mov         dword ptr fs:[eax],esp
 006D46C7    lea         eax,[ebp-4]
 006D46CA    push        eax
 006D46CB    mov         eax,6D4754;'Control group selection'
 006D46D0    mov         dword ptr [ebp-14],eax
 006D46D3    mov         byte ptr [ebp-10],11
 006D46D7    lea         edx,[ebp-18]
 006D46DA    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006D46DF    mov         eax,dword ptr [eax]
 006D46E1    call        005DDC74
 006D46E6    mov         eax,dword ptr [ebp-18]
 006D46E9    mov         dword ptr [ebp-0C],eax
 006D46EC    mov         byte ptr [ebp-8],11
 006D46F0    lea         edx,[ebp-14]
 006D46F3    mov         ecx,1
 006D46F8    mov         eax,6D4790;'%s (%s)'
 006D46FD    call        Format
 006D4702    mov         edx,dword ptr [ebp-4]
 006D4705    mov         eax,ebx
 006D4707    call        TControl.SetText
 006D470C    mov         dl,1
 006D470E    mov         eax,dword ptr [ebx+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D4714    mov         ecx,dword ptr [eax]
 006D4716    call        dword ptr [ecx+134];TListBox.SetMultiSelect
 006D471C    xor         eax,eax
 006D471E    pop         edx
 006D471F    pop         ecx
 006D4720    pop         ecx
 006D4721    mov         dword ptr fs:[eax],edx
 006D4724    push        6D4741
 006D4729    lea         eax,[ebp-18]
 006D472C    call        @UStrClr
 006D4731    lea         eax,[ebp-4]
 006D4734    call        @UStrClr
 006D4739    ret
>006D473A    jmp         @HandleFinally
>006D473F    jmp         006D4729
 006D4741    pop         ebx
 006D4742    mov         esp,ebp
 006D4744    pop         ebp
 006D4745    ret
*}
end;

//006D47A0
procedure TFXCGroupsDlg.Translate(IniFile:TFXIniFile);
begin
{*
 006D47A0    push        ebp
 006D47A1    mov         ebp,esp
 006D47A3    mov         ecx,6
 006D47A8    push        0
 006D47AA    push        0
 006D47AC    dec         ecx
>006D47AD    jne         006D47A8
 006D47AF    push        ebx
 006D47B0    push        esi
 006D47B1    push        edi
 006D47B2    mov         ebx,edx
 006D47B4    mov         esi,eax
 006D47B6    xor         eax,eax
 006D47B8    push        ebp
 006D47B9    push        6D49B3
 006D47BE    push        dword ptr fs:[eax]
 006D47C1    mov         dword ptr fs:[eax],esp
 006D47C4    push        6D49D0;'Control group selection'
 006D47C9    lea         eax,[ebp-8]
 006D47CC    push        eax
 006D47CD    mov         ecx,6D4A0C;'sCZoneSelectDlg'
 006D47D2    mov         edx,6D4A38;'CtrlGroupsDlg'
 006D47D7    mov         eax,ebx
 006D47D9    mov         edi,dword ptr [eax]
 006D47DB    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D47DE    push        dword ptr [ebp-8]
 006D47E1    push        6D4A60;' ('
 006D47E6    lea         edx,[ebp-0C]
 006D47E9    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006D47EE    mov         eax,dword ptr [eax]
 006D47F0    call        005DDC74
 006D47F5    push        dword ptr [ebp-0C]
 006D47F8    push        6D4A74;')'
 006D47FD    lea         eax,[ebp-4]
 006D4800    mov         edx,4
 006D4805    call        @UStrCatN
 006D480A    mov         edx,dword ptr [ebp-4]
 006D480D    mov         eax,esi
 006D480F    call        TControl.SetText
 006D4814    push        6D4A84;'OK'
 006D4819    lea         eax,[ebp-10]
 006D481C    push        eax
 006D481D    mov         ecx,6D4A98;'sOKBtn'
 006D4822    mov         edx,6D4AB4;'CommonTexts'
 006D4827    mov         eax,ebx
 006D4829    mov         edi,dword ptr [eax]
 006D482B    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D482E    mov         edx,dword ptr [ebp-10]
 006D4831    mov         eax,dword ptr [esi+3CC];TFXCGroupsDlg.btnOK:TButton
 006D4837    call        TControl.SetText
 006D483C    push        6D4AD8;'Cancel'
 006D4841    lea         eax,[ebp-14]
 006D4844    push        eax
 006D4845    mov         ecx,6D4AF4;'sCancelBtn'
 006D484A    mov         edx,6D4AB4;'CommonTexts'
 006D484F    mov         eax,ebx
 006D4851    mov         edi,dword ptr [eax]
 006D4853    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D4856    mov         edx,dword ptr [ebp-14]
 006D4859    mov         eax,dword ptr [esi+3D0];TFXCGroupsDlg.btnCancel:TButton
 006D485F    call        TControl.SetText
 006D4864    push        6D4B18;'General'
 006D4869    lea         eax,[ebp-18]
 006D486C    push        eax
 006D486D    mov         ecx,6D4B34;'sGeneral'
 006D4872    mov         edx,6D4AB4;'CommonTexts'
 006D4877    mov         eax,ebx
 006D4879    mov         edi,dword ptr [eax]
 006D487B    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D487E    mov         edx,dword ptr [ebp-18]
 006D4881    mov         eax,7C2EAC;^'General'
 006D4886    call        @UStrAsg
 006D488B    push        6D4B54;'Local'
 006D4890    lea         eax,[ebp-1C]
 006D4893    push        eax
 006D4894    mov         ecx,6D4B6C;'sLocal'
 006D4899    mov         edx,6D4AB4;'CommonTexts'
 006D489E    mov         eax,ebx
 006D48A0    mov         edi,dword ptr [eax]
 006D48A2    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D48A5    mov         edx,dword ptr [ebp-1C]
 006D48A8    mov         eax,7C2EB0;^'Local'
 006D48AD    call        @UStrAsg
 006D48B2    push        6D4B88;'Select all'
 006D48B7    lea         eax,[ebp-20]
 006D48BA    push        eax
 006D48BB    mov         ecx,6D4BAC;'sSelectAllBtn'
 006D48C0    mov         edx,6D4AB4;'CommonTexts'
 006D48C5    mov         eax,ebx
 006D48C7    mov         edi,dword ptr [eax]
 006D48C9    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D48CC    mov         edx,dword ptr [ebp-20]
 006D48CF    mov         eax,dword ptr [esi+3D4];TFXCGroupsDlg.btnSelectAll:TButton
 006D48D5    call        TControl.SetText
 006D48DA    push        6D4BD4;'Clear all'
 006D48DF    lea         eax,[ebp-24]
 006D48E2    push        eax
 006D48E3    mov         ecx,6D4BF4;'sClearAllBtn'
 006D48E8    mov         edx,6D4AB4;'CommonTexts'
 006D48ED    mov         eax,ebx
 006D48EF    mov         edi,dword ptr [eax]
 006D48F1    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D48F4    mov         edx,dword ptr [ebp-24]
 006D48F7    mov         eax,dword ptr [esi+3D8];TFXCGroupsDlg.btnClearAll:TButton
 006D48FD    call        TControl.SetText
 006D4902    push        6D4C1C;'General control (reacts to events in any visible panel, regardless of  control g...
 006D4907    lea         eax,[ebp-28]
 006D490A    push        eax
 006D490B    mov         ecx,6D4CD8;'sGeneralControl'
 006D4910    mov         edx,6D4A38;'CtrlGroupsDlg'
 006D4915    mov         eax,ebx
 006D4917    mov         edi,dword ptr [eax]
 006D4919    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D491C    mov         ecx,dword ptr [ebp-28]
 006D491F    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D4925    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006D492B    xor         edx,edx
 006D492D    mov         edi,dword ptr [eax]
 006D492F    call        dword ptr [edi+20];TStrings.Put
 006D4932    push        6D4D04;'Local control (reacts to events in this panel only, but regardless of control gr...
 006D4937    lea         eax,[ebp-2C]
 006D493A    push        eax
 006D493B    mov         ecx,6D4DBC;'sLocalControl'
 006D4940    mov         edx,6D4A38;'CtrlGroupsDlg'
 006D4945    mov         eax,ebx
 006D4947    mov         edi,dword ptr [eax]
 006D4949    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D494C    mov         ecx,dword ptr [ebp-2C]
 006D494F    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D4955    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006D495B    mov         edx,1
 006D4960    mov         edi,dword ptr [eax]
 006D4962    call        dword ptr [edi+20];TStrings.Put
 006D4965    push        6D4DE4;'Selected control (reacts only on selected control groups)'
 006D496A    lea         eax,[ebp-30]
 006D496D    push        eax
 006D496E    mov         ecx,6D4E64;'sSelectedControl'
 006D4973    mov         edx,6D4A38;'CtrlGroupsDlg'
 006D4978    mov         eax,ebx
 006D497A    mov         ebx,dword ptr [eax]
 006D497C    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006D497F    mov         ecx,dword ptr [ebp-30]
 006D4982    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D4988    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 006D498E    mov         edx,2
 006D4993    mov         ebx,dword ptr [eax]
 006D4995    call        dword ptr [ebx+20];TStrings.Put
 006D4998    xor         eax,eax
 006D499A    pop         edx
 006D499B    pop         ecx
 006D499C    pop         ecx
 006D499D    mov         dword ptr fs:[eax],edx
 006D49A0    push        6D49BA
 006D49A5    lea         eax,[ebp-30]
 006D49A8    mov         edx,0C
 006D49AD    call        @UStrArrayClr
 006D49B2    ret
>006D49B3    jmp         @HandleFinally
>006D49B8    jmp         006D49A5
 006D49BA    pop         edi
 006D49BB    pop         esi
 006D49BC    pop         ebx
 006D49BD    mov         esp,ebp
 006D49BF    pop         ebp
 006D49C0    ret
*}
end;

//006D4E88
procedure sub_006D4E88(?:TFXCGroupsDlg);
begin
{*
 006D4E88    push        ebx
 006D4E89    push        esi
 006D4E8A    mov         esi,eax
 006D4E8C    mov         eax,dword ptr [esi+3DC]
 006D4E92    mov         eax,dword ptr [eax+2A0]
 006D4E98    sub         eax,1
>006D4E9B    jb          006D4EB2
>006D4E9D    je          006D4EF3
 006D4E9F    dec         eax
>006D4EA0    je          006D4F37
 006D4EA6    dec         eax
>006D4EA7    je          006D4F78
>006D4EAD    jmp         006D4FB7
 006D4EB2    mov         ebx,1
 006D4EB7    dec         ebx
 006D4EB8    cmp         ebx,3E6
>006D4EBE    jbe         006D4EC5
 006D4EC0    call        @BoundErr
 006D4EC5    inc         ebx
 006D4EC6    movzx       ecx,byte ptr [esi+ebx+3DF]
 006D4ECE    mov         edx,ebx
 006D4ED0    sub         edx,1
>006D4ED3    jno         006D4EDA
 006D4ED5    call        @IntOver
 006D4EDA    mov         eax,dword ptr [esi+3C4]
 006D4EE0    call        TCheckListBox.SetChecked
 006D4EE5    inc         ebx
 006D4EE6    cmp         ebx,0FB
>006D4EEC    jne         006D4EB7
>006D4EEE    jmp         006D4FB7
 006D4EF3    mov         ebx,0FB
 006D4EF8    dec         ebx
 006D4EF9    cmp         ebx,3E6
>006D4EFF    jbe         006D4F06
 006D4F01    call        @BoundErr
 006D4F06    inc         ebx
 006D4F07    movzx       ecx,byte ptr [esi+ebx+3DF]
 006D4F0F    mov         edx,ebx
 006D4F11    sub         edx,0FB
>006D4F17    jno         006D4F1E
 006D4F19    call        @IntOver
 006D4F1E    mov         eax,dword ptr [esi+3C4]
 006D4F24    call        TCheckListBox.SetChecked
 006D4F29    inc         ebx
 006D4F2A    cmp         ebx,1F5
>006D4F30    jne         006D4EF8
>006D4F32    jmp         006D4FB7
 006D4F37    mov         ebx,1F5
 006D4F3C    dec         ebx
 006D4F3D    cmp         ebx,3E6
>006D4F43    jbe         006D4F4A
 006D4F45    call        @BoundErr
 006D4F4A    inc         ebx
 006D4F4B    movzx       ecx,byte ptr [esi+ebx+3DF]
 006D4F53    mov         edx,ebx
 006D4F55    sub         edx,1F5
>006D4F5B    jno         006D4F62
 006D4F5D    call        @IntOver
 006D4F62    mov         eax,dword ptr [esi+3C4]
 006D4F68    call        TCheckListBox.SetChecked
 006D4F6D    inc         ebx
 006D4F6E    cmp         ebx,2EF
>006D4F74    jne         006D4F3C
>006D4F76    jmp         006D4FB7
 006D4F78    mov         ebx,2EF
 006D4F7D    dec         ebx
 006D4F7E    cmp         ebx,3E6
>006D4F84    jbe         006D4F8B
 006D4F86    call        @BoundErr
 006D4F8B    inc         ebx
 006D4F8C    movzx       ecx,byte ptr [esi+ebx+3DF]
 006D4F94    mov         edx,ebx
 006D4F96    sub         edx,2EF
>006D4F9C    jno         006D4FA3
 006D4F9E    call        @IntOver
 006D4FA3    mov         eax,dword ptr [esi+3C4]
 006D4FA9    call        TCheckListBox.SetChecked
 006D4FAE    inc         ebx
 006D4FAF    cmp         ebx,3E8
>006D4FB5    jne         006D4F7D
 006D4FB7    mov         eax,dword ptr [esi+3DC]
 006D4FBD    cmp         dword ptr [eax+2A0],3
>006D4FC4    jne         006D4FD8
 006D4FC6    xor         ecx,ecx
 006D4FC8    mov         edx,0F9
 006D4FCD    mov         eax,dword ptr [esi+3C4]
 006D4FD3    call        TCheckListBox.SetChecked
 006D4FD8    pop         esi
 006D4FD9    pop         ebx
 006D4FDA    ret
*}
end;

//006D4FDC
procedure TFXCGroupsDlg.rgMainSelectionClick(Sender:TObject);
begin
{*
 006D4FDC    push        ebx
 006D4FDD    mov         ebx,eax
 006D4FDF    mov         eax,dword ptr [ebx+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D4FE5    cmp         dword ptr [eax+2A0],2;TRadioGroup.FItemIndex:Integer
>006D4FEC    jne         006D5010
 006D4FEE    mov         dl,1
 006D4FF0    mov         eax,dword ptr [ebx+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D4FF6    mov         ecx,dword ptr [eax]
 006D4FF8    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006D4FFE    mov         dl,1
 006D5000    mov         eax,dword ptr [ebx+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D5006    mov         ecx,dword ptr [eax]
 006D5008    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006D500E    pop         ebx
 006D500F    ret
 006D5010    mov         ax,1
 006D5014    movzx       edx,ax
 006D5017    dec         edx
 006D5018    cmp         edx,3E6
>006D501E    jbe         006D5025
 006D5020    call        @BoundErr
 006D5025    inc         edx
 006D5026    mov         byte ptr [ebx+edx+3DF],0
 006D502E    inc         eax
 006D502F    cmp         ax,3E8
>006D5033    jne         006D5014
 006D5035    mov         eax,ebx
 006D5037    call        006D4E88
 006D503C    xor         edx,edx
 006D503E    mov         eax,dword ptr [ebx+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D5044    mov         ecx,dword ptr [eax]
 006D5046    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006D504C    xor         edx,edx
 006D504E    mov         eax,dword ptr [ebx+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D5054    mov         ecx,dword ptr [eax]
 006D5056    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 006D505C    pop         ebx
 006D505D    ret
*}
end;

//006D5060
procedure TFXCGroupsDlg.rgRangeClick(Sender:TObject);
begin
{*
 006D5060    push        ebp
 006D5061    mov         ebp,esp
 006D5063    xor         ecx,ecx
 006D5065    push        ecx
 006D5066    push        ecx
 006D5067    push        ecx
 006D5068    push        ecx
 006D5069    push        ecx
 006D506A    push        ecx
 006D506B    push        ebx
 006D506C    push        esi
 006D506D    push        edi
 006D506E    mov         esi,eax
 006D5070    xor         eax,eax
 006D5072    push        ebp
 006D5073    push        6D526B
 006D5078    push        dword ptr fs:[eax]
 006D507B    mov         dword ptr fs:[eax],esp
 006D507E    mov         eax,dword ptr [esi+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D5084    mov         eax,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006D508A    sub         eax,1
>006D508D    jb          006D50A4
>006D508F    je          006D50F1
 006D5091    dec         eax
>006D5092    je          006D5141
 006D5098    dec         eax
>006D5099    je          006D518E
>006D509F    jmp         006D51D9
 006D50A4    mov         ebx,1
 006D50A9    lea         eax,[ebp-4]
 006D50AC    push        eax
 006D50AD    mov         dword ptr [ebp-0C],ebx
 006D50B0    mov         byte ptr [ebp-8],0
 006D50B4    lea         edx,[ebp-0C]
 006D50B7    xor         ecx,ecx
 006D50B9    mov         eax,6D5288;'%.3d'
 006D50BE    call        Format
 006D50C3    mov         ecx,dword ptr [ebp-4]
 006D50C6    mov         edx,ebx
 006D50C8    sub         edx,1
>006D50CB    jno         006D50D2
 006D50CD    call        @IntOver
 006D50D2    mov         eax,dword ptr [esi+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D50D8    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 006D50DE    mov         edi,dword ptr [eax]
 006D50E0    call        dword ptr [edi+20];TStrings.Put
 006D50E3    inc         ebx
 006D50E4    cmp         ebx,0FB
>006D50EA    jne         006D50A9
>006D50EC    jmp         006D51D9
 006D50F1    mov         ebx,0FB
 006D50F6    lea         eax,[ebp-10]
 006D50F9    push        eax
 006D50FA    mov         dword ptr [ebp-0C],ebx
 006D50FD    mov         byte ptr [ebp-8],0
 006D5101    lea         edx,[ebp-0C]
 006D5104    xor         ecx,ecx
 006D5106    mov         eax,6D5288;'%.3d'
 006D510B    call        Format
 006D5110    mov         ecx,dword ptr [ebp-10]
 006D5113    mov         edx,ebx
 006D5115    sub         edx,0FB
>006D511B    jno         006D5122
 006D511D    call        @IntOver
 006D5122    mov         eax,dword ptr [esi+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D5128    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 006D512E    mov         edi,dword ptr [eax]
 006D5130    call        dword ptr [edi+20];TStrings.Put
 006D5133    inc         ebx
 006D5134    cmp         ebx,1F5
>006D513A    jne         006D50F6
>006D513C    jmp         006D51D9
 006D5141    mov         ebx,1F5
 006D5146    lea         eax,[ebp-14]
 006D5149    push        eax
 006D514A    mov         dword ptr [ebp-0C],ebx
 006D514D    mov         byte ptr [ebp-8],0
 006D5151    lea         edx,[ebp-0C]
 006D5154    xor         ecx,ecx
 006D5156    mov         eax,6D5288;'%.3d'
 006D515B    call        Format
 006D5160    mov         ecx,dword ptr [ebp-14]
 006D5163    mov         edx,ebx
 006D5165    sub         edx,1F5
>006D516B    jno         006D5172
 006D516D    call        @IntOver
 006D5172    mov         eax,dword ptr [esi+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D5178    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 006D517E    mov         edi,dword ptr [eax]
 006D5180    call        dword ptr [edi+20];TStrings.Put
 006D5183    inc         ebx
 006D5184    cmp         ebx,2EF
>006D518A    jne         006D5146
>006D518C    jmp         006D51D9
 006D518E    mov         ebx,2EF
 006D5193    lea         eax,[ebp-18]
 006D5196    push        eax
 006D5197    mov         dword ptr [ebp-0C],ebx
 006D519A    mov         byte ptr [ebp-8],0
 006D519E    lea         edx,[ebp-0C]
 006D51A1    xor         ecx,ecx
 006D51A3    mov         eax,6D5288;'%.3d'
 006D51A8    call        Format
 006D51AD    mov         ecx,dword ptr [ebp-18]
 006D51B0    mov         edx,ebx
 006D51B2    sub         edx,2EF
>006D51B8    jno         006D51BF
 006D51BA    call        @IntOver
 006D51BF    mov         eax,dword ptr [esi+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D51C5    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 006D51CB    mov         edi,dword ptr [eax]
 006D51CD    call        dword ptr [edi+20];TStrings.Put
 006D51D0    inc         ebx
 006D51D1    cmp         ebx,3E8
>006D51D7    jne         006D5193
 006D51D9    mov         eax,dword ptr [esi+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D51DF    cmp         dword ptr [eax+2A0],3;TRadioGroup.FItemIndex:Integer
>006D51E6    jne         006D5200
 006D51E8    mov         eax,dword ptr [esi+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D51EE    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 006D51F4    xor         ecx,ecx
 006D51F6    mov         edx,0F9
 006D51FB    mov         ebx,dword ptr [eax]
 006D51FD    call        dword ptr [ebx+20];TStrings.Put
 006D5200    mov         eax,dword ptr [esi+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D5206    cmp         dword ptr [eax+2A0],3;TRadioGroup.FItemIndex:Integer
>006D520D    jne         006D5221
 006D520F    xor         ecx,ecx
 006D5211    mov         edx,0F9
 006D5216    mov         eax,dword ptr [esi+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D521C    call        TCheckListBox.SetChecked
 006D5221    mov         eax,dword ptr [esi+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D5227    cmp         dword ptr [eax+2A0],3;TRadioGroup.FItemIndex:Integer
 006D522E    setne       cl
 006D5231    mov         edx,0F9
 006D5236    mov         eax,dword ptr [esi+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D523C    call        TCheckListBox.SetItemEnabled
 006D5241    mov         eax,esi
 006D5243    call        006D4E88
 006D5248    xor         eax,eax
 006D524A    pop         edx
 006D524B    pop         ecx
 006D524C    pop         ecx
 006D524D    mov         dword ptr fs:[eax],edx
 006D5250    push        6D5272
 006D5255    lea         eax,[ebp-18]
 006D5258    mov         edx,3
 006D525D    call        @UStrArrayClr
 006D5262    lea         eax,[ebp-4]
 006D5265    call        @UStrClr
 006D526A    ret
>006D526B    jmp         @HandleFinally
>006D5270    jmp         006D5255
 006D5272    pop         edi
 006D5273    pop         esi
 006D5274    pop         ebx
 006D5275    mov         esp,ebp
 006D5277    pop         ebp
 006D5278    ret
*}
end;

//006D5294
procedure TFXCGroupsDlg.clbSelectionClickCheck(Sender:TObject);
begin
{*
 006D5294    push        ebx
 006D5295    push        esi
 006D5296    push        edi
 006D5297    mov         esi,edx
 006D5299    mov         ebx,eax
 006D529B    mov         eax,esi
 006D529D    mov         edx,dword ptr ds:[6D3D50];TCheckListBox
 006D52A3    call        @AsClass
 006D52A8    mov         esi,eax
 006D52AA    mov         eax,esi
 006D52AC    mov         edx,dword ptr [eax]
 006D52AE    call        dword ptr [edx+108];TCheckListBox.sub_0050E790
 006D52B4    mov         edi,eax
 006D52B6    mov         edx,edi
 006D52B8    mov         eax,esi
 006D52BA    call        TCheckListBox.GetChecked
 006D52BF    mov         edx,dword ptr [ebx+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D52C5    imul        edx,dword ptr [edx+2A0],0FA;TRadioGroup.FItemIndex:Integer
>006D52CF    jno         006D52D6
 006D52D1    call        @IntOver
 006D52D6    add         edi,edx
>006D52D8    jno         006D52DF
 006D52DA    call        @IntOver
 006D52DF    add         edi,1
>006D52E2    jno         006D52E9
 006D52E4    call        @IntOver
 006D52E9    dec         edi
 006D52EA    cmp         edi,3E6
>006D52F0    jbe         006D52F7
 006D52F2    call        @BoundErr
 006D52F7    inc         edi
 006D52F8    mov         byte ptr [ebx+edi+3DF],al
 006D52FF    pop         edi
 006D5300    pop         esi
 006D5301    pop         ebx
 006D5302    ret
*}
end;

//006D5304
procedure TFXCGroupsDlg.btnClearAllClick(Sender:TObject);
begin
{*
 006D5304    push        ebx
 006D5305    mov         ebx,eax
 006D5307    mov         eax,dword ptr [ebx+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D530D    mov         edx,dword ptr [eax]
 006D530F    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006D5312    cmp         al,1
>006D5314    jne         006D53D2
 006D531A    mov         eax,dword ptr [ebx+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D5320    mov         eax,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006D5326    sub         eax,1
>006D5329    jb          006D5338
>006D532B    je          006D535F
 006D532D    dec         eax
>006D532E    je          006D5386
 006D5330    dec         eax
>006D5331    je          006D53AD
>006D5333    jmp         006D53D2
 006D5338    mov         ax,1
 006D533C    movzx       edx,ax
 006D533F    dec         edx
 006D5340    cmp         edx,3E6
>006D5346    jbe         006D534D
 006D5348    call        @BoundErr
 006D534D    inc         edx
 006D534E    mov         byte ptr [ebx+edx+3DF],0
 006D5356    inc         eax
 006D5357    cmp         ax,0FB
>006D535B    jne         006D533C
>006D535D    jmp         006D53D2
 006D535F    mov         ax,0FB
 006D5363    movzx       edx,ax
 006D5366    dec         edx
 006D5367    cmp         edx,3E6
>006D536D    jbe         006D5374
 006D536F    call        @BoundErr
 006D5374    inc         edx
 006D5375    mov         byte ptr [ebx+edx+3DF],0
 006D537D    inc         eax
 006D537E    cmp         ax,1F5
>006D5382    jne         006D5363
>006D5384    jmp         006D53D2
 006D5386    mov         ax,1F5
 006D538A    movzx       edx,ax
 006D538D    dec         edx
 006D538E    cmp         edx,3E6
>006D5394    jbe         006D539B
 006D5396    call        @BoundErr
 006D539B    inc         edx
 006D539C    mov         byte ptr [ebx+edx+3DF],0
 006D53A4    inc         eax
 006D53A5    cmp         ax,2EF
>006D53A9    jne         006D538A
>006D53AB    jmp         006D53D2
 006D53AD    mov         ax,2EF
 006D53B1    movzx       edx,ax
 006D53B4    dec         edx
 006D53B5    cmp         edx,3E6
>006D53BB    jbe         006D53C2
 006D53BD    call        @BoundErr
 006D53C2    inc         edx
 006D53C3    mov         byte ptr [ebx+edx+3DF],0
 006D53CB    inc         eax
 006D53CC    cmp         ax,3E8
>006D53D0    jne         006D53B1
 006D53D2    mov         eax,ebx
 006D53D4    call        006D4E88
 006D53D9    pop         ebx
 006D53DA    ret
*}
end;

//006D53DC
procedure TFXCGroupsDlg.btnSelectAllClick(Sender:TObject);
begin
{*
 006D53DC    push        ebx
 006D53DD    mov         ebx,eax
 006D53DF    mov         eax,dword ptr [ebx+3C4];TFXCGroupsDlg.clbSelection:TCheckListBox
 006D53E5    mov         edx,dword ptr [eax]
 006D53E7    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006D53EA    cmp         al,1
>006D53EC    jne         006D54AA
 006D53F2    mov         eax,dword ptr [ebx+3DC];TFXCGroupsDlg.rgRange:TRadioGroup
 006D53F8    mov         eax,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006D53FE    sub         eax,1
>006D5401    jb          006D5410
>006D5403    je          006D5437
 006D5405    dec         eax
>006D5406    je          006D545E
 006D5408    dec         eax
>006D5409    je          006D5485
>006D540B    jmp         006D54AA
 006D5410    mov         ax,1
 006D5414    movzx       edx,ax
 006D5417    dec         edx
 006D5418    cmp         edx,3E6
>006D541E    jbe         006D5425
 006D5420    call        @BoundErr
 006D5425    inc         edx
 006D5426    mov         byte ptr [ebx+edx+3DF],1
 006D542E    inc         eax
 006D542F    cmp         ax,0FB
>006D5433    jne         006D5414
>006D5435    jmp         006D54AA
 006D5437    mov         ax,0FB
 006D543B    movzx       edx,ax
 006D543E    dec         edx
 006D543F    cmp         edx,3E6
>006D5445    jbe         006D544C
 006D5447    call        @BoundErr
 006D544C    inc         edx
 006D544D    mov         byte ptr [ebx+edx+3DF],1
 006D5455    inc         eax
 006D5456    cmp         ax,1F5
>006D545A    jne         006D543B
>006D545C    jmp         006D54AA
 006D545E    mov         ax,1F5
 006D5462    movzx       edx,ax
 006D5465    dec         edx
 006D5466    cmp         edx,3E6
>006D546C    jbe         006D5473
 006D546E    call        @BoundErr
 006D5473    inc         edx
 006D5474    mov         byte ptr [ebx+edx+3DF],1
 006D547C    inc         eax
 006D547D    cmp         ax,2EF
>006D5481    jne         006D5462
>006D5483    jmp         006D54AA
 006D5485    mov         ax,2EF
 006D5489    movzx       edx,ax
 006D548C    dec         edx
 006D548D    cmp         edx,3E6
>006D5493    jbe         006D549A
 006D5495    call        @BoundErr
 006D549A    inc         edx
 006D549B    mov         byte ptr [ebx+edx+3DF],1
 006D54A3    inc         eax
 006D54A4    cmp         ax,3E8
>006D54A8    jne         006D5489
 006D54AA    mov         eax,ebx
 006D54AC    call        006D4E88
 006D54B1    pop         ebx
 006D54B2    ret
*}
end;

//006D54B4
procedure TFXCGroupsDlg.SetCheckMarks(s:string; AllowOnlyGeneralOrLocal:Boolean);
begin
{*
 006D54B4    push        ebp
 006D54B5    mov         ebp,esp
 006D54B7    add         esp,0FFFFFFF0
 006D54BA    push        ebx
 006D54BB    push        esi
 006D54BC    push        edi
 006D54BD    xor         ebx,ebx
 006D54BF    mov         dword ptr [ebp-10],ebx
 006D54C2    mov         dword ptr [ebp-8],ebx
 006D54C5    mov         ebx,ecx
 006D54C7    mov         dword ptr [ebp-4],edx
 006D54CA    mov         edi,eax
 006D54CC    mov         eax,dword ptr [ebp-4]
 006D54CF    call        @UStrAddRef
 006D54D4    xor         eax,eax
 006D54D6    push        ebp
 006D54D7    push        6D5654
 006D54DC    push        dword ptr fs:[eax]
 006D54DF    mov         dword ptr fs:[eax],esp
 006D54E2    test        bl,bl
>006D54E4    je          006D5502
 006D54E6    mov         eax,dword ptr [edi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D54EC    mov         edx,2
 006D54F1    call        TCustomRadioGroup.GetButtons
 006D54F6    xor         edx,edx
 006D54F8    mov         ecx,dword ptr [eax]
 006D54FA    call        dword ptr [ecx+88]
>006D5500    jmp         006D551C
 006D5502    mov         eax,dword ptr [edi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D5508    mov         edx,2
 006D550D    call        TCustomRadioGroup.GetButtons
 006D5512    mov         dl,1
 006D5514    mov         ecx,dword ptr [eax]
 006D5516    call        dword ptr [ecx+88]
 006D551C    lea         eax,[edi+3E0];TFXCGroupsDlg.BoolArr:?
 006D5522    xor         ecx,ecx
 006D5524    mov         edx,3E7
 006D5529    call        @FillChar
 006D552E    mov         eax,edi
 006D5530    call        006D4E88
 006D5535    mov         eax,dword ptr [edi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D553B    mov         edx,1
 006D5540    call        TRadioGroup.SetItemIndex
 006D5545    mov         eax,dword ptr [ebp-4]
 006D5548    mov         edx,dword ptr ds:[7C2EB0];^'Local'
 006D554E    call        @UStrEqual
>006D5553    je          006D5631
 006D5559    mov         eax,dword ptr [edi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D555F    xor         edx,edx
 006D5561    call        TRadioGroup.SetItemIndex
 006D5566    mov         eax,dword ptr [ebp-4]
 006D5569    mov         edx,dword ptr ds:[7C2EAC];^'General'
 006D556F    call        @UStrEqual
>006D5574    je          006D5631
 006D557A    lea         eax,[ebp-8]
 006D557D    call        @UStrClr
 006D5582    mov         eax,dword ptr [ebp-4]
 006D5585    test        eax,eax
>006D5587    je          006D558E
 006D5589    sub         eax,4
 006D558C    mov         eax,dword ptr [eax]
 006D558E    mov         esi,eax
 006D5590    test        esi,esi
>006D5592    jle         006D562A
 006D5598    mov         ebx,1
 006D559D    mov         eax,dword ptr [ebp-4]
 006D55A0    dec         ebx
 006D55A1    test        eax,eax
>006D55A3    je          006D55AA
 006D55A5    cmp         ebx,dword ptr [eax-4]
>006D55A8    jb          006D55AF
 006D55AA    call        @BoundErr
 006D55AF    inc         ebx
 006D55B0    cmp         word ptr [eax+ebx*2-2],3B
>006D55B6    je          006D55E5
 006D55B8    lea         eax,[ebp-10]
 006D55BB    mov         edx,dword ptr [ebp-4]
 006D55BE    dec         ebx
 006D55BF    test        edx,edx
>006D55C1    je          006D55C8
 006D55C3    cmp         ebx,dword ptr [edx-4]
>006D55C6    jb          006D55CD
 006D55C8    call        @BoundErr
 006D55CD    inc         ebx
 006D55CE    movzx       edx,word ptr [edx+ebx*2-2]
 006D55D3    call        @UStrFromWChar
 006D55D8    mov         edx,dword ptr [ebp-10]
 006D55DB    lea         eax,[ebp-8]
 006D55DE    call        @UStrCat
>006D55E3    jmp         006D5622
 006D55E5    lea         edx,[ebp-0C]
 006D55E8    mov         eax,dword ptr [ebp-8]
 006D55EB    call        @ValLong
 006D55F0    test        eax,eax
>006D55F2    jle         006D561A
 006D55F4    dec         eax
 006D55F5    cmp         eax,3E6
>006D55FA    jbe         006D5601
 006D55FC    call        @BoundErr
 006D5601    inc         eax
 006D5602    mov         byte ptr [edi+eax+3DF],1
 006D560A    mov         eax,dword ptr [edi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D5610    mov         edx,2
 006D5615    call        TRadioGroup.SetItemIndex
 006D561A    lea         eax,[ebp-8]
 006D561D    call        @UStrClr
 006D5622    inc         ebx
 006D5623    dec         esi
>006D5624    jne         006D559D
 006D562A    mov         eax,edi
 006D562C    call        006D4E88
 006D5631    xor         eax,eax
 006D5633    pop         edx
 006D5634    pop         ecx
 006D5635    pop         ecx
 006D5636    mov         dword ptr fs:[eax],edx
 006D5639    push        6D565B
 006D563E    lea         eax,[ebp-10]
 006D5641    call        @UStrClr
 006D5646    lea         eax,[ebp-8]
 006D5649    mov         edx,2
 006D564E    call        @UStrArrayClr
 006D5653    ret
>006D5654    jmp         @HandleFinally
>006D5659    jmp         006D563E
 006D565B    pop         edi
 006D565C    pop         esi
 006D565D    pop         ebx
 006D565E    mov         esp,ebp
 006D5660    pop         ebp
 006D5661    ret
*}
end;

//006D5664
procedure TFXCGroupsDlg.SetCheckMarks(CGRec:TCGRec; AllowOnlyGeneralOrLocal:Boolean);
begin
{*
 006D5664    push        ebx
 006D5665    push        esi
 006D5666    push        edi
 006D5667    push        ecx
 006D5668    mov         byte ptr [esp],cl
 006D566B    mov         edi,edx
 006D566D    mov         esi,eax
 006D566F    cmp         byte ptr [esp],0
>006D5673    je          006D5691
 006D5675    mov         edx,2
 006D567A    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D5680    call        TCustomRadioGroup.GetButtons
 006D5685    xor         edx,edx
 006D5687    mov         ecx,dword ptr [eax]
 006D5689    call        dword ptr [ecx+88]
>006D568F    jmp         006D56AB
 006D5691    mov         edx,2
 006D5696    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D569C    call        TCustomRadioGroup.GetButtons
 006D56A1    mov         dl,1
 006D56A3    mov         ecx,dword ptr [eax]
 006D56A5    call        dword ptr [ecx+88]
 006D56AB    lea         eax,[esi+3E0];TFXCGroupsDlg.BoolArr:?
 006D56B1    xor         ecx,ecx
 006D56B3    mov         edx,3E7
 006D56B8    call        @FillChar
 006D56BD    mov         eax,esi
 006D56BF    call        006D4E88
 006D56C4    mov         edx,1
 006D56C9    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D56CF    call        TRadioGroup.SetItemIndex
 006D56D4    test        byte ptr [edi+2],2
>006D56D8    jne         006D574E
 006D56DA    xor         edx,edx
 006D56DC    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D56E2    call        TRadioGroup.SetItemIndex
 006D56E7    test        byte ptr [edi+2],1
>006D56EB    jne         006D574E
 006D56ED    mov         bx,1
 006D56F1    movzx       eax,bx
 006D56F4    mov         ecx,eax
 006D56F6    and         ecx,7
 006D56F9    mov         edx,1
 006D56FE    shl         edx,cl
 006D5700    shr         eax,3
 006D5703    cmp         eax,7D
>006D5706    jbe         006D570D
 006D5708    call        @BoundErr
 006D570D    movzx       eax,byte ptr [edi+eax+4]
 006D5712    and         edx,eax
>006D5714    je          006D573F
 006D5716    movzx       eax,bx
 006D5719    dec         eax
 006D571A    cmp         eax,3E6
>006D571F    jbe         006D5726
 006D5721    call        @BoundErr
 006D5726    inc         eax
 006D5727    mov         byte ptr [esi+eax+3DF],1
 006D572F    mov         edx,2
 006D5734    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D573A    call        TRadioGroup.SetItemIndex
 006D573F    inc         ebx
 006D5740    cmp         bx,3E8
>006D5745    jne         006D56F1
 006D5747    mov         eax,esi
 006D5749    call        006D4E88
 006D574E    pop         edx
 006D574F    pop         edi
 006D5750    pop         esi
 006D5751    pop         ebx
 006D5752    ret
*}
end;

//006D5754
{*procedure TFXCGroupsDlg.GetCheckMarks(?:?);
begin
 006D5754    push        ebp
 006D5755    mov         ebp,esp
 006D5757    add         esp,0FFFFFFEC
 006D575A    push        ebx
 006D575B    push        esi
 006D575C    push        edi
 006D575D    xor         ecx,ecx
 006D575F    mov         dword ptr [ebp-4],ecx
 006D5762    mov         edi,edx
 006D5764    mov         esi,eax
 006D5766    xor         eax,eax
 006D5768    push        ebp
 006D5769    push        6D5821
 006D576E    push        dword ptr fs:[eax]
 006D5771    mov         dword ptr fs:[eax],esp
 006D5774    mov         eax,edi
 006D5776    call        @UStrClr
 006D577B    mov         eax,dword ptr [esi+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D5781    mov         eax,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006D5787    sub         eax,1
>006D578A    jb          006D5793
>006D578C    je          006D57A2
 006D578E    dec         eax
>006D578F    je          006D57B1
>006D5791    jmp         006D580B
 006D5793    mov         eax,edi
 006D5795    mov         edx,dword ptr ds:[7C2EAC];^'General'
 006D579B    call        @UStrAsg
>006D57A0    jmp         006D580B
 006D57A2    mov         eax,edi
 006D57A4    mov         edx,dword ptr ds:[7C2EB0];^'Local'
 006D57AA    call        @UStrAsg
>006D57AF    jmp         006D580B
 006D57B1    mov         bx,1
 006D57B5    movzx       eax,bx
 006D57B8    dec         eax
 006D57B9    cmp         eax,3E6
>006D57BE    jbe         006D57C5
 006D57C0    call        @BoundErr
 006D57C5    inc         eax
 006D57C6    cmp         byte ptr [esi+eax+3DF],1
>006D57CE    jne         006D5803
 006D57D0    lea         eax,[ebp-4]
 006D57D3    push        eax
 006D57D4    mov         eax,dword ptr [edi]
 006D57D6    mov         dword ptr [ebp-14],eax
 006D57D9    mov         byte ptr [ebp-10],11
 006D57DD    movzx       eax,bx
 006D57E0    mov         dword ptr [ebp-0C],eax
 006D57E3    mov         byte ptr [ebp-8],0
 006D57E7    lea         edx,[ebp-14]
 006D57EA    mov         ecx,1
 006D57EF    mov         eax,6D583C;'%s%.3d; '
 006D57F4    call        Format
 006D57F9    mov         edx,dword ptr [ebp-4]
 006D57FC    mov         eax,edi
 006D57FE    call        @UStrAsg
 006D5803    inc         ebx
 006D5804    cmp         bx,3E8
>006D5809    jne         006D57B5
 006D580B    xor         eax,eax
 006D580D    pop         edx
 006D580E    pop         ecx
 006D580F    pop         ecx
 006D5810    mov         dword ptr fs:[eax],edx
 006D5813    push        6D5828
 006D5818    lea         eax,[ebp-4]
 006D581B    call        @UStrClr
 006D5820    ret
>006D5821    jmp         @HandleFinally
>006D5826    jmp         006D5818
 006D5828    pop         edi
 006D5829    pop         esi
 006D582A    pop         ebx
 006D582B    mov         esp,ebp
 006D582D    pop         ebp
 006D582E    ret
end;*}

//006D5850
function TFXCGroupsDlg.GetCheckMarks(var CGRec:TCGRec):Boolean;
begin
{*
 006D5850    push        ebx
 006D5851    push        esi
 006D5852    push        edi
 006D5853    mov         esi,edx
 006D5855    mov         ebx,eax
 006D5857    mov         eax,esi
 006D5859    xor         ecx,ecx
 006D585B    mov         edx,82
 006D5860    call        @FillChar
 006D5865    mov         eax,dword ptr [ebx+3C0];TFXCGroupsDlg.rgMainSelection:TRadioGroup
 006D586B    mov         eax,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 006D5871    sub         eax,1
>006D5874    jb          006D587D
>006D5876    je          006D5883
 006D5878    dec         eax
>006D5879    je          006D5889
>006D587B    jmp         006D58F3
 006D587D    mov         byte ptr [esi+2],1
>006D5881    jmp         006D58F3
 006D5883    mov         byte ptr [esi+2],2
>006D5887    jmp         006D58F3
 006D5889    mov         ax,1
 006D588D    movzx       edx,ax
 006D5890    dec         edx
 006D5891    cmp         edx,3E6
>006D5897    jbe         006D589E
 006D5899    call        @BoundErr
 006D589E    inc         edx
 006D589F    cmp         byte ptr [ebx+edx+3DF],1
>006D58A7    jne         006D58EC
 006D58A9    movzx       edi,ax
 006D58AC    mov         ecx,edi
 006D58AE    and         ecx,7
 006D58B1    mov         edx,1
 006D58B6    shl         edx,cl
 006D58B8    mov         ecx,edi
 006D58BA    shr         ecx,3
 006D58BD    cmp         ecx,7D
>006D58C0    jbe         006D58C7
 006D58C2    call        @BoundErr
 006D58C7    movzx       ecx,byte ptr [esi+ecx+4]
 006D58CC    or          edx,ecx
 006D58CE    cmp         edx,0FF
>006D58D4    jbe         006D58DB
 006D58D6    call        @BoundErr
 006D58DB    shr         edi,3
 006D58DE    cmp         edi,7D
>006D58E1    jbe         006D58E8
 006D58E3    call        @BoundErr
 006D58E8    mov         byte ptr [esi+edi+4],dl
 006D58EC    inc         eax
 006D58ED    cmp         ax,3E8
>006D58F1    jne         006D588D
 006D58F3    mov         al,1
 006D58F5    pop         edi
 006D58F6    pop         esi
 006D58F7    pop         ebx
 006D58F8    ret
*}
end;

Initialization
Finalization
//006D58FC
{*
 006D58FC    push        ebp
 006D58FD    mov         ebp,esp
 006D58FF    xor         eax,eax
 006D5901    push        ebp
 006D5902    push        6D5937
 006D5907    push        dword ptr fs:[eax]
 006D590A    mov         dword ptr fs:[eax],esp
 006D590D    inc         dword ptr ds:[901F50]
>006D5913    jne         006D5929
 006D5915    mov         eax,7C2EAC;^'General'
 006D591A    call        @UStrClr
 006D591F    mov         eax,7C2EB0;^'Local'
 006D5924    call        @UStrClr
 006D5929    xor         eax,eax
 006D592B    pop         edx
 006D592C    pop         ecx
 006D592D    pop         ecx
 006D592E    mov         dword ptr fs:[eax],edx
 006D5931    push        6D593E
 006D5936    ret
>006D5937    jmp         @HandleFinally
>006D593C    jmp         006D5936
 006D593E    pop         ebp
 006D593F    ret
*}
end.