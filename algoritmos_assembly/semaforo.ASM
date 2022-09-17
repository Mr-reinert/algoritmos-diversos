;aciona saida "farol(out 01)" e aciona suas luzes em ordem correta

OUT 01
;--------------ROTINA PRINCIPAL--------------------;
LOOP:
	MOV AL, 84
	OUT 01


	MOV AL, 85
	ADD AL, 3
	OUT 01


	MOV AL, 95	
	SUB AL, 5
	OUT 01

	
	MOV AL, 35	
	call 30

	OUT 01

		
	MOV AL, 60	
	SUB AL, 10
	OUT 01

	
	MOV AL, 99	
	SUB AL, 9
	OUT 01


JMP LOOP

;--------------------DELAY--------------------------;

org 30
	mov cl, 05

	delay:
		sub al, 1
		dec cl
		jnz delay
;--------------------------------------------------;
ret
	
END
	
	