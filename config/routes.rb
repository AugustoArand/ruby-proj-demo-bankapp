Rails.application.routes.draw do
  root "dashboard#index"

  devise_for :users, controllers: { sessions: 'devise/sessions' }

  resources :accounts, only: [:index, :show]
  resources :transfers, only: [:new, :create]

  get 'dashboard', to: 'dashboard#index'
end