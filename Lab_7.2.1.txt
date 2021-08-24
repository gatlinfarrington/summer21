
# 7.2.1


.data
	int: 	.word 0

    	prompt: 	.asciiz "Please enter an 16- bit integer: "
    	msgDec: 	.asciiz "\nYour number in decimal is: "
    	msgBin: 	.asciiz "\nYour Number in binary code is: "
    	msgHex: 	.asciiz "\nyour number in Hexadecimal is: "
    
    	twoComp: 	.asciiz "\nYour number in decimal with 2's comp is: "
    	twoCompBin: 	.asciiz "\nYour Number in binary code with 2's comp is: "
    	twoCompHex: 	.asciiz "\nyour number in Hexadecimal with 2's comp is: "
    
.text

.globl main

main:	# entry point
    	li $v0, 4
    	# 1 - Prompt the user for a number
    	la $a0, prompt
	syscall
    	# 2 - Read the number from User
    	li $v0, 5
	syscall
	move $t0, $v0
    	# 3 - display the decimal result msg
    	li $v0, 4
	la $a0, msgDec
	syscall
    	# 4 - display the number in decimal
    	li $v0, 1
    	move $a0, $t0
    	syscall
    	# 5 - display the binary result msg
    	li $v0, 4
	la $a0, msgBin
	syscall
    	# 6 - display the number in binary
    	li $v0, 35
    	move $a0, $t0
    	syscall
    	move $t0, $a0
    	# 7 - display the hex result msg
    	li $v0, 4
	la $a0, msgHex
	syscall
    	# 8 - display the integer in hex
    	li $v0, 34
    	move $a0, $t0
    	syscall

		# 2's compliment
    	# 1 - calculate the 2's compliment
		# 2 - display the decimal 2's comp result msg
		li $v0, 4
		la $a0, twoComp
		syscall
		# 3 - display the decimal 2's comp result
		sub $t3, $zero, $t0
		move $a0, $t3
		li $v0, 1
		syscall
    	# 4 - display the binary 2's comp result msg
    		li $v0, 4
		la $a0, twoCompBin
		syscall
		# 5 - display the binary 2's comp result 
		li $v0, 35
    		move $a0, $t3
    		syscall
    		move $t3, $a0
		# 6 - display the Hexadecimal 2's comp result msg
		li $v0, 4
		la $a0, twoCompHex
		syscall
		# 7 - display the Hexadecimal 2's comp result 
    		li $v0, 34
    		move $a0, $t3
    		syscall
	
	##############
	# Exit program
	li $v0, 10
	syscall

