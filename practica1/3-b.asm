.data
dato1: .int -2147483648
dato2: .int -1

.text
.global main
main:
        ldr r0,=dato1
        ldr r1,[r0]
        ldr r0,=dato2
        ldr r2,[r0]
        adds r3,r2,r1
mov r7,#1
swi 0