start:
    cbi DDRD,2
    cbi DDRD,3
	cbi DDRD,4
	cbi DDRD,5
	cbi DDRD,6
	rjmp test_PD4

test_PD4:
	sbis PIND,4
	rjmp turnOn_led2  
	rjmp test_PD3

test_PD3:
	sbis PIND,3
	rjmp test1_PD2
	sbic PIND,3
	rjmp test2_PD2

test1_PD2:
	sbic PIND,2
	rjmp turnOn_led2
	rjmp start

test2_PD2:
	sbis PIND,2
	rjmp turnOn_led1
	rjmp turnOn_led2 
	rjmp start 
  
turnOn_led2:
	sbi PORTD,5

turnOn_led1:
	sbi PORTD,5
