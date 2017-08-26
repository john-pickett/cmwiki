Rails.application.routes.draw do

  resources :books
  resources :chapters
  resources :wikis
  devise_for :users
  root 'wikis#index'
  get '/wikis/:id/history', to: 'wikis#history', as: :wikis_history

end
