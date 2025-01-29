//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXNetData;

interface

uses
  SysUtils, Classes, Xml.XMLDoc, FXCalErrFrm, uHaspKey, FXLicFileU, FXStartUp, FXConfigData, FXPanelData, FXIOData, FXDbgForm, FXAddressData, FXTextData, System.TypInfo, System.Classes;

type
  TFXPanel = class(TObject)
  published
    function IsControlGroupB2Configured:Boolean;//006A5424
    destructor Destroy();//006A53D8
    constructor Create(FXPanelType:Byte);//006A52B4
  public
    iType:Integer;//f4
    FXPCI:TFXPCI;//f8
    FXPPD:TFXPPD;//fC
    FXPIO:TFXPIO;//f10
    FXPAD:TFXPAD;//f14
    FXPTD:TFXPTD;//f18
  end;
  TFXNet = class(TObject)
  published
    function GetPanel(indx:Integer):TFXPanel;//006A56A0
    procedure SetPanel(indx:Integer; FxPanel:TFXPanel);//006A56B0
    function CheckForErrors:Boolean;//006A6668
    constructor Create;//006A55A0
    destructor Destroy();//006A562C
  public
    FNetName:string;//f4
    FPanels:?;//f8
    NDError:Boolean;//f8C
    ADError:Boolean;//f8D
    NDErrors:TStringList;//f90
    MCErrors:TStringList;//f94
    IOErrors:TStringList;//f98
    ADErrors:TStringList;//f9C
  end;
    //function sub_006A56C0(?:TFXNet):?;//006A56C0
    //function sub_006A5C58(?:TFXNet):?;//006A5C58
    //function sub_006A6344(?:TFXNet):?;//006A6344
    //function sub_006A64C4(?:TFXNet):?;//006A64C4

implementation

//006A52B4
constructor TFXPanel.Create(FXPanelType:Byte);
begin
{*
 006A52B4    push        ebp
 006A52B5    mov         ebp,esp
 006A52B7    push        ecx
 006A52B8    push        ebx
 006A52B9    push        esi
 006A52BA    test        dl,dl
>006A52BC    je          006A52C6
 006A52BE    add         esp,0FFFFFFF0
 006A52C1    call        @ClassCreate
 006A52C6    mov         ebx,ecx
 006A52C8    mov         byte ptr [ebp-1],dl
 006A52CB    mov         esi,eax
 006A52CD    xor         edx,edx
 006A52CF    mov         eax,esi
 006A52D1    call        TObject.Create
 006A52D6    mov         dl,1
 006A52D8    mov         eax,[006709A4];TFXPCI
 006A52DD    call        TObject.Create;TFXPCI.Create
 006A52E2    mov         dword ptr [esi+8],eax;TFXPanel.FXPCI:TFXPCI
 006A52E5    mov         ecx,ebx
 006A52E7    mov         dl,1
 006A52E9    mov         eax,[0069E56C];TFXPPD
 006A52EE    call        TFXPPD.Create;TFXPPD.Create
 006A52F3    mov         dword ptr [esi+0C],eax;TFXPanel.FXPPD:TFXPPD
 006A52F6    mov         ecx,ebx
 006A52F8    mov         dl,1
 006A52FA    mov         eax,[00697ADC];TFXPIO
 006A52FF    call        TFXPIO.Create;TFXPIO.Create
 006A5304    mov         dword ptr [esi+10],eax;TFXPanel.FXPIO:TFXPIO
 006A5307    mov         dl,1
 006A5309    mov         eax,[00679CD8];TFXPAD
 006A530E    call        TFXPAD.Create;TFXPAD.Create
 006A5313    mov         dword ptr [esi+14],eax;TFXPanel.FXPAD:TFXPAD
 006A5316    mov         dl,1
 006A5318    mov         eax,[00671E58];TFXPTD
 006A531D    call        TObject.Create;TFXPTD.Create
 006A5322    mov         dword ptr [esi+18],eax;TFXPanel.FXPTD:TFXPTD
 006A5325    mov         edx,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A5328    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006A532B    mov         dword ptr [eax+20C],edx;TFXPPD.CI:TFXPCI
 006A5331    mov         edx,dword ptr [esi+10];TFXPanel.FXPIO:TFXPIO
 006A5334    mov         dword ptr [eax+210],edx;TFXPPD.IO:TFXPIO
 006A533A    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A533D    mov         edx,dword ptr [esi+10];TFXPanel.FXPIO:TFXPIO
 006A5340    mov         dword ptr [edx+4818],eax;TFXPIO.CI:TFXPCI
 006A5346    mov         edx,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A5349    mov         eax,dword ptr [esi+14];TFXPanel.FXPAD:TFXPAD
 006A534C    mov         dword ptr [eax+87664],edx;TFXPAD.CI:TFXPCI
 006A5352    mov         edx,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006A5355    mov         dword ptr [eax+87668],edx;TFXPAD.PD:TFXPPD
 006A535B    mov         edx,dword ptr [esi+18];TFXPanel.FXPTD:TFXPTD
 006A535E    mov         dword ptr [eax+8766C],edx;TFXPAD.TD:TFXPTD
 006A5364    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006A5367    mov         edx,dword ptr [esi+18];TFXPanel.FXPTD:TFXPTD
 006A536A    mov         dword ptr [edx+2F904],eax;TFXPTD.PD:TFXPPD
 006A5370    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A5373    call        TFXPCI.InitFXCInfo
 006A5378    mov         eax,dword ptr [esi+14];TFXPanel.FXPAD:TFXPAD
 006A537B    call        TFXPAD.InitFXAData
 006A5380    mov         eax,dword ptr [esi+18];TFXPanel.FXPTD:TFXPTD
 006A5383    call        TFXPTD.InitFXTData
 006A5388    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A538B    lea         edx,[eax+4];TFXPCI.FXCI:TFXCIRec
 006A538E    call        TFXPCI.SetConfigInfo
 006A5393    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A5396    lea         edx,[eax+44]
 006A5399    call        TFXPCI.SetConfigInfo
 006A539E    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A53A1    lea         edx,[eax+84]
 006A53A7    call        TFXPCI.SetConfigInfo
 006A53AC    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A53AF    lea         edx,[eax+0C4]
 006A53B5    call        TFXPCI.SetConfigInfo
 006A53BA    mov         eax,esi
 006A53BC    cmp         byte ptr [ebp-1],0
>006A53C0    je          006A53D1
 006A53C2    call        @AfterConstruction
 006A53C7    pop         dword ptr fs:[0]
 006A53CE    add         esp,0C
 006A53D1    mov         eax,esi
 006A53D3    pop         esi
 006A53D4    pop         ebx
 006A53D5    pop         ecx
 006A53D6    pop         ebp
 006A53D7    ret
*}
end;

//006A53D8
destructor TFXPanel.Destroy();
begin
{*
 006A53D8    push        ebx
 006A53D9    push        esi
 006A53DA    call        @BeforeDestruction
 006A53DF    mov         ebx,edx
 006A53E1    mov         esi,eax
 006A53E3    mov         eax,dword ptr [esi+8];TFXPanel.FXPCI:TFXPCI
 006A53E6    call        TObject.Free
 006A53EB    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006A53EE    call        TObject.Free
 006A53F3    mov         eax,dword ptr [esi+10];TFXPanel.FXPIO:TFXPIO
 006A53F6    call        TObject.Free
 006A53FB    mov         eax,dword ptr [esi+14];TFXPanel.FXPAD:TFXPAD
 006A53FE    call        TObject.Free
 006A5403    mov         eax,dword ptr [esi+18];TFXPanel.FXPTD:TFXPTD
 006A5406    call        TObject.Free
 006A540B    mov         dl,0FC
 006A540D    and         dl,bl
 006A540F    mov         eax,esi
 006A5411    call        TObject.Destroy
 006A5416    test        bl,bl
>006A5418    jle         006A5421
 006A541A    mov         eax,esi
 006A541C    call        @ClassDestroy
 006A5421    pop         esi
 006A5422    pop         ebx
 006A5423    ret
*}
end;

