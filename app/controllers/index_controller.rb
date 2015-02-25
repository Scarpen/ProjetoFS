class IndexController < ApplicationController
	def index

	end

	def lista_usuarios
		@users = User.all
	end
end
