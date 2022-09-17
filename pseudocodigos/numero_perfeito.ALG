algoritmo "numero perfeito"
var
n,soma, i: inteiro
vet: vetor[1..400] de inteiro
inicio
//Os números perfeitos são iguais à soma de seus divisores
    Escreva("Digite um numero para saber se e um numero perfeito: ")
    leia(n)
    
    para i de 1 ate n-1 faca
         se(n%i = 0) entao
         vet[i] <-i
         fimse
    fimpara

    para i de 1 ate n-1 faca
         se (vet[i] <> 0) entao
             escreva(vet[i])
             soma <- soma + i
         fimse
    fimpara
         escreva(" = ", soma)
    se (soma = n) entao
        escreval(" é um numero perfeito")
    senao
        escreval()
        escreval("nao e um numero perfeito pois a soma dos seus divisores e diferente de ", n)
    fimse
    
    

fimalgoritmo
