Rails.application.routes.draw do
  
  resources :users
  
  get 'static/home'

  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'

  resources :genres

  resources :authors
  
  resources :books

end
