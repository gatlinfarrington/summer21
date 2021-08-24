# 7.3.3

.data

	prompt: .asciiz "Please enter a digit between 1-12: "
	result: .asciiz "\nYour number factorial is: "
	
.text

.globl main

main:	# entry point
	li $v0, 4
	# 1 - Request a number
	la $a0, prompt
	syscall
	# 2 - Read the number
	li $v0, 5
	syscall
	move $t0, $v0
	# 3 - Compute the factorial of the number (in a loop)
	add $t1, $zero, 1
	LOOP:
	beq $t0, $zero, end
	mul $t1, $t0, $t1
	sub $t0, $t0, 1
	j LOOP
	# 4 - Display the factorial message
	end:
	li $v0, 4
	la $a0, result
	syscall
	# 5 - Display the factorial
	li $v0, 1
	move $a0, $t1
	syscall


	
	#####################
	# End the program
	li $v0, 10
	syscall


	
