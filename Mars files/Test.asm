.data
x:	.word 4
y:	.word 5
z:	.word 2
q:	.word 7
msg1:	.asciiz "the result is: "

.text
lw	$s1,x
lw	$s2,y
lw	$s3,z
lw	$s4,q

add	$s5,$s2,$s3
add	$s6,$s1,$s4
add	$t1,$s5,$s6
sw	$t1,x
li	$v0,4
la	$a0,msg1
syscall
li	$v0,1
move	$a0,$t1
syscall
li	$v0,10
syscall