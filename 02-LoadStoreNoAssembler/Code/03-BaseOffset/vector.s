	.align 2
	.section .text
_start:
	ADRP	X3, _data
	MOV	X2, b-_data // адрес метки b больше адреса базы _data
	MOV	X2, #16 /* для иллюстрации, что команды будут 
				идентичным */

	LDR	X0, [X3, a-_data]
	LDR	X1, [X3, X2]
	ADD	X0,X0,X1
	HLT	#0
	.org 0x1000
_data:	.space 8
a:	.dword 2
b:	.dword 3
