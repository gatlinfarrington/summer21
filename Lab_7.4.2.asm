# 7.4.2

.data

	prompt1: 	.asciiz 	"Enter a 16-bit dividend:"
	prompt2: 	.asciiz 	"\nEnter a 16-bit divisor:"
	quotient: 	.asciiz 	"\nThe quotient is: "
	remain: 	.asciiz 	"\nThe remainder is: "
	
.text

.globl main

main:	# entry point

	####INSERT YOUR CODE HERE####
		li $v0, 4
	# 1 - Request the dividend
		la $a0, prompt1
		syscall
	# 2 - Read first number
		li $v0, 5
		syscall
		move $t0, $v0
	# 3 - Request a divisor
		li $v0, 4
		la $a0, prompt2
		syscall
	# 4 - read second number
		li $v0, 5
		syscall
		move $t1, $v0
	# 5 - Divide the two numbers using subtraction (loop)
	add $t5, $zero, 1
	loop:
		blt $t0, $t1, end
		sub $t0, $t0, $t1
		add $t3, $t3, $t5
		
		j loop
	end:
	# 6 - Display the quotient message
		la $a0, quotient
		syscall
	# 7 - Display the quotient 
		li $v0, 1
		move $a0, $t3
		syscall
	# 8 - Display the remainder message
		li $v0, 4
		la $a0, remain
		syscall
	# 9 - Display the remainder 
		li $v0, 1
		move $a0, $t0
		syscall

	#####################
	# End the program
	li $v0, 10
	syscall

	
	
