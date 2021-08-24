# Lab 7.1.1

.data
	prompt1: .asciiz "Enter a number "
	prompt2: .asciiz "\nEnter another number "
	message1: .asciiz "\nYou entered "
	message2: .asciiz " and " 
.text

.globl main

main:	# entry point
	li $v0, 4
	####INSERT YOUR CODE HERE####
	# 1 - display request for first number
	la $a0, prompt1
	syscall
	# 2 - Read first number
	li $v0, 5
	syscall
	move $t0, $v0
	# 3 - display request for second number
	li $v0, 4
	la $a0, prompt2
	syscall
	# 4 - read second number
	li $v0, 5
	syscall
	move $t1, $v0
	# 5 - display the first part of the message
	li $v0, 4
	la $a0, message1
	syscall
	# 6 - display first number
	li $v0, 1
	move $a0, $t0
	syscall
	# 7 - display the second part of the message
	li $v0, 4
	la $a0, message2
	syscall
	# 8 - display second number
	li $v0, 1
	move $a0, $t1
	syscall
	

	###################
    	# Exit the program
    	li $v0, 10
    	syscall
