# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contracts, except: :delete

  get   'signup', to: 'users#new',       as: 'signup_form'
  post  'signup', to: 'users#create',    as: 'signup'
  get   'signin', to: 'sessions#new',    as: 'signin_form'
  post  'signin', to: 'sessions#create', as: 'signin'

  root to: 'contracts#index'
end
