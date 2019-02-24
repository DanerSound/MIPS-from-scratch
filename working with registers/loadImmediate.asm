# Direct Use of loadImmediate with registers
#
# fileName:loadImmediate
#
.data
.text

main: li $t0,0x0
      li $t1,0x1
      li $t2,0x2
      li $t3,0x3
      li $t4,0x4
      li $t5,0x5
      li $t6,0x6
      li $t7,0x7
      li $t8,0x8
      li $t9,0x9

#exit the program
li $v0,10
syscall
