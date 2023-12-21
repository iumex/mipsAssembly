# Use tool Mars Bot and set Run speed 30 inst/sec

.text
lui $s0, 0xffff
ori $s0, $s0, 0x8010
lui $s1, 0xffff
ori $s1, $s1, 0x8020
lui $s2, 0xffff
ori $s2, $s2, 0x8030
lui $s3, 0xffff
ori $s3, $s3, 0x8040
lui $s4, 0xffff
ori $s4, $s4, 0x8050


	
for:
addiu $t0, $zero, 135

addiu $t4, $zero, 1

sw $t0, 0($s0)
sw $t4, 0($s4)

addiu $t6, $zero, 90

delay:
	addiu $t6, $t6, -1
	bne $t6, $zero, delay
	addiu $t6, $zero, 90

write:
addiu $t4, $zero, 0
sw $t4, 0($s4) 

addiu $t0, $zero, 45
sw $t0, 0($s0)

addiu $t1, $zero, 1
sw $t1, 0($s1) 
addiu $t4, $zero, 1
sw $t4, 0($s4)

delay1:
	addiu $t6, $t6, -1
	bne $t6, $zero, delay1
	addiu $t6, $zero, 90

	



godown:
addiu $t4, $zero, 0
sw $t4, 0($s4) 
addiu $t1, $zero, 0
sw $t1, 0($s1)
addiu $t0, $zero, 135
sw $t0, 0($s0)

addiu $t1, $zero, 1
sw $t1, 0($s1) 
addiu $t4, $zero, 1
sw $t4, 0($s4)

delay2:
	addiu $t6, $t6, -1
	bne $t6, $zero, delay2
	addiu $t6, $zero, 90

goleft:
addiu $t4, $zero, 0
sw $t4, 0($s4) 
addiu $t1, $zero, 0
sw $t1, 0($s1)
addiu $t0, $zero, 225
sw $t0, 0($s0)

addiu $t1, $zero, 1
sw $t1, 0($s1) 
addiu $t4, $zero, 1
sw $t4, 0($s4)
addiu $t5, $t5, 5000


delay3:
	addiu $t6, $t6, -1
	bne $t6, $zero, delay3
	addiu $t6, $zero, 90

godown2:

addiu $t4, $zero, 0
sw $t4, 0($s4) 
addiu $t1, $zero, 0
sw $t1, 0($s1)
addiu $t0, $zero, 315
sw $t0, 0($s0)

addiu $t1, $zero, 1
sw $t1, 0($s1) 
addiu $t4, $zero, 1
sw $t4, 0($s4)


delay4:
	addiu $t6, $t6, -1
	bne $t6, $zero, delay4
	addiu $t6, $zero, 90


stop:
addiu $t4, $zero, 0
sw $t4, 0($s4) 
addiu $t1, $zero, 0
sw $t1, 0($s1)






