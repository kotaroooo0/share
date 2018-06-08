Rails.application.routes.draw do

  root 'items#index'
  resources :users
  resources :items
  resources :sessions, only: %i[new create destroy]

end
