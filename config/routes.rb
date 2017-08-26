Rails.application.routes.draw do

  resources :books
  resources :chapters
  resources :wikis
  devise_for :users
  root 'books#index'
  get '/wikis/:id/history', to: 'wikis#history', as: :wikis_history
  get '/books/:id/history', to: 'books#history', as: :books_history

end
