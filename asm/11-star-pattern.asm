; =======================================
; ==== [11]. Star pattern using loop ====
; =======================================

.MODEL SMALL
.STACK 100H
.DATA
    MSG DB "Enter a digit: $"
.CODE

MAINPROC:
	MOV AX, @DATA
	MOV DS, AX

	LEA DX, MSG
	MOV AH, 09H
	INT 21H

	MOV AH, 01H
	INT 21H
	SUB AL, '0'
	MOV BH, AL

	MOV DL, 0DH
	MOV AH, 02H
	INT 21H
	MOV DL, 0AH
	INT 21H
	MOV CL, 1

ROW:
    MOV BL, CL

COL:
    MOV DL, '*'
    MOV AH, 02H
    INT 21H

    DEC BL
    JNZ COL

    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    INC CL
    CMP CL, BH
    JBE ROW
END MAINPROC