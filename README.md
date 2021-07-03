<<<<<<< HEAD
# x86

## Registers 

In **32 bit** we only have 4+4 = **8 Registers**

- 4 general purpose
    - eax 
    - ebx 
    - ecx 
    - edx 
- 4 special meaning registers 
    - esp stack pointer
    - ebp base pointer 
    - esi 
    - edi 

In **64bit** : 
- rax 
- rbx 
- rcx 
- rdx 
- r8 - r15 (r8,r9,r10,....,r14,r15)
    
- rsp 
- rbp 
- rsi 
- rdi 

To refer to a register there are 2 techniques 
    - EAX - simple capital letters  
    - %eax - percentage before lowercase 

## Addressing mode 
- Instruction format :  
    - `Instruction`
        - there are some instruction where no operand is required example `RET`
    - `Instruction <operand>`
        - only one operand, example `jmp <address>`
    - `Instruction <operand1> <operand2>` 
        - 2 operand: example `mov reg1,reg2`
        - `<instruction> <dest> <source>`
- Addressing modes
    - How to address operands 
    - using hexadecimal (0x1337) 


|                   mov 0x604892                  |               Immediate Value is stored in the register                |
|:-----------------------------------------------:|:----------------------------------------------------------------------:|
|                  mov %eax, %ebx                 |                    Register - value in the register                    |
|                 mov (%eax), $10                 |                      Indirect- Address in register                     |
| mov 8(%ebp), $4  mov ECX, dword ptr [RBX + RDI] | Indirect with displacement - address =  base (%ebp) + displacement (8) |











=======
# x86 

## Hello World 

```assembly 
section .text 
    global _start 
_start : 
        mov rax, 1 
        mov rdi, 1 
        mov rsi, _str 
        mov rdx, 14 
        syscall 

        mov rax, 60 
        mov rdi, 0
        syscall
section .data
    _str db "Hello, world",0xa
```

to run : 

```sh
$ nasm -f elf64 hello.asm -o hello.o 
$ ld hello.o -o hello 
$ ./hello 
hello
```
**Principal of everything we are doing is same as ARM ASM**

## Calling conventions 

![Calling conventions](./calling_conv.png)


- `.text` section 
    - We are using syscall code for write (1) to print on screen. So we set rax to 1 to set syscall code 
    - set arg0 i.e fd using **rdi register** - 1 (stdout)
    - set arg1 i.e buf (what to write) using **rsi register**- `_str`
    - set arg2 i.e `size_t count` (count of characters) - 14 using **rdx register** 
    - then syscall using **syscall**

    thats it for `write()` but what about exit 

    - set `rax` register to 60 (syscall code for exit) 
    - set `rdi` register to 0 (return value)  
    - syscall 
- '.data' section 
    - we use `_str` is the label name  `db` which stands for **define bytes**, 0xa is for a newline char 
>>>>>>> hello world

