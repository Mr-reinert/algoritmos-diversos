Algoritmo "invertenome"
Var
nome, nomecontra: caractere
i, tam: inteiro
Inicio
    escreva("digite um nome: ")
    leia(nome)
    
    tam <- compr(nome)
    nomecontra <- ""
    
    para i de tam ate 1 passo -1 faca
        nomecontra <- nomecontra + copia(nome,i,1)
    fimpara
    
    escreva(nomecontra)


Fimalgoritmo