# Given an Array sum one element and constant store in to register
# IMPORTANT NOTE : when you use an array remember to define the index!
#                  and the type of numbers you are working with.
.data
array:  .word 2, 4, 5, 9, 133, 44, 1, 0
.text
.globl main
main:
    li  $t5, 4          #define index
    add $t5, $t5, $t5
    lw  $s0,array($t5)

    li  $s1,4
    add $t0,$s0,$s1

#exit the program
    li $v0,10
    syscall
