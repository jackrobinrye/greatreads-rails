Rails.application.routes.draw do
  
  get 'static/home'
  root 'static#home'
  
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'

  resources :users

  resources :genres

  resources :authors
  
  resources :books

end
