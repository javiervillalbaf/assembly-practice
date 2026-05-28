nota1: .byte 7
nota2: .byte 8
condicion: .zero 12

.text
.global main
main:
        ldr r0,=nota1
        ldrb r1,[r0]
        ldr r0,=nota2
        ldrb r2,[r0]
        add r3,r1,r2
        mov r5,#2
        udiv r4,r3,r5
        mov r6,#7
        cmp r4,r6
        bge aprobado
        ldr r0,=condicion
        mov r8,#'d'
        strb r8,[r0]
        mov r8,#'e'
        strb r8,[r0,#1]
        mov r8,#'s'
        strb r8,[r0,#2]
        mov r8,#'a'
        strb r8,[r0,#3]
        mov r8,#'p'
        strb r8,[r0,#4]
        mov r8,#'r'
        strb r8,[r0,#5]
        mov r8,#'o'
        strb r8,[r0,#6]
        mov r8,#'b'
        strb r8,[r0,#7]
        mov r8,#'a'
        strb r8,[r0,#8]
        mov r8,#'d'
        strb r8,[r0,#9]
        mov r8,#'o'
        strb r8,[r0,#10]
        bal fin
aprobado:
        ldr r0,=condicion
        mov r8,#'a'
        strb r8,[r0]
        mov r8,#'p'
        strb r8,[r0,#1]
        mov r8,#'r'
        strb r8,[r0,#2]
        mov r8,#'o'
        strb r8,[r0,#3]
        mov r8,#'b'
        strb r8,[r0,#4]
        mov r8,#'a'
        strb r8,[r0,#5]
        mov r8,#'d'
        strb r8,[r0,#6]
        mov r8,#'o'
        strb r8,[r0,#7]
fin:
        mov r7,#1
        swi 0
