; Hello World

global _start

section .data
        msg db "Hello, World",0xa 
        msglen equ $ - msg

section .text
        _start:
                mov eax, 0x4		; write syscall(sys_write)
                mov ebx, 0x1 		; stdout(file descriptor) 
                mov ecx, msg		; "Hello, World"
                mov edx, msglen 	; length of the msg
                int 0x80	 		; interrupt for kernel

                mov eax, 0x1 ; exit syscall(_exit())
                mov ebx, 0x0 ; return 0
                int 0x80
