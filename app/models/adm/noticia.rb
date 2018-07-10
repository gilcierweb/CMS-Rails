class Adm::Noticia < ApplicationRecord
  mount_uploader :imagem_capa, NoticiaUploader # Tells rails to use this uploader for this model.
  
  validates :titulo, presence: true # Make sure the owner's name is present.
  validates :subtitulo,  presence: true # Make sure the owner's name is present.
  validates :descricao, presence: true # Make sure the owner's name is present.

end
