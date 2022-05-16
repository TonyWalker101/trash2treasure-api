Rails.application.routes.draw do

  root to: 'donations#index'

  resources :donations, only: [:index, :show, :new, :edit]

  resources :users, only: [:index, :show]

  resources :comments, only: [:index, :show, :new]

  get '/donations' => 'donations#index'
  get '/users' => 'users#index'
  get '/comments' => 'comments#index'

  post '/add-donation' => 'donations#new'
  post '/claim-donation' => 'donations#edit'
  post 'add-comment' => 'comments#new'

end
