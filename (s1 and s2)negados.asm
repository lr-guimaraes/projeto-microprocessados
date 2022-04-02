;Defines IO
;function: ~S1 and ~S2
start:
	cbi DDRD,3 ;PD3
	cbi DDRD,4 ;PD4

test_PD4:

	sbic DDRD,4		
	rjmp test_PD3  ;if DDRD4 == 0, test PD3, else turns 
	rjmp turns_off

turns_on:
	sbi PORTD,5	

turns_of
	cbi PORTD,5 

test_PD3:

	sbic DDRD,3
	rjmp turns_on
	rjmp turns_off

