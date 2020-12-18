Rails.application.routes.draw do
  
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'players#new'
  post '/signup' => 'players#create'
  get '/logout' => 'sessions#destroy'
  
  resources :teams do
    resources :players
    resources :games
  end
  resources :sports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
