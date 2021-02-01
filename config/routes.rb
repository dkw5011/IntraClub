Rails.application.routes.draw do
  
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'players#new'
  post '/signup' => 'players#create'
  get '/logout' => 'sessions#destroy'
  get '/teams/ordered_wins' => 'teams#ordered_wins'
  
  get '/auth/:provider/callback' => 'sessions#omniauth'
  
  resources :teams do
    resources :players, only: [:show]
    # resources :games, only: [:show]
  end


  resources :teams
  resources :players, only: [:index, :new, :create]
  
  resources :games, only: [:index, :show]
  resources :sports

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
