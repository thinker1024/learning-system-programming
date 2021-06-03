# An example of get the FPU Status register contents

.section .bss
    .lcomm status, 2

.section .text
.globl _start
_start:
    fstsw %ax
    fstsw status

    movl $1, %eax
    movl $0, %ebx
    int $0x80
