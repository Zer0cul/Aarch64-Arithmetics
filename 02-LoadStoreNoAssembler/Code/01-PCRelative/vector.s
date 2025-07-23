	.align 2
	.section .text
_start:	
	LDR X0, a
	LDR X1, b
	ADD X0,X0,X1
	HLT #0
.space  16, 0x00
a:
	.word 0x2
	.word 0x0
b:	
	.word 0x2
	.word 0x0
