Rails.application.routes.draw do
  get 'pages/readme'
  get 'pages/server'

  root 'posts#index'

  resources :posts 

  devise_for :users
  resources :users 

end
