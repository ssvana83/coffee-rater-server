class CoffeesController < ApplicationController

  def index
    coffees = Coffee.all
    render json: coffees, status: :ok
  end
  
end


# once the route directs to the controller;
# index route instructs to get all the coffees and render them 
# back as json