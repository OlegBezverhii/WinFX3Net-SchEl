//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit117;

interface

uses
  SysUtils, Classes;

    procedure sub_0074656C(?:TFXIniFile);//0074656C
    //function sub_007474C8(?:?):?;//007474C8
    //function sub_00747C44(?:string; ?:Integer):?;//00747C44

implementation

//0074656C
procedure sub_0074656C(?:TFXIniFile);
begin
{*
 0074656C    push        ebp
 0074656D    mov         ebp,esp
 0074656F    mov         ecx,9
 00746574    push        0
 00746576    push        0
 00746578    dec         ecx
>00746579    jne         00746574
 0074657B    push        ecx
 0074657C    push        ebx
 0074657D    push        esi
 0074657E    mov         ebx,eax
 00746580    xor         eax,eax
 00746582    push        ebp
 00746583    push        74688E
 00746588    push        dword ptr fs:[eax]
 0074658B    mov         dword ptr fs:[eax],esp
 0074658E    push        7468A8;'Error creating file '
 00746593    lea         eax,[ebp-4]
 00746596    push        eax
 00746597    mov         ecx,7468E0;'sErrCreatingFile'
 0074659C    mov         edx,746910;'FXFileHandler'
 007465A1    mov         eax,ebx
 007465A3    mov         esi,dword ptr [eax]
 007465A5    call        dword ptr [esi+4]
 007465A8    mov         edx,dword ptr [ebp-4]
 007465AB    mov         eax,7C3E7C;^'Error creating file '
 007465B0    call        @UStrAsg
 007465B5    push        746938;'Error opening file '
 007465BA    lea         eax,[ebp-8]
 007465BD    push        eax
 007465BE    mov         ecx,74696C;'sErrOpeningFile'
 007465C3    mov         edx,746910;'FXFileHandler'
 007465C8    mov         eax,ebx
 007465CA    mov         esi,dword ptr [eax]
 007465CC    call        dword ptr [esi+4]
 007465CF    mov         edx,dword ptr [ebp-8]
 007465D2    mov         eax,7C3E80;^'Error opening file '
 007465D7    call        @UStrAsg
 007465DC    push        746998;'Error writing to file '
 007465E1    lea         eax,[ebp-0C]
 007465E4    push        eax
 007465E5    mov         ecx,7469D4;'sErrWritingFile'
 007465EA    mov         edx,746910;'FXFileHandler'
 007465EF    mov         eax,ebx
 007465F1    mov         esi,dword ptr [eax]
 007465F3    call        dword ptr [esi+4]
 007465F6    mov         edx,dword ptr [ebp-0C]
 007465F9    mov         eax,7C3E84;^'Error writing to file '
 007465FE    call        @UStrAsg
 00746603    push        746A00;'Error reading file '
 00746608    lea         eax,[ebp-10]
 0074660B    push        eax
 0074660C    mov         ecx,746A34;'sErrReadingFile'
 00746611    mov         edx,746910;'FXFileHandler'
 00746616    mov         eax,ebx
 00746618    mov         esi,dword ptr [eax]
 0074661A    call        dword ptr [esi+4]
 0074661D    mov         edx,dword ptr [ebp-10]
 00746620    mov         eax,7C3E88;^'Error reading file '
 00746625    call        @UStrAsg
 0074662A    push        746A60;'The file '
 0074662F    lea         eax,[ebp-14]
 00746632    push        eax
 00746633    mov         ecx,746A80;'sTheFile'
 00746638    mov         edx,746AA0;'Messages'
 0074663D    mov         eax,ebx
 0074663F    mov         esi,dword ptr [eax]
 00746641    call        dword ptr [esi+4]
 00746644    mov         edx,dword ptr [ebp-14]
 00746647    mov         eax,7C3E8C;^'The file '
 0074664C    call        @UStrAsg
 00746651    push        746AC0;'The file is not an FX/FXNet file! No data is read.'
 00746656    lea         eax,[ebp-18]
 00746659    push        eax
 0074665A    mov         ecx,746B34;'sNotAnFXFile'
 0074665F    mov         edx,746AA0;'Messages'
 00746664    mov         eax,ebx
 00746666    mov         esi,dword ptr [eax]
 00746668    call        dword ptr [esi+4]
 0074666B    mov         edx,dword ptr [ebp-18]
 0074666E    mov         eax,7C3E90;^'The file is not an FX/FXNet file! No data is read.'
 00746673    call        @UStrAsg
 00746678    push        746B5C;'The file is made with a newer version! 
This version can not handle the data! ...
 0074667D    lea         eax,[ebp-1C]
 00746680    push        eax
 00746681    mov         ecx,746C2C;'sErrFileIsNewerVersion'
 00746686    mov         edx,746910;'FXFileHandler'
 0074668B    mov         eax,ebx
 0074668D    mov         esi,dword ptr [eax]
 0074668F    call        dword ptr [esi+4]
 00746692    mov         edx,dword ptr [ebp-1C]
 00746695    mov         eax,7C3E94;^'The file is made with a newer version! 
This version can not handle the da...
 0074669A    call        @UStrAsg
 0074669F    push        746C68;'Partially read data is not valid.'
 007466A4    lea         eax,[ebp-20]
 007466A7    push        eax
 007466A8    mov         ecx,746CB8;'sErrPartialDataIsInvalid'
 007466AD    mov         edx,746910;'FXFileHandler'
 007466B2    mov         eax,ebx
 007466B4    mov         esi,dword ptr [eax]
 007466B6    call        dword ptr [esi+4]
 007466B9    mov         edx,dword ptr [ebp-20]
 007466BC    mov         eax,7C3E9C;^'Partially read data is not valid.'
 007466C1    call        @UStrAsg
 007466C6    push        746CF8;'The configuration can not be read because of license restrictions.'
 007466CB    lea         eax,[ebp-24]
 007466CE    push        eax
 007466CF    mov         ecx,746D8C;'sLicenseRestrictions'
 007466D4    mov         edx,746AA0;'Messages'
 007466D9    mov         eax,ebx
 007466DB    mov         esi,dword ptr [eax]
 007466DD    call        dword ptr [esi+4]
 007466E0    mov         edx,dword ptr [ebp-24]
 007466E3    mov         eax,7C3EA0;^'The configuration can not be read because of license restrictions.'
 007466E8    call        @UStrAsg
 007466ED    push        746DC4;'Error occured while reading the file header'
 007466F2    lea         eax,[ebp-28]
 007466F5    push        eax
 007466F6    mov         ecx,746E28;'sErrReadingFileHeader'
 007466FB    mov         edx,746910;'FXFileHandler'
 00746700    mov         eax,ebx
 00746702    mov         esi,dword ptr [eax]
 00746704    call        dword ptr [esi+4]
 00746707    mov         edx,dword ptr [ebp-28]
 0074670A    mov         eax,7C3EA4;^'Error occured while reading the file header'
 0074670F    call        @UStrAsg
 00746714    push        746E60;'Error occured while reading the file table of content'
 00746719    lea         eax,[ebp-2C]
 0074671C    push        eax
 0074671D    mov         ecx,746ED8;'sErrReadingFileTOC'
 00746722    mov         edx,746910;'FXFileHandler'
 00746727    mov         eax,ebx
 00746729    mov         esi,dword ptr [eax]
 0074672B    call        dword ptr [esi+4]
 0074672E    mov         edx,dword ptr [ebp-2C]
 00746731    mov         eax,7C3EA8;^'Error occured while reading the file table of content'
 00746736    call        @UStrAsg
 0074673B    push        746F0C;'Error occured while reading the list of panels'
 00746740    lea         eax,[ebp-30]
 00746743    push        eax
 00746744    mov         ecx,746F78;'sErrReadingListOfPanels'
 00746749    mov         edx,746910;'FXFileHandler'
 0074674E    mov         eax,ebx
 00746750    mov         esi,dword ptr [eax]
 00746752    call        dword ptr [esi+4]
 00746755    mov         edx,dword ptr [ebp-30]
 00746758    mov         eax,7C3EAC;^'Error occured while reading the list of panels'
 0074675D    call        @UStrAsg
 00746762    push        746FB4;'Error occured while reading the list of data sections for panel %.2d'
 00746767    lea         eax,[ebp-34]
 0074676A    push        eax
 0074676B    mov         ecx,74704C;'sErrReadingListOfSections'
 00746770    mov         edx,746910;'FXFileHandler'
 00746775    mov         eax,ebx
 00746777    mov         esi,dword ptr [eax]
 00746779    call        dword ptr [esi+4]
 0074677C    mov         edx,dword ptr [ebp-34]
 0074677F    mov         eax,7C3EB0;^'Error occured while reading the list of data sections for panel %.2d'
 00746784    call        @UStrAsg
 00746789    push        74708C;'Error occured while reading the configuration info of panel %.2d'
 0074678E    lea         eax,[ebp-38]
 00746791    push        eax
 00746792    mov         ecx,74711C;'sErrReadingConfigInfo'
 00746797    mov         edx,746910;'FXFileHandler'
 0074679C    mov         eax,ebx
 0074679E    mov         esi,dword ptr [eax]
 007467A0    call        dword ptr [esi+4]
 007467A3    mov         edx,dword ptr [ebp-38]
 007467A6    mov         eax,7C3EB4;^'Error occured while reading the configuration info of panel %.2d'
 007467AB    call        @UStrAsg
 007467B0    push        747154;'Error occured while reading general panel data of panel %.2d'
 007467B5    lea         eax,[ebp-3C]
 007467B8    push        eax
 007467B9    mov         ecx,7471DC;'sErrReadingPanelData'
 007467BE    mov         edx,746910;'FXFileHandler'
 007467C3    mov         eax,ebx
 007467C5    mov         esi,dword ptr [eax]
 007467C7    call        dword ptr [esi+4]
 007467CA    mov         edx,dword ptr [ebp-3C]
 007467CD    mov         eax,7C3EB8;^'Error occured while reading general panel data of panel %.2d'
 007467D2    call        @UStrAsg
 007467D7    push        747214;'Error occured while reading IO data of the MC of panel %.2d'
 007467DC    lea         eax,[ebp-40]
 007467DF    push        eax
 007467E0    mov         ecx,747298;'sErrReadingMCIOData'
 007467E5    mov         edx,746910;'FXFileHandler'
 007467EA    mov         eax,ebx
 007467EC    mov         esi,dword ptr [eax]
 007467EE    call        dword ptr [esi+4]
 007467F1    mov         edx,dword ptr [ebp-40]
 007467F4    mov         eax,7C3EBC;^'Error occured while reading IO data of the MC of panel %.2d'
 007467F9    call        @UStrAsg
 007467FE    push        7472CC;'Error occured while reading IOC data of panel %.2d'
 00746803    lea         eax,[ebp-44]
 00746806    push        eax
 00746807    mov         ecx,747340;'sErrReadingIOCData'
 0074680C    mov         edx,746910;'FXFileHandler'
 00746811    mov         eax,ebx
 00746813    mov         esi,dword ptr [eax]
 00746815    call        dword ptr [esi+4]
 00746818    mov         edx,dword ptr [ebp-44]
 0074681B    mov         eax,7C3EC0;^'Error occured while reading IOC data of panel %.2d'
 00746820    call        @UStrAsg
 00746825    push        747374;'Error occured while reading address data of panel %.2d'
 0074682A    lea         eax,[ebp-48]
 0074682D    push        eax
 0074682E    mov         ecx,7473F0;'sErrReadingAddressData'
 00746833    mov         edx,746910;'FXFileHandler'
 00746838    mov         eax,ebx
 0074683A    mov         esi,dword ptr [eax]
 0074683C    call        dword ptr [esi+4]
 0074683F    mov         edx,dword ptr [ebp-48]
 00746842    mov         eax,7C3EC4;^'Error occured while reading address data of panel %.2d'
 00746847    call        @UStrAsg
 0074684C    push        74742C;'Error occured while reading text data of panel %.2d'
 00746851    lea         eax,[ebp-4C]
 00746854    push        eax
 00746855    mov         ecx,7474A0;'sErrReadingTextData'
 0074685A    mov         edx,746910;'FXFileHandler'
 0074685F    mov         eax,ebx
 00746861    mov         ebx,dword ptr [eax]
 00746863    call        dword ptr [ebx+4]
 00746866    mov         edx,dword ptr [ebp-4C]
 00746869    mov         eax,7C3EC8;^'Error occured while reading text data of panel %.2d'
 0074686E    call        @UStrAsg
 00746873    xor         eax,eax
 00746875    pop         edx
 00746876    pop         ecx
 00746877    pop         ecx
 00746878    mov         dword ptr fs:[eax],edx
 0074687B    push        746895
 00746880    lea         eax,[ebp-4C]
 00746883    mov         edx,13
 00746888    call        @UStrArrayClr
 0074688D    ret
>0074688E    jmp         @HandleFinally
>00746893    jmp         00746880
 00746895    pop         esi
 00746896    pop         ebx
 00746897    mov         esp,ebp
 00746899    pop         ebp
 0074689A    ret
*}
end;

