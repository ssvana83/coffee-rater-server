class Review < ApplicationRecord

  belongs_to :user
  belongs_to :coffee

  validates :content, presence: true
  validates :user_id, uniqueness: {scope: :coffee_id, message: "You already reviewed this coffee, only one review allowed!"}

end
