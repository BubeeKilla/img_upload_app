Rails.application.routes.draw do
  root 'home#index'
  resources :uploads, only: [:create]
  get 'images', to: 'uploads#index'  # New route for viewing images
end
