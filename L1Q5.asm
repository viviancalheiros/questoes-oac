	main: addi $a0, $zero, 1	#a
	addi $a1, $zero, 3		#b
	slt $t0, $a0, $a1
	bne $t0, 1, ELSE
	#se a < b
	add $t1, $zero, $a1
	jal MULT1
	j EXIT
	
	#se b > a
	ELSE: add $t1, $zero, $a0
	jal MULT2
	j EXIT
	
	#se b > a
	MULT1: bne $t1, 0, NEXT
	jr $ra
	NEXT: add $v0, $v0, $a0
	addi $t1, $t1, -1
	jal MULT1
	j EXIT
	
	#se a >= b
	MULT2: bne $t1, 0, PROX
	jr $ra
	PROX: add $v0, $v0, $a1
	addi $t1, $t1, -1
	jal MULT2
	
	
	EXIT: #fim
	
