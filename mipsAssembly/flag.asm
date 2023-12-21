# Use the tool Bitmap display
# Unit Width and Height: 16, Display Width: 512, Display Height: 256
# Run speed ad max

lui $s0, 0x1001
ori $s0, $s0, 0x0000

lui $t0, 0x0000
ori $t0, $t0, 0xff00
lui $t1, 0x00ff
ori $t1, $t1, 0xffff
lui $t2, 0x00ff
ori $t2, $t2, 0x0000

addiu $t7, $zero, 16
addiu $t6, $zero, 88
addiu $t5, $zero, 10
for:
sw $t0, 0($s0)
addi $s0, $s0, 4
addiu $t5, $t5, -1
bne $t5, $zero, for
addiu $t5, $zero, 10
add $s0, $s0, $t6
addiu $t7, $t7, -1
bne $t7, $zero, for

lui $s0, 0x1001
ori $s0, $s0, 0x0000

addiu $t5, $zero, 10
addiu $t7, $zero, 16

for1:
sw $t1, 40($s0)
addi $s0, $s0, 4
addiu $t5, $t5, -1
bne $t5, $zero, for1
addiu $t5, $zero, 10
addi $s0, $s0, 88
addiu $t7, $t7,-1
bne $t7, $zero, for1

addiu $t5, $zero, 12
addiu $t7, $zero, 16

lui $s0, 0x1001
ori $s0, $s0, 0x0000

for2:
sw $t2, 80($s0)
addi $s0, $s0, 4
addiu $t5, $t5, -1
bne $t5, $zero, for2
addiu $t5, $zero, 12
addi $s0, $s0, 80
addiu $t7, $t7, -1
bne $t7, $zero, for2














