Rails.application.routes.draw do
  resources :locations
  resources :treatments
  resources :illnesses
  resources :symptoms
  resources :users, only: [:show, :index, :new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
