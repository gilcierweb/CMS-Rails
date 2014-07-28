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
    #    if !params[:galeria_id].blank?
    #  @adm_galerias_imagem.adm_galeria = Adm::Galeria.find(params[:galeria_id])
    #end
  end

  # GET /adm/galerias_imagens/1/edit
  def edit
  end

  # POST /adm/galerias_imagens
  # POST /adm/galerias_imagens.json
  def create
    #abort("teste #{params[:galeria_id]}")
   # @adm_galerias_imagem = Adm::GaleriasImagem.new(:galeria_id=>params[:galeria_id],:imagem => params[:imagem])

@adm_galerias_imagem = Adm::GaleriasImagem.new(adm_galerias_imagem_params)

    respond_to do |format|

#  if params[:adm_galerias_imagem][:imagem]
#		  params[:adm_galerias_imagem][:imagem].each { |image|
#	
#		   @adm_galerias_imagem.imagem = image
#		   @adm_galerias_imagem.galeria_id = params[:adm_galerias_imagem][:galeria_id]
#		  # @adm_galerias_imagem = (:imagem => image, :galeria_id => params[:adm_galerias_imagem][:galeria_id])
#		   #@adm_galerias_imagemcreate!(:imagem => image, :galeria_id => params[:adm_galerias_imagem][:galeria_id])
#		  @adm_galerias_imagem.save!
#		   }
#		   end
   #abort("Message goes here")
      if @adm_galerias_imagem.save
   
       #abort("Message goes here#{c} #{t}") #abort = die
  
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
