class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :id

  has_many :reviews 
  has_many :coffees
end
