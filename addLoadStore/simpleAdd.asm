#simple add and sub using a template from notebook
# a=b+c+d
# e=f-a
#fileName:simpleAdd

.data
.text
main:
     li $s1,7 #c
     li $s2,3 #d
     li $s3,1 #b
     li $s5,5 #f

     add $t0, $s1, $s2
     add $s0, $t0, $s3
     sub $s4, $s5, $s0
     
#exit the program
     li $v0,10
     syscall
