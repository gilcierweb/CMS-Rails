class Adm::GaleriasImagensController < ApplicationController
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

    respond_to do |format|
      if @adm_galerias_imagem.save
        format.html { redirect_to @adm_galerias_imagem, notice: 'Galerias imagem was successfully created.' }
        format.json { render :show, status: :created, location: @adm_galerias_imagem }
      else
        format.html { render :new }
        format.json { render json: @adm_galerias_imagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adm/galerias_imagens/1
  # PATCH/PUT /adm/galerias_imagens/1.json
  def update
    respond_to do |format|
      if @adm_galerias_imagem.update(adm_galerias_imagem_params)
        format.html { redirect_to @adm_galerias_imagem, notice: 'Galerias imagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @adm_galerias_imagem }
      else
        format.html { render :edit }
        format.json { render json: @adm_galerias_imagem.errors, status: :unprocessable_entity }
      end
    end
  end

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
