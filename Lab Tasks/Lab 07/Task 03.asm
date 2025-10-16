INCLUDE Irvine32.inc

.data
msg BYTE "Enter a number (0 to stop): ",0
outmsg BYTE "Total valid (non-zero) numbers entered = ",0
count DWORD 0

.code
main PROC

    mov ecx, 5          
    mov eax, 1          
    mov count, 0

inputLoop:
    mov edx, OFFSET msg
    call WriteString
    call ReadInt

    cmp eax, 0
    je stopInput        

    inc count           
    test eax, eax       
    LOOPNZ inputLoop   
    jmp displayResult

stopInput:
    ; set ZF=1 so LOOPNZ won't run further
    or eax, eax        
    LOOPNZ inputLoop    

displayResult:
    mov edx, OFFSET outmsg
    call WriteString
    mov eax, count
    call WriteInt
    call Crlf

    exit
main ENDP
END main
