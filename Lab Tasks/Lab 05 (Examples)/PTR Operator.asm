INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	myDoubleWord DWORD 12345678h

.code
main PROC 
	
	mov ax, WORD PTR myDoubleWord ;this would move 5678 ~(little endian)~ to ax
								  ;keep in mind that operands should be of same size, thus with ax(16) it would be Word(16)

	mov ax, WORD PTR [myDoubleWord+2] ;it would move next 1234 to ax
									  ;"+2" is because we are using Word Pointer and Word consist of 16 bits = 2 Bytes, it would to next 
									  ;statement

	mov bl, BYTE PTR myDoubleWord ;78 to bl ~(little endian)~, +1 would move to next means it will take 56 

exit
main ENDP
END main
