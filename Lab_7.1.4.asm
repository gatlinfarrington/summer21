# Lab 7.1.3 

.data
	prompt1: .asciiz "Enter a number "
	prompt2: .asciiz "\nEnter another number "
	message: .asciiz "\nThe difference is "
	
.text

.globl main

main:	# entry point
li $v0, 4
	# First Number
	# 1 - display prompt1
	la $a0, prompt1
	syscall
	# 2 - read first number
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Second Number		
	# 1 - display prompt2
	li $v0, 4
	la $a0, prompt2
	syscall
	# 2 - read second number
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Subtraction
	# 1 - subtract the two numbers
	sub $t3, $t0, $t1
	# 2 - display result message
	la $a0, message
	li $v0, 4
	syscall
	# 3 - display the sum
	move $a0, $t3 
	li $v0, 1
	syscall

	###################
    	# Exit the program
    	li $v0, 10
    	syscall
