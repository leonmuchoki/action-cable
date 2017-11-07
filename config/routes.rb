Rails.application.routes.draw do
  
  #mount the Action Cable server on a sub-URI of our main application
  mount ActionCable.server => '/cable' #Action Cable will be listening for WebSocket requests on ws://localhost:3000/cable

  root "welcome#about"

  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  get 'users/:id', to: "users#show", as: "profile"

  resources :chatrooms, param: :slug
  resources :messages
end
