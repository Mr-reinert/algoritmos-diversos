algoritmo "palindromo"
var
    nome, nome2, letra1, letra2: caracter
    tam, i, x: inteiro
    flag: logico
inicio
    escreval("Digite uma palavra para ver se ? palindromo: ")
    leia(nome)

    
    tam <- compr(nome)
     x <- tam div 2  // para percorrer at? a metade da palavra
     
     flag <- verdadeiro // come?a entendendo que a palavra ? palindromo

     // percorre a palavra at? a metade e compara
     // a primeira letra com a ?ltima
     // a segunda  letra com a pen?ltima....
     para i de 1 ate x faca            // percorre at? a metade
         letra1 <- copia(nome, i, 1)
         letra2 <- copia(nome, (tam-i+1), 1)
         se letra1 <> letra2 entao
             flag <- falso
         fimse
     fimpara

     // no final verifica a vari?vel flag
     se flag = verdadeiro entao
         escreval("a palavra eh palindromo")
     senao
         escreval("a palavra N?O eh palindromo")
     fimse
     
     
     // outra forma de fazer ? armazenar a palavra ao contrario em outra
     // variavel e, no final, comparar se as 2 palavaras s?o iguais (a inicial e
     // a ao contrario)
     escreval()
     escreval("OUTRA FORMA DE COMPARAR")
     nome2 <- ""
     
     para i de tam ate 1 passo -1 faca
         letra1 <- copia(nome, i, 1)
         nome2 <- nome2 + letra1
     fimpara
     
     se nome = nome2 entao
         escreval("a palavra eh palindromo")
     senao
         escreval("a palavra N?O eh palindromo")
     fimse
     
     escreval()
     escreval()
     
     escreval("A palavra escrita ao contrario: ",nome2)

fimalgoritmo
