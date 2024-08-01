.data
var1:	.word 15
var2:	.word 19

.text
	
	ori 	$v0,$zero,1
	la	$a0,var1
	syscall
	
	
	ori 	$v0,$zero,1
	lw	$a0,var2
	syscall
	
	ori	$v0,$zero,10
	syscall
	
	