INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	aVar DD 0FF10h
	bVar DD 0E10Bh
	msg BYTE "Value of A now: ",0
	msg2 BYTE "Value of B now: ",0

.code
main PROC

	mov eax, aVar
	mov ebx, bVar
	xchg eax, ebx

	mov edx, OFFSET msg
	call WriteString 
	call WriteHex

	call Crlf

	mov eax, ebx
	mov edx, OFFSET msg2 
	call WriteString
	call WriteHex


exit
main ENDP
END main