//006A5424
function TFXPanel.IsControlGroupB2Configured:Boolean;
begin
{*
 006A5424    push        ebx
 006A5425    push        esi
 006A5426    push        edi
 006A5427    mov         ebx,eax
 006A5429    xor         edi,edi
 006A542B    mov         esi,1
 006A5430    mov         ecx,esi
 006A5432    cmp         ecx,0FF
>006A5438    jbe         006A543F
 006A543A    call        @BoundErr
 006A543F    mov         edx,edi
 006A5441    cmp         edx,0FF
>006A5447    jbe         006A544E
 006A5449    call        @BoundErr
 006A544E    mov         eax,dword ptr [ebx+10];TFXPanel.FXPIO:TFXPIO
 006A5451    call        TFXPIO.GetCCICtrlGroupC
 006A5456    test        ax,ax
>006A5459    je          006A5462
 006A545B    mov         al,1
>006A545D    jmp         006A559A
 006A5462    inc         esi
 006A5463    cmp         esi,3
>006A5466    jne         006A5430
 006A5468    mov         edi,1
 006A546D    mov         edx,edi
 006A546F    cmp         edx,0FF
>006A5475    jbe         006A547C
 006A5477    call        @BoundErr
 006A547C    mov         eax,dword ptr [ebx+10];TFXPanel.FXPIO:TFXPIO
 006A547F    call        TFXPIO.GetIOCtrlrType
 006A5484    cmp         al,1
>006A5486    jne         006A54C5
 006A5488    mov         esi,1
 006A548D    mov         ecx,esi
 006A548F    cmp         ecx,0FF
>006A5495    jbe         006A549C
 006A5497    call        @BoundErr
 006A549C    mov         edx,edi
 006A549E    cmp         edx,0FF
>006A54A4    jbe         006A54AB
 006A54A6    call        @BoundErr
 006A54AB    mov         eax,dword ptr [ebx+10];TFXPanel.FXPIO:TFXPIO
 006A54AE    call        TFXPIO.GetCCICtrlGroupC
 006A54B3    test        ax,ax
>006A54B6    je          006A54BF
 006A54B8    mov         al,1
>006A54BA    jmp         006A559A
 006A54BF    inc         esi
 006A54C0    cmp         esi,5
>006A54C3    jne         006A548D
 006A54C5    inc         edi
 006A54C6    cmp         edi,5
>006A54C9    jne         006A546D
 006A54CB    xor         esi,esi
 006A54CD    xor         edx,edx
 006A54CF    mov         eax,1
 006A54D4    cmp         esi,7
>006A54D7    jbe         006A54DE
 006A54D9    call        @BoundErr
 006A54DE    imul        ecx,esi,43B3
>006A54E4    jno         006A54EB
 006A54E6    call        @IntOver
 006A54EB    mov         edi,dword ptr [ebx+14];TFXPanel.FXPAD:TFXPAD
 006A54EE    lea         ecx,[edi+ecx*4]
 006A54F1    push        ecx
 006A54F2    cmp         edx,1
>006A54F5    jbe         006A54FC
 006A54F7    call        @BoundErr
 006A54FC    imul        ecx,edx,43B3
>006A5502    jno         006A5509
 006A5504    call        @IntOver
 006A5509    pop         edi
 006A550A    lea         ecx,[edi+ecx*2]
 006A550D    push        ecx
 006A550E    dec         eax
 006A550F    cmp         eax,9E
>006A5514    jbe         006A551B
 006A5516    call        @BoundErr
 006A551B    inc         eax
 006A551C    imul        ecx,eax,6D
>006A551F    jno         006A5526
 006A5521    call        @IntOver
 006A5526    pop         edi
 006A5527    cmp         word ptr [edi+ecx*2-4],0
>006A552D    je          006A5533
 006A552F    mov         al,1
>006A5531    jmp         006A559A
 006A5533    inc         eax
 006A5534    cmp         eax,0A0
>006A5539    jne         006A54D4
 006A553B    inc         edx
 006A553C    cmp         edx,2
>006A553F    jne         006A54CF
 006A5541    inc         esi
 006A5542    cmp         esi,8
>006A5545    jne         006A54CD
 006A5547    mov         eax,dword ptr [ebx+0C];TFXPanel.FXPPD:TFXPPD
 006A554A    cmp         byte ptr [eax+194],0
>006A5551    je          006A5557
 006A5553    mov         al,1
>006A5555    jmp         006A559A
 006A5557    mov         esi,dword ptr [ebx+18];TFXPanel.FXPTD:TFXPTD
 006A555A    cmp         byte ptr [esi+27C46],0
>006A5561    je          006A5567
 006A5563    mov         al,1
>006A5565    jmp         006A559A
 006A5567    cmp         byte ptr [esi+27C86],0
>006A556E    je          006A5574
 006A5570    mov         al,1
>006A5572    jmp         006A559A
 006A5574    mov         eax,dword ptr [ebx+0C];TFXPanel.FXPPD:TFXPPD
 006A5577    movzx       edx,byte ptr [eax+195]
 006A557E    test        dl,dl
>006A5580    je          006A558B
 006A5582    cmp         dl,5
>006A5585    je          006A558B
 006A5587    mov         al,1
>006A5589    jmp         006A559A
 006A558B    cmp         byte ptr [eax+196],0
>006A5592    je          006A5598
 006A5594    mov         al,1
>006A5596    jmp         006A559A
 006A5598    xor         eax,eax
 006A559A    pop         edi
 006A559B    pop         esi
 006A559C    pop         ebx
 006A559D    ret
*}
end;

//006A55A0
constructor TFXNet.Create;
begin
{*
 006A55A0    push        ebx
 006A55A1    push        esi
 006A55A2    test        dl,dl
>006A55A4    je          006A55AE
 006A55A6    add         esp,0FFFFFFF0
 006A55A9    call        @ClassCreate
 006A55AE    mov         ebx,edx
 006A55B0    mov         esi,eax
 006A55B2    xor         edx,edx
 006A55B4    mov         eax,esi
 006A55B6    call        TObject.Create
 006A55BB    lea         eax,[esi+4];TFXNet.FNetName:string
 006A55BE    mov         edx,dword ptr ds:[7C2A18];^'New FXNet'
 006A55C4    call        @UStrAsg
 006A55C9    mov         dl,1
 006A55CB    mov         eax,[0046F9A0];TStringList
 006A55D0    call        TStringList.Create;TStringList.Create
 006A55D5    mov         dword ptr [esi+90],eax;TFXNet.NDErrors:TStringList
 006A55DB    mov         dl,1
 006A55DD    mov         eax,[0046F9A0];TStringList
 006A55E2    call        TStringList.Create;TStringList.Create
 006A55E7    mov         dword ptr [esi+94],eax;TFXNet.MCErrors:TStringList
 006A55ED    mov         dl,1
 006A55EF    mov         eax,[0046F9A0];TStringList
 006A55F4    call        TStringList.Create;TStringList.Create
 006A55F9    mov         dword ptr [esi+98],eax;TFXNet.IOErrors:TStringList
 006A55FF    mov         dl,1
 006A5601    mov         eax,[0046F9A0];TStringList
 006A5606    call        TStringList.Create;TStringList.Create
 006A560B    mov         dword ptr [esi+9C],eax;TFXNet.ADErrors:TStringList
 006A5611    mov         eax,esi
 006A5613    test        bl,bl
>006A5615    je          006A5626
 006A5617    call        @AfterConstruction
 006A561C    pop         dword ptr fs:[0]
 006A5623    add         esp,0C
 006A5626    mov         eax,esi
 006A5628    pop         esi
 006A5629    pop         ebx
 006A562A    ret
*}
end;

