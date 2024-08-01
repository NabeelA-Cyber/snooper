.data 

number1:	.word 4
number2:	.word 6

.text
lw	$t0,number1
lw	$t1,number2

add	$t2,$t0,$t1
syscall
