INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	PI EQU 3

.code
main PROC

	mov eax, PI
	imul eax, 2
	call WriteDec

exit
main ENDP
END main
