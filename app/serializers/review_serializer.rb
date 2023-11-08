class ReviewSerializer < ActiveModel::Serializer
  attributes :content, :user_id, :coffee_id, :id

  belongs_to :user
  belongs_to :coffee
end
