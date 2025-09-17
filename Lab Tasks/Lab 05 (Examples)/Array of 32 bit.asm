INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	arrayD DWORD 11111111h, 22222222h, 33333333h

.code
main PROC 
	
	mov esi, OFFSET arrayD ; ESI = address of first element
	mov eax, [esi] ; EAX = 11111111h
	add esi, 4 ; Move to next element
	mov eax, [esi] ; EAX = 22222222h

exit
main ENDP
END main
