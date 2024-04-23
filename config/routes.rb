Rails.application.routes.draw do
  devise_for :users

  root to: 'timers#index'
  resources :timers, only: [:index, :show]

  get '/show', to: 'timers#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end