class Adm::DashboardController < ApplicationController
  # before_action :require_authentication
  #devise autheticação
  before_action :authenticate_user!
  layout "adm_layout"
  def index
  end
end
