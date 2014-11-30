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

  def noticia_view
    @noticia = Adm::Noticia.find(params[:id])
  end

  def galerias
    @galerias = Adm::Galeria.all
  end

  def galeria_view
    @galeria = Adm::Galeria.find(params[:id])
    @galerias_imagem = Adm::GaleriasImagem.where(galeria_id: params[:id])
  end

  def videos
    @videos = Adm::Video.all
  end

  def contato
    @contato = Contato.new
  end

  # POST /send_contatos
  def send_contato
    @contato = Contato.new(contato_params)

    if @contato.valid?
      ContatoMailer.new_message(@contato).deliver
      redirect_to(contato_path, notice: t('flash.notice.send_success')  )
    else
      flash[:error] = t('flash.error.send_mailer')
      render :contato
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def contato_params
    params.require(:contato).permit(:nome, :email, :cidade, :estado, :telefone, :assunto, :mensagem)
  end
end