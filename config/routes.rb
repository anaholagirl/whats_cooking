Rails.application.routes.draw do
  get 'sessions/new'

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
