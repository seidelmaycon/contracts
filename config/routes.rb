# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions, only: :create
  resources :users,    only: :create
  resources :contracts, except: :delete

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'

  root to: 'contracts#index'
end
