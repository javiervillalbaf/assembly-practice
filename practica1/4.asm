.data
dato1: .int 2
dato2: .int 3

.text
.global main
main:
        mov r0,#6
        mov r1,#2
        cmp r0,r1
        beq son_iguales
        bgt mayor_valor
        mov r5,r1
        bal fin
son_iguales:
        mov r5,#0
        bal fin
mayor_valor:
        mov r5,r0
fin:
        mov r7,#1
        swi 0