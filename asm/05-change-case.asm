; ==========================
; ==== [5]. Change case ====
; ==========================

.MODEL SMALL
.STACK 100H
.DATA       
    PROMPT_1 DB 'Uppercase Letter = $'
    PROMPT_2 DB 'Lowercase Letter = $'
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

    LEA DX, PROMPT_2
    MOV AH, 9
    INT 21h

    ADD BL, 32            
    MOV DL, BL  
    MOV AH, 2 ; for output
    INT 21H          
MAIN ENDP
END MAIN