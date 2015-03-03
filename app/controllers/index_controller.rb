class IndexController < ApplicationController
	def index
		@user = User.new
@arquivo = Arquivo.new
	@users = User.all
	end

	def lista_usuarios
		@users = User.all
		
	end

end
