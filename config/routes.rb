Rails.application.routes.draw do

  resources :users
  resources :products
  resources :markets, only: [:index, :show]
end