//006A562C
destructor TFXNet.Destroy();
begin
{*
 006A562C    push        ebx
 006A562D    push        esi
 006A562E    push        edi
 006A562F    call        @BeforeDestruction
 006A5634    mov         ebx,edx
 006A5636    mov         esi,eax
 006A5638    xor         edi,edi
 006A563A    mov         edx,edi
 006A563C    mov         eax,esi
 006A563E    call        TFXNet.GetPanel
 006A5643    test        eax,eax
>006A5645    je          006A5655
 006A5647    mov         edx,edi
 006A5649    mov         eax,esi
 006A564B    call        TFXNet.GetPanel
 006A5650    call        TObject.Free
 006A5655    inc         edi
 006A5656    cmp         edi,21
>006A5659    jne         006A563A
 006A565B    lea         eax,[esi+4];TFXNet.FNetName:string
 006A565E    call        @UStrClr
 006A5663    mov         eax,dword ptr [esi+90];TFXNet.NDErrors:TStringList
 006A5669    call        TObject.Free
 006A566E    mov         eax,dword ptr [esi+94];TFXNet.MCErrors:TStringList
 006A5674    call        TObject.Free
 006A5679    mov         eax,dword ptr [esi+98];TFXNet.IOErrors:TStringList
 006A567F    call        TObject.Free
 006A5684    mov         eax,dword ptr [esi+9C];TFXNet.ADErrors:TStringList
 006A568A    call        TObject.Free
 006A568F    test        bl,bl
>006A5691    jle         006A569A
 006A5693    mov         eax,esi
 006A5695    call        @ClassDestroy
 006A569A    pop         edi
 006A569B    pop         esi
 006A569C    pop         ebx
 006A569D    ret
*}
end;

//006A56A0
function TFXNet.GetPanel(indx:Integer):TFXPanel;
begin
{*
 006A56A0    cmp         edx,20
>006A56A3    jbe         006A56AA
 006A56A5    call        @BoundErr
 006A56AA    mov         eax,dword ptr [eax+edx*4+8]
 006A56AE    ret
*}
end;

//006A56B0
procedure TFXNet.SetPanel(indx:Integer; FxPanel:TFXPanel);
begin
{*
 006A56B0    cmp         edx,20
>006A56B3    jbe         006A56BA
 006A56B5    call        @BoundErr
 006A56BA    mov         dword ptr [eax+edx*4+8],ecx
 006A56BE    ret
*}
end;

