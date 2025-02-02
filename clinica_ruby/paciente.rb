class Paciente
    attr_accessor :nome_paciente, :telefone_paciente

    def initialize (nome, telefone)
        @nome = nome
        @telefone = telefone
        validar_dados
    end

    private

    def validar_dados
        validar_nome
        validar_telefone
    end

    def validar_nome
        raise "Nome não pode ser vazio" if @nome.strip.empty?
    end
    
    def validar_telefone
        raise "Telefone deve ter apenas números" unless @telefone.match(/^\d{8,11})
    end



    


end