class Adm::GaleriasImagensController < ApplicationController
  # before_action :require_authentication
  before_action :authenticate_user! #devise autheticação
  load_and_authorize_resource #metodo cancancan
  layout "adm_layout"
  before_action :set_adm_galerias_imagem, only: [:show, :edit, :update, :destroy]

  # GET /adm/galerias_imagens
  # GET /adm/galerias_imagens.json
  def index
    @adm_galerias_imagens = Adm::GaleriasImagem.all
  end

  # GET /adm/galerias_imagens/1
  # GET /adm/galerias_imagens/1.json
  def show
	 #@adm_galeria = Adm::Galeria
	@adm_galerias_imagem =Adm::Galeria.find(params[:id]).galerias_imagens.all # @adm_galeria.preload(:galerias_imagens) #joins(:galerias_imagens) 
	#@adm_galeria = Adm::Galeria.find(params[:id]).galerias_imagens.all
	#abort('gil');
  end

  # GET /adm/galerias_imagens/new
  def new
    @adm_galerias_imagem = Adm::GaleriasImagem.new 
  end

  # GET /adm/galerias_imagens/1/edit
  def edit
  end

  # POST /adm/galerias_imagens
  # POST /adm/galerias_imagens.json
  def create   
	@adm_galerias_imagem = Adm::GaleriasImagem.new(adm_galerias_imagem_params)
      if @adm_galerias_imagem.save  
        head :created     
      else
		head :bad_request      
      end
  end

  # PATCH/PUT /adm/galerias_imagens/1
  # PATCH/PUT /adm/galerias_imagens/1.json
  def update   
      if @adm_galerias_imagem.update(adm_galerias_imagem_params)
		head :created      
      else
		head :bad_request
      end 
  end

# truncated for brevity.
  #def create
  #  @adm_galerias_imagem = Adm::GaleriasImagem.new(adm_galerias_imagem_params)
  #  @adm_galerias_imagem.save
  #end

  # DELETE /adm/galerias_imagens/1
  # DELETE /adm/galerias_imagens/1.json
  def destroy
    @adm_galerias_imagem.destroy
    respond_to do |format|
      format.html { redirect_to adm_galerias_imagens_url, notice: 'Galerias imagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adm_galerias_imagem
      @adm_galerias_imagem = Adm::GaleriasImagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adm_galerias_imagem_params
      params.require(:adm_galerias_imagem).permit(:galeria_id, :imagem)
    end
  end
