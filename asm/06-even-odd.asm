; =======================
; ==== [6]. Even-Odd ====
; =======================

.MODEL SMALL
.STACK 100H
.DATA       
    PROMPT_1 DB 'Enter number = $'
    PROMPT_2 DB 'Number is Even$'
    PROMPT_3 DB 'Number is Odd$'
.CODE

MAIN PROC   
    MOV AX, @DATA
    MOV DS, AX      

    LEA DX, PROMPT_1
    MOV AH, 9
    INT 21h

    MOV AH, 1 ; for input
    INT 21H
    MOV BL, AL

    ; ==== new line ====             
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    ; ==== new line ==== 

    AND BL, 1
    JZ EVEN
    JNZ ODD    

    ODD:      LEA DX, PROMPT_3
              MOV AH, 9
              INT 21h
              JMP EXIT 

    EVEN:     LEA DX, PROMPT_2
              MOV AH, 9
              INT 21h 
              JMP EXIT
    EXIT: 
MAIN ENDP
END MAIN