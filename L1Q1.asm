addi $s0, $zero, 2 #int a = 2
addi $s1, $zero, 1 #int b = 1
addi $s2, $zero, 0 #int m = 0
add $s2, $zero, $s0 #m = a

slt $t0, $s1, $s2 #b < m
beq $t0, $zero, ELSE #se (FALSO)
add $s2, $zero, $s1 #m = b
j Exit #pula para Exit

ELSE: addi $s2, $zero, 0 #else: m = 0

Exit: #fim