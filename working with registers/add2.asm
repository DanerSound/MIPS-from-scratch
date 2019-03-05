# simple use of command addition of registers
# using negative and positive numbers
# remember that all operation on the machine are made in 2complement
# fileName:add2
.data

.text
main:
     # negative numbers (somma con riporto)
     li   $t1,-1
     li   $t2,1
     add  $t3, $t1,$t2

     #  negative and positive
     li   $t1,-1
     li   $t2,2
     add  $t3, $t1,$t2

     # negative and negative
     li   $t1,-4
     li   $t2,-3
     add  $t3, $t1,$t2

#exit the program
     li $v0,10
     syscall
