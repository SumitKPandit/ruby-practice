Rails.application.routes.draw do
  resources :crypto_prices
  resources :cryptocurrencies

  get '/companies', to: 'companies#index'
  get '/companies/:id', to: 'companies#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
