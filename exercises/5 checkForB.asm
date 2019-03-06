# reads a character inserted by the terminal 
# and checks if it corresponds to "b"
#
.data
	request: .asciiz  " print a letter! quick! "
	isb:	 .asciiz  " \n yes! is the 'b' \n "
	notb:	 .asciiz  " \n no! is not the 'b'\n "

.text 
main:
	li	$v0, 4
	la	$a0, request
	syscall 		# print the request string
	
	li	$v0, 12		# read a single char
	syscall 		#
	move	$t0, $v0 	# save the readed value
	
	li	$t1, 'b'	#  
	beq     $t0, $t1, equal # confrontare
	j notEqu
	
equal:	li	$v0, 4	 	# print the proper message
	la	$a0, isb
	syscall
	j exit
	
notEqu:	li	$v0, 4	 	# print the proper message
	la	$a0, notb
	syscall
	j main
	
exit:	li	$v0, 10 	
	syscall	