Rails.application.routes.draw do
  devise_for :users
  get 'pages/readme'
  get 'pages/server'

  root 'posts#index'

  resources :posts
  resources :users

end
