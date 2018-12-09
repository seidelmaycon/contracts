Rails.application.routes.draw do
  resources :sessions, only: :create
  resources :users,    only: :create

  get 'signup', to: 'users#new',        as: 'signup'
  get 'login',  to: 'sessions#new',     as: 'login'

  root to: 'users#index'
end
