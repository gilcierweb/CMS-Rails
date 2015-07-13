class Auth::RolesController < ApplicationController
  before_action :authenticate_user! #devise autheticação
  load_and_authorize_resource #metodo cancancan
  layout "adm_layout"
  before_action :set_auth_role, only: [:show, :edit, :update, :destroy]

  # GET /auth/roles
  # GET /auth/roles.json
  def index
    @auth_roles = Auth::Role.all
  end

  # GET /auth/roles/1
  # GET /auth/roles/1.json
  def show
  end

  # GET /auth/roles/new
  def new
    @auth_role = Auth::Role.new
  end

  # GET /auth/roles/1/edit
  def edit
  end

  # POST /auth/roles
  # POST /auth/roles.json
  def create
    @auth_role = Auth::Role.new(auth_role_params)

    respond_to do |format|
      if @auth_role.save
        format.html { redirect_to @auth_role, notice: 'Role was successfully created.' }
        format.json { render :show, status: :created, location: @auth_role }
      else
        format.html { render :new }
        format.json { render json: @auth_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auth/roles/1
  # PATCH/PUT /auth/roles/1.json
  def update
    respond_to do |format|
      if @auth_role.update(auth_role_params)
        format.html { redirect_to @auth_role, notice: 'Role was successfully updated.' }
        format.json { render :show, status: :ok, location: @auth_role }
      else
        format.html { render :edit }
        format.json { render json: @auth_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth/roles/1
  # DELETE /auth/roles/1.json
  def destroy
    @auth_role.destroy
    respond_to do |format|
      format.html { redirect_to auth_roles_url, notice: 'Role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auth_role
      @auth_role = Auth::Role.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auth_role_params
      params.require(:auth_role).permit(:name, :title, :description)
    end
end
