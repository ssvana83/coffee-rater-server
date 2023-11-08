class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    review = Review.find(params[:id])
    render json:review
  end

  def create
    review = @current_user.reviews.create!(review_params)
    render json: review, status: :created
  end

  def update
    review = @current_user.reviews.find(params[:id])
    review.update!(review_params)
    render json: review
  end

  def destroy
  
  end


private

def review_params
  params.permit(:content, :coffee_id)
end


end
