section .data
    msg4 db "El resultado de la resta es: "
    len4 equ $ - msg4

    line_break db 0xA ; salto de linea

    num1 equ 8
    num2 equ 4
    num3 equ 2

section .text
    global _start

_start:
    ; Restar los números
    mov al, num1     ; Primer número
    sub al, num2     ; Restar el segundo número
    sub al, num3     ; Restar el tercer número

    ; Convertir el resultado a ASCII
    add al, '0'

    ; Mostrar el mensaje de resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, msg4
    mov edx, len4
    int 80h

    ; Mostrar el resultado
    movzx eax, al   ; Extender el valor de al a eax
    mov ebx, 1
    lea ecx, [eax]  ; Cargar la dirección de al en ecx
    mov edx, 1
    int 80h

    ; Salto de línea
    mov eax, 4
    mov ebx, 1
    mov ecx, line_break
    mov edx, 1
    int 80h

    ; Salida del programa
    mov eax, 1
    xor ebx, ebx
    int 80h
