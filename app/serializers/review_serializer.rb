class ReviewSerializer < ActiveModel::Serializer
  attributes :content, :user_id, :coffee_id, :id, :username

  belongs_to :user
  belongs_to :coffee

  def username
    object.user.username
  end
  #this custom method in the reviews serializer enables access to the username for the review
end
