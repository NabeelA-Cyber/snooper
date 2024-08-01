        .data   # The following entries go in the data segment
eol:	.asciiz	"\n"
strA:	.asciiz 	" plus "
strB:	.asciiz 	" equals "
val:	.word	2,3

        .text   # The following entries go in the text (program code) segment
main:
        la      $a0,eol	# load address of the string to print
        li      $v0,4		# load print_string code
        syscall		# ask the system to print the string

        lw      $a0,val	# put the first value in $a0 for printing
        li      $v0,1		# load print_integer code
        syscall		# ask the system to print the integer

        la      $a0,strA	# load address of the string to print
        li      $v0,4		# load print_string code
        syscall		# ask the system to print the string

        lw      $a0,val+4	# put the second value in $a0 for printing
        li      $v0,1		# load print_integer code
        syscall			# ask the system to print the integer

        la      $a0,strB	# load address of the string to print
        li      $v0,4		# load print_string code
        syscall			# ask the system to print the string

        lw      $t0,val		# load first value to add
        lw      $t1,val+4	# load second value to add
        add     $a0,$t0,$t1	# add and put result in $a0
        li      $v0,1		# load print_integer code
        syscall			# ask the system to print the string

        la      $a0,eol		# load address of the string to print
        li      $v0,4		# load print_string code
        syscall			# ask the system to print the string

        li  $v0, 10
       syscall
