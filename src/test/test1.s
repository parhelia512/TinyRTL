BITS 64
default rel
CPU x64

EXTERN	SYSTEM_$$_INITSYSTEM
EXTERN	U_$SYSTEM_$$__static_tsystem_FDOSCLASS
EXTERN	SYSTEM$_$TDOSIO_$__$$_$lower$TDOSIO$ANSISTRING$$BOOLEAN
EXTERN	SYSTEM$_$TDOSIO_$__$$_WRITELN$ANSISTRING
EXTERN	U_$SYSTEM_$$_DOS
EXTERN	SYSTEM$_$TDOSCMD_$__$$_WRITELN$POINTER
EXTERN	SYSTEM$_$TDOSIO_$__$$_READ$ANSISTRING$ANSISTRING
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM$_$TDOSIO_$__$$_WRITELN$PCHAR
EXTERN	SYSTEM_$$_DONESYSTEM
EXTERN	_$dll$user32$MessageBoxA
EXTERN	fpc_initializeunits
EXTERN	FPC_DO_EXIT
EXTERN	fpc_ansistr_decr_ref
; Begin asmlist al_procedures

SECTION .text
P$TEST1_$$_fin$00000001:
..@c1:
		push	rbp
..@c3:
..@c4:
		mov	rbp,rcx
..@c5:
		lea	rsp,[rsp-32]
		call	SYSTEM_$$_DONESYSTEM
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c2:

SECTION .text
	GLOBAL PASCALMAIN
PASCALMAIN:
	GLOBAL PASCALMAIN
PASCALMAIN:
..@c6:
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-32]
		call	fpc_initializeunits
..@j13:
		nop
..@j9:
		call	SYSTEM_$$_INITSYSTEM
		lea	rax,[U_$SYSTEM_$$__static_tsystem_FDOSCLASS]
		lea	rdx,[..@d1]
		mov	rcx,rax
		call	SYSTEM$_$TDOSIO_$__$$_$lower$TDOSIO$ANSISTRING$$BOOLEAN
		test	al,al
		lea	rcx,[U_$SYSTEM_$$__static_tsystem_FDOSCLASS]
		lea	rdx,[..@d2]
		call	SYSTEM$_$TDOSIO_$__$$_WRITELN$ANSISTRING
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		lea	rdx,[_$TEST1$_Ld3]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$POINTER
		lea	rdx,[U_$P$TEST1_$$_S1]
		lea	rcx,[U_$SYSTEM_$$__static_tsystem_FDOSCLASS]
		lea	r8,[..@d4]
		call	SYSTEM$_$TDOSIO_$__$$_READ$ANSISTRING$ANSISTRING
		lea	rcx,[U_$SYSTEM_$$__static_tsystem_FDOSCLASS]
		lea	rdx,[..@d5]
		call	SYSTEM$_$TDOSIO_$__$$_WRITELN$ANSISTRING
		lea	rdx,[U_$P$TEST1_$$_S1]
		test	rdx,rdx
		jne	..@j16
		lea	rdx,[FPC_EMPTYCHAR]
..@j16:
		lea	rcx,[U_$SYSTEM_$$__static_tsystem_FDOSCLASS]
		call	SYSTEM$_$TDOSIO_$__$$_WRITELN$PCHAR
..@j11:
		nop
..@j10:
		mov	rcx,rbp
		call	P$TEST1_$$_fin$00000001
		lea	rdx,[U_$P$TEST1_$$_S1]
		test	rdx,rdx
		jne	..@j17
		lea	rdx,[FPC_EMPTYCHAR]
..@j17:
		xor	r9d,r9d
		lea	r8,[_$TEST1$_Ld6]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		call	FPC_DO_EXIT
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c7:

SECTION .text
	GLOBAL INIT$_$P$TEST1
INIT$_$P$TEST1:
	GLOBAL P$TEST1_$$_init_implicit$
P$TEST1_$$_init_implicit$:
..@c11:
		lea	rsp,[rsp-40]
..@c13:
		nop
		lea	rsp,[rsp+40]
		ret
..@c12:

SECTION .text
	GLOBAL PASCALFINALIZE
PASCALFINALIZE:
	GLOBAL FINALIZE$_$P$TEST1
FINALIZE$_$P$TEST1:
	GLOBAL P$TEST1_$$_finalize_implicit$
P$TEST1_$$_finalize_implicit$:
..@c14:
		push	rbp
..@c16:
..@c17:
		mov	rbp,rsp
..@c18:
		lea	rsp,[rsp-32]
		lea	rcx,[U_$P$TEST1_$$_S1]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c15:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
U_$P$TEST1_$$_S1:	RESB	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INITFINAL
INITFINAL	DQ	1,0,INIT$_$P$TEST1,FINALIZE$_$P$TEST1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_THREADVARTABLES
FPC_THREADVARTABLES	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_WIDEINITTABLES
FPC_WIDEINITTABLES	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES	DQ	0

SECTION .fpc
__fpc_ident		DB	"FPC 3.2.2 [2021/05/15] for x86_64 - Win64"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL __heapsize
__heapsize	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL __fpc_valgrind
__fpc_valgrind	DB	0
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .rodata
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,13
..@d1:
		DB	"Hello World !",0

SECTION .rodata
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d2:
		DB	"next String",0

SECTION .rodata
_$TEST1$_Ld3:
		DB	"dos string",0

SECTION .rodata
..@d4$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d4:
		DB	"Input: ",0

SECTION .rodata
..@d5$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d5:
		DB	"--------",0

SECTION .rodata
_$TEST1$_Ld6:
		DB	"Information",0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c19:
	DD	..@c21-..@c20
..@c20:
	DD	-1
	DB	1,0
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_SLEB128BIT	
	DB	16,12
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c21:
	DD	..@c23-..@c22
..@c22:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c4-..@c3
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c5-..@c4
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c23:
	DD	..@c25-..@c24
..@c24:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c9-..@c8
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c10-..@c9
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c25:
	DD	..@c27-..@c26
..@c26:
	DQ	..@c11,..@c12-..@c11
	DB	4
	DD	..@c13-..@c11
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c27:
	DD	..@c29-..@c28
..@c28:
	DQ	..@c14,..@c15-..@c14
	DB	4
	DD	..@c16-..@c14
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c17-..@c16
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c18-..@c17
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c29:
; End asmlist al_dwarf_frame

