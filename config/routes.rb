Rails.application.routes.draw do

  root to: "items#index"

  resources :items
  post "items/:id", to: "items#add_item_to_cart"
  get "cart", to: "items#cart"
  post "/cart", to: "items#checkout"
  delete "/cart.:id", to: "items#delete_cart_item"
  delete "/cart", to: "items#delete_all_cart_items"
  devise_for :administrators

  resources :charges, only: [:new, :create]
 

  devise_for :users, controllers: { registrations: 'users/registrations',
                                    passwords: 'users/passwords',
                                    confirmations: 'users/confirmations'}

end
