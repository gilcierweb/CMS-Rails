class HomeController < ApplicationController
  def index
    @banners = Adm::Banner.all
    @noticias = Adm::Noticia.all
  end

  def sobre
  end

  def noticias
    @noticias = Adm::Noticia.all
  end

  def noticia_show
    @noticia = Adm::Noticia.find(params[:id])
  end

  def galerias
  end

  def galeria_show
  end

  def videos
  end

  def contato
  end

  def send_contato
  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_adm_banner
  #     @adm_banner = Adm::Banner.find(params[:id])
  #   end
end