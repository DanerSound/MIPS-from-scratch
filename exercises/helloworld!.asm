.data
	myMessage: .asciiz "Hello World \n"

.text
main:
	li $v0, 4 		# code to print an string
	la $a0, myMessage 	# load address to start to print
	syscall


