INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	val DWORD 10

.code
main PROC

	mov eax, val
	inc eax
	inc eax 
	inc eax

	call WriteDec
	call Crlf

	dec eax
	dec eax

	call WriteDec

exit
main ENDP
END main
