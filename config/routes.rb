Rails.application.routes.draw do

  root 'prototypes#index'
  get  'prototypes'  =>    'prototypes#index'
  # get  '/prototypes/new'    =>    'prototypes#new'
  get  '/prototypes/show'   =>    'prototypes#show'
end
