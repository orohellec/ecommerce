Rails.application.routes.draw do

  root to: "items#index"

  resources :items
  post "items/:id", to: "items#add_item_to_cart"
  devise_for :administrators
  devise_for :users
  get "items/form", to: "items#form"

end
