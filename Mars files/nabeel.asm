.data 

prompt: 	.asciiz"Enter a number: "
msg1:		.asciiz"the number you enteried is: "

.text
	li	$v0,4		
	la 	$a0,prompt
	syscall
	
li	$v0,5
syscall

add	$t0,$v0,$zero

li	$v0,4
la	$a0,msg1
syscall

li 	$v0,1
add	$a0,$t0,$zero
syscall 