Rails.application.routes.draw do
  
  get 'static/home'
  root 'static#home'
  get '/browse', to: 'static#browse', as: :browse
  
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'
  
  resources :authors
  delete 'authors/:id', to: 'authors#destroy', as: :delete_author
  
  resources :books
  delete 'books/:id', to: 'books#destroy', as: :delete_book
  
  resources :book_records, only: [:new, :create, :edit, :update]
  delete 'book_records/:id', to: 'book_records#destroy', as: :delete_book_record

  resources :genres
  delete 'genres/:id', to: 'genres#destroy', as: :delete_genre

  resources :users
  delete 'users/:id', to: 'users#destroy', as: :delete_user


end
