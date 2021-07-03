section .text 

global _start 
_start : 
    mov rax, 60 
    mov rbx, 5
    mov rdi, 10
    add rdi, rbx 
    syscall  ; this should output 15

