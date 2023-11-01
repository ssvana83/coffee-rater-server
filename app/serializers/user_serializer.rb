class UserSerializer < ActiveModel::Serializer
  attributes :username, :email

  has_many :reviews 
  has_many :coffees
end
