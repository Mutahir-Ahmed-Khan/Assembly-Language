INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
	

.code
main PROC 

	mov ax,0A7FF0h
	add al, 15h ;CF = 1, SF = 0, ZF = 0, OF = 0
	add ah, 1h ;CF = 0, SF = 1, ZF = 0, OF = 1
	add ax, 2h ;CF = 0, SF = 1, ZF = 0, OF = 0

exit
main ENDP
END main
