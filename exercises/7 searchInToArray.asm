# Given an Array Search an Element usign the while_statement
#

.data
array:  .word 2, 4, 5, 9, 133, 44, 1, 0
.text
main:	
	li    $t0, 44	      		# define the element to be SEARCH			
    	move  $t1, $zero	        # init the index	
    	#lw    $t2, array		# load the base address	of array 

while:	lw    $t3,array($t1)
	beq   $t0, $t3, exit 		
    	addi  $t1, $t1, 4		# the reading step will be linked to the type of the array
    	j     while
    	
	#exit the program
exit:	li $v0,10
    	syscall
