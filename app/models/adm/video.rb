class Adm::Video < ActiveRecord::Base
  validates :titulo, :codigo, presence: true
  before_validation(on: [ :create, :update ]) do
    self.codigo = parse_youtube(codigo) #codigo = params[:adm_video][:codigo]
  end

  private
  def parse_youtube(url)
   if !url.blank?
     regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
     return url.match(regex)[1]
   end
 end

end
