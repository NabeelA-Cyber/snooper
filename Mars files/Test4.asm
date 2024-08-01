.data
arr:	.word	0,2,4,6,8,10
.text
la	$s0,arr
ori	$v0,$zero,1
lw	$a0,4($s0)
syscall

ori	$v0,$zero,1
lw	$a0,12($s0)
syscall

ori	$v0,$zero,1
lw	$a0,24($s0)
syscall

ori	$v0,$zero,10
syscall