Rails.application.routes.draw do

  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :organizations
  resources :volunteers

  # get '/organizations/index', to: 'organizations#index'
  # get '/organizations/new', to: 'organizations#new'
  # post '/organizations/new', to: 'organizations#create'
  # get '/organizations/:id', to: 'organizations#show'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




