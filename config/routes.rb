Rails.application.routes.draw do
  devise_for :users

  root to: 'timers#index'
  resources :timers, only: [:index, :show]
  resource :sessions, only: [:new, :create, :destroy] # ← これはSessionsControllerに対応するルーティングを定義しています

  get '/seting', to: 'timers#seting', as: 'seting_timers'
  post '/seting', to: 'timers#create'
  post '/process_time_settings', to: 'timers#process_time_settings'

  get '/stop', to: 'timers#stop', as: 'stop_timers'
  post '/stop', to: 'timers#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end

