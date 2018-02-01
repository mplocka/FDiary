Rails.application.routes.draw do
  match '/users',   to: 'users#index',   via: 'get'

	devise_for :users
	resources :posts do
		resources :comments
	end
	root 'posts#index'

end
