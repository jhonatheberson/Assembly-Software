#comentários

.text

main:

#valores
# $s0, $s1, $s2, $s3, $s4, $s5, $s6
	addi $s1, $zero, 10  
        addi $s2, $zero, 10
        addi $s3, $zero, 10
        addi $s4, $zero, 10
        addi $s5, $zero, 10
        addi $s6, $zero, 10



#operações
	mult $s2, $s3
        mflo $t0
	add $t0, $t0, $s1
	mult $s5, $s6
	mflo $t1
	sub $t0, $s4, $t0
	div $t1, $t0
	mflo $s0

.data