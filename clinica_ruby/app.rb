require_relative 'clinica'
require_relative 'menu'

nova_clinica = Clinica.new
menu = Menu.new(nova_clinica)
menu.boas_vindas
menu.exibir_menu