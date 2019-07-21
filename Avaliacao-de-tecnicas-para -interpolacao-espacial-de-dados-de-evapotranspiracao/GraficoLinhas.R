#Script para geracao de graficos de linhas utilizando a biblioteca padrao do R-core

#Para a construcao do grafico deste script
#foi utilizado o dataset 'Orange' ja presente no R-core
dadosArvore1 = Orange[(Orange$Tree == 1), ]
dadosArvore2 = Orange[(Orange$Tree == 2), ]
dadosArvore3 = Orange[(Orange$Tree == 3), ]
dadosArvore4 = Orange[(Orange$Tree == 4), ]

#plot: Funcao padrao do R-core para a geracao de graficos de diversos tipos
#parametros usados neste exemplo:
#x    => coluna do dataframe utilizada no eixo x do grafico
#y    => coluna do dataframe utilizada no eixo y do grafico. 
#        Eh possivel adicionar mais linhas no grafico através da 
#        funcao lines (como sera explicado mais abaixo)
#xlab => determina o titulo do eixo x
#ylab => determina o titulo do eixo y
#type => determina o tipo de grafico. Para este exemplo sera usado 'l', valor 
#        para graficos de linha
#col  => Determina a cor usada no grafico. Pode ser especificada atraves do nome ou RGB da cor 
#        desejada. Para mais informacoes, favor verificar a funcao colors (atraves do comando ?colors)
#lty  => Determina o tipo de linha usado no grafico. Pode ser especificada atraves do codigo ou nome do tipo 
#        Para este exemplo sera usado valor 1 (tipo solid)
#main => Titulo do grafico
#Obs.: Se forem adicionadas mais de uma linha para o gráfico, todas as propriedades para
#estilizacao do eixo y corresponderao a primeira linha gerada

#points: Funcao para adicionar uma sequencia de pontos em coordenadas do grafico.
#        Sera usada para estilizar cada linha gerada.
#parametros usados neste exemplo:
#x    => coluna do dataframe utilizada no eixo x do grafico
#y    => coluna do dataframe utilizada no eixo y do grafico. 
#pch  => determina o estilo dos pontos adicionados sobre a linha.
#col  => determina a cor dos pontos

plot(x = dadosArvore4$age, y = dadosArvore4$circumference, xlab='Ano', 
     ylab='Circunferencia',type="l", col="red", lty=1, 
     main = "Aumento de circunferencia de arvores por ano")
points(dadosArvore4$age, dadosArvore4$circumference, pch = 15, col="red")

#lines: funcao usada para adicionar uma nova linha ao grafico 
#parametros usados neste exemplo:
#x    => coluna do dataframe utilizada no eixo x do grafico
#y    => coluna do dataframe utilizada no eixo y do grafico. 
#col  => determina a cor da nova linha adicionada
#lty  => determina o estilo da nova linha adicionada

lines(x = dadosArvore1$age, y = dadosArvore1$circumference, col = 'yellow', lty=1)
points(x = dadosArvore1$age, y = dadosArvore1$circumference, pch = 16, col="yellow")

lines(x = dadosArvore2$age, y = dadosArvore2$circumference, col = 'purple', lty=1)
points(x = dadosArvore2$age, y = dadosArvore2$circumference, pch = 3, col="purple")

lines(x = dadosArvore3$age, y = dadosArvore3$circumference, col = 'green', lty=1)
points(x = dadosArvore3$age, y = dadosArvore3$circumference, pch = 17, col="green")

#legenda: Funcao para adicionar legenda ao grafico. 
#parametros usados neste exemplo:
#x        => coordenada do eixo x para a posicao da legenda
#y        => coordenada do eixo y para a posicao da legenda
#legend   => titulo de cada item da legenda 
#col      => cor de cada item da legenda
#pch      => icone que representa cada icone da legenda
#lty      => tipo de linha de cada icone da legenda
#text.col => cor do texto da legenda
#cex      => tamanho da caixa de legenda
#pt.cex   => tamanho de cada item da legenda
legend(x = 1300, y = 105, 
       legend = c("Arvore 1", "Arvore 2", "Arvore 3", "Arvore 4"), 
       col = c("yellow", "purple", "green", "red"), 
       pch = c(16,3,17,15),
       lty   = c(1,1,1,1),
       text.col = "black",
       cex = 0.8,
       pt.cex = 1.5)
