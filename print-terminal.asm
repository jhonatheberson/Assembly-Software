.data

msg1: .asciiz "\ndigite A:"
msg2: .asciiz "\ndigite B:"
msg3: .asciiz "\nA + B ="

.text

main:
#exibir Msg1
addi $v0, $zero, 4
la $a0, msg1
syscall

#digitar A
addi $v0, $zero, 5
syscall
add $t0, $zero, $v0

#exibir Msg2
addi $v0, $zero, 4
la $a0, msg2
syscall


#digitar B
addi $v0, $zero, 5
syscall
add $t1, $zero, $v0

#soma dexA + B
add $t1, $t0, $t1

#exibir 3
addi $v0, $zero, 4
la $a0, msg3
syscall

#imprimir C
addi $v0, $zero, 1
add $a0, $t1, $zero
syscall

addi $v0, $zero, 10
syscall


