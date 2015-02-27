class ArquivosController < ApplicationController
	def new
		@arquivo = Arquivo.new
	end
	def create
		@arquivo = Arquivo.new(params[:arquivo])
		if @arquivo.save
			redirect_to action: 'materiais', controller: 'diciplinas', id: id, notice: "Arquivo Enviado com sucesso"

		end
	end


	def show
		@arquivo = Arquivo.find(params[:id])
	end
	def destroy
		@arquivo = Arquivo.find(params[:id])
		if @arquivo.destroy
			redirect_to action: 'materiais', controller: 'diciplinas', id: id
		else
		end
	end

end
