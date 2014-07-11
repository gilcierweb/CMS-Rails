class Adm::BannersController < ApplicationController
  layout "adm_layout"
  before_action :set_adm_banner, only: [:show, :edit, :update, :destroy]

  # GET /adm/banners
  # GET /adm/banners.json
  def index
    @adm_banners = Adm::Banner.all
  end

  # GET /adm/banners/1
  # GET /adm/banners/1.json
  def show
  end

  # GET /adm/banners/new
  def new
    @adm_banner = Adm::Banner.new
  end

  # GET /adm/banners/1/edit
  def edit
  end

  # POST /adm/banners
  # POST /adm/banners.json
  def create
    @adm_banner = Adm::Banner.new(adm_banner_params)

    respond_to do |format|

        uploaded_io = params[:adm_banner][:imagem]
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end
        @adm_banner[:imagem] = uploaded_io.original_filename

      if @adm_banner.save
        format.html { redirect_to @adm_banner, notice: 'Banner was successfully created.' }
        format.json { render :show, status: :created, location: @adm_banner }
      else
        format.html { render :new }
        format.json { render json: @adm_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adm/banners/1
  # PATCH/PUT /adm/banners/1.json
  def update
    respond_to do |format|
      if @adm_banner.update(adm_banner_params)
        format.html { redirect_to @adm_banner, notice: 'Banner was successfully updated.' }
        format.json { render :show, status: :ok, location: @adm_banner }
      else
        format.html { render :edit }
        format.json { render json: @adm_banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adm/banners/1
  # DELETE /adm/banners/1.json
  def destroy
    @adm_banner.destroy
    respond_to do |format|
      format.html { redirect_to adm_banners_url, notice: 'Banner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adm_banner
      @adm_banner = Adm::Banner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adm_banner_params
      params.require(:adm_banner).permit(:titulo, :imagem, :link)
    end
end
