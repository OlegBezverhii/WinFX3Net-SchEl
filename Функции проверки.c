//----- (0078FEA4) --------------------------------------------------------
_DWORD *__fastcall TMainForm_FileNewClick(int a1)
{  if ( !(unsigned __int8)((int (__cdecl *)(struct _EXCEPTION_REGISTRATION_RECORD *, void *, int *))loc_792AD4)(
                           v8,
                           &unk_79007D,
                           &savedregs) )
    TCustomForm_Close((_BYTE *)a1);
}	
	
//----- (007900C4) --------------------------------------------------------
int __fastcall TMainForm_FileOpenClick(int a1)
{
  if ( !(unsigned __int8)((int (__cdecl *)(struct _EXCEPTION_REGISTRATION_RECORD *, void *))loc_792AD4)(v7, &unk_790358) )
    TCustomForm_Close((_BYTE *)a1);
}

//----- (007904D8) --------------------------------------------------------
int __fastcall TMainForm_FileSaveClick(_BYTE *a1)
{
  if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close(a1);
  TMainForm_TrySaveFile((int)a1);
  TMainForm_UpdateTreeView((int)a1);
  return TMainForm_UpdateStatusbar((int)a1);
}

//----- (00790504) --------------------------------------------------------
int __fastcall TMainForm_FileSaveAsClick(_BYTE *a1)
{
  if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close(a1);

  if ( (unsigned __int8)TMainForm_GetNewFileName((int)a1, (int *)off_7C4C8C) )
    TMainForm_TrySaveFile((int)a1);
  TMainForm_UpdateTreeView((int)a1);
  return TMainForm_UpdateStatusbar((int)a1);
}

//----- (00790590) --------------------------------------------------------
// positive sp value has been detected, the output may be wrong!
void __fastcall TMainForm_FilePrintClick(_BYTE *a1)
{
	if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close(a1);
	v2 = sub_51A640();
}

//----- (0079070C) --------------------------------------------------------
int *__fastcall sub_79070C(int a1)
{
  int *result; // eax
  int *v3; // edi
  int v4; // eax

  if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close((_BYTE *)a1);
  result = gvar_007C4C84;
}


//----- (00790778) --------------------------------------------------------
void *__fastcall sub_790778(int a1)
{
  void *result; // eax

  if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close((_BYTE *)a1);
}


//----- (007907C0) --------------------------------------------------------
void *__fastcall sub_7907C0(int a1, int *a2)
{
  void *result; // eax
  int v5; // edx

  if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close((_BYTE *)a1);
  result = gvar_007C41A0;
}

//----- (00790908) --------------------------------------------------------
void __fastcall TMainForm_ToolsReceiveClick(_BYTE *a1)
{
  _DWORD *v1; // esi
    v1 = gvar_007C46A8;
  if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close(v10);
  *(_BYTE *)gvar_007C4420 = 1;
}

//----- (00790A44) --------------------------------------------------------
void __fastcall TMainForm_ToolsSendClick(_BYTE *a1)
{
  _DWORD *v1; // esi
    __writefsdword(0, (unsigned int)&v6);
  if ( !(unsigned __int8)((int (__stdcall *)(struct _EXCEPTION_REGISTRATION_RECORD *, void *, int *))loc_792AD4)(
                           v6,
                           &unk_790B93,
                           &savedregs) )
    TCustomForm_Close(v11);
}

//----- (00792C04) --------------------------------------------------------
int __fastcall TMainForm_LicTimerTimer(_BYTE *a1)
{
  if ( !(unsigned __int8)((int (*)(void))loc_792AD4)() )
    TCustomForm_Close(a1);
  return TMainForm_UpdateStatusbar((int)a1);
}