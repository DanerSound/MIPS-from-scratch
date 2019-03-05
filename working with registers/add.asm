# simple use of command addition of registers
#
# fileName:add1
.data

.text
main:
     # positive numbers
     li   $t1,1
     li   $t2,2
     add  $t3, $t1,$t2

#exit the program
li $v0,10
syscall
