class Coffee < ApplicationRecord
  
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true
  validates :coffee_origin, presence: true
  validates :roaster_location, presence: true
  validates :aromatic, presence: true
  validates :roast_level, presence: true
  
end
