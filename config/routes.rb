Rails.application.routes.draw do
  root 'home#index'
  resources :twitter

  controller :twitter do
    get '/twitter' => :index
  end
end
