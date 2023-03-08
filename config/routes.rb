Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :yoga_classes, only: [:index, :show, :new, :create]
  get "/admin", to: "pages#admin"
end
