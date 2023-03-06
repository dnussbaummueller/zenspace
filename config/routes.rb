Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :yoga_classes, only: [:index, :show, :new, :create]
  resources :teachers, only: %i[new create]
  resources :classes, only: %i[index show new create]
end
