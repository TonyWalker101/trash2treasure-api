Rails.application.routes.draw do

  root to: 'donations#index'

  resources :donations, only: [:index, :show, :new, :destroy] do
    post :add_donation
    post :remove_donation
  end

  get '/donations' => 'donations#index'
  post '/add-new' => 'donations#create'
  post '/claim-donation' => 'donations#destroy'

end
