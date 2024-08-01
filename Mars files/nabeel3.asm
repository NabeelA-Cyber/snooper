.data 
x:	.word 3	
y:	.word 9
sum:	.word 0
msg1:	.asciiz "the result is: "
.text
lw	$t0,x
lw	$t1,y

add	$t2,$t0,$t1
sw	$t2,sum
li	$v0,4
la	$a0,msg1
syscall
li	$v0,1
move	$a0,$t2
syscall
li	$v0,10
syscall