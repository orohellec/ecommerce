Rails.application.routes.draw do

  root to: "items#index"

  resources :items, only: [:index, :show]
  post "items/:id", to: "items#add_item_to_cart"
  get "cart", to: "items#cart"
  devise_for :administrators
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    passwords: 'users/passwords',
                                    confirmations: 'users/confirmations'}
end
