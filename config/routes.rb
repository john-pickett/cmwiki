Rails.application.routes.draw do

  resources :wikis
  devise_for :users
  root 'welcome#index'
  get '/wikis/:id/history', to: 'wikis#history', as: :wikis_history

end
