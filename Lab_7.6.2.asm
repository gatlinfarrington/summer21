# 7.6.1

.data

	prompt: .asciiz "Please enter a number between 1-100: "
	Answer: .asciiz "\nThe factorial is: "
	
.text

.globl main

main:	# entry point

	# 1 - Request a number
	li $v0, 4
	la $a0, prompt
	syscall
	# 2 - Read the number
	li $v0, 5
	syscall 
	move $t0, $v0
	add $t1, $zero, 1
	# 3 - Compute the factorial (recursively)
	move $a0, $t0
	jal factorial
	move $t4, $v0
	
	# 4 - Display the sum message
	li $v0, 4
	la $a0, Answer
	syscall
	# 5 - Display the sum
	li $v0, 1
	move $a0, $t4
	syscall

	#####################
	# End the program
	li $v0, 10
	syscall
	
.globl factorial
factorial:
	subu $sp, $sp, 8
	sw $ra, ($sp)
	sw $s0, 4($sp)
	
	#base case
	li $v0, 1
	beq $a0, 0, factorialDone
	
	move $s0, $a0
	sub $a0, $a0, 1
	jal factorial
	
	#the magic happens here :)
	mul $v0, $s0, $v0
	
	factorialDone:
		lw $ra, ($sp)
		lw $s0, 4($sp)
		addu $sp, $sp, 8
		jr $ra

		
