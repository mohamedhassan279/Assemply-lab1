*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
        MOVE.B    X,D0
        MOVE.B    Y,D1
        CMP.B     #50,D0
        BLE       SAVE
        ADD.B     #60,D0
        SUB.B     #10,D1
SAVE    ADD.B     D0,D1
        SUB.B     #20,D1
        MOVE.B    D1,Z
        SIMHALT             ; halt simulator

* Put variables and constants here
    ORG     $2000
X   DC.B    20
Y   DC.B    30
Z   DS.B    1
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
