INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;comments for own understanding
.data 

	result DWORD ?

.code
main PROC 
	
	count = 5

	mov ax, count
	inc ax
	movzx eax, ax
	mov result, eax

	mov eax, result 
	call WriteInt
	call Crlf


	exit
main ENDP
END main
