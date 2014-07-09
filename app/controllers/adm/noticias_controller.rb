class Adm::NoticiasController < ApplicationController
  layout "adm_layout"
  before_action :set_adm_noticia, only: [:show, :edit, :update, :destroy]

  # GET /adm/noticias
  # GET /adm/noticias.json
  def index
    @adm_noticias = Adm::Noticia.all
  end

  # GET /adm/noticias/1
  # GET /adm/noticias/1.json
  def show
  end

  # GET /adm/noticias/new
  def new
    @adm_noticia = Adm::Noticia.new
  end

  # GET /adm/noticias/1/edit
  def edit
  end

  # POST /adm/noticias
  # POST /adm/noticias.json
  def create
    @adm_noticia = Adm::Noticia.new(adm_noticia_params)

    respond_to do |format|
      if @adm_noticia.save
        format.html { redirect_to @adm_noticia, notice: 'Noticia was successfully created.' }
        format.json { render :show, status: :created, location: @adm_noticia }
      else
        format.html { render :new }
        format.json { render json: @adm_noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adm/noticias/1
  # PATCH/PUT /adm/noticias/1.json
  def update
    respond_to do |format|
      if @adm_noticia.update(adm_noticia_params)
        format.html { redirect_to @adm_noticia, notice: 'Noticia was successfully updated.' }
        format.json { render :show, status: :ok, location: @adm_noticia }
      else
        format.html { render :edit }
        format.json { render json: @adm_noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adm/noticias/1
  # DELETE /adm/noticias/1.json
  def destroy
    @adm_noticia.destroy
    respond_to do |format|
      format.html { redirect_to adm_noticias_url, notice: 'Noticia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adm_noticia
      @adm_noticia = Adm::Noticia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adm_noticia_params
      params.require(:adm_noticia).permit(:titulo, :subtitulo, :content, :img_capa, :autor)
    end
end