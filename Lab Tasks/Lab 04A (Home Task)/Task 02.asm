INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	balance DD 5000

.code
main PROC

	mov eax, balance
	add eax, 1200
	sub eax, 2000

	call WriteInt

exit
main ENDP
END main
