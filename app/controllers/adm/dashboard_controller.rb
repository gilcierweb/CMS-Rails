class Adm::DashboardController < ApplicationController
  before_action :require_authentication
  layout "adm_layout"
  def index
  end
end
