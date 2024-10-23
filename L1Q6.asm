main: addi $s0, $zero, 3
addi $a0, $zero, 1
addi $a1, $zero, 1
addi $a2, $zero, 8
slt $t0, $a2, $s0
beq $t0, 0, IF
addi $v0, $zero, 1
j EXIT		

IF: addi $a2, $a2, -2		#tira as duas primeiras possibilidades pois ja existem (a0 = 1, a1 = 1)
jal fib
j EXIT

fib: bne $a2, 0, ELSE
add $v0, $zero, $a1
jr $ra
ELSE: add $t1, $a0, $a1
add $a0, $zero, $a1
add $a1, $zero, $t1
add $a2, $a2, -1
add $v0, $zero, $a1
jal fib

EXIT: #fim
