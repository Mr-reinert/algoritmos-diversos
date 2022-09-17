algoritmo "semnome"
var
op,i,num,posicaoatual : inteiro
vet: vetor[1..10] de inteiro
procedimento menu()
   inicio
      escreval()
      escreval()
      escreval()
      escreval("======================")
      escreval("||  MENU PRINCIPAL  ||")
      escreval("======================")
      escreval("||  1. incluir      ||")
      escreval("||  2. excluir      ||")
      escreval("||  3.listar        ||")
      escreval("||  0.sair          ||")
      escreval("======================")
      fimprocedimento



inicio
posicaoatual <- 1

escreval()
escreval("======================")
escreval("|| INICIO PROGRAMA  ||")
escreval("======================")

repita
    menu()
    escreva("DIGITE UMA OPÇÃO: ")

leia(op)
escreval()

escolha op
    caso 1
        escreval("======================")
        escreval("||     INCLUSAO     ||")
        escreval("======================")
        
        se posicaoatual > 10 entao
            escreval("Vetor cheio!!")
        senao
            escreva("digite o valor a armazenar: ")
            leia(num)
            vet[posicaoatual] <- num
            posicaoatual <- posicaoatual + 1
            escreval()
            escreval("inclusão com sucesso!!")
        fimse
        
    caso 2
       escreval("======================")
       escreval("||     EXCLUSAO     ||")
       escreval("======================")
       //se posicaoatual = 1 entao
       // escreval("vetor vazio")
       //senao
       // posicaoatual <- posicaoatual -1
       // escreval("excluindoo valor", vet[posicaoatual])
       // vet[posicaoatual] <- 0
       // escreval("exclusao com sucesso!!")
       // fimse
       para i de 1 ate posicaoatual -1 faca
           escreval("vet[",i,"]: ", vet[i])
       fimpara
       escreva("digite a posicao a excluir")
       leia(num)

      se (num > 0) E (num < posicaoatual) entao
      para i de num ate posicaoatual -2 faca
          vet[i] <- vet[i+1]
      fimpara
      posicaoatual <- posicaoatual -1
      escreval("excluido com sucesso")
      senao
          escreval("posicao inesistente ou sem valor")
      fimse

    caso 3
        escreval("======================")
        escreval("||     LISTAGEM     ||")
        escreval("======================")
        se posicaoatual = 1 entao
            escreval("======================")
            escreval("||   VETOR VAZIO    ||")
            escreval("======================")
        senao
            para i de 1 ate posicaoatual -1 faca
                escreva(vet[i], " ")
            fimpara
        fimse
    caso 0
        escreval("vai embora filho da puta nao queria vc aqui mesmo")
    outrocaso
        escreval("escolha uma opção valida")


fimescolha

ate op = 0

fimalgoritmo