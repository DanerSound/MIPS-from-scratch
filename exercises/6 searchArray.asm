# reads an integer from console, search for it inside a predefined vector in .data
# and determine its position (first occurrence).
#

.data
	request: .ascii "insert a number: "
	result:  .ascii "the position is: "
	array:   .word 2, 4, 5, 9, 133, 44, 1, 0
.text
main:	
	li    $v0, 4
	la    $a0, request		# print the request
	syscall
	
	li    $v0, 5
	syscall				# prepare the system to read an integer
	
	move  $s0,$v0			# save the readed value
						
    	move  $t1, $zero	        # init the index
    	li    $t2, 0 		 

while:	lw    $t3,array($t1)
	beq   $s0, $t3, exit
	add   $t2, $t2, 1	 		
    	addi  $t1, $t1, 4		# the reading step will be linked to the type of the array
    	j     while
    	
exit:	li    $v0, 4
	la    $a0, result		# print result
	syscall
	
	li    $v0, 1
	move  $a0, $t2
	syscall
					
    	