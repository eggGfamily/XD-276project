Rails.application.routes.draw do
  get 'sessions/new'

  # get 'user/index'

  # get 'user/show'

  # get 'user/new'

  # get 'user/create'

  # get 'user/edit'

  # get 'user/update'

  # get 'user/delete'

  # get 'user/destroy'
  resources :users
  resources :account_activations, only: [:edit]
  
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'geomaps/index'
  get 'geomaps/directions'
  root 'geomaps#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
