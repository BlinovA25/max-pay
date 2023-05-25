Rails.application.routes.draw do
  devise_for :users

  # Defines the root path route ("/")
  root "lessons#index"

  resources :lessons
  resources :notes
end
