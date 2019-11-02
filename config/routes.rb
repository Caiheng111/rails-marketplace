Rails.application.routes.draw do

  get '/charities/listings', to: 'charities#listings'
  post '/charities/new', to: 'charities#create'
  

  resources :line_items
  resources :carts
  resources :charities
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  

  get '/volunteers/listings', to: 'volunteers#listings'

  resources :organizations
  resources :volunteers


  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




