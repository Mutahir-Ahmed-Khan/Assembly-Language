INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter a number: ", 0
armMsg BYTE " is an Armstrong number.", 0
notArmMsg BYTE " is NOT an Armstrong number.", 0
espMsg BYTE "Current ESP: ", 0
num DWORD ?
resultMsg BYTE ?, 0

.code
main PROC
    call TakeInput
    exit
main ENDP

TakeInput PROC
    push ebp
    mov ebp, esp

    mov edx, OFFSET msg1
    call WriteString
    call ReadDec
    mov num, eax

    call ShowESP

    push num
    call Armstrong
    add esp, 4

    leave
    ret
TakeInput ENDP

Armstrong PROC
    push ebp
    mov ebp, esp

    call ShowESP

    mov eax, [ebp + 8]  
    mov ebx, eax         
    mov ecx, 0           

ArmLoop:
    mov edx, 0
    mov edi, eax
    mov eax, edx
    mov eax, edi
    xor edx, edx
    mov esi, 0
    ; calculate digit cube
    mov edx, 0
    mov eax, edi
    mov esi, eax
    xor edx, edx
    mov ecx, 0
digitLoop:
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0
    mov eax, esi
    mov edx, 0

    push ebx
    call Display
    add esp, 4

    leave
    ret
Armstrong ENDP

Display PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    mov edx, OFFSET espMsg
    call WriteString
    call WriteDec
    call Crlf

    leave
    ret
Display ENDP

ShowESP PROC
    push ebp
    mov ebp, esp
    mov eax, esp
    mov edx, OFFSET espMsg
    call WriteString
    call WriteDec
    call Crlf
    leave
    ret
ShowESP ENDP

END main
