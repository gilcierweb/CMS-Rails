class Adm::Noticia < ActiveRecord::Base
  mount_uploader :img_capa, NoticiaUploader # Tells rails to use this uploader for this model.
  
  validates :titulo, presence: true # Make sure the owner's name is present.
  validates :subtitulo,  presence: true # Make sure the owner's name is present.
  validates :content, presence: true # Make sure the owner's name is present.

end
