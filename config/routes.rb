Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'recipes#index'

  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
    resources :groups
  end

  resources :recipes do
    resources :photos
    resources :favorites
    resources :tags
  end

end
