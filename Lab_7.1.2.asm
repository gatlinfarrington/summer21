# Lab 7.1.2.asm

.data

	Message: 	.asciiz "\nThe Random Number you generated was: "
	genId: 		.word	1
	seed:		.word	1235

.text

.globl main

main:	# entry point

	#### INSERT YOUR CODE HERE ####
	
	# SEED
	# 1 - load the generator ID
	lw $a0, genId
	# 2 - seed the generator
	lw $v0, seed
	
	# First Number
	# 1 - Load the generator ID
	li $a2, 1
	# 2 - Bound the random number generator to less than or equal to 128
	li $a1, 128
	li $v0, 42
	syscall
	move $t3, $a0
	# 3 - Display the message
	li $v0, 4
	la $a0, Message
	syscall
	# 4 - Display first number
	move $a0, $t3
	li $v0, 1
	
	syscall
	


	# Second number
	# First Number
	# 1 - Load the generator ID
	li $a2, 1
	# 2 - Bound the random number generator to less than or equal to 16
	li $a1, 16
	li $v0, 42
	syscall
	move $t3, $a0
	# 3 - Display the message
	li $v0, 4
	la $a0, Message
	syscall
	# 4 - Display first number
	move $a0, $t3
	li $v0, 1
	
	syscall

	# re-seed the generator
	# 1 - load the generator ID
	lw $a0, genId
	# 2 - seed the generator
	lw $v0, seed

	# Last number
	# 1 - Load the generator ID
	li $a2, 1
	# 2 - Bound the random number generator to less than or equal to 128
	li $a1, 128
	li $v0, 42
	syscall
	move $t3, $a0
	# 3 - Display the message
	li $v0, 4
	la $a0, Message
	syscall
	# 4 - Display first number
	move $a0, $t3
	li $v0, 1
	
	syscall

	###################
    	# Exit the program
    	li $v0, 10
    	syscall