//006A56C0
{*function sub_006A56C0(?:TFXNet):?;
begin
 006A56C0    push        ebp
 006A56C1    mov         ebp,esp
 006A56C3    add         esp,0FFFFFFA0
 006A56C6    push        ebx
 006A56C7    push        esi
 006A56C8    push        edi
 006A56C9    xor         edx,edx
 006A56CB    mov         dword ptr [ebp-50],edx
 006A56CE    mov         dword ptr [ebp-4C],edx
 006A56D1    mov         dword ptr [ebp-4],eax
 006A56D4    xor         eax,eax
 006A56D6    push        ebp
 006A56D7    push        6A5AA5
 006A56DC    push        dword ptr fs:[eax]
 006A56DF    mov         dword ptr fs:[eax],esp
 006A56E2    lea         eax,[ebp-45]
 006A56E5    xor         ecx,ecx
 006A56E7    mov         edx,21
 006A56EC    call        @FillChar
 006A56F1    mov         byte ptr [ebp-1D],0
 006A56F5    mov         byte ptr [ebp-5],0
 006A56F9    mov         dl,1
 006A56FB    mov         eax,[0046F9A0];TStringList
 006A5700    call        TStringList.Create;TStringList.Create
 006A5705    mov         dword ptr [ebp-24],eax
 006A5708    xor         ecx,ecx
 006A570A    push        ebp
 006A570B    push        6A5A83
 006A5710    push        dword ptr fs:[ecx]
 006A5713    mov         dword ptr fs:[ecx],esp
 006A5716    xor         edx,edx
 006A5718    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A571D    call        TFXNet.GetPanel
 006A5722    test        eax,eax
>006A5724    je          006A5853
 006A572A    mov         edx,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006A572D    mov         dword ptr [ebp-14],edx
 006A5730    mov         edx,dword ptr [ebp-14]
 006A5733    cmp         byte ptr [edx+104],2
>006A573A    je          006A574C
 006A573C    mov         edx,dword ptr [ebp-14]
 006A573F    cmp         byte ptr [edx+108],1
>006A5746    jne         006A5853
 006A574C    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 006A574F    mov         dword ptr [ebp-18],eax
 006A5752    xor         eax,eax
 006A5754    mov         dword ptr [ebp-1C],eax
 006A5757    mov         esi,1
 006A575C    mov         ebx,38
 006A5761    mov         edx,dword ptr [ebp-1C]
 006A5764    cmp         edx,7
>006A5767    jbe         006A576E
 006A5769    call        @BoundErr
 006A576E    imul        edx,edx,43B3
>006A5774    jno         006A577B
 006A5776    call        @IntOver
 006A577B    mov         ecx,dword ptr [ebp-18]
 006A577E    lea         edx,[ecx+edx*4]
 006A5781    push        edx
 006A5782    cmp         esi,1
>006A5785    jbe         006A578C
 006A5787    call        @BoundErr
 006A578C    imul        edx,esi,43B3
>006A5792    jno         006A5799
 006A5794    call        @IntOver
 006A5799    pop         ecx
 006A579A    lea         edx,[ecx+edx*2]
 006A579D    push        edx
 006A579E    dec         ebx
 006A579F    cmp         ebx,9E
>006A57A5    jbe         006A57AC
 006A57A7    call        @BoundErr
 006A57AC    inc         ebx
 006A57AD    imul        eax,ebx,6D
>006A57B0    jno         006A57B7
 006A57B2    call        @IntOver
 006A57B7    pop         edx
 006A57B8    cmp         byte ptr [edx+eax*2-0D2],0C8
>006A57C0    jne         006A582F
 006A57C2    mov         edx,dword ptr [ebp-1C]
 006A57C5    cmp         edx,7
>006A57C8    jbe         006A57CF
 006A57CA    call        @BoundErr
 006A57CF    imul        edx,edx,43B3
>006A57D5    jno         006A57DC
 006A57D7    call        @IntOver
 006A57DC    mov         ecx,dword ptr [ebp-18]
 006A57DF    lea         edx,[ecx+edx*4]
 006A57E2    push        edx
 006A57E3    cmp         esi,1
>006A57E6    jbe         006A57ED
 006A57E8    call        @BoundErr
 006A57ED    imul        edx,esi,43B3
>006A57F3    jno         006A57FA
 006A57F5    call        @IntOver
 006A57FA    pop         ecx
 006A57FB    lea         edx,[ecx+edx*2]
 006A57FE    push        edx
 006A57FF    pop         edx
 006A5800    cmp         byte ptr [edx+eax*2-0CC],0
>006A5808    je          006A582F
 006A580A    mov         byte ptr [ebp-1D],1
 006A580E    lea         eax,[ebp-4C]
 006A5811    push        eax
 006A5812    lea         edx,[ebp-4C]
 006A5815    or          ecx,0FFFFFFFF
 006A5818    mov         eax,6A5AC4;'Panel 0 has Info communication and address(es) > 255'
 006A581D    call        Format
 006A5822    mov         edx,dword ptr [ebp-4C]
 006A5825    mov         eax,dword ptr [ebp-24]
 006A5828    mov         ecx,dword ptr [eax]
 006A582A    call        dword ptr [ecx+3C];TStringList.Add
>006A582D    jmp         006A583C
 006A582F    inc         ebx
 006A5830    cmp         ebx,0A0
>006A5836    jne         006A5761
 006A583C    inc         esi
 006A583D    cmp         esi,2
>006A5840    jne         006A575C
 006A5846    inc         dword ptr [ebp-1C]
 006A5849    cmp         dword ptr [ebp-1C],8
>006A584D    jne         006A5757
 006A5853    mov         dword ptr [ebp-0C],1
 006A585A    mov         edx,dword ptr [ebp-0C]
 006A585D    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A5862    call        TFXNet.GetPanel
 006A5867    test        eax,eax
>006A5869    je          006A5A32
 006A586F    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006A5872    mov         dword ptr [ebp-14],eax
 006A5875    mov         eax,dword ptr [ebp-14]
 006A5878    cmp         byte ptr [eax+104],2
>006A587F    je          006A5891
 006A5881    mov         eax,dword ptr [ebp-14]
 006A5884    cmp         byte ptr [eax+108],1
>006A588B    jne         006A5A32
 006A5891    xor         eax,eax
 006A5893    mov         dword ptr [ebp-10],eax
 006A5896    mov         eax,dword ptr [ebp-14]
 006A5899    mov         edx,dword ptr [ebp-10]
 006A589C    cmp         edx,1F
>006A589F    ja          006A58A8
 006A58A1    bt          dword ptr [eax+171],edx
>006A58A8    jae         006A5A25
 006A58AE    mov         eax,dword ptr [ebp-10]
 006A58B1    add         eax,1
>006A58B4    jno         006A58BB
 006A58B6    call        @IntOver
 006A58BB    mov         edx,eax
 006A58BD    cmp         edx,20
>006A58C0    jbe         006A58C7
 006A58C2    call        @BoundErr
 006A58C7    cmp         byte ptr [ebp+edx-45],0
>006A58CC    jne         006A5A25
 006A58D2    mov         byte ptr [ebp+edx-45],1
 006A58D7    mov         edx,eax
 006A58D9    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A58DE    call        TFXNet.GetPanel
 006A58E3    test        eax,eax
>006A58E5    je          006A5A25
 006A58EB    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 006A58EE    mov         dword ptr [ebp-18],eax
 006A58F1    xor         eax,eax
 006A58F3    mov         dword ptr [ebp-1C],eax
 006A58F6    mov         esi,1
 006A58FB    mov         ebx,38
 006A5900    mov         edx,dword ptr [ebp-1C]
 006A5903    cmp         edx,7
>006A5906    jbe         006A590D
 006A5908    call        @BoundErr
 006A590D    imul        edx,edx,43B3
>006A5913    jno         006A591A
 006A5915    call        @IntOver
 006A591A    mov         ecx,dword ptr [ebp-18]
 006A591D    lea         edx,[ecx+edx*4]
 006A5920    push        edx
 006A5921    cmp         esi,1
>006A5924    jbe         006A592B
 006A5926    call        @BoundErr
 006A592B    imul        edx,esi,43B3
>006A5931    jno         006A5938
 006A5933    call        @IntOver
 006A5938    pop         ecx
 006A5939    lea         edx,[ecx+edx*2]
 006A593C    push        edx
 006A593D    dec         ebx
 006A593E    cmp         ebx,9E
>006A5944    jbe         006A594B
 006A5946    call        @BoundErr
 006A594B    inc         ebx
 006A594C    imul        eax,ebx,6D
>006A594F    jno         006A5956
 006A5951    call        @IntOver
 006A5956    pop         edx
 006A5957    cmp         byte ptr [edx+eax*2-0D2],0C8
>006A595F    jne         006A5A01
 006A5965    mov         edx,dword ptr [ebp-1C]
 006A5968    cmp         edx,7
>006A596B    jbe         006A5972
 006A596D    call        @BoundErr
 006A5972    imul        edx,edx,43B3
>006A5978    jno         006A597F
 006A597A    call        @IntOver
 006A597F    mov         ecx,dword ptr [ebp-18]
 006A5982    lea         edx,[ecx+edx*4]
 006A5985    push        edx
 006A5986    cmp         esi,1
>006A5989    jbe         006A5990
 006A598B    call        @BoundErr
 006A5990    imul        edx,esi,43B3
>006A5996    jno         006A599D
 006A5998    call        @IntOver
 006A599D    pop         ecx
 006A599E    lea         edx,[ecx+edx*2]
 006A59A1    push        edx
 006A59A2    pop         edx
 006A59A3    cmp         byte ptr [edx+eax*2-0CC],0
>006A59AB    je          006A5A01
 006A59AD    mov         edi,dword ptr [ebp-10]
 006A59B0    add         edi,1
>006A59B3    jno         006A59BA
 006A59B5    call        @IntOver
 006A59BA    cmp         edi,20
>006A59BD    jbe         006A59C4
 006A59BF    call        @BoundErr
 006A59C4    mov         byte ptr [ebp+edi-45],2
 006A59C9    mov         byte ptr [ebp-1D],1
 006A59CD    lea         eax,[ebp-50]
 006A59D0    push        eax
 006A59D1    mov         eax,dword ptr [ebp-0C]
 006A59D4    mov         dword ptr [ebp-60],eax
 006A59D7    mov         byte ptr [ebp-5C],0
 006A59DB    mov         dword ptr [ebp-58],edi
 006A59DE    mov         byte ptr [ebp-54],0
 006A59E2    lea         edx,[ebp-60]
 006A59E5    mov         ecx,1
 006A59EA    mov         eax,6A5B3C;'Seeing panel %d has Info communication, visible panel %d has address(es) > 2...
 006A59EF    call        Format
 006A59F4    mov         edx,dword ptr [ebp-50]
 006A59F7    mov         eax,dword ptr [ebp-24]
 006A59FA    mov         ecx,dword ptr [eax]
 006A59FC    call        dword ptr [ecx+3C];TStringList.Add
>006A59FF    jmp         006A5A0E
 006A5A01    inc         ebx
 006A5A02    cmp         ebx,0A0
>006A5A08    jne         006A5900
 006A5A0E    inc         esi
 006A5A0F    cmp         esi,2
>006A5A12    jne         006A58FB
 006A5A18    inc         dword ptr [ebp-1C]
 006A5A1B    cmp         dword ptr [ebp-1C],8
>006A5A1F    jne         006A58F6
 006A5A25    inc         dword ptr [ebp-10]
 006A5A28    cmp         dword ptr [ebp-10],20
>006A5A2C    jne         006A5896
 006A5A32    inc         dword ptr [ebp-0C]
 006A5A35    cmp         dword ptr [ebp-0C],21
>006A5A39    jne         006A585A
 006A5A3F    cmp         byte ptr [ebp-1D],0
>006A5A43    je          006A5A6D
 006A5A45    mov         eax,dword ptr [ebp-4]
 006A5A48    mov         eax,dword ptr [eax+9C]
 006A5A4E    mov         edx,6A5BE8;'Info communication can not handle address numbers > 255'
 006A5A53    mov         ecx,dword ptr [eax]
 006A5A55    call        dword ptr [ecx+3C]
 006A5A58    mov         eax,dword ptr [ebp-4]
 006A5A5B    mov         eax,dword ptr [eax+9C]
 006A5A61    mov         edx,dword ptr [ebp-24]
 006A5A64    mov         ecx,dword ptr [eax]
 006A5A66    call        dword ptr [ecx+44]
 006A5A69    mov         byte ptr [ebp-5],1
 006A5A6D    xor         eax,eax
 006A5A6F    pop         edx
 006A5A70    pop         ecx
 006A5A71    pop         ecx
 006A5A72    mov         dword ptr fs:[eax],edx
 006A5A75    push        6A5A8A
 006A5A7A    mov         eax,dword ptr [ebp-24]
 006A5A7D    call        TObject.Free
 006A5A82    ret
>006A5A83    jmp         @HandleFinally
>006A5A88    jmp         006A5A7A
 006A5A8A    xor         eax,eax
 006A5A8C    pop         edx
 006A5A8D    pop         ecx
 006A5A8E    pop         ecx
 006A5A8F    mov         dword ptr fs:[eax],edx
 006A5A92    push        6A5AAC
 006A5A97    lea         eax,[ebp-50]
 006A5A9A    mov         edx,2
 006A5A9F    call        @UStrArrayClr
 006A5AA4    ret
>006A5AA5    jmp         @HandleFinally
>006A5AAA    jmp         006A5A97
 006A5AAC    movzx       eax,byte ptr [ebp-5]
 006A5AB0    pop         edi
 006A5AB1    pop         esi
 006A5AB2    pop         ebx
 006A5AB3    mov         esp,ebp
 006A5AB5    pop         ebp
 006A5AB6    ret
end;*}

