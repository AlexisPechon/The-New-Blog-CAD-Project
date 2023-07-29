Rails.application.routes.draw do
  get 'joke/joke'
  root "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles do
    resources :comments
  end

  #These are the routes required for the User Login and User Profile Functionality.
  resources :users, only: [:new, :create]
  get '/users/new', to: 'users#new'
  post '/users/new', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #These are the routes required for the External API Functionality
  get 'discord_widget/fetch_data', to: 'discord_widget#fetch_data'
  get 'joke', to: 'joke#joke'
end
