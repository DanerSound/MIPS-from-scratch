# simple workflow to understand the 
# while statement
.data
.text
main:
	li 	$t0,5 		 # defines guard
	move	$t1,$zero	 #
	
while:	beq	$t0, $t1, exit   # while(t0!=t1){ 
	add	$t0, $t0, -1     # t0=t0-1 }
	j while
exit:
	li  $v0,10
 	syscall 
	
	
	 		