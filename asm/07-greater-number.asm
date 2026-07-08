; =============================
; ==== [7]. Greater number ====
; =============================

.MODEL SMALL
.STACK 100H
.DATA       
    PROMPT_1 DB 'First number = $'
    PROMPT_2 DB 'Second number = $'
    PROMPT_3 DB 'Greater number = $'
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

    MOV AH, 1 ; for input
    INT 21H    
    MOV CL, AL

    ; ==== new line ====    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H                 
    ; ==== new line ====           

    LEA DX, PROMPT_3
    MOV AH, 9
    INT 21h

    CMP BL, CL
    JG GRT_1
    JL GRT_2

    GRT_1:                
            MOV DL, BL  
            MOV AH, 2
            INT 21H
            JMP EXIT
    GRT_2:                
            MOV DL, CL  
            MOV AH, 2
            INT 21H
            JMP EXIT
    EXIT:          

    ; back to DOS
    MOV AH, 4CH   
MAIN ENDP
END MAIN