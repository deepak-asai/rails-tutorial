Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  get 'static_pages/home'
  get 'static_pages/help'
  resources :microposts
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  get '/signup', to: 'users#new'


  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :relationships

  root 'static_pages#home'
end
