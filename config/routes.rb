Rails.application.routes.draw do
  resources :user_reviews
  resources :product_reviews
  resources :accounts,only: [:show, :index, :destroy]
  resources :products
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
