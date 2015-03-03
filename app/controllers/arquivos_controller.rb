class ArquivosController < ApplicationController
	def new
		@arquivo = Arquivo.new
	end
	def create
		@arquivo = Arquivo.new(arquivo_params)

		if @arquivo.save
			redirect_to root_path, notice: "Arquivo Enviado com sucesso"
		end
	end
  	def arquivo_params
    params.require(:arquivo).permit(:name,:filename, :arquivo_cache, :arquivo, :user_id)
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

	def download
		arquivo = Arquivo.find(params[:meuar])
		urlcomplete = "#{Rails.root}/public" << arquivo.arquivo.url
		send_file urlcomplete
	end

end
