class ReviewsController < ApplicationController

  def index
    review = Review.all
    render json: review, include: :coffee
  end
end
