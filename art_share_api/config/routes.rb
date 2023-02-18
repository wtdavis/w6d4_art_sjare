Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'users/', to: 'users#index', as: 'users'
  # post 'users/', to: 'users#create'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id', to: 'users#show', as: 'user'
#  get 'users/:id', to: 'users#edit', as: 'edit_user'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :artworks, only: [:index, :show, :update, :destroy, :create]
  resources :users, only: [:index, :show, :update, :destroy, :create]
  resources :artworkshares, only: [:destroy, :create]

  resources :users do
    resources :artworks, only: [:index]
  end
end
