library(ggplot2)
library(plotly)

# 2 variables
fig <- ggplot(srag_atual_camp, aes(x=DT_NOTIFIC, y=idade))+
  geom_point()+
  labs(title='Rela��o da data de notifica��o e idade - CAMPINAS',
       x='Meses',
       y='Idades')

# 4 variables
fig <- ggplot(srag_atual_camp, aes(x=DT_NOTIFIC, y=idade, color=raca, shape=sexo))+
  geom_point()+
  labs(title='Rela��o entre data de notifica��o, sexo e idade por ra�a - CAMPINAS',
       x='Data de Notifica��o',
       y='Idade',
       color='Ra�a',
       shape='Sexo')

fig <- plot_ly(srag_atual_camp, x=~DT_NOTIFIC, y=~idade, type = 'scatter',
         mode='markers', color=~sexo) %>%
   layout(title='Rela��o entre data de notifica��o, idade e sexo - CAMPINAS',
          xaxis=list(title='Data de Notifica��o'),
          yaxis=list(title='Idade'))

fig <- ggplot(srag_atual_tupa, aes(x=DT_NOTIFIC, y=regiao, size=idade))+
   geom_point()+
   labs(title='Rela��o entre data e regi�o por idade - TUP�',
        x='Data',
        y='Regi�o',
        size='Idade')

fig <- plot_ly(srag_atual_camp, x=~DT_NOTIFIC, y=~regiao, type = 'scatter',
         mode='markers', size=~idade) %>%
   layout(title='Rela��o entre data e regi�o por idade - TUP�',
          xaxis=list(title='Data de Notifica��o'),
          yaxis=list(title='Regi�o'))