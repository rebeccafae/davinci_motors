Rails.application.routes.draw do
  # get '/' => 'cars#index', as: 'root'
  root 'cars#index'

  # get 'cars/new' => 'cars#new', as: 'new_car'

  # post 'cars' => 'cars#create'

  # get 'cars/edit' => 'cars#edit', as: 'edit_car'

  resources :cars
end
