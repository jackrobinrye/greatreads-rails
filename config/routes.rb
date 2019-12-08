Rails.application.routes.draw do
  
  get 'static/home'
  root 'static#home'
  
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'
  
  resources :authors
  delete 'author/:id', to: 'authors#destroy', as: :delete_author
  
  resources :books
  
  resources :book_records

  resources :genres

  resources :users

  resources :book_records

end
