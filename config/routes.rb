Rails.application.routes.draw do
  resources :companies
  devise_for :users
  resources :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    mailer: 'users/mailer',
    unlocks: 'users/unlocks'
  }
  get 'static/index'
  get 'static/home'
  get 'static/about'
  get 'static/contact'
  root 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
