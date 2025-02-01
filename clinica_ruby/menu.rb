require_relative 'clinica'

class Menu

    def initialize(clinica)
        @clinica = clinica
    end

    def boas_vindas
        puts "-=-=-=-=-=-=-==-=-=-=-=-=-=Bem Vindo à Clínica Ágil-=-=-=-=-=-=-=-"
    end

    def exibir_menu
        puts "Escolha abaixo o que deseja fazer"
        puts "[1] - Cadastrar novo paciente"
        puts "[2] - Listar pacientes cadastrados"
        puts "[3] - Marcar nova consulta"
        puts "[4] - Cancelar Consulta"
        puts "[5] - Sair"
        opcao = gets.chomp

        case opcao
        when "1"
            puts "Cadastrar Pacientes"
        when "2"
            puts "Listar Pacientes"
        when "3"
            puts "Marcar Consulta"
        when "4"
            puts "Cancelar Consulta"
        when "5"
            puts "Obrigado pela visita. Até breve!"
            return #Sai do método
        
        else
            puts "Opção inválida, tente novamente!"
        end

        exibir_menu
    end
    
end