//006A5C58
{*function sub_006A5C58(?:TFXNet):?;
begin
 006A5C58    push        ebp
 006A5C59    mov         ebp,esp
 006A5C5B    add         esp,0FFFFFF48
 006A5C61    push        ebx
 006A5C62    push        esi
 006A5C63    push        edi
 006A5C64    xor         edx,edx
 006A5C66    mov         dword ptr [ebp-0B8],edx
 006A5C6C    mov         dword ptr [ebp-84],edx
 006A5C72    mov         dword ptr [ebp-68],edx
 006A5C75    mov         dword ptr [ebp-64],edx
 006A5C78    mov         dword ptr [ebp-50],edx
 006A5C7B    mov         dword ptr [ebp-4],edx
 006A5C7E    mov         dword ptr [ebp-8],eax
 006A5C81    xor         eax,eax
 006A5C83    push        ebp
 006A5C84    push        6A60D2
 006A5C89    push        dword ptr fs:[eax]
 006A5C8C    mov         dword ptr fs:[eax],esp
 006A5C8F    mov         byte ptr [ebp-9],0
 006A5C93    mov         byte ptr [ebp-39],0
 006A5C97    mov         byte ptr [ebp-3A],0
 006A5C9B    mov         byte ptr [ebp-3B],0
 006A5C9F    mov         eax,dword ptr [ebp-8]
 006A5CA2    mov         eax,dword ptr [eax+90]
 006A5CA8    mov         edx,dword ptr [eax]
 006A5CAA    call        dword ptr [edx+48]
 006A5CAD    mov         dl,1
 006A5CAF    mov         eax,[0046F9A0];TStringList
 006A5CB4    call        TStringList.Create;TStringList.Create
 006A5CB9    mov         dword ptr [ebp-44],eax
 006A5CBC    mov         dl,1
 006A5CBE    mov         eax,[0046F9A0];TStringList
 006A5CC3    call        TStringList.Create;TStringList.Create
 006A5CC8    mov         dword ptr [ebp-48],eax
 006A5CCB    mov         dl,1
 006A5CCD    mov         eax,[0046F9A0];TStringList
 006A5CD2    call        TStringList.Create;TStringList.Create
 006A5CD7    mov         dword ptr [ebp-4C],eax
 006A5CDA    xor         eax,eax
 006A5CDC    mov         dword ptr [ebp-10],eax
 006A5CDF    mov         edx,dword ptr [ebp-10]
 006A5CE2    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A5CE7    call        TFXNet.GetPanel
 006A5CEC    test        eax,eax
>006A5CEE    je          006A6026
 006A5CF4    mov         edx,dword ptr [ebp-10]
 006A5CF7    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A5CFC    call        TFXNet.GetPanel
 006A5D01    mov         ebx,eax
 006A5D03    mov         esi,dword ptr [ebx+0C];TFXPanel.FXPPD:TFXPPD
 006A5D06    movzx       eax,byte ptr [esi+122]
 006A5D0D    mov         dword ptr [ebp-38],eax
 006A5D10    mov         eax,esi
 006A5D12    call        006A3430
 006A5D17    movzx       eax,al
 006A5D1A    mov         dword ptr [ebp-18],eax
 006A5D1D    mov         eax,dword ptr [ebx+0C];TFXPanel.FXPPD:TFXPPD
 006A5D20    call        006A34B0
 006A5D25    movzx       eax,al
 006A5D28    mov         dword ptr [ebp-20],eax
 006A5D2B    mov         esi,dword ptr [ebx+0C];TFXPanel.FXPPD:TFXPPD
 006A5D2E    movzx       eax,word ptr [esi+123]
 006A5D35    mov         dword ptr [ebp-28],eax
 006A5D38    mov         eax,esi
 006A5D3A    call        006A2DE4
 006A5D3F    movzx       eax,ax
 006A5D42    mov         dword ptr [ebp-30],eax
 006A5D45    mov         eax,dword ptr [ebp-10]
 006A5D48    cmp         eax,dword ptr [ebp-38]
>006A5D4B    je          006A5D86
 006A5D4D    mov         byte ptr [ebp-39],1
 006A5D51    lea         eax,[ebp-50]
 006A5D54    push        eax
 006A5D55    mov         eax,dword ptr [ebp-10]
 006A5D58    mov         dword ptr [ebp-60],eax
 006A5D5B    mov         byte ptr [ebp-5C],0
 006A5D5F    mov         eax,dword ptr [ebp-38]
 006A5D62    mov         dword ptr [ebp-58],eax
 006A5D65    mov         byte ptr [ebp-54],0
 006A5D69    lea         edx,[ebp-60]
 006A5D6C    mov         ecx,1
 006A5D71    mov         eax,6A60F0;'Panel in slot %.2d has wrong panel Id (%.2d) '
 006A5D76    call        Format
 006A5D7B    mov         edx,dword ptr [ebp-50]
 006A5D7E    mov         eax,dword ptr [ebp-44]
 006A5D81    mov         ecx,dword ptr [eax]
 006A5D83    call        dword ptr [ecx+3C];TStringList.Add
 006A5D86    mov         eax,dword ptr [ebp-10]
 006A5D89    add         eax,1
>006A5D8C    jno         006A5D93
 006A5D8E    call        @IntOver
 006A5D93    cmp         eax,20
>006A5D96    jg          006A6026
 006A5D9C    mov         dword ptr [ebp-14],eax
 006A5D9F    mov         edx,dword ptr [ebp-14]
 006A5DA2    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A5DA7    call        TFXNet.GetPanel
 006A5DAC    test        eax,eax
>006A5DAE    je          006A6019
 006A5DB4    mov         eax,dword ptr [ebp-10]
 006A5DB7    cmp         eax,dword ptr [ebp-14]
>006A5DBA    je          006A6019
 006A5DC0    mov         edx,dword ptr [ebp-14]
 006A5DC3    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A5DC8    call        TFXNet.GetPanel
 006A5DCD    mov         esi,eax
 006A5DCF    mov         edi,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006A5DD2    movzx       ebx,byte ptr [edi+122]
 006A5DD9    mov         eax,edi
 006A5DDB    call        006A3430
 006A5DE0    movzx       eax,al
 006A5DE3    mov         dword ptr [ebp-1C],eax
 006A5DE6    mov         eax,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006A5DE9    call        006A34B0
 006A5DEE    movzx       eax,al
 006A5DF1    mov         dword ptr [ebp-24],eax
 006A5DF4    mov         edi,dword ptr [esi+0C];TFXPanel.FXPPD:TFXPPD
 006A5DF7    movzx       eax,word ptr [edi+123]
 006A5DFE    mov         dword ptr [ebp-2C],eax
 006A5E01    mov         eax,edi
 006A5E03    call        006A2DE4
 006A5E08    movzx       eax,ax
 006A5E0B    mov         dword ptr [ebp-34],eax
 006A5E0E    cmp         dword ptr [ebp-38],0
>006A5E12    jne         006A5E4D
 006A5E14    mov         byte ptr [ebp-39],1
 006A5E18    lea         eax,[ebp-64]
 006A5E1B    push        eax
 006A5E1C    mov         eax,dword ptr [ebp-10]
 006A5E1F    mov         dword ptr [ebp-60],eax
 006A5E22    mov         byte ptr [ebp-5C],0
 006A5E26    mov         eax,dword ptr [ebp-38]
 006A5E29    mov         dword ptr [ebp-58],eax
 006A5E2C    mov         byte ptr [ebp-54],0
 006A5E30    lea         edx,[ebp-60]
 006A5E33    mov         ecx,1
 006A5E38    mov         eax,6A60F0;'Panel in slot %.2d has wrong panel Id (%.2d) '
 006A5E3D    call        Format
 006A5E42    mov         edx,dword ptr [ebp-64]
 006A5E45    mov         eax,dword ptr [ebp-44]
 006A5E48    mov         ecx,dword ptr [eax]
 006A5E4A    call        dword ptr [ecx+3C];TStringList.Add
 006A5E4D    cmp         ebx,dword ptr [ebp-38]
>006A5E50    jne         006A5E95
 006A5E52    mov         byte ptr [ebp-39],1
 006A5E56    lea         eax,[ebp-68]
 006A5E59    push        eax
 006A5E5A    mov         eax,dword ptr [ebp-10]
 006A5E5D    mov         dword ptr [ebp-80],eax
 006A5E60    mov         byte ptr [ebp-7C],0
 006A5E64    mov         eax,dword ptr [ebp-38]
 006A5E67    mov         dword ptr [ebp-78],eax
 006A5E6A    mov         byte ptr [ebp-74],0
 006A5E6E    mov         eax,dword ptr [ebp-14]
 006A5E71    mov         dword ptr [ebp-70],eax
 006A5E74    mov         byte ptr [ebp-6C],0
 006A5E78    lea         edx,[ebp-80]
 006A5E7B    mov         ecx,2
 006A5E80    mov         eax,6A6158;'Panel in slot %.2d has same Id (%.2d) as panel in slot %.2d '
 006A5E85    call        Format
 006A5E8A    mov         edx,dword ptr [ebp-68]
 006A5E8D    mov         eax,dword ptr [ebp-44]
 006A5E90    mov         ecx,dword ptr [eax]
 006A5E92    call        dword ptr [ecx+3C];TStringList.Add
 006A5E95    mov         ebx,dword ptr [ebp-28]
 006A5E98    mov         esi,dword ptr [ebp-30]
 006A5E9B    sub         esi,ebx
>006A5E9D    jl          006A5F52
 006A5EA3    inc         esi
 006A5EA4    cmp         ebx,dword ptr [ebp-2C]
 006A5EA7    setge       dl
 006A5EAA    cmp         ebx,dword ptr [ebp-34]
 006A5EAD    setle       al
 006A5EB0    and         dl,al
 006A5EB2    test        dl,dl
>006A5EB4    je          006A5F4A
 006A5EBA    mov         byte ptr [ebp-3B],1
 006A5EBE    lea         eax,[ebp-84]
 006A5EC4    push        eax
 006A5EC5    mov         eax,dword ptr [ebp-10]
 006A5EC8    mov         dword ptr [ebp-0B4],eax
 006A5ECE    mov         byte ptr [ebp-0B0],0
 006A5ED5    mov         eax,dword ptr [ebp-28]
 006A5ED8    mov         dword ptr [ebp-0AC],eax
 006A5EDE    mov         byte ptr [ebp-0A8],0
 006A5EE5    mov         eax,dword ptr [ebp-30]
 006A5EE8    mov         dword ptr [ebp-0A4],eax
 006A5EEE    mov         byte ptr [ebp-0A0],0
 006A5EF5    mov         eax,dword ptr [ebp-14]
 006A5EF8    mov         dword ptr [ebp-9C],eax
 006A5EFE    mov         byte ptr [ebp-98],0
 006A5F05    mov         eax,dword ptr [ebp-2C]
 006A5F08    mov         dword ptr [ebp-94],eax
 006A5F0E    mov         byte ptr [ebp-90],0
 006A5F15    mov         eax,dword ptr [ebp-34]
 006A5F18    mov         dword ptr [ebp-8C],eax
 006A5F1E    mov         byte ptr [ebp-88],0
 006A5F25    lea         edx,[ebp-0B4]
 006A5F2B    mov         ecx,5
 006A5F30    mov         eax,6A61E0;'Panel %.2d zones (%.4d .. %.4d) are overlapping with panel %.2d zones (%.4d ...
 006A5F35    call        Format
 006A5F3A    mov         edx,dword ptr [ebp-84]
 006A5F40    mov         eax,dword ptr [ebp-48]
 006A5F43    mov         ecx,dword ptr [eax]
 006A5F45    call        dword ptr [ecx+3C];TStringList.Add
>006A5F48    jmp         006A5F52
 006A5F4A    inc         ebx
 006A5F4B    dec         esi
>006A5F4C    jne         006A5EA4
 006A5F52    cmp         dword ptr [ebp-18],0
>006A5F56    je          006A6019
 006A5F5C    mov         ebx,dword ptr [ebp-18]
 006A5F5F    mov         esi,dword ptr [ebp-20]
 006A5F62    sub         esi,ebx
>006A5F64    jl          006A6019
 006A5F6A    inc         esi
 006A5F6B    cmp         ebx,dword ptr [ebp-1C]
 006A5F6E    setge       al
 006A5F71    cmp         ebx,dword ptr [ebp-24]
 006A5F74    setle       dl
 006A5F77    and         al,dl
 006A5F79    test        al,al
>006A5F7B    je          006A6011
 006A5F81    mov         byte ptr [ebp-3A],1
 006A5F85    lea         eax,[ebp-0B8]
 006A5F8B    push        eax
 006A5F8C    mov         eax,dword ptr [ebp-10]
 006A5F8F    mov         dword ptr [ebp-0B4],eax
 006A5F95    mov         byte ptr [ebp-0B0],0
 006A5F9C    mov         eax,dword ptr [ebp-18]
 006A5F9F    mov         dword ptr [ebp-0AC],eax
 006A5FA5    mov         byte ptr [ebp-0A8],0
 006A5FAC    mov         eax,dword ptr [ebp-20]
 006A5FAF    mov         dword ptr [ebp-0A4],eax
 006A5FB5    mov         byte ptr [ebp-0A0],0
 006A5FBC    mov         eax,dword ptr [ebp-14]
 006A5FBF    mov         dword ptr [ebp-9C],eax
 006A5FC5    mov         byte ptr [ebp-98],0
 006A5FCC    mov         eax,dword ptr [ebp-1C]
 006A5FCF    mov         dword ptr [ebp-94],eax
 006A5FD5    mov         byte ptr [ebp-90],0
 006A5FDC    mov         eax,dword ptr [ebp-24]
 006A5FDF    mov         dword ptr [ebp-8C],eax
 006A5FE5    mov         byte ptr [ebp-88],0
 006A5FEC    lea         edx,[ebp-0B4]
 006A5FF2    mov         ecx,5
 006A5FF7    mov         eax,6A6298;'Panel %.2d loops (%.3d .. %.3d) are overlapping with panel %.2d loops (%.3d ...
 006A5FFC    call        Format
 006A6001    mov         edx,dword ptr [ebp-0B8]
 006A6007    mov         eax,dword ptr [ebp-4C]
 006A600A    mov         ecx,dword ptr [eax]
 006A600C    call        dword ptr [ecx+3C];TStringList.Add
>006A600F    jmp         006A6019
 006A6011    inc         ebx
 006A6012    dec         esi
>006A6013    jne         006A5F6B
 006A6019    inc         dword ptr [ebp-14]
 006A601C    cmp         dword ptr [ebp-14],21
>006A6020    jne         006A5D9F
 006A6026    inc         dword ptr [ebp-10]
 006A6029    cmp         dword ptr [ebp-10],21
>006A602D    jne         006A5CDF
 006A6033    mov         eax,dword ptr [ebp-8]
 006A6036    mov         eax,dword ptr [eax+90]
 006A603C    mov         edx,dword ptr [ebp-44]
 006A603F    mov         ecx,dword ptr [eax]
 006A6041    call        dword ptr [ecx+44]
 006A6044    mov         eax,dword ptr [ebp-8]
 006A6047    mov         eax,dword ptr [eax+90]
 006A604D    mov         edx,dword ptr [ebp-4C]
 006A6050    mov         ecx,dword ptr [eax]
 006A6052    call        dword ptr [ecx+44]
 006A6055    mov         eax,dword ptr [ebp-8]
 006A6058    mov         eax,dword ptr [eax+90]
 006A605E    mov         edx,dword ptr [ebp-48]
 006A6061    mov         ecx,dword ptr [eax]
 006A6063    call        dword ptr [ecx+44]
 006A6066    mov         eax,dword ptr [ebp-44]
 006A6069    call        TObject.Free
 006A606E    mov         eax,dword ptr [ebp-48]
 006A6071    call        TObject.Free
 006A6076    mov         eax,dword ptr [ebp-4C]
 006A6079    call        TObject.Free
 006A607E    movzx       eax,byte ptr [ebp-39]
 006A6082    or          al,byte ptr [ebp-3A]
>006A6085    jne         006A608D
 006A6087    cmp         byte ptr [ebp-3B],0
>006A608B    je          006A6091
 006A608D    mov         byte ptr [ebp-9],1
 006A6091    xor         eax,eax
 006A6093    pop         edx
 006A6094    pop         ecx
 006A6095    pop         ecx
 006A6096    mov         dword ptr fs:[eax],edx
 006A6099    push        6A60D9
 006A609E    lea         eax,[ebp-0B8]
 006A60A4    call        @UStrClr
 006A60A9    lea         eax,[ebp-84]
 006A60AF    call        @UStrClr
 006A60B4    lea         eax,[ebp-68]
 006A60B7    mov         edx,2
 006A60BC    call        @UStrArrayClr
 006A60C1    lea         eax,[ebp-50]
 006A60C4    call        @UStrClr
 006A60C9    lea         eax,[ebp-4]
 006A60CC    call        @UStrClr
 006A60D1    ret
>006A60D2    jmp         @HandleFinally
>006A60D7    jmp         006A609E
 006A60D9    movzx       eax,byte ptr [ebp-9]
 006A60DD    pop         edi
 006A60DE    pop         esi
 006A60DF    pop         ebx
 006A60E0    mov         esp,ebp
 006A60E2    pop         ebp
 006A60E3    ret
end;*}

