Rails.application.routes.draw do

  resources :coffees
  resources :reviews
  
  resources :users
  post "/signin", to: "sessions#create"
  get "/me", to: "users#show"
  delete "signout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  
end
