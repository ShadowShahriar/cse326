; ====================================
; ==== [9]. Compare three numbers ====
; ====================================

.MODEL SMALL
.STACK 100H
.DATA       
    PROMPT_1 DB 'Enter first number: $'
    PROMPT_2 DB 'Enter second number: $'
    PROMPT_3 DB 'Enter third number: $'
    PROMPT_4 DB 'Greatest number is: $'
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

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H   
    
    LEA DX, PROMPT_2
    MOV AH, 9
    INT 21h

    MOV AH, 1 ; for input
    INT 21H
    MOV CL, AL

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    LEA DX, PROMPT_3
    MOV AH, 9
    INT 21h

    MOV AH, 1 ; for input
    INT 21H
    MOV BH, AL

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    LEA DX, PROMPT_4
    MOV AH, 9
    INT 21h

    CMP BL, CL
    JL  LABEL_1
    JG  LABEL_2

LABEL_1:    CMP CL, BH
            JL  LABEL_3 
            JG  LABEL_4
            JMP EXIT

LABEL_2:    CMP BL, BH
            JL  LABEL_3
            JG  LABEL_6
            JMP EXIT   

LABEL_3:    MOV DL, BH 
            MOV AH, 2
            INT 21H
            JMP EXIT

LABEL_4:    MOV DL, CL 
            MOV AH, 2
            INT 21H
            JMP EXIT

LABEL_6:    MOV DL, BL 
            MOV AH, 2
            INT 21H
            JMP EXIT

EXIT:       
MAIN ENDP
END MAIN