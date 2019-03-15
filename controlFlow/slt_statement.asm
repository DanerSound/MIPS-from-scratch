#
#
#
.data
.text
main:
	li	$t1, 5
	li	$t2, 3
	slt	$t0, $t1, $t2 # if (t1 < t2) t0=1 else t0=0
	
exit:	li	$v0,10
	syscall
		
	