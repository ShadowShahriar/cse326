; ==============================
; ==== [4]. Add two numbers ====
; ==============================

.MODEL SMALL
.STACK 100H
.DATA       
    PROMPT_1 DB 'First number = $'
    PROMPT_2 DB 'Second number = $'
    PROMPT_3 DB 'Result is = $'
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

    ; ==== addition ====
    ADD BL, CL
    ; ==== addition ====            

    LEA DX, PROMPT_3
    MOV AH, 9
    INT 21h

    SUB BL, 48            
    MOV DL, BL  
    MOV AH, 2 ; for output
    INT 21H          
MAIN ENDP
END MAIN