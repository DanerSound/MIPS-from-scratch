# print on terminal the request of insert the customer's names 
# wait until that and them print a greeting message
#
.data
	request:   .asciiz " write your name: "
	space:	   .asciiz " \n"
	greetings: .ascii " greetings "
	buffer:    .space  256
	
.text
 main:	
 	li $v0,4        
        la $a0,request
        syscall         	# it print the request message

        li $v0,8         
        la $a0,buffer
        li $a1,256
        syscall         	# prepare the system to read a name

        li $v0,4        
        la $a0,space
        syscall 
        
        li $v0,4        
        la $a0,greetings
        syscall 		# print the greetings
 	

	