Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # GET http://localhost:3000/restaurants/new
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"

  # POST http://localhost:3000/restaurants
  post "/restaurants", to: "restaurants#create"

  # GET http://localhost:3000/restaurants
  get "/restaurants", to: "restaurants#index"

  # GET http://localhost:3000/restaurants/4
  # GET http://localhost:3000/restaurants/2
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"
end
