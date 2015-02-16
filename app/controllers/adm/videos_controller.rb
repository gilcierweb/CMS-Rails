class Adm::VideosController < ApplicationController
  before_action :require_authentication
  layout "adm_layout"
  before_action :set_adm_video, only: [:show, :edit, :update, :destroy]

  # GET /adm/videos
  # GET /adm/videos.json
  def index
    @adm_videos = Adm::Video.all
  end

  # GET /adm/videos/1
  # GET /adm/videos/1.json
  def show
  end

  # GET /adm/videos/new
  def new
    @adm_video = Adm::Video.new
  end

  # GET /adm/videos/1/edit
  def edit
  end

  # POST /adm/videos
  # POST /adm/videos.json
  def create
    @adm_video = Adm::Video.new(adm_video_params)

    respond_to do |format|
      #@adm_video[:codigo]=parse_youtube(params[:adm_video][:codigo])

      if @adm_video.save
        format.html { redirect_to @adm_video, notice: t('videos.create_success') }
        format.json { render :show, status: :created, location: @adm_video }
      else
        format.html { render :new }
        format.json { render json: @adm_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adm/videos/1
  # PATCH/PUT /adm/videos/1.json
  def update
    respond_to do |format|
      if @adm_video.update(adm_video_params)
        format.html { redirect_to @adm_video, notice: t('videos.update_success') }
        format.json { render :show, status: :ok, location: @adm_video }
      else
        format.html { render :edit }
        format.json { render json: @adm_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adm/videos/1
  # DELETE /adm/videos/1.json
  def destroy
    @adm_video.destroy
    respond_to do |format|
      format.html { redirect_to adm_videos_url, notice: t('videos.destroy_success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adm_video
      @adm_video = Adm::Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adm_video_params
      params.require(:adm_video).permit(:titulo, :url_codigo)
    end    

  end
