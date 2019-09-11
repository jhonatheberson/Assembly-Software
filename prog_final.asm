# NOME - JHONAT HEBERSON AVELINO DE SOUZA
#MATRICULA - 20160142138


.data

msg1: .asciiz "\ndigite base A1:"
msg2: .asciiz "\ndigite altura A1:"
msg3: .asciiz "\ndigite base A2:"
msg4: .asciiz "\ndigite altura A2:"
msg5: .asciiz "\ndigite base A3:"
msg6: .asciiz "\ndigite altura A3:"
msg7: .asciiz "\ndigite base A4:"
msg8: .asciiz "\ndigite altura A4:"
msg9: .asciiz "\ndigite base A5:"
msg10: .asciiz "\ndigite altura A5:"
msg11: .asciiz "\ndigite base A6:"
msg12: .asciiz "\ndigite altura A6:"
msg13: .asciiz "\ndigite base A7:"
msg14: .asciiz "\ndigite altura A7:"
msg15: .asciiz "\ndigite base A8:"
msg16: .asciiz "\ndigite altura A8:"
msg17: .asciiz "\ Resultado = A1 + A2 + A3 + A4 + A5 + A6 + A7 - A8 = "

.text

main:
#====================================================
#====================================================
#exibir Msg1
addi $v0, $zero, 4
la $a0, msg1
syscall

#digitar BA1
addi $v0, $zero, 5
syscall
add $t0, $zero, $v0

#exibir Msg2
addi $v0, $zero, 4
la $a0, msg2
syscall

#digitar HA1
addi $v0, $zero, 5
syscall
add $t1, $zero, $v0

#====================================================

#exibir Msg3
addi $v0, $zero, 4
la $a0, msg3
syscall

#digitar BA2
addi $v0, $zero, 5
syscall
add $t2, $zero, $v0

#exibir Msg4
addi $v0, $zero, 4
la $a0, msg4
syscall

#digitar HA2
addi $v0, $zero, 5
syscall
add $t3, $zero, $v0

#====================================================


#exibir Msg5
addi $v0, $zero, 4
la $a0, msg5
syscall

#digitar BA3
addi $v0, $zero, 5
syscall
add $t4, $zero, $v0

#exibir Msg6
addi $v0, $zero, 4
la $a0, msg6
syscall

#digitar HA3
addi $v0, $zero, 5
syscall
add $t5, $zero, $v0

#====================================================

#exibir Msg7
addi $v0, $zero, 4
la $a0, msg7
syscall

#digitar BA4
addi $v0, $zero, 5
syscall
add $t6, $zero, $v0

#exibir Msg8
addi $v0, $zero, 4
la $a0, msg8
syscall

#digitar HA4
addi $v0, $zero, 5
syscall
add $t7, $zero, $v0

#====================================================

#exibir Msg9
addi $v0, $zero, 4
la $a0, msg9
syscall

#digitar BA5
addi $v0, $zero, 5
syscall
add $t8, $zero, $v0

#exibir Msg10
addi $v0, $zero, 4
la $a0, msg10
syscall

#digitar HA5
addi $v0, $zero, 5
syscall
add $t9, $zero, $v0

#====================================================
#====================================================

#multiplicação HA1 * BA1
mult $t0, $t1
mflo $s0

#====================================================

#multiplicação HA2 * BA2
mult $t2, $t3
mflo $s1

#====================================================

#multiplicação HA3 * BA3
mult $t4, $t5
mflo $s2

#====================================================

#multiplicação HA4 * BA4
mult $t6, $t7
mflo $s3

#====================================================

#multiplicação HA5 * BA5
mult $t8, $t9
mflo $s4

#====================================================
#====================================================

#soma A1 + A2
add $a1, $s0, $s1

#====================================================

#soma A2 + A2 + A3
add $a1, $a1, $s3

#====================================================


#soma A2 + A2 + A3 + A4
add $a1, $a1, $s4

#====================================================

# EXIBINDO MENSAGENS QUE ESTAVA FALTANDO
# LIBERANDO ESPAÇO NOS REGISTRADORES TEMPORARIOS

#====================================================
#====================================================
#exibir Msg11
addi $v0, $zero, 4
la $a0, msg11
syscall

#digitar BA6
addi $v0, $zero, 5
syscall
add $t0, $zero, $v0

#exibir Msg12
addi $v0, $zero, 4
la $a0, msg12
syscall

#digitar HA6
addi $v0, $zero, 5
syscall
add $t1, $zero, $v0

#====================================================

#exibir Msg13
addi $v0, $zero, 4
la $a0, msg13
syscall

#digitar BA7
addi $v0, $zero, 5
syscall
add $t2, $zero, $v0

#exibir Msg14
addi $v0, $zero, 4
la $a0, msg14
syscall

#digitar HA7
addi $v0, $zero, 5
syscall
add $t3, $zero, $v0

#====================================================


#exibir Msg15
addi $v0, $zero, 4
la $a0, msg15
syscall

#digitar BA6
addi $v0, $zero, 5
syscall
add $t4, $zero, $v0

#exibir Msg16
addi $v0, $zero, 4
la $a0, msg16
syscall

#digitar HA6
addi $v0, $zero, 5
syscall
add $t5, $zero, $v0

#====================================================
#====================================================

#multiplicação HA6 * BA6
mult $t0, $t1
mflo $s0

#====================================================

#multiplicação HA7 * BA7
mult $t2, $t3
mflo $s1

#====================================================

#multiplicação HA8 * BA8
mult $t4, $t5
mflo $s3

#====================================================
#====================================================

#soma A2 + A2 + A3 + A4 +A5
add $a1, $a1, $s0

#====================================================

#soma A2 + A2 + A3 + A4 + A5 +A6
add $a1, $a1, $s1

#====================================================

#soma A2 + A2 + A3 + A4 + A5 +A6 +A7
add $a1, $a1, $s2

#====================================================
#soma e subtração A2 + A2 + A3 + A4 + A5 +A6 +A7 - A8
sub $a1, $a1, $s3

#====================================================
#====================================================
#realocando o resultado para o registrador temporario para ser exibido 
add $t1, $a1, $zero
#====================================================
#====================================================

#exibir Msg17
addi $v0, $zero, 4
la $a0, msg17
syscall

#====================================================
#====================================================

#imprimir Resultado
addi $v0, $zero, 1
add $a0, $t1, $zero
syscall

#====================================================
#====================================================


#finalizando programa no sistema
addi $v0, $zero, 10
syscall

#====================================================
#====================================================