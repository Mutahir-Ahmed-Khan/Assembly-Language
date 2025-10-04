1. Crlf (Register used: None)
:Used for New Line
------------------------------------------------
msg BYTE "New Line",0
     mov eax, 1
     mov edx, OFFSET msg
     call WriteDec
     call Crlf 
     call WriteString
     call Crlf  
     inc eax
     call WriteDec
------------------------------------------------

2. WriteBin (Register used: EAX)
:Convert the value of EAX in a binary Format
------------------------------------------------
     mov eax, 12
     call WriteBin  
OUTPUT: 0000 0000 0000 0000 0000 0000 0000 1100
------------------------------------------------

***.Clrscr
------------------------------------------------
msg BYTE "Enter Any Character: ", 0 
msg1 BYTE "Haa! Got you", 0 
   mov edx, OFFSET msg
   call WriteString

   mov eax, 1000
   call Delay

   call Clrscr

   mov edx, OFFSET msg1
   call WriteString
------------------------------------------------

3. WriteChar (Register used: AL)
:print the contents of AL to a Chararcter
------------------------------------------------
     mov al, 65
     call WriteChar
OUTPUT: A
------------------------------------------------

4. WriteDec, Hex, Int (Regestir used: EAX), String (Register used: EDX)
------------------------------------------------
msg BYTE "Printing the String" , 0

     ;Integer
     mov eax, 19 
     call WriteInt 
     call Crlf

     ;Decimal
     call WriteDec
     call Crlf

     ;hexaDecimal
     mov eax, 0FFF2h
     call WriteHex
     call Crlf

     ;String
     mov edx, OFFSET msg
     call WriteString
OUTPUT: 
+19
19
0000FFF2
Printing the String
------------------------------------------------

5. ReadChar (Register used: AL) 
:wait for keypress and return the value into the AL
------------------------------------------------
msg BYTE "You Pressed: " , 0
     mov edx, OFFSET msg
     call WriteString
     call ReadChar
     call WriteChar
OUTPUT: 
you pressed: (Any Character)
------------------------------------------------

6. ReadDec, Hex, Int (Register used: EAX)
------------------------------------------------
msg1 BYTE "Enter Decimal Number (Unsigned): " , 0
msg2 BYTE "Enter Decimal Number (Signed): " , 0
msg3 BYTE "Enter HexaDecimal Number: " , 0
output BYTE "OUTPUT: ", 0
     ;Decimal
     mov edx, OFFSET msg1
     call WriteString
     call ReadDec
     mov edx, OFFSET output
     call WriteString
     call WriteDec
     
     call Crlf

     ;Integer
     mov edx, OFFSET msg2
     call WriteString
     call ReadInt
     mov edx, OFFSET output
     call WriteString
     call WriteInt

     call Crlf

     ;HexaDecimal
     mov edx, OFFSET msg3
     call WriteString
     call ReadHex
     mov edx, OFFSET output
     call WriteString
     call WriteHex
OUTPUT: 
Enter Decimal Number (Unsigned): 12
OUTPUT: 12
Enter Decimal Number (Signed): -12
OUTPUT: -12
Enter HexaDecimal Number: FFFF
OUTPUT: 0000FFFF
------------------------------------------------

***.ReadString
------------------------------------------------

------------------------------------------------

7. Delay (Register used: EAX) 
:it delays the execution of next instruction by miliseconds stored in EAX, 5000 means 5 seconds
------------------------------------------------
msg BYTE "Get ", 0 
msg1 BYTE "Lost", 0
    mov edx, OFFSET msg
    call WriteString

    mov eax, 5000
    call Delay

    mov edx, OFFSET msg1
    call WriteString 
OUTPUT: Get (5 Seconds Delay) Lost
------------------------------------------------

8.Randomize (Register used: None) 
:it Gives Random Number to randomRange Function, without it randomRange Function will print same number of sequence
:For Example without randomize 42777 for every Execution but with randomize it may be random
------------------------------------------------
 msg BYTE "Random Number: ", 0
call Randomize
    mov ecx, 5
    
    Random: 
        mov edx, OFFSET msg
        call WriteString

        mov eax, 10
        call RandomRange

        call WriteDec
        call Crlf

        mov eax, 3000
        call Delay

        loop Random
OUTPUT: Random Numbers
------------------------------------------------

8. DumpRegs: Display contents of all Registers and Flags
9. DumpMem: Display block of Memory in hexadecimal Format 

10.GetDataTime: Return the Date and Time of the Current System
:Date is stored in EAX and Time is stored in EDX

11.GetMaxXY 
:DX = Coloumns and AX = Rows

12.GetTextColor
:Value is returned in EAX, off the Console Text Color
:AL = Foreground and AH = Background

12.Gotoxy 
:Move cursor to Specific Row and Coloumn
:DH = Row and DL = Coloumn

13. MsgBox
:EDX for String and EBX = Title
------------------------------------------------
msg  BYTE " GAY TEST ",0
msg1 BYTE "You are Gay" , 0
    mov edx, OFFSET msg1
    mov ebx, OFFSET msg
    call MsgBox
OUTPUT: A Message Box Appear on your screen
------------------------------------------------

14.MsgBoxAsk
:Same as MsgBox, but have yes or no option for which 
:EAX = 6 (Yes) and EAX = 7 (No), values can be use for a condition 
------------------------------------------------
msg  BYTE " GAY TEST ",0
msg1 BYTE "are you Gay?" ,0
    mov edx, OFFSET msg1
    mov ebx, OFFSET msg
    call MsgBoxAsk
OUTPUT: Message Box with yes and no option 
------------------------------------------------

15.SetTextColor
eax = background * 16 + foreground
:Put Values in EAX to apply, e.g mov eax, F0h, it means Background is white and text is black
0 = Black       8 = Gray
1 = Blue        9 = Light Blue
2 = Green       A = Light Green
3 = Cyan        B = Light Cyan
4 = Red         C = Light Red
5 = Magenta     D = Light Magenta
6 = Brown       E = Yellow
7 = Light Gray  F = White
------------------------------------------------
msg BYTE "Black text on white background!",0
    mov eax, 0F0h        
    call SetTextColor

    mov edx, OFFSET msg
    call WriteString
    call Crlf
------------------------------------------------

16.WaitMsg
(Wait for user to press any Key)
------------------------------------------------
msg BYTE "ERROR 404",0
    call WaitMsg

    call Crlf
    mov edx, OFFSET msg
    call WriteString
    call Crlf
------------------------------------------------
