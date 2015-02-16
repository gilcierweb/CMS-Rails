class Auth::Role < ActiveRecord::Base
  has_many  :users
end
