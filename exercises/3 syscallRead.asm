# Some quick read use cases of syscall that
# are use to read diffirents values 
# or execute some actions 
.data
	myLetter: .asciiz "Insert a letter: \n "
	myNumber: .asciiz "Insert a number: \n "
	myString: .asciiz "write somthing: \n "
	space:    .ascii "\n"
	buffer:	  .space  256
	

.text 
main:
	li $v0, 4  	   #load the code to print string	
	la $a0, myLetter   #load the new string
	syscall
	
	li $v0, 12	   #code to read a letter 
	syscall
	
	li $v0, 4
	la $a0, space     # print a empty space 
	syscall
	
	li $v0, 4	   
	la $a0, myNumber  #load new string to print
	syscall
	
	li $v0, 5	  # code to read an integer 
	syscall
	
	li $v0, 4
	la $a0, space     # print a empty space 
	syscall
	
	li $v0, 4	   
	la $a0, myString  #load new string to print
	syscall	
	
	li $v0, 8 	  # code to read and string
	la $a0, buffer    
	li $a1, 256
	syscall
	
	
     
	

	

	
			
	
