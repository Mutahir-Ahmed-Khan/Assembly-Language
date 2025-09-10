INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data 
	
	x DWORD 12h 
	y DWORD 14h 
	z DWORD 5h 
	w DWORD 10h

.code
main PROC 

	mov eax, x
	add eax, y

	mov ebx, z
	add ebx, w

	sub eax, ebx
	mov edx, eax

	call WriteInt 

	exit
main ENDP
END main
