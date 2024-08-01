.data
var1:	.word	15
var2:	.word	19
NL:	.asciiz	"\n"
.text
	ori	$v0,$zero,1
	lw	$a0,var1
	syscall
	
	ori	$v0,$zero,4
	la	$a0,NL
	syscall
	
	ori	$v0,$zero,1
	lw	$a0,var2
	syscall
	
	ori	$v0,$zero,10
	syscall
	
	