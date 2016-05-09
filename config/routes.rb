Rails.application.routes.draw do
  root "beers#index"
  get "/beers/random", to: "beers#random"
  resources :beers, except: [:destroy, :update, :edit]
  resources :categories, except: [:destroy, :update, :edit]
  resources :breweries, except: [:destroy, :update, :edit]
  resources :beer_styles, except: [:destroy, :update, :edit]


end
