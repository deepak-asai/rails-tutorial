Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/help'
  resources :microposts
  resources :users
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  get '/signup', to: 'users#new'


  root 'users#index'
end
