Rails.application.routes.draw do

  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  post '/charities/new', to: 'charities#create'
  get '/volunteers/listings', to: 'volunteers#listings'
  resources :organizations
  resources :volunteers
  resources :charities
 

 


  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




