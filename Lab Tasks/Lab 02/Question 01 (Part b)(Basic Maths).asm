INCLUDE Irvine32.inc
.data  

    msg db "Final Balance: ", 0 ;From Manual

.code
main PROC
    mov eax, 95
    sub eax,31
    add eax,240
    sub eax, 125

    mov edx, OFFSET msg ;From Manual
    call WriteString

    call WriteInt
                      

exit
main ENDP
END main
