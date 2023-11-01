class CoffeesController < ApplicationController

  def index
    coffees = Coffee.all
    render json: coffees, status: :ok
  end

  # def show
  #   coffee = Coffee.find_by(id: params[:id])
  #   if coffee 
  #     render json: coffee
  #   else
  #     render json: {error: "No such Coffee exists"}, status: :not_found
  #   end
  # end

  def show
    coffee = Coffee.find_by(id: params[:id])
    if coffee 
      if params[:include_reviews] == 'true'
        reviews = coffee.reviews
        render json: { coffee: coffee, reveiws: reviews }
      else
        render json: coffee
      end
    else   
      render json: { error: "No such Coffee exists" }, status: :not_found
    end
  end

  # can now access reviews for each coffee in URL with this: /coffees/1?include_reviews=true


end


# once the route directs to the controller;
# index route instructs to get all the coffees and render them 
# back as json