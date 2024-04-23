Rails.application.routes.draw do
  devise_for :users

  root to: 'timers#index'
  resources :timers, only: :index

  get 'show', to: 'break_time#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