//006A6344
{*function sub_006A6344(?:TFXNet):?;
begin
 006A6344    push        ebp
 006A6345    mov         ebp,esp
 006A6347    add         esp,0FFFFFFD8
 006A634A    push        ebx
 006A634B    xor         edx,edx
 006A634D    mov         dword ptr [ebp-18],edx
 006A6350    mov         dword ptr [ebp-4],eax
 006A6353    xor         eax,eax
 006A6355    push        ebp
 006A6356    push        6A64B2
 006A635B    push        dword ptr fs:[eax]
 006A635E    mov         dword ptr fs:[eax],esp
 006A6361    mov         eax,dword ptr [ebp-4]
 006A6364    mov         byte ptr [eax+8D],0
 006A636B    mov         byte ptr [ebp-5],0
 006A636F    mov         dl,1
 006A6371    mov         eax,[0046F9A0];TStringList
 006A6376    call        TStringList.Create;TStringList.Create
 006A637B    mov         dword ptr [ebp-10],eax
 006A637E    xor         edx,edx
 006A6380    push        ebp
 006A6381    push        6A6495
 006A6386    push        dword ptr fs:[edx]
 006A6389    mov         dword ptr fs:[edx],esp
 006A638C    xor         eax,eax
 006A638E    mov         dword ptr [ebp-0C],eax
 006A6391    mov         edx,dword ptr [ebp-0C]
 006A6394    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A6399    call        TFXNet.GetPanel
 006A639E    test        eax,eax
>006A63A0    je          006A6451
 006A63A6    xor         ebx,ebx
 006A63A8    mov         edx,dword ptr [ebp-0C]
 006A63AB    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A63B0    call        TFXNet.GetPanel
 006A63B5    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006A63B8    mov         edx,ebx
 006A63BA    call        TFXPPD.GetControllerLoopType
 006A63BF    cmp         eax,4
>006A63C2    je          006A63C9
 006A63C4    cmp         eax,6
>006A63C7    jne         006A6447
 006A63C9    mov         edx,dword ptr [ebp-0C]
 006A63CC    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A63D1    call        TFXNet.GetPanel
 006A63D6    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 006A63D9    mov         edx,ebx
 006A63DB    cmp         edx,0FF
>006A63E1    jbe         006A63E8
 006A63E3    call        @BoundErr
 006A63E8    lea         ecx,[ebp-14]
 006A63EB    call        TFXPAD.SapSysCountHigh
 006A63F0    test        al,al
>006A63F2    je          006A6447
 006A63F4    lea         eax,[ebp-18]
 006A63F7    push        eax
 006A63F8    mov         edx,dword ptr [ebp-0C]
 006A63FB    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A6400    call        TFXNet.GetPanel
 006A6405    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006A6408    call        006A3430
 006A640D    movzx       eax,al
 006A6410    add         eax,ebx
>006A6412    jno         006A6419
 006A6414    call        @IntOver
 006A6419    mov         dword ptr [ebp-28],eax
 006A641C    mov         byte ptr [ebp-24],0
 006A6420    mov         eax,dword ptr [ebp-14]
 006A6423    mov         dword ptr [ebp-20],eax
 006A6426    mov         byte ptr [ebp-1C],0
 006A642A    lea         edx,[ebp-28]
 006A642D    mov         ecx,1
 006A6432    mov         eax,[007C2A1C];^'Too many 200 protocol devices in loop %d, max. 20 allowed!(%d defined)'
 006A6437    call        Format
 006A643C    mov         edx,dword ptr [ebp-18]
 006A643F    mov         eax,dword ptr [ebp-10]
 006A6442    mov         ecx,dword ptr [eax]
 006A6444    call        dword ptr [ecx+3C];TStringList.Add
 006A6447    inc         ebx
 006A6448    cmp         ebx,8
>006A644B    jne         006A63A8
 006A6451    inc         dword ptr [ebp-0C]
 006A6454    cmp         dword ptr [ebp-0C],21
>006A6458    jne         006A6391
 006A645E    mov         eax,dword ptr [ebp-10]
 006A6461    mov         edx,dword ptr [eax]
 006A6463    call        dword ptr [edx+14];TStringList.GetCount
 006A6466    test        eax,eax
>006A6468    jle         006A647F
 006A646A    mov         eax,dword ptr [ebp-4]
 006A646D    mov         eax,dword ptr [eax+9C]
 006A6473    mov         edx,dword ptr [ebp-10]
 006A6476    mov         ecx,dword ptr [eax]
 006A6478    call        dword ptr [ecx+44]
 006A647B    mov         byte ptr [ebp-5],1
 006A647F    xor         eax,eax
 006A6481    pop         edx
 006A6482    pop         ecx
 006A6483    pop         ecx
 006A6484    mov         dword ptr fs:[eax],edx
 006A6487    push        6A649C
 006A648C    mov         eax,dword ptr [ebp-10]
 006A648F    call        TObject.Free
 006A6494    ret
>006A6495    jmp         @HandleFinally
>006A649A    jmp         006A648C
 006A649C    xor         eax,eax
 006A649E    pop         edx
 006A649F    pop         ecx
 006A64A0    pop         ecx
 006A64A1    mov         dword ptr fs:[eax],edx
 006A64A4    push        6A64B9
 006A64A9    lea         eax,[ebp-18]
 006A64AC    call        @UStrClr
 006A64B1    ret
>006A64B2    jmp         @HandleFinally
>006A64B7    jmp         006A64A9
 006A64B9    movzx       eax,byte ptr [ebp-5]
 006A64BD    pop         ebx
 006A64BE    mov         esp,ebp
 006A64C0    pop         ebp
 006A64C1    ret
end;*}

