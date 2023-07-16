Rails.application.routes.draw do
  get 'accounts/new'
  get 'accounts/create'
  get 'accounts/login'
  get 'accounts/logout'

  get 'register', to: 'accounts#create'
  root "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles do
    resources :comments
  end
end
