#language: pt

Funcionalidade: Testando metodos Get da API ForwardCar

  @Teste004 
  Cenario: Realizando um Get em Fabrica
    Dado que realizo um metodo Get em Fabrica
    Entao valido o tamanho da lista de fabricas que retorna no meu body

  @Teste005 
  Cenario: Realizando um Get em Modelo
    Dado que realizo um metodo Get em Modelo
    Entao apos minha requisicao ser enviada valido o meu body "RLX-B"