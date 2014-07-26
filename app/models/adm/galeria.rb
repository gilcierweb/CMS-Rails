class Adm::Galeria < ActiveRecord::Base
  #o relacionamento tem que colocar o nome do model e não o nome da tabelas
  #no  has_many tem que ser o nome model no plural has_many  :galerias_imagens
  #no  belongs_to  tem que ser o nome model no singular belongs_to :galeria
  has_many    :galerias_imagens, :inverse_of => :galeria, :dependent => :destroy
  # enable nested attributes for galerias_imagens through galeria class
  accepts_nested_attributes_for :galerias_imagens, allow_destroy: true
end
