;-------------------------------------------------
;Programma di Test RAM Z80
;Scrivo un valore in una locazione di memoria, lo rileggo
;e lo aggiungo ad un altro valore e lo visualizzo
;-------------------------------------------------

.ORG $0000

                LD A,2
                LD (8000H),A
                XOR A
                LD A,(8000H)
                LD B,A
                XOR A
                LD A,3
                ADD A,B
                OUT (01H),A
                
.END
