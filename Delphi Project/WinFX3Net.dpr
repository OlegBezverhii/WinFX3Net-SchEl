//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
program WinFX3Net;

uses
  SysUtils, Classes;

{$R *.res}

//0079DBD8
begin
{*
 0079DBD8    push        ebp
 0079DBD9    mov         ebp,esp
 0079DBDB    add         esp,0FFFFFFE8
 0079DBDE    push        ebx
 0079DBDF    xor         eax,eax
 0079DBE1    mov         dword ptr [ebp-14],eax
 0079DBE4    mov         dword ptr [ebp-18],eax
 0079DBE7    mov         eax,793638
 0079DBEC    call        @InitExe
 0079DBF1    mov         ebx,dword ptr ds:[7C4A18];^Application:TApplication
 0079DBF7    xor         eax,eax
 0079DBF9    push        ebp
 0079DBFA    push        79DEEC
 0079DBFF    push        dword ptr fs:[eax]
 0079DC02    mov         dword ptr fs:[eax],esp
 0079DC05    mov         eax,dword ptr [ebx]
 0079DC07    call        TApplication.Initialize
 0079DC0C    mov         ecx,dword ptr [ebx]
 0079DC0E    mov         dl,1
 0079DC10    mov         eax,[0066F648];TStartUpForm
 0079DC15    call        TCustomForm.Create;TStartUpForm.Create
 0079DC1A    mov         edx,dword ptr ds:[7C42B8];^gvar_0082862C:TStartUpForm
 0079DC20    mov         dword ptr [edx],eax
 0079DC22    mov         eax,[007C42B8];^gvar_0082862C:TStartUpForm
 0079DC27    mov         eax,dword ptr [eax]
 0079DC29    call        TStartUpForm.VerifyLicensee
 0079DC2E    test        al,al
>0079DC30    je          0079DED1
 0079DC36    mov         eax,[007C42B8];^gvar_0082862C:TStartUpForm
 0079DC3B    mov         eax,dword ptr [eax]
 0079DC3D    call        TCustomForm.Show
 0079DC42    mov         eax,[007C42B8];^gvar_0082862C:TStartUpForm
 0079DC47    mov         eax,dword ptr [eax]
 0079DC49    call        TControl.Refresh
 0079DC4E    mov         eax,dword ptr [ebx]
 0079DC50    mov         edx,79DF08;'WinFX3Net'
 0079DC55    call        005CAF2C
 0079DC5A    mov         ecx,dword ptr ds:[7C449C];^gvar_009037D0:TMainForm
 0079DC60    mov         eax,dword ptr [ebx]
 0079DC62    mov         edx,dword ptr ds:[7881A0];TMainForm
 0079DC68    call        TApplication.CreateForm
 0079DC6D    mov         ecx,dword ptr ds:[7C4A04];^gvar_009037C8:TLicenseManagerForm
 0079DC73    mov         eax,dword ptr [ebx]
 0079DC75    mov         edx,dword ptr ds:[784AA8];TLicenseManagerForm
 0079DC7B    call        TApplication.CreateForm
 0079DC80    call        ParamCount
 0079DC85    dec         eax
>0079DC86    jle         0079DCF2
 0079DC88    lea         edx,[ebp-18]
 0079DC8B    mov         eax,2
 0079DC90    call        ParamStr
 0079DC95    mov         eax,dword ptr [ebp-18]
 0079DC98    lea         ecx,[ebp-14]
 0079DC9B    mov         edx,4
 0079DCA0    call        00431F40
 0079DCA5    mov         eax,dword ptr [ebp-14]
 0079DCA8    mov         edx,79DF28;'auto'
 0079DCAD    call        @UStrEqual
>0079DCB2    jne         0079DCF2
 0079DCB4    mov         ecx,dword ptr ds:[7C46A8];^gvar_009036C0:TFXCommHandler
 0079DCBA    mov         eax,dword ptr [ebx]
 0079DCBC    mov         edx,dword ptr ds:[7503E4];TFXCommHandler
 0079DCC2    call        TApplication.CreateForm
 0079DCC7    mov         ecx,dword ptr ds:[7C4A9C];^gvar_00903780:TAutoConfigFrm
 0079DCCD    mov         eax,dword ptr [ebx]
 0079DCCF    mov         edx,dword ptr ds:[7617F4];TAutoConfigFrm
 0079DCD5    call        TApplication.CreateForm
 0079DCDA    mov         ecx,dword ptr ds:[7C4DEC];^gvar_00901E0C:TOverwriteDlg
 0079DCE0    mov         eax,dword ptr [ebx]
 0079DCE2    mov         edx,dword ptr ds:[6AD998];TOverwriteDlg
 0079DCE8    call        TApplication.CreateForm
>0079DCED    jmp         0079DEBA
 0079DCF2    mov         ecx,dword ptr ds:[7C4528];^gvar_00903784:TSpecialSettingsFrm
 0079DCF8    mov         eax,dword ptr [ebx]
 0079DCFA    mov         edx,dword ptr ds:[762B7C];TSpecialSettingsFrm
 0079DD00    call        TApplication.CreateForm
 0079DD05    mov         ecx,dword ptr ds:[7C4864];^gvar_00902C90:TAddressReport
 0079DD0B    mov         eax,dword ptr [ebx]
 0079DD0D    mov         edx,dword ptr ds:[73E4B8];TAddressReport
 0079DD13    call        TApplication.CreateForm
 0079DD18    mov         ecx,dword ptr ds:[7C46A4];^gvar_00902C7C:TSelectPanelsDlg
 0079DD1E    mov         eax,dword ptr [ebx]
 0079DD20    mov         edx,dword ptr ds:[739614];TSelectPanelsDlg
 0079DD26    call        TApplication.CreateForm
 0079DD2B    mov         ecx,dword ptr ds:[7C47D0];^gvar_00902C80:TSelectLoopsDlg
 0079DD31    mov         eax,dword ptr [ebx]
 0079DD33    mov         edx,dword ptr ds:[73A1AC];TSelectLoopsDlg
 0079DD39    call        TApplication.CreateForm
 0079DD3E    mov         ecx,dword ptr ds:[7C4728];^gvar_00902C84:TSelectZonesDlg
 0079DD44    mov         eax,dword ptr [ebx]
 0079DD46    mov         edx,dword ptr ds:[73AD44];TSelectZonesDlg
 0079DD4C    call        TApplication.CreateForm
 0079DD51    mov         ecx,dword ptr ds:[7C48B4];^gvar_00903788:TDCRangeFrm
 0079DD57    mov         eax,dword ptr [ebx]
 0079DD59    mov         edx,dword ptr ds:[763BE4];TDCRangeFrm
 0079DD5F    call        TApplication.CreateForm
 0079DD64    mov         ecx,dword ptr ds:[7C4988];^gvar_0090379C:TDCErrorFrm
 0079DD6A    mov         eax,dword ptr [ebx]
 0079DD6C    mov         edx,dword ptr ds:[775830];TDCErrorFrm
 0079DD72    call        TApplication.CreateForm
 0079DD77    mov         ecx,dword ptr ds:[7C4DF0];^gvar_00901F64:TFXColSelDlg
 0079DD7D    mov         eax,dword ptr [ebx]
 0079DD7F    mov         edx,dword ptr ds:[70AD0C];TFXColSelDlg
 0079DD85    call        TApplication.CreateForm
 0079DD8A    mov         ecx,dword ptr ds:[7C47F4];^gvar_00901F4C:TFXCGroupsDlg
 0079DD90    mov         eax,dword ptr [ebx]
 0079DD92    mov         edx,dword ptr ds:[6D3F44];TFXCGroupsDlg
 0079DD98    call        TApplication.CreateForm
 0079DD9D    mov         ecx,dword ptr ds:[7C46A8];^gvar_009036C0:TFXCommHandler
 0079DDA3    mov         eax,dword ptr [ebx]
 0079DDA5    mov         edx,dword ptr ds:[7503E4];TFXCommHandler
 0079DDAB    call        TApplication.CreateForm
 0079DDB0    mov         ecx,dword ptr ds:[7C41CC];^gvar_00901F68:TAPFillDlg
 0079DDB6    mov         eax,dword ptr [ebx]
 0079DDB8    mov         edx,dword ptr ds:[70C3E8];TAPFillDlg
 0079DDBE    call        TApplication.CreateForm
 0079DDC3    mov         ecx,dword ptr ds:[7C4E80];^gvar_00903778:TFileImportDlg
 0079DDC9    mov         eax,dword ptr [ebx]
 0079DDCB    mov         edx,dword ptr ds:[75DF10];TFileImportDlg
 0079DDD1    call        TApplication.CreateForm
 0079DDD6    mov         ecx,dword ptr ds:[7C4AA0];^gvar_0090377C:TFileExportDlg
 0079DDDC    mov         eax,dword ptr [ebx]
 0079DDDE    mov         edx,dword ptr ds:[75F994];TFileExportDlg
 0079DDE4    call        TApplication.CreateForm
 0079DDE9    mov         ecx,dword ptr ds:[7C4E00];^gvar_00902C9C:TConfigInfoDlg
 0079DDEF    mov         eax,dword ptr [ebx]
 0079DDF1    mov         edx,dword ptr ds:[7442C8];TConfigInfoDlg
 0079DDF7    call        TApplication.CreateForm
 0079DDFC    mov         ecx,dword ptr ds:[7C4710];^gvar_00902530:TSelectVisibleDlg
 0079DE02    mov         eax,dword ptr [ebx]
 0079DE04    mov         edx,dword ptr ds:[735138];TSelectVisibleDlg
 0079DE0A    call        TApplication.CreateForm
 0079DE0F    mov         ecx,dword ptr ds:[7C4DEC];^gvar_00901E0C:TOverwriteDlg
 0079DE15    mov         eax,dword ptr [ebx]
 0079DE17    mov         edx,dword ptr ds:[6AD998];TOverwriteDlg
 0079DE1D    call        TApplication.CreateForm
 0079DE22    mov         ecx,dword ptr ds:[7C41F0];^gvar_00857F44:TDbgFrm
 0079DE28    mov         eax,dword ptr [ebx]
 0079DE2A    mov         edx,dword ptr ds:[673E14];TDbgFrm
 0079DE30    call        TApplication.CreateForm
 0079DE35    mov         ecx,dword ptr ds:[7C4E54];^gvar_007CA84C:TErrorFrm
 0079DE3B    mov         eax,dword ptr [ebx]
 0079DE3D    mov         edx,dword ptr ds:[5DDEB8];TErrorFrm
 0079DE43    call        TApplication.CreateForm
 0079DE48    mov         ecx,dword ptr ds:[7C4BD0];^gvar_009036C8:TPreviewForm
 0079DE4E    mov         eax,dword ptr [ebx]
 0079DE50    mov         edx,dword ptr ds:[752010];TPreviewForm
 0079DE56    call        TApplication.CreateForm
 0079DE5B    mov         ecx,dword ptr ds:[7C4EB4];^gvar_00901E10:TMergeEsaForm
 0079DE61    mov         eax,dword ptr [ebx]
 0079DE63    mov         edx,dword ptr ds:[6AE474];TMergeEsaForm
 0079DE69    call        TApplication.CreateForm
 0079DE6E    mov         ecx,dword ptr ds:[7C41F8];^gvar_008DF5DC:TEsaReport
 0079DE74    mov         eax,dword ptr [ebx]
 0079DE76    mov         edx,dword ptr ds:[6A674C];TEsaReport
 0079DE7C    call        TApplication.CreateForm
 0079DE81    mov         ecx,dword ptr ds:[7C4A10];^gvar_00828628:TCalErrForm
 0079DE87    mov         eax,dword ptr [ebx]
 0079DE89    mov         edx,dword ptr ds:[666FBC];TCalErrForm
 0079DE8F    call        TApplication.CreateForm
 0079DE94    mov         ecx,dword ptr ds:[7C4624];^gvar_00901F54:TLoopCtrlrTypeChangeDlg
 0079DE9A    mov         eax,dword ptr [ebx]
 0079DE9C    mov         edx,dword ptr ds:[6D5DE4];TLoopCtrlrTypeChangeDlg
 0079DEA2    call        TApplication.CreateForm
 0079DEA7    mov         ecx,dword ptr ds:[7C4DF8];^gvar_00901F5C:TLcToSlcConversionErrorsDlg
 0079DEAD    mov         eax,dword ptr [ebx]
 0079DEAF    mov         edx,dword ptr ds:[6D71C0];TLcToSlcConversionErrorsDlg
 0079DEB5    call        TApplication.CreateForm
 0079DEBA    mov         eax,dword ptr [ebx]
 0079DEBC    add         eax,64;TApplication.FHelpFile:string
 0079DEBF    call        @UStrClr
 0079DEC4    mov         eax,dword ptr [ebx]
 0079DEC6    mov         byte ptr [eax+6F],0;TApplication.FShowMainForm:Boolean
 0079DECA    mov         eax,dword ptr [ebx]
 0079DECC    call        TApplication.Run
 0079DED1    xor         eax,eax
 0079DED3    pop         edx
 0079DED4    pop         ecx
 0079DED5    pop         ecx
 0079DED6    mov         dword ptr fs:[eax],edx
 0079DED9    push        79DEF3
 0079DEDE    lea         eax,[ebp-18]
 0079DEE1    mov         edx,2
 0079DEE6    call        @UStrArrayClr
 0079DEEB    ret
>0079DEEC    jmp         @HandleFinally
>0079DEF1    jmp         0079DEDE
 0079DEF3    pop         ebx
 0079DEF4    call        @Halt0
*}
end.
