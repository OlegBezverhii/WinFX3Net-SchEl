//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Xml.XMLIntf;

interface

uses
  SysUtils, Classes;

type
  TNodeType = (ntReserved, ntElement, ntAttribute, ntText, ntCData, ntEntityRef, ntEntity, ntProcessingInstr, ntComment, ntDocument, ntDocType, ntDocFragment, ntNotation);
  EXMLDocError = class(Exception)
  end;
  TXMLDocOption = (doNodeAutoCreate, doNodeAutoIndent, doAttrNull, doAutoPrefix, doNamespaceDecl, doAutoSave);
  TXMLDocOptions = set of TXMLDocOption;
  TParseOption = (poResolveExternals, poValidateOnParse, poPreserveWhiteSpace, poAsyncLoad);
  TParseOptions = set of TParseOption;
  TXMLEncodingType = (xetUnknown, xetUCS_4BE, xetUCS_4LE, xetUCS_4Order2134, xetUCS_4Order3412, xetUTF_16BE, xetUTF_16LE, xetUTF_8, xetUCS_4Like, xetUTF_16BELike, xetUTF_16LELike, xetUTF_8Like, xetEBCDICLike);

implementation

Initialization
Finalization
//0065CC48
{*
 0065CC48    push        ebp
 0065CC49    mov         ebp,esp
 0065CC4B    xor         eax,eax
 0065CC4D    push        ebp
 0065CC4E    push        65CC83
 0065CC53    push        dword ptr fs:[eax]
 0065CC56    mov         dword ptr fs:[eax],esp
 0065CC59    inc         dword ptr ds:[828624]
>0065CC5F    jne         0065CC75
 0065CC61    mov         eax,828620;gvar_00828620:IInterface
 0065CC66    call        @IntfClear
 0065CC6B    mov         eax,7C0F48;^'http://www.w3.org/2001/XMLSchema'
 0065CC70    call        @UStrClr
 0065CC75    xor         eax,eax
 0065CC77    pop         edx
 0065CC78    pop         ecx
 0065CC79    pop         ecx
 0065CC7A    mov         dword ptr fs:[eax],edx
 0065CC7D    push        65CC8A
 0065CC82    ret
>0065CC83    jmp         @HandleFinally
>0065CC88    jmp         0065CC82
 0065CC8A    pop         ebp
 0065CC8B    ret
*}
end.