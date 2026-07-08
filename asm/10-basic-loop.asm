; =========================================
; ==== [10]. Loop and print characters ====
; =========================================

.MODEL SMALL
.STACK
.CODE
MAIN PROC
    MOV AH, 2
    MOV CX, 256
    MOV DL, 0   
PRINT_LOOP:
    INT 21H
    INC DL
    DEC CX
    JNZ PRINT_LOOP
MAIN ENDP
END MAIN