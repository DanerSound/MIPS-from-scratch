# before read this file look for lecture n°7 of the playlist
#
# in this current test i'll use only .ascii but it will work with anykind
    .data
var1: .ascii    "123"
var2: .ascii    "7"
var3: .ascii    "5"
name: .ascii    "DANER"
    .text
main:

      li $v0,10
      syscall
