Rails.application.routes.draw do
  get 'products/index'
  resources :restaurants
  devise_for :users
  root 'home#index'
end
