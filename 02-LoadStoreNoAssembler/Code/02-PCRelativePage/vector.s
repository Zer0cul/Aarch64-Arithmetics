	.align 2
	.section .text
_start:	
	ADRP	X3, a
	LDR	X0, [X3, #0]
	LDR	X1, [X3, #8]
	ADD 	X0,X0,X1
	HLT

@Page 1 contains data. Expected physical memory address 0x81000
	.org 0x1000
a:	.dword 0x2
b:	.dword 0x3