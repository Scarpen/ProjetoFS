class Arquivo < ActiveRecord::Base
		belongs_to :user
		mount_uploader :arquivo, ArquivoUploader
end
