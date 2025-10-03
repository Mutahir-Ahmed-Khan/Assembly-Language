INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
	

.code
main PROC 

	mov ecx, 11         ; loop counter (ECX used by LOOP)
    mov eax, 5          ; current number to print (WriteInt uses EAX)

PrintLoop:
    call WriteInt        ; prints EAX
    call Crlf            ; new line after each number
    inc eax              ; next number
    loop PrintLoop       ; dec ECX; if ECX != 0 jump to PrintLoop           


exit
main ENDP
END main
