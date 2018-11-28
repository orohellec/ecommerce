Rails.application.routes.draw do

  root to: "items#index"
  
  resources :items, only: [:index, :show]
  devise_for :administrators
  devise_for :users
  resources :charges, only: [:new, :create]
 
end
