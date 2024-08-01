.data
	arr:	.word	0,2,4,6,8,10
	msg1:	.asciiz "which element are you looking for: "
	msg2:	.asciiz	"element exists in the array"
	msg3:	.asciiz	"element doesn't exist in the array"
.text
	 la	$s0,arr
	 li	$s1,0x10010014

	 ori	$v0,$zero,4
	 la	$a0,msg1
	syscall

	ori	$v0,$zero,5
       	syscall

      	or	$t0,$v0,$zero
loop: 	lw	$t1,0($s0)
      	beq	$t0,$t1,exist
      	addi	$s0,$s0,4
      	blt	$s1,$s0,notFound
       j	loop
exist: ori	$v0,$zero,4
       la	$a0,msg2
       syscall
       j	exit
notFound:ori	$v0,$zero,4
	la	$a0,msg3
	syscall
exit:	ori	$v0,$zero,10
	syscall