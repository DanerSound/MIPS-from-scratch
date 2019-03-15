# simple workflow to understand the if- construct
#
.data 
.text
main:
	 li  $t1,50
	 li  $t2,50
	 bne $t1, $t2, label    # if(t1!=t2) do label	
	 add $t1, $t2, $t2      # else t1=t2+t2
	 j after		# this row is mandatory to break the linear execution
label:   sub $t2, $t1, $t1
after: 				# do something diferent, in this case only finish
	 li  $v0,10
 	 syscall 		