Rails.application.routes.draw do
  devise_for :users

  root to: 'timers#index'
  resources :timers, only: [:index, :show]

 
  get '/seting', to: 'timers#seting', as: 'seting_timers' # 北海道の投稿ページ
  post '/seting', to: 'timers#create' # 北海道の投稿フォームからのPOSTリクエスト

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end