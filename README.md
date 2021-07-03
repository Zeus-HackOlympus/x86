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












