Rails.application.routes.draw do
  get 'pages/readme'
  get 'pages/server'

  root 'posts#index'

  resources :posts
  resources :users

end
