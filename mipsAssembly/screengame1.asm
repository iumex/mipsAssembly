
.text
lui $a0, 0x1001
ori $a0, $a0, 0x0000

lui $a1, 0x1001
ori $a1, $a1, 0x0000

lui $a2, 0x1001
ori $a2, $a2, 0x0000

lui $a3, 0x1001
ori $a3, $a3, 0x0000

lui $t0, 0x00ff
ori $t0, $t0, 0xffff

lui $t1, 0x00ff
ori $t1, $t1, 0xffff

lui $t2, 0x00ff
ori $t2, $t2, 0xffff

lui $t3, 0x0000
ori $t3, $t3, 0x0000

addiu $t5, $zero, 16
addiu $t6, $zero, 300
addiu $t7, $zero, 300
for:
fordelay:
	addiu $t6, $t6, -1
delay:
	addiu $t7, $t7, -1
	bne $t7, $zero, delay
	addiu $t7, $zero, 300
	bne $t6, $zero, fordelay
	addiu $t6, $zero, 300

sw $t0, 12($a0)
addi $a0, $a0, 4

sw $t1, 8($a1)
addi $a1, $a1, 4

sw $t2, 4($a2)
addi $a2, $a2, 4

sw $t3, 0($a3)
addi $a3, $a3, 4

#addiu $t5, $t5, -1
#bne $t5, $zero, for
j fordelay


	
