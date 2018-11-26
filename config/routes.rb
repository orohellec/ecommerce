Rails.application.routes.draw do

  devise_for :administrators
  devise_for :users
 # devise_for :administrators

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static/index'
  root 'static#index'

end
