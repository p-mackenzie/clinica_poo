require_relative 'paciente'

class Clinica
    attr_accessor :lista_pacientes, :consultas

    def initialize
        @lista_pacientes = []
        @consultas = []
    end

    def cadastrar_paciente
        puts "Digite seu nome: "
        nome = gets.chomp
        puts "Digite seu telefone: "
        telefone = gets.chomp

        novo_paciente = Paciente.new(nome, telefone)
        @lista_pacientes << novo_paciente

        puts <<~TEXT #Heredoc
        Dados cadastrados:
        Nome: #{nome}
        Telefone: #{telefone}
        TEXT
    end

end