//007474C8
{*function sub_007474C8(?:?):?;
begin
 007474C8    push        ebp
 007474C9    mov         ebp,esp
 007474CB    add         esp,0FFFFFFE8
 007474CE    push        ebx
 007474CF    push        esi
 007474D0    push        edi
 007474D1    mov         ebx,eax
 007474D3    mov         esi,9035E4;gvar_009035E4:Pointer
 007474D8    mov         byte ptr [ebp-1],0
 007474DC    mov         eax,dword ptr [ebx]
 007474DE    mov         dl,1
 007474E0    call        0041EA18
 007474E5    test        al,al
>007474E7    je          00747500
 007474E9    push        11
 007474EB    mov         ecx,dword ptr [ebx]
 007474ED    mov         dl,1
 007474EF    mov         eax,[00472830];TFileStream
 007474F4    call        TFileStream.Create;TFileStream.Create
 007474F9    mov         [00902CA8],eax;gvar_00902CA8:TFileStream
>007474FE    jmp         00747518
 00747500    push        0FF10
 00747505    mov         ecx,dword ptr [ebx]
 00747507    mov         dl,1
 00747509    mov         eax,[00472830];TFileStream
 0074750E    call        TFileStream.Create;TFileStream.Create
 00747513    mov         [00902CA8],eax;gvar_00902CA8:TFileStream
 00747518    xor         eax,eax
 0074751A    push        ebp
 0074751B    push        747C2F
 00747520    push        dword ptr fs:[eax]
 00747523    mov         dword ptr fs:[eax],esp
 00747526    mov         eax,902CAC;gvar_00902CAC:Pointer
 0074752B    xor         ecx,ecx
 0074752D    mov         edx,10
 00747532    call        @FillChar
 00747537    mov         eax,dword ptr ds:[7C3E70];0x4F435846 gvar_007C3E70
 0074753D    mov         dword ptr ds:[902CAC],eax;gvar_00902CAC:Pointer
 00747543    mov         eax,dword ptr ds:[7C3E74];0x4749464E gvar_007C3E74
 00747549    mov         dword ptr ds:[902CB0],eax;gvar_00902CB0
 0074754F    movzx       eax,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 00747556    mov         [00902CB4],ax;gvar_00902CB4
 0074755C    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 00747563    mov         [00902CB6],ax;gvar_00902CB6
 00747569    mov         edx,902CAC;gvar_00902CAC:Pointer
 0074756E    mov         ecx,10
 00747573    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747578    mov         ebx,dword ptr [eax]
 0074757A    call        dword ptr [ebx+10]
 0074757D    cmp         eax,10
>00747580    je          00747599
 00747582    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747588    mov         dl,1
 0074758A    mov         eax,[0046B9E4];EWriteError
 0074758F    call        Exception.Create;EWriteError.Create
 00747594    call        @RaiseExcept
 00747599    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 0074759E    call        TStream.GetPosition
 007475A3    test        edx,edx
>007475A5    je          007475AC
 007475A7    call        @BoundErr
 007475AC    mov         [00902CBC],eax;gvar_00902CBC:Int64
 007475B1    mov         eax,902CC0;gvar_00902CC0:Pointer
 007475B6    xor         ecx,ecx
 007475B8    mov         edx,10
 007475BD    call        @FillChar
 007475C2    mov         word ptr ds:[902CC0],10;gvar_00902CC0:Pointer
 007475CB    mov         edx,902CC0;gvar_00902CC0:Pointer
 007475D0    mov         ecx,10
 007475D5    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007475DA    mov         ebx,dword ptr [eax]
 007475DC    call        dword ptr [ebx+10]
 007475DF    cmp         eax,10
>007475E2    je          007475FB
 007475E4    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 007475EA    mov         dl,1
 007475EC    mov         eax,[0046B9E4];EWriteError
 007475F1    call        Exception.Create;EWriteError.Create
 007475F6    call        @RaiseExcept
 007475FB    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747600    call        TStream.GetPosition
 00747605    test        edx,edx
>00747607    je          0074760E
 00747609    call        @BoundErr
 0074760E    mov         [00902CD0],eax;gvar_00902CD0:Int64
 00747613    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747618    call        TStream.GetPosition
 0074761D    test        edx,edx
>0074761F    je          00747626
 00747621    call        @BoundErr
 00747626    mov         [00902CC4],eax;gvar_00902CC4:Int64
 0074762B    mov         eax,902CD4;gvar_00902CD4:Pointer
 00747630    xor         ecx,ecx
 00747632    mov         edx,804
 00747637    call        @FillChar
 0074763C    mov         edx,902CD4;gvar_00902CD4:Pointer
 00747641    mov         ecx,804
 00747646    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 0074764B    mov         ebx,dword ptr [eax]
 0074764D    call        dword ptr [ebx+10]
 00747650    cmp         eax,804
>00747655    je          0074766E
 00747657    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 0074765D    mov         dl,1
 0074765F    mov         eax,[0046B9E4];EWriteError
 00747664    call        Exception.Create;EWriteError.Create
 00747669    call        @RaiseExcept
 0074766E    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747673    call        TStream.GetPosition
 00747678    test        edx,edx
>0074767A    je          00747681
 0074767C    call        @BoundErr
 00747681    mov         [009034D8],eax;gvar_009034D8:Int64
 00747686    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 0074768B    call        TStream.GetPosition
 00747690    test        edx,edx
>00747692    je          00747699
 00747694    call        @BoundErr
 00747699    mov         [00902CC8],eax;gvar_00902CC8:Int64
 0074769E    mov         eax,9034DC;gvar_009034DC:Pointer
 007476A3    xor         ecx,ecx
 007476A5    mov         edx,104
 007476AA    call        @FillChar
 007476AF    mov         edx,9034DC;gvar_009034DC:Pointer
 007476B4    mov         ecx,104
 007476B9    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007476BE    mov         ebx,dword ptr [eax]
 007476C0    call        dword ptr [ebx+10]
 007476C3    cmp         eax,104
>007476C8    je          007476E1
 007476CA    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 007476D0    mov         dl,1
 007476D2    mov         eax,[0046B9E4];EWriteError
 007476D7    call        Exception.Create;EWriteError.Create
 007476DC    call        @RaiseExcept
 007476E1    xor         ebx,ebx
 007476E3    movzx       edi,bl
 007476E6    mov         edx,edi
 007476E8    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007476ED    mov         eax,dword ptr [eax]
 007476EF    call        TFXNet.GetPanel
 007476F4    test        eax,eax
>007476F6    je          00747B55
 007476FC    mov         edx,edi
 007476FE    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00747703    mov         eax,dword ptr [eax]
 00747705    call        TFXNet.GetPanel
 0074770A    mov         eax,dword ptr [eax+8];TFXPanel.FXPCI:TFXPCI
 0074770D    mov         dword ptr [ebp-8],eax
 00747710    mov         edx,edi
 00747712    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00747717    mov         eax,dword ptr [eax]
 00747719    call        TFXNet.GetPanel
 0074771E    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 00747721    mov         dword ptr [ebp-0C],eax
 00747724    mov         edx,edi
 00747726    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074772B    mov         eax,dword ptr [eax]
 0074772D    call        TFXNet.GetPanel
 00747732    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 00747735    mov         dword ptr [ebp-10],eax
 00747738    mov         edx,edi
 0074773A    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074773F    mov         eax,dword ptr [eax]
 00747741    call        TFXNet.GetPanel
 00747746    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 00747749    mov         dword ptr [ebp-14],eax
 0074774C    mov         edx,edi
 0074774E    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00747753    mov         eax,dword ptr [eax]
 00747755    call        TFXNet.GetPanel
 0074775A    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 0074775D    mov         dword ptr [ebp-18],eax
 00747760    movzx       eax,word ptr ds:[9034DC];gvar_009034DC:Pointer
 00747767    add         eax,1
>0074776A    jno         00747771
 0074776C    call        @IntOver
 00747771    cmp         eax,0FFFF
>00747776    jbe         0074777D
 00747778    call        @BoundErr
 0074777D    mov         [009034DC],ax;gvar_009034DC:Pointer
 00747783    mov         edx,edi
 00747785    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074778A    mov         eax,dword ptr [eax]
 0074778C    call        TFXNet.GetPanel
 00747791    mov         eax,dword ptr [eax+4];TFXPanel.iType:Integer
 00747794    cmp         eax,0FFFF
>00747799    jbe         007477A0
 0074779B    call        @BoundErr
 007477A0    movzx       edx,word ptr ds:[9034DC];gvar_009034DC:Pointer
 007477A7    dec         edx
 007477A8    cmp         edx,1F
>007477AB    jbe         007477B2
 007477AD    call        @BoundErr
 007477B2    inc         edx
 007477B3    mov         word ptr [edx*8+9034D8],ax;gvar_009034D8:Int64
 007477BB    movzx       eax,word ptr ds:[9034DC];gvar_009034DC:Pointer
 007477C2    dec         eax
 007477C3    cmp         eax,1F
>007477C6    jbe         007477CD
 007477C8    call        @BoundErr
 007477CD    inc         eax
 007477CE    mov         edx,dword ptr [ebp-0C]
 007477D1    movzx       edx,byte ptr [edx+122]
 007477D8    mov         word ptr [eax*8+9034DA],dx;gvar_009034DA
 007477E0    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007477E5    call        TStream.GetPosition
 007477EA    test        edx,edx
>007477EC    je          007477F3
 007477EE    call        @BoundErr
 007477F3    movzx       edx,word ptr ds:[9034DC];gvar_009034DC:Pointer
 007477FA    dec         edx
 007477FB    cmp         edx,1F
>007477FE    jbe         00747805
 00747800    call        @BoundErr
 00747805    inc         edx
 00747806    mov         dword ptr [edx*8+9034DC],eax;gvar_009034DC:Pointer
 0074780D    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747812    call        TStream.GetPosition
 00747817    test        edx,edx
>00747819    je          00747820
 0074781B    call        @BoundErr
 00747820    mov         [009035E0],eax;gvar_009035E0:Int64
 00747825    mov         eax,esi
 00747827    xor         ecx,ecx
 00747829    mov         edx,0A4
 0074782E    call        @FillChar
 00747833    mov         word ptr [esi],7
 00747838    mov         edx,esi
 0074783A    mov         ecx,0A4
 0074783F    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747844    mov         edi,dword ptr [eax]
 00747846    call        dword ptr [edi+10]
 00747849    cmp         eax,0A4
>0074784E    je          00747867
 00747850    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747856    mov         dl,1
 00747858    mov         eax,[0046B9E4];EWriteError
 0074785D    call        Exception.Create;EWriteError.Create
 00747862    call        @RaiseExcept
 00747867    mov         word ptr [esi+4],1
 0074786D    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747872    call        TStream.GetPosition
 00747877    test        edx,edx
>00747879    je          00747880
 0074787B    call        @BoundErr
 00747880    mov         dword ptr [esi+0C],eax
 00747883    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 0074788A    push        eax
 0074788B    lea         eax,[esi+6]
 0074788E    push        eax
 0074788F    lea         eax,[esi+8]
 00747892    push        eax
 00747893    movzx       ecx,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 0074789A    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 007478A0    mov         eax,dword ptr [ebp-8]
 007478A3    call        TFXPCI.Save
 007478A8    inc         eax
>007478A9    jne         007478C2
 007478AB    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 007478B1    mov         dl,1
 007478B3    mov         eax,[0046B9E4];EWriteError
 007478B8    call        Exception.Create;EWriteError.Create
 007478BD    call        @RaiseExcept
 007478C2    mov         word ptr [esi+14],2
 007478C8    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007478CD    call        TStream.GetPosition
 007478D2    test        edx,edx
>007478D4    je          007478DB
 007478D6    call        @BoundErr
 007478DB    mov         dword ptr [esi+1C],eax
 007478DE    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 007478E5    push        eax
 007478E6    lea         eax,[esi+16]
 007478E9    push        eax
 007478EA    lea         eax,[esi+18]
 007478ED    push        eax
 007478EE    movzx       ecx,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 007478F5    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 007478FB    mov         eax,dword ptr [ebp-0C]
 007478FE    call        TFXPPD.Save
 00747903    inc         eax
>00747904    jne         0074791D
 00747906    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 0074790C    mov         dl,1
 0074790E    mov         eax,[0046B9E4];EWriteError
 00747913    call        Exception.Create;EWriteError.Create
 00747918    call        @RaiseExcept
 0074791D    mov         word ptr [esi+24],3
 00747923    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747928    call        TStream.GetPosition
 0074792D    test        edx,edx
>0074792F    je          00747936
 00747931    call        @BoundErr
 00747936    mov         dword ptr [esi+2C],eax
 00747939    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 00747940    push        eax
 00747941    lea         eax,[esi+26]
 00747944    push        eax
 00747945    lea         eax,[esi+28]
 00747948    push        eax
 00747949    movzx       ecx,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 00747950    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 00747956    mov         eax,dword ptr [ebp-10]
 00747959    call        TFXPIO.SaveMCIO
 0074795E    inc         eax
>0074795F    jne         00747978
 00747961    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747967    mov         dl,1
 00747969    mov         eax,[0046B9E4];EWriteError
 0074796E    call        Exception.Create;EWriteError.Create
 00747973    call        @RaiseExcept
 00747978    mov         word ptr [esi+34],4
 0074797E    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747983    call        TStream.GetPosition
 00747988    test        edx,edx
>0074798A    je          00747991
 0074798C    call        @BoundErr
 00747991    mov         dword ptr [esi+3C],eax
 00747994    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 0074799B    push        eax
 0074799C    lea         eax,[esi+36]
 0074799F    push        eax
 007479A0    lea         eax,[esi+38]
 007479A3    push        eax
 007479A4    movzx       ecx,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 007479AB    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 007479B1    mov         eax,dword ptr [ebp-10]
 007479B4    call        TFXPIO.SaveIOCX
 007479B9    inc         eax
>007479BA    jne         007479D3
 007479BC    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 007479C2    mov         dl,1
 007479C4    mov         eax,[0046B9E4];EWriteError
 007479C9    call        Exception.Create;EWriteError.Create
 007479CE    call        @RaiseExcept
 007479D3    mov         word ptr [esi+44],5
 007479D9    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007479DE    call        TStream.GetPosition
 007479E3    test        edx,edx
>007479E5    je          007479EC
 007479E7    call        @BoundErr
 007479EC    mov         dword ptr [esi+4C],eax
 007479EF    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 007479F6    push        eax
 007479F7    lea         eax,[esi+46]
 007479FA    push        eax
 007479FB    lea         eax,[esi+48]
 007479FE    push        eax
 007479FF    movzx       ecx,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 00747A06    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 00747A0C    mov         eax,dword ptr [ebp-14]
 00747A0F    call        TFXPAD.Save
 00747A14    inc         eax
>00747A15    jne         00747A2E
 00747A17    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747A1D    mov         dl,1
 00747A1F    mov         eax,[0046B9E4];EWriteError
 00747A24    call        Exception.Create;EWriteError.Create
 00747A29    call        @RaiseExcept
 00747A2E    mov         word ptr [esi+54],6
 00747A34    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747A39    call        TStream.GetPosition
 00747A3E    test        edx,edx
>00747A40    je          00747A47
 00747A42    call        @BoundErr
 00747A47    mov         dword ptr [esi+5C],eax
 00747A4A    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 00747A51    push        eax
 00747A52    lea         eax,[esi+56]
 00747A55    push        eax
 00747A56    lea         eax,[esi+58]
 00747A59    push        eax
 00747A5A    movzx       ecx,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 00747A61    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 00747A67    mov         eax,dword ptr [ebp-18]
 00747A6A    call        TFXPTD.SavePT
 00747A6F    inc         eax
>00747A70    jne         00747A89
 00747A72    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747A78    mov         dl,1
 00747A7A    mov         eax,[0046B9E4];EWriteError
 00747A7F    call        Exception.Create;EWriteError.Create
 00747A84    call        @RaiseExcept
 00747A89    mov         word ptr [esi+64],7
 00747A8F    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747A94    call        TStream.GetPosition
 00747A99    test        edx,edx
>00747A9B    je          00747AA2
 00747A9D    call        @BoundErr
 00747AA2    mov         dword ptr [esi+6C],eax
 00747AA5    movzx       eax,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 00747AAC    push        eax
 00747AAD    lea         eax,[esi+66]
 00747AB0    push        eax
 00747AB1    lea         eax,[esi+68]
 00747AB4    push        eax
 00747AB5    movzx       ecx,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 00747ABC    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 00747AC2    mov         eax,dword ptr [ebp-18]
 00747AC5    call        TFXPTD.SaveAT
 00747ACA    inc         eax
>00747ACB    jne         00747AE4
 00747ACD    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747AD3    mov         dl,1
 00747AD5    mov         eax,[0046B9E4];EWriteError
 00747ADA    call        Exception.Create;EWriteError.Create
 00747ADF    call        @RaiseExcept
 00747AE4    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747AE9    call        TStream.GetPosition
 00747AEE    test        edx,edx
>00747AF0    je          00747AF7
 00747AF2    call        @BoundErr
 00747AF7    mov         [00903688],eax;gvar_00903688:Int64
 00747AFC    mov         eax,[009035E0];gvar_009035E0:Int64
 00747B01    xor         edx,edx
 00747B03    push        edx
 00747B04    push        eax
 00747B05    xor         edx,edx
 00747B07    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747B0C    mov         ecx,dword ptr [eax]
 00747B0E    call        dword ptr [ecx+20]
 00747B11    mov         edx,esi
 00747B13    mov         ecx,0A4
 00747B18    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747B1D    mov         edi,dword ptr [eax]
 00747B1F    call        dword ptr [edi+10]
 00747B22    cmp         eax,0A4
>00747B27    je          00747B40
 00747B29    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747B2F    mov         dl,1
 00747B31    mov         eax,[0046B9E4];EWriteError
 00747B36    call        Exception.Create;EWriteError.Create
 00747B3B    call        @RaiseExcept
 00747B40    mov         eax,[00903688];gvar_00903688:Int64
 00747B45    xor         edx,edx
 00747B47    push        edx
 00747B48    push        eax
 00747B49    xor         edx,edx
 00747B4B    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747B50    mov         ecx,dword ptr [eax]
 00747B52    call        dword ptr [ecx+20]
 00747B55    inc         ebx
 00747B56    cmp         bl,21
>00747B59    jne         007476E3
 00747B5F    mov         eax,[009034D8];gvar_009034D8:Int64
 00747B64    xor         edx,edx
 00747B66    push        edx
 00747B67    push        eax
 00747B68    xor         edx,edx
 00747B6A    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747B6F    mov         ecx,dword ptr [eax]
 00747B71    call        dword ptr [ecx+20]
 00747B74    mov         edx,9034DC;gvar_009034DC:Pointer
 00747B79    mov         ecx,104
 00747B7E    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747B83    mov         ebx,dword ptr [eax]
 00747B85    call        dword ptr [ebx+10]
 00747B88    cmp         eax,104
>00747B8D    je          00747BA6
 00747B8F    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747B95    mov         dl,1
 00747B97    mov         eax,[0046B9E4];EWriteError
 00747B9C    call        Exception.Create;EWriteError.Create
 00747BA1    call        @RaiseExcept
 00747BA6    mov         eax,[00902CBC];gvar_00902CBC:Int64
 00747BAB    xor         edx,edx
 00747BAD    push        edx
 00747BAE    push        eax
 00747BAF    xor         edx,edx
 00747BB1    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747BB6    mov         ecx,dword ptr [eax]
 00747BB8    call        dword ptr [ecx+20]
 00747BBB    mov         edx,902CC0;gvar_00902CC0:Pointer
 00747BC0    mov         ecx,10
 00747BC5    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747BCA    mov         ebx,dword ptr [eax]
 00747BCC    call        dword ptr [ebx+10]
 00747BCF    cmp         eax,10
>00747BD2    je          00747BEB
 00747BD4    mov         ecx,dword ptr ds:[7C3E84];^'Error writing to file '
 00747BDA    mov         dl,1
 00747BDC    mov         eax,[0046B9E4];EWriteError
 00747BE1    call        Exception.Create;EWriteError.Create
 00747BE6    call        @RaiseExcept
 00747BEB    mov         eax,[007C491C];^gvar_008DF5CC
 00747BF0    mov         byte ptr [eax],0
 00747BF3    mov         eax,[007C499C];^gvar_008DF5C0
 00747BF8    mov         byte ptr [eax],0
 00747BFB    mov         eax,[007C4C68];^gvar_008DF5B8
 00747C00    mov         byte ptr [eax],0
 00747C03    mov         eax,[007C47D8];^gvar_008DF5A8
 00747C08    mov         byte ptr [eax],0
 00747C0B    mov         eax,[007C4674];^gvar_00857F38
 00747C10    mov         byte ptr [eax],0
 00747C13    mov         byte ptr [ebp-1],1
 00747C17    xor         eax,eax
 00747C19    pop         edx
 00747C1A    pop         ecx
 00747C1B    pop         ecx
 00747C1C    mov         dword ptr fs:[eax],edx
 00747C1F    push        747C36
 00747C24    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747C29    call        TObject.Free
 00747C2E    ret
>00747C2F    jmp         @HandleFinally
>00747C34    jmp         00747C24
 00747C36    movzx       eax,byte ptr [ebp-1]
 00747C3A    pop         edi
 00747C3B    pop         esi
 00747C3C    pop         ebx
 00747C3D    mov         esp,ebp
 00747C3F    pop         ebp
 00747C40    ret
end;*}

