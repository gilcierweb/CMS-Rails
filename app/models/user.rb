class User < ActiveRecord::Base
  attr_accessor :remember_token
  belongs_to :role, class_name: "Auth::Role"

  #ROLES = %i[admin moderator author banned]

  #has_secure_password = class macro já nos dá as validações de confirmação de senha e a presença de senha.
  # Além disso, ela cria dois novos atributos
  #virtuais, o password e password_confirmation. http://api.rubyonrails.org/
  has_secure_password

  #validates_confirmation_of :password
  validates_presence_of :email, :username
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  # validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  # validates_uniqueness_of :email

  before_create :generate_salt

  def generate_salt
    self.salt = BCrypt::Engine.generate_salt
  end

  def self.authenticate(email, password)
    find_by(email: email).try(:authenticate, password)
  end

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end
  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
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
