.data
vowels:	.byte  'a', 'e', 'i', 'o', 'u'
letter:   .byte  'b', 'c'
.text
la		$s0, vowels
addi		$s0, $s0, 5
lb		$t0, 0($s0)
