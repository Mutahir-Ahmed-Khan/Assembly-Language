INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

.code
main PROC  
	mov eax, 5d 
	mov ebx, 4d
	mov ecx, 6d

	mov edx, eax

	add edx, 3d
	add edx, ebx
	sub edx, ecx
	add edx, 12h
	sub edx, 45o	
	add edx, 89d

	mov eax, edx

	call WriteInt

exit
main ENDP
END main
