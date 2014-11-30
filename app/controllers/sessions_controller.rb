class SessionsController < ApplicationController
  layout "auth_layout"
  before_action :require_no_authentication, only: [:new, :create]
  before_action :require_authentication, only: :destroy

  def new
    @session = Session.new(session)
  end

  def create
    @session = Session.new(session, session_params)
    if @session.authenticate!
      redirect_to root_path, notice: t('flash.notice.signed_in')
    else
      flash[:error] = t('flash.error.login_invalid')
      render :new
    end
  end

  def destroy
    session.destroy
    redirect_to root_path, notice: t('flash.notice.signed_out')
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
