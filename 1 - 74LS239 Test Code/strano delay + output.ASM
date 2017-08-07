;-------------------------------------------------
;Programma di TEST2, output porta 1 di tutti i
;numeri da 0 a 255 con delay tra uno e l'altro
;-------------------------------------------------

.ORG $0000
MAIN:
                LD B,255
                LD C,1
                ADD A,C
                OUT (01H),A
                LD H, 255
                LD L, 255
                CALL DELAY
                CP B
                JP NZ, MAIN
                
.END

DELAY:          CALL DELAYIN
                LD H, 255
                CALL DELAYIN
                LD H, 255
                CALL DELAYIN
                LD H, 255
                CALL DELAYIN
                DEC L
                CP L
                JP NZ, DELAY
                RET
DELAYIN:
                DEC H
                CP H
                JP NZ, DELAYIN
                RET

