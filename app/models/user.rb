class User < ApplicationRecord
  
  has_many :reviews
  has_many :coffees, through: :reviews

  has_secure_password
  validates :username, :email, presence: true
  #removed the validations for :password and :password_confirmation since that happens through the 
  #magic of password hashing and authentication provided by has_secure_password from the bcrypt gem
  

  # validation here to prevent user form reviewing the same coffee twice 
end
