class Arquivo < ActiveRecord::Base
		belongs_to :user
		mount_uploader :arquivo, ArquivoUploader
		validates :arquivo, presence: true
end
