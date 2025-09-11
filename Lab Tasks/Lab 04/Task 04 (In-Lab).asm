INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;comments for own understanding
.data 
	
	Xval DWORD 25
	Yval DWORD 15
	Zval DWORD 40
	Rval DWORD ?

.code
main PROC 

	mov eax, Xval
	add eax, Yval
	neg Zval  ;turning +40 to -40
	add eax, Zval ;+40-40

	mov Rval, eax ;answer would be Zero
	
	exit
main ENDP
END main
