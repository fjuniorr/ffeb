# Instruções para uso do pacote ffeb

1. Inicialmente é necessário instalar o pacote *devtools* para possibilitar a instalação de pacotes hosteados no github.

'''r
install.packages("devtools")
library("devtools")
```

2. A função install_github() instala pacotes hosteados no github. O código do pacote pode ser consultado em github.com/fjuniorr/ffeb.

'''r
install_github("fjuniorr/ffeb") # instala o pacote desenvolvido pelo FFEB
library("ffeb")
```

3. Além de funções, também é possível compartilhar dados por meio de pacotes. Vamos acessar uma base de dados com a RCL de todos os estados. 

'''r
data(rcl_estados)
```

4. A parte interessante é que como estamos no ambiente R podemos utilizar todo o ecossistema já disponível. O pacote *forecast* é uma dessas opções.

'''r
auto.arima(rcl_mg)
```

5. A parte mais difícil é realmente pensar em funcionalidades que ainda não estão disponíveis. Como exemplificação, a função abaixo, que está disponível somente pelo pacote ffeb, constroi gráficos para análise dos resíduos

'''r
grafico_residuos(m)
'''
