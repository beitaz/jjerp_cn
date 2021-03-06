require 'sidekiq/web'

Rails.application.routes.draw do
  resources :expends
  resources :incomes
  resources :categories
  resources :parts
  resources :crafts
  resources :components
  resources :boards
  resources :companies
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    mailer: 'users/mailer',
    unlocks: 'users/unlocks'
  }
  resources :users
  get 'static/index'
  get 'home', to: 'static#home'
  get 'profile', to: 'static#profile'
  get 'static/about'
  get 'static/contact'
  get 'tasks', to: 'static#tasks'
  get 'static/dbdump'
  mount Sidekiq::Web => '/sidekiq'
  root 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
