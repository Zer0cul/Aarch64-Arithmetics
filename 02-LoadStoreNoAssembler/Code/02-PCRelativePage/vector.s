	.align 2
	.section .text
_start:				// _start = 0x80000
	ADRP	X3, a		// a = 0x81000
	LDR	X0, [X3, #0]
	LDR	X1, [X3, #8] // LDR X1, [X3, b-a]
	ADD 	X0,X0,X1
	HLT	#0		//0x80010

//Page 1 contains data. Expected physical memory address 0x81000
	.org 0x1000		// 0x81000
a:	.dword 0x2		// &a = 0x81000
b:	.dword 0x3		// &b = 0x81008
