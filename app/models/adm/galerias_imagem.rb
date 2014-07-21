class Adm::GaleriasImagem < ActiveRecord::Base
  belongs_to  :galeria
  validates   :galeria, presence: true
  # GaleriasImagem uploader using carrierwave
  mount_uploader :imagem, GaleriaImagemUploader
end
