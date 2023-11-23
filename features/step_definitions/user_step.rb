########################## @Teste001 ##########################

Dado('que crio um registro {string}') do |string|
  dados_registro = Register.new
  result_set = dados_registro.pegar_dados_de_registro(string)

  result_set.each do |column|
    @body_registro = {
      "firstname": column['firstname'],
      "lastname": column['lastname'],
      "username": column['username'],
      "password": column['passwrd']
    }
    @resp_registro = metodos_api.criar_registro(@body_registro)

  end
end

Quando('crio um login {string}') do |string|
  dados_login = Register.new
  result_set = dados_login.pegar_dados_de_registro(string)

  result_set.each do |column|
    @body_login = {
      "username": column['username'],
      "password": column['passwrd']
    }
    @resp_login = metodos_api.criar_login(@body_login)
    @token = @resp_login['access_token']
  end
end

Quando('envio os dados para um metodo Post em Emprestimo com os parametros {string}, {string}') do |string, string2|
  dados_emprestimo = Emprestimo.new
  result_set = dados_emprestimo.pegar_dados_de_emprestimo(string, string2)

  result_set.each do |column|
    @body_emprestimo = {
      "firstname": column['firstname'],
      "lastname": column['lastname'],
      "address1": column['address1'],
      "city": column['city'],
      "state": column['state'],
      "zip": column['zip'],
      "country": column['country'],
      "dob": column['dob'],
      "ssn": column['ssn'],
      "employer": column['employer'],
      "phoneNumber": column['phonenumber'],
      "durationOfJob": column['durationofjob'],
      "income": column['income'],
      "loanTerm": column['loanterm'],
      "loanAmount": column['loanamount'],
      "validateAddress": column['validateaddress']
    }
    @resp_emp = metodos_api.criar_emprestimo(@body_emprestimo, @token)
  end
end

Entao('confirmo que meu post foi feito com sucesso validando o retorno do meu body {string}') do |string|
  expect(@resp_emp.include?(string)).to eql true
end

########################## @Teste002 ##########################

Quando('envio um metodo Get para Emprestimo') do
  @resp_get_emp = metodos_api.pega_um_emprestimo(@token)
end

Entao('ao enviar a requisicao valido o retorno do meu body') do
  expect(@resp_get_emp.code).to eql(200)
end

########################## @Teste003 ##########################

Entao('valido que meu login foi criado com sucesso {string}') do |string|
  expect(@resp_login['username']).to eql(string)
end
