#simple workflow to understand how works
#the bnq command
.data
.text

main:
				li 		$t0, 1
	 			li 		$t1, 1
	 			bne   $t1, $t0, Label   #branch_not _equal
	 			add		$t2, $t0, $t1

  Label:add   $t2, $t0, $t1
				li 		$v0,10
		 		syscall
