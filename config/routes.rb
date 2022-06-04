Rails.application.routes.draw do

  get 'pages/readme'
  get 'pages/server'

  root 'posts#index'

  resources :posts 

  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
  resources :users # POST /users is overriden by devise

  if Rails.env.development? || Rails.env.test?
	get '/ping', to: ->(env) { [204, {}, ['']] }
	get '/flash', {controller: :dev, action: :mock_flash}
  end

end
