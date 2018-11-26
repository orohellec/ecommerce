Rails.application.routes.draw do
  get 'items/index'

  root 'items#index'
  resources :items, only: [:index, :show]
end
