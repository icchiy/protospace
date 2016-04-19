Rails.application.routes.draw do

    devise_for :users, only: [:sign_in, :sign_out, :session]
  resources :users, only: [:show, :create,:new]
  resources :prototypes, only: :show

  root 'prototypes#index'
end
