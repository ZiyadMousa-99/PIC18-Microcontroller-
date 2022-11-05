
    #include <xc.inc>
    PSECT Start
    org 0
Start:
    MOVLW 0x00
    MOVWF TRISC
    MOVLW 0XFF
    MOVWF TRISB
    
    CHECK: BTFSS PORTB,2
	   GOTO OFF 
	   BSF PORTC,2
	   GOTO CHECK
    
    OFF:   BCF PORTC,2
	   GOTO CHECK
	  
    GOTO $ 
    END


