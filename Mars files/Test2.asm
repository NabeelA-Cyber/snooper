.data
msg1:	.asciiz "Enter a number: "
msg2:	.asciiz "you entered: "
.text
ori	$v0,$zero,4	#print masg1
la	$a0,msg1
syscall

ori	$v0,$zero,5	#wait for user to type a number
syscall

or	$t0,$v0,$zero	#register $t0 contians the number
ori	$v0,$zero,4	#print msg2
la	$a0,msg2
syscall
ori	$v0,$zero,1
or	$a0,$t0,$zero
syscall

ori	$t0,$zero,10
syscall

