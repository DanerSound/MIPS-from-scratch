# read a string from console 
# and return the lenght
#
.data
	request: .ascii "Give me any string:"
	buffer:	  .space 256
	message:  .ascii "the lenght of the String is: "
	
.text
main:
	li	$v0, 4
	la	$a0, request
	syscall			# print the request string 
	
	li	$v0, 8		# 
	la	$a0, buffer	# the string will be store from here
	la	$a1, 256	#
	syscall		 	# prepare the system to read a string
	
	move	$t0, $zero	# init counter
	move	$t2, $a0	# save the pointer of buffer
	
count:	lb	$t1, ($t2)
	beqz 	$t1, result
	add	$t0, $t0, 1	# update the counter
	add 	$t2, $t2, 1	# update the charpointer
	j count
	
result:	li	$v0, 4
	la	$a0, message
	syscall	
	
	
	
	move 	$a0,$t0
	sub 	$a0, $a0, 1
	li	$v0, 1
	syscall
	
	
	
	

	
	
	
	