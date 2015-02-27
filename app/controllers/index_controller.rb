class IndexController < ApplicationController
	def index
		@user = User.new
@arquivo = Arquivo.new
	end

	def lista_usuarios
		@users = User.all
		
	end

end
