Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/charities/listings', to: 'charities#listings'
  post '/charities/new', to: 'charities#create'

  

  resources :conversations do
    resources :messages
  end
  

  resources :line_items
  resources :carts
  resources :charities
  
  

  get '/volunteers/listings', to: 'volunteers#listings'

  resources :organizations
  resources :volunteers

  get "/payments/success", to: "payments#success"


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




