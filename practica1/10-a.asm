.data
cadena: .asciz "7814216"

.text
.global main
main:
        ldr r0,=cadena
        mov r1,#0
        mov r3,#10
        mov r4,#'0'
        mov r6,#0
        mov r9,#0
while:
        ldrb r2,[r0]
        cmp r2,r9
        beq fin
        sub r2,r4
        mul r6,r1,r3
        add r1,r6,r2
        add r0,r0,#1
        b while
fin:
        mov r7,#1
        swi 0
