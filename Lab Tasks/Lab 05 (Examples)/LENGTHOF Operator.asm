INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	byte1 BYTE 10,20,30
	array1 WORD 30 DUP(?),0,0
	array2 WORD 5 DUP(3 DUP(?))
	array3 DWORD 1,2,3,4
	digitStr BYTE "12345678",0

.code
main PROC 
	
	LENGTHOF byte1 ;returns 3
	LENGTHOF array1 ;returns 30+2
	LENGTHOF array2 ;returns 5*3
	LENGTHOF array3 ;returns 4
	LENGTHOF digitStr ;returns 9

exit
main ENDP
END main
