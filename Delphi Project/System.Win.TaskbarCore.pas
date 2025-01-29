//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.Win.TaskbarCore;

interface

uses
  SysUtils, Classes;

type
  TTaskbarHandler = class(TComponent)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    procedure v44; virtual; abstract;//v44//00405554
    procedure v48; virtual; abstract;//v48//00405554
    procedure v4C; virtual; abstract;//v4C//00405554
    procedure v50; virtual; abstract;//v50//00405554
    procedure v54; virtual; abstract;//v54//00405554
    procedure v58; virtual; abstract;//v58//00405554
    procedure v5C; virtual; abstract;//v5C//00405554
  end;
    //function sub_005B3D54:?;//005B3D54
    procedure sub_005B3D5C;//005B3D5C

implementation

//005B3D54
{*function sub_005B3D54:?;
begin
 005B3D54    jmp         dword ptr ds:[908280]
end;*}

//005B3D5C
procedure sub_005B3D5C;
begin
{*
 005B3D5C    push        ebx
 005B3D5D    push        esi
 005B3D5E    push        5B3EC0;'comctl32.dll'
 005B3D63    call        kernel32.GetModuleHandleW
 005B3D68    mov         ebx,eax
 005B3D6A    test        ebx,ebx
>005B3D6C    je          005B3EBA
 005B3D72    push        5B3EDC;'InitializeFlatSB'
 005B3D77    push        ebx
 005B3D78    call        GetProcAddress
 005B3D7D    mov         [007CA7B4],eax;gvar_007CA7B4:Pointer
 005B3D82    push        5B3F00;'UninitializeFlatSB'
 005B3D87    push        ebx
 005B3D88    call        GetProcAddress
 005B3D8D    mov         [007CA7B8],eax;gvar_007CA7B8:Pointer
 005B3D92    push        5B3F28;'FlatSB_GetScrollProp'
 005B3D97    push        ebx
 005B3D98    call        GetProcAddress
 005B3D9D    mov         [007CA7AC],eax;gvar_007CA7AC:Pointer
 005B3DA2    push        5B3F54;'FlatSB_SetScrollProp'
 005B3DA7    push        ebx
 005B3DA8    call        GetProcAddress
 005B3DAD    mov         [007CA7B0],eax;gvar_007CA7B0:Pointer
 005B3DB2    push        5B3F80;'FlatSB_EnableScrollBar'
 005B3DB7    push        ebx
 005B3DB8    call        GetProcAddress
 005B3DBD    mov         esi,eax
 005B3DBF    mov         dword ptr ds:[7CA788],esi;gvar_007CA788:Pointer
 005B3DC5    test        esi,esi
>005B3DC7    jne         005B3DD3
 005B3DC9    mov         eax,410F48;user32.EnableScrollBar:LongBool
 005B3DCE    mov         [007CA788],eax;gvar_007CA788:Pointer
 005B3DD3    push        5B3FB0;'FlatSB_ShowScrollBar'
 005B3DD8    push        ebx
 005B3DD9    call        GetProcAddress
 005B3DDE    mov         esi,eax
 005B3DE0    mov         dword ptr ds:[7CA78C],esi;gvar_007CA78C:Pointer
 005B3DE6    test        esi,esi
>005B3DE8    jne         005B3DF4
 005B3DEA    mov         eax,411418;user32.ShowScrollBar:LongBool
 005B3DEF    mov         [007CA78C],eax;gvar_007CA78C:Pointer
 005B3DF4    push        5B3FDC;'FlatSB_GetScrollRange'
 005B3DF9    push        ebx
 005B3DFA    call        GetProcAddress
 005B3DFF    mov         esi,eax
 005B3E01    mov         dword ptr ds:[7CA790],esi;gvar_007CA790:Pointer
 005B3E07    test        esi,esi
>005B3E09    jne         005B3E15
 005B3E0B    mov         eax,4110F8;user32.GetScrollRange:LongBool
 005B3E10    mov         [007CA790],eax;gvar_007CA790:Pointer
 005B3E15    push        5B4008;'FlatSB_GetScrollInfo'
 005B3E1A    push        ebx
 005B3E1B    call        GetProcAddress
 005B3E20    mov         esi,eax
 005B3E22    mov         dword ptr ds:[7CA794],esi;gvar_007CA794:Pointer
 005B3E28    test        esi,esi
>005B3E2A    jne         005B3E36
 005B3E2C    mov         eax,4110E8;user32.GetScrollInfo:LongBool
 005B3E31    mov         [007CA794],eax;gvar_007CA794:Pointer
 005B3E36    push        5B4034;'FlatSB_GetScrollPos'
 005B3E3B    push        ebx
 005B3E3C    call        GetProcAddress
 005B3E41    mov         esi,eax
 005B3E43    mov         dword ptr ds:[7CA798],esi;gvar_007CA798:Pointer
 005B3E49    test        esi,esi
>005B3E4B    jne         005B3E57
 005B3E4D    mov         eax,4110F0;user32.GetScrollPos:Integer
 005B3E52    mov         [007CA798],eax;gvar_007CA798:Pointer
 005B3E57    push        5B405C;'FlatSB_SetScrollPos'
 005B3E5C    push        ebx
 005B3E5D    call        GetProcAddress
 005B3E62    mov         esi,eax
 005B3E64    mov         dword ptr ds:[7CA79C],esi;gvar_007CA79C:Pointer
 005B3E6A    test        esi,esi
>005B3E6C    jne         005B3E78
 005B3E6E    mov         eax,4113C8;user32.SetScrollPos:Integer
 005B3E73    mov         [007CA79C],eax;gvar_007CA79C:Pointer
 005B3E78    push        5B4084;'FlatSB_SetScrollInfo'
 005B3E7D    push        ebx
 005B3E7E    call        GetProcAddress
 005B3E83    mov         esi,eax
 005B3E85    mov         dword ptr ds:[7CA7A0],esi;gvar_007CA7A0:Pointer
 005B3E8B    test        esi,esi
>005B3E8D    jne         005B3E99
 005B3E8F    mov         eax,4113C0;user32.SetScrollInfo:Integer
 005B3E94    mov         [007CA7A0],eax;gvar_007CA7A0:Pointer
 005B3E99    push        5B40B0;'FlatSB_SetScrollRange'
 005B3E9E    push        ebx
 005B3E9F    call        GetProcAddress
 005B3EA4    mov         esi,eax
 005B3EA6    mov         dword ptr ds:[7CA7A4],esi;gvar_007CA7A4:Pointer
 005B3EAC    test        esi,esi
>005B3EAE    jne         005B3EBA
 005B3EB0    mov         eax,4113D0;user32.SetScrollRange:LongBool
 005B3EB5    mov         [007CA7A4],eax;gvar_007CA7A4:Pointer
 005B3EBA    pop         esi
 005B3EBB    pop         ebx
 005B3EBC    ret
*}
end;

Initialization
//0079D724
{*
 0079D724    sub         dword ptr ds:[7CA7A8],1
>0079D72B    jae         0079D732
 0079D72D    call        005B3D5C
 0079D732    ret
*}
Finalization
end.