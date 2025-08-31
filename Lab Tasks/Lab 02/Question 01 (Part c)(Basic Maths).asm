INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
.data  

    msg db "Total: ", 0     ;From Manual

.code
main PROC
    mov eax, 101110b
    add eax, 50Ah
    add eax, 67
    add eax, 1010001b
    add eax, 0Fh

    mov edx, OFFSET msg     ;From Manual
    call WriteString

    call WriteDec
                      

exit
main ENDP
END main
