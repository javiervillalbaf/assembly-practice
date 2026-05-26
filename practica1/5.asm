.data
dato1: .byte 58
dato2: .byte 87
operacion: .byte '*'

.text
.global main
main:
        ldr r0,=dato1
        ldrb r1,[r0]
        ldr r0,=dato2
        ldrb r2,[r0]
        ldr r0,=operacion
        ldrb r3,[r0]
        cmp r3,#'+'
        beq sumar
        cmp r3,#'-'
        beq restar
        cmp r3,#'*'
        beq multiplicar
sumar:
        add r4,r1,r2
        bal fin
restar:
        sub r4,r1,r2
        bal fin
multiplicar:
        mul r4,r1,r2
fin:
        mov r7,#1
        swi 0
