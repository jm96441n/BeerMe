Rails.application.routes.draw do
  resources :beers, except: [:destroy, :update, :edit]
  resources :categories, except: [:destroy, :update, :edit]
  resources :breweries, except: [:destroy, :update, :edit]
  resources :styles, except: [:destroy, :update, :edit]

end
