.data
dato1: .byte 58
dato2: .byte 87
operacion: .byte '*'

.text
.global main
main:
        mov r0,#32
        mov r1,#5
        mov r3,#0
while:
        cmp r0,r1
        blt fin
        sub r0,r1
        add r3,#1
        b while
fin:
        mov r5,r0
        mov r0,#32
        mov r1,#5
        mov r7,#1
        swi 0
