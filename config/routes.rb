Rails.application.routes.draw do
  get 'static/index'
  get 'static/home'
  get 'static/about'
  get 'static/contact'
  root 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
