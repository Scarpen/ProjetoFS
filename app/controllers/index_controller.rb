class IndexController < ApplicationController
	def index
		@user = User.new
	end

	def lista_usuarios
		@users = User.all
	end
	
end
