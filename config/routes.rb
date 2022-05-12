Rails.application.routes.draw do

  root to: 'donations#index'

  resources :donations, only: [:index, :show, :new, :destroy]

  resources :users, only: [:index, :show]

  resources :comments, only: [:index, :show, :new]

  get '/donations' => 'donations#index'
  get '/users' => 'users#index'
  get '/comments' => 'comments#index'

  post '/add-donation' => 'donations#new'
  post '/claim-donation' => 'donations#destroy'

end
