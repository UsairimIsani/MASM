TITLE PGM4_2:CASE CONVERSION
EXTERN CONVERT:NEAR
.MODEL SMALL
.STACK 100H
.DATA 
MSG DB "ENTER A LOWER CASE LETTER : $"
.CODE
MAIN PROC
    MOV AX,@DATA ; GET THE DATA SEGMENT 
    MOV DS,AX; SAVE IT IN DATA SEGMENT

    LEA DX,MSG; LOAD THE POINTER IN REGISTER
    MOV AH,09; INTURRUPT TO TAKE INPUT 
    INT 21H; CALL THE INTERRUPT HANDLER

    MOV AH,01H; MOVE THE INPUT IN AL
    INT 21H
    CALL CONVERT;

    MOV AH,4CH; EXIT DOS
    INT 21H;
MAIN ENDP
    END MAIN