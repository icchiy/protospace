Rails.application.routes.draw do

  devise_for :users
  resources :prototypes
  resources :users, only: [:show,:edit,:update,:create,:new]

  root 'prototypes#index'
end
