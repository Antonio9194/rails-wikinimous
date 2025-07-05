Rails.application.routes.draw do
  get 'articles/index'

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Resourceful routes for articles
  resources :articles

  # Root route to articles index
  root "articles#index"
end