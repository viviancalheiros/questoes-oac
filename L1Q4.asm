main: addi $a0, $zero, 1	#a = 1
addi $a1, $zero, 6		#b = 6
slt $t0, $a1, $a0
beq $t0, 1, ELSE
jal SOMA 
			
j EXIT

ELSE: addi $v1, $zero, 1
j EXIT

SOMA: bne $a0, $a1, IF
add $v0, $v0, $a0
jr $ra
IF: add $v0, $v0, $a0
addi $a0, $a0, 1
jal SOMA

EXIT: #fim