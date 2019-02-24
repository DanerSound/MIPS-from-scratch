#
#
#
.data
.text
 main:
      li  $t1, 2        # result positive
      li  $t2, 1
      sub $t3, $t1,$t2

      li  $t1, 5        # result positive
      li  $t2, 1
      sub $t3, $t1,$t2

# result is negative in 2 complement
      li  $t1, 100
      li  $t2, 50
      sub $t3, $t1,$t2

      li  $t1, 1
      li  $t2, 2
      sub $t3, $t1,$t2

      li  $t1, 1        
      li  $t2, 5
      sub $t3, $t1,$t2

      li  $t1, 50        # result negative
      li  $t2, 100
      sub $t3, $t1,$t2

      li $v0, 10
      syscall
