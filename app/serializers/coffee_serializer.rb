class CoffeeSerializer < ActiveModel::Serializer
  attributes :name, :coffee_origin, :roaster_location, :aroma, :roast_level, :id

  has_many :reviews
  has_many :users
end
