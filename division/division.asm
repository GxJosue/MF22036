section .data
    divisor dd 5
    dividendo dd 10
    resultado dd 0

section .text
    global _start

_start:
    mov eax, [dividendo]
    mov ebx, [divisor]

    xor edx, edx
    div ebx

    mov [resultado], eax

    mov eax, [resultado]
    mov ebx, 10
    mov ecx, 0

convertir_a_cadena:
    xor edx, edx
    div ebx
    add dl, '0'
    push dx
    inc ecx
    test eax, eax
    jnz convertir_a_cadena

    mov eax, 4
    mov ebx, 1

imprimir_digito:
    pop edx
    mov [resultado], dl
    mov ecx, resultado
    mov edx, 1
    int 0x80
    dec ecx
    cmp ecx, resultado
    jnz imprimir_digito

    mov eax, 1
    xor ebx, ebx
    int 0x80
