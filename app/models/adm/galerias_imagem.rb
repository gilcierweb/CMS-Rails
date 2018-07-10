class Adm::GaleriasImagem < ApplicationRecord
  belongs_to  :galeria, :polymorphic => true
  #validates   :galeria, presence: true
  # GaleriasImagem uploader using carrierwave
  mount_uploader :imagem, GaleriaImagemUploader
end
