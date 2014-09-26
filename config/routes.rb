Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'recipes#index'

  resources :recipes
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  resources :users do
    resources :types
  end

  resources :recipes do
    resources :photos
  end

  resources :users do
    resources :tags
  end

  resources :recipes do
    resources :favorites
  end
end
