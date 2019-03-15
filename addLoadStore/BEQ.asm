 #simple workflow to understand how works
 #the beq command
.data
.text

main:
			 			li 		$t0,1
	 					li 		$t1,1
	 					beq   $t1, $t0, Equal #branch if equal
	 					add		$t2, $t0, $t1
      Equal:sub    $t0, $t1, $t2
	 					li $v0,10
		 				syscall
