Rails.application.routes.draw do
  root 'home#index'

  resources :beer_styles, only: :index

  resources :beers, only: [:index, :show]

  resource :random_beer, only: :show

  resources :recommended_beers, only: :index
end
