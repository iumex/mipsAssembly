# Use the tool Bitmap display
# Unit Width and Height: 32, Display Width: 256, Display Height: 256
# Run speed ad max

lui $s0, 0x1001
ori $s0, $s0, 0x0000

lui $t0, 0x00ff
ori $t0, $t0, 0xffff

lui $t1, 0x0000
ori $t1, $t1, 0x0000


addiu $t4, $zero, 4
addiu $t5, $zero, 2

for1:
for2:
sw $t0, 0($s0)
addi $s0, $s0, 8
addiu $t4, $t4, -1
bne $t4, $zero, for2
addiu $t4, $zero, 4
addi $s0, $s0, 4
addiu $t5, $t5, -1
bne $t5, $zero, for1

lui $s0, 0x1001
ori $s0, $s0, 0x0000

addiu $t4, $zero, 4
addiu $t5, $zero, 2
for3:
for4:
sw $t0, 64($s0)
addi $s0, $s0, 8
addiu $t4, $t4, -1
bne $t4, $zero, for4
addiu $t4, $zero, 4
addi $s0, $s0, 4
addiu $t5, $t5, -1
bne $t5, $zero, for3

lui $s0, 0x1001
ori $s0, $s0, 0x0000

addiu $t4, $zero, 4
addiu $t5, $zero, 2
for5:
for6:
sw $t0, 128($s0)
addi $s0, $s0, 8
addiu $t4, $t4, -1
bne $t4, $zero, for6
addiu $t4, $zero, 4
addi $s0, $s0, 4
addiu $t5, $t5, -1
bne $t5, $zero, for5

lui $s0, 0x1001
ori $s0, $s0, 0x0000

addiu $t4, $zero, 4
addiu $t5, $zero, 2
for7:
for8:
sw $t0, 192($s0)
addi $s0, $s0, 8
addiu $t4, $t4, -1
bne $t4, $zero, for8
addiu $t4, $zero, 4
addi $s0, $s0, 4
addiu $t5, $t5, -1
bne $t5, $zero, for7
