section .data
    num1 db 1
    num2 db 7
    resultado db 0

section .text
    global _start

_start:
    mov al, [num1]
    mov bl, [num2]
    mul bl
    mov [resultado], al
    add byte [resultado], '0'

    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
