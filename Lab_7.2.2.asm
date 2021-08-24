# 7.2.2 

.data

    array: 		.space  512  			# 128 x 4 = 512
    genId: 		.word	1
	seed:		.word	1235
	prompt: 	.asciiz "\nThe avergage number generated from the number generator is: "
    
.text

.globl main

main:	# entry point

	# seed the generator
	# 1 - load the generator ID
	
	# 2 - seed the generator
	lw  $a1, seed
	li $v0, 40
	syscall
	
	# Generate 128 random numbers (loop)
	
	addi $t0, $zero, 0
	while:
		beq $t0, 512, exit
		
	# 1 - load the generator ID 
	li $t2, 129
	li $t3, 0
	# 2 - Bound the random number generator to less than or equal to 128
	li $a1, 128
	li $v0, 42
	syscall
	# 4 - store number in array
	sw $a0, array($t0)
	addi $a1, $a1, 4
	# 4 - go to step 2 until 128 numbers have been generated
	add $t0, $t0, 4
	j while
	exit:
	# Compute the Average
	# 1 - add all the numbers in the array (loop)
	sub $t0, $t0, $t0
	loop:
		beq $t0, 512, leave
	lw $t5, array($t0)
	add $t4, $t4, $t5
	add $t0, $t0, 4
	j loop
	leave:
	# 2 - compute the average (use a right shift)
	div $t3, $t4, 128
	# 3 - Display the average result message
	li $v0, 4
	la $a0, prompt
	syscall
	# 4 - Display the average
	move $a0, $t3
	li $v0, 1
	
	syscall

	       
	###################
	# Exit the program
	li $v0, 10
	syscall

