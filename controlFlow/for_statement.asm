# simple workflow to understand the for statement
# for(index=0; index<= n; i++) 	
#
.data
.text 
main:
	move $t0, $zero		# force index to zero	
	li   $t1, 5		# load the max size 

for:	blt  $t1, $t0, exit 	# branch less than <= si fermerà a uno in più
	add  $t0, $t0, 1
	j    for
	
exit:	li   $v0,10
	syscall				