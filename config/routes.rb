Rails.application.routes.draw do

  root to: "items#index"

  resources :items, only: [:index, :show]
  post "items/:id", to: "items#add_item_to_cart"
  devise_for :administrators
<<<<<<< HEAD
  devise_for :users
  resources :charges, only: [:new, :create]
 
=======
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    passwords: 'users/passwords',
                                    confirmations: 'users/confirmations'}

>>>>>>> 6f112fb13f1844d927e2f6e9a583f8286c9d153e
end