//00747C44
{*function sub_00747C44(?:string; ?:Integer):?;
begin
 00747C44    push        ebp
 00747C45    mov         ebp,esp
 00747C47    add         esp,0FFFFFFB0
 00747C4A    push        ebx
 00747C4B    push        esi
 00747C4C    push        edi
 00747C4D    xor         ecx,ecx
 00747C4F    mov         dword ptr [ebp-4C],ecx
 00747C52    mov         dword ptr [ebp-48],ecx
 00747C55    mov         dword ptr [ebp-44],ecx
 00747C58    mov         dword ptr [ebp-40],ecx
 00747C5B    mov         dword ptr [ebp-3C],ecx
 00747C5E    mov         dword ptr [ebp-38],ecx
 00747C61    mov         dword ptr [ebp-34],ecx
 00747C64    mov         dword ptr [ebp-4],ecx
 00747C67    mov         byte ptr [ebp-5],dl
 00747C6A    mov         ebx,eax
 00747C6C    mov         esi,9035E4;gvar_009035E4:Pointer
 00747C71    xor         eax,eax
 00747C73    push        ebp
 00747C74    push        7485D7
 00747C79    push        dword ptr fs:[eax]
 00747C7C    mov         dword ptr fs:[eax],esp
 00747C7F    mov         byte ptr [ebp-6],0
 00747C83    push        20
 00747C85    mov         ecx,dword ptr [ebx]
 00747C87    mov         dl,1
 00747C89    mov         eax,[00472830];TFileStream
 00747C8E    call        TFileStream.Create;TFileStream.Create
 00747C93    mov         [00902CA8],eax;gvar_00902CA8:TFileStream
 00747C98    push        ebp
 00747C99    push        7485AD
 00747C9E    push        dword ptr fs:[0]
 00747CA5    mov         dword ptr fs:[0],esp
 00747CAC    mov         edx,902CAC;gvar_00902CAC:Pointer
 00747CB1    mov         ecx,10
 00747CB6    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747CBB    mov         ebx,dword ptr [eax]
 00747CBD    call        dword ptr [ebx+0C]
 00747CC0    cmp         eax,10
>00747CC3    je          00747CDC
 00747CC5    mov         ecx,dword ptr ds:[7C3EA4];^'Error occured while reading the file header'
 00747CCB    mov         dl,1
 00747CCD    mov         eax,[0046B93C];EReadError
 00747CD2    call        Exception.Create;EReadError.Create
 00747CD7    call        @RaiseExcept
 00747CDC    mov         eax,902CAC;gvar_00902CAC:Pointer
 00747CE1    mov         edx,7C3E70;gvar_007C3E70
 00747CE6    mov         ecx,8
 00747CEB    call        @AStrCmp
>00747CF0    je          00747D09
 00747CF2    mov         ecx,dword ptr ds:[7C3E90];^'The file is not an FX/FXNet file! No data is read.'
 00747CF8    mov         dl,1
 00747CFA    mov         eax,[0046B93C];EReadError
 00747CFF    call        Exception.Create;EReadError.Create
 00747D04    call        @RaiseExcept
 00747D09    movzx       eax,word ptr ds:[902CB4];gvar_00902CB4
 00747D10    mov         edx,10000
 00747D15    mul         eax,edx
 00747D17    mov         ecx,eax
>00747D19    jno         00747D20
 00747D1B    call        @IntOver
 00747D20    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 00747D27    add         ecx,eax
>00747D29    jno         00747D30
 00747D2B    call        @IntOver
 00747D30    movzx       eax,word ptr ds:[7C3E78];0x90004 gvar_007C3E78
 00747D37    mov         edx,10000
 00747D3C    mul         eax,edx
>00747D3E    jno         00747D45
 00747D40    call        @IntOver
 00747D45    movzx       edx,word ptr ds:[7C3E7A];0x5CF40009 gvar_007C3E7A
 00747D4C    add         eax,edx
>00747D4E    jno         00747D55
 00747D50    call        @IntOver
 00747D55    cmp         ecx,eax
>00747D57    jbe         00747D70
 00747D59    mov         ecx,dword ptr ds:[7C3E94];^'The file is made with a newer version! 
This version can no...
 00747D5F    mov         dl,1
 00747D61    mov         eax,[0046B93C];EReadError
 00747D66    call        Exception.Create;EReadError.Create
 00747D6B    call        @RaiseExcept
 00747D70    movzx       eax,word ptr ds:[902CB4];gvar_00902CB4
 00747D77    mov         edx,10000
 00747D7C    mul         eax,edx
 00747D7E    mov         ecx,eax
>00747D80    jno         00747D87
 00747D82    call        @IntOver
 00747D87    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 00747D8E    add         ecx,eax
>00747D90    jno         00747D97
 00747D92    call        @IntOver
 00747D97    cmp         ecx,30002
>00747D9D    jbe         00747DBE
 00747D9F    cmp         ecx,40000
>00747DA5    jae         00747DBE
 00747DA7    mov         ecx,dword ptr ds:[7C3E98];^'File version is unknown or incompatible!
No data is read'
 00747DAD    mov         dl,1
 00747DAF    mov         eax,[0046B93C];EReadError
 00747DB4    call        Exception.Create;EReadError.Create
 00747DB9    call        @RaiseExcept
 00747DBE    mov         eax,[007C4B98];^gvar_007A1EBC
 00747DC3    cmp         dword ptr [eax],1
>00747DC6    jne         00747E0B
 00747DC8    movzx       eax,word ptr ds:[902CB4];gvar_00902CB4
 00747DCF    mov         edx,10000
 00747DD4    mul         eax,edx
>00747DD6    jno         00747DDD
 00747DD8    call        @IntOver
 00747DDD    movzx       edx,word ptr ds:[902CB6];gvar_00902CB6
 00747DE4    add         eax,edx
>00747DE6    jno         00747DED
 00747DE8    call        @IntOver
 00747DED    cmp         eax,40000
>00747DF2    jae         00747E0B
 00747DF4    mov         ecx,dword ptr ds:[7C3E98];^'File version is unknown or incompatible!
No data is read'
 00747DFA    mov         dl,1
 00747DFC    mov         eax,[0046B93C];EReadError
 00747E01    call        Exception.Create;EReadError.Create
 00747E06    call        @RaiseExcept
 00747E0B    mov         edx,902CC0;gvar_00902CC0:Pointer
 00747E10    mov         ecx,10
 00747E15    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747E1A    mov         ebx,dword ptr [eax]
 00747E1C    call        dword ptr [ebx+0C]
 00747E1F    cmp         eax,10
>00747E22    je          00747E3B
 00747E24    mov         ecx,dword ptr ds:[7C3EA8];^'Error occured while reading the file table of content'
 00747E2A    mov         dl,1
 00747E2C    mov         eax,[0046B93C];EReadError
 00747E31    call        Exception.Create;EReadError.Create
 00747E36    call        @RaiseExcept
 00747E3B    mov         eax,[00902CC8];gvar_00902CC8:Int64
 00747E40    xor         edx,edx
 00747E42    push        edx
 00747E43    push        eax
 00747E44    xor         edx,edx
 00747E46    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747E4B    mov         ecx,dword ptr [eax]
 00747E4D    call        dword ptr [ecx+20]
 00747E50    mov         edx,9034DC;gvar_009034DC:Pointer
 00747E55    mov         ecx,104
 00747E5A    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747E5F    mov         ebx,dword ptr [eax]
 00747E61    call        dword ptr [ebx+0C]
 00747E64    cmp         eax,104
>00747E69    je          00747E82
 00747E6B    mov         ecx,dword ptr ds:[7C3EAC];^'Error occured while reading the list of panels'
 00747E71    mov         dl,1
 00747E73    mov         eax,[0046B93C];EReadError
 00747E78    call        Exception.Create;EReadError.Create
 00747E7D    call        @RaiseExcept
 00747E82    mov         eax,[007C4BFC];^gvar_007CA840
 00747E87    cmp         byte ptr [eax],0
>00747E8A    je          00747EB4
 00747E8C    cmp         word ptr ds:[9034DC],1;gvar_009034DC:Pointer
>00747E94    ja          00747EA0
 00747E96    cmp         word ptr ds:[9034E2],0;gvar_009034E2
>00747E9E    jbe         00747EB4
 00747EA0    mov         eax,[007C3EA0];^'The configuration can not be read because of license restrictions.'
 00747EA5    call        ShowMessage
 00747EAA    call        @TryFinallyExit
>00747EAF    jmp         007485B4
 00747EB4    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00747EB9    cmp         dword ptr [eax],0
>00747EBC    jne         00747EE9
 00747EBE    mov         dl,1
 00747EC0    mov         eax,[006A4F5C];TFXNet
 00747EC5    call        TFXNet.Create;TFXNet.Create
 00747ECA    mov         edx,dword ptr ds:[7C4C84];^gvar_008DF5C8:TFXNet
 00747ED0    mov         dword ptr [edx],eax
 00747ED2    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00747ED7    mov         eax,dword ptr [eax]
 00747ED9    add         eax,4
 00747EDC    mov         edx,dword ptr ds:[7C4C0C];^^"'New FXNet'"
 00747EE2    mov         edx,dword ptr [edx]
 00747EE4    call        @UStrAsg
 00747EE9    movzx       eax,word ptr ds:[9034DC];gvar_009034DC:Pointer
 00747EF0    cmp         eax,0FF
>00747EF5    jbe         00747EFC
 00747EF7    call        @BoundErr
 00747EFC    test        al,al
>00747EFE    jbe         00748591
 00747F04    mov         byte ptr [ebp-25],al
 00747F07    mov         byte ptr [ebp-0D],1
 00747F0B    movzx       edx,byte ptr [ebp-0D]
 00747F0F    dec         edx
 00747F10    cmp         edx,1F
>00747F13    jbe         00747F1A
 00747F15    call        @BoundErr
 00747F1A    inc         edx
 00747F1B    movzx       eax,word ptr [edx*8+9034D8];gvar_009034D8:Int64
 00747F23    test        eax,eax
>00747F25    je          00748585
 00747F2B    movzx       ebx,word ptr [edx*8+9034DA];gvar_009034DA
 00747F33    cmp         byte ptr [ebp-5],0
>00747F37    jbe         00747F46
 00747F39    movzx       edx,byte ptr [ebp-5]
 00747F3D    cmp         bx,dx
>00747F40    jne         00748585
 00747F46    mov         ecx,eax
 00747F48    cmp         ecx,0FF
>00747F4E    jbe         00747F55
 00747F50    call        @BoundErr
 00747F55    mov         dl,1
 00747F57    mov         eax,[006A4DA4];TFXPanel
 00747F5C    call        TFXPanel.Create;TFXPanel.Create
 00747F61    mov         dword ptr [ebp-0C],eax
 00747F64    movzx       ecx,byte ptr [ebp-0D]
 00747F68    dec         ecx
 00747F69    cmp         ecx,1F
>00747F6C    jbe         00747F73
 00747F6E    call        @BoundErr
 00747F73    inc         ecx
 00747F74    movzx       eax,word ptr [ecx*8+9034D8];gvar_009034D8:Int64
 00747F7C    mov         edx,dword ptr [ebp-0C]
 00747F7F    mov         dword ptr [edx+4],eax;TFXPanel.iType:Integer
 00747F82    mov         eax,dword ptr [ebp-0C]
 00747F85    mov         eax,dword ptr [eax+8];TFXPanel.FXPCI:TFXPCI
 00747F88    mov         dword ptr [ebp-14],eax
 00747F8B    mov         eax,dword ptr [ebp-0C]
 00747F8E    mov         eax,dword ptr [eax+0C];TFXPanel.FXPPD:TFXPPD
 00747F91    mov         dword ptr [ebp-18],eax
 00747F94    mov         eax,dword ptr [ebp-0C]
 00747F97    mov         eax,dword ptr [eax+10];TFXPanel.FXPIO:TFXPIO
 00747F9A    mov         dword ptr [ebp-1C],eax
 00747F9D    mov         eax,dword ptr [ebp-0C]
 00747FA0    mov         eax,dword ptr [eax+14];TFXPanel.FXPAD:TFXPAD
 00747FA3    mov         dword ptr [ebp-20],eax
 00747FA6    mov         eax,dword ptr [ebp-0C]
 00747FA9    mov         eax,dword ptr [eax+18];TFXPanel.FXPTD:TFXPTD
 00747FAC    mov         dword ptr [ebp-24],eax
 00747FAF    mov         eax,dword ptr [ecx*8+9034DC];gvar_009034DC:Pointer
 00747FB6    xor         edx,edx
 00747FB8    push        edx
 00747FB9    push        eax
 00747FBA    xor         edx,edx
 00747FBC    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747FC1    mov         ecx,dword ptr [eax]
 00747FC3    call        dword ptr [ecx+20]
 00747FC6    mov         edx,esi
 00747FC8    mov         ecx,0A4
 00747FCD    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00747FD2    mov         edi,dword ptr [eax]
 00747FD4    call        dword ptr [edi+0C]
 00747FD7    cmp         eax,0A4
>00747FDC    je          00748005
 00747FDE    movzx       eax,bx
 00747FE1    mov         dword ptr [ebp-30],eax
 00747FE4    mov         byte ptr [ebp-2C],0
 00747FE8    lea         eax,[ebp-30]
 00747FEB    push        eax
 00747FEC    push        0
 00747FEE    mov         ecx,dword ptr ds:[7C3EB0];^'Error occured while reading the list of data sections for pa...
 00747FF4    mov         dl,1
 00747FF6    mov         eax,[0046B93C];EReadError
 00747FFB    call        Exception.CreateFmt;EReadError.Create
 00748000    call        @RaiseExcept
 00748005    mov         eax,dword ptr [esi+0C]
 00748008    xor         edx,edx
 0074800A    push        edx
 0074800B    push        eax
 0074800C    xor         edx,edx
 0074800E    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00748013    mov         ecx,dword ptr [eax]
 00748015    call        dword ptr [ecx+20]
 00748018    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 0074801F    push        eax
 00748020    movzx       eax,word ptr [esi+6]
 00748024    push        eax
 00748025    mov         eax,dword ptr [esi+8]
 00748028    test        eax,eax
>0074802A    jns         00748031
 0074802C    call        @BoundErr
 00748031    push        eax
 00748032    movzx       ecx,word ptr ds:[902CB4];gvar_00902CB4
 00748039    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 0074803F    mov         eax,dword ptr [ebp-14]
 00748042    call        TFXPCI.Read
 00748047    inc         eax
>00748048    jne         0074808C
 0074804A    movzx       eax,bx
 0074804D    mov         dword ptr [ebp-30],eax
 00748050    mov         byte ptr [ebp-2C],0
 00748054    lea         eax,[ebp-30]
 00748057    push        eax
 00748058    push        0
 0074805A    push        dword ptr ds:[7C3EB4];^'Error occured while reading the configuration info of panel %.2d...
 00748060    push        7485F8;''
 00748065    push        dword ptr ds:[7C3E9C];^'Partially read data is not valid.'
 0074806B    lea         eax,[ebp-34]
 0074806E    mov         edx,3
 00748073    call        @UStrCatN
 00748078    mov         ecx,dword ptr [ebp-34]
 0074807B    mov         dl,1
 0074807D    mov         eax,[0046B93C];EReadError
 00748082    call        Exception.CreateFmt;EReadError.Create
 00748087    call        @RaiseExcept
 0074808C    mov         eax,dword ptr [esi+1C]
 0074808F    xor         edx,edx
 00748091    push        edx
 00748092    push        eax
 00748093    xor         edx,edx
 00748095    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 0074809A    mov         ecx,dword ptr [eax]
 0074809C    call        dword ptr [ecx+20]
 0074809F    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 007480A6    push        eax
 007480A7    movzx       eax,word ptr [esi+16]
 007480AB    push        eax
 007480AC    mov         eax,dword ptr [esi+18]
 007480AF    test        eax,eax
>007480B1    jns         007480B8
 007480B3    call        @BoundErr
 007480B8    push        eax
 007480B9    movzx       ecx,word ptr ds:[902CB4];gvar_00902CB4
 007480C0    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 007480C6    mov         eax,dword ptr [ebp-18]
 007480C9    call        TFXPPD.Read
 007480CE    inc         eax
>007480CF    jne         00748113
 007480D1    movzx       eax,bx
 007480D4    mov         dword ptr [ebp-30],eax
 007480D7    mov         byte ptr [ebp-2C],0
 007480DB    lea         eax,[ebp-30]
 007480DE    push        eax
 007480DF    push        0
 007480E1    push        dword ptr ds:[7C3EB8];^'Error occured while reading general panel data of panel %.2d'
 007480E7    push        7485F8;''
 007480EC    push        dword ptr ds:[7C3E9C];^'Partially read data is not valid.'
 007480F2    lea         eax,[ebp-38]
 007480F5    mov         edx,3
 007480FA    call        @UStrCatN
 007480FF    mov         ecx,dword ptr [ebp-38]
 00748102    mov         dl,1
 00748104    mov         eax,[0046B93C];EReadError
 00748109    call        Exception.CreateFmt;EReadError.Create
 0074810E    call        @RaiseExcept
 00748113    mov         eax,dword ptr [esi+2C]
 00748116    xor         edx,edx
 00748118    push        edx
 00748119    push        eax
 0074811A    xor         edx,edx
 0074811C    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 00748121    mov         ecx,dword ptr [eax]
 00748123    call        dword ptr [ecx+20]
 00748126    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 0074812D    push        eax
 0074812E    movzx       eax,word ptr [esi+26]
 00748132    push        eax
 00748133    mov         eax,dword ptr [esi+28]
 00748136    test        eax,eax
>00748138    jns         0074813F
 0074813A    call        @BoundErr
 0074813F    push        eax
 00748140    movzx       ecx,word ptr ds:[902CB4];gvar_00902CB4
 00748147    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 0074814D    mov         eax,dword ptr [ebp-1C]
 00748150    call        TFXPIO.ReadMCIO
 00748155    inc         eax
>00748156    jne         0074819A
 00748158    movzx       eax,bx
 0074815B    mov         dword ptr [ebp-30],eax
 0074815E    mov         byte ptr [ebp-2C],0
 00748162    lea         eax,[ebp-30]
 00748165    push        eax
 00748166    push        0
 00748168    push        dword ptr ds:[7C3EBC];^'Error occured while reading IO data of the MC of panel %.2d'
 0074816E    push        7485F8;''
 00748173    push        dword ptr ds:[7C3E9C];^'Partially read data is not valid.'
 00748179    lea         eax,[ebp-3C]
 0074817C    mov         edx,3
 00748181    call        @UStrCatN
 00748186    mov         ecx,dword ptr [ebp-3C]
 00748189    mov         dl,1
 0074818B    mov         eax,[0046B93C];EReadError
 00748190    call        Exception.CreateFmt;EReadError.Create
 00748195    call        @RaiseExcept
 0074819A    mov         eax,dword ptr [esi+3C]
 0074819D    xor         edx,edx
 0074819F    push        edx
 007481A0    push        eax
 007481A1    xor         edx,edx
 007481A3    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007481A8    mov         ecx,dword ptr [eax]
 007481AA    call        dword ptr [ecx+20]
 007481AD    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 007481B4    push        eax
 007481B5    movzx       eax,word ptr [esi+36]
 007481B9    push        eax
 007481BA    mov         eax,dword ptr [esi+38]
 007481BD    test        eax,eax
>007481BF    jns         007481C6
 007481C1    call        @BoundErr
 007481C6    push        eax
 007481C7    movzx       ecx,word ptr ds:[902CB4];gvar_00902CB4
 007481CE    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 007481D4    mov         eax,dword ptr [ebp-1C]
 007481D7    call        TFXPIO.ReadIOCX
 007481DC    inc         eax
>007481DD    jne         00748221
 007481DF    movzx       eax,bx
 007481E2    mov         dword ptr [ebp-30],eax
 007481E5    mov         byte ptr [ebp-2C],0
 007481E9    lea         eax,[ebp-30]
 007481EC    push        eax
 007481ED    push        0
 007481EF    push        dword ptr ds:[7C3EC0];^'Error occured while reading IOC data of panel %.2d'
 007481F5    push        7485F8;''
 007481FA    push        dword ptr ds:[7C3E9C];^'Partially read data is not valid.'
 00748200    lea         eax,[ebp-40]
 00748203    mov         edx,3
 00748208    call        @UStrCatN
 0074820D    mov         ecx,dword ptr [ebp-40]
 00748210    mov         dl,1
 00748212    mov         eax,[0046B93C];EReadError
 00748217    call        Exception.CreateFmt;EReadError.Create
 0074821C    call        @RaiseExcept
 00748221    mov         eax,dword ptr [esi+4C]
 00748224    xor         edx,edx
 00748226    push        edx
 00748227    push        eax
 00748228    xor         edx,edx
 0074822A    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 0074822F    mov         ecx,dword ptr [eax]
 00748231    call        dword ptr [ecx+20]
 00748234    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 0074823B    push        eax
 0074823C    movzx       eax,word ptr [esi+46]
 00748240    push        eax
 00748241    mov         eax,dword ptr [esi+48]
 00748244    test        eax,eax
>00748246    jns         0074824D
 00748248    call        @BoundErr
 0074824D    push        eax
 0074824E    movzx       ecx,word ptr ds:[902CB4];gvar_00902CB4
 00748255    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 0074825B    mov         eax,dword ptr [ebp-20]
 0074825E    call        TFXPAD.Read
 00748263    inc         eax
>00748264    jne         007482A8
 00748266    movzx       eax,bx
 00748269    mov         dword ptr [ebp-30],eax
 0074826C    mov         byte ptr [ebp-2C],0
 00748270    lea         eax,[ebp-30]
 00748273    push        eax
 00748274    push        0
 00748276    push        dword ptr ds:[7C3EC4];^'Error occured while reading address data of panel %.2d'
 0074827C    push        7485F8;''
 00748281    push        dword ptr ds:[7C3E9C];^'Partially read data is not valid.'
 00748287    lea         eax,[ebp-44]
 0074828A    mov         edx,3
 0074828F    call        @UStrCatN
 00748294    mov         ecx,dword ptr [ebp-44]
 00748297    mov         dl,1
 00748299    mov         eax,[0046B93C];EReadError
 0074829E    call        Exception.CreateFmt;EReadError.Create
 007482A3    call        @RaiseExcept
 007482A8    mov         eax,dword ptr [esi+5C]
 007482AB    xor         edx,edx
 007482AD    push        edx
 007482AE    push        eax
 007482AF    xor         edx,edx
 007482B1    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007482B6    mov         ecx,dword ptr [eax]
 007482B8    call        dword ptr [ecx+20]
 007482BB    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 007482C2    push        eax
 007482C3    movzx       eax,word ptr [esi+56]
 007482C7    push        eax
 007482C8    mov         eax,dword ptr [esi+58]
 007482CB    test        eax,eax
>007482CD    jns         007482D4
 007482CF    call        @BoundErr
 007482D4    push        eax
 007482D5    movzx       ecx,word ptr ds:[902CB4];gvar_00902CB4
 007482DC    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 007482E2    mov         eax,dword ptr [ebp-24]
 007482E5    call        TFXPTD.ReadPT
 007482EA    inc         eax
>007482EB    jne         0074832F
 007482ED    movzx       eax,bx
 007482F0    mov         dword ptr [ebp-30],eax
 007482F3    mov         byte ptr [ebp-2C],0
 007482F7    lea         eax,[ebp-30]
 007482FA    push        eax
 007482FB    push        0
 007482FD    push        dword ptr ds:[7C3EC8];^'Error occured while reading text data of panel %.2d'
 00748303    push        7485F8;''
 00748308    push        dword ptr ds:[7C3E9C];^'Partially read data is not valid.'
 0074830E    lea         eax,[ebp-48]
 00748311    mov         edx,3
 00748316    call        @UStrCatN
 0074831B    mov         ecx,dword ptr [ebp-48]
 0074831E    mov         dl,1
 00748320    mov         eax,[0046B93C];EReadError
 00748325    call        Exception.CreateFmt;EReadError.Create
 0074832A    call        @RaiseExcept
 0074832F    mov         eax,dword ptr [esi+6C]
 00748332    xor         edx,edx
 00748334    push        edx
 00748335    push        eax
 00748336    xor         edx,edx
 00748338    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 0074833D    mov         ecx,dword ptr [eax]
 0074833F    call        dword ptr [ecx+20]
 00748342    movzx       eax,word ptr ds:[902CB6];gvar_00902CB6
 00748349    push        eax
 0074834A    movzx       eax,word ptr [esi+66]
 0074834E    push        eax
 0074834F    mov         eax,dword ptr [esi+68]
 00748352    test        eax,eax
>00748354    jns         0074835B
 00748356    call        @BoundErr
 0074835B    push        eax
 0074835C    movzx       ecx,word ptr ds:[902CB4];gvar_00902CB4
 00748363    mov         edx,dword ptr ds:[902CA8];gvar_00902CA8:TFileStream
 00748369    mov         eax,dword ptr [ebp-24]
 0074836C    call        TFXPTD.ReadAT
 00748371    inc         eax
>00748372    jne         007483B6
 00748374    movzx       eax,bx
 00748377    mov         dword ptr [ebp-30],eax
 0074837A    mov         byte ptr [ebp-2C],0
 0074837E    lea         eax,[ebp-30]
 00748381    push        eax
 00748382    push        0
 00748384    push        dword ptr ds:[7C3EC8];^'Error occured while reading text data of panel %.2d'
 0074838A    push        7485F8;''
 0074838F    push        dword ptr ds:[7C3E9C];^'Partially read data is not valid.'
 00748395    lea         eax,[ebp-4C]
 00748398    mov         edx,3
 0074839D    call        @UStrCatN
 007483A2    mov         ecx,dword ptr [ebp-4C]
 007483A5    mov         dl,1
 007483A7    mov         eax,[0046B93C];EReadError
 007483AC    call        Exception.CreateFmt;EReadError.Create
 007483B1    call        @RaiseExcept
 007483B6    mov         byte ptr [ebp-0E],0
 007483BA    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 007483BF    mov         eax,dword ptr [eax]
 007483C1    xor         edx,edx
 007483C3    mov         dword ptr [eax+2DC],edx
 007483C9    movzx       edx,bx
 007483CC    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007483D1    mov         eax,dword ptr [eax]
 007483D3    call        TFXNet.GetPanel
 007483D8    test        eax,eax
>007483DA    je          0074846E
 007483E0    movzx       edx,bx
 007483E3    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 007483E8    mov         eax,dword ptr [eax]
 007483EA    mov         eax,dword ptr [eax+3DC]
 007483F0    call        TUpDown.SetPosition
 007483F5    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 007483FA    mov         eax,dword ptr [eax]
 007483FC    mov         edx,dword ptr [eax]
 007483FE    call        dword ptr [edx+13C]
 00748404    dec         eax
>00748405    je          00748411
 00748407    dec         eax
>00748408    je          0074843F
 0074840A    sub         eax,2
>0074840D    je          00748417
>0074840F    jmp         00748443
 00748411    mov         byte ptr [ebp-0E],1
>00748415    jmp         00748443
 00748417    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 0074841C    mov         eax,dword ptr [eax]
 0074841E    mov         eax,dword ptr [eax+3DC]
 00748424    call        TUpDown.GetPosition
 00748429    mov         edx,eax
 0074842B    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00748430    mov         eax,dword ptr [eax]
 00748432    call        TFXNet.GetPanel
 00748437    test        eax,eax
 00748439    sete        byte ptr [ebp-0E]
>0074843D    jmp         00748443
 0074843F    mov         byte ptr [ebp-0E],1
 00748443    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 00748448    mov         eax,dword ptr [eax]
 0074844A    mov         eax,dword ptr [eax+3DC]
 00748450    call        TUpDown.GetPosition
 00748455    mov         ebx,eax
 00748457    cmp         ebx,0FFFF
>0074845D    jbe         00748464
 0074845F    call        @BoundErr
 00748464    cmp         byte ptr [ebp-0E],0
>00748468    je          007483E0
 0074846E    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 00748473    mov         eax,dword ptr [eax]
 00748475    cmp         dword ptr [eax+2DC],2
>0074847C    jne         0074848B
 0074847E    mov         eax,dword ptr [ebp-0C]
 00748481    call        TObject.Free
>00748486    jmp         00748585
 0074848B    test        bx,bx
>0074848E    jbe         00748498
 00748490    mov         eax,[007C4870];^gvar_007A1EB8
 00748495    mov         byte ptr [eax],1
 00748498    movzx       edx,bx
 0074849B    cmp         edx,0FF
>007484A1    jbe         007484A8
 007484A3    call        @BoundErr
 007484A8    mov         eax,dword ptr [ebp-18]
 007484AB    call        006A2BC4
 007484B0    test        bx,bx
>007484B3    jbe         007484ED
 007484B5    movzx       edx,bx
 007484B8    sub         edx,1
>007484BB    jno         007484C2
 007484BD    call        @IntOver
 007484C2    cmp         edx,0FF
>007484C8    jbe         007484CF
 007484CA    call        @BoundErr
 007484CF    lea         eax,[ebp-50]
 007484D2    mov         cl,4
 007484D4    call        @SetElem
 007484D9    mov         edx,dword ptr [ebp-50]
 007484DC    mov         eax,dword ptr [ebp-18]
 007484DF    or          edx,dword ptr [eax+171]
 007484E5    mov         eax,dword ptr [ebp-18]
 007484E8    call        006A2E40
 007484ED    movzx       edi,bx
 007484F0    mov         edx,edi
 007484F2    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 007484F7    mov         eax,dword ptr [eax]
 007484F9    call        TFXNet.GetPanel
 007484FE    call        TObject.Free
 00748503    mov         edx,edi
 00748505    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074850A    mov         eax,dword ptr [eax]
 0074850C    mov         ecx,dword ptr [ebp-0C]
 0074850F    call        TFXNet.SetPanel
 00748514    mov         eax,dword ptr [ebp-18]
 00748517    movzx       eax,byte ptr [eax+180]
 0074851E    add         al,0FD
 00748520    sub         al,6
>00748522    jb          0074852E
 00748524    mov         eax,dword ptr [ebp-18]
 00748527    mov         byte ptr [eax+180],3
 0074852E    mov         edx,edi
 00748530    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00748535    mov         eax,dword ptr [eax]
 00748537    call        TFXNet.GetPanel
 0074853C    mov         edx,dword ptr [ebp-18]
 0074853F    movzx       edx,byte ptr [edx+180]
 00748546    mov         dword ptr [eax+4],edx;TFXPanel.iType:Integer
 00748549    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074854E    mov         eax,dword ptr [eax]
 00748550    mov         eax,dword ptr [eax+4]
 00748553    mov         edx,dword ptr ds:[7C4C0C];^^"'New FXNet'"
 00748559    mov         edx,dword ptr [edx]
 0074855B    call        @UStrEqual
>00748560    jne         00748585
 00748562    lea         edx,[ebp-4]
 00748565    mov         eax,dword ptr [ebp-18]
 00748568    call        006A21B4
 0074856D    cmp         dword ptr [ebp-4],0
>00748571    je          00748585
 00748573    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 00748578    mov         eax,dword ptr [eax]
 0074857A    add         eax,4
 0074857D    mov         edx,dword ptr [ebp-4]
 00748580    call        @UStrAsg
 00748585    inc         byte ptr [ebp-0D]
 00748588    dec         byte ptr [ebp-25]
>0074858B    jne         00747F0B
 00748591    mov         byte ptr [ebp-6],1
 00748595    xor         eax,eax
 00748597    pop         edx
 00748598    pop         ecx
 00748599    pop         ecx
 0074859A    mov         dword ptr fs:[eax],edx
 0074859D    push        7485B4
 007485A2    mov         eax,[00902CA8];gvar_00902CA8:TFileStream
 007485A7    call        TObject.Free
 007485AC    ret
>007485AD    jmp         @HandleFinally
>007485B2    jmp         007485A2
 007485B4    xor         eax,eax
 007485B6    pop         edx
 007485B7    pop         ecx
 007485B8    pop         ecx
 007485B9    mov         dword ptr fs:[eax],edx
 007485BC    push        7485DE
 007485C1    lea         eax,[ebp-4C]
 007485C4    mov         edx,7
 007485C9    call        @UStrArrayClr
 007485CE    lea         eax,[ebp-4]
 007485D1    call        @UStrClr
 007485D6    ret
>007485D7    jmp         @HandleFinally
>007485DC    jmp         007485C1
 007485DE    movzx       eax,byte ptr [ebp-6]
 007485E2    pop         edi
 007485E3    pop         esi
 007485E4    pop         ebx
 007485E5    mov         esp,ebp
 007485E7    pop         ebp
 007485E8    ret
end;*}

Initialization
Finalization
//007485FC
{*
 007485FC    push        ebp
 007485FD    mov         ebp,esp
 007485FF    xor         eax,eax
 00748601    push        ebp
 00748602    push        7486EF
 00748607    push        dword ptr fs:[eax]
 0074860A    mov         dword ptr fs:[eax],esp
 0074860D    inc         dword ptr ds:[902CA4]
>00748613    jne         007486E1
 00748619    mov         eax,7C3E7C;^'Error creating file '
 0074861E    call        @UStrClr
 00748623    mov         eax,7C3E80;^'Error opening file '
 00748628    call        @UStrClr
 0074862D    mov         eax,7C3E84;^'Error writing to file '
 00748632    call        @UStrClr
 00748637    mov         eax,7C3E88;^'Error reading file '
 0074863C    call        @UStrClr
 00748641    mov         eax,7C3E8C;^'The file '
 00748646    call        @UStrClr
 0074864B    mov         eax,7C3E90;^'The file is not an FX/FXNet file! No data is read.'
 00748650    call        @UStrClr
 00748655    mov         eax,7C3E94;^'The file is made with a newer version! 
This version can not handle the da...
 0074865A    call        @UStrClr
 0074865F    mov         eax,7C3E98;^'File version is unknown or incompatible!
No data is read'
 00748664    call        @UStrClr
 00748669    mov         eax,7C3E9C;^'Partially read data is not valid.'
 0074866E    call        @UStrClr
 00748673    mov         eax,7C3EA0;^'The configuration can not be read because of license restrictions.'
 00748678    call        @UStrClr
 0074867D    mov         eax,7C3EA4;^'Error occured while reading the file header'
 00748682    call        @UStrClr
 00748687    mov         eax,7C3EA8;^'Error occured while reading the file table of content'
 0074868C    call        @UStrClr
 00748691    mov         eax,7C3EAC;^'Error occured while reading the list of panels'
 00748696    call        @UStrClr
 0074869B    mov         eax,7C3EB0;^'Error occured while reading the list of data sections for panel %.2d'
 007486A0    call        @UStrClr
 007486A5    mov         eax,7C3EB4;^'Error occured while reading the configuration info of panel %.2d'
 007486AA    call        @UStrClr
 007486AF    mov         eax,7C3EB8;^'Error occured while reading general panel data of panel %.2d'
 007486B4    call        @UStrClr
 007486B9    mov         eax,7C3EBC;^'Error occured while reading IO data of the MC of panel %.2d'
 007486BE    call        @UStrClr
 007486C3    mov         eax,7C3EC0;^'Error occured while reading IOC data of panel %.2d'
 007486C8    call        @UStrClr
 007486CD    mov         eax,7C3EC4;^'Error occured while reading address data of panel %.2d'
 007486D2    call        @UStrClr
 007486D7    mov         eax,7C3EC8;^'Error occured while reading text data of panel %.2d'
 007486DC    call        @UStrClr
 007486E1    xor         eax,eax
 007486E3    pop         edx
 007486E4    pop         ecx
 007486E5    pop         ecx
 007486E6    mov         dword ptr fs:[eax],edx
 007486E9    push        7486F6
 007486EE    ret
>007486EF    jmp         @HandleFinally
>007486F4    jmp         007486EE
 007486F6    pop         ebp
 007486F7    ret
*}
end.