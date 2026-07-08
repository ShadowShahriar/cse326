; ==========================
; ==== [1]. Hello World ====
; ==========================

.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 'Shayan on command!$'
.CODE

MAIN PROC
    MOV AX, @DATA        ; Initialize data segment
    MOV DS, AX

    LEA DX, MSG          ; Load address of the message
    MOV AH, 09H          ; DOS function to display string
    INT 21H              ; Call DOS interrupt
MAIN ENDP
END MAIN
