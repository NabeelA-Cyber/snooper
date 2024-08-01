.data
counter .word 0



.text
lw	$t0,counter
add	$t0,$t0,1
sw	$t0,counter
syscall