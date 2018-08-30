# frozen_string_literal: true

Rails.application.routes.draw do
  root 'exhibitions#index'

  resources :users, only: %i[show edit update destroy]
  resources :exhibitions, only: %i[index show new create edit update destroy] do
    resources :applies, only: %i[create destroy]
  end
  resources :transactions, only: %i[show create destroy]

  get '/search',  to: 'exhibitions#search'

  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'

  get   '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
end
