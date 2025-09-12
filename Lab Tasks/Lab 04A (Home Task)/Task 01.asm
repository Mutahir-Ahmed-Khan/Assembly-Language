INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	num1 DD 45
	num2 DD 35

.code
main PROC

	mov eax, num1
	add eax, num2

	call WriteInt
	call crlf

	mov eax, num1
	sub eax, num2

	call WriteInt



exit
main ENDP
END main
