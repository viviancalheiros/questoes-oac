addi $s0, $zero, 1 #int a = 1
addi $s1, $zero, 2 #int b = 2
addi $s2, $zero, 0 #int x = 0

slt $t0, $s0, $s1
beq $t0, $zero, COND #se a > b, pula pra COND
slt $t1, $s0, $zero
beq $t1, $zero, ELSE #se a < 0, pula pra ELSE

#if (a >= 0 e a > b)
addi $s2, $s2, 1
j Exit

#else if (a < 0 e a > b)
COND: slt $t1, $s0, $zero #caso a > b, verifica se a < 0
beq $t1, $zero, ELSE

ELSE_IF: addi $s2, $zero, 2
j Exit

ELSE: addi $s2, $zero, 3

Exit: #fim

#caso eu quisesse imprimir o x:
	#li $v0, 1
	#la $a0, ($s2)
	#syscall