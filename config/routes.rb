Rails.application.routes.draw do

  root 'home#index'



  resources :projects
  devise_for :users
  get 'persons/profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
