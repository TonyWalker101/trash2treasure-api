Rails.application.routes.draw do

  resources :donations, only: [:index, :show, :destroy] do
    post :add_donation
    post :remove_donation
  end

  get '/donations' => 'donations#show'
  post '/add-new' => 'donations#create'
  post '/claim-donation' => 'donations#destroy'

end
