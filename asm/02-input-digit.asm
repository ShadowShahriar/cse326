; ===================================
; ==== [2]. Input a single digit ====
; ===================================

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AH, 01H ; === take user input ===
    INT 21H
    MOV BL, AL

    MOV AH, 02H
    MOV DL, 0DH ; === new line ===
    INT 21H
    MOV DL, 0AH ; === new line ===
    INT 21H

    MOV DL, BL
    MOV AH, 02H ; === display output  ===
    INT 21H    
MAIN ENDP
END MAIN