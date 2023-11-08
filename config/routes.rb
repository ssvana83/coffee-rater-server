Rails.application.routes.draw do

  resources :coffees
  # resources generator is a macro that blows up and creates all of the RESTful routes:
  # get "/coffees", to: "coffee#index" 
  resources :reviews
  
  resources :users
  post "/signin", to: "sessions#create"
  get "/me", to: "users#show"
  delete "signout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  
  get '/myreviews', to: 'users#show_my_reviews'

end


# 1. GET req. for coffees tells to go look in the coffee_controller and find index action
# 2. Order matters! Pattern matching happens from top to bottom.