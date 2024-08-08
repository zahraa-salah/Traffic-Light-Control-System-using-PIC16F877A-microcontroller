
_main:

;MyProject.c,11 :: 		void main() {
;MyProject.c,12 :: 		adcon1=7;
	MOVLW      7
	MOVWF      ADCON1+0
;MyProject.c,13 :: 		portc.b4=0;  portc.b5=0;        portc.b7=0;
	BCF        PORTC+0, 4
	BCF        PORTC+0, 5
	BCF        PORTC+0, 7
;MyProject.c,14 :: 		trisb= 0;
	CLRF       TRISB+0
;MyProject.c,15 :: 		trisc=0;
	CLRF       TRISC+0
;MyProject.c,16 :: 		trisd=0;
	CLRF       TRISD+0
;MyProject.c,17 :: 		trise=0;
	CLRF       TRISE+0
;MyProject.c,18 :: 		trisa.b0=0;
	BCF        TRISA+0, 0
;MyProject.c,19 :: 		portA.b0=0;
	BCF        PORTA+0, 0
;MyProject.c,20 :: 		portc.b4=0;
	BCF        PORTC+0, 4
;MyProject.c,21 :: 		portc.b5=0;
	BCF        PORTC+0, 5
;MyProject.c,22 :: 		porte.b0=0;
	BCF        PORTE+0, 0
;MyProject.c,23 :: 		trisa.b4=1;
	BSF        TRISA+0, 4
;MyProject.c,24 :: 		for(;;){
L_main0:
;MyProject.c,25 :: 		j=3;
	MOVLW      3
	MOVWF      _j+0
;MyProject.c,26 :: 		k=3;
	MOVLW      3
	MOVWF      _k+0
;MyProject.c,27 :: 		number =21;
	MOVLW      21
	MOVWF      _number+0
;MyProject.c,28 :: 		number2 =18;
	MOVLW      18
	MOVWF      _number2+0
;MyProject.c,29 :: 		number3 =35;
	MOVLW      35
	MOVWF      _number3+0
;MyProject.c,30 :: 		number4 =32;
	MOVLW      32
	MOVWF      _number4+0
;MyProject.c,31 :: 		bil=21;
	MOVLW      21
	MOVWF      _bil+0
;MyProject.c,32 :: 		bil2=18;
	MOVLW      18
	MOVWF      _bil2+0
;MyProject.c,33 :: 		bil3=35;
	MOVLW      35
	MOVWF      _bil3+0
;MyProject.c,34 :: 		bil4=32;
	MOVLW      32
	MOVWF      _bil4+0
;MyProject.c,35 :: 		while(number3!=0){
L_main3:
	MOVF       _number3+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,36 :: 		if(portA.b4==1){
	BTFSS      PORTA+0, 4
	GOTO       L_main5
;MyProject.c,37 :: 		red1=0;
	BCF        PORTC+0, 0
;MyProject.c,38 :: 		red2=0;
	BCF        PORTE+0, 0
;MyProject.c,39 :: 		yellow1=0;
	BCF        PORTC+0, 1
;MyProject.c,40 :: 		yellow2=0;
	BCF        PORTE+0, 1
;MyProject.c,41 :: 		green1=0;
	BCF        PORTC+0, 2
;MyProject.c,42 :: 		green2=0;
	BCF        PORTE+0, 2
;MyProject.c,43 :: 		if(number>=0){
	MOVLW      128
	XORWF      _number+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;MyProject.c,44 :: 		red1=1;
	BSF        PORTC+0, 0
;MyProject.c,45 :: 		portb=number;
	MOVF       _number+0, 0
	MOVWF      PORTB+0
;MyProject.c,46 :: 		number--;
	DECF       _number+0, 1
;MyProject.c,47 :: 		bil--;
	DECF       _bil+0, 1
;MyProject.c,48 :: 		if(bil==15)
	MOVF       _bil+0, 0
	XORLW      15
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;MyProject.c,49 :: 		number=number-6;
	MOVLW      6
	SUBWF      _number+0, 1
L_main7:
;MyProject.c,50 :: 		}
	GOTO       L_main8
L_main6:
;MyProject.c,51 :: 		else if(number4>0 ){
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _number4+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;MyProject.c,52 :: 		red1=0;
	BCF        PORTC+0, 0
;MyProject.c,53 :: 		green1=1;
	BSF        PORTC+0, 2
;MyProject.c,54 :: 		portb=number4;
	MOVF       _number4+0, 0
	MOVWF      PORTB+0
;MyProject.c,55 :: 		number4--;
	DECF       _number4+0, 1
;MyProject.c,56 :: 		bil4--;
	DECF       _bil4+0, 1
;MyProject.c,57 :: 		if(bil4==31) number4-=6;
	MOVF       _bil4+0, 0
	XORLW      31
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	MOVLW      6
	SUBWF      _number4+0, 1
L_main10:
;MyProject.c,58 :: 		if(bil4==21) number4-=6;
	MOVF       _bil4+0, 0
	XORLW      21
	BTFSS      STATUS+0, 2
	GOTO       L_main11
	MOVLW      6
	SUBWF      _number4+0, 1
L_main11:
;MyProject.c,60 :: 		}
	GOTO       L_main12
L_main9:
;MyProject.c,61 :: 		else if(k>=0){
	MOVLW      128
	XORWF      _k+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main13
;MyProject.c,62 :: 		green1=0;
	BCF        PORTC+0, 2
;MyProject.c,63 :: 		yellow1=1;
	BSF        PORTC+0, 1
;MyProject.c,64 :: 		portb=k;
	MOVF       _k+0, 0
	MOVWF      PORTB+0
;MyProject.c,65 :: 		k--;
	DECF       _k+0, 1
;MyProject.c,66 :: 		}
L_main13:
L_main12:
L_main8:
;MyProject.c,67 :: 		if(number2>0){
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _number2+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main14
;MyProject.c,68 :: 		green2=1;
	BSF        PORTE+0, 2
;MyProject.c,69 :: 		portd=number2;
	MOVF       _number2+0, 0
	MOVWF      PORTD+0
;MyProject.c,70 :: 		number2--;
	DECF       _number2+0, 1
;MyProject.c,71 :: 		bil2--;
	DECF       _bil2+0, 1
;MyProject.c,72 :: 		if(bil2==15)
	MOVF       _bil2+0, 0
	XORLW      15
	BTFSS      STATUS+0, 2
	GOTO       L_main15
;MyProject.c,73 :: 		number2=number2-6;
	MOVLW      6
	SUBWF      _number2+0, 1
L_main15:
;MyProject.c,74 :: 		}
	GOTO       L_main16
L_main14:
;MyProject.c,75 :: 		else if(j>=0){
	MOVLW      128
	XORWF      _j+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main17
;MyProject.c,76 :: 		green2=0;
	BCF        PORTE+0, 2
;MyProject.c,77 :: 		yellow2=1;
	BSF        PORTE+0, 1
;MyProject.c,78 :: 		portd=j;
	MOVF       _j+0, 0
	MOVWF      PORTD+0
;MyProject.c,79 :: 		j--;
	DECF       _j+0, 1
;MyProject.c,80 :: 		}
	GOTO       L_main18
L_main17:
;MyProject.c,81 :: 		else if(number3>=0){
	MOVLW      128
	XORWF      _number3+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main19
;MyProject.c,82 :: 		yellow2=0;
	BCF        PORTE+0, 1
;MyProject.c,83 :: 		red2=1;
	BSF        PORTE+0, 0
;MyProject.c,84 :: 		portd=number3;
	MOVF       _number3+0, 0
	MOVWF      PORTD+0
;MyProject.c,85 :: 		number3--;
	DECF       _number3+0, 1
;MyProject.c,86 :: 		bil3--;
	DECF       _bil3+0, 1
;MyProject.c,87 :: 		if(bil3==21) number3-=6;
	MOVF       _bil3+0, 0
	XORLW      21
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVLW      6
	SUBWF      _number3+0, 1
L_main20:
;MyProject.c,88 :: 		if(bil3==31) number3-=6;
	MOVF       _bil3+0, 0
	XORLW      31
	BTFSS      STATUS+0, 2
	GOTO       L_main21
	MOVLW      6
	SUBWF      _number3+0, 1
L_main21:
;MyProject.c,89 :: 		}
L_main19:
L_main18:
L_main16:
;MyProject.c,90 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;MyProject.c,91 :: 		}
	GOTO       L_main23
L_main5:
;MyProject.c,92 :: 		else if(portA.b4==0){
	BTFSC      PORTA+0, 4
	GOTO       L_main24
;MyProject.c,93 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,94 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,96 :: 		red1=0;
	BCF        PORTC+0, 0
;MyProject.c,97 :: 		red2=0;
	BCF        PORTE+0, 0
;MyProject.c,98 :: 		yellow1=0;
	BCF        PORTC+0, 1
;MyProject.c,99 :: 		yellow2=0;
	BCF        PORTE+0, 1
;MyProject.c,100 :: 		green1=0;
	BCF        PORTC+0, 2
;MyProject.c,101 :: 		green2=0;
	BCF        PORTE+0, 2
;MyProject.c,103 :: 		if(porta.b3==0){
	BTFSC      PORTA+0, 3
	GOTO       L_main25
;MyProject.c,104 :: 		while(portA.b4==0){
L_main26:
	BTFSC      PORTA+0, 4
	GOTO       L_main27
;MyProject.c,106 :: 		if(portA.b4==0 && portA.b3==0 && green2==0 ){
	BTFSC      PORTA+0, 4
	GOTO       L_main30
	BTFSC      PORTA+0, 3
	GOTO       L_main30
	BTFSC      PORTE+0, 2
	GOTO       L_main30
L__main47:
;MyProject.c,107 :: 		yellow1=1;
	BSF        PORTC+0, 1
;MyProject.c,108 :: 		red2=1;
	BSF        PORTE+0, 0
;MyProject.c,109 :: 		red1=0;
	BCF        PORTC+0, 0
;MyProject.c,110 :: 		yellow2=0;
	BCF        PORTE+0, 1
;MyProject.c,111 :: 		green1=0;
	BCF        PORTC+0, 2
;MyProject.c,112 :: 		green2=0;
	BCF        PORTE+0, 2
;MyProject.c,113 :: 		for(i=3;i>=0;i--){
	MOVLW      3
	MOVWF      _i+0
L_main31:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main32
;MyProject.c,114 :: 		portb=i;
	MOVF       _i+0, 0
	MOVWF      PORTB+0
;MyProject.c,115 :: 		portd=i;
	MOVF       _i+0, 0
	MOVWF      PORTD+0
;MyProject.c,116 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
	NOP
	NOP
;MyProject.c,117 :: 		if(portA.b4==1)  break;
	BTFSS      PORTA+0, 4
	GOTO       L_main35
	GOTO       L_main32
L_main35:
;MyProject.c,113 :: 		for(i=3;i>=0;i--){
	DECF       _i+0, 1
;MyProject.c,118 :: 		}
	GOTO       L_main31
L_main32:
;MyProject.c,119 :: 		yellow1=0;
	BCF        PORTC+0, 1
;MyProject.c,120 :: 		red2=0;
	BCF        PORTE+0, 0
;MyProject.c,121 :: 		red1=1;
	BSF        PORTC+0, 0
;MyProject.c,122 :: 		yellow2=0;
	BCF        PORTE+0, 1
;MyProject.c,123 :: 		green1=0;
	BCF        PORTC+0, 2
;MyProject.c,124 :: 		green2=1;
	BSF        PORTE+0, 2
;MyProject.c,125 :: 		}
	GOTO       L_main36
L_main30:
;MyProject.c,127 :: 		else if(portA.b4==0 && portA.b3==0 && green2==1 ){
	BTFSC      PORTA+0, 4
	GOTO       L_main39
	BTFSC      PORTA+0, 3
	GOTO       L_main39
	BTFSS      PORTE+0, 2
	GOTO       L_main39
L__main46:
;MyProject.c,128 :: 		yellow1=0;
	BCF        PORTC+0, 1
;MyProject.c,129 :: 		red2=0;
	BCF        PORTE+0, 0
;MyProject.c,130 :: 		red1=1;
	BSF        PORTC+0, 0
;MyProject.c,131 :: 		yellow2=1;
	BSF        PORTE+0, 1
;MyProject.c,132 :: 		green1=0;
	BCF        PORTC+0, 2
;MyProject.c,133 :: 		green2=0;
	BCF        PORTE+0, 2
;MyProject.c,134 :: 		for(i=3;i>=0;i--){
	MOVLW      3
	MOVWF      _i+0
L_main40:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main41
;MyProject.c,135 :: 		portb=i;
	MOVF       _i+0, 0
	MOVWF      PORTB+0
;MyProject.c,136 :: 		portd=i;
	MOVF       _i+0, 0
	MOVWF      PORTD+0
;MyProject.c,137 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main43:
	DECFSZ     R13+0, 1
	GOTO       L_main43
	DECFSZ     R12+0, 1
	GOTO       L_main43
	DECFSZ     R11+0, 1
	GOTO       L_main43
	NOP
	NOP
;MyProject.c,138 :: 		if(portA.b4==1)  break;
	BTFSS      PORTA+0, 4
	GOTO       L_main44
	GOTO       L_main41
L_main44:
;MyProject.c,134 :: 		for(i=3;i>=0;i--){
	DECF       _i+0, 1
;MyProject.c,139 :: 		}
	GOTO       L_main40
L_main41:
;MyProject.c,140 :: 		yellow1=0;
	BCF        PORTC+0, 1
;MyProject.c,141 :: 		red2=1;
	BSF        PORTE+0, 0
;MyProject.c,142 :: 		red1=0;
	BCF        PORTC+0, 0
;MyProject.c,143 :: 		yellow2=0;
	BCF        PORTE+0, 1
;MyProject.c,144 :: 		green1=1;
	BSF        PORTC+0, 2
;MyProject.c,145 :: 		green2=0;
	BCF        PORTE+0, 2
;MyProject.c,146 :: 		}
L_main39:
L_main36:
;MyProject.c,148 :: 		}
	GOTO       L_main26
L_main27:
;MyProject.c,150 :: 		}
L_main25:
;MyProject.c,152 :: 		}
L_main24:
L_main23:
;MyProject.c,153 :: 		}
	GOTO       L_main3
L_main4:
;MyProject.c,154 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,155 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,156 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main45:
	DECFSZ     R13+0, 1
	GOTO       L_main45
	DECFSZ     R12+0, 1
	GOTO       L_main45
	DECFSZ     R11+0, 1
	GOTO       L_main45
	NOP
	NOP
;MyProject.c,158 :: 		}
	GOTO       L_main0
;MyProject.c,159 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
