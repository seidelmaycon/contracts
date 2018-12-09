Rails.application.routes.draw do
  resources :sessions, only: :create
  resources :users,    only: :create

  get 'signup', to: 'users#new',        as: 'signup'
  get 'signin',  to: 'sessions#new',     as: 'signin'

  root to: 'users#index'
end
