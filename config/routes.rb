Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'recipes#index'

  resources :recipes
  resources :users

  resources :users
    resources :types

  resources :recipes
    resources :photos

  resources :users
    resources :tags

  resources :recipes
    resources :favorites
end
