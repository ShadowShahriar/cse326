; =============================
; ==== [8]. Hex to Decimal ====
; =============================

.MODEL SMALL
.STACK 100H
.DATA       
    PROMPT_1 DB 'Enter a hex digit: $'
    PROMPT_2 DB 'Equivalent decimal value is: 1$'
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

    SUB BL, 17            
    MOV DL, BL  
    MOV AH, 2 ; for output
    INT 21H          

    ; back to DOS
    MOV AH, 4CH   
MAIN ENDP
END MAIN