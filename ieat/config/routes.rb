Rails.application.routes.draw do
  resources :products, only: [:index]
  resources :restaurants
  devise_for :users
  root 'home#index'
end
