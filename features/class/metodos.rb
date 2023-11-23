class MetodosAPI

  URL_REGISTRO = 'http://localhost:3434/cars-app/register'
  URL_LOGIN = 'http://localhost:3434/cars-app/api/login'
  URL_EMPRESTIMO = 'http://localhost:3434/cars-app/api/loanApp'
  URL_MODELO = 'http://localhost:3434/cars-app/carShop/models'
  URL_FABRICAS = 'http://localhost:3434/cars-app/carShop/makes'

  def criar_registro(body)
    resp_registro = HTTParty.post(URL_REGISTRO,
    :body => body)
  end

  def criar_login(body)
    resp_login = HTTParty.post(URL_LOGIN, :headers => {"Content-Type" => "application/json"},
    :body => body.to_json)
  end

  def criar_emprestimo(body, token)
    resp_emprestimo = HTTParty.post(URL_EMPRESTIMO,
    :headers => {'Authorization' => "Bearer #{token}"},
    :body => body)
  end

  def pega_um_emprestimo(token)
    resp_get_emprestimo = HTTParty.get(URL_EMPRESTIMO,
    :headers => {'Authorization' => "Bearer #{token}"})
  end

  def get_fabrica
    resp_get_fabrica = HTTParty.get(URL_FABRICAS, :headers => {"Content-Type" => "application/json"})
  end

  def get_modelo
    resp_get_modelo = HTTParty.get(URL_MODELO, :headers => {"Content-Type" => "application/json"})
  end
end
