class Coffee < ApplicationRecord
  # belongs_to :user
  has_many :reviews
  has_many :coffees, through: :reviews
  
end
