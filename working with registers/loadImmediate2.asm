# simple commands with loadImmediate
#
# fileName:loadImmediate part 2

.data

.text
main: li $t0,0  # loadImmediate of 4 bits
      li $t1,1
      li $t2,2
      li $t3,3
      li $t4,4
      li $t5,5
      li $t6,6
      li $t7,7
      li $t8,8
      li $t9,9

      li $t0,0000  # loadImmediate of 16 bits
      li $t1,1111
      li $t2,2222
      li $t3,3333
      li $t4,4444
      li $t5,5555
      li $t6,6666
      li $t7,7777
      li $t8,8888
      li $t9,9999

      li $t0,00000000  # loadImmediate of 32 bits
      li $t1,11111111
      li $t2,22222222
      li $t3,33333333
      li $t4,33334444
      li $t5,33335555
      li $t6,33336666
      li $t7,33337777
      li $t8,33338888
      li $t9,33339999

#exit the program
li $v0,10
syscall
