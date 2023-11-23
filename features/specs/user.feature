#language: pt

Funcionalidade: Testando metodos HTTP da API ForwardCar

@Teste001
Cenario: Realizando um Post em Emprestimo
    Dado que crio um registro "Pahmorais"
    Quando crio um login "Pahmorais"
    E envio os dados para um metodo Post em Emprestimo com os parametros "Paula", "Av. Teste 321"
    Entao confirmo que meu post foi feito com sucesso validando o retorno do meu body "status: accepted"

@Teste002
Cenario: Realizando um Get em Emprestimos
    Dado que crio um registro "lucassg"
    Quando crio um login "lucassg"
    E envio os dados para um metodo Post em Emprestimo com os parametros "lucas", "Av. Teste 123"
    E envio um metodo Get para Emprestimo
    Entao ao enviar a requisicao valido o retorno do meu body

@Teste003
Cenario: Realizando um Post em Login
    Dado que crio um registro "lucasg"
    Quando crio um login "lucasg"
    Entao valido que meu login foi criado com sucesso "lucasg"