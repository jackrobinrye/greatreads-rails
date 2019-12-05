Rails.application.routes.draw do
  
  get 'static/home'

  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'

  resources :genres

  resources :artists
  
  resources :books

end
