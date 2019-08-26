#comentários






.text

main:
lw $s1, A
lw $s2, B
lw $s3, C
lw $s4, D
lw $s5, F
lw $s6, G

#valores
# $s0, $s1, $s2, $s3, $s4, $s5, $s6
	#addi $s1, $zero, 10  
        #addi $s2, $zero, 10
        #addi $s3, $zero, 10
        #addi $s4, $zero, 10
        #addi $s5, $zero, 10
        #addi $s6, $zero, 10



#operações
	mult $s2, $s3
        mflo $t0
	add $t0, $t0, $s1
	mult $s5, $s6
	mflo $t1
	sub $t0, $s4, $t0
	div $t1, $t0
	mflo $s0
	addi $v0, $zero, 10  # FINALIZA O PROGRAMA
	syscall             #TIPO EXIT DO ARQUIVO

.data

	A: .word 10
	B: .word 10
	C: .word 10
	D: .word 10
	F: .word 10
	G: .word 10
