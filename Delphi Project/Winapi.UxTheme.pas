//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Winapi.UxTheme;

interface

uses
  SysUtils, Classes;

type
  _MARGINS = _MARGINS = record//size=10
cxLeftWidth:Integer;//f0
cxRightWidth:Integer;//f4
cyTopHeight:Integer;//f8
cyBottomHeight:Integer;//fC
end;;
    //function sub_004D4224:?;//004D4224
    procedure sub_004D423C;//004D423C
    procedure sub_004D4254;//004D4254
    //function sub_004D426C:?;//004D426C
    procedure sub_004D4284;//004D4284
    procedure sub_004D429C;//004D429C
    procedure sub_004D42B4;//004D42B4
    //function sub_004D42CC:?;//004D42CC
    procedure sub_004D42E4;//004D42E4
    //function sub_004D42FC:?;//004D42FC
    procedure FreeThemeLibrary;//004D4304
    //function sub_004D44C4:?;//004D44C4
    function UseThemes:Boolean;//004D4FA8

implementation

//004D4224
{*function sub_004D4224:?;
begin
 004D4224    jmp         dword ptr ds:[908254]
end;*}

//004D423C
procedure sub_004D423C;
begin
{*
 004D423C    jmp         dword ptr ds:[908250]
*}
end;

//004D4254
procedure sub_004D4254;
begin
{*
 004D4254    jmp         dword ptr ds:[90824C]
*}
end;

//004D426C
{*function sub_004D426C:?;
begin
 004D426C    jmp         dword ptr ds:[908248]
end;*}

//004D4284
procedure sub_004D4284;
begin
{*
 004D4284    jmp         dword ptr ds:[908244]
*}
end;

//004D429C
procedure sub_004D429C;
begin
{*
 004D429C    jmp         dword ptr ds:[908240]
*}
end;

//004D42B4
procedure sub_004D42B4;
begin
{*
 004D42B4    jmp         dword ptr ds:[90823C]
*}
end;

//004D42CC
{*function sub_004D42CC:?;
begin
 004D42CC    jmp         dword ptr ds:[908238]
end;*}

//004D42E4
procedure sub_004D42E4;
begin
{*
 004D42E4    jmp         dword ptr ds:[908234]
*}
end;

//004D42FC
{*function sub_004D42FC:?;
begin
 004D42FC    jmp         dword ptr ds:[908230]
end;*}

//004D4304
procedure FreeThemeLibrary;
begin
{*
 004D4304    push        ebp
 004D4305    mov         ebp,esp
 004D4307    mov         eax,[007A10F0];gvar_007A10F0:TCriticalSection
 004D430C    mov         edx,dword ptr [eax]
 004D430E    call        dword ptr [edx]
 004D4310    xor         eax,eax
 004D4312    push        ebp
 004D4313    push        4D44BA
 004D4318    push        dword ptr fs:[eax]
 004D431B    mov         dword ptr fs:[eax],esp
 004D431E    cmp         dword ptr ds:[7CA5AC],0
>004D4325    jle         004D432D
 004D4327    dec         dword ptr ds:[7CA5AC]
 004D432D    cmp         dword ptr ds:[7CA5A8],0;gvar_007CA5A8:HMODULE
>004D4334    je          004D44A2
 004D433A    cmp         dword ptr ds:[7CA5AC],0
>004D4341    jne         004D44A2
 004D4347    mov         eax,[007CA5A8];gvar_007CA5A8:HMODULE
 004D434C    push        eax
 004D434D    call        kernel32.FreeLibrary
 004D4352    xor         eax,eax
 004D4354    mov         [007CA5A8],eax;gvar_007CA5A8:HMODULE
 004D4359    xor         eax,eax
 004D435B    mov         [007CA4E8],eax;gvar_007CA4E8:Pointer
 004D4360    xor         eax,eax
 004D4362    mov         [007CA4EC],eax;gvar_007CA4EC:Pointer
 004D4367    xor         eax,eax
 004D4369    mov         [007CA4F0],eax;gvar_007CA4F0:Pointer
 004D436E    xor         eax,eax
 004D4370    mov         [007CA4F4],eax;gvar_007CA4F4:Pointer
 004D4375    xor         eax,eax
 004D4377    mov         [007CA4F8],eax;gvar_007CA4F8:Pointer
 004D437C    xor         eax,eax
 004D437E    mov         [007CA4FC],eax;gvar_007CA4FC:Pointer
 004D4383    xor         eax,eax
 004D4385    mov         [007CA500],eax;gvar_007CA500:Pointer
 004D438A    xor         eax,eax
 004D438C    mov         [007CA504],eax;gvar_007CA504:Pointer
 004D4391    xor         eax,eax
 004D4393    mov         [007CA508],eax;gvar_007CA508:Pointer
 004D4398    xor         eax,eax
 004D439A    mov         [007CA50C],eax;gvar_007CA50C:Pointer
 004D439F    xor         eax,eax
 004D43A1    mov         [007CA510],eax;gvar_007CA510:Pointer
 004D43A6    xor         eax,eax
 004D43A8    mov         [007CA514],eax;gvar_007CA514:Pointer
 004D43AD    xor         eax,eax
 004D43AF    mov         [007CA518],eax;gvar_007CA518:Pointer
 004D43B4    xor         eax,eax
 004D43B6    mov         [007CA51C],eax;gvar_007CA51C:Pointer
 004D43BB    xor         eax,eax
 004D43BD    mov         [007CA520],eax;gvar_007CA520:Pointer
 004D43C2    xor         eax,eax
 004D43C4    mov         [007CA524],eax;gvar_007CA524:Pointer
 004D43C9    xor         eax,eax
 004D43CB    mov         [007CA528],eax;gvar_007CA528:Pointer
 004D43D0    xor         eax,eax
 004D43D2    mov         [007CA52C],eax;gvar_007CA52C:Pointer
 004D43D7    xor         eax,eax
 004D43D9    mov         [007CA530],eax;gvar_007CA530:Pointer
 004D43DE    xor         eax,eax
 004D43E0    mov         [007CA534],eax;gvar_007CA534:Pointer
 004D43E5    xor         eax,eax
 004D43E7    mov         [007CA538],eax;gvar_007CA538:Pointer
 004D43EC    xor         eax,eax
 004D43EE    mov         [007CA53C],eax;gvar_007CA53C:Pointer
 004D43F3    xor         eax,eax
 004D43F5    mov         [007CA540],eax;gvar_007CA540:Pointer
 004D43FA    xor         eax,eax
 004D43FC    mov         [007CA544],eax;gvar_007CA544:Pointer
 004D4401    xor         eax,eax
 004D4403    mov         [007CA548],eax;gvar_007CA548:Pointer
 004D4408    xor         eax,eax
 004D440A    mov         [007CA54C],eax;gvar_007CA54C:Pointer
 004D440F    xor         eax,eax
 004D4411    mov         [007CA550],eax;gvar_007CA550:Pointer
 004D4416    xor         eax,eax
 004D4418    mov         [007CA554],eax;gvar_007CA554:Pointer
 004D441D    xor         eax,eax
 004D441F    mov         [007CA558],eax;gvar_007CA558:Pointer
 004D4424    xor         eax,eax
 004D4426    mov         [007CA55C],eax;gvar_007CA55C:Pointer
 004D442B    xor         eax,eax
 004D442D    mov         [007CA560],eax;gvar_007CA560:Pointer
 004D4432    xor         eax,eax
 004D4434    mov         [007CA564],eax;gvar_007CA564:Pointer
 004D4439    xor         eax,eax
 004D443B    mov         [007CA568],eax;gvar_007CA568:Pointer
 004D4440    xor         eax,eax
 004D4442    mov         [007CA56C],eax;gvar_007CA56C:Pointer
 004D4447    xor         eax,eax
 004D4449    mov         [007CA570],eax;gvar_007CA570:Pointer
 004D444E    xor         eax,eax
 004D4450    mov         [007CA574],eax;gvar_007CA574:Pointer
 004D4455    xor         eax,eax
 004D4457    mov         [007CA578],eax;gvar_007CA578:Pointer
 004D445C    xor         eax,eax
 004D445E    mov         [007CA57C],eax;gvar_007CA57C:Pointer
 004D4463    xor         eax,eax
 004D4465    mov         [007CA580],eax;gvar_007CA580:Pointer
 004D446A    xor         eax,eax
 004D446C    mov         [007CA584],eax;gvar_007CA584:Pointer
 004D4471    xor         eax,eax
 004D4473    mov         [007CA588],eax;gvar_007CA588:Pointer
 004D4478    xor         eax,eax
 004D447A    mov         [007CA58C],eax;gvar_007CA58C:Pointer
 004D447F    xor         eax,eax
 004D4481    mov         [007CA590],eax;gvar_007CA590:Pointer
 004D4486    xor         eax,eax
 004D4488    mov         [007CA594],eax;gvar_007CA594:Pointer
 004D448D    xor         eax,eax
 004D448F    mov         [007CA598],eax;gvar_007CA598:Pointer
 004D4494    xor         eax,eax
 004D4496    mov         [007CA59C],eax;gvar_007CA59C:Pointer
 004D449B    xor         eax,eax
 004D449D    mov         [007CA5A0],eax;gvar_007CA5A0:Pointer
 004D44A2    xor         eax,eax
 004D44A4    pop         edx
 004D44A5    pop         ecx
 004D44A6    pop         ecx
 004D44A7    mov         dword ptr fs:[eax],edx
 004D44AA    push        4D44C1
 004D44AF    mov         eax,[007A10F0];gvar_007A10F0:TCriticalSection
 004D44B4    mov         edx,dword ptr [eax]
 004D44B6    call        dword ptr [edx+4]
 004D44B9    ret
>004D44BA    jmp         @HandleFinally
>004D44BF    jmp         004D44AF
 004D44C1    pop         ebp
 004D44C2    ret
*}
end;

//004D44C4
{*function sub_004D44C4:?;
begin
 004D44C4    push        ebp
 004D44C5    mov         ebp,esp
 004D44C7    push        ecx
 004D44C8    push        ebx
 004D44C9    mov         ebx,7CA5A8;gvar_007CA5A8:HMODULE
 004D44CE    cmp         dword ptr ds:[7A10F0],0;gvar_007A10F0:TCriticalSection
>004D44D5    jne         004D44E0
 004D44D7    mov         byte ptr [ebp-1],0
>004D44DB    jmp         004D488F
 004D44E0    mov         eax,[007A10F0];0x0 gvar_007A10F0:TCriticalSection
 004D44E5    mov         edx,dword ptr [eax]
 004D44E7    call        dword ptr [edx]
 004D44E9    xor         eax,eax
 004D44EB    push        ebp
 004D44EC    push        4D4888
 004D44F1    push        dword ptr fs:[eax]
 004D44F4    mov         dword ptr fs:[eax],esp
 004D44F7    inc         dword ptr ds:[7CA5AC]
 004D44FD    cmp         dword ptr [ebx],0
>004D4500    jne         004D4869
 004D4506    push        4D4898;'uxtheme.dll'
 004D450B    call        kernel32.LoadLibraryW
 004D4510    mov         dword ptr [ebx],eax
 004D4512    cmp         dword ptr [ebx],0
>004D4515    jbe         004D4869
 004D451B    push        4D48B0;'OpenThemeData'
 004D4520    mov         eax,dword ptr [ebx]
 004D4522    push        eax
 004D4523    call        GetProcAddress
 004D4528    mov         [007CA4E8],eax;gvar_007CA4E8:Pointer
 004D452D    push        4D48CC;'CloseThemeData'
 004D4532    mov         eax,dword ptr [ebx]
 004D4534    push        eax
 004D4535    call        GetProcAddress
 004D453A    mov         [007CA4EC],eax;gvar_007CA4EC:Pointer
 004D453F    push        4D48EC;'DrawThemeBackground'
 004D4544    mov         eax,dword ptr [ebx]
 004D4546    push        eax
 004D4547    call        GetProcAddress
 004D454C    mov         [007CA4F0],eax;gvar_007CA4F0:Pointer
 004D4551    push        4D4914;'DrawThemeText'
 004D4556    mov         eax,dword ptr [ebx]
 004D4558    push        eax
 004D4559    call        GetProcAddress
 004D455E    mov         [007CA4F4],eax;gvar_007CA4F4:Pointer
 004D4563    push        4D4930;'GetThemeBackgroundContentRect'
 004D4568    mov         eax,dword ptr [ebx]
 004D456A    push        eax
 004D456B    call        GetProcAddress
 004D4570    mov         [007CA4F8],eax;gvar_007CA4F8:Pointer
 004D4575    push        4D496C;'GetThemeBackgroundExtent'
 004D457A    mov         eax,dword ptr [ebx]
 004D457C    push        eax
 004D457D    call        GetProcAddress
 004D4582    mov         [007CA4FC],eax;gvar_007CA4FC:Pointer
 004D4587    push        4D49A0;'GetThemePartSize'
 004D458C    mov         eax,dword ptr [ebx]
 004D458E    push        eax
 004D458F    call        GetProcAddress
 004D4594    mov         [007CA500],eax;gvar_007CA500:Pointer
 004D4599    push        4D49C4;'GetThemeTextExtent'
 004D459E    mov         eax,dword ptr [ebx]
 004D45A0    push        eax
 004D45A1    call        GetProcAddress
 004D45A6    mov         [007CA504],eax;gvar_007CA504:Pointer
 004D45AB    push        4D49EC;'GetThemeTextMetrics'
 004D45B0    mov         eax,dword ptr [ebx]
 004D45B2    push        eax
 004D45B3    call        GetProcAddress
 004D45B8    mov         [007CA508],eax;gvar_007CA508:Pointer
 004D45BD    push        4D4A14;'GetThemeBackgroundRegion'
 004D45C2    mov         eax,dword ptr [ebx]
 004D45C4    push        eax
 004D45C5    call        GetProcAddress
 004D45CA    mov         [007CA50C],eax;gvar_007CA50C:Pointer
 004D45CF    push        4D4A48;'HitTestThemeBackground'
 004D45D4    mov         eax,dword ptr [ebx]
 004D45D6    push        eax
 004D45D7    call        GetProcAddress
 004D45DC    mov         [007CA510],eax;gvar_007CA510:Pointer
 004D45E1    push        4D4A78;'DrawThemeEdge'
 004D45E6    mov         eax,dword ptr [ebx]
 004D45E8    push        eax
 004D45E9    call        GetProcAddress
 004D45EE    mov         [007CA514],eax;gvar_007CA514:Pointer
 004D45F3    push        4D4A94;'DrawThemeIcon'
 004D45F8    mov         eax,dword ptr [ebx]
 004D45FA    push        eax
 004D45FB    call        GetProcAddress
 004D4600    mov         [007CA518],eax;gvar_007CA518:Pointer
 004D4605    push        4D4AB0;'IsThemePartDefined'
 004D460A    mov         eax,dword ptr [ebx]
 004D460C    push        eax
 004D460D    call        GetProcAddress
 004D4612    mov         [007CA51C],eax;gvar_007CA51C:Pointer
 004D4617    push        4D4AD8;'IsThemeBackgroundPartiallyTransparent'
 004D461C    mov         eax,dword ptr [ebx]
 004D461E    push        eax
 004D461F    call        GetProcAddress
 004D4624    mov         [007CA520],eax;gvar_007CA520:Pointer
 004D4629    push        4D4B24;'GetThemeColor'
 004D462E    mov         eax,dword ptr [ebx]
 004D4630    push        eax
 004D4631    call        GetProcAddress
 004D4636    mov         [007CA524],eax;gvar_007CA524:Pointer
 004D463B    push        4D4B40;'GetThemeMetric'
 004D4640    mov         eax,dword ptr [ebx]
 004D4642    push        eax
 004D4643    call        GetProcAddress
 004D4648    mov         [007CA528],eax;gvar_007CA528:Pointer
 004D464D    push        4D4B60;'GetThemeString'
 004D4652    mov         eax,dword ptr [ebx]
 004D4654    push        eax
 004D4655    call        GetProcAddress
 004D465A    mov         [007CA52C],eax;gvar_007CA52C:Pointer
 004D465F    push        4D4B80;'GetThemeBool'
 004D4664    mov         eax,dword ptr [ebx]
 004D4666    push        eax
 004D4667    call        GetProcAddress
 004D466C    mov         [007CA530],eax;gvar_007CA530:Pointer
 004D4671    push        4D4B9C;'GetThemeInt'
 004D4676    mov         eax,dword ptr [ebx]
 004D4678    push        eax
 004D4679    call        GetProcAddress
 004D467E    mov         [007CA534],eax;gvar_007CA534:Pointer
 004D4683    push        4D4BB4;'GetThemeEnumValue'
 004D4688    mov         eax,dword ptr [ebx]
 004D468A    push        eax
 004D468B    call        GetProcAddress
 004D4690    mov         [007CA538],eax;gvar_007CA538:Pointer
 004D4695    push        4D4BD8;'GetThemePosition'
 004D469A    mov         eax,dword ptr [ebx]
 004D469C    push        eax
 004D469D    call        GetProcAddress
 004D46A2    mov         [007CA53C],eax;gvar_007CA53C:Pointer
 004D46A7    push        4D4BFC;'GetThemeFont'
 004D46AC    mov         eax,dword ptr [ebx]
 004D46AE    push        eax
 004D46AF    call        GetProcAddress
 004D46B4    mov         [007CA540],eax;gvar_007CA540:Pointer
 004D46B9    push        4D4C18;'GetThemeRect'
 004D46BE    mov         eax,dword ptr [ebx]
 004D46C0    push        eax
 004D46C1    call        GetProcAddress
 004D46C6    mov         [007CA544],eax;gvar_007CA544:Pointer
 004D46CB    push        4D4C34;'GetThemeMargins'
 004D46D0    mov         eax,dword ptr [ebx]
 004D46D2    push        eax
 004D46D3    call        GetProcAddress
 004D46D8    mov         [007CA548],eax;gvar_007CA548:Pointer
 004D46DD    push        4D4C54;'GetThemeIntList'
 004D46E2    mov         eax,dword ptr [ebx]
 004D46E4    push        eax
 004D46E5    call        GetProcAddress
 004D46EA    mov         [007CA54C],eax;gvar_007CA54C:Pointer
 004D46EF    push        4D4C74;'GetThemePropertyOrigin'
 004D46F4    mov         eax,dword ptr [ebx]
 004D46F6    push        eax
 004D46F7    call        GetProcAddress
 004D46FC    mov         [007CA550],eax;gvar_007CA550:Pointer
 004D4701    push        4D4CA4;'SetWindowTheme'
 004D4706    mov         eax,dword ptr [ebx]
 004D4708    push        eax
 004D4709    call        GetProcAddress
 004D470E    mov         [007CA554],eax;gvar_007CA554:Pointer
 004D4713    push        4D4CC4;'GetThemeFilename'
 004D4718    mov         eax,dword ptr [ebx]
 004D471A    push        eax
 004D471B    call        GetProcAddress
 004D4720    mov         [007CA558],eax;gvar_007CA558:Pointer
 004D4725    push        4D4CE8;'GetThemeSysColor'
 004D472A    mov         eax,dword ptr [ebx]
 004D472C    push        eax
 004D472D    call        GetProcAddress
 004D4732    mov         [007CA55C],eax;gvar_007CA55C:Pointer
 004D4737    push        4D4D0C;'GetThemeSysColorBrush'
 004D473C    mov         eax,dword ptr [ebx]
 004D473E    push        eax
 004D473F    call        GetProcAddress
 004D4744    mov         [007CA560],eax;gvar_007CA560:Pointer
 004D4749    push        4D4D38;'GetThemeSysBool'
 004D474E    mov         eax,dword ptr [ebx]
 004D4750    push        eax
 004D4751    call        GetProcAddress
 004D4756    mov         [007CA564],eax;gvar_007CA564:Pointer
 004D475B    push        4D4D58;'GetThemeSysSize'
 004D4760    mov         eax,dword ptr [ebx]
 004D4762    push        eax
 004D4763    call        GetProcAddress
 004D4768    mov         [007CA568],eax;gvar_007CA568:Pointer
 004D476D    push        4D4D78;'GetThemeSysFont'
 004D4772    mov         eax,dword ptr [ebx]
 004D4774    push        eax
 004D4775    call        GetProcAddress
 004D477A    mov         [007CA56C],eax;gvar_007CA56C:Pointer
 004D477F    push        4D4D98;'GetThemeSysString'
 004D4784    mov         eax,dword ptr [ebx]
 004D4786    push        eax
 004D4787    call        GetProcAddress
 004D478C    mov         [007CA570],eax;gvar_007CA570:Pointer
 004D4791    push        4D4DBC;'GetThemeSysInt'
 004D4796    mov         eax,dword ptr [ebx]
 004D4798    push        eax
 004D4799    call        GetProcAddress
 004D479E    mov         [007CA574],eax;gvar_007CA574:Pointer
 004D47A3    push        4D4DDC;'IsThemeActive'
 004D47A8    mov         eax,dword ptr [ebx]
 004D47AA    push        eax
 004D47AB    call        GetProcAddress
 004D47B0    mov         [007CA578],eax;gvar_007CA578:Pointer
 004D47B5    push        4D4DF8;'IsAppThemed'
 004D47BA    mov         eax,dword ptr [ebx]
 004D47BC    push        eax
 004D47BD    call        GetProcAddress
 004D47C2    mov         [007CA57C],eax;gvar_007CA57C:Pointer
 004D47C7    push        4D4E10;'GetWindowTheme'
 004D47CC    mov         eax,dword ptr [ebx]
 004D47CE    push        eax
 004D47CF    call        GetProcAddress
 004D47D4    mov         [007CA580],eax;gvar_007CA580:Pointer
 004D47D9    push        4D4E30;'EnableThemeDialogTexture'
 004D47DE    mov         eax,dword ptr [ebx]
 004D47E0    push        eax
 004D47E1    call        GetProcAddress
 004D47E6    mov         [007CA584],eax;gvar_007CA584:Pointer
 004D47EB    push        4D4E64;'IsThemeDialogTextureEnabled'
 004D47F0    mov         eax,dword ptr [ebx]
 004D47F2    push        eax
 004D47F3    call        GetProcAddress
 004D47F8    mov         [007CA588],eax;gvar_007CA588:Pointer
 004D47FD    push        4D4E9C;'GetThemeAppProperties'
 004D4802    mov         eax,dword ptr [ebx]
 004D4804    push        eax
 004D4805    call        GetProcAddress
 004D480A    mov         [007CA58C],eax;gvar_007CA58C:Pointer
 004D480F    push        4D4EC8;'SetThemeAppProperties'
 004D4814    mov         eax,dword ptr [ebx]
 004D4816    push        eax
 004D4817    call        GetProcAddress
 004D481C    mov         [007CA590],eax;gvar_007CA590:Pointer
 004D4821    push        4D4EF4;'GetCurrentThemeName'
 004D4826    mov         eax,dword ptr [ebx]
 004D4828    push        eax
 004D4829    call        GetProcAddress
 004D482E    mov         [007CA594],eax;gvar_007CA594:Pointer
 004D4833    push        4D4F1C;'GetThemeDocumentationProperty'
 004D4838    mov         eax,dword ptr [ebx]
 004D483A    push        eax
 004D483B    call        GetProcAddress
 004D4840    mov         [007CA598],eax;gvar_007CA598:Pointer
 004D4845    push        4D4F58;'DrawThemeParentBackground'
 004D484A    mov         eax,dword ptr [ebx]
 004D484C    push        eax
 004D484D    call        GetProcAddress
 004D4852    mov         [007CA59C],eax;gvar_007CA59C:Pointer
 004D4857    push        4D4F8C;'EnableTheming'
 004D485C    mov         eax,dword ptr [ebx]
 004D485E    push        eax
 004D485F    call        GetProcAddress
 004D4864    mov         [007CA5A0],eax;gvar_007CA5A0:Pointer
 004D4869    cmp         dword ptr [ebx],0
 004D486C    seta        byte ptr [ebp-1]
 004D4870    xor         eax,eax
 004D4872    pop         edx
 004D4873    pop         ecx
 004D4874    pop         ecx
 004D4875    mov         dword ptr fs:[eax],edx
 004D4878    push        4D488F
 004D487D    mov         eax,[007A10F0];0x0 gvar_007A10F0:TCriticalSection
 004D4882    mov         edx,dword ptr [eax]
 004D4884    call        dword ptr [edx+4]
 004D4887    ret
>004D4888    jmp         @HandleFinally
>004D488D    jmp         004D487D
 004D488F    movzx       eax,byte ptr [ebp-1]
 004D4893    pop         ebx
 004D4894    pop         ecx
 004D4895    pop         ebp
 004D4896    ret
end;*}

//004D4FA8
function UseThemes:Boolean;
begin
{*
 004D4FA8    cmp         dword ptr ds:[7CA5A8],0;gvar_007CA5A8:HMODULE
>004D4FAF    jbe         004D4FD5
 004D4FB1    cmp         dword ptr ds:[7A10F0],0;gvar_007A10F0:TCriticalSection
>004D4FB8    je          004D4FD5
 004D4FBA    call        dword ptr ds:[7CA57C]
 004D4FC0    test        eax,eax
>004D4FC2    je          004D4FCE
 004D4FC4    call        dword ptr ds:[7CA578]
 004D4FCA    test        eax,eax
>004D4FCC    jne         004D4FD2
 004D4FCE    xor         eax,eax
>004D4FD0    jmp         004D4FD7
 004D4FD2    mov         al,1
 004D4FD4    ret
 004D4FD5    xor         eax,eax
 004D4FD7    ret
*}
end;

Initialization
//0079CE3C
{*
 0079CE3C    sub         dword ptr ds:[7CA5A4],1
>0079CE43    jae         0079CE56
 0079CE45    mov         dl,1
 0079CE47    mov         eax,[004D2A38];TCriticalSection
 0079CE4C    call        TCriticalSection.Create;TCriticalSection.Create
 0079CE51    mov         [007A10F0],eax;gvar_007A10F0:TCriticalSection
 0079CE56    ret
*}
Finalization
//004D4FD8
{*
 004D4FD8    inc         dword ptr ds:[7CA5A4]
>004D4FDE    jne         004D5008
 004D4FE0    cmp         dword ptr ds:[7CA5AC],0
>004D4FE7    jle         004D4FF7
 004D4FE9    call        FreeThemeLibrary
 004D4FEE    cmp         dword ptr ds:[7CA5AC],0
>004D4FF5    jg          004D4FE9
 004D4FF7    mov         eax,[007A10F0];gvar_007A10F0:TCriticalSection
 004D4FFC    call        TObject.Free
 004D5001    xor         eax,eax
 004D5003    mov         [007A10F0],eax;gvar_007A10F0:TCriticalSection
 004D5008    ret
*}
end.