class Session
  include ActiveModel::Model

  attr_accessor :email, :password,:remember_me

  validates_presence_of :email, :password

  def initialize(session, attributes={})
    @session = session
    @email = attributes[:email]
    @password = attributes[:password]
    @remember_me = attributes[:remember_me]
  end


  def authenticate!
    user = User.authenticate(@email,@password)
    if user.present?
      store(user)
      remember(user)
    else
      errors.add(:base,:invalid_login)
      false
    end
  end

  # # Logs in the given user.
  # def log_in(user)
  #   session[:user_id] = user.id
  # end
  def store(user)
    @session[:user_id] = user.id
  end

  # def current_user
  #   User.find(@session[:user_id])
  # end

  # Returns the user corresponding to the remember token cookie.
  def current_user
    if (user_id = @session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        store(user)
        @current_user = user
      end
    end
  end

  def user_signed_in?
    @session[:user_id].present?
  end
  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    # abort(@session[:user_id].to_s)
    # cookies.permanent.signed[:user_id] = user.id
    # cookies.permanent[:remember_token] = user.remember_token
  end

  # def require_user
  #   redirect_to login_path unless current_user
  # end
  def destroy
    @session[:user_id] = nil
    @current_user = nil
  end

  #Como não vamos gravar no banco de dados, sempre retornamos false.
  # def persisted?
  #   false
  # end
end
