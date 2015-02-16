class Adm::GaleriasController < ApplicationController
  before_action :require_authentication
  layout "adm_layout"
  before_action :set_adm_galeria, only: [:show, :edit, :update, :destroy, :imagem_capa]
  
  # GET /adm/galerias
  # GET /adm/galerias.json
  def index
    @adm_galerias = Adm::Galeria.all
  end

  # GET /adm/galerias/1
  # GET /adm/galerias/1.json
  def show
    @adm_galerias_imagem = Adm::Galeria.find(params[:id]).galerias_imagens.all
  end

  # GET /adm/galerias/new
  def new
    @adm_galeria = Adm::Galeria.new
  end

  # GET /adm/galerias/1/edit
  def edit
  end

  # POST /adm/galerias
  # POST /adm/galerias.json
  def create
    @adm_galeria = Adm::Galeria.new(adm_galeria_params)
    respond_to do |format|
      if @adm_galeria.save       
         # to handle multiple images upload on create
         if params[:adm_galeria][:imagem]
          params[:adm_galeria][:imagem].each { |image|
            @adm_galeria.galerias_imagens.create(imagem: image)
          }
        end
        format.html { redirect_to @adm_galeria, notice: t('galerias.create_success') }
        format.json { render :show, status: :created, location: @adm_galeria }
      else
        format.html { render :new }
        format.json { render json: @adm_galeria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adm/galerias/1
  # PATCH/PUT /adm/galerias/1.json
  def update
    respond_to do |format|
      if @adm_galeria.update(adm_galeria_params)
           # to handle multiple images upload on create
           if params[:adm_galeria][:imagem]
            params[:adm_galeria][:imagem].each { |image|
              @adm_galeria.galerias_imagens.create(imagem: image)
            }
          end
          format.html { redirect_to @adm_galeria, notice: t('galerias.update_success') }
          format.json { render :show, status: :ok, location: @adm_galeria }
        else
          format.html { render :edit }
          format.json { render json: @adm_galeria.errors, status: :unprocessable_entity }
        end
      end
    end

  # DELETE /adm/galerias/1
  # DELETE /adm/galerias/1.json
  def destroy
    @adm_galeria.destroy
    respond_to do |format|
      format.html { redirect_to adm_galerias_url, notice: t('galerias.destroy_success') }
      format.json { head :no_content }
    end
  end

#PATCH/PUT /adm/imagem_capa/1
def imagem_capa
  if @adm_galeria.update(imagem_capa: params[:imagem_capa])
    respond_to do |format|
      format.html { redirect_to adm_galerias_url, notice: t('galerias.imagem_capa_success') }
      format.json { head :no_content }
    end
  end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_adm_galeria
      @adm_galeria = Adm::Galeria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adm_galeria_params
      params.require(:adm_galeria).permit(:titulo, :descricao, :imagem_capa)
    end
  end
