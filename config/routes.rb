Rails.application.routes.draw do
  
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'players#new'
  post '/signup' => 'players#create'
  delete '/logout' => 'sessions#destroy'
  get '/players/:id' => 'players#show'
  
  resources :games
  resources :teams
  resources :players
  resources :sports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
