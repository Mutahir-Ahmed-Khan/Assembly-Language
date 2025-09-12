INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	shop DD 50
	msg BYTE "Final Items: ",0

.code
main PROC

	mov eax, shop
	sub eax, 7
	add eax, 15
	mov edx, OFFSET msg
	call WriteString
	call WriteDec

	

exit
main ENDP
END main
