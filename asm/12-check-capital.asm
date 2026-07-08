; ====================================
; ==== [12]. Check capital letter ====
; ====================================

.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB "Enter a character: $"
    MSG2 DB 0DH, 0AH, "Capital letter.$"
    MSG3 DB 0DH, 0AH, "Not a capital letter.$"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    LEA DX, MSG1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H

    CMP AL, 'A'
    JB NOT_CAPITAL

    CMP AL, 'Z'
    JA NOT_CAPITAL

CAPITAL:
    LEA DX, MSG2
    MOV AH, 09H
    INT 21H
    JMP EXIT

NOT_CAPITAL:
    LEA DX, MSG3
    MOV AH, 09H
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN