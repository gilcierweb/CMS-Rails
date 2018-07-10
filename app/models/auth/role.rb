class Auth::Role < ApplicationRecord
  has_many :users
end
