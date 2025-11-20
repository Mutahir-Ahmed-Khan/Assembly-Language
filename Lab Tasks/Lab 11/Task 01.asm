INCLUDE Irvine32.inc
.data 

	givenS BYTE "127&j~3#^&*#*#45^",0
	index BYTE "Index is: ",0
  
.code
main PROC

	mov edi, OFFSET givenS
	mov al,'#'
	mov ecx, LENGTHOF givenS
	mov eax,0
	cld

	L1: 
		scasb
		je found

		inc eax
		loop L1

	jmp notFound

	found
		mov edx, OFFSET index
		call 
		call WriteDec
		jmp exitt

	notFound:
		mov edx, OFFSET index
		call WriteString
		mov eax, -1
		call WriteDec
		jmp exitt

	exitt:

main ENDP
END main
