global _start
extern main

section .text
_start: mov ecx, [esp] ; argc in ecx, mov destination source, esp - stack pointer
        mov eax, esp
        add eax, 4   ; argv in eax, add destination source
        push eax ; put eax in stack
        push ecx ; put ecx in stack
        call main
        add esp, 8 ; clean the stack
        mov ebx, eax ; now call _exit
        mov eax, 1
        int 80h
