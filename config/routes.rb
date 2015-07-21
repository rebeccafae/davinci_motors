Rails.application.routes.draw do
  # get '/' => 'cars#index', as: 'root'
  root 'cars#index'

  # resources :cars

  get 'cars' => 'cars#index', as: 'cars'

  get 'cars/new' => 'cars#new', as: 'new_car'

  post 'cars' => 'cars#create'

  get 'cars/:id/edit' => 'cars#edit', as: 'edit_car'

  get 'cars/:id' => 'cars#show', as: 'car'

  patch 'cars/:id' => 'cars#update'

  put 'cars/:id' => 'cars#update'

  delete 'cars/:id' => 'cars#destroy'

end
