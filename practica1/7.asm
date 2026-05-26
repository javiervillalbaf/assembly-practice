.data
cadena: .asciz "Hola mundo cruel"

.text
.global main

main:
        ldr r0,=cadena
        mov r2,#0
while:
        ldrb r1,[r0]
        cmp r1,#0
        beq fin
        add r0,r0,#1
        add r2,r2,#1
        b while
fin:
        mov r7,#1
        swi 0
