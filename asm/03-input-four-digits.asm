; ================================
; ==== [3]. Input four digits ====
; ================================

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AH, 1 ; for input
    INT 21H
    MOV BL, AL

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV AH, 1 ; for input
    INT 21H    
    MOV CL, AL

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV AH, 1 ; for input
    INT 21H    
    MOV BH, AL

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV AH, 1 ; for input
    INT 21H    
    MOV CH, AL
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV DL, BL
    MOV AH, 2 ; for output
    INT 21H    

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV DL, CL
    MOV AH, 2 ; for output
    INT 21H    

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV DL, BH
    MOV AH, 2 ; for output
    INT 21H    

    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    MOV DL, CH
    MOV AH, 2 ; for output
    INT 21H    
MAIN ENDP
END MAIN