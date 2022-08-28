Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :employees
  devise_for :customers
  devise_for :admins
>>>>>>> feature/schema
  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
