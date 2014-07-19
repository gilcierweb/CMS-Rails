class Adm::Video < ActiveRecord::Base
  validates :titulo, :url_codigo, presence: true
  before_validation(on: [ :create, :update ]) do
    self.url_codigo = parse_youtube(url_codigo) #url_codigo = params[:adm_video][:url_codigo]
  end

  private
  def parse_youtube(url)
   if !url.blank?
     regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
     return url.match(regex)[1]
   end
 end

end