//006A64C4
{*function sub_006A64C4(?:TFXNet):?;
begin
 006A64C4    push        ebp
 006A64C5    mov         ebp,esp
 006A64C7    add         esp,0FFFFFFE8
 006A64CA    push        ebx
 006A64CB    push        esi
 006A64CC    xor         edx,edx
 006A64CE    mov         dword ptr [ebp-10],edx
 006A64D1    mov         dword ptr [ebp-4],eax
 006A64D4    mov         esi,8DF5C8;gvar_008DF5C8:TFXNet
 006A64D9    xor         eax,eax
 006A64DB    push        ebp
 006A64DC    push        6A65C5
 006A64E1    push        dword ptr fs:[eax]
 006A64E4    mov         dword ptr fs:[eax],esp
 006A64E7    mov         byte ptr [ebp-5],0
 006A64EB    mov         dl,1
 006A64ED    mov         eax,[0046F9A0];TStringList
 006A64F2    call        TStringList.Create;TStringList.Create
 006A64F7    mov         dword ptr [ebp-0C],eax
 006A64FA    xor         eax,eax
 006A64FC    push        ebp
 006A64FD    push        6A65A8
 006A6502    push        dword ptr fs:[eax]
 006A6505    mov         dword ptr fs:[eax],esp
 006A6508    xor         ebx,ebx
 006A650A    mov         edx,ebx
 006A650C    mov         eax,dword ptr [esi]
 006A650E    call        TFXNet.GetPanel
 006A6513    test        eax,eax
>006A6515    je          006A656B
 006A6517    mov         edx,ebx
 006A6519    mov         eax,dword ptr [esi]
 006A651B    call        TFXNet.GetPanel
 006A6520    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 006A6523    movzx       eax,byte ptr [eax+125]
 006A652A    push        eax
 006A652B    mov         edx,ebx
 006A652D    mov         eax,dword ptr [esi]
 006A652F    call        TFXNet.GetPanel
 006A6534    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 006A6537    mov         edx,1
 006A653C    pop         ecx
 006A653D    call        TFXPAD.fnZonesInRange
 006A6542    test        al,al
>006A6544    jne         006A656B
 006A6546    lea         eax,[ebp-10]
 006A6549    push        eax
 006A654A    mov         dword ptr [ebp-18],ebx
 006A654D    mov         byte ptr [ebp-14],0
 006A6551    lea         edx,[ebp-18]
 006A6554    xor         ecx,ecx
 006A6556    mov         eax,6A65E4;'The Zone number for some addresses in panel %.2d are out of range'
 006A655B    call        Format
 006A6560    mov         edx,dword ptr [ebp-10]
 006A6563    mov         eax,dword ptr [ebp-0C]
 006A6566    mov         ecx,dword ptr [eax]
 006A6568    call        dword ptr [ecx+3C];TStringList.Add
 006A656B    inc         ebx
 006A656C    cmp         ebx,21
>006A656F    jne         006A650A
 006A6571    mov         eax,dword ptr [ebp-0C]
 006A6574    mov         edx,dword ptr [eax]
 006A6576    call        dword ptr [edx+14];TStringList.GetCount
 006A6579    test        eax,eax
>006A657B    jle         006A6592
 006A657D    mov         eax,dword ptr [ebp-4]
 006A6580    mov         eax,dword ptr [eax+9C]
 006A6586    mov         edx,dword ptr [ebp-0C]
 006A6589    mov         ecx,dword ptr [eax]
 006A658B    call        dword ptr [ecx+44]
 006A658E    mov         byte ptr [ebp-5],1
 006A6592    xor         eax,eax
 006A6594    pop         edx
 006A6595    pop         ecx
 006A6596    pop         ecx
 006A6597    mov         dword ptr fs:[eax],edx
 006A659A    push        6A65AF
 006A659F    mov         eax,dword ptr [ebp-0C]
 006A65A2    call        TObject.Free
 006A65A7    ret
>006A65A8    jmp         @HandleFinally
>006A65AD    jmp         006A659F
 006A65AF    xor         eax,eax
 006A65B1    pop         edx
 006A65B2    pop         ecx
 006A65B3    pop         ecx
 006A65B4    mov         dword ptr fs:[eax],edx
 006A65B7    push        6A65CC
 006A65BC    lea         eax,[ebp-10]
 006A65BF    call        @UStrClr
 006A65C4    ret
>006A65C5    jmp         @HandleFinally
>006A65CA    jmp         006A65BC
 006A65CC    movzx       eax,byte ptr [ebp-5]
 006A65D0    pop         esi
 006A65D1    pop         ebx
 006A65D2    mov         esp,ebp
 006A65D4    pop         ebp
 006A65D5    ret
end;*}

