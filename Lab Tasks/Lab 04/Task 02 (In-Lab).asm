INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	num1 SBYTE -50
	num2 BYTE 200
		
.code
main PROC 
	
	movzx eax, num2 ; 8 to 32 (zero-extended)
	movsx ebx, num1 ; 8 to 32 (sign-extended)

	call DumpRegs
	
exit
main ENDP
END main
