Rails.application.routes.draw do
  root "sessions#home"
  
  get '/signup' => 'players#new'
  post '/signup' => 'players#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  
  resources :games
  resources :teams
  resources :players
  resources :sports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