//006A6668
function TFXNet.CheckForErrors:Boolean;
begin
{*
 006A6668    push        ebx
 006A6669    mov         ebx,eax
 006A666B    mov         eax,[007C4E54];^gvar_007CA84C:TErrorFrm
 006A6670    mov         eax,dword ptr [eax]
 006A6672    mov         eax,dword ptr [eax+3C0]
 006A6678    mov         edx,dword ptr [eax]
 006A667A    call        dword ptr [edx+124]
 006A6680    mov         eax,dword ptr [ebx+9C];TFXNet.ADErrors:TStringList
 006A6686    mov         edx,dword ptr [eax]
 006A6688    call        dword ptr [edx+48];TStringList.Clear
 006A668B    mov         eax,dword ptr [ebx+90];TFXNet.NDErrors:TStringList
 006A6691    mov         edx,dword ptr [eax]
 006A6693    call        dword ptr [edx+48];TStringList.Clear
 006A6696    mov         eax,ebx
 006A6698    call        006A56C0
 006A669D    test        al,al
>006A669F    jne         006A66BB
 006A66A1    mov         eax,ebx
 006A66A3    call        006A6344
 006A66A8    test        al,al
>006A66AA    jne         006A66BB
 006A66AC    mov         eax,ebx
 006A66AE    call        006A64C4
 006A66B3    test        al,al
>006A66B5    jne         006A66BB
 006A66B7    xor         eax,eax
>006A66B9    jmp         006A66BD
 006A66BB    mov         al,1
 006A66BD    mov         byte ptr [ebx+8D],al;TFXNet.ADError:Boolean
 006A66C3    mov         eax,ebx
 006A66C5    call        006A5C58
 006A66CA    mov         byte ptr [ebx+8C],al;TFXNet.NDError:Boolean
 006A66D0    cmp         byte ptr [ebx+8D],0;TFXNet.ADError:Boolean
>006A66D7    jne         006A66E6
 006A66D9    cmp         byte ptr [ebx+8C],0;TFXNet.NDError:Boolean
>006A66E0    jne         006A66E6
 006A66E2    xor         eax,eax
>006A66E4    jmp         006A66E8
 006A66E6    mov         al,1
 006A66E8    mov         ebx,eax
 006A66EA    mov         eax,[007C4E54];^gvar_007CA84C:TErrorFrm
 006A66EF    mov         eax,dword ptr [eax]
 006A66F1    call        TErrorFrm.UpdateMemo
 006A66F6    mov         eax,ebx
 006A66F8    pop         ebx
 006A66F9    ret
*}
end;

Initialization
Finalization
//006A66FC
{*
 006A66FC    push        ebp
 006A66FD    mov         ebp,esp
 006A66FF    xor         eax,eax
 006A6701    push        ebp
 006A6702    push        6A6741
 006A6707    push        dword ptr fs:[eax]
 006A670A    mov         dword ptr fs:[eax],esp
 006A670D    inc         dword ptr ds:[8DF5D8]
>006A6713    jne         006A6733
 006A6715    mov         eax,[008DF5C8];gvar_008DF5C8:TFXNet
 006A671A    call        TObject.Free
 006A671F    mov         eax,7C2A18;^'New FXNet'
 006A6724    call        @UStrClr
 006A6729    mov         eax,7C2A1C;^'Too many 200 protocol devices in loop %d, max. 20 allowed!(%d defined)'
 006A672E    call        @UStrClr
 006A6733    xor         eax,eax
 006A6735    pop         edx
 006A6736    pop         ecx
 006A6737    pop         ecx
 006A6738    mov         dword ptr fs:[eax],edx
 006A673B    push        6A6748
 006A6740    ret
>006A6741    jmp         @HandleFinally
>006A6746    jmp         006A6740
 006A6748    pop         ebp
 006A6749    ret
*}
end.