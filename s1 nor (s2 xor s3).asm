; S1 nor (S2 xorS3)
start:
    cbi DDRD,2
    cbi DDRD,3
    cbi DDRD,4

test_PD4:
	;if PD4 == 0
	cbis DDRD,4 
	rjmp test1_PD3
	rjmp test2_PD3

	sbic DDRD,2
	rjmp turns_on

test1_PD3: ; 

	sbis DDRD,3  ;if ==1
	rjmp test1_PD2	
	; if PD3 and PD4 are equal to 	
	sbic DDRD,3
	rjmp turns_on

test2_PD3:
	sbic DDRD,3  ;if == 1
	rjmp test2_PD2	
	; if PD2 and PD3 are equal to 	
	sbis DDRD,3
	rjmp turns_on

test1_PD2:
	sbis DDRD,2
	rjmp turns_on
	rjmp turns_off

test2_PD2:
	sbic DDRD,2 
	rjmp turns_off
	rjmp turns_on

turns_on:
	sbi PORTD,5
turns_off:
	cbi PORTD,5
