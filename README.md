# Instruções para uso do pacote ffeb

1. Inicialmente é necessário instalar o pacote *devtools* para possibilitar a instalação de pacotes hosteados no github.

```r
install.packages("devtools")
library("devtools")
```

2. A função install_github() instala pacotes hosteados no github. O código do pacote pode ser consultado em github.com/fjuniorr/ffeb. Com esse mecanismo a distribuição de informações entre os estados ganha em agilidade, tendo em vista que existe um repositório central com a última versão da solução disponível.

```r
install_github("fjuniorr/ffeb") # instala o pacote desenvolvido pelo FFEB
library("ffeb")
```

3. Os pacotes no R também podem ser utilizados para compartilhamento de dados. Para exemplificar inserir a base de dados com a RCL de alguns estados. 

```r
?rcl_estados # informacoes sobre a base de dados

data(rcl_estados) # carrega a base de dados na memória

head(rcl_estados) # visualizando as primeiras linhas
```

4. A parte interessante é que como estamos no ambiente R podemos utilizar todo o ecossistema já disponível. O pacote *forecast* é uma dessas opções. A função *auto.arima()* estima um modelo ARIMA utilizando um algoritmo de seleção automática.

```r
modelo <- auto.arima(rcl_mg) # estimando um ARIMA

predict(modelo, n.ahead = 6) # fazendo previsoes 6 passos a frente
```

5. A parte mais difícil é conceber as funcionalidades que ainda não estão disponíveis e podem ser construídas e disponibilizadas pelo FFEB para os demais Estados. Como exemplificação, a função abaixo, que está disponível somente no pacote ffeb, constroi gráficos para análise dos resíduos, algo ligeiramente mais trabalhoso de se fazer manualmente no R.

```r
grafico_residuos(m) # graficos para analise dos residuos
'''
