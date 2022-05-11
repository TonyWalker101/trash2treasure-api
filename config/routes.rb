Rails.application.routes.draw do

  root to: 'donations#index'

  resources :donations, only: [:index, :show, :new, :destroy] do
    post :add_donation
    post :remove_donation
  end

  resources :users, :comments, only: [:index, :show]

  get '/donations' => 'donations#index'
  get '/users' => 'users#index'
  get '/comments' => 'comments#index'

  # post '/add-new' => 'donations#create'
  # post '/claim-donation' => 'donations#destroy'

end
