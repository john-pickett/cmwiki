Rails.application.routes.draw do

  resources :books
  resources :chapters
  devise_for :users
  root 'welcome#index'
  get '/books/:id/history', to: 'books#history', as: :books_history

end
