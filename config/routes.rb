Rails.application.routes.draw do
  root 'items#index'
  resources :users, only: %i[show edit update destroy]
  resources :items

  get '/search', to: 'items#search'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get   '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  delete'/logout',  to: 'sessions#destroy'
end
