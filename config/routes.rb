Rails.application.routes.draw do
  get 'pages/readme'
  get 'pages/server'

  root 'posts#index'

  resources :posts 

  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
  resources :users # POST /users is overriden by devise

end
