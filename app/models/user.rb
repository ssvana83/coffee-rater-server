class User < ApplicationRecord
  
  has_many :reviews
  has_many :coffees, through: :reviews

  has_secure_password
  validates :username, :email, :password, :password_confirmation, presence: true
end
