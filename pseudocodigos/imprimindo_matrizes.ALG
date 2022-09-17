algoritmo "semnome"
var
    mat: vetor[1..7,1..7] de inteiro
    i, j, maior, soma: inteiro
inicio
    soma <- 0
    // alimenta a matriz com valores aleatórios
    aleatorio on
    para i de 1 ate 7 faca
        para j de 1 ate 7 faca
            leia(mat[i,j])
            soma <- soma +  mat[i,j]
        fimpara
    fimpara
    aleatorio off
    
    escreval()
    escreval()
    escreval("-- IMPRIMINDO OS VALORES DA MATRIZ --")

    maior <- mat[1,1]

    para i de 1 ate 7 faca
        para j de 1 ate 7 faca
            escreva(mat[i,j]:4)// :4 significa que cada valor ocupará 4 caracteres (mesmo se tiver só 1 dígito)
            se mat[i,j] > maior entao
                maior <- mat[i,j]
            fimse
        fimpara
        escreval()// da <enter> quando termina uma linha
    fimpara
    
    escreval("maior valor...: ", maior)

    escreval()
    escreval(" -- IMPRIMINDO SOMENTE A DIAGONAL PRINCIPAL -- ")
    para i de 1 ate 7 faca
        para j de 1 ate 7 faca
            se i = j entao
                escreva(mat[i,j]:4)
            senao
                escreva(" .  ")
            fimse
        fimpara
        escreval()//<enter>
    fimpara


    escreval()
    escreval(" -- IMPRIMINDO SOMENTE A DIAGONAL SECUNDARIA -- ")
    para i de 1 ate 7 faca
        para j de 1 ate 7 faca
            se i = 8-j entao
                escreva(mat[i,j]:4)
            senao
                escreva(" .  ")
            fimse
        fimpara
        escreval()//<enter>
    fimpara


    escreval()
    escreval(" -- IMPRIMINDO SOMENTE A METADE SUPERIOR -- ")
    para i de 1 ate 7 faca
        para j de 1 ate 7 faca
            se i <= j entao  // se i <= j para imprimir, nas outras a comparação é se i = j
                             // para imprimir a metade inferior fazer se i >= j
                escreva(mat[i,j]:4)
            senao
                escreva(" .  ")
            fimse
        fimpara
        escreval()//<enter>
    fimpara



    escreval()
    escreval()
    escreval()
    escreval()
fimalgoritmo
