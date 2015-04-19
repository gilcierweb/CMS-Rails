class User < ActiveRecord::Base
  belongs_to :role, class_name: "Auth::Role"

  #ROLES = %i[admin moderator author banned]

  #has_secure_password = class macro já nos dá as validações de confirmação de senha e a presença de senha.
  # Além disso, ela cria dois novos atributos
  #virtuais, o password e password_confirmation. http://api.rubyonrails.org/
  has_secure_password

  #validates_confirmation_of :password
  validates_presence_of :email, :username
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email

  before_create :generate_salt

  def generate_salt
    self.salt = BCrypt::Engine.generate_salt
  end

  def self.authenticate(email, password)
    find_by(email: email).try(:authenticate, password)
  end



  # def check_salt
  #   BCrypt::Engine.hash_secret(:salt, self.salt)
  # end

  # def current_user
  #   User.find(@user_session[:user_id])
  # end

  # def self.authenticate(email, password)
  #   user =  User.find_by(:email email).try(:authenticate, password)
  #   if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  #     user
  #   else
  #     nil
  #   end
  # end

end
