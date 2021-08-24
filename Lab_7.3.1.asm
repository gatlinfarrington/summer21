# 7.3.1


.data

	prompt1: 	.asciiz "Please enter a integer: "
	prompt2: 	.asciiz "\nplease enter another integer: "
	maxmsg: 	.asciiz "\nThe maximum value of these integers is: \n"
	equalmsg: 	.asciiz "\nThese numbers are the same "	
	
.text

.globl main

main:	# entry point
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
	# 5 - Compare the two numbers
		blt $t1, $t0, oneGreater
		blt $t0, $t1, twoGreater
	# 6 - Display the equal message
		li $v0, 4
		la $a0, equalmsg
		syscall
	# 7 - Display the maximum of the two numbers
		

	####################
	# End the program
	li $v0, 10
	syscall
oneGreater:
	# 6 - Display the maximum message
		li $v0, 4
		la $a0, maxmsg
		syscall
	# 7 - Display the maximum of the two numbers
		move $a0, $t0
		li $v0, 1
		syscall
	#END
	li $v0, 10
	syscall

twoGreater:
	li $v0, 1
	move $t0, $t1
	# 6 - Display the maximum message
		li $v0, 4
		la $a0, maxmsg
		syscall
	# 7 - Display the maximum of the two numbers
		move $a0, $t0
		li $v0, 1
		syscall
	