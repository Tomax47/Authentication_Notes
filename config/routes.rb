Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  resources :notes

  resource :sessions, only: [:create]
  resources :users, only: [:create]
  get 'users/new'

  get '/register', to: 'users#new'
  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'

  #get 'home/index'
  root 'home#index'

end
