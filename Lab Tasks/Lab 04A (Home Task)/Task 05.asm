INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
;comment are for own understanding

.data

	val SBYTE -10

.code
main PROC

	movsx ax, val
	call DumpRegs

	movzx ax, val
	call DumpRegs

exit
main ENDP
END main
