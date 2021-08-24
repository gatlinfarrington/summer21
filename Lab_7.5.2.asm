# Lab 7.5.1
.data

	prompt1: 	.asciiz 	"Enter a 16-bit number: "
	binaryMsg: 	.asciiz 	"\nBinary: "
	result: 	.asciiz 	"\nThe left most bit is in position (zero-based): "
	
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
 	# 3 - Display Binary msg
 		li $v0, 4
 		la $a0, binaryMsg
 		syscall
	# 4 - Display the number as binary
		move $a0, $t0
		li $v0, 35
		syscall
	# 5 - Find the right-most bit (loop)
		addi $t3, $zero, 0xffffffff
	loop:
	
	srl $t3, $t3, 1
	and $t2, $t0, $t3
	beq $t2, 0, end
	add $t5, $t5, 1
	j loop
	end:
	sub $t5, $t5, 15
	add $t6, $zero, 16
	sub $t5, $t6, $t5
	# 6 - Display the result msg
	li $v0, 4
	la $a0, result
	syscall
	# 7 - Display the position
	li $v0, 1
	move $a0, $t5
	syscall

	###################
	# End the program
	li $v0, 10
	syscall
			
	
