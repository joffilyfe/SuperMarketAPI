Rails.application.routes.draw do

  resources :users
  resources :products do
    collection do
      get 'prices' => 'product_price#index', as: 'products_price'
      get ':id/prices' => 'product_price#show', as: 'product_prices'
    end
  end

  resources :markets, only: [:index, :show]
end
