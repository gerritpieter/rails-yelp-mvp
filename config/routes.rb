Rails.application.routes.draw do
  resources :magazines do
    resources :ads
  end
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  post"restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
end
