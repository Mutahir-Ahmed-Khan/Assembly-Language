INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
	

.code
main PROC 

mov ebx, 1          

RowsLoop:
    mov ecx, ebx      

PrintStars:
    mov dl, '*'         
    call WriteChar
    loop PrintStars     

    call Crlf           

    inc ebx             
    cmp ebx, 6          
    jl RowsLoop             


exit
main ENDP
END main
