class Adm::Galeria < ActiveRecord::Base
  has_many    :galerias_imagens, :inverse_of => :galeria, :dependent => :destroy
  # enable nested attributes for galerias_imagens through galeria class
  accepts_nested_attributes_for :galerias_imagens, allow_destroy: true
end
