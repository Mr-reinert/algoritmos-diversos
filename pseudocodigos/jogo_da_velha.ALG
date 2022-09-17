Algoritmo "VELHA"
Var
mat: vetor[1..3, 1..3] de caractere
i,j,l,c,jogada,cheio: inteiro
player: inteiro

Inicio
jogada <-9
// CADA ESPAÇO RECEBE "." COMO VALOR

    para i de 1 ate 3 faca
        para j de 1 ate 3 faca
            mat[i,j] <- "."
        fimpara
    fimpara
// DESENHA O JOGO DA VELHA
    para i de 1 ate 3 faca
        se (i <> 1)entao
            escreval("_________")
        fimse
        para j de 1 ate 3 faca
            se (j=2 ) entao
                escreva("| ", mat[i,j]:2, "| ")
            senao
                escreva(mat[i,j]:2)
            fimse
        fimpara
        escreval()
    fimpara
// JOGAR COMO X OU BOLINHA
    escreval()
    escreva("QUER JOGAR COMO 'X' ou 'O' [1/2]:")
    leia(player)
        
    enquanto jogada>=1 faca
    
        escolha player
            caso 1
                se (cheio = 1) entao
                    escreval("CASA CHEIA TENTE NOVAMENTE")
                    jogada <- jogada + 1
                    cheio <- cheio -1
                fimse
                escreval()
                eScreval("[X] SUA VEZ!!: ")
                escreva("LINHA{1..3}: ")
                leia(l)
                escreva("COLUNA{1..3}: ")
                leia(c)
                se (mat[l,c] = ".") entao
                    mat[l,c] <- "X"
                    senao
                    cheio <- 1
                    player <- player -1
                fimse
                player <- player +1
            caso 2
                se (cheio = 1) entao
                    escreval("CASA CHEIA TENTE NOVAMENTE")
                    jogada <- jogada + 1
                    cheio <- cheio -1
                fimse
                escreval()
                eScreval("[O] VEZ DO OPONENTE!!: ")
                escreva("LINHA{1..3}: ")
                leia(l)
                escreva("COLUNA{1..3}: ")
                leia(c)
                se (mat[l,c] = ".") entao
                    mat[l,c] <- "O"
                    senao
                    player <- player +1
                    cheio <- 1
                fimse
                player <- player -1
            fimescolha
            
    limpatela
    para i de 1 ate 3 faca
        se (i <> 1)entao
            escreval("_________")
        fimse
        para j de 1 ate 3 faca
            se (j=2 ) entao
                escreva("| ", mat[i,j]:2, "| ")
            senao
                escreva(mat[i,j]:2)
            fimse
        fimpara
        escreval()
    fimpara
             
        jogada <- jogada -1
    fimenquanto
    
    
Fimalgoritmo