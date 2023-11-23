########################## @Teste004 ##########################

Dado('que realizo um metodo Get em Fabrica') do
  @resp_fabrica = metodos_api.get_fabrica
end

Entao('valido o tamanho da lista de fabricas que retorna no meu body') do
  expect(@resp_fabrica.size).to eql(9)
end

########################## @Teste005 ##########################

Dado('que realizo um metodo Get em Modelo') do
  @resp_modelo = metodos_api.get_modelo
end

Entao('apos minha requisicao ser enviada valido o meu body {string}') do |string|
  expect(@resp_modelo[0]['name'].include?(string)).to eql true
end
