%include "stud_io.inc"
global start

section .text
start: mov eax, 0
again: PRINT "Hello"
	PUTCHAR 10
	inc eax
	cmp eax, 5
	jl again
	FINISH