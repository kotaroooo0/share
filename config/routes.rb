Rails.application.routes.draw do

  resources :users
  resources :items
  resources :sessions, only: %i[new create destroy]

end
