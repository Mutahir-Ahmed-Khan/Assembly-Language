INCLUDE Irvine32.inc
; Mutahir Ahmed Khan [24k-0030]

.data
    var1 DWORD ?
    var2 DWORD ?
    msg  BYTE "Enter First Number: ", 0
    msg1 BYTE "Enter Second Number: ", 0
    resultMsg BYTE "GCD is: ", 0

.code
main PROC
    call takeInput
    exit
main ENDP

takeInput PROC

    mov edx, OFFSET msg
    call WriteString
    call ReadDec
    mov var1, eax

    mov edx, OFFSET msg1
    call WriteString
    call ReadDec
    mov var2, eax

    push var1
    push var2
    call GCD
    add esp, 8          

    mov var1, eax
    call Display

    ret
takeInput ENDP

GCD PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]    
    mov ebx, [ebp + 12]   

gcd_loop:
    cmp ebx, 0
    je gcd_done
    mov edx, 0
    div ebx              
    mov eax, ebx          
    mov ebx, edx         
    jmp gcd_loop

gcd_done:
    leave
    ret
GCD ENDP

Display PROC 
    mov eax, var1         
    mov edx, OFFSET resultMsg
    call WriteString
    call WriteDec
    call Crlf
    ret
Display ENDP

END main
