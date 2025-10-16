INCLUDE Irvine32.inc

.data
msg BYTE "Final value of EAX: ",0

.code
main PROC

    mov eax,10         

whileLoop:              
    cmp eax,0           
    jl endLoop          
    sub eax,3           
    jmp whileLoop       

endLoop:
    mov edx,OFFSET msg
    call WriteString   

    call WriteInt       

    call CrLf
    exit
main ENDP
END main
