class CoffeesController < ApplicationController

  def index
    coffees = Coffee.all
    render json: coffees, status: :ok
  end

  def show
    coffee = Coffee.find_by(id: params[:id])
    if coffee 
      render json: coffee
    else
      render json: {error: "No such Coffee exists"}, status: :not_found
    end
  end
  
end


# once the route directs to the controller;
# index route instructs to get all the coffees and render them 
# back as json