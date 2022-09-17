clo				;fecha todas as janelas geradas pelo programa
inicio:				;cria um loop no programa

;--------------------- Atribuições de variáveis ---------------------;

mov al, 08			;atribui 08 em HEX a AL

mov bl, 0c			;atribui 12 em HEX a AL

mov cl, 00			;atribui 00 em HEX a AL

push al				;copia AL na pilha de memoria
pop dl				;recupera valor do topo da pilha para DL

;------------------------ Inicio do programa ------------------------;

comp:				;começo da subrotina COMP

cmp al, 08			;compara o valor de AL com 08
jz dia				;pula para subrotina DIA se o resultado da comparação for zero

cmp bl, 0c			;compara o valor de BL com 0c
jz mes				;pula para subrotina MES se o resultado da comparação for zero

cmp cl, 00			;compara o valor de CL com 00
jz ano				;pula para subrotina ANO se o resultado da comparação for zero

jmp inicio

;---------------------------- Subrotinas ----------------------------;

dia:				;começo da subrotina DIA
	mov al, fa		;atribui o valor FA (em HEX) a variavel AL
	out 02			;chama o DISPLAY e mostra o equiavalente a atribuição da variavel anterior

	mov al, ff		;atribui o valor FF (em HEX) a variavel AL
	out 02			;chama o DISPLAY e mostra o equiavalente a atribuição da variavel anterior

	call 60			;chama a linha 60
jmp comp			;pula para o COMP


mes:				;começo da subrotina MES
	mov al, 0a		;atribui o valor 0A (em HEX) a variavel AL
	out 02			;chama o DISPLAY e mostra o equiavalente a atribuição da variavel anterior

	mov al, b7		;atribui o valor B7 (em HEX) a variavel AL
	out 02			;chama o DISPLAY e mostra o equiavalente a atribuição da variavel anterior

	dec bl			;decrementa 01 de BL

	call 60			;chama a linha 60
jmp comp			;pula para o COMP


ano:				;começo da subrotina ANO
	mov al, fa		;atribui o valor FA (em HEX) a variavel AL
	out 02			;chama o DISPLAY e mostra o equiavalente a atribuição da variavel anterior

	mov al, fb		;atribui o valor FB (em HEX) a variavel AL
	out 02			;chama o DISPLAY e mostra o equiavalente a atribuição da variavel anterior

	dec cl			;decrementa 01 de CL

	call 60			;chama a linha 60
jmp comp			;pula para o COMP


org 60				;organiza o codigo abaixo a partir da posição 60

	mov dl, 08		;atribui 08 a DL

	delay:			;começo da subrotina DELAY
		dec dl		;decrementa 01 de DL
		jnz delay	;pula para a subrotina DELAY enquanto a variavel DL for diferente de zero
ret				;retorna para onde a linha foi chamada

end

;-------------------------- Fim do programa -------------------------;
