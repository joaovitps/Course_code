library(ggplot2)
library(plotly)
library(dplyr)
library(rstatix)


ggplot(srag_mod, aes(x=sexo))+
  geom_bar(fill = 'red')+
  labs(title = 'Quantidade por sexo',
       subtitle = 'SRAG',
       x = 'Sexo', y = 'Contagem')


ggplot(srag_mod, aes(raca))+
  geom_bar(fill = 'blue')+
  labs(title = 'Quantidade por ra�a',
       subtitle = "SRAG",
       x = 'Ra�a', y = 'Contagem')


ggplot(srag_mod, aes(x=raca, y=sexo, fill = factor(regiao)))+
  geom_col(position = 'dodge') +
  labs(title = "Regi�o por sexo e ra�a",
       x = 'Ra�a', y = 'Sexo', fill = 'Regi�o')

# horizontal
ggplot(srag_mod, aes(x=raca, y=sexo, fill = factor(regiao)))+
  geom_col(position = 'dodge')+
  labs(title = "Regi�o por sexo e ra�a",
       x = 'Ra�a', y = 'Sexo', fill = 'Regi�o')+
coord_flip() 


# Stacked chart
grafic<-aggregate(idade ~ sexo + regiao, data = srag_mod, FUN = mean)
ggplot(grafic, aes(x = regiao, y = idade, fill = factor(sexo)))+
  geom_col(position = 'stack')
 
srag_mod %>% plot_ly(x = ~raca) %>%
  layout(xaxis= list(title='Ra�a'),
         yaxis= list(title='Quantidade'))