algoritmo "decparabin"
var
    num: inteiro
    resultado: caracter
//-----------------------------------------------------
funcao DecimalParaBinario(n1: inteiro): caracter
var
     res: caracter
     a: inteiro
inicio
     res <- ""
     enquanto n1 > 0 faca
         a  <- n1 mod 2
         se a = 1 entao
             res <- "1" + res
         senao
             res <- "0" + res
         fimse
         n1 <- n1 div 2
     fimenquanto
     retorne res

fimfuncao
//-----------------------------------------------------
inicio
    escreval("Digite um numero...: ")
    leia (num)
    resultado <- DecimalParaBinario(num)

    escreval("O resultado é...: ", resultado)
fimalgoritmo
