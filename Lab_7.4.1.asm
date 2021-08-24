# 7.4.1

.data

	prompt1: 	.asciiz 	"Enter a 16-bit number:"
	prompt2: 	.asciiz 	"\nEnter another 16-bit number:"
	result: 	.asciiz 	"\nThe product is: "
	
.text

.globl main

main:	# entry point

	####INSERT YOUR CODE HERE####
		li $v0, 4
	# 1 - Request the first number
		la $a0, prompt1
		syscall
	# 2 - Read first number
		li $v0, 5
		syscall
		move $t0, $v0
	# 3 - Request a second number
		li $v0, 4
		la $a0, prompt2
		syscall
	# 4 - read second number
		li $v0, 5
		syscall
		move $t1, $v0
	# 5 - multiply the two numbers using addition (loop)
	add $t3, $t0, $zero
	loop:
	beq $t1, 1, end 
	add $t0, $t0, $t3
	sub $t1, $t1, 1
	j loop
	# 6 - Display product message
	end:
		li $v0, 4
		la $a0, result
		syscall
	# 7 - Display product 
		move $a0, $t0
		li $v0, 1
		syscall
	###################
	# End the program
	li $v0, 10
	syscall

	
	
