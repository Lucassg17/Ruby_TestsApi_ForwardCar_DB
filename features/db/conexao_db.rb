class Conection

  def criar_conexao
    require 'pg'

    begin
      @conn = PG::Connection.new(:host => 'lv-dev.betternow.com.br', :user => 'postgres', :password => 'postgres',
      :port => '8002', :dbname => 'Treinamento')
    rescue PG::Error => e
      puts 'Erro ao acessar o Banco - ' + e.message
    end
  end
end

class Register
  def pegar_dados_de_registro(u_name)
    connection = Conection.new

    begin
      result_set = connection.criar_conexao.query("SELECT * FROM registroLucasEPaula WHERE username = '#{u_name}'")

      return result_set

    rescue PG::Error => e
      puts 'Erro - ' + e.message
    end
  end

end

class Emprestimo
  def pegar_dados_de_emprestimo(f_name, address)
    connection = Conection.new

    begin
      result_set = connection.criar_conexao.query("SELECT * FROM emprestimolucasepaula WHERE firstname = '#{f_name}' AND address1 = '#{address}'")

      return result_set

    rescue PG::Error => e
      puts 'Erro - ' + e.message
    end
  end
end

# teste = Conection.new

# puts teste.criar_conexao('lucasg')
