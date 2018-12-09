Rails.application.routes.draw do
  resources :sessions
  resources :users

  get 'signup', to: 'users#new',        as: 'signup'
  get 'login',  to: 'sessions#new',     as: 'login'

  root to: 'users#index'
end
