INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;comments for own understanding
.data 
	
	num1 WORD 1234h
	num2 WORD 5678h

.code
main PROC 

	mov ax, num1 
	mov bx, num2
	
	xchg ax, bx

	mov num1, ax
	mov num2 ,bx

	
	exit
main ENDP
END main
