Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :categories, only: :index

  resources :beers, only: :index

  resource :random_beer, only: :show
end
