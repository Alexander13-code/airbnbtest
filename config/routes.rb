Rails.application.routes.draw do
  devise_for :users

  # Defines the root path route ("/")
  root to: 'apartments#index'

  resources :apartments, only: %i[index show new create edit update destroy]

  get 'reviews/index'
  get 'bookings/index'
  get 'bookings/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
