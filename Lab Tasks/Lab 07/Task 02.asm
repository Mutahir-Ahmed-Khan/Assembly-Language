INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter first number: ",0
msg2 BYTE "Enter second number: ",0
msg3 BYTE "Enter third number: ",0

msgU BYTE "Largest (Unsigned) = ",0
msgS BYTE "Largest (Signed) = ",0

num1 SDWORD ?
num2 SDWORD ?
num3 SDWORD ?

largestU SDWORD ?
largestS SDWORD ?

.code
main PROC

    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov num1, eax

    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    mov num2, eax

    mov edx, OFFSET msg3
    call WriteString
    call ReadInt
    mov num3, eax


    mov eax, num1
    mov ebx, num2
    cmp eax, ebx
    jae L1u       
    mov eax, ebx
L1u:
    mov ebx, num3
    cmp eax, ebx
    jae L2u
    mov eax, ebx
L2u:
    mov largestU, eax

    mov eax, num1
    mov ebx, num2
    cmp eax, ebx
    jge L1s      
    mov eax, ebx
L1s:
    mov ebx, num3
    cmp eax, ebx
    jge L2s
    mov eax, ebx
L2s:
    mov largestS, eax

    mov edx, OFFSET msgU
    call WriteString
    mov eax, largestU
    call WriteInt
    call Crlf

    mov edx, OFFSET msgS
    call WriteString
    mov eax, largestS
    call WriteInt
    call Crlf

    exit
main ENDP
END main
