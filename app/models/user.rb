class User < ApplicationRecord
  
  has_many :reviews
  has_many :reviewed_coffees, through: :reviews, source: :coffee
  has_secure_password
end
