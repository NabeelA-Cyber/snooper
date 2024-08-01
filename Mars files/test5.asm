.data

a:		.word 1,2,3,4,5,6,7,8,9,10
b:		.word 0
.text

addi		$sp,$sp,-4
sw		$ra,0($sp)
la		$a0,a
ori		$a1,$zero,10
jal		sum
sw		$v0,b
or		$a0,$v0,$zero
ori		$v0,$zero,5
syscall
lw		$ra,0($sp)
addi		$sp,$sp,4
jr		$ra
sum:
or		$t0,$zero,$zero
ori		$t1,$zero,$zero
beq		$t0,$a1,endsum
lw		$t2,0($a0)
add		$t1,$t1,$t2
addi		$t0,$t0,1
addi		$a0,$a0,4
endsum:
or		$v0,$t1,$zero
jr		$ra