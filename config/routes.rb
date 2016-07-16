Rails.application.routes.draw do
  root 'home#index'
  resources :twitter

  get '/auth/twitter/callback', to: 'twitter#authenticate'

  controller :twitter do
    get '/twitter' => :index
  end
end
