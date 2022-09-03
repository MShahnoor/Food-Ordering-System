Rails.application.routes.draw do
  devise_for :employees
  devise_for :customers
  devise_for :admins
  resources :addons
  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
