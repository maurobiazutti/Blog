Rails.application.routes.draw do
  resources :profiles
  resources :comments
  resources :categories
  resources :posts
  devise_for :users
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
