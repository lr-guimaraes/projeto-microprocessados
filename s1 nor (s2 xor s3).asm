; S1 nor (S2 xorS3)
start:
    cbi DDRD,3
	cbi DDRD,4
	cbi DDRD,5

test_PD5:
	;if PD3 == 0
	sbis DDRD,3 
	rjmp test1_PD4
	rjmp test2_PD4

	sbic DDRD,3
	rjmp turns_on

test1_PD4: ; 

	sbis DDRD,4  ;if ==1
	rjmp test1_PD3	
	; if PD3 and PD4 are equal to 	
	sbic DDRD,4
	rjmp turns_on

test2_PD4:
	sbic DDRD,4  ;if == 1
	rjmp test2_PD3	
	; if PD3 and PD4 are equal to 	
	sbis DDRD,4
	rjmp turns_on

test1_PD3:
	sbis DDRD,3
	rjmp turns_on
	rjmp turns_off

test2_PD3:
	sbic DDRD,3 
	rjmp turns_off
	rjmp turns_on

turns_on:
	sbi PORTD,6
turns_off:
	cbi PORTD,6
