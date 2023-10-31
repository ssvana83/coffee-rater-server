Rails.application.routes.draw do


  resources :coffees
  # resources is a macro that creates all of the RESTful routes:
  # get "/coffees", to: "coffee#index"
  resources :reviews
  
  resources :users
  post "/signin", to: "sessions#create"
  get "/me", to: "users#show"
  delete "signout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  
end


# get request for coffees informs system to go look in the coffee controller and find
#  the index action