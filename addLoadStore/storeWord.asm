# Given an Array store a new element in any position
# IMPORTANT NOTE :

.data
array:  .word 2, 4, 5, 9, 133, 44, 1, 0
.text
main:

    li    $t5, 4          # define an index
    add   $t5, $t5, $t5   # calculate correct offset
    lw    $s0, array($t5) # load the value from array
    
    li    $s1, 4           # read a ramdom constant
    add   $t3, $s0,$s1

    sw    $t3, array($t5)


#exit the program
    li $v0,10
    syscall